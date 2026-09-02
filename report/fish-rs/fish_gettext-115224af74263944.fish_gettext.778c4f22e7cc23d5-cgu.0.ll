Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/fish-rs/original/fish_gettext-115224af74263944.fish_gettext.778c4f22e7cc23d5-cgu.0?download=true
inline.NumInlined: 214
inline.NumDeleted: 138
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_RINvXs1i_NtCskt5MLIAl8nl_9hashbrown3mapINtB7_7HashMapNtCsaglNHct1YhZ_12fish_gettext27GettextLocalizationLanguageuNtNtNtCsaL1QbXo9JQH_3std4hash6random11RandomStateEINtNtNtNtCs3oUPovFnLWP_4core4iter6traits7collect6ExtendTBP_uEE6extendINtNtNtB2I_8adapters3map3MapIB3J_INtNtCs5HGUHib7p01_3phf3map7EntriesNtCslSwhfOFuxKz_17fish_localization8LanguageRINtB4i_3MapReB5I_EENCNCNvBR_19AVAILABLE_LANGUAGES00ENCINvXs8_NtB9_3setINtB6w_7HashSetBP_B1N_EIB2C_BP_E6extendB4a_E0EEBR_:bb.a
  %.sroa.0.0 = sub nuw i64 %i.i, %i.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @_RNvXs7_NtCs5HGUHib7p01_3phf3mapINtB5_7EntriesNtCslSwhfOFuxKz_17fish_localization8LanguageRINtB5_3MapReB1A_EENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator9size_hintCsaglNHct1YhZ_12fish_gettext(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.d)
  %i.k = load i64, ptr %i.c, align 8, !noundef !4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.0.1 = phi i64 [ %i.k, %bb.c ], [ %.sroa.0.0, %bb.b ]
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  call void @_RINvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB6_8RawTableTNtCsaglNHct1YhZ_12fish_gettext27GettextLocalizationLanguageuEE7reserveNCINvNtB8_3map11make_hasherBQ_uNtNtNtCsaL1QbXo9JQH_3std4hash6random11RandomStateE0EBS_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %.sroa.0.1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.l)
  call void @llvm.experimental.noalias.scope.decl(metadata !16)
  call void @llvm.experimental.noalias.scope.decl(metadata !19)
  call void @llvm.experimental.noalias.scope.decl(metadata !22)
  call void @llvm.experimental.noalias.scope.decl(metadata !25)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %2) ]
  %i.m = icmp eq ptr %1, %2
  br i1 %i.m, label %_RINvYINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapIB4_INtNtCs5HGUHib7p01_3phf3map7EntriesNtCslSwhfOFuxKz_17fish_localization8LanguageRINtBY_3MapReB2n_EENCNCNvCsaglNHct1YhZ_12fish_gettext19AVAILABLE_LANGUAGES00ENCINvXs8_NtCskt5MLIAl8nl_9hashbrown3setINtB3A_7HashSetNtB2B_27GettextLocalizationLanguageNtNtNtCsaL1QbXo9JQH_3std4hash6random11RandomStateEINtNtNtBa_6traits7collect6ExtendB4j_E6extendBR_E0ENtNtB5L_8iterator8Iterator8for_eachNCINvXs1i_NtB3C_3mapINtB7d_7HashMapB4j_uB4S_EIB5H_TB4j_uEE6extendB3_E0EB2B_.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  br label %bb.e

bb.e:                                             ; preds = %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldTRNtCslSwhfOFuxKz_17fish_localization8LanguageRRINtNtCs5HGUHib7p01_3phf3map3MapReB2b_EENtCsaglNHct1YhZ_12fish_gettext27GettextLocalizationLanguageuNCNCNvB2l_19AVAILABLE_LANGUAGES00NCIB2_B2j_TB2j_uEuNCINvXs8_NtCskt5MLIAl8nl_9hashbrown3setINtB4f_7HashSetB2j_NtNtNtCsaL1QbXo9JQH_3std4hash6random11RandomStateEINtNtNtB8_6traits7collect6ExtendB2j_E6extendINtB4_3MapINtB1J_7EntriesBW_B1F_EB3h_EE0NCINvNvNtNtB5V_8iterator8Iterator8for_each4callB3Y_NCINvXs1i_NtB4h_3mapINtB8b_7HashMapB2j_uB52_EIB5R_B3Y_E6extendIB6z_B6y_B46_EE0E0E0E0B2l_.exit.i.i.i.i, %.lr.ph.i.i.i.i
  %.sroa.0.011.i.i.i.i = phi ptr [ %1, %.lr.ph.i.i.i.i ], [ %i.q, %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldTRNtCslSwhfOFuxKz_17fish_localization8LanguageRRINtNtCs5HGUHib7p01_3phf3map3MapReB2b_EENtCsaglNHct1YhZ_12fish_gettext27GettextLocalizationLanguageuNCNCNvB2l_19AVAILABLE_LANGUAGES00NCIB2_B2j_TB2j_uEuNCINvXs8_NtCskt5MLIAl8nl_9hashbrown3setINtB4f_7HashSetB2j_NtNtNtCsaL1QbXo9JQH_3std4hash6random11RandomStateEINtNtNtB8_6traits7collect6ExtendB2j_E6extendINtB4_3MapINtB1J_7EntriesBW_B1F_EB3h_EE0NCINvNvNtNtB5V_8iterator8Iterator8for_each4callB3Y_NCINvXs1i_NtB4h_3mapINtB8b_7HashMapB2j_uB52_EIB5R_B3Y_E6extendIB6z_B6y_B46_EE0E0E0E0B2l_.exit.i.i.i.i ] ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.0.011.i.i.i.i, i64 24 ; 2 uses
  %.val4.i.i.i.i = load ptr, ptr %.sroa.0.011.i.i.i.i, align 8, !noalias !28, !nonnull !4, !noundef !4 ; 3 uses
  %i.r = getelementptr i8, ptr %.sroa.0.011.i.i.i.i, i64 8
  %.val5.i.i.i.i = load i64, ptr %i.r, align 8, !noalias !28, !noundef !4 ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !29)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !32
  store ptr %.val4.i.i.i.i, ptr %i.a, align 8, !noalias !39
  store i64 %.val5.i.i.i.i, ptr %i.n, align 8, !noalias !39
  %i.s = call noundef i64 @_RINvYNtNtNtCsaL1QbXo9JQH_3std4hash6random11RandomStateNtNtCs3oUPovFnLWP_4core4hash11BuildHasher8hash_oneRNtCsaglNHct1YhZ_12fish_gettext27GettextLocalizationLanguageEB1H_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.l, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.a) ; 2 uses
  call void @_RINvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB6_8RawTableTNtCsaglNHct1YhZ_12fish_gettext27GettextLocalizationLanguageuEE7reserveNCINvNtB8_3map11make_hasherBQ_uNtNtNtCsaL1QbXo9JQH_3std4hash6random11RandomStateE0EBS_(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %0, i64 noundef 1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.l), !noalias !41
  %.val.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %0, align 8, !alias.scope !44, !noalias !46, !nonnull !4, !noundef !4 ; 8 uses
  %.val5.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.o, align 8, !alias.scope !44, !noalias !46, !noundef !4 ; 4 uses
  %i.t = lshr i64 %i.s, 57
  %i.u = trunc nuw nsw i64 %i.t to i8             ; 3 uses
  %i.v = insertelement <16 x i8> poison, i8 %i.u, i64 0
  %i.w = shufflevector <16 x i8> %i.v, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.f

