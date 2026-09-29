Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pola-rs/original/polars_row-eb434ee3abd1b8b8.polars_row.38394b63a722f67c-cgu.00?download=true
inline.NumInlined: 1609
inline.NumDeleted: 1089
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_RINvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterRShENCINvNtNtCs4PheDXcg4wa_10polars_row5fixed7numeric16decode_primitivexE0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB2A_8for_each4callxNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB3N_3VecxE14extend_trustedBN_E0E0EB1A_:bb.a
  %.val.i.i.i = load i64, ptr %i.q, align 1, !dbg !10172, !noalias !10150 ; 2 uses
  %i.r = load i8, ptr %.sroa.5.0.copyload, align 1, !dbg !10173, !range !604, !noalias !10150, !noundef !402
  %i.s = trunc nuw i8 %i.r to i1, !dbg !10173
  br i1 %i.s, label %bb.e, label %bb.d, !dbg !10173

bb.d:                                             ; preds = %bb.c
  %.sroa.0.0.insert.insert.i.i.i.i = xor i64 %.val.i.i.i, 128, !dbg !10174
  %i.t = tail call noundef i64 @llvm.bswap.i64(i64 %.sroa.0.0.insert.insert.i.i.i.i), !dbg !10174
  br label %bb.f, !dbg !10175

bb.e:                                             ; preds = %bb.c
  %i.u = invoke noundef i64 @_RNvYxNtNtNtCs4PheDXcg4wa_10polars_row5fixed7numeric19FixedLengthEncoding14decode_reverseB9_(i64 noundef %.val.i.i.i)
          to label %bb.f unwind label %bb.g, !dbg !10176, !noalias !10149

bb.f:                                             ; preds = %bb.e, %bb.d
  %.sroa.0.0.i.i.i = phi i64 [ %i.t, %bb.d ], [ %i.u, %bb.e ], !dbg !10177
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %.sroa.8.0.copyload, i64 %.val15.i, !dbg !10178
  store i64 %.sroa.0.0.i.i.i, ptr %i.v, align 8, !dbg !10179, !noalias !10152
  %i.w = add i64 %.val15.i, 1, !dbg !10180        ; 2 uses
  %i.x = add nuw i64 %.sroa.01.0.i, 1, !dbg !10181 ; 2 uses
  %i.y = icmp eq i64 %i.x, %i.i, !dbg !10182
  br i1 %i.y, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterRShENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB10_8adapters3map8map_foldRBQ_xuNCINvNtNtCs4PheDXcg4wa_10polars_row5fixed7numeric16decode_primitivexE0NCINvNvBU_8for_each4callxNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB40_3VecxE14extend_trustedINtB1K_3MapBF_B2k_EE0E0E0EB2t_.exit, label %bb.c, !dbg !10182

bb.g:                                             ; preds = %bb.e
  %i.z = landingpad { ptr, i32 }
          cleanup
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %.val15.i, ptr %.sroa.0.0.copyload, align 8, !dbg !10183, !noalias !10149
  resume { ptr, i32 } %i.z, !dbg !10184

_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterRShENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB10_8adapters3map8map_foldRBQ_xuNCINvNtNtCs4PheDXcg4wa_10polars_row5fixed7numeric16decode_primitivexE0NCINvNvBU_8for_each4callxNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB40_3VecxE14extend_trustedINtB1K_3MapBF_B2k_EE0E0E0EB2t_.exit: ; preds = %bb.f, %bb.a
  %storemerge = phi i64 [ %.sroa.6.0.copyload, %bb.a ], [ %i.w, %bb.f ], !dbg !10185
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.0.0.copyload, align 8, !dbg !10185, !noalias !10149
  ret void, !dbg !10186
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterRShENCINvNtNtCs4PheDXcg4wa_10polars_row5fixed7numeric16decode_primitiveyE0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB2A_8for_each4callyNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB3N_3VecyE14extend_trustedBN_E0E0EB1A_(ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(40) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !10187 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !dbg !10274, !nonnull !402, !noundef !402 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !10274
  %i.c = load ptr, ptr %i.b, align 8, !dbg !10274, !nonnull !402, !noundef !402 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !10275
  %.sroa.01.0.copyload = load ptr, ptr %i.d, align 8, !dbg !10275 ; 3 uses
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !10275
  %.sroa.4.0.copyload = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !dbg !10275 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !10275
  %.sroa.5.0.copyload = load ptr, ptr %.sroa.5.0..sroa_idx, align 8, !dbg !10275 ; 2 uses
  %.sroa.0.0.copyload = load ptr, ptr %1, align 8, !dbg !10276 ; 4 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !10276
  %.sroa.6.0.copyload = load i64, ptr %.sroa.6.0..sroa_idx, align 8, !dbg !10276 ; 2 uses
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !10276
  %.sroa.8.0.copyload = load ptr, ptr %.sroa.8.0..sroa_idx, align 8, !dbg !10276
  %i.e = icmp eq ptr %i.a, %i.c, !dbg !10277
  br i1 %i.e, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterRShENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB10_8adapters3map8map_foldRBQ_yuNCINvNtNtCs4PheDXcg4wa_10polars_row5fixed7numeric16decode_primitiveyE0NCINvNvBU_8for_each4callyNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB40_3VecyE14extend_trustedINtB1K_3MapBF_B2k_EE0E0E0EB2t_.exit, label %bb.b, !dbg !10278

bb.b:                                             ; preds = %bb.a
  %i.f = ptrtoint ptr %i.c to i64, !dbg !10279
  %i.g = ptrtoint ptr %i.a to i64, !dbg !10279
  %i.h = sub nuw i64 %i.f, %i.g, !dbg !10279
  %i.i = lshr exact i64 %i.h, 4, !dbg !10279
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.4.0.copyload) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.01.0.copyload) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.0.copyload) ]
  br label %bb.c, !dbg !10280

