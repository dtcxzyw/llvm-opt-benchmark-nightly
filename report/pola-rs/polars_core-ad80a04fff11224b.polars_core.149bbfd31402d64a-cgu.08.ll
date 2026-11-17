Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pola-rs/original/polars_core-ad80a04fff11224b.polars_core.149bbfd31402d64a-cgu.08?download=true
inline.NumInlined: 15609
inline.NumDeleted: 6028
loop-unroll.NumCompletelyUnrolled: 729
loop-unroll.NumRuntimeUnrolled: 109
loop-unroll.NumUnrolled: 842
begin_hunk_0_@_RINvNtNtCslFlrwjHoTci_14polars_compute12if_then_else6scalar24if_then_else_scalar_restsECs1LHh8CLbVkQ_11polars_core:bb.a
  %i.w = load i64, ptr %i.e, align 8, !dbg !94117, !alias.scope !94108, !noundef !5305 ; 2 uses
  %i.x = load i64, ptr %i.f, align 8, !dbg !94118, !alias.scope !94108, !noundef !5305
  %i.y = icmp ult i64 %i.w, %i.x, !dbg !94117
  br i1 %i.y, label %bb.d, label %_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4ItersEEB1n_EENtNtNtB8_6traits8iterator8Iterator4nextCs1LHh8CLbVkQ_11polars_core.exit, !dbg !94117

bb.f:                                             ; preds = %bb.d
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %i.o, i64 noundef %2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @109) #41, !dbg !94124
  unreachable, !dbg !94124
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCslFlrwjHoTci_14polars_compute12if_then_else6scalar24if_then_else_scalar_resttECs1LHh8CLbVkQ_11polars_core(i64 noundef %0, ptr noalias noundef nonnull readonly align 2 captures(address, read_provenance) %1, i64 noundef range(i64 0, 4611686018427387904) %2, ptr noalias noundef nonnull readonly align 2 captures(address, read_provenance) %3, i64 noundef range(i64 0, 4611686018427387904) %4, ptr noalias nofree noundef nonnull writeonly align 2 captures(none) %5, i64 noundef range(i64 0, 4611686018427387904) %6) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !2833 !guid !94140 {
bb.a:
  %i.a = alloca [56 x i8], align 8                ; 8 uses
  %i.b = icmp eq i64 %2, %6, !dbg !94150
  br i1 %i.b, label %bb.c, label %bb.b, !dbg !94150, !prof !5351

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @106, i64 noundef 44, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @108) #41, !dbg !94151
  unreachable, !dbg !94151

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %2, !dbg !94152
  %i.d = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %4, !dbg !94153
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !94154
  call void @_RNvXs3_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB5_3ZipINtNtB7_6copied6CopiedINtNtNtBb_5slice4iter4ItertEEBW_EINtB5_7ZipImplBW_BW_E3newCs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.a, ptr noundef nonnull %1, ptr noundef nonnull %i.c, ptr noundef nonnull %3, ptr noundef nonnull %i.d), !dbg !94155
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 48, !dbg !94154 ; 3 uses
  store i64 0, ptr %.sroa.2.0..sroa_idx, align 8, !dbg !94154
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 40 ; 2 uses
  %i.g = load i64, ptr %i.e, align 8, !dbg !94156, !alias.scope !94147, !noundef !5305 ; 2 uses
  %i.h = load i64, ptr %i.f, align 8, !dbg !94157, !alias.scope !94147, !noundef !5305
  %i.i = icmp ult i64 %i.g, %i.h, !dbg !94156
  br i1 %i.i, label %.lr.ph, label %_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4ItertEEB1n_EENtNtNtB8_6traits8iterator8Iterator4nextCs1LHh8CLbVkQ_11polars_core.exit, !dbg !94156

.lr.ph:                                           ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  br label %bb.d, !dbg !94156

bb.d:                                             ; preds = %.lr.ph, %bb.e
  %i.k = phi i64 [ %i.g, %.lr.ph ], [ %i.w, %bb.e ] ; 3 uses
  %i.l = add nuw i64 %i.k, 1, !dbg !94158
  store i64 %i.l, ptr %i.e, align 8, !dbg !94158, !alias.scope !94147
  %i.m = call noundef i16 @_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters6copiedINtB4_6CopiedINtNtNtBa_5slice4iter4ItertEENtNtNtB8_6traits8iterator8Iterator24___iterator_get_uncheckedCs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.a, i64 noundef %i.k), !dbg !94159, !noalias !94148
  %i.n = call noundef i16 @_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters6copiedINtB4_6CopiedINtNtNtBa_5slice4iter4ItertEENtNtNtB8_6traits8iterator8Iterator24___iterator_get_uncheckedCs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.j, i64 noundef %i.k), !dbg !94160, !noalias !94148
  %i.o = load i64, ptr %.sroa.2.0..sroa_idx, align 8, !dbg !94161, !alias.scope !94149, !noundef !5305 ; 5 uses
  %i.p = add i64 %i.o, 1, !dbg !94162
  store i64 %i.p, ptr %.sroa.2.0..sroa_idx, align 8, !dbg !94162, !alias.scope !94149
  %i.q = icmp ult i64 %i.o, %2, !dbg !94163
  br i1 %i.q, label %bb.e, label %bb.f, !dbg !94163

_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4ItertEEB1n_EENtNtNtB8_6traits8iterator8Iterator4nextCs1LHh8CLbVkQ_11polars_core.exit: ; preds = %bb.e, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !94164
  ret void, !dbg !94165

bb.e:                                             ; preds = %bb.d
  %i.r = and i64 %i.o, 63, !dbg !94166
  %i.s = shl nuw i64 1, %i.r, !dbg !94166
  %i.t = and i64 %i.s, %0, !dbg !94166
  %i.u = icmp eq i64 %i.t, 0, !dbg !94166
  %.sroa.01.0 = select i1 %i.u, i16 %i.n, i16 %i.m, !dbg !94166
  %i.v = getelementptr inbounds nuw [2 x i8], ptr %5, i64 %i.o, !dbg !94163
  store i16 %.sroa.01.0, ptr %i.v, align 2, !dbg !94163
  %i.w = load i64, ptr %i.e, align 8, !dbg !94156, !alias.scope !94147, !noundef !5305 ; 2 uses
  %i.x = load i64, ptr %i.f, align 8, !dbg !94157, !alias.scope !94147, !noundef !5305
  %i.y = icmp ult i64 %i.w, %i.x, !dbg !94156
  br i1 %i.y, label %bb.d, label %_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4ItertEEB1n_EENtNtNtB8_6traits8iterator8Iterator4nextCs1LHh8CLbVkQ_11polars_core.exit, !dbg !94156

bb.f:                                             ; preds = %bb.d
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %i.o, i64 noundef %2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @109) #41, !dbg !94163
  unreachable, !dbg !94163
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCslFlrwjHoTci_14polars_compute12if_then_else6scalar24if_then_else_scalar_restxECs1LHh8CLbVkQ_11polars_core(i64 noundef %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %1, i64 noundef range(i64 0, 1152921504606846976) %2, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %3, i64 noundef range(i64 0, 1152921504606846976) %4, ptr noalias nofree noundef nonnull writeonly align 8 captures(none) %5, i64 noundef range(i64 0, 1152921504606846976) %6) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !2854 !guid !94181 {
bb.a:
  %i.a = alloca [56 x i8], align 8                ; 8 uses
  %i.b = icmp eq i64 %2, %6, !dbg !94191
  br i1 %i.b, label %bb.c, label %bb.b, !dbg !94191, !prof !5351

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @106, i64 noundef 44, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @108) #41, !dbg !94192
  unreachable, !dbg !94192

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %2, !dbg !94193
  %i.d = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %4, !dbg !94194
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !94195
  call void @_RNvXs3_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB5_3ZipINtNtB7_6copied6CopiedINtNtNtBb_5slice4iter4IterxEEBW_EINtB5_7ZipImplBW_BW_E3newCs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.a, ptr noundef nonnull %1, ptr noundef nonnull %i.c, ptr noundef nonnull %3, ptr noundef nonnull %i.d), !dbg !94196
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 48, !dbg !94195 ; 3 uses
  store i64 0, ptr %.sroa.2.0..sroa_idx, align 8, !dbg !94195
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 40 ; 2 uses
  %i.g = load i64, ptr %i.e, align 8, !dbg !94197, !alias.scope !94188, !noundef !5305 ; 2 uses
  %i.h = load i64, ptr %i.f, align 8, !dbg !94198, !alias.scope !94188, !noundef !5305
  %i.i = icmp ult i64 %i.g, %i.h, !dbg !94197
  br i1 %i.i, label %.lr.ph, label %_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IterxEEB1n_EENtNtNtB8_6traits8iterator8Iterator4nextCs1LHh8CLbVkQ_11polars_core.exit, !dbg !94197

.lr.ph:                                           ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  br label %bb.d, !dbg !94197

bb.d:                                             ; preds = %.lr.ph, %bb.e
  %i.k = phi i64 [ %i.g, %.lr.ph ], [ %i.w, %bb.e ] ; 3 uses
  %i.l = add nuw i64 %i.k, 1, !dbg !94199
  store i64 %i.l, ptr %i.e, align 8, !dbg !94199, !alias.scope !94188
  %i.m = call noundef i64 @_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters6copiedINtB4_6CopiedINtNtNtBa_5slice4iter4IterxEENtNtNtB8_6traits8iterator8Iterator24___iterator_get_uncheckedCs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.a, i64 noundef %i.k), !dbg !94200, !noalias !94189
  %i.n = call noundef i64 @_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters6copiedINtB4_6CopiedINtNtNtBa_5slice4iter4IterxEENtNtNtB8_6traits8iterator8Iterator24___iterator_get_uncheckedCs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.j, i64 noundef %i.k), !dbg !94201, !noalias !94189
  %i.o = load i64, ptr %.sroa.2.0..sroa_idx, align 8, !dbg !94202, !alias.scope !94190, !noundef !5305 ; 5 uses
  %i.p = add i64 %i.o, 1, !dbg !94203
  store i64 %i.p, ptr %.sroa.2.0..sroa_idx, align 8, !dbg !94203, !alias.scope !94190
  %i.q = icmp ult i64 %i.o, %2, !dbg !94204
  br i1 %i.q, label %bb.e, label %bb.f, !dbg !94204

