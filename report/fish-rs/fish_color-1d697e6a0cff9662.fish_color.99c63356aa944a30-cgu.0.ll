Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/fish-rs/original/fish_color-1d697e6a0cff9662.fish_color.99c63356aa944a30-cgu.0?download=true
inline.NumInlined: 99
inline.NumDeleted: 79
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0
@24 = private unnamed_addr constant [28 x i8] c"b\00\00\00r\00\00\00b\00\00\00l\00\00\00a\00\00\00c\00\00\00k\00\00\00", align 4
@25 = private unnamed_addr constant [24 x i8] c"b\00\00\00r\00\00\00b\00\00\00l\00\00\00u\00\00\00e\00\00\00", align 4
@26 = private unnamed_addr constant [28 x i8] c"b\00\00\00r\00\00\00b\00\00\00r\00\00\00o\00\00\00w\00\00\00n\00\00\00", align 4
@27 = private unnamed_addr constant [24 x i8] c"b\00\00\00r\00\00\00c\00\00\00y\00\00\00a\00\00\00n\00\00\00", align 4
@28 = private unnamed_addr constant [28 x i8] c"b\00\00\00r\00\00\00g\00\00\00r\00\00\00e\00\00\00e\00\00\00n\00\00\00", align 4
@29 = private unnamed_addr constant [24 x i8] c"b\00\00\00r\00\00\00g\00\00\00r\00\00\00e\00\00\00y\00\00\00", align 4
@30 = private unnamed_addr constant [36 x i8] c"b\00\00\00r\00\00\00m\00\00\00a\00\00\00g\00\00\00e\00\00\00n\00\00\00t\00\00\00a\00\00\00", align 4
@31 = private unnamed_addr constant [20 x i8] c"b\00\00\00r\00\00\00o\00\00\00w\00\00\00n\00\00\00", align 4
@32 = private unnamed_addr constant [32 x i8] c"b\00\00\00r\00\00\00p\00\00\00u\00\00\00r\00\00\00p\00\00\00l\00\00\00e\00\00\00", align 4
@33 = private unnamed_addr constant [20 x i8] c"b\00\00\00r\00\00\00r\00\00\00e\00\00\00d\00\00\00", align 4
@34 = private unnamed_addr constant [28 x i8] c"b\00\00\00r\00\00\00w\00\00\00h\00\00\00i\00\00\00t\00\00\00e\00\00\00", align 4
@35 = private unnamed_addr constant [32 x i8] c"b\00\00\00r\00\00\00y\00\00\00e\00\00\00l\00\00\00l\00\00\00o\00\00\00w\00\00\00", align 4
@36 = private unnamed_addr constant [16 x i8] c"c\00\00\00y\00\00\00a\00\00\00n\00\00\00", align 4
@37 = private unnamed_addr constant [20 x i8] c"g\00\00\00r\00\00\00e\00\00\00e\00\00\00n\00\00\00", align 4
@38 = private unnamed_addr constant [16 x i8] c"g\00\00\00r\00\00\00e\00\00\00y\00\00\00", align 4
@39 = private unnamed_addr constant [28 x i8] c"m\00\00\00a\00\00\00g\00\00\00e\00\00\00n\00\00\00t\00\00\00a\00\00\00", align 4
@40 = private unnamed_addr constant [24 x i8] c"p\00\00\00u\00\00\00r\00\00\00p\00\00\00l\00\00\00e\00\00\00", align 4
@41 = private unnamed_addr constant [12 x i8] c"r\00\00\00e\00\00\00d\00\00\00", align 4
@42 = private unnamed_addr constant [20 x i8] c"w\00\00\00h\00\00\00i\00\00\00t\00\00\00e\00\00\00", align 4
@43 = private unnamed_addr constant [24 x i8] c"y\00\00\00e\00\00\00l\00\00\00l\00\00\00o\00\00\00w\00\00\00", align 4
@44 = private unnamed_addr constant <{ ptr, [13 x i8], [3 x i8], ptr, [13 x i8], [3 x i8], ptr, [13 x i8], [3 x i8], ptr, [13 x i8], [3 x i8], ptr, [13 x i8], [3 x i8], ptr, [13 x i8], [3 x i8], ptr, [13 x i8], [3 x i8], ptr, [13 x i8], [3 x i8], ptr, [13 x i8], [3 x i8], ptr, [13 x i8], [3 x i8], ptr, [13 x i8], [3 x i8], ptr, [13 x i8], [3 x i8], ptr, [13 x i8], [3 x i8], ptr, [13 x i8], [3 x i8], ptr, [13 x i8], [3 x i8], ptr, [13 x i8], [3 x i8], ptr, [13 x i8], [3 x i8], ptr, [13 x i8], [3 x i8], ptr, [13 x i8], [3 x i8], ptr, [13 x i8], [3 x i8], ptr, [13 x i8], [3 x i8], ptr, [13 x i8], [3 x i8] }> <{ ptr @22, [13 x i8] c"\05\00\00\00\00\00\00\00\00\00\00\00\00", [3 x i8] undef, ptr @23, [13 x i8] c"\04\00\00\00\00\00\00\00\04\00\00\80\00", [3 x i8] undef, ptr @24, [13 x i8] c"\07\00\00\00\00\00\00\00\08\80\80\80\00", [3 x i8] undef, ptr @25, [13 x i8] c"\06\00\00\00\00\00\00\00\0C\00\00\FF\00", [3 x i8] undef, ptr @26, [13 x i8] c"\07\00\00\00\00\00\00\00\0B\FF\FF\00\01", [3 x i8] undef, ptr @27, [13 x i8] c"\06\00\00\00\00\00\00\00\0E\00\FF\FF\00", [3 x i8] undef, ptr @28, [13 x i8] c"\07\00\00\00\00\00\00\00\0A\00\FF\00\00", [3 x i8] undef, ptr @29, [13 x i8] c"\06\00\00\00\00\00\00\00\08UUU\01", [3 x i8] undef, ptr @30, [13 x i8] c"\09\00\00\00\00\00\00\00\0D\FF\00\FF\00", [3 x i8] undef, ptr @31, [13 x i8] c"\05\00\00\00\00\00\00\00\03rP\00\01", [3 x i8] undef, ptr @32, [13 x i8] c"\08\00\00\00\00\00\00\00\0D\FF\00\FF\01", [3 x i8] undef, ptr @33, [13 x i8] c"\05\00\00\00\00\00\00\00\09\FF\00\00\00", [3 x i8] undef, ptr @34, [13 x i8] c"\07\00\00\00\00\00\00\00\0F\FF\FF\FF\00", [3 x i8] undef, ptr @35, [13 x i8] c"\08\00\00\00\00\00\00\00\0B\FF\FF\00\00", [3 x i8] undef, ptr @36, [13 x i8] c"\04\00\00\00\00\00\00\00\06\00\80\80\00", [3 x i8] undef, ptr @37, [13 x i8] c"\05\00\00\00\00\00\00\00\02\00\80\00\00", [3 x i8] undef, ptr @38, [13 x i8] c"\04\00\00\00\00\00\00\00\07\E5\E5\E5\01", [3 x i8] undef, ptr @39, [13 x i8] c"\07\00\00\00\00\00\00\00\05\80\00\80\00", [3 x i8] undef, ptr @40, [13 x i8] c"\06\00\00\00\00\00\00\00\05\80\00\80\01", [3 x i8] undef, ptr @41, [13 x i8] c"\03\00\00\00\00\00\00\00\01\80\00\00\00", [3 x i8] undef, ptr @42, [13 x i8] c"\05\00\00\00\00\00\00\00\07\C0\C0\C0\00", [3 x i8] undef, ptr @43, [13 x i8] c"\06\00\00\00\00\00\00\00\03\80\80\00\00", [3 x i8] undef }>, align 8
@45 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"\17\00\00\00\00\00\00\00\C3\00\00\00\12\00\00\00" }>, align 8
@46 = private unnamed_addr constant [43 x i8] c"Tried to get term256 index of non-RGB color", align 1
@47 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"\17\00\00\00\00\00\00\00g\00\00\00\0D\00\00\00" }>, align 8
@48 = private unnamed_addr constant [24 x i8] c"n\00\00\00o\00\00\00r\00\00\00m\00\00\00a\00\00\00l\00\00\00", align 4
@49 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCs3oUPovFnLWP_4core3fmtRNtNtNtB8_3num5error12IntErrorKindNtB6_5Debug3fmtCsdcxgzuWc7wi_10fish_color }>, align 8
@50 = private unnamed_addr constant [15 x i8] c"TryFromIntError", align 1
@51 = private unnamed_addr constant [105 x i8] c"/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/widestring-1.2.1/src/utfstr/iter.rs\00", align 1
@52 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @51, [16 x i8] c"h\00\00\00\00\00\00\00_\00\00\00$\00\00\00" }>, align 8
@53 = private unnamed_addr constant [5 x i8] c"Empty", align 1
@54 = private unnamed_addr constant [12 x i8] c"InvalidDigit", align 1
@55 = private unnamed_addr constant [11 x i8] c"PosOverflow", align 1
@56 = private unnamed_addr constant [11 x i8] c"NegOverflow", align 1
@57 = private unnamed_addr constant [4 x i8] c"Zero", align 1
@58 = private unnamed_addr constant [14 x i8] c"NotAPowerOfTwo", align 1
@59 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCs3oUPovFnLWP_4core3fmtRmNtB6_5Debug3fmtCsdcxgzuWc7wi_10fish_color }>, align 8
@60 = private unnamed_addr constant [16 x i8] c"DecodeUtf32Error", align 1
@61 = private unnamed_addr constant [4 x i8] c"code", align 1
@switch.table._RNvXs1g_NtCs3oUPovFnLWP_4core3fmtRNtNtNtB8_3num5error12IntErrorKindNtB6_5Debug3fmtCsdcxgzuWc7wi_10fish_color = private unnamed_addr constant [6 x i8] c"\05\0C\0B\0B\04\0E", align 8
@switch.table._RNvXs1g_NtCs3oUPovFnLWP_4core3fmtRNtNtNtB8_3num5error12IntErrorKindNtB6_5Debug3fmtCsdcxgzuWc7wi_10fish_color.38 = private unnamed_addr constant [6 x ptr] [ptr @53, ptr @54, ptr @55, ptr @56, ptr @57, ptr @58], align 8