bb.c:                                             ; preds = %bb.f, %bb.b
  %.val15.i = phi i64 [ %.sroa.6.0.copyload, %bb.b ], [ %i.w, %bb.f ] ; 3 uses
  %.sroa.01.0.i = phi i64 [ 0, %bb.b ], [ %i.x, %bb.f ], !dbg !10281 ; 2 uses
  %i.j = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %.sroa.01.0.i, !dbg !10282
  %.val16.i = load ptr, ptr %i.j, align 8, !dbg !10283, !noalias !10264, !nonnull !402, !noundef !402 ; 2 uses
  %i.k = load i8, ptr %.val16.i, align 1, !dbg !10284, !noalias !10265, !noundef !402
  %i.l = load i8, ptr %.sroa.4.0.copyload, align 1, !dbg !10285, !noalias !10265, !noundef !402
  %i.m = icmp eq i8 %i.k, %i.l, !dbg !10284
  %i.n = load i8, ptr %.sroa.01.0.copyload, align 1, !dbg !10286, !range !604, !noalias !10265, !noundef !402
  %i.o = zext i1 %i.m to i8, !dbg !10286
  %i.p = or i8 %i.n, %i.o, !dbg !10286
  store i8 %i.p, ptr %.sroa.01.0.copyload, align 1, !dbg !10286, !noalias !10265
  %i.q = getelementptr inbounds nuw i8, ptr %.val16.i, i64 1, !dbg !10287
  %.val.i.i.i = load i64, ptr %i.q, align 1, !dbg !10288, !noalias !10265 ; 2 uses
  %i.r = load i8, ptr %.sroa.5.0.copyload, align 1, !dbg !10289, !range !604, !noalias !10265, !noundef !402
  %i.s = trunc nuw i8 %i.r to i1, !dbg !10289
  br i1 %i.s, label %bb.e, label %bb.d, !dbg !10289

bb.d:                                             ; preds = %bb.c
  %i.t = tail call noundef i64 @llvm.bswap.i64(i64 %.val.i.i.i), !dbg !10290
  br label %bb.f, !dbg !10291

bb.e:                                             ; preds = %bb.c
  %i.u = invoke noundef i64 @_RNvYyNtNtNtCs4PheDXcg4wa_10polars_row5fixed7numeric19FixedLengthEncoding14decode_reverseB9_(i64 noundef %.val.i.i.i)
          to label %bb.f unwind label %bb.g, !dbg !10292, !noalias !10264

bb.f:                                             ; preds = %bb.e, %bb.d
  %.sroa.0.0.i.i.i = phi i64 [ %i.t, %bb.d ], [ %i.u, %bb.e ], !dbg !10293
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %.sroa.8.0.copyload, i64 %.val15.i, !dbg !10294
  store i64 %.sroa.0.0.i.i.i, ptr %i.v, align 8, !dbg !10295, !noalias !10268
  %i.w = add i64 %.val15.i, 1, !dbg !10296        ; 2 uses
  %i.x = add nuw i64 %.sroa.01.0.i, 1, !dbg !10297 ; 2 uses
  %i.y = icmp eq i64 %i.x, %i.i, !dbg !10298
  br i1 %i.y, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterRShENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB10_8adapters3map8map_foldRBQ_yuNCINvNtNtCs4PheDXcg4wa_10polars_row5fixed7numeric16decode_primitiveyE0NCINvNvBU_8for_each4callyNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB40_3VecyE14extend_trustedINtB1K_3MapBF_B2k_EE0E0E0EB2t_.exit, label %bb.c, !dbg !10298

bb.g:                                             ; preds = %bb.e
  %i.z = landingpad { ptr, i32 }
          cleanup
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %.val15.i, ptr %.sroa.0.0.copyload, align 8, !dbg !10299, !noalias !10264
  resume { ptr, i32 } %i.z, !dbg !10300

