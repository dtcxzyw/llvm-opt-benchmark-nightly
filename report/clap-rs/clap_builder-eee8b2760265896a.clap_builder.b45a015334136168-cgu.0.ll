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
  %.sink312.a = phi i64 [ %i.w, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCsfu0rQaTkGUu_12clap_builder.exit.thread.i.i ], [ %i.t, %bb.b ] ; 3 uses
  %i.x = icmp sgt i64 %.sink312.a, -1
  call void @llvm.assume(i1 %i.x)
  %i.y = getelementptr inbounds nuw i8, ptr %i.r, i64 8 ; 3 uses
  %i.z = load ptr, ptr %i.y, align 8, !alias.scope !4062, !noalias !4061, !nonnull !11, !noundef !11
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 %.sink312.a
  store i8 10, ptr %i.aa, align 1, !noalias !4062
  %i.ab = add nuw i64 %.sink312.a, 1              ; 4 uses
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
  %.sink313.a = phi i64 [ %i.af, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCsfu0rQaTkGUu_12clap_builder.exit.thread.i.i149 ], [ %i.ab, %_RNvMNtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_strNtB2_9StyledStr8push_str.exit ] ; 3 uses
  %i.ag = icmp sgt i64 %.sink313.a, -1
  call void @llvm.assume(i1 %i.ag)
  %i.ah = load ptr, ptr %i.y, align 8, !alias.scope !4067, !noalias !4066, !nonnull !11, !noundef !11
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 %.sink313.a
  store i16 8224, ptr %i.ai, align 1, !noalias !4067
  %i.aj = add nuw i64 %.sink313.a, 2              ; 4 uses
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
  %.sink314.a = phi i64 [ %i.an, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCsfu0rQaTkGUu_12clap_builder.exit.thread.i.i152 ], [ %i.aj, %_RNvMNtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_strNtB2_9StyledStr8push_str.exit150 ] ; 3 uses
  %i.ao = icmp sgt i64 %.sink314.a, -1
  call void @llvm.assume(i1 %i.ao)
  %i.ap = load ptr, ptr %i.y, align 8, !alias.scope !4072, !noalias !4071, !nonnull !11, !noundef !11
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 %.sink314.a
  store i64 2314885530818453536, ptr %i.aq, align 1, !noalias !4072
  %i.ar = add nuw i64 %.sink314.a, 8
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
  %i.bn = icmp eq i64 %4, 0
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
  %.not274 = icmp eq ptr %1, null
  br i1 %.not274, label %bb.n, label %bb.m

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
  %.sink315.a = phi i64 [ %i.cq, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCsfu0rQaTkGUu_12clap_builder.exit.thread.i.i162 ], [ %i.cn, %bb.l ] ; 3 uses
  %i.cr = icmp sgt i64 %.sink315.a, -1
  call void @llvm.assume(i1 %i.cr)
  %i.cs = load ptr, ptr %i.bg, align 8, !alias.scope !4091, !noalias !4088, !nonnull !11, !noundef !11
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 %.sink315.a
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ct, ptr nonnull readonly align 1 %3, i64 %4, i1 false), !noalias !4091
  %i.cu = add i64 %.sink315.a, %4                 ; 3 uses
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
  %.not = icmp ne i64 %4, 0
  %or.cond9 = and i1 %.not, %.sroa.015.0
  br i1 %or.cond9, label %bb.be, label %.thread

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
  %.pre275 = load i64, ptr %.phi.trans.insert, align 8 ; 3 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.dq = icmp ult i64 %.pre275, 128102389400760776
  call void @llvm.assume(i1 %i.dq)
  %i.dr = icmp eq i64 %.pre275, 0
  br i1 %i.dr, label %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder7builder14possible_value13PossibleValueENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBL_.exit.i, label %.lr.ph