_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IterxEEB1n_EENtNtNtB8_6traits8iterator8Iterator4nextCs1LHh8CLbVkQ_11polars_core.exit: ; preds = %bb.e, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !94205
  ret void, !dbg !94206

bb.e:                                             ; preds = %bb.d
  %i.r = and i64 %i.o, 63, !dbg !94207
  %i.s = shl nuw i64 1, %i.r, !dbg !94207
  %i.t = and i64 %i.s, %0, !dbg !94207
  %i.u = icmp eq i64 %i.t, 0, !dbg !94207
  %.sroa.01.0 = select i1 %i.u, i64 %i.n, i64 %i.m, !dbg !94207
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %i.o, !dbg !94204
  store i64 %.sroa.01.0, ptr %i.v, align 8, !dbg !94204
  %i.w = load i64, ptr %i.e, align 8, !dbg !94197, !alias.scope !94188, !noundef !5305 ; 2 uses
  %i.x = load i64, ptr %i.f, align 8, !dbg !94198, !alias.scope !94188, !noundef !5305
  %i.y = icmp ult i64 %i.w, %i.x, !dbg !94197
  br i1 %i.y, label %bb.d, label %_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IterxEEB1n_EENtNtNtB8_6traits8iterator8Iterator4nextCs1LHh8CLbVkQ_11polars_core.exit, !dbg !94197

bb.f:                                             ; preds = %bb.d
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %i.o, i64 noundef %2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @109) #41, !dbg !94204
  unreachable, !dbg !94204
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCslFlrwjHoTci_14polars_compute12if_then_else6scalar24if_then_else_scalar_restyECs1LHh8CLbVkQ_11polars_core(i64 noundef %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %1, i64 noundef range(i64 0, 1152921504606846976) %2, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %3, i64 noundef range(i64 0, 1152921504606846976) %4, ptr noalias nofree noundef nonnull writeonly align 8 captures(none) %5, i64 noundef range(i64 0, 1152921504606846976) %6) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !2875 !guid !94222 {
bb.a:
  %i.a = alloca [56 x i8], align 8                ; 8 uses
  %i.b = icmp eq i64 %2, %6, !dbg !94232
  br i1 %i.b, label %bb.c, label %bb.b, !dbg !94232, !prof !5351

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @106, i64 noundef 44, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @108) #41, !dbg !94233
  unreachable, !dbg !94233

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %2, !dbg !94234
  %i.d = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %4, !dbg !94235
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !94236
  call void @_RNvXs3_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB5_3ZipINtNtB7_6copied6CopiedINtNtNtBb_5slice4iter4IteryEEBW_EINtB5_7ZipImplBW_BW_E3newCs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.a, ptr noundef nonnull %1, ptr noundef nonnull %i.c, ptr noundef nonnull %3, ptr noundef nonnull %i.d), !dbg !94237
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 48, !dbg !94236 ; 3 uses
  store i64 0, ptr %.sroa.2.0..sroa_idx, align 8, !dbg !94236
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 40 ; 2 uses
  %i.g = load i64, ptr %i.e, align 8, !dbg !94238, !alias.scope !94229, !noundef !5305 ; 2 uses
  %i.h = load i64, ptr %i.f, align 8, !dbg !94239, !alias.scope !94229, !noundef !5305
  %i.i = icmp ult i64 %i.g, %i.h, !dbg !94238
  br i1 %i.i, label %.lr.ph, label %_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IteryEEB1n_EENtNtNtB8_6traits8iterator8Iterator4nextCs1LHh8CLbVkQ_11polars_core.exit, !dbg !94238

.lr.ph:                                           ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  br label %bb.d, !dbg !94238

bb.d:                                             ; preds = %.lr.ph, %bb.e
  %i.k = phi i64 [ %i.g, %.lr.ph ], [ %i.w, %bb.e ] ; 3 uses
  %i.l = add nuw i64 %i.k, 1, !dbg !94240
  store i64 %i.l, ptr %i.e, align 8, !dbg !94240, !alias.scope !94229
  %i.m = call noundef i64 @_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters6copiedINtB4_6CopiedINtNtNtBa_5slice4iter4IteryEENtNtNtB8_6traits8iterator8Iterator24___iterator_get_uncheckedCs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.a, i64 noundef %i.k), !dbg !94241, !noalias !94230
  %i.n = call noundef i64 @_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters6copiedINtB4_6CopiedINtNtNtBa_5slice4iter4IteryEENtNtNtB8_6traits8iterator8Iterator24___iterator_get_uncheckedCs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.j, i64 noundef %i.k), !dbg !94242, !noalias !94230
  %i.o = load i64, ptr %.sroa.2.0..sroa_idx, align 8, !dbg !94243, !alias.scope !94231, !noundef !5305 ; 5 uses
  %i.p = add i64 %i.o, 1, !dbg !94244
  store i64 %i.p, ptr %.sroa.2.0..sroa_idx, align 8, !dbg !94244, !alias.scope !94231
  %i.q = icmp ult i64 %i.o, %2, !dbg !94245
  br i1 %i.q, label %bb.e, label %bb.f, !dbg !94245

_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IteryEEB1n_EENtNtNtB8_6traits8iterator8Iterator4nextCs1LHh8CLbVkQ_11polars_core.exit: ; preds = %bb.e, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !94246
  ret void, !dbg !94247

bb.e:                                             ; preds = %bb.d
  %i.r = and i64 %i.o, 63, !dbg !94248
  %i.s = shl nuw i64 1, %i.r, !dbg !94248
  %i.t = and i64 %i.s, %0, !dbg !94248
  %i.u = icmp eq i64 %i.t, 0, !dbg !94248
  %.sroa.01.0 = select i1 %i.u, i64 %i.n, i64 %i.m, !dbg !94248
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %i.o, !dbg !94245
  store i64 %.sroa.01.0, ptr %i.v, align 8, !dbg !94245
  %i.w = load i64, ptr %i.e, align 8, !dbg !94238, !alias.scope !94229, !noundef !5305 ; 2 uses
  %i.x = load i64, ptr %i.f, align 8, !dbg !94239, !alias.scope !94229, !noundef !5305
  %i.y = icmp ult i64 %i.w, %i.x, !dbg !94238
  br i1 %i.y, label %bb.d, label %_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IteryEEB1n_EENtNtNtB8_6traits8iterator8Iterator4nextCs1LHh8CLbVkQ_11polars_core.exit, !dbg !94238