; Function Attrs: cold nonlazybind uwtable
define internal fastcc void @_RINvNvMs2_NtCs1xwejQucwHj_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsdcxgzuWc7wi_10fish_color(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(16) %0, i64 noundef %1, i64 noundef range(i64 1, 0) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13)
  %i.b = add i64 %2, %1                           ; 2 uses
  %i.c = icmp ult i64 %i.b, %1
  br i1 %i.c, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load i64, ptr %0, align 8, !range !4, !alias.scope !13, !noundef !5 ; 2 uses
  %i.e = shl nuw i64 %i.d, 1
  %..i.i = tail call noundef i64 @llvm.umax.i64(i64 %i.b, i64 range(i64 0, -1) %i.e)
  %..i14.i = tail call noundef i64 @llvm.umax.i64(i64 %..i.i, i64 4) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !13
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.val13.i = load ptr, ptr %i.f, align 8, !alias.scope !13
  call fastcc void @_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner11finish_growCsdcxgzuWc7wi_10fish_color(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.a, i64 %i.d, ptr %.val13.i, i64 noundef %..i14.i)
  %i.g = load i64, ptr %i.a, align 8, !range !6, !noalias !13, !noundef !5
  %i.h = trunc nuw i64 %i.g to i1
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br i1 %i.h, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.j = load i64, ptr %i.i, align 8, !range !7, !noalias !13, !noundef !5
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.l = load i64, ptr %i.k, align 8, !noalias !13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !13
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.a
  %.sroa.5.0.i.ph = phi i64 [ undef, %bb.a ], [ %i.l, %bb.c ]
  %.sroa.0.0.i.ph = phi i64 [ 0, %bb.a ], [ %i.j, %bb.c ]
  tail call void @_RNvNtCs1xwejQucwHj_5alloc7raw_vec12handle_error(i64 noundef %.sroa.0.0.i.ph, i64 %.sroa.5.0.i.ph) #18
  unreachable

