Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rust-analyzer-rs/original/hir_expand-f280addaac0e5f6d.hir_expand.23a55d86e4a77d82-cgu.12?download=true
inline.NumInlined: 991
inline.NumDeleted: 464
loop-unroll.NumRuntimeUnrolled: 11
loop-unroll.NumUnrolled: 12
begin_hunk_0_@_RNvXs3_NtCsg1bCijyqAnf_6boxcar7bucketsINtB5_7BucketsINtNtNtB7_3vec3raw5EntryINtNtNtCsd9Lm8bEdjjY_5salsa8function6delete9SharedBoxINtNtB1h_4memo4MemoNtNvNvMsu_NtCs33K2ylI4knu_10hir_expand10proc_macroNtB2w_10ProcMacros13get_for_crate1__29get_for_crate__Configuration_EEEKj3a_ENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropB2y_:bb.a
  invoke void @_RNvXs6_NtNtCsg1bCijyqAnf_6boxcar3vec3rawINtB5_5EntryINtNtNtCsd9Lm8bEdjjY_5salsa8function6delete9SharedBoxINtNtBT_4memo4MemoNtNvNvMsu_NtCs33K2ylI4knu_10hir_expand10proc_macroNtB27_10ProcMacros13get_for_crate1__29get_for_crate__Configuration_EEENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropB29_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.m)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtCsg1bCijyqAnf_6boxcar3vec3raw5EntryINtNtNtCsd9Lm8bEdjjY_5salsa8function6delete9SharedBoxINtNtB1m_4memo4MemoNtNvNvMsu_NtCs33K2ylI4knu_10hir_expand10proc_macroNtB2B_10ProcMacros13get_for_crate1__29get_for_crate__Configuration_EEEEB2D_.exit7.i.i.i.i unwind label %bb.c, !noalias !807

bb.c:                                             ; preds = %.lr.ph
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #40, !noalias !807
  unreachable

.body.i.i.i:                                      ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtCsg1bCijyqAnf_6boxcar3vec3raw5EntryINtNtNtCsd9Lm8bEdjjY_5salsa8function6delete9SharedBoxINtNtB1m_4memo4MemoNtNvNvMsu_NtCs33K2ylI4knu_10hir_expand10proc_macroNtB2B_10ProcMacros13get_for_crate1__29get_for_crate__Configuration_EEEEB2D_.exit7.i.i.i.i, %bb.b
  %i.o = shl nuw nsw i64 512, %.sroa.0.07.i
  tail call void @_RNvCsiZ68L5R9VjM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.c, i64 noundef range(i64 1, 0) %i.o, i64 noundef 8) #31, !noalias !807
  resume { ptr, i32 } %i.k

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueSINtNtNtCsg1bCijyqAnf_6boxcar3vec3raw5EntryINtNtNtCsd9Lm8bEdjjY_5salsa8function6delete9SharedBoxINtNtB1n_4memo4MemoNtNvNvMsu_NtCs33K2ylI4knu_10hir_expand10proc_macroNtB2C_10ProcMacros13get_for_crate1__29get_for_crate__Configuration_EEEEB2E_.exit.i.i.i: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtCsg1bCijyqAnf_6boxcar3vec3raw5EntryINtNtNtCsd9Lm8bEdjjY_5salsa8function6delete9SharedBoxINtNtB1m_4memo4MemoNtNvNvMsu_NtCs33K2ylI4knu_10hir_expand10proc_macroNtB2B_10ProcMacros13get_for_crate1__29get_for_crate__Configuration_EEEEB2D_.exit.i.i.i.i
  %i.p = shl nuw nsw i64 512, %.sroa.0.07.i
  tail call void @_RNvCsiZ68L5R9VjM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.c, i64 noundef range(i64 1, 0) %i.p, i64 noundef 8) #31, !noalias !807
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxSINtNtNtCsg1bCijyqAnf_6boxcar3vec3raw5EntryINtNtNtCsd9Lm8bEdjjY_5salsa8function6delete9SharedBoxINtNtB2i_4memo4MemoNtNvNvMsu_NtCs33K2ylI4knu_10hir_expand10proc_macroNtB3x_10ProcMacros13get_for_crate1__29get_for_crate__Configuration_EEEEEEB3z_.exit.i

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxSINtNtNtCsg1bCijyqAnf_6boxcar3vec3raw5EntryINtNtNtCsd9Lm8bEdjjY_5salsa8function6delete9SharedBoxINtNtB2i_4memo4MemoNtNvNvMsu_NtCs33K2ylI4knu_10hir_expand10proc_macroNtB3x_10ProcMacros13get_for_crate1__29get_for_crate__Configuration_EEEEEEB3z_.exit.i: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueSINtNtNtCsg1bCijyqAnf_6boxcar3vec3raw5EntryINtNtNtCsd9Lm8bEdjjY_5salsa8function6delete9SharedBoxINtNtB1n_4memo4MemoNtNvNvMsu_NtCs33K2ylI4knu_10hir_expand10proc_macroNtB2C_10ProcMacros13get_for_crate1__29get_for_crate__Configuration_EEEEB2E_.exit.i.i.i, %.lr.ph.i
  %exitcond.i = icmp eq i64 %i.a, 58
  br i1 %exitcond.i, label %_RNvMs2_NtCsg1bCijyqAnf_6boxcar7bucketsINtB5_7BucketsINtNtNtB7_3vec3raw5EntryINtNtNtCsd9Lm8bEdjjY_5salsa8function6delete9SharedBoxINtNtB1h_4memo4MemoNtNvNvMsu_NtCs33K2ylI4knu_10hir_expand10proc_macroNtB2w_10ProcMacros13get_for_crate1__29get_for_crate__Configuration_EEEKj3a_E8truncateB2y_.exit, label %.lr.ph.i

_RNvMs2_NtCsg1bCijyqAnf_6boxcar7bucketsINtB5_7BucketsINtNtNtB7_3vec3raw5EntryINtNtNtCsd9Lm8bEdjjY_5salsa8function6delete9SharedBoxINtNtB1h_4memo4MemoNtNvNvMsu_NtCs33K2ylI4knu_10hir_expand10proc_macroNtB2w_10ProcMacros13get_for_crate1__29get_for_crate__Configuration_EEEKj3a_E8truncateB2y_.exit: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxSINtNtNtCsg1bCijyqAnf_6boxcar3vec3raw5EntryINtNtNtCsd9Lm8bEdjjY_5salsa8function6delete9SharedBoxINtNtB2i_4memo4MemoNtNvNvMsu_NtCs33K2ylI4knu_10hir_expand10proc_macroNtB3x_10ProcMacros13get_for_crate1__29get_for_crate__Configuration_EEEEEEB3z_.exit.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs3_NvNvMs4_NtCs33K2ylI4knu_10hir_expand11declarativeINtNtBf_5files13InFileWrapperNtBf_9HirFileIdINtNtCsdovh4xi6v3I_4span6ast_id9FileAstIdNtNtNtCsjJXvCMGntp8_6syntax3ast8node_ext5MacroEE19decl_macro_expander1__NtB5_34decl_macro_expander__InternedData_NtNtCsd9Lm8bEdjjY_5salsa12salsa_struct15SalsaStructInDb7entries(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([136 x i8]) align 8 captures(none) dereferenceable(136) %0, ptr noundef nonnull align 8 %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = alloca [16 x i8], align 8                ; 4 uses
  %i.c = alloca [16 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.c, ptr noundef nonnull align 8 dereferenceable(16) @0, i64 16, i1 false)
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !821, !noalias !822, !noundef !7
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %select.unfold.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.i = call noundef i64 @_RINvYINtNtCshzWfHUSfYae_4core4hash18BuildHasherDefaultNtNtCsd9Lm8bEdjjY_5salsa4hash12TypeIdHasherENtB6_11BuildHasher8hash_oneRNtNtB8_3any6TypeIdECs33K2ylI4knu_10hir_expand(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.h, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.c) ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !823)
  call void @llvm.experimental.noalias.scope.decl(metadata !824)
  %i.j = lshr i64 %i.i, 57
  %i.k = trunc nuw nsw i64 %i.j to i8
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.m = load i64, ptr %i.l, align 8, !alias.scope !825, !noalias !826, !noundef !7 ; 2 uses
  %i.n = load ptr, ptr %i.g, align 8, !alias.scope !825, !noalias !826, !nonnull !7, !noundef !7 ; 2 uses
  %i.o = insertelement <16 x i8> poison, i8 %i.k, i64 0
  %i.p = shufflevector <16 x i8> %i.o, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.c

