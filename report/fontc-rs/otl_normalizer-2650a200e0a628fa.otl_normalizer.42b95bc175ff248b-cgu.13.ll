Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/fontc-rs/original/otl_normalizer-2650a200e0a628fa.otl_normalizer.42b95bc175ff248b-cgu.13?download=true
inline.NumInlined: 165
inline.NumDeleted: 140
begin_hunk_0_@_RNvMNtCsf3Ta7LF998c_4core5sliceSNtNtCs5JazJsyow1H_14otl_normalizer6common14LanguageSystem14swap_uncheckedBy_:bb.a
bb.a:
  %i.a = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %2 ; 2 uses
  %i.b = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %3 ; 2 uses
  %.sroa.0.0.copyload.i = load i64, ptr %i.a, align 1
  %i.c = load i64, ptr %i.b, align 1
  store i64 %i.c, ptr %i.a, align 1
  store i64 %.sroa.0.0.copyload.i, ptr %i.b, align 1
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RNvMNtCsf3Ta7LF998c_4core5sliceSNtNtCs5JazJsyow1H_14otl_normalizer6common7Feature14swap_uncheckedBy_(ptr noalias nofree noundef nonnull align 8 captures(none) %0, i64 noundef range(i64 0, 164703072086692426) %1, i64 noundef %2, i64 noundef %3, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %4) unnamed_addr #2 {
bb.a:
  %i.a = alloca [56 x i8], align 8                ; 4 uses
  %i.b = getelementptr inbounds nuw [56 x i8], ptr %0, i64 %2 ; 2 uses
  %i.c = getelementptr inbounds nuw [56 x i8], ptr %0, i64 %3 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.a, ptr noundef nonnull align 8 dereferenceable(56) %i.b, i64 56, i1 false)
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.b, ptr noundef nonnull align 8 dereferenceable(56) %i.c, i64 56, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.c, ptr noundef nonnull align 8 dereferenceable(56) %i.a, i64 56, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden noundef ptr @_RNvMs0_NtCs5JazJsyow1H_14otl_normalizer6commonNtB5_7Feature10fmt_header(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %0, ptr noundef nonnull %1, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(80) %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 12 uses
  %i.b = alloca [8 x i8], align 8                 ; 9 uses
  %i.c = alloca [8 x i8], align 8                 ; 9 uses
  %i.d = alloca [16 x i8], align 8                ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %i.e, ptr %i.d, align 8
  %.sroa.422.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr @_RNvXs8_NtCsbZq13ASDQ8l_10font_types3tagNtB5_3TagNtNtCsf3Ta7LF998c_4core3fmt7Display3fmt, ptr %.sroa.422.0..sroa_idx, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 72
  %i.g = load ptr, ptr %i.f, align 8, !invariant.load !6, !nonnull !6 ; 6 uses
  %i.h = call noundef ptr %i.g(ptr noundef nonnull %1, ptr noundef nonnull @13, ptr noundef nonnull %i.d) #18 ; 2 uses
  %.not = icmp eq ptr %i.h, null
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br i1 %.not, label %bb.b, label %bb.j

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !nonnull !6, !noundef !6 ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = load i64, ptr %i.k, align 8, !noundef !6 ; 3 uses
  %.idx = shl nuw nsw i64 %i.l, 3
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 %.idx
  %i.n = icmp eq i64 %i.l, 0
  br i1 %i.n, label %._crit_edge, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.sroa.426.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %.sroa.430.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %i.j, ptr %i.c, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.p = getelementptr inbounds nuw i8, ptr %i.j, i64 4
  store ptr %i.p, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.c, ptr %i.a, align 8
  store ptr @_RNvXs1i_NtCsf3Ta7LF998c_4core3fmtRNtNtCsbZq13ASDQ8l_10font_types3tag3TagNtB6_7Display3fmtCs5JazJsyow1H_14otl_normalizer, ptr %.sroa.426.0..sroa_idx, align 8
  store ptr %i.b, ptr %i.o, align 8
  store ptr @_RNvXs1i_NtCsf3Ta7LF998c_4core3fmtRNtNtCsbZq13ASDQ8l_10font_types3tag3TagNtB6_7Display3fmtCs5JazJsyow1H_14otl_normalizer, ptr %.sroa.430.0..sroa_idx, align 8
  %i.q = call noundef ptr %i.g(ptr noundef nonnull %1, ptr noundef nonnull @16, ptr noundef nonnull %i.a) #18 ; 2 uses
  %.not33.peel = icmp eq ptr %i.q, null
  br i1 %.not33.peel, label %bb.d, label %.loopexit39

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.r = icmp eq i64 %i.l, 1
  br i1 %i.r, label %._crit_edge, label %.peel.next.preheader

.peel.next.preheader:                             ; preds = %bb.d
  %i.s = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  br label %.peel.next

._crit_edge:                                      ; preds = %bb.i, %bb.d, %bb.b
  %i.t = call noundef ptr %i.g(ptr noundef nonnull %1, ptr noundef nonnull @17, ptr noundef nonnull inttoptr (i64 3 to ptr)) #18
  br label %bb.j

.peel.next:                                       ; preds = %.peel.next.preheader, %bb.i
  %.sroa.04.036 = phi i64 [ %.sroa.04.1, %bb.i ], [ 17, %.peel.next.preheader ] ; 2 uses
  %.sroa.08.034 = phi ptr [ %i.u, %bb.i ], [ %i.s, %.peel.next.preheader ] ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.08.034, i64 8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %.sroa.08.034, ptr %i.c, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.08.034, i64 4
  store ptr %i.v, ptr %i.b, align 8
  %i.w = add i64 %.sroa.04.036, -70
  %i.x = icmp ult i64 %i.w, -81
  br i1 %i.x, label %bb.g, label %bb.f

bb.e:                                             ; preds = %bb.g, %bb.h
  %.sroa.04.1 = phi i64 [ 11, %bb.g ], [ %i.ab, %bb.h ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.c, ptr %i.a, align 8
  store ptr @_RNvXs1i_NtCsf3Ta7LF998c_4core3fmtRNtNtCsbZq13ASDQ8l_10font_types3tag3TagNtB6_7Display3fmtCs5JazJsyow1H_14otl_normalizer, ptr %.sroa.426.0..sroa_idx, align 8
  store ptr %i.b, ptr %i.o, align 8
  store ptr @_RNvXs1i_NtCsf3Ta7LF998c_4core3fmtRNtNtCsbZq13ASDQ8l_10font_types3tag3TagNtB6_7Display3fmtCs5JazJsyow1H_14otl_normalizer, ptr %.sroa.430.0..sroa_idx, align 8
  %i.y = call noundef ptr %i.g(ptr noundef nonnull %1, ptr noundef nonnull @16, ptr noundef nonnull %i.a) #18 ; 2 uses
  %.not33 = icmp eq ptr %i.y, null
  br i1 %.not33, label %bb.i, label %.loopexit39

bb.f:                                             ; preds = %.peel.next
  %i.z = call noundef ptr %i.g(ptr noundef nonnull %1, ptr noundef nonnull @14, ptr noundef nonnull inttoptr (i64 5 to ptr)) #18 ; 2 uses
  %.not31 = icmp eq ptr %i.z, null
  br i1 %.not31, label %bb.h, label %.loopexit

bb.g:                                             ; preds = %.peel.next
  %i.aa = call noundef ptr %i.g(ptr noundef nonnull %1, ptr noundef nonnull @15, ptr noundef nonnull inttoptr (i64 9 to ptr)) #18 ; 2 uses
  %.not32 = icmp eq ptr %i.aa, null
  br i1 %.not32, label %bb.e, label %.loopexit

bb.h:                                             ; preds = %bb.f
  %i.ab = add nsw i64 %.sroa.04.036, 11
  br label %bb.e

.loopexit:                                        ; preds = %bb.g, %bb.f, %.loopexit39
  %.sroa.0.0 = phi ptr [ %.lcssa, %.loopexit39 ], [ %i.z, %bb.f ], [ %i.aa, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.j

.loopexit39:                                      ; preds = %bb.e, %bb.c
  %.lcssa = phi ptr [ %i.q, %bb.c ], [ %i.y, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %.loopexit

bb.i:                                             ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.ac = icmp eq ptr %i.u, %i.m
  br i1 %i.ac, label %._crit_edge, label %.peel.next, !llvm.loop !55

bb.j:                                             ; preds = %bb.a, %.loopexit, %._crit_edge
  %.sroa.0.1 = phi ptr [ %.sroa.0.0, %.loopexit ], [ %i.t, %._crit_edge ], [ %i.h, %bb.a ]
  ret ptr %.sroa.0.1
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs1_NtCs5JazJsyow1H_14otl_normalizer6commonNtB5_8GlyphSet13remove_glyphs(ptr noalias nofree noundef align 8 dereferenceable(32) %0, ptr noalias nofree noundef nonnull readonly align 2 captures(address, read_provenance) %1, i64 noundef range(i64 0, 4611686018427387904) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i16, ptr %0, align 8, !range !12, !noundef !6
  %i.b = trunc nuw i16 %i.a to i1
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_RINvMsc_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree3setINtB6_8BTreeSetNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16E6retainNCNvMs1_NtCs5JazJsyow1H_14otl_normalizer6commonNtB2b_8GlyphSet13remove_glyphs0EB2d_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 2 %1, i64 noundef %2)
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.e = tail call noundef zeroext i1 @_RNvXsf_NtNtCsf3Ta7LF998c_4core5slice3cmpNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16NtB5_13SliceContains14slice_containsCs5JazJsyow1H_14otl_normalizer(ptr noalias nofree noundef nonnull readonly align 2 captures(address, read_provenance) dereferenceable(2) %i.d, ptr noalias nofree noundef nonnull readonly align 2 captures(address, read_provenance) %1, i64 noundef %2)
  br i1 %i.e, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.f = load i16, ptr %0, align 8, !range !12, !alias.scope !58, !noundef !6
  %i.g = icmp eq i16 %i.f, 0
  br i1 %i.g, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs5JazJsyow1H_14otl_normalizer6common8GlyphSetEBF_.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  invoke void @_RNvXNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3mapINtB2_8BTreeMapNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16NtNtB4_7set_val9SetValZSTENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs5JazJsyow1H_14otl_normalizer(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs5JazJsyow1H_14otl_normalizer6common8GlyphSetEBF_.exit unwind label %bb.g

bb.f:                                             ; preds = %bb.c, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs5JazJsyow1H_14otl_normalizer6common8GlyphSetEBF_.exit, %bb.b
  ret void

bb.g:                                             ; preds = %bb.e
  %i.i = landingpad { ptr, i32 }
          cleanup
  store i16 1, ptr %0, align 8
  store ptr null, ptr %i.h, align 8
  %.sroa.5.sroa.6.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 0, ptr %.sroa.5.sroa.6.0..sroa.5.0..sroa_idx.sroa_idx, align 8
  resume { ptr, i32 } %i.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs5JazJsyow1H_14otl_normalizer6common8GlyphSetEBF_.exit: ; preds = %bb.d, %bb.e
  store i16 1, ptr %0, align 8
  %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx2.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr null, ptr %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx2.sroa_idx, align 8
  %.sroa.5.sroa.6.0..sroa.5.0..sroa_idx2.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 0, ptr %.sroa.5.sroa.6.0..sroa.5.0..sroa_idx2.sroa_idx, align 8
  br label %bb.f
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs1_NtCs5JazJsyow1H_14otl_normalizer6commonNtB5_8GlyphSet3add(ptr noalias nofree noundef align 8 dereferenceable(32) %0, i16 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %.sroa.5.i = alloca [30 x i8], align 2          ; 4 uses
  %i.b = load i16, ptr %0, align 8, !range !12, !noundef !6 ; 2 uses
  %.not = icmp eq i16 %i.b, 0
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 2 ; 2 uses
  %i.d = load i16, ptr %i.c, align 2              ; 2 uses
  %2 = icmp eq i16 %i.d, %1
  %or.cond.not = select i1 %.not, i1 %2, i1 false
  br i1 %or.cond.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !61)
  %3 = trunc nuw i16 %i.b to i1
  br i1 %3, label %_RNvMs1_NtCs5JazJsyow1H_14otl_normalizer6commonNtB5_8GlyphSet8make_set.exit, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs5JazJsyow1H_14otl_normalizer6common8GlyphSetEBF_.exit.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs5JazJsyow1H_14otl_normalizer6common8GlyphSetEBF_.exit.i: ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !61
  call void @_RNvXsf_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree3setINtB5_8BTreeSetNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16EINtNtCsf3Ta7LF998c_4core7convert4FromAB17_j1_E4fromCs5JazJsyow1H_14otl_normalizer(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, i16 noundef %i.d), !noalias !61
  %.sroa.5.8..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.5.i, i64 6
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(24) %.sroa.5.8..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false), !noalias !61
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !61
  store i16 1, ptr %0, align 8, !alias.scope !61
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(30) %i.c, ptr noundef nonnull align 2 dereferenceable(30) %.sroa.5.i, i64 30, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i)
  br label %_RNvMs1_NtCs5JazJsyow1H_14otl_normalizer6commonNtB5_8GlyphSet8make_set.exit

bb.c:                                             ; preds = %bb.a, %_RNvMs1_NtCs5JazJsyow1H_14otl_normalizer6commonNtB5_8GlyphSet8make_set.exit
  ret void

_RNvMs1_NtCs5JazJsyow1H_14otl_normalizer6commonNtB5_8GlyphSet8make_set.exit: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs5JazJsyow1H_14otl_normalizer6common8GlyphSetEBF_.exit.i, %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = call noundef zeroext i1 @_RNvMsi_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree3mapINtB5_8BTreeMapNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16NtNtB7_7set_val9SetValZSTE6insertCs5JazJsyow1H_14otl_normalizer(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e, i16 noundef %1) ; 0 uses
  br label %bb.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define void @_RNvMs1_NtCs5JazJsyow1H_14otl_normalizer6commonNtB5_8GlyphSet4iter(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([224 x i8]) align 8 captures(none) dereferenceable(224) initializes((0, 8), (72, 80), (144, 220)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %1) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i16, ptr %1, align 8, !range !12, !noundef !6
  %i.b = trunc nuw i16 %i.a to i1
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !noundef !6 ; 2 uses
  %.not = icmp ne ptr %i.d, null                  ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.f = load i64, ptr %i.e, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.h = load i64, ptr %i.g, align 8
  %.sroa.5.sroa.0.sroa.6.0 = select i1 %.not, i64 %i.f, i64 undef
  %.sroa.6.0 = select i1 %.not, i64 %i.h, i64 0
  %.sroa.010.0 = zext i1 %.not to i64             ; 2 uses
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.j = load i16, ptr %i.i, align 2, !noundef !6
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %.sroa.33.sroa.0.sroa.2.0 = phi i64 [ %.sroa.010.0, %bb.b ], [ undef, %bb.c ]
  %.sroa.33.sroa.0.sroa.0.sroa.2.0 = phi ptr [ %i.d, %bb.b ], [ undef, %bb.c ] ; 2 uses
  %.sroa.33.sroa.0.sroa.0.sroa.3.0 = phi i64 [ %.sroa.5.sroa.0.sroa.6.0, %bb.b ], [ undef, %bb.c ] ; 2 uses
  %.sroa.33.sroa.2.0 = phi i64 [ %.sroa.6.0, %bb.b ], [ undef, %bb.c ]
  %.sroa.01.0 = phi i64 [ %.sroa.010.0, %bb.b ], [ 2, %bb.c ]
  %.sroa.3.0 = phi i16 [ undef, %bb.b ], [ %i.j, %bb.c ]
  %.sroa.0.0 = phi i16 [ 0, %bb.b ], [ 1, %bb.c ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !65)
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 216
  store i16 %.sroa.0.0, ptr %i.k, align 8, !alias.scope !66
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 218
  store i16 %.sroa.3.0, ptr %i.l, align 2, !alias.scope !66
  store i64 2, ptr %0, align 8, !alias.scope !67
  %.sroa.477.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i64 2, ptr %.sroa.477.0..sroa_idx, align 8, !alias.scope !67
  %.sroa.578.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 144
  store i64 %.sroa.01.0, ptr %.sroa.578.0..sroa_idx, align 8, !alias.scope !67
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 152
  store ptr null, ptr %.sroa.6.0..sroa_idx, align 8, !alias.scope !67
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 160
  store ptr %.sroa.33.sroa.0.sroa.0.sroa.2.0, ptr %.sroa.7.0..sroa_idx, align 8, !alias.scope !67
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 168
  store i64 %.sroa.33.sroa.0.sroa.0.sroa.3.0, ptr %.sroa.8.0..sroa_idx, align 8, !alias.scope !67
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 176
  store i64 %.sroa.33.sroa.0.sroa.2.0, ptr %.sroa.9.0..sroa_idx, align 8, !alias.scope !67
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 184
  store ptr null, ptr %.sroa.10.0..sroa_idx, align 8, !alias.scope !67
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 192
  store ptr %.sroa.33.sroa.0.sroa.0.sroa.2.0, ptr %.sroa.11.0..sroa_idx, align 8, !alias.scope !67
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 200
  store i64 %.sroa.33.sroa.0.sroa.0.sroa.3.0, ptr %.sroa.12.0..sroa_idx, align 8, !alias.scope !67
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 208
  store i64 %.sroa.33.sroa.2.0, ptr %.sroa.13.0..sroa_idx, align 8, !alias.scope !67
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs1_NtCs5JazJsyow1H_14otl_normalizer6commonNtB5_8GlyphSet7combine(ptr noalias nofree noundef align 8 dereferenceable(32) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %.sroa.5.i = alloca [30 x i8], align 2          ; 4 uses
  %i.b = alloca [72 x i8], align 8                ; 11 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !70)
  %i.c = load i16, ptr %0, align 8, !range !12, !alias.scope !70, !noundef !6
  %i.d = trunc nuw i16 %i.c to i1
  br i1 %i.d, label %_RNvMs1_NtCs5JazJsyow1H_14otl_normalizer6commonNtB5_8GlyphSet8make_set.exit, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs5JazJsyow1H_14otl_normalizer6common8GlyphSetEBF_.exit.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs5JazJsyow1H_14otl_normalizer6common8GlyphSetEBF_.exit.i: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !70
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 2 ; 2 uses
  %i.f = load i16, ptr %i.e, align 2, !alias.scope !70, !noundef !6
  call void @_RNvXsf_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree3setINtB5_8BTreeSetNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16EINtNtCsf3Ta7LF998c_4core7convert4FromAB17_j1_E4fromCs5JazJsyow1H_14otl_normalizer(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, i16 noundef %i.f), !noalias !70
  %.sroa.5.8..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.5.i, i64 6
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(24) %.sroa.5.8..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false), !noalias !70
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !70
  store i16 1, ptr %0, align 8, !alias.scope !70
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(30) %i.e, ptr noundef nonnull align 2 dereferenceable(30) %.sroa.5.i, i64 30, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i)
  br label %_RNvMs1_NtCs5JazJsyow1H_14otl_normalizer6commonNtB5_8GlyphSet8make_set.exit

_RNvMs1_NtCs5JazJsyow1H_14otl_normalizer6commonNtB5_8GlyphSet8make_set.exit: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs5JazJsyow1H_14otl_normalizer6common8GlyphSetEBF_.exit.i, %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.h = load i16, ptr %1, align 8, !range !12, !noundef !6
  %i.i = trunc nuw i16 %i.h to i1
  br i1 %i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_RNvMs1_NtCs5JazJsyow1H_14otl_normalizer6commonNtB5_8GlyphSet8make_set.exit
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !noundef !6 ; 3 uses
  %.not = icmp ne ptr %i.k, null                  ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.m = load i64, ptr %i.l, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.o = load i64, ptr %i.n, align 8
  %.sroa.0.sroa.5.sroa.6.0 = select i1 %.not, i64 %i.m, i64 undef ; 2 uses
  %.sroa.0.sroa.0.0 = zext i1 %.not to i64        ; 2 uses
  %.sroa.5.0 = select i1 %.not, i64 %i.o, i64 0
  store i64 %.sroa.0.sroa.0.0, ptr %i.b, align 8
  %.sroa.01.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr null, ptr %.sroa.01.sroa.4.0..sroa_idx, align 8
  %.sroa.01.sroa.4.sroa.4.0..sroa.01.sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.k, ptr %.sroa.01.sroa.4.sroa.4.0..sroa.01.sroa.4.0..sroa_idx.sroa_idx, align 8
  %.sroa.01.sroa.4.sroa.5.0..sroa.01.sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 %.sroa.0.sroa.5.sroa.6.0, ptr %.sroa.01.sroa.4.sroa.5.0..sroa.01.sroa.4.0..sroa_idx.sroa_idx, align 8
  %.sroa.01.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store i64 %.sroa.0.sroa.0.0, ptr %.sroa.01.sroa.5.0..sroa_idx, align 8
  %.sroa.01.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store ptr null, ptr %.sroa.01.sroa.6.0..sroa_idx, align 8
  %.sroa.01.sroa.6.sroa.4.0..sroa.01.sroa.6.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  store ptr %i.k, ptr %.sroa.01.sroa.6.sroa.4.0..sroa.01.sroa.6.0..sroa_idx.sroa_idx, align 8
  %.sroa.01.sroa.6.sroa.5.0..sroa.01.sroa.6.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  store i64 %.sroa.0.sroa.5.sroa.6.0, ptr %.sroa.01.sroa.6.sroa.5.0..sroa.01.sroa.6.0..sroa_idx.sroa_idx, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  store i64 %.sroa.5.0, ptr %.sroa.4.0..sroa_idx, align 8
  %i.p = call noundef align 2 ptr @_RNvXsu_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree3setINtB5_4IterNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16ENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCs5JazJsyow1H_14otl_normalizer(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.b) ; 2 uses
  %.not4.i = icmp eq ptr %i.p, null
  br i1 %.not4.i, label %_RINvYINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3set4IterNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16ENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4folduNCINvNtNtB1S_8adapters6copied9copy_foldBY_uNCINvNvB1M_8for_each4callBY_NCINvXsl_B6_INtB6_8BTreeSetBY_EINtNtB1Q_7collect6ExtendBY_E6extendINtB2S_6CopiedB3_EE0E0E0ECs5JazJsyow1H_14otl_normalizer.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b, %.lr.ph.i
  %i.q = phi ptr [ %i.s, %.lr.ph.i ], [ %i.p, %bb.b ]
  %.val3.i = load i16, ptr %i.q, align 2, !noundef !6
  %i.r = call noundef zeroext i1 @_RNvMsi_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree3mapINtB5_8BTreeMapNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16NtNtB7_7set_val9SetValZSTE6insertCs5JazJsyow1H_14otl_normalizer(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g, i16 noundef %.val3.i) ; 0 uses
  %i.s = call noundef align 2 ptr @_RNvXsu_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree3setINtB5_4IterNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16ENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCs5JazJsyow1H_14otl_normalizer(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.b) ; 2 uses
  %.not.i = icmp eq ptr %i.s, null
  br i1 %.not.i, label %_RINvYINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3set4IterNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16ENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4folduNCINvNtNtB1S_8adapters6copied9copy_foldBY_uNCINvNvB1M_8for_each4callBY_NCINvXsl_B6_INtB6_8BTreeSetBY_EINtNtB1Q_7collect6ExtendBY_E6extendINtB2S_6CopiedB3_EE0E0E0ECs5JazJsyow1H_14otl_normalizer.exit, label %.lr.ph.i

bb.c:                                             ; preds = %_RNvMs1_NtCs5JazJsyow1H_14otl_normalizer6commonNtB5_8GlyphSet8make_set.exit
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.u = load i16, ptr %i.t, align 2, !noundef !6
  %i.v = call noundef zeroext i1 @_RNvMsi_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree3mapINtB5_8BTreeMapNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16NtNtB7_7set_val9SetValZSTE6insertCs5JazJsyow1H_14otl_normalizer(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g, i16 noundef %i.u) ; 0 uses
  br label %_RINvYINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3set4IterNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16ENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4folduNCINvNtNtB1S_8adapters6copied9copy_foldBY_uNCINvNvB1M_8for_each4callBY_NCINvXsl_B6_INtB6_8BTreeSetBY_EINtNtB1Q_7collect6ExtendBY_E6extendINtB2S_6CopiedB3_EE0E0E0ECs5JazJsyow1H_14otl_normalizer.exit

_RINvYINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3set4IterNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16ENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4folduNCINvNtNtB1S_8adapters6copied9copy_foldBY_uNCINvNvB1M_8for_each4callBY_NCINvXsl_B6_INtB6_8BTreeSetBY_EINtNtB1Q_7collect6ExtendBY_E6extendINtB2S_6CopiedB3_EE0E0E0ECs5JazJsyow1H_14otl_normalizer.exit: ; preds = %.lr.ph.i, %bb.b, %bb.c
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvNtCs5JazJsyow1H_14otl_normalizer6common16get_lang_systems(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1                 ; 2 uses
  %i.b = alloca [24 x i8], align 8                ; 3 uses
  %i.c = alloca [32 x i8], align 8                ; 5 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  %i.e = alloca [40 x i8], align 8                ; 9 uses
  %i.f = alloca [56 x i8], align 8                ; 7 uses
  %i.g = alloca [8 x i8], align 8                 ; 6 uses
  %i.h = alloca [8 x i8], align 8                 ; 5 uses
  %i.i = alloca [24 x i8], align 8                ; 3 uses
  %i.j = alloca [24 x i8], align 8                ; 7 uses
  %i.k = alloca [16 x i8], align 8                ; 5 uses
  %i.l = alloca [24 x i8], align 8                ; 3 uses
  %i.m = alloca [24 x i8], align 8                ; 6 uses
  %i.n = alloca [16 x i8], align 8                ; 9 uses
  %i.o = alloca [24 x i8], align 8                ; 14 uses
  %i.p = alloca [24 x i8], align 8                ; 11 uses
  %i.q = alloca [16 x i8], align 8                ; 11 uses
  %i.r = alloca [24 x i8], align 8                ; 3 uses
  %i.s = alloca [24 x i8], align 8                ; 11 uses
  %i.t = alloca [16 x i8], align 8                ; 9 uses
  %i.u = alloca [40 x i8], align 8                ; 10 uses
  %i.v = alloca [48 x i8], align 8                ; 4 uses
  %i.w = alloca [48 x i8], align 8                ; 9 uses
  %i.x = alloca [64 x i8], align 8                ; 4 uses
  %i.y = alloca [24 x i8], align 8                ; 7 uses
  %i.z = alloca [24 x i8], align 8                ; 11 uses
  %i.aa = alloca [32 x i8], align 8               ; 6 uses
  %i.ab = alloca [40 x i8], align 8               ; 8 uses
  %i.ac = alloca [240 x i8], align 8              ; 36 uses
  %i.ad = alloca [48 x i8], align 8               ; 8 uses
  %i.ae = alloca [16 x i8], align 8               ; 5 uses
  %i.af = alloca [8 x i8], align 8                ; 2 uses
end_hunk_0
