Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/fish-rs/original/fish_color-1d697e6a0cff9662.fish_color.99c63356aa944a30-cgu.0?download=true
inline.NumInlined: 99
inline.NumDeleted: 79
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_RINvYINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32NCNvCsdcxgzuWc7wi_10fish_color20simple_icase_compare0ENtNtNtBa_6traits8iterator8Iterator6cmp_byIB4_BR_NCB1N_s_0ENCINvYB3_B2D_3cmpB3i_E0EB1P_:bb.a
  %i.z = xor i32 %i.y, 55296
  %i.aa = add i32 %i.z, -1114112
  %i.ab = icmp ult i32 %i.aa, -1112064
  br i1 %i.ab, label %.split.i.i.i, label %_RNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3mapINtB5_3MapNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32NCNvCsdcxgzuWc7wi_10fish_color20simple_icase_compares_0ENtNtNtB9_6traits8iterator8Iterator4nextB1U_.exit.i

.split.i.i.i:                                     ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !28
  store i32 %i.y, ptr %i.a, align 4, !noalias !28
  call void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @13, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @12, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @52) #19, !noalias !28
  unreachable

_RNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3mapINtB5_3MapNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32NCNvCsdcxgzuWc7wi_10fish_color20simple_icase_compares_0ENtNtNtB9_6traits8iterator8Iterator4nextB1U_.exit.i: ; preds = %bb.f
  %i.ac = icmp ult i32 %i.y, 1114112
  tail call void @llvm.assume(i1 %i.ac)
  br label %_RINvNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator12iter_compareINtNtNtB6_8adapters3map3MapNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32NCNvCsdcxgzuWc7wi_10fish_color20simple_icase_compare0EIB11_B1r_NCB2n_s_0ENCINvNvNtB2_8Iterator6cmp_by7compareccNCINvYB10_B3D_3cmpB3d_E0E0NtNtB8_3cmp8OrderingEB2p_.exit

_RINvNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator12iter_compareINtNtNtB6_8adapters3map3MapNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32NCNvCsdcxgzuWc7wi_10fish_color20simple_icase_compare0EIB11_B1r_NCB2n_s_0ENCINvNvNtB2_8Iterator6cmp_by7compareccNCINvYB10_B3D_3cmpB3d_E0E0NtNtB8_3cmp8OrderingEB2p_.exit: ; preds = %bb.c, %.split.loop.exit.i.i.i.i, %bb.e, %_RNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3mapINtB5_3MapNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32NCNvCsdcxgzuWc7wi_10fish_color20simple_icase_compares_0ENtNtNtB9_6traits8iterator8Iterator4nextB1U_.exit.i
  %.sroa.3.0.i = phi i8 [ -1, %_RNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3mapINtB5_3MapNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32NCNvCsdcxgzuWc7wi_10fish_color20simple_icase_compares_0ENtNtNtB9_6traits8iterator8Iterator4nextB1U_.exit.i ], [ %i.w, %.split.loop.exit.i.i.i.i ], [ 0, %bb.e ], [ 1, %bb.c ]
  ret i8 %.sroa.3.0.i
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator10min_by_key3keyTjRmEmNCNvCsdcxgzuWc7wi_10fish_color13convert_color0E0B1r_(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, i64 noundef %2, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %3) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [4 x i8], align 4                 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !33)
  %i.b = load i32, ptr %3, align 4, !noalias !33, !noundef !8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !33
  %i.c = lshr i32 %i.b, 24                        ; 2 uses
  store i32 %i.c, ptr %i.a, align 4, !noalias !33
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %_RNvMCsdcxgzuWc7wi_10fish_colorNtB2_7Color249from_bits.exit.i, label %bb.b, !prof !36