bb.c:                                             ; preds = %bb.e, %bb.b
  %.sroa.011.0.i.i.i.i = phi i64 [ 0, %bb.b ], [ %i.ag, %bb.e ]
  %.pn.i.i.i = phi i64 [ %i.i, %bb.b ], [ %i.ah, %bb.e ]
  %.sroa.01.0.i.i.i.i = and i64 %.pn.i.i.i, %i.m  ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 %.sroa.01.0.i.i.i.i
  %.sroa.0.0.copyload.i24.i.i.i = load <16 x i8>, ptr %i.q, align 1, !noalias !827 ; 2 uses
  %i.r = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i.i, %i.p
  %i.s = bitcast <16 x i1> %i.r to i16            ; 2 uses
  %.not.i.not30.i.i.i = icmp eq i16 %i.s, 0
  br i1 %.not.i.not30.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.c, %bb.d
  %.sroa.05.0.i31.i.i.i = phi i16 [ %i.af, %bb.d ], [ %i.s, %bb.c ] ; 3 uses
  %i.t = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.05.0.i31.i.i.i, i1 true)
  %i.u = zext nneg i16 %i.t to i64
  %i.v = add i64 %.sroa.01.0.i.i.i.i, %i.u
  %i.w = and i64 %i.v, %i.m
  %i.x = sub nsw i64 0, %i.w
  %i.y = getelementptr inbounds [24 x i8], ptr %i.n, i64 %i.x
  %i.z = getelementptr inbounds i8, ptr %i.y, i64 -24
  %.val2.i.i.i.i = load i128, ptr %i.z, align 8, !noalias !828
  %i.aa = icmp eq i128 %.val2.i.i.i.i, -92761664731622008982382333540263365282
  br i1 %i.aa, label %_RINvMs2_NtCsd9Lm8bEdjjY_5salsa5zalsaNtB6_5Zalsa18lookup_jar_by_typeNtNvMs4_NtCs33K2ylI4knu_10hir_expand11declarativeINtNtB1d_5files13InFileWrapperNtB1d_9HirFileIdINtNtCsdovh4xi6v3I_4span6ast_id9FileAstIdNtNtNtCsjJXvCMGntp8_6syntax3ast8node_ext5MacroEE19decl_macro_expander20decl_macro_expander_EB1d_.exit, label %bb.d, !prof !10

._crit_edge.i.i.i:                                ; preds = %bb.d, %bb.c
  %i.ab = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i.i, splat (i8 -1)
  %i.ac = bitcast <16 x i1> %i.ab to i16
  %i.ad = icmp eq i16 %i.ac, 0
  br i1 %i.ad, label %bb.e, label %select.unfold.i, !prof !9

bb.d:                                             ; preds = %.lr.ph.i.i.i
  %i.ae = add i16 %.sroa.05.0.i31.i.i.i, -1
  %i.af = and i16 %i.ae, %.sroa.05.0.i31.i.i.i    ; 2 uses
  %.not.i.not.i.i.i = icmp eq i16 %i.af, 0
  br i1 %.not.i.not.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

bb.e:                                             ; preds = %._crit_edge.i.i.i
  %i.ag = add i64 %.sroa.011.0.i.i.i.i, 16        ; 2 uses
  %i.ah = add i64 %.sroa.01.0.i.i.i.i, %i.ag
  br label %bb.c

select.unfold.i:                                  ; preds = %._crit_edge.i.i.i, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr @1, ptr %i.b, align 8, !captures !26
  %i.ai = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 185, ptr %i.ai, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.b, ptr %i.a, align 8
  %.sroa.44.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs1i_NtCshzWfHUSfYae_4core3fmtReNtB6_7Display3fmtCs33K2ylI4knu_10hir_expand, ptr %.sroa.44.0..sroa_idx.i, align 8
  call void @_RNvNtCshzWfHUSfYae_4core9panicking9panic_fmt(ptr noundef nonnull @2, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4) #41
  unreachable