bb.f:                                             ; preds = %bb.h, %bb.e
  %.pn.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.s, %bb.e ], [ %i.ax, %bb.h ]
  %.sroa.4.0.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ undef, %bb.e ], [ %.sroa.4.125.i.i.i.i.i.i.i.i.i.i.i, %bb.h ]
  %.sroa.04.0.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ 0, %bb.e ], [ %.sroa.04.127.i.i.i.i.i.i.i.i.i.i.i, %bb.h ]
  %i.x = phi i64 [ 0, %bb.e ], [ %i.aw, %bb.h ]
  %.sroa.0.021.i.i.i.i.i.i.i.i.i.i.i = and i64 %.pn.i.i.i.i.i.i.i.i.i.i.i, %.val5.i.i.i.i.i.i.i.i.i.i ; 4 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i.i.i.i.i.i, i64 %.sroa.0.021.i.i.i.i.i.i.i.i.i.i.i
  %.sroa.0.0.copyload.i32.i.i.i.i.i.i.i.i.i.i.i = load <16 x i8>, ptr %i.y, align 1, !noalias !48 ; 3 uses
  %i.z = icmp eq <16 x i8> %.sroa.0.0.copyload.i32.i.i.i.i.i.i.i.i.i.i.i, %i.w
  %i.aa = bitcast <16 x i1> %i.z to i16           ; 2 uses
  %.not33.i.i.i.i.i.i.i.i.i.i.i = icmp eq i16 %i.aa, 0
  br i1 %.not33.i.i.i.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i:                     ; preds = %bb.f, %_RNCINvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB8_8RawTableTNtCsaglNHct1YhZ_12fish_gettext27GettextLocalizationLanguageuEE25find_or_find_insert_indexNCINvNtBa_3map14equivalent_keyBS_BS_uE0NCINvB2o_11make_hasherBS_uNtNtNtCsaL1QbXo9JQH_3std4hash6random11RandomStateE0E0BU_.exit.thread.i.i.i.i.i.i.i.i.i.i.i
  %.sroa.01.034.i.i.i.i.i.i.i.i.i.i.i = phi i16 [ %i.am, %_RNCINvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB8_8RawTableTNtCsaglNHct1YhZ_12fish_gettext27GettextLocalizationLanguageuEE25find_or_find_insert_indexNCINvNtBa_3map14equivalent_keyBS_BS_uE0NCINvB2o_11make_hasherBS_uNtNtNtCsaL1QbXo9JQH_3std4hash6random11RandomStateE0E0BU_.exit.thread.i.i.i.i.i.i.i.i.i.i.i ], [ %i.aa, %bb.f ] ; 3 uses
  %i.ab = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.01.034.i.i.i.i.i.i.i.i.i.i.i, i1 true)
  %i.ac = zext nneg i16 %i.ab to i64
  %i.ad = add i64 %.sroa.0.021.i.i.i.i.i.i.i.i.i.i.i, %i.ac
  %i.ae = and i64 %i.ad, %.val5.i.i.i.i.i.i.i.i.i.i
  %i.af = sub nsw i64 0, %i.ae
  %i.ag = getelementptr inbounds [16 x i8], ptr %.val.i.i.i.i.i.i.i.i.i.i, i64 %i.af ; 2 uses
  %i.ah = getelementptr i8, ptr %i.ag, i64 -8
  %.val3.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.ah, align 8, !noalias !51, !noundef !4
  %i.ai = icmp eq i64 %.val5.i.i.i.i, %.val3.i.i.i.i.i.i.i.i.i.i.i.i
  br i1 %i.ai, label %_RNCINvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB8_8RawTableTNtCsaglNHct1YhZ_12fish_gettext27GettextLocalizationLanguageuEE25find_or_find_insert_indexNCINvNtBa_3map14equivalent_keyBS_BS_uE0NCINvB2o_11make_hasherBS_uNtNtNtCsaL1QbXo9JQH_3std4hash6random11RandomStateE0E0BU_.exit.i.i.i.i.i.i.i.i.i.i.i, label %_RNCINvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB8_8RawTableTNtCsaglNHct1YhZ_12fish_gettext27GettextLocalizationLanguageuEE25find_or_find_insert_indexNCINvNtBa_3map14equivalent_keyBS_BS_uE0NCINvB2o_11make_hasherBS_uNtNtNtCsaL1QbXo9JQH_3std4hash6random11RandomStateE0E0BU_.exit.thread.i.i.i.i.i.i.i.i.i.i.i, !prof !54

_RNCINvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB8_8RawTableTNtCsaglNHct1YhZ_12fish_gettext27GettextLocalizationLanguageuEE25find_or_find_insert_indexNCINvNtBa_3map14equivalent_keyBS_BS_uE0NCINvB2o_11make_hasherBS_uNtNtNtCsaL1QbXo9JQH_3std4hash6random11RandomStateE0E0BU_.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i
  %i.aj = getelementptr inbounds i8, ptr %i.ag, i64 -16
  %.val2.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.aj, align 8, !noalias !51, !nonnull !4, !noundef !4
  %bcmp.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = call i32 @bcmp(ptr nonnull readonly %.val4.i.i.i.i, ptr nonnull readonly %.val2.i.i.i.i.i.i.i.i.i.i.i.i, i64 %.val5.i.i.i.i), !alias.scope !55, !noalias !51
  %i.ak = icmp eq i32 %bcmp.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.ak, label %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldTRNtCslSwhfOFuxKz_17fish_localization8LanguageRRINtNtCs5HGUHib7p01_3phf3map3MapReB2b_EENtCsaglNHct1YhZ_12fish_gettext27GettextLocalizationLanguageuNCNCNvB2l_19AVAILABLE_LANGUAGES00NCIB2_B2j_TB2j_uEuNCINvXs8_NtCskt5MLIAl8nl_9hashbrown3setINtB4f_7HashSetB2j_NtNtNtCsaL1QbXo9JQH_3std4hash6random11RandomStateEINtNtNtB8_6traits7collect6ExtendB2j_E6extendINtB4_3MapINtB1J_7EntriesBW_B1F_EB3h_EE0NCINvNvNtNtB5V_8iterator8Iterator8for_each4callB3Y_NCINvXs1i_NtB4h_3mapINtB8b_7HashMapB2j_uB52_EIB5R_B3Y_E6extendIB6z_B6y_B46_EE0E0E0E0B2l_.exit.i.i.i.i, label %_RNCINvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB8_8RawTableTNtCsaglNHct1YhZ_12fish_gettext27GettextLocalizationLanguageuEE25find_or_find_insert_indexNCINvNtBa_3map14equivalent_keyBS_BS_uE0NCINvB2o_11make_hasherBS_uNtNtNtCsaL1QbXo9JQH_3std4hash6random11RandomStateE0E0BU_.exit.thread.i.i.i.i.i.i.i.i.i.i.i, !prof !59

