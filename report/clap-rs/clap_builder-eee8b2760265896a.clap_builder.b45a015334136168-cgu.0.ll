Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/clap-rs/original/clap_builder-eee8b2760265896a.clap_builder.b45a015334136168-cgu.0?download=true
inline.NumInlined: 5218
inline.NumDeleted: 2692
loop-unroll.NumCompletelyUnrolled: 13
loop-unroll.NumRuntimeUnrolled: 38
loop-unroll.NumUnrolled: 51
begin_hunk_0_@_RNvMs1_NtNtCsfu0rQaTkGUu_12clap_builder6output13help_templateNtB5_12HelpTemplate11use_long_pv:bb.a
_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsfu0rQaTkGUu_12clap_builder7builder14possible_value13PossibleValueEBH_.exit.i.i.i: ; preds = %bb.m, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_str9StyledStrEEB13_.exit.i.i.i.i
  %i.ak = icmp eq i64 %i.ab, %i.q
  br i1 %i.ak, label %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder7builder14possible_value13PossibleValueENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBL_.exit.i, label %.lr.ph.i.i.i

_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder7builder14possible_value13PossibleValueENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBL_.exit.i: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsfu0rQaTkGUu_12clap_builder7builder14possible_value13PossibleValueEBH_.exit.i.i.i, %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterNtNtNtCsfu0rQaTkGUu_12clap_builder7builder14possible_value13PossibleValueENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNvMs_BS_BQ_16should_show_helpEBW_.exit
  %.val2.i2 = load i64, ptr %i.a, align 8, !range !12, !alias.scope !3895, !noundef !11 ; 2 uses
  %i.al = icmp eq i64 %.val2.i2, 0
  br i1 %i.al, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCsfu0rQaTkGUu_12clap_builder7builder14possible_value13PossibleValueEEB1e_.exit, label %bb.n

bb.n:                                             ; preds = %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder7builder14possible_value13PossibleValueENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBL_.exit.i
  %i.am = mul nuw i64 %.val2.i2, 72
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %i.r, i64 noundef %i.am, i64 noundef range(i64 1, -9223372036854775807) 8) #43, !noalias !3895
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCsfu0rQaTkGUu_12clap_builder7builder14possible_value13PossibleValueEEB1e_.exit

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCsfu0rQaTkGUu_12clap_builder7builder14possible_value13PossibleValueEEB1e_.exit: ; preds = %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder7builder14possible_value13PossibleValueENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBL_.exit.i, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.o

bb.o:                                             ; preds = %bb.a, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCsfu0rQaTkGUu_12clap_builder7builder14possible_value13PossibleValueEEB1e_.exit
  %.sroa.0.0 = phi i1 [ %.not.not.not.i.not.not.not.lcssa, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCsfu0rQaTkGUu_12clap_builder7builder14possible_value13PossibleValueEEB1e_.exit ], [ false, %bb.a ]
  ret i1 %.sroa.0.0
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @_RNvMs1_NtNtCsfu0rQaTkGUu_12clap_builder6output13help_templateNtB5_12HelpTemplate4help(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %0, ptr noalias nofree noundef readonly align 8 captures(address_is_null) dereferenceable_or_null(600) %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %2, ptr noalias nofree noundef nonnull readonly captures(none) %3, i64 noundef %4, i1 noundef zeroext %5, i64 noundef %6) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 19 uses
  %i.d = alloca [32 x i8], align 16               ; 6 uses
  %i.e = alloca [32 x i8], align 16               ; 6 uses
  %i.f = alloca [32 x i8], align 8                ; 7 uses
  %i.g = alloca [24 x i8], align 8                ; 13 uses
  %i.h = alloca [16 x i8], align 8                ; 6 uses
  %i.i = alloca [32 x i8], align 8                ; 7 uses
  %i.j = alloca [24 x i8], align 8                ; 10 uses
  %i.k = alloca [24 x i8], align 8                ; 13 uses
  %i.l = alloca [8 x i8], align 8                 ; 4 uses
  %i.m = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.o = load ptr, ptr %i.n, align 8, !nonnull !11, !align !38, !noundef !11
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 42
  store ptr %i.p, ptr %i.l, align 8
  store ptr %i.l, ptr %i.m, align 8
  br i1 %5, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !nonnull !11, !align !17, !noundef !11 ; 8 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !4058)
  call void @llvm.experimental.noalias.scope.decl(metadata !4059)
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 16 ; 7 uses
  %i.t = load i64, ptr %i.s, align 8, !alias.scope !4060, !noalias !4061, !noundef !11 ; 3 uses
  %i.u = load i64, ptr %i.r, align 8, !range !12, !alias.scope !4060, !noalias !4061, !noundef !11
  %i.v = icmp eq i64 %i.u, %i.t
  br i1 %i.v, label %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCsfu0rQaTkGUu_12clap_builder.exit.thread.i.i, label %_RNvMNtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_strNtB2_9StyledStr8push_str.exit, !prof !19

_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCsfu0rQaTkGUu_12clap_builder.exit.thread.i.i: ; preds = %bb.b
  call fastcc void @_RINvNvMs2_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsfu0rQaTkGUu_12clap_builder(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.r, i64 noundef %i.t, i64 noundef 1, i64 noundef 1, i64 noundef 1) #43, !noalias !4061
  %i.w = load i64, ptr %i.s, align 8, !alias.scope !4062, !noalias !4061, !noundef !11
  br label %_RNvMNtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_strNtB2_9StyledStr8push_str.exit

_RNvMNtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_strNtB2_9StyledStr8push_str.exit: ; preds = %bb.b, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCsfu0rQaTkGUu_12clap_builder.exit.thread.i.i
  %.sink310 = phi i64 [ %i.w, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCsfu0rQaTkGUu_12clap_builder.exit.thread.i.i ], [ %i.t, %bb.b ] ; 3 uses
  %i.x = icmp sgt i64 %.sink310, -1
  call void @llvm.assume(i1 %i.x)
  %i.y = getelementptr inbounds nuw i8, ptr %i.r, i64 8 ; 3 uses
  %i.z = load ptr, ptr %i.y, align 8, !alias.scope !4062, !noalias !4061, !nonnull !11, !noundef !11
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 %.sink310
  store i8 10, ptr %i.aa, align 1, !noalias !4062
  %i.ab = add nuw i64 %.sink310, 1                ; 4 uses
  store i64 %i.ab, ptr %i.s, align 8, !alias.scope !4062, !noalias !4061
  call void @llvm.experimental.noalias.scope.decl(metadata !4063)
  call void @llvm.experimental.noalias.scope.decl(metadata !4064)
  %i.ac = load i64, ptr %i.r, align 8, !range !12, !alias.scope !4065, !noalias !4066, !noundef !11
  %i.ad = sub i64 %i.ac, %i.ab
  %i.ae = icmp ult i64 %i.ad, 2
  br i1 %i.ae, label %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCsfu0rQaTkGUu_12clap_builder.exit.thread.i.i149, label %_RNvMNtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_strNtB2_9StyledStr8push_str.exit150, !prof !19

_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCsfu0rQaTkGUu_12clap_builder.exit.thread.i.i149: ; preds = %_RNvMNtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_strNtB2_9StyledStr8push_str.exit
  call fastcc void @_RINvNvMs2_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsfu0rQaTkGUu_12clap_builder(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.r, i64 noundef %i.ab, i64 noundef 2, i64 noundef 1, i64 noundef 1) #43, !noalias !4066
  %i.af = load i64, ptr %i.s, align 8, !alias.scope !4067, !noalias !4066, !noundef !11
  br label %_RNvMNtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_strNtB2_9StyledStr8push_str.exit150

_RNvMNtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_strNtB2_9StyledStr8push_str.exit150: ; preds = %_RNvMNtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_strNtB2_9StyledStr8push_str.exit, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCsfu0rQaTkGUu_12clap_builder.exit.thread.i.i149
  %.sink311 = phi i64 [ %i.af, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCsfu0rQaTkGUu_12clap_builder.exit.thread.i.i149 ], [ %i.ab, %_RNvMNtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_strNtB2_9StyledStr8push_str.exit ] ; 3 uses
  %i.ag = icmp sgt i64 %.sink311, -1
  call void @llvm.assume(i1 %i.ag)
  %i.ah = load ptr, ptr %i.y, align 8, !alias.scope !4067, !noalias !4066, !nonnull !11, !noundef !11
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 %.sink311
  store i16 8224, ptr %i.ai, align 1, !noalias !4067
  %i.aj = add nuw i64 %.sink311, 2                ; 4 uses
  store i64 %i.aj, ptr %i.s, align 8, !alias.scope !4067, !noalias !4066
  call void @llvm.experimental.noalias.scope.decl(metadata !4068)
  call void @llvm.experimental.noalias.scope.decl(metadata !4069)
  %i.ak = load i64, ptr %i.r, align 8, !range !12, !alias.scope !4070, !noalias !4071, !noundef !11
  %i.al = sub i64 %i.ak, %i.aj
  %i.am = icmp ult i64 %i.al, 8
  br i1 %i.am, label %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCsfu0rQaTkGUu_12clap_builder.exit.thread.i.i152, label %.thread244, !prof !19

_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCsfu0rQaTkGUu_12clap_builder.exit.thread.i.i152: ; preds = %_RNvMNtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_strNtB2_9StyledStr8push_str.exit150
  call fastcc void @_RINvNvMs2_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsfu0rQaTkGUu_12clap_builder(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.r, i64 noundef %i.aj, i64 noundef 8, i64 noundef 1, i64 noundef 1) #43, !noalias !4071
  %i.an = load i64, ptr %i.s, align 8, !alias.scope !4072, !noalias !4071, !noundef !11
  br label %.thread244

.thread244:                                       ; preds = %_RNvMNtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_strNtB2_9StyledStr8push_str.exit150, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCsfu0rQaTkGUu_12clap_builder.exit.thread.i.i152
  %.sink312 = phi i64 [ %i.an, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCsfu0rQaTkGUu_12clap_builder.exit.thread.i.i152 ], [ %i.aj, %_RNvMNtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_strNtB2_9StyledStr8push_str.exit150 ] ; 3 uses
  %i.ao = icmp sgt i64 %.sink312, -1
  call void @llvm.assume(i1 %i.ao)
  %i.ap = load ptr, ptr %i.y, align 8, !alias.scope !4072, !noalias !4071, !nonnull !11, !noundef !11
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 %.sink312
  store i64 2314885530818453536, ptr %i.aq, align 1, !noalias !4072
  %i.ar = add nuw i64 %.sink312, 8
  store i64 %i.ar, ptr %i.s, align 8, !alias.scope !4072, !noalias !4071
  br label %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i.i.i

bb.c:                                             ; preds = %bb.a
  %i.as = add i64 %6, 4                           ; 4 uses
  %i.at = icmp eq i64 %i.as, 0
  br i1 %i.at, label %_RNvMs1_NtNtCsfu0rQaTkGUu_12clap_builder6output13help_templateNtB5_12HelpTemplate10get_spaces.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.not.i.i.i.i = icmp slt i64 %i.as, 0
  br i1 %.not.i.i.i.i, label %bb.e, label %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i.i.i, !prof !44

_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i.i.i: ; preds = %.thread244, %bb.d
  %.sroa.012.0239247 = phi i64 [ 10, %.thread244 ], [ %i.as, %bb.d ] ; 7 uses
  call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #43, !noalias !4073
  %i.au = call noundef ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %.sroa.012.0239247, i64 noundef range(i64 1, 9) 1) #43, !noalias !4073 ; 8 uses
  %i.av = icmp eq ptr %i.au, null
  br i1 %i.av, label %bb.e, label %_RNvXs2_NtNtCs4wP2HXfJTCR_5alloc3vec11spec_extendINtB7_3VechEINtB5_10SpecExtendRhINtNtNtCsj6eKBz9Db1c_4core5slice4iter4IterhEE11spec_extendCsfu0rQaTkGUu_12clap_builder.exit.i.i

bb.e:                                             ; preds = %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i.i.i, %bb.d
  %.sroa.012.0239248 = phi i64 [ %.sroa.012.0239247, %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i.i.i ], [ %i.as, %bb.d ]
  %.sroa.4.0.ph.i.i.i = phi i64 [ 1, %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i.i.i ], [ 0, %bb.d ]
  call void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i.i.i, i64 %.sroa.012.0239248) #46, !noalias !4074
  unreachable

_RNvXs2_NtNtCs4wP2HXfJTCR_5alloc3vec11spec_extendINtB7_3VechEINtB5_10SpecExtendRhINtNtNtCsj6eKBz9Db1c_4core5slice4iter4IterhEE11spec_extendCsfu0rQaTkGUu_12clap_builder.exit.i.i: ; preds = %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i.i.i
  store i8 32, ptr %i.au, align 1, !noalias !4075
  %.sroa.01.01.i.i = lshr i64 %.sroa.012.0239247, 1 ; 2 uses
  %.not2.i.i = icmp eq i64 %.sroa.01.01.i.i, 0
  br i1 %.not2.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i, %_RNvXs2_NtNtCs4wP2HXfJTCR_5alloc3vec11spec_extendINtB7_3VechEINtB5_10SpecExtendRhINtNtNtCsj6eKBz9Db1c_4core5slice4iter4IterhEE11spec_extendCsfu0rQaTkGUu_12clap_builder.exit.i.i
  %storemerge.lcssa.i.i = phi i64 [ 1, %_RNvXs2_NtNtCs4wP2HXfJTCR_5alloc3vec11spec_extendINtB7_3VechEINtB5_10SpecExtendRhINtNtNtCsj6eKBz9Db1c_4core5slice4iter4IterhEE11spec_extendCsfu0rQaTkGUu_12clap_builder.exit.i.i ], [ %i.ay, %.lr.ph.i.i ] ; 4 uses
  %i.aw = icmp sgt i64 %storemerge.lcssa.i.i, -1
  call void @llvm.assume(i1 %i.aw)
  %.not5.i.i = icmp eq i64 %.sroa.012.0239247, %storemerge.lcssa.i.i
  br i1 %.not5.i.i, label %_RNvMs1_NtNtCsfu0rQaTkGUu_12clap_builder6output13help_templateNtB5_12HelpTemplate10get_spaces.exit, label %bb.f

.lr.ph.i.i:                                       ; preds = %_RNvXs2_NtNtCs4wP2HXfJTCR_5alloc3vec11spec_extendINtB7_3VechEINtB5_10SpecExtendRhINtNtNtCsj6eKBz9Db1c_4core5slice4iter4IterhEE11spec_extendCsfu0rQaTkGUu_12clap_builder.exit.i.i, %.lr.ph.i.i
  %.sroa.01.04.i.i = phi i64 [ %.sroa.01.0.i.i, %.lr.ph.i.i ], [ %.sroa.01.01.i.i, %_RNvXs2_NtNtCs4wP2HXfJTCR_5alloc3vec11spec_extendINtB7_3VechEINtB5_10SpecExtendRhINtNtNtCsj6eKBz9Db1c_4core5slice4iter4IterhEE11spec_extendCsfu0rQaTkGUu_12clap_builder.exit.i.i ]
  %storemerge3.i.i = phi i64 [ %i.ay, %.lr.ph.i.i ], [ 1, %_RNvXs2_NtNtCs4wP2HXfJTCR_5alloc3vec11spec_extendINtB7_3VechEINtB5_10SpecExtendRhINtNtNtCsj6eKBz9Db1c_4core5slice4iter4IterhEE11spec_extendCsfu0rQaTkGUu_12clap_builder.exit.i.i ] ; 3 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.au, i64 %storemerge3.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.ax, ptr noundef nonnull align 1 dereferenceable(1) %i.au, i64 %storemerge3.i.i, i1 false), !noalias !4074
  %i.ay = shl nuw i64 %storemerge3.i.i, 1         ; 2 uses
  %.sroa.01.0.i.i = lshr i64 %.sroa.01.04.i.i, 1  ; 2 uses
  %.not.i.i = icmp eq i64 %.sroa.01.0.i.i, 0
  br i1 %.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

bb.f:                                             ; preds = %._crit_edge.i.i
  %i.az = sub nsw i64 %.sroa.012.0239247, %storemerge.lcssa.i.i
  %i.ba = getelementptr inbounds nuw i8, ptr %i.au, i64 %storemerge.lcssa.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ba, ptr nonnull align 1 %i.au, i64 %i.az, i1 false), !noalias !4074
  br label %_RNvMs1_NtNtCsfu0rQaTkGUu_12clap_builder6output13help_templateNtB5_12HelpTemplate10get_spaces.exit

