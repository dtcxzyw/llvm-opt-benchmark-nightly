Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/fontc-rs/original/fea_rs-7e8d4fc46e030f62.fea_rs.95f468ebf2e10b87-cgu.08?download=true
begin_hunk_0_@_RNvNvMNtNtNtCscScJTt9VrQp_6fea_rs7compile6tables4baseNtB4_15BaseAxisBuilder5build28get_dflt_and_lang_sys_minmax:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  br label %.split.us.preheader.i.backedge

bb.n:                                             ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1363
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1363
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !1363
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.l, ptr noundef nonnull align 8 dereferenceable(40) %i.k, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  %i.ar = load i64, ptr %i.n, align 8, !range !10, !alias.scope !1366, !noundef !5
  %i.as = icmp eq i64 %i.ar, -1
  br i1 %i.as, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4base6MinMaxEECscScJTt9VrQp_6fea_rs.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4base6MinMaxECscScJTt9VrQp_6fea_rs(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.n)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4base6MinMaxEECscScJTt9VrQp_6fea_rs.exit unwind label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.at = landingpad { ptr, i32 }
          cleanup
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.n, ptr noundef nonnull align 8 dereferenceable(40) %i.l, i64 40, i1 false)
  br label %.body

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4base6MinMaxEECscScJTt9VrQp_6fea_rs.exit: ; preds = %bb.n, %bb.o
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.n, ptr noundef nonnull align 8 dereferenceable(40) %i.l, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  br label %.split.us.preheader.i.backedge

.split.us.preheader.i.backedge:                   ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4base6MinMaxEECscScJTt9VrQp_6fea_rs.exit, %bb.m
  br label %.split.us.preheader.i

bb.q:                                             ; preds = %bb.s, %.body
  %i.au = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #27
  unreachable

bb.r:                                             ; preds = %.body
  %i.av = load i64, ptr %i.n, align 8, !range !10, !alias.scope !1367, !noundef !5
  %i.aw = icmp eq i64 %i.av, -1
  br i1 %i.aw, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4base6MinMaxEECscScJTt9VrQp_6fea_rs.exit24, label %bb.s

bb.s:                                             ; preds = %bb.r
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4base6MinMaxECscScJTt9VrQp_6fea_rs(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.n)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4base6MinMaxEECscScJTt9VrQp_6fea_rs.exit24 unwind label %bb.q

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4base6MinMaxEECscScJTt9VrQp_6fea_rs.exit24: ; preds = %bb.r, %bb.s
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXCsbDKHzkXHCUM_9hashbrownNtNtNtCs6WnK4nVnpEz_11write_fonts6tables6layout12ConditionSetINtB2_10EquivalentBq_E10equivalentCscScJTt9VrQp_6fea_rs(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1 = load i64, ptr %i.a, align 8, !noundef !5 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val3 = load i64, ptr %i.b, align 8, !noundef !5
  %i.c = icmp eq i64 %.val1, %.val3
  br i1 %i.c, label %bb.b, label %_RNvXsc6_NtNtCs6WnK4nVnpEz_11write_fonts6tables6layoutNtB6_12ConditionSetNtNtCsf3Ta7LF998c_4core3cmp9PartialEq2eq.exit

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val2 = load ptr, ptr %i.d, align 8, !nonnull !5, !noundef !5
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.e, align 8, !nonnull !5, !noundef !5
  %i.f = tail call noundef zeroext i1 @_RNvXs2_NtNtCsf3Ta7LF998c_4core5slice3cmpINtNtCs6WnK4nVnpEz_11write_fonts7offsets12OffsetMarkerNtNtNtBH_6tables6layout9ConditionKj4_EINtB5_14SlicePartialEqBC_E17equal_same_lengthCscScJTt9VrQp_6fea_rs(ptr noundef nonnull %.val, ptr noundef nonnull %.val2, i64 noundef %.val1)
  br label %_RNvXsc6_NtNtCs6WnK4nVnpEz_11write_fonts6tables6layoutNtB6_12ConditionSetNtNtCsf3Ta7LF998c_4core3cmp9PartialEq2eq.exit

_RNvXsc6_NtNtCs6WnK4nVnpEz_11write_fonts6tables6layoutNtB6_12ConditionSetNtNtCsf3Ta7LF998c_4core3cmp9PartialEq2eq.exit: ; preds = %bb.a, %bb.b
  %.sroa.0.0.i.i = phi i1 [ %i.f, %bb.b ], [ false, %bb.a ]
  ret i1 %.sroa.0.0.i.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read, inaccessiblemem: read) uwtable
define hidden noundef zeroext i1 @_RNvXCsbDKHzkXHCUM_9hashbrownNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups10FeatureKeyINtB2_10EquivalentBq_E10equivalentBw_(ptr noalias nofree noundef readonly captures(none) dereferenceable(12) %0, ptr noalias nofree noundef readonly captures(none) dereferenceable(12) %1) unnamed_addr #2 {
_RNvXsV_NtNtCscScJTt9VrQp_6fea_rs7compile7lookupsNtB5_10FeatureKeyNtNtCsf3Ta7LF998c_4core3cmp9PartialEq2eq.exit:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1371)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1372)
  %i.a = load i64, ptr %0, align 1
  %i.b = load i64, ptr %1, align 1
  %i.c = xor i64 %i.a, %i.b
  %i.d = getelementptr i8, ptr %0, i64 8
  %i.e = getelementptr i8, ptr %1, i64 8
  %i.f = load i32, ptr %i.d, align 1
  %i.g = load i32, ptr %i.e, align 1
  %i.h = zext i32 %i.f to i64
  %i.i = zext i32 %i.g to i64
  %i.j = xor i64 %i.h, %i.i
  %i.k = or i64 %i.c, %i.j
  %i.l = icmp ne i64 %i.k, 0
  %i.m = zext i1 %i.l to i32
  %i.n = icmp eq i32 %i.m, 0
  ret i1 %i.n
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden noundef zeroext i1 @_RNvXCsbDKHzkXHCUM_9hashbrownNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups8LookupIdINtB2_10EquivalentBq_E10equivalentBw_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %1) unnamed_addr #3 {
bb.a:
  %.val = load i64, ptr %0, align 8, !range !28, !noundef !5 ; 2 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load i64, ptr %i.a, align 8            ; 5 uses
  %.val2 = load i64, ptr %1, align 8, !range !28, !noundef !5
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val3 = load i64, ptr %i.b, align 8            ; 5 uses
  %i.c = icmp eq i64 %.val, %.val2
  br i1 %i.c, label %bb.b, label %_RNvXsC_NtNtCscScJTt9VrQp_6fea_rs7compile7lookupsNtB5_8LookupIdNtNtCsf3Ta7LF998c_4core3cmp9PartialEq2eq.exit

bb.b:                                             ; preds = %bb.a
  switch i64 %.val, label %default.unreachable [
    i64 0, label %bb.c
    i64 1, label %bb.d
    i64 2, label %bb.e
    i64 3, label %bb.f
    i64 4, label %bb.g
    i64 5, label %_RNvXsC_NtNtCscScJTt9VrQp_6fea_rs7compile7lookupsNtB5_8LookupIdNtNtCsf3Ta7LF998c_4core3cmp9PartialEq2eq.exit
  ]

default.unreachable:                              ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.d = icmp eq i64 %.val1, %.val3
  br label %_RNvXsC_NtNtCscScJTt9VrQp_6fea_rs7compile7lookupsNtB5_8LookupIdNtNtCsf3Ta7LF998c_4core3cmp9PartialEq2eq.exit

bb.d:                                             ; preds = %bb.b
  %i.e = icmp eq i64 %.val1, %.val3
  br label %_RNvXsC_NtNtCscScJTt9VrQp_6fea_rs7compile7lookupsNtB5_8LookupIdNtNtCsf3Ta7LF998c_4core3cmp9PartialEq2eq.exit