bb.e:                                             ; preds = %bb.b
  %i.m = load ptr, ptr %i.i, align 8, !noalias !13, !nonnull !5, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !13
  store ptr %i.m, ptr %i.f, align 8, !alias.scope !13
  %i.n = icmp sgt i64 %..i14.i, -1
  tail call void @llvm.assume(i1 %i.n)
  store i64 %..i14.i, ptr %0, align 8, !alias.scope !13
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef range(i8 -1, 2) i8 @_RINvYINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32NCNvCsdcxgzuWc7wi_10fish_color20simple_icase_compare0ENtNtNtBa_6traits8iterator8Iterator6cmp_byIB4_BR_NCB1N_s_0ENCINvYB3_B2D_3cmpB3i_E0EB1P_(ptr nofree noundef nonnull readonly captures(address) %0, ptr nofree noundef readnone captures(address) %1, ptr nofree noundef nonnull readonly captures(address) %2, ptr nofree noundef readnone captures(address) %3) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [4 x i8], align 4                 ; 3 uses
  %i.b = alloca [4 x i8], align 4                 ; 3 uses
  %i.c = alloca [4 x i8], align 4                 ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ]
  br label %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map12map_try_foldccuINtNtNtBa_3ops12control_flow11ControlFlowIB13_NtNtBa_3cmp8OrderingB1M_EENCNvCsdcxgzuWc7wi_10fish_color20simple_icase_compare0NCINvNvNtNtNtB8_6traits8iterator8Iterator12try_for_each4callcB12_NCINvNvB3c_12iter_compare7compareINtB4_3MapNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32NCB2e_s_0EcB1M_NCINvNvB3a_6cmp_by7compareccNCINvYIB4E_B4N_B2c_EB3a_3cmpB4D_E0E0E0E0E0B2g_.exit.i.i.i.i

_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map12map_try_foldccuINtNtNtBa_3ops12control_flow11ControlFlowIB13_NtNtBa_3cmp8OrderingB1M_EENCNvCsdcxgzuWc7wi_10fish_color20simple_icase_compare0NCINvNvNtNtNtB8_6traits8iterator8Iterator12try_for_each4callcB12_NCINvNvB3c_12iter_compare7compareINtB4_3MapNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32NCB2e_s_0EcB1M_NCINvNvB3a_6cmp_by7compareccNCINvYIB4E_B4N_B2c_EB3a_3cmpB4D_E0E0E0E0E0B2g_.exit.i.i.i.i: ; preds = %_RNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3mapINtB5_3MapNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32NCNvCsdcxgzuWc7wi_10fish_color20simple_icase_compares_0ENtNtNtB9_6traits8iterator8Iterator4nextB1U_.exit.i.i.i.i.i.i.i, %bb.a
  %.sroa.06.0.i = phi ptr [ %2, %bb.a ], [ %i.r, %_RNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3mapINtB5_3MapNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32NCNvCsdcxgzuWc7wi_10fish_color20simple_icase_compares_0ENtNtNtB9_6traits8iterator8Iterator4nextB1U_.exit.i.i.i.i.i.i.i ] ; 5 uses
  %i.d = phi ptr [ %0, %bb.a ], [ %i.f, %_RNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3mapINtB5_3MapNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32NCNvCsdcxgzuWc7wi_10fish_color20simple_icase_compares_0ENtNtNtB9_6traits8iterator8Iterator4nextB1U_.exit.i.i.i.i.i.i.i ] ; 3 uses
  %i.e = icmp eq ptr %i.d, %1
  br i1 %i.e, label %bb.e, label %bb.b