_RINvMs2_NtCsd9Lm8bEdjjY_5salsa5zalsaNtB6_5Zalsa18lookup_jar_by_typeNtNvMs4_NtCs33K2ylI4knu_10hir_expand11declarativeINtNtB1d_5files13InFileWrapperNtB1d_9HirFileIdINtNtCsdovh4xi6v3I_4span6ast_id9FileAstIdNtNtNtCsjJXvCMGntp8_6syntax3ast8node_ext5MacroEE19decl_macro_expander20decl_macro_expander_EB1d_.exit: ; preds = %.lr.ph.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.aj = call noundef nonnull align 8 ptr @_RINvMs_NtNtCsd9Lm8bEdjjY_5salsa16ingredient_cache3impINtB5_15IngredientCacheINtNtB9_8interned14IngredientImplNtNvNvMs4_NtCs33K2ylI4knu_10hir_expand11declarativeINtNtB1V_5files13InFileWrapperNtB1V_9HirFileIdINtNtCsdovh4xi6v3I_4span6ast_id9FileAstIdNtNtNtCsjJXvCMGntp8_6syntax3ast8node_ext5MacroEE19decl_macro_expander1__35decl_macro_expander__Configuration_EE13get_or_createNCNvMs_B1L_B1J_18intern_ingredient_0EB1V_(ptr noundef nonnull align 4 @_RNvNvNvMs4_NtCs33K2ylI4knu_10hir_expand11declarativeINtNtBb_5files13InFileWrapperNtBb_9HirFileIdINtNtCsdovh4xi6v3I_4span6ast_id9FileAstIdNtNtNtCsjJXvCMGntp8_6syntax3ast8node_ext5MacroEE19decl_macro_expander1__34decl_macro_expander__INTERN_CACHE_, ptr noundef nonnull align 8 %1, ptr noundef nonnull align 8 %1)
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 328
  call void @_RINvMs4_NtCsd9Lm8bEdjjY_5salsa5tableNtB6_5Table8slots_ofINtNtB8_8interned5ValueNtNvNvMs4_NtCs33K2ylI4knu_10hir_expand11declarativeINtNtB1r_5files13InFileWrapperNtB1r_9HirFileIdINtNtCsdovh4xi6v3I_4span6ast_id9FileAstIdNtNtNtCsjJXvCMGntp8_6syntax3ast8node_ext5MacroEE19decl_macro_expander1__35decl_macro_expander__Configuration_EEB1r_(ptr noalias nofree noundef nonnull sret([120 x i8]) align 8 captures(none) dereferenceable(120) %0, ptr noundef nonnull align 8 %i.ak)
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 120
  store ptr %i.aj, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 128
  store i8 1, ptr %.sroa.5.0..sroa_idx, align 8
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs6_NtNtCshzWfHUSfYae_4core3num5errorNtB5_15TryFromIntErrorNtNtB9_3fmt5Debug3fmt(ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(1) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.b = call noundef zeroext i1 @_RNvMsa_NtCshzWfHUSfYae_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @91, i64 noundef 15, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @90)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_RNvXs7_NtCsd9Lm8bEdjjY_5salsa8internedINtB5_14IngredientImplNtNvNvMs4_NtCs33K2ylI4knu_10hir_expand11declarativeINtNtB18_5files13InFileWrapperNtB18_9HirFileIdINtNtCsdovh4xi6v3I_4span6ast_id9FileAstIdNtNtNtCsjJXvCMGntp8_6syntax3ast8node_ext5MacroEE19decl_macro_expander1__35decl_macro_expander__Configuration_ENtNtB7_10ingredient10Ingredient10debug_nameB18_(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #4 {
bb.a:
  ret { ptr, i64 } { ptr @92, i64 64 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef zeroext i1 @_RNvXs7_NtCsd9Lm8bEdjjY_5salsa8internedINtB5_14IngredientImplNtNvNvMs4_NtCs33K2ylI4knu_10hir_expand11declarativeINtNtB18_5files13InFileWrapperNtB18_9HirFileIdINtNtCsdovh4xi6v3I_4span6ast_id9FileAstIdNtNtNtCsjJXvCMGntp8_6syntax3ast8node_ext5MacroEE19decl_macro_expander1__35decl_macro_expander__Configuration_ENtNtB7_10ingredient10Ingredient14is_persistableB18_(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #4 {
bb.a:
  ret i1 false
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define internal noundef i32 @_RNvXs7_NtCsd9Lm8bEdjjY_5salsa8internedINtB5_14IngredientImplNtNvNvMs4_NtCs33K2ylI4knu_10hir_expand11declarativeINtNtB18_5files13InFileWrapperNtB18_9HirFileIdINtNtCsdovh4xi6v3I_4span6ast_id9FileAstIdNtNtNtCsjJXvCMGntp8_6syntax3ast8node_ext5MacroEE19decl_macro_expander1__35decl_macro_expander__Configuration_ENtNtB7_10ingredient10Ingredient16ingredient_indexB18_(ptr nofree noundef nonnull readonly align 8 captures(none) %0) unnamed_addr #13 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.b = load i32, ptr %i.a, align 8, !noundef !7
  ret i32 %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef nonnull align 8 ptr @_RNvXs7_NtCsd9Lm8bEdjjY_5salsa8internedINtB5_14IngredientImplNtNvNvMs4_NtCs33K2ylI4knu_10hir_expand11declarativeINtNtB18_5files13InFileWrapperNtB18_9HirFileIdINtNtCsdovh4xi6v3I_4span6ast_id9FileAstIdNtNtNtCsjJXvCMGntp8_6syntax3ast8node_ext5MacroEE19decl_macro_expander1__35decl_macro_expander__Configuration_ENtNtB7_10ingredient10Ingredient16memo_table_typesB18_(ptr nofree noundef nonnull readnone align 8 captures(ret: address, provenance) %0) unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  ret ptr %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef nonnull align 8 ptr @_RNvXs7_NtCsd9Lm8bEdjjY_5salsa8internedINtB5_14IngredientImplNtNvNvMs4_NtCs33K2ylI4knu_10hir_expand11declarativeINtNtB18_5files13InFileWrapperNtB18_9HirFileIdINtNtCsdovh4xi6v3I_4span6ast_id9FileAstIdNtNtNtCsjJXvCMGntp8_6syntax3ast8node_ext5MacroEE19decl_macro_expander1__35decl_macro_expander__Configuration_ENtNtB7_10ingredient10Ingredient20memo_table_types_mutB18_(ptr noalias nofree noundef readnone align 8 captures(ret: address, provenance) dereferenceable(72) %0) unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  ret ptr %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef zeroext i1 @_RNvXs7_NtCsd9Lm8bEdjjY_5salsa8internedINtB5_14IngredientImplNtNvNvMs4_NtCs33K2ylI4knu_10hir_expand11declarativeINtNtB18_5files13InFileWrapperNtB18_9HirFileIdINtNtCsdovh4xi6v3I_4span6ast_id9FileAstIdNtNtNtCsjJXvCMGntp8_6syntax3ast8node_ext5MacroEE19decl_macro_expander1__35decl_macro_expander__Configuration_ENtNtB7_10ingredient10Ingredient8jar_kindB18_(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #4 {
bb.a:
  ret i1 false
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef nonnull align 8 ptr @_RNvXs7_NtCsd9Lm8bEdjjY_5salsa8internedINtB5_14IngredientImplNtNvNvMs4_NtCs33K2ylI4knu_10hir_expand11declarativeINtNtB18_5files13InFileWrapperNtB18_9HirFileIdINtNtCsdovh4xi6v3I_4span6ast_id9FileAstIdNtNtNtCsjJXvCMGntp8_6syntax3ast8node_ext5MacroEE19decl_macro_expander1__35decl_macro_expander__Configuration_ENtNtB7_10ingredient10Ingredient8locationB18_(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #4 {
bb.a:
  ret ptr @94
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RNvXs8_NtCsqiF3OZxLbD_3mbe6parserNtB5_2OpNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %1) unnamed_addr #0 {
bb.a:
  %i.a = load i8, ptr %0, align 8, !range !19, !noundef !7 ; 2 uses
  %i.b = load i8, ptr %1, align 8, !range !19, !noundef !7
  %i.c = icmp eq i8 %i.a, %i.b
  br i1 %i.c, label %bb.b, label %_RNvXs1C_Cs4dcH4YgJDq_2ttNtB6_7LiteralNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit

bb.b:                                             ; preds = %bb.a
  switch i8 %i.a, label %default.unreachable48 [
    i8 0, label %bb.c
    i8 1, label %bb.d
    i8 2, label %bb.e
    i8 3, label %bb.f
    i8 4, label %bb.g
    i8 5, label %bb.h
    i8 6, label %bb.i
    i8 7, label %bb.k
    i8 8, label %bb.m
    i8 9, label %bb.y
    i8 10, label %bb.z
  ]

_RNvXs1C_Cs4dcH4YgJDq_2ttNtB6_7LiteralNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit: ; preds = %.lr.ph, %.lr.ph33, %_RNvYNtNtCsqiF3OZxLbD_3mbe6parser21ConcatMetaVarExprElemNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neCs33K2ylI4knu_10hir_expand.exit.i, %.lr.ph.i, %bb.ax, %bb.bd, %bb.ba, %bb.az, %bb.bb, %bb.ay, %bb.bc, %bb.bg, %bb.bf, %bb.bh, %bb.be, %bb.bi, %bb.bk, %bb.bn, %bb.bm, %bb.bo, %bb.bl, %bb.bj, %bb.bp, %bb.bq, %.split.i, %.split55.i, %.split56.i, %.split57.i, %bb.bw, %7, %bb.k, %bb.i, %bb.ci, %bb.ch, %bb.cg, %bb.cf, %bb.ce, %bb.cd, %bb.cc, %bb.cb, %bb.ca, %bb.bz, %_RNvXNtNtCshzWfHUSfYae_4core5slice3cmpSNtNtCsqiF3OZxLbD_3mbe6parser2OpNtNtB6_3cmp9PartialEq2eqCs33K2ylI4knu_10hir_expand.exit17, %bb.af, %bb.ae, %bb.ad, %bb.ac, %bb.ab, %bb.aa, %bb.z, %bb.x, %bb.w, %bb.v, %bb.u, %bb.t, %bb.s, %bb.r, %bb.q, %bb.p, %bb.o, %bb.n, %bb.m, %bb.bx, %_RNvXNtNtCshzWfHUSfYae_4core5slice3cmpSNtNtCsqiF3OZxLbD_3mbe6parser2OpNtNtB6_3cmp9PartialEq2eqCs33K2ylI4knu_10hir_expand.exit, %bb.bs, %bb.bu, %_RNvXs2_NtNtCshzWfHUSfYae_4core5slice3cmpNtNtCsqiF3OZxLbD_3mbe6parser21ConcatMetaVarExprElemINtB5_14SlicePartialEqBC_E17equal_same_lengthCs33K2ylI4knu_10hir_expand.exit, %bb.bt, %bb.h, %bb.g, %bb.aq, %bb.as, %bb.ap, %bb.ar, %bb.d, %bb.al, %bb.an, %bb.ak, %bb.am, %bb.ao, %bb.aj, %bb.ah, %bb.ai, %bb.c, %bb.a, %bb.by, %bb.bv, %bb.au, %bb.at, %bb.y, %bb.f, %bb.e
  %.sroa.0.0 = phi i1 [ false, %bb.a ], [ %i.gq, %bb.at ], [ false, %bb.d ], [ false, %bb.al ], [ %i.r, %bb.e ], [ %i.w, %bb.f ], [ %i.gv, %bb.au ], [ false, %bb.aq ], [ %i.mo, %bb.bv ], [ false, %bb.k ], [ false, %bb.g ], [ %.mux, %bb.bw ], [ %i.nc, %bb.by ], [ false, %bb.cc ], [ false, %_RNvYNtNtCsqiF3OZxLbD_3mbe6parser21ConcatMetaVarExprElemNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neCs33K2ylI4knu_10hir_expand.exit.i ], [ false, %bb.bs ], [ false, %7 ], [ true, %bb.bx ], [ false, %.lr.ph33 ], [ %i.dc, %bb.y ], [ true, %bb.u ], [ %i.fr, %bb.ao ], [ false, %bb.c ], [ false, %bb.aj ], [ false, %bb.ah ], [ false, %bb.ai ], [ false, %bb.am ], [ false, %bb.ak ], [ false, %bb.an ], [ false, %bb.ar ], [ false, %bb.ap ], [ false, %bb.as ], [ false, %bb.h ], [ false, %bb.bt ], [ false, %_RNvXs2_NtNtCshzWfHUSfYae_4core5slice3cmpNtNtCsqiF3OZxLbD_3mbe6parser21ConcatMetaVarExprElemINtB5_14SlicePartialEqBC_E17equal_same_lengthCs33K2ylI4knu_10hir_expand.exit ], [ false, %bb.bu ], [ false, %_RNvXNtNtCshzWfHUSfYae_4core5slice3cmpSNtNtCsqiF3OZxLbD_3mbe6parser2OpNtNtB6_3cmp9PartialEq2eqCs33K2ylI4knu_10hir_expand.exit ], [ false, %bb.n ], [ false, %bb.q ], [ false, %bb.p ], [ false, %bb.r ], [ false, %bb.o ], [ false, %bb.m ], [ false, %bb.s ], [ false, %bb.t ], [ %i.cx, %bb.x ], [ %i.cv, %bb.v ], [ %i.cw, %bb.w ], [ %i.el, %bb.af ], [ false, %bb.ac ], [ false, %bb.ab ], [ false, %bb.ad ], [ false, %bb.aa ], [ false, %bb.ae ], [ false, %bb.z ], [ %i.pf, %bb.ci ], [ false, %bb.cf ], [ false, %bb.ce ], [ false, %bb.cg ], [ false, %bb.cd ], [ false, %bb.ca ], [ false, %bb.bz ], [ false, %bb.cb ], [ false, %_RNvXNtNtCshzWfHUSfYae_4core5slice3cmpSNtNtCsqiF3OZxLbD_3mbe6parser2OpNtNtB6_3cmp9PartialEq2eqCs33K2ylI4knu_10hir_expand.exit17 ], [ false, %bb.ch ], [ false, %bb.i ], [ false, %.split57.i ], [ false, %.split56.i ], [ false, %.split55.i ], [ false, %.split.i ], [ false, %bb.bq ], [ false, %bb.bp ], [ false, %bb.bj ], [ false, %bb.bl ], [ false, %bb.bo ], [ false, %bb.bm ], [ false, %bb.bn ], [ false, %bb.bk ], [ false, %bb.bi ], [ false, %bb.be ], [ false, %bb.bh ], [ false, %bb.bf ], [ false, %bb.bg ], [ false, %bb.bc ], [ false, %bb.ay ], [ false, %bb.bb ], [ false, %bb.az ], [ false, %bb.ba ], [ false, %bb.bd ], [ false, %bb.ax ], [ false, %.lr.ph.i ], [ false, %.lr.ph ]
  ret i1 %.sroa.0.0

default.unreachable48:                            ; preds = %bb.aw, %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !7, !noundef !7
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !nonnull !7, !noundef !7
  %i.h = icmp eq ptr %i.e, %i.g
  br i1 %i.h, label %bb.ag, label %_RNvXs1C_Cs4dcH4YgJDq_2ttNtB6_7LiteralNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit

bb.d:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.j = load ptr, ptr %i.i, align 8, !nonnull !7, !noundef !7
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.l = load ptr, ptr %i.k, align 8, !nonnull !7, !noundef !7
  %i.m = icmp eq ptr %i.j, %i.l
  br i1 %i.m, label %bb.ap, label %_RNvXs1C_Cs4dcH4YgJDq_2ttNtB6_7LiteralNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit

bb.e:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.o = load i64, ptr %i.n, align 8, !noundef !7
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.q = load i64, ptr %i.p, align 8, !noundef !7
  %i.r = icmp eq i64 %i.o, %i.q
  br label %_RNvXs1C_Cs4dcH4YgJDq_2ttNtB6_7LiteralNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit

bb.f:                                             ; preds = %bb.b
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.t = load i64, ptr %i.s, align 8, !noundef !7
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.v = load i64, ptr %i.u, align 8, !noundef !7
  %i.w = icmp eq i64 %i.t, %i.v
  br label %_RNvXs1C_Cs4dcH4YgJDq_2ttNtB6_7LiteralNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit

bb.g:                                             ; preds = %bb.b
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.y = load ptr, ptr %i.x, align 8, !nonnull !7, !noundef !7
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.aa = load ptr, ptr %i.z, align 8, !nonnull !7, !noundef !7
  %i.ab = icmp eq ptr %i.y, %i.aa
  br i1 %i.ab, label %bb.au, label %_RNvXs1C_Cs4dcH4YgJDq_2ttNtB6_7LiteralNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit

bb.h:                                             ; preds = %bb.b
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ad = load i64, ptr %i.ac, align 8, !noundef !7 ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.af = load i64, ptr %i.ae, align 8, !noundef !7
  %i.ag = icmp eq i64 %i.ad, %i.af
  br i1 %i.ag, label %bb.av, label %_RNvXs1C_Cs4dcH4YgJDq_2ttNtB6_7LiteralNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit

bb.i:                                             ; preds = %bb.b
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !860)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !861)
  %i.aj = load ptr, ptr %i.ah, align 8, !alias.scope !860, !noalias !861, !nonnull !7, !noundef !7
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.al = load i64, ptr %i.ak, align 8, !alias.scope !860, !noalias !861, !noundef !7 ; 3 uses
  %i.am = load ptr, ptr %i.ai, align 8, !alias.scope !861, !noalias !860, !nonnull !7, !noundef !7
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ao = load i64, ptr %i.an, align 8, !alias.scope !861, !noalias !860, !noundef !7
  %i.ap = icmp eq i64 %i.al, %i.ao
  br i1 %i.ap, label %.preheader, label %_RNvXs1C_Cs4dcH4YgJDq_2ttNtB6_7LiteralNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit

.preheader:                                       ; preds = %bb.i
  %.not2431.not = icmp eq i64 %i.al, 0
  br i1 %.not2431.not, label %_RNvXNtNtCshzWfHUSfYae_4core5slice3cmpSNtNtCsqiF3OZxLbD_3mbe6parser2OpNtNtB6_3cmp9PartialEq2eqCs33K2ylI4knu_10hir_expand.exit, label %.lr.ph33

bb.j:                                             ; preds = %.lr.ph33
  %i.aq = add nuw i64 %.sroa.01.0.i.i32, 1        ; 2 uses
  %exitcond36.not = icmp eq i64 %i.aq, %i.al
  br i1 %exitcond36.not, label %_RNvXNtNtCshzWfHUSfYae_4core5slice3cmpSNtNtCsqiF3OZxLbD_3mbe6parser2OpNtNtB6_3cmp9PartialEq2eqCs33K2ylI4knu_10hir_expand.exit, label %.lr.ph33

.lr.ph33:                                         ; preds = %.preheader, %bb.j
  %.sroa.01.0.i.i32 = phi i64 [ %i.aq, %bb.j ], [ 0, %.preheader ] ; 3 uses
  %i.ar = getelementptr inbounds nuw [64 x i8], ptr %i.aj, i64 %.sroa.01.0.i.i32
  %i.as = getelementptr inbounds nuw [64 x i8], ptr %i.am, i64 %.sroa.01.0.i.i32
  %i.at = tail call fastcc noundef zeroext i1 @_RNvXs8_NtCsqiF3OZxLbD_3mbe6parserNtB5_2OpNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.ar, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.as) #42, !noalias !862, !inline_history !832
  br i1 %i.at, label %bb.j, label %_RNvXs1C_Cs4dcH4YgJDq_2ttNtB6_7LiteralNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit

bb.k:                                             ; preds = %bb.b
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 48
  tail call void @llvm.experimental.noalias.scope.decl(metadata !863)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !864)
  %i.aw = load ptr, ptr %i.au, align 8, !alias.scope !863, !noalias !864, !nonnull !7, !noundef !7
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ay = load i64, ptr %i.ax, align 8, !alias.scope !863, !noalias !864, !noundef !7 ; 3 uses
  %i.az = load ptr, ptr %i.av, align 8, !alias.scope !864, !noalias !863, !nonnull !7, !noundef !7
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.bb = load i64, ptr %i.ba, align 8, !alias.scope !864, !noalias !863, !noundef !7
  %i.bc = icmp eq i64 %i.ay, %i.bb
  br i1 %i.bc, label %.preheader27, label %_RNvXs1C_Cs4dcH4YgJDq_2ttNtB6_7LiteralNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit

.preheader27:                                     ; preds = %bb.k
  %.not2329.not = icmp eq i64 %i.ay, 0
  br i1 %.not2329.not, label %_RNvXNtNtCshzWfHUSfYae_4core5slice3cmpSNtNtCsqiF3OZxLbD_3mbe6parser2OpNtNtB6_3cmp9PartialEq2eqCs33K2ylI4knu_10hir_expand.exit17, label %.lr.ph

bb.l:                                             ; preds = %.lr.ph
  %i.bd = add nuw i64 %.sroa.01.0.i.i1530, 1      ; 2 uses
  %exitcond.not = icmp eq i64 %i.bd, %i.ay
  br i1 %exitcond.not, label %_RNvXNtNtCshzWfHUSfYae_4core5slice3cmpSNtNtCsqiF3OZxLbD_3mbe6parser2OpNtNtB6_3cmp9PartialEq2eqCs33K2ylI4knu_10hir_expand.exit17, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader27, %bb.l
  %.sroa.01.0.i.i1530 = phi i64 [ %i.bd, %bb.l ], [ 0, %.preheader27 ] ; 3 uses
  %i.be = getelementptr inbounds nuw [64 x i8], ptr %i.aw, i64 %.sroa.01.0.i.i1530
  %i.bf = getelementptr inbounds nuw [64 x i8], ptr %i.az, i64 %.sroa.01.0.i.i1530
  %i.bg = tail call fastcc noundef zeroext i1 @_RNvXs8_NtCsqiF3OZxLbD_3mbe6parserNtB5_2OpNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.be, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.bf) #42, !noalias !865, !inline_history !832
  br i1 %i.bg, label %bb.l, label %_RNvXs1C_Cs4dcH4YgJDq_2ttNtB6_7LiteralNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit

bb.m:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !866)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !867)
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.bi = load i8, ptr %i.bh, align 4, !alias.scope !866, !noalias !867, !noundef !7
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.bk = load i8, ptr %i.bj, align 4, !alias.scope !867, !noalias !866, !noundef !7
  %i.bl = icmp eq i8 %i.bi, %i.bk
  br i1 %i.bl, label %bb.n, label %_RNvXs1C_Cs4dcH4YgJDq_2ttNtB6_7LiteralNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit

bb.n:                                             ; preds = %bb.m
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bo = load ptr, ptr %i.bn, align 8, !alias.scope !866, !noalias !867, !nonnull !7, !noundef !7
  %i.bp = load ptr, ptr %i.bm, align 8, !alias.scope !867, !noalias !866, !nonnull !7, !noundef !7
  %i.bq = icmp eq ptr %i.bo, %i.bp
  br i1 %i.bq, label %bb.o, label %_RNvXs1C_Cs4dcH4YgJDq_2ttNtB6_7LiteralNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit

bb.o:                                             ; preds = %bb.n
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bs = load i32, ptr %i.br, align 8, !alias.scope !866, !noalias !867, !noundef !7
  %i.bt = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bu = load i32, ptr %i.bt, align 8, !alias.scope !867, !noalias !866, !noundef !7
  %i.bv = icmp eq i32 %i.bs, %i.bu
  br i1 %i.bv, label %bb.p, label %_RNvXs1C_Cs4dcH4YgJDq_2ttNtB6_7LiteralNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit

bb.p:                                             ; preds = %bb.o
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.bx = load i32, ptr %i.bw, align 4, !alias.scope !866, !noalias !867, !noundef !7
  %i.by = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.bz = load i32, ptr %i.by, align 4, !alias.scope !867, !noalias !866, !noundef !7
  %i.ca = icmp eq i32 %i.bx, %i.bz
  br i1 %i.ca, label %bb.q, label %_RNvXs1C_Cs4dcH4YgJDq_2ttNtB6_7LiteralNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit

bb.q:                                             ; preds = %bb.p
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.cc = load i32, ptr %i.cb, align 8, !alias.scope !866, !noalias !867, !noundef !7
  %i.cd = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ce = load i32, ptr %i.cd, align 8, !alias.scope !867, !noalias !866, !noundef !7
  %i.cf = icmp eq i32 %i.cc, %i.ce
  br i1 %i.cf, label %bb.r, label %_RNvXs1C_Cs4dcH4YgJDq_2ttNtB6_7LiteralNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit

bb.r:                                             ; preds = %bb.q
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.ch = load i32, ptr %i.cg, align 4, !alias.scope !866, !noalias !867, !noundef !7
  %i.ci = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.cj = load i32, ptr %i.ci, align 4, !alias.scope !867, !noalias !866, !noundef !7
  %i.ck = icmp eq i32 %i.ch, %i.cj
  br i1 %i.ck, label %bb.s, label %_RNvXs1C_Cs4dcH4YgJDq_2ttNtB6_7LiteralNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit

bb.s:                                             ; preds = %bb.r
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.cm = load i32, ptr %i.cl, align 8, !alias.scope !866, !noalias !867, !noundef !7
  %i.cn = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.co = load i32, ptr %i.cn, align 8, !alias.scope !867, !noalias !866, !noundef !7
  %i.cp = icmp eq i32 %i.cm, %i.co
  br i1 %i.cp, label %bb.t, label %_RNvXs1C_Cs4dcH4YgJDq_2ttNtB6_7LiteralNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit

bb.t:                                             ; preds = %bb.s
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 37
  %i.cr = getelementptr inbounds nuw i8, ptr %1, i64 37
  %.val.i = load i8, ptr %i.cq, align 1, !range !19, !alias.scope !866, !noalias !867, !noundef !7 ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 38
  %.val1.i = load i8, ptr %i.cs, align 2, !alias.scope !866, !noalias !867 ; 3 uses
  %.val2.i = load i8, ptr %i.cr, align 1, !range !19, !alias.scope !867, !noalias !866, !noundef !7
  %i.ct = getelementptr inbounds nuw i8, ptr %1, i64 38
  %.val3.i = load i8, ptr %i.ct, align 2, !alias.scope !867, !noalias !866 ; 3 uses
  %i.cu = icmp eq i8 %.val.i, %.val2.i
  br i1 %i.cu, label %bb.u, label %_RNvXs1C_Cs4dcH4YgJDq_2ttNtB6_7LiteralNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit

bb.u:                                             ; preds = %bb.t
  switch i8 %.val.i, label %_RNvXs1C_Cs4dcH4YgJDq_2ttNtB6_7LiteralNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit [
    i8 5, label %bb.v
    i8 7, label %bb.w
    i8 9, label %bb.x
  ]

bb.v:                                             ; preds = %bb.u
  %i.cv = icmp eq i8 %.val1.i, %.val3.i
  br label %_RNvXs1C_Cs4dcH4YgJDq_2ttNtB6_7LiteralNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit

bb.w:                                             ; preds = %bb.u
  %i.cw = icmp eq i8 %.val1.i, %.val3.i
  br label %_RNvXs1C_Cs4dcH4YgJDq_2ttNtB6_7LiteralNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit

bb.x:                                             ; preds = %bb.u
  %i.cx = icmp eq i8 %.val1.i, %.val3.i
  br label %_RNvXs1C_Cs4dcH4YgJDq_2ttNtB6_7LiteralNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit

bb.y:                                             ; preds = %bb.b
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.cz = load ptr, ptr %i.cy, align 8, !nonnull !7, !noundef !7
  %i.da = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.db = load ptr, ptr %i.da, align 8, !nonnull !7, !noundef !7
  %i.dc = tail call noundef zeroext i1 @_RNvXsr_NtCs474hSbRjvii_8arrayvec8arrayvecINtB5_8ArrayVecNtCs4dcH4YgJDq_2tt5PunctKj3_ENtNtCshzWfHUSfYae_4core3cmp9PartialEq2eqCs33K2ylI4knu_10hir_expand(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(88) %i.cz, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(88) %i.db)
  br label %_RNvXs1C_Cs4dcH4YgJDq_2ttNtB6_7LiteralNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit

bb.z:                                             ; preds = %bb.b
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.de = getelementptr inbounds nuw i8, ptr %1, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !868)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !869)
  %i.df = load ptr, ptr %i.dd, align 8, !alias.scope !868, !noalias !869, !nonnull !7, !noundef !7
  %i.dg = load ptr, ptr %i.de, align 8, !alias.scope !869, !noalias !868, !nonnull !7, !noundef !7
  %i.dh = icmp eq ptr %i.df, %i.dg
  br i1 %i.dh, label %bb.aa, label %_RNvXs1C_Cs4dcH4YgJDq_2ttNtB6_7LiteralNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit

bb.aa:                                            ; preds = %bb.z
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.dj = load i32, ptr %i.di, align 8, !alias.scope !868, !noalias !869, !noundef !7
  %i.dk = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.dl = load i32, ptr %i.dk, align 8, !alias.scope !869, !noalias !868, !noundef !7
  %i.dm = icmp eq i32 %i.dj, %i.dl
  br i1 %i.dm, label %bb.ab, label %_RNvXs1C_Cs4dcH4YgJDq_2ttNtB6_7LiteralNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit

bb.ab:                                            ; preds = %bb.aa
  %i.dn = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.do = load i32, ptr %i.dn, align 4, !alias.scope !868, !noalias !869, !noundef !7
  %i.dp = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.dq = load i32, ptr %i.dp, align 4, !alias.scope !869, !noalias !868, !noundef !7
  %i.dr = icmp eq i32 %i.do, %i.dq
  br i1 %i.dr, label %bb.ac, label %_RNvXs1C_Cs4dcH4YgJDq_2ttNtB6_7LiteralNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit

bb.ac:                                            ; preds = %bb.ab
  %i.ds = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.dt = load i32, ptr %i.ds, align 8, !alias.scope !868, !noalias !869, !noundef !7
  %i.du = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.dv = load i32, ptr %i.du, align 8, !alias.scope !869, !noalias !868, !noundef !7
  %i.dw = icmp eq i32 %i.dt, %i.dv
  br i1 %i.dw, label %bb.ad, label %_RNvXs1C_Cs4dcH4YgJDq_2ttNtB6_7LiteralNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit

bb.ad:                                            ; preds = %bb.ac
  %i.dx = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.dy = load i32, ptr %i.dx, align 4, !alias.scope !868, !noalias !869, !noundef !7
  %i.dz = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.ea = load i32, ptr %i.dz, align 4, !alias.scope !869, !noalias !868, !noundef !7
  %i.eb = icmp eq i32 %i.dy, %i.ea
  br i1 %i.eb, label %bb.ae, label %_RNvXs1C_Cs4dcH4YgJDq_2ttNtB6_7LiteralNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit

bb.ae:                                            ; preds = %bb.ad
  %i.ec = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ed = load i32, ptr %i.ec, align 8, !alias.scope !868, !noalias !869, !noundef !7
  %i.ee = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ef = load i32, ptr %i.ee, align 8, !alias.scope !869, !noalias !868, !noundef !7
  %i.eg = icmp eq i32 %i.ed, %i.ef
  br i1 %i.eg, label %bb.af, label %_RNvXs1C_Cs4dcH4YgJDq_2ttNtB6_7LiteralNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit

bb.af:                                            ; preds = %bb.ae
  %i.eh = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.ei = load i8, ptr %i.eh, align 4, !range !12, !alias.scope !868, !noalias !869, !noundef !7
  %i.ej = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.ek = load i8, ptr %i.ej, align 4, !range !12, !alias.scope !869, !noalias !868, !noundef !7
  %i.el = icmp eq i8 %i.ei, %i.ek
  br label %_RNvXs1C_Cs4dcH4YgJDq_2ttNtB6_7LiteralNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit

bb.ag:                                            ; preds = %bb.c
  %i.em = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.en = load i8, ptr %i.em, align 1, !range !11, !noundef !7 ; 5 uses
  %.not8 = icmp eq i8 %i.en, -1
  %i.eo = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.ep = load i8, ptr %i.eo, align 1, !range !11, !noundef !7 ; 5 uses
  %i.eq = icmp eq i8 %i.ep, -1                    ; 2 uses
  br i1 %.not8, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  br i1 %i.eq, label %_RNvXs1C_Cs4dcH4YgJDq_2ttNtB6_7LiteralNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit, label %bb.aj