bb.e:                                             ; preds = %bb.b
  %i.f = icmp eq i64 %.val1, %.val3
  br label %_RNvXsC_NtNtCscScJTt9VrQp_6fea_rs7compile7lookupsNtB5_8LookupIdNtNtCsf3Ta7LF998c_4core3cmp9PartialEq2eq.exit

bb.f:                                             ; preds = %bb.b
  %i.g = icmp eq i64 %.val1, %.val3
  br label %_RNvXsC_NtNtCscScJTt9VrQp_6fea_rs7compile7lookupsNtB5_8LookupIdNtNtCsf3Ta7LF998c_4core3cmp9PartialEq2eq.exit

bb.g:                                             ; preds = %bb.b
  %i.h = icmp eq i64 %.val1, %.val3
  br label %_RNvXsC_NtNtCscScJTt9VrQp_6fea_rs7compile7lookupsNtB5_8LookupIdNtNtCsf3Ta7LF998c_4core3cmp9PartialEq2eq.exit

_RNvXsC_NtNtCscScJTt9VrQp_6fea_rs7compile7lookupsNtB5_8LookupIdNtNtCsf3Ta7LF998c_4core3cmp9PartialEq2eq.exit: ; preds = %bb.a, %bb.b, %bb.c, %bb.d, %bb.e, %bb.f, %bb.g
  %.sroa.0.0.shrunk.i = phi i1 [ true, %bb.b ], [ false, %bb.a ], [ %i.g, %bb.f ], [ %i.d, %bb.c ], [ %i.e, %bb.d ], [ %i.f, %bb.e ], [ %i.h, %bb.g ]
  ret i1 %.sroa.0.0.shrunk.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define internal void @_RNvXs0_NtNtCs6WnK4nVnpEz_11write_fonts6tables4baseNtB5_4BaseNtNtB9_5write9FontWrite10table_type(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 5)) %0, ptr noalias nofree readonly align 8 captures(none) %1) unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i32 1163084098, ptr %i.a, align 1
  store i8 3, ptr %0, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define internal void @_RNvXs0_NtNtCs6WnK4nVnpEz_11write_fonts6tables4maxpNtB5_4MaxpNtNtB9_5write9FontWrite10table_type(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 5)) %0, ptr noalias nofree readonly align 2 captures(none) %1) unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i32 1886937453, ptr %i.a, align 1
  store i8 3, ptr %0, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define internal void @_RNvXs0_NtNtCs6WnK4nVnpEz_11write_fonts6tables4vheaNtB5_4VheaNtNtB9_5write9FontWrite10table_type(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 5)) %0, ptr noalias nofree readonly align 4 captures(none) %1) unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i32 1634035830, ptr %i.a, align 1
  store i8 3, ptr %0, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define internal void @_RNvXs1_NtNtCs6WnK4nVnpEz_11write_fonts6tables3os2NtB5_3Os2NtNtB9_5write9FontWrite10table_type(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 5)) %0, ptr noalias nofree readonly align 4 captures(none) %1) unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i32 841962319, ptr %i.a, align 1
  store i8 3, ptr %0, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden noundef zeroext i1 @_RNvXs1_NtNtNtCsf3Ta7LF998c_4core3ops8function5implsQNCINvXsb_NtNtNtCs6WnK4nVnpEz_11write_fonts6tables6layout8buildersNtBX_19ClassDefBuilderImplINtNtNtNtBb_4iter6traits7collect12FromIteratorTNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16tEE9from_iterINtNtNtB2o_8adapters3map3MapINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map4IterB32_NtNtNtCs8n5UXKvQVD9_10read_fonts6tables4gdef13GlyphClassDefENCNCNvMNtNtNtCscScJTt9VrQp_6fea_rs7compile6tables4gdefNtB6v_11GdefBuilder15build_class_def00EE0INtB7_5FnMutTRB31_EE8call_mutB6B_(ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef readonly align 2 captures(none) dereferenceable(4) %1) unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 2
  %.val = load i16, ptr %i.a, align 2, !noundef !5
  %i.b = icmp ne i16 %.val, 0
  ret i1 %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden noundef zeroext i1 @_RNvXs1_NtNtNtCsf3Ta7LF998c_4core3ops8function5implsQNCINvXsb_NtNtNtCs6WnK4nVnpEz_11write_fonts6tables6layout8buildersNtBX_19ClassDefBuilderImplINtNtNtNtBb_4iter6traits7collect12FromIteratorTNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16tEE9from_iterINtNtNtB2o_8adapters3map3MapINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map4IterB32_tENCNCNvMNtNtNtCscScJTt9VrQp_6fea_rs7compile6tables4gdefNtB5C_11GdefBuilder27build_mark_attach_class_def00EE0INtB7_5FnMutTRB31_EE8call_mutB5I_(ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef readonly align 2 captures(none) dereferenceable(4) %1) unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 2
  %.val = load i16, ptr %i.a, align 2, !noundef !5
  %i.b = icmp ne i16 %.val, 0
  ret i1 %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden i48 @_RNvXs1_NtNtNtCsf3Ta7LF998c_4core3ops8function5implsQNCNvXs0_NtNtCscScJTt9VrQp_6fea_rs7compile7lookupsNtNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4gsub8builders18MultipleSubBuilderNtBW_13IterAaltPairs15iter_aalt_pairs0INtB7_5FnMutTTRNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16RINtNtCsgCecv3eZDcN_5alloc3vec3VecB3G_EEEE8call_mutB10_(ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef readonly align 2 captures(none) dereferenceable(2) %1, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %2) unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.val4 = load i64, ptr %i.a, align 8, !noundef !5
  %i.b = icmp eq i64 %.val4, 1
  br i1 %i.b, label %bb.b, label %_RNCNvXs0_NtNtCscScJTt9VrQp_6fea_rs7compile7lookupsNtNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4gsub8builders18MultipleSubBuilderNtB7_13IterAaltPairs15iter_aalt_pairs0Bb_.exit

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.val3 = load ptr, ptr %i.c, align 8, !nonnull !5, !noundef !5
  %.val = load i16, ptr %1, align 2
  %i.d = load i16, ptr %.val3, align 2, !noundef !5
  br label %_RNCNvXs0_NtNtCscScJTt9VrQp_6fea_rs7compile7lookupsNtNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4gsub8builders18MultipleSubBuilderNtB7_13IterAaltPairs15iter_aalt_pairs0Bb_.exit

_RNCNvXs0_NtNtCscScJTt9VrQp_6fea_rs7compile7lookupsNtNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4gsub8builders18MultipleSubBuilderNtB7_13IterAaltPairs15iter_aalt_pairs0Bb_.exit: ; preds = %bb.a, %bb.b
  %.sroa.4.0.i = phi i16 [ %i.d, %bb.b ], [ undef, %bb.a ]
  %.sroa.3.0.i = phi i16 [ %.val, %bb.b ], [ undef, %bb.a ]
  %.sroa.0.0.i = phi i16 [ 1, %bb.b ], [ 0, %bb.a ]
  %.sroa.4.0.insert.ext.i = zext i16 %.sroa.4.0.i to i48
  %.sroa.4.0.insert.shift.i = shl nuw i48 %.sroa.4.0.insert.ext.i, 32
  %.sroa.3.0.insert.ext.i = zext i16 %.sroa.3.0.i to i48
  %.sroa.3.0.insert.shift.i = shl nuw nsw i48 %.sroa.3.0.insert.ext.i, 16
  %.sroa.3.0.insert.insert.i = or disjoint i48 %.sroa.3.0.insert.shift.i, %.sroa.4.0.insert.shift.i
  %.sroa.0.0.insert.ext.i = zext nneg i16 %.sroa.0.0.i to i48
  %.sroa.0.0.insert.insert.i = or disjoint i48 %.sroa.3.0.insert.insert.i, %.sroa.0.0.insert.ext.i
  ret i48 %.sroa.0.0.insert.insert.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read, inaccessiblemem: write) uwtable