.lr.ph:                                           ; preds = %_RNvMs2_NtNtCsfu0rQaTkGUu_12clap_builder7builder3argNtB5_3Arg19get_possible_values.exit
  %i.ds = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.dt = load ptr, ptr %i.ds, align 8, !nonnull !11, !noundef !11 ; 5 uses
  %.idx = mul nuw nsw i64 %.pre275, 72
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
  %.sink316 = phi i64 [ %i.fi, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCsfu0rQaTkGUu_12clap_builder.exit.thread.i.i184 ], [ %i.fe, %bb.af ] ; 3 uses
  %i.fj = icmp sgt i64 %.sink316, -1
  call void @llvm.assume(i1 %i.fj)
  %i.fk = getelementptr inbounds nuw i8, ptr %i.bp, i64 8 ; 2 uses
  %i.fl = load ptr, ptr %i.fk, align 8, !alias.scope !4107, !noalias !4106, !nonnull !11, !noundef !11
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fl, i64 %.sink316
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.fm, ptr noundef nonnull readonly align 1 dereferenceable(16) @176, i64 16, i1 false), !noalias !4107
  %i.fn = add nuw i64 %.sink316, 16
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
  br i1 %.not139, label %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterNtNtNtCsfu0rQaTkGUu_12clap_builder7builder14possible_value13PossibleValueENtNtNtNtBb_4iter6traits8iterator8Iterator4findQNCNvMs1_NtNtBW_6output13help_templateNtB2V_12HelpTemplate4helps0_0EBW_.exit._crit_edge, label %bb.au

_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterNtNtNtCsfu0rQaTkGUu_12clap_builder7builder14possible_value13PossibleValueENtNtNtNtBb_4iter6traits8iterator8Iterator4findQNCNvMs1_NtNtBW_6output13help_templateNtB2V_12HelpTemplate4helps0_0EBW_.exit._crit_edge: ; preds = %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterNtNtNtCsfu0rQaTkGUu_12clap_builder7builder14possible_value13PossibleValueENtNtNtNtBb_4iter6traits8iterator8Iterator4findQNCNvMs1_NtNtBW_6output13help_templateNtB2V_12HelpTemplate4helps0_0EBW_.exit
  %.pre276 = load i64, ptr %.sroa.554.0..sroa_idx, align 8, !alias.scope !4109
  br label %bb.av

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
  %.not277 = icmp ne i64 %4, 0
  %or.cond3 = and i1 %.not277, %.sroa.015.0
  br i1 %or.cond3, label %bb.aq, label %.thread

.thread:                                          ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_str9StyledStrEBH_.exit218, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCsfu0rQaTkGUu_12clap_builder7builder14possible_value13PossibleValueEEB1e_.exit200, %bb.n
  call void @llvm.experimental.noalias.scope.decl(metadata !4123)
  call void @llvm.experimental.noalias.scope.decl(metadata !4124)
  %.val.i.i201 = load i64, ptr %i.k, align 8, !range !12, !alias.scope !4125, !noundef !11 ; 2 uses
  %i.gy = icmp eq i64 %.val.i.i201, 0
  br i1 %i.gy, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_str9StyledStrEBH_.exit, label %bb.ao

bb.ao:                                            ; preds = %.thread
  %.val1.i.i = load ptr, ptr %i.bg, align 8, !alias.scope !4125, !nonnull !11, !noundef !11
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i, i64 noundef %.val.i.i201, i64 noundef range(i64 1, -9223372036854775807) 1) #43, !noalias !4125
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_str9StyledStrEBH_.exit

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_str9StyledStrEBH_.exit: ; preds = %.thread, %bb.ao
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  br i1 %i.bb, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECsfu0rQaTkGUu_12clap_builder.exit204, label %bb.ap

bb.ap:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_str9StyledStrEBH_.exit
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sink7.i.i, i64 noundef %.sroa.012.0240, i64 noundef range(i64 1, -9223372036854775807) 1) #43, !noalias !4126
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECsfu0rQaTkGUu_12clap_builder.exit204

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECsfu0rQaTkGUu_12clap_builder.exit204: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_str9StyledStrEBH_.exit, %bb.ap
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  ret void

bb.aq:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCsfu0rQaTkGUu_12clap_builder7builder14possible_value13PossibleValueEEB1e_.exit200
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i64 0, ptr %i.c, align 8
  %.sroa.8128.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.8128.0..sroa_idx, align 8
  %.sroa.10131.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 0, ptr %.sroa.10131.0..sroa_idx, align 8
  br label %_RNvMNtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_strNtB2_9StyledStr8push_str.exit207

_RNvMNtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_strNtB2_9StyledStr8push_str.exit207: ; preds = %bb.aq, %bb.be
  call void @llvm.experimental.noalias.scope.decl(metadata !4127)
  call void @llvm.experimental.noalias.scope.decl(metadata !4128)
  %i.gz = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  call fastcc void @_RINvNvMs2_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsfu0rQaTkGUu_12clap_builder(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c, i64 noundef 0, i64 noundef 2, i64 noundef 1, i64 noundef 1) #43, !noalias !4129
  %i.ha = load i64, ptr %i.gz, align 8, !alias.scope !4130, !noalias !4129, !noundef !11 ; 3 uses
  %i.hb = icmp sgt i64 %i.ha, -1
  call void @llvm.assume(i1 %i.hb)
  %.pre279.pre = load i64, ptr %i.c, align 8, !range !12, !alias.scope !4131, !noalias !4132
  %.phi.trans.insert277 = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.pre278 = load ptr, ptr %.phi.trans.insert277, align 8, !alias.scope !4130, !noalias !4129 ; 2 uses
  %i.hc = getelementptr inbounds nuw i8, ptr %.pre278, i64 %i.ha
  store i16 2570, ptr %i.hc, align 1, !noalias !4130
  %i.hd = add nuw i64 %i.ha, 2                    ; 2 uses
  store i64 %i.hd, ptr %i.gz, align 8, !alias.scope !4130, !noalias !4129
  br label %bb.ar

bb.ar:                                            ; preds = %bb.be, %_RNvMNtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_strNtB2_9StyledStr8push_str.exit207
  %i.he = phi ptr [ inttoptr (i64 1 to ptr), %bb.be ], [ %.pre278, %_RNvMNtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_strNtB2_9StyledStr8push_str.exit207 ]
  %i.hf = phi i64 [ 0, %bb.be ], [ %.pre279.pre, %_RNvMNtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_strNtB2_9StyledStr8push_str.exit207 ]
  %i.hg = phi i64 [ 0, %bb.be ], [ %i.hd, %_RNvMNtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_strNtB2_9StyledStr8push_str.exit207 ] ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !4133)
  call void @llvm.experimental.noalias.scope.decl(metadata !4134)
  %i.hh = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 3 uses
  %i.hi = sub i64 %i.hf, %i.hg
  %i.hj = icmp ugt i64 %4, %i.hi
  br i1 %i.hj, label %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCsfu0rQaTkGUu_12clap_builder.exit.thread.i.i210, label %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCsfu0rQaTkGUu_12clap_builder.exit.i.i208, !prof !19

_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCsfu0rQaTkGUu_12clap_builder.exit.thread.i.i210: ; preds = %bb.ar
  call fastcc void @_RINvNvMs2_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsfu0rQaTkGUu_12clap_builder(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c, i64 noundef %i.hg, i64 noundef %4, i64 noundef 1, i64 noundef 1) #43, !noalias !4132
  %i.hk = load i64, ptr %i.hh, align 8, !alias.scope !4135, !noalias !4132, !noundef !11 ; 2 uses
  %i.hl = icmp sgt i64 %i.hk, -1
  call void @llvm.assume(i1 %i.hl)
  %.phi.trans.insert280 = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.pre281 = load ptr, ptr %.phi.trans.insert280, align 8, !alias.scope !4135, !noalias !4132
  br label %_RNvMNtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_strNtB2_9StyledStr8push_str.exit211

_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCsfu0rQaTkGUu_12clap_builder.exit.i.i208: ; preds = %bb.ar
  %i.hm = icmp sgt i64 %i.hg, -1
  call void @llvm.assume(i1 %i.hm)
  br label %_RNvMNtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_strNtB2_9StyledStr8push_str.exit211

_RNvMNtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_strNtB2_9StyledStr8push_str.exit211: ; preds = %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCsfu0rQaTkGUu_12clap_builder.exit.thread.i.i210, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCsfu0rQaTkGUu_12clap_builder.exit.i.i208
  %i.hn = phi ptr [ %.pre281, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCsfu0rQaTkGUu_12clap_builder.exit.thread.i.i210 ], [ %i.he, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCsfu0rQaTkGUu_12clap_builder.exit.i.i208 ]
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
  br label %bb.as