_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterRShENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB10_8adapters3map8map_foldRBQ_yuNCINvNtNtCs4PheDXcg4wa_10polars_row5fixed7numeric16decode_primitiveyE0NCINvNvBU_8for_each4callyNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB40_3VecyE14extend_trustedINtB1K_3MapBF_B2k_EE0E0E0EB2t_.exit: ; preds = %bb.f, %bb.a
  %storemerge = phi i64 [ %.sroa.6.0.copyload, %bb.a ], [ %i.w, %bb.f ], !dbg !10301
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.0.0.copyload, align 8, !dbg !10301, !noalias !10264
  ret void, !dbg !10302
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define hidden void @_RINvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterjENCNvMs_NtCs4PheDXcg4wa_10polars_row6widthsNtB1w_9RowWidths19extend_with_offsetss_0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB2K_8for_each4calljNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB3X_3VecjE14extend_trustedBN_E0E0EB1y_(ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #3 personality ptr @rust_eh_personality !dbg !10303 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !dbg !10368, !nonnull !402, !noundef !402 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !10368
  %i.c = load ptr, ptr %i.b, align 8, !dbg !10368, !nonnull !402, !noundef !402 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !10369
  %i.e = load ptr, ptr %i.d, align 8, !dbg !10369, !nonnull !402, !align !410, !noundef !402 ; 6 uses
  %.sroa.0.0.copyload = load ptr, ptr %1, align 8, !dbg !10370 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !10370
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !dbg !10370 ; 3 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !10370
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 8, !dbg !10370 ; 3 uses
  %i.f = icmp eq ptr %i.a, %i.c, !dbg !10371
  br i1 %i.f, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterjENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRjjuNCNvMs_NtCs4PheDXcg4wa_10polars_row6widthsNtB2m_9RowWidths19extend_with_offsetss_0NCINvNvBS_8for_each4calljNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB47_3VecjE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0EB2o_.exit, label %bb.b, !dbg !10372

bb.b:                                             ; preds = %bb.a
  %i.g = ptrtoint ptr %i.c to i64, !dbg !10373
  %i.h = ptrtoint ptr %i.a to i64, !dbg !10373
  %i.i = sub nuw i64 %i.g, %i.h, !dbg !10373      ; 3 uses
  %i.j = lshr exact i64 %i.i, 3, !dbg !10373      ; 2 uses
  %i.k = icmp eq i64 %i.i, 8, !dbg !10374
  br i1 %i.k, label %.epil.preheader, label %.new, !dbg !10374

.new:                                             ; preds = %bb.b
  %unroll_iter = and i64 %i.j, 2305843009213693950, !dbg !10374
  br label %bb.c, !dbg !10374

bb.c:                                             ; preds = %bb.c, %.new
  %i.l = phi i64 [ %.sroa.5.0.copyload, %.new ], [ %i.w, %bb.c ], !dbg !10375 ; 3 uses
  %.sroa.01.0.i = phi i64 [ 0, %.new ], [ %i.x, %bb.c ], !dbg !10376 ; 3 uses
  %niter = phi i64 [ 0, %.new ], [ %niter.next.1, %bb.c ]
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %.sroa.01.0.i, !dbg !10375
  %.val16.i = load i64, ptr %i.m, align 8, !dbg !10377, !noalias !10358, !noundef !402
  %i.n = load i64, ptr %i.e, align 8, !dbg !10378, !noalias !10359, !noundef !402 ; 2 uses
  %i.o = add i64 %i.n, %.val16.i, !dbg !10379
  store i64 %i.o, ptr %i.e, align 8, !dbg !10379, !noalias !10359
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %.sroa.7.0.copyload, i64 %i.l, !dbg !10380
  store i64 %i.n, ptr %i.p, align 8, !dbg !10381, !noalias !10362
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %.sroa.01.0.i, !dbg !10375
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8, !dbg !10375
  %.val16.i.1 = load i64, ptr %i.r, align 8, !dbg !10377, !noalias !10358, !noundef !402
  %i.s = load i64, ptr %i.e, align 8, !dbg !10378, !noalias !10359, !noundef !402 ; 2 uses
  %i.t = add i64 %i.s, %.val16.i.1, !dbg !10379
  store i64 %i.t, ptr %i.e, align 8, !dbg !10379, !noalias !10359
  %i.u = getelementptr [8 x i8], ptr %.sroa.7.0.copyload, i64 %i.l, !dbg !10380
  %i.v = getelementptr i8, ptr %i.u, i64 8, !dbg !10380
  store i64 %i.s, ptr %i.v, align 8, !dbg !10381, !noalias !10362
  %i.w = add i64 %i.l, 2, !dbg !10382             ; 3 uses
  %i.x = add nuw i64 %.sroa.01.0.i, 2, !dbg !10383 ; 2 uses
  %niter.next.1 = add i64 %niter, 2, !dbg !10384  ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter, !dbg !10384
  br i1 %niter.ncmp.1, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterjENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRjjuNCNvMs_NtCs4PheDXcg4wa_10polars_row6widthsNtB2m_9RowWidths19extend_with_offsetss_0NCINvNvBS_8for_each4calljNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB47_3VecjE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0EB2o_.exit.loopexit.unr-lcssa, label %bb.c, !dbg !10384

_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterjENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRjjuNCNvMs_NtCs4PheDXcg4wa_10polars_row6widthsNtB2m_9RowWidths19extend_with_offsetss_0NCINvNvBS_8for_each4calljNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB47_3VecjE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0EB2o_.exit.loopexit.unr-lcssa: ; preds = %bb.c
  %i.y = and i64 %i.i, 8, !dbg !10384
  %lcmp.mod.not = icmp eq i64 %i.y, 0, !dbg !10384
  br i1 %lcmp.mod.not, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterjENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRjjuNCNvMs_NtCs4PheDXcg4wa_10polars_row6widthsNtB2m_9RowWidths19extend_with_offsetss_0NCINvNvBS_8for_each4calljNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB47_3VecjE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0EB2o_.exit, label %.epil.preheader, !dbg !10384

.epil.preheader:                                  ; preds = %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterjENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRjjuNCNvMs_NtCs4PheDXcg4wa_10polars_row6widthsNtB2m_9RowWidths19extend_with_offsetss_0NCINvNvBS_8for_each4calljNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB47_3VecjE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0EB2o_.exit.loopexit.unr-lcssa, %bb.b
  %.epil.init = phi i64 [ %.sroa.5.0.copyload, %bb.b ], [ %i.w, %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterjENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRjjuNCNvMs_NtCs4PheDXcg4wa_10polars_row6widthsNtB2m_9RowWidths19extend_with_offsetss_0NCINvNvBS_8for_each4calljNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB47_3VecjE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0EB2o_.exit.loopexit.unr-lcssa ] ; 2 uses
  %.sroa.01.0.i.epil.init = phi i64 [ 0, %bb.b ], [ %i.x, %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterjENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRjjuNCNvMs_NtCs4PheDXcg4wa_10polars_row6widthsNtB2m_9RowWidths19extend_with_offsetss_0NCINvNvBS_8for_each4calljNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB47_3VecjE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0EB2o_.exit.loopexit.unr-lcssa ]
  %lcmp.mod3 = trunc i64 %i.j to i1, !dbg !10384
  tail call void @llvm.assume(i1 %lcmp.mod3), !dbg !10384
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %.sroa.01.0.i.epil.init, !dbg !10375
  %.val16.i.epil = load i64, ptr %i.z, align 8, !dbg !10377, !noalias !10358, !noundef !402
  %i.aa = load i64, ptr %i.e, align 8, !dbg !10378, !noalias !10359, !noundef !402 ; 2 uses
  %i.ab = add i64 %i.aa, %.val16.i.epil, !dbg !10379
  store i64 %i.ab, ptr %i.e, align 8, !dbg !10379, !noalias !10359
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %.sroa.7.0.copyload, i64 %.epil.init, !dbg !10380
  store i64 %i.aa, ptr %i.ac, align 8, !dbg !10381, !noalias !10362
  %i.ad = add i64 %.epil.init, 1, !dbg !10382
  br label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterjENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRjjuNCNvMs_NtCs4PheDXcg4wa_10polars_row6widthsNtB2m_9RowWidths19extend_with_offsetss_0NCINvNvBS_8for_each4calljNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB47_3VecjE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0EB2o_.exit

_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterjENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRjjuNCNvMs_NtCs4PheDXcg4wa_10polars_row6widthsNtB2m_9RowWidths19extend_with_offsetss_0NCINvNvBS_8for_each4calljNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB47_3VecjE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0EB2o_.exit: ; preds = %.epil.preheader, %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterjENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRjjuNCNvMs_NtCs4PheDXcg4wa_10polars_row6widthsNtB2m_9RowWidths19extend_with_offsetss_0NCINvNvBS_8for_each4calljNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB47_3VecjE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0EB2o_.exit.loopexit.unr-lcssa, %bb.a
  %storemerge = phi i64 [ %.sroa.5.0.copyload, %bb.a ], [ %i.w, %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterjENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRjjuNCNvMs_NtCs4PheDXcg4wa_10polars_row6widthsNtB2m_9RowWidths19extend_with_offsetss_0NCINvNvBS_8for_each4calljNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB47_3VecjE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0EB2o_.exit.loopexit.unr-lcssa ], [ %i.ad, %.epil.preheader ], !dbg !10385
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.0.0.copyload, align 8, !dbg !10385, !noalias !10358
  ret void, !dbg !10386
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define hidden void @_RINvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterjENCNvMs_NtCs4PheDXcg4wa_10polars_row6widthsNtB1w_9RowWidths4push0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB2s_8for_each4calljNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB3F_3VecjE14extend_trustedBN_E0E0EB1y_(ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #3 personality ptr @rust_eh_personality !dbg !10387 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !dbg !10456, !nonnull !402, !noundef !402 ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !10456
  %i.c = load ptr, ptr %i.b, align 8, !dbg !10456, !nonnull !402, !noundef !402 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !10457
  %i.e = load ptr, ptr %i.d, align 8, !dbg !10457, !nonnull !402, !align !410, !noundef !402 ; 6 uses
  %.sroa.0.0.copyload = load ptr, ptr %1, align 8, !dbg !10458 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !10458
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !dbg !10458 ; 6 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !10458
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 8, !dbg !10458 ; 6 uses
  %i.f = icmp eq ptr %i.a, %i.c, !dbg !10459
  br i1 %i.f, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterjENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRjjuNCNvMs_NtCs4PheDXcg4wa_10polars_row6widthsNtB2m_9RowWidths4push0NCINvNvBS_8for_each4calljNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB3P_3VecjE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0EB2o_.exit, label %bb.b, !dbg !10460

bb.b:                                             ; preds = %bb.a
  %i.g = ptrtoint ptr %i.c to i64, !dbg !10461
  %i.h = ptrtoint ptr %i.a to i64, !dbg !10461
  %i.i = sub nuw i64 %i.g, %i.h, !dbg !10461      ; 4 uses
  %i.j = lshr i64 %i.i, 3, !dbg !10461            ; 4 uses
  %min.iters.check = icmp ult i64 %i.i, 128, !dbg !10462
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck, !dbg !10462

vector.memcheck:                                  ; preds = %bb.b
  %i.k = shl i64 %.sroa.5.0.copyload, 3, !dbg !10462 ; 2 uses
  %i.l = getelementptr i8, ptr %.sroa.7.0.copyload, i64 %i.k, !dbg !10462 ; 2 uses
  %scevgep2 = getelementptr i8, ptr %.sroa.7.0.copyload, i64 %i.k, !dbg !10462
  %scevgep3 = getelementptr i8, ptr %scevgep2, i64 %i.i, !dbg !10462 ; 2 uses
  %scevgep4 = getelementptr i8, ptr %i.e, i64 8, !dbg !10462
  %bound0 = icmp ult ptr %i.l, %i.c, !dbg !10462
  %bound1 = icmp ult ptr %i.a, %scevgep3, !dbg !10462
  %found.conflict = and i1 %bound0, %bound1, !dbg !10462
  %bound05 = icmp ult ptr %i.l, %scevgep4, !dbg !10462
  %bound16 = icmp ult ptr %i.e, %scevgep3, !dbg !10462
  %found.conflict7 = and i1 %bound05, %bound16, !dbg !10462
  %conflict.rdx = or i1 %found.conflict, %found.conflict7, !dbg !10462
  br i1 %conflict.rdx, label %scalar.ph.preheader, label %vector.ph, !dbg !10463

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.j, 2305843009213693948      ; 4 uses
  %i.m = add i64 %.sroa.5.0.copyload, %n.vec      ; 2 uses
  %i.n = load i64, ptr %i.e, align 8, !dbg !10464, !alias.scope !10443, !noalias !10444, !noundef !402
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %i.n, i64 0, !dbg !10463
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer, !dbg !10463 ; 2 uses
  %i.o = getelementptr [8 x i8], ptr %.sroa.7.0.copyload, i64 %.sroa.5.0.copyload
  br label %vector.body, !dbg !10463

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ], !dbg !10463 ; 3 uses
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %index, !dbg !10465 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16, !dbg !10466
  %wide.load = load <2 x i64>, ptr %i.p, align 8, !dbg !10466, !alias.scope !10446, !noalias !10447
  %wide.load8 = load <2 x i64>, ptr %i.q, align 8, !dbg !10466, !alias.scope !10446, !noalias !10447
  %i.r = add <2 x i64> %broadcast.splat, %wide.load, !dbg !10467
  %i.s = add <2 x i64> %broadcast.splat, %wide.load8, !dbg !10467
  %i.t = getelementptr [8 x i8], ptr %i.o, i64 %index, !dbg !10468 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 16, !dbg !10469
  store <2 x i64> %i.r, ptr %i.t, align 8, !dbg !10469, !alias.scope !10448, !noalias !10449
  store <2 x i64> %i.s, ptr %i.u, align 8, !dbg !10469, !alias.scope !10448, !noalias !10449
  %index.next = add nuw i64 %index, 4, !dbg !10463 ; 2 uses
  %i.v = icmp eq i64 %index.next, %n.vec, !dbg !10470
  br i1 %i.v, label %middle.block, label %vector.body, !dbg !10470, !llvm.loop !10433

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.j, %n.vec, !dbg !10470
  br i1 %cmp.n, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterjENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRjjuNCNvMs_NtCs4PheDXcg4wa_10polars_row6widthsNtB2m_9RowWidths4push0NCINvNvBS_8for_each4calljNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB3P_3VecjE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0EB2o_.exit, label %scalar.ph.preheader, !dbg !10470

scalar.ph.preheader:                              ; preds = %vector.memcheck, %bb.b, %middle.block
  %.ph = phi i64 [ %.sroa.5.0.copyload, %vector.memcheck ], [ %.sroa.5.0.copyload, %bb.b ], [ %i.m, %middle.block ] ; 3 uses
  %.sroa.01.0.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %bb.b ], [ %n.vec, %middle.block ] ; 4 uses
  %.neg = or disjoint i64 %.sroa.01.0.i.ph, 1, !dbg !10470
  %i.w = and i64 %i.i, 8, !dbg !10470
  %lcmp.mod.not = icmp eq i64 %i.w, 0, !dbg !10470
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !dbg !10470

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %.sroa.01.0.i.ph, !dbg !10465
  %.val16.i.prol = load i64, ptr %i.x, align 8, !dbg !10466, !noalias !10447, !noundef !402
  %i.y = load i64, ptr %i.e, align 8, !dbg !10464, !noalias !10444, !noundef !402
  %i.z = add i64 %i.y, %.val16.i.prol, !dbg !10467
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %.sroa.7.0.copyload, i64 %.ph, !dbg !10468
  store i64 %i.z, ptr %i.aa, align 8, !dbg !10469, !noalias !10450
  %i.ab = add i64 %.ph, 1, !dbg !10471            ; 2 uses
  %i.ac = or disjoint i64 %.sroa.01.0.i.ph, 1, !dbg !10472
  br label %scalar.ph.prol.loopexit, !dbg !10470

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.lcssa.unr = phi i64 [ poison, %scalar.ph.preheader ], [ %i.ab, %scalar.ph.prol ]
  %.unr = phi i64 [ %.ph, %scalar.ph.preheader ], [ %i.ab, %scalar.ph.prol ]
  %.sroa.01.0.i.unr = phi i64 [ %.sroa.01.0.i.ph, %scalar.ph.preheader ], [ %i.ac, %scalar.ph.prol ]
  %i.ad = icmp eq i64 %i.j, %.neg, !dbg !10470
  br i1 %i.ad, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterjENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRjjuNCNvMs_NtCs4PheDXcg4wa_10polars_row6widthsNtB2m_9RowWidths4push0NCINvNvBS_8for_each4calljNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB3P_3VecjE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0EB2o_.exit, label %scalar.ph, !dbg !10470

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %i.ae = phi i64 [ %i.ap, %scalar.ph ], [ %.unr, %scalar.ph.prol.loopexit ], !dbg !10465 ; 3 uses
  %.sroa.01.0.i = phi i64 [ %i.aq, %scalar.ph ], [ %.sroa.01.0.i.unr, %scalar.ph.prol.loopexit ], !dbg !10463 ; 3 uses
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %.sroa.01.0.i, !dbg !10465
  %.val16.i = load i64, ptr %i.af, align 8, !dbg !10466, !noalias !10447, !noundef !402
  %i.ag = load i64, ptr %i.e, align 8, !dbg !10464, !noalias !10444, !noundef !402
  %i.ah = add i64 %i.ag, %.val16.i, !dbg !10467
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %.sroa.7.0.copyload, i64 %i.ae, !dbg !10468
  store i64 %i.ah, ptr %i.ai, align 8, !dbg !10469, !noalias !10450
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %.sroa.01.0.i, !dbg !10465
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 8, !dbg !10465
  %.val16.i.1 = load i64, ptr %i.ak, align 8, !dbg !10466, !noalias !10447, !noundef !402
  %i.al = load i64, ptr %i.e, align 8, !dbg !10464, !noalias !10444, !noundef !402
  %i.am = add i64 %i.al, %.val16.i.1, !dbg !10467
  %i.an = getelementptr [8 x i8], ptr %.sroa.7.0.copyload, i64 %i.ae, !dbg !10468
  %i.ao = getelementptr i8, ptr %i.an, i64 8, !dbg !10468
  store i64 %i.am, ptr %i.ao, align 8, !dbg !10469, !noalias !10450
  %i.ap = add i64 %i.ae, 2, !dbg !10471           ; 2 uses
  %i.aq = add nuw i64 %.sroa.01.0.i, 2, !dbg !10472 ; 2 uses
  %i.ar = icmp eq i64 %i.aq, %i.j, !dbg !10470
  br i1 %i.ar, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterjENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRjjuNCNvMs_NtCs4PheDXcg4wa_10polars_row6widthsNtB2m_9RowWidths4push0NCINvNvBS_8for_each4calljNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB3P_3VecjE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0EB2o_.exit, label %scalar.ph, !dbg !10470, !llvm.loop !10438