define hidden i48 @_RNvXs1_NtNtNtCsf3Ta7LF998c_4core3ops8function5implsQNCNvXs_NtNtCscScJTt9VrQp_6fea_rs7compile7lookupsNtNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4gsub8builders18LigatureSubBuilderNtBV_13IterAaltPairs15iter_aalt_pairss_0INtB7_5FnMutTTNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16RTINtNtCsgCecv3eZDcN_5alloc3vec3VecB3G_EB3G_EEEE8call_mutBZ_(ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(8) %0, i16 noundef %1, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %2) unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.val = load i64, ptr %i.a, align 8, !noundef !5 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 24
  %.val3 = load i16, ptr %i.b, align 8
  %i.c = icmp ult i64 %.val, 4611686018427387904
  tail call void @llvm.assume(i1 %i.c)
  %i.d = icmp eq i64 %.val, 0                     ; 2 uses
  %i.e = zext i16 %.val3 to i48
  %i.f = shl nuw i48 %i.e, 32
  %.sroa.4.0.insert.shift.i = select i1 %i.d, i48 %i.f, i48 0
  %.sroa.3.0.insert.ext.i = zext i16 %1 to i48
  %.sroa.3.0.insert.shift.i = shl nuw nsw i48 %.sroa.3.0.insert.ext.i, 16
  %.sroa.3.0.insert.insert.i = or disjoint i48 %.sroa.4.0.insert.shift.i, %.sroa.3.0.insert.shift.i
  %.sroa.0.0.insert.ext.i = zext i1 %i.d to i48
  %.sroa.0.0.insert.insert.i = or disjoint i48 %.sroa.3.0.insert.insert.i, %.sroa.0.0.insert.ext.i
  ret i48 %.sroa.0.0.insert.insert.i
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCsf3Ta7LF998c_4core3fmtRNtNtCs6WnK4nVnpEz_11write_fonts8validate16ValidationReportNtB6_5Debug3fmtCscScJTt9VrQp_6fea_rs(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !5, !align !15, !noundef !5
  %i.b = tail call noundef zeroext i1 @_RNvXs0_NtCs6WnK4nVnpEz_11write_fonts8validateNtB5_16ValidationReportNtNtCsf3Ta7LF998c_4core3fmt5Debug3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.b
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCsf3Ta7LF998c_4core3fmtRNtNtNtB8_3num5error12IntErrorKindNtB6_5Debug3fmtCscScJTt9VrQp_6fea_rs(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
switch.lookup:
  %i.a = load ptr, ptr %0, align 8, !nonnull !5, !noundef !5
  %.val = load i8, ptr %i.a, align 1, !range !1373, !noundef !5 ; 2 uses
  %i.b = zext nneg i8 %.val to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._RNvXs1g_NtCsf3Ta7LF998c_4core3fmtRNtNtNtB8_3num5error12IntErrorKindNtB6_5Debug3fmtCscScJTt9VrQp_6fea_rs, i64 %i.b
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i64
  %i.c = zext nneg i8 %.val to i64
  %switch.gep1 = getelementptr inbounds nuw [8 x i8], ptr @switch.table._RNvXs1g_NtCsf3Ta7LF998c_4core3fmtRNtNtNtB8_3num5error12IntErrorKindNtB6_5Debug3fmtCscScJTt9VrQp_6fea_rs.184, i64 %i.c
  %switch.load2 = load ptr, ptr %switch.gep1, align 8
  %i.d = tail call noundef zeroext i1 @_RNvMsa_NtCsf3Ta7LF998c_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %switch.load2, i64 noundef %switch.ext)
  ret i1 %i.d
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCsf3Ta7LF998c_4core3fmtRNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups10FeatureKeyNtB6_5Debug3fmtBC_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 9 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !5, !noundef !5 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1377)
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1378
  store ptr %i.b, ptr %i.a, align 8, !noalias !1378
  %.sroa.43.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs8_NtCsbZq13ASDQ8l_10font_types3tagNtB5_3TagNtNtCsf3Ta7LF998c_4core3fmt7Display3fmt, ptr %.sroa.43.0..sroa_idx.i, align 8, !noalias !1378
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.c, ptr %i.e, align 8, !noalias !1378
  %.sroa.47.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr @_RNvXs8_NtCsbZq13ASDQ8l_10font_types3tagNtB5_3TagNtNtCsf3Ta7LF998c_4core3fmt7Display3fmt, ptr %.sroa.47.0..sroa_idx.i, align 8, !noalias !1378
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr %i.d, ptr %i.f, align 8, !noalias !1378
  %.sroa.411.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store ptr @_RNvXs8_NtCsbZq13ASDQ8l_10font_types3tagNtB5_3TagNtNtCsf3Ta7LF998c_4core3fmt7Display3fmt, ptr %.sroa.411.0..sroa_idx.i, align 8, !noalias !1378
  %i.g = load ptr, ptr %1, align 8, !alias.scope !1377, !noalias !1379, !nonnull !5, !noundef !5
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !alias.scope !1377, !noalias !1379, !nonnull !5, !align !15, !noundef !5
  %i.j = call noundef zeroext i1 @_RNvNtCsf3Ta7LF998c_4core3fmt5write(ptr noundef nonnull %i.g, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.i, ptr noundef nonnull @94, ptr noundef nonnull %i.a), !noalias !1377
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1378
  ret i1 %i.j
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCsf3Ta7LF998c_4core3fmtRNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups8LookupIdNtB6_5Debug3fmtBC_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [8 x i8], align 8                 ; 4 uses
  %i.f = load ptr, ptr %0, align 8, !nonnull !5, !align !15, !noundef !5 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1383)
  %i.g = load i64, ptr %i.f, align 8, !range !28, !alias.scope !1383, !noalias !1384, !noundef !5
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 5 uses
  switch i64 %i.g, label %default.unreachable [
    i64 0, label %bb.b
    i64 1, label %bb.c
    i64 2, label %bb.d
    i64 3, label %bb.e
    i64 4, label %bb.f
    i64 5, label %bb.g
  ]

default.unreachable:                              ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !1385
  store ptr %i.h, ptr %i.e, align 8, !noalias !1385
  %i.i = call noundef zeroext i1 @_RNvMsa_NtCsf3Ta7LF998c_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @102, i64 noundef 4, ptr noundef nonnull %i.e, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @101)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !1385
  br label %_RNvXsx_NtNtCscScJTt9VrQp_6fea_rs7compile7lookupsNtB5_8LookupIdNtNtCsf3Ta7LF998c_4core3fmt5Debug3fmt.exit

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !1385
  store ptr %i.h, ptr %i.d, align 8, !noalias !1385
  %i.j = call noundef zeroext i1 @_RNvMsa_NtCsf3Ta7LF998c_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @103, i64 noundef 4, ptr noundef nonnull %i.d, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @101)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !1385
  br label %_RNvXsx_NtNtCscScJTt9VrQp_6fea_rs7compile7lookupsNtB5_8LookupIdNtNtCsf3Ta7LF998c_4core3fmt5Debug3fmt.exit

bb.d:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1385
  store ptr %i.h, ptr %i.c, align 8, !noalias !1385
  %i.k = call noundef zeroext i1 @_RNvMsa_NtCsf3Ta7LF998c_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @104, i64 noundef 12, ptr noundef nonnull %i.c, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @101)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1385
  br label %_RNvXsx_NtNtCscScJTt9VrQp_6fea_rs7compile7lookupsNtB5_8LookupIdNtNtCsf3Ta7LF998c_4core3fmt5Debug3fmt.exit