bb.b:                                             ; preds = %bb.a
  call void @_RINvNtCs3oUPovFnLWP_4core9panicking13assert_failedmmECsaL1QbXo9JQH_3std(i8 noundef 0, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.a, ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(4) @9, ptr noundef nonnull @10, ptr nonnull inttoptr (i64 85 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @11) #19, !noalias !33
  unreachable

_RNvMCsdcxgzuWc7wi_10fish_colorNtB2_7Color249from_bits.exit.i: ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !33
  %i.e = load ptr, ptr %1, align 8, !alias.scope !33, !nonnull !8, !noundef !8
  %i.f = load i8, ptr %i.e, align 1, !noalias !33, !noundef !8 ; 2 uses
  %i.g = trunc nuw i32 %i.b to i24
  %i.h = lshr i24 %i.g, 16                        ; 2 uses
  %.sroa.01.0.extract.trunc.i = trunc nuw i24 %i.h to i8
  %i.i = icmp ugt i8 %i.f, %.sroa.01.0.extract.trunc.i
  %i.j = zext i8 %i.f to i32                      ; 2 uses
  %i.k = zext nneg i24 %i.h to i32                ; 2 uses
  %i.l = sub nsw i32 %i.j, %i.k
  %i.m = sub nsw i32 %i.k, %i.j
  %.sroa.01.0.i.i = select i1 %i.i, i32 %i.l, i32 %i.m ; 2 uses
  %i.n = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %.sroa.01.0.i.i, i32 %.sroa.01.0.i.i) ; 2 uses
  %i.o = extractvalue { i32, i1 } %i.n, 1
  %i.p = extractvalue { i32, i1 } %i.n, 0         ; 2 uses
  br i1 %i.o, label %bb.c, label %_RNvMs6_NtCs3oUPovFnLWP_4core3numm11checked_pow.exit.i5.i, !prof !37

bb.c:                                             ; preds = %_RNvMCsdcxgzuWc7wi_10fish_colorNtB2_7Color249from_bits.exit.i
  tail call void @_RNvNtNtNtCs3oUPovFnLWP_4core3num3imp14overflow_panic3pow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @16) #18, !noalias !33
  unreachable

_RNvMs6_NtCs3oUPovFnLWP_4core3numm11checked_pow.exit.i5.i: ; preds = %_RNvMCsdcxgzuWc7wi_10fish_colorNtB2_7Color249from_bits.exit.i
  %.sroa.01.1.extract.shift1.i = lshr i32 %i.b, 8 ; 2 uses
  %.sroa.01.1.extract.trunc.i = trunc i32 %.sroa.01.1.extract.shift1.i to i8
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !alias.scope !33, !nonnull !8, !noundef !8
  %i.s = load i8, ptr %i.r, align 1, !noalias !33, !noundef !8 ; 2 uses
  %i.t = icmp ugt i8 %i.s, %.sroa.01.1.extract.trunc.i
  %i.u = zext i8 %i.s to i32                      ; 2 uses
  %i.v = and i32 %.sroa.01.1.extract.shift1.i, 255 ; 2 uses
  %i.w = sub nsw i32 %i.u, %i.v
  %i.x = sub nsw i32 %i.v, %i.u
  %.sroa.01.0.i3.i = select i1 %i.t, i32 %i.w, i32 %i.x ; 2 uses
  %i.y = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %.sroa.01.0.i3.i, i32 %.sroa.01.0.i3.i) ; 2 uses
  %i.z = extractvalue { i32, i1 } %i.y, 1
  br i1 %i.z, label %bb.d, label %_RNvNvCsdcxgzuWc7wi_10fish_color13convert_color18squared_difference.exit8.i, !prof !37

bb.d:                                             ; preds = %_RNvMs6_NtCs3oUPovFnLWP_4core3numm11checked_pow.exit.i5.i
  tail call void @_RNvNtNtNtCs3oUPovFnLWP_4core3num3imp14overflow_panic3pow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @16) #18, !noalias !33
  unreachable

_RNvNvCsdcxgzuWc7wi_10fish_color13convert_color18squared_difference.exit8.i: ; preds = %_RNvMs6_NtCs3oUPovFnLWP_4core3numm11checked_pow.exit.i5.i
  %i.aa = extractvalue { i32, i1 } %i.y, 0
  %i.ab = add nsw i32 %i.aa, %i.p                 ; 3 uses
  %i.ac = icmp ult i32 %i.ab, %i.p
  br i1 %i.ac, label %bb.f, label %_RNvMs6_NtCs3oUPovFnLWP_4core3numm11checked_pow.exit.i11.i