bb.f:                                             ; preds = %bb.d
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %i.o, i64 noundef %2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @109) #41, !dbg !94245
  unreachable, !dbg !94245
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(argmem: write) uwtable
define hidden void @_RINvNtNtCslFlrwjHoTci_14polars_compute12if_then_else6scalar37if_then_else_broadcast_both_scalar_64NtNtCs2mZqlW55729_12polars_utils7float164pf16ECs1LHh8CLbVkQ_11polars_core(i64 noundef %0, i16 noundef %1, i16 noundef %2, ptr noalias nofree noundef writeonly align 2 captures(none) dereferenceable(128) %3) unnamed_addr #6 personality ptr @rust_eh_personality !dbg !94249 !guid !94256 {
vector.ph:
  %broadcast.splatinsert3 = insertelement <8 x i16> poison, i16 %1, i64 0
  %broadcast.splat4 = shufflevector <8 x i16> %broadcast.splatinsert3, <8 x i16> poison, <8 x i32> zeroinitializer ; 8 uses
  %broadcast.splatinsert1 = insertelement <8 x i16> poison, i16 %2, i64 0
  %broadcast.splat2 = shufflevector <8 x i16> %broadcast.splatinsert1, <8 x i16> poison, <8 x i32> zeroinitializer ; 8 uses
  %broadcast.splatinsert = insertelement <8 x i64> poison, i64 %0, i64 0
  %broadcast.splat = shufflevector <8 x i64> %broadcast.splatinsert, <8 x i64> poison, <8 x i32> zeroinitializer ; 8 uses
  %i.a = and <8 x i64> %broadcast.splat, <i64 1, i64 2, i64 4, i64 8, i64 16, i64 32, i64 64, i64 128>, !dbg !94258
  %i.b = icmp eq <8 x i64> %i.a, zeroinitializer, !dbg !94258
  %i.c = select <8 x i1> %i.b, <8 x i16> %broadcast.splat2, <8 x i16> %broadcast.splat4, !dbg !94259
  store <8 x i16> %i.c, ptr %3, align 2, !dbg !94260, !alias.scope !94257
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 16, !dbg !94261
  %i.e = and <8 x i64> %broadcast.splat, <i64 256, i64 512, i64 1024, i64 2048, i64 4096, i64 8192, i64 16384, i64 32768>, !dbg !94258
  %i.f = icmp eq <8 x i64> %i.e, zeroinitializer, !dbg !94258
  %i.g = select <8 x i1> %i.f, <8 x i16> %broadcast.splat2, <8 x i16> %broadcast.splat4, !dbg !94259
  store <8 x i16> %i.g, ptr %i.d, align 2, !dbg !94260, !alias.scope !94257
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 32, !dbg !94261
  %i.i = and <8 x i64> %broadcast.splat, <i64 65536, i64 131072, i64 262144, i64 524288, i64 1048576, i64 2097152, i64 4194304, i64 8388608>, !dbg !94258
  %i.j = icmp eq <8 x i64> %i.i, zeroinitializer, !dbg !94258
  %i.k = select <8 x i1> %i.j, <8 x i16> %broadcast.splat2, <8 x i16> %broadcast.splat4, !dbg !94259
  store <8 x i16> %i.k, ptr %i.h, align 2, !dbg !94260, !alias.scope !94257
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 48, !dbg !94261
  %i.m = and <8 x i64> %broadcast.splat, <i64 16777216, i64 33554432, i64 67108864, i64 134217728, i64 268435456, i64 536870912, i64 1073741824, i64 2147483648>, !dbg !94258
  %i.n = icmp eq <8 x i64> %i.m, zeroinitializer, !dbg !94258
  %i.o = select <8 x i1> %i.n, <8 x i16> %broadcast.splat2, <8 x i16> %broadcast.splat4, !dbg !94259
  store <8 x i16> %i.o, ptr %i.l, align 2, !dbg !94260, !alias.scope !94257
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 64, !dbg !94261
  %i.q = and <8 x i64> %broadcast.splat, <i64 4294967296, i64 8589934592, i64 17179869184, i64 34359738368, i64 68719476736, i64 137438953472, i64 274877906944, i64 549755813888>, !dbg !94258
  %i.r = icmp eq <8 x i64> %i.q, zeroinitializer, !dbg !94258
  %i.s = select <8 x i1> %i.r, <8 x i16> %broadcast.splat2, <8 x i16> %broadcast.splat4, !dbg !94259
  store <8 x i16> %i.s, ptr %i.p, align 2, !dbg !94260, !alias.scope !94257
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 80, !dbg !94261
  %i.u = and <8 x i64> %broadcast.splat, <i64 1099511627776, i64 2199023255552, i64 4398046511104, i64 8796093022208, i64 17592186044416, i64 35184372088832, i64 70368744177664, i64 140737488355328>, !dbg !94258
  %i.v = icmp eq <8 x i64> %i.u, zeroinitializer, !dbg !94258
  %i.w = select <8 x i1> %i.v, <8 x i16> %broadcast.splat2, <8 x i16> %broadcast.splat4, !dbg !94259
  store <8 x i16> %i.w, ptr %i.t, align 2, !dbg !94260, !alias.scope !94257
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 96, !dbg !94261
  %i.y = and <8 x i64> %broadcast.splat, <i64 281474976710656, i64 562949953421312, i64 1125899906842624, i64 2251799813685248, i64 4503599627370496, i64 9007199254740992, i64 18014398509481984, i64 36028797018963968>, !dbg !94258
  %i.z = icmp eq <8 x i64> %i.y, zeroinitializer, !dbg !94258
  %i.aa = select <8 x i1> %i.z, <8 x i16> %broadcast.splat2, <8 x i16> %broadcast.splat4, !dbg !94259
  store <8 x i16> %i.aa, ptr %i.x, align 2, !dbg !94260, !alias.scope !94257
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 112, !dbg !94261
  %i.ac = and <8 x i64> %broadcast.splat, <i64 72057594037927936, i64 144115188075855872, i64 288230376151711744, i64 576460752303423488, i64 1152921504606846976, i64 2305843009213693952, i64 4611686018427387904, i64 -9223372036854775808>, !dbg !94258
  %i.ad = icmp eq <8 x i64> %i.ac, zeroinitializer, !dbg !94258
  %i.ae = select <8 x i1> %i.ad, <8 x i16> %broadcast.splat2, <8 x i16> %broadcast.splat4, !dbg !94259
  store <8 x i16> %i.ae, ptr %i.ab, align 2, !dbg !94260, !alias.scope !94257
  ret void, !dbg !94262
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(argmem: write) uwtable
define hidden void @_RINvNtNtCslFlrwjHoTci_14polars_compute12if_then_else6scalar37if_then_else_broadcast_both_scalar_64aECs1LHh8CLbVkQ_11polars_core(i64 noundef %0, i8 noundef %1, i8 noundef %2, ptr noalias nofree noundef writeonly captures(none) dereferenceable(64) %3) unnamed_addr #6 personality ptr @rust_eh_personality !dbg !94263 !guid !94270 {
vector.ph:
  %broadcast.splatinsert3 = insertelement <16 x i8> poison, i8 %1, i64 0
  %broadcast.splat4 = shufflevector <16 x i8> %broadcast.splatinsert3, <16 x i8> poison, <16 x i32> zeroinitializer ; 4 uses
  %broadcast.splatinsert1 = insertelement <16 x i8> poison, i8 %2, i64 0
  %broadcast.splat2 = shufflevector <16 x i8> %broadcast.splatinsert1, <16 x i8> poison, <16 x i32> zeroinitializer ; 4 uses
  %broadcast.splatinsert = insertelement <16 x i64> poison, i64 %0, i64 0
  %broadcast.splat = shufflevector <16 x i64> %broadcast.splatinsert, <16 x i64> poison, <16 x i32> zeroinitializer ; 4 uses
  %i.a = and <16 x i64> %broadcast.splat, <i64 1, i64 2, i64 4, i64 8, i64 16, i64 32, i64 64, i64 128, i64 256, i64 512, i64 1024, i64 2048, i64 4096, i64 8192, i64 16384, i64 32768>, !dbg !94272
  %i.b = icmp eq <16 x i64> %i.a, zeroinitializer, !dbg !94272
  %i.c = select <16 x i1> %i.b, <16 x i8> %broadcast.splat2, <16 x i8> %broadcast.splat4, !dbg !94273
  store <16 x i8> %i.c, ptr %3, align 1, !dbg !94274, !alias.scope !94271
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 16, !dbg !94275
  %i.e = and <16 x i64> %broadcast.splat, <i64 65536, i64 131072, i64 262144, i64 524288, i64 1048576, i64 2097152, i64 4194304, i64 8388608, i64 16777216, i64 33554432, i64 67108864, i64 134217728, i64 268435456, i64 536870912, i64 1073741824, i64 2147483648>, !dbg !94272
  %i.f = icmp eq <16 x i64> %i.e, zeroinitializer, !dbg !94272
  %i.g = select <16 x i1> %i.f, <16 x i8> %broadcast.splat2, <16 x i8> %broadcast.splat4, !dbg !94273
  store <16 x i8> %i.g, ptr %i.d, align 1, !dbg !94274, !alias.scope !94271
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 32, !dbg !94275
  %i.i = and <16 x i64> %broadcast.splat, <i64 4294967296, i64 8589934592, i64 17179869184, i64 34359738368, i64 68719476736, i64 137438953472, i64 274877906944, i64 549755813888, i64 1099511627776, i64 2199023255552, i64 4398046511104, i64 8796093022208, i64 17592186044416, i64 35184372088832, i64 70368744177664, i64 140737488355328>, !dbg !94272
  %i.j = icmp eq <16 x i64> %i.i, zeroinitializer, !dbg !94272
  %i.k = select <16 x i1> %i.j, <16 x i8> %broadcast.splat2, <16 x i8> %broadcast.splat4, !dbg !94273
  store <16 x i8> %i.k, ptr %i.h, align 1, !dbg !94274, !alias.scope !94271
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 48, !dbg !94275
  %i.m = and <16 x i64> %broadcast.splat, <i64 281474976710656, i64 562949953421312, i64 1125899906842624, i64 2251799813685248, i64 4503599627370496, i64 9007199254740992, i64 18014398509481984, i64 36028797018963968, i64 72057594037927936, i64 144115188075855872, i64 288230376151711744, i64 576460752303423488, i64 1152921504606846976, i64 2305843009213693952, i64 4611686018427387904, i64 -9223372036854775808>, !dbg !94272
  %i.n = icmp eq <16 x i64> %i.m, zeroinitializer, !dbg !94272
  %i.o = select <16 x i1> %i.n, <16 x i8> %broadcast.splat2, <16 x i8> %broadcast.splat4, !dbg !94273
  store <16 x i8> %i.o, ptr %i.l, align 1, !dbg !94274, !alias.scope !94271
  ret void, !dbg !94276
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(argmem: write) uwtable
define hidden void @_RINvNtNtCslFlrwjHoTci_14polars_compute12if_then_else6scalar37if_then_else_broadcast_both_scalar_64dECs1LHh8CLbVkQ_11polars_core(i64 noundef %0, double noundef %1, double noundef %2, ptr noalias nofree noundef writeonly align 8 captures(none) dereferenceable(512) %3) unnamed_addr #6 personality ptr @rust_eh_personality !dbg !94277 !guid !94285 {
vector.ph:
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %0, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert1 = insertelement <2 x double> poison, double %2, i64 0
  %broadcast.splat2 = shufflevector <2 x double> %broadcast.splatinsert1, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert3 = insertelement <2 x double> poison, double %1, i64 0
  %broadcast.splat4 = shufflevector <2 x double> %broadcast.splatinsert3, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body, !dbg !94287

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ], !dbg !94288 ; 2 uses
  %vec.ind = phi <2 x i64> [ <i64 0, i64 1>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %i.a = shl nuw i64 %index, 3
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 %i.a, !dbg !94289 ; 2 uses
  %i.c = shl nuw <2 x i64> splat (i64 1), %vec.ind, !dbg !94290
  %i.d = shl nuw <2 x i64> splat (i64 4), %vec.ind, !dbg !94290
  %i.e = and <2 x i64> %i.c, %broadcast.splat, !dbg !94290
  %i.f = and <2 x i64> %i.d, %broadcast.splat, !dbg !94290
  %i.g = icmp eq <2 x i64> %i.e, zeroinitializer, !dbg !94290
  %i.h = icmp eq <2 x i64> %i.f, zeroinitializer, !dbg !94290
  %i.i = select <2 x i1> %i.g, <2 x double> %broadcast.splat2, <2 x double> %broadcast.splat4, !dbg !94291
  %i.j = select <2 x i1> %i.h, <2 x double> %broadcast.splat2, <2 x double> %broadcast.splat4, !dbg !94291
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !94292
  store <2 x double> %i.i, ptr %i.b, align 8, !dbg !94292, !alias.scope !94286
  store <2 x double> %i.j, ptr %i.k, align 8, !dbg !94292, !alias.scope !94286
  %index.next = add nuw i64 %index, 4, !dbg !94288 ; 2 uses
  %vec.ind.next = add nuw <2 x i64> %vec.ind, splat (i64 4)
  %i.l = icmp eq i64 %index.next, 64, !dbg !94287
  br i1 %i.l, label %_RINvNtNtCslFlrwjHoTci_14polars_compute12if_then_else6scalar39if_then_else_broadcast_both_scalar_restdECs1LHh8CLbVkQ_11polars_core.exit, label %vector.body, !dbg !94287, !llvm.loop !94284

_RINvNtNtCslFlrwjHoTci_14polars_compute12if_then_else6scalar39if_then_else_broadcast_both_scalar_restdECs1LHh8CLbVkQ_11polars_core.exit: ; preds = %vector.body
  ret void, !dbg !94293
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(argmem: write) uwtable
define hidden void @_RINvNtNtCslFlrwjHoTci_14polars_compute12if_then_else6scalar37if_then_else_broadcast_both_scalar_64fECs1LHh8CLbVkQ_11polars_core(i64 noundef %0, float noundef %1, float noundef %2, ptr noalias nofree noundef writeonly align 4 captures(none) dereferenceable(256) %3) unnamed_addr #6 personality ptr @rust_eh_personality !dbg !94294 !guid !94302 {
vector.ph:
  %broadcast.splatinsert = insertelement <4 x i64> poison, i64 %0, i64 0
  %broadcast.splat = shufflevector <4 x i64> %broadcast.splatinsert, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1 = insertelement <4 x float> poison, float %2, i64 0
  %broadcast.splat2 = shufflevector <4 x float> %broadcast.splatinsert1, <4 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert3 = insertelement <4 x float> poison, float %1, i64 0
  %broadcast.splat4 = shufflevector <4 x float> %broadcast.splatinsert3, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vector.body, !dbg !94304

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ], !dbg !94305 ; 2 uses
  %vec.ind = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 2 uses
  %i.a = shl nuw i64 %index, 2
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 %i.a, !dbg !94306
  %i.c = shl nuw <4 x i64> splat (i64 1), %vec.ind, !dbg !94307
  %i.d = and <4 x i64> %i.c, %broadcast.splat, !dbg !94307
  %i.e = icmp eq <4 x i64> %i.d, zeroinitializer, !dbg !94307
  %i.f = select <4 x i1> %i.e, <4 x float> %broadcast.splat2, <4 x float> %broadcast.splat4, !dbg !94308
  store <4 x float> %i.f, ptr %i.b, align 4, !dbg !94309, !alias.scope !94303
  %index.next = add nuw i64 %index, 4, !dbg !94305 ; 2 uses
  %vec.ind.next = add nuw nsw <4 x i64> %vec.ind, splat (i64 4)
  %i.g = icmp eq i64 %index.next, 64, !dbg !94304
  br i1 %i.g, label %_RINvNtNtCslFlrwjHoTci_14polars_compute12if_then_else6scalar39if_then_else_broadcast_both_scalar_restfECs1LHh8CLbVkQ_11polars_core.exit, label %vector.body, !dbg !94304, !llvm.loop !94301