._crit_edge.i.i.i.i.i.i.i.i.i.i.i:                ; preds = %_RNCINvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB8_8RawTableTNtCsaglNHct1YhZ_12fish_gettext27GettextLocalizationLanguageuEE25find_or_find_insert_indexNCINvNtBa_3map14equivalent_keyBS_BS_uE0NCINvB2o_11make_hasherBS_uNtNtNtCsaL1QbXo9JQH_3std4hash6random11RandomStateE0E0BU_.exit.thread.i.i.i.i.i.i.i.i.i.i.i, %bb.f
  %.not12.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %.sroa.04.0.i.i.i.i.i.i.i.i.i.i.i, 1
  br i1 %.not12.i.i.i.i.i.i.i.i.i.i.i, label %.thread.i.i.i.i.i.i.i.i.i.i.i, label %bb.g, !prof !8

_RNCINvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB8_8RawTableTNtCsaglNHct1YhZ_12fish_gettext27GettextLocalizationLanguageuEE25find_or_find_insert_indexNCINvNtBa_3map14equivalent_keyBS_BS_uE0NCINvB2o_11make_hasherBS_uNtNtNtCsaL1QbXo9JQH_3std4hash6random11RandomStateE0E0BU_.exit.thread.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_RNCINvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB8_8RawTableTNtCsaglNHct1YhZ_12fish_gettext27GettextLocalizationLanguageuEE25find_or_find_insert_indexNCINvNtBa_3map14equivalent_keyBS_BS_uE0NCINvB2o_11make_hasherBS_uNtNtNtCsaL1QbXo9JQH_3std4hash6random11RandomStateE0E0BU_.exit.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i
  %i.al = add i16 %.sroa.01.034.i.i.i.i.i.i.i.i.i.i.i, -1
  %i.am = and i16 %i.al, %.sroa.01.034.i.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq i16 %i.am, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i

bb.g:                                             ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i.i
  %i.an = icmp slt <16 x i8> %.sroa.0.0.copyload.i32.i.i.i.i.i.i.i.i.i.i.i, zeroinitializer
  %i.ao = bitcast <16 x i1> %i.an to i16          ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i16 %i.ao, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.h, label %.thread29.i.i.i.i.i.i.i.i.i.i.i, !prof !8

.thread29.i.i.i.i.i.i.i.i.i.i.i:                  ; preds = %bb.g
  %i.ap = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.ao, i1 true)
  %i.aq = zext nneg i16 %i.ap to i64
  %i.ar = add i64 %.sroa.0.021.i.i.i.i.i.i.i.i.i.i.i, %i.aq
  %i.as = and i64 %i.ar, %.val5.i.i.i.i.i.i.i.i.i.i
  br label %.thread.i.i.i.i.i.i.i.i.i.i.i

.thread.i.i.i.i.i.i.i.i.i.i.i:                    ; preds = %.thread29.i.i.i.i.i.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i.i.i.i.i.i
  %.sroa.4.126.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.as, %.thread29.i.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.4.0.i.i.i.i.i.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.at = icmp eq <16 x i8> %.sroa.0.0.copyload.i32.i.i.i.i.i.i.i.i.i.i.i, splat (i8 -1)
  %i.au = bitcast <16 x i1> %i.at to i16
  %i.av = icmp eq i16 %i.au, 0
  br i1 %i.av, label %bb.h, label %bb.i, !prof !8

bb.h:                                             ; preds = %.thread.i.i.i.i.i.i.i.i.i.i.i, %bb.g
  %.sroa.04.127.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ 1, %.thread.i.i.i.i.i.i.i.i.i.i.i ], [ 0, %bb.g ]
  %.sroa.4.125.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %.sroa.4.126.i.i.i.i.i.i.i.i.i.i.i, %.thread.i.i.i.i.i.i.i.i.i.i.i ], [ undef, %bb.g ]
  %i.aw = add i64 %i.x, 16                        ; 2 uses
  %i.ax = add i64 %i.aw, %.sroa.0.021.i.i.i.i.i.i.i.i.i.i.i
  br label %bb.f

bb.i:                                             ; preds = %.thread.i.i.i.i.i.i.i.i.i.i.i
  %i.ay = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i.i.i.i.i.i, i64 %.sroa.4.126.i.i.i.i.i.i.i.i.i.i.i
  %i.az = load i8, ptr %i.ay, align 1, !noalias !41, !noundef !4 ; 2 uses
  %i.ba = icmp sgt i8 %i.az, -1
  br i1 %i.ba, label %bb.j, label %bb.k, !prof !8