bb.e:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1385
  store ptr %i.h, ptr %i.b, align 8, !noalias !1385
  %i.l = call noundef zeroext i1 @_RNvMsa_NtCsf3Ta7LF998c_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @105, i64 noundef 12, ptr noundef nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @101)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1385
  br label %_RNvXsx_NtNtCscScJTt9VrQp_6fea_rs7compile7lookupsNtB5_8LookupIdNtNtCsf3Ta7LF998c_4core3fmt5Debug3fmt.exit

bb.f:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1385
  store ptr %i.h, ptr %i.a, align 8, !noalias !1385
  %i.m = call noundef zeroext i1 @_RNvMsa_NtCsf3Ta7LF998c_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @106, i64 noundef 19, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @101)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1385
  br label %_RNvXsx_NtNtCscScJTt9VrQp_6fea_rs7compile7lookupsNtB5_8LookupIdNtNtCsf3Ta7LF998c_4core3fmt5Debug3fmt.exit

bb.g:                                             ; preds = %bb.a
  %i.n = tail call noundef zeroext i1 @_RNvMsa_NtCsf3Ta7LF998c_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @95, i64 noundef 5), !noalias !1383
  br label %_RNvXsx_NtNtCscScJTt9VrQp_6fea_rs7compile7lookupsNtB5_8LookupIdNtNtCsf3Ta7LF998c_4core3fmt5Debug3fmt.exit

_RNvXsx_NtNtCscScJTt9VrQp_6fea_rs7compile7lookupsNtB5_8LookupIdNtNtCsf3Ta7LF998c_4core3fmt5Debug3fmt.exit: ; preds = %bb.b, %bb.c, %bb.d, %bb.e, %bb.f, %bb.g
  %.sroa.0.0.in.i = phi i1 [ %i.i, %bb.b ], [ %i.j, %bb.c ], [ %i.k, %bb.d ], [ %i.l, %bb.e ], [ %i.m, %bb.f ], [ %i.n, %bb.g ]
  ret i1 %.sroa.0.0.in.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define internal void @_RNvXs2_NtNtCs6WnK4nVnpEz_11write_fonts6tables4headNtB5_4HeadNtNtB9_5write9FontWrite10table_type(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 5)) %0, ptr noalias nofree readonly align 8 captures(none) %1) unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i32 1684104552, ptr %i.a, align 1
  store i8 3, ptr %0, align 8
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(argmem: read) uwtable
define hidden noundef zeroext i1 @_RNvXs2_NtNtCsf3Ta7LF998c_4core5slice3cmpNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups8LookupIdINtB5_14SlicePartialEqBC_E17equal_same_lengthBI_(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2) unnamed_addr #7 {
bb.a:
  %i.a = icmp eq i64 %2, 0
  br i1 %i.a, label %_RNvYNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups8LookupIdNtNtCsf3Ta7LF998c_4core3cmp9PartialEq2neB8_.exit.thread, label %.lr.ph

bb.b:                                             ; preds = %_RNvYNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups8LookupIdNtNtCsf3Ta7LF998c_4core3cmp9PartialEq2neB8_.exit.thread9
  %i.b = add nuw i64 %.sroa.01.011, 1             ; 2 uses
  %exitcond.not = icmp eq i64 %i.b, %2
  br i1 %exitcond.not, label %_RNvYNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups8LookupIdNtNtCsf3Ta7LF998c_4core3cmp9PartialEq2neB8_.exit.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.sroa.01.011 = phi i64 [ %i.b, %bb.b ], [ 0, %bb.a ] ; 3 uses
  %i.c = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.sroa.01.011 ; 2 uses
  %i.d = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %.sroa.01.011 ; 2 uses
  %.val = load i64, ptr %i.c, align 8, !range !28, !noundef !5 ; 2 uses
  %.val6 = load i64, ptr %i.d, align 8, !range !28, !noundef !5
  %i.e = icmp eq i64 %.val, %.val6
  br i1 %i.e, label %_RNvYNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups8LookupIdNtNtCsf3Ta7LF998c_4core3cmp9PartialEq2neB8_.exit.thread9, label %_RNvYNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups8LookupIdNtNtCsf3Ta7LF998c_4core3cmp9PartialEq2neB8_.exit.thread

_RNvYNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups8LookupIdNtNtCsf3Ta7LF998c_4core3cmp9PartialEq2neB8_.exit.thread9: ; preds = %.lr.ph
  %i.f = getelementptr i8, ptr %i.d, i64 8
  %.val7 = load i64, ptr %i.f, align 8
  %i.g = getelementptr i8, ptr %i.c, i64 8
  %.val5 = load i64, ptr %i.g, align 8
  %i.h = icmp eq i64 %.val, 5
  %.sroa.0.0.shrunk.i.i.not = icmp eq i64 %.val5, %.val7
  %or.cond = select i1 %i.h, i1 true, i1 %.sroa.0.0.shrunk.i.i.not
  br i1 %or.cond, label %bb.b, label %_RNvYNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups8LookupIdNtNtCsf3Ta7LF998c_4core3cmp9PartialEq2neB8_.exit.thread

_RNvYNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups8LookupIdNtNtCsf3Ta7LF998c_4core3cmp9PartialEq2neB8_.exit.thread: ; preds = %bb.b, %.lr.ph, %_RNvYNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups8LookupIdNtNtCsf3Ta7LF998c_4core3cmp9PartialEq2neB8_.exit.thread9, %bb.a
  %.lcssa = phi i1 [ true, %bb.a ], [ false, %_RNvYNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups8LookupIdNtNtCsf3Ta7LF998c_4core3cmp9PartialEq2neB8_.exit.thread9 ], [ false, %.lr.ph ], [ true, %bb.b ]
  ret i1 %.lcssa
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define internal void @_RNvXs4_NtNtCs6WnK4nVnpEz_11write_fonts6tables4gdefNtB5_4GdefNtNtB9_5write9FontWrite10table_type(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 5)) %0, ptr noalias nofree readonly align 8 captures(none) %1) unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i32 1178944583, ptr %i.a, align 1
  store i8 3, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs5_NtCsgCecv3eZDcN_5alloc5sliceSINtCsbeZck1VjBmm_8indexmap6BucketNtNtNtNtCs6WnK4nVnpEz_11write_fonts6tables10variations11ivs_builder8DeltaSetmEINtB5_16SpecCloneIntoVecBy_NtNtB7_5alloc6GlobalE10clone_intoCscScJTt9VrQp_6fea_rs(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %0, i64 noundef range(i64 0, 230584300921369396) %1, ptr noalias nofree noundef align 8 dereferenceable(24) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  tail call void @_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VecINtCsbeZck1VjBmm_8indexmap6BucketNtNtNtNtCs6WnK4nVnpEz_11write_fonts6tables10variations11ivs_builder8DeltaSetmEE8truncateCscScJTt9VrQp_6fea_rs(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %1)
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.c = load i64, ptr %i.b, align 8, !noundef !5 ; 5 uses
  %i.d = icmp ult i64 %i.c, 230584300921369396
end_hunk_0
begin_hunk_1_@_RNvXs6_NtNtCscScJTt9VrQp_6fea_rs7compile7lookupsNtB5_18SubstitutionLookupNtNtNtNtCs6WnK4nVnpEz_11write_fonts6tables6layout8builders7Builder5build:bb.a
.body.i.thread:                                   ; preds = %bb.ab, %bb.ae, %bb.ah, %bb.ak, %bb.an, %bb.aq, %bb.au, %.body.i.thread162, %bb.y, %bb.be
  %eh.lpad-body = phi { ptr, i32 } [ %i.gr, %bb.y ], [ %lpad.thr_comm.split-lp, %bb.be ], [ %lpad.thr_comm, %.body.i.thread162 ], [ %i.lu, %bb.au ], [ %i.lb, %bb.aq ], [ %i.ki, %bb.an ], [ %i.jp, %bb.ak ], [ %i.iw, %bb.ah ], [ %i.id, %bb.ae ], [ %i.hk, %bb.ab ]
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.gq, i64 noundef 40, i64 noundef 8) #30
  br label %common.resume
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs6_NtNtNtCs5Xr050g3D4S_3std11collections4hash3setINtB5_7HashSetNtNtCsbZq13ASDQ8l_10font_types3tag3TagENtNtCsf3Ta7LF998c_4core3fmt5Debug3fmtCscScJTt9VrQp_6fea_rs(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 4 uses
  %i.b = alloca [16 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvMsa_NtCsf3Ta7LF998c_4core3fmtNtB5_9Formatter9debug_set(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMs0_NtCsbDKHzkXHCUM_9hashbrown3mapINtB5_7HashMapNtNtCsbZq13ASDQ8l_10font_types3tag3TaguNtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateE4iterCscScJTt9VrQp_6fea_rs(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %0)
  %i.c = call noundef nonnull align 8 ptr @_RINvMs5_NtNtCsf3Ta7LF998c_4core3fmt8buildersNtB6_8DebugSet7entriesRNtNtCsbZq13ASDQ8l_10font_types3tag3TagINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3set4IterB13_EECscScJTt9VrQp_6fea_rs(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.b, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(40) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.d = call noundef zeroext i1 @_RNvMs5_NtNtCsf3Ta7LF998c_4core3fmt8buildersNtB5_8DebugSet6finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret i1 %i.d
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define internal void @_RNvXs7_NtNtCs6WnK4nVnpEz_11write_fonts6tables4nameNtB5_4NameNtNtB9_5write9FontWrite10table_type(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 5)) %0, ptr noalias nofree readonly align 8 captures(none) %1) unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i32 1701667182, ptr %i.a, align 1
  store i8 3, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs_CsbeZck1VjBmm_8indexmapINtB4_6BucketNtNtNtNtCs6WnK4nVnpEz_11write_fonts6tables10variations11ivs_builder8DeltaSetmENtNtCsf3Ta7LF998c_4core5clone5Clone5cloneCscScJTt9VrQp_6fea_rs(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.b = load i64, ptr %i.a, align 8, !noundef !5
  tail call void @_RNvXsb_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecTtlEENtNtCsf3Ta7LF998c_4core5clone5Clone5cloneCscScJTt9VrQp_6fea_rs(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1)
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.d = load i32, ptr %i.c, align 8, !alias.scope !1817, !noundef !5
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.b, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 %i.d, ptr %i.f, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define internal void @_RNvXs_NtNtCs6WnK4nVnpEz_11write_fonts6tables4hheaNtB4_4HheaNtNtB8_5write9FontWrite10table_type(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 5)) %0, ptr noalias nofree readonly align 2 captures(none) %1) unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i32 1634035816, ptr %i.a, align 1
  store i8 3, ptr %0, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define internal void @_RNvXs_NtNtCs6WnK4nVnpEz_11write_fonts6tables4statNtB4_4StatNtNtB8_5write9FontWrite10table_type(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 5)) %0, ptr noalias nofree readonly align 8 captures(none) %1) unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i32 1413567571, ptr %i.a, align 1
  store i8 3, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree17dedup_sorted_iterINtB4_15DedupSortedIterNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16NtNtCscScJTt9VrQp_6fea_rs6common10GlyphIdentINtNtNtBa_3vec9into_iter8IntoIterTB1t_B2g_EEENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextB2k_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(64) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.9 = alloca [23 x i8], align 1            ; 5 uses
  %i.a = alloca [32 x i8], align 8                ; 9 uses
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 9 ; 2 uses
  %.sroa.4.0..sroa_idx.promoted = load i8, ptr %.sroa.4.0..sroa_idx, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !5 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 3 uses
  %.sroa.4.0..sroa_idx18 = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.520.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 9
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %.promoted = load ptr, ptr %i.d, align 8
  %.sroa.01.0.copyload.pre = load i64, ptr %1, align 8
  br label %bb.b

bb.b:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueTNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16NtNtCscScJTt9VrQp_6fea_rs6common10GlyphIdentEEB1t_.exit, %bb.a
  %.sroa.01.0.copyload = phi i64 [ %.sroa.0.0.copyload7.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueTNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16NtNtCscScJTt9VrQp_6fea_rs6common10GlyphIdentEEB1t_.exit ], [ %.sroa.01.0.copyload.pre, %bb.a ]
  %i.f = phi ptr [ %i.m, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueTNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16NtNtCscScJTt9VrQp_6fea_rs6common10GlyphIdentEEB1t_.exit ], [ %.promoted, %bb.a ] ; 6 uses
  %.sroa.4.0.copyload9.i37 = phi i8 [ %.sroa.4.0.copyload9.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueTNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16NtNtCscScJTt9VrQp_6fea_rs6common10GlyphIdentEEB1t_.exit ], [ %.sroa.4.0..sroa_idx.promoted, %bb.a ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.9)
  store i8 -3, ptr %.sroa.4.0..sroa_idx, align 8
  %.not = icmp eq i8 %.sroa.4.0.copyload9.i37, -3
  br i1 %.not, label %bb.c, label %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterTNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16NtNtCscScJTt9VrQp_6fea_rs6common10GlyphIdentEENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextB1O_.exit

bb.c:                                             ; preds = %bb.b
  call void @llvm.experimental.noalias.scope.decl(metadata !1842)
  %i.g = icmp eq ptr %i.f, %i.c
  br i1 %i.g, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 32 ; 2 uses
  store ptr %i.h, ptr %i.d, align 8, !alias.scope !1842, !noalias !1843
  %.sroa.0.0.copyload13 = load i64, ptr %i.f, align 8, !noalias !1842
  %.sroa.6.0..sroa_idx14 = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.sroa.6.0.copyload15 = load i8, ptr %.sroa.6.0..sroa_idx14, align 8, !noalias !1842
  %.sroa.9.0..sroa_idx16 = getelementptr inbounds nuw i8, ptr %i.f, i64 9
  br label %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterTNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16NtNtCscScJTt9VrQp_6fea_rs6common10GlyphIdentEENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextB1O_.exit

_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterTNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16NtNtCscScJTt9VrQp_6fea_rs6common10GlyphIdentEENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextB1O_.exit: ; preds = %bb.b, %bb.d
  %.sroa.9.0..sroa_idx16.sink = phi ptr [ %.sroa.9.0..sroa_idx16, %bb.d ], [ %.sroa.5.0..sroa_idx, %bb.b ]
  %i.i = phi ptr [ %i.h, %bb.d ], [ %i.f, %bb.b ] ; 5 uses
  %.sroa.6.0 = phi i8 [ %.sroa.6.0.copyload15, %bb.d ], [ %.sroa.4.0.copyload9.i37, %bb.b ] ; 4 uses
  %.sroa.0.0 = phi i64 [ %.sroa.0.0.copyload13, %bb.d ], [ %.sroa.01.0.copyload, %bb.b ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(23) %.sroa.9, ptr noundef nonnull align 1 dereferenceable(23) %.sroa.9.0..sroa_idx16.sink, i64 23, i1 false)
  %.not10 = icmp eq i8 %.sroa.6.0, -2
  br i1 %.not10, label %.loopexit, label %bb.e