_RINvNtNtCslFlrwjHoTci_14polars_compute12if_then_else6scalar39if_then_else_broadcast_both_scalar_restfECs1LHh8CLbVkQ_11polars_core.exit: ; preds = %vector.body
  ret void, !dbg !94310
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(argmem: write) uwtable
define hidden void @_RINvNtNtCslFlrwjHoTci_14polars_compute12if_then_else6scalar37if_then_else_broadcast_both_scalar_64hECs1LHh8CLbVkQ_11polars_core(i64 noundef %0, i8 noundef %1, i8 noundef %2, ptr noalias nofree noundef writeonly captures(none) dereferenceable(64) %3) unnamed_addr #6 personality ptr @rust_eh_personality !dbg !94311 !guid !94318 {
vector.ph:
  %broadcast.splatinsert3 = insertelement <16 x i8> poison, i8 %1, i64 0
  %broadcast.splat4 = shufflevector <16 x i8> %broadcast.splatinsert3, <16 x i8> poison, <16 x i32> zeroinitializer ; 4 uses
  %broadcast.splatinsert1 = insertelement <16 x i8> poison, i8 %2, i64 0
  %broadcast.splat2 = shufflevector <16 x i8> %broadcast.splatinsert1, <16 x i8> poison, <16 x i32> zeroinitializer ; 4 uses
  %broadcast.splatinsert = insertelement <16 x i64> poison, i64 %0, i64 0
  %broadcast.splat = shufflevector <16 x i64> %broadcast.splatinsert, <16 x i64> poison, <16 x i32> zeroinitializer ; 4 uses
  %i.a = and <16 x i64> %broadcast.splat, <i64 1, i64 2, i64 4, i64 8, i64 16, i64 32, i64 64, i64 128, i64 256, i64 512, i64 1024, i64 2048, i64 4096, i64 8192, i64 16384, i64 32768>, !dbg !94320
  %i.b = icmp eq <16 x i64> %i.a, zeroinitializer, !dbg !94320
  %i.c = select <16 x i1> %i.b, <16 x i8> %broadcast.splat2, <16 x i8> %broadcast.splat4, !dbg !94321
  store <16 x i8> %i.c, ptr %3, align 1, !dbg !94322, !alias.scope !94319
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 16, !dbg !94323
  %i.e = and <16 x i64> %broadcast.splat, <i64 65536, i64 131072, i64 262144, i64 524288, i64 1048576, i64 2097152, i64 4194304, i64 8388608, i64 16777216, i64 33554432, i64 67108864, i64 134217728, i64 268435456, i64 536870912, i64 1073741824, i64 2147483648>, !dbg !94320
  %i.f = icmp eq <16 x i64> %i.e, zeroinitializer, !dbg !94320
  %i.g = select <16 x i1> %i.f, <16 x i8> %broadcast.splat2, <16 x i8> %broadcast.splat4, !dbg !94321
  store <16 x i8> %i.g, ptr %i.d, align 1, !dbg !94322, !alias.scope !94319
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 32, !dbg !94323
  %i.i = and <16 x i64> %broadcast.splat, <i64 4294967296, i64 8589934592, i64 17179869184, i64 34359738368, i64 68719476736, i64 137438953472, i64 274877906944, i64 549755813888, i64 1099511627776, i64 2199023255552, i64 4398046511104, i64 8796093022208, i64 17592186044416, i64 35184372088832, i64 70368744177664, i64 140737488355328>, !dbg !94320
  %i.j = icmp eq <16 x i64> %i.i, zeroinitializer, !dbg !94320
  %i.k = select <16 x i1> %i.j, <16 x i8> %broadcast.splat2, <16 x i8> %broadcast.splat4, !dbg !94321
  store <16 x i8> %i.k, ptr %i.h, align 1, !dbg !94322, !alias.scope !94319
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 48, !dbg !94323
  %i.m = and <16 x i64> %broadcast.splat, <i64 281474976710656, i64 562949953421312, i64 1125899906842624, i64 2251799813685248, i64 4503599627370496, i64 9007199254740992, i64 18014398509481984, i64 36028797018963968, i64 72057594037927936, i64 144115188075855872, i64 288230376151711744, i64 576460752303423488, i64 1152921504606846976, i64 2305843009213693952, i64 4611686018427387904, i64 -9223372036854775808>, !dbg !94320
  %i.n = icmp eq <16 x i64> %i.m, zeroinitializer, !dbg !94320
  %i.o = select <16 x i1> %i.n, <16 x i8> %broadcast.splat2, <16 x i8> %broadcast.splat4, !dbg !94321
  store <16 x i8> %i.o, ptr %i.l, align 1, !dbg !94322, !alias.scope !94319
  ret void, !dbg !94324
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(argmem: write) uwtable
define hidden void @_RINvNtNtCslFlrwjHoTci_14polars_compute12if_then_else6scalar37if_then_else_broadcast_both_scalar_64lECs1LHh8CLbVkQ_11polars_core(i64 noundef %0, i32 noundef %1, i32 noundef %2, ptr noalias nofree noundef writeonly align 4 captures(none) dereferenceable(256) %3) unnamed_addr #6 personality ptr @rust_eh_personality !dbg !94325 !guid !94333 {
vector.ph:
  %broadcast.splatinsert = insertelement <4 x i64> poison, i64 %0, i64 0
  %broadcast.splat = shufflevector <4 x i64> %broadcast.splatinsert, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1 = insertelement <4 x i32> poison, i32 %2, i64 0
  %broadcast.splat2 = shufflevector <4 x i32> %broadcast.splatinsert1, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert3 = insertelement <4 x i32> poison, i32 %1, i64 0
  %broadcast.splat4 = shufflevector <4 x i32> %broadcast.splatinsert3, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body, !dbg !94335

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ], !dbg !94336 ; 2 uses
  %vec.ind = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 2 uses
  %i.a = shl nuw i64 %index, 2
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 %i.a, !dbg !94337
  %i.c = shl nuw <4 x i64> splat (i64 1), %vec.ind, !dbg !94338
  %i.d = and <4 x i64> %i.c, %broadcast.splat, !dbg !94338
  %i.e = icmp eq <4 x i64> %i.d, zeroinitializer, !dbg !94338
  %i.f = select <4 x i1> %i.e, <4 x i32> %broadcast.splat2, <4 x i32> %broadcast.splat4, !dbg !94339
  store <4 x i32> %i.f, ptr %i.b, align 4, !dbg !94340, !alias.scope !94334
  %index.next = add nuw i64 %index, 4, !dbg !94336 ; 2 uses
  %vec.ind.next = add nuw nsw <4 x i64> %vec.ind, splat (i64 4)
  %i.g = icmp eq i64 %index.next, 64, !dbg !94335
  br i1 %i.g, label %_RINvNtNtCslFlrwjHoTci_14polars_compute12if_then_else6scalar39if_then_else_broadcast_both_scalar_restlECs1LHh8CLbVkQ_11polars_core.exit, label %vector.body, !dbg !94335, !llvm.loop !94332

_RINvNtNtCslFlrwjHoTci_14polars_compute12if_then_else6scalar39if_then_else_broadcast_both_scalar_restlECs1LHh8CLbVkQ_11polars_core.exit: ; preds = %vector.body
  ret void, !dbg !94341
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(argmem: write) uwtable
define hidden void @_RINvNtNtCslFlrwjHoTci_14polars_compute12if_then_else6scalar37if_then_else_broadcast_both_scalar_64mECs1LHh8CLbVkQ_11polars_core(i64 noundef %0, i32 noundef %1, i32 noundef %2, ptr noalias nofree noundef writeonly align 4 captures(none) dereferenceable(256) %3) unnamed_addr #6 personality ptr @rust_eh_personality !dbg !94342 !guid !94350 {
vector.ph:
  %broadcast.splatinsert = insertelement <4 x i64> poison, i64 %0, i64 0
  %broadcast.splat = shufflevector <4 x i64> %broadcast.splatinsert, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1 = insertelement <4 x i32> poison, i32 %2, i64 0
  %broadcast.splat2 = shufflevector <4 x i32> %broadcast.splatinsert1, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert3 = insertelement <4 x i32> poison, i32 %1, i64 0
  %broadcast.splat4 = shufflevector <4 x i32> %broadcast.splatinsert3, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body, !dbg !94352

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ], !dbg !94353 ; 2 uses
  %vec.ind = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 2 uses
  %i.a = shl nuw i64 %index, 2
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 %i.a, !dbg !94354
  %i.c = shl nuw <4 x i64> splat (i64 1), %vec.ind, !dbg !94355
  %i.d = and <4 x i64> %i.c, %broadcast.splat, !dbg !94355
  %i.e = icmp eq <4 x i64> %i.d, zeroinitializer, !dbg !94355
  %i.f = select <4 x i1> %i.e, <4 x i32> %broadcast.splat2, <4 x i32> %broadcast.splat4, !dbg !94356
  store <4 x i32> %i.f, ptr %i.b, align 4, !dbg !94357, !alias.scope !94351
  %index.next = add nuw i64 %index, 4, !dbg !94353 ; 2 uses
  %vec.ind.next = add nuw nsw <4 x i64> %vec.ind, splat (i64 4)
  %i.g = icmp eq i64 %index.next, 64, !dbg !94352
  br i1 %i.g, label %_RINvNtNtCslFlrwjHoTci_14polars_compute12if_then_else6scalar39if_then_else_broadcast_both_scalar_restmECs1LHh8CLbVkQ_11polars_core.exit, label %vector.body, !dbg !94352, !llvm.loop !94349