_RNvMs6_NtCs3oUPovFnLWP_4core3numm11checked_pow.exit.i11.i: ; preds = %_RNvNvCsdcxgzuWc7wi_10fish_color13convert_color18squared_difference.exit8.i
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ae = load ptr, ptr %i.ad, align 8, !alias.scope !33, !nonnull !8, !noundef !8
  %i.af = load i8, ptr %i.ae, align 1, !noalias !33, !noundef !8 ; 2 uses
  %.sroa.01.2.extract.trunc.i = trunc i32 %i.b to i8
  %i.ag = icmp ugt i8 %i.af, %.sroa.01.2.extract.trunc.i
  %i.ah = zext i8 %i.af to i32                    ; 2 uses
  %i.ai = and i32 %i.b, 255                       ; 2 uses
  %i.aj = sub nsw i32 %i.ah, %i.ai
  %i.ak = sub nsw i32 %i.ai, %i.ah
  %.sroa.01.0.i9.i = select i1 %i.ag, i32 %i.aj, i32 %i.ak ; 2 uses
  %i.al = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %.sroa.01.0.i9.i, i32 %.sroa.01.0.i9.i) ; 2 uses
  %i.am = extractvalue { i32, i1 } %i.al, 1
  br i1 %i.am, label %bb.e, label %_RNvNvCsdcxgzuWc7wi_10fish_color13convert_color18squared_difference.exit14.i, !prof !37

bb.e:                                             ; preds = %_RNvMs6_NtCs3oUPovFnLWP_4core3numm11checked_pow.exit.i11.i
  tail call void @_RNvNtNtNtCs3oUPovFnLWP_4core3num3imp14overflow_panic3pow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @16) #18, !noalias !33
  unreachable

_RNvNvCsdcxgzuWc7wi_10fish_color13convert_color18squared_difference.exit14.i: ; preds = %_RNvMs6_NtCs3oUPovFnLWP_4core3numm11checked_pow.exit.i11.i
  %i.an = extractvalue { i32, i1 } %i.al, 0
  %i.ao = add nsw i32 %i.an, %i.ab                ; 2 uses
  %i.ap = icmp ult i32 %i.ao, %i.ab
  br i1 %i.ap, label %bb.g, label %_RNCNvCsdcxgzuWc7wi_10fish_color13convert_color0B3_.exit

bb.f:                                             ; preds = %_RNvNvCsdcxgzuWc7wi_10fish_color13convert_color18squared_difference.exit8.i
  tail call void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const24panic_const_add_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #19, !noalias !33
  unreachable

bb.g:                                             ; preds = %_RNvNvCsdcxgzuWc7wi_10fish_color13convert_color18squared_difference.exit14.i
  tail call void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const24panic_const_add_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #19, !noalias !33
  unreachable

_RNCNvCsdcxgzuWc7wi_10fish_color13convert_color0B3_.exit: ; preds = %_RNvNvCsdcxgzuWc7wi_10fish_color13convert_color18squared_difference.exit14.i
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.ao, ptr %i.aq, align 8
  store i64 %2, ptr %0, align 8
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %3, ptr %i.ar, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef i64 @_RNvCsdcxgzuWc7wi_10fish_color13convert_color(i24 %0, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %1, i64 noundef range(i64 16, 241) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
_RNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3mapINtB5_3MapINtNtB7_9enumerate9EnumerateINtNtNtBb_5slice4iter4ItermEENCINvNvNtNtNtB9_6traits8iterator8Iterator10min_by_key3keyTjRmEmNCNvCsdcxgzuWc7wi_10fish_color13convert_color0E0EB1Y_4nextB2W_.exit.i.i:
  %i.a = alloca [48 x i8], align 8                ; 5 uses
  %i.b = alloca [32 x i8], align 8                ; 7 uses
  %i.c = alloca [24 x i8], align 8                ; 7 uses
  %i.d = alloca [48 x i8], align 8                ; 9 uses
  %i.e = alloca [3 x i8], align 4                 ; 5 uses
  store i24 %0, ptr %i.e, align 4
  %.idx = shl nuw nsw i64 %2, 2                   ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 %.idx
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 1 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 2 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !38
  tail call void @llvm.experimental.noalias.scope.decl(metadata !42)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !45)
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %i.f, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !47, !noalias !49
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 24 ; 2 uses
  store ptr %i.e, ptr %i.i, align 8, !alias.scope !50, !noalias !51
  %.sroa.55.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  store ptr %i.g, ptr %.sroa.55.0..sroa_idx, align 8, !alias.scope !50, !noalias !51
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  store ptr %i.h, ptr %.sroa.6.0..sroa_idx, align 8, !alias.scope !50, !noalias !51
  call void @llvm.experimental.noalias.scope.decl(metadata !52)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !55
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  store ptr %i.j, ptr %i.d, align 8, !alias.scope !57, !noalias !64
  store i64 1, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !66, !noalias !64
  call fastcc void @_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator10min_by_key3keyTjRmEmNCNvCsdcxgzuWc7wi_10fish_color13convert_color0E0B1r_(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.c, ptr noalias nofree noundef align 8 dereferenceable(24) %i.i, i64 noundef 0, ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(4) %1) #20, !noalias !67
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.pre.i.i = load ptr, ptr %.phi.trans.insert.i.i, align 8, !noalias !55 ; 2 uses
  %i.k = icmp eq ptr %.pre.i.i, null
  br i1 %i.k, label %_RINvYINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtB8_9enumerate9EnumerateINtNtNtBc_5slice4iter4ItermEENCINvNvNtNtNtBa_6traits8iterator8Iterator10min_by_key3keyTjRmEmNCNvCsdcxgzuWc7wi_10fish_color13convert_color0E0EB1T_6reduceNvYINtNtBc_3cmp11KeyAndValuemB2H_ENtB3R_3Ord3minEB2R_.exit.thread.i, label %bb.a

