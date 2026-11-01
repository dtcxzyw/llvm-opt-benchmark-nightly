Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/coreutils-rs/original/uu_od-e8a75ca9228cc4af.uu_od.9ae3888c10d230e2-cgu.0?download=true
inline.NumInlined: 1209
inline.NumDeleted: 626
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 11
begin_hunk_0_@_RNvCsdit6BuOJVAc_5uu_od6uu_app:_RINvMs0_NtNtCsgNwXemyrBWj_12clap_builder7builder7commandNtB6_7Command13help_templateNtNtB8_10styled_str9StyledStrECsdit6BuOJVAc_5uu_od.exit
  %i.eh = getelementptr inbounds nuw i8, ptr %i.a, i64 488
  store i64 -1, ptr %i.eh, align 8, !alias.scope !1245
  %i.ei = getelementptr inbounds nuw i8, ptr %i.a, i64 512
  store i64 -1, ptr %i.ei, align 8, !alias.scope !1245
  %i.ej = getelementptr inbounds nuw i8, ptr %i.a, i64 636
  %i.ek = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  store i64 -1, ptr %i.ek, align 8, !alias.scope !1245
  %i.el = getelementptr inbounds nuw i8, ptr %i.a, i64 104
  store i64 0, ptr %i.el, align 8, !alias.scope !1245
  %.sroa.45.0..sroa_idx.i1159 = getelementptr inbounds nuw i8, ptr %i.a, i64 112
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.45.0..sroa_idx.i1159, align 8, !alias.scope !1245
  %.sroa.56.0..sroa_idx.i1160 = getelementptr inbounds nuw i8, ptr %i.a, i64 120
  %i.em = getelementptr inbounds nuw i8, ptr %i.a, i64 632
  %.sroa.48.0..sroa_idx.i1161 = getelementptr inbounds nuw i8, ptr %i.a, i64 136
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.56.0..sroa_idx.i1160, i8 0, i64 16, i1 false), !alias.scope !1245
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.48.0..sroa_idx.i1161, align 8, !alias.scope !1245
  %.sroa.59.0..sroa_idx.i1162 = getelementptr inbounds nuw i8, ptr %i.a, i64 144
  %.sroa.411.0..sroa_idx.i1163 = getelementptr inbounds nuw i8, ptr %i.a, i64 160
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.59.0..sroa_idx.i1162, i8 0, i64 16, i1 false), !alias.scope !1245
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.411.0..sroa_idx.i1163, align 8, !alias.scope !1245
  %.sroa.512.0..sroa_idx.i1164 = getelementptr inbounds nuw i8, ptr %i.a, i64 168
  %.sroa.414.0..sroa_idx.i1165 = getelementptr inbounds nuw i8, ptr %i.a, i64 184
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.512.0..sroa_idx.i1164, i8 0, i64 16, i1 false), !alias.scope !1245
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.414.0..sroa_idx.i1165, align 8, !alias.scope !1245
  %.sroa.515.0..sroa_idx.i1166 = getelementptr inbounds nuw i8, ptr %i.a, i64 192
  %.sroa.417.0..sroa_idx.i1167 = getelementptr inbounds nuw i8, ptr %i.a, i64 208
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.515.0..sroa_idx.i1166, i8 0, i64 16, i1 false), !alias.scope !1245
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.417.0..sroa_idx.i1167, align 8, !alias.scope !1245
  %.sroa.518.0..sroa_idx.i1168 = getelementptr inbounds nuw i8, ptr %i.a, i64 216
  %.sroa.420.0..sroa_idx.i1169 = getelementptr inbounds nuw i8, ptr %i.a, i64 232
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.518.0..sroa_idx.i1168, i8 0, i64 16, i1 false), !alias.scope !1245
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.420.0..sroa_idx.i1169, align 8, !alias.scope !1245
  %.sroa.521.0..sroa_idx.i1170 = getelementptr inbounds nuw i8, ptr %i.a, i64 240
  %.sroa.423.0..sroa_idx.i1171 = getelementptr inbounds nuw i8, ptr %i.a, i64 256
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.521.0..sroa_idx.i1170, i8 0, i64 16, i1 false), !alias.scope !1245
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.423.0..sroa_idx.i1171, align 8, !alias.scope !1245
  %.sroa.524.0..sroa_idx.i1172 = getelementptr inbounds nuw i8, ptr %i.a, i64 264
  %.sroa.426.0..sroa_idx.i1173 = getelementptr inbounds nuw i8, ptr %i.a, i64 280
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.524.0..sroa_idx.i1172, i8 0, i64 16, i1 false), !alias.scope !1245
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.426.0..sroa_idx.i1173, align 8, !alias.scope !1245
  %.sroa.527.0..sroa_idx.i1174 = getelementptr inbounds nuw i8, ptr %i.a, i64 288
  store i64 0, ptr %.sroa.527.0..sroa_idx.i1174, align 8, !alias.scope !1245
  %i.en = getelementptr inbounds nuw i8, ptr %i.a, i64 624
  store i32 -1, ptr %i.en, align 8, !alias.scope !1245
  %i.eo = getelementptr inbounds nuw i8, ptr %i.a, i64 592
  store ptr null, ptr %i.eo, align 8, !alias.scope !1245
  %i.ep = getelementptr inbounds nuw i8, ptr %i.a, i64 296
  store i64 0, ptr %i.ep, align 8, !alias.scope !1245
  %.sroa.429.0..sroa_idx.i1175 = getelementptr inbounds nuw i8, ptr %i.a, i64 304
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.429.0..sroa_idx.i1175, align 8, !alias.scope !1245
  %.sroa.530.0..sroa_idx.i1176 = getelementptr inbounds nuw i8, ptr %i.a, i64 312
  %.sroa.432.0..sroa_idx.i1177 = getelementptr inbounds nuw i8, ptr %i.a, i64 328
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.530.0..sroa_idx.i1176, i8 0, i64 16, i1 false), !alias.scope !1245
  store ptr inttoptr (i64 4 to ptr), ptr %.sroa.432.0..sroa_idx.i1177, align 8, !alias.scope !1245
  %.sroa.533.0..sroa_idx.i1178 = getelementptr inbounds nuw i8, ptr %i.a, i64 336
  store i64 0, ptr %i.a, align 8, !alias.scope !1245
  %.sroa.435.0..sroa_idx.i1179 = getelementptr inbounds nuw i8, ptr %i.a, i64 352
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.533.0..sroa_idx.i1178, i8 0, i64 16, i1 false), !alias.scope !1245
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.435.0..sroa_idx.i1179, align 8, !alias.scope !1245
  %.sroa.536.0..sroa_idx.i1180 = getelementptr inbounds nuw i8, ptr %i.a, i64 360
  store i64 0, ptr %.sroa.536.0..sroa_idx.i1180, align 8, !alias.scope !1245
  %i.eq = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 0, ptr %i.eq, align 8, !alias.scope !1245
  %i.er = getelementptr inbounds nuw i8, ptr %i.a, i64 628
  store i32 -1, ptr %i.er, align 4, !alias.scope !1245
  %i.es = getelementptr inbounds nuw i8, ptr %i.a, i64 368
  store i64 0, ptr %i.es, align 8, !alias.scope !1245
  %.sroa.440.0..sroa_idx.i1181 = getelementptr inbounds nuw i8, ptr %i.a, i64 376
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.440.0..sroa_idx.i1181, align 8, !alias.scope !1245
  %.sroa.541.0..sroa_idx.i1182 = getelementptr inbounds nuw i8, ptr %i.a, i64 384
  %.sroa.443.0..sroa_idx.i1183 = getelementptr inbounds nuw i8, ptr %i.a, i64 400
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.541.0..sroa_idx.i1182, i8 0, i64 16, i1 false), !alias.scope !1245
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.443.0..sroa_idx.i1183, align 8, !alias.scope !1245
  %.sroa.544.0..sroa_idx.i1184 = getelementptr inbounds nuw i8, ptr %i.a, i64 408
  %.sroa.446.0..sroa_idx.i1185 = getelementptr inbounds nuw i8, ptr %i.a, i64 424
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.544.0..sroa_idx.i1184, i8 0, i64 16, i1 false), !alias.scope !1245
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.446.0..sroa_idx.i1185, align 8, !alias.scope !1245
  %.sroa.547.0..sroa_idx.i1186 = getelementptr inbounds nuw i8, ptr %i.a, i64 432
  store i64 0, ptr %.sroa.547.0..sroa_idx.i1186, align 8, !alias.scope !1245
  %.sroa.3.0..sroa_idx.i1187 = getelementptr inbounds nuw i8, ptr %i.a, i64 552
  store i64 -2, ptr %.sroa.3.0..sroa_idx.i1187, align 8, !alias.scope !1245
  %i.et = getelementptr inbounds nuw i8, ptr %i.a, i64 608
  store ptr null, ptr %i.et, align 8, !alias.scope !1245
  %i.eu = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store i64 0, ptr %i.eu, align 8, !alias.scope !1245
  %i.ev = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  store i64 0, ptr %i.ev, align 8, !alias.scope !1245
  %i.ew = getelementptr inbounds nuw i8, ptr %i.a, i64 440 ; 2 uses
  store i64 0, ptr %i.ew, align 8, !alias.scope !1245
  %.sroa.459.0..sroa_idx.i1188 = getelementptr inbounds nuw i8, ptr %i.a, i64 448 ; 2 uses
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.459.0..sroa_idx.i1188, align 8, !alias.scope !1245
  %.sroa.560.0..sroa_idx.i1189 = getelementptr inbounds nuw i8, ptr %i.a, i64 456 ; 2 uses
  %.sroa.661.sroa.4.0..sroa.661.0..sroa_idx.sroa_idx.i1190 = getelementptr inbounds nuw i8, ptr %i.a, i64 472 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.560.0..sroa_idx.i1189, i8 0, i64 16, i1 false), !alias.scope !1245
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.661.sroa.4.0..sroa.661.0..sroa_idx.sroa_idx.i1190, align 8, !alias.scope !1245
  %.sroa.661.sroa.5.0..sroa.661.0..sroa_idx.sroa_idx.i1191 = getelementptr inbounds nuw i8, ptr %i.a, i64 480 ; 3 uses
  store i64 0, ptr %.sroa.661.sroa.5.0..sroa.661.0..sroa_idx.sroa_idx.i1191, align 8, !alias.scope !1245
  store ptr @117, ptr %i.ef, align 8
  store i64 8, ptr %i.eg, align 8
  store i32 4, ptr %i.em, align 8
  store i8 1, ptr %i.ej, align 4
  call void @llvm.experimental.noalias.scope.decl(metadata !1246)
  call void @llvm.experimental.noalias.scope.decl(metadata !1247)
  call void @llvm.experimental.noalias.scope.decl(metadata !1248)
  call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #29, !noalias !1249
  %i.ex = call noundef align 8 dereferenceable_or_null(24) ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) 24, i64 noundef 8) #29, !noalias !1249 ; 5 uses
  %i.ey = icmp eq ptr %i.ex, null
  br i1 %i.ey, label %bb.l, label %_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtNtNtCsgNwXemyrBWj_12clap_builder4util9any_value10AnyValueIdE8push_mutCsdit6BuOJVAc_5uu_od.exit.i.i.i, !prof !12