bb.j:                                             ; preds = %bb.i
  %.val62.i.i.i.i.i.i.i.i.i.i.i.i = load <16 x i8>, ptr %.val.i.i.i.i.i.i.i.i.i.i, align 16, !noalias !41
  %i.bb = icmp slt <16 x i8> %.val62.i.i.i.i.i.i.i.i.i.i.i.i, zeroinitializer
  %i.bc = bitcast <16 x i1> %i.bb to i16          ; 2 uses
  %.not.i23.i.i.i.i.i.i.i.i.i.i.i = icmp ne i16 %i.bc, 0
  %i.bd = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.bc, i1 true)
  %i.be = zext nneg i16 %i.bd to i64              ; 2 uses
  call void @llvm.assume(i1 %.not.i23.i.i.i.i.i.i.i.i.i.i.i)
  %.phi.trans.insert.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i.i.i.i.i.i, i64 %i.be
  %.pre.i.i.i.i.i.i.i.i.i = load i8, ptr %.phi.trans.insert.i.i.i.i.i.i.i.i.i, align 1, !noalias !60
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.bf = phi i8 [ %.pre.i.i.i.i.i.i.i.i.i, %bb.j ], [ %i.az, %bb.i ]
  %.sroa.3.0.i.ph.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.be, %bb.j ], [ %.sroa.4.126.i.i.i.i.i.i.i.i.i.i.i, %bb.i ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !64)
  %i.bg = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i.i.i.i.i.i, i64 %.sroa.3.0.i.ph.i.i.i.i.i.i.i.i.i.i
  %i.bh = and i8 %i.bf, 1
  %i.bi = zext nneg i8 %i.bh to i64
  %i.bj = add i64 %.sroa.3.0.i.ph.i.i.i.i.i.i.i.i.i.i, -16
  %i.bk = and i64 %i.bj, %.val5.i.i.i.i.i.i.i.i.i.i
  store i8 %i.u, ptr %i.bg, align 1, !noalias !60
  %i.bl = getelementptr i8, ptr %.val.i.i.i.i.i.i.i.i.i.i, i64 %i.bk
  %i.bm = getelementptr i8, ptr %i.bl, i64 16
  store i8 %i.u, ptr %i.bm, align 1, !noalias !60
  %i.bn = load <2 x i64>, ptr %i.p, align 8, !alias.scope !65, !noalias !66
  %i.bo = insertelement <2 x i64> <i64 poison, i64 -1>, i64 %i.bi, i64 0
  %i.bp = sub <2 x i64> %i.bn, %i.bo
  store <2 x i64> %i.bp, ptr %i.p, align 8, !alias.scope !65, !noalias !66
  %i.bq = sub nsw i64 0, %.sroa.3.0.i.ph.i.i.i.i.i.i.i.i.i.i
  %i.br = getelementptr inbounds [16 x i8], ptr %.val.i.i.i.i.i.i.i.i.i.i, i64 %i.bq ; 2 uses
  %i.bs = getelementptr inbounds i8, ptr %i.br, i64 -16
  store ptr %.val4.i.i.i.i, ptr %i.bs, align 8, !noalias !60
  %i.bt = getelementptr inbounds i8, ptr %i.br, i64 -8
  store i64 %.val5.i.i.i.i, ptr %i.bt, align 8, !noalias !64
  br label %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldTRNtCslSwhfOFuxKz_17fish_localization8LanguageRRINtNtCs5HGUHib7p01_3phf3map3MapReB2b_EENtCsaglNHct1YhZ_12fish_gettext27GettextLocalizationLanguageuNCNCNvB2l_19AVAILABLE_LANGUAGES00NCIB2_B2j_TB2j_uEuNCINvXs8_NtCskt5MLIAl8nl_9hashbrown3setINtB4f_7HashSetB2j_NtNtNtCsaL1QbXo9JQH_3std4hash6random11RandomStateEINtNtNtB8_6traits7collect6ExtendB2j_E6extendINtB4_3MapINtB1J_7EntriesBW_B1F_EB3h_EE0NCINvNvNtNtB5V_8iterator8Iterator8for_each4callB3Y_NCINvXs1i_NtB4h_3mapINtB8b_7HashMapB2j_uB52_EIB5R_B3Y_E6extendIB6z_B6y_B46_EE0E0E0E0B2l_.exit.i.i.i.i

_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldTRNtCslSwhfOFuxKz_17fish_localization8LanguageRRINtNtCs5HGUHib7p01_3phf3map3MapReB2b_EENtCsaglNHct1YhZ_12fish_gettext27GettextLocalizationLanguageuNCNCNvB2l_19AVAILABLE_LANGUAGES00NCIB2_B2j_TB2j_uEuNCINvXs8_NtCskt5MLIAl8nl_9hashbrown3setINtB4f_7HashSetB2j_NtNtNtCsaL1QbXo9JQH_3std4hash6random11RandomStateEINtNtNtB8_6traits7collect6ExtendB2j_E6extendINtB4_3MapINtB1J_7EntriesBW_B1F_EB3h_EE0NCINvNvNtNtB5V_8iterator8Iterator8for_each4callB3Y_NCINvXs1i_NtB4h_3mapINtB8b_7HashMapB2j_uB52_EIB5R_B3Y_E6extendIB6z_B6y_B46_EE0E0E0E0B2l_.exit.i.i.i.i: ; preds = %_RNCINvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB8_8RawTableTNtCsaglNHct1YhZ_12fish_gettext27GettextLocalizationLanguageuEE25find_or_find_insert_indexNCINvNtBa_3map14equivalent_keyBS_BS_uE0NCINvB2o_11make_hasherBS_uNtNtNtCsaL1QbXo9JQH_3std4hash6random11RandomStateE0E0BU_.exit.i.i.i.i.i.i.i.i.i.i.i, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !32
  %i.bu = icmp eq ptr %i.q, %2
  br i1 %i.bu, label %_RINvYINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapIB4_INtNtCs5HGUHib7p01_3phf3map7EntriesNtCslSwhfOFuxKz_17fish_localization8LanguageRINtBY_3MapReB2n_EENCNCNvCsaglNHct1YhZ_12fish_gettext19AVAILABLE_LANGUAGES00ENCINvXs8_NtCskt5MLIAl8nl_9hashbrown3setINtB3A_7HashSetNtB2B_27GettextLocalizationLanguageNtNtNtCsaL1QbXo9JQH_3std4hash6random11RandomStateEINtNtNtBa_6traits7collect6ExtendB4j_E6extendBR_E0ENtNtB5L_8iterator8Iterator8for_eachNCINvXs1i_NtB3C_3mapINtB7d_7HashMapB4j_uB4S_EIB5H_TB4j_uEE6extendB3_E0EB2B_.exit, label %bb.e

_RINvYINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapIB4_INtNtCs5HGUHib7p01_3phf3map7EntriesNtCslSwhfOFuxKz_17fish_localization8LanguageRINtBY_3MapReB2n_EENCNCNvCsaglNHct1YhZ_12fish_gettext19AVAILABLE_LANGUAGES00ENCINvXs8_NtCskt5MLIAl8nl_9hashbrown3setINtB3A_7HashSetNtB2B_27GettextLocalizationLanguageNtNtNtCsaL1QbXo9JQH_3std4hash6random11RandomStateEINtNtNtBa_6traits7collect6ExtendB4j_E6extendBR_E0ENtNtB5L_8iterator8Iterator8for_eachNCINvXs1i_NtB3C_3mapINtB7d_7HashMapB4j_uB4S_EIB5H_TB4j_uEE6extendB3_E0EB2B_.exit: ; preds = %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldTRNtCslSwhfOFuxKz_17fish_localization8LanguageRRINtNtCs5HGUHib7p01_3phf3map3MapReB2b_EENtCsaglNHct1YhZ_12fish_gettext27GettextLocalizationLanguageuNCNCNvB2l_19AVAILABLE_LANGUAGES00NCIB2_B2j_TB2j_uEuNCINvXs8_NtCskt5MLIAl8nl_9hashbrown3setINtB4f_7HashSetB2j_NtNtNtCsaL1QbXo9JQH_3std4hash6random11RandomStateEINtNtNtB8_6traits7collect6ExtendB2j_E6extendINtB4_3MapINtB1J_7EntriesBW_B1F_EB3h_EE0NCINvNvNtNtB5V_8iterator8Iterator8for_each4callB3Y_NCINvXs1i_NtB4h_3mapINtB8b_7HashMapB2j_uB52_EIB5R_B3Y_E6extendIB6z_B6y_B46_EE0E0E0E0B2l_.exit.i.i.i.i, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs2_CslSwhfOFuxKz_17fish_localizationNtB6_8LanguageNtCs77aWKNvxMmo_10phf_shared7PhfHash8phf_hashNtNtCs4gXUGq9oE06_9siphasher6sip12811SipHasher13ECsaglNHct1YhZ_12fish_gettext(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(72) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !4, !noundef !4 ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8, !noundef !4 ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !67)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !70)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !72)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !75)
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !77, !noalias !78, !noundef !4 ; 2 uses
  %i.f = add i64 %i.e, %i.c                       ; 2 uses
  %i.g = icmp ult i64 %i.f, %i.e
  br i1 %i.g, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i64 %i.f, ptr %i.d, align 8, !alias.scope !77, !noalias !78
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 3 uses
  %i.i = load i64, ptr %i.h, align 8, !alias.scope !77, !noalias !78, !noundef !4 ; 6 uses
  %i.j = icmp eq i64 %i.i, 0
  br i1 %i.j, label %bb.e, label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const24panic_const_add_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @23) #20, !noalias !79
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.k = sub nuw i64 8, %i.i                      ; 3 uses
  %i.l = icmp ugt i64 %i.i, 8
  br i1 %i.l, label %bb.l, label %bb.f

bb.e:                                             ; preds = %bb.p, %bb.b
  %.sroa.0.0.i.i = phi i64 [ 0, %bb.b ], [ %i.k, %bb.p ] ; 4 uses
  %i.m = sub nsw i64 %i.c, %.sroa.0.0.i.i         ; 2 uses
  %i.n = and i64 %i.m, 7                          ; 4 uses
  %i.o = and i64 %i.m, -8                         ; 2 uses
  %i.p = icmp ult i64 %.sroa.0.0.i.i, %i.o
  br i1 %i.p, label %.lr.ph.i.i, label %bb.r

.lr.ph.i.i:                                       ; preds = %bb.e
  %.promoted.i.i = load i64, ptr %1, align 8, !alias.scope !77, !noalias !78
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %.promoted23.i.i = load i64, ptr %i.q, align 8, !alias.scope !77, !noalias !78
  %.promoted24.i.i = load i64, ptr %i.r, align 8, !alias.scope !80, !noalias !78
  %.promoted26.i.i = load i64, ptr %i.s, align 8, !alias.scope !80, !noalias !78
  br label %bb.ab

bb.f:                                             ; preds = %bb.d
  %..i.i.i = tail call noundef range(i64 0, -9223372036854775808) i64 @llvm.umin.i64(i64 range(i64 9, 8) %i.k, i64 range(i64 0, -9223372036854775808) %i.c) ; 3 uses
  %i.t = icmp samesign ugt i64 %..i.i.i, 3
  br i1 %i.t, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %.sroa.014.0.copyload.i.i.i = load i32, ptr %i.a, align 1, !alias.scope !83, !noalias !77
  %i.u = zext i32 %.sroa.014.0.copyload.i.i.i to i64
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.sroa.03.0.i.i.i = phi i64 [ 4, %bb.g ], [ 0, %bb.f ] ; 5 uses
  %.sroa.0.0.i.i.i = phi i64 [ %i.u, %bb.g ], [ 0, %bb.f ] ; 2 uses
  %i.v = or disjoint i64 %.sroa.03.0.i.i.i, 1
  %i.w = icmp samesign ult i64 %i.v, %..i.i.i
  br i1 %i.w, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.03.0.i.i.i
  %.sroa.015.0.copyload.i.i.i = load i16, ptr %i.x, align 1, !alias.scope !83, !noalias !77
  %i.y = zext i16 %.sroa.015.0.copyload.i.i.i to i64
  %i.z = shl nuw nsw i64 %.sroa.03.0.i.i.i, 3
  %i.aa = or disjoint i64 %.sroa.03.0.i.i.i, 2
  %i.ab = shl nuw nsw i64 %i.y, %i.z
  %i.ac = or i64 %i.ab, %.sroa.0.0.i.i.i
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.sroa.03.1.i.i.i = phi i64 [ %i.aa, %bb.i ], [ %.sroa.03.0.i.i.i, %bb.h ] ; 3 uses
  %.sroa.0.1.i.i.i = phi i64 [ %i.ac, %bb.i ], [ %.sroa.0.0.i.i.i, %bb.h ] ; 2 uses
  %i.ad = icmp samesign ult i64 %.sroa.03.1.i.i.i, %..i.i.i
  br i1 %i.ad, label %bb.k, label %bb.m

bb.k:                                             ; preds = %bb.j
  %i.ae = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.03.1.i.i.i
  %i.af = load i8, ptr %i.ae, align 1, !alias.scope !83, !noalias !77, !noundef !4
  %i.ag = zext i8 %i.af to i64
  %i.ah = shl nuw nsw i64 %.sroa.03.1.i.i.i, 3
  %i.ai = shl nuw nsw i64 %i.ag, %i.ah
  %i.aj = or i64 %i.ai, %.sroa.0.1.i.i.i
  br label %bb.m

bb.l:                                             ; preds = %bb.d
  tail call void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const24panic_const_sub_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @24) #20, !noalias !79
  unreachable

bb.m:                                             ; preds = %bb.k, %bb.j
  %.sroa.0.2.i.i.i = phi i64 [ %i.aj, %bb.k ], [ %.sroa.0.1.i.i.i, %bb.j ]
  %.not.i.i = icmp eq i64 %i.i, 8
  br i1 %.not.i.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ak = shl nuw nsw i64 %i.i, 3
  %i.al = shl i64 %.sroa.0.2.i.i.i, %i.ak
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.an = load i64, ptr %i.am, align 8, !alias.scope !77, !noalias !78, !noundef !4
  %i.ao = or i64 %i.an, %i.al                     ; 3 uses
  store i64 %i.ao, ptr %i.am, align 8, !alias.scope !77, !noalias !78
  %i.ap = icmp samesign ult i64 %i.c, %i.k
  br i1 %i.ap, label %bb.q, label %bb.p

