Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ring-rs/original/cc-76f3ccad368a22c6.cc.d9ca9ac6d52b51d2-cgu.4?download=true
inline.NumInlined: 260
inline.NumDeleted: 20
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc6borrow3CoweEECsiHivYpkJ4Hu_2cc
define void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc6borrow3CoweEECsiHivYpkJ4Hu_2cc(ptr align 8 %0) unnamed_addr #1 {
bb.a:
  %i.a = load i64, ptr %0, align 8
  %i.b = icmp eq i64 %i.a, -1
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.c, %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  tail call void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs3U9i7nQCKwt_15find_msvc_tools(ptr nonnull align 8 %0)
  br label %bb.b
}

; Function Attrs: nonlazybind uwtable
define void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVecINtNtBG_4sync3ArcNtNtCsaL1QbXo9JQH_3std4path4PathEEECsiHivYpkJ4Hu_2cc(ptr align 8 %0) unnamed_addr #1 {
bb.a:
  tail call void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecINtNtB7_4sync3ArcNtNtCsaL1QbXo9JQH_3std4path4PathEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCsiHivYpkJ4Hu_2cc(ptr align 8 %0)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVecINtNtBG_4sync3ArcNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str5OsStrEEECsiHivYpkJ4Hu_2cc(ptr align 8 %0) unnamed_addr #1 {
bb.a:
  tail call void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecINtNtB7_4sync3ArcNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str5OsStrEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCsiHivYpkJ4Hu_2cc(ptr align 8 %0)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVecINtNtBG_5boxed3BoxNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str5OsStrEEECsiHivYpkJ4Hu_2cc(ptr align 8 %0) unnamed_addr #1 {
bb.a:
  tail call void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecINtNtB7_5boxed3BoxNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str5OsStrEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCsiHivYpkJ4Hu_2cc(ptr align 8 %0)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVecNtCsiHivYpkJ4Hu_2cc6ObjectEEB1h_(ptr align 8 %0) unnamed_addr #1 {
bb.a:
  tail call void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtCsiHivYpkJ4Hu_2cc6ObjectENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBO_(ptr align 8 %0)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVecNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringEECsiHivYpkJ4Hu_2cc(ptr align 8 %0) unnamed_addr #1 {
bb.a:
  tail call void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCsiHivYpkJ4Hu_2cc(ptr align 8 %0)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVecRNtNtCsaL1QbXo9JQH_3std4path4PathEECsiHivYpkJ4Hu_2cc(ptr align 8 %0) unnamed_addr #1 {
bb.a:
  tail call void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecRNtNtCsaL1QbXo9JQH_3std4path4PathENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCsiHivYpkJ4Hu_2cc(ptr align 8 %0)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVecReEECsiHivYpkJ4Hu_2cc(ptr align 8 %0) unnamed_addr #1 {
bb.a:
  tail call void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecReENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCsiHivYpkJ4Hu_2cc(ptr align 8 %0)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVecTINtNtBG_4sync3ArcNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str5OsStrEB1g_EEECsiHivYpkJ4Hu_2cc(ptr align 8 %0) unnamed_addr #1 {
bb.a:
  tail call void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecTINtNtB7_4sync3ArcNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str5OsStrEBN_EENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCsiHivYpkJ4Hu_2cc(ptr align 8 %0)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVecTINtNtBG_4sync3ArceEINtNtB4_6option6OptionB1g_EEEECsiHivYpkJ4Hu_2cc(ptr align 8 %0) unnamed_addr #1 {
bb.a:
  tail call void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecTINtNtB7_4sync3ArceEINtNtCs3oUPovFnLWP_4core6option6OptionBN_EEENtNtNtB1b_3ops4drop4Drop4dropCsiHivYpkJ4Hu_2cc(ptr align 8 %0)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsiHivYpkJ4Hu_2cc9utilities8OnceLockINtNtB4_6result6ResultNtNtNtBG_6target6parser21TargetInfoParserInnerNtBG_5ErrorEEEBG_(ptr align 8 %0) unnamed_addr #1 {
bb.a:
  tail call void @_RNvXs7_NtCsiHivYpkJ4Hu_2cc9utilitiesINtB5_8OnceLockINtNtCs3oUPovFnLWP_4core6result6ResultNtNtNtB7_6target6parser21TargetInfoParserInnerNtB7_5ErrorEENtNtNtBS_3ops4drop4Drop4dropB7_(ptr align 8 %0) #29
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCskt5MLIAl8nl_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCs1xwejQucwHj_5alloc5alloc6GlobalE0EECsiHivYpkJ4Hu_2cc(ptr align 8 %0) unnamed_addr #1 {
bb.a:
  tail call void @_RNvXs1_NtCskt5MLIAl8nl_9hashbrown10scopeguardINtB5_10ScopeGuardNtNtB7_3raw13RawTableInnerNCINvMsa_B11_BZ_14prepare_resizeNtNtCs1xwejQucwHj_5alloc5alloc6GlobalE0ENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCsiHivYpkJ4Hu_2cc(ptr align 8 %0) #29
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCskt5MLIAl8nl_9hashbrown10scopeguard10ScopeGuardQNtNtBG_3raw13RawTableInnerNCNvMsa_B1v_B1t_15rehash_in_place0EECsiHivYpkJ4Hu_2cc(ptr align 8 %0) unnamed_addr #1 {
bb.a:
  tail call void @_RNvXs1_NtCskt5MLIAl8nl_9hashbrown10scopeguardINtB5_10ScopeGuardQNtNtB7_3raw13RawTableInnerNCNvMsa_B12_B10_15rehash_in_place0ENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCsiHivYpkJ4Hu_2cc(ptr align 8 %0) #29
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCskt5MLIAl8nl_9hashbrown3map7HashMapINtNtCs1xwejQucwHj_5alloc5boxed3BoxSIB1h_NtNtNtCsaL1QbXo9JQH_3std3ffi6os_str5OsStrEENtNtCsiHivYpkJ4Hu_2cc4tool10ToolFamilyNtNtNtB21_4hash6random11RandomStateEEB2G_(ptr align 8 %0) unnamed_addr #1 {
bb.a:
  tail call void @_RNvXsg_NtCskt5MLIAl8nl_9hashbrown3rawINtB5_8RawTableTINtNtCs1xwejQucwHj_5alloc5boxed3BoxSIBQ_NtNtNtCsaL1QbXo9JQH_3std3ffi6os_str5OsStrEENtNtCsiHivYpkJ4Hu_2cc4tool10ToolFamilyEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropB2e_(ptr align 8 %0)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCskt5MLIAl8nl_9hashbrown3map7HashMapINtNtCs1xwejQucwHj_5alloc5boxed3BoxeEINtNtB1l_4sync3ArcNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str5OsStrENtNtNtB2f_4hash6random11RandomStateEECsiHivYpkJ4Hu_2cc(ptr align 8 %0) unnamed_addr #1 {
bb.a:
  tail call void @_RNvXsg_NtCskt5MLIAl8nl_9hashbrown3rawINtB5_8RawTableTINtNtCs1xwejQucwHj_5alloc5boxed3BoxeEINtNtBU_4sync3ArcNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str5OsStrEEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCsiHivYpkJ4Hu_2cc(ptr align 8 %0)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCskt5MLIAl8nl_9hashbrown3map7HashMapINtNtCs1xwejQucwHj_5alloc5boxed3BoxeEINtNtB1l_4sync3ArceENtNtNtCsaL1QbXo9JQH_3std4hash6random11RandomStateEECsiHivYpkJ4Hu_2cc(ptr align 8 %0) unnamed_addr #1 {