bb.b:                                             ; preds = %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map12map_try_foldccuINtNtNtBa_3ops12control_flow11ControlFlowIB13_NtNtBa_3cmp8OrderingB1M_EENCNvCsdcxgzuWc7wi_10fish_color20simple_icase_compare0NCINvNvNtNtNtB8_6traits8iterator8Iterator12try_for_each4callcB12_NCINvNvB3c_12iter_compare7compareINtB4_3MapNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32NCB2e_s_0EcB1M_NCINvNvB3a_6cmp_by7compareccNCINvYIB4E_B4N_B2c_EB3a_3cmpB4D_E0E0E0E0E0B2g_.exit.i.i.i.i
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %i.g = load i32, ptr %i.d, align 4, !noalias !33, !noundef !5 ; 6 uses
  %i.h = xor i32 %i.g, 55296
  %i.i = add i32 %i.h, -1114112
  %i.j = icmp ult i32 %i.i, -1112064
  br i1 %i.j, label %.split.i.i.i.i.i, label %bb.c

.split.i.i.i.i.i:                                 ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !33
  store i32 %i.g, ptr %i.c, align 4, !noalias !33
  call void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @13, i64 noundef 43, ptr noundef nonnull %i.c, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @12, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @52) #19, !noalias !33
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.k = icmp ult i32 %i.g, 1114112
  tail call void @llvm.assume(i1 %i.k)
  %i.l = add nsw i32 %i.g, -65
  %or.cond.i.i.i.i.i.i = icmp ult i32 %i.l, 26
  %i.m = or disjoint i32 %i.g, 32
  %.sroa.0.0.i.i.i.i.i.i = select i1 %or.cond.i.i.i.i.i.i, i32 %i.m, i32 %i.g ; 2 uses
  %.not.i = icmp eq ptr %.sroa.06.0.i, %3
  br i1 %.not.i, label %_RINvNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator12iter_compareINtNtNtB6_8adapters3map3MapNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32NCNvCsdcxgzuWc7wi_10fish_color20simple_icase_compare0EIB11_B1r_NCB2n_s_0ENCINvNvNtB2_8Iterator6cmp_by7compareccNCINvYB10_B3D_3cmpB3d_E0E0NtNtB8_3cmp8OrderingEB2p_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = load i32, ptr %.sroa.06.0.i, align 4, !noalias !34, !noundef !5 ; 6 uses
  %i.o = xor i32 %i.n, 55296
  %i.p = add i32 %i.o, -1114112
  %i.q = icmp ult i32 %i.p, -1112064
  br i1 %i.q, label %.split.i.i.i.i.i.i.i.i.i, label %_RNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3mapINtB5_3MapNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32NCNvCsdcxgzuWc7wi_10fish_color20simple_icase_compares_0ENtNtNtB9_6traits8iterator8Iterator4nextB1U_.exit.i.i.i.i.i.i.i

.split.i.i.i.i.i.i.i.i.i:                         ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !34
  store i32 %i.n, ptr %i.b, align 4, !noalias !34
  call void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @13, i64 noundef 43, ptr noundef nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @12, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @52) #19, !noalias !34
  unreachable

_RNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3mapINtB5_3MapNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32NCNvCsdcxgzuWc7wi_10fish_color20simple_icase_compares_0ENtNtNtB9_6traits8iterator8Iterator4nextB1U_.exit.i.i.i.i.i.i.i: ; preds = %bb.d
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i, i64 4
  %i.s = icmp ult i32 %i.n, 1114112
  tail call void @llvm.assume(i1 %i.s)
  %i.t = add nsw i32 %i.n, -65
  %or.cond.i.i.i.i.i.i.i.i.i = icmp ult i32 %i.t, 26
  %i.u = or disjoint i32 %i.n, 32
  %.sroa.0.0.i3.i.i.i.i.i.i.i.i = select i1 %or.cond.i.i.i.i.i.i.i.i.i, i32 %i.u, i32 %i.n ; 2 uses
  %i.v = icmp eq i32 %.sroa.0.0.i.i.i.i.i.i, %.sroa.0.0.i3.i.i.i.i.i.i.i.i
  br i1 %i.v, label %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map12map_try_foldccuINtNtNtBa_3ops12control_flow11ControlFlowIB13_NtNtBa_3cmp8OrderingB1M_EENCNvCsdcxgzuWc7wi_10fish_color20simple_icase_compare0NCINvNvNtNtNtB8_6traits8iterator8Iterator12try_for_each4callcB12_NCINvNvB3c_12iter_compare7compareINtB4_3MapNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32NCB2e_s_0EcB1M_NCINvNvB3a_6cmp_by7compareccNCINvYIB4E_B4N_B2c_EB3a_3cmpB4D_E0E0E0E0E0B2g_.exit.i.i.i.i, label %.split.loop.exit.i.i.i.i