bb.o:                                             ; preds = %bb.m
  tail call void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const24panic_const_shl_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @25) #20, !noalias !79
  unreachable

bb.p:                                             ; preds = %bb.n
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.ar = load i64, ptr %i.aq, align 8, !alias.scope !77, !noalias !78, !noundef !4
  %i.as = xor i64 %i.ar, %i.ao                    ; 3 uses
  %i.at = load i64, ptr %1, align 8, !alias.scope !86, !noalias !78, !noundef !4
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.av = load i64, ptr %i.au, align 8, !alias.scope !86, !noalias !78, !noundef !4 ; 3 uses
  %i.aw = add i64 %i.av, %i.at                    ; 3 uses
  %i.ax = tail call noundef i64 @llvm.fshl.i64(i64 %i.av, i64 %i.av, i64 13)
  %i.ay = xor i64 %i.ax, %i.aw                    ; 3 uses
  %i.az = tail call noundef i64 @llvm.fshl.i64(i64 %i.aw, i64 %i.aw, i64 32)
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.bb = load i64, ptr %i.ba, align 8, !alias.scope !86, !noalias !78, !noundef !4
  %i.bc = add i64 %i.bb, %i.as                    ; 2 uses
  %i.bd = tail call noundef i64 @llvm.fshl.i64(i64 %i.as, i64 %i.as, i64 16)
  %i.be = xor i64 %i.bc, %i.bd                    ; 3 uses
  %i.bf = add i64 %i.be, %i.az                    ; 2 uses
  %i.bg = tail call noundef i64 @llvm.fshl.i64(i64 %i.be, i64 %i.be, i64 21)
  %i.bh = xor i64 %i.bg, %i.bf
  store i64 %i.bh, ptr %i.aq, align 8, !alias.scope !86, !noalias !78
  %i.bi = add i64 %i.bc, %i.ay                    ; 3 uses
  %i.bj = tail call noundef i64 @llvm.fshl.i64(i64 %i.ay, i64 %i.ay, i64 17)
  %i.bk = xor i64 %i.bi, %i.bj
  store i64 %i.bk, ptr %i.au, align 8, !alias.scope !86, !noalias !78
  %i.bl = tail call noundef i64 @llvm.fshl.i64(i64 %i.bi, i64 %i.bi, i64 32)
  store i64 %i.bl, ptr %i.ba, align 8, !alias.scope !86, !noalias !78
  %i.bm = xor i64 %i.bf, %i.ao
  store i64 %i.bm, ptr %1, align 8, !alias.scope !77, !noalias !78
  store i64 0, ptr %i.h, align 8, !alias.scope !77, !noalias !78
  br label %bb.e

bb.q:                                             ; preds = %bb.n
  %i.bn = add nuw nsw i64 %i.i, %i.c
  br label %_RNvXsb_NtCs4gXUGq9oE06_9siphasher6sip128NtB5_11SipHasher13NtNtCs3oUPovFnLWP_4core4hash6Hasher5write.exit

._crit_edge.i.i:                                  ; preds = %bb.ab
  store i64 %i.db, ptr %i.q, align 8, !alias.scope !77, !noalias !78
  store i64 %i.de, ptr %i.r, align 8, !alias.scope !80, !noalias !78
  store i64 %i.df, ptr %i.s, align 8, !alias.scope !80, !noalias !78
  store i64 %i.dg, ptr %1, align 8, !alias.scope !77, !noalias !78
  br label %bb.r

bb.r:                                             ; preds = %._crit_edge.i.i, %bb.e
  %.sroa.0.1.lcssa.i.i = phi i64 [ %i.dh, %._crit_edge.i.i ], [ %.sroa.0.0.i.i, %bb.e ] ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !89)
  %i.bo = icmp samesign ugt i64 %i.n, 3
  br i1 %i.bo, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.bp = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.0.1.lcssa.i.i
  %.sroa.014.0.copyload.i20.i.i = load i32, ptr %i.bp, align 1, !alias.scope !92, !noalias !77
  %i.bq = zext i32 %.sroa.014.0.copyload.i20.i.i to i64
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %.sroa.03.0.i14.i.i = phi i64 [ 4, %bb.s ], [ 0, %bb.r ] ; 5 uses
  %.sroa.0.0.i15.i.i = phi i64 [ %i.bq, %bb.s ], [ 0, %bb.r ] ; 2 uses
  %i.br = or disjoint i64 %.sroa.03.0.i14.i.i, 1
  %i.bs = icmp samesign ult i64 %i.br, %i.n
  br i1 %i.bs, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.bt = add i64 %.sroa.03.0.i14.i.i, %.sroa.0.1.lcssa.i.i ; 2 uses
  %i.bu = icmp ult i64 %i.bt, %.sroa.0.1.lcssa.i.i
  br i1 %i.bu, label %bb.x, label %bb.w

bb.v:                                             ; preds = %bb.w, %bb.t
  %.sroa.03.1.i16.i.i = phi i64 [ %i.bz, %bb.w ], [ %.sroa.03.0.i14.i.i, %bb.t ] ; 3 uses
  %.sroa.0.1.i17.i.i = phi i64 [ %i.cb, %bb.w ], [ %.sroa.0.0.i15.i.i, %bb.t ] ; 2 uses
  %i.bv = icmp samesign ult i64 %.sroa.03.1.i16.i.i, %i.n
  br i1 %i.bv, label %bb.y, label %_RNvNtCs4gXUGq9oE06_9siphasher6common9u8to64_le.exit21.i.i

bb.w:                                             ; preds = %bb.u
  %i.bw = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.bt
  %.sroa.015.0.copyload.i19.i.i = load i16, ptr %i.bw, align 1, !alias.scope !92, !noalias !77
  %i.bx = zext i16 %.sroa.015.0.copyload.i19.i.i to i64
  %i.by = shl nuw nsw i64 %.sroa.03.0.i14.i.i, 3
  %i.bz = or disjoint i64 %.sroa.03.0.i14.i.i, 2
  %i.ca = shl nuw nsw i64 %i.bx, %i.by
  %i.cb = or i64 %i.ca, %.sroa.0.0.i15.i.i
  br label %bb.v

bb.x:                                             ; preds = %bb.u
  tail call void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const24panic_const_add_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @19) #20, !noalias !93
  unreachable