bb.l:                                             ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsgNwXemyrBWj_12clap_builder7builder10styled_str9StyledStrEECsdit6BuOJVAc_5uu_od.exit1158
  call void @_RNvNtCs7tKScEop1B6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 24) #32, !noalias !1249
  unreachable

_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtNtNtCsgNwXemyrBWj_12clap_builder4util9any_value10AnyValueIdE8push_mutCsdit6BuOJVAc_5uu_od.exit.i.i.i: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsgNwXemyrBWj_12clap_builder7builder10styled_str9StyledStrEECsdit6BuOJVAc_5uu_od.exit1158
  store i64 1, ptr %i.ex, align 8, !noalias !1250
  %.sroa.413.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ex, i64 8
  store i64 1, ptr %.sroa.413.0..sroa_idx.i.i, align 8, !noalias !1250
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ex, i64 16
  store i8 3, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !noalias !1250
  %i.ez = ptrtoint ptr %i.ex to i64
  call void @_RNvMs4_NtCs7tKScEop1B6_5alloc7raw_vecINtB5_6RawVecNtNtNtCsgNwXemyrBWj_12clap_builder4util9any_value10AnyValueIdE8grow_oneBS_(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.ew) #28, !noalias !1251
  %.pre.i.i.i = load ptr, ptr %.sroa.459.0..sroa_idx.i1188, align 8, !alias.scope !1252 ; 2 uses
  store i64 -5875614554295535572, ptr %.pre.i.i.i, align 8, !noalias !1253
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.pre.i.i.i, i64 8
  store i64 3467203893602029906, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !1253
  store i64 1, ptr %.sroa.560.0..sroa_idx.i1189, align 8, !alias.scope !1252
  %i.fa = getelementptr inbounds nuw i8, ptr %i.a, i64 464 ; 2 uses
  %i.fb = load i64, ptr %.sroa.661.sroa.5.0..sroa.661.0..sroa_idx.sroa_idx.i1191, align 8, !alias.scope !1254, !noundef !5 ; 3 uses
  %i.fc = load i64, ptr %i.fa, align 8, !range !6, !alias.scope !1254, !noundef !5
  %i.fd = icmp eq i64 %i.fb, %i.fc
  br i1 %i.fd, label %bb.m, label %_RINvMs_NtNtCsgNwXemyrBWj_12clap_builder7builder3argNtB5_3Arg10value_hintNtNtB7_10value_hint9ValueHintECsdit6BuOJVAc_5uu_od.exit

bb.m:                                             ; preds = %_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtNtNtCsgNwXemyrBWj_12clap_builder4util9any_value10AnyValueIdE8push_mutCsdit6BuOJVAc_5uu_od.exit.i.i.i
  call void @_RNvMs4_NtCs7tKScEop1B6_5alloc7raw_vecINtB5_6RawVecNtNtNtCsgNwXemyrBWj_12clap_builder4util9any_value8AnyValueE8grow_oneBS_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.fa) #28, !noalias !1255
  br label %_RINvMs_NtNtCsgNwXemyrBWj_12clap_builder7builder3argNtB5_3Arg10value_hintNtNtB7_10value_hint9ValueHintECsdit6BuOJVAc_5uu_od.exit

_RINvMs_NtNtCsgNwXemyrBWj_12clap_builder7builder3argNtB5_3Arg10value_hintNtNtB7_10value_hint9ValueHintECsdit6BuOJVAc_5uu_od.exit: ; preds = %_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtNtNtCsgNwXemyrBWj_12clap_builder4util9any_value10AnyValueIdE8push_mutCsdit6BuOJVAc_5uu_od.exit.i.i.i, %bb.m
  %i.fe = load ptr, ptr %.sroa.661.sroa.4.0..sroa.661.0..sroa_idx.sroa_idx.i1190, align 8, !alias.scope !1254, !nonnull !5, !noundef !5
  %i.ff = getelementptr inbounds nuw [32 x i8], ptr %i.fe, i64 %i.fb ; 4 uses
  store i64 %i.ez, ptr %i.ff, align 8, !noalias !1256
  %.sroa.7.0..sroa_idx3.i.i = getelementptr inbounds nuw i8, ptr %i.ff, i64 8
  store i64 ptrtoint (ptr @9 to i64), ptr %.sroa.7.0..sroa_idx3.i.i, align 8, !noalias !1256
  %.sroa.10.0..sroa_idx5.i.i = getelementptr inbounds nuw i8, ptr %i.ff, i64 16
  store i64 -5875614554295535572, ptr %.sroa.10.0..sroa_idx5.i.i, align 8, !noalias !1256
  %.sroa.13.0..sroa_idx7.i.i = getelementptr inbounds nuw i8, ptr %i.ff, i64 24
  store i64 3467203893602029906, ptr %.sroa.13.0..sroa_idx7.i.i, align 8, !noalias !1256
  %i.fg = add i64 %i.fb, 1
  store i64 %i.fg, ptr %.sroa.661.sroa.5.0..sroa.661.0..sroa_idx.sroa_idx.i1191, align 8, !alias.scope !1254
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(640) %i.b, ptr noundef nonnull align 8 dereferenceable(640) %i.a, i64 640, i1 false), !alias.scope !1257
  call void @_RNvMNtNtCsgNwXemyrBWj_12clap_builder7builder7commandNtB2_7Command12arg_internal(ptr noalias nofree noundef nonnull align 8 dereferenceable(712) %i.cq, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(640) %i.b) #29
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(712) %0, ptr noundef nonnull align 8 dereferenceable(712) %i.cq, i64 712, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.experimental.noalias.scope.decl(metadata !1258)
  %.val.i1192 = load i64, ptr %i.bj, align 8, !range !6, !alias.scope !1258, !noundef !5 ; 2 uses
  %i.fh = icmp eq i64 %.val.i1192, 0
  br i1 %i.fh, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsdit6BuOJVAc_5uu_od.exit, label %bb.n