bb.e:                                             ; preds = %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterTNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16NtNtCscScJTt9VrQp_6fea_rs6common10GlyphIdentEENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextB1O_.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(23) %.sroa.520.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(23) %.sroa.9, i64 23, i1 false)
  store i64 %.sroa.0.0, ptr %i.a, align 8
  store i8 %.sroa.6.0, ptr %.sroa.4.0..sroa_idx18, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9)
  call void @llvm.experimental.noalias.scope.decl(metadata !1844)
  call void @llvm.experimental.noalias.scope.decl(metadata !1845)
  %i.j = icmp eq ptr %i.i, %i.c
  %i.k = trunc i64 %.sroa.0.0 to i16
  br i1 %i.j, label %.thread, label %bb.g

.thread:                                          ; preds = %bb.e
  store i8 -2, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !1844
  br label %.loopexit28

.loopexit:                                        ; preds = %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterTNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16NtNtCscScJTt9VrQp_6fea_rs6common10GlyphIdentEENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextB1O_.exit, %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 -2, ptr %i.l, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9)
  br label %bb.f

bb.f:                                             ; preds = %bb.m, %.loopexit28, %.loopexit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void

bb.g:                                             ; preds = %bb.e
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 32 ; 2 uses
  store ptr %i.m, ptr %i.d, align 8, !alias.scope !1845, !noalias !1846
  %.sroa.0.0.copyload7.i = load i64, ptr %i.i, align 8, !noalias !1847 ; 3 uses
  %.sroa.4.0..sroa_idx8.i = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %.sroa.4.0.copyload9.i = load i8, ptr %.sroa.4.0..sroa_idx8.i, align 8, !noalias !1847 ; 4 uses
  %.sroa.5.0..sroa_idx10.i = getelementptr inbounds nuw i8, ptr %i.i, i64 9
  store i64 %.sroa.0.0.copyload7.i, ptr %1, align 8, !alias.scope !1844
  store i8 %.sroa.4.0.copyload9.i, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !1844
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(23) %.sroa.5.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(23) %.sroa.5.0..sroa_idx10.i, i64 23, i1 false)
  %i.n = icmp ne i8 %.sroa.4.0.copyload9.i, -3
  call void @llvm.assume(i1 %i.n)
  %.not11 = icmp eq i8 %.sroa.4.0.copyload9.i, -2
  br i1 %.not11, label %.loopexit28, label %bb.h

.loopexit28:                                      ; preds = %bb.g, %.thread
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.a, i64 32, i1 false)
  br label %bb.f

bb.h:                                             ; preds = %bb.g
  %i.o = trunc i64 %.sroa.0.0.copyload7.i to i16
  %.not27 = icmp eq i16 %i.k, %i.o
  br i1 %.not27, label %bb.i, label %bb.m

bb.i:                                             ; preds = %bb.h
  call void @llvm.experimental.noalias.scope.decl(metadata !1848)
  call void @llvm.experimental.noalias.scope.decl(metadata !1849)
  %.not.i.i = icmp eq i8 %.sroa.6.0, -1
  br i1 %.not.i.i, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueTNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16NtNtCscScJTt9VrQp_6fea_rs6common10GlyphIdentEEB1t_.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @llvm.experimental.noalias.scope.decl(metadata !1850)
  call void @llvm.experimental.noalias.scope.decl(metadata !1851)
  call void @llvm.experimental.noalias.scope.decl(metadata !1852)
  %switch.i.i.i.i.i = icmp samesign ult i8 %.sroa.6.0, 25
  br i1 %switch.i.i.i.i.i, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueTNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16NtNtCscScJTt9VrQp_6fea_rs6common10GlyphIdentEEB1t_.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @llvm.experimental.noalias.scope.decl(metadata !1853)
  call void @llvm.experimental.noalias.scope.decl(metadata !1854)
  %i.p = load ptr, ptr %i.e, align 8, !alias.scope !1855, !nonnull !5, !noundef !5
  %i.q = atomicrmw sub ptr %i.p, i64 1 release, align 8, !noalias !1855
  %i.r = icmp eq i64 %i.q, 1
  br i1 %i.r, label %bb.l, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueTNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16NtNtCscScJTt9VrQp_6fea_rs6common10GlyphIdentEEB1t_.exit

bb.l:                                             ; preds = %bb.k
  fence acquire
  call void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArceE9drop_slowCscScJTt9VrQp_6fea_rs(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.e) #25
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueTNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16NtNtCscScJTt9VrQp_6fea_rs6common10GlyphIdentEEB1t_.exit

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueTNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16NtNtCscScJTt9VrQp_6fea_rs6common10GlyphIdentEEB1t_.exit: ; preds = %bb.i, %bb.j, %bb.k, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.b

bb.m:                                             ; preds = %bb.h
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.a, i64 32, i1 false)
  br label %bb.f
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(read, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable
define hidden i48 @_RNvXs_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree17dedup_sorted_iterINtB4_15DedupSortedIterNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16tINtNtNtBa_3vec9into_iter8IntoIterTB1t_tEEENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCscScJTt9VrQp_6fea_rs(ptr noalias nofree noundef align 8 captures(none) dereferenceable(40) %0) unnamed_addr #9 personality ptr @rust_eh_personality {
.peel.begin:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 5 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 34
  %.sroa.610.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !5 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %.promoted = load ptr, ptr %i.d, align 8        ; 5 uses
  %.sroa.09.0.copyload.pre = load i16, ptr %i.a, align 8 ; 2 uses
  %.sroa.5.0.copyload.pre = load i16, ptr %.sroa.5.0..sroa_idx, align 2
  %.sroa.610.0.copyload.pre = load i16, ptr %.sroa.610.0..sroa_idx, align 4
  store i16 2, ptr %i.a, align 8
  %.not.peel = icmp eq i16 %.sroa.09.0.copyload.pre, 2
  br i1 %.not.peel, label %bb.a, label %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterTNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16tEENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCscScJTt9VrQp_6fea_rs.exit.peel

_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterTNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16tEENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCscScJTt9VrQp_6fea_rs.exit.peel: ; preds = %.peel.begin
  %i.e = trunc i16 %.sroa.09.0.copyload.pre to i1
  br i1 %i.e, label %bb.b, label %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterTNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16tEENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCscScJTt9VrQp_6fea_rs.exit.thread29

bb.a:                                             ; preds = %.peel.begin
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1865)
  %i.f = icmp eq ptr %.promoted, %i.c
  br i1 %i.f, label %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterTNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16tEENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCscScJTt9VrQp_6fea_rs.exit.thread29, label %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterTNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16tEENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCscScJTt9VrQp_6fea_rs.exit.thread.peel

_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterTNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16tEENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCscScJTt9VrQp_6fea_rs.exit.thread.peel: ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %.promoted, i64 4 ; 2 uses
  store ptr %i.g, ptr %i.d, align 8, !alias.scope !1865
  %i.h = load i16, ptr %.promoted, align 2, !noalias !1865, !noundef !5
  %i.i = getelementptr inbounds nuw i8, ptr %.promoted, i64 2
  %i.j = load i16, ptr %i.i, align 2, !noalias !1865, !noundef !5
  br label %bb.b