bb.a:
  tail call void @_RNvXsg_NtCskt5MLIAl8nl_9hashbrown3rawINtB5_8RawTableTINtNtCs1xwejQucwHj_5alloc5boxed3BoxeEINtNtBU_4sync3ArceEEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCsiHivYpkJ4Hu_2cc(ptr align 8 %0)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCskt5MLIAl8nl_9hashbrown3map7HashMapNtCsiHivYpkJ4Hu_2cc12CompilerFlagbNtNtNtCsaL1QbXo9JQH_3std4hash6random11RandomStateEEB1i_(ptr align 8 %0) unnamed_addr #1 {
bb.a:
  tail call void @_RNvXsg_NtCskt5MLIAl8nl_9hashbrown3rawINtB5_8RawTableTNtCsiHivYpkJ4Hu_2cc12CompilerFlagbEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBR_(ptr align 8 %0)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCskt5MLIAl8nl_9hashbrown3raw8RawTableTINtNtCs1xwejQucwHj_5alloc5boxed3BoxSIB1j_NtNtNtCsaL1QbXo9JQH_3std3ffi6os_str5OsStrEENtNtCsiHivYpkJ4Hu_2cc4tool10ToolFamilyEEEB2I_(ptr align 8 %0) unnamed_addr #1 {
bb.a:
  tail call void @_RNvXsg_NtCskt5MLIAl8nl_9hashbrown3rawINtB5_8RawTableTINtNtCs1xwejQucwHj_5alloc5boxed3BoxSIBQ_NtNtNtCsaL1QbXo9JQH_3std3ffi6os_str5OsStrEENtNtCsiHivYpkJ4Hu_2cc4tool10ToolFamilyEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropB2e_(ptr align 8 %0)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCskt5MLIAl8nl_9hashbrown3raw8RawTableTINtNtCs1xwejQucwHj_5alloc5boxed3BoxeEINtNtB1n_4sync3ArcNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str5OsStrEEEECsiHivYpkJ4Hu_2cc(ptr align 8 %0) unnamed_addr #1 {
bb.a:
  tail call void @_RNvXsg_NtCskt5MLIAl8nl_9hashbrown3rawINtB5_8RawTableTINtNtCs1xwejQucwHj_5alloc5boxed3BoxeEINtNtBU_4sync3ArcNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str5OsStrEEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCsiHivYpkJ4Hu_2cc(ptr align 8 %0)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCskt5MLIAl8nl_9hashbrown3raw8RawTableTINtNtCs1xwejQucwHj_5alloc5boxed3BoxeEINtNtB1n_4sync3ArceEEEECsiHivYpkJ4Hu_2cc(ptr align 8 %0) unnamed_addr #1 {
bb.a:
  tail call void @_RNvXsg_NtCskt5MLIAl8nl_9hashbrown3rawINtB5_8RawTableTINtNtCs1xwejQucwHj_5alloc5boxed3BoxeEINtNtBU_4sync3ArceEEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCsiHivYpkJ4Hu_2cc(ptr align 8 %0)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCskt5MLIAl8nl_9hashbrown3raw8RawTableTNtCsiHivYpkJ4Hu_2cc12CompilerFlagbEEEB1k_(ptr align 8 %0) unnamed_addr #1 {
bb.a:
  tail call void @_RNvXsg_NtCskt5MLIAl8nl_9hashbrown3rawINtB5_8RawTableTNtCsiHivYpkJ4Hu_2cc12CompilerFlagbEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBR_(ptr align 8 %0)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtB4_5array4iter8IntoIterNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringKj6_EECsiHivYpkJ4Hu_2cc(ptr align 8 %0) unnamed_addr #1 {