bb.a:                                             ; preds = %_RNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3mapINtB5_3MapINtNtB7_9enumerate9EnumerateINtNtNtBb_5slice4iter4ItermEENCINvNvNtNtNtB9_6traits8iterator8Iterator10min_by_key3keyTjRmEmNCNvCsdcxgzuWc7wi_10fish_color13convert_color0E0EB1Y_4nextB2W_.exit.i.i
  %.sroa.017.0.copyload.i = load i64, ptr %i.c, align 8, !noalias !55
  %.sroa.622.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.sroa.622.0.copyload.i = load i64, ptr %.sroa.622.0..sroa_idx.i, align 8, !noalias !55
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !55
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !68
  store ptr %i.e, ptr %i.b, align 8, !noalias !78
  %.sroa.55.0..sroa_idx6 = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.g, ptr %.sroa.55.0..sroa_idx6, align 8, !noalias !78
  %.sroa.6.0..sroa_idx8 = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.h, ptr %.sroa.6.0..sroa_idx8, align 8, !noalias !78
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  store i64 1, ptr %i.l, align 8, !noalias !68
  call void @llvm.experimental.noalias.scope.decl(metadata !79)
  %gepdiff = add nsw i64 %.idx, -4
  %i.m = lshr exact i64 %gepdiff, 2
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 2 uses
  %.sroa.11.24..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %.sroa.12.24..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  br label %_RNCINvNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateRmINtNtBf_3cmp11KeyAndValuemTjB21_EENCINvNtBb_3map8map_foldB2t_B23_B23_NCINvNvB1e_10min_by_key3keyB2t_mNCNvCsdcxgzuWc7wi_10fish_color13convert_color0E0NvYB23_NtB26_3Ord3minE0E0B3K_.exit.i.i.i.i.i

_RNCINvNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateRmINtNtBf_3cmp11KeyAndValuemTjB21_EENCINvNtBb_3map8map_foldB2t_B23_B23_NCINvNvB1e_10min_by_key3keyB2t_mNCNvCsdcxgzuWc7wi_10fish_color13convert_color0E0NvYB23_NtB26_3Ord3minE0E0B3K_.exit.i.i.i.i.i: ; preds = %bb.a, %_RNCINvNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateRmINtNtBf_3cmp11KeyAndValuemTjB21_EENCINvNtBb_3map8map_foldB2t_B23_B23_NCINvNvB1e_10min_by_key3keyB2t_mNCNvCsdcxgzuWc7wi_10fish_color13convert_color0E0NvYB23_NtB26_3Ord3minE0E0B3K_.exit.i.i.i.i.i
  %.sroa.8.0.i = phi i64 [ %.sroa.622.0.copyload.i, %bb.a ], [ %.sroa.533.0.copyload.i, %_RNCINvNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateRmINtNtBf_3cmp11KeyAndValuemTjB21_EENCINvNtBb_3map8map_foldB2t_B23_B23_NCINvNvB1e_10min_by_key3keyB2t_mNCNvCsdcxgzuWc7wi_10fish_color13convert_color0E0NvYB23_NtB26_3Ord3minE0E0B3K_.exit.i.i.i.i.i ] ; 2 uses
  %.sroa.627.0.i = phi ptr [ %.pre.i.i, %bb.a ], [ %.sroa.4.0.copyload.sroa.speculated.i, %_RNCINvNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateRmINtNtBf_3cmp11KeyAndValuemTjB21_EENCINvNtBb_3map8map_foldB2t_B23_B23_NCINvNvB1e_10min_by_key3keyB2t_mNCNvCsdcxgzuWc7wi_10fish_color13convert_color0E0NvYB23_NtB26_3Ord3minE0E0B3K_.exit.i.i.i.i.i ]
  %.sroa.025.0.i = phi i64 [ %.sroa.017.0.copyload.i, %bb.a ], [ %.sroa.032.0.copyload.sroa.speculated.i, %_RNCINvNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateRmINtNtBf_3cmp11KeyAndValuemTjB21_EENCINvNtBb_3map8map_foldB2t_B23_B23_NCINvNvB1e_10min_by_key3keyB2t_mNCNvCsdcxgzuWc7wi_10fish_color13convert_color0E0NvYB23_NtB26_3Ord3minE0E0B3K_.exit.i.i.i.i.i ]
  %i.o = phi i64 [ 1, %bb.a ], [ %i.q, %_RNCINvNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateRmINtNtBf_3cmp11KeyAndValuemTjB21_EENCINvNtBb_3map8map_foldB2t_B23_B23_NCINvNvB1e_10min_by_key3keyB2t_mNCNvCsdcxgzuWc7wi_10fish_color13convert_color0E0NvYB23_NtB26_3Ord3minE0E0B3K_.exit.i.i.i.i.i ] ; 2 uses
  %.sroa.01.0.i.i.i.i.i = phi i64 [ 0, %bb.a ], [ %i.r, %_RNCINvNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateRmINtNtBf_3cmp11KeyAndValuemTjB21_EENCINvNtBb_3map8map_foldB2t_B23_B23_NCINvNvB1e_10min_by_key3keyB2t_mNCNvCsdcxgzuWc7wi_10fish_color13convert_color0E0NvYB23_NtB26_3Ord3minE0E0B3K_.exit.i.i.i.i.i ] ; 2 uses
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %.sroa.01.0.i.i.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !82)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !85
  call fastcc void @_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator10min_by_key3keyTjRmEmNCNvCsdcxgzuWc7wi_10fish_color13convert_color0E0B1r_(ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.n, ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(32) %i.b, i64 noundef %i.o, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.p) #20, !noalias !96
  %.sroa.9.24.copyload.i = load i64, ptr %i.n, align 8, !noalias !97
  %.sroa.11.24.copyload.i = load i64, ptr %.sroa.11.24..sroa_idx.i, align 8, !noalias !97
  %.sroa.12.24.copyload.i = load i64, ptr %.sroa.12.24..sroa_idx.i, align 8, !noalias !97 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !85
  %.sroa.640.sroa.0.0.extract.trunc.i = trunc i64 %.sroa.8.0.i to i32
  %.sroa.12.sroa.0.0.extract.trunc.i = trunc i64 %.sroa.12.24.copyload.i to i32
  %3 = icmp ult i32 %.sroa.12.sroa.0.0.extract.trunc.i, %.sroa.640.sroa.0.0.extract.trunc.i ; 3 uses
  %4 = inttoptr i64 %.sroa.11.24.copyload.i to ptr
  %.sroa.4.0.copyload.sroa.speculated.i = select i1 %3, ptr %4, ptr %.sroa.627.0.i ; 2 uses
  %.sroa.032.0.copyload.sroa.speculated.i = select i1 %3, i64 %.sroa.9.24.copyload.i, i64 %.sroa.025.0.i ; 2 uses
  %.sroa.533.0.copyload.i = select i1 %3, i64 %.sroa.12.24.copyload.i, i64 %.sroa.8.0.i
  %i.q = add nuw nsw i64 %i.o, 1                  ; 2 uses
  store i64 %i.q, ptr %i.l, align 8, !alias.scope !101, !noalias !102
  %i.r = add nuw nsw i64 %.sroa.01.0.i.i.i.i.i, 1 ; 2 uses
  %i.s = icmp eq i64 %i.r, %i.m
  br i1 %i.s, label %_RINvYINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtB8_9enumerate9EnumerateINtNtNtBc_5slice4iter4ItermEENCINvNvNtNtNtBa_6traits8iterator8Iterator10min_by_key3keyTjRmEmNCNvCsdcxgzuWc7wi_10fish_color13convert_color0E0EB1T_6reduceNvYINtNtBc_3cmp11KeyAndValuemB2H_ENtB3R_3Ord3minEB2R_.exit.i, label %_RNCINvNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateRmINtNtBf_3cmp11KeyAndValuemTjB21_EENCINvNtBb_3map8map_foldB2t_B23_B23_NCINvNvB1e_10min_by_key3keyB2t_mNCNvCsdcxgzuWc7wi_10fish_color13convert_color0E0NvYB23_NtB26_3Ord3minE0E0B3K_.exit.i.i.i.i.i

_RINvYINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtB8_9enumerate9EnumerateINtNtNtBc_5slice4iter4ItermEENCINvNvNtNtNtBa_6traits8iterator8Iterator10min_by_key3keyTjRmEmNCNvCsdcxgzuWc7wi_10fish_color13convert_color0E0EB1T_6reduceNvYINtNtBc_3cmp11KeyAndValuemB2H_ENtB3R_3Ord3minEB2R_.exit.thread.i: ; preds = %_RNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3mapINtB5_3MapINtNtB7_9enumerate9EnumerateINtNtNtBb_5slice4iter4ItermEENCINvNvNtNtNtB9_6traits8iterator8Iterator10min_by_key3keyTjRmEmNCNvCsdcxgzuWc7wi_10fish_color13convert_color0E0EB1Y_4nextB2W_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !55
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !38
  br label %bb.c

_RINvYINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtB8_9enumerate9EnumerateINtNtNtBc_5slice4iter4ItermEENCINvNvNtNtNtBa_6traits8iterator8Iterator10min_by_key3keyTjRmEmNCNvCsdcxgzuWc7wi_10fish_color13convert_color0E0EB1T_6reduceNvYINtNtBc_3cmp11KeyAndValuemB2H_ENtB3R_3Ord3minEB2R_.exit.i: ; preds = %_RNCINvNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateRmINtNtBf_3cmp11KeyAndValuemTjB21_EENCINvNtBb_3map8map_foldB2t_B23_B23_NCINvNvB1e_10min_by_key3keyB2t_mNCNvCsdcxgzuWc7wi_10fish_color13convert_color0E0NvYB23_NtB26_3Ord3minE0E0B3K_.exit.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !68
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !38
  %.not.i = icmp eq ptr %.sroa.4.0.copyload.sroa.speculated.i, null
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %_RINvYINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtB8_9enumerate9EnumerateINtNtNtBc_5slice4iter4ItermEENCINvNvNtNtNtBa_6traits8iterator8Iterator10min_by_key3keyTjRmEmNCNvCsdcxgzuWc7wi_10fish_color13convert_color0E0EB1T_6reduceNvYINtNtBc_3cmp11KeyAndValuemB2H_ENtB3R_3Ord3minEB2R_.exit.i
  ret i64 %.sroa.032.0.copyload.sroa.speculated.i

bb.c:                                             ; preds = %_RINvYINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtB8_9enumerate9EnumerateINtNtNtBc_5slice4iter4ItermEENCINvNvNtNtNtBa_6traits8iterator8Iterator10min_by_key3keyTjRmEmNCNvCsdcxgzuWc7wi_10fish_color13convert_color0E0EB1T_6reduceNvYINtNtBc_3cmp11KeyAndValuemB2H_ENtB3R_3Ord3minEB2R_.exit.i, %_RINvYINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtB8_9enumerate9EnumerateINtNtNtBc_5slice4iter4ItermEENCINvNvNtNtNtBa_6traits8iterator8Iterator10min_by_key3keyTjRmEmNCNvCsdcxgzuWc7wi_10fish_color13convert_color0E0EB1T_6reduceNvYINtNtBc_3cmp11KeyAndValuemB2H_ENtB3R_3Ord3minEB2R_.exit.thread.i
  call void @_RNvNtCs3oUPovFnLWP_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 44, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #19
  unreachable
}