bb.n:                                             ; preds = %_RINvMs_NtNtCsgNwXemyrBWj_12clap_builder7builder3argNtB5_3Arg10value_hintNtNtB7_10value_hint9ValueHintECsdit6BuOJVAc_5uu_od.exit
  %.val1.i1193 = load ptr, ptr %i.ct, align 8, !alias.scope !1258, !nonnull !5, !noundef !5
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i1193, i64 noundef %.val.i1192, i64 noundef range(i64 1, -9223372036854775807) 1) #29, !noalias !1258
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsdit6BuOJVAc_5uu_od.exit

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsdit6BuOJVAc_5uu_od.exit: ; preds = %_RINvMs_NtNtCsgNwXemyrBWj_12clap_builder7builder3argNtB5_3Arg10value_hintNtNtB7_10value_hint9ValueHintECsdit6BuOJVAc_5uu_od.exit, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bj)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cq)
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define void @_RNvMCsdit6BuOJVAc_5uu_odNtB2_9OdOptions3new(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([120 x i8]) align 8 captures(none) dereferenceable(120) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %2, i64 noundef range(i64 0, 384307168202282326) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [16 x i8], align 8                ; 4 uses
  %i.c = alloca [16 x i8], align 8                ; 4 uses
  %i.d = alloca [16 x i8], align 8                ; 6 uses
  %i.e = alloca [16 x i8], align 8                ; 4 uses
  %i.f = alloca [16 x i8], align 8                ; 4 uses
  %i.g = alloca [16 x i8], align 8                ; 6 uses
  %i.h = alloca [24 x i8], align 8                ; 4 uses
  %i.i = alloca [32 x i8], align 8                ; 6 uses
  %i.j = alloca [40 x i8], align 8                ; 4 uses
  %i.k = alloca [16 x i8], align 8                ; 5 uses
  %i.l = alloca [24 x i8], align 8                ; 8 uses
  %i.m = alloca [32 x i8], align 8                ; 7 uses
  %.sroa.20.i = alloca [24 x i8], align 8         ; 18 uses
  %i.n = alloca [24 x i8], align 8                ; 12 uses
  %i.o = alloca [24 x i8], align 8                ; 10 uses
  %i.p = alloca [32 x i8], align 8                ; 7 uses
  %i.q = alloca [32 x i8], align 8                ; 7 uses
  %i.r = alloca [24 x i8], align 8                ; 18 uses
  %i.s = alloca [24 x i8], align 8                ; 6 uses
  %i.t = alloca [24 x i8], align 8                ; 7 uses
  %i.u = alloca [24 x i8], align 8                ; 8 uses
  %i.v = alloca [24 x i8], align 8                ; 6 uses
  %i.w = alloca [16 x i8], align 8                ; 6 uses
  %i.x = alloca [24 x i8], align 8                ; 10 uses
  %i.y = alloca [24 x i8], align 8                ; 5 uses
  %i.z = alloca [32 x i8], align 8                ; 7 uses
  %i.aa = alloca [24 x i8], align 8               ; 6 uses
  %i.ab = alloca [32 x i8], align 8               ; 7 uses
  %i.ac = alloca [24 x i8], align 8               ; 6 uses
  %i.ad = alloca [24 x i8], align 8               ; 5 uses
  %i.ae = alloca [24 x i8], align 8               ; 5 uses
  %i.af = alloca [32 x i8], align 8               ; 7 uses
  %i.ag = alloca [24 x i8], align 8               ; 6 uses
  %i.ah = alloca [24 x i8], align 8               ; 5 uses
  %i.ai = alloca [24 x i8], align 8               ; 5 uses
  %i.aj = alloca [24 x i8], align 8               ; 6 uses
  %i.ak = alloca [24 x i8], align 8               ; 6 uses
  %i.al = alloca [32 x i8], align 8               ; 7 uses
  %i.am = alloca [128 x i8], align 8              ; 8 uses
  %i.an = alloca [8 x i8], align 8                ; 5 uses
  %i.ao = alloca [24 x i8], align 8               ; 10 uses
  %i.ap = alloca [24 x i8], align 8               ; 7 uses
  %i.aq = alloca [24 x i8], align 8               ; 16 uses
  %i.ar = alloca [32 x i8], align 8               ; 6 uses
  %i.as = alloca [40 x i8], align 8               ; 4 uses
  %i.at = alloca [16 x i8], align 8               ; 5 uses
  %.sroa.0416 = alloca [24 x i8], align 8         ; 4 uses
  %i.au = alloca [24 x i8], align 8               ; 3 uses
  %i.av = alloca [24 x i8], align 8               ; 6 uses
  %i.aw = alloca [40 x i8], align 8               ; 4 uses
  %i.ax = alloca [20 x i8], align 1               ; 4 uses
  %i.ay = alloca [20 x i8], align 1               ; 4 uses
  %i.az = alloca [24 x i8], align 8               ; 3 uses
  %i.ba = alloca [24 x i8], align 8               ; 6 uses
  %i.bb = alloca [40 x i8], align 8               ; 6 uses
  %i.bc = alloca [32 x i8], align 8               ; 20 uses
  %i.bd = alloca [48 x i8], align 8               ; 63 uses
  %i.be = alloca [24 x i8], align 8               ; 3 uses
  %i.bf = alloca [40 x i8], align 8               ; 6 uses
  %i.bg = alloca [24 x i8], align 8               ; 8 uses
  %i.bh = alloca [24 x i8], align 8               ; 6 uses
  %i.bi = alloca [16 x i8], align 8               ; 6 uses
  %i.bj = alloca [16 x i8], align 8               ; 6 uses
  %i.bk = alloca [24 x i8], align 8               ; 10 uses
  %i.bl = alloca [24 x i8], align 8               ; 7 uses
  %i.bm = alloca [24 x i8], align 8               ; 6 uses
  %i.bn = alloca [16 x i8], align 8               ; 5 uses
  %i.bo = alloca [24 x i8], align 8               ; 8 uses
  %i.bp = alloca [24 x i8], align 8               ; 6 uses
  %i.bq = alloca [16 x i8], align 8               ; 6 uses
  %i.br = alloca [24 x i8], align 8               ; 6 uses
  %i.bs = alloca [16 x i8], align 8               ; 6 uses
  %i.bt = alloca [24 x i8], align 8               ; 13 uses
  %i.bu = alloca [24 x i8], align 8               ; 7 uses
  %i.bv = alloca [16 x i8], align 8               ; 5 uses
  %i.bw = alloca [16 x i8], align 8               ; 5 uses
  %i.bx = alloca [8 x i8], align 8                ; 4 uses
  %i.by = alloca [8 x i8], align 8                ; 6 uses
  %i.bz = alloca [24 x i8], align 8               ; 8 uses
  %i.ca = alloca [24 x i8], align 8               ; 5 uses
  %i.cb = alloca [16 x i8], align 8               ; 6 uses
  %i.cc = alloca [16 x i8], align 8               ; 6 uses
  %i.cd = alloca [32 x i8], align 8               ; 7 uses
  %i.ce = alloca [24 x i8], align 8               ; 6 uses
  %i.cf = alloca [16 x i8], align 8               ; 6 uses
  %i.cg = alloca [16 x i8], align 8               ; 6 uses
  %i.ch = alloca [24 x i8], align 8               ; 6 uses
  %i.ci = alloca [24 x i8], align 8               ; 13 uses
  %i.cj = alloca [32 x i8], align 8               ; 7 uses
  %i.ck = alloca [24 x i8], align 8               ; 11 uses
  %i.cl = alloca [24 x i8], align 8               ; 7 uses
  %i.cm = alloca [24 x i8], align 8               ; 8 uses
  %i.cn = alloca [24 x i8], align 8               ; 6 uses
  %i.co = alloca [16 x i8], align 8               ; 6 uses
  %i.cp = alloca [24 x i8], align 8               ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bf)
  call fastcc void @_RINvMs0_NtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matchesNtB6_10ArgMatches11try_get_oneNtNtCs7tKScEop1B6_5alloc6string6StringECsdit6BuOJVAc_5uu_od(ptr noalias nofree noundef align 8 captures(none) dereferenceable(40) %i.bf, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @61, i64 noundef 6) #29
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1529)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.at)
  store ptr @61, ptr %i.at, align 8, !noalias !1530
  %i.cq = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  store i64 6, ptr %i.cq, align 8, !noalias !1530
  call void @llvm.lifetime.start.p0(ptr nonnull %i.as), !noalias !1530
  %i.cr = load i64, ptr %i.bf, align 8, !range !7, !alias.scope !1529, !noundef !5
  %.not.i = icmp eq i64 %i.cr, 2
  br i1 %.not.i, label %_RINvMNtNtCsgNwXemyrBWj_12clap_builder6parser5errorNtB3_12MatchesError6unwrapINtNtCs6JMX4GRUq9U_4core6option6OptionRNtNtCs7tKScEop1B6_5alloc6string6StringEECsdit6BuOJVAc_5uu_od.exit, label %bb.b, !prof !8

bb.b:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.as, ptr noundef nonnull readonly align 8 dereferenceable(40) %i.bf, i64 40, i1 false), !noalias !1531
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ar), !noalias !1530
  store ptr %i.at, ptr %i.ar, align 8, !noalias !1530
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  store ptr @_RNvXs1i_NtCs6JMX4GRUq9U_4core3fmtReNtB6_7Display3fmtCsdit6BuOJVAc_5uu_od, ptr %.sroa.42.0..sroa_idx.i, align 8, !noalias !1530
  %i.cs = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  store ptr %i.as, ptr %i.cs, align 8, !noalias !1530
  %.sroa.46.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ar, i64 24
  store ptr @_RNvXs0_NtNtCsgNwXemyrBWj_12clap_builder6parser5errorNtB5_12MatchesErrorNtNtCs6JMX4GRUq9U_4core3fmt7Display3fmt, ptr %.sroa.46.0..sroa_idx.i, align 8, !noalias !1530
  call void @_RNvNtCs6JMX4GRUq9U_4core9panicking9panic_fmt(ptr noundef nonnull @5, ptr noundef nonnull %i.ar, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @7) #30, !noalias !1529
  unreachable

_RINvMNtNtCsgNwXemyrBWj_12clap_builder6parser5errorNtB3_12MatchesError6unwrapINtNtCs6JMX4GRUq9U_4core6option6OptionRNtNtCs7tKScEop1B6_5alloc6string6StringEECsdit6BuOJVAc_5uu_od.exit: ; preds = %bb.a
  %i.ct = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  %i.cu = load ptr, ptr %i.ct, align 8, !alias.scope !1529, !align !9, !noundef !5 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as), !noalias !1530
  call void @llvm.lifetime.end.p0(ptr nonnull %i.at)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bf)
  %.not = icmp eq ptr %i.cu, null
  br i1 %.not, label %bb.aa, label %bb.c

bb.c:                                             ; preds = %_RINvMNtNtCsgNwXemyrBWj_12clap_builder6parser5errorNtB3_12MatchesError6unwrapINtNtCs6JMX4GRUq9U_4core6option6OptionRNtNtCs7tKScEop1B6_5alloc6string6StringEECsdit6BuOJVAc_5uu_od.exit
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 8 ; 2 uses
  %i.cw = load ptr, ptr %i.cv, align 8, !nonnull !5, !noundef !5 ; 4 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cu, i64 16 ; 2 uses
  %i.cy = load i64, ptr %i.cx, align 8, !noundef !5
  switch i64 %i.cy, label %bb.f [
    i64 6, label %bb.d
    i64 3, label %bb.e
  ]

bb.d:                                             ; preds = %bb.c
  %i.cz = load i32, ptr %i.cw, align 1
  %i.da = xor i32 %i.cz, 1953786220
  %i.db = getelementptr i8, ptr %i.cw, i64 4
  %i.dc = load i16, ptr %i.db, align 1
  %i.dd = zext i16 %i.dc to i32
  %i.de = xor i32 %i.dd, 25964
  %i.df = or i32 %i.da, %i.de
  %i.dg = icmp ne i32 %i.df, 0
  %i.dh = zext i1 %i.dg to i32
  %i.di = icmp eq i32 %i.dh, 0
  br i1 %i.di, label %bb.aa, label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.dj = load i16, ptr %i.cw, align 1
  %i.dk = xor i16 %i.dj, 26978
  %i.dl = getelementptr i8, ptr %i.cw, i64 2
  %i.dm = load i8, ptr %i.dl, align 1
  %i.dn = zext i8 %i.dm to i16
  %i.do = xor i16 %i.dn, 103
  %i.dp = or i16 %i.dk, %i.do
  %i.dq = icmp ne i16 %i.dp, 0
  %i.dr = zext i1 %i.dq to i32
  %i.ds = icmp eq i32 %i.dr, 0
  br i1 %i.ds, label %bb.aa, label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.c, %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cp)
  store i64 0, ptr %i.cp, align 8
  %.sroa.4114.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cp, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.4114.0..sroa_idx, align 8
  %.sroa.5115.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cp, i64 16
  store i64 0, ptr %.sroa.5115.0..sroa_idx, align 8
  %i.dt = load ptr, ptr %i.cv, align 8, !nonnull !5, !noundef !5
  %i.du = load i64, ptr %i.cx, align 8, !noundef !5 ; 16 uses
  %.not.i196 = icmp slt i64 %i.du, 0
  br i1 %.not.i196, label %bb.h, label %bb.g, !prof !11

bb.g:                                             ; preds = %bb.f
  %i.dv = icmp eq i64 %i.du, 0
  br i1 %i.dv, label %.thread, label %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i

_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i: ; preds = %bb.g
  tail call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #29, !noalias !1532
  %i.dw = tail call noundef ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.du, i64 noundef range(i64 1, 9) 1) #29, !noalias !1532 ; 18 uses
  %i.dx = icmp eq ptr %i.dw, null
  br i1 %i.dx, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.f, %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i
  %.sroa.4382.0.ph = phi i64 [ 1, %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i ], [ 0, %bb.f ]
  tail call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4382.0.ph, i64 %i.du) #32
  unreachable

bb.i:                                             ; preds = %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.dw, ptr nonnull align 1 %i.dt, i64 %i.du, i1 false)
  %cond501 = icmp eq i64 %i.du, 1
  %i.dy = load i8, ptr %i.dw, align 1, !alias.scope !1533 ; 2 uses
  br i1 %cond501, label %bb.j, label %thread-pre-split.i