_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCsfu0rQaTkGUu_12clap_builder.exit.i.i212: ; preds = %_RNvMNtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_strNtB2_9StyledStr8push_str.exit211
  %i.hy = icmp sgt i64 %i.hs, -1
  call void @llvm.assume(i1 %i.hy)
  %.not.i.i213 = icmp eq i64 %.val144, 0
  br i1 %.not.i.i213, label %_RNvMNtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_strNtB2_9StyledStr11push_styled.exit215, label %bb.as

bb.as:                                            ; preds = %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCsfu0rQaTkGUu_12clap_builder.exit.i.i212, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCsfu0rQaTkGUu_12clap_builder.exit.thread.i.i214
  %i.hz = phi i64 [ %i.hw, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCsfu0rQaTkGUu_12clap_builder.exit.thread.i.i214 ], [ %i.hs, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCsfu0rQaTkGUu_12clap_builder.exit.i.i212 ] ; 2 uses
  %i.ia = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  %i.ib = load ptr, ptr %i.ia, align 8, !alias.scope !4139, !nonnull !11, !noundef !11
  %i.ic = getelementptr inbounds nuw i8, ptr %i.ib, i64 %i.hz
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ic, ptr nonnull readonly align 1 %.val143, i64 %.val144, i1 false), !noalias !4139
  br label %_RNvMNtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_strNtB2_9StyledStr11push_styled.exit215

_RNvMNtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_strNtB2_9StyledStr11push_styled.exit215: ; preds = %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCsfu0rQaTkGUu_12clap_builder.exit.i.i212, %bb.as
  %i.id = phi i64 [ %i.hz, %bb.as ], [ %i.hs, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCsfu0rQaTkGUu_12clap_builder.exit.i.i212 ]
  %i.ie = add i64 %i.id, %.val144
  store i64 %i.ie, ptr %i.bq, align 8, !alias.scope !4139
  call void @llvm.experimental.noalias.scope.decl(metadata !4140)
  call void @llvm.experimental.noalias.scope.decl(metadata !4141)
  %.val.i.i216 = load i64, ptr %i.c, align 8, !range !12, !alias.scope !4142, !noundef !11 ; 2 uses
  %i.if = icmp eq i64 %.val.i.i216, 0
  br i1 %i.if, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_str9StyledStrEBH_.exit218, label %bb.at

bb.at:                                            ; preds = %_RNvMNtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_strNtB2_9StyledStr11push_styled.exit215
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val143, i64 noundef %.val.i.i216, i64 noundef range(i64 1, -9223372036854775807) 1) #43, !noalias !4142
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_str9StyledStrEBH_.exit218

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_str9StyledStrEBH_.exit218: ; preds = %_RNvMNtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_strNtB2_9StyledStr11push_styled.exit215, %bb.at
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %.thread

bb.au:                                            ; preds = %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterNtNtNtCsfu0rQaTkGUu_12clap_builder7builder14possible_value13PossibleValueENtNtNtNtBb_4iter6traits8iterator8Iterator4findQNCNvMs1_NtNtBW_6output13help_templateNtB2V_12HelpTemplate4helps0_0EBW_.exit
  %i.ig = load ptr, ptr %i.h, align 8, !nonnull !11, !noundef !11
  %i.ih = load i64, ptr %i.fo, align 8, !noundef !11
  %i.ii = call fastcc noundef i64 @_RNvNtNtNtCsfu0rQaTkGUu_12clap_builder6output8textwrap4core13display_width(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ig, i64 noundef %i.ih) #42
  %i.ij = sub i64 %.sroa.3.0.i.ph, %i.ii          ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.ik = icmp ugt i64 %i.ij, 65535
  br i1 %i.ik, label %bb.az, label %bb.ax, !prof !19