.split.loop.exit.i.i.i.i:                         ; preds = %_RNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3mapINtB5_3MapNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32NCNvCsdcxgzuWc7wi_10fish_color20simple_icase_compares_0ENtNtNtB9_6traits8iterator8Iterator4nextB1U_.exit.i.i.i.i.i.i.i
  %i.w = tail call noundef range(i8 -1, 2) i8 @llvm.ucmp.i8.i32(i32 range(i32 0, 1114112) %.sroa.0.0.i.i.i.i.i.i, i32 range(i32 0, 1114112) %.sroa.0.0.i3.i.i.i.i.i.i.i.i)
  br label %_RINvNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator12iter_compareINtNtNtB6_8adapters3map3MapNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32NCNvCsdcxgzuWc7wi_10fish_color20simple_icase_compare0EIB11_B1r_NCB2n_s_0ENCINvNvNtB2_8Iterator6cmp_by7compareccNCINvYB10_B3D_3cmpB3d_E0E0NtNtB8_3cmp8OrderingEB2p_.exit

bb.e:                                             ; preds = %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map12map_try_foldccuINtNtNtBa_3ops12control_flow11ControlFlowIB13_NtNtBa_3cmp8OrderingB1M_EENCNvCsdcxgzuWc7wi_10fish_color20simple_icase_compare0NCINvNvNtNtNtB8_6traits8iterator8Iterator12try_for_each4callcB12_NCINvNvB3c_12iter_compare7compareINtB4_3MapNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32NCB2e_s_0EcB1M_NCINvNvB3a_6cmp_by7compareccNCINvYIB4E_B4N_B2c_EB3a_3cmpB4D_E0E0E0E0E0B2g_.exit.i.i.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %3) ]
  %i.x = icmp eq ptr %.sroa.06.0.i, %3
  br i1 %i.x, label %_RINvNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator12iter_compareINtNtNtB6_8adapters3map3MapNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32NCNvCsdcxgzuWc7wi_10fish_color20simple_icase_compare0EIB11_B1r_NCB2n_s_0ENCINvNvNtB2_8Iterator6cmp_by7compareccNCINvYB10_B3D_3cmpB3d_E0E0NtNtB8_3cmp8OrderingEB2p_.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.y = load i32, ptr %.sroa.06.0.i, align 4, !noalias !35, !noundef !5 ; 3 uses
  %i.z = xor i32 %i.y, 55296
  %i.aa = add i32 %i.z, -1114112
  %i.ab = icmp ult i32 %i.aa, -1112064
  br i1 %i.ab, label %.split.i.i.i, label %_RNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3mapINtB5_3MapNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32NCNvCsdcxgzuWc7wi_10fish_color20simple_icase_compares_0ENtNtNtB9_6traits8iterator8Iterator4nextB1U_.exit.i

.split.i.i.i:                                     ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !35
  store i32 %i.y, ptr %i.a, align 4, !noalias !35
  call void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @13, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @12, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @52) #19, !noalias !35
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !38)
  %i.b = load i32, ptr %3, align 4, !noalias !38, !noundef !5 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !38
  %i.c = lshr i32 %i.b, 24                        ; 2 uses
  store i32 %i.c, ptr %i.a, align 4, !noalias !38
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %_RNvMCsdcxgzuWc7wi_10fish_colorNtB2_7Color249from_bits.exit.i, label %bb.b, !prof !8

bb.b:                                             ; preds = %bb.a
  call void @_RINvNtCs3oUPovFnLWP_4core9panicking13assert_failedmmECsaL1QbXo9JQH_3std(i8 noundef 0, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.a, ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(4) @9, ptr noundef nonnull @10, ptr nonnull inttoptr (i64 85 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @11) #19, !noalias !38
  unreachable

_RNvMCsdcxgzuWc7wi_10fish_colorNtB2_7Color249from_bits.exit.i: ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !38
  %i.e = load ptr, ptr %1, align 8, !alias.scope !38, !nonnull !5, !noundef !5
  %i.f = load i8, ptr %i.e, align 1, !noalias !38, !noundef !5 ; 2 uses
  %4 = trunc nuw i32 %i.b to i24
  %5 = lshr i24 %4, 16                            ; 2 uses
  %.sroa.01.0.extract.trunc.i = trunc nuw i24 %5 to i8
  %i.g = icmp ugt i8 %i.f, %.sroa.01.0.extract.trunc.i
  %6 = zext i8 %i.f to i32                        ; 2 uses
  %i.h = zext nneg i24 %5 to i32                  ; 2 uses
  %i.i = sub nsw i32 %6, %i.h
  %i.j = sub nsw i32 %i.h, %6
  %.sroa.01.0.i.i = select i1 %i.g, i32 %i.i, i32 %i.j ; 2 uses
  %i.k = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %.sroa.01.0.i.i, i32 %.sroa.01.0.i.i) ; 2 uses
  %i.l = extractvalue { i32, i1 } %i.k, 1
  %i.m = extractvalue { i32, i1 } %i.k, 0         ; 2 uses
  br i1 %i.l, label %bb.c, label %_RNvMs6_NtCs3oUPovFnLWP_4core3numm11checked_pow.exit.i5.i, !prof !9

bb.c:                                             ; preds = %_RNvMCsdcxgzuWc7wi_10fish_colorNtB2_7Color249from_bits.exit.i
  tail call void @_RNvNtNtNtCs3oUPovFnLWP_4core3num3imp14overflow_panic3pow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @16) #18, !noalias !38
  unreachable