bb.y:                                             ; preds = %bb.v
  %i.cc = add i64 %.sroa.03.1.i16.i.i, %.sroa.0.1.lcssa.i.i ; 3 uses
  %i.cd = icmp ult i64 %i.cc, %.sroa.0.1.lcssa.i.i
  br i1 %i.cd, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.ce = icmp ult i64 %i.cc, %i.c
  tail call void @llvm.assume(i1 %i.ce)
  %i.cf = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.cc
  %i.cg = load i8, ptr %i.cf, align 1, !alias.scope !92, !noalias !77, !noundef !4
  %i.ch = zext i8 %i.cg to i64
  %i.ci = shl nuw nsw i64 %.sroa.03.1.i16.i.i, 3
  %i.cj = shl nuw nsw i64 %i.ch, %i.ci
  %i.ck = or i64 %i.cj, %.sroa.0.1.i17.i.i
  br label %_RNvNtCs4gXUGq9oE06_9siphasher6common9u8to64_le.exit21.i.i

bb.aa:                                            ; preds = %bb.y
  tail call void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const24panic_const_add_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @20) #20, !noalias !93
  unreachable

_RNvNtCs4gXUGq9oE06_9siphasher6common9u8to64_le.exit21.i.i: ; preds = %bb.z, %bb.v
  %.sroa.0.2.i18.i.i = phi i64 [ %i.ck, %bb.z ], [ %.sroa.0.1.i17.i.i, %bb.v ]
  %i.cl = getelementptr inbounds nuw i8, ptr %1, i64 56
  store i64 %.sroa.0.2.i18.i.i, ptr %i.cl, align 8, !alias.scope !77, !noalias !78
  br label %_RNvXsb_NtCs4gXUGq9oE06_9siphasher6sip128NtB5_11SipHasher13NtNtCs3oUPovFnLWP_4core4hash6Hasher5write.exit

bb.ab:                                            ; preds = %bb.ab, %.lr.ph.i.i
  %i.cm = phi i64 [ %.promoted26.i.i, %.lr.ph.i.i ], [ %i.df, %bb.ab ]
  %i.cn = phi i64 [ %.promoted24.i.i, %.lr.ph.i.i ], [ %i.de, %bb.ab ] ; 3 uses
  %i.co = phi i64 [ %.promoted23.i.i, %.lr.ph.i.i ], [ %i.db, %bb.ab ]
  %.sroa.0.122.i.i = phi i64 [ %.sroa.0.0.i.i, %.lr.ph.i.i ], [ %i.dh, %bb.ab ] ; 2 uses
  %i.cp = phi i64 [ %.promoted.i.i, %.lr.ph.i.i ], [ %i.dg, %bb.ab ]
  %i.cq = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.0.122.i.i
  %.sroa.07.0.copyload.i.i = load i64, ptr %i.cq, align 1, !alias.scope !78, !noalias !77 ; 2 uses
  %i.cr = xor i64 %.sroa.07.0.copyload.i.i, %i.co ; 3 uses
  %i.cs = add i64 %i.cp, %i.cn                    ; 3 uses
  %i.ct = tail call noundef i64 @llvm.fshl.i64(i64 %i.cn, i64 %i.cn, i64 13)
  %i.cu = xor i64 %i.cs, %i.ct                    ; 3 uses
  %i.cv = tail call noundef i64 @llvm.fshl.i64(i64 %i.cs, i64 %i.cs, i64 32)
  %i.cw = add i64 %i.cr, %i.cm                    ; 2 uses
  %i.cx = tail call noundef i64 @llvm.fshl.i64(i64 %i.cr, i64 %i.cr, i64 16)
  %i.cy = xor i64 %i.cw, %i.cx                    ; 3 uses
  %i.cz = add i64 %i.cy, %i.cv                    ; 2 uses
  %i.da = tail call noundef i64 @llvm.fshl.i64(i64 %i.cy, i64 %i.cy, i64 21)
  %i.db = xor i64 %i.da, %i.cz                    ; 2 uses
  %i.dc = add i64 %i.cw, %i.cu                    ; 3 uses
  %i.dd = tail call noundef i64 @llvm.fshl.i64(i64 %i.cu, i64 %i.cu, i64 17)
  %i.de = xor i64 %i.dc, %i.dd                    ; 2 uses
  %i.df = tail call noundef i64 @llvm.fshl.i64(i64 %i.dc, i64 %i.dc, i64 32) ; 2 uses
  %i.dg = xor i64 %i.cz, %.sroa.07.0.copyload.i.i ; 2 uses
  %i.dh = add nuw i64 %.sroa.0.122.i.i, 8         ; 3 uses
  %i.di = icmp ult i64 %i.dh, %i.o
  br i1 %i.di, label %bb.ab, label %._crit_edge.i.i