_RNvMs1_NtNtCsfu0rQaTkGUu_12clap_builder6output13help_templateNtB5_12HelpTemplate10get_spaces.exit: ; preds = %bb.c, %._crit_edge.i.i, %bb.f
  %i.bb = phi i1 [ false, %._crit_edge.i.i ], [ false, %bb.f ], [ true, %bb.c ]
  %.sroa.012.0240 = phi i64 [ %.sroa.012.0239247, %._crit_edge.i.i ], [ %.sroa.012.0239247, %bb.f ], [ 0, %bb.c ] ; 8 uses
  %.sink7.i.i = phi ptr [ %i.au, %._crit_edge.i.i ], [ %i.au, %bb.f ], [ inttoptr (i64 1 to ptr), %bb.c ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  call void @_RNvXs4_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.k, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %2) #43
  %i.bc = getelementptr inbounds nuw i8, ptr %i.k, i64 16 ; 7 uses
  %i.bd = load i64, ptr %i.bc, align 8, !noundef !11 ; 3 uses
  %i.be = icmp sgt i64 %i.bd, -1
  call void @llvm.assume(i1 %i.be)
  %i.bf = icmp eq i64 %i.bd, 0                    ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !4076)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !4076
  %i.bg = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 5 uses
  %i.bh = load ptr, ptr %i.bg, align 8, !alias.scope !4076, !nonnull !11, !noundef !11 ; 2 uses
  call fastcc void @_RINvMs3_NtCs4wP2HXfJTCR_5alloc3stre7replaceReECsfu0rQaTkGUu_12clap_builder(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.bh, i64 noundef %i.bd) #45
  call void @llvm.experimental.noalias.scope.decl(metadata !4077)
  %.val.i.i = load i64, ptr %i.k, align 8, !range !12, !alias.scope !4078, !noundef !11 ; 2 uses
  %i.bi = icmp eq i64 %.val.i.i, 0
  br i1 %i.bi, label %_RNvMNtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_strNtB2_9StyledStr19replace_newline_var.exit, label %bb.g

bb.g:                                             ; preds = %_RNvMs1_NtNtCsfu0rQaTkGUu_12clap_builder6output13help_templateNtB5_12HelpTemplate10get_spaces.exit
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %i.bh, i64 noundef %.val.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #43, !noalias !4078
  br label %_RNvMNtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_strNtB2_9StyledStr19replace_newline_var.exit

_RNvMNtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_strNtB2_9StyledStr19replace_newline_var.exit: ; preds = %_RNvMs1_NtNtCsfu0rQaTkGUu_12clap_builder6output13help_templateNtB5_12HelpTemplate10get_spaces.exit, %bb.g
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.k, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !4076
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 41
  %i.bk = load i8, ptr %i.bj, align 1, !range !34, !noundef !11 ; 2 uses
  %i.bl = trunc nuw i8 %i.bk to i1
  %i.bm = icmp ne ptr %1, null
  %.sroa.015.0 = and i1 %i.bm, %i.bl              ; 3 uses
  %i.bn = icmp eq i64 %4, 0                       ; 3 uses
  %or.cond = or i1 %i.bn, %.sroa.015.0
  br i1 %or.cond, label %bb.h, label %bb.j

bb.h:                                             ; preds = %_RNvMNtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_strNtB2_9StyledStr8push_str.exit163, %_RNvMNtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_strNtB2_9StyledStr19replace_newline_var.exit
  %.sroa.018.0.in = phi i1 [ %i.bf, %_RNvMNtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_strNtB2_9StyledStr19replace_newline_var.exit ], [ %i.cw, %_RNvMNtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_strNtB2_9StyledStr8push_str.exit163 ] ; 2 uses
  call fastcc void @_RNvMNtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_strNtB2_9StyledStr6indent(ptr noalias nofree noundef align 8 dereferenceable(24) %i.k, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sink7.i.i, i64 noundef %.sroa.012.0240) #43
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bp = load ptr, ptr %i.bo, align 8, !nonnull !11, !align !17, !noundef !11 ; 14 uses
  %.val145 = load ptr, ptr %i.bg, align 8, !nonnull !11, !noundef !11
  %.val146 = load i64, ptr %i.bc, align 8, !noundef !11 ; 5 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !4079)
  call void @llvm.experimental.noalias.scope.decl(metadata !4080)
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 16 ; 12 uses
  %i.br = load i64, ptr %i.bq, align 8, !alias.scope !4081, !noundef !11 ; 5 uses
  %i.bs = load i64, ptr %i.bp, align 8, !range !12, !alias.scope !4081, !noundef !11
  %i.bt = sub i64 %i.bs, %i.br
  %i.bu = icmp ugt i64 %.val146, %i.bt
  br i1 %i.bu, label %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCsfu0rQaTkGUu_12clap_builder.exit.thread.i.i156, label %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCsfu0rQaTkGUu_12clap_builder.exit.i.i154, !prof !19

_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCsfu0rQaTkGUu_12clap_builder.exit.thread.i.i156: ; preds = %bb.h
  call fastcc void @_RINvNvMs2_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsfu0rQaTkGUu_12clap_builder(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bp, i64 noundef %i.br, i64 noundef %.val146, i64 noundef 1, i64 noundef 1) #43
  %i.bv = load i64, ptr %i.bq, align 8, !alias.scope !4082, !noundef !11 ; 2 uses
  %i.bw = icmp sgt i64 %i.bv, -1
  call void @llvm.assume(i1 %i.bw)
  br label %bb.i

_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCsfu0rQaTkGUu_12clap_builder.exit.i.i154: ; preds = %bb.h
  %i.bx = icmp sgt i64 %i.br, -1
  call void @llvm.assume(i1 %i.bx)
  %.not.i.i155 = icmp eq i64 %.val146, 0
  br i1 %.not.i.i155, label %_RNvMNtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_strNtB2_9StyledStr11push_styled.exit, label %bb.i

bb.i:                                             ; preds = %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCsfu0rQaTkGUu_12clap_builder.exit.i.i154, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCsfu0rQaTkGUu_12clap_builder.exit.thread.i.i156
  %i.by = phi i64 [ %i.bv, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCsfu0rQaTkGUu_12clap_builder.exit.thread.i.i156 ], [ %i.br, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCsfu0rQaTkGUu_12clap_builder.exit.i.i154 ] ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  %i.ca = load ptr, ptr %i.bz, align 8, !alias.scope !4082, !nonnull !11, !noundef !11
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 %i.by
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.cb, ptr nonnull readonly align 1 %.val145, i64 %.val146, i1 false), !noalias !4082
  br label %_RNvMNtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_strNtB2_9StyledStr11push_styled.exit

_RNvMNtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_strNtB2_9StyledStr11push_styled.exit: ; preds = %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCsfu0rQaTkGUu_12clap_builder.exit.i.i154, %bb.i
  %i.cc = phi i64 [ %i.by, %bb.i ], [ %i.br, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCsfu0rQaTkGUu_12clap_builder.exit.i.i154 ]
  %i.cd = add i64 %i.cc, %.val146
  store i64 %i.cd, ptr %i.bq, align 8, !alias.scope !4082
  %.not136 = icmp eq ptr %1, null
  br i1 %.not136, label %bb.n, label %bb.m

bb.j:                                             ; preds = %_RNvMNtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_strNtB2_9StyledStr19replace_newline_var.exit
  %.pre = load i64, ptr %i.bc, align 8, !noalias !11 ; 5 uses
  %.pre273 = load i64, ptr %i.k, align 8, !range !12, !noalias !11 ; 3 uses
  br i1 %i.bf, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @llvm.experimental.noalias.scope.decl(metadata !4083)
  call void @llvm.experimental.noalias.scope.decl(metadata !4084)
  %i.ce = icmp eq i64 %.pre273, %.pre
  br i1 %i.ce, label %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCsfu0rQaTkGUu_12clap_builder.exit.thread.i.i158, label %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCsfu0rQaTkGUu_12clap_builder.exit.i.i157, !prof !19

_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCsfu0rQaTkGUu_12clap_builder.exit.thread.i.i158: ; preds = %bb.k
  call fastcc void @_RINvNvMs2_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsfu0rQaTkGUu_12clap_builder(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.k, i64 noundef %.pre, i64 noundef 1, i64 noundef 1, i64 noundef 1) #43, !noalias !4085
  %i.cf = load i64, ptr %i.bc, align 8, !alias.scope !4086, !noalias !4085, !noundef !11 ; 2 uses
  %i.cg = icmp sgt i64 %i.cf, -1
  call void @llvm.assume(i1 %i.cg)
  %.pre272.pre = load i64, ptr %i.k, align 8, !range !12, !alias.scope !4087, !noalias !4088
  br label %_RNvMNtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_strNtB2_9StyledStr8push_str.exit159

_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCsfu0rQaTkGUu_12clap_builder.exit.i.i157: ; preds = %bb.k
  %i.ch = icmp sgt i64 %.pre, -1
  call void @llvm.assume(i1 %i.ch)
  br label %_RNvMNtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_strNtB2_9StyledStr8push_str.exit159

_RNvMNtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_strNtB2_9StyledStr8push_str.exit159: ; preds = %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCsfu0rQaTkGUu_12clap_builder.exit.thread.i.i158, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCsfu0rQaTkGUu_12clap_builder.exit.i.i157
  %.pre272 = phi i64 [ %.pre272.pre, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCsfu0rQaTkGUu_12clap_builder.exit.thread.i.i158 ], [ %.pre273, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCsfu0rQaTkGUu_12clap_builder.exit.i.i157 ]
  %i.ci = phi i64 [ %i.cf, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCsfu0rQaTkGUu_12clap_builder.exit.thread.i.i158 ], [ %.pre, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCsfu0rQaTkGUu_12clap_builder.exit.i.i157 ] ; 2 uses
  %i.cj = load ptr, ptr %i.bg, align 8, !alias.scope !4086, !noalias !4085, !nonnull !11, !noundef !11
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 %i.ci
  store i8 32, ptr %i.ck, align 1, !noalias !4086
  %i.cl = add nuw i64 %i.ci, 1                    ; 2 uses
  store i64 %i.cl, ptr %i.bc, align 8, !alias.scope !4086, !noalias !4085
  br label %bb.l

bb.l:                                             ; preds = %_RNvMNtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_strNtB2_9StyledStr8push_str.exit159, %bb.j
  %i.cm = phi i64 [ %.pre272, %_RNvMNtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_strNtB2_9StyledStr8push_str.exit159 ], [ %.pre273, %bb.j ]
  %i.cn = phi i64 [ %i.cl, %_RNvMNtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_strNtB2_9StyledStr8push_str.exit159 ], [ %.pre, %bb.j ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !4089)
  call void @llvm.experimental.noalias.scope.decl(metadata !4090)
  %i.co = sub i64 %i.cm, %i.cn
  %i.cp = icmp ugt i64 %4, %i.co
  br i1 %i.cp, label %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCsfu0rQaTkGUu_12clap_builder.exit.thread.i.i162, label %_RNvMNtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_strNtB2_9StyledStr8push_str.exit163, !prof !19

_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCsfu0rQaTkGUu_12clap_builder.exit.thread.i.i162: ; preds = %bb.l
  call fastcc void @_RINvNvMs2_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsfu0rQaTkGUu_12clap_builder(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.k, i64 noundef %i.cn, i64 noundef %4, i64 noundef 1, i64 noundef 1) #43, !noalias !4088
  %i.cq = load i64, ptr %i.bc, align 8, !alias.scope !4091, !noalias !4088, !noundef !11
  br label %_RNvMNtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_strNtB2_9StyledStr8push_str.exit163

_RNvMNtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_strNtB2_9StyledStr8push_str.exit163: ; preds = %bb.l, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCsfu0rQaTkGUu_12clap_builder.exit.thread.i.i162
  %.sink313 = phi i64 [ %i.cq, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCsfu0rQaTkGUu_12clap_builder.exit.thread.i.i162 ], [ %i.cn, %bb.l ] ; 3 uses
  %i.cr = icmp sgt i64 %.sink313, -1
  call void @llvm.assume(i1 %i.cr)
  %i.cs = load ptr, ptr %i.bg, align 8, !alias.scope !4091, !noalias !4088, !nonnull !11, !noundef !11
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 %.sink313
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ct, ptr nonnull readonly align 1 %3, i64 %4, i1 false), !noalias !4091
  %i.cu = add i64 %.sink313, %4                   ; 3 uses
  store i64 %i.cu, ptr %i.bc, align 8, !alias.scope !4091, !noalias !4088
  %i.cv = icmp sgt i64 %i.cu, -1
  call void @llvm.assume(i1 %i.cv)
  %i.cw = icmp eq i64 %i.cu, 0
  br label %bb.h

bb.m:                                             ; preds = %_RNvMNtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_strNtB2_9StyledStr11push_styled.exit
  %i.cx = getelementptr inbounds nuw i8, ptr %1, i64 592
  %i.cy = load i32, ptr %i.cx, align 8, !noundef !11
  %i.cz = and i32 %i.cy, 16
  %.not137 = icmp eq i32 %i.cz, 0
  br i1 %.not137, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.o, %bb.m, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCsfu0rQaTkGUu_12clap_builder7builder14possible_value13PossibleValueEEB1e_.exit, %_RNvMNtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_strNtB2_9StyledStr11push_styled.exit
  %.not7 = xor i1 %i.bn, true
  %or.cond9 = and i1 %.sroa.015.0, %.not7
  br i1 %or.cond9, label %bb.bf, label %bb.ao

bb.o:                                             ; preds = %bb.m
  %i.da = call fastcc noundef zeroext i1 @_RNvMs1_NtNtCsfu0rQaTkGUu_12clap_builder6output13help_templateNtB5_12HelpTemplate11use_long_pv(i8 %i.bk, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(600) %1) #43
  br i1 %i.da, label %bb.p, label %bb.n

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  call void @llvm.experimental.noalias.scope.decl(metadata !4092)
  %i.db = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.03.0.copyload.i = load i64, ptr %i.db, align 8, !alias.scope !4092, !noalias !4093
  %i.dc = trunc nuw i64 %.sroa.03.0.copyload.i to i1
  %.sroa.54.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.sroa.54.0.copyload.i = load i64, ptr %.sroa.54.0..sroa_idx.i, align 8, !alias.scope !4092, !noalias !4093
  %.not.i = icmp eq i64 %.sroa.54.0.copyload.i, 0
  %or.cond.i = select i1 %i.dc, i1 %.not.i, i1 false
  br i1 %or.cond.i, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCsfu0rQaTkGUu_12clap_builder7builder14possible_value13PossibleValueEEB1e_.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.dd = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 2 uses
  %i.de = load i64, ptr %i.dd, align 8, !range !25, !alias.scope !4092, !noalias !4093, !noundef !11
  %.not6.i = icmp eq i64 %i.de, -1
  %_RNvNvMs2_NtNtCsfu0rQaTkGUu_12clap_builder7builder3argNtB7_3Arg16get_value_parser7DEFAULT..i = select i1 %.not6.i, ptr @_RNvNvMs2_NtNtCsfu0rQaTkGUu_12clap_builder7builder3argNtB7_3Arg16get_value_parser7DEFAULT, ptr %i.dd ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !4094)
  %i.df = load i64, ptr %_RNvNvMs2_NtNtCsfu0rQaTkGUu_12clap_builder7builder3argNtB7_3Arg16get_value_parser7DEFAULT..i, align 8, !range !48, !alias.scope !4094, !noalias !4093, !noundef !11
  switch i64 %i.df, label %default.unreachable [
    i64 0, label %_RNvMs_NtNtCsfu0rQaTkGUu_12clap_builder7builder12value_parserNtB4_11ValueParser15possible_values.exit.i
    i64 1, label %bb.r
    i64 2, label %bb.s
    i64 3, label %bb.t
    i64 4, label %bb.u
  ]

default.unreachable:                              ; preds = %bb.q
  unreachable

bb.r:                                             ; preds = %bb.q
  br label %_RNvMs_NtNtCsfu0rQaTkGUu_12clap_builder7builder12value_parserNtB4_11ValueParser15possible_values.exit.i

bb.s:                                             ; preds = %bb.q
  br label %_RNvMs_NtNtCsfu0rQaTkGUu_12clap_builder7builder12value_parserNtB4_11ValueParser15possible_values.exit.i

bb.t:                                             ; preds = %bb.q
  br label %_RNvMs_NtNtCsfu0rQaTkGUu_12clap_builder7builder12value_parserNtB4_11ValueParser15possible_values.exit.i

bb.u:                                             ; preds = %bb.q
  %i.dg = getelementptr inbounds nuw i8, ptr %_RNvNvMs2_NtNtCsfu0rQaTkGUu_12clap_builder7builder3argNtB7_3Arg16get_value_parser7DEFAULT..i, i64 8
  %i.dh = load ptr, ptr %i.dg, align 8, !alias.scope !4094, !noalias !4093, !nonnull !11, !noundef !11
  %i.di = getelementptr inbounds nuw i8, ptr %_RNvNvMs2_NtNtCsfu0rQaTkGUu_12clap_builder7builder3argNtB7_3Arg16get_value_parser7DEFAULT..i, i64 16
  %i.dj = load ptr, ptr %i.di, align 8, !alias.scope !4094, !noalias !4093, !nonnull !11, !align !17, !noundef !11
  br label %_RNvMs_NtNtCsfu0rQaTkGUu_12clap_builder7builder12value_parserNtB4_11ValueParser15possible_values.exit.i