_RINvNtNtCslFlrwjHoTci_14polars_compute12if_then_else6scalar39if_then_else_broadcast_both_scalar_restmECs1LHh8CLbVkQ_11polars_core.exit: ; preds = %vector.body
  ret void, !dbg !94358
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(argmem: write) uwtable
define hidden void @_RINvNtNtCslFlrwjHoTci_14polars_compute12if_then_else6scalar37if_then_else_broadcast_both_scalar_64nECs1LHh8CLbVkQ_11polars_core(i64 noundef %0, i128 noundef %1, i128 noundef %2, ptr noalias nofree noundef writeonly align 16 captures(none) dereferenceable(1024) %3) unnamed_addr #6 personality ptr @rust_eh_personality !dbg !94359 !guid !94367 {
bb.a:
  br label %.lr.ph.i, !dbg !94369

.lr.ph.i:                                         ; preds = %.lr.ph.i, %bb.a
  %.sroa.0.012.i.idx = phi i64 [ 0, %bb.a ], [ %.sroa.0.012.i.add.1, %.lr.ph.i ] ; 3 uses
  %.sroa.7.011.i = phi i64 [ 0, %bb.a ], [ %i.e, %.lr.ph.i ] ; 3 uses
  %.sroa.0.012.i.ptr = getelementptr inbounds nuw i8, ptr %3, i64 %.sroa.0.012.i.idx, !dbg !94370
  %i.a = shl nuw i64 1, %.sroa.7.011.i, !dbg !94371
  %i.b = and i64 %i.a, %0, !dbg !94371
  %i.c = icmp eq i64 %i.b, 0, !dbg !94371
  %..i = select i1 %i.c, i128 %2, i128 %1, !dbg !94372
  store i128 %..i, ptr %.sroa.0.012.i.ptr, align 16, !dbg !94373, !alias.scope !94368
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 %.sroa.0.012.i.idx, !dbg !94370
  %.sroa.0.012.i.ptr.1 = getelementptr inbounds nuw i8, ptr %i.d, i64 16, !dbg !94370
  %.sroa.0.012.i.add.1 = add nuw nsw i64 %.sroa.0.012.i.idx, 32, !dbg !94370 ; 2 uses
  %i.e = add nuw nsw i64 %.sroa.7.011.i, 2, !dbg !94374
  %i.f = shl nuw i64 2, %.sroa.7.011.i, !dbg !94371
  %i.g = and i64 %i.f, %0, !dbg !94371
  %i.h = icmp eq i64 %i.g, 0, !dbg !94371
  %..i.1 = select i1 %i.h, i128 %2, i128 %1, !dbg !94372
  store i128 %..i.1, ptr %.sroa.0.012.i.ptr.1, align 16, !dbg !94373, !alias.scope !94368
  %i.i = icmp eq i64 %.sroa.0.012.i.add.1, 1024, !dbg !94375
  br i1 %i.i, label %_RINvNtNtCslFlrwjHoTci_14polars_compute12if_then_else6scalar39if_then_else_broadcast_both_scalar_restnECs1LHh8CLbVkQ_11polars_core.exit, label %.lr.ph.i, !dbg !94369

_RINvNtNtCslFlrwjHoTci_14polars_compute12if_then_else6scalar39if_then_else_broadcast_both_scalar_restnECs1LHh8CLbVkQ_11polars_core.exit: ; preds = %.lr.ph.i
  ret void, !dbg !94376
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(argmem: write) uwtable
define hidden void @_RINvNtNtCslFlrwjHoTci_14polars_compute12if_then_else6scalar37if_then_else_broadcast_both_scalar_64oECs1LHh8CLbVkQ_11polars_core(i64 noundef %0, i128 noundef %1, i128 noundef %2, ptr noalias nofree noundef writeonly align 16 captures(none) dereferenceable(1024) %3) unnamed_addr #6 personality ptr @rust_eh_personality !dbg !94377 !guid !94385 {
bb.a:
  br label %.lr.ph.i, !dbg !94387

.lr.ph.i:                                         ; preds = %.lr.ph.i, %bb.a
  %.sroa.0.012.i.idx = phi i64 [ 0, %bb.a ], [ %.sroa.0.012.i.add.1, %.lr.ph.i ] ; 3 uses
  %.sroa.7.011.i = phi i64 [ 0, %bb.a ], [ %i.e, %.lr.ph.i ] ; 3 uses
  %.sroa.0.012.i.ptr = getelementptr inbounds nuw i8, ptr %3, i64 %.sroa.0.012.i.idx, !dbg !94388
  %i.a = shl nuw i64 1, %.sroa.7.011.i, !dbg !94389
  %i.b = and i64 %i.a, %0, !dbg !94389
  %i.c = icmp eq i64 %i.b, 0, !dbg !94389
  %..i = select i1 %i.c, i128 %2, i128 %1, !dbg !94390
  store i128 %..i, ptr %.sroa.0.012.i.ptr, align 16, !dbg !94391, !alias.scope !94386
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 %.sroa.0.012.i.idx, !dbg !94388
  %.sroa.0.012.i.ptr.1 = getelementptr inbounds nuw i8, ptr %i.d, i64 16, !dbg !94388
  %.sroa.0.012.i.add.1 = add nuw nsw i64 %.sroa.0.012.i.idx, 32, !dbg !94388 ; 2 uses
  %i.e = add nuw nsw i64 %.sroa.7.011.i, 2, !dbg !94392
  %i.f = shl nuw i64 2, %.sroa.7.011.i, !dbg !94389
  %i.g = and i64 %i.f, %0, !dbg !94389
  %i.h = icmp eq i64 %i.g, 0, !dbg !94389
  %..i.1 = select i1 %i.h, i128 %2, i128 %1, !dbg !94390
  store i128 %..i.1, ptr %.sroa.0.012.i.ptr.1, align 16, !dbg !94391, !alias.scope !94386
  %i.i = icmp eq i64 %.sroa.0.012.i.add.1, 1024, !dbg !94393
  br i1 %i.i, label %_RINvNtNtCslFlrwjHoTci_14polars_compute12if_then_else6scalar39if_then_else_broadcast_both_scalar_restoECs1LHh8CLbVkQ_11polars_core.exit, label %.lr.ph.i, !dbg !94387