bb.av:                                            ; preds = %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterNtNtNtCsfu0rQaTkGUu_12clap_builder7builder14possible_value13PossibleValueENtNtNtNtBb_4iter6traits8iterator8Iterator4findQNCNvMs1_NtNtBW_6output13help_templateNtB2V_12HelpTemplate4helps0_0EBW_.exit._crit_edge, %_RNvMNtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_strNtB2_9StyledStr11push_styled.exit224
  %i.il = phi i64 [ %.pre276, %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterNtNtNtCsfu0rQaTkGUu_12clap_builder7builder14possible_value13PossibleValueENtNtNtNtBb_4iter6traits8iterator8Iterator4findQNCNvMs1_NtNtBW_6output13help_templateNtB2V_12HelpTemplate4helps0_0EBW_.exit._crit_edge ], [ %i.jd, %_RNvMNtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_strNtB2_9StyledStr11push_styled.exit224 ]
  call void @llvm.experimental.noalias.scope.decl(metadata !4109)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !4109
  %i.im = load ptr, ptr %.sroa.453.0..sroa_idx, align 8, !alias.scope !4109, !nonnull !11, !noundef !11 ; 2 uses
  call fastcc void @_RINvMs3_NtCs4wP2HXfJTCR_5alloc3stre7replaceReECsfu0rQaTkGUu_12clap_builder(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.im, i64 noundef %i.il) #45
  call void @llvm.experimental.noalias.scope.decl(metadata !4143)
  %.val.i.i219 = load i64, ptr %i.g, align 8, !range !12, !alias.scope !4144, !noundef !11 ; 2 uses
  %i.in = icmp eq i64 %.val.i.i219, 0
  br i1 %i.in, label %_RNvMNtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_strNtB2_9StyledStr19replace_newline_var.exit220, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %i.im, i64 noundef %.val.i.i219, i64 noundef range(i64 1, -9223372036854775807) 1) #43, !noalias !4144
  br label %_RNvMNtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_strNtB2_9StyledStr19replace_newline_var.exit220

_RNvMNtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_strNtB2_9StyledStr19replace_newline_var.exit220: ; preds = %bb.av, %bb.aw
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.g, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !4109
  call fastcc void @_RNvMNtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_strNtB2_9StyledStr6indent(ptr noalias nofree noundef align 8 dereferenceable(24) %i.g, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ew, i64 noundef %i.ev) #43
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  br i1 %i.fr, label %bb.bd, label %bb.ba, !prof !19

bb.ax:                                            ; preds = %bb.au
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

_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCsfu0rQaTkGUu_12clap_builder.exit.thread.i.i223: ; preds = %bb.ax
  call fastcc void @_RINvNvMs2_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsfu0rQaTkGUu_12clap_builder(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g, i64 noundef %i.is, i64 noundef %.val142, i64 noundef 1, i64 noundef 1) #43
  %i.iw = load i64, ptr %.sroa.554.0..sroa_idx, align 8, !alias.scope !4148, !noundef !11 ; 2 uses
  %i.ix = icmp sgt i64 %i.iw, -1
  call void @llvm.assume(i1 %i.ix)
  br label %bb.ay

_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCsfu0rQaTkGUu_12clap_builder.exit.i.i221: ; preds = %bb.ax
  %i.iy = icmp sgt i64 %i.is, -1
  call void @llvm.assume(i1 %i.iy)
  %.not.i.i222 = icmp eq i64 %.val142, 0
  br i1 %.not.i.i222, label %_RNvMNtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_strNtB2_9StyledStr11push_styled.exit224, label %bb.ay

bb.ay:                                            ; preds = %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCsfu0rQaTkGUu_12clap_builder.exit.i.i221, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCsfu0rQaTkGUu_12clap_builder.exit.thread.i.i223
  %i.iz = phi i64 [ %i.iw, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCsfu0rQaTkGUu_12clap_builder.exit.thread.i.i223 ], [ %i.is, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCsfu0rQaTkGUu_12clap_builder.exit.i.i221 ] ; 2 uses
  %i.ja = load ptr, ptr %.sroa.453.0..sroa_idx, align 8, !alias.scope !4148, !nonnull !11, !noundef !11
  %i.jb = getelementptr inbounds nuw i8, ptr %i.ja, i64 %i.iz
end_hunk_0