_RNvMs_NtNtCsfu0rQaTkGUu_12clap_builder7builder12value_parserNtB4_11ValueParser15possible_values.exit.i: ; preds = %bb.u, %bb.t, %bb.s, %bb.r, %bb.q
  %.sroa.6.0.i.i = phi ptr [ %i.dj, %bb.u ], [ @256, %bb.r ], [ @257, %bb.s ], [ @258, %bb.t ], [ @255, %bb.q ]
  %.sroa.0.0.i.i = phi ptr [ %i.dh, %bb.u ], [ inttoptr (i64 1 to ptr), %bb.r ], [ inttoptr (i64 1 to ptr), %bb.s ], [ inttoptr (i64 1 to ptr), %bb.t ], [ inttoptr (i64 1 to ptr), %bb.q ]
  %i.dk = getelementptr inbounds nuw i8, ptr %.sroa.6.0.i.i, i64 48
  %i.dl = load ptr, ptr %i.dk, align 8, !invariant.load !11, !noalias !4095, !nonnull !11
  %i.dm = call { ptr, ptr } %i.dl(ptr noundef nonnull %.sroa.0.0.i.i) #45, !noalias !4095, !inline_history !49 ; 2 uses
  %i.dn = extractvalue { ptr, ptr } %i.dm, 0      ; 2 uses
  %.not7.i = icmp eq ptr %i.dn, null
  br i1 %.not7.i, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCsfu0rQaTkGUu_12clap_builder7builder14possible_value13PossibleValueEEB1e_.exit, label %_RNvMs2_NtNtCsfu0rQaTkGUu_12clap_builder7builder3argNtB5_3Arg19get_possible_values.exit

_RNvMs2_NtNtCsfu0rQaTkGUu_12clap_builder7builder3argNtB5_3Arg19get_possible_values.exit: ; preds = %_RNvMs_NtNtCsfu0rQaTkGUu_12clap_builder7builder12value_parserNtB4_11ValueParser15possible_values.exit.i
  %i.do = extractvalue { ptr, ptr } %i.dm, 1      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.do) ]
  call fastcc void @_RNvXNtNtCs4wP2HXfJTCR_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder7builder14possible_value13PossibleValueEINtB2_18SpecFromIterNestedB11_INtNtB6_5boxed3BoxDNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iteratorp4ItemB11_EL_EE9from_iterB17_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.j, ptr noundef nonnull %i.dn, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.do) #43, !noalias !4092, !inline_history !50
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %.pre274 = load i64, ptr %.phi.trans.insert, align 8 ; 3 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.dq = icmp ult i64 %.pre274, 128102389400760776
  call void @llvm.assume(i1 %i.dq)
  %i.dr = icmp eq i64 %.pre274, 0
  br i1 %i.dr, label %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder7builder14possible_value13PossibleValueENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBL_.exit.i, label %.lr.ph

.lr.ph:                                           ; preds = %_RNvMs2_NtNtCsfu0rQaTkGUu_12clap_builder7builder3argNtB5_3Arg19get_possible_values.exit
  %i.ds = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.dt = load ptr, ptr %i.ds, align 8, !nonnull !11, !noundef !11 ; 5 uses
  %.idx = mul nuw nsw i64 %.pre274, 72
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 %.idx ; 4 uses
  br label %bb.w

bb.v:                                             ; preds = %bb.w
  %i.dv = icmp eq ptr %i.dx, %i.du
  br i1 %i.dv, label %._crit_edge, label %bb.w

bb.w:                                             ; preds = %.lr.ph, %bb.v
  %i.dw = phi ptr [ %i.dt, %.lr.ph ], [ %i.dx, %bb.v ] ; 4 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 72 ; 5 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dw, i64 64
  %i.dz = load i8, ptr %i.dy, align 8, !range !34, !noalias !4096, !noundef !11
  %i.ea = trunc nuw i8 %i.dz to i1
  br i1 %i.ea, label %bb.v, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.eb = getelementptr i8, ptr %i.dw, i64 48
  %.val.i.i164 = load ptr, ptr %i.eb, align 8, !noalias !4097, !nonnull !11, !noundef !11
  %i.ec = getelementptr i8, ptr %i.dw, i64 56
  %.val3.i.i = load i64, ptr %i.ec, align 8, !noalias !4097, !noundef !11
  %i.ed = call fastcc noundef i64 @_RNvNtNtNtCsfu0rQaTkGUu_12clap_builder6output8textwrap4core13display_width(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.val.i.i164, i64 noundef %.val3.i.i) #42, !noalias !4097 ; 2 uses
  %i.ee = icmp eq ptr %i.dx, %i.du
  br i1 %i.ee, label %.loopexit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.ef = ptrtoint ptr %i.du to i64
  %i.eg = ptrtoint ptr %i.dx to i64
  %i.eh = sub nuw i64 %i.ef, %i.eg
  %i.ei = udiv exact i64 %i.eh, 72
  br label %bb.z

bb.z:                                             ; preds = %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters6filter11filter_foldRNtNtNtCsfu0rQaTkGUu_12clap_builder7builder14possible_value13PossibleValuejNCNvMs1_NtNtB18_6output13help_templateNtB2m_12HelpTemplate4help0NCINvNtB6_3map8map_foldB11_jjNCB2g_s_0NvYjNtNtBa_3cmp3Ord3maxE0E0B18_.exit.i.i.i.i, %bb.y
  %.sroa.04.0.i.i.i.i = phi i64 [ 0, %bb.y ], [ %i.eq, %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters6filter11filter_foldRNtNtNtCsfu0rQaTkGUu_12clap_builder7builder14possible_value13PossibleValuejNCNvMs1_NtNtB18_6output13help_templateNtB2m_12HelpTemplate4help0NCINvNtB6_3map8map_foldB11_jjNCB2g_s_0NvYjNtNtBa_3cmp3Ord3maxE0E0B18_.exit.i.i.i.i ] ; 2 uses
  %.sroa.02.0.i.i.i.i = phi i64 [ %i.ed, %bb.y ], [ %.sroa.0.0.i.i.i.i.i, %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters6filter11filter_foldRNtNtNtCsfu0rQaTkGUu_12clap_builder7builder14possible_value13PossibleValuejNCNvMs1_NtNtB18_6output13help_templateNtB2m_12HelpTemplate4help0NCINvNtB6_3map8map_foldB11_jjNCB2g_s_0NvYjNtNtBa_3cmp3Ord3maxE0E0B18_.exit.i.i.i.i ] ; 2 uses
  %i.ej = getelementptr inbounds nuw [72 x i8], ptr %i.dx, i64 %.sroa.04.0.i.i.i.i ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !4098)
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 64
  %i.el = load i8, ptr %i.ek, align 8, !range !34, !alias.scope !4098, !noundef !11
  %i.em = trunc nuw i8 %i.el to i1
  br i1 %i.em, label %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters6filter11filter_foldRNtNtNtCsfu0rQaTkGUu_12clap_builder7builder14possible_value13PossibleValuejNCNvMs1_NtNtB18_6output13help_templateNtB2m_12HelpTemplate4help0NCINvNtB6_3map8map_foldB11_jjNCB2g_s_0NvYjNtNtBa_3cmp3Ord3maxE0E0B18_.exit.i.i.i.i, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.en = getelementptr inbounds nuw i8, ptr %i.ej, i64 48
  %.val3.i.i.i.i.i = load ptr, ptr %i.en, align 8, !alias.scope !4098, !nonnull !11, !noundef !11
  %i.eo = getelementptr inbounds nuw i8, ptr %i.ej, i64 56
  %.val4.i.i.i.i.i = load i64, ptr %i.eo, align 8, !alias.scope !4098, !noundef !11
  %i.ep = call fastcc noundef i64 @_RNvNtNtNtCsfu0rQaTkGUu_12clap_builder6output8textwrap4core13display_width(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.val3.i.i.i.i.i, i64 noundef %.val4.i.i.i.i.i) #42, !noalias !4098
  %..i.i.i.i.i.i.i.i = call noundef i64 @llvm.umax.i64(i64 %i.ep, i64 %.sroa.02.0.i.i.i.i)
  br label %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters6filter11filter_foldRNtNtNtCsfu0rQaTkGUu_12clap_builder7builder14possible_value13PossibleValuejNCNvMs1_NtNtB18_6output13help_templateNtB2m_12HelpTemplate4help0NCINvNtB6_3map8map_foldB11_jjNCB2g_s_0NvYjNtNtBa_3cmp3Ord3maxE0E0B18_.exit.i.i.i.i

_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters6filter11filter_foldRNtNtNtCsfu0rQaTkGUu_12clap_builder7builder14possible_value13PossibleValuejNCNvMs1_NtNtB18_6output13help_templateNtB2m_12HelpTemplate4help0NCINvNtB6_3map8map_foldB11_jjNCB2g_s_0NvYjNtNtBa_3cmp3Ord3maxE0E0B18_.exit.i.i.i.i: ; preds = %bb.aa, %bb.z
  %.sroa.0.0.i.i.i.i.i = phi i64 [ %..i.i.i.i.i.i.i.i, %bb.aa ], [ %.sroa.02.0.i.i.i.i, %bb.z ] ; 2 uses
  %i.eq = add nuw i64 %.sroa.04.0.i.i.i.i, 1      ; 2 uses
  %i.er = icmp eq i64 %i.eq, %i.ei
  br i1 %i.er, label %.loopexit, label %bb.z

_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder7builder14possible_value13PossibleValueENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBL_.exit.i: ; preds = %_RNvMs2_NtNtCsfu0rQaTkGUu_12clap_builder7builder3argNtB5_3Arg19get_possible_values.exit
  %.val2.i.pr = load i64, ptr %i.j, align 8, !alias.scope !4099 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !4099)
  %i.es = icmp eq i64 %.val2.i.pr, 0
  br i1 %i.es, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCsfu0rQaTkGUu_12clap_builder7builder14possible_value13PossibleValueEEB1e_.exit, label %bb.ab

bb.ab:                                            ; preds = %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder7builder14possible_value13PossibleValueENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBL_.exit.i
  %i.et = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %.val.i = load ptr, ptr %i.et, align 8, !alias.scope !4099, !nonnull !11, !noundef !11
  %i.eu = mul nuw i64 %.val2.i.pr, 72
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef %i.eu, i64 noundef range(i64 1, -9223372036854775807) 8) #43, !noalias !4099
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCsfu0rQaTkGUu_12clap_builder7builder14possible_value13PossibleValueEEB1e_.exit

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCsfu0rQaTkGUu_12clap_builder7builder14possible_value13PossibleValueEEB1e_.exit: ; preds = %bb.p, %_RNvMs_NtNtCsfu0rQaTkGUu_12clap_builder7builder12value_parserNtB4_11ValueParser15possible_values.exit.i, %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder7builder14possible_value13PossibleValueENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBL_.exit.i, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  br label %bb.n

.loopexit:                                        ; preds = %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters6filter11filter_foldRNtNtNtCsfu0rQaTkGUu_12clap_builder7builder14possible_value13PossibleValuejNCNvMs1_NtNtB18_6output13help_templateNtB2m_12HelpTemplate4help0NCINvNtB6_3map8map_foldB11_jjNCB2g_s_0NvYjNtNtBa_3cmp3Ord3maxE0E0B18_.exit.i.i.i.i, %bb.x
  %.sroa.3.0.i.ph = phi i64 [ %i.ed, %bb.x ], [ %.sroa.0.0.i.i.i.i.i, %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters6filter11filter_foldRNtNtNtCsfu0rQaTkGUu_12clap_builder7builder14possible_value13PossibleValuejNCNvMs1_NtNtB18_6output13help_templateNtB2m_12HelpTemplate4help0NCINvNtB6_3map8map_foldB11_jjNCB2g_s_0NvYjNtNtBa_3cmp3Ord3maxE0E0B18_.exit.i.i.i.i ]
  %i.ev = add nuw i64 %.sroa.012.0240, 2          ; 8 uses
  %.not.i.i.i.i165 = icmp slt i64 %i.ev, 0
  br i1 %.not.i.i.i.i165, label %bb.ac, label %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i.i.i166, !prof !21

_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i.i.i166: ; preds = %.loopexit
  call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #43, !noalias !4100
  %i.ew = call noundef ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.ev, i64 noundef range(i64 1, 9) 1) #43, !noalias !4100 ; 8 uses
  %i.ex = icmp eq ptr %i.ew, null
  br i1 %i.ex, label %bb.ac, label %.lr.ph.i.i170.preheader

bb.ac:                                            ; preds = %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i.i.i166, %.loopexit
  %.sroa.4.0.ph.i.i.i181 = phi i64 [ 1, %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i.i.i166 ], [ 0, %.loopexit ]
  call void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i.i.i181, i64 %i.ev) #46, !noalias !4101
  unreachable

.lr.ph.i.i170.preheader:                          ; preds = %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i.i.i166
  store i8 32, ptr %i.ew, align 1, !noalias !4102
  %.sroa.01.01.i.i168 = lshr i64 %i.ev, 1
  br label %.lr.ph.i.i170

._crit_edge.i.i175:                               ; preds = %.lr.ph.i.i170
  %i.ey = icmp sgt i64 %i.fa, -1
  call void @llvm.assume(i1 %i.ey)
  %.not5.i.i177 = icmp eq i64 %i.ev, %i.fa
  br i1 %.not5.i.i177, label %_RNvMs1_NtNtCsfu0rQaTkGUu_12clap_builder6output13help_templateNtB5_12HelpTemplate10get_spaces.exit182, label %bb.ad

.lr.ph.i.i170:                                    ; preds = %.lr.ph.i.i170.preheader, %.lr.ph.i.i170
  %.sroa.01.04.i.i171 = phi i64 [ %.sroa.01.0.i.i173, %.lr.ph.i.i170 ], [ %.sroa.01.01.i.i168, %.lr.ph.i.i170.preheader ]
  %storemerge3.i.i172 = phi i64 [ %i.fa, %.lr.ph.i.i170 ], [ 1, %.lr.ph.i.i170.preheader ] ; 3 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ew, i64 %storemerge3.i.i172
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.ez, ptr noundef nonnull align 1 dereferenceable(1) %i.ew, i64 %storemerge3.i.i172, i1 false), !noalias !4101
  %i.fa = shl nuw i64 %storemerge3.i.i172, 1      ; 5 uses
  %.sroa.01.0.i.i173 = lshr i64 %.sroa.01.04.i.i171, 1 ; 2 uses
  %.not.i.i174 = icmp eq i64 %.sroa.01.0.i.i173, 0
  br i1 %.not.i.i174, label %._crit_edge.i.i175, label %.lr.ph.i.i170

bb.ad:                                            ; preds = %._crit_edge.i.i175
  %i.fb = sub nsw i64 %i.ev, %i.fa
  %i.fc = getelementptr inbounds nuw i8, ptr %i.ew, i64 %i.fa
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.fc, ptr nonnull align 1 %i.ew, i64 %i.fb, i1 false), !noalias !4101
  br label %_RNvMs1_NtNtCsfu0rQaTkGUu_12clap_builder6output13help_templateNtB5_12HelpTemplate10get_spaces.exit182

_RNvMs1_NtNtCsfu0rQaTkGUu_12clap_builder6output13help_templateNtB5_12HelpTemplate10get_spaces.exit182: ; preds = %._crit_edge.i.i175, %bb.ad
  br i1 %.sroa.018.0.in, label %bb.af, label %bb.ae

._crit_edge:                                      ; preds = %bb.v
  call void @_RNvNtCsj6eKBz9Db1c_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @172, i64 noundef 31, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @173) #44
  unreachable

bb.ae:                                            ; preds = %_RNvMs1_NtNtCsfu0rQaTkGUu_12clap_builder6output13help_templateNtB5_12HelpTemplate10get_spaces.exit182
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  %i.fd = icmp ugt i64 %.sroa.012.0240, 65535
  br i1 %i.fd, label %bb.ah, label %bb.ag, !prof !40

bb.af:                                            ; preds = %bb.ag, %_RNvMs1_NtNtCsfu0rQaTkGUu_12clap_builder6output13help_templateNtB5_12HelpTemplate10get_spaces.exit182
  call void @llvm.experimental.noalias.scope.decl(metadata !4103)
  call void @llvm.experimental.noalias.scope.decl(metadata !4104)
  %i.fe = load i64, ptr %i.bq, align 8, !alias.scope !4105, !noalias !4106, !noundef !11 ; 3 uses
  %i.ff = load i64, ptr %i.bp, align 8, !range !12, !alias.scope !4105, !noalias !4106, !noundef !11
  %i.fg = sub i64 %i.ff, %i.fe
  %i.fh = icmp ult i64 %i.fg, 16
  br i1 %i.fh, label %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCsfu0rQaTkGUu_12clap_builder.exit.thread.i.i184, label %_RNvMNtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_strNtB2_9StyledStr8push_str.exit185, !prof !19

_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCsfu0rQaTkGUu_12clap_builder.exit.thread.i.i184: ; preds = %bb.af
  call fastcc void @_RINvNvMs2_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsfu0rQaTkGUu_12clap_builder(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bp, i64 noundef %i.fe, i64 noundef 16, i64 noundef 1, i64 noundef 1) #43, !noalias !4106
  %i.fi = load i64, ptr %i.bq, align 8, !alias.scope !4107, !noalias !4106, !noundef !11
  br label %_RNvMNtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_strNtB2_9StyledStr8push_str.exit185

_RNvMNtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_strNtB2_9StyledStr8push_str.exit185: ; preds = %bb.af, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCsfu0rQaTkGUu_12clap_builder.exit.thread.i.i184
  %.sink314 = phi i64 [ %i.fi, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCsfu0rQaTkGUu_12clap_builder.exit.thread.i.i184 ], [ %i.fe, %bb.af ] ; 3 uses
  %i.fj = icmp sgt i64 %.sink314, -1
  call void @llvm.assume(i1 %i.fj)
  %i.fk = getelementptr inbounds nuw i8, ptr %i.bp, i64 8 ; 2 uses
  %i.fl = load ptr, ptr %i.fk, align 8, !alias.scope !4107, !noalias !4106, !nonnull !11, !noundef !11
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fl, i64 %.sink314
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.fm, ptr noundef nonnull readonly align 1 dereferenceable(16) @176, i64 16, i1 false), !noalias !4107
  %i.fn = add nuw i64 %.sink314, 16
  store i64 %i.fn, ptr %i.bq, align 8, !alias.scope !4107, !noalias !4106
  %i.fo = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 2 uses
  %.sroa.453.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 5 uses
  %.sroa.554.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 6 uses
  %.sroa.458.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.fp = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %.sroa.462.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.fq = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %.sroa.483.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.fr = icmp ugt i64 %.sroa.012.0240, 65535
  %i.fs = trunc nuw i64 %.sroa.012.0240 to i16
  %i.ft = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %.sroa.4105.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  br label %bb.ai

bb.ag:                                            ; preds = %bb.ae
  %i.fu = trunc nuw i64 %.sroa.012.0240 to i16
  store ptr @162, ptr %i.i, align 8
  %.sroa.432.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr @_RNvXs1i_NtCsj6eKBz9Db1c_4core3fmtReNtB6_7Display3fmtCsfu0rQaTkGUu_12clap_builder, ptr %.sroa.432.0..sroa_idx, align 8
  %i.fv = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  store ptr null, ptr %i.fv, align 8
  %.sroa.436.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  store i16 %i.fu, ptr %.sroa.436.0..sroa_idx, align 8
  %i.fw = call noundef zeroext i1 @_RNvNtCsj6eKBz9Db1c_4core3fmt5write(ptr noundef nonnull %i.bp, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @101, ptr noundef nonnull @174, ptr noundef nonnull %i.i) #43 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  br label %bb.af

bb.ah:                                            ; preds = %bb.ae
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking9panic_fmt(ptr noundef nonnull @164, ptr noundef nonnull inttoptr (i64 65 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @175) #44
  unreachable

bb.ai:                                            ; preds = %.backedge, %_RNvMNtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_strNtB2_9StyledStr8push_str.exit185
  %i.fx = phi ptr [ %i.dt, %_RNvMNtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_strNtB2_9StyledStr8push_str.exit185 ], [ %i.fz, %.backedge ] ; 8 uses
  %i.fy = icmp eq ptr %i.fx, %i.du
  br i1 %i.fy, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECsfu0rQaTkGUu_12clap_builder.exit, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fx, i64 72
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fx, i64 64
  %i.gb = load i8, ptr %i.ga, align 8, !range !34, !noalias !4108, !noundef !11
  %i.gc = trunc nuw i8 %i.gb to i1
  br i1 %i.gc, label %.backedge, label %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterNtNtNtCsfu0rQaTkGUu_12clap_builder7builder14possible_value13PossibleValueENtNtNtNtBb_4iter6traits8iterator8Iterator4findQNCNvMs1_NtNtBW_6output13help_templateNtB2V_12HelpTemplate4helps0_0EBW_.exit

.backedge:                                        ; preds = %bb.aj, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_str9StyledStrEBH_.exit231
  br label %bb.ai

_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterNtNtNtCsfu0rQaTkGUu_12clap_builder7builder14possible_value13PossibleValueENtNtNtNtBb_4iter6traits8iterator8Iterator4findQNCNvMs1_NtNtBW_6output13help_templateNtB2V_12HelpTemplate4helps0_0EBW_.exit: ; preds = %bb.aj
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  %i.gd = getelementptr inbounds nuw i8, ptr %i.fx, i64 48
  %i.ge = load ptr, ptr %i.gd, align 8, !nonnull !11, !noundef !11
  %i.gf = getelementptr inbounds nuw i8, ptr %i.fx, i64 56
  %i.gg = load i64, ptr %i.gf, align 8, !noundef !11
  store ptr %i.ge, ptr %i.h, align 8
  store i64 %i.gg, ptr %i.fo, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  store i64 0, ptr %i.g, align 8
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.453.0..sroa_idx, align 8
  store i64 0, ptr %.sroa.554.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store ptr %i.m, ptr %i.f, align 8
  store ptr @_RNvXs1i_NtCsj6eKBz9Db1c_4core3fmtRRNtNtCscy4Zx2DW6cp_7anstyle5style5StyleNtB6_7Display3fmtCsfu0rQaTkGUu_12clap_builder, ptr %.sroa.458.0..sroa_idx, align 8
  store ptr %i.h, ptr %i.fp, align 8
  store ptr @_RNvXs1i_NtCsj6eKBz9Db1c_4core3fmtReNtB6_7Display3fmtCsfu0rQaTkGUu_12clap_builder, ptr %.sroa.462.0..sroa_idx, align 8
  %i.gh = call noundef zeroext i1 @_RNvNtCsj6eKBz9Db1c_4core3fmt5write(ptr noundef nonnull %i.g, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @101, ptr noundef nonnull @75, ptr noundef nonnull %i.f) #43 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %i.gi = getelementptr inbounds nuw i8, ptr %i.fx, i64 24
  %i.gj = load i64, ptr %i.gi, align 8, !range !13, !noundef !11
  %.not139 = icmp eq i64 %i.gj, -1
  br i1 %.not139, label %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterNtNtNtCsfu0rQaTkGUu_12clap_builder7builder14possible_value13PossibleValueENtNtNtNtBb_4iter6traits8iterator8Iterator4findQNCNvMs1_NtNtBW_6output13help_templateNtB2V_12HelpTemplate4helps0_0EBW_.exit._crit_edge, label %bb.av

_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterNtNtNtCsfu0rQaTkGUu_12clap_builder7builder14possible_value13PossibleValueENtNtNtNtBb_4iter6traits8iterator8Iterator4findQNCNvMs1_NtNtBW_6output13help_templateNtB2V_12HelpTemplate4helps0_0EBW_.exit._crit_edge: ; preds = %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterNtNtNtCsfu0rQaTkGUu_12clap_builder7builder14possible_value13PossibleValueENtNtNtNtBb_4iter6traits8iterator8Iterator4findQNCNvMs1_NtNtBW_6output13help_templateNtB2V_12HelpTemplate4helps0_0EBW_.exit
  %.pre275 = load i64, ptr %.sroa.554.0..sroa_idx, align 8, !alias.scope !4109
  br label %bb.aw

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECsfu0rQaTkGUu_12clap_builder.exit: ; preds = %bb.ai
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ew, i64 noundef %i.ev, i64 noundef range(i64 1, -9223372036854775807) 1) #43, !noalias !4110
  call void @llvm.experimental.noalias.scope.decl(metadata !4111)
  %.val1.i190 = load i64, ptr %i.dp, align 8, !alias.scope !4111, !noundef !11 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !4112)
  %i.gk = icmp eq i64 %.val1.i190, 0
  br i1 %i.gk, label %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder7builder14possible_value13PossibleValueENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBL_.exit.i198, label %.lr.ph.i.i.i191

.lr.ph.i.i.i191:                                  ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECsfu0rQaTkGUu_12clap_builder.exit, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsfu0rQaTkGUu_12clap_builder7builder14possible_value13PossibleValueEBH_.exit.i.i.i197
  %.sroa.0.03.i.i.i192 = phi i64 [ %i.gm, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsfu0rQaTkGUu_12clap_builder7builder14possible_value13PossibleValueEBH_.exit.i.i.i197 ], [ 0, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECsfu0rQaTkGUu_12clap_builder.exit ] ; 2 uses
  %i.gl = getelementptr inbounds nuw [72 x i8], ptr %i.dt, i64 %.sroa.0.03.i.i.i192 ; 4 uses
  %i.gm = add nuw nsw i64 %.sroa.0.03.i.i.i192, 1 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !4113)
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gl, i64 24
  call void @llvm.experimental.noalias.scope.decl(metadata !4114)
  %i.go = load i64, ptr %i.gn, align 8, !range !13, !alias.scope !4115, !noalias !4111, !noundef !11 ; 3 uses
  %i.gp = icmp eq i64 %i.go, -1
  br i1 %i.gp, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_str9StyledStrEEB13_.exit.i.i.i.i194, label %bb.ak

bb.ak:                                            ; preds = %.lr.ph.i.i.i191
  call void @llvm.experimental.noalias.scope.decl(metadata !4116)
  call void @llvm.experimental.noalias.scope.decl(metadata !4117)
  %i.gq = icmp eq i64 %i.go, 0
  br i1 %i.gq, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_str9StyledStrEEB13_.exit.i.i.i.i194, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gl, i64 32
  %.val1.i.i.i.i.i.i.i193 = load ptr, ptr %i.gr, align 8, !alias.scope !4118, !noalias !4111, !nonnull !11, !noundef !11
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i.i.i.i193, i64 noundef %i.go, i64 noundef range(i64 1, -9223372036854775807) 1) #43, !noalias !4119
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_str9StyledStrEEB13_.exit.i.i.i.i194

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_str9StyledStrEEB13_.exit.i.i.i.i194: ; preds = %bb.al, %bb.ak, %.lr.ph.i.i.i191
  call void @llvm.experimental.noalias.scope.decl(metadata !4120)
  %.val.i.i.i.i.i195 = load i64, ptr %i.gl, align 8, !range !12, !alias.scope !4121, !noalias !4111, !noundef !11 ; 2 uses
  %i.gs = icmp eq i64 %.val.i.i.i.i.i195, 0
  br i1 %i.gs, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsfu0rQaTkGUu_12clap_builder7builder14possible_value13PossibleValueEBH_.exit.i.i.i197, label %bb.am

bb.am:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_str9StyledStrEEB13_.exit.i.i.i.i194
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gl, i64 8
  %.val1.i.i.i.i.i196 = load ptr, ptr %i.gt, align 8, !alias.scope !4121, !noalias !4111, !nonnull !11, !noundef !11
  %i.gu = shl nuw i64 %.val.i.i.i.i.i195, 4
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i.i196, i64 noundef %i.gu, i64 noundef range(i64 1, -9223372036854775807) 8) #43, !noalias !4122
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsfu0rQaTkGUu_12clap_builder7builder14possible_value13PossibleValueEBH_.exit.i.i.i197

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsfu0rQaTkGUu_12clap_builder7builder14possible_value13PossibleValueEBH_.exit.i.i.i197: ; preds = %bb.am, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_str9StyledStrEEB13_.exit.i.i.i.i194
  %i.gv = icmp eq i64 %i.gm, %.val1.i190
  br i1 %i.gv, label %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder7builder14possible_value13PossibleValueENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBL_.exit.i198, label %.lr.ph.i.i.i191

_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder7builder14possible_value13PossibleValueENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBL_.exit.i198: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsfu0rQaTkGUu_12clap_builder7builder14possible_value13PossibleValueEBH_.exit.i.i.i197, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECsfu0rQaTkGUu_12clap_builder.exit
  %.val2.i199 = load i64, ptr %i.j, align 8, !range !12, !alias.scope !4111, !noundef !11 ; 2 uses
  %i.gw = icmp eq i64 %.val2.i199, 0
  br i1 %i.gw, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCsfu0rQaTkGUu_12clap_builder7builder14possible_value13PossibleValueEEB1e_.exit200, label %bb.an

bb.an:                                            ; preds = %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder7builder14possible_value13PossibleValueENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBL_.exit.i198
  %i.gx = mul nuw i64 %.val2.i199, 72
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %i.dt, i64 noundef %i.gx, i64 noundef range(i64 1, -9223372036854775807) 8) #43, !noalias !4111
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCsfu0rQaTkGUu_12clap_builder7builder14possible_value13PossibleValueEEB1e_.exit200

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCsfu0rQaTkGUu_12clap_builder7builder14possible_value13PossibleValueEEB1e_.exit200: ; preds = %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder7builder14possible_value13PossibleValueENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBL_.exit.i198, %bb.an
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  %.not = xor i1 %i.bn, true
  %or.cond3 = and i1 %.sroa.015.0, %.not
  br i1 %or.cond3, label %bb.ar, label %bb.ao

bb.ao:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_str9StyledStrEBH_.exit218, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCsfu0rQaTkGUu_12clap_builder7builder14possible_value13PossibleValueEEB1e_.exit200, %bb.n
  call void @llvm.experimental.noalias.scope.decl(metadata !4123)
  call void @llvm.experimental.noalias.scope.decl(metadata !4124)
  %.val.i.i201 = load i64, ptr %i.k, align 8, !range !12, !alias.scope !4125, !noundef !11 ; 2 uses
  %i.gy = icmp eq i64 %.val.i.i201, 0
  br i1 %i.gy, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_str9StyledStrEBH_.exit, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %.val1.i.i = load ptr, ptr %i.bg, align 8, !alias.scope !4125, !nonnull !11, !noundef !11
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i, i64 noundef %.val.i.i201, i64 noundef range(i64 1, -9223372036854775807) 1) #43, !noalias !4125
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_str9StyledStrEBH_.exit

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_str9StyledStrEBH_.exit: ; preds = %bb.ao, %bb.ap
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  br i1 %i.bb, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECsfu0rQaTkGUu_12clap_builder.exit204, label %bb.aq

bb.aq:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_str9StyledStrEBH_.exit
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sink7.i.i, i64 noundef %.sroa.012.0240, i64 noundef range(i64 1, -9223372036854775807) 1) #43, !noalias !4126
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECsfu0rQaTkGUu_12clap_builder.exit204

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECsfu0rQaTkGUu_12clap_builder.exit204: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_str9StyledStrEBH_.exit, %bb.aq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  ret void

bb.ar:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCsfu0rQaTkGUu_12clap_builder7builder14possible_value13PossibleValueEEB1e_.exit200
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i64 0, ptr %i.c, align 8
  %.sroa.8128.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.8128.0..sroa_idx, align 8
  %.sroa.10131.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 0, ptr %.sroa.10131.0..sroa_idx, align 8
  br label %_RNvMNtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_strNtB2_9StyledStr8push_str.exit207

_RNvMNtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_strNtB2_9StyledStr8push_str.exit207: ; preds = %bb.ar, %bb.bf
  call void @llvm.experimental.noalias.scope.decl(metadata !4127)
  call void @llvm.experimental.noalias.scope.decl(metadata !4128)
  %i.gz = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  call fastcc void @_RINvNvMs2_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsfu0rQaTkGUu_12clap_builder(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c, i64 noundef 0, i64 noundef 2, i64 noundef 1, i64 noundef 1) #43, !noalias !4129
  %i.ha = load i64, ptr %i.gz, align 8, !alias.scope !4130, !noalias !4129, !noundef !11 ; 3 uses
  %i.hb = icmp sgt i64 %i.ha, -1
  call void @llvm.assume(i1 %i.hb)
  %.pre278.pre = load i64, ptr %i.c, align 8, !range !12, !alias.scope !4131, !noalias !4132
  %.phi.trans.insert276 = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.pre277 = load ptr, ptr %.phi.trans.insert276, align 8, !alias.scope !4130, !noalias !4129 ; 2 uses
  %i.hc = getelementptr inbounds nuw i8, ptr %.pre277, i64 %i.ha
  store i16 2570, ptr %i.hc, align 1, !noalias !4130
  %i.hd = add nuw i64 %i.ha, 2                    ; 2 uses
  store i64 %i.hd, ptr %i.gz, align 8, !alias.scope !4130, !noalias !4129
  br label %bb.as

bb.as:                                            ; preds = %bb.bf, %_RNvMNtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_strNtB2_9StyledStr8push_str.exit207
  %i.he = phi ptr [ inttoptr (i64 1 to ptr), %bb.bf ], [ %.pre277, %_RNvMNtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_strNtB2_9StyledStr8push_str.exit207 ]
  %i.hf = phi i64 [ 0, %bb.bf ], [ %.pre278.pre, %_RNvMNtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_strNtB2_9StyledStr8push_str.exit207 ]
  %i.hg = phi i64 [ 0, %bb.bf ], [ %i.hd, %_RNvMNtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_strNtB2_9StyledStr8push_str.exit207 ] ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !4133)
  call void @llvm.experimental.noalias.scope.decl(metadata !4134)
  %i.hh = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 3 uses
  %i.hi = sub i64 %i.hf, %i.hg
  %i.hj = icmp ugt i64 %4, %i.hi
  br i1 %i.hj, label %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCsfu0rQaTkGUu_12clap_builder.exit.thread.i.i210, label %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCsfu0rQaTkGUu_12clap_builder.exit.i.i208, !prof !19

_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCsfu0rQaTkGUu_12clap_builder.exit.thread.i.i210: ; preds = %bb.as
  call fastcc void @_RINvNvMs2_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsfu0rQaTkGUu_12clap_builder(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c, i64 noundef %i.hg, i64 noundef %4, i64 noundef 1, i64 noundef 1) #43, !noalias !4132
  %i.hk = load i64, ptr %i.hh, align 8, !alias.scope !4135, !noalias !4132, !noundef !11 ; 2 uses
  %i.hl = icmp sgt i64 %i.hk, -1
  call void @llvm.assume(i1 %i.hl)
  %.phi.trans.insert279 = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.pre280 = load ptr, ptr %.phi.trans.insert279, align 8, !alias.scope !4135, !noalias !4132
  br label %_RNvMNtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_strNtB2_9StyledStr8push_str.exit211