; Function Attrs: cold noinline nonlazybind uwtable
define void @_RNvMs4_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrE8grow_oneCsdcxgzuWc7wi_10fish_color(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = load i64, ptr %0, align 8, !range !7, !noundef !8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !103)
  %i.c = shl nuw i64 %i.b, 1
  %i.d = tail call i64 @llvm.umax.i64(i64 %i.c, i64 4) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !103
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.val13.i = load ptr, ptr %i.e, align 8, !alias.scope !103
  call fastcc void @_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner11finish_growCsdcxgzuWc7wi_10fish_color(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.a, i64 %i.b, ptr %.val13.i, i64 noundef %i.d)
  %i.f = load i64, ptr %i.a, align 8, !range !9, !noalias !103, !noundef !8
  %i.g = trunc nuw i64 %i.f to i1
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = load i64, ptr %i.h, align 8, !range !10, !noalias !103, !noundef !8
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.k = load i64, ptr %i.j, align 8, !noalias !103
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !103
  tail call void @_RNvNtCs1xwejQucwHj_5alloc7raw_vec12handle_error(i64 noundef %i.i, i64 %i.k) #18
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.l = load ptr, ptr %i.h, align 8, !noalias !103, !nonnull !8, !noundef !8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !103
  store ptr %i.l, ptr %i.e, align 8, !alias.scope !103
  %i.m = icmp sgt i64 %i.d, -1
  tail call void @llvm.assume(i1 %i.m)
  store i64 %i.d, ptr %0, align 8, !alias.scope !103
  ret void
}

; Function Attrs: cold nounwind nonlazybind uwtable
define internal fastcc void @_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner11finish_growCsdcxgzuWc7wi_10fish_color(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) initializes((0, 8)) %0, i64 %.0.val, ptr %.8.val, i64 noundef %1) unnamed_addr #4 {
bb.a:
  %i.a = shl i64 %1, 4                            ; 7 uses
  %i.b = icmp ult i64 %1, 1152921504606846976
  %i.c = icmp ult i64 %i.a, 9223372036854775801
  %or.cond = and i1 %i.b, %i.c
  br i1 %or.cond, label %bb.b, label %bb.f, !prof !106

bb.b:                                             ; preds = %bb.a
  %i.d = icmp eq i64 %.0.val, 0
  br i1 %i.d, label %bb.c, label %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator4grow.exit

_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator4grow.exit: ; preds = %bb.b
  %i.e = shl nuw i64 %.0.val, 4                   ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  %i.f = icmp uge i64 %i.a, %i.e
  tail call void @llvm.assume(i1 %i.f)
  %i.g = tail call noundef align 8 ptr @_RNvCsjHpjAFo4bi0_7___rustc14___rust_realloc(ptr noundef nonnull %.8.val, i64 noundef %i.e, i64 noundef 8, i64 noundef range(i64 0, 9223372036854775801) %i.a) #21
  br label %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit

bb.c:                                             ; preds = %bb.b
  %i.h = icmp eq i64 %i.a, 0
  br i1 %i.h, label %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #21
  %i.i = tail call noundef align 8 ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef range(i64 0, 9223372036854775801) %i.a, i64 noundef 8) #21
  br label %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit

_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit: ; preds = %bb.d, %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator4grow.exit
  %.pn8 = phi ptr [ %i.g, %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator4grow.exit ], [ %i.i, %bb.d ] ; 2 uses
  %i.j = icmp eq ptr %.pn8, null
  br i1 %i.j, label %bb.e, label %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.thread

bb.e:                                             ; preds = %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 8, ptr %i.k, align 8
  br label %bb.f

_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.thread: ; preds = %bb.c, %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit
  %.pn810 = phi ptr [ %.pn8, %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit ], [ inttoptr (i64 8 to ptr), %bb.c ]
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.pn810, ptr %i.l, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %bb.e, %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.thread
  %.sink13 = phi i64 [ 16, %bb.e ], [ 16, %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.thread ], [ 8, %bb.a ]
  %.sink11 = phi i64 [ %i.a, %bb.e ], [ %i.a, %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.thread ], [ 0, %bb.a ]
  %.sink = phi i64 [ 1, %bb.e ], [ 0, %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.thread ], [ 1, %bb.a ]
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 %.sink13
  store i64 %.sink11, ptr %i.m, align 8
  store i64 %.sink, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define i24 @_RNvMs_CsdcxgzuWc7wi_10fish_colorNtB4_5Color10to_color24(i32 %0) unnamed_addr #1 {
bb.a:
  %i.a = and i32 %0, 255
  %i.b = icmp eq i32 %i.a, 2
  br i1 %i.b, label %bb.b, label %bb.c, !prof !36