bb.b:                                             ; preds = %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterTNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16tEENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCscScJTt9VrQp_6fea_rs.exit.thread.peel, %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterTNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16tEENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCscScJTt9VrQp_6fea_rs.exit.peel
  %.sroa.63.028.peel = phi i16 [ %i.h, %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterTNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16tEENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCscScJTt9VrQp_6fea_rs.exit.thread.peel ], [ %.sroa.5.0.copyload.pre, %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterTNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16tEENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCscScJTt9VrQp_6fea_rs.exit.peel ] ; 4 uses
  %.sroa.7.027.peel = phi i16 [ %i.j, %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterTNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16tEENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCscScJTt9VrQp_6fea_rs.exit.thread.peel ], [ %.sroa.610.0.copyload.pre, %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterTNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16tEENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCscScJTt9VrQp_6fea_rs.exit.peel ]
  %i.k = phi ptr [ %i.g, %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterTNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16tEENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCscScJTt9VrQp_6fea_rs.exit.thread.peel ], [ %.promoted, %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterTNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16tEENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCscScJTt9VrQp_6fea_rs.exit.peel ] ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1866)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1867)
  %i.l = icmp eq ptr %i.k, %i.c
  br i1 %i.l, label %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionIBw_TNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16tEEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB26_8PeekableINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterBM_EE4peek0ECscScJTt9VrQp_6fea_rs.exit.peel, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 4 ; 2 uses
  store ptr %i.m, ptr %i.d, align 8, !alias.scope !1867, !noalias !1866
  %i.n = load i16, ptr %i.k, align 2, !noalias !1868, !noundef !5
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 2
  %i.p = load i16, ptr %i.o, align 2, !noalias !1868, !noundef !5
  br label %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionIBw_TNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16tEEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB26_8PeekableINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterBM_EE4peek0ECscScJTt9VrQp_6fea_rs.exit.peel

_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionIBw_TNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16tEEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB26_8PeekableINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterBM_EE4peek0ECscScJTt9VrQp_6fea_rs.exit.peel: ; preds = %bb.c, %bb.b
  %i.q = phi ptr [ %i.m, %bb.c ], [ %i.k, %bb.b ]
  %.sroa.4.0.i.i.i.peel = phi i16 [ %i.p, %bb.c ], [ undef, %bb.b ] ; 2 uses
  %.sroa.3.0.i.i.i.peel = phi i16 [ %i.n, %bb.c ], [ undef, %bb.b ] ; 2 uses
  %.sroa.0.0.i.i.i.peel = phi i16 [ 1, %bb.c ], [ 0, %bb.b ] ; 2 uses
  %.sroa.4.0.insert.ext.i.i.i.peel = zext i16 %.sroa.4.0.i.i.i.peel to i48
  %.sroa.4.0.insert.shift.i.i.i.peel = shl nuw i48 %.sroa.4.0.insert.ext.i.i.i.peel, 32
  %.sroa.3.0.insert.ext.i.i.i.peel = zext i16 %.sroa.3.0.i.i.i.peel to i48
  %.sroa.3.0.insert.shift.i.i.i.peel = shl nuw nsw i48 %.sroa.3.0.insert.ext.i.i.i.peel, 16
  %.sroa.0.0.insert.ext.i.i.i.peel = zext nneg i16 %.sroa.0.0.i.i.i.peel to i48
  %i.r = or disjoint i48 %.sroa.4.0.insert.shift.i.i.i.peel, %.sroa.0.0.insert.ext.i.i.i.peel
  %.sroa.0.0.insert.insert.i.i.i.peel = or disjoint i48 %i.r, %.sroa.3.0.insert.shift.i.i.i.peel
  store i48 %.sroa.0.0.insert.insert.i.i.i.peel, ptr %i.a, align 8, !alias.scope !1866
  %i.s = trunc nuw i16 %.sroa.0.0.i.i.i.peel to i1
  %i.t = icmp eq i16 %.sroa.63.028.peel, %.sroa.3.0.i.i.i.peel
  %or.cond.not.peel = select i1 %i.s, i1 %i.t, i1 false
  br i1 %or.cond.not.peel, label %.peel.newph, label %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterTNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16tEENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCscScJTt9VrQp_6fea_rs.exit.thread29

.peel.newph:                                      ; preds = %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionIBw_TNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16tEEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB26_8PeekableINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterBM_EE4peek0ECscScJTt9VrQp_6fea_rs.exit.peel, %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionIBw_TNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16tEEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB26_8PeekableINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterBM_EE4peek0ECscScJTt9VrQp_6fea_rs.exit
  %.sroa.610.0.copyload = phi i16 [ %.sroa.4.0.i.i.i, %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionIBw_TNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16tEEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB26_8PeekableINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterBM_EE4peek0ECscScJTt9VrQp_6fea_rs.exit ], [ %.sroa.4.0.i.i.i.peel, %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionIBw_TNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16tEEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB26_8PeekableINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterBM_EE4peek0ECscScJTt9VrQp_6fea_rs.exit.peel ]
  %i.u = phi ptr [ %i.aa, %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionIBw_TNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16tEEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB26_8PeekableINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterBM_EE4peek0ECscScJTt9VrQp_6fea_rs.exit ], [ %i.q, %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionIBw_TNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16tEEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB26_8PeekableINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterBM_EE4peek0ECscScJTt9VrQp_6fea_rs.exit.peel ] ; 5 uses
  store i16 2, ptr %i.a, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1869)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1870)
  %i.v = icmp eq ptr %i.u, %i.c
  br i1 %i.v, label %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionIBw_TNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16tEEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB26_8PeekableINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterBM_EE4peek0ECscScJTt9VrQp_6fea_rs.exit, label %bb.d

bb.d:                                             ; preds = %.peel.newph
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 4 ; 2 uses
  store ptr %i.w, ptr %i.d, align 8, !alias.scope !1870, !noalias !1869
  %i.x = load i16, ptr %i.u, align 2, !noalias !1871, !noundef !5
  %i.y = getelementptr inbounds nuw i8, ptr %i.u, i64 2
  %i.z = load i16, ptr %i.y, align 2, !noalias !1871, !noundef !5
  br label %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionIBw_TNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16tEEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB26_8PeekableINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterBM_EE4peek0ECscScJTt9VrQp_6fea_rs.exit

_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionIBw_TNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16tEEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB26_8PeekableINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterBM_EE4peek0ECscScJTt9VrQp_6fea_rs.exit: ; preds = %.peel.newph, %bb.d
  %i.aa = phi ptr [ %i.w, %bb.d ], [ %i.u, %.peel.newph ]
  %.sroa.4.0.i.i.i = phi i16 [ %i.z, %bb.d ], [ undef, %.peel.newph ] ; 2 uses
  %.sroa.3.0.i.i.i = phi i16 [ %i.x, %bb.d ], [ undef, %.peel.newph ] ; 2 uses
  %.sroa.0.0.i.i.i = phi i16 [ 1, %bb.d ], [ 0, %.peel.newph ] ; 2 uses
  %.sroa.4.0.insert.ext.i.i.i = zext i16 %.sroa.4.0.i.i.i to i48
  %.sroa.4.0.insert.shift.i.i.i = shl nuw i48 %.sroa.4.0.insert.ext.i.i.i, 32
  %.sroa.3.0.insert.ext.i.i.i = zext i16 %.sroa.3.0.i.i.i to i48
  %.sroa.3.0.insert.shift.i.i.i = shl nuw nsw i48 %.sroa.3.0.insert.ext.i.i.i, 16
  %.sroa.0.0.insert.ext.i.i.i = zext nneg i16 %.sroa.0.0.i.i.i to i48
  %i.ab = or disjoint i48 %.sroa.4.0.insert.shift.i.i.i, %.sroa.0.0.insert.ext.i.i.i
  %.sroa.0.0.insert.insert.i.i.i = or disjoint i48 %i.ab, %.sroa.3.0.insert.shift.i.i.i
  store i48 %.sroa.0.0.insert.insert.i.i.i, ptr %i.a, align 8, !alias.scope !1869
  %i.ac = trunc nuw i16 %.sroa.0.0.i.i.i to i1
  %i.ad = icmp eq i16 %.sroa.63.028.peel, %.sroa.3.0.i.i.i
  %or.cond.not = select i1 %i.ac, i1 %i.ad, i1 false
  br i1 %or.cond.not, label %.peel.newph, label %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterTNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16tEENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCscScJTt9VrQp_6fea_rs.exit.thread29, !llvm.loop !1864