_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCsfu0rQaTkGUu_12clap_builder.exit.i.i208: ; preds = %bb.as
  %i.hm = icmp sgt i64 %i.hg, -1
  call void @llvm.assume(i1 %i.hm)
  br label %_RNvMNtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_strNtB2_9StyledStr8push_str.exit211

_RNvMNtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_strNtB2_9StyledStr8push_str.exit211: ; preds = %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCsfu0rQaTkGUu_12clap_builder.exit.thread.i.i210, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCsfu0rQaTkGUu_12clap_builder.exit.i.i208
  %i.hn = phi ptr [ %.pre280, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCsfu0rQaTkGUu_12clap_builder.exit.thread.i.i210 ], [ %i.he, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCsfu0rQaTkGUu_12clap_builder.exit.i.i208 ]
  %i.ho = phi i64 [ %i.hk, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCsfu0rQaTkGUu_12clap_builder.exit.thread.i.i210 ], [ %i.hg, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCsfu0rQaTkGUu_12clap_builder.exit.i.i208 ] ; 2 uses
  %i.hp = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.hq = getelementptr inbounds nuw i8, ptr %i.hn, i64 %i.ho
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.hq, ptr nonnull readonly align 1 %3, i64 %4, i1 false), !noalias !4135
  %i.hr = add i64 %i.ho, %4
  store i64 %i.hr, ptr %i.hh, align 8, !alias.scope !4135, !noalias !4132
  call fastcc void @_RNvMNtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_strNtB2_9StyledStr6indent(ptr noalias nofree noundef align 8 dereferenceable(24) %i.c, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sink7.i.i, i64 noundef %.sroa.012.0240) #43
  %.val143 = load ptr, ptr %i.hp, align 8, !nonnull !11, !noundef !11 ; 2 uses
  %.val144 = load i64, ptr %i.hh, align 8, !noundef !11 ; 5 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !4136)
  call void @llvm.experimental.noalias.scope.decl(metadata !4137)
  %i.hs = load i64, ptr %i.bq, align 8, !alias.scope !4138, !noundef !11 ; 5 uses
  %i.ht = load i64, ptr %i.bp, align 8, !range !12, !alias.scope !4138, !noundef !11
  %i.hu = sub i64 %i.ht, %i.hs
  %i.hv = icmp ugt i64 %.val144, %i.hu
  br i1 %i.hv, label %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCsfu0rQaTkGUu_12clap_builder.exit.thread.i.i214, label %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCsfu0rQaTkGUu_12clap_builder.exit.i.i212, !prof !19

_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCsfu0rQaTkGUu_12clap_builder.exit.thread.i.i214: ; preds = %_RNvMNtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_strNtB2_9StyledStr8push_str.exit211
  call fastcc void @_RINvNvMs2_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsfu0rQaTkGUu_12clap_builder(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bp, i64 noundef %i.hs, i64 noundef %.val144, i64 noundef 1, i64 noundef 1) #43
  %i.hw = load i64, ptr %i.bq, align 8, !alias.scope !4139, !noundef !11 ; 2 uses
  %i.hx = icmp sgt i64 %i.hw, -1
  call void @llvm.assume(i1 %i.hx)
  br label %bb.at

_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCsfu0rQaTkGUu_12clap_builder.exit.i.i212: ; preds = %_RNvMNtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_strNtB2_9StyledStr8push_str.exit211
  %i.hy = icmp sgt i64 %i.hs, -1
  call void @llvm.assume(i1 %i.hy)
  %.not.i.i213 = icmp eq i64 %.val144, 0
  br i1 %.not.i.i213, label %_RNvMNtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_strNtB2_9StyledStr11push_styled.exit215, label %bb.at

bb.at:                                            ; preds = %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCsfu0rQaTkGUu_12clap_builder.exit.i.i212, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCsfu0rQaTkGUu_12clap_builder.exit.thread.i.i214
  %i.hz = phi i64 [ %i.hw, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCsfu0rQaTkGUu_12clap_builder.exit.thread.i.i214 ], [ %i.hs, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCsfu0rQaTkGUu_12clap_builder.exit.i.i212 ] ; 2 uses
  %i.ia = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  %i.ib = load ptr, ptr %i.ia, align 8, !alias.scope !4139, !nonnull !11, !noundef !11
  %i.ic = getelementptr inbounds nuw i8, ptr %i.ib, i64 %i.hz
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ic, ptr nonnull readonly align 1 %.val143, i64 %.val144, i1 false), !noalias !4139
  br label %_RNvMNtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_strNtB2_9StyledStr11push_styled.exit215

_RNvMNtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_strNtB2_9StyledStr11push_styled.exit215: ; preds = %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCsfu0rQaTkGUu_12clap_builder.exit.i.i212, %bb.at
  %i.id = phi i64 [ %i.hz, %bb.at ], [ %i.hs, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCsfu0rQaTkGUu_12clap_builder.exit.i.i212 ]
  %i.ie = add i64 %i.id, %.val144
  store i64 %i.ie, ptr %i.bq, align 8, !alias.scope !4139
  call void @llvm.experimental.noalias.scope.decl(metadata !4140)
  call void @llvm.experimental.noalias.scope.decl(metadata !4141)
  %.val.i.i216 = load i64, ptr %i.c, align 8, !range !12, !alias.scope !4142, !noundef !11 ; 2 uses
  %i.if = icmp eq i64 %.val.i.i216, 0
  br i1 %i.if, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_str9StyledStrEBH_.exit218, label %bb.au

bb.au:                                            ; preds = %_RNvMNtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_strNtB2_9StyledStr11push_styled.exit215
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val143, i64 noundef %.val.i.i216, i64 noundef range(i64 1, -9223372036854775807) 1) #43, !noalias !4142
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_str9StyledStrEBH_.exit218

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_str9StyledStrEBH_.exit218: ; preds = %_RNvMNtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_strNtB2_9StyledStr11push_styled.exit215, %bb.au
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.ao

bb.av:                                            ; preds = %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterNtNtNtCsfu0rQaTkGUu_12clap_builder7builder14possible_value13PossibleValueENtNtNtNtBb_4iter6traits8iterator8Iterator4findQNCNvMs1_NtNtBW_6output13help_templateNtB2V_12HelpTemplate4helps0_0EBW_.exit
  %i.ig = load ptr, ptr %i.h, align 8, !nonnull !11, !noundef !11
  %i.ih = load i64, ptr %i.fo, align 8, !noundef !11
  %i.ii = call fastcc noundef i64 @_RNvNtNtNtCsfu0rQaTkGUu_12clap_builder6output8textwrap4core13display_width(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ig, i64 noundef %i.ih) #42
  %i.ij = sub i64 %.sroa.3.0.i.ph, %i.ii          ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.ik = icmp ugt i64 %i.ij, 65535
  br i1 %i.ik, label %bb.ba, label %bb.ay, !prof !19

bb.aw:                                            ; preds = %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterNtNtNtCsfu0rQaTkGUu_12clap_builder7builder14possible_value13PossibleValueENtNtNtNtBb_4iter6traits8iterator8Iterator4findQNCNvMs1_NtNtBW_6output13help_templateNtB2V_12HelpTemplate4helps0_0EBW_.exit._crit_edge, %_RNvMNtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_strNtB2_9StyledStr11push_styled.exit224
  %i.il = phi i64 [ %.pre275, %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterNtNtNtCsfu0rQaTkGUu_12clap_builder7builder14possible_value13PossibleValueENtNtNtNtBb_4iter6traits8iterator8Iterator4findQNCNvMs1_NtNtBW_6output13help_templateNtB2V_12HelpTemplate4helps0_0EBW_.exit._crit_edge ], [ %i.jd, %_RNvMNtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_strNtB2_9StyledStr11push_styled.exit224 ]
  call void @llvm.experimental.noalias.scope.decl(metadata !4109)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !4109
  %i.im = load ptr, ptr %.sroa.453.0..sroa_idx, align 8, !alias.scope !4109, !nonnull !11, !noundef !11 ; 2 uses
  call fastcc void @_RINvMs3_NtCs4wP2HXfJTCR_5alloc3stre7replaceReECsfu0rQaTkGUu_12clap_builder(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.im, i64 noundef %i.il) #45
  call void @llvm.experimental.noalias.scope.decl(metadata !4143)
  %.val.i.i219 = load i64, ptr %i.g, align 8, !range !12, !alias.scope !4144, !noundef !11 ; 2 uses
  %i.in = icmp eq i64 %.val.i.i219, 0
  br i1 %i.in, label %_RNvMNtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_strNtB2_9StyledStr19replace_newline_var.exit220, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %i.im, i64 noundef %.val.i.i219, i64 noundef range(i64 1, -9223372036854775807) 1) #43, !noalias !4144
  br label %_RNvMNtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_strNtB2_9StyledStr19replace_newline_var.exit220

_RNvMNtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_strNtB2_9StyledStr19replace_newline_var.exit220: ; preds = %bb.aw, %bb.ax
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.g, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !4109
  call fastcc void @_RNvMNtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_strNtB2_9StyledStr6indent(ptr noalias nofree noundef align 8 dereferenceable(24) %i.g, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ew, i64 noundef %i.ev) #43
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  br i1 %i.fr, label %bb.be, label %bb.bb, !prof !19

bb.ay:                                            ; preds = %bb.av
  %i.io = trunc nuw i64 %i.ij to i16
  store <2 x ptr> <ptr @162, ptr @_RNvXs1i_NtCsj6eKBz9Db1c_4core3fmtReNtB6_7Display3fmtCsfu0rQaTkGUu_12clap_builder>, ptr %i.e, align 16
  store ptr null, ptr %i.fq, align 16
  store i16 %i.io, ptr %.sroa.483.0..sroa_idx, align 8
  %i.ip = call noundef zeroext i1 @_RNvNtCsj6eKBz9Db1c_4core3fmt5write(ptr noundef nonnull %i.g, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @101, ptr noundef nonnull @177, ptr noundef nonnull %i.e) #43 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %i.iq = getelementptr i8, ptr %i.fx, i64 32
  %.val141 = load ptr, ptr %i.iq, align 8, !nonnull !11, !noundef !11
  %i.ir = getelementptr i8, ptr %i.fx, i64 40
  %.val142 = load i64, ptr %i.ir, align 8, !noundef !11 ; 5 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !4145)
  call void @llvm.experimental.noalias.scope.decl(metadata !4146)
  %i.is = load i64, ptr %.sroa.554.0..sroa_idx, align 8, !alias.scope !4147, !noundef !11 ; 5 uses
  %i.it = load i64, ptr %i.g, align 8, !range !12, !alias.scope !4147, !noundef !11
  %i.iu = sub i64 %i.it, %i.is
  %i.iv = icmp ugt i64 %.val142, %i.iu
  br i1 %i.iv, label %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCsfu0rQaTkGUu_12clap_builder.exit.thread.i.i223, label %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCsfu0rQaTkGUu_12clap_builder.exit.i.i221, !prof !19

_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCsfu0rQaTkGUu_12clap_builder.exit.thread.i.i223: ; preds = %bb.ay
  call fastcc void @_RINvNvMs2_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsfu0rQaTkGUu_12clap_builder(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g, i64 noundef %i.is, i64 noundef %.val142, i64 noundef 1, i64 noundef 1) #43
  %i.iw = load i64, ptr %.sroa.554.0..sroa_idx, align 8, !alias.scope !4148, !noundef !11 ; 2 uses
  %i.ix = icmp sgt i64 %i.iw, -1
  call void @llvm.assume(i1 %i.ix)
  br label %bb.az

_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCsfu0rQaTkGUu_12clap_builder.exit.i.i221: ; preds = %bb.ay
  %i.iy = icmp sgt i64 %i.is, -1
  call void @llvm.assume(i1 %i.iy)
  %.not.i.i222 = icmp eq i64 %.val142, 0
  br i1 %.not.i.i222, label %_RNvMNtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_strNtB2_9StyledStr11push_styled.exit224, label %bb.az

bb.az:                                            ; preds = %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCsfu0rQaTkGUu_12clap_builder.exit.i.i221, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCsfu0rQaTkGUu_12clap_builder.exit.thread.i.i223
  %i.iz = phi i64 [ %i.iw, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCsfu0rQaTkGUu_12clap_builder.exit.thread.i.i223 ], [ %i.is, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCsfu0rQaTkGUu_12clap_builder.exit.i.i221 ] ; 2 uses
  %i.ja = load ptr, ptr %.sroa.453.0..sroa_idx, align 8, !alias.scope !4148, !nonnull !11, !noundef !11
  %i.jb = getelementptr inbounds nuw i8, ptr %i.ja, i64 %i.iz
end_hunk_0
begin_hunk_1_@_RNvMs2_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB5_7Command26get_subcommands_containing:bb.a
  br label %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecRNtNtNtCsfu0rQaTkGUu_12clap_builder7builder7command7CommandE15append_elementsBL_.exit

_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecRNtNtNtCsfu0rQaTkGUu_12clap_builder7builder7command7CommandE15append_elementsBL_.exit: ; preds = %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecRNtNtNtCsfu0rQaTkGUu_12clap_builder7builder7command7CommandE7reserveBL_.exit.i, %bb.e
  %i.ax = phi ptr [ %i.au, %bb.e ], [ %i.ai, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecRNtNtNtCsfu0rQaTkGUu_12clap_builder7builder7command7CommandE7reserveBL_.exit.i ]
  %i.ay = phi i64 [ %i.at, %bb.e ], [ %i.ak, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecRNtNtNtCsfu0rQaTkGUu_12clap_builder7builder7command7CommandE7reserveBL_.exit.i ]
  %i.az = add i64 %i.ay, %i.am                    ; 2 uses
  store i64 %i.az, ptr %i.d, align 8, !alias.scope !5356
  %.val = load i64, ptr %i.a, align 8, !range !12, !noundef !11 ; 2 uses
  %i.ba = icmp eq i64 %.val, 0
  br i1 %i.ba, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecRNtNtNtCsfu0rQaTkGUu_12clap_builder7builder7command7CommandEEB1f_.exit, label %bb.f

bb.f:                                             ; preds = %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecRNtNtNtCsfu0rQaTkGUu_12clap_builder7builder7command7CommandE15append_elementsBL_.exit
  %i.bb = shl nuw i64 %.val, 3
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %i.al, i64 noundef %i.bb, i64 noundef range(i64 1, -9223372036854775807) 8) #43
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecRNtNtNtCsfu0rQaTkGUu_12clap_builder7builder7command7CommandEEB1f_.exit

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecRNtNtNtCsfu0rQaTkGUu_12clap_builder7builder7command7CommandEEB1f_.exit: ; preds = %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecRNtNtNtCsfu0rQaTkGUu_12clap_builder7builder7command7CommandE15append_elementsBL_.exit, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %.loopexit
}

; Function Attrs: nounwind nonlazybind uwtable
define void @_RNvMs2_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB5_7Command28get_name_and_visible_aliases(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(712) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  tail call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #43
  %i.b = tail call noundef align 8 dereferenceable_or_null(16) ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) 16, i64 noundef range(i64 1, 9) 8) #43 ; 5 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.b, label %_RNvNtCs4wP2HXfJTCR_5alloc5boxed14box_new_uninit.exit, !prof !33

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs4wP2HXfJTCR_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 16) #46
  unreachable

_RNvNtCs4wP2HXfJTCR_5alloc5boxed14box_new_uninit.exit: ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 560
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !11, !noundef !11
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 568
  %i.g = load i64, ptr %i.f, align 8, !noundef !11
  store ptr %i.e, ptr %i.b, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %i.g, ptr %i.h, align 8
  store i64 1, ptr %i.a, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store ptr %i.b, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  store i64 1, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.l = load ptr, ptr %i.k, align 8, !nonnull !11, !noundef !11 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.n = load i64, ptr %i.m, align 8, !noundef !11
  %i.o = getelementptr inbounds nuw [24 x i8], ptr %i.l, i64 %i.n
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5366)
  br label %bb.c

bb.c:                                             ; preds = %bb.g, %_RNvNtCs4wP2HXfJTCR_5alloc5boxed14box_new_uninit.exit
  %i.p = phi ptr [ %i.b, %_RNvNtCs4wP2HXfJTCR_5alloc5boxed14box_new_uninit.exit ], [ %i.ab, %bb.g ]
  %i.q = phi i64 [ 1, %_RNvNtCs4wP2HXfJTCR_5alloc5boxed14box_new_uninit.exit ], [ %i.ae, %bb.g ] ; 5 uses
  %.sroa.0.0.i = phi ptr [ %i.l, %_RNvNtCs4wP2HXfJTCR_5alloc5boxed14box_new_uninit.exit ], [ %i.t, %bb.g ]
  br label %bb.d

bb.d:                                             ; preds = %bb.e, %bb.c
  %i.r = phi ptr [ %i.t, %bb.e ], [ %.sroa.0.0.i, %bb.c ] ; 5 uses
  %i.s = icmp eq ptr %i.r, %i.o
  br i1 %i.s, label %_RINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB6_3VecReE16extend_desugaredINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtB16_6filter6FilterINtNtNtB1a_5slice4iter4IterTNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3str3StrbEENCNvMs2_NtB2I_7commandNtB3D_7Command19get_visible_aliases0ENCB3x_s_0EEB2K_.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 24 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.v = load i8, ptr %i.u, align 8, !range !34, !noalias !5367, !noundef !11
  %i.w = trunc nuw i8 %i.v to i1
  br i1 %i.w, label %bb.f, label %bb.d