_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterjENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRjjuNCNvMs_NtCs4PheDXcg4wa_10polars_row6widthsNtB2m_9RowWidths4push0NCINvNvBS_8for_each4calljNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB3P_3VecjE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0EB2o_.exit: ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %bb.a
  %storemerge = phi i64 [ %.sroa.5.0.copyload, %bb.a ], [ %i.m, %middle.block ], [ %.lcssa.unr, %scalar.ph.prol.loopexit ], [ %i.ap, %scalar.ph ], !dbg !10473
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.0.0.copyload, align 8, !dbg !10473, !noalias !10447
  ret void, !dbg !10474
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter7IterMutRShENCNvNtNtCs4PheDXcg4wa_10polars_row5fixed7decimal6decodesA_0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB2s_8for_each4callnNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB3F_3VecnE14extend_trustedBN_E0E0EB1C_(ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(56) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !10475 {
bb.a:
  %i.a = alloca [16 x i8], align 16               ; 5 uses
  %i.b = load ptr, ptr %0, align 8, !dbg !10590, !nonnull !402, !noundef !402 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !10590
  %i.d = load ptr, ptr %i.c, align 8, !dbg !10590, !noundef !402 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !10591
  %.sroa.01.0.copyload = load ptr, ptr %i.e, align 8, !dbg !10591 ; 8 uses
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !10591
  %.sroa.4.0.copyload = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !dbg !10591 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !10591
  %.sroa.5.0.copyload = load ptr, ptr %.sroa.5.0..sroa_idx, align 8, !dbg !10591
  %.sroa.62.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40, !dbg !10591
  %.sroa.62.0.copyload = load ptr, ptr %.sroa.62.0..sroa_idx, align 8, !dbg !10591
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48, !dbg !10591
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 8, !dbg !10591
  %.sroa.0.0.copyload = load ptr, ptr %1, align 8, !dbg !10592 ; 4 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !10592
  %.sroa.6.0.copyload = load i64, ptr %.sroa.6.0..sroa_idx, align 8, !dbg !10592 ; 2 uses
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !10592
  %.sroa.8.0.copyload = load ptr, ptr %.sroa.8.0..sroa_idx, align 8, !dbg !10592
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.d) ], !dbg !10593
  %i.f = icmp eq ptr %i.b, %i.d, !dbg !10594
  br i1 %i.f, label %_RINvXs2R_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_7IterMutRShENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB13_8adapters3map8map_foldQBT_nuNCNvNtNtCs4PheDXcg4wa_10polars_row5fixed7decimal6decodesA_0NCINvNvBX_8for_each4callnNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB3S_3VecnE14extend_trustedINtB1N_3MapBF_B2n_EE0E0E0EB2v_.exit, label %bb.b, !dbg !10595