bb.ai:                                            ; preds = %bb.ag
  br i1 %i.eq, label %bb.ak, label %_RNvXs1C_Cs4dcH4YgJDq_2ttNtB6_7LiteralNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit

bb.aj:                                            ; preds = %bb.ah
  %i.er = icmp ne i8 %i.en, 11
  tail call void @llvm.assume(i1 %i.er)
  %2 = add nsw i8 %i.en, -2
  %i.es = icmp samesign ugt i8 %i.en, 1
  %narrow = select i1 %i.es, i8 %2, i8 9          ; 2 uses
  %3 = icmp ne i8 %i.ep, 11
  tail call void @llvm.assume(i1 %3)
  %4 = add nsw i8 %i.ep, -2
  %5 = icmp samesign ugt i8 %i.ep, 1
  %narrow10 = select i1 %5, i8 %4, i8 9
  %6 = icmp eq i8 %narrow, %narrow10
  br i1 %6, label %7, label %_RNvXs1C_Cs4dcH4YgJDq_2ttNtB6_7LiteralNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit

7:                                                ; preds = %bb.aj
  %8 = icmp eq i8 %narrow, 9
  %9 = xor i8 %i.ep, %i.en
  %10 = trunc i8 %9 to i1
  %or.cond.not = and i1 %8, %10
  br i1 %or.cond.not, label %_RNvXs1C_Cs4dcH4YgJDq_2ttNtB6_7LiteralNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit, label %bb.ak

bb.ak:                                            ; preds = %7, %bb.ai
  %i.et = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.eu = load i32, ptr %i.et, align 4, !noundef !7
  %i.ev = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.ew = load i32, ptr %i.ev, align 4, !noundef !7
  %i.ex = icmp eq i32 %i.eu, %i.ew
  br i1 %i.ex, label %bb.al, label %_RNvXs1C_Cs4dcH4YgJDq_2ttNtB6_7LiteralNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit

bb.al:                                            ; preds = %bb.ak
  %i.ey = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ez = load i32, ptr %i.ey, align 8, !noundef !7
  %i.fa = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.fb = load i32, ptr %i.fa, align 8, !noundef !7
  %i.fc = icmp eq i32 %i.ez, %i.fb
  br i1 %i.fc, label %bb.am, label %_RNvXs1C_Cs4dcH4YgJDq_2ttNtB6_7LiteralNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit

bb.am:                                            ; preds = %bb.al
  %i.fd = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.fe = load i32, ptr %i.fd, align 4, !noundef !7
  %i.ff = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.fg = load i32, ptr %i.ff, align 4, !noundef !7
  %i.fh = icmp eq i32 %i.fe, %i.fg
  br i1 %i.fh, label %bb.an, label %_RNvXs1C_Cs4dcH4YgJDq_2ttNtB6_7LiteralNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit

bb.an:                                            ; preds = %bb.am
  %i.fi = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.fj = load i32, ptr %i.fi, align 8, !noundef !7
  %i.fk = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.fl = load i32, ptr %i.fk, align 8, !noundef !7
  %i.fm = icmp eq i32 %i.fj, %i.fl
  br i1 %i.fm, label %bb.ao, label %_RNvXs1C_Cs4dcH4YgJDq_2ttNtB6_7LiteralNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit

bb.ao:                                            ; preds = %bb.an
  %i.fn = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.fo = load i32, ptr %i.fn, align 4, !noundef !7
  %i.fp = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.fq = load i32, ptr %i.fp, align 4, !noundef !7
  %i.fr = icmp eq i32 %i.fo, %i.fq
  br label %_RNvXs1C_Cs4dcH4YgJDq_2ttNtB6_7LiteralNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit

bb.ap:                                            ; preds = %bb.d
  %i.fs = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.ft = load i32, ptr %i.fs, align 4, !noundef !7
  %i.fu = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.fv = load i32, ptr %i.fu, align 4, !noundef !7
  %i.fw = icmp eq i32 %i.ft, %i.fv
  br i1 %i.fw, label %bb.aq, label %_RNvXs1C_Cs4dcH4YgJDq_2ttNtB6_7LiteralNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit

bb.aq:                                            ; preds = %bb.ap
  %i.fx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.fy = load i32, ptr %i.fx, align 8, !noundef !7
  %i.fz = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ga = load i32, ptr %i.fz, align 8, !noundef !7
  %i.gb = icmp eq i32 %i.fy, %i.ga
  br i1 %i.gb, label %bb.ar, label %_RNvXs1C_Cs4dcH4YgJDq_2ttNtB6_7LiteralNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit

bb.ar:                                            ; preds = %bb.aq
  %i.gc = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.gd = load i32, ptr %i.gc, align 4, !noundef !7
  %i.ge = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.gf = load i32, ptr %i.ge, align 4, !noundef !7
  %i.gg = icmp eq i32 %i.gd, %i.gf
  br i1 %i.gg, label %bb.as, label %_RNvXs1C_Cs4dcH4YgJDq_2ttNtB6_7LiteralNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit

bb.as:                                            ; preds = %bb.ar
  %i.gh = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.gi = load i32, ptr %i.gh, align 8, !noundef !7
  %i.gj = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.gk = load i32, ptr %i.gj, align 8, !noundef !7
  %i.gl = icmp eq i32 %i.gi, %i.gk
  br i1 %i.gl, label %bb.at, label %_RNvXs1C_Cs4dcH4YgJDq_2ttNtB6_7LiteralNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit

bb.at:                                            ; preds = %bb.as
  %i.gm = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.gn = load i32, ptr %i.gm, align 4, !noundef !7
  %i.go = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.gp = load i32, ptr %i.go, align 4, !noundef !7
  %i.gq = icmp eq i32 %i.gn, %i.gp
  br label %_RNvXs1C_Cs4dcH4YgJDq_2ttNtB6_7LiteralNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit

bb.au:                                            ; preds = %bb.g
  %i.gr = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.gs = load i64, ptr %i.gr, align 8, !noundef !7
  %i.gt = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.gu = load i64, ptr %i.gt, align 8, !noundef !7
  %i.gv = icmp eq i64 %i.gs, %i.gu
  br label %_RNvXs1C_Cs4dcH4YgJDq_2ttNtB6_7LiteralNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit

bb.av:                                            ; preds = %bb.h
  %i.gw = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.gx = load ptr, ptr %i.gw, align 8, !nonnull !7, !noundef !7
  %i.gy = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.gz = load ptr, ptr %i.gy, align 8, !nonnull !7, !noundef !7
  %i.ha = icmp eq i64 %i.ad, 0
  br i1 %i.ha, label %_RNvXs2_NtNtCshzWfHUSfYae_4core5slice3cmpNtNtCsqiF3OZxLbD_3mbe6parser21ConcatMetaVarExprElemINtB5_14SlicePartialEqBC_E17equal_same_lengthCs33K2ylI4knu_10hir_expand.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.av, %_RNvYNtNtCsqiF3OZxLbD_3mbe6parser21ConcatMetaVarExprElemNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neCs33K2ylI4knu_10hir_expand.exit.thread6.i
  %.sroa.01.09.i = phi i64 [ %i.lp, %_RNvYNtNtCsqiF3OZxLbD_3mbe6parser21ConcatMetaVarExprElemNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neCs33K2ylI4knu_10hir_expand.exit.thread6.i ], [ 0, %bb.av ] ; 3 uses
  %i.hb = getelementptr inbounds nuw [40 x i8], ptr %i.gz, i64 %.sroa.01.09.i ; 24 uses
  %i.hc = getelementptr inbounds nuw [40 x i8], ptr %i.gx, i64 %.sroa.01.09.i ; 24 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !870)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !871)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !872)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !873)
  %i.hd = load i64, ptr %i.hb, align 8, !range !6, !alias.scope !874, !noalias !875, !noundef !7 ; 2 uses
  %i.he = load i64, ptr %i.hc, align 8, !range !6, !alias.scope !875, !noalias !874, !noundef !7
  %i.hf = icmp eq i64 %i.hd, %i.he
  br i1 %i.hf, label %bb.aw, label %_RNvXs1C_Cs4dcH4YgJDq_2ttNtB6_7LiteralNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit

bb.aw:                                            ; preds = %.lr.ph.i
  switch i64 %i.hd, label %default.unreachable48 [
    i64 0, label %bb.ax
    i64 1, label %bb.bd
    i64 2, label %bb.bj
  ]

bb.ax:                                            ; preds = %bb.aw
  %i.hg = getelementptr inbounds nuw i8, ptr %i.hb, i64 8
  %i.hh = getelementptr inbounds nuw i8, ptr %i.hc, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !876)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !877)
  %i.hi = load ptr, ptr %i.hg, align 8, !alias.scope !878, !noalias !879, !nonnull !7, !noundef !7
  %i.hj = load ptr, ptr %i.hh, align 8, !alias.scope !879, !noalias !878, !nonnull !7, !noundef !7
  %i.hk = icmp eq ptr %i.hi, %i.hj
  br i1 %i.hk, label %bb.ay, label %_RNvXs1C_Cs4dcH4YgJDq_2ttNtB6_7LiteralNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit

bb.ay:                                            ; preds = %bb.ax
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hb, i64 16
  %i.hm = load i32, ptr %i.hl, align 8, !alias.scope !878, !noalias !879, !noundef !7
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hc, i64 16
  %i.ho = load i32, ptr %i.hn, align 8, !alias.scope !879, !noalias !878, !noundef !7
  %i.hp = icmp eq i32 %i.hm, %i.ho
  br i1 %i.hp, label %bb.az, label %_RNvXs1C_Cs4dcH4YgJDq_2ttNtB6_7LiteralNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit

bb.az:                                            ; preds = %bb.ay
  %i.hq = getelementptr inbounds nuw i8, ptr %i.hb, i64 20
  %i.hr = load i32, ptr %i.hq, align 4, !alias.scope !878, !noalias !879, !noundef !7
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hc, i64 20
  %i.ht = load i32, ptr %i.hs, align 4, !alias.scope !879, !noalias !878, !noundef !7
  %i.hu = icmp eq i32 %i.hr, %i.ht
  br i1 %i.hu, label %bb.ba, label %_RNvXs1C_Cs4dcH4YgJDq_2ttNtB6_7LiteralNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit

bb.ba:                                            ; preds = %bb.az
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hb, i64 24
  %i.hw = load i32, ptr %i.hv, align 8, !alias.scope !878, !noalias !879, !noundef !7
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hc, i64 24
  %i.hy = load i32, ptr %i.hx, align 8, !alias.scope !879, !noalias !878, !noundef !7
  %i.hz = icmp eq i32 %i.hw, %i.hy
  br i1 %i.hz, label %bb.bb, label %_RNvXs1C_Cs4dcH4YgJDq_2ttNtB6_7LiteralNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit

bb.bb:                                            ; preds = %bb.ba
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hb, i64 28
  %i.ib = load i32, ptr %i.ia, align 4, !alias.scope !878, !noalias !879, !noundef !7
  %i.ic = getelementptr inbounds nuw i8, ptr %i.hc, i64 28
  %i.id = load i32, ptr %i.ic, align 4, !alias.scope !879, !noalias !878, !noundef !7
  %i.ie = icmp eq i32 %i.ib, %i.id
  br i1 %i.ie, label %bb.bc, label %_RNvXs1C_Cs4dcH4YgJDq_2ttNtB6_7LiteralNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit

bb.bc:                                            ; preds = %bb.bb
  %i.if = getelementptr inbounds nuw i8, ptr %i.hb, i64 32
  %i.ig = load i32, ptr %i.if, align 8, !alias.scope !878, !noalias !879, !noundef !7
  %i.ih = getelementptr inbounds nuw i8, ptr %i.hc, i64 32
  %i.ii = load i32, ptr %i.ih, align 8, !alias.scope !879, !noalias !878, !noundef !7
  %i.ij = icmp eq i32 %i.ig, %i.ii
  br i1 %i.ij, label %.split56.i, label %_RNvXs1C_Cs4dcH4YgJDq_2ttNtB6_7LiteralNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit

.split56.i:                                       ; preds = %bb.bc
  %i.ik = getelementptr inbounds nuw i8, ptr %i.hb, i64 36
  %i.il = load i8, ptr %i.ik, align 4, !range !12, !alias.scope !878, !noalias !879, !noundef !7
  %i.im = getelementptr inbounds nuw i8, ptr %i.hc, i64 36
  %i.in = load i8, ptr %i.im, align 4, !range !12, !alias.scope !879, !noalias !878, !noundef !7
  %i.io = icmp eq i8 %i.il, %i.in
  br i1 %i.io, label %_RNvYNtNtCsqiF3OZxLbD_3mbe6parser21ConcatMetaVarExprElemNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neCs33K2ylI4knu_10hir_expand.exit.thread6.i, label %_RNvXs1C_Cs4dcH4YgJDq_2ttNtB6_7LiteralNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit

bb.bd:                                            ; preds = %bb.aw
  %i.ip = getelementptr inbounds nuw i8, ptr %i.hb, i64 8
  %i.iq = getelementptr inbounds nuw i8, ptr %i.hc, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !880)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !881)
  %i.ir = load ptr, ptr %i.ip, align 8, !alias.scope !882, !noalias !883, !nonnull !7, !noundef !7
  %i.is = load ptr, ptr %i.iq, align 8, !alias.scope !883, !noalias !882, !nonnull !7, !noundef !7
  %i.it = icmp eq ptr %i.ir, %i.is
  br i1 %i.it, label %bb.be, label %_RNvXs1C_Cs4dcH4YgJDq_2ttNtB6_7LiteralNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit

bb.be:                                            ; preds = %bb.bd
  %i.iu = getelementptr inbounds nuw i8, ptr %i.hb, i64 16
  %i.iv = load i32, ptr %i.iu, align 8, !alias.scope !882, !noalias !883, !noundef !7
  %i.iw = getelementptr inbounds nuw i8, ptr %i.hc, i64 16
  %i.ix = load i32, ptr %i.iw, align 8, !alias.scope !883, !noalias !882, !noundef !7
  %i.iy = icmp eq i32 %i.iv, %i.ix
  br i1 %i.iy, label %bb.bf, label %_RNvXs1C_Cs4dcH4YgJDq_2ttNtB6_7LiteralNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit

bb.bf:                                            ; preds = %bb.be
  %i.iz = getelementptr inbounds nuw i8, ptr %i.hb, i64 20
  %i.ja = load i32, ptr %i.iz, align 4, !alias.scope !882, !noalias !883, !noundef !7
  %i.jb = getelementptr inbounds nuw i8, ptr %i.hc, i64 20
  %i.jc = load i32, ptr %i.jb, align 4, !alias.scope !883, !noalias !882, !noundef !7
  %i.jd = icmp eq i32 %i.ja, %i.jc
  br i1 %i.jd, label %bb.bg, label %_RNvXs1C_Cs4dcH4YgJDq_2ttNtB6_7LiteralNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit

bb.bg:                                            ; preds = %bb.bf
end_hunk_0