bb.f:                                             ; preds = %bb.e
  %.val.i.i = load ptr, ptr %i.r, align 8, !noalias !5368, !nonnull !11, !noundef !11
  %i.x = getelementptr i8, ptr %i.r, i64 8
  %.val3.i.i = load i64, ptr %i.x, align 8, !noalias !5368, !noundef !11
  %i.y = icmp samesign ult i64 %i.q, 576460752303423488
  tail call void @llvm.assume(i1 %i.y)
  %i.z = load i64, ptr %i.a, align 8, !range !12, !alias.scope !5366, !noundef !11
  %i.aa = icmp eq i64 %i.q, %i.z
  br i1 %i.aa, label %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecReE7reserveCsfu0rQaTkGUu_12clap_builder.exit.i, label %bb.g

_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecReE7reserveCsfu0rQaTkGUu_12clap_builder.exit.i: ; preds = %bb.f
  call fastcc void @_RINvNvMs2_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsfu0rQaTkGUu_12clap_builder(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a, i64 noundef %i.q, i64 noundef range(i64 1, 0) 1, i64 noundef 8, i64 noundef 16) #43
  %.pre = load ptr, ptr %i.i, align 8, !alias.scope !5366
  br label %bb.g

bb.g:                                             ; preds = %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecReE7reserveCsfu0rQaTkGUu_12clap_builder.exit.i, %bb.f
  %i.ab = phi ptr [ %.pre, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecReE7reserveCsfu0rQaTkGUu_12clap_builder.exit.i ], [ %i.p, %bb.f ] ; 2 uses
  %i.ac = getelementptr inbounds nuw [16 x i8], ptr %i.ab, i64 %i.q ; 2 uses
  store ptr %.val.i.i, ptr %i.ac, align 8, !noalias !5366, !captures !22
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  store i64 %.val3.i.i, ptr %i.ad, align 8, !noalias !5366
  %i.ae = add nuw nsw i64 %i.q, 1                 ; 2 uses
  store i64 %i.ae, ptr %i.j, align 8, !alias.scope !5366
  br label %bb.c

_RINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB6_3VecReE16extend_desugaredINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtB16_6filter6FilterINtNtNtB1a_5slice4iter4IterTNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3str3StrbEENCNvMs2_NtB2I_7commandNtB3D_7Command19get_visible_aliases0ENCB3x_s_0EEB2K_.exit: ; preds = %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @_RNvMs3_NtNtCsfu0rQaTkGUu_12clap_builder7builder3argNtB5_3Arg18stylize_arg_suffix(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(600) %1, ptr noalias nofree noundef nonnull readonly align 2 captures(address, read_provenance) dereferenceable(126) %2, i8 noundef range(i8 0, 3) %3) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 9 uses
  %i.b = alloca [24 x i8], align 8                ; 10 uses
  %i.c = alloca [16 x i8], align 8                ; 9 uses
  %i.d = alloca [24 x i8], align 8                ; 10 uses
  %i.e = alloca [8 x i8], align 8                 ; 10 uses
  %i.f = alloca [24 x i8], align 8                ; 13 uses
  %i.g = alloca [16 x i8], align 8                ; 5 uses
  %i.h = alloca [16 x i8], align 8                ; 5 uses
  %i.i = alloca [32 x i8], align 8                ; 7 uses
  %i.j = alloca [24 x i8], align 8                ; 6 uses
  %i.k = alloca [32 x i8], align 8                ; 7 uses
  %i.l = alloca [16 x i8], align 8                ; 5 uses
  %i.m = alloca [8 x i8], align 8                 ; 4 uses
  %i.n = alloca [24 x i8], align 8                ; 10 uses
  %i.o = alloca [8 x i8], align 8                 ; 6 uses
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 42
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 56 ; 3 uses
  store ptr %i.q, ptr %i.o, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  store i64 0, ptr %i.n, align 8
  %.sroa.47.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.47.0..sroa_idx, align 8
  %.sroa.58.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  store i64 0, ptr %.sroa.58.0..sroa_idx, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.09.0.copyload = load i64, ptr %i.r, align 8
  %.sroa.510.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %.sroa.511.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.s = trunc nuw i64 %.sroa.09.0.copyload to i1 ; 4 uses
  %.sroa.511.0.copyload = load i64, ptr %.sroa.511.0..sroa_idx, align 8 ; 2 uses
  %.not = icmp eq i64 %.sroa.511.0.copyload, 0
  %or.cond105 = select i1 %i.s, i1 %.not, i1 false
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 552
  %i.u = load ptr, ptr %i.t, align 8, !noundef !11 ; 2 uses
  %.not95 = icmp eq ptr %i.u, null
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 584
  %i.w = load i32, ptr %i.v, align 8, !range !45  ; 2 uses
  %.not96 = icmp eq i32 %i.w, -1
  %or.cond103 = select i1 %.not95, i1 %.not96, i1 false ; 2 uses
  br i1 %or.cond105, label %bb.ad, label %bb.b

bb.b:                                             ; preds = %bb.a
  br i1 %or.cond103, label %.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  br i1 %i.s, label %bb.d, label %bb.e, !prof !16

bb.d:                                             ; preds = %bb.c
  %.sroa.413.0.copyload = load i64, ptr %.sroa.510.0..sroa_idx, align 8
  %i.x = icmp eq i64 %.sroa.413.0.copyload, 0     ; 4 uses
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 592
  %i.z = load i32, ptr %i.y, align 8, !noundef !11
  %i.aa = and i32 %i.z, 128
  %.not93 = icmp eq i32 %i.aa, 0
  br i1 %.not93, label %bb.f, label %bb.g

bb.e:                                             ; preds = %bb.c
  tail call void @_RNvNtCsj6eKBz9Db1c_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @15, i64 noundef 99, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @191) #44
  unreachable

bb.f:                                             ; preds = %bb.d
  %. = select i1 %i.x, ptr @195, ptr @161
  %.101 = select i1 %i.x, i64 2, i64 1
  br label %bb.h

bb.g:                                             ; preds = %bb.d
  br i1 %i.x, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.i
  %.sroa.090.0 = phi ptr [ @196, %bb.i ], [ %., %bb.f ], [ @84, %bb.g ]
  %.sroa.03.1 = phi i1 [ true, %bb.i ], [ %i.x, %bb.f ], [ false, %bb.g ]
  %.sroa.02.0 = phi ptr [ %i.q, %bb.i ], [ %i.q, %bb.f ], [ %i.p, %bb.g ]
  %.sroa.7.0 = phi i64 [ 2, %bb.i ], [ %.101, %bb.f ], [ 1, %bb.g ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  store ptr %.sroa.02.0, ptr %i.m, align 8, !captures !22
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  store ptr %.sroa.090.0, ptr %i.l, align 8, !captures !22
  %i.ab = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store i64 %.sroa.7.0, ptr %i.ab, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  store ptr %i.m, ptr %i.k, align 8
  %.sroa.418.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store ptr @_RNvXs1i_NtCsj6eKBz9Db1c_4core3fmtRNtNtCscy4Zx2DW6cp_7anstyle5style5StyleNtB6_7Display3fmtCsfu0rQaTkGUu_12clap_builder, ptr %.sroa.418.0..sroa_idx, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  store ptr %i.l, ptr %i.ac, align 8
  %.sroa.422.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  store ptr @_RNvXs1i_NtCsj6eKBz9Db1c_4core3fmtReNtB6_7Display3fmtCsfu0rQaTkGUu_12clap_builder, ptr %.sroa.422.0..sroa_idx, align 8
  %i.ad = call noundef zeroext i1 @_RNvNtCsj6eKBz9Db1c_4core3fmt5write(ptr noundef nonnull %i.n, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @101, ptr noundef nonnull @75, ptr noundef nonnull %i.k) #43 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  br label %.thread

bb.i:                                             ; preds = %bb.g
  br label %bb.h

.thread:                                          ; preds = %bb.h, %bb.b, %bb.ad
  %4 = phi i32 [ -1, %bb.ad ], [ -1, %bb.b ], [ %i.w, %bb.h ] ; 2 uses
  %5 = phi ptr [ null, %bb.ad ], [ null, %bb.b ], [ %i.u, %bb.h ] ; 2 uses
  %.sroa.03.0110 = phi i1 [ false, %bb.ad ], [ false, %bb.b ], [ %.sroa.03.1, %bb.h ]
  %.not98 = icmp eq i8 %3, 2
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 592
  %i.af = load i32, ptr %i.ae, align 8
  %i.ag = trunc i32 %i.af to i8
  %.sroa.04.0 = select i1 %.not98, i8 %i.ag, i8 %3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  %i.ah = trunc i8 %.sroa.04.0 to i1              ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !5410)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !5411
  store i64 0, ptr %i.f, align 8, !noalias !5411
  %.sroa.411.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 5 uses
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.411.0..sroa_idx.i, align 8, !noalias !5411
  %.sroa.512.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 8 uses
  store i64 0, ptr %.sroa.512.0..sroa_idx.i, align 8, !noalias !5411
  %.sroa.4.0.copyload.i = load i64, ptr %.sroa.510.0..sroa_idx, align 8, !alias.scope !5410, !noalias !5412
  %.sroa.026.0.i = select i1 %i.s, i64 %.sroa.4.0.copyload.i, i64 1 ; 8 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 360
  %i.aj = load i64, ptr %i.ai, align 8, !alias.scope !5410, !noalias !5412, !noundef !11 ; 7 uses
  %i.ak = icmp ult i64 %i.aj, 576460752303423488
  call void @llvm.assume(i1 %i.ak)
  %i.al = icmp eq i64 %i.aj, 0
  br i1 %i.al, label %bb.l, label %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i.i.i.i

_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i.i.i.i: ; preds = %.thread
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 352
  %.val.i = load ptr, ptr %i.am, align 8, !alias.scope !5410, !noalias !5412, !nonnull !11, !noundef !11 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !5413)
  %i.an = shl nuw nsw i64 %i.aj, 4                ; 3 uses
  call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #43, !noalias !5414
  %i.ao = call noundef align 8 ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.an, i64 noundef range(i64 1, 9) 8) #43, !noalias !5414 ; 6 uses
  %i.ap = icmp eq ptr %i.ao, null
  br i1 %i.ap, label %bb.j, label %.lr.ph.preheader.i.i.i

bb.j:                                             ; preds = %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i.i.i.i
  call void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef 8, i64 %i.an) #46, !noalias !5415
  unreachable

.lr.ph.preheader.i.i.i:                           ; preds = %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i.i.i.i
  %i.aq = getelementptr inbounds nuw [16 x i8], ptr %.val.i, i64 %i.aj
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.k, %.lr.ph.preheader.i.i.i
  %.sroa.0.022.i.i.i = phi ptr [ %i.au, %bb.k ], [ %.val.i, %.lr.ph.preheader.i.i.i ] ; 4 uses
  %.sroa.7.021.i.i.i = phi i64 [ %i.at, %bb.k ], [ 0, %.lr.ph.preheader.i.i.i ] ; 2 uses
  %.sroa.10.020.i.i.i = phi i64 [ %i.as, %bb.k ], [ %i.aj, %.lr.ph.preheader.i.i.i ]
  %i.ar = icmp eq ptr %.sroa.0.022.i.i.i, %i.aq
  br i1 %i.ar, label %_RNvXsb_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3str3StrENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneBL_.exit.i, label %bb.k

bb.k:                                             ; preds = %.lr.ph.i.i.i
  %i.as = add nsw i64 %.sroa.10.020.i.i.i, -1     ; 2 uses
  %i.at = add nuw nsw i64 %.sroa.7.021.i.i.i, 1
  %i.au = getelementptr inbounds nuw i8, ptr %.sroa.0.022.i.i.i, i64 16
  %i.av = getelementptr inbounds nuw [16 x i8], ptr %i.ao, i64 %.sroa.7.021.i.i.i ; 2 uses
  %.val.i.i.i = load ptr, ptr %.sroa.0.022.i.i.i, align 8, !alias.scope !5413, !noalias !5416, !nonnull !11, !noundef !11
  %i.aw = getelementptr i8, ptr %.sroa.0.022.i.i.i, i64 8
  %.val13.i.i.i = load i64, ptr %i.aw, align 8, !alias.scope !5413, !noalias !5416, !noundef !11
  store ptr %.val.i.i.i, ptr %i.av, align 8, !noalias !5415
  %i.ax = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  store i64 %.val13.i.i.i, ptr %i.ax, align 8, !noalias !5415
  %i.ay = icmp eq i64 %i.as, 0
  br i1 %i.ay, label %_RNvXsb_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3str3StrENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneBL_.exit.i, label %.lr.ph.i.i.i

bb.l:                                             ; preds = %.thread
  call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #43, !noalias !5411
  %i.az = call noundef align 8 dereferenceable_or_null(16) ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) 16, i64 noundef range(i64 1, 9) 8) #43, !noalias !5411 ; 4 uses
  %i.ba = icmp eq ptr %i.az, null
  br i1 %i.ba, label %bb.m, label %_RNvXsb_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3str3StrENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneBL_.exit.thread.i, !prof !33

bb.m:                                             ; preds = %bb.l
  call void @_RNvNtCs4wP2HXfJTCR_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 16) #46, !noalias !5411
  unreachable

_RNvXsb_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3str3StrENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneBL_.exit.thread.i: ; preds = %bb.l
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 536
  %i.bc = load ptr, ptr %i.bb, align 8, !alias.scope !5410, !noalias !5412, !nonnull !11, !noundef !11 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 544
  %i.be = load i64, ptr %i.bd, align 8, !alias.scope !5410, !noalias !5412, !noundef !11 ; 2 uses
  store ptr %i.bc, ptr %i.az, align 8, !noalias !5411
  %i.bf = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  store i64 %i.be, ptr %i.bf, align 8, !noalias !5411
  br label %bb.n

_RNvXsb_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3str3StrENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneBL_.exit.i: ; preds = %bb.k, %.lr.ph.i.i.i
  %i.bg = icmp eq i64 %i.aj, 1
  br i1 %i.bg, label %_RNvXsb_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3str3StrENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneBL_.exit._crit_edge.i, label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3str3StrEENtNtNtB8_6traits8iterator8Iterator4nextB1D_.exit.lr.ph.i

_RNvXsb_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3str3StrENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneBL_.exit._crit_edge.i: ; preds = %_RNvXsb_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3str3StrENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneBL_.exit.i
  %.pre.i = load ptr, ptr %i.ao, align 8, !noalias !5411
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %.pre102.i = load i64, ptr %.phi.trans.insert.i, align 8, !noalias !5411
  br label %bb.n

bb.n:                                             ; preds = %_RNvXsb_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3str3StrENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneBL_.exit._crit_edge.i, %_RNvXsb_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3str3StrENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneBL_.exit.thread.i
  %i.bh = phi i64 [ %i.be, %_RNvXsb_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3str3StrENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneBL_.exit.thread.i ], [ %.pre102.i, %_RNvXsb_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3str3StrENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneBL_.exit._crit_edge.i ] ; 10 uses
  %i.bi = phi ptr [ %i.bc, %_RNvXsb_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3str3StrENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneBL_.exit.thread.i ], [ %.pre.i, %_RNvXsb_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3str3StrENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneBL_.exit._crit_edge.i ] ; 10 uses
  %.sroa.8.082.i = phi ptr [ %i.az, %_RNvXsb_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3str3StrENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneBL_.exit.thread.i ], [ %i.ao, %_RNvXsb_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3str3StrENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneBL_.exit._crit_edge.i ]
  %..i.i = call noundef i64 @llvm.umax.i64(i64 %.sroa.026.0.i, i64 1) ; 2 uses
  %i.bj = shl i64 %..i.i, 4                       ; 4 uses
  %i.bk = icmp ugt i64 %.sroa.026.0.i, 1152921504606846975
  %.not.i.i.i.i = icmp ugt i64 %i.bj, 9223372036854775800
  %or.cond.i.i.i.i = or i1 %i.bk, %.not.i.i.i.i
  br i1 %or.cond.i.i.i.i, label %bb.o, label %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i.i.i, !prof !21

_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i.i.i: ; preds = %bb.n
  call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #43, !noalias !5417
  %i.bl = call noundef align 8 ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.bj, i64 noundef range(i64 1, 9) 8) #43, !noalias !5417 ; 5 uses
  %i.bm = icmp eq ptr %i.bl, null
  br i1 %i.bm, label %bb.o, label %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3str3StrE7reserveBK_.exit.i.i.i

bb.o:                                             ; preds = %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i.i.i, %bb.n
  %.sroa.4.0.ph.i.i.i = phi i64 [ 8, %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i.i.i ], [ 0, %bb.n ]
  call void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i.i.i, i64 %i.bj) #46, !noalias !5418
  unreachable

_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3str3StrE7reserveBK_.exit.i.i.i: ; preds = %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i.i.i
  %i.bn = icmp samesign ugt i64 %.sroa.026.0.i, 1
  br i1 %i.bn, label %.lr.ph.i.i50.i.preheader, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3str3StrEEB1e_.exit.i