bb.b:                                             ; preds = %bb.a
  %i.g = ptrtoint ptr %i.d to i64, !dbg !10596
  %i.h = ptrtoint ptr %i.b to i64, !dbg !10596
  %i.i = sub nuw i64 %i.g, %i.h, !dbg !10596
  %i.j = lshr exact i64 %i.i, 4, !dbg !10596
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.01.0.copyload) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.4.0.copyload) ]
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.01.0.copyload, i64 32 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.01.0.copyload, i64 40
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.01.0.copyload, i64 24 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.01.0.copyload, i64 16 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.01.0.copyload, i64 8
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.01.0.copyload, i64 48 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 9
  br label %bb.c, !dbg !10597

bb.c:                                             ; preds = %bb.h, %bb.b
  %.val15.i = phi i64 [ %.sroa.6.0.copyload, %bb.b ], [ %i.bk, %bb.h ] ; 3 uses
  %.sroa.01.0.i = phi i64 [ 0, %bb.b ], [ %i.bl, %bb.h ], !dbg !10598 ; 2 uses
  %i.r = getelementptr inbounds nuw [16 x i8], ptr %i.b, i64 %.sroa.01.0.i, !dbg !10599 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !10576), !dbg !10600
  call void @llvm.experimental.noalias.scope.decl(metadata !10577), !dbg !10601
  %i.s = load ptr, ptr %i.r, align 8, !dbg !10602, !alias.scope !10578, !noalias !10579, !nonnull !402, !noundef !402 ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 8, !dbg !10602 ; 2 uses
  %i.u = load i64, ptr %i.t, align 8, !dbg !10602, !alias.scope !10578, !noalias !10579, !noundef !402 ; 5 uses
  %i.v = icmp ne i64 %i.u, 0, !dbg !10603
  call void @llvm.assume(i1 %i.v), !dbg !10604
  %i.w = load i8, ptr %i.s, align 1, !dbg !10605, !noalias !10580, !noundef !402
  %i.x = load i8, ptr %.sroa.4.0.copyload, align 1, !dbg !10606, !noalias !10580, !noundef !402
  %i.y = icmp ne i8 %i.w, %i.x, !dbg !10605
  %i.z = load i64, ptr %i.k, align 8, !dbg !10607, !noalias !10580, !noundef !402 ; 2 uses
  %i.aa = add i64 %i.z, 1, !dbg !10607            ; 2 uses
  %i.ab = load i64, ptr %i.l, align 8, !dbg !10608, !noalias !10580, !noundef !402
  %i.ac = icmp ugt i64 %i.aa, %i.ab, !dbg !10607
  br i1 %i.ac, label %bb.d, label %bb.e, !dbg !10607, !prof !626