bb.j:                                             ; preds = %bb.i
  switch i8 %i.dy, label %bb.q [
    i8 43, label %.thread
    i8 45, label %.thread
  ]

thread-pre-split.i:                               ; preds = %bb.i
  switch i8 %i.dy, label %bb.q [
    i8 43, label %bb.k
    i8 45, label %bb.l
  ]

bb.k:                                             ; preds = %thread-pre-split.i
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dw, i64 1
  %i.ea = add nsw i64 %i.du, -1
  br label %bb.q

bb.l:                                             ; preds = %thread-pre-split.i
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dw, i64 1 ; 2 uses
  %i.ec = add nsw i64 %i.du, -1                   ; 3 uses
  %i.ed = icmp samesign ult i64 %i.du, 17
  br i1 %i.ed, label %.preheader114.i, label %.lr.ph.i

.preheader114.i:                                  ; preds = %bb.l
  %.not103137.i = icmp eq i64 %i.ec, 0
  br i1 %.not103137.i, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit, label %.lr.ph141.i

.lr.ph.i:                                         ; preds = %bb.l, %bb.o
  %.sroa.0.1136.i = phi ptr [ %i.ee, %bb.o ], [ %i.eb, %bb.l ] ; 2 uses
  %.sroa.26.1135.i = phi i64 [ %i.ef, %bb.o ], [ %i.ec, %bb.l ]
  %.sroa.084.0134.i = phi i64 [ %i.eq, %bb.o ], [ 0, %bb.l ]
  %i.ee = getelementptr inbounds nuw i8, ptr %.sroa.0.1136.i, i64 1
  %i.ef = add nsw i64 %.sroa.26.1135.i, -1        ; 2 uses
end_hunk_0
begin_hunk_1_@_RNvMCsdit6BuOJVAc_5uu_odNtB2_9OdOptions3new:bb.a
  %i.fq = add nsw i32 %i.fp, -48                  ; 2 uses
  %i.fr = icmp ult i32 %i.fq, 10
  br i1 %i.fr, label %bb.u, label %.thread

bb.u:                                             ; preds = %.lr.ph150.i
  %i.fs = mul i64 %.sroa.084.4147.i, 10
  %i.ft = add nsw i64 %.sroa.26.4148.i, -1        ; 2 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %.sroa.0.4149.i, i64 1
  %i.fv = zext nneg i32 %i.fq to i64
  %i.fw = add i64 %i.fs, %i.fv                    ; 2 uses
  %.not105.i = icmp eq i64 %i.ft, 0
  br i1 %.not105.i, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit, label %.lr.ph150.i

.thread:                                          ; preds = %.lr.ph.i, %bb.n, %bb.m, %.lr.ph141.i, %.preheader111.i, %bb.r, %bb.s, %.lr.ph150.i, %bb.j, %bb.j, %bb.g
  %.ph = phi ptr [ inttoptr (i64 1 to ptr), %bb.g ], [ %i.dw, %.preheader111.i ], [ %i.dw, %.lr.ph150.i ], [ %i.dw, %bb.j ], [ %i.dw, %.lr.ph141.i ], [ %i.dw, %bb.j ], [ %i.dw, %bb.s ], [ %i.dw, %bb.r ], [ %i.dw, %bb.m ], [ %i.dw, %bb.n ], [ %i.dw, %.lr.ph.i ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.co)
  call void @_RNvXs2_NtNtCs6JMX4GRUq9U_4core3num11float_parsedNtNtNtB9_3str6traits7FromStr8from_str(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.co, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.ph, i64 noundef %i.du) #28
  %i.fx = load i8, ptr %i.co, align 8, !range !24, !noundef !5
  %i.fy = trunc nuw i8 %i.fx to i1
  br i1 %i.fy, label %bb.x, label %bb.y

_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit: ; preds = %bb.o, %bb.p, %bb.t, %bb.u, %.preheader.i, %.preheader114.i
  %.sroa.15349.0 = phi i64 [ %i.ez, %bb.p ], [ 0, %.preheader114.i ], [ %i.fw, %bb.u ], [ 0, %.preheader.i ], [ %i.fn, %bb.t ], [ %i.eq, %bb.o ]
  call fastcc void @_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setRexECsdit6BuOJVAc_5uu_od(ptr noalias nofree noundef align 8 dereferenceable(24) %i.cp, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @61, i64 noundef 6, i64 noundef %.sroa.15349.0) #29
  br label %bb.v

bb.v:                                             ; preds = %bb.y, %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit
  %i.fz = phi ptr [ %.ph, %bb.y ], [ %i.dw, %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cm)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cm, ptr noundef nonnull align 8 dereferenceable(24) %i.cp, i64 24, i1 false)
  call void @_RNvNtNtCsh036I4OHgIr_6uucore4mods6locale21get_message_with_args(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.be, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @118, i64 noundef 23, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.cm) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cm)
  %i.ga = icmp eq i64 %i.du, 0
  br i1 %i.ga, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsdit6BuOJVAc_5uu_od.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %i.fz, i64 noundef %i.du, i64 noundef range(i64 1, -9223372036854775807) 1) #29, !noalias !1534
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsdit6BuOJVAc_5uu_od.exit

bb.x:                                             ; preds = %.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %i.co)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cn)
  store i64 %i.du, ptr %i.cn, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cn, i64 8
  store ptr %.ph, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cn, i64 16
  store i64 %i.du, ptr %.sroa.8.0..sroa_idx, align 8
  call fastcc void @_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setReNtNtCs7tKScEop1B6_5alloc6string6StringECsdit6BuOJVAc_5uu_od(ptr noalias nofree noundef align 8 dereferenceable(24) %i.cp, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @61, i64 noundef 6, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.cn) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cn)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cm)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cm, ptr noundef nonnull align 8 dereferenceable(24) %i.cp, i64 24, i1 false)
  call void @_RNvNtNtCsh036I4OHgIr_6uucore4mods6locale21get_message_with_args(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.be, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @118, i64 noundef 23, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.cm) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cm)
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsdit6BuOJVAc_5uu_od.exit

bb.y:                                             ; preds = %.thread
  %i.gb = getelementptr inbounds nuw i8, ptr %i.co, i64 8
  %i.gc = load double, ptr %i.gb, align 8, !noundef !5
  call fastcc void @_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setRedECsdit6BuOJVAc_5uu_od(ptr noalias nofree noundef align 8 dereferenceable(24) %i.cp, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @61, i64 noundef 6, double noundef %i.gc) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %i.co)
  br label %bb.v

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsdit6BuOJVAc_5uu_od.exit: ; preds = %bb.w, %bb.v, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cp)
  call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #29, !noalias !1535
  %i.gd = call noundef align 8 dereferenceable_or_null(32) ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) 32, i64 noundef 8) #29, !noalias !1535 ; 4 uses
  %i.ge = icmp eq ptr %i.gd, null
  br i1 %i.ge, label %bb.z, label %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit, !prof !12

bb.z:                                             ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsdit6BuOJVAc_5uu_od.exit
  call void @_RNvNtCs7tKScEop1B6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 32) #32, !noalias !1535
  unreachable

_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsdit6BuOJVAc_5uu_od.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.gd, ptr noundef nonnull align 8 dereferenceable(24) %i.be, i64 24, i1 false)
  %.sroa.4386.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.gd, i64 24
  store i32 1, ptr %.sroa.4386.0..sroa_idx, align 8
  %i.gf = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.gd, ptr %i.gf, align 8
  %i.gg = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr @27, ptr %i.gg, align 8
  store i64 2, ptr %0, align 8
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VecNtNtBG_6string6StringEECsdit6BuOJVAc_5uu_od.exit

bb.aa:                                            ; preds = %bb.d, %bb.e, %_RINvMNtNtCsgNwXemyrBWj_12clap_builder6parser5errorNtB3_12MatchesError6unwrapINtNtCs6JMX4GRUq9U_4core6option6OptionRNtNtCs7tKScEop1B6_5alloc6string6StringEECsdit6BuOJVAc_5uu_od.exit
  %.sroa.0.1 = phi i8 [ 2, %_RINvMNtNtCsgNwXemyrBWj_12clap_builder6parser5errorNtB3_12MatchesError6unwrapINtNtCs6JMX4GRUq9U_4core6option6OptionRNtNtCs7tKScEop1B6_5alloc6string6StringEECsdit6BuOJVAc_5uu_od.exit ], [ 0, %bb.d ], [ 1, %bb.e ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cl)
  call fastcc void @_RNvCsdit6BuOJVAc_5uu_od18parse_bytes_option(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.cl, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %2, i64 noundef %3, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @56, i64 noundef 10, i32 noundef 106) #29
  %i.gh = load i64, ptr %i.cl, align 8, !range !15, !noundef !5
  %i.gi = trunc nuw i64 %i.gh to i1
  %i.gj = getelementptr inbounds nuw i8, ptr %i.cl, i64 8 ; 2 uses
  br i1 %i.gi, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.gk = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.gl = load <2 x ptr>, ptr %i.gj, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cl)
  store <2 x ptr> %i.gl, ptr %i.gk, align 8
  store i64 2, ptr %0, align 8
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VecNtNtBG_6string6StringEECsdit6BuOJVAc_5uu_od.exit

bb.ac:                                            ; preds = %bb.aa
  %i.gm = getelementptr inbounds nuw i8, ptr %i.cl, i64 16
  %i.gn = load i64, ptr %i.gj, align 8, !range !15, !noundef !5
  %i.go = load i64, ptr %i.gm, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cl)
  %i.gp = trunc nuw i64 %i.gn to i1
  %. = select i1 %i.gp, i64 %i.go, i64 0
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aq), !noalias !1536
  call void @_RNvXNtCsdit6BuOJVAc_5uu_od12parse_inputsNtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches10ArgMatchesNtB2_15CommandLineOpts6inputs(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.aq, ptr noundef nonnull readonly %1) #31, !noalias !1536
  %i.gq = tail call noundef i8 @_RNvMNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matchesNtB2_10ArgMatches12value_source(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @115, i64 noundef 11) #29, !noalias !1537
  %i.gr = icmp eq i8 %i.gq, 2
  br i1 %i.gr, label %bb.ad, label %_RNvXNtCsdit6BuOJVAc_5uu_od12parse_inputsNtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches10ArgMatchesNtB2_15CommandLineOpts12opts_present.exit.i