.lr.ph.i.i50.i.preheader:                         ; preds = %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3str3StrE7reserveBK_.exit.i.i.i
  %i.bo = add nsw i64 %.sroa.026.0.i, -1          ; 2 uses
  %i.bp = add nsw i64 %.sroa.026.0.i, -2
  %xtraiter = and i64 %i.bo, 7                    ; 3 uses
  %i.bq = icmp ult i64 %i.bp, 7
  br i1 %i.bq, label %.lr.ph.i.i50.i.epil.preheader, label %.lr.ph.i.i50.i.preheader.new

.lr.ph.i.i50.i.preheader.new:                     ; preds = %.lr.ph.i.i50.i.preheader
  %unroll_iter = and i64 %i.bo, -8
  br label %.lr.ph.i.i50.i

.lr.ph.i.i50.i:                                   ; preds = %.lr.ph.i.i50.i, %.lr.ph.i.i50.i.preheader.new
  %.sroa.0.018.i.i.i = phi ptr [ %i.bl, %.lr.ph.i.i50.i.preheader.new ], [ %i.cg, %.lr.ph.i.i50.i ] ; 17 uses
  %niter = phi i64 [ 0, %.lr.ph.i.i50.i.preheader.new ], [ %niter.next.7, %.lr.ph.i.i50.i ]
  store ptr %i.bi, ptr %.sroa.0.018.i.i.i, align 8, !noalias !5419
  %i.br = getelementptr inbounds nuw i8, ptr %.sroa.0.018.i.i.i, i64 8
  store i64 %i.bh, ptr %i.br, align 8, !noalias !5420
  %i.bs = getelementptr inbounds nuw i8, ptr %.sroa.0.018.i.i.i, i64 16
  store ptr %i.bi, ptr %i.bs, align 8, !noalias !5419
  %i.bt = getelementptr inbounds nuw i8, ptr %.sroa.0.018.i.i.i, i64 24
  store i64 %i.bh, ptr %i.bt, align 8, !noalias !5420
  %i.bu = getelementptr inbounds nuw i8, ptr %.sroa.0.018.i.i.i, i64 32
  store ptr %i.bi, ptr %i.bu, align 8, !noalias !5419
  %i.bv = getelementptr inbounds nuw i8, ptr %.sroa.0.018.i.i.i, i64 40
  store i64 %i.bh, ptr %i.bv, align 8, !noalias !5420
  %i.bw = getelementptr inbounds nuw i8, ptr %.sroa.0.018.i.i.i, i64 48
  store ptr %i.bi, ptr %i.bw, align 8, !noalias !5419
  %i.bx = getelementptr inbounds nuw i8, ptr %.sroa.0.018.i.i.i, i64 56
  store i64 %i.bh, ptr %i.bx, align 8, !noalias !5420
  %i.by = getelementptr inbounds nuw i8, ptr %.sroa.0.018.i.i.i, i64 64
  store ptr %i.bi, ptr %i.by, align 8, !noalias !5419
  %i.bz = getelementptr inbounds nuw i8, ptr %.sroa.0.018.i.i.i, i64 72
  store i64 %i.bh, ptr %i.bz, align 8, !noalias !5420
  %i.ca = getelementptr inbounds nuw i8, ptr %.sroa.0.018.i.i.i, i64 80
  store ptr %i.bi, ptr %i.ca, align 8, !noalias !5419
  %i.cb = getelementptr inbounds nuw i8, ptr %.sroa.0.018.i.i.i, i64 88
  store i64 %i.bh, ptr %i.cb, align 8, !noalias !5420
  %i.cc = getelementptr inbounds nuw i8, ptr %.sroa.0.018.i.i.i, i64 96
  store ptr %i.bi, ptr %i.cc, align 8, !noalias !5419
  %i.cd = getelementptr inbounds nuw i8, ptr %.sroa.0.018.i.i.i, i64 104
  store i64 %i.bh, ptr %i.cd, align 8, !noalias !5420
  %i.ce = getelementptr inbounds nuw i8, ptr %.sroa.0.018.i.i.i, i64 112
  store ptr %i.bi, ptr %i.ce, align 8, !noalias !5419
  %i.cf = getelementptr inbounds nuw i8, ptr %.sroa.0.018.i.i.i, i64 120
  store i64 %i.bh, ptr %i.cf, align 8, !noalias !5420
  %i.cg = getelementptr inbounds nuw i8, ptr %.sroa.0.018.i.i.i, i64 128 ; 3 uses
  %niter.next.7 = add i64 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3str3StrEEB1e_.exit.i.loopexit.unr-lcssa, label %.lr.ph.i.i50.i

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3str3StrEEB1e_.exit.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i50.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3str3StrEEB1e_.exit.i, label %.lr.ph.i.i50.i.epil.preheader

.lr.ph.i.i50.i.epil.preheader:                    ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3str3StrEEB1e_.exit.i.loopexit.unr-lcssa, %.lr.ph.i.i50.i.preheader
  %.sroa.0.018.i.i.i.epil.init = phi ptr [ %i.bl, %.lr.ph.i.i50.i.preheader ], [ %i.cg, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3str3StrEEB1e_.exit.i.loopexit.unr-lcssa ]
  %lcmp.mod128 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod128)
  br label %.lr.ph.i.i50.i.epil

.lr.ph.i.i50.i.epil:                              ; preds = %.lr.ph.i.i50.i.epil, %.lr.ph.i.i50.i.epil.preheader
  %.sroa.0.018.i.i.i.epil = phi ptr [ %i.ci, %.lr.ph.i.i50.i.epil ], [ %.sroa.0.018.i.i.i.epil.init, %.lr.ph.i.i50.i.epil.preheader ] ; 3 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i.i50.i.epil ], [ 0, %.lr.ph.i.i50.i.epil.preheader ]
  store ptr %i.bi, ptr %.sroa.0.018.i.i.i.epil, align 8, !noalias !5419
  %i.ch = getelementptr inbounds nuw i8, ptr %.sroa.0.018.i.i.i.epil, i64 8
  store i64 %i.bh, ptr %i.ch, align 8, !noalias !5420
  %i.ci = getelementptr inbounds nuw i8, ptr %.sroa.0.018.i.i.i.epil, i64 16 ; 2 uses
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3str3StrEEB1e_.exit.i, label %.lr.ph.i.i50.i.epil, !llvm.loop !5387

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3str3StrEEB1e_.exit.i: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3str3StrEEB1e_.exit.i.loopexit.unr-lcssa, %.lr.ph.i.i50.i.epil, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3str3StrE7reserveBK_.exit.i.i.i
  %.sroa.0.0.lcssa25.i.i.i = phi ptr [ %i.bl, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3str3StrE7reserveBK_.exit.i.i.i ], [ %i.cg, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3str3StrEEB1e_.exit.i.loopexit.unr-lcssa ], [ %i.ci, %.lr.ph.i.i50.i.epil ] ; 2 uses
  store ptr %i.bi, ptr %.sroa.0.0.lcssa25.i.i.i, align 8, !noalias !5420
  %i.cj = getelementptr inbounds nuw i8, ptr %.sroa.0.0.lcssa25.i.i.i, i64 8
  store i64 %i.bh, ptr %i.cj, align 8, !noalias !5420
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.8.082.i, i64 noundef 16, i64 noundef range(i64 1, -9223372036854775807) 8) #43, !noalias !5421
  br label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3str3StrEENtNtNtB8_6traits8iterator8Iterator4nextB1D_.exit.lr.ph.i

_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3str3StrEENtNtNtB8_6traits8iterator8Iterator4nextB1D_.exit.lr.ph.i: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3str3StrEEB1e_.exit.i, %_RNvXsb_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3str3StrENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneBL_.exit.i
  %.idx.i.pre-phi = phi i64 [ %i.bj, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3str3StrEEB1e_.exit.i ], [ %i.an, %_RNvXsb_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3str3StrENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneBL_.exit.i ] ; 2 uses
  %.sroa.8.1.i = phi ptr [ %i.bl, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3str3StrEEB1e_.exit.i ], [ %i.ao, %_RNvXsb_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3str3StrENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneBL_.exit.i ] ; 4 uses
  %.sroa.0.1.i = phi i64 [ %..i.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3str3StrEEB1e_.exit.i ], [ %i.aj, %_RNvXsb_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3str3StrENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneBL_.exit.i ] ; 3 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %.sroa.8.1.i, i64 %.idx.i.pre-phi
  %.not40.i = icmp ne ptr %5, null
  %.not41.i = icmp ne i32 %4, -1
  %or.cond44.not122.i = select i1 %.not40.i, i1 true, i1 %.not41.i ; 2 uses
  %i.cl = add i64 %.sroa.026.0.i, -1
  %.sroa.416.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  %.sroa.770.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  %.sroa.9.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  %.sroa.422.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %.sroa.770.0..sroa_idx71.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %.sroa.9.0..sroa_idx73.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %.sroa.8.1.i, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !5411
  store ptr %.sroa.8.1.i, ptr %i.e, align 8, !noalias !5411, !captures !22
  %.not39.peel.i = icmp ne i64 %.sroa.026.0.i, 0
  %brmerge95.not.peel.i = select i1 %i.ah, i1 %.not39.peel.i, i1 false
  %or.cond120.i = select i1 %or.cond44.not122.i, i1 true, i1 %brmerge95.not.peel.i
  br i1 %or.cond120.i, label %.split33.peel.i, label %.split.peel.i

.split.peel.i:                                    ; preds = %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3str3StrEENtNtNtB8_6traits8iterator8Iterator4nextB1D_.exit.lr.ph.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !5411
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !5411
  store ptr %i.e, ptr %i.c, align 8, !noalias !5411
  store ptr @_RNvXs1i_NtCsj6eKBz9Db1c_4core3fmtRNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3str3StrNtB6_7Display3fmtBC_, ptr %.sroa.416.0..sroa_idx.i, align 8, !noalias !5411
  call void @_RNvNvNtCs4wP2HXfJTCR_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, ptr noundef nonnull @194, ptr noundef nonnull %i.c) #43, !noalias !5411
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !5411
  %.sroa.068.0.copyload.peel.i = load i64, ptr %i.d, align 8, !noalias !5411
  %.sroa.770.0.copyload.peel.i = load ptr, ptr %.sroa.770.0..sroa_idx.i, align 8, !noalias !5411
  %.sroa.9.0.copyload.peel.i = load i64, ptr %.sroa.9.0..sroa_idx.i, align 8, !noalias !5411
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !5411
  br label %bb.p

.split33.peel.i:                                  ; preds = %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3str3StrEENtNtNtB8_6traits8iterator8Iterator4nextB1D_.exit.lr.ph.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !5411
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !5411
  store ptr %i.e, ptr %i.a, align 8, !noalias !5411
  store ptr @_RNvXs1i_NtCsj6eKBz9Db1c_4core3fmtRNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3str3StrNtB6_7Display3fmtBC_, ptr %.sroa.422.0..sroa_idx.i, align 8, !noalias !5411
  call void @_RNvNvNtCs4wP2HXfJTCR_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noundef nonnull @79, ptr noundef nonnull %i.a) #43, !noalias !5411
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !5411
  %.sroa.068.0.copyload69.peel.i = load i64, ptr %i.b, align 8, !noalias !5411
  %.sroa.770.0.copyload72.peel.i = load ptr, ptr %.sroa.770.0..sroa_idx71.i, align 8, !noalias !5411
  %.sroa.9.0.copyload74.peel.i = load i64, ptr %.sroa.9.0..sroa_idx73.i, align 8, !noalias !5411
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !5411
  br label %bb.p

bb.p:                                             ; preds = %.split33.peel.i, %.split.peel.i
  %.sroa.9.0.peel.i = phi i64 [ %.sroa.9.0.copyload74.peel.i, %.split33.peel.i ], [ %.sroa.9.0.copyload.peel.i, %.split.peel.i ] ; 4 uses
  %.sroa.770.0.peel.i = phi ptr [ %.sroa.770.0.copyload72.peel.i, %.split33.peel.i ], [ %.sroa.770.0.copyload.peel.i, %.split.peel.i ] ; 3 uses
  %.sroa.068.0.peel.i = phi i64 [ %.sroa.068.0.copyload69.peel.i, %.split33.peel.i ], [ %.sroa.068.0.copyload.peel.i, %.split.peel.i ] ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.770.0.peel.i) ]
  call void @llvm.experimental.noalias.scope.decl(metadata !5422)
  %.not.i = icmp eq i64 %.sroa.9.0.peel.i, 0
  br i1 %.not.i, label %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE15append_elementsCsfu0rQaTkGUu_12clap_builder.exit56.peel.i, label %bb.q, !prof !16

bb.q:                                             ; preds = %bb.p
  call fastcc void @_RINvNvMs2_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsfu0rQaTkGUu_12clap_builder(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f, i64 noundef 0, i64 noundef %.sroa.9.0.peel.i, i64 noundef 1, i64 noundef 1) #43, !noalias !5411
  %i.cn = load i64, ptr %.sroa.512.0..sroa_idx.i, align 8, !alias.scope !5422, !noalias !5411, !noundef !11 ; 3 uses
  %i.co = icmp sgt i64 %i.cn, -1
  call void @llvm.assume(i1 %i.co)
  %.pre103.i = load ptr, ptr %.sroa.411.0..sroa_idx.i, align 8, !alias.scope !5422, !noalias !5411 ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %.pre103.i, i64 %i.cn
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.cp, ptr nonnull readonly align 1 %.sroa.770.0.peel.i, i64 %.sroa.9.0.peel.i, i1 false), !noalias !5423
  br label %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE15append_elementsCsfu0rQaTkGUu_12clap_builder.exit56.peel.i

_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE15append_elementsCsfu0rQaTkGUu_12clap_builder.exit56.peel.i: ; preds = %bb.q, %bb.p
  %i.cq = phi ptr [ %.pre103.i, %bb.q ], [ inttoptr (i64 1 to ptr), %bb.p ]
  %i.cr = phi i64 [ %i.cn, %bb.q ], [ 0, %bb.p ]
  %i.cs = add i64 %i.cr, %.sroa.9.0.peel.i        ; 3 uses
  store i64 %i.cs, ptr %.sroa.512.0..sroa_idx.i, align 8, !alias.scope !5422, !noalias !5411
  %i.ct = icmp eq i64 %.sroa.068.0.peel.i, 0
  br i1 %i.ct, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECsfu0rQaTkGUu_12clap_builder.exit.peel.i, label %bb.r

bb.r:                                             ; preds = %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE15append_elementsCsfu0rQaTkGUu_12clap_builder.exit56.peel.i
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.770.0.peel.i, i64 noundef %.sroa.068.0.peel.i, i64 noundef range(i64 1, -9223372036854775807) 1) #43, !noalias !5424
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECsfu0rQaTkGUu_12clap_builder.exit.peel.i

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECsfu0rQaTkGUu_12clap_builder.exit.peel.i: ; preds = %bb.r, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE15append_elementsCsfu0rQaTkGUu_12clap_builder.exit56.peel.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !5411
  %i.cu = icmp eq i64 %.sroa.0.1.i, 1
  br i1 %i.cu, label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3str3StrEENtNtNtB8_6traits8iterator8Iterator4nextB1D_.exit.thread.i, label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3str3StrEENtNtNtB8_6traits8iterator8Iterator4nextB1D_.exit.i

_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3str3StrEENtNtNtB8_6traits8iterator8Iterator4nextB1D_.exit.i: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECsfu0rQaTkGUu_12clap_builder.exit.peel.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECsfu0rQaTkGUu_12clap_builder.exit.i
  %i.cv = phi ptr [ %i.dz, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECsfu0rQaTkGUu_12clap_builder.exit.i ], [ %i.cq, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECsfu0rQaTkGUu_12clap_builder.exit.peel.i ]
  %i.cw = phi i64 [ %i.eb, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECsfu0rQaTkGUu_12clap_builder.exit.i ], [ %i.cs, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECsfu0rQaTkGUu_12clap_builder.exit.peel.i ] ; 5 uses
  %.sroa.067.0100.i = phi ptr [ %i.cx, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECsfu0rQaTkGUu_12clap_builder.exit.i ], [ %i.cm, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECsfu0rQaTkGUu_12clap_builder.exit.peel.i ] ; 2 uses
  %.sroa.7.098.i = phi i64 [ %i.cy, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECsfu0rQaTkGUu_12clap_builder.exit.i ], [ 1, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECsfu0rQaTkGUu_12clap_builder.exit.peel.i ] ; 3 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %.sroa.067.0100.i, i64 16 ; 2 uses
  %i.cy = add nuw nsw i64 %.sroa.7.098.i, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !5411
  store ptr %.sroa.067.0100.i, ptr %i.e, align 8, !noalias !5411, !captures !22
  br i1 %or.cond44.not122.i, label %bb.v, label %bb.w

_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3str3StrEENtNtNtB8_6traits8iterator8Iterator4nextB1D_.exit.thread.i: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECsfu0rQaTkGUu_12clap_builder.exit.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECsfu0rQaTkGUu_12clap_builder.exit.peel.i
  %i.cz = phi i64 [ %i.cs, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECsfu0rQaTkGUu_12clap_builder.exit.peel.i ], [ %i.eb, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECsfu0rQaTkGUu_12clap_builder.exit.i ] ; 3 uses
  %i.da = icmp ult i64 %.sroa.0.1.i, 576460752303423488
  call void @llvm.assume(i1 %i.da)
  %i.db = icmp ugt i64 %.sroa.511.0.copyload, %.sroa.0.1.i
  %6 = select i1 %i.s, i1 %i.db, i1 false         ; 2 uses
  %.not36.i = icmp eq ptr %5, null
  %.not37.i = icmp eq i32 %4, -1
  %or.cond.i = select i1 %.not36.i, i1 %.not37.i, i1 false
  br i1 %or.cond.i, label %bb.t, label %bb.s