_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterTNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16tEENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCscScJTt9VrQp_6fea_rs.exit.thread29: ; preds = %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionIBw_TNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16tEEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB26_8PeekableINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterBM_EE4peek0ECscScJTt9VrQp_6fea_rs.exit, %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionIBw_TNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16tEEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB26_8PeekableINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterBM_EE4peek0ECscScJTt9VrQp_6fea_rs.exit.peel, %bb.a, %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterTNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16tEENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCscScJTt9VrQp_6fea_rs.exit.peel
  %.sroa.6.0 = phi i16 [ undef, %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterTNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16tEENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCscScJTt9VrQp_6fea_rs.exit.peel ], [ undef, %bb.a ], [ %.sroa.7.027.peel, %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionIBw_TNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16tEEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB26_8PeekableINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterBM_EE4peek0ECscScJTt9VrQp_6fea_rs.exit.peel ], [ %.sroa.610.0.copyload, %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionIBw_TNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16tEEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB26_8PeekableINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterBM_EE4peek0ECscScJTt9VrQp_6fea_rs.exit ]
  %.sroa.4.0 = phi i16 [ undef, %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterTNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16tEENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCscScJTt9VrQp_6fea_rs.exit.peel ], [ undef, %bb.a ], [ %.sroa.63.028.peel, %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionIBw_TNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16tEEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB26_8PeekableINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterBM_EE4peek0ECscScJTt9VrQp_6fea_rs.exit.peel ], [ %.sroa.63.028.peel, %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionIBw_TNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16tEEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB26_8PeekableINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterBM_EE4peek0ECscScJTt9VrQp_6fea_rs.exit ]
  %.sroa.0.0 = phi i16 [ 0, %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterTNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16tEENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCscScJTt9VrQp_6fea_rs.exit.peel ], [ 0, %bb.a ], [ 1, %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionIBw_TNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16tEEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB26_8PeekableINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterBM_EE4peek0ECscScJTt9VrQp_6fea_rs.exit.peel ], [ 1, %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionIBw_TNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16tEEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB26_8PeekableINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterBM_EE4peek0ECscScJTt9VrQp_6fea_rs.exit ]
  %.sroa.6.0.insert.ext = zext i16 %.sroa.6.0 to i48
  %.sroa.6.0.insert.shift = shl nuw i48 %.sroa.6.0.insert.ext, 32
  %.sroa.4.0.insert.ext = zext i16 %.sroa.4.0 to i48
  %.sroa.4.0.insert.shift = shl nuw nsw i48 %.sroa.4.0.insert.ext, 16
  %.sroa.4.0.insert.insert = or disjoint i48 %.sroa.4.0.insert.shift, %.sroa.6.0.insert.shift
  %.sroa.0.0.insert.ext = zext nneg i16 %.sroa.0.0 to i48
  %.sroa.0.0.insert.insert = or disjoint i48 %.sroa.4.0.insert.insert, %.sroa.0.0.insert.ext
  ret i48 %.sroa.0.0.insert.insert
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree17dedup_sorted_iterINtB4_15DedupSortedIterNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups8LookupIdNtB1v_14PositionLookupINtNtNtBa_3vec9into_iter8IntoIterTB1t_B2j_EEENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextB1z_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([56 x i8]) align 8 captures(none) dereferenceable(56) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(88) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.8 = alloca [48 x i8], align 8            ; 5 uses
  %i.a = alloca [56 x i8], align 8                ; 8 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %.promoted = load i64, ptr %1, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !5 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 3 uses
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.promoted29 = load ptr, ptr %i.d, align 8
  br label %bb.b

bb.b:                                             ; preds = %.thread21, %bb.a
  %i.f = phi ptr [ %i.k, %.thread21 ], [ %.promoted29, %bb.a ] ; 5 uses
  %.sroa.0.0.copyload7.i28 = phi i64 [ %.sroa.0.0, %.thread21 ], [ %.promoted, %bb.a ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8)
  store i64 -2, ptr %1, align 8
  %.not = icmp eq i64 %.sroa.0.0.copyload7.i28, -2
  br i1 %.not, label %bb.c, label %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterTNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups8LookupIdNtBZ_14PositionLookupEENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextB13_.exit

bb.c:                                             ; preds = %bb.b
  call void @llvm.experimental.noalias.scope.decl(metadata !1883)
  %i.g = icmp eq ptr %i.f, %i.c
  br i1 %i.g, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 56 ; 2 uses
  store ptr %i.h, ptr %i.d, align 8, !alias.scope !1883, !noalias !1884
  %.sroa.0.0.copyload12 = load i64, ptr %i.f, align 8, !noalias !1883
  %.sroa.8.0..sroa_idx13 = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  br label %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterTNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups8LookupIdNtBZ_14PositionLookupEENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextB13_.exit

_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterTNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups8LookupIdNtBZ_14PositionLookupEENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextB13_.exit: ; preds = %bb.b, %bb.d
  %.sroa.8.0..sroa_idx13.sink = phi ptr [ %.sroa.8.0..sroa_idx13, %bb.d ], [ %.sroa.5.0..sroa_idx, %bb.b ]
  %i.i = phi ptr [ %i.h, %bb.d ], [ %i.f, %bb.b ] ; 4 uses
  %.sroa.0.0 = phi i64 [ %.sroa.0.0.copyload12, %bb.d ], [ %.sroa.0.0.copyload7.i28, %bb.b ] ; 5 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.8, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.8.0..sroa_idx13.sink, i64 48, i1 false)
  %.not7 = icmp eq i64 %.sroa.0.0, -1
  br i1 %.not7, label %.loopexit, label %bb.e

bb.e:                                             ; preds = %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterTNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups8LookupIdNtBZ_14PositionLookupEENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextB13_.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.4.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.8, i64 48, i1 false)
  store i64 %.sroa.0.0, ptr %i.a, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8)
  call void @llvm.experimental.noalias.scope.decl(metadata !1885)
  call void @llvm.experimental.noalias.scope.decl(metadata !1886)
  %i.j = icmp eq ptr %i.i, %i.c
  br i1 %i.j, label %.thread, label %bb.g

.thread:                                          ; preds = %bb.e
  store i64 -1, ptr %1, align 8, !alias.scope !1885
  br label %.loopexit23

.loopexit:                                        ; preds = %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterTNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups8LookupIdNtBZ_14PositionLookupEENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextB13_.exit, %bb.c
  store i64 -1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8)
  br label %bb.f

bb.f:                                             ; preds = %.thread19, %.loopexit23, %.loopexit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void

bb.g:                                             ; preds = %bb.e
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 56 ; 2 uses
  store ptr %i.k, ptr %i.d, align 8, !alias.scope !1886, !noalias !1887
  %.sroa.0.0.copyload7.i = load i64, ptr %i.i, align 8, !noalias !1888 ; 4 uses
  %.sroa.5.0..sroa_idx8.i = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store i64 %.sroa.0.0.copyload7.i, ptr %1, align 8, !alias.scope !1885
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.5.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.5.0..sroa_idx8.i, i64 48, i1 false)
  %i.l = icmp ne i64 %.sroa.0.0.copyload7.i, -2
  call void @llvm.assume(i1 %i.l)
  %.not8 = icmp eq i64 %.sroa.0.0.copyload7.i, -1
  br i1 %.not8, label %.loopexit23, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.m = icmp eq i64 %.sroa.0.0, %.sroa.0.0.copyload7.i
  br i1 %i.m, label %bb.i, label %.thread19

bb.i:                                             ; preds = %bb.h
  %.val11 = load i64, ptr %.sroa.5.0..sroa_idx, align 8
end_hunk_1