_RINvNtNtCslFlrwjHoTci_14polars_compute12if_then_else6scalar39if_then_else_broadcast_both_scalar_restoECs1LHh8CLbVkQ_11polars_core.exit: ; preds = %.lr.ph.i
  ret void, !dbg !94394
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(argmem: write) uwtable
define hidden void @_RINvNtNtCslFlrwjHoTci_14polars_compute12if_then_else6scalar37if_then_else_broadcast_both_scalar_64sECs1LHh8CLbVkQ_11polars_core(i64 noundef %0, i16 noundef %1, i16 noundef %2, ptr noalias nofree noundef writeonly align 2 captures(none) dereferenceable(128) %3) unnamed_addr #6 personality ptr @rust_eh_personality !dbg !94395 !guid !94402 {
vector.ph:
  %broadcast.splatinsert3 = insertelement <8 x i16> poison, i16 %1, i64 0
  %broadcast.splat4 = shufflevector <8 x i16> %broadcast.splatinsert3, <8 x i16> poison, <8 x i32> zeroinitializer ; 8 uses
  %broadcast.splatinsert1 = insertelement <8 x i16> poison, i16 %2, i64 0
  %broadcast.splat2 = shufflevector <8 x i16> %broadcast.splatinsert1, <8 x i16> poison, <8 x i32> zeroinitializer ; 8 uses
  %broadcast.splatinsert = insertelement <8 x i64> poison, i64 %0, i64 0
  %broadcast.splat = shufflevector <8 x i64> %broadcast.splatinsert, <8 x i64> poison, <8 x i32> zeroinitializer ; 8 uses
  %i.a = and <8 x i64> %broadcast.splat, <i64 1, i64 2, i64 4, i64 8, i64 16, i64 32, i64 64, i64 128>, !dbg !94404
  %i.b = icmp eq <8 x i64> %i.a, zeroinitializer, !dbg !94404
  %i.c = select <8 x i1> %i.b, <8 x i16> %broadcast.splat2, <8 x i16> %broadcast.splat4, !dbg !94405
  store <8 x i16> %i.c, ptr %3, align 2, !dbg !94406, !alias.scope !94403
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 16, !dbg !94407
  %i.e = and <8 x i64> %broadcast.splat, <i64 256, i64 512, i64 1024, i64 2048, i64 4096, i64 8192, i64 16384, i64 32768>, !dbg !94404
  %i.f = icmp eq <8 x i64> %i.e, zeroinitializer, !dbg !94404
  %i.g = select <8 x i1> %i.f, <8 x i16> %broadcast.splat2, <8 x i16> %broadcast.splat4, !dbg !94405
  store <8 x i16> %i.g, ptr %i.d, align 2, !dbg !94406, !alias.scope !94403
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 32, !dbg !94407
  %i.i = and <8 x i64> %broadcast.splat, <i64 65536, i64 131072, i64 262144, i64 524288, i64 1048576, i64 2097152, i64 4194304, i64 8388608>, !dbg !94404
  %i.j = icmp eq <8 x i64> %i.i, zeroinitializer, !dbg !94404
  %i.k = select <8 x i1> %i.j, <8 x i16> %broadcast.splat2, <8 x i16> %broadcast.splat4, !dbg !94405
  store <8 x i16> %i.k, ptr %i.h, align 2, !dbg !94406, !alias.scope !94403
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 48, !dbg !94407
  %i.m = and <8 x i64> %broadcast.splat, <i64 16777216, i64 33554432, i64 67108864, i64 134217728, i64 268435456, i64 536870912, i64 1073741824, i64 2147483648>, !dbg !94404
  %i.n = icmp eq <8 x i64> %i.m, zeroinitializer, !dbg !94404
  %i.o = select <8 x i1> %i.n, <8 x i16> %broadcast.splat2, <8 x i16> %broadcast.splat4, !dbg !94405
  store <8 x i16> %i.o, ptr %i.l, align 2, !dbg !94406, !alias.scope !94403
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 64, !dbg !94407
  %i.q = and <8 x i64> %broadcast.splat, <i64 4294967296, i64 8589934592, i64 17179869184, i64 34359738368, i64 68719476736, i64 137438953472, i64 274877906944, i64 549755813888>, !dbg !94404
  %i.r = icmp eq <8 x i64> %i.q, zeroinitializer, !dbg !94404
  %i.s = select <8 x i1> %i.r, <8 x i16> %broadcast.splat2, <8 x i16> %broadcast.splat4, !dbg !94405
  store <8 x i16> %i.s, ptr %i.p, align 2, !dbg !94406, !alias.scope !94403
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 80, !dbg !94407
  %i.u = and <8 x i64> %broadcast.splat, <i64 1099511627776, i64 2199023255552, i64 4398046511104, i64 8796093022208, i64 17592186044416, i64 35184372088832, i64 70368744177664, i64 140737488355328>, !dbg !94404
  %i.v = icmp eq <8 x i64> %i.u, zeroinitializer, !dbg !94404
  %i.w = select <8 x i1> %i.v, <8 x i16> %broadcast.splat2, <8 x i16> %broadcast.splat4, !dbg !94405
  store <8 x i16> %i.w, ptr %i.t, align 2, !dbg !94406, !alias.scope !94403
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 96, !dbg !94407
  %i.y = and <8 x i64> %broadcast.splat, <i64 281474976710656, i64 562949953421312, i64 1125899906842624, i64 2251799813685248, i64 4503599627370496, i64 9007199254740992, i64 18014398509481984, i64 36028797018963968>, !dbg !94404
  %i.z = icmp eq <8 x i64> %i.y, zeroinitializer, !dbg !94404
  %i.aa = select <8 x i1> %i.z, <8 x i16> %broadcast.splat2, <8 x i16> %broadcast.splat4, !dbg !94405
  store <8 x i16> %i.aa, ptr %i.x, align 2, !dbg !94406, !alias.scope !94403
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 112, !dbg !94407
  %i.ac = and <8 x i64> %broadcast.splat, <i64 72057594037927936, i64 144115188075855872, i64 288230376151711744, i64 576460752303423488, i64 1152921504606846976, i64 2305843009213693952, i64 4611686018427387904, i64 -9223372036854775808>, !dbg !94404
  %i.ad = icmp eq <8 x i64> %i.ac, zeroinitializer, !dbg !94404
  %i.ae = select <8 x i1> %i.ad, <8 x i16> %broadcast.splat2, <8 x i16> %broadcast.splat4, !dbg !94405
  store <8 x i16> %i.ae, ptr %i.ab, align 2, !dbg !94406, !alias.scope !94403
  ret void, !dbg !94408
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(argmem: write) uwtable
define hidden void @_RINvNtNtCslFlrwjHoTci_14polars_compute12if_then_else6scalar37if_then_else_broadcast_both_scalar_64tECs1LHh8CLbVkQ_11polars_core(i64 noundef %0, i16 noundef %1, i16 noundef %2, ptr noalias nofree noundef writeonly align 2 captures(none) dereferenceable(128) %3) unnamed_addr #6 personality ptr @rust_eh_personality !dbg !94409 !guid !94416 {
vector.ph:
  %broadcast.splatinsert3 = insertelement <8 x i16> poison, i16 %1, i64 0
  %broadcast.splat4 = shufflevector <8 x i16> %broadcast.splatinsert3, <8 x i16> poison, <8 x i32> zeroinitializer ; 8 uses
  %broadcast.splatinsert1 = insertelement <8 x i16> poison, i16 %2, i64 0
  %broadcast.splat2 = shufflevector <8 x i16> %broadcast.splatinsert1, <8 x i16> poison, <8 x i32> zeroinitializer ; 8 uses
  %broadcast.splatinsert = insertelement <8 x i64> poison, i64 %0, i64 0
  %broadcast.splat = shufflevector <8 x i64> %broadcast.splatinsert, <8 x i64> poison, <8 x i32> zeroinitializer ; 8 uses
  %i.a = and <8 x i64> %broadcast.splat, <i64 1, i64 2, i64 4, i64 8, i64 16, i64 32, i64 64, i64 128>, !dbg !94418
  %i.b = icmp eq <8 x i64> %i.a, zeroinitializer, !dbg !94418
  %i.c = select <8 x i1> %i.b, <8 x i16> %broadcast.splat2, <8 x i16> %broadcast.splat4, !dbg !94419
  store <8 x i16> %i.c, ptr %3, align 2, !dbg !94420, !alias.scope !94417
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 16, !dbg !94421
  %i.e = and <8 x i64> %broadcast.splat, <i64 256, i64 512, i64 1024, i64 2048, i64 4096, i64 8192, i64 16384, i64 32768>, !dbg !94418
  %i.f = icmp eq <8 x i64> %i.e, zeroinitializer, !dbg !94418
  %i.g = select <8 x i1> %i.f, <8 x i16> %broadcast.splat2, <8 x i16> %broadcast.splat4, !dbg !94419
  store <8 x i16> %i.g, ptr %i.d, align 2, !dbg !94420, !alias.scope !94417
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 32, !dbg !94421
  %i.i = and <8 x i64> %broadcast.splat, <i64 65536, i64 131072, i64 262144, i64 524288, i64 1048576, i64 2097152, i64 4194304, i64 8388608>, !dbg !94418
  %i.j = icmp eq <8 x i64> %i.i, zeroinitializer, !dbg !94418
  %i.k = select <8 x i1> %i.j, <8 x i16> %broadcast.splat2, <8 x i16> %broadcast.splat4, !dbg !94419
  store <8 x i16> %i.k, ptr %i.h, align 2, !dbg !94420, !alias.scope !94417
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 48, !dbg !94421
  %i.m = and <8 x i64> %broadcast.splat, <i64 16777216, i64 33554432, i64 67108864, i64 134217728, i64 268435456, i64 536870912, i64 1073741824, i64 2147483648>, !dbg !94418
  %i.n = icmp eq <8 x i64> %i.m, zeroinitializer, !dbg !94418
  %i.o = select <8 x i1> %i.n, <8 x i16> %broadcast.splat2, <8 x i16> %broadcast.splat4, !dbg !94419
  store <8 x i16> %i.o, ptr %i.l, align 2, !dbg !94420, !alias.scope !94417
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 64, !dbg !94421
  %i.q = and <8 x i64> %broadcast.splat, <i64 4294967296, i64 8589934592, i64 17179869184, i64 34359738368, i64 68719476736, i64 137438953472, i64 274877906944, i64 549755813888>, !dbg !94418
  %i.r = icmp eq <8 x i64> %i.q, zeroinitializer, !dbg !94418
  %i.s = select <8 x i1> %i.r, <8 x i16> %broadcast.splat2, <8 x i16> %broadcast.splat4, !dbg !94419
  store <8 x i16> %i.s, ptr %i.p, align 2, !dbg !94420, !alias.scope !94417
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 80, !dbg !94421
  %i.u = and <8 x i64> %broadcast.splat, <i64 1099511627776, i64 2199023255552, i64 4398046511104, i64 8796093022208, i64 17592186044416, i64 35184372088832, i64 70368744177664, i64 140737488355328>, !dbg !94418
  %i.v = icmp eq <8 x i64> %i.u, zeroinitializer, !dbg !94418
  %i.w = select <8 x i1> %i.v, <8 x i16> %broadcast.splat2, <8 x i16> %broadcast.splat4, !dbg !94419
  store <8 x i16> %i.w, ptr %i.t, align 2, !dbg !94420, !alias.scope !94417
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 96, !dbg !94421
  %i.y = and <8 x i64> %broadcast.splat, <i64 281474976710656, i64 562949953421312, i64 1125899906842624, i64 2251799813685248, i64 4503599627370496, i64 9007199254740992, i64 18014398509481984, i64 36028797018963968>, !dbg !94418
  %i.z = icmp eq <8 x i64> %i.y, zeroinitializer, !dbg !94418
  %i.aa = select <8 x i1> %i.z, <8 x i16> %broadcast.splat2, <8 x i16> %broadcast.splat4, !dbg !94419
  store <8 x i16> %i.aa, ptr %i.x, align 2, !dbg !94420, !alias.scope !94417
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 112, !dbg !94421
  %i.ac = and <8 x i64> %broadcast.splat, <i64 72057594037927936, i64 144115188075855872, i64 288230376151711744, i64 576460752303423488, i64 1152921504606846976, i64 2305843009213693952, i64 4611686018427387904, i64 -9223372036854775808>, !dbg !94418
  %i.ad = icmp eq <8 x i64> %i.ac, zeroinitializer, !dbg !94418
  %i.ae = select <8 x i1> %i.ad, <8 x i16> %broadcast.splat2, <8 x i16> %broadcast.splat4, !dbg !94419
  store <8 x i16> %i.ae, ptr %i.ab, align 2, !dbg !94420, !alias.scope !94417
  ret void, !dbg !94422
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(argmem: write) uwtable
define hidden void @_RINvNtNtCslFlrwjHoTci_14polars_compute12if_then_else6scalar37if_then_else_broadcast_both_scalar_64xECs1LHh8CLbVkQ_11polars_core(i64 noundef %0, i64 noundef %1, i64 noundef %2, ptr noalias nofree noundef writeonly align 8 captures(none) dereferenceable(512) %3) unnamed_addr #6 personality ptr @rust_eh_personality !dbg !94423 !guid !94431 {
bb.a:
  br label %.lr.ph.i, !dbg !94433