bb.b:                                             ; preds = %bb.a
  %.sroa.4.0.extract.shift = lshr i32 %0, 8
  %.sroa.4.0.extract.trunc = trunc nuw i32 %.sroa.4.0.extract.shift to i24
  ret i24 %.sroa.4.0.extract.trunc

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking9panic_fmt(ptr noundef nonnull @17, ptr noundef nonnull inttoptr (i64 75 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @18) #19
  unreachable
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define noundef zeroext i1 @_RNvMs_CsdcxgzuWc7wi_10fish_colorNtB4_5Color12is_grayscale(ptr noalias nofree noundef readonly captures(none) dereferenceable(4) %0) unnamed_addr #5 {
bb.a:
  %i.a = load i8, ptr %0, align 1, !range !107, !noundef !8
  switch i8 %i.a, label %default.unreachable2 [
    i8 0, label %_RNvXsg_NtNtCs3oUPovFnLWP_4core5slice3cmphNtB5_13SliceContains14slice_containsCsdcxgzuWc7wi_10fish_color.exit.thread
    i8 1, label %bb.b
    i8 2, label %bb.c
    i8 3, label %_RNvXsg_NtNtCs3oUPovFnLWP_4core5slice3cmphNtB5_13SliceContains14slice_containsCsdcxgzuWc7wi_10fish_color.exit.thread
  ]

default.unreachable2:                             ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1
  %.val = load i8, ptr %i.b, align 1, !noundef !8 ; 3 uses
  %i.c = icmp ult i8 %.val, 17
  %switch.maskindex = zext nneg i8 %.val to i32
  %switch.shifted = lshr i32 98689, %switch.maskindex
  %switch.lobit = trunc i32 %switch.shifted to i1
  %or.cond = select i1 %i.c, i1 %switch.lobit, i1 false
  %i.d = icmp ugt i8 %.val, -25
  %spec.select = or i1 %or.cond, %i.d
  br label %_RNvXsg_NtNtCs3oUPovFnLWP_4core5slice3cmphNtB5_13SliceContains14slice_containsCsdcxgzuWc7wi_10fish_color.exit.thread

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.f = load i8, ptr %i.e, align 1, !noundef !8  ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.h = load i8, ptr %i.g, align 1, !noundef !8
  %i.i = icmp eq i8 %i.f, %i.h
  br i1 %i.i, label %bb.d, label %_RNvXsg_NtNtCs3oUPovFnLWP_4core5slice3cmphNtB5_13SliceContains14slice_containsCsdcxgzuWc7wi_10fish_color.exit.thread

_RNvXsg_NtNtCs3oUPovFnLWP_4core5slice3cmphNtB5_13SliceContains14slice_containsCsdcxgzuWc7wi_10fish_color.exit.thread: ; preds = %bb.b, %bb.c, %bb.a, %bb.a, %bb.d
  %.sroa.0.0.shrunk = phi i1 [ true, %bb.a ], [ true, %bb.a ], [ %spec.select, %bb.b ], [ %i.l, %bb.d ], [ false, %bb.c ]
  ret i1 %.sroa.0.0.shrunk

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 3
  %i.k = load i8, ptr %i.j, align 1, !noundef !8
  %i.l = icmp eq i8 %i.f, %i.k
  br label %_RNvXsg_NtNtCs3oUPovFnLWP_4core5slice3cmphNtB5_13SliceContains14slice_containsCsdcxgzuWc7wi_10fish_color.exit.thread
}

; Function Attrs: nonlazybind uwtable
define noundef i8 @_RNvMs_CsdcxgzuWc7wi_10fish_colorNtB4_5Color13to_name_index(i32 %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [1 x i8], align 1                 ; 3 uses
  %.sroa.42.0.extract.shift = lshr i32 %0, 8      ; 2 uses
  %trunc = trunc i32 %0 to i8
  switch i8 %trunc, label %bb.b [
    i8 0, label %bb.c
    i8 1, label %bb.d
    i8 2, label %bb.e
    i8 3, label %bb.c
  ], !prof !108

bb.b:                                             ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a, %bb.a
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking9panic_fmt(ptr noundef nonnull @19, ptr noundef nonnull inttoptr (i64 111 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @20) #19
  unreachable

bb.d:                                             ; preds = %bb.a
  %.sroa.42.0.extract.trunc = trunc i32 %.sroa.42.0.extract.shift to i8
end_hunk_0