bb.a:
  tail call void @_RNvXs5_NtNtCs3oUPovFnLWP_4core5array4iterINtB5_8IntoIterNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringKj6_ENtNtNtB9_3ops4drop4Drop4dropCsiHivYpkJ4Hu_2cc(ptr align 8 %0) #29
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtB4_5array4iter8IntoIterReKj2_EECsiHivYpkJ4Hu_2cc(ptr align 8 %0) unnamed_addr #1 {
bb.a:
  tail call void @_RNvXs5_NtNtCs3oUPovFnLWP_4core5array4iterINtB5_8IntoIterReKj2_ENtNtNtB9_3ops4drop4Drop4dropCsiHivYpkJ4Hu_2cc(ptr align 8 %0) #29
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtB4_5array4iter8IntoIterbKj20_EECsiHivYpkJ4Hu_2cc(ptr align 8 %0) unnamed_addr #1 {
bb.a:
  tail call void @_RNvXs5_NtNtCs3oUPovFnLWP_4core5array4iterINtB5_8IntoIterbKj20_ENtNtNtB9_3ops4drop4Drop4dropCsiHivYpkJ4Hu_2cc(ptr align 8 %0) #29
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCs1xwejQucwHj_5alloc3vec13in_place_drop11InPlaceDropNtNtCsaL1QbXo9JQH_3std4path7PathBufEECsiHivYpkJ4Hu_2cc(ptr nofree readonly align 8 captures(none) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8                ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8              ; 2 uses
  %i.d = ptrtoint ptr %i.c to i64
  %i.e = ptrtoint ptr %i.a to i64
  %i.f = sub nuw i64 %i.d, %i.e
  %i.g = udiv exact i64 %i.f, 24                  ; 3 uses
  %i.h = icmp eq ptr %i.c, %i.a
  br i1 %i.h, label %_RNvXs_NtNtCs1xwejQucwHj_5alloc3vec13in_place_dropINtB4_11InPlaceDropNtNtCsaL1QbXo9JQH_3std4path7PathBufENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCsiHivYpkJ4Hu_2cc.exit, label %.lr.ph

bb.b:                                             ; preds = %.lr.ph
  %i.i = icmp eq i64 %i.k, %i.g
  br i1 %i.i, label %_RNvXs_NtNtCs1xwejQucwHj_5alloc3vec13in_place_dropINtB4_11InPlaceDropNtNtCsaL1QbXo9JQH_3std4path7PathBufENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCsiHivYpkJ4Hu_2cc.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.sroa.0.0.i.i1 = phi i64 [ %i.k, %bb.b ], [ 0, %bb.a ] ; 2 uses
  %i.j = getelementptr inbounds nuw [24 x i8], ptr %i.a, i64 %.sroa.0.0.i.i1
  %i.k = add nuw nsw i64 %.sroa.0.0.i.i1, 1       ; 4 uses
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsaL1QbXo9JQH_3std4path7PathBufECs3U9i7nQCKwt_15find_msvc_tools(ptr align 8 %i.j)
          to label %bb.b unwind label %bb.d

bb.c:                                             ; preds = %.lr.ph3
  %i.l = add nuw nsw i64 %.sroa.0.1.i.i2, 1       ; 2 uses
  %i.m = icmp eq i64 %i.l, %i.g
  br i1 %i.m, label %._crit_edge, label %.lr.ph3

bb.d:                                             ; preds = %.lr.ph
  %i.n = landingpad { ptr, i32 }
          cleanup
  %i.o = icmp eq i64 %i.k, %i.g
  br i1 %i.o, label %._crit_edge, label %.lr.ph3

.lr.ph3:                                          ; preds = %bb.d, %bb.c
  %.sroa.0.1.i.i2 = phi i64 [ %i.l, %bb.c ], [ %i.k, %bb.d ] ; 2 uses
  %i.p = getelementptr inbounds nuw [24 x i8], ptr %i.a, i64 %.sroa.0.1.i.i2
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsaL1QbXo9JQH_3std4path7PathBufECs3U9i7nQCKwt_15find_msvc_tools(ptr nonnull align 8 %i.p) #30
          to label %bb.c unwind label %bb.e

._crit_edge:                                      ; preds = %bb.c, %bb.d
  resume { ptr, i32 } %i.n

bb.e:                                             ; preds = %.lr.ph3
  %i.q = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #31
  unreachable

_RNvXs_NtNtCs1xwejQucwHj_5alloc3vec13in_place_dropINtB4_11InPlaceDropNtNtCsaL1QbXo9JQH_3std4path7PathBufENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCsiHivYpkJ4Hu_2cc.exit: ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCs1xwejQucwHj_5alloc3vec13in_place_drop24InPlaceDstDataSrcBufDropNtCsiHivYpkJ4Hu_2cc6ObjectNtNtCsaL1QbXo9JQH_3std4path7PathBufEEB1N_(ptr nofree readonly align 8 captures(none) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = load ptr, ptr %0, align 8                ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8
  store i64 %i.d, ptr %i.a, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.b, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load i64, ptr %i.f, align 8              ; 4 uses
  %i.h = icmp eq i64 %i.g, 0
  br i1 %i.h, label %_RNvXs0_NtNtCs1xwejQucwHj_5alloc3vec13in_place_dropINtB5_24InPlaceDstDataSrcBufDropNtCsiHivYpkJ4Hu_2cc6ObjectNtNtCsaL1QbXo9JQH_3std4path7PathBufENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropB1k_.exit, label %.lr.ph

bb.b:                                             ; preds = %.lr.ph
  %i.i = icmp eq i64 %i.k, %i.g
  br i1 %i.i, label %_RNvXs0_NtNtCs1xwejQucwHj_5alloc3vec13in_place_dropINtB5_24InPlaceDstDataSrcBufDropNtCsiHivYpkJ4Hu_2cc6ObjectNtNtCsaL1QbXo9JQH_3std4path7PathBufENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropB1k_.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.sroa.0.0.i.i1 = phi i64 [ %i.k, %bb.b ], [ 0, %bb.a ] ; 2 uses
  %i.j = getelementptr inbounds nuw [24 x i8], ptr %i.b, i64 %.sroa.0.0.i.i1
  %i.k = add i64 %.sroa.0.0.i.i1, 1               ; 4 uses
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsaL1QbXo9JQH_3std4path7PathBufECs3U9i7nQCKwt_15find_msvc_tools(ptr align 8 %i.j)
          to label %bb.b unwind label %bb.d

bb.c:                                             ; preds = %.lr.ph3
  %i.l = add i64 %.sroa.0.1.i.i2, 1               ; 2 uses
  %i.m = icmp eq i64 %i.l, %i.g
  br i1 %i.m, label %.body.i, label %.lr.ph3

bb.d:                                             ; preds = %.lr.ph
  %i.n = landingpad { ptr, i32 }
          cleanup
  %i.o = icmp eq i64 %i.k, %i.g
  br i1 %i.o, label %.body.i, label %.lr.ph3

.lr.ph3:                                          ; preds = %bb.d, %bb.c
  %.sroa.0.1.i.i2 = phi i64 [ %i.l, %bb.c ], [ %i.k, %bb.d ] ; 2 uses
  %i.p = getelementptr inbounds nuw [24 x i8], ptr %i.b, i64 %.sroa.0.1.i.i2
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsaL1QbXo9JQH_3std4path7PathBufECs3U9i7nQCKwt_15find_msvc_tools(ptr align 8 %i.p) #30
          to label %bb.c unwind label %bb.e

bb.e:                                             ; preds = %.lr.ph3
  %i.q = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #31
  unreachable

.body.i:                                          ; preds = %bb.c, %bb.d
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtCsiHivYpkJ4Hu_2cc6ObjectENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBO_(ptr nonnull align 8 %i.a)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVecNtCsiHivYpkJ4Hu_2cc6ObjectEEB1h_.exit.i unwind label %bb.f

bb.f:                                             ; preds = %.body.i
  %i.r = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #31
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVecNtCsiHivYpkJ4Hu_2cc6ObjectEEB1h_.exit.i: ; preds = %.body.i
  resume { ptr, i32 } %i.n

_RNvXs0_NtNtCs1xwejQucwHj_5alloc3vec13in_place_dropINtB5_24InPlaceDstDataSrcBufDropNtCsiHivYpkJ4Hu_2cc6ObjectNtNtCsaL1QbXo9JQH_3std4path7PathBufENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropB1k_.exit: ; preds = %bb.b, %bb.a
  call void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtCsiHivYpkJ4Hu_2cc6ObjectENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBO_(ptr nonnull align 8 %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterNtCsiHivYpkJ4Hu_2cc6ObjectEEB1r_(ptr align 8 %0) unnamed_addr #1 {
bb.a:
  tail call void @_RNvXse_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtCsiHivYpkJ4Hu_2cc6ObjectENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBY_(ptr align 8 %0)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterNtNtBI_6string6StringEECsiHivYpkJ4Hu_2cc(ptr align 8 %0) unnamed_addr #1 {
bb.a:
  tail call void @_RNvXse_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtB9_6string6StringENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCsiHivYpkJ4Hu_2cc(ptr align 8 %0)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCsaL1QbXo9JQH_3std4sync14reentrant_lock18ReentrantLockGuardINtNtB4_4cell7RefCellINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered10linewriter10LineWriterNtNtNtBI_2io5stdio9StdoutRawEEEECsiHivYpkJ4Hu_2cc(ptr align 8 %0) unnamed_addr #1 {
bb.a:
  tail call void @_RNvXsc_NtNtCsaL1QbXo9JQH_3std4sync14reentrant_lockINtB5_18ReentrantLockGuardINtNtCs3oUPovFnLWP_4core4cell7RefCellINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered10linewriter10LineWriterNtNtNtB9_2io5stdio9StdoutRawEEENtNtNtB1h_3ops4drop4Drop4dropCsiHivYpkJ4Hu_2cc(ptr align 8 %0) #29
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCsaL1QbXo9JQH_3std4sync6poison11PoisonErrorINtNtBE_6rwlock15RwLockReadGuardINtNtNtNtBI_11collections4hash3map7HashMapINtNtCs1xwejQucwHj_5alloc5boxed3BoxSIB2C_NtNtNtBI_3ffi6os_str5OsStrEENtNtCsiHivYpkJ4Hu_2cc4tool10ToolFamilyEEEEB3M_(ptr align 8 %0) unnamed_addr #1 {
bb.a:
  tail call void @_RNvXsh_NtNtNtCsaL1QbXo9JQH_3std4sync6poison6rwlockINtB5_15RwLockReadGuardINtNtNtNtBb_11collections4hash3map7HashMapINtNtCs1xwejQucwHj_5alloc5boxed3BoxSIB1Q_NtNtNtBb_3ffi6os_str5OsStrEENtNtCsiHivYpkJ4Hu_2cc4tool10ToolFamilyEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropB30_(ptr align 8 %0)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCsaL1QbXo9JQH_3std4sync6poison11PoisonErrorINtNtBE_6rwlock15RwLockReadGuardINtNtNtNtBI_11collections4hash3map7HashMapINtNtCs1xwejQucwHj_5alloc5boxed3BoxeEINtNtB2G_4sync3ArcNtNtNtBI_3ffi6os_str5OsStrEEEEECsiHivYpkJ4Hu_2cc(ptr align 8 %0) unnamed_addr #1 {
bb.a:
  tail call void @_RNvXsh_NtNtNtCsaL1QbXo9JQH_3std4sync6poison6rwlockINtB5_15RwLockReadGuardINtNtNtNtBb_11collections4hash3map7HashMapINtNtCs1xwejQucwHj_5alloc5boxed3BoxeEINtNtB1U_4sync3ArcNtNtNtBb_3ffi6os_str5OsStrEEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCsiHivYpkJ4Hu_2cc(ptr align 8 %0)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCsaL1QbXo9JQH_3std4sync6poison11PoisonErrorINtNtBE_6rwlock15RwLockReadGuardINtNtNtNtBI_11collections4hash3map7HashMapINtNtCs1xwejQucwHj_5alloc5boxed3BoxeEINtNtB2G_4sync3ArceEEEEECsiHivYpkJ4Hu_2cc(ptr align 8 %0) unnamed_addr #1 {
bb.a:
  tail call void @_RNvXsh_NtNtNtCsaL1QbXo9JQH_3std4sync6poison6rwlockINtB5_15RwLockReadGuardINtNtNtNtBb_11collections4hash3map7HashMapINtNtCs1xwejQucwHj_5alloc5boxed3BoxeEINtNtB1U_4sync3ArceEEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCsiHivYpkJ4Hu_2cc(ptr align 8 %0)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCsaL1QbXo9JQH_3std4sync6poison11PoisonErrorINtNtBE_6rwlock15RwLockReadGuardINtNtNtNtBI_11collections4hash3map7HashMapNtCsiHivYpkJ4Hu_2cc12CompilerFlagbEEEEB2D_(ptr align 8 %0) unnamed_addr #1 {
bb.a:
  tail call void @_RNvXsh_NtNtNtCsaL1QbXo9JQH_3std4sync6poison6rwlockINtB5_15RwLockReadGuardINtNtNtNtBb_11collections4hash3map7HashMapNtCsiHivYpkJ4Hu_2cc12CompilerFlagbEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropB1R_(ptr align 8 %0)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCsaL1QbXo9JQH_3std4sync6poison11PoisonErrorINtNtBE_6rwlock16RwLockWriteGuardINtNtNtNtBI_11collections4hash3map7HashMapINtNtCs1xwejQucwHj_5alloc5boxed3BoxSIB2D_NtNtNtBI_3ffi6os_str5OsStrEENtNtCsiHivYpkJ4Hu_2cc4tool10ToolFamilyEEEEB3N_(ptr align 8 %0) unnamed_addr #1 {
bb.a:
  tail call void @_RNvXsi_NtNtNtCsaL1QbXo9JQH_3std4sync6poison6rwlockINtB5_16RwLockWriteGuardINtNtNtNtBb_11collections4hash3map7HashMapINtNtCs1xwejQucwHj_5alloc5boxed3BoxSIB1R_NtNtNtBb_3ffi6os_str5OsStrEENtNtCsiHivYpkJ4Hu_2cc4tool10ToolFamilyEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropB31_(ptr align 8 %0)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCsaL1QbXo9JQH_3std4sync6poison11PoisonErrorINtNtBE_6rwlock16RwLockWriteGuardINtNtNtNtBI_11collections4hash3map7HashMapINtNtCs1xwejQucwHj_5alloc5boxed3BoxeEINtNtB2H_4sync3ArcNtNtNtBI_3ffi6os_str5OsStrEEEEECsiHivYpkJ4Hu_2cc(ptr align 8 %0) unnamed_addr #1 {
bb.a:
  tail call void @_RNvXsi_NtNtNtCsaL1QbXo9JQH_3std4sync6poison6rwlockINtB5_16RwLockWriteGuardINtNtNtNtBb_11collections4hash3map7HashMapINtNtCs1xwejQucwHj_5alloc5boxed3BoxeEINtNtB1V_4sync3ArcNtNtNtBb_3ffi6os_str5OsStrEEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCsiHivYpkJ4Hu_2cc(ptr align 8 %0)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCsaL1QbXo9JQH_3std4sync6poison11PoisonErrorINtNtBE_6rwlock16RwLockWriteGuardINtNtNtNtBI_11collections4hash3map7HashMapINtNtCs1xwejQucwHj_5alloc5boxed3BoxeEINtNtB2H_4sync3ArceEEEEECsiHivYpkJ4Hu_2cc(ptr align 8 %0) unnamed_addr #1 {
bb.a:
  tail call void @_RNvXsi_NtNtNtCsaL1QbXo9JQH_3std4sync6poison6rwlockINtB5_16RwLockWriteGuardINtNtNtNtBb_11collections4hash3map7HashMapINtNtCs1xwejQucwHj_5alloc5boxed3BoxeEINtNtB1V_4sync3ArceEEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCsiHivYpkJ4Hu_2cc(ptr align 8 %0)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCsaL1QbXo9JQH_3std4sync6poison11PoisonErrorINtNtBE_6rwlock16RwLockWriteGuardINtNtNtNtBI_11collections4hash3map7HashMapNtCsiHivYpkJ4Hu_2cc12CompilerFlagbEEEEB2E_(ptr align 8 %0) unnamed_addr #1 {
bb.a:
  tail call void @_RNvXsi_NtNtNtCsaL1QbXo9JQH_3std4sync6poison6rwlockINtB5_16RwLockWriteGuardINtNtNtNtBb_11collections4hash3map7HashMapNtCsiHivYpkJ4Hu_2cc12CompilerFlagbEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropB1S_(ptr align 8 %0)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterNtCsiHivYpkJ4Hu_2cc6ObjectENCNvMs4_B1Z_NtB1Z_5Build25try_compile_intermediates0EEB1Z_(ptr align 8 %0) unnamed_addr #1 {
bb.a:
  tail call void @_RNvXse_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtCsiHivYpkJ4Hu_2cc6ObjectENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBY_(ptr align 8 %0)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterNtNtB1g_6string6StringENCNvMs3_CsiHivYpkJ4Hu_2ccNtB2s_5Build26try_flags_from_environments_0EEB2s_(ptr align 8 %0) unnamed_addr #1 {
bb.a:
  tail call void @_RNvXse_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtB9_6string6StringENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCsiHivYpkJ4Hu_2cc(ptr align 8 %0)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtB4_5array4iter10iter_inner15PolymorphicIterAINtNtNtB4_3mem12maybe_uninit11MaybeUninitNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringEj6_EECsiHivYpkJ4Hu_2cc(ptr align 8 %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8                ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8              ; 2 uses
  %i.d = icmp eq i64 %i.c, %i.a
  br i1 %i.d, label %_RNvXs1_NtNtNtCs3oUPovFnLWP_4core5array4iter10iter_innerINtB5_15PolymorphicIterAINtNtNtBb_3mem12maybe_uninit11MaybeUninitNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringEj6_ENtNtNtBb_3ops4drop4Drop4dropCsiHivYpkJ4Hu_2cc.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = sub nuw i64 %i.c, %i.a                   ; 3 uses
  %i.g = getelementptr inbounds nuw [24 x i8], ptr %i.e, i64 %i.a ; 2 uses
  br label %bb.c

bb.b:                                             ; preds = %bb.c
  %i.h = icmp eq i64 %i.j, %i.f
  br i1 %i.h, label %_RNvXs1_NtNtNtCs3oUPovFnLWP_4core5array4iter10iter_innerINtB5_15PolymorphicIterAINtNtNtBb_3mem12maybe_uninit11MaybeUninitNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringEj6_ENtNtNtBb_3ops4drop4Drop4dropCsiHivYpkJ4Hu_2cc.exit, label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.b
  %.sroa.0.0.i.i.i.i3 = phi i64 [ 0, %.lr.ph ], [ %i.j, %bb.b ] ; 2 uses
  %i.i = getelementptr inbounds nuw [24 x i8], ptr %i.g, i64 %.sroa.0.0.i.i.i.i3
  %i.j = add i64 %.sroa.0.0.i.i.i.i3, 1           ; 4 uses
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringECs3U9i7nQCKwt_15find_msvc_tools(ptr nonnull align 8 %i.i)
          to label %bb.b unwind label %bb.e
end_hunk_0
begin_hunk_1_@_RNvXsX_NtNtCs3oUPovFnLWP_4core3str4iterINtB5_5SplitNtB7_12IsWhitespaceENtNtNtNtB9_4iter6traits8iterator8Iterator4nextCsiHivYpkJ4Hu_2cc:bb.a
  %i.q = load i8, ptr %i.b, align 1
  %i.r = trunc nuw i8 %i.q to i1
  br i1 %i.r, label %_RNvMsf_NtNtCs3oUPovFnLWP_4core3str4iterINtB5_13SplitInternalNtB7_12IsWhitespaceE4nextCsiHivYpkJ4Hu_2cc.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  store i8 1, ptr %i.b, align 1
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.t = load i8, ptr %i.s, align 8
  %i.u = trunc nuw i8 %i.t to i1
  br i1 %i.u, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.w = load i64, ptr %i.v, align 8
  %i.x = load i64, ptr %0, align 8
  %.not.i.i = icmp eq i64 %i.w, %i.x
  br i1 %.not.i.i, label %_RNvMsf_NtNtCs3oUPovFnLWP_4core3str4iterINtB5_13SplitInternalNtB7_12IsWhitespaceE4nextCsiHivYpkJ4Hu_2cc.exit, label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.y = call { ptr, i64 } @_RNvXso_NtNtCs3oUPovFnLWP_4core3str7patternINtB5_21CharPredicateSearcherNtB7_12IsWhitespaceENtB5_8Searcher8haystackCsiHivYpkJ4Hu_2cc(ptr nonnull align 8 %i.e) #29
  %i.z = extractvalue { ptr, i64 } %i.y, 0
  %i.aa = load i64, ptr %0, align 8               ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ac = load i64, ptr %i.ab, align 8
  %i.ad = sub nuw i64 %i.ac, %i.aa
  %i.ae = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.aa
  br label %_RNvMsf_NtNtCs3oUPovFnLWP_4core3str4iterINtB5_13SplitInternalNtB7_12IsWhitespaceE4nextCsiHivYpkJ4Hu_2cc.exit

_RNvMsf_NtNtCs3oUPovFnLWP_4core3str4iterINtB5_13SplitInternalNtB7_12IsWhitespaceE4nextCsiHivYpkJ4Hu_2cc.exit: ; preds = %bb.a, %bb.c, %bb.d, %bb.f, %bb.g
  %.sroa.4.0.i = phi i64 [ undef, %bb.a ], [ %i.o, %bb.c ], [ %i.ad, %bb.g ], [ undef, %bb.f ], [ undef, %bb.d ]
  %.sroa.0.0.i = phi ptr [ null, %bb.a ], [ %i.p, %bb.c ], [ %i.ae, %bb.g ], [ null, %bb.f ], [ null, %bb.d ]
  %i.af = insertvalue { ptr, i64 } poison, ptr %.sroa.0.0.i, 0
  %i.ag = insertvalue { ptr, i64 } %i.af, i64 %.sroa.4.0.i, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret { ptr, i64 } %i.ag
}

; Function Attrs: inlinehint nonlazybind uwtable
define { ptr, i64 } @_RNvXsX_NtNtCs3oUPovFnLWP_4core3str4iterINtB5_5SplitReENtNtNtNtB9_4iter6traits8iterator8Iterator4nextCsiHivYpkJ4Hu_2cc(ptr align 8 %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 121 ; 3 uses
  %i.c = load i8, ptr %i.b, align 1
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %_RNvMsf_NtNtCs3oUPovFnLWP_4core3str4iterINtB5_13SplitInternalReE4nextCsiHivYpkJ4Hu_2cc.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = tail call { ptr, i64 } @_RNvXsv_NtNtCs3oUPovFnLWP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher8haystackCsiHivYpkJ4Hu_2cc(ptr nonnull align 8 %0) #29
  call void @_RNvXsv_NtNtCs3oUPovFnLWP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_matchCsiHivYpkJ4Hu_2cc(ptr nonnull sret([24 x i8]) align 8 %i.a, ptr nonnull align 8 %0) #29
  %i.f = load i64, ptr %i.a, align 8
  %i.g = trunc nuw i64 %i.f to i1
  br i1 %i.g, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.h = extractvalue { ptr, i64 } %i.e, 0
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.j = load i64, ptr %i.i, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.l = load i64, ptr %i.k, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.n = load i64, ptr %i.m, align 8              ; 2 uses
  %i.o = sub nuw i64 %i.j, %i.n
  %i.p = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.n
  store i64 %i.l, ptr %i.m, align 8
  br label %_RNvMsf_NtNtCs3oUPovFnLWP_4core3str4iterINtB5_13SplitInternalReE4nextCsiHivYpkJ4Hu_2cc.exit

bb.d:                                             ; preds = %bb.b
  %i.q = load i8, ptr %i.b, align 1
  %i.r = trunc nuw i8 %i.q to i1
  br i1 %i.r, label %_RNvMsf_NtNtCs3oUPovFnLWP_4core3str4iterINtB5_13SplitInternalReE4nextCsiHivYpkJ4Hu_2cc.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  store i8 1, ptr %i.b, align 1
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.t = load i8, ptr %i.s, align 8
  %i.u = trunc nuw i8 %i.t to i1
  br i1 %i.u, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.w = load i64, ptr %i.v, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.y = load i64, ptr %i.x, align 8
  %.not.i.i = icmp eq i64 %i.w, %i.y
  br i1 %.not.i.i, label %_RNvMsf_NtNtCs3oUPovFnLWP_4core3str4iterINtB5_13SplitInternalReE4nextCsiHivYpkJ4Hu_2cc.exit, label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.z = call { ptr, i64 } @_RNvXsv_NtNtCs3oUPovFnLWP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher8haystackCsiHivYpkJ4Hu_2cc(ptr nonnull align 8 %0) #29
  %i.aa = extractvalue { ptr, i64 } %i.z, 0
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.ac = load i64, ptr %i.ab, align 8            ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.ae = load i64, ptr %i.ad, align 8
  %i.af = sub nuw i64 %i.ae, %i.ac
  %i.ag = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.ac
  br label %_RNvMsf_NtNtCs3oUPovFnLWP_4core3str4iterINtB5_13SplitInternalReE4nextCsiHivYpkJ4Hu_2cc.exit

_RNvMsf_NtNtCs3oUPovFnLWP_4core3str4iterINtB5_13SplitInternalReE4nextCsiHivYpkJ4Hu_2cc.exit: ; preds = %bb.a, %bb.c, %bb.d, %bb.f, %bb.g
  %.sroa.4.0.i = phi i64 [ undef, %bb.a ], [ %i.o, %bb.c ], [ %i.af, %bb.g ], [ undef, %bb.f ], [ undef, %bb.d ]
  %.sroa.0.0.i = phi ptr [ null, %bb.a ], [ %i.p, %bb.c ], [ %i.ag, %bb.g ], [ null, %bb.f ], [ null, %bb.d ]
  %i.ah = insertvalue { ptr, i64 } poison, ptr %.sroa.0.0.i, 0
  %i.ai = insertvalue { ptr, i64 } %i.ah, i64 %.sroa.4.0.i, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret { ptr, i64 } %i.ai
}

; Function Attrs: inlinehint nonlazybind uwtable
define { ptr, i64 } @_RNvXsX_NtNtCs3oUPovFnLWP_4core3str4iterINtB5_5SplitcENtNtNtNtB9_4iter6traits8iterator8Iterator4nextCsiHivYpkJ4Hu_2cc(ptr align 8 %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 65 ; 3 uses
  %i.c = load i8, ptr %i.b, align 1
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %_RNvMsf_NtNtCs3oUPovFnLWP_4core3str4iterINtB5_13SplitInternalcE4nextCsiHivYpkJ4Hu_2cc.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.f = tail call { ptr, i64 } @_RNvXs_NtNtCs3oUPovFnLWP_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher8haystackCsiHivYpkJ4Hu_2cc(ptr nonnull align 8 %i.e) #29
  call void @_RNvXs_NtNtCs3oUPovFnLWP_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_matchCsiHivYpkJ4Hu_2cc(ptr nonnull sret([24 x i8]) align 8 %i.a, ptr nonnull align 8 %i.e) #29
  %i.g = load i64, ptr %i.a, align 8
  %i.h = trunc nuw i64 %i.g to i1
  br i1 %i.h, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.i = extractvalue { ptr, i64 } %i.f, 0
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.k = load i64, ptr %i.j, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.m = load i64, ptr %i.l, align 8
  %i.n = load i64, ptr %0, align 8                ; 2 uses
  %i.o = sub nuw i64 %i.k, %i.n
  %i.p = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.n
  store i64 %i.m, ptr %0, align 8
  br label %_RNvMsf_NtNtCs3oUPovFnLWP_4core3str4iterINtB5_13SplitInternalcE4nextCsiHivYpkJ4Hu_2cc.exit

bb.d:                                             ; preds = %bb.b
  %i.q = load i8, ptr %i.b, align 1
  %i.r = trunc nuw i8 %i.q to i1
  br i1 %i.r, label %_RNvMsf_NtNtCs3oUPovFnLWP_4core3str4iterINtB5_13SplitInternalcE4nextCsiHivYpkJ4Hu_2cc.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  store i8 1, ptr %i.b, align 1
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.t = load i8, ptr %i.s, align 8
  %i.u = trunc nuw i8 %i.t to i1
  br i1 %i.u, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.w = load i64, ptr %i.v, align 8
  %i.x = load i64, ptr %0, align 8
  %.not.i.i = icmp eq i64 %i.w, %i.x
  br i1 %.not.i.i, label %_RNvMsf_NtNtCs3oUPovFnLWP_4core3str4iterINtB5_13SplitInternalcE4nextCsiHivYpkJ4Hu_2cc.exit, label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.y = call { ptr, i64 } @_RNvXs_NtNtCs3oUPovFnLWP_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher8haystackCsiHivYpkJ4Hu_2cc(ptr nonnull align 8 %i.e) #29
  %i.z = extractvalue { ptr, i64 } %i.y, 0
  %i.aa = load i64, ptr %0, align 8               ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ac = load i64, ptr %i.ab, align 8
  %i.ad = sub nuw i64 %i.ac, %i.aa
  %i.ae = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.aa
  br label %_RNvMsf_NtNtCs3oUPovFnLWP_4core3str4iterINtB5_13SplitInternalcE4nextCsiHivYpkJ4Hu_2cc.exit

_RNvMsf_NtNtCs3oUPovFnLWP_4core3str4iterINtB5_13SplitInternalcE4nextCsiHivYpkJ4Hu_2cc.exit: ; preds = %bb.a, %bb.c, %bb.d, %bb.f, %bb.g
  %.sroa.4.0.i = phi i64 [ undef, %bb.a ], [ %i.o, %bb.c ], [ %i.ad, %bb.g ], [ undef, %bb.f ], [ undef, %bb.d ]
  %.sroa.0.0.i = phi ptr [ null, %bb.a ], [ %i.p, %bb.c ], [ %i.ae, %bb.g ], [ null, %bb.f ], [ null, %bb.d ]
  %i.af = insertvalue { ptr, i64 } poison, ptr %.sroa.0.0.i, 0
  %i.ag = insertvalue { ptr, i64 } %i.af, i64 %.sroa.4.0.i, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret { ptr, i64 } %i.ag
}

; Function Attrs: inlinehint nonlazybind uwtable
define void @_RNvXs_NtNtCs1xwejQucwHj_5alloc3vec13in_place_dropINtB4_11InPlaceDropNtNtCsaL1QbXo9JQH_3std4path7PathBufENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCsiHivYpkJ4Hu_2cc(ptr nofree readonly align 8 captures(none) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8                ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8              ; 2 uses
  %i.d = ptrtoint ptr %i.c to i64
  %i.e = ptrtoint ptr %i.a to i64
  %i.f = sub nuw i64 %i.d, %i.e
  %i.g = udiv exact i64 %i.f, 24                  ; 3 uses
  %i.h = icmp eq ptr %i.c, %i.a
  br i1 %i.h, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSNtNtCsaL1QbXo9JQH_3std4path7PathBufECsiHivYpkJ4Hu_2cc.exit, label %.lr.ph

bb.b:                                             ; preds = %.lr.ph
  %i.i = icmp eq i64 %i.k, %i.g
  br i1 %i.i, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSNtNtCsaL1QbXo9JQH_3std4path7PathBufECsiHivYpkJ4Hu_2cc.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.sroa.0.0.i1 = phi i64 [ %i.k, %bb.b ], [ 0, %bb.a ] ; 2 uses
  %i.j = getelementptr inbounds nuw [24 x i8], ptr %i.a, i64 %.sroa.0.0.i1
  %i.k = add nuw nsw i64 %.sroa.0.0.i1, 1         ; 4 uses
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsaL1QbXo9JQH_3std4path7PathBufECs3U9i7nQCKwt_15find_msvc_tools(ptr align 8 %i.j)
          to label %bb.b unwind label %bb.d

bb.c:                                             ; preds = %.lr.ph3
  %i.l = add nuw nsw i64 %.sroa.0.1.i2, 1         ; 2 uses
  %i.m = icmp eq i64 %i.l, %i.g
  br i1 %i.m, label %._crit_edge, label %.lr.ph3

bb.d:                                             ; preds = %.lr.ph
  %i.n = landingpad { ptr, i32 }
          cleanup
  %i.o = icmp eq i64 %i.k, %i.g
  br i1 %i.o, label %._crit_edge, label %.lr.ph3

.lr.ph3:                                          ; preds = %bb.d, %bb.c
  %.sroa.0.1.i2 = phi i64 [ %i.l, %bb.c ], [ %i.k, %bb.d ] ; 2 uses
  %i.p = getelementptr inbounds nuw [24 x i8], ptr %i.a, i64 %.sroa.0.1.i2
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsaL1QbXo9JQH_3std4path7PathBufECs3U9i7nQCKwt_15find_msvc_tools(ptr nonnull align 8 %i.p) #30
          to label %bb.c unwind label %bb.e

._crit_edge:                                      ; preds = %bb.c, %bb.d
  resume { ptr, i32 } %i.n

bb.e:                                             ; preds = %.lr.ph3
  %i.q = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #31
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSNtNtCsaL1QbXo9JQH_3std4path7PathBufECsiHivYpkJ4Hu_2cc.exit: ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define i8 @_RNvXs_NtNtCs3oUPovFnLWP_4core3ops12control_flowINtB4_11ControlFlowIBK_uNtNtB8_3cmp8OrderingEEINtNtB6_9try_trait12FromResidualIBK_B12_zEE13from_residualCsiHivYpkJ4Hu_2cc(i8 returned %0) unnamed_addr #5 {
bb.a:
  ret i8 %0
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define range(i8 0, 2) i8 @_RNvXs_NtNtCs3oUPovFnLWP_4core3ops12control_flowINtB4_11ControlFlowNtCsiHivYpkJ4Hu_2cc10AsmFileExtEINtNtB6_9try_trait12FromResidualIBK_B12_zEE13from_residualB14_(i1 zeroext %0) unnamed_addr #5 {
bb.a:
  %i.a = zext i1 %0 to i8
  ret i8 %i.a
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define align 8 ptr @_RNvXs_NtNtCs3oUPovFnLWP_4core3ops12control_flowINtB4_11ControlFlowRReEINtNtB6_9try_trait12FromResidualIBK_B12_zEE13from_residualCsiHivYpkJ4Hu_2cc(ptr nofree readnone returned align 8 captures(ret: address, provenance) %0) unnamed_addr #5 {
bb.a:
  ret ptr %0
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define { ptr, i64 } @_RNvXs_NtNtCs3oUPovFnLWP_4core3ops12control_flowINtB4_11ControlFlowRShEINtNtB6_9try_trait12FromResidualIBK_B12_zEE13from_residualCsiHivYpkJ4Hu_2cc(ptr %0, i64 %1) unnamed_addr #5 {
bb.a:
  %i.a = insertvalue { ptr, i64 } poison, ptr %0, 0
  %i.b = insertvalue { ptr, i64 } %i.a, i64 %1, 1
  ret { ptr, i64 } %i.b
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define { ptr, i64 } @_RNvXs_NtNtCs3oUPovFnLWP_4core3ops12control_flowINtB4_11ControlFlowReEINtNtB6_9try_trait12FromResidualIBK_B12_zEE13from_residualCsiHivYpkJ4Hu_2cc(ptr %0, i64 %1) unnamed_addr #5 {
bb.a:
  %i.a = insertvalue { ptr, i64 } poison, ptr %0, 0
  %i.b = insertvalue { ptr, i64 } %i.a, i64 %1, 1
  ret { ptr, i64 } %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define { ptr, ptr } @_RNvXs_NtNtCs3oUPovFnLWP_4core5slice4iterRSNtNtCs1xwejQucwHj_5alloc6string6StringNtNtNtNtB8_4iter6traits7collect12IntoIterator9into_iterCsiHivYpkJ4Hu_2cc(ptr align 8 %0, i64 %1) unnamed_addr #15 {
bb.a:
  %i.a = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %1
  %i.b = insertvalue { ptr, ptr } poison, ptr %0, 0
  %i.c = insertvalue { ptr, ptr } %i.b, ptr %i.a, 1
  ret { ptr, ptr } %i.c
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @_RNvXs_NtNtCsaL1QbXo9JQH_3std4sync6poisonINtB4_11PoisonErrorINtNtB4_6rwlock15RwLockReadGuardINtNtNtNtB8_11collections4hash3map7HashMapINtNtCs1xwejQucwHj_5alloc5boxed3BoxSIB28_NtNtNtB8_3ffi6os_str5OsStrEENtNtCsiHivYpkJ4Hu_2cc4tool10ToolFamilyEEENtNtCs3oUPovFnLWP_4core3fmt5Debug3fmtB3i_(ptr nofree readnone align 8 captures(none) %0, ptr align 8 %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 2 uses
  call void @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter12debug_struct(ptr nonnull sret([16 x i8]) align 8 %i.a, ptr align 8 %1, ptr nonnull @13, i64 11)
  %i.b = call zeroext i1 @_RNvMs2_NtNtCs3oUPovFnLWP_4core3fmt8buildersNtB5_11DebugStruct21finish_non_exhaustive(ptr nonnull align 8 %i.a)
  ret i1 %i.b
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @_RNvXs_NtNtCsaL1QbXo9JQH_3std4sync6poisonINtB4_11PoisonErrorINtNtB4_6rwlock15RwLockReadGuardINtNtNtNtB8_11collections4hash3map7HashMapINtNtCs1xwejQucwHj_5alloc5boxed3BoxeEINtNtB2c_4sync3ArcNtNtNtB8_3ffi6os_str5OsStrEEEENtNtCs3oUPovFnLWP_4core3fmt5Debug3fmtCsiHivYpkJ4Hu_2cc(ptr nofree readnone align 8 captures(none) %0, ptr align 8 %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 2 uses
  call void @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter12debug_struct(ptr nonnull sret([16 x i8]) align 8 %i.a, ptr align 8 %1, ptr nonnull @13, i64 11)
  %i.b = call zeroext i1 @_RNvMs2_NtNtCs3oUPovFnLWP_4core3fmt8buildersNtB5_11DebugStruct21finish_non_exhaustive(ptr nonnull align 8 %i.a)
  ret i1 %i.b
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @_RNvXs_NtNtCsaL1QbXo9JQH_3std4sync6poisonINtB4_11PoisonErrorINtNtB4_6rwlock15RwLockReadGuardINtNtNtNtB8_11collections4hash3map7HashMapINtNtCs1xwejQucwHj_5alloc5boxed3BoxeEINtNtB2c_4sync3ArceEEEENtNtCs3oUPovFnLWP_4core3fmt5Debug3fmtCsiHivYpkJ4Hu_2cc(ptr nofree readnone align 8 captures(none) %0, ptr align 8 %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 2 uses
  call void @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter12debug_struct(ptr nonnull sret([16 x i8]) align 8 %i.a, ptr align 8 %1, ptr nonnull @13, i64 11)
  %i.b = call zeroext i1 @_RNvMs2_NtNtCs3oUPovFnLWP_4core3fmt8buildersNtB5_11DebugStruct21finish_non_exhaustive(ptr nonnull align 8 %i.a)
  ret i1 %i.b
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @_RNvXs_NtNtCsaL1QbXo9JQH_3std4sync6poisonINtB4_11PoisonErrorINtNtB4_6rwlock15RwLockReadGuardINtNtNtNtB8_11collections4hash3map7HashMapNtCsiHivYpkJ4Hu_2cc12CompilerFlagbEEENtNtCs3oUPovFnLWP_4core3fmt5Debug3fmtB29_(ptr nofree readnone align 8 captures(none) %0, ptr align 8 %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 2 uses
  call void @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter12debug_struct(ptr nonnull sret([16 x i8]) align 8 %i.a, ptr align 8 %1, ptr nonnull @13, i64 11)
  %i.b = call zeroext i1 @_RNvMs2_NtNtCs3oUPovFnLWP_4core3fmt8buildersNtB5_11DebugStruct21finish_non_exhaustive(ptr nonnull align 8 %i.a)
  ret i1 %i.b
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @_RNvXs_NtNtCsaL1QbXo9JQH_3std4sync6poisonINtB4_11PoisonErrorINtNtB4_6rwlock16RwLockWriteGuardINtNtNtNtB8_11collections4hash3map7HashMapINtNtCs1xwejQucwHj_5alloc5boxed3BoxSIB29_NtNtNtB8_3ffi6os_str5OsStrEENtNtCsiHivYpkJ4Hu_2cc4tool10ToolFamilyEEENtNtCs3oUPovFnLWP_4core3fmt5Debug3fmtB3j_(ptr nofree readnone align 8 captures(none) %0, ptr align 8 %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 2 uses
  call void @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter12debug_struct(ptr nonnull sret([16 x i8]) align 8 %i.a, ptr align 8 %1, ptr nonnull @13, i64 11)
  %i.b = call zeroext i1 @_RNvMs2_NtNtCs3oUPovFnLWP_4core3fmt8buildersNtB5_11DebugStruct21finish_non_exhaustive(ptr nonnull align 8 %i.a)
  ret i1 %i.b
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @_RNvXs_NtNtCsaL1QbXo9JQH_3std4sync6poisonINtB4_11PoisonErrorINtNtB4_6rwlock16RwLockWriteGuardINtNtNtNtB8_11collections4hash3map7HashMapINtNtCs1xwejQucwHj_5alloc5boxed3BoxeEINtNtB2d_4sync3ArcNtNtNtB8_3ffi6os_str5OsStrEEEENtNtCs3oUPovFnLWP_4core3fmt5Debug3fmtCsiHivYpkJ4Hu_2cc(ptr nofree readnone align 8 captures(none) %0, ptr align 8 %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 2 uses
  call void @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter12debug_struct(ptr nonnull sret([16 x i8]) align 8 %i.a, ptr align 8 %1, ptr nonnull @13, i64 11)
  %i.b = call zeroext i1 @_RNvMs2_NtNtCs3oUPovFnLWP_4core3fmt8buildersNtB5_11DebugStruct21finish_non_exhaustive(ptr nonnull align 8 %i.a)
  ret i1 %i.b
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @_RNvXs_NtNtCsaL1QbXo9JQH_3std4sync6poisonINtB4_11PoisonErrorINtNtB4_6rwlock16RwLockWriteGuardINtNtNtNtB8_11collections4hash3map7HashMapINtNtCs1xwejQucwHj_5alloc5boxed3BoxeEINtNtB2d_4sync3ArceEEEENtNtCs3oUPovFnLWP_4core3fmt5Debug3fmtCsiHivYpkJ4Hu_2cc(ptr nofree readnone align 8 captures(none) %0, ptr align 8 %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 2 uses
  call void @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter12debug_struct(ptr nonnull sret([16 x i8]) align 8 %i.a, ptr align 8 %1, ptr nonnull @13, i64 11)
  %i.b = call zeroext i1 @_RNvMs2_NtNtCs3oUPovFnLWP_4core3fmt8buildersNtB5_11DebugStruct21finish_non_exhaustive(ptr nonnull align 8 %i.a)
  ret i1 %i.b
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @_RNvXs_NtNtCsaL1QbXo9JQH_3std4sync6poisonINtB4_11PoisonErrorINtNtB4_6rwlock16RwLockWriteGuardINtNtNtNtB8_11collections4hash3map7HashMapNtCsiHivYpkJ4Hu_2cc12CompilerFlagbEEENtNtCs3oUPovFnLWP_4core3fmt5Debug3fmtB2a_(ptr nofree readnone align 8 captures(none) %0, ptr align 8 %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 2 uses
  call void @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter12debug_struct(ptr nonnull sret([16 x i8]) align 8 %i.a, ptr align 8 %1, ptr nonnull @13, i64 11)
  %i.b = call zeroext i1 @_RNvMs2_NtNtCs3oUPovFnLWP_4core3fmt8buildersNtB5_11DebugStruct21finish_non_exhaustive(ptr nonnull align 8 %i.a)
  ret i1 %i.b
}

; Function Attrs: inlinehint nonlazybind uwtable
define { ptr, i64 } @_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters5chainINtB4_5ChainINtNtB6_3map3MapINtNtNtBa_5slice4iter4IterNtCsiHivYpkJ4Hu_2cc6ObjectENCNvMs4_B1H_NtB1H_5Build8assemble0EIB10_IB1g_INtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCsaL1QbXo9JQH_3std4path4PathEENvYB2P_NtNtNtBa_3ops5deref5Deref5derefEENtNtNtB8_6traits8iterator8Iterator4nextB1H_(ptr align 8 %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %_RINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters5chain17and_then_or_clearINtNtB4_3map3MapINtNtNtB8_5slice4iter4IterNtCsiHivYpkJ4Hu_2cc6ObjectENCNvMs4_B1M_NtB1M_5Build8assemble0ERNtNtCsaL1QbXo9JQH_3std4path4PathNvYB14_NtNtNtB6_6traits8iterator8Iterator4nextEB1M_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call { ptr, i64 } @_RNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter4IterNtCsiHivYpkJ4Hu_2cc6ObjectENCNvMs4_B1o_NtB1o_5Build8assemble0ENtNtNtB9_6traits8iterator8Iterator4nextB1o_(ptr nonnull align 8 %0) #29 ; 2 uses
  %i.c = extractvalue { ptr, i64 } %i.b, 0        ; 2 uses
  %i.d = extractvalue { ptr, i64 } %i.b, 1        ; 2 uses
  %.not3.i = icmp eq ptr %i.c, null
  br i1 %.not3.i, label %bb.c, label %_RINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters5chain17and_then_or_clearINtNtB4_3map3MapINtNtNtB8_5slice4iter4IterNtCsiHivYpkJ4Hu_2cc6ObjectENCNvMs4_B1M_NtB1M_5Build8assemble0ERNtNtCsaL1QbXo9JQH_3std4path4PathNvYB14_NtNtNtB6_6traits8iterator8Iterator4nextEB1M_.exit

bb.c:                                             ; preds = %bb.b
  store ptr null, ptr %0, align 8
  br label %_RINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters5chain17and_then_or_clearINtNtB4_3map3MapINtNtNtB8_5slice4iter4IterNtCsiHivYpkJ4Hu_2cc6ObjectENCNvMs4_B1M_NtB1M_5Build8assemble0ERNtNtCsaL1QbXo9JQH_3std4path4PathNvYB14_NtNtNtB6_6traits8iterator8Iterator4nextEB1M_.exit

_RINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters5chain17and_then_or_clearINtNtB4_3map3MapINtNtNtB8_5slice4iter4IterNtCsiHivYpkJ4Hu_2cc6ObjectENCNvMs4_B1M_NtB1M_5Build8assemble0ERNtNtCsaL1QbXo9JQH_3std4path4PathNvYB14_NtNtNtB6_6traits8iterator8Iterator4nextEB1M_.exit: ; preds = %bb.a, %bb.b, %bb.c
  %.sroa.3.0.i = phi i64 [ undef, %bb.a ], [ %i.d, %bb.c ], [ %i.d, %bb.b ]
  %.sroa.0.0.i = phi ptr [ null, %bb.a ], [ null, %bb.c ], [ %i.c, %bb.b ]
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = tail call { ptr, i64 } @_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsaL1QbXo9JQH_3std4path4PathE7or_elseNCNvXs_NtNtNtB5_4iter8adapters5chainINtB1v_5ChainINtNtB1x_3map3MapINtNtNtB5_5slice4iter4IterNtCsiHivYpkJ4Hu_2cc6ObjectENCNvMs4_B2U_NtB2U_5Build8assemble0EIB2c_IB2t_INtNtCs1xwejQucwHj_5alloc4sync3ArcBJ_EENvYB42_NtNtNtB5_3ops5deref5Deref5derefEENtNtNtB1z_6traits8iterator8Iterator4next0EB2U_(ptr %.sroa.0.0.i, i64 %.sroa.3.0.i, ptr nonnull align 8 %i.e) #29
  ret { ptr, i64 } %i.f
}

; Function Attrs: inlinehint nonlazybind uwtable
define void @_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters5chainINtB4_5ChainINtNtB6_6cloned6ClonedINtNtNtBa_5slice4iter4IterRNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str5OsStrEEINtNtB6_3map3MapIB1m_NtNtCs1xwejQucwHj_5alloc6string6StringEINvMsj_B1O_B1M_3newB2O_EEENtNtNtB8_6traits8iterator8Iterator9size_hintCsiHivYpkJ4Hu_2cc(ptr sret([24 x i8]) align 8 %0, ptr align 8 %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = load ptr, ptr %1, align 8
  %.not = icmp eq ptr %i.c, null
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.e = load ptr, ptr %i.d, align 8
  %.not6 = icmp eq ptr %i.e, null                 ; 2 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  br i1 %.not6, label %bb.h, label %bb.g

bb.c:                                             ; preds = %bb.a
  br i1 %.not6, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter4IterNtNtCs1xwejQucwHj_5alloc6string6StringEINvMsj_NtNtCsaL1QbXo9JQH_3std3ffi6os_strNtB26_5OsStr3newB1m_EENtNtNtB9_6traits8iterator8Iterator9size_hintCsiHivYpkJ4Hu_2cc(ptr sret([24 x i8]) align 8 %0, ptr nonnull align 8 %i.d) #29
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  store i64 0, ptr %0, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 1, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.g, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.g, %bb.h, %bb.e, %bb.d
  ret void

bb.g:                                             ; preds = %bb.b
  call void @_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtBa_5slice4iter4IterRNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str5OsStrEENtNtNtB8_6traits8iterator8Iterator9size_hintCsiHivYpkJ4Hu_2cc(ptr nonnull sret([24 x i8]) align 8 %i.b, ptr nonnull align 8 %1)
  %i.h = load i64, ptr %i.b, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.j = load i64, ptr %i.i, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.l = load i64, ptr %i.k, align 8              ; 2 uses
  call void @_RNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter4IterNtNtCs1xwejQucwHj_5alloc6string6StringEINvMsj_NtNtCsaL1QbXo9JQH_3std3ffi6os_strNtB26_5OsStr3newB1m_EENtNtNtB9_6traits8iterator8Iterator9size_hintCsiHivYpkJ4Hu_2cc(ptr nonnull sret([24 x i8]) align 8 %i.a, ptr nonnull align 8 %i.d) #29
  %i.m = load i64, ptr %i.a, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 16
end_hunk_1