_RNvMs6_NtCs3oUPovFnLWP_4core3numm11checked_pow.exit.i5.i: ; preds = %_RNvMCsdcxgzuWc7wi_10fish_colorNtB2_7Color249from_bits.exit.i
  %.sroa.01.1.extract.shift1.i = lshr i32 %i.b, 8 ; 2 uses
  %.sroa.01.1.extract.trunc.i = trunc i32 %.sroa.01.1.extract.shift1.i to i8
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !alias.scope !38, !nonnull !5, !noundef !5
  %i.p = load i8, ptr %i.o, align 1, !noalias !38, !noundef !5 ; 2 uses
  %i.q = icmp ugt i8 %i.p, %.sroa.01.1.extract.trunc.i
  %i.r = zext i8 %i.p to i32                      ; 2 uses
  %i.s = and i32 %.sroa.01.1.extract.shift1.i, 255 ; 2 uses
  %i.t = sub nsw i32 %i.r, %i.s
  %i.u = sub nsw i32 %i.s, %i.r
  %.sroa.01.0.i3.i = select i1 %i.q, i32 %i.t, i32 %i.u ; 2 uses
  %i.v = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %.sroa.01.0.i3.i, i32 %.sroa.01.0.i3.i) ; 2 uses
  %i.w = extractvalue { i32, i1 } %i.v, 1
  br i1 %i.w, label %bb.d, label %_RNvNvCsdcxgzuWc7wi_10fish_color13convert_color18squared_difference.exit8.i, !prof !9

bb.d:                                             ; preds = %_RNvMs6_NtCs3oUPovFnLWP_4core3numm11checked_pow.exit.i5.i
  tail call void @_RNvNtNtNtCs3oUPovFnLWP_4core3num3imp14overflow_panic3pow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @16) #18, !noalias !38
  unreachable

_RNvNvCsdcxgzuWc7wi_10fish_color13convert_color18squared_difference.exit8.i: ; preds = %_RNvMs6_NtCs3oUPovFnLWP_4core3numm11checked_pow.exit.i5.i
  %7 = extractvalue { i32, i1 } %i.v, 0
  %8 = add nsw i32 %7, %i.m                       ; 3 uses
  %9 = icmp ult i32 %8, %i.m
  br i1 %9, label %10, label %_RNvMs6_NtCs3oUPovFnLWP_4core3numm11checked_pow.exit.i11.i

_RNvMs6_NtCs3oUPovFnLWP_4core3numm11checked_pow.exit.i11.i: ; preds = %_RNvNvCsdcxgzuWc7wi_10fish_color13convert_color18squared_difference.exit8.i
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.y = load ptr, ptr %i.x, align 8, !alias.scope !38, !nonnull !5, !noundef !5
  %i.z = load i8, ptr %i.y, align 1, !noalias !38, !noundef !5 ; 2 uses
  %.sroa.01.2.extract.trunc.i = trunc i32 %i.b to i8
  %i.aa = icmp ugt i8 %i.z, %.sroa.01.2.extract.trunc.i
  %i.ab = zext i8 %i.z to i32                     ; 2 uses
  %i.ac = and i32 %i.b, 255                       ; 2 uses
  %i.ad = sub nsw i32 %i.ab, %i.ac
  %i.ae = sub nsw i32 %i.ac, %i.ab
  %.sroa.01.0.i9.i = select i1 %i.aa, i32 %i.ad, i32 %i.ae ; 2 uses
  %i.af = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %.sroa.01.0.i9.i, i32 %.sroa.01.0.i9.i) ; 2 uses
  %i.ag = extractvalue { i32, i1 } %i.af, 1
  br i1 %i.ag, label %bb.e, label %_RNvNvCsdcxgzuWc7wi_10fish_color13convert_color18squared_difference.exit14.i, !prof !9

bb.e:                                             ; preds = %_RNvMs6_NtCs3oUPovFnLWP_4core3numm11checked_pow.exit.i11.i
  tail call void @_RNvNtNtNtCs3oUPovFnLWP_4core3num3imp14overflow_panic3pow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @16) #18, !noalias !38
  unreachable

_RNvNvCsdcxgzuWc7wi_10fish_color13convert_color18squared_difference.exit14.i: ; preds = %_RNvMs6_NtCs3oUPovFnLWP_4core3numm11checked_pow.exit.i11.i
  %i.ah = extractvalue { i32, i1 } %i.af, 0
  %i.ai = add nsw i32 %i.ah, %8                   ; 2 uses
  %i.aj = icmp ult i32 %i.ai, %8
  br i1 %i.aj, label %bb.f, label %_RNCNvCsdcxgzuWc7wi_10fish_color13convert_color0B3_.exit

10:                                               ; preds = %_RNvNvCsdcxgzuWc7wi_10fish_color13convert_color18squared_difference.exit8.i
  tail call void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const24panic_const_add_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #19, !noalias !38
  unreachable

bb.f:                                             ; preds = %_RNvNvCsdcxgzuWc7wi_10fish_color13convert_color18squared_difference.exit14.i
  tail call void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const24panic_const_add_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #19, !noalias !38
  unreachable