_RNvXNtCsdit6BuOJVAc_5uu_od12parse_inputsNtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches10ArgMatchesNtB2_15CommandLineOpts12opts_present.exit.i: ; preds = %bb.ac
  %i.gs = getelementptr inbounds nuw i8, ptr %i.aq, i64 16 ; 3 uses
  %i.gt = load i64, ptr %i.gs, align 8, !noalias !1536, !noundef !5 ; 10 uses
  %i.gu = icmp ult i64 %i.gt, 576460752303423488
  tail call void @llvm.assume(i1 %i.gu)
  %.off.i = add nsw i64 %i.gt, -1                 ; 2 uses
  %switch.i = icmp ult i64 %.off.i, 2
  br i1 %switch.i, label %bb.cg, label %thread-pre-split.i198

bb.ad:                                            ; preds = %bb.ac
  %i.gv = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %i.gw = load ptr, ptr %i.gv, align 8, !noalias !1536, !nonnull !5, !noundef !5 ; 14 uses
  %i.gx = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  %i.gy = load i64, ptr %i.gx, align 8, !noalias !1536, !noundef !5
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1538)
  switch i64 %i.gy, label %bb.bm [
    i64 0, label %bb.ae
    i64 1, label %bb.ag
    i64 2, label %bb.ah
    i64 3, label %bb.ai
  ]

bb.ae:                                            ; preds = %bb.ad
  tail call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #29, !noalias !1539
  %i.gz = tail call noundef align 8 dereferenceable_or_null(24) ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) 24, i64 noundef 8) #29, !noalias !1539 ; 5 uses
  %i.ha = icmp eq ptr %i.gz, null
  br i1 %i.ha, label %bb.af, label %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit.i.i, !prof !12

bb.af:                                            ; preds = %bb.ae
  tail call void @_RNvNtCs7tKScEop1B6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 24) #32, !noalias !1539
  unreachable

_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit.i.i: ; preds = %bb.ae
  tail call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #29, !noalias !1540
  %i.hb = tail call noundef dereferenceable_or_null(1) ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) 1, i64 noundef range(i64 1, 9) 1) #29, !noalias !1540 ; 3 uses
  %i.hc = icmp eq ptr %i.hb, null
  br i1 %i.hc, label %bb.aj, label %bb.ak

bb.ag:                                            ; preds = %bb.ad
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj), !noalias !1539
  %i.hd = load ptr, ptr %i.gw, align 8, !alias.scope !1538, !noalias !1536, !nonnull !5, !noundef !5 ; 2 uses
  %i.he = getelementptr i8, ptr %i.gw, i64 8
  %i.hf = load i64, ptr %i.he, align 8, !alias.scope !1538, !noalias !1536, !noundef !5 ; 8 uses
  call fastcc void @_RNvNtCsdit6BuOJVAc_5uu_od12parse_inputs20parse_offset_operand(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.aj, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.hd, i64 noundef %i.hf) #29, !noalias !1539
  %i.hg = load i64, ptr %i.aj, align 8, !range !14, !noalias !1539, !noundef !5 ; 3 uses
  %.not132.i.i = icmp eq i64 %i.hg, -1
  br i1 %.not132.i.i, label %bb.aq, label %bb.al

bb.ah:                                            ; preds = %bb.ad
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai), !noalias !1539
  %i.hh = load ptr, ptr %i.gw, align 8, !alias.scope !1538, !noalias !1536, !nonnull !5, !noundef !5 ; 2 uses
  %i.hi = getelementptr inbounds nuw i8, ptr %i.gw, i64 8
  %i.hj = load i64, ptr %i.hi, align 8, !alias.scope !1538, !noalias !1536, !noundef !5 ; 8 uses
  call fastcc void @_RNvNtCsdit6BuOJVAc_5uu_od12parse_inputs20parse_offset_operand(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.ai, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.hh, i64 noundef %i.hj) #29, !noalias !1539
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah), !noalias !1539
  %i.hk = getelementptr inbounds nuw i8, ptr %i.gw, i64 16 ; 2 uses
  %i.hl = load ptr, ptr %i.hk, align 8, !alias.scope !1538, !noalias !1536, !nonnull !5, !noundef !5
  %i.hm = getelementptr inbounds nuw i8, ptr %i.gw, i64 24
  %i.hn = load i64, ptr %i.hm, align 8, !alias.scope !1538, !noalias !1536, !noundef !5
  call fastcc void @_RNvNtCsdit6BuOJVAc_5uu_od12parse_inputs20parse_offset_operand(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.ah, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.hl, i64 noundef %i.hn) #29, !noalias !1539
  %.sroa.0173.0.copyload.i.i = load i64, ptr %i.ai, align 8, !noalias !1539 ; 3 uses
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %.sroa.5.0.copyload.i.i = load i64, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !noalias !1539 ; 2 uses
  %.sroa.7174.24.copyload.i.i = load i64, ptr %i.ah, align 8, !noalias !1539 ; 2 uses
  %.sroa.11.24..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ah, i64 8 ; 2 uses
  %i.ho = load <2 x i64>, ptr %.sroa.11.24..sroa_idx.i.i, align 8, !noalias !1539
  %.sroa.11.24.copyload.i.i = load i64, ptr %.sroa.11.24..sroa_idx.i.i, align 8, !noalias !1539 ; 2 uses
  %.not128.i.i = icmp eq i64 %.sroa.0173.0.copyload.i.i, -1
  %.not129.i.i = icmp eq i64 %.sroa.7174.24.copyload.i.i, -1 ; 2 uses
  %or.cond.i.i = select i1 %.not128.i.i, i1 %.not129.i.i, i1 false
  br i1 %or.cond.i.i, label %bb.au, label %bb.at

bb.ai:                                            ; preds = %bb.ad
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae), !noalias !1539
  %i.hp = getelementptr inbounds nuw i8, ptr %i.gw, i64 16 ; 2 uses
  %i.hq = load ptr, ptr %i.hp, align 8, !alias.scope !1538, !noalias !1536, !nonnull !5, !noundef !5
  %i.hr = getelementptr inbounds nuw i8, ptr %i.gw, i64 24
  %i.hs = load i64, ptr %i.hr, align 8, !alias.scope !1538, !noalias !1536, !noundef !5
  call fastcc void @_RNvNtCsdit6BuOJVAc_5uu_od12parse_inputs20parse_offset_operand(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.ae, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.hq, i64 noundef %i.hs) #29, !noalias !1539
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad), !noalias !1539
  %i.ht = getelementptr inbounds nuw i8, ptr %i.gw, i64 32 ; 2 uses
  %i.hu = load ptr, ptr %i.ht, align 8, !alias.scope !1538, !noalias !1536, !nonnull !5, !noundef !5
  %i.hv = getelementptr inbounds nuw i8, ptr %i.gw, i64 40
  %i.hw = load i64, ptr %i.hv, align 8, !alias.scope !1538, !noalias !1536, !noundef !5
  call fastcc void @_RNvNtCsdit6BuOJVAc_5uu_od12parse_inputs20parse_offset_operand(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.ad, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.hu, i64 noundef %i.hw) #29, !noalias !1539
  %.sroa.0183.0.copyload.i.i = load i64, ptr %i.ae, align 8, !noalias !1539 ; 2 uses
  %.sroa.5185.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ae, i64 8 ; 2 uses
  %.sroa.5185.0.copyload.i.i = load i64, ptr %.sroa.5185.0..sroa_idx.i.i, align 8, !noalias !1539
  %.sroa.6191.24.copyload.i.i = load i64, ptr %i.ad, align 8, !noalias !1539 ; 4 uses
  %.sroa.11194.24..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 8 ; 2 uses
  %i.hx = load <2 x i64>, ptr %.sroa.11194.24..sroa_idx.i.i, align 8, !noalias !1539
  %.sroa.11194.24.copyload.i.i = load i64, ptr %.sroa.11194.24..sroa_idx.i.i, align 8, !noalias !1539 ; 2 uses
  %.not.i.i = icmp eq i64 %.sroa.0183.0.copyload.i.i, -1
  br i1 %.not.i.i, label %bb.be, label %.split118.i.i

bb.aj:                                            ; preds = %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit.i.i
  tail call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef 1, i64 1) #32, !noalias !1539
  unreachable

bb.ak:                                            ; preds = %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit.i.i
  store i8 45, ptr %i.hb, align 1, !noalias !1539
  store i64 1, ptr %i.gz, align 8, !noalias !1539
  %.sroa.445.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.gz, i64 8
  store ptr %i.hb, ptr %.sroa.445.0..sroa_idx.i.i, align 8, !noalias !1539
  %.sroa.546.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.gz, i64 16
  store i64 1, ptr %.sroa.546.0..sroa_idx.i.i, align 8, !noalias !1539
  store i64 1, ptr %i.bd, align 8
  %.sroa.0.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  store ptr %i.gz, ptr %.sroa.0.sroa.4.0..sroa_idx.i.i, align 8
  %.sroa.0.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.bd, i64 16
  store i64 1, ptr %.sroa.0.sroa.5.0..sroa_idx.i.i, align 8
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.bd, i64 32
  store i64 2, ptr %.sroa.4.0..sroa_idx.i.i, align 8
  br label %_RNvNtCsdit6BuOJVAc_5uu_od12parse_inputs24parse_inputs_traditional.exit.i

bb.al:                                            ; preds = %bb.ag
  tail call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #29, !noalias !1541
  %i.hy = tail call noundef align 8 dereferenceable_or_null(24) ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) 24, i64 noundef range(i64 1, 9) 8) #29, !noalias !1541 ; 5 uses
  %i.hz = icmp eq ptr %i.hy, null
  br i1 %i.hz, label %bb.am, label %.preheader.i.i.i.i.i

bb.am:                                            ; preds = %bb.al
  tail call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef 8, i64 24) #32, !noalias !1542
  unreachable

.preheader.i.i.i.i.i:                             ; preds = %bb.al
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp slt i64 %i.hf, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %bb.ao, label %bb.an, !prof !11

bb.an:                                            ; preds = %.preheader.i.i.i.i.i
  %i.ia = icmp eq i64 %i.hf, 0
  br i1 %i.ia, label %_RNvXs_NtNtCs7tKScEop1B6_5alloc3vec21spec_from_iter_nestedINtB6_3VecNtNtB8_6string6StringEINtB4_18SpecFromIterNestedB13_INtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtNtB22_5slice4iter4IterReENCNvNtCsdit6BuOJVAc_5uu_od12parse_inputs24parse_inputs_traditional0EE9from_iterB3h_.exit.i.i, label %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i.i.i.i.i.i.i.i.i.i