bb.d:                                             ; preds = %bb.c
  invoke void @_RNvMNtNtCs8774dFTUdNv_12polars_arrow6bitmap7builderNtB2_13BitmapBuilder12reserve_slow(ptr noalias noundef nonnull align 8 dereferenceable(56) %.sroa.01.0.copyload, i64 noundef 1) #18
          to label %.noexc.i unwind label %.loopexit.i, !dbg !10609, !noalias !10581

.noexc.i:                                         ; preds = %bb.d
  %.pre.i.i.i = load i64, ptr %i.k, align 8, !dbg !10610, !alias.scope !10582, !noalias !10580 ; 2 uses
  %.pre1.i.i.i = add i64 %.pre.i.i.i, 1, !dbg !10611
  br label %bb.e, !dbg !10609

bb.e:                                             ; preds = %.noexc.i, %bb.c
  %.pre-phi.i.i.i = phi i64 [ %i.aa, %bb.c ], [ %.pre1.i.i.i, %.noexc.i ], !dbg !10611 ; 2 uses
  %i.ad = phi i64 [ %i.z, %bb.c ], [ %.pre.i.i.i, %.noexc.i ], !dbg !10610
  call void @llvm.experimental.noalias.scope.decl(metadata !10582), !dbg !10612
  %i.ae = zext i1 %i.y to i64, !dbg !10613
  %i.af = and i64 %i.ad, 63, !dbg !10614
  %i.ag = shl nuw i64 %i.ae, %i.af, !dbg !10613
  %i.ah = load i64, ptr %i.m, align 8, !dbg !10615, !alias.scope !10582, !noalias !10580, !noundef !402
  %i.ai = or i64 %i.ag, %i.ah, !dbg !10615        ; 3 uses
  store i64 %i.ai, ptr %i.m, align 8, !dbg !10615, !alias.scope !10582, !noalias !10580
  store i64 %.pre-phi.i.i.i, ptr %i.k, align 8, !dbg !10611, !alias.scope !10582, !noalias !10580
  %i.aj = and i64 %.pre-phi.i.i.i, 63, !dbg !10616
  %i.ak = icmp eq i64 %i.aj, 0, !dbg !10616
  br i1 %i.ak, label %bb.f, label %_RNvMNtNtCs8774dFTUdNv_12polars_arrow6bitmap7builderNtB2_13BitmapBuilder14push_unchecked.exit.i.i.i, !dbg !10617