_RNCNvCsdcxgzuWc7wi_10fish_color13convert_color0B3_.exit: ; preds = %_RNvNvCsdcxgzuWc7wi_10fish_color13convert_color18squared_difference.exit14.i
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.ai, ptr %i.ak, align 8
  store i64 %2, ptr %0, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %3, ptr %i.al, align 8
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
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !82
  tail call void @llvm.experimental.noalias.scope.decl(metadata !83)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !84)
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %i.f, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !85, !noalias !86
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 24 ; 2 uses
  store ptr %i.e, ptr %i.i, align 8, !alias.scope !87, !noalias !88
  %.sroa.55.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  store ptr %i.g, ptr %.sroa.55.0..sroa_idx, align 8, !alias.scope !87, !noalias !88
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  store ptr %i.h, ptr %.sroa.6.0..sroa_idx, align 8, !alias.scope !87, !noalias !88
  call void @llvm.experimental.noalias.scope.decl(metadata !89)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !90
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  store ptr %i.j, ptr %i.d, align 8, !alias.scope !91, !noalias !92
  store i64 1, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !93, !noalias !92
  call fastcc void @_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator10min_by_key3keyTjRmEmNCNvCsdcxgzuWc7wi_10fish_color13convert_color0E0B1r_(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.c, ptr noalias nofree noundef align 8 dereferenceable(24) %i.i, i64 noundef 0, ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(4) %1) #20, !noalias !94
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.pre.i.i = load ptr, ptr %.phi.trans.insert.i.i, align 8, !noalias !90 ; 2 uses
  %i.k = icmp eq ptr %.pre.i.i, null
  br i1 %i.k, label %_RINvYINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtB8_9enumerate9EnumerateINtNtNtBc_5slice4iter4ItermEENCINvNvNtNtNtBa_6traits8iterator8Iterator10min_by_key3keyTjRmEmNCNvCsdcxgzuWc7wi_10fish_color13convert_color0E0EB1T_6reduceNvYINtNtBc_3cmp11KeyAndValuemB2H_ENtB3R_3Ord3minEB2R_.exit.thread.i, label %bb.a

bb.a:                                             ; preds = %_RNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3mapINtB5_3MapINtNtB7_9enumerate9EnumerateINtNtNtBb_5slice4iter4ItermEENCINvNvNtNtNtB9_6traits8iterator8Iterator10min_by_key3keyTjRmEmNCNvCsdcxgzuWc7wi_10fish_color13convert_color0E0EB1Y_4nextB2W_.exit.i.i
  %.sroa.017.0.copyload.i = load i64, ptr %i.c, align 8, !noalias !90
  %.sroa.622.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.sroa.622.0.copyload.i = load i64, ptr %.sroa.622.0..sroa_idx.i, align 8, !noalias !90
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !90
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !95
  store ptr %i.e, ptr %i.b, align 8, !noalias !96
  %.sroa.55.0..sroa_idx6 = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.g, ptr %.sroa.55.0..sroa_idx6, align 8, !noalias !96
  %.sroa.6.0..sroa_idx8 = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.h, ptr %.sroa.6.0..sroa_idx8, align 8, !noalias !96
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  store i64 1, ptr %i.l, align 8, !noalias !95
  call void @llvm.experimental.noalias.scope.decl(metadata !97)
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
  %i.o = phi i64 [ 1, %bb.a ], [ %i.r, %_RNCINvNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateRmINtNtBf_3cmp11KeyAndValuemTjB21_EENCINvNtBb_3map8map_foldB2t_B23_B23_NCINvNvB1e_10min_by_key3keyB2t_mNCNvCsdcxgzuWc7wi_10fish_color13convert_color0E0NvYB23_NtB26_3Ord3minE0E0B3K_.exit.i.i.i.i.i ] ; 2 uses
  %.sroa.01.0.i.i.i.i.i = phi i64 [ 0, %bb.a ], [ %i.s, %_RNCINvNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateRmINtNtBf_3cmp11KeyAndValuemTjB21_EENCINvNtBb_3map8map_foldB2t_B23_B23_NCINvNvB1e_10min_by_key3keyB2t_mNCNvCsdcxgzuWc7wi_10fish_color13convert_color0E0NvYB23_NtB26_3Ord3minE0E0B3K_.exit.i.i.i.i.i ] ; 2 uses
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %.sroa.01.0.i.i.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !98)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !99
  call fastcc void @_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator10min_by_key3keyTjRmEmNCNvCsdcxgzuWc7wi_10fish_color13convert_color0E0B1r_(ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.n, ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(32) %i.b, i64 noundef %i.o, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.p) #20, !noalias !100
  %.sroa.9.24.copyload.i = load i64, ptr %i.n, align 8, !noalias !101
  %.sroa.11.24.copyload.i = load ptr, ptr %.sroa.11.24..sroa_idx.i, align 8, !noalias !101
  %.sroa.12.24.copyload.i = load i64, ptr %.sroa.12.24..sroa_idx.i, align 8, !noalias !101 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !99
  %.sroa.640.sroa.0.0.extract.trunc.i = trunc i64 %.sroa.8.0.i to i32
  %.sroa.12.sroa.0.0.extract.trunc.i = trunc i64 %.sroa.12.24.copyload.i to i32
  %i.q = icmp ult i32 %.sroa.12.sroa.0.0.extract.trunc.i, %.sroa.640.sroa.0.0.extract.trunc.i ; 3 uses
  %.sroa.4.0.copyload.sroa.speculated.i = select i1 %i.q, ptr %.sroa.11.24.copyload.i, ptr %.sroa.627.0.i ; 2 uses
  %.sroa.032.0.copyload.sroa.speculated.i = select i1 %i.q, i64 %.sroa.9.24.copyload.i, i64 %.sroa.025.0.i ; 2 uses
  %.sroa.533.0.copyload.i = select i1 %i.q, i64 %.sroa.12.24.copyload.i, i64 %.sroa.8.0.i
  %i.r = add nuw nsw i64 %i.o, 1                  ; 2 uses
  store i64 %i.r, ptr %i.l, align 8, !alias.scope !102, !noalias !103
  %i.s = add nuw nsw i64 %.sroa.01.0.i.i.i.i.i, 1 ; 2 uses
  %i.t = icmp eq i64 %i.s, %i.m
  br i1 %i.t, label %_RINvYINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtB8_9enumerate9EnumerateINtNtNtBc_5slice4iter4ItermEENCINvNvNtNtNtBa_6traits8iterator8Iterator10min_by_key3keyTjRmEmNCNvCsdcxgzuWc7wi_10fish_color13convert_color0E0EB1T_6reduceNvYINtNtBc_3cmp11KeyAndValuemB2H_ENtB3R_3Ord3minEB2R_.exit.i, label %_RNCINvNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateRmINtNtBf_3cmp11KeyAndValuemTjB21_EENCINvNtBb_3map8map_foldB2t_B23_B23_NCINvNvB1e_10min_by_key3keyB2t_mNCNvCsdcxgzuWc7wi_10fish_color13convert_color0E0NvYB23_NtB26_3Ord3minE0E0B3K_.exit.i.i.i.i.i

_RINvYINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtB8_9enumerate9EnumerateINtNtNtBc_5slice4iter4ItermEENCINvNvNtNtNtBa_6traits8iterator8Iterator10min_by_key3keyTjRmEmNCNvCsdcxgzuWc7wi_10fish_color13convert_color0E0EB1T_6reduceNvYINtNtBc_3cmp11KeyAndValuemB2H_ENtB3R_3Ord3minEB2R_.exit.thread.i: ; preds = %_RNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3mapINtB5_3MapINtNtB7_9enumerate9EnumerateINtNtNtBb_5slice4iter4ItermEENCINvNvNtNtNtB9_6traits8iterator8Iterator10min_by_key3keyTjRmEmNCNvCsdcxgzuWc7wi_10fish_color13convert_color0E0EB1Y_4nextB2W_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !90
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !82
  br label %bb.c

_RINvYINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtB8_9enumerate9EnumerateINtNtNtBc_5slice4iter4ItermEENCINvNvNtNtNtBa_6traits8iterator8Iterator10min_by_key3keyTjRmEmNCNvCsdcxgzuWc7wi_10fish_color13convert_color0E0EB1T_6reduceNvYINtNtBc_3cmp11KeyAndValuemB2H_ENtB3R_3Ord3minEB2R_.exit.i: ; preds = %_RNCINvNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateRmINtNtBf_3cmp11KeyAndValuemTjB21_EENCINvNtBb_3map8map_foldB2t_B23_B23_NCINvNvB1e_10min_by_key3keyB2t_mNCNvCsdcxgzuWc7wi_10fish_color13convert_color0E0NvYB23_NtB26_3Ord3minE0E0B3K_.exit.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !95
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !82
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
  %i.b = load i64, ptr %0, align 8, !range !4, !noundef !5 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !106)
  %i.c = shl nuw i64 %i.b, 1
  %i.d = tail call i64 @llvm.umax.i64(i64 %i.c, i64 4) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !106
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.val13.i = load ptr, ptr %i.e, align 8, !alias.scope !106
  call fastcc void @_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner11finish_growCsdcxgzuWc7wi_10fish_color(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.a, i64 %i.b, ptr %.val13.i, i64 noundef %i.d)
  %i.f = load i64, ptr %i.a, align 8, !range !6, !noalias !106, !noundef !5
  %i.g = trunc nuw i64 %i.f to i1
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = load i64, ptr %i.h, align 8, !range !7, !noalias !106, !noundef !5
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.k = load i64, ptr %i.j, align 8, !noalias !106
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !106
  tail call void @_RNvNtCs1xwejQucwHj_5alloc7raw_vec12handle_error(i64 noundef %i.i, i64 %i.k) #18
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.l = load ptr, ptr %i.h, align 8, !noalias !106, !nonnull !5, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !106
  store ptr %i.l, ptr %i.e, align 8, !alias.scope !106
  %i.m = icmp sgt i64 %i.d, -1
  tail call void @llvm.assume(i1 %i.m)
  store i64 %i.d, ptr %0, align 8, !alias.scope !106
  ret void
}

; Function Attrs: cold nounwind nonlazybind uwtable
define internal fastcc void @_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner11finish_growCsdcxgzuWc7wi_10fish_color(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) initializes((0, 8)) %0, i64 %.0.val, ptr %.8.val, i64 noundef %1) unnamed_addr #4 {
bb.a:
  %i.a = shl i64 %1, 4                            ; 7 uses
  %i.b = icmp ult i64 %1, 1152921504606846976
  %i.c = icmp ult i64 %i.a, 9223372036854775801
  %or.cond = and i1 %i.b, %i.c
  br i1 %or.cond, label %bb.b, label %bb.f, !prof !107

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
end_hunk_0