.lr.ph.i:                                         ; preds = %.lr.ph.i, %bb.a
  %.sroa.0.012.i.idx = phi i64 [ 0, %bb.a ], [ %.sroa.0.012.i.add.1, %.lr.ph.i ] ; 3 uses
  %.sroa.7.011.i = phi i64 [ 0, %bb.a ], [ %i.e, %.lr.ph.i ] ; 3 uses
  %.sroa.0.012.i.ptr = getelementptr inbounds nuw i8, ptr %3, i64 %.sroa.0.012.i.idx, !dbg !94434
  %i.a = shl nuw i64 1, %.sroa.7.011.i, !dbg !94435
  %i.b = and i64 %i.a, %0, !dbg !94435
  %i.c = icmp eq i64 %i.b, 0, !dbg !94435
  %..i = select i1 %i.c, i64 %2, i64 %1, !dbg !94436
  store i64 %..i, ptr %.sroa.0.012.i.ptr, align 8, !dbg !94437, !alias.scope !94432
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 %.sroa.0.012.i.idx, !dbg !94434
  %.sroa.0.012.i.ptr.1 = getelementptr inbounds nuw i8, ptr %i.d, i64 8, !dbg !94434
  %.sroa.0.012.i.add.1 = add nuw nsw i64 %.sroa.0.012.i.idx, 16, !dbg !94434 ; 2 uses
  %i.e = add nuw nsw i64 %.sroa.7.011.i, 2, !dbg !94438
  %i.f = shl nuw i64 2, %.sroa.7.011.i, !dbg !94435
  %i.g = and i64 %i.f, %0, !dbg !94435
  %i.h = icmp eq i64 %i.g, 0, !dbg !94435
  %..i.1 = select i1 %i.h, i64 %2, i64 %1, !dbg !94436
  store i64 %..i.1, ptr %.sroa.0.012.i.ptr.1, align 8, !dbg !94437, !alias.scope !94432
  %i.i = icmp eq i64 %.sroa.0.012.i.add.1, 512, !dbg !94439
  br i1 %i.i, label %_RINvNtNtCslFlrwjHoTci_14polars_compute12if_then_else6scalar39if_then_else_broadcast_both_scalar_restxECs1LHh8CLbVkQ_11polars_core.exit, label %.lr.ph.i, !dbg !94433

_RINvNtNtCslFlrwjHoTci_14polars_compute12if_then_else6scalar39if_then_else_broadcast_both_scalar_restxECs1LHh8CLbVkQ_11polars_core.exit: ; preds = %.lr.ph.i
  ret void, !dbg !94440
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(argmem: write) uwtable
define hidden void @_RINvNtNtCslFlrwjHoTci_14polars_compute12if_then_else6scalar37if_then_else_broadcast_both_scalar_64yECs1LHh8CLbVkQ_11polars_core(i64 noundef %0, i64 noundef %1, i64 noundef %2, ptr noalias nofree noundef writeonly align 8 captures(none) dereferenceable(512) %3) unnamed_addr #6 personality ptr @rust_eh_personality !dbg !94441 !guid !94449 {
bb.a:
  br label %.lr.ph.i, !dbg !94451

.lr.ph.i:                                         ; preds = %.lr.ph.i, %bb.a
  %.sroa.0.012.i.idx = phi i64 [ 0, %bb.a ], [ %.sroa.0.012.i.add.1, %.lr.ph.i ] ; 3 uses
  %.sroa.7.011.i = phi i64 [ 0, %bb.a ], [ %i.e, %.lr.ph.i ] ; 3 uses
  %.sroa.0.012.i.ptr = getelementptr inbounds nuw i8, ptr %3, i64 %.sroa.0.012.i.idx, !dbg !94452
  %i.a = shl nuw i64 1, %.sroa.7.011.i, !dbg !94453
  %i.b = and i64 %i.a, %0, !dbg !94453
  %i.c = icmp eq i64 %i.b, 0, !dbg !94453
  %..i = select i1 %i.c, i64 %2, i64 %1, !dbg !94454
  store i64 %..i, ptr %.sroa.0.012.i.ptr, align 8, !dbg !94455, !alias.scope !94450
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 %.sroa.0.012.i.idx, !dbg !94452
  %.sroa.0.012.i.ptr.1 = getelementptr inbounds nuw i8, ptr %i.d, i64 8, !dbg !94452
  %.sroa.0.012.i.add.1 = add nuw nsw i64 %.sroa.0.012.i.idx, 16, !dbg !94452 ; 2 uses
  %i.e = add nuw nsw i64 %.sroa.7.011.i, 2, !dbg !94456
  %i.f = shl nuw i64 2, %.sroa.7.011.i, !dbg !94453
  %i.g = and i64 %i.f, %0, !dbg !94453
  %i.h = icmp eq i64 %i.g, 0, !dbg !94453
  %..i.1 = select i1 %i.h, i64 %2, i64 %1, !dbg !94454
  store i64 %..i.1, ptr %.sroa.0.012.i.ptr.1, align 8, !dbg !94455, !alias.scope !94450
  %i.i = icmp eq i64 %.sroa.0.012.i.add.1, 512, !dbg !94457
  br i1 %i.i, label %_RINvNtNtCslFlrwjHoTci_14polars_compute12if_then_else6scalar39if_then_else_broadcast_both_scalar_restyECs1LHh8CLbVkQ_11polars_core.exit, label %.lr.ph.i, !dbg !94451

_RINvNtNtCslFlrwjHoTci_14polars_compute12if_then_else6scalar39if_then_else_broadcast_both_scalar_restyECs1LHh8CLbVkQ_11polars_core.exit: ; preds = %.lr.ph.i
  ret void, !dbg !94458
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCslFlrwjHoTci_14polars_compute12if_then_else6scalar38if_then_else_broadcast_false_scalar_64NtNtCs2mZqlW55729_12polars_utils7float164pf16ECs1LHh8CLbVkQ_11polars_core(i64 noundef %0, ptr noalias noundef readonly align 2 captures(address, read_provenance) dereferenceable(128) %1, i16 noundef %2, ptr noalias nofree noundef writeonly align 2 captures(none) dereferenceable(128) %3) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !94459 !guid !94472 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !94473), !dbg !94477
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 128, !dbg !94478
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !94479, !noalias !94474
  store ptr %1, ptr %i.a, align 8, !dbg !94479, !noalias !94474
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !94479
  store ptr %i.b, ptr %.sroa.2.0..sroa_idx.i, align 8, !dbg !94479, !noalias !94474
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !94479 ; 3 uses
  store i64 0, ptr %.sroa.3.0..sroa_idx.i, align 8, !dbg !94479, !noalias !94474
  %i.c = call { i16, i16 } @_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters6copiedINtB4_6CopiedINtNtNtBa_5slice4iter4IterNtNtCs2mZqlW55729_12polars_utils7float164pf16EENtNtNtB8_6traits8iterator8Iterator4nextCs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a), !dbg !94480, !noalias !94475 ; 2 uses
  %i.d = extractvalue { i16, i16 } %i.c, 0, !dbg !94480
  %i.e = trunc i16 %i.d to i1, !dbg !94481
  br i1 %i.e, label %.lr.ph.i, label %_RINvNtNtCslFlrwjHoTci_14polars_compute12if_then_else6scalar40if_then_else_broadcast_false_scalar_restNtNtCs2mZqlW55729_12polars_utils7float164pf16ECs1LHh8CLbVkQ_11polars_core.exit, !dbg !94481

.lr.ph.i:                                         ; preds = %bb.a, %bb.b
  %i.f = phi { i16, i16 } [ %i.o, %bb.b ], [ %i.c, %bb.a ]
  %i.g = load i64, ptr %.sroa.3.0..sroa_idx.i, align 8, !dbg !94482, !alias.scope !94476, !noalias !94474, !noundef !5305 ; 5 uses
  %i.h = add i64 %i.g, 1, !dbg !94483
  store i64 %i.h, ptr %.sroa.3.0..sroa_idx.i, align 8, !dbg !94483, !alias.scope !94476, !noalias !94474
  %i.i = icmp ult i64 %i.g, 64, !dbg !94484
  br i1 %i.i, label %bb.b, label %bb.c, !dbg !94484

bb.b:                                             ; preds = %.lr.ph.i
  %i.j = extractvalue { i16, i16 } %i.f, 1, !dbg !94480
  %i.k = shl nuw i64 1, %i.g, !dbg !94485
  %i.l = and i64 %i.k, %0, !dbg !94485
  %i.m = icmp eq i64 %i.l, 0, !dbg !94485
  %spec.store.select.i = select i1 %i.m, i16 %2, i16 %i.j, !dbg !94485
  %i.n = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %i.g, !dbg !94484
  store i16 %spec.store.select.i, ptr %i.n, align 2, !dbg !94484, !alias.scope !94473
  %i.o = call { i16, i16 } @_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters6copiedINtB4_6CopiedINtNtNtBa_5slice4iter4IterNtNtCs2mZqlW55729_12polars_utils7float164pf16EENtNtNtB8_6traits8iterator8Iterator4nextCs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a), !dbg !94480, !noalias !94475 ; 2 uses
  %i.p = extractvalue { i16, i16 } %i.o, 0, !dbg !94480
  %i.q = trunc i16 %i.p to i1, !dbg !94481
  br i1 %i.q, label %.lr.ph.i, label %_RINvNtNtCslFlrwjHoTci_14polars_compute12if_then_else6scalar40if_then_else_broadcast_false_scalar_restNtNtCs2mZqlW55729_12polars_utils7float164pf16ECs1LHh8CLbVkQ_11polars_core.exit, !dbg !94481

bb.c:                                             ; preds = %.lr.ph.i
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %i.g, i64 noundef 64, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @111) #41, !dbg !94484, !noalias !94473
  unreachable, !dbg !94484