_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.an
  tail call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #29, !noalias !1543
  %i.ib = tail call noundef ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.hf, i64 noundef range(i64 1, 9) 1) #29, !noalias !1543 ; 3 uses
  %i.ic = icmp eq ptr %i.ib, null
  br i1 %i.ic, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i.i.i.i.i.i.i.i.i.i, %.preheader.i.i.i.i.i
  %.sroa.4.0.ph.i.i.i.i.i.i.i.i.i.i = phi i64 [ 1, %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i.i.i.i.i.i.i.i.i.i ], [ 0, %.preheader.i.i.i.i.i ]
  tail call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i.i.i.i.i.i.i.i.i.i, i64 %i.hf) #32, !noalias !1544
  unreachable

bb.ap:                                            ; preds = %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i.i.i.i.i.i.i.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ib, ptr nonnull readonly align 1 %i.hd, i64 %i.hf, i1 false), !noalias !1544
  br label %_RNvXs_NtNtCs7tKScEop1B6_5alloc3vec21spec_from_iter_nestedINtB6_3VecNtNtB8_6string6StringEINtB4_18SpecFromIterNestedB13_INtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtNtB22_5slice4iter4IterReENCNvNtCsdit6BuOJVAc_5uu_od12parse_inputs24parse_inputs_traditional0EE9from_iterB3h_.exit.i.i

bb.aq:                                            ; preds = %bb.ag
  %i.id = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.ie = load i64, ptr %i.id, align 8, !noalias !1539, !noundef !5
  tail call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #29, !noalias !1545
  %i.if = tail call noundef dereferenceable_or_null(1) ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) 1, i64 noundef range(i64 1, 9) 1) #29, !noalias !1545 ; 3 uses
  %i.ig = icmp eq ptr %i.if, null
  br i1 %i.ig, label %bb.ar, label %_RNvXs_NtNtCs7tKScEop1B6_5alloc3vec21spec_from_iter_nestedINtB6_3VecNtNtB8_6string6StringEINtB4_18SpecFromIterNestedB13_INtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtNtB22_5slice4iter4IterReENCNvNtCsdit6BuOJVAc_5uu_od12parse_inputs24parse_inputs_traditional0EE9from_iterB3h_.exit.thread.i.i

bb.ar:                                            ; preds = %bb.aq
  tail call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef 1, i64 1) #32, !noalias !1539
  unreachable

_RNvXs_NtNtCs7tKScEop1B6_5alloc3vec21spec_from_iter_nestedINtB6_3VecNtNtB8_6string6StringEINtB4_18SpecFromIterNestedB13_INtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtNtB22_5slice4iter4IterReENCNvNtCsdit6BuOJVAc_5uu_od12parse_inputs24parse_inputs_traditional0EE9from_iterB3h_.exit.thread.i.i: ; preds = %bb.aq
  store i8 45, ptr %i.if, align 1, !noalias !1539
  store i64 1, ptr %i.bd, align 8
  %.sroa.0.sroa.012.sroa.5.0..sroa_idx336.i.i = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  store ptr %i.if, ptr %.sroa.0.sroa.012.sroa.5.0..sroa_idx336.i.i, align 8
  %.sroa.0.sroa.012.sroa.6.0..sroa_idx337.i.i = getelementptr inbounds nuw i8, ptr %i.bd, i64 16
  store i64 1, ptr %.sroa.0.sroa.012.sroa.6.0..sroa_idx337.i.i, align 8
  %.sroa.0.sroa.513.0..sroa_idx338.i.i = getelementptr inbounds nuw i8, ptr %i.bd, i64 24
  store i64 %i.ie, ptr %.sroa.0.sroa.513.0..sroa_idx338.i.i, align 8
  %.sroa.54.0..sroa_idx5339.i.i = getelementptr inbounds nuw i8, ptr %i.bd, i64 32
  store i64 0, ptr %.sroa.54.0..sroa_idx5339.i.i, align 8
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultyNtNtCs7tKScEop1B6_5alloc6string6StringEECsdit6BuOJVAc_5uu_od.exit.i.i

_RNvXs_NtNtCs7tKScEop1B6_5alloc3vec21spec_from_iter_nestedINtB6_3VecNtNtB8_6string6StringEINtB4_18SpecFromIterNestedB13_INtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtNtB22_5slice4iter4IterReENCNvNtCsdit6BuOJVAc_5uu_od12parse_inputs24parse_inputs_traditional0EE9from_iterB3h_.exit.i.i: ; preds = %bb.ap, %bb.an
  %i.ih = phi ptr [ %i.ib, %bb.ap ], [ inttoptr (i64 1 to ptr), %bb.an ]
  store i64 %i.hf, ptr %i.hy, align 8, !noalias !1546
  %.sroa.42.0..sroa_idx.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.hy, i64 8
  store ptr %i.ih, ptr %.sroa.42.0..sroa_idx.i.i.i.i.i.i.i.i.i, align 8, !noalias !1546
  %.sroa.53.0..sroa_idx.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.hy, i64 16
  store i64 %i.hf, ptr %.sroa.53.0..sroa_idx.i.i.i.i.i.i.i.i.i, align 8, !noalias !1546
  store i64 1, ptr %i.bd, align 8
  %.sroa.0.sroa.012.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  store ptr %i.hy, ptr %.sroa.0.sroa.012.sroa.5.0..sroa_idx.i.i, align 8
  %.sroa.0.sroa.012.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.bd, i64 16
  store i64 1, ptr %.sroa.0.sroa.012.sroa.6.0..sroa_idx.i.i, align 8
  %.sroa.54.0..sroa_idx5.i.i = getelementptr inbounds nuw i8, ptr %i.bd, i64 32
  store i64 2, ptr %.sroa.54.0..sroa_idx5.i.i, align 8
  %.not349.i.i = icmp eq i64 %i.hg, 0
  br i1 %.not349.i.i, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultyNtNtCs7tKScEop1B6_5alloc6string6StringEECsdit6BuOJVAc_5uu_od.exit.i.i, label %bb.as

bb.as:                                            ; preds = %_RNvXs_NtNtCs7tKScEop1B6_5alloc3vec21spec_from_iter_nestedINtB6_3VecNtNtB8_6string6StringEINtB4_18SpecFromIterNestedB13_INtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtNtB22_5slice4iter4IterReENCNvNtCsdit6BuOJVAc_5uu_od12parse_inputs24parse_inputs_traditional0EE9from_iterB3h_.exit.i.i
  %i.ii = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %.val142.i.i = load ptr, ptr %i.ii, align 8, !noalias !1539, !nonnull !5, !noundef !5
  tail call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val142.i.i, i64 noundef %i.hg, i64 noundef range(i64 1, -9223372036854775807) 1) #29, !noalias !1547
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultyNtNtCs7tKScEop1B6_5alloc6string6StringEECsdit6BuOJVAc_5uu_od.exit.i.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultyNtNtCs7tKScEop1B6_5alloc6string6StringEECsdit6BuOJVAc_5uu_od.exit.i.i: ; preds = %bb.as, %_RNvXs_NtNtCs7tKScEop1B6_5alloc3vec21spec_from_iter_nestedINtB6_3VecNtNtB8_6string6StringEINtB4_18SpecFromIterNestedB13_INtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtNtB22_5slice4iter4IterReENCNvNtCsdit6BuOJVAc_5uu_od12parse_inputs24parse_inputs_traditional0EE9from_iterB3h_.exit.i.i, %_RNvXs_NtNtCs7tKScEop1B6_5alloc3vec21spec_from_iter_nestedINtB6_3VecNtNtB8_6string6StringEINtB4_18SpecFromIterNestedB13_INtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtNtB22_5slice4iter4IterReENCNvNtCsdit6BuOJVAc_5uu_od12parse_inputs24parse_inputs_traditional0EE9from_iterB3h_.exit.thread.i.i
  %i.ij = phi i64 [ 2, %bb.as ], [ 2, %_RNvXs_NtNtCs7tKScEop1B6_5alloc3vec21spec_from_iter_nestedINtB6_3VecNtNtB8_6string6StringEINtB4_18SpecFromIterNestedB13_INtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtNtB22_5slice4iter4IterReENCNvNtCsdit6BuOJVAc_5uu_od12parse_inputs24parse_inputs_traditional0EE9from_iterB3h_.exit.i.i ], [ 0, %_RNvXs_NtNtCs7tKScEop1B6_5alloc3vec21spec_from_iter_nestedINtB6_3VecNtNtB8_6string6StringEINtB4_18SpecFromIterNestedB13_INtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtNtB22_5slice4iter4IterReENCNvNtCsdit6BuOJVAc_5uu_od12parse_inputs24parse_inputs_traditional0EE9from_iterB3h_.exit.thread.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj), !noalias !1539
  br label %_RNvNtCsdit6BuOJVAc_5uu_od12parse_inputs24parse_inputs_traditional.exit.i

bb.at:                                            ; preds = %bb.ah
  br i1 %.not129.i.i, label %bb.az, label %.split.i.i

bb.au:                                            ; preds = %bb.ah
  tail call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #29, !noalias !1548
  %i.ik = tail call noundef dereferenceable_or_null(1) ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) 1, i64 noundef range(i64 1, 9) 1) #29, !noalias !1548 ; 3 uses
  %i.il = icmp eq ptr %i.ik, null
  br i1 %i.il, label %bb.av, label %.thread.i.i

bb.av:                                            ; preds = %bb.au
  tail call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef 1, i64 1) #32, !noalias !1539
  unreachable

.thread.i.i:                                      ; preds = %bb.au
  store i8 45, ptr %i.ik, align 1, !noalias !1539
  store i64 1, ptr %i.bd, align 8
  %.sroa.017.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  store ptr %i.ik, ptr %.sroa.017.sroa.4.0..sroa_idx.i.i, align 8
  %.sroa.017.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.bd, i64 16
  store i64 1, ptr %.sroa.017.sroa.5.0..sroa_idx.i.i, align 8
  %.sroa.418.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.bd, i64 24
  store i64 %.sroa.5.0.copyload.i.i, ptr %.sroa.418.0..sroa_idx.i.i, align 8
  %.sroa.519.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.bd, i64 32
  store i64 1, ptr %.sroa.519.0..sroa_idx.i.i, align 8
  %.sroa.620.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.bd, i64 40
  store i64 %.sroa.11.24.copyload.i.i, ptr %.sroa.620.0..sroa_idx.i.i, align 8
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultyNtNtCs7tKScEop1B6_5alloc6string6StringEECsdit6BuOJVAc_5uu_od.exit149.i.i