bb.s:                                             ; preds = %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3str3StrEENtNtNtB8_6traits8iterator8Iterator4nextB1D_.exit.thread.i
  br i1 %6, label %bb.u, label %_RNvMs3_NtNtCsfu0rQaTkGUu_12clap_builder7builder3argNtB5_3Arg14render_arg_val.exit

bb.t:                                             ; preds = %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3str3StrEENtNtNtB8_6traits8iterator8Iterator4nextB1D_.exit.thread.i
  %i.dc = getelementptr inbounds nuw i8, ptr %1, i64 596
  %i.dd = load i8, ptr %i.dc, align 4, !range !53, !alias.scope !5410, !noalias !5412, !noundef !11
  %i.de = icmp eq i8 %i.dd, 1
  %brmerge.i = select i1 %i.de, i1 true, i1 %6
  br i1 %brmerge.i, label %bb.u, label %_RNvMs3_NtNtCsfu0rQaTkGUu_12clap_builder7builder3argNtB5_3Arg14render_arg_val.exit

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.df = load i64, ptr %i.f, align 8, !range !12, !alias.scope !5425, !noalias !5411, !noundef !11
  %i.dg = sub i64 %i.df, %i.cz
  %i.dh = icmp ult i64 %i.dg, 3
  br i1 %i.dh, label %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCsfu0rQaTkGUu_12clap_builder.exit.thread.i.i, label %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE15append_elementsCsfu0rQaTkGUu_12clap_builder.exit.i, !prof !19

_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCsfu0rQaTkGUu_12clap_builder.exit.thread.i.i: ; preds = %bb.u
  call fastcc void @_RINvNvMs2_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsfu0rQaTkGUu_12clap_builder(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f, i64 noundef %i.cz, i64 noundef 3, i64 noundef 1, i64 noundef 1) #43, !noalias !5411
  %i.di = load i64, ptr %.sroa.512.0..sroa_idx.i, align 8, !alias.scope !5426, !noalias !5411, !noundef !11
  br label %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE15append_elementsCsfu0rQaTkGUu_12clap_builder.exit.i

_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE15append_elementsCsfu0rQaTkGUu_12clap_builder.exit.i: ; preds = %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCsfu0rQaTkGUu_12clap_builder.exit.thread.i.i, %bb.u
  %.sink121.i = phi i64 [ %i.di, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCsfu0rQaTkGUu_12clap_builder.exit.thread.i.i ], [ %i.cz, %bb.u ] ; 3 uses
  %i.dj = icmp sgt i64 %.sink121.i, -1
  call void @llvm.assume(i1 %i.dj)
  %i.dk = load ptr, ptr %.sroa.411.0..sroa_idx.i, align 8, !alias.scope !5426, !noalias !5411, !nonnull !11, !noundef !11
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 %.sink121.i
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.dl, i8 46, i64 3, i1 false), !noalias !5411
  %i.dm = add nuw i64 %.sink121.i, 3
  store i64 %i.dm, ptr %.sroa.512.0..sroa_idx.i, align 8, !alias.scope !5426, !noalias !5411
  br label %_RNvMs3_NtNtCsfu0rQaTkGUu_12clap_builder7builder3argNtB5_3Arg14render_arg_val.exit

bb.v:                                             ; preds = %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3str3StrEENtNtNtB8_6traits8iterator8Iterator4nextB1D_.exit.i
  %brmerge93.not.i = icmp ult i64 %i.cl, %.sroa.7.098.i
  br i1 %brmerge93.not.i, label %.split.i, label %.split33.i

bb.w:                                             ; preds = %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3str3StrEENtNtNtB8_6traits8iterator8Iterator4nextB1D_.exit.i
  %.not39.i = icmp ugt i64 %.sroa.026.0.i, %.sroa.7.098.i
  %brmerge95.not.i = select i1 %i.ah, i1 %.not39.i, i1 false
  br i1 %brmerge95.not.i, label %.split33.i, label %.split.i

.split.i:                                         ; preds = %bb.w, %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !5411
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !5411
  store ptr %i.e, ptr %i.c, align 8, !noalias !5411
  store ptr @_RNvXs1i_NtCsj6eKBz9Db1c_4core3fmtRNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3str3StrNtB6_7Display3fmtBC_, ptr %.sroa.416.0..sroa_idx.i, align 8, !noalias !5411
  call void @_RNvNvNtCs4wP2HXfJTCR_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, ptr noundef nonnull @194, ptr noundef nonnull %i.c) #43, !noalias !5411
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !5411
  %.sroa.068.0.copyload.i = load i64, ptr %i.d, align 8, !noalias !5411
  %.sroa.770.0.copyload.i = load ptr, ptr %.sroa.770.0..sroa_idx.i, align 8, !noalias !5411
  %.sroa.9.0.copyload.i = load i64, ptr %.sroa.9.0..sroa_idx.i, align 8, !noalias !5411
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !5411
  br label %bb.aa

.split33.i:                                       ; preds = %bb.w, %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !5411
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !5411
  store ptr %i.e, ptr %i.a, align 8, !noalias !5411
  store ptr @_RNvXs1i_NtCsj6eKBz9Db1c_4core3fmtRNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3str3StrNtB6_7Display3fmtBC_, ptr %.sroa.422.0..sroa_idx.i, align 8, !noalias !5411
  call void @_RNvNvNtCs4wP2HXfJTCR_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noundef nonnull @79, ptr noundef nonnull %i.a) #43, !noalias !5411
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !5411
  %.sroa.068.0.copyload69.i = load i64, ptr %i.b, align 8, !noalias !5411
  %.sroa.770.0.copyload72.i = load ptr, ptr %.sroa.770.0..sroa_idx71.i, align 8, !noalias !5411
  %.sroa.9.0.copyload74.i = load i64, ptr %.sroa.9.0..sroa_idx73.i, align 8, !noalias !5411
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !5411
  br label %bb.aa

bb.x:                                             ; preds = %bb.ab, %bb.aa
  %i.dn = phi ptr [ %i.cv, %bb.aa ], [ %.pre104.i, %bb.ab ] ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 %i.cw
  store i8 32, ptr %i.do, align 1, !noalias !5427
  %i.dp = add nuw i64 %i.cw, 1                    ; 6 uses
  store i64 %i.dp, ptr %.sroa.512.0..sroa_idx.i, align 8, !alias.scope !5428, !noalias !5411
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.770.0.i) ]
  call void @llvm.experimental.noalias.scope.decl(metadata !5429)
  %i.dq = load i64, ptr %i.f, align 8, !range !12, !alias.scope !5430, !noalias !5411, !noundef !11
  %i.dr = sub i64 %i.dq, %i.dp
  %i.ds = icmp ugt i64 %.sroa.9.0.i, %i.dr
  br i1 %i.ds, label %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCsfu0rQaTkGUu_12clap_builder.exit.thread.i55.i, label %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCsfu0rQaTkGUu_12clap_builder.exit.i54.i, !prof !19

_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCsfu0rQaTkGUu_12clap_builder.exit.thread.i55.i: ; preds = %bb.x
  call fastcc void @_RINvNvMs2_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsfu0rQaTkGUu_12clap_builder(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f, i64 noundef %i.dp, i64 noundef %.sroa.9.0.i, i64 noundef 1, i64 noundef 1) #43, !noalias !5411
  %i.dt = load i64, ptr %.sroa.512.0..sroa_idx.i, align 8, !alias.scope !5429, !noalias !5411, !noundef !11 ; 2 uses
  %i.du = icmp sgt i64 %i.dt, -1
  call void @llvm.assume(i1 %i.du)
  br label %bb.y

_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCsfu0rQaTkGUu_12clap_builder.exit.i54.i: ; preds = %bb.x
  %i.dv = icmp sgt i64 %i.dp, -1
  call void @llvm.assume(i1 %i.dv)
  %.not.i.i = icmp eq i64 %.sroa.9.0.i, 0
  br i1 %.not.i.i, label %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE15append_elementsCsfu0rQaTkGUu_12clap_builder.exit56.i, label %bb.y

bb.y:                                             ; preds = %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCsfu0rQaTkGUu_12clap_builder.exit.i54.i, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCsfu0rQaTkGUu_12clap_builder.exit.thread.i55.i
  %i.dw = phi i64 [ %i.dt, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCsfu0rQaTkGUu_12clap_builder.exit.thread.i55.i ], [ %i.dp, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCsfu0rQaTkGUu_12clap_builder.exit.i54.i ] ; 2 uses
  %i.dx = load ptr, ptr %.sroa.411.0..sroa_idx.i, align 8, !alias.scope !5429, !noalias !5411, !nonnull !11, !noundef !11 ; 2 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 %i.dw
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.dy, ptr nonnull readonly align 1 %.sroa.770.0.i, i64 %.sroa.9.0.i, i1 false), !noalias !5431
  br label %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE15append_elementsCsfu0rQaTkGUu_12clap_builder.exit56.i

_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE15append_elementsCsfu0rQaTkGUu_12clap_builder.exit56.i: ; preds = %bb.y, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCsfu0rQaTkGUu_12clap_builder.exit.i54.i
  %i.dz = phi ptr [ %i.dx, %bb.y ], [ %i.dn, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCsfu0rQaTkGUu_12clap_builder.exit.i54.i ]
  %i.ea = phi i64 [ %i.dw, %bb.y ], [ %i.dp, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCsfu0rQaTkGUu_12clap_builder.exit.i54.i ]
  %i.eb = add i64 %i.ea, %.sroa.9.0.i             ; 3 uses
  store i64 %i.eb, ptr %.sroa.512.0..sroa_idx.i, align 8, !alias.scope !5429, !noalias !5411
  %i.ec = icmp eq i64 %.sroa.068.0.i, 0
  br i1 %i.ec, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECsfu0rQaTkGUu_12clap_builder.exit.i, label %bb.z

bb.z:                                             ; preds = %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE15append_elementsCsfu0rQaTkGUu_12clap_builder.exit56.i
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.770.0.i, i64 noundef %.sroa.068.0.i, i64 noundef range(i64 1, -9223372036854775807) 1) #43, !noalias !5424
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECsfu0rQaTkGUu_12clap_builder.exit.i

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECsfu0rQaTkGUu_12clap_builder.exit.i: ; preds = %bb.z, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE15append_elementsCsfu0rQaTkGUu_12clap_builder.exit56.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !5411
  %i.ed = icmp eq ptr %i.cx, %i.ck
  br i1 %i.ed, label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3str3StrEENtNtNtB8_6traits8iterator8Iterator4nextB1D_.exit.thread.i, label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3str3StrEENtNtNtB8_6traits8iterator8Iterator4nextB1D_.exit.i, !llvm.loop !5403

bb.aa:                                            ; preds = %.split33.i, %.split.i
  %.sroa.9.0.i = phi i64 [ %.sroa.9.0.copyload74.i, %.split33.i ], [ %.sroa.9.0.copyload.i, %.split.i ] ; 5 uses
  %.sroa.770.0.i = phi ptr [ %.sroa.770.0.copyload72.i, %.split33.i ], [ %.sroa.770.0.copyload.i, %.split.i ] ; 3 uses
  %.sroa.068.0.i = phi i64 [ %.sroa.068.0.copyload69.i, %.split33.i ], [ %.sroa.068.0.copyload.i, %.split.i ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !5428)
  %i.ee = icmp sgt i64 %i.cw, -1
  call void @llvm.assume(i1 %i.ee)
  %i.ef = load i64, ptr %i.f, align 8, !range !12, !alias.scope !5432, !noalias !5411, !noundef !11
  %i.eg = icmp eq i64 %i.ef, %i.cw
  br i1 %i.eg, label %bb.ab, label %bb.x, !prof !19

bb.ab:                                            ; preds = %bb.aa
  call fastcc void @_RINvNvMs2_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsfu0rQaTkGUu_12clap_builder(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f, i64 noundef %i.cw, i64 noundef 1, i64 noundef 1, i64 noundef 1) #43, !noalias !5411
  %.pre104.i = load ptr, ptr %.sroa.411.0..sroa_idx.i, align 8, !alias.scope !5428, !noalias !5411
  br label %bb.x

_RNvMs3_NtNtCsfu0rQaTkGUu_12clap_builder7builder3argNtB5_3Arg14render_arg_val.exit: ; preds = %bb.s, %bb.t, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE15append_elementsCsfu0rQaTkGUu_12clap_builder.exit.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.j, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false), !noalias !5410
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.8.1.i, i64 noundef %.idx.i.pre-phi, i64 noundef range(i64 1, -9223372036854775807) 8) #43, !noalias !5433
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !5411
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  store ptr %i.o, ptr %i.i, align 8
  %.sroa.440.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr @_RNvXs1i_NtCsj6eKBz9Db1c_4core3fmtRNtNtCscy4Zx2DW6cp_7anstyle5style5StyleNtB6_7Display3fmtCsfu0rQaTkGUu_12clap_builder, ptr %.sroa.440.0..sroa_idx, align 8
  %i.eh = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  store ptr %i.j, ptr %i.eh, align 8
  %.sroa.444.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  store ptr @_RNvXsq_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core3fmt7Display3fmt, ptr %.sroa.444.0..sroa_idx, align 8
  %i.ei = call noundef zeroext i1 @_RNvNtCsj6eKBz9Db1c_4core3fmt5write(ptr noundef nonnull %i.n, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @101, ptr noundef nonnull @75, ptr noundef nonnull %i.i) #43 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.experimental.noalias.scope.decl(metadata !5434)
  %.val.i107 = load i64, ptr %i.j, align 8, !range !12, !alias.scope !5434, !noundef !11 ; 2 uses
  %i.ej = icmp eq i64 %.val.i107, 0
  br i1 %i.ej, label %bb.ag, label %bb.ac

bb.ac:                                            ; preds = %_RNvMs3_NtNtCsfu0rQaTkGUu_12clap_builder7builder3argNtB5_3Arg14render_arg_val.exit
  %i.ek = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %.val1.i = load ptr, ptr %i.ek, align 8, !alias.scope !5434, !nonnull !11, !noundef !11
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i, i64 noundef %.val.i107, i64 noundef range(i64 1, -9223372036854775807) 1) #43, !noalias !5434
  br label %bb.ag

bb.ad:                                            ; preds = %bb.a
  br i1 %or.cond103, label %.thread, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.el = getelementptr inbounds nuw i8, ptr %1, i64 596
  %i.em = load i8, ptr %i.el, align 4, !range !53, !noundef !11
  %i.en = icmp eq i8 %i.em, 4
  br i1 %i.en, label %bb.af, label %.thread112

bb.af:                                            ; preds = %bb.ae
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  store ptr %i.o, ptr %i.h, align 8
  %.sroa.461.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr @_RNvXs1i_NtCsj6eKBz9Db1c_4core3fmtRNtNtCscy4Zx2DW6cp_7anstyle5style5StyleNtB6_7Display3fmtCsfu0rQaTkGUu_12clap_builder, ptr %.sroa.461.0..sroa_idx, align 8
  %i.eo = call noundef zeroext i1 @_RNvNtCsj6eKBz9Db1c_4core3fmt5write(ptr noundef nonnull %i.n, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @101, ptr noundef nonnull @197, ptr noundef nonnull %i.h) #43 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br label %.thread112

bb.ag:                                            ; preds = %bb.ac, %_RNvMs3_NtNtCsfu0rQaTkGUu_12clap_builder7builder3argNtB5_3Arg14render_arg_val.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  br i1 %.sroa.03.0110, label %bb.ah, label %.thread112

.thread112:                                       ; preds = %bb.ae, %bb.af, %bb.ah, %bb.ag
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.n, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  ret void

bb.ah:                                            ; preds = %bb.ag
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  store ptr %i.o, ptr %i.g, align 8
  %.sroa.477.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr @_RNvXs1i_NtCsj6eKBz9Db1c_4core3fmtRNtNtCscy4Zx2DW6cp_7anstyle5style5StyleNtB6_7Display3fmtCsfu0rQaTkGUu_12clap_builder, ptr %.sroa.477.0..sroa_idx, align 8
  %i.ep = call noundef zeroext i1 @_RNvNtCsj6eKBz9Db1c_4core3fmt5write(ptr noundef nonnull %i.n, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @101, ptr noundef nonnull @198, ptr noundef nonnull %i.g) #43 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %.thread112
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @_RNvMs3_NtNtCsfu0rQaTkGUu_12clap_builder7builder3argNtB5_3Arg8stylized(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(600) %1, ptr noalias nofree noundef nonnull readonly align 2 captures(address, read_provenance) dereferenceable(126) %2, i8 noundef range(i8 0, 3) %3) unnamed_addr #1 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [32 x i8], align 8                ; 7 uses
  %i.c = alloca [4 x i8], align 4                 ; 4 uses
  %i.d = alloca [32 x i8], align 8                ; 7 uses
  %i.e = alloca [16 x i8], align 8                ; 5 uses
  %i.f = alloca [24 x i8], align 8                ; 10 uses
  %i.g = alloca [8 x i8], align 8                 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 42
end_hunk_1