bb.f:                                             ; preds = %bb.e
  %i.al = load i64, ptr %i.n, align 8, !dbg !10618, !alias.scope !10582, !noalias !10580, !noundef !402 ; 3 uses
  %i.am = icmp sgt i64 %i.al, -1, !dbg !10619
  call void @llvm.assume(i1 %i.am), !dbg !10620
  %i.an = load ptr, ptr %i.o, align 8, !dbg !10621, !alias.scope !10582, !noalias !10580, !nonnull !402, !noundef !402
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.al, !dbg !10622
  store i64 %i.ai, ptr %i.ao, align 1, !dbg !10623, !noalias !10583
  %i.ap = add nuw i64 %i.al, 8, !dbg !10624
  store i64 %i.ap, ptr %i.n, align 8, !dbg !10625, !alias.scope !10582, !noalias !10580
  %i.aq = call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.ai), !dbg !10626
  %i.ar = load i64, ptr %i.p, align 8, !dbg !10627, !alias.scope !10582, !noalias !10580, !noundef !402
  %i.as = add i64 %i.ar, %i.aq, !dbg !10627
  store i64 %i.as, ptr %i.p, align 8, !dbg !10627, !alias.scope !10582, !noalias !10580
  store i64 0, ptr %i.m, align 8, !dbg !10628, !alias.scope !10582, !noalias !10580
  br label %_RNvMNtNtCs8774dFTUdNv_12polars_arrow6bitmap7builderNtB2_13BitmapBuilder14push_unchecked.exit.i.i.i, !dbg !10629

_RNvMNtNtCs8774dFTUdNv_12polars_arrow6bitmap7builderNtB2_13BitmapBuilder14push_unchecked.exit.i.i.i: ; preds = %bb.f, %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !10630, !noalias !10580
  store i128 0, ptr %i.a, align 16, !dbg !10631, !noalias !10580
  invoke void @_RINvNtCscgRAwXFJnXP_4core5slice20copy_from_slice_implhECs4PheDXcg4wa_10polars_row(ptr noalias noundef nonnull %i.q, i64 noundef 7, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.s, i64 noundef 7, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @7)
          to label %.noexc16.i unwind label %.loopexit.i, !dbg !10632, !noalias !10581

.noexc16.i:                                       ; preds = %_RNvMNtNtCs8774dFTUdNv_12polars_arrow6bitmap7builderNtB2_13BitmapBuilder14push_unchecked.exit.i.i.i
  %i.at = icmp ult i64 %i.u, 7, !dbg !10633
  br i1 %i.at, label %bb.g, label %bb.h, !dbg !10633, !prof !626

end_hunk_0