bb.aw:                                            ; preds = %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsdit6BuOJVAc_5uu_od.exit151.thread248.i.i, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsdit6BuOJVAc_5uu_od.exit.i.i
  %i.im = phi i64 [ 0, %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsdit6BuOJVAc_5uu_od.exit151.thread248.i.i ], [ -1, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsdit6BuOJVAc_5uu_od.exit.i.i ] ; 2 uses
  %.0.val.off.i147.i.i = add i64 %.sroa.0173.0.copyload.i.i, -1
  %switch.i148.i.i = icmp ult i64 %.0.val.off.i147.i.i, -2
  br i1 %switch.i148.i.i, label %bb.ax, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultyNtNtCs7tKScEop1B6_5alloc6string6StringEECsdit6BuOJVAc_5uu_od.exit149.i.i

bb.ax:                                            ; preds = %bb.aw
  %i.in = inttoptr i64 %.sroa.5.0.copyload.i.i to ptr ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.in) ]
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %i.in, i64 noundef %.sroa.0173.0.copyload.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #29, !noalias !1549
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultyNtNtCs7tKScEop1B6_5alloc6string6StringEECsdit6BuOJVAc_5uu_od.exit149.i.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultyNtNtCs7tKScEop1B6_5alloc6string6StringEECsdit6BuOJVAc_5uu_od.exit149.i.i: ; preds = %bb.ax, %bb.aw, %.thread.i.i
  %i.io = phi i64 [ %i.im, %bb.ax ], [ %i.im, %bb.aw ], [ 1, %.thread.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah), !noalias !1539
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai), !noalias !1539
  br label %_RNvNtCsdit6BuOJVAc_5uu_od12parse_inputs24parse_inputs_traditional.exit.i

.split.i.i:                                       ; preds = %bb.at
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag), !noalias !1539
  store i64 %.sroa.7174.24.copyload.i.i, ptr %i.ag, align 8, !noalias !1539
  %.sroa.11.24..sroa_idx177.i.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 8 ; 2 uses
  store <2 x i64> %i.ho, ptr %.sroa.11.24..sroa_idx177.i.i, align 8, !noalias !1539
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af), !noalias !1539
  store ptr %i.hk, ptr %i.af, align 8, !noalias !1539
  %.sroa.475.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  store ptr @_RNvXs1i_NtCs6JMX4GRUq9U_4core3fmtReNtB6_7Display3fmtCsdit6BuOJVAc_5uu_od, ptr %.sroa.475.0..sroa_idx.i.i, align 8, !noalias !1539
  %i.ip = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  store ptr %i.ag, ptr %i.ip, align 8, !noalias !1539
  %.sroa.479.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.af, i64 24
  store ptr @_RNvXsq_NtCs7tKScEop1B6_5alloc6stringNtB5_6StringNtNtCs6JMX4GRUq9U_4core3fmt7Display3fmt, ptr %.sroa.479.0..sroa_idx.i.i, align 8, !noalias !1539
  call void @_RNvNvNtCs7tKScEop1B6_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(48) %i.bd, ptr noundef nonnull @163, ptr noundef nonnull %i.af) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af), !noalias !1539
  %i.iq = getelementptr inbounds nuw i8, ptr %i.bd, i64 32
  store i64 -1, ptr %i.iq, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !1550)
  %.val.i.i.i = load i64, ptr %i.ag, align 8, !range !6, !alias.scope !1550, !noalias !1539, !noundef !5 ; 2 uses
  %i.ir = icmp eq i64 %.val.i.i.i, 0
  br i1 %i.ir, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsdit6BuOJVAc_5uu_od.exit.i.i, label %bb.ay

bb.ay:                                            ; preds = %.split.i.i
  %.val1.i.i.i = load ptr, ptr %.sroa.11.24..sroa_idx177.i.i, align 8, !alias.scope !1550, !noalias !1539, !nonnull !5, !noundef !5
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i, i64 noundef %.val.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #29, !noalias !1551
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsdit6BuOJVAc_5uu_od.exit.i.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsdit6BuOJVAc_5uu_od.exit.i.i: ; preds = %bb.ay, %.split.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag), !noalias !1539
  br label %bb.aw

bb.az:                                            ; preds = %bb.at
  %.not.i.i.i = icmp slt i64 %i.hj, 0
  br i1 %.not.i.i.i, label %bb.bb, label %bb.ba, !prof !11

bb.ba:                                            ; preds = %bb.az
  %i.is = icmp eq i64 %i.hj, 0
  br i1 %i.is, label %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsdit6BuOJVAc_5uu_od.exit151.thread248.i.i, label %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i.i

_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i.i: ; preds = %bb.ba
  tail call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #29, !noalias !1552
  %i.it = tail call noundef ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.hj, i64 noundef range(i64 1, 9) 1) #29, !noalias !1552 ; 3 uses
  %i.iu = icmp eq ptr %i.it, null
  br i1 %i.iu, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i.i, %bb.az
  %.sroa.4222.0.ph.i.i = phi i64 [ 1, %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i.i ], [ 0, %bb.az ]
  tail call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4222.0.ph.i.i, i64 %i.hj) #32, !noalias !1539
  unreachable

_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsdit6BuOJVAc_5uu_od.exit151.thread248.i.i: ; preds = %bb.bc, %bb.ba
  %i.iv = phi ptr [ %i.it, %bb.bc ], [ inttoptr (i64 1 to ptr), %bb.ba ]
  store i64 %i.hj, ptr %i.bd, align 8
  %.sroa.025.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  store ptr %i.iv, ptr %.sroa.025.sroa.4.0..sroa_idx.i.i, align 8
  %.sroa.025.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.bd, i64 16
  store i64 %i.hj, ptr %.sroa.025.sroa.5.0..sroa_idx.i.i, align 8
  %.sroa.426.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.bd, i64 24
  store i64 %.sroa.11.24.copyload.i.i, ptr %.sroa.426.0..sroa_idx.i.i, align 8
  %.sroa.527.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.bd, i64 32
  store i64 0, ptr %.sroa.527.0..sroa_idx.i.i, align 8
  br label %bb.aw

bb.bc:                                            ; preds = %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.it, ptr nonnull align 1 %i.hh, i64 %i.hj, i1 false), !noalias !1539
  br label %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsdit6BuOJVAc_5uu_od.exit151.thread248.i.i

.split118.i.i:                                    ; preds = %bb.ai
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac), !noalias !1539
  store i64 %.sroa.0183.0.copyload.i.i, ptr %i.ac, align 8, !noalias !1539
  %.sroa.5185.0..sroa_idx186.i.i = getelementptr inbounds nuw i8, ptr %i.ac, i64 8 ; 2 uses
  %4 = load <2 x i64>, ptr %.sroa.5185.0..sroa_idx.i.i, align 8, !noalias !1539
  store <2 x i64> %4, ptr %.sroa.5185.0..sroa_idx186.i.i, align 8, !noalias !1539
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab), !noalias !1539
  store ptr %i.hp, ptr %i.ab, align 8, !noalias !1539
  %.sroa.491.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  store ptr @_RNvXs1i_NtCs6JMX4GRUq9U_4core3fmtReNtB6_7Display3fmtCsdit6BuOJVAc_5uu_od, ptr %.sroa.491.0..sroa_idx.i.i, align 8, !noalias !1539
  %i.iw = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  store ptr %i.ac, ptr %i.iw, align 8, !noalias !1539
  %.sroa.495.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  store ptr @_RNvXsq_NtCs7tKScEop1B6_5alloc6stringNtB5_6StringNtNtCs6JMX4GRUq9U_4core3fmt7Display3fmt, ptr %.sroa.495.0..sroa_idx.i.i, align 8, !noalias !1539
  call void @_RNvNvNtCs7tKScEop1B6_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(48) %i.bd, ptr noundef nonnull @163, ptr noundef nonnull %i.ab) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !noalias !1539
  %i.ix = getelementptr inbounds nuw i8, ptr %i.bd, i64 32
  store i64 -1, ptr %i.ix, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !1553)
  %.val.i152.i.i = load i64, ptr %i.ac, align 8, !range !6, !alias.scope !1553, !noalias !1539, !noundef !5 ; 2 uses
  %i.iy = icmp eq i64 %.val.i152.i.i, 0
  br i1 %i.iy, label %bb.bk, label %bb.bd

bb.bd:                                            ; preds = %.split118.i.i
  %.val1.i153.i.i = load ptr, ptr %.sroa.5185.0..sroa_idx186.i.i, align 8, !alias.scope !1553, !noalias !1539, !nonnull !5, !noundef !5
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i153.i.i, i64 noundef %.val.i152.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #29, !noalias !1554
  br label %bb.bk

bb.be:                                            ; preds = %bb.ai
  %.not125.i.i = icmp eq i64 %.sroa.6191.24.copyload.i.i, -1
  br i1 %.not125.i.i, label %bb.bg, label %.split114.i.i

.split114.i.i:                                    ; preds = %bb.be
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa), !noalias !1539
  store i64 %.sroa.6191.24.copyload.i.i, ptr %i.aa, align 8, !noalias !1539
  %.sroa.11194.24..sroa_idx195.i.i = getelementptr inbounds nuw i8, ptr %i.aa, i64 8 ; 2 uses
  store <2 x i64> %i.hx, ptr %.sroa.11194.24..sroa_idx195.i.i, align 8, !noalias !1539
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !noalias !1539
  store ptr %i.ht, ptr %i.z, align 8, !noalias !1539
  %.sroa.4101.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  store ptr @_RNvXs1i_NtCs6JMX4GRUq9U_4core3fmtReNtB6_7Display3fmtCsdit6BuOJVAc_5uu_od, ptr %.sroa.4101.0..sroa_idx.i.i, align 8, !noalias !1539
  %i.iz = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  store ptr %i.aa, ptr %i.iz, align 8, !noalias !1539
  %.sroa.4105.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.z, i64 24
  store ptr @_RNvXsq_NtCs7tKScEop1B6_5alloc6stringNtB5_6StringNtNtCs6JMX4GRUq9U_4core3fmt7Display3fmt, ptr %.sroa.4105.0..sroa_idx.i.i, align 8, !noalias !1539
  call void @_RNvNvNtCs7tKScEop1B6_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(48) %i.bd, ptr noundef nonnull @163, ptr noundef nonnull %i.z) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !1539
  %i.ja = getelementptr inbounds nuw i8, ptr %i.bd, i64 32
  store i64 -1, ptr %i.ja, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !1555)
  %.val.i155.i.i = load i64, ptr %i.aa, align 8, !range !6, !alias.scope !1555, !noalias !1539, !noundef !5 ; 2 uses
  %i.jb = icmp eq i64 %.val.i155.i.i, 0
  br i1 %i.jb, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsdit6BuOJVAc_5uu_od.exit157.i.i, label %bb.bf