_RINvNtNtCslFlrwjHoTci_14polars_compute12if_then_else6scalar40if_then_else_broadcast_false_scalar_restNtNtCs2mZqlW55729_12polars_utils7float164pf16ECs1LHh8CLbVkQ_11polars_core.exit: ; preds = %bb.b, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !94486, !noalias !94474
  ret void, !dbg !94487
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCslFlrwjHoTci_14polars_compute12if_then_else6scalar38if_then_else_broadcast_false_scalar_64aECs1LHh8CLbVkQ_11polars_core(i64 noundef %0, ptr noalias noundef readonly captures(address, read_provenance) dereferenceable(64) %1, i8 noundef %2, ptr noalias nofree noundef writeonly captures(none) dereferenceable(64) %3) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !94488 !guid !94501 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !94502), !dbg !94506
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 64, !dbg !94507
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !94508, !noalias !94503
  store ptr %1, ptr %i.a, align 8, !dbg !94508, !noalias !94503
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !94508
  store ptr %i.b, ptr %.sroa.2.0..sroa_idx.i, align 8, !dbg !94508, !noalias !94503
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !94508 ; 3 uses
  store i64 0, ptr %.sroa.3.0..sroa_idx.i, align 8, !dbg !94508, !noalias !94503
  %i.c = call { i1, i8 } @_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters6copiedINtB4_6CopiedINtNtNtBa_5slice4iter4IteraEENtNtNtB8_6traits8iterator8Iterator4nextCs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a), !dbg !94509, !noalias !94504 ; 2 uses
  %i.d = extractvalue { i1, i8 } %i.c, 0, !dbg !94509
  br i1 %i.d, label %.lr.ph.i, label %_RINvNtNtCslFlrwjHoTci_14polars_compute12if_then_else6scalar40if_then_else_broadcast_false_scalar_restaECs1LHh8CLbVkQ_11polars_core.exit, !dbg !94510

.lr.ph.i:                                         ; preds = %bb.a, %bb.b
  %i.e = phi { i1, i8 } [ %i.n, %bb.b ], [ %i.c, %bb.a ]
  %i.f = load i64, ptr %.sroa.3.0..sroa_idx.i, align 8, !dbg !94511, !alias.scope !94505, !noalias !94503, !noundef !5305 ; 5 uses
  %i.g = add i64 %i.f, 1, !dbg !94512
  store i64 %i.g, ptr %.sroa.3.0..sroa_idx.i, align 8, !dbg !94512, !alias.scope !94505, !noalias !94503
  %i.h = icmp ult i64 %i.f, 64, !dbg !94513
  br i1 %i.h, label %bb.b, label %bb.c, !dbg !94513

bb.b:                                             ; preds = %.lr.ph.i
  %i.i = extractvalue { i1, i8 } %i.e, 1, !dbg !94509
  %i.j = shl nuw i64 1, %i.f, !dbg !94514
  %i.k = and i64 %i.j, %0, !dbg !94514
  %i.l = icmp eq i64 %i.k, 0, !dbg !94514
  %spec.store.select.i = select i1 %i.l, i8 %2, i8 %i.i, !dbg !94514
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 %i.f, !dbg !94513
  store i8 %spec.store.select.i, ptr %i.m, align 1, !dbg !94513, !alias.scope !94502
  %i.n = call { i1, i8 } @_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters6copiedINtB4_6CopiedINtNtNtBa_5slice4iter4IteraEENtNtNtB8_6traits8iterator8Iterator4nextCs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a), !dbg !94509, !noalias !94504 ; 2 uses
  %i.o = extractvalue { i1, i8 } %i.n, 0, !dbg !94509
  br i1 %i.o, label %.lr.ph.i, label %_RINvNtNtCslFlrwjHoTci_14polars_compute12if_then_else6scalar40if_then_else_broadcast_false_scalar_restaECs1LHh8CLbVkQ_11polars_core.exit, !dbg !94510

bb.c:                                             ; preds = %.lr.ph.i
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %i.f, i64 noundef 64, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @111) #41, !dbg !94513, !noalias !94502
  unreachable, !dbg !94513

_RINvNtNtCslFlrwjHoTci_14polars_compute12if_then_else6scalar40if_then_else_broadcast_false_scalar_restaECs1LHh8CLbVkQ_11polars_core.exit: ; preds = %bb.b, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !94515, !noalias !94503
  ret void, !dbg !94516
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCslFlrwjHoTci_14polars_compute12if_then_else6scalar38if_then_else_broadcast_false_scalar_64dECs1LHh8CLbVkQ_11polars_core(i64 noundef %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(512) %1, double noundef %2, ptr noalias nofree noundef writeonly align 8 captures(none) dereferenceable(512) %3) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !94517 !guid !94530 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !94531), !dbg !94535
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 512, !dbg !94536
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !94537, !noalias !94532
  store ptr %1, ptr %i.a, align 8, !dbg !94537, !noalias !94532
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !94537
  store ptr %i.b, ptr %.sroa.2.0..sroa_idx.i, align 8, !dbg !94537, !noalias !94532
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !94537 ; 3 uses
  store i64 0, ptr %.sroa.3.0..sroa_idx.i, align 8, !dbg !94537, !noalias !94532
  %i.c = call { i64, double } @_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters6copiedINtB4_6CopiedINtNtNtBa_5slice4iter4IterdEENtNtNtB8_6traits8iterator8Iterator4nextCs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a), !dbg !94538, !noalias !94533 ; 2 uses
  %i.d = extractvalue { i64, double } %i.c, 0, !dbg !94538
  %i.e = trunc nuw i64 %i.d to i1, !dbg !94539
  br i1 %i.e, label %.lr.ph.i, label %_RINvNtNtCslFlrwjHoTci_14polars_compute12if_then_else6scalar40if_then_else_broadcast_false_scalar_restdECs1LHh8CLbVkQ_11polars_core.exit, !dbg !94539

.lr.ph.i:                                         ; preds = %bb.a, %bb.b
  %i.f = phi { i64, double } [ %i.o, %bb.b ], [ %i.c, %bb.a ]
  %i.g = load i64, ptr %.sroa.3.0..sroa_idx.i, align 8, !dbg !94540, !alias.scope !94534, !noalias !94532, !noundef !5305 ; 5 uses
  %i.h = add i64 %i.g, 1, !dbg !94541
  store i64 %i.h, ptr %.sroa.3.0..sroa_idx.i, align 8, !dbg !94541, !alias.scope !94534, !noalias !94532
  %i.i = icmp ult i64 %i.g, 64, !dbg !94542
  br i1 %i.i, label %bb.b, label %bb.c, !dbg !94542

bb.b:                                             ; preds = %.lr.ph.i
  %i.j = extractvalue { i64, double } %i.f, 1, !dbg !94538
  %i.k = shl nuw i64 1, %i.g, !dbg !94543
  %i.l = and i64 %i.k, %0, !dbg !94543
  %i.m = icmp eq i64 %i.l, 0, !dbg !94543
  %spec.store.select.i = select i1 %i.m, double %2, double %i.j, !dbg !94543
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %i.g, !dbg !94542
  store double %spec.store.select.i, ptr %i.n, align 8, !dbg !94542, !alias.scope !94531
  %i.o = call { i64, double } @_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters6copiedINtB4_6CopiedINtNtNtBa_5slice4iter4IterdEENtNtNtB8_6traits8iterator8Iterator4nextCs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a), !dbg !94538, !noalias !94533 ; 2 uses
  %i.p = extractvalue { i64, double } %i.o, 0, !dbg !94538
  %i.q = trunc nuw i64 %i.p to i1, !dbg !94539
  br i1 %i.q, label %.lr.ph.i, label %_RINvNtNtCslFlrwjHoTci_14polars_compute12if_then_else6scalar40if_then_else_broadcast_false_scalar_restdECs1LHh8CLbVkQ_11polars_core.exit, !dbg !94539

bb.c:                                             ; preds = %.lr.ph.i
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %i.g, i64 noundef 64, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @111) #41, !dbg !94542, !noalias !94531
  unreachable, !dbg !94542

_RINvNtNtCslFlrwjHoTci_14polars_compute12if_then_else6scalar40if_then_else_broadcast_false_scalar_restdECs1LHh8CLbVkQ_11polars_core.exit: ; preds = %bb.b, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !94544, !noalias !94532
  ret void, !dbg !94545
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCslFlrwjHoTci_14polars_compute12if_then_else6scalar38if_then_else_broadcast_false_scalar_64fECs1LHh8CLbVkQ_11polars_core(i64 noundef %0, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(256) %1, float noundef %2, ptr noalias nofree noundef writeonly align 4 captures(none) dereferenceable(256) %3) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !94546 !guid !94559 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !94560), !dbg !94564
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 256, !dbg !94565
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !94566, !noalias !94561
  store ptr %1, ptr %i.a, align 8, !dbg !94566, !noalias !94561
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !94566
  store ptr %i.b, ptr %.sroa.2.0..sroa_idx.i, align 8, !dbg !94566, !noalias !94561
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !94566 ; 3 uses
  store i64 0, ptr %.sroa.3.0..sroa_idx.i, align 8, !dbg !94566, !noalias !94561
  %i.c = call { i32, float } @_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters6copiedINtB4_6CopiedINtNtNtBa_5slice4iter4IterfEENtNtNtB8_6traits8iterator8Iterator4nextCs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a), !dbg !94567, !noalias !94562 ; 2 uses
  %i.d = extractvalue { i32, float } %i.c, 0, !dbg !94567
  %i.e = trunc i32 %i.d to i1, !dbg !94568
  br i1 %i.e, label %.lr.ph.i, label %_RINvNtNtCslFlrwjHoTci_14polars_compute12if_then_else6scalar40if_then_else_broadcast_false_scalar_restfECs1LHh8CLbVkQ_11polars_core.exit, !dbg !94568

.lr.ph.i:                                         ; preds = %bb.a, %bb.b
  %i.f = phi { i32, float } [ %i.o, %bb.b ], [ %i.c, %bb.a ]
  %i.g = load i64, ptr %.sroa.3.0..sroa_idx.i, align 8, !dbg !94569, !alias.scope !94563, !noalias !94561, !noundef !5305 ; 5 uses
  %i.h = add i64 %i.g, 1, !dbg !94570
  store i64 %i.h, ptr %.sroa.3.0..sroa_idx.i, align 8, !dbg !94570, !alias.scope !94563, !noalias !94561
  %i.i = icmp ult i64 %i.g, 64, !dbg !94571
  br i1 %i.i, label %bb.b, label %bb.c, !dbg !94571

bb.b:                                             ; preds = %.lr.ph.i
  %i.j = extractvalue { i32, float } %i.f, 1, !dbg !94567
  %i.k = shl nuw i64 1, %i.g, !dbg !94572
  %i.l = and i64 %i.k, %0, !dbg !94572
  %i.m = icmp eq i64 %i.l, 0, !dbg !94572
  %spec.store.select.i = select i1 %i.m, float %2, float %i.j, !dbg !94572
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.g, !dbg !94571
  store float %spec.store.select.i, ptr %i.n, align 4, !dbg !94571, !alias.scope !94560
end_hunk_0