_RNvXsb_NtCs4gXUGq9oE06_9siphasher6sip128NtB5_11SipHasher13NtNtCs3oUPovFnLWP_4core4hash6Hasher5write.exit: ; preds = %bb.q, %_RNvNtCs4gXUGq9oE06_9siphasher6common9u8to64_le.exit21.i.i
  %storemerge.i.i = phi i64 [ %i.n, %_RNvNtCs4gXUGq9oE06_9siphasher6common9u8to64_le.exit21.i.i ], [ %i.bn, %bb.q ]
  store i64 %storemerge.i.i, ptr %i.h, align 8, !alias.scope !77, !noalias !78
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define hidden noundef i64 @_RINvYNtNtNtCsaL1QbXo9JQH_3std4hash6random11RandomStateNtNtCs3oUPovFnLWP_4core4hash11BuildHasher8hash_oneRNtCsaglNHct1YhZ_12fish_gettext27GettextLocalizationLanguageEB1H_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [1 x i8], align 1                 ; 4 uses
  %i.b = alloca [72 x i8], align 16               ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %.sroa.48.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.59.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %.sroa.610.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %.sroa.711.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.c = load <2 x i64>, ptr %0, align 8          ; 3 uses
  %i.d = shufflevector <2 x i64> %i.c, <2 x i64> poison, <2 x i32> zeroinitializer
  %i.e = xor <2 x i64> %i.d, <i64 8317987319222330741, i64 7816392313619706465>
  store <2 x i64> %i.e, ptr %i.b, align 16, !alias.scope !94
  %i.f = shufflevector <2 x i64> %i.c, <2 x i64> poison, <2 x i32> <i32 1, i32 1>
  %i.g = xor <2 x i64> %i.f, <i64 7237128888997146477, i64 8387220255154660723>
  store <2 x i64> %i.g, ptr %.sroa.59.0..sroa_idx.i, align 16, !alias.scope !94
  store <2 x i64> %i.c, ptr %.sroa.711.0..sroa_idx.i, align 16, !alias.scope !94
  %.sroa.913.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 48 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %.sroa.913.0..sroa_idx.i, i8 0, i64 24, i1 false), !alias.scope !94
  %.val.i = load ptr, ptr %1, align 8, !noalias !97, !nonnull !4, !noundef !4
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val1.i = load i64, ptr %i.h, align 8, !noalias !97, !noundef !4
  call fastcc void @_RNvXs3_NtNtCs3oUPovFnLWP_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsaglNHct1YhZ_12fish_gettext(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.val.i, i64 noundef %.val1.i) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !100
  store i8 -1, ptr %i.a, align 1, !noalias !100
  call fastcc void @_RNvXs3_NtNtCs3oUPovFnLWP_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsaglNHct1YhZ_12fish_gettext(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.a, i64 noundef 1) #21, !noalias !109
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !100
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.b, align 16, !alias.scope !110
  %.sroa.10.0.copyload.i.i = load i64, ptr %.sroa.48.0..sroa_idx.i, align 8, !alias.scope !110
  %.sroa.17.0.copyload.i.i = load i64, ptr %.sroa.59.0..sroa_idx.i, align 16, !alias.scope !110 ; 3 uses
  %.sroa.22.0.copyload.i.i = load i64, ptr %.sroa.610.0..sroa_idx.i, align 8, !alias.scope !110
  %i.i = load i64, ptr %.sroa.913.0..sroa_idx.i, align 16, !alias.scope !110, !noundef !4
  %i.j = shl i64 %i.i, 56
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.l = load i64, ptr %i.k, align 8, !alias.scope !110, !noundef !4
  %i.m = or i64 %i.j, %i.l                        ; 2 uses
  %i.n = xor i64 %i.m, %.sroa.22.0.copyload.i.i   ; 3 uses
  %i.o = add i64 %.sroa.17.0.copyload.i.i, %.sroa.0.0.copyload.i.i ; 3 uses
  %i.p = add i64 %i.n, %.sroa.10.0.copyload.i.i   ; 2 uses
  %i.q = tail call noundef i64 @llvm.fshl.i64(i64 %.sroa.17.0.copyload.i.i, i64 %.sroa.17.0.copyload.i.i, i64 13)
  %i.r = xor i64 %i.q, %i.o                       ; 3 uses
  %i.s = tail call noundef i64 @llvm.fshl.i64(i64 %i.n, i64 %i.n, i64 16)
  %i.t = xor i64 %i.s, %i.p                       ; 3 uses
  %i.u = tail call noundef i64 @llvm.fshl.i64(i64 %i.o, i64 %i.o, i64 32)
  %i.v = add i64 %i.p, %i.r                       ; 3 uses
  %i.w = add i64 %i.t, %i.u                       ; 2 uses
  %i.x = tail call noundef i64 @llvm.fshl.i64(i64 %i.r, i64 %i.r, i64 17)
  %i.y = xor i64 %i.v, %i.x                       ; 3 uses
  %i.z = tail call noundef i64 @llvm.fshl.i64(i64 %i.t, i64 %i.t, i64 21)
  %i.aa = xor i64 %i.z, %i.w                      ; 3 uses
  %i.ab = tail call noundef i64 @llvm.fshl.i64(i64 %i.v, i64 %i.v, i64 32)
  %i.ac = xor i64 %i.w, %i.m
  %i.ad = xor i64 %i.ab, 255
  %i.ae = add i64 %i.ac, %i.y                     ; 3 uses
  %i.af = add i64 %i.aa, %i.ad                    ; 2 uses
  %i.ag = tail call noundef i64 @llvm.fshl.i64(i64 %i.y, i64 %i.y, i64 13)
  %i.ah = xor i64 %i.ae, %i.ag                    ; 3 uses
  %i.ai = tail call noundef i64 @llvm.fshl.i64(i64 %i.aa, i64 %i.aa, i64 16)
  %i.aj = xor i64 %i.ai, %i.af                    ; 3 uses
  %i.ak = tail call noundef i64 @llvm.fshl.i64(i64 %i.ae, i64 %i.ae, i64 32)
  %i.al = add i64 %i.ah, %i.af                    ; 3 uses
  %i.am = add i64 %i.aj, %i.ak                    ; 2 uses
  %i.an = tail call noundef i64 @llvm.fshl.i64(i64 %i.ah, i64 %i.ah, i64 17)
  %i.ao = xor i64 %i.al, %i.an                    ; 3 uses
  %i.ap = tail call noundef i64 @llvm.fshl.i64(i64 %i.aj, i64 %i.aj, i64 21)
  %i.aq = xor i64 %i.ap, %i.am                    ; 3 uses
  %i.ar = tail call noundef i64 @llvm.fshl.i64(i64 %i.al, i64 %i.al, i64 32)
  %i.as = add i64 %i.ao, %i.am                    ; 3 uses
  %i.at = add i64 %i.aq, %i.ar                    ; 2 uses
  %i.au = tail call noundef i64 @llvm.fshl.i64(i64 %i.ao, i64 %i.ao, i64 13)
  %i.av = xor i64 %i.au, %i.as                    ; 3 uses
  %i.aw = tail call noundef i64 @llvm.fshl.i64(i64 %i.aq, i64 %i.aq, i64 16)
  %i.ax = xor i64 %i.aw, %i.at                    ; 3 uses
  %i.ay = tail call noundef i64 @llvm.fshl.i64(i64 %i.as, i64 %i.as, i64 32)
  %i.az = add i64 %i.av, %i.at                    ; 3 uses
  %i.ba = add i64 %i.ax, %i.ay                    ; 2 uses
  %i.bb = tail call noundef i64 @llvm.fshl.i64(i64 %i.av, i64 %i.av, i64 17)
  %i.bc = xor i64 %i.bb, %i.az                    ; 3 uses
  %i.bd = tail call noundef i64 @llvm.fshl.i64(i64 %i.ax, i64 %i.ax, i64 21)
  %i.be = xor i64 %i.bd, %i.ba                    ; 3 uses
  %i.bf = tail call noundef i64 @llvm.fshl.i64(i64 %i.az, i64 %i.az, i64 32)
  %i.bg = add i64 %i.bc, %i.ba
  %i.bh = add i64 %i.be, %i.bf                    ; 2 uses
  %i.bi = tail call noundef i64 @llvm.fshl.i64(i64 %i.bc, i64 %i.bc, i64 13)
  %i.bj = xor i64 %i.bi, %i.bg                    ; 3 uses
  %i.bk = tail call noundef i64 @llvm.fshl.i64(i64 %i.be, i64 %i.be, i64 16)
end_hunk_0