bb.bf:                                            ; preds = %.split114.i.i
  %.val1.i156.i.i = load ptr, ptr %.sroa.11194.24..sroa_idx195.i.i, align 8, !alias.scope !1555, !noalias !1539, !nonnull !5, !noundef !5
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i156.i.i, i64 noundef %.val.i155.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #29, !noalias !1556
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsdit6BuOJVAc_5uu_od.exit157.i.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsdit6BuOJVAc_5uu_od.exit157.i.i: ; preds = %bb.bf, %.split114.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !1539
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsdit6BuOJVAc_5uu_od.exit164.i.i

bb.bg:                                            ; preds = %bb.be
  %i.jc = load ptr, ptr %i.gw, align 8, !alias.scope !1538, !noalias !1536, !nonnull !5, !noundef !5
  %i.jd = getelementptr inbounds nuw i8, ptr %i.gw, i64 8
  %i.je = load i64, ptr %i.jd, align 8, !alias.scope !1538, !noalias !1536, !noundef !5 ; 7 uses
  %.not.i158.i.i = icmp slt i64 %i.je, 0
  br i1 %.not.i158.i.i, label %bb.bi, label %bb.bh, !prof !11

bb.bh:                                            ; preds = %bb.bg
  %i.jf = icmp eq i64 %i.je, 0
  br i1 %i.jf, label %.thread265.i.i, label %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i159.i.i

_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i159.i.i: ; preds = %bb.bh
  tail call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #29, !noalias !1557
  %i.jg = tail call noundef ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.je, i64 noundef range(i64 1, 9) 1) #29, !noalias !1557 ; 3 uses
  %i.jh = icmp eq ptr %i.jg, null
  br i1 %i.jh, label %bb.bi, label %bb.bj

bb.bi:                                            ; preds = %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i159.i.i, %bb.bg
  %.sroa.4225.0.ph.i.i = phi i64 [ 1, %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i159.i.i ], [ 0, %bb.bg ]
  tail call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4225.0.ph.i.i, i64 %i.je) #32, !noalias !1539
  unreachable

.thread265.i.i:                                   ; preds = %bb.bj, %bb.bh
  %i.ji = phi ptr [ %i.jg, %bb.bj ], [ inttoptr (i64 1 to ptr), %bb.bh ]
  store i64 %i.je, ptr %i.bd, align 8
  %.sroa.033.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  store ptr %i.ji, ptr %.sroa.033.sroa.4.0..sroa_idx.i.i, align 8
  %.sroa.033.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.bd, i64 16
  store i64 %i.je, ptr %.sroa.033.sroa.5.0..sroa_idx.i.i, align 8
  %.sroa.434.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.bd, i64 24
  store i64 %.sroa.5185.0.copyload.i.i, ptr %.sroa.434.0..sroa_idx.i.i, align 8
  %.sroa.535.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.bd, i64 32
  store i64 1, ptr %.sroa.535.0..sroa_idx.i.i, align 8
  %.sroa.636.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.bd, i64 40
  store i64 %.sroa.11194.24.copyload.i.i, ptr %.sroa.636.0..sroa_idx.i.i, align 8
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsdit6BuOJVAc_5uu_od.exit164.i.i

bb.bj:                                            ; preds = %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i159.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.jg, ptr nonnull align 1 %i.jc, i64 %i.je, i1 false), !noalias !1539
  br label %.thread265.i.i

bb.bk:                                            ; preds = %bb.bd, %.split118.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !noalias !1539
  %.sroa.6191.24.copyload.off.i.i = add i64 %.sroa.6191.24.copyload.i.i, -1
  %switch.i.i = icmp ult i64 %.sroa.6191.24.copyload.off.i.i, -2
  br i1 %switch.i.i, label %bb.bl, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsdit6BuOJVAc_5uu_od.exit164.i.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsdit6BuOJVAc_5uu_od.exit164.i.i: ; preds = %bb.bl, %bb.bk, %.thread265.i.i, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsdit6BuOJVAc_5uu_od.exit157.i.i
  %i.jj = phi i64 [ -1, %bb.bl ], [ -1, %bb.bk ], [ 1, %.thread265.i.i ], [ -1, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsdit6BuOJVAc_5uu_od.exit157.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !noalias !1539
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae), !noalias !1539
  br label %_RNvNtCsdit6BuOJVAc_5uu_od12parse_inputs24parse_inputs_traditional.exit.i

bb.bl:                                            ; preds = %bb.bk
  %i.jk = inttoptr i64 %.sroa.11194.24.copyload.i.i to ptr
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %i.jk, i64 noundef %.sroa.6191.24.copyload.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #29, !noalias !1558
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsdit6BuOJVAc_5uu_od.exit164.i.i

bb.bm:                                            ; preds = %bb.ad
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y), !noalias !1539
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !noalias !1539
  store i64 0, ptr %i.x, align 8, !noalias !1539
  %.sroa.439.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.439.0..sroa_idx.i.i, align 8, !noalias !1539
  %.sroa.540.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  store i64 0, ptr %.sroa.540.0..sroa_idx.i.i, align 8, !noalias !1539
  %i.jl = getelementptr inbounds nuw i8, ptr %i.gw, i64 48
  %i.jm = load ptr, ptr %i.jl, align 8, !alias.scope !1538, !noalias !1536, !nonnull !5, !noundef !5
  %i.jn = getelementptr inbounds nuw i8, ptr %i.gw, i64 56
  %i.jo = load i64, ptr %i.jn, align 8, !alias.scope !1538, !noalias !1536, !noundef !5 ; 14 uses
  %.not.i165.i.i = icmp slt i64 %i.jo, 0
  br i1 %.not.i165.i.i, label %bb.bo, label %bb.bn, !prof !11

bb.bn:                                            ; preds = %bb.bm
  %i.jp = icmp eq i64 %i.jo, 0                    ; 2 uses
  br i1 %i.jp, label %.thread278.i.i, label %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i166.i.i

_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i166.i.i: ; preds = %bb.bn
  tail call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #29, !noalias !1559
  %i.jq = tail call noundef ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.jo, i64 noundef range(i64 1, 9) 1) #29, !noalias !1559 ; 18 uses
  %i.jr = icmp eq ptr %i.jq, null
  br i1 %i.jr, label %bb.bo, label %bb.bp

bb.bo:                                            ; preds = %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i166.i.i, %bb.bm
  %.sroa.4229.0.ph.i.i = phi i64 [ 1, %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i166.i.i ], [ 0, %bb.bm ]
  tail call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4229.0.ph.i.i, i64 %i.jo) #32, !noalias !1539
  unreachable

bb.bp:                                            ; preds = %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i166.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.jq, ptr nonnull align 1 %i.jm, i64 %i.jo, i1 false), !noalias !1539
  %cond.i.i = icmp eq i64 %i.jo, 1
  %i.js = load i8, ptr %i.jq, align 1, !alias.scope !1560, !noalias !1539 ; 2 uses
  br i1 %cond.i.i, label %bb.bq, label %thread-pre-split.i.i.i

bb.bq:                                            ; preds = %bb.bp
  switch i8 %i.js, label %.lr.ph150.i.i.i.preheader [
    i8 43, label %.thread278.i.i
    i8 45, label %.thread278.i.i
  ]

.lr.ph150.i.i.i.preheader:                        ; preds = %bb.bx, %bb.bq
  %.sroa.0.4149.i.i.i.ph = phi ptr [ %i.jq, %bb.bq ], [ %.sroa.0.0.i.i.i, %bb.bx ]
  %.sroa.26.4148.i.i.i.ph = phi i64 [ 1, %bb.bq ], [ %.sroa.26.0.i.i.i, %bb.bx ]
  br label %.lr.ph150.i.i.i

thread-pre-split.i.i.i:                           ; preds = %bb.bp
  switch i8 %i.js, label %bb.bx [
    i8 43, label %bb.br
    i8 45, label %bb.bs
  ]

bb.br:                                            ; preds = %thread-pre-split.i.i.i
  %i.jt = getelementptr inbounds nuw i8, ptr %i.jq, i64 1
  %i.ju = add nsw i64 %i.jo, -1
  br label %bb.bx

bb.bs:                                            ; preds = %thread-pre-split.i.i.i
  %i.jv = getelementptr inbounds nuw i8, ptr %i.jq, i64 1 ; 2 uses
  %i.jw = add nsw i64 %i.jo, -1                   ; 2 uses
  %i.jx = icmp samesign ult i64 %i.jo, 17
  br i1 %i.jx, label %.lr.ph141.i.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.bs, %bb.bv
  %.sroa.0.1136.i.i.i = phi ptr [ %i.jy, %bb.bv ], [ %i.jv, %bb.bs ] ; 2 uses
  %.sroa.26.1135.i.i.i = phi i64 [ %i.jz, %bb.bv ], [ %i.jw, %bb.bs ]
  %.sroa.084.0134.i.i.i = phi i64 [ %i.kk, %bb.bv ], [ 0, %bb.bs ]
  %i.jy = getelementptr inbounds nuw i8, ptr %.sroa.0.1136.i.i.i, i64 1
  %i.jz = add nsw i64 %.sroa.26.1135.i.i.i, -1    ; 2 uses
  %i.ka = tail call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %.sroa.084.0134.i.i.i, i64 10) ; 2 uses
  %i.kb = extractvalue { i64, i1 } %i.ka, 0
  %i.kc = extractvalue { i64, i1 } %i.ka, 1
  br i1 %i.kc, label %.thread278.i.i, label %bb.bt, !prof !12

bb.bt:                                            ; preds = %.lr.ph.i.i.i
  %i.kd = load i8, ptr %.sroa.0.1136.i.i.i, align 1, !alias.scope !1560, !noalias !1539, !noundef !5
  %i.ke = zext i8 %i.kd to i32
  %i.kf = add nsw i32 %i.ke, -48                  ; 2 uses
  %i.kg = icmp ult i32 %i.kf, 10
  br i1 %i.kg, label %bb.bu, label %.thread278.i.i

bb.bu:                                            ; preds = %bb.bt
  %i.kh = zext nneg i32 %i.kf to i64
  %i.ki = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %i.kb, i64 %i.kh) ; 2 uses
end_hunk_1
