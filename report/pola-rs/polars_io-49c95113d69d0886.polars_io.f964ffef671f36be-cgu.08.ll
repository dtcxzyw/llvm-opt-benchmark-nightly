Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pola-rs/original/polars_io-49c95113d69d0886.polars_io.f964ffef671f36be-cgu.08?download=true
inline.NumInlined: 2635
inline.NumDeleted: 1278
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 13
loop-unroll.NumUnrolled: 20
begin_hunk_0_@_RNvMs_NtNtCslpwjCj2YNBy_9polars_io10path_utils12hugging_faceNtB4_11HFPathParts12try_from_uri:bb.a
bb.bo:                                            ; preds = %bb.bd
  %i.en = load ptr, ptr %i.eb, align 8, !dbg !26244, !noalias !25649, !nonnull !11, !noundef !11 ; 2 uses
  %i.eo = icmp ule i64 %.sroa.3.0.i, %i.ea, !dbg !26245
  tail call void @llvm.assume(i1 %i.eo), !dbg !26249
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !26251, !noalias !25649
  %.not102.i = icmp eq i64 %.sroa.3.0.i, 0, !dbg !26252
  br i1 %.not102.i, label %_RNCNvMs_NtNtCslpwjCj2YNBy_9polars_io10path_utils12hugging_faceNtB6_11HFPathParts12try_from_uri0Ba_.exit, label %bb.bp, !dbg !26252

bb.bp:                                            ; preds = %bb.bo
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.en, ptr nonnull align 1 %.sroa.034.0.i, i64 %.sroa.3.0.i, i1 false), !dbg !26254, !noalias !25649
  br label %_RNCNvMs_NtNtCslpwjCj2YNBy_9polars_io10path_utils12hugging_faceNtB6_11HFPathParts12try_from_uri0Ba_.exit, !dbg !26259

bb.bq:                                            ; preds = %bb.bm
  invoke void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsgZ49sUHp3tW_5alloc6string6StringECslpwjCj2YNBy_9polars_io(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.i) #41
          to label %bb.n unwind label %bb.be, !dbg !26240, !noalias !25649

_RNCNvMs_NtNtCslpwjCj2YNBy_9polars_io10path_utils12hugging_faceNtB6_11HFPathParts12try_from_uri0Ba_.exit: ; preds = %bb.bo, %bb.bp
  %.sroa.680.0.i = phi i64 [ %.sroa.3.0.i143.i, %bb.bp ], [ 0, %bb.bo ], !dbg !26260
  %.sroa.083.i.sroa.0.0.copyload = load i64, ptr %i.j, align 8, !dbg !26261, !noalias !25649 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.083.i.sroa.4, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.447.0..sroa_idx.i, i64 16, i1 false), !dbg !26261
  %.sroa.083.i.sroa.4.24..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.083.i.sroa.4, i64 16, !dbg !26263
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.083.i.sroa.4.24..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.i, i64 24, i1 false), !dbg !26263
  %.sroa.083.i.sroa.4.48..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.083.i.sroa.4, i64 40, !dbg !26264
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.083.i.sroa.4.48..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.h, i64 24, i1 false), !dbg !26264
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !dbg !26240, !noalias !25649
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !dbg !26240, !noalias !25649
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !dbg !25769, !noalias !25649
  %.not = icmp eq i64 %.sroa.083.i.sroa.0.0.copyload, -9223372036854775808, !dbg !26265
  br i1 %.not, label %.split, label %bb.br, !dbg !26266, !prof !1058

bb.br:                                            ; preds = %_RNCNvMs_NtNtCslpwjCj2YNBy_9polars_io10path_utils12hugging_faceNtB6_11HFPathParts12try_from_uri0Ba_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !dbg !26267
  store i64 %.sroa.083.i.sroa.0.0.copyload, ptr %i.o, align 8, !dbg !26267
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 8, !dbg !26267 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.10.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.083.i.sroa.4, i64 64, i1 false), !dbg !26267
  %.sroa.1029.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 72, !dbg !26267
  store i64 %i.ea, ptr %.sroa.1029.0..sroa_idx, align 8, !dbg !26267
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 80, !dbg !26267
  store ptr %i.en, ptr %.sroa.11.0..sroa_idx, align 8, !dbg !26267
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 88, !dbg !26267
  store i64 %.sroa.680.0.i, ptr %.sroa.12.0..sroa_idx, align 8, !dbg !26267
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !dbg !26268
  %i.ep = load ptr, ptr %.sroa.10.0..sroa_idx, align 8, !dbg !26270, !nonnull !11, !noundef !11
  %i.eq = getelementptr inbounds nuw i8, ptr %i.o, i64 16, !dbg !26283
  %i.er = load i64, ptr %i.eq, align 8, !dbg !26283, !noundef !11
  store ptr %i.ep, ptr %i.n, align 8, !dbg !26284
  %i.es = getelementptr inbounds nuw i8, ptr %i.n, i64 8, !dbg !26284
  store i64 %i.er, ptr %i.es, align 8, !dbg !26284
  %i.et = invoke noundef zeroext i1 @_RNvXsf_NtNtCscgRAwXFJnXP_4core5slice3cmpReNtB5_13SliceContains14slice_containsCslpwjCj2YNBy_9polars_io(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.n, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) @94, i64 noundef 2)
          to label %bb.bt unwind label %bb.bs, !dbg !26289

.split:                                           ; preds = %bb.d, %bb.a, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsgZ49sUHp3tW_5alloc6string6StringECslpwjCj2YNBy_9polars_io.exit.i, %_RNCNvMs_NtNtCslpwjCj2YNBy_9polars_io10path_utils12hugging_faceNtB6_11HFPathParts12try_from_uri0Ba_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !dbg !26292
  store ptr %i.r, ptr %i.p, align 8, !dbg !26292
  %.sroa.413.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 8, !dbg !26292
  store ptr @_RNvXs1i_NtCscgRAwXFJnXP_4core3fmtReNtB6_7Display3fmtCslpwjCj2YNBy_9polars_io, ptr %.sroa.413.0..sroa_idx, align 8, !dbg !26292
  call void @_RNvNvNtCsgZ49sUHp3tW_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.q, ptr noundef nonnull @97, ptr noundef nonnull %i.p), !dbg !26295
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !dbg !26301
  %.sroa.424.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !26301
  call void @_RNvXs_CsgjwxzEoLG5s_12polars_errorNtB4_9ErrStringINtNtCscgRAwXFJnXP_4core7convert4FromNtNtCsgZ49sUHp3tW_5alloc6string6StringE4fromCslpwjCj2YNBy_9polars_io(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %.sroa.424.0..sroa_idx, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.q, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @98), !dbg !26302
  %i.eu = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !26301
  store i64 2, ptr %i.eu, align 8, !dbg !26301
  store i64 -9223372036854775808, ptr %0, align 8, !dbg !26301
  br label %bb.bx, !dbg !26301

bb.bs:                                            ; preds = %bb.bu, %_RINvMNtCscgRAwXFJnXP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsgZ49sUHp3tW_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECslpwjCj2YNBy_9polars_io.exit, %bb.br
  %i.ev = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCslpwjCj2YNBy_9polars_io10path_utils12hugging_face11HFPathPartsEBM_(ptr noalias noundef align 8 dereferenceable(96) %i.o) #41
          to label %common.resume unwind label %bb.by, !dbg !26306

bb.bt:                                            ; preds = %bb.br
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !dbg !26307
  br i1 %i.et, label %bb.bv, label %bb.bu, !dbg !26308

bb.bu:                                            ; preds = %bb.bt
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !dbg !26309
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !dbg !26310
  store ptr @94, ptr %i.k, align 8, !dbg !26310
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 8, !dbg !26310
  store ptr @_RNvXsa_NtCscgRAwXFJnXP_4core5arrayARej2_NtNtB7_3fmt5Debug3fmtCslpwjCj2YNBy_9polars_io, ptr %.sroa.43.0..sroa_idx, align 8, !dbg !26310
  %i.ew = getelementptr inbounds nuw i8, ptr %i.k, i64 16, !dbg !26310
  store ptr %i.o, ptr %i.ew, align 8, !dbg !26310
  %.sroa.47.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 24, !dbg !26310
  store ptr @_RNvXsq_NtCsgZ49sUHp3tW_5alloc6stringNtB5_6StringNtNtCscgRAwXFJnXP_4core3fmt7Display3fmt, ptr %.sroa.47.0..sroa_idx, align 8, !dbg !26310
  invoke void @_RNvNvNtCsgZ49sUHp3tW_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.l, ptr noundef nonnull @95, ptr noundef nonnull %i.k)
          to label %_RINvMNtCscgRAwXFJnXP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsgZ49sUHp3tW_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECslpwjCj2YNBy_9polars_io.exit unwind label %bb.bs, !dbg !26313

bb.bv:                                            ; preds = %bb.bt
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 8 dereferenceable(96) %i.o, i64 96, i1 false), !dbg !26318
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !dbg !26306
  br label %bb.bx, !dbg !26319

_RINvMNtCscgRAwXFJnXP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsgZ49sUHp3tW_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECslpwjCj2YNBy_9polars_io.exit: ; preds = %bb.bu
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !dbg !26309
  invoke void @_RNvXs_CsgjwxzEoLG5s_12polars_errorNtB4_9ErrStringINtNtCscgRAwXFJnXP_4core7convert4FromNtNtCsgZ49sUHp3tW_5alloc6string6StringE4fromCslpwjCj2YNBy_9polars_io(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.m, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.l, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @96)
          to label %bb.bw unwind label %bb.bs, !dbg !26320

bb.bw:                                            ; preds = %_RINvMNtCscgRAwXFJnXP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsgZ49sUHp3tW_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECslpwjCj2YNBy_9polars_io.exit
  %.sroa.436.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !26309
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.436.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.m, i64 24, i1 false), !dbg !26309
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !dbg !26309
  %i.ex = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !26309
  store i64 2, ptr %i.ex, align 8, !dbg !26309
  store i64 -9223372036854775808, ptr %0, align 8, !dbg !26309
  call fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCslpwjCj2YNBy_9polars_io10path_utils12hugging_face11HFPathPartsEBM_(ptr noalias noundef align 8 dereferenceable(96) %i.o), !dbg !26306
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !dbg !26306
  br label %bb.bx, !dbg !26323

bb.bx:                                            ; preds = %.split, %bb.bw, %bb.bv
  ret void, !dbg !26319

bb.by:                                            ; preds = %bb.bs
  %i.ey = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #43, !dbg !26325
  unreachable, !dbg !26325
}

; Function Attrs: nonlazybind uwtable
define { ptr, i64 } @_RNvMs_NtNtNtCslpwjCj2YNBy_9polars_io3csv4read6parserNtB4_10SplitLines11next_scalar(ptr noalias nofree noundef align 8 captures(none) dereferenceable(40) %0) unnamed_addr #3 personality ptr @rust_eh_personality !dbg !26326 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !26328 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !dbg !26328, !noundef !11 ; 11 uses
  %i.c = icmp eq i64 %i.b, 0, !dbg !26328
  br i1 %i.c, label %bb.g, label %bb.b, !dbg !26328

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !dbg !26329, !nonnull !11, !noundef !11 ; 11 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !26330
  %i.f = load ptr, ptr %i.e, align 8, !dbg !26330, !align !615, !noundef !11 ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !26331), !dbg !26334
  tail call void @llvm.experimental.noalias.scope.decl(metadata !26335), !dbg !26334
  %.not.i = icmp eq ptr %i.f, null, !dbg !26337
  br i1 %.not.i, label %.lr.ph, label %bb.c, !dbg !26339

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 23, !dbg !26337
  %i.h = load i8, ptr %i.g, align 1, !dbg !26337, !range !8149, !alias.scope !26335, !noalias !26331, !noundef !11 ; 3 uses
  %.not4.i = icmp eq i8 %i.h, -38, !dbg !26337
  br i1 %.not4.i, label %_RNvNtNtNtCslpwjCj2YNBy_9polars_io3csv4read6parser15is_comment_line.exit, label %bb.d, !dbg !26339

bb.d:                                             ; preds = %bb.c
  %i.i = icmp ugt i8 %i.h, -41, !dbg !26340
  br i1 %i.i, label %bb.f, label %bb.e, !dbg !26340

bb.e:                                             ; preds = %bb.d
  %i.j = add i8 %i.h, 64, !dbg !26346
  %i.k = tail call i8 @llvm.umin.i8(i8 %i.j, i8 24), !dbg !26348
  %.sroa.0.0.i.i.i = zext nneg i8 %i.k to i64, !dbg !26348
  br label %_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr8as_slice.exit.i, !dbg !26351

bb.f:                                             ; preds = %bb.d
  %i.l = load ptr, ptr %i.f, align 8, !dbg !26352, !alias.scope !26353, !noalias !26331, !noundef !11
  %i.m = getelementptr inbounds nuw i8, ptr %i.f, i64 8, !dbg !26356
  %i.n = load i64, ptr %i.m, align 8, !dbg !26356, !alias.scope !26353, !noalias !26331, !noundef !11
  br label %_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr8as_slice.exit.i, !dbg !26357

_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr8as_slice.exit.i: ; preds = %bb.f, %bb.e
  %.sroa.01.0.i.i = phi i64 [ %i.n, %bb.f ], [ %.sroa.0.0.i.i.i, %bb.e ], !dbg !26358
  %.sroa.0.0.i.i = phi ptr [ %i.l, %bb.f ], [ %i.f, %bb.e ], !dbg !26359
  %i.o = tail call noundef zeroext i1 @_RNvMNtCscgRAwXFJnXP_4core5sliceSh11starts_withCslpwjCj2YNBy_9polars_io(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.d, i64 noundef range(i64 0, -9223372036854775808) %i.b, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.sroa.0.0.i.i, i64 noundef %.sroa.01.0.i.i), !dbg !26360
  br i1 %i.o, label %bb.i, label %.lr.ph, !dbg !26334

_RNvNtNtNtCslpwjCj2YNBy_9polars_io3csv4read6parser15is_comment_line.exit: ; preds = %bb.c
  %i.p = load i8, ptr %i.d, align 1, !dbg !26361, !alias.scope !26331, !noalias !26335, !noundef !11
  %i.q = load i8, ptr %i.f, align 8, !dbg !26365, !alias.scope !26335, !noalias !26331, !noundef !11
  %i.r = icmp eq i8 %i.p, %i.q, !dbg !26361
  br i1 %i.r, label %bb.i, label %.lr.ph, !dbg !26334

.sink.split:                                      ; preds = %bb.h, %bb.m, %bb.j, %_RNvNtNtNtCslpwjCj2YNBy_9polars_io3csv4read6parser24next_line_position_naive.exit.i, %bb.i, %.split.us
  %.sink32 = phi ptr [ %i.be, %.split.us ], [ inttoptr (i64 1 to ptr), %bb.i ], [ %i.ar, %bb.j ], [ inttoptr (i64 1 to ptr), %_RNvNtNtNtCslpwjCj2YNBy_9polars_io3csv4read6parser24next_line_position_naive.exit.i ], [ inttoptr (i64 1 to ptr), %bb.m ], [ inttoptr (i64 1 to ptr), %bb.h ]
  %.sink = phi i64 [ %i.bd, %.split.us ], [ 0, %bb.i ], [ %i.aq, %bb.j ], [ 0, %_RNvNtNtNtCslpwjCj2YNBy_9polars_io3csv4read6parser24next_line_position_naive.exit.i ], [ 0, %bb.m ], [ 0, %bb.h ]
  %.sroa.5.0.ph = phi i64 [ %i.bc, %.split.us ], [ %i.b, %bb.i ], [ %i.ao, %bb.j ], [ %i.b, %_RNvNtNtNtCslpwjCj2YNBy_9polars_io3csv4read6parser24next_line_position_naive.exit.i ], [ %i.b, %bb.m ], [ %i.b, %bb.h ]
  store ptr %.sink32, ptr %0, align 8, !dbg !26366
  store i64 %.sink, ptr %i.a, align 8, !dbg !26366
  br label %bb.g, !dbg !26367

bb.g:                                             ; preds = %.sink.split, %bb.a
  %.sroa.5.0 = phi i64 [ undef, %bb.a ], [ %.sroa.5.0.ph, %.sink.split ], !dbg !26366
  %.sroa.0.0 = phi ptr [ null, %bb.a ], [ %i.d, %.sink.split ], !dbg !26366
  %i.s = insertvalue { ptr, i64 } poison, ptr %.sroa.0.0, 0, !dbg !26367
  %i.t = insertvalue { ptr, i64 } %i.s, i64 %.sroa.5.0, 1, !dbg !26367
  ret { ptr, i64 } %i.t, !dbg !26367

.lr.ph:                                           ; preds = %_RNvNtNtNtCslpwjCj2YNBy_9polars_io3csv4read6parser15is_comment_line.exit, %_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr8as_slice.exit.i, %bb.b
  %i.u = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.b, !dbg !26368 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 34
  %i.w = load i8, ptr %i.v, align 2, !range !11823, !noundef !11
  %i.x = trunc nuw i8 %i.w to i1
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.z = load i8, ptr %i.y, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 33
  %i.ab = load i8, ptr %i.aa, align 1             ; 2 uses
  br i1 %i.x, label %.lr.ph.split, label %.lr.ph.split.us

.lr.ph.split.us:                                  ; preds = %.lr.ph, %bb.h
  %.sroa.02.015.us = phi i32 [ %i.ad, %bb.h ], [ 0, %.lr.ph ]
  %.sroa.05.014.us = phi ptr [ %i.ae, %bb.h ], [ %i.d, %.lr.ph ] ; 2 uses
  %i.ac = load i8, ptr %.sroa.05.014.us, align 1, !dbg !26378, !noundef !11
  %i.ad = add nuw nsw i32 %.sroa.02.015.us, 1, !dbg !26381 ; 2 uses
  %.not = icmp eq i8 %i.ac, %i.ab, !dbg !26383
  br i1 %.not, label %.split.us, label %bb.h, !dbg !26383

bb.h:                                             ; preds = %.lr.ph.split.us
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.05.014.us, i64 1, !dbg !26384 ; 2 uses
  %i.af = icmp eq ptr %i.ae, %i.u, !dbg !26391
  br i1 %i.af, label %.sink.split, label %.lr.ph.split.us, !dbg !26393

bb.i:                                             ; preds = %_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr8as_slice.exit.i, %_RNvNtNtNtCslpwjCj2YNBy_9polars_io3csv4read6parser15is_comment_line.exit
  tail call void @llvm.experimental.noalias.scope.decl(metadata !26394), !dbg !26397
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 33, !dbg !26398
  %i.ah = load i8, ptr %i.ag, align 1, !dbg !26398, !alias.scope !26394, !noundef !11
  %i.ai = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.b, !dbg !26402
  %i.aj = load atomic ptr, ptr @_RNvNvNtNtNtCslnrARR2vGZ9_6memchr4arch6x86_646memchr10memchr_raw2FN monotonic, align 8, !dbg !26409, !noalias !26415, !nonnull !11, !noundef !11
  %i.ak = tail call { i64, ptr } %i.aj(i8 noundef %i.ah, ptr noundef nonnull readonly %i.d, ptr noundef nonnull readonly %i.ai), !dbg !26420, !noalias !26421, !inline_history !26422 ; 2 uses
  %i.al = extractvalue { i64, ptr } %i.ak, 0, !dbg !26423
  %i.am = trunc nuw i64 %i.al to i1, !dbg !26424
  br i1 %i.am, label %_RNvNtNtNtCslpwjCj2YNBy_9polars_io3csv4read6parser24next_line_position_naive.exit.i, label %.sink.split, !dbg !26424

_RNvNtNtNtCslpwjCj2YNBy_9polars_io3csv4read6parser24next_line_position_naive.exit.i: ; preds = %bb.i
  %i.an = extractvalue { i64, ptr } %i.ak, 1, !dbg !26423
  %i.ao = tail call noundef i64 @_RNvXNtCslnrARR2vGZ9_6memchr3extPhNtB2_7Pointer8distanceCslpwjCj2YNBy_9polars_io(ptr noundef %i.an, ptr noundef nonnull readonly %i.d), !dbg !26426, !noalias !26394 ; 2 uses
  %i.ap = add i64 %i.ao, 1, !dbg !26427           ; 3 uses
  %.not.i.not.i = icmp eq i64 %i.b, %i.ap, !dbg !26427
  br i1 %.not.i.not.i, label %.sink.split, label %bb.j, !dbg !26431

bb.j:                                             ; preds = %_RNvNtNtNtCslpwjCj2YNBy_9polars_io3csv4read6parser24next_line_position_naive.exit.i
  %i.aq = sub nuw i64 %i.b, %i.ap, !dbg !26432
  %i.ar = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.ap, !dbg !26441
  br label %.sink.split, !dbg !26447

.lr.ph.split:                                     ; preds = %.lr.ph, %bb.m
  %.sroa.02.015 = phi i32 [ %i.au, %bb.m ], [ 0, %.lr.ph ]
  %.sroa.05.014 = phi ptr [ %i.as, %bb.m ], [ %i.d, %.lr.ph ] ; 2 uses
  %.sroa.06.013 = phi i1 [ %.sroa.06.1, %bb.m ], [ false, %.lr.ph ] ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.sroa.05.014, i64 1, !dbg !26384 ; 2 uses
  %i.at = load i8, ptr %.sroa.05.014, align 1, !dbg !26378, !noundef !11 ; 2 uses
  %i.au = add nuw nsw i32 %.sroa.02.015, 1, !dbg !26381 ; 2 uses
  %i.av = icmp eq i8 %i.at, %i.z
  br i1 %i.av, label %bb.l, label %bb.k, !dbg !26448

bb.k:                                             ; preds = %.lr.ph.split
  %i.aw = icmp ne i8 %i.at, %i.ab, !dbg !26383
  %or.cond = select i1 %i.aw, i1 true, i1 %.sroa.06.013, !dbg !26383
  br i1 %or.cond, label %bb.m, label %.split.us, !dbg !26383

bb.l:                                             ; preds = %.lr.ph.split
  %i.ax = xor i1 %.sroa.06.013, true, !dbg !26449
  br label %bb.m, !dbg !26450

.split.us:                                        ; preds = %.lr.ph.split.us, %bb.k
  %.us-phi = phi i32 [ %i.au, %bb.k ], [ %i.ad, %.lr.ph.split.us ], !dbg !26451
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !26451
  %i.az = load i64, ptr %i.ay, align 8, !dbg !26451, !noundef !11
  %i.ba = zext i32 %.us-phi to i64, !dbg !26452
  %i.bb = add i64 %i.az, %i.ba, !dbg !26451       ; 3 uses
  %i.bc = add i64 %i.bb, -1, !dbg !26453
  %i.bd = sub nuw i64 %i.b, %i.bb, !dbg !26454
  %i.be = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.bb, !dbg !26463
  br label %.sink.split, !dbg !26367

bb.m:                                             ; preds = %bb.k, %bb.l
  %.sroa.06.1 = phi i1 [ %i.ax, %bb.l ], [ %.sroa.06.013, %bb.k ], !dbg !26469
  %i.bf = icmp eq ptr %i.as, %i.u, !dbg !26391
  br i1 %i.bf, label %.sink.split, label %.lr.ph.split, !dbg !26393
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMsc_NtNtNtCslpwjCj2YNBy_9polars_io3csv4read7builderNtB5_9Utf8Field3new(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([216 x i8]) align 8 captures(none) dereferenceable(216) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1, i64 noundef %2, i1 noundef zeroext %3, i8 %4, i1 noundef zeroext %5) unnamed_addr #3 personality ptr @rust_eh_personality !dbg !26470 {
bb.a:
  %i.a = alloca [160 x i8], align 8               ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !26472
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !dbg !26472
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !26473
  invoke void @_RNvMs2_NtNtNtCs8774dFTUdNv_12polars_arrow5array7binview7mutableINtB5_22MutableBinaryViewArrayShE13with_capacityCslpwjCj2YNBy_9polars_io(ptr noalias noundef nonnull sret([160 x i8]) align 8 captures(none) dereferenceable(160) %i.a, i64 noundef %2)
          to label %bb.d unwind label %bb.b, !dbg !26473

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          cleanup
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 23, !dbg !26474
  %i.e = load i8, ptr %i.d, align 1, !dbg !26474, !range !1152, !alias.scope !26481, !noundef !11
  %i.f = icmp eq i8 %i.e, -40, !dbg !26490
  br i1 %i.f, label %bb.c, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECslpwjCj2YNBy_9polars_io.exit, !dbg !26490, !prof !54

bb.c:                                             ; preds = %bb.b
  invoke void @_RNvNvXs2_NtCs7VARH73bmU_11compact_str4reprNtB7_4ReprNtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4drop13outlined_drop(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECslpwjCj2YNBy_9polars_io.exit unwind label %bb.e, !dbg !26491

bb.d:                                             ; preds = %bb.a
  %. = select i1 %3, i8 %4, i8 34, !dbg !26492
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 184, !dbg !26495
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.g, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !dbg !26495
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr noundef nonnull align 8 dereferenceable(160) %i.a, i64 160, i1 false), !dbg !26495
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 160, !dbg !26495
  store i64 0, ptr %i.h, align 8, !dbg !26495
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 168, !dbg !26495
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.4.0..sroa_idx, align 8, !dbg !26495
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 176, !dbg !26495
  store i64 0, ptr %.sroa.5.0..sroa_idx, align 8, !dbg !26495
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 209, !dbg !26495
  store i8 %., ptr %i.i, align 1, !dbg !26495
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 208, !dbg !26495
  %i.k = zext i1 %5 to i8, !dbg !26495
  store i8 %i.k, ptr %i.j, align 8, !dbg !26495
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !26496
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !26496
  ret void, !dbg !26497

bb.e:                                             ; preds = %bb.c
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #43, !dbg !26498
  unreachable, !dbg !26498

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECslpwjCj2YNBy_9polars_io.exit: ; preds = %bb.b, %bb.c
  resume { ptr, i32 } %i.c, !dbg !26498
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMse_NtNtNtCslpwjCj2YNBy_9polars_io3csv4read7builderINtB5_16CategoricalFieldNtNtCs1LHh8CLbVkQ_11polars_core9datatypes16Categorical8TypeE3newBb_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([208 x i8]) align 16 captures(none) dereferenceable(208) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(24) %1, i64 noundef %2, i1 noundef zeroext %3, i8 %4, ptr noalias noundef align 16 captures(address) dead_on_return dereferenceable(48) %5) unnamed_addr #3 personality ptr @rust_eh_personality !dbg !26499 {
bb.a:
  %i.a = alloca [176 x i8], align 16              ; 16 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !26501
  tail call void @llvm.experimental.noalias.scope.decl(metadata !26502), !dbg !26505
  tail call void @llvm.experimental.noalias.scope.decl(metadata !26506), !dbg !26505
  tail call void @llvm.experimental.noalias.scope.decl(metadata !26508), !dbg !26505
  %i.b = load i8, ptr %5, align 16, !dbg !26510, !range !8593, !alias.scope !26508, !noalias !26513, !noundef !11 ; 2 uses
  %i.c = and i8 %i.b, 30, !dbg !26514
  %switch.i = icmp eq i8 %i.c, 26, !dbg !26514
  br i1 %switch.i, label %bb.c, label %bb.b, !dbg !26514, !prof !26515

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvNtCscgRAwXFJnXP_4core9panicking9panic_fmt(ptr noundef nonnull @75, ptr noundef nonnull inttoptr (i64 111 to ptr), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @76) #42
          to label %bb.f unwind label %bb.e, !dbg !26516, !noalias !26517

bb.c:                                             ; preds = %bb.a
  %.sroa.0.0.i = getelementptr inbounds nuw i8, ptr %5, i64 16, !dbg !26518
  %i.d = load ptr, ptr %.sroa.0.0.i, align 16, !dbg !26519, !alias.scope !26508, !noalias !26513, !nonnull !11, !noundef !11 ; 2 uses
  %i.e = atomicrmw add ptr %i.d, i64 1 monotonic, align 8, !dbg !26527, !noalias !26517
  %i.f = icmp slt i64 %i.e, 0, !dbg !26532
  br i1 %i.f, label %bb.d, label %_RNvMNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7builder11categoricalINtB2_25CategoricalChunkedBuilderNtNtB8_9datatypes16Categorical8TypeE3newCslpwjCj2YNBy_9polars_io.exit, !dbg !26532

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.trap(), !dbg !26534
  unreachable, !dbg !26534

bb.e:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeECslpwjCj2YNBy_9polars_io(ptr noalias noundef nonnull align 16 dereferenceable(48) %5) #41
          to label %bb.h unwind label %bb.g, !dbg !26535, !noalias !26513

bb.f:                                             ; preds = %bb.b
  unreachable

bb.g:                                             ; preds = %bb.i, %bb.e
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #43, !dbg !26536, !noalias !26502
  unreachable, !dbg !26536

bb.h:                                             ; preds = %bb.e
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 23, !dbg !26537
  %i.j = load i8, ptr %i.i, align 1, !dbg !26537, !range !1152, !alias.scope !26544, !noalias !26553, !noundef !11
  %i.k = icmp eq i8 %i.j, -40, !dbg !26554
  br i1 %i.k, label %bb.i, label %common.resume, !dbg !26554, !prof !54

bb.i:                                             ; preds = %bb.h
  invoke void @_RNvNvXs2_NtCs7VARH73bmU_11compact_str4reprNtB7_4ReprNtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4drop13outlined_drop(ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
          to label %common.resume unwind label %bb.g, !dbg !26555, !noalias !26502

common.resume:                                    ; preds = %bb.k, %bb.h, %bb.i
  %common.resume.op = phi { ptr, i32 } [ %i.g, %bb.h ], [ %i.g, %bb.i ], [ %i.y, %bb.k ]
  resume { ptr, i32 } %common.resume.op, !dbg !26556

_RNvMNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7builder11categoricalINtB2_25CategoricalChunkedBuilderNtNtB8_9datatypes16Categorical8TypeE3newCslpwjCj2YNBy_9polars_io.exit: ; preds = %bb.c
  %i.l = icmp eq i8 %i.b, 27, !dbg !26557
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(176) %i.a, ptr noundef nonnull align 16 dereferenceable(48) %5, i64 48, i1 false), !dbg !26560, !alias.scope !26553, !noalias !26506
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 56, !dbg !26561
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.m, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !dbg !26561, !alias.scope !26513, !noalias !26508
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 48, !dbg !26561
  store ptr %i.d, ptr %i.n, align 16, !dbg !26561, !alias.scope !26502, !noalias !26562
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 160, !dbg !26561
  %i.p = zext i1 %i.l to i8, !dbg !26561
  store i8 %i.p, ptr %i.o, align 16, !dbg !26561, !alias.scope !26502, !noalias !26562
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 136, !dbg !26561 ; 2 uses
  store i64 0, ptr %i.q, align 8, !dbg !26561, !alias.scope !26502, !noalias !26562
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 144, !dbg !26561
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.4.0..sroa_idx.i, align 16, !dbg !26561, !alias.scope !26502, !noalias !26562
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 152, !dbg !26561
  store i64 0, ptr %.sroa.5.0..sroa_idx.i, align 8, !dbg !26561, !alias.scope !26502, !noalias !26562
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 80, !dbg !26561 ; 2 uses
  store i64 0, ptr %i.r, align 16, !dbg !26561, !alias.scope !26502, !noalias !26562
  %.sroa.02.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 88, !dbg !26561
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.02.sroa.4.0..sroa_idx.i, align 8, !dbg !26561, !alias.scope !26502, !noalias !26562
  %.sroa.02.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 96, !dbg !26561
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(40) %.sroa.02.sroa.5.0..sroa_idx.i, i8 0, i64 40, i1 false), !dbg !26561, !alias.scope !26502, !noalias !26562
  invoke void @_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE7reserveCslpwjCj2YNBy_9polars_io(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.q, i64 noundef %2)
          to label %.noexc unwind label %bb.k, !dbg !26563

.noexc:                                           ; preds = %_RNvMNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7builder11categoricalINtB2_25CategoricalChunkedBuilderNtNtB8_9datatypes16Categorical8TypeE3newCslpwjCj2YNBy_9polars_io.exit
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 112, !dbg !26567
  %i.t = load i64, ptr %i.s, align 16, !dbg !26567, !alias.scope !26570, !noundef !11
  %i.u = add i64 %i.t, %2, !dbg !26567
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 120, !dbg !26573
  %i.w = load i64, ptr %i.v, align 8, !dbg !26573, !alias.scope !26570, !noundef !11
  %i.x = icmp ugt i64 %i.u, %i.w, !dbg !26567
  br i1 %i.x, label %bb.j, label %_RNvMNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7builder11categoricalINtB2_25CategoricalChunkedBuilderNtNtB8_9datatypes16Categorical8TypeE7reserveCslpwjCj2YNBy_9polars_io.exit, !dbg !26567, !prof !54

bb.j:                                             ; preds = %.noexc
  invoke void @_RNvMNtNtCs8774dFTUdNv_12polars_arrow6bitmap7builderNtB2_13BitmapBuilder12reserve_slow(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.r, i64 noundef %2) #45
          to label %_RNvMNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7builder11categoricalINtB2_25CategoricalChunkedBuilderNtNtB8_9datatypes16Categorical8TypeE7reserveCslpwjCj2YNBy_9polars_io.exit unwind label %bb.k, !dbg !26574

bb.k:                                             ; preds = %bb.j, %_RNvMNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7builder11categoricalINtB2_25CategoricalChunkedBuilderNtNtB8_9datatypes16Categorical8TypeE3newCslpwjCj2YNBy_9polars_io.exit
  %i.y = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7builder11categorical25CategoricalChunkedBuilderNtNtBP_9datatypes16Categorical8TypeEECslpwjCj2YNBy_9polars_io(ptr noalias noundef align 16 dereferenceable(176) %i.a) #41
          to label %common.resume unwind label %bb.l, !dbg !26575

_RNvMNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7builder11categoricalINtB2_25CategoricalChunkedBuilderNtNtB8_9datatypes16Categorical8TypeE7reserveCslpwjCj2YNBy_9polars_io.exit: ; preds = %.noexc, %bb.j
  %. = select i1 %3, i8 %4, i8 34, !dbg !26576
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(176) %0, ptr noundef nonnull align 16 dereferenceable(176) %i.a, i64 176, i1 false), !dbg !26579
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 176, !dbg !26580
  store i64 0, ptr %i.z, align 16, !dbg !26580
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 184, !dbg !26580
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.4.0..sroa_idx, align 8, !dbg !26580
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 192, !dbg !26580
  store i64 0, ptr %.sroa.5.0..sroa_idx, align 16, !dbg !26580
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 200, !dbg !26580
  store i8 %., ptr %i.aa, align 8, !dbg !26580
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !26575
  ret void, !dbg !26581

bb.l:                                             ; preds = %bb.k
  %i.ab = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
end_hunk_0
begin_hunk_1_@_RNvNtNtNtCslpwjCj2YNBy_9polars_io3csv4read6parser11parse_lines:bb.a
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking9panic_fmt(ptr noundef nonnull @115, ptr noundef nonnull inttoptr (i64 79 to ptr), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @116) #46, !dbg !40787
  unreachable, !dbg !40787

bb.c:                                             ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 60, !dbg !40788
  %i.q = load i8, ptr %i.p, align 4, !dbg !40788, !range !11823, !noundef !11
  %.not = icmp ne i64 %8, %12, !dbg !40789
  %i.r = ptrtoint ptr %1 to i64, !dbg !40791      ; 2 uses
  %i.s = trunc i64 %11 to i32, !dbg !40792
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 55
  %i.u = load i8, ptr %i.t, align 1, !range !3046
  %.fr = freeze i8 %i.u                           ; 4 uses
  %.not105 = icmp eq i8 %.fr, -37
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 2 uses
  %.not4.i = icmp eq i8 %.fr, -38
  %i.w = icmp ugt i8 %.fr, -41                    ; 2 uses
  %i.x = add i8 %.fr, 64
  %i.y = tail call i8 @llvm.umin.i8(i8 %i.x, i8 24)
  %.sroa.0.0.i.i.i = zext nneg i8 %i.y to i64
  %i.z = load ptr, ptr %i.v, align 8              ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.ab = load i64, ptr %i.aa, align 8
  %i.ac = ptrtoint ptr %i.z to i64
  %i.ad = trunc i64 %i.ac to i8
  %i.ae = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.af = load i8, ptr %i.ae, align 8             ; 7 uses
  %.idx = shl nuw nsw i64 %8, 3
  %i.ag = getelementptr inbounds nuw i8, ptr %7, i64 %.idx
  %i.ah = getelementptr inbounds nuw i8, ptr %3, i64 63
  %i.ai = load i8, ptr %i.ah, align 1             ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.ak = load i8, ptr %i.aj, align 8, !range !11823
  %i.al = trunc nuw i8 %i.ak to i1                ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %3, i64 57
  %i.an = load i8, ptr %i.am, align 1             ; 3 uses
  %.not108 = icmp eq ptr %6, null
  %i.ao = getelementptr inbounds nuw i8, ptr %3, i64 59
  %i.ap = load i8, ptr %i.ao, align 1, !range !11823
  %i.aq = trunc nuw i8 %i.ap to i1                ; 2 uses
  %not. = xor i1 %i.aq, true                      ; 2 uses
  %i.ar = trunc nuw i8 %i.q to i1
  %i.as = or i1 %.not, %i.ar
  %..sroa.0.0.i.i.i270 = select i1 %i.w, i64 %i.ab, i64 %.sroa.0.0.i.i.i
  %.271 = select i1 %i.w, ptr %i.z, ptr %i.v
  br label %.lr.ph, !dbg !40795

.lr.ph:                                           ; preds = %bb.c, %.outer
  %.sroa.0.0.ph269 = phi ptr [ %1, %bb.c ], [ %.sroa.0.1, %.outer ] ; 2 uses
  %.sroa.23.0.ph268 = phi i64 [ %2, %bb.c ], [ %.sroa.23.1, %.outer ] ; 3 uses
  %.sroa.036.0.ph267 = phi i32 [ 0, %bb.c ], [ %i.fx, %.outer ]
  %i.at = icmp eq i64 %.sroa.23.0.ph268, 0, !dbg !40798 ; 2 uses
  br i1 %.not105, label %.lr.ph.split.us, label %.lr.ph.split.split

.lr.ph.split.us:                                  ; preds = %.lr.ph
  br i1 %i.at, label %.split234.us, label %_RNvNtNtNtCslpwjCj2YNBy_9polars_io3csv4read6parser15is_comment_line.exit.thread, !dbg !40798

.lr.ph.split.split:                               ; preds = %.lr.ph
  br i1 %i.at, label %.split234.us, label %.lr.ph254, !dbg !40798

.outer._crit_edge:                                ; preds = %.outer
  %i.au = ptrtoint ptr %.sroa.0.1 to i64, !dbg !40799
  %i.av = sub i64 %i.au, %i.r, !dbg !40800
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !40802
  store i64 %i.av, ptr %i.aw, align 8, !dbg !40802
  br label %bb.d, !dbg !40803

.split234.us:                                     ; preds = %.lr.ph.split.split, %.lr.ph.split.us, %bb.e, %_RNvNtNtNtCslpwjCj2YNBy_9polars_io3csv4read6parser24next_line_position_naive.exit
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !40805
  store i64 %2, ptr %i.ax, align 8, !dbg !40805
  br label %bb.d, !dbg !40803

.lr.ph254:                                        ; preds = %.lr.ph.split.split, %_RNvNtNtNtCslpwjCj2YNBy_9polars_io3csv4read6parser24next_line_position_naive.exit
  %.sroa.23.0230253 = phi i64 [ %i.bk, %_RNvNtNtNtCslpwjCj2YNBy_9polars_io3csv4read6parser24next_line_position_naive.exit ], [ %.sroa.23.0.ph268, %.lr.ph.split.split ] ; 6 uses
  %.sroa.0.0231252 = phi ptr [ %.sroa.0.3, %_RNvNtNtNtCslpwjCj2YNBy_9polars_io3csv4read6parser24next_line_position_naive.exit ], [ %.sroa.0.0.ph269, %.lr.ph.split.split ] ; 8 uses
  br i1 %.not4.i, label %_RNvNtNtNtCslpwjCj2YNBy_9polars_io3csv4read6parser15is_comment_line.exit, label %_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr8as_slice.exit.i, !dbg !40806

_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr8as_slice.exit.i: ; preds = %.lr.ph254
  %i.ay = call noundef zeroext i1 @_RNvMNtCscgRAwXFJnXP_4core5sliceSh11starts_withCslpwjCj2YNBy_9polars_io(ptr noalias noundef nonnull readonly captures(address, read_provenance) %.sroa.0.0231252, i64 noundef range(i64 0, -9223372036854775808) %.sroa.23.0230253, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.271, i64 noundef %..sroa.0.0.i.i.i270), !dbg !40808
  br i1 %i.ay, label %bb.e, label %_RNvNtNtNtCslpwjCj2YNBy_9polars_io3csv4read6parser15is_comment_line.exit.thread, !dbg !40809

_RNvNtNtNtCslpwjCj2YNBy_9polars_io3csv4read6parser15is_comment_line.exit: ; preds = %.lr.ph254
  %i.az = load i8, ptr %.sroa.0.0231252, align 1, !dbg !40810, !alias.scope !40814, !noalias !40817, !noundef !11
  %i.ba = icmp eq i8 %i.az, %i.ad, !dbg !40810
  br i1 %i.ba, label %bb.e, label %_RNvNtNtNtCslpwjCj2YNBy_9polars_io3csv4read6parser15is_comment_line.exit.thread, !dbg !40809

bb.d:                                             ; preds = %_RNCNvNtNtNtCslpwjCj2YNBy_9polars_io3csv4read6parser11parse_lines0B9_.exit, %.split, %.split234.us, %.outer._crit_edge
  %.sink = phi i64 [ 2, %_RNCNvNtNtNtCslpwjCj2YNBy_9polars_io3csv4read6parser11parse_lines0B9_.exit ], [ 2, %.split ], [ 18, %.split234.us ], [ 18, %.outer._crit_edge ]
  store i64 %.sink, ptr %0, align 8, !dbg !40819
  ret void, !dbg !40820

_RNvNtNtNtCslpwjCj2YNBy_9polars_io3csv4read6parser15is_comment_line.exit.thread: ; preds = %_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr8as_slice.exit.i, %_RNvNtNtNtCslpwjCj2YNBy_9polars_io3csv4read6parser15is_comment_line.exit, %.lr.ph.split.us
  %.us-phi = phi i64 [ %.sroa.23.0.ph268, %.lr.ph.split.us ], [ %.sroa.23.0230253, %_RNvNtNtNtCslpwjCj2YNBy_9polars_io3csv4read6parser15is_comment_line.exit ], [ %.sroa.23.0230253, %_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr8as_slice.exit.i ], !dbg !40821 ; 9 uses
  %.us-phi235 = phi ptr [ %.sroa.0.0.ph269, %.lr.ph.split.us ], [ %.sroa.0.0231252, %_RNvNtNtNtCslpwjCj2YNBy_9polars_io3csv4read6parser15is_comment_line.exit ], [ %.sroa.0.0231252, %_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr8as_slice.exit.i ], !dbg !40821 ; 6 uses
  br label %.outer322, !dbg !40830

.outer322:                                        ; preds = %.split319, %_RNvNtNtNtCslpwjCj2YNBy_9polars_io3csv4read6parser15is_comment_line.exit.thread
  %.sroa.039.1263.ph.pn = phi ptr [ %.sroa.039.1263.ph, %.split319 ], [ %7, %_RNvNtNtNtCslpwjCj2YNBy_9polars_io3csv4read6parser15is_comment_line.exit.thread ] ; 2 uses
  %.sroa.044.0262.ph = phi i64 [ %i.dn, %.split319 ], [ 0, %_RNvNtNtNtCslpwjCj2YNBy_9polars_io3csv4read6parser15is_comment_line.exit.thread ] ; 4 uses
  %.sroa.053.0261.ph = phi i64 [ %i.dc, %.split319 ], [ 0, %_RNvNtNtNtCslpwjCj2YNBy_9polars_io3csv4read6parser15is_comment_line.exit.thread ]
  %.sroa.0.0157259.ph = phi ptr [ %.sroa.0.1158.ph191198, %.split319 ], [ %.us-phi235, %_RNvNtNtNtCslpwjCj2YNBy_9polars_io3csv4read6parser15is_comment_line.exit.thread ]
  %.sroa.7.0258.ph = phi i64 [ %.sroa.7.1.ph189199, %.split319 ], [ %.us-phi, %_RNvNtNtNtCslpwjCj2YNBy_9polars_io3csv4read6parser15is_comment_line.exit.thread ]
  %.sroa.0.0165255.ph = phi i32 [ %i.es, %.split319 ], [ 0, %_RNvNtNtNtCslpwjCj2YNBy_9polars_io3csv4read6parser15is_comment_line.exit.thread ]
  %.sroa.085.0260.ph = load i64, ptr %.sroa.039.1263.ph.pn, align 8, !dbg !40843, !noundef !11 ; 2 uses
  %.sroa.039.1263.ph = getelementptr inbounds nuw i8, ptr %.sroa.039.1263.ph.pn, i64 8 ; 2 uses
  %i.bb = trunc i64 %.sroa.085.0260.ph to i32
  br label %bb.f, !dbg !40851

bb.e:                                             ; preds = %_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr8as_slice.exit.i, %_RNvNtNtNtCslpwjCj2YNBy_9polars_io3csv4read6parser15is_comment_line.exit
  %i.bc = getelementptr inbounds nuw i8, ptr %.sroa.0.0231252, i64 %.sroa.23.0230253, !dbg !40852
  %i.bd = load atomic ptr, ptr @_RNvNvNtNtNtCslnrARR2vGZ9_6memchr4arch6x86_646memchr10memchr_raw2FN monotonic, align 8, !dbg !40860, !noalias !40866, !nonnull !11, !noundef !11
  %i.be = call { i64, ptr } %i.bd(i8 noundef %i.af, ptr noundef nonnull readonly %.sroa.0.0231252, ptr noundef nonnull readonly %i.bc), !dbg !40871, !noalias !40872, !inline_history !40873 ; 2 uses
  %i.bf = extractvalue { i64, ptr } %i.be, 0, !dbg !40874
  %i.bg = trunc nuw i64 %i.bf to i1, !dbg !40875
  br i1 %i.bg, label %_RNvNtNtNtCslpwjCj2YNBy_9polars_io3csv4read6parser24next_line_position_naive.exit, label %.split234.us, !dbg !40875

_RNvNtNtNtCslpwjCj2YNBy_9polars_io3csv4read6parser24next_line_position_naive.exit: ; preds = %bb.e
  %i.bh = extractvalue { i64, ptr } %i.be, 1, !dbg !40874
  %i.bi = call noundef i64 @_RNvXNtCslnrARR2vGZ9_6memchr3extPhNtB2_7Pointer8distanceCslpwjCj2YNBy_9polars_io(ptr noundef %i.bh, ptr noundef nonnull readonly %.sroa.0.0231252), !dbg !40877
  %i.bj = add i64 %i.bi, 1, !dbg !40878           ; 3 uses
  %.not.i.not = icmp eq i64 %.sroa.23.0230253, %i.bj, !dbg !40878
  %i.bk = sub nuw i64 %.sroa.23.0230253, %i.bj, !dbg !40880 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %.sroa.0.0231252, i64 %i.bj, !dbg !40880
  %.sroa.0.3 = select i1 %.not.i.not, ptr inttoptr (i64 1 to ptr), ptr %i.bl, !dbg !40880
  %i.bm = icmp eq i64 %i.bk, 0, !dbg !40798
  br i1 %i.bm, label %.split234.us, label %.lr.ph254, !dbg !40798

bb.f:                                             ; preds = %.outer322, %bb.u
  %.sroa.053.0261 = phi i64 [ %i.cr, %bb.u ], [ %.sroa.053.0261.ph, %.outer322 ] ; 3 uses
  %.sroa.0.0157259 = phi ptr [ %.sroa.0.1158.ph, %bb.u ], [ %.sroa.0.0157259.ph, %.outer322 ] ; 20 uses
  %.sroa.7.0258 = phi i64 [ %.sroa.7.1.ph, %bb.u ], [ %.sroa.7.0258.ph, %.outer322 ] ; 13 uses
  %.sroa.0.0165255 = phi i32 [ %i.da, %bb.u ], [ %.sroa.0.0165255.ph, %.outer322 ] ; 7 uses
  %i.bn = icmp eq i64 %.sroa.7.0258, 0, !dbg !40851
  br i1 %i.bn, label %.thread, label %bb.g, !dbg !40851

bb.g:                                             ; preds = %bb.f
  br i1 %i.al, label %bb.j, label %.lr.ph.i.i, !dbg !40881

.lr.ph.i.i:                                       ; preds = %bb.j, %bb.g
  %i.bo = getelementptr inbounds nuw i8, ptr %.sroa.0.0157259, i64 %.sroa.7.0258, !dbg !40883
  br label %bb.h, !dbg !40894

bb.h:                                             ; preds = %bb.i, %.lr.ph.i.i
  %.sroa.02.012.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %i.bt, %bb.i ] ; 5 uses
  %i.bp = phi ptr [ %.sroa.0.0157259, %.lr.ph.i.i ], [ %i.bs, %bb.i ] ; 2 uses
  %.val7.i.i = load i8, ptr %i.bp, align 1, !dbg !40904, !noalias !40905, !noundef !11 ; 2 uses
  %i.bq = icmp eq i8 %.val7.i.i, %i.ai, !dbg !40912
  %i.br = icmp eq i8 %.val7.i.i, %i.af
  %or.cond.i.i = or i1 %i.bq, %i.br, !dbg !40912
  br i1 %or.cond.i.i, label %bb.k, label %bb.i, !dbg !40912

bb.i:                                             ; preds = %bb.h
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bp, i64 1, !dbg !40920 ; 2 uses
  %i.bt = add nuw i64 %.sroa.02.012.i.i, 1, !dbg !40923
  %i.bu = icmp eq ptr %i.bs, %i.bo, !dbg !40924
  br i1 %i.bu, label %.loopexit, label %bb.h, !dbg !40894

bb.j:                                             ; preds = %bb.g
  %i.bv = load i8, ptr %.sroa.0.0157259, align 1, !dbg !40927, !noalias !40928, !noundef !11
  %i.bw = icmp eq i8 %i.bv, %i.an, !dbg !40929
  br i1 %i.bw, label %.lr.ph.i, label %.lr.ph.i.i, !dbg !40929

.lr.ph.i:                                         ; preds = %bb.j
  %i.bx = getelementptr inbounds nuw i8, ptr %.sroa.0.0157259, i64 %.sroa.7.0258, !dbg !40930
  br label %bb.m, !dbg !40940

bb.k:                                             ; preds = %bb.h
  %i.by = icmp ult i64 %.sroa.02.012.i.i, %.sroa.7.0258, !dbg !40947
  call void @llvm.assume(i1 %i.by), !dbg !40954
  %i.bz = getelementptr inbounds nuw i8, ptr %.sroa.0.0157259, i64 %.sroa.02.012.i.i, !dbg !40955
  %i.ca = load i8, ptr %i.bz, align 1, !dbg !40956, !noalias !40928, !noundef !11
  %i.cb = icmp eq i8 %i.ca, %i.af, !dbg !40956
  br i1 %i.cb, label %.loopexit, label %bb.l, !dbg !40956

bb.l:                                             ; preds = %bb.s, %bb.k
  %.sroa.016.0.i = phi i64 [ %i.cp, %bb.s ], [ %.sroa.02.012.i.i, %bb.k ], !dbg !40957 ; 2 uses
  %.sroa.0.0.i114 = phi i1 [ true, %bb.s ], [ false, %bb.k ], !dbg !40958
  %i.cc = add nuw i64 %.sroa.016.0.i, 1, !dbg !40959 ; 2 uses
  %i.cd = sub nuw i64 %.sroa.7.0258, %i.cc, !dbg !40962
  %i.ce = getelementptr inbounds nuw i8, ptr %.sroa.0.0157259, i64 %i.cc, !dbg !40970
  br label %.loopexit, !dbg !40976

bb.m:                                             ; preds = %bb.o, %.lr.ph.i
  %.sroa.05.053.i = phi i8 [ 0, %.lr.ph.i ], [ %spec.select.i, %bb.o ] ; 2 uses
  %.sroa.09.052.i = phi i32 [ 0, %.lr.ph.i ], [ %i.cl, %bb.o ] ; 4 uses
  %.sroa.012.051.i = phi ptr [ %.sroa.0.0157259, %.lr.ph.i ], [ %i.cf, %bb.o ] ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %.sroa.012.051.i, i64 1, !dbg !40977 ; 2 uses
  %i.cg = load i8, ptr %.sroa.012.051.i, align 1, !dbg !40980, !noalias !40928, !noundef !11 ; 3 uses
  %i.ch = icmp eq i8 %i.cg, %i.an, !dbg !40981
  %i.ci = zext i1 %i.ch to i8, !dbg !40981        ; 2 uses
  %spec.select.i = xor i8 %.sroa.05.053.i, %i.ci, !dbg !40981
  %.not.i115 = icmp eq i8 %.sroa.05.053.i, %i.ci, !dbg !40983
  br i1 %.not.i115, label %bb.n, label %bb.o, !dbg !40983

bb.n:                                             ; preds = %bb.m
  %i.cj = icmp eq i8 %i.cg, %i.ai, !dbg !40984
  %i.ck = icmp eq i8 %i.cg, %i.af                 ; 2 uses
  %or.cond.i = or i1 %i.cj, %i.ck, !dbg !40984
  br i1 %or.cond.i, label %bb.p, label %bb.o, !dbg !40984

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.cl = add nuw nsw i32 %.sroa.09.052.i, 1, !dbg !40987
  %i.cm = icmp eq ptr %i.cf, %i.bx, !dbg !40988
  br i1 %i.cm, label %.loopexit, label %bb.m, !dbg !40940

bb.p:                                             ; preds = %bb.n
  br i1 %i.ck, label %bb.q, label %bb.r, !dbg !40991

bb.q:                                             ; preds = %bb.p
  %i.cn = zext nneg i32 %.sroa.09.052.i to i64, !dbg !40992
  br label %.loopexit, !dbg !40993

bb.r:                                             ; preds = %bb.p
  %i.co = icmp eq i32 %.sroa.09.052.i, 0, !dbg !40995
  br i1 %i.co, label %.loopexit, label %bb.s, !dbg !40995

bb.s:                                             ; preds = %bb.r
  %i.cp = zext nneg i32 %.sroa.09.052.i to i64, !dbg !40996
  br label %bb.l, !dbg !40997

.loopexit:                                        ; preds = %bb.i, %bb.o, %bb.q, %bb.k, %bb.l, %bb.r
  %.sroa.18127.0.ph = phi i1 [ true, %bb.q ], [ true, %bb.r ], [ true, %bb.o ], [ %.sroa.0.0.i114, %bb.l ], [ false, %bb.k ], [ false, %bb.i ] ; 2 uses
  %.sroa.11.0.ph = phi i64 [ %i.cn, %bb.q ], [ %.sroa.7.0258, %bb.r ], [ %.sroa.7.0258, %bb.o ], [ %.sroa.016.0.i, %bb.l ], [ %.sroa.02.012.i.i, %bb.k ], [ %.sroa.7.0258, %bb.i ] ; 5 uses
  %.sroa.18.1.ph = phi i1 [ true, %bb.q ], [ true, %bb.r ], [ true, %bb.o ], [ false, %bb.l ], [ true, %bb.k ], [ true, %bb.i ] ; 3 uses
  %.sroa.7.1.ph = phi i64 [ %.sroa.7.0258, %bb.q ], [ %.sroa.7.0258, %bb.r ], [ %.sroa.7.0258, %bb.o ], [ %i.cd, %bb.l ], [ %.sroa.7.0258, %bb.k ], [ %.sroa.7.0258, %bb.i ] ; 3 uses
  %.sroa.0.1158.ph = phi ptr [ %.sroa.0.0157259, %bb.q ], [ %.sroa.0.0157259, %bb.r ], [ %.sroa.0.0157259, %bb.o ], [ %i.ce, %bb.l ], [ %.sroa.0.0157259, %bb.k ], [ %.sroa.0.0157259, %bb.i ] ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0157259) ]
  %i.cq = add i64 %.sroa.053.0261, 1, !dbg !40998
  %i.cr = add i64 %i.cq, %.sroa.11.0.ph, !dbg !41001 ; 4 uses
  %i.cs = icmp eq i32 %.sroa.0.0165255, %i.bb, !dbg !41002
  br i1 %i.cs, label %bb.t, label %bb.u, !dbg !41002

.thread:                                          ; preds = %bb.f
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0157259) ]
  %i.ct = add i64 %.sroa.053.0261, 1, !dbg !41001 ; 2 uses
  %i.cu = trunc i64 %.sroa.085.0260.ph to i32, !dbg !41003
  %i.cv = icmp eq i32 %.sroa.0.0165255, %i.cu, !dbg !41002
  br i1 %i.cv, label %.thread192, label %_RNvXs_NtNtNtNtCslpwjCj2YNBy_9polars_io3csv4read11splitfields5innerNtB4_11SplitFieldsNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit, !dbg !41002

_RNvXs_NtNtNtNtCslpwjCj2YNBy_9polars_io3csv4read11splitfields5innerNtB4_11SplitFieldsNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit: ; preds = %.thread, %.split319, %bb.u
  %.sroa.044.2318 = phi i64 [ %.sroa.044.0262.ph, %bb.u ], [ %.sroa.044.0262.ph, %.thread ], [ %i.dn, %.split319 ]
  %i.cw = phi i64 [ %i.cr, %bb.u ], [ %i.ct, %.thread ], [ %i.dc, %.split319 ]
  %.sroa.0.0.i116 = call noundef i64 @llvm.umin.i64(i64 %.us-phi, i64 %i.cw), !dbg !41004 ; 2 uses
  %i.cx = sub nuw i64 %.us-phi, %.sroa.0.0.i116, !dbg !41008
  %i.cy = getelementptr inbounds nuw i8, ptr %.us-phi235, i64 %.sroa.0.0.i116, !dbg !41017
  br label %_RNvNtNtNtCslpwjCj2YNBy_9polars_io3csv4read6parser14skip_this_line.exit, !dbg !41023

_RNvNtNtNtCslpwjCj2YNBy_9polars_io3csv4read6parser14skip_this_line.exit: ; preds = %bb.bd, %bb.ba, %bb.bf, %bb.bc, %bb.az, %bb.ax, %_RNvXs_NtNtNtNtCslpwjCj2YNBy_9polars_io3csv4read11splitfields5innerNtB4_11SplitFieldsNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit
  %.sroa.044.1 = phi i64 [ %.sroa.044.2318, %_RNvXs_NtNtNtNtCslpwjCj2YNBy_9polars_io3csv4read11splitfields5innerNtB4_11SplitFieldsNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit ], [ %i.dn, %bb.ax ], [ %i.dn, %bb.az ], [ %i.dn, %bb.bf ], [ %i.dn, %bb.bc ], [ %i.dn, %bb.ba ], [ %i.dn, %bb.bd ], !dbg !41024 ; 2 uses
  %.sroa.23.1 = phi i64 [ %i.cx, %_RNvXs_NtNtNtNtCslpwjCj2YNBy_9polars_io3csv4read11splitfields5innerNtB4_11SplitFieldsNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit ], [ %i.ez, %bb.ax ], [ 0, %bb.az ], [ %i.fv, %bb.bf ], [ 0, %bb.bc ], [ 0, %bb.ba ], [ 0, %bb.bd ], !dbg !41025
  %.sroa.0.1 = phi ptr [ %i.cy, %_RNvXs_NtNtNtNtCslpwjCj2YNBy_9polars_io3csv4read11splitfields5innerNtB4_11SplitFieldsNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit ], [ %i.fa, %bb.ax ], [ inttoptr (i64 1 to ptr), %bb.az ], [ %i.fw, %bb.bf ], [ inttoptr (i64 1 to ptr), %bb.bc ], [ inttoptr (i64 1 to ptr), %bb.ba ], [ inttoptr (i64 1 to ptr), %bb.bd ], !dbg !41025 ; 2 uses
  %i.cz = icmp ult i64 %.sroa.044.1, %8, !dbg !41027
  br i1 %i.cz, label %.lr.ph265, label %.outer, !dbg !41027

bb.t:                                             ; preds = %.loopexit
  %.not107 = icmp eq i64 %.sroa.11.0.ph, 0, !dbg !41028
  br i1 %.not107, label %.thread192, label %bb.v, !dbg !41028

bb.u:                                             ; preds = %.loopexit
  %i.da = add i32 %.sroa.0.0165255, 1, !dbg !41029
  br i1 %.sroa.18.1.ph, label %_RNvXs_NtNtNtNtCslpwjCj2YNBy_9polars_io3csv4read11splitfields5innerNtB4_11SplitFieldsNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit, label %bb.f, !dbg !40830

.thread192:                                       ; preds = %.thread, %bb.v, %bb.t
  %.sroa.11.0.ph185201 = phi i64 [ 0, %bb.t ], [ %.sroa.11.0.ph, %bb.v ], [ 0, %.thread ]
  %.sroa.18.1.ph187200 = phi i1 [ %.sroa.18.1.ph, %bb.t ], [ %.sroa.18.1.ph, %bb.v ], [ true, %.thread ]
  %.sroa.7.1.ph189199 = phi i64 [ %.sroa.7.1.ph, %bb.t ], [ %.sroa.7.1.ph, %bb.v ], [ 0, %.thread ]
  %.sroa.0.1158.ph191198 = phi ptr [ %.sroa.0.1158.ph, %bb.t ], [ %.sroa.0.1158.ph, %bb.v ], [ %.sroa.0.0157259, %.thread ]
  %i.db = phi i1 [ %.sroa.18127.0.ph, %bb.t ], [ %.sroa.18127.0.ph, %bb.v ], [ false, %.thread ] ; 2 uses
  %i.dc = phi i64 [ %i.cr, %bb.t ], [ %i.cr, %bb.v ], [ %i.ct, %.thread ] ; 5 uses
  %.sroa.12.0 = phi i64 [ 0, %bb.t ], [ %spec.select, %bb.v ], [ 0, %.thread ], !dbg !41026 ; 5 uses
  %i.dd = getelementptr inbounds nuw [304 x i8], ptr %9, i64 %.sroa.044.0262.ph, !dbg !41030 ; 3 uses
  br i1 %.not108, label %bb.x, label %bb.w, !dbg !41035

bb.v:                                             ; preds = %bb.t
  %i.de = add i64 %.sroa.11.0.ph, -1, !dbg !41039 ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %.sroa.0.0157259, i64 %i.de, !dbg !41040
  %i.dg = load i8, ptr %i.df, align 1, !dbg !41046, !noundef !11
  %i.dh = icmp eq i8 %i.dg, 13, !dbg !41046
  %spec.select = select i1 %i.dh, i64 %i.de, i64 %.sroa.11.0.ph, !dbg !41046
  br label %.thread192, !dbg !41046

bb.w:                                             ; preds = %.thread192
  %.not110 = xor i1 %i.db, true, !dbg !41047
  %i.di = icmp eq i64 %.sroa.12.0, 0              ; 2 uses
  %or.cond = or i1 %i.di, %.not110, !dbg !41047   ; 2 uses
  %i.dj = add i64 %.sroa.12.0, -2, !dbg !41047
  %.sroa.380.0 = select i1 %or.cond, i64 %.sroa.12.0, i64 %i.dj, !dbg !41047
  %not.or.cond = xor i1 %or.cond, true, !dbg !41047
  %.sroa.079.0.idx = zext i1 %not.or.cond to i64, !dbg !41047
  %.sroa.079.0 = getelementptr inbounds nuw i8, ptr %.sroa.0.0157259, i64 %.sroa.079.0.idx, !dbg !41047
  %i.dk = zext i32 %.sroa.0.0165255 to i64, !dbg !41048
  %i.dl = call noundef zeroext i1 @_RNvMs5_NtNtNtCslpwjCj2YNBy_9polars_io3csv4read7optionsNtB5_18NullValuesCompiled7is_null(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %6, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.sroa.079.0, i64 noundef %.sroa.380.0, i64 noundef %i.dk), !dbg !41050
  br i1 %i.dl, label %bb.y, label %bb.x, !dbg !41051

bb.x:                                             ; preds = %.thread192, %bb.w
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !dbg !41052
  call fastcc void @_RNvMsk_NtNtNtCslpwjCj2YNBy_9polars_io3csv4read7builderNtB5_7Builder3add(ptr noalias noundef align 8 captures(address) dereferenceable(72) %i.n, ptr noalias noundef align 16 dereferenceable(304) %i.dd, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.sroa.0.0157259, i64 noundef %.sroa.12.0, i1 noundef zeroext %5, i1 noundef zeroext %i.db, i1 noundef zeroext %i.aq) #47, !dbg !41053
  %i.dm = load i64, ptr %i.n, align 8, !dbg !41054, !range !1116, !noundef !11
  %.not109 = icmp eq i64 %i.dm, 18, !dbg !41054
  br i1 %.not109, label %bb.at, label %bb.aa, !dbg !41057

bb.y:                                             ; preds = %bb.w
  %.sroa.082.0 = and i1 %i.di, %not., !dbg !41058
  call void @_RNvMsk_NtNtNtCslpwjCj2YNBy_9polars_io3csv4read7builderNtB5_7Builder8add_null(ptr noalias noundef nonnull align 16 dereferenceable(304) %i.dd, i1 noundef zeroext %.sroa.082.0), !dbg !41059
  br label %bb.z, !dbg !41060

bb.z:                                             ; preds = %bb.at, %bb.y
  %i.dn = add i64 %.sroa.044.0262.ph, 1, !dbg !41061 ; 8 uses
  %i.do = icmp eq ptr %.sroa.039.1263.ph, %i.ag, !dbg !41062
  br i1 %i.do, label %bb.au, label %.split319, !dbg !41072

bb.aa:                                            ; preds = %bb.x
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !dbg !41073
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.k, ptr noundef nonnull align 8 dereferenceable(72) %i.n, i64 72, i1 false), !dbg !41075
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4137), !dbg !41073
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !41076
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !dbg !41076, !noalias !41080
  %i.dp = ptrtoint ptr %.sroa.0.0157259 to i64, !dbg !41085
  %i.dq = sub i64 %4, %i.r, !dbg !41086
  %i.dr = add i64 %i.dq, %i.dp, !dbg !41086
  store i64 %i.dr, ptr %i.j, align 8, !dbg !41086, !noalias !41080
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !dbg !41087, !noalias !41080
  invoke void @_RNvMNtCsgZ49sUHp3tW_5alloc6stringNtB2_6String15from_utf8_lossy(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.i, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.sroa.0.0157259, i64 noundef %.sroa.12.0)
          to label %bb.ac unwind label %bb.ab, !dbg !41089, !noalias !41080

.body.i:                                          ; preds = %bb.ao, %bb.an, %bb.af, %bb.ab
  %.pn32.i = phi { ptr, i32 } [ %.pn.i, %bb.af ], [ %i.ds, %bb.ab ], [ %i.em, %bb.ao ], [ %i.em, %bb.an ]
  invoke void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtCsgjwxzEoLG5s_12polars_error11PolarsErrorECslpwjCj2YNBy_9polars_io(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.k) #41
          to label %bb.as unwind label %bb.ar, !dbg !41090, !noalias !41091

bb.ab:                                            ; preds = %bb.aa
  %i.ds = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

bb.ac:                                            ; preds = %bb.aa
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !dbg !41092, !noalias !41080
  %i.dt = zext i32 %.sroa.0.0165255 to i64, !dbg !41094 ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %13, i64 16, !dbg !41095
  %i.dv = load i64, ptr %i.du, align 8, !dbg !41095, !noalias !41080, !noundef !11
  %i.dw = icmp ugt i64 %i.dv, %i.dt, !dbg !41117
  br i1 %i.dw, label %bb.ae, label %bb.ad, !dbg !41117, !prof !1108

bb.ad:                                            ; preds = %bb.ac
  invoke void @_RNvNtCscgRAwXFJnXP_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @56) #42
          to label %bb.ah unwind label %bb.ag, !dbg !41122, !noalias !41080

bb.ae:                                            ; preds = %bb.ac
  %i.dx = getelementptr inbounds nuw i8, ptr %13, i64 8, !dbg !41125
  %i.dy = load ptr, ptr %i.dx, align 8, !dbg !41125, !noalias !41080, !nonnull !11, !noundef !11
  %i.dz = getelementptr inbounds nuw [80 x i8], ptr %i.dy, i64 %i.dt, !dbg !41134
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 48, !dbg !41135
  store ptr %i.ea, ptr %i.h, align 8, !dbg !41145, !noalias !41080
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !dbg !41146, !noalias !41080
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !41148, !noalias !41080
  store ptr %i.i, ptr %i.e, align 8, !dbg !41148, !noalias !41080
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !41149, !noalias !41080
  invoke void @_RNvMsk_NtNtNtCslpwjCj2YNBy_9polars_io3csv4read7builderNtB5_7Builder5dtype(ptr noalias noundef nonnull sret([48 x i8]) align 16 captures(address) dereferenceable(48) %i.d, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(304) %i.dd)
          to label %bb.ai unwind label %bb.ag, !dbg !41150, !noalias !41080

bb.af:                                            ; preds = %bb.aj, %bb.ag
  %.pn.i = phi { ptr, i32 } [ %i.eb, %bb.ag ], [ %i.ej, %bb.aj ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CoweEECslpwjCj2YNBy_9polars_io(ptr noalias noundef align 8 dereferenceable(24) %i.i) #41
          to label %.body.i unwind label %bb.ar, !dbg !41151, !noalias !41091

bb.ag:                                            ; preds = %bb.ak, %_RINvMNtCscgRAwXFJnXP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsgZ49sUHp3tW_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECslpwjCj2YNBy_9polars_io.exit.i, %bb.ae, %bb.ad
  %i.eb = landingpad { ptr, i32 }
          cleanup
  br label %bb.af

bb.ah:                                            ; preds = %bb.ad
  unreachable

bb.ai:                                            ; preds = %bb.ae
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !41152, !noalias !41080
  %i.ec = add i32 %.sroa.0.0165255, 1, !dbg !41152
  store i32 %i.ec, ptr %i.c, align 4, !dbg !41152, !noalias !41080
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !41153, !noalias !41080
  store ptr %i.i, ptr %i.b, align 8, !dbg !41153, !noalias !41080
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !41154, !noalias !41080
  store ptr %i.e, ptr %i.a, align 8, !dbg !41154, !noalias !41080
  %.sroa.44.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !41154
  store ptr @_RNvXs1i_NtCscgRAwXFJnXP_4core3fmtRINtNtCsgZ49sUHp3tW_5alloc6borrow3CoweENtB6_7Display3fmtCslpwjCj2YNBy_9polars_io, ptr %.sroa.44.0..sroa_idx.i, align 8, !dbg !41154, !noalias !41080
  %i.ed = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !41154
  store ptr %i.d, ptr %i.ed, align 8, !dbg !41154, !noalias !41080
  %.sroa.48.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24, !dbg !41154
  store ptr @_RNvXs5_NtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtypeNtB5_8DataTypeNtNtCscgRAwXFJnXP_4core3fmt7Display3fmt, ptr %.sroa.48.0..sroa_idx.i, align 8, !dbg !41154, !noalias !41080
  %i.ee = getelementptr inbounds nuw i8, ptr %i.a, i64 32, !dbg !41154
  store ptr %i.h, ptr %i.ee, align 8, !dbg !41154, !noalias !41080
  %.sroa.412.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 40, !dbg !41154
  store ptr @_RNvXs1i_NtCscgRAwXFJnXP_4core3fmtRNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNtB6_7Display3fmtCslpwjCj2YNBy_9polars_io, ptr %.sroa.412.0..sroa_idx.i, align 8, !dbg !41154, !noalias !41080
  %i.ef = getelementptr inbounds nuw i8, ptr %i.a, i64 48, !dbg !41154
  store ptr %i.c, ptr %i.ef, align 8, !dbg !41154, !noalias !41080
  %.sroa.416.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 56, !dbg !41154
  store ptr @_RNvXs8_NtNtNtCscgRAwXFJnXP_4core3fmt3num3impmNtB9_7Display3fmt, ptr %.sroa.416.0..sroa_idx.i, align 8, !dbg !41154, !noalias !41080
  %i.eg = getelementptr inbounds nuw i8, ptr %i.a, i64 64, !dbg !41154
  store ptr %i.j, ptr %i.eg, align 8, !dbg !41154, !noalias !41080
  %.sroa.420.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 72, !dbg !41154
  store ptr @_RNvXsi_NtNtNtCscgRAwXFJnXP_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.420.0..sroa_idx.i, align 8, !dbg !41154, !noalias !41080
  %i.eh = getelementptr inbounds nuw i8, ptr %i.a, i64 80, !dbg !41154
  store ptr %i.b, ptr %i.eh, align 8, !dbg !41154, !noalias !41080
  %.sroa.424.0..sroa_idx.i117 = getelementptr inbounds nuw i8, ptr %i.a, i64 88, !dbg !41154
  store ptr @_RNvXs1i_NtCscgRAwXFJnXP_4core3fmtRINtNtCsgZ49sUHp3tW_5alloc6borrow3CoweENtB6_7Display3fmtCslpwjCj2YNBy_9polars_io, ptr %.sroa.424.0..sroa_idx.i117, align 8, !dbg !41154, !noalias !41080
  %i.ei = getelementptr inbounds nuw i8, ptr %i.a, i64 96, !dbg !41154
  store ptr %i.k, ptr %i.ei, align 8, !dbg !41154, !noalias !41080
  %.sroa.428.0..sroa_idx.i118 = getelementptr inbounds nuw i8, ptr %i.a, i64 104, !dbg !41154
  store ptr @_RNvXs4_CsgjwxzEoLG5s_12polars_errorNtB5_11PolarsErrorNtNtCscgRAwXFJnXP_4core3fmt7Display3fmt, ptr %.sroa.428.0..sroa_idx.i118, align 8, !dbg !41154, !noalias !41080
  invoke void @_RNvNvNtCsgZ49sUHp3tW_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.f, ptr noundef nonnull @57, ptr noundef nonnull %i.a)
          to label %_RINvMNtCscgRAwXFJnXP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsgZ49sUHp3tW_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECslpwjCj2YNBy_9polars_io.exit.i unwind label %bb.aj, !dbg !41157, !noalias !41091

bb.aj:                                            ; preds = %bb.ai
  %i.ej = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeECslpwjCj2YNBy_9polars_io(ptr noalias noundef align 16 dereferenceable(48) %i.d) #41
          to label %bb.af unwind label %bb.ar, !dbg !41146, !noalias !41091

_RINvMNtCscgRAwXFJnXP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsgZ49sUHp3tW_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECslpwjCj2YNBy_9polars_io.exit.i: ; preds = %bb.ai
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !41146, !noalias !41080
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !41146, !noalias !41080
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !41146, !noalias !41080
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeECslpwjCj2YNBy_9polars_io(ptr noalias noundef align 16 dereferenceable(48) %i.d)
          to label %bb.ak unwind label %bb.ag, !dbg !41146, !noalias !41091

bb.ak:                                            ; preds = %_RINvMNtCscgRAwXFJnXP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsgZ49sUHp3tW_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECslpwjCj2YNBy_9polars_io.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !41146, !noalias !41080
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !41146, !noalias !41080
  invoke void @_RNvXs_CsgjwxzEoLG5s_12polars_errorNtB4_9ErrStringINtNtCscgRAwXFJnXP_4core7convert4FromNtNtCsgZ49sUHp3tW_5alloc6string6StringE4fromCslpwjCj2YNBy_9polars_io(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.g, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.f, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @58)
          to label %bb.al unwind label %bb.ag, !dbg !41163, !noalias !41091

bb.al:                                            ; preds = %bb.ak
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4137, ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 24, i1 false), !dbg !41146, !noalias !41167
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !41146, !noalias !41080
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !dbg !41168, !noalias !41080
  %i.ek = load i64, ptr %i.i, align 8, !dbg !41169, !range !1173, !alias.scope !41171, !noalias !41080, !noundef !11
  %i.el = icmp eq i64 %i.ek, -9223372036854775808, !dbg !41169
  br i1 %i.el, label %_RNCNvNtNtNtCslpwjCj2YNBy_9polars_io3csv4read6parser11parse_lines0B9_.exit, label %bb.am, !dbg !41169

bb.am:                                            ; preds = %bb.al
  invoke void @_RNvXso_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCslpwjCj2YNBy_9polars_io(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %bb.ap unwind label %bb.an, !dbg !41174, !noalias !41091

bb.an:                                            ; preds = %bb.am
  %i.em = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val2.i.i.i.i = load i64, ptr %i.i, align 8, !dbg !41174, !alias.scope !41177, !noalias !41080 ; 2 uses
  %i.en = icmp eq i64 %.val2.i.i.i.i, 0
  br i1 %i.en, label %.body.i, label %bb.ao, !dbg !41184

bb.ao:                                            ; preds = %bb.an
  %i.eo = getelementptr inbounds nuw i8, ptr %i.i, i64 8, !dbg !41174
  %.val3.i.i.i.i = load ptr, ptr %i.eo, align 8, !dbg !41174, !alias.scope !41189, !noalias !41080, !nonnull !11, !noundef !11
  call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i.i.i, i64 noundef %.val2.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #44, !dbg !41190, !noalias !41195
  br label %.body.i, !dbg !41198

bb.ap:                                            ; preds = %bb.am
  %.val.i.i.i.i = load i64, ptr %i.i, align 8, !dbg !41174, !alias.scope !41177, !noalias !41080 ; 2 uses
  %i.ep = icmp eq i64 %.val.i.i.i.i, 0
  br i1 %i.ep, label %_RNCNvNtNtNtCslpwjCj2YNBy_9polars_io3csv4read6parser11parse_lines0B9_.exit, label %bb.aq, !dbg !41199

bb.aq:                                            ; preds = %bb.ap
  %i.eq = getelementptr inbounds nuw i8, ptr %i.i, i64 8, !dbg !41174
  %.val1.i.i.i.i = load ptr, ptr %i.eq, align 8, !dbg !41174, !alias.scope !41189, !noalias !41080, !nonnull !11, !noundef !11
  call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i, i64 noundef %.val.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #44, !dbg !41204, !noalias !41209
  br label %_RNCNvNtNtNtCslpwjCj2YNBy_9polars_io3csv4read6parser11parse_lines0B9_.exit, !dbg !41212

bb.ar:                                            ; preds = %bb.aj, %bb.af, %.body.i
  %i.er = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #43, !dbg !41213, !noalias !41091
  unreachable, !dbg !41213

bb.as:                                            ; preds = %.body.i
  resume { ptr, i32 } %.pn32.i, !dbg !41213

_RNCNvNtNtNtCslpwjCj2YNBy_9polars_io3csv4read6parser11parse_lines0B9_.exit: ; preds = %bb.al, %bb.ap, %bb.aq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !dbg !41151, !noalias !41080
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !dbg !41090, !noalias !41080
  call void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtCsgjwxzEoLG5s_12polars_error11PolarsErrorECslpwjCj2YNBy_9polars_io(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.k), !dbg !41090, !noalias !41091
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !41214
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !dbg !41215
  %.sroa.2155.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !41216
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.2155.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4137, i64 24, i1 false), !dbg !41223
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4137), !dbg !41224
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !dbg !41225
  br label %bb.d, !dbg !41226

bb.at:                                            ; preds = %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !dbg !41225
  br label %bb.z, !dbg !41060

.split319:                                        ; preds = %bb.z
  %i.es = add i32 %.sroa.0.0165255, 1, !dbg !41029
  br i1 %.sroa.18.1.ph187200, label %_RNvXs_NtNtNtNtCslpwjCj2YNBy_9polars_io3csv4read11splitfields5innerNtB4_11SplitFieldsNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit, label %.outer322, !dbg !40830

bb.au:                                            ; preds = %bb.z
  %i.et = add i64 %.sroa.11.0.ph185201, %.sroa.053.0261, !dbg !41228 ; 5 uses
  %i.eu = icmp ult i64 %i.et, %.us-phi, !dbg !41229
  br i1 %i.eu, label %bb.av, label %bb.aw, !dbg !41229

bb.av:                                            ; preds = %bb.au
  %i.ev = getelementptr inbounds nuw i8, ptr %.us-phi235, i64 %i.et, !dbg !41234
  %i.ew = load i8, ptr %i.ev, align 1, !dbg !41235, !noundef !11
  %i.ex = icmp eq i8 %i.ew, %i.af, !dbg !41235
  br i1 %i.ex, label %bb.ax, label %bb.aw, !dbg !41242

bb.aw:                                            ; preds = %bb.au, %bb.av
  %i.ey = icmp uge i64 %i.dc, %.us-phi
  %or.cond112.not = select i1 %i.as, i1 true, i1 %i.ey, !dbg !41243
  br i1 %or.cond112.not, label %bb.ay, label %.split, !dbg !41243, !prof !41244

bb.ax:                                            ; preds = %bb.av
  %i.ez = sub nuw i64 %.us-phi, %i.dc, !dbg !41245
  %i.fa = getelementptr inbounds nuw i8, ptr %.us-phi235, i64 %i.dc, !dbg !41251
  br label %_RNvNtNtNtCslpwjCj2YNBy_9polars_io3csv4read6parser14skip_this_line.exit, !dbg !41256

bb.ay:                                            ; preds = %bb.aw
  %i.fb = sub nuw i64 %.us-phi, %i.et, !dbg !41257 ; 5 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %.us-phi235, i64 %i.et, !dbg !41263 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !41268), !dbg !41271
  %i.fd = getelementptr inbounds nuw i8, ptr %.us-phi235, i64 %.us-phi, !dbg !41272 ; 2 uses
  %i.fe = icmp eq i64 %.us-phi, %i.et, !dbg !41272 ; 2 uses
  br i1 %i.al, label %bb.az, label %bb.bc, !dbg !41275

bb.az:                                            ; preds = %bb.ay
  br i1 %i.fe, label %_RNvNtNtNtCslpwjCj2YNBy_9polars_io3csv4read6parser14skip_this_line.exit, label %.lr.ph.i.i123, !dbg !41276

.lr.ph.i.i123:                                    ; preds = %bb.az, %bb.ba
  %.sroa.01.012.i.i = phi i8 [ %spec.select.i.i, %bb.ba ], [ 0, %bb.az ] ; 2 uses
  %.sroa.03.011.i.i = phi i32 [ %i.fl, %bb.ba ], [ 0, %bb.az ] ; 2 uses
  %.sroa.05.010.i.i = phi ptr [ %i.fk, %bb.ba ], [ %i.fc, %bb.az ] ; 2 uses
  %i.ff = load i8, ptr %.sroa.05.010.i.i, align 1, !dbg !41289, !alias.scope !41290, !noundef !11 ; 2 uses
  %i.fg = icmp eq i8 %i.ff, %i.an, !dbg !41293
  %i.fh = zext i1 %i.fg to i8, !dbg !41293        ; 2 uses
  %i.fi = icmp ne i8 %.sroa.01.012.i.i, %i.fh, !dbg !41295
  %i.fj = icmp ne i8 %i.ff, %i.af
  %or.cond.not.i.i = or i1 %i.fj, %i.fi, !dbg !41295
  br i1 %or.cond.not.i.i, label %bb.ba, label %bb.bb, !dbg !41295

bb.ba:                                            ; preds = %.lr.ph.i.i123
  %spec.select.i.i = xor i8 %.sroa.01.012.i.i, %i.fh, !dbg !41293
  %i.fk = getelementptr inbounds nuw i8, ptr %.sroa.05.010.i.i, i64 1, !dbg !41296 ; 2 uses
  %i.fl = add nuw nsw i32 %.sroa.03.011.i.i, 1, !dbg !41299
  %i.fm = icmp eq ptr %i.fk, %i.fd, !dbg !41300
  br i1 %i.fm, label %_RNvNtNtNtCslpwjCj2YNBy_9polars_io3csv4read6parser14skip_this_line.exit, label %.lr.ph.i.i123, !dbg !41276

bb.bb:                                            ; preds = %.lr.ph.i.i123
  %i.fn = zext nneg i32 %.sroa.03.011.i.i to i64, !dbg !41303
  br label %_RNvNtNtNtCslpwjCj2YNBy_9polars_io3csv4read6parser11find_quoted.exit.i, !dbg !41304

bb.bc:                                            ; preds = %bb.ay
  br i1 %i.fe, label %_RNvNtNtNtCslpwjCj2YNBy_9polars_io3csv4read6parser14skip_this_line.exit, label %.lr.ph.i8.i, !dbg !41305

.lr.ph.i8.i:                                      ; preds = %bb.bc, %bb.bd
  %.sroa.02.09.i.i = phi i64 [ %i.fr, %bb.bd ], [ 0, %bb.bc ] ; 3 uses
  %i.fo = phi ptr [ %i.fq, %bb.bd ], [ %i.fc, %bb.bc ] ; 2 uses
  %.val7.i.i120 = load i8, ptr %i.fo, align 1, !dbg !41315, !alias.scope !41268, !noalias !41316, !noundef !11
  %i.fp = icmp eq i8 %.val7.i.i120, %i.af, !dbg !41320
  br i1 %i.fp, label %bb.be, label %bb.bd, !dbg !41315

bb.bd:                                            ; preds = %.lr.ph.i8.i
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fo, i64 1, !dbg !41324 ; 2 uses
  %i.fr = add nuw nsw i64 %.sroa.02.09.i.i, 1, !dbg !41327
  %i.fs = icmp eq ptr %i.fq, %i.fd, !dbg !41328
  br i1 %i.fs, label %_RNvNtNtNtCslpwjCj2YNBy_9polars_io3csv4read6parser14skip_this_line.exit, label %.lr.ph.i8.i, !dbg !41305

bb.be:                                            ; preds = %.lr.ph.i8.i
  %i.ft = icmp samesign ult i64 %.sroa.02.09.i.i, %i.fb, !dbg !41331
  call void @llvm.assume(i1 %i.ft), !dbg !41332
  br label %_RNvNtNtNtCslpwjCj2YNBy_9polars_io3csv4read6parser11find_quoted.exit.i, !dbg !41335

_RNvNtNtNtCslpwjCj2YNBy_9polars_io3csv4read6parser11find_quoted.exit.i: ; preds = %bb.be, %bb.bb
  %.sroa.3.0.i.pn.i = phi i64 [ %.sroa.02.09.i.i, %bb.be ], [ %i.fn, %bb.bb ] ; 2 uses
  %i.fu = add nuw nsw i64 %.sroa.3.0.i.pn.i, 1, !dbg !41336 ; 3 uses
  %.not.i122 = icmp samesign ult i64 %.sroa.3.0.i.pn.i, %i.fb, !dbg !41339
  br i1 %.not.i122, label %bb.bf, label %bb.bg, !dbg !41339, !prof !1108

bb.bf:                                            ; preds = %_RNvNtNtNtCslpwjCj2YNBy_9polars_io3csv4read6parser11find_quoted.exit.i
  %i.fv = sub nuw nsw i64 %i.fb, %i.fu, !dbg !41344
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fc, i64 %i.fu, !dbg !41345
  br label %_RNvNtNtNtCslpwjCj2YNBy_9polars_io3csv4read6parser14skip_this_line.exit, !dbg !41350

bb.bg:                                            ; preds = %_RNvNtNtNtCslpwjCj2YNBy_9polars_io3csv4read6parser11find_quoted.exit.i
  call void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef %i.fu, i64 noundef range(i64 0, -9223372036854775808) %i.fb, i64 noundef range(i64 0, -9223372036854775808) %i.fb, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @119) #46, !dbg !41351, !noalias !41268
  unreachable, !dbg !41351

.split:                                           ; preds = %bb.aw
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !dbg !41352
  store ptr @_RNvNtCsgjwxzEoLG5s_12polars_error9constants4TRUE, ptr %i.l, align 8, !dbg !41352
  %.sroa.495.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 8, !dbg !41352
  store ptr @_RNvXs1i_NtCscgRAwXFJnXP_4core3fmtReNtB6_7Display3fmtCslpwjCj2YNBy_9polars_io, ptr %.sroa.495.0..sroa_idx, align 8, !dbg !41352
  call void @_RNvNvNtCsgZ49sUHp3tW_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.m, ptr noundef nonnull @117, ptr noundef nonnull %i.l), !dbg !41355
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !dbg !41361
  %.sroa.4133.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !41361
  call void @_RNvXs_CsgjwxzEoLG5s_12polars_errorNtB4_9ErrStringINtNtCscgRAwXFJnXP_4core7convert4FromNtNtCsgZ49sUHp3tW_5alloc6string6StringE4fromCslpwjCj2YNBy_9polars_io(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %.sroa.4133.0..sroa_idx, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.m, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @118), !dbg !41362
  br label %bb.d, !dbg !41226

.outer:                                           ; preds = %.lr.ph265, %_RNvNtNtNtCslpwjCj2YNBy_9polars_io3csv4read6parser14skip_this_line.exit
  %i.fx = add i32 %.sroa.036.0.ph267, 1, !dbg !41366 ; 2 uses
  %i.fy = icmp ugt i32 %i.fx, %i.s
  br i1 %i.fy, label %.outer._crit_edge, label %.lr.ph, !dbg !40795

.lr.ph265:                                        ; preds = %_RNvNtNtNtCslpwjCj2YNBy_9polars_io3csv4read6parser14skip_this_line.exit, %.lr.ph265
  %.sroa.044.3264 = phi i64 [ %i.ga, %.lr.ph265 ], [ %.sroa.044.1, %_RNvNtNtNtCslpwjCj2YNBy_9polars_io3csv4read6parser14skip_this_line.exit ] ; 2 uses
  %i.fz = getelementptr inbounds nuw [304 x i8], ptr %9, i64 %.sroa.044.3264, !dbg !41367
  call void @_RNvMsk_NtNtNtCslpwjCj2YNBy_9polars_io3csv4read7builderNtB5_7Builder8add_null(ptr noalias noundef nonnull align 16 dereferenceable(304) %i.fz, i1 noundef zeroext %not.), !dbg !41371
  %i.ga = add i64 %.sroa.044.3264, 1, !dbg !41373 ; 2 uses
  %exitcond.not = icmp eq i64 %i.ga, %8, !dbg !41027
  br i1 %exitcond.not, label %.outer, label %.lr.ph265, !dbg !41027
}

; Function Attrs: nonlazybind uwtable
define hidden { i64, i64 } @_RNvNtNtNtCslpwjCj2YNBy_9polars_io3csv4read6parser18next_line_position(ptr noalias noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef range(i64 0, -9223372036854775808) %1, i64 noundef range(i64 0, 2) %2, i64 %3, i8 noundef %4, i1 noundef zeroext %5, i8 %6, i8 noundef %7) unnamed_addr #3 personality ptr @rust_eh_personality !dbg !41374 {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 6 uses
  %i.b = alloca [40 x i8], align 8                ; 12 uses
  %i.c = zext i1 %5 to i8
  %i.d = icmp eq i64 %1, 0, !dbg !41375
  br i1 %i.d, label %_RINvNtNtNtCslnrARR2vGZ9_6memchr4arch7generic6memchr21search_slice_with_rawNCNvNtB8_6memchr6memchr0ECslpwjCj2YNBy_9polars_io.exit, label %.preheader, !dbg !41375

.preheader:                                       ; preds = %bb.a
  %. = select i1 %5, i8 %6, i8 34
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 33
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 34
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %.sroa.242.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.k = trunc nuw i64 %2 to i1
  br label %bb.b, !dbg !41378

_RINvNtNtNtCslnrARR2vGZ9_6memchr4arch7generic6memchr21search_slice_with_rawNCNvNtB8_6memchr6memchr0ECslpwjCj2YNBy_9polars_io.exit: ; preds = %bb.b, %bb.c, %bb.j, %bb.a, %.loopexit
  %.sroa.823.0 = phi i64 [ %.sroa.823.1, %.loopexit ], [ undef, %bb.a ], [ undef, %bb.j ], [ undef, %bb.c ], [ undef, %bb.b ], !dbg !41380
  %.sroa.022.0 = phi i64 [ %.sroa.022.1, %.loopexit ], [ 0, %bb.a ], [ 0, %bb.j ], [ 0, %bb.c ], [ 0, %bb.b ], !dbg !41380
  %i.l = insertvalue { i64, i64 } poison, i64 %.sroa.022.0, 0, !dbg !41381
  %i.m = insertvalue { i64, i64 } %i.l, i64 %.sroa.823.0, 1, !dbg !41381
  ret { i64, i64 } %i.m, !dbg !41381

bb.b:                                             ; preds = %.preheader, %bb.j
  %.sroa.0.065 = phi ptr [ %0, %.preheader ], [ %.sroa.0.1, %bb.j ] ; 6 uses
  %.sroa.8.064 = phi i64 [ %1, %.preheader ], [ %.sroa.8.1, %bb.j ] ; 5 uses
  %.sroa.011.063 = phi i1 [ %i.k, %.preheader ], [ true, %bb.j ] ; 2 uses
  %.sroa.4.062 = phi i64 [ %3, %.preheader ], [ %.sroa.4.1, %bb.j ] ; 2 uses
  %.sroa.024.061 = phi i8 [ 0, %.preheader ], [ %.sroa.024.1, %bb.j ] ; 2 uses
  %.sroa.026.060 = phi i64 [ 0, %.preheader ], [ %.sroa.026.1, %bb.j ] ; 4 uses
  %.sroa.029.059 = phi i8 [ 0, %.preheader ], [ %i.n, %bb.j ]
  %i.n = add i8 %.sroa.029.059, 1, !dbg !41382    ; 2 uses
  %i.o = icmp eq i8 %i.n, -1, !dbg !41385
  %or.cond = and i1 %i.o, %.sroa.011.063, !dbg !41385
  %i.p = tail call i64 @llvm.usub.sat.i64(i64 %.sroa.4.062, i64 1), !dbg !41385
  %.sroa.4.1 = select i1 %or.cond, i64 %i.p, i64 %.sroa.4.062, !dbg !41385 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.0.065, i64 %.sroa.8.064, !dbg !41386
  %i.r = load atomic ptr, ptr @_RNvNvNtNtNtCslnrARR2vGZ9_6memchr4arch6x86_646memchr10memchr_raw2FN monotonic, align 8, !dbg !41391, !noalias !41397, !nonnull !11, !noundef !11
  %i.s = tail call { i64, ptr } %i.r(i8 noundef %7, ptr noundef nonnull readonly %.sroa.0.065, ptr noundef nonnull readonly %i.q), !dbg !41400, !noalias !41397, !inline_history !22052 ; 2 uses
  %i.t = extractvalue { i64, ptr } %i.s, 0, !dbg !41401
  %i.u = trunc nuw i64 %i.t to i1, !dbg !41402
  br i1 %i.u, label %bb.c, label %_RINvNtNtNtCslnrARR2vGZ9_6memchr4arch7generic6memchr21search_slice_with_rawNCNvNtB8_6memchr6memchr0ECslpwjCj2YNBy_9polars_io.exit, !dbg !41402

bb.c:                                             ; preds = %bb.b
  %i.v = extractvalue { i64, ptr } %i.s, 1, !dbg !41401
  %i.w = tail call noundef i64 @_RNvXNtCslnrARR2vGZ9_6memchr3extPhNtB2_7Pointer8distanceCslpwjCj2YNBy_9polars_io(ptr noundef %i.v, ptr noundef nonnull readonly %.sroa.0.065), !dbg !41404 ; 2 uses
  %i.x = add i64 %i.w, 1, !dbg !41390             ; 5 uses
  %i.y = icmp eq i64 %.sroa.8.064, %i.x, !dbg !41405
  br i1 %i.y, label %_RINvNtNtNtCslnrARR2vGZ9_6memchr4arch7generic6memchr21search_slice_with_rawNCNvNtB8_6memchr6memchr0ECslpwjCj2YNBy_9polars_io.exit, label %bb.d, !dbg !41405

bb.d:                                             ; preds = %bb.c
  %i.z = sub i64 %.sroa.8.064, %i.x, !dbg !41405
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.0.065, i64 %i.x, !dbg !41407
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !41418
  store ptr %i.aa, ptr %i.b, align 8, !dbg !41420
  store i64 %i.z, ptr %i.e, align 8, !dbg !41420
  store i8 %., ptr %i.f, align 8, !dbg !41420
  store i8 %7, ptr %i.g, align 1, !dbg !41420
  store i64 0, ptr %i.h, align 8, !dbg !41420
  store i8 %i.c, ptr %i.i, align 2, !dbg !41420
  store ptr null, ptr %i.j, align 8, !dbg !41420
  %i.ab = call { ptr, i64 } @_RNvMs_NtNtNtCslpwjCj2YNBy_9polars_io3csv4read6parserNtB4_10SplitLines11next_scalar(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.b), !dbg !41425 ; 2 uses
  %i.ac = extractvalue { ptr, i64 } %i.ab, 0, !dbg !41425 ; 2 uses
  %i.ad = extractvalue { ptr, i64 } %i.ab, 1, !dbg !41425
  %.not = icmp eq ptr %i.ac, null, !dbg !41430
  br i1 %.not, label %.loopexit, label %bb.e, !dbg !41432

bb.e:                                             ; preds = %bb.d
  br i1 %.sroa.011.063, label %bb.f, label %bb.g, !dbg !41432

bb.f:                                             ; preds = %bb.e
  %i.ae = tail call fastcc noundef zeroext i1 @_RNvNvNtNtNtCslpwjCj2YNBy_9polars_io3csv4read6parser18next_line_position11accept_line(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.ac, i64 noundef %i.ad, i64 noundef %.sroa.4.1, i8 noundef %4, i8 noundef %7, i1 noundef zeroext %5, i8 %6), !dbg !41433
  br i1 %i.ae, label %bb.i, label %bb.h, !dbg !41433

bb.g:                                             ; preds = %bb.e
  %i.af = add i64 %i.x, %.sroa.026.060, !dbg !41435
  br label %.loopexit, !dbg !41436

.loopexit:                                        ; preds = %bb.d, %bb.l, %bb.g
  %.sroa.823.1 = phi i64 [ %i.aq, %bb.l ], [ %i.af, %bb.g ], [ undef, %bb.d ], !dbg !41437
  %.sroa.022.1 = phi i64 [ 1, %bb.l ], [ 1, %bb.g ], [ 0, %bb.d ], !dbg !41437
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !41438
  br label %_RINvNtNtNtCslnrARR2vGZ9_6memchr4arch7generic6memchr21search_slice_with_rawNCNvNtB8_6memchr6memchr0ECslpwjCj2YNBy_9polars_io.exit, !dbg !41439

bb.h:                                             ; preds = %bb.f
  %i.ag = add i64 %i.w, 2, !dbg !41441            ; 3 uses
  %i.ah = sub nuw i64 %.sroa.8.064, %i.ag, !dbg !41442
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.0.065, i64 %i.ag, !dbg !41448
  %i.aj = add i64 %i.ag, %.sroa.026.060, !dbg !41453
  br label %bb.j, !dbg !41454

bb.i:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !41455
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.242.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(40) %i.b, i64 40, i1 false), !dbg !41455
  br label %bb.k, !dbg !41457

bb.j:                                             ; preds = %bb.n, %bb.h
  %.sroa.026.1 = phi i64 [ %.sroa.026.060, %bb.n ], [ %i.aj, %bb.h ], !dbg !41462
  %.sroa.024.1 = phi i8 [ %i.at, %bb.n ], [ %.sroa.024.061, %bb.h ], !dbg !41463 ; 2 uses
  %.sroa.8.1 = phi i64 [ %.sroa.8.064, %bb.n ], [ %i.ah, %bb.h ]
  %.sroa.0.1 = phi ptr [ %.sroa.0.065, %bb.n ], [ %i.ai, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !41438
  %i.ak = icmp ugt i8 %.sroa.024.1, 2, !dbg !41378
  br i1 %i.ak, label %_RINvNtNtNtCslnrARR2vGZ9_6memchr4arch7generic6memchr21search_slice_with_rawNCNvNtB8_6memchr6memchr0ECslpwjCj2YNBy_9polars_io.exit, label %bb.b, !dbg !41378

thread-pre-split:                                 ; preds = %bb.m
  %.pr = load i64, ptr %i.a, align 8, !dbg !41457 ; 2 uses
  %i.al = icmp eq i64 %.pr, 0, !dbg !41457
  br i1 %i.al, label %bb.l, label %bb.k, !dbg !41457

bb.k:                                             ; preds = %bb.i, %thread-pre-split
  %i.am = phi i64 [ 2, %bb.i ], [ %.pr, %thread-pre-split ]
  %i.an = add i64 %i.am, -1, !dbg !41464
  store i64 %i.an, ptr %i.a, align 8, !dbg !41464
  %i.ao = call { ptr, i64 } @_RNvMs_NtNtNtCslpwjCj2YNBy_9polars_io3csv4read6parserNtB4_10SplitLines11next_scalar(ptr noalias noundef nonnull align 8 dereferenceable(40) %.sroa.242.0..sroa_idx), !dbg !41465 ; 2 uses
  %i.ap = extractvalue { ptr, i64 } %i.ao, 0, !dbg !41465 ; 2 uses
  %.not50 = icmp eq ptr %i.ap, null, !dbg !41467
  br i1 %.not50, label %bb.l, label %bb.m, !dbg !41467

bb.l:                                             ; preds = %thread-pre-split, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !41468
  %i.aq = add i64 %i.x, %.sroa.026.060, !dbg !41469
  br label %.loopexit, !dbg !41470

bb.m:                                             ; preds = %bb.k
  %i.ar = extractvalue { ptr, i64 } %i.ao, 1, !dbg !41465
  %i.as = tail call fastcc noundef zeroext i1 @_RNvNvNtNtNtCslpwjCj2YNBy_9polars_io3csv4read6parser18next_line_position11accept_line(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.ap, i64 noundef %i.ar, i64 noundef %.sroa.4.1, i8 noundef %4, i8 noundef %7, i1 noundef zeroext %5, i8 %6), !dbg !41472
  br i1 %i.as, label %thread-pre-split, label %bb.n, !dbg !41472

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !41468
  %i.at = add nuw nsw i8 %.sroa.024.061, 1, !dbg !41474
end_hunk_1
begin_hunk_2_@_RNvNtNtNtCslpwjCj2YNBy_9polars_io3csv4read6parser26count_rows_from_reader_par:bb.a

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCslpwjCj2YNBy_9polars_io3csv4read6parser10CountLinesEBO_.exit77: ; preds = %bb.al, %bb.am
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !41838
  invoke void @_RNvXse_NtCsknLZRuU4977_13polars_buffer7storageINtB5_13SharedStoragehENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCslpwjCj2YNBy_9polars_io(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferhEECslpwjCj2YNBy_9polars_io.exit79 unwind label %bb.w, !dbg !41839

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferhEECslpwjCj2YNBy_9polars_io.exit79: ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCslpwjCj2YNBy_9polars_io3csv4read6parser10CountLinesEBO_.exit77
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !dbg !41842
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferhEECslpwjCj2YNBy_9polars_io.exit79.invoke, !dbg !41659

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferhEECslpwjCj2YNBy_9polars_io.exit79.invoke: ; preds = %bb.y, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferhEECslpwjCj2YNBy_9polars_io.exit79
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCslpwjCj2YNBy_9polars_io3csv4read7options14CsvReadOptionsEBO_(ptr noalias noundef align 8 dereferenceable(256) %i.l)
          to label %bb.an unwind label %bb.l, !dbg !41659

bb.an:                                            ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferhEECslpwjCj2YNBy_9polars_io.exit79.invoke
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !dbg !41659
  call fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtCslpwjCj2YNBy_9polars_io5utils11compression16ByteSourceReaderNtNtBL_17stream_buf_reader12ReaderSourceEEBN_(ptr noalias noundef align 8 dereferenceable(320) %1), !dbg !41659
  ret void, !dbg !41843

bb.ao:                                            ; preds = %bb.ak, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCslpwjCj2YNBy_9polars_io3csv4read6parser10CountLinesEBO_.exit, %bb.u, %bb.q, %bb.n, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtNtCslpwjCj2YNBy_9polars_io3csv4read7options13CommentPrefixEEB1a_.exit69, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtNtCslpwjCj2YNBy_9polars_io3csv4read7options13CommentPrefixEEB1a_.exit
  %i.dj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #43, !dbg !41844
  unreachable, !dbg !41844

bb.ap:                                            ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtNtCslpwjCj2YNBy_9polars_io3csv4read7options13CommentPrefixEEB1a_.exit
  resume { ptr, i32 } %.pn61, !dbg !41844
}

; Function Attrs: nonlazybind uwtable
define void @_RNvNtNtNtCslpwjCj2YNBy_9polars_io3csv4read7builder13init_builders(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([72 x i8]) align 8 captures(none) dereferenceable(72) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %1, i64 noundef range(i64 0, 1152921504606846976) %2, i64 noundef %3, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(64) %4, i1 noundef zeroext %5, i8 %6, i1 noundef zeroext %7, i1 noundef zeroext %8) unnamed_addr #3 personality ptr @rust_eh_personality !dbg !41845 {
bb.a:
  %i.a = alloca [64 x i8], align 8                ; 11 uses
  %i.b = alloca [24 x i8], align 8                ; 9 uses
  %i.c = alloca [72 x i8], align 8                ; 8 uses
  %i.d = alloca [1 x i8], align 1                 ; 2 uses
  %i.e = alloca [1 x i8], align 1                 ; 2 uses
  %i.f = alloca [2 x i8], align 1                 ; 3 uses
  %i.g = alloca [8 x i8], align 8                 ; 2 uses
  store i64 %3, ptr %i.g, align 8
  %i.h = zext i1 %5 to i8
  store i8 %i.h, ptr %i.f, align 1
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 1
  store i8 %6, ptr %i.i, align 1
  %i.j = zext i1 %7 to i8
  store i8 %i.j, ptr %i.e, align 1
  %i.k = zext i1 %8 to i8
  store i8 %i.k, ptr %i.d, align 1
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %2, !dbg !41846
  tail call void @llvm.experimental.noalias.scope.decl(metadata !41855), !dbg !41858
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !41863, !noalias !41866
  store i64 18, ptr %i.c, align 8, !dbg !41868, !noalias !41866
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !41869, !noalias !41866
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !41872, !noalias !41879
  store ptr %1, ptr %i.a, align 8, !dbg !41886, !alias.scope !41889, !noalias !41893
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !41886
  store ptr %i.l, ptr %.sroa.2.0..sroa_idx, align 8, !dbg !41886, !alias.scope !41889, !noalias !41893
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !41886
  store ptr %4, ptr %.sroa.3.0..sroa_idx, align 8, !dbg !41886, !alias.scope !41889, !noalias !41893
  %.sroa.4.0..sroa_idx1 = getelementptr inbounds nuw i8, ptr %i.a, i64 24, !dbg !41886
  store ptr %i.g, ptr %.sroa.4.0..sroa_idx1, align 8, !dbg !41886, !alias.scope !41889, !noalias !41893
  %.sroa.5.0..sroa_idx2 = getelementptr inbounds nuw i8, ptr %i.a, i64 32, !dbg !41886
  store ptr %i.d, ptr %.sroa.5.0..sroa_idx2, align 8, !dbg !41886, !alias.scope !41889, !noalias !41893
  %.sroa.6.0..sroa_idx3 = getelementptr inbounds nuw i8, ptr %i.a, i64 40, !dbg !41886
  store ptr %i.f, ptr %.sroa.6.0..sroa_idx3, align 8, !dbg !41886, !alias.scope !41889, !noalias !41893
  %.sroa.7.0..sroa_idx4 = getelementptr inbounds nuw i8, ptr %i.a, i64 48, !dbg !41886
  store ptr %i.e, ptr %.sroa.7.0..sroa_idx4, align 8, !dbg !41886, !alias.scope !41889, !noalias !41893
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 56, !dbg !41886
  store ptr %i.c, ptr %.sroa.4.0..sroa_idx.i, align 8, !dbg !41886, !alias.scope !41889, !noalias !41894
  invoke void @_RNvXNtNtCsgZ49sUHp3tW_5alloc3vec14spec_from_iterINtB4_3VecNtNtNtNtCslpwjCj2YNBy_9polars_io3csv4read7builder7BuilderEINtB2_12SpecFromIterBU_INtNtNtCscgRAwXFJnXP_4core4iter8adapters12GenericShuntINtNtB2g_3map3MapINtNtNtB2k_5slice4iter4IterjENCNvBW_13init_builders0EINtNtB2k_6result6ResultNtNtB2k_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEE9from_iterB12_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(64) %i.a)
          to label %bb.b unwind label %.body.i, !dbg !41895, !noalias !41866

.body.i:                                          ; preds = %bb.a
  %i.m = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.n = load i64, ptr %i.c, align 8, !dbg !41896, !range !1116, !noalias !41866, !noundef !11
  %.not.i = icmp eq i64 %i.n, 18, !dbg !41896
  br i1 %.not.i, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEECslpwjCj2YNBy_9polars_io.exit.i, label %bb.j, !dbg !41896

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !41897, !noalias !41879
  %i.o = load i64, ptr %i.c, align 8, !dbg !41898, !range !1116, !noalias !41866, !noundef !11
  %.not.not.i = icmp eq i64 %i.o, 18, !dbg !41898
  br i1 %.not.not.i, label %bb.c, label %bb.d, !dbg !41900

bb.c:                                             ; preds = %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !41901
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.p, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false), !dbg !41904, !noalias !41905
  store i64 18, ptr %0, align 8, !dbg !41901, !alias.scope !41906, !noalias !41909
  br label %_RINvNtNtCscgRAwXFJnXP_4core4iter8adapters11try_processINtNtB2_3map3MapINtNtNtB6_5slice4iter4IterjENCNvNtNtNtCslpwjCj2YNBy_9polars_io3csv4read7builder13init_builders0ENtB1C_7BuilderINtNtB6_6result6ResultNtNtB6_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorENCINvXso_B2V_IB2T_INtNtCsgZ49sUHp3tW_5alloc3vec3VecB2E_EB3F_EINtNtNtB4_6traits7collect12FromIteratorIB2T_B2E_B3F_EE9from_iterBQ_E0B4F_EB1I_.exit, !dbg !41911

bb.d:                                             ; preds = %bb.b
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %i.c, i64 72, i1 false), !dbg !41912, !noalias !41905
  invoke void @_RNvXso_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecNtNtNtNtCslpwjCj2YNBy_9polars_io3csv4read7builder7BuilderENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropBN_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %bb.g unwind label %bb.e, !dbg !41913, !noalias !41866

bb.e:                                             ; preds = %bb.d
  %i.q = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val2.i.i = load i64, ptr %i.b, align 8, !dbg !41913, !alias.scope !41916, !noalias !41866 ; 2 uses
  %i.r = icmp eq i64 %.val2.i.i, 0
  br i1 %i.r, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEECslpwjCj2YNBy_9polars_io.exit.i, label %bb.f, !dbg !41921

bb.f:                                             ; preds = %bb.e
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !41913
  %.val3.i.i = load ptr, ptr %i.s, align 8, !dbg !41913, !alias.scope !41926, !noalias !41866, !nonnull !11, !noundef !11
  %i.t = mul nuw i64 %.val2.i.i, 304, !dbg !41927
  call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i, i64 noundef %i.t, i64 noundef range(i64 1, -9223372036854775807) 16) #44, !dbg !41929, !noalias !41934
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEECslpwjCj2YNBy_9polars_io.exit.i, !dbg !41937

bb.g:                                             ; preds = %bb.d
  %.val.i.i = load i64, ptr %i.b, align 8, !dbg !41913, !alias.scope !41916, !noalias !41866 ; 2 uses
  %i.u = icmp eq i64 %.val.i.i, 0
  br i1 %i.u, label %_RINvNtNtCscgRAwXFJnXP_4core4iter8adapters11try_processINtNtB2_3map3MapINtNtNtB6_5slice4iter4IterjENCNvNtNtNtCslpwjCj2YNBy_9polars_io3csv4read7builder13init_builders0ENtB1C_7BuilderINtNtB6_6result6ResultNtNtB6_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorENCINvXso_B2V_IB2T_INtNtCsgZ49sUHp3tW_5alloc3vec3VecB2E_EB3F_EINtNtNtB4_6traits7collect12FromIteratorIB2T_B2E_B3F_EE9from_iterBQ_E0B4F_EB1I_.exit, label %bb.h, !dbg !41938

bb.h:                                             ; preds = %bb.g
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !41913
  %.val1.i.i = load ptr, ptr %i.v, align 8, !dbg !41913, !alias.scope !41926, !noalias !41866, !nonnull !11, !noundef !11
  %i.w = mul nuw i64 %.val.i.i, 304, !dbg !41943
  call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i, i64 noundef %i.w, i64 noundef range(i64 1, -9223372036854775807) 16) #44, !dbg !41945, !noalias !41950
  br label %_RINvNtNtCscgRAwXFJnXP_4core4iter8adapters11try_processINtNtB2_3map3MapINtNtNtB6_5slice4iter4IterjENCNvNtNtNtCslpwjCj2YNBy_9polars_io3csv4read7builder13init_builders0ENtB1C_7BuilderINtNtB6_6result6ResultNtNtB6_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorENCINvXso_B2V_IB2T_INtNtCsgZ49sUHp3tW_5alloc3vec3VecB2E_EB3F_EINtNtNtB4_6traits7collect12FromIteratorIB2T_B2E_B3F_EE9from_iterBQ_E0B4F_EB1I_.exit, !dbg !41953

bb.i:                                             ; preds = %bb.j
  %i.x = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #43, !dbg !41954, !noalias !41866
  unreachable, !dbg !41954

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEECslpwjCj2YNBy_9polars_io.exit.i: ; preds = %bb.j, %bb.f, %bb.e, %.body.i
  %.pn9.i = phi { ptr, i32 } [ %i.m, %.body.i ], [ %i.m, %bb.j ], [ %i.q, %bb.f ], [ %i.q, %bb.e ]
  resume { ptr, i32 } %.pn9.i, !dbg !41954

bb.j:                                             ; preds = %.body.i
  invoke void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtCsgjwxzEoLG5s_12polars_error11PolarsErrorECslpwjCj2YNBy_9polars_io(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.c)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEECslpwjCj2YNBy_9polars_io.exit.i unwind label %bb.i, !dbg !41955, !noalias !41866

_RINvNtNtCscgRAwXFJnXP_4core4iter8adapters11try_processINtNtB2_3map3MapINtNtNtB6_5slice4iter4IterjENCNvNtNtNtCslpwjCj2YNBy_9polars_io3csv4read7builder13init_builders0ENtB1C_7BuilderINtNtB6_6result6ResultNtNtB6_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorENCINvXso_B2V_IB2T_INtNtCsgZ49sUHp3tW_5alloc3vec3VecB2E_EB3F_EINtNtNtB4_6traits7collect12FromIteratorIB2T_B2E_B3F_EE9from_iterBQ_E0B4F_EB1I_.exit: ; preds = %bb.c, %bb.g, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !41957, !noalias !41866
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !41896, !noalias !41866
  ret void, !dbg !41958
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RNvNvNtNtNtCslpwjCj2YNBy_9polars_io3csv4read6parser18next_line_position11accept_line(ptr noalias noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef range(i64 0, -9223372036854775808) %1, i64 noundef %2, i8 noundef %3, i8 noundef %4, i1 noundef zeroext %5, i8 %6) unnamed_addr #3 personality ptr @rust_eh_personality !dbg !41959 {
bb.a:
  br i1 %5, label %.split.us, label %.split

.split.us:                                        ; preds = %bb.a, %bb.m
  %.sroa.03.042.us = phi i64 [ %i.ap, %bb.m ], [ 0, %bb.a ]
  %.sroa.0.040.us = phi ptr [ %.sroa.0.1.ph.us, %bb.m ], [ %0, %bb.a ] ; 17 uses
  %.sroa.7.039.us = phi i64 [ %.sroa.7.1.ph.us, %bb.m ], [ %1, %bb.a ] ; 11 uses
  %i.a = icmp eq i64 %.sroa.7.039.us, 0, !dbg !41961
  br i1 %i.a, label %bb.l, label %bb.b, !dbg !41961

bb.b:                                             ; preds = %.split.us
  %i.b = load i8, ptr %.sroa.0.040.us, align 1, !dbg !41965, !noalias !41966, !noundef !11
  %i.c = icmp eq i8 %i.b, %6, !dbg !41970
  %i.d = getelementptr inbounds nuw i8, ptr %.sroa.0.040.us, i64 %.sroa.7.039.us, !dbg !41971 ; 2 uses
  br i1 %i.c, label %.lr.ph.i.us, label %.lr.ph.i.i.us, !dbg !41970

.lr.ph.i.i.us:                                    ; preds = %bb.b, %bb.c
  %.sroa.02.012.i.i.us = phi i64 [ %i.i, %bb.c ], [ 0, %bb.b ] ; 4 uses
  %i.e = phi ptr [ %i.h, %bb.c ], [ %.sroa.0.040.us, %bb.b ] ; 2 uses
  %.val7.i.i.us = load i8, ptr %i.e, align 1, !dbg !41975, !noalias !41977, !noundef !11 ; 2 uses
  %i.f = icmp eq i8 %.val7.i.i.us, %3, !dbg !41981
  %i.g = icmp eq i8 %.val7.i.i.us, %4
  %or.cond.i.i.us = or i1 %i.f, %i.g, !dbg !41981
  br i1 %or.cond.i.i.us, label %bb.d, label %bb.c, !dbg !41981

bb.c:                                             ; preds = %.lr.ph.i.i.us
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 1, !dbg !41984 ; 2 uses
  %i.i = add nuw i64 %.sroa.02.012.i.i.us, 1, !dbg !41987
  %i.j = icmp eq ptr %i.h, %i.d, !dbg !41988
  br i1 %i.j, label %.loopexit.us, label %.lr.ph.i.i.us, !dbg !41990

bb.d:                                             ; preds = %.lr.ph.i.i.us
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.0.040.us, i64 %.sroa.02.012.i.i.us, !dbg !41991
  %i.l = load i8, ptr %i.k, align 1, !dbg !41994, !noalias !41966, !noundef !11
  %i.m = icmp eq i8 %i.l, %4, !dbg !41994
  br i1 %i.m, label %.loopexit.us, label %bb.j, !dbg !41994

.lr.ph.i.us:                                      ; preds = %bb.b, %bb.f
  %.sroa.05.053.i.us = phi i8 [ %spec.select.i.us, %bb.f ], [ 0, %bb.b ] ; 2 uses
  %.sroa.09.052.i.us = phi i32 [ %i.t, %bb.f ], [ 0, %bb.b ] ; 4 uses
  %.sroa.012.051.i.us = phi ptr [ %i.n, %bb.f ], [ %.sroa.0.040.us, %bb.b ] ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.012.051.i.us, i64 1, !dbg !41995 ; 2 uses
  %i.o = load i8, ptr %.sroa.012.051.i.us, align 1, !dbg !41998, !noalias !41966, !noundef !11 ; 3 uses
  %i.p = icmp eq i8 %i.o, %6, !dbg !41999
  %i.q = zext i1 %i.p to i8, !dbg !41999          ; 2 uses
  %spec.select.i.us = xor i8 %.sroa.05.053.i.us, %i.q, !dbg !41999
  %.not.i.us = icmp eq i8 %.sroa.05.053.i.us, %i.q, !dbg !42000
  br i1 %.not.i.us, label %bb.e, label %bb.f, !dbg !42000

bb.e:                                             ; preds = %.lr.ph.i.us
  %i.r = icmp eq i8 %i.o, %3, !dbg !42001
  %i.s = icmp eq i8 %i.o, %4                      ; 2 uses
  %or.cond.i.us = or i1 %i.r, %i.s, !dbg !42001
  br i1 %or.cond.i.us, label %bb.g, label %bb.f, !dbg !42001

bb.f:                                             ; preds = %bb.e, %.lr.ph.i.us
  %i.t = add nuw nsw i32 %.sroa.09.052.i.us, 1, !dbg !42003
  %i.u = icmp eq ptr %i.n, %i.d, !dbg !42004
  br i1 %i.u, label %.loopexit.us, label %.lr.ph.i.us, !dbg !42006

bb.g:                                             ; preds = %bb.e
  br i1 %i.s, label %bb.k, label %bb.h, !dbg !42007

bb.h:                                             ; preds = %bb.g
  %i.v = icmp eq i32 %.sroa.09.052.i.us, 0, !dbg !42008
  br i1 %i.v, label %.loopexit.us, label %bb.i, !dbg !42008

bb.i:                                             ; preds = %bb.h
  %i.w = zext nneg i32 %.sroa.09.052.i.us to i64, !dbg !42009
  br label %bb.j, !dbg !42010

bb.j:                                             ; preds = %bb.i, %bb.d
  %.sroa.016.0.i.us = phi i64 [ %i.w, %bb.i ], [ %.sroa.02.012.i.i.us, %bb.d ], !dbg !41974 ; 2 uses
  %i.x = add nuw i64 %.sroa.016.0.i.us, 1, !dbg !42011 ; 2 uses
  %i.y = sub nuw i64 %.sroa.7.039.us, %i.x, !dbg !42012
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.0.040.us, i64 %i.x, !dbg !42016
  br label %.loopexit.us, !dbg !42018

bb.k:                                             ; preds = %bb.g
  %i.aa = zext nneg i32 %.sroa.09.052.i.us to i64, !dbg !42019
  br label %.loopexit.us, !dbg !42020

bb.l:                                             ; preds = %.split.us
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.040.us) ]
  br label %.loopexit.us, !dbg !42021

.loopexit.us:                                     ; preds = %bb.c, %bb.f, %bb.l, %bb.k, %bb.j, %bb.h, %bb.d
  %.sroa.11.0.ph.us = phi i64 [ 0, %bb.l ], [ %.sroa.7.039.us, %bb.h ], [ %.sroa.7.039.us, %bb.f ], [ %.sroa.016.0.i.us, %bb.j ], [ %.sroa.02.012.i.i.us, %bb.d ], [ %i.aa, %bb.k ], [ %.sroa.7.039.us, %bb.c ]
  %.sroa.18.1.ph.us = phi i1 [ true, %bb.l ], [ true, %bb.h ], [ true, %bb.f ], [ false, %bb.j ], [ true, %bb.d ], [ true, %bb.k ], [ true, %bb.c ]
  %.sroa.7.1.ph.us = phi i64 [ 0, %bb.l ], [ %.sroa.7.039.us, %bb.h ], [ %.sroa.7.039.us, %bb.f ], [ %i.y, %bb.j ], [ %.sroa.7.039.us, %bb.d ], [ %.sroa.7.039.us, %bb.k ], [ %.sroa.7.039.us, %bb.c ]
  %.sroa.0.1.ph.us = phi ptr [ %.sroa.0.040.us, %bb.l ], [ %.sroa.0.040.us, %bb.h ], [ %.sroa.0.040.us, %bb.f ], [ %i.z, %bb.j ], [ %.sroa.0.040.us, %bb.d ], [ %.sroa.0.040.us, %bb.k ], [ %.sroa.0.040.us, %bb.c ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.040.us) ]
  %i.ab = getelementptr i8, ptr %.sroa.0.040.us, i64 %.sroa.11.0.ph.us, !dbg !42023 ; 2 uses
  %i.ac = load atomic ptr, ptr @_RNvNvNtNtNtCslnrARR2vGZ9_6memchr4arch6x86_646memchr11memchr2_raw2FN monotonic, align 8, !dbg !42037, !noalias !42060, !nonnull !11, !noundef !11
  %i.ad = tail call { i64, ptr } %i.ac(i8 noundef %3, i8 noundef %4, ptr noundef nonnull %.sroa.0.040.us, ptr noundef %i.ab), !dbg !42069, !noalias !42060, !inline_history !42071 ; 2 uses
  %i.ae = extractvalue { i64, ptr } %i.ad, 0, !dbg !42072
  %i.af = trunc nuw i64 %i.ae to i1, !dbg !42073
  br i1 %i.af, label %.lr.ph.i13.us, label %_RINvYNtNtCslnrARR2vGZ9_6memchr6memchr7Memchr2NtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4foldjNCNvYB3_BH_5count0ECslpwjCj2YNBy_9polars_io.exit.us, !dbg !42073

.lr.ph.i13.us:                                    ; preds = %.loopexit.us, %.lr.ph.i13.us
  %i.ag = phi { i64, ptr } [ %i.am, %.lr.ph.i13.us ], [ %i.ad, %.loopexit.us ]
  %.sroa.0.08.i.us = phi i64 [ %i.ak, %.lr.ph.i13.us ], [ 0, %.loopexit.us ]
  %i.ah = extractvalue { i64, ptr } %i.ag, 1, !dbg !42072 ; 2 uses
  %i.ai = tail call noundef i64 @_RNvXNtCslnrARR2vGZ9_6memchr3extPhNtB2_7Pointer8distanceCslpwjCj2YNBy_9polars_io(ptr noundef %i.ah, ptr noundef nonnull %.sroa.0.040.us), !dbg !42076, !noalias !42078 ; 0 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ah, i64 1, !dbg !42081
  %i.ak = add i64 %.sroa.0.08.i.us, 1, !dbg !42085 ; 2 uses
  %i.al = load atomic ptr, ptr @_RNvNvNtNtNtCslnrARR2vGZ9_6memchr4arch6x86_646memchr11memchr2_raw2FN monotonic, align 8, !dbg !42037, !noalias !42089, !nonnull !11, !noundef !11
  %i.am = tail call { i64, ptr } %i.al(i8 noundef %3, i8 noundef %4, ptr noundef nonnull %i.aj, ptr noundef %i.ab), !dbg !42069, !noalias !42089, !inline_history !42071 ; 2 uses
  %i.an = extractvalue { i64, ptr } %i.am, 0, !dbg !42072
  %i.ao = trunc nuw i64 %i.an to i1, !dbg !42073
  br i1 %i.ao, label %.lr.ph.i13.us, label %_RINvYNtNtCslnrARR2vGZ9_6memchr6memchr7Memchr2NtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4foldjNCNvYB3_BH_5count0ECslpwjCj2YNBy_9polars_io.exit.us, !dbg !42073

_RINvYNtNtCslnrARR2vGZ9_6memchr6memchr7Memchr2NtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4foldjNCNvYB3_BH_5count0ECslpwjCj2YNBy_9polars_io.exit.us: ; preds = %.lr.ph.i13.us, %.loopexit.us
  %.sroa.0.0.lcssa.i.us = phi i64 [ 0, %.loopexit.us ], [ %i.ak, %.lr.ph.i13.us ], !dbg !42092
  %.not12.us = icmp ult i64 %.sroa.0.0.lcssa.i.us, %2, !dbg !42035
  br i1 %.not12.us, label %bb.m, label %.loopexit33, !dbg !42035

bb.m:                                             ; preds = %_RINvYNtNtCslnrARR2vGZ9_6memchr6memchr7Memchr2NtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4foldjNCNvYB3_BH_5count0ECslpwjCj2YNBy_9polars_io.exit.us
  %i.ap = add i64 %.sroa.03.042.us, 1, !dbg !42093 ; 2 uses
  br i1 %.sroa.18.1.ph.us, label %_RNvXs_NtNtNtNtCslpwjCj2YNBy_9polars_io3csv4read11splitfields5innerNtB4_11SplitFieldsNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit, label %.split.us, !dbg !42094

.split:                                           ; preds = %bb.a, %bb.s
  %.sroa.03.042 = phi i64 [ %i.bu, %bb.s ], [ 0, %bb.a ]
  %.sroa.0.040 = phi ptr [ %.sroa.0.1.ph, %bb.s ], [ %0, %bb.a ] ; 12 uses
  %.sroa.7.039 = phi i64 [ %.sroa.7.1.ph, %bb.s ], [ %1, %bb.a ] ; 6 uses
  %i.aq = icmp eq i64 %.sroa.7.039, 0, !dbg !41961
  br i1 %i.aq, label %bb.n, label %.lr.ph.i.i, !dbg !41961

bb.n:                                             ; preds = %.split
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.040) ]
  br label %.loopexit32, !dbg !42021

.lr.ph.i.i:                                       ; preds = %.split
  %i.ar = getelementptr inbounds nuw i8, ptr %.sroa.0.040, i64 %.sroa.7.039, !dbg !42095
  br label %bb.o, !dbg !41990

bb.o:                                             ; preds = %bb.p, %.lr.ph.i.i
  %.sroa.02.012.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %i.aw, %bb.p ] ; 5 uses
  %i.as = phi ptr [ %.sroa.0.040, %.lr.ph.i.i ], [ %i.av, %bb.p ] ; 2 uses
  %.val7.i.i = load i8, ptr %i.as, align 1, !dbg !41975, !noalias !41977, !noundef !11 ; 2 uses
  %i.at = icmp eq i8 %.val7.i.i, %3, !dbg !41981
  %i.au = icmp eq i8 %.val7.i.i, %4
  %or.cond.i.i = or i1 %i.at, %i.au, !dbg !41981
  br i1 %or.cond.i.i, label %bb.q, label %bb.p, !dbg !41981

bb.p:                                             ; preds = %bb.o
  %i.av = getelementptr inbounds nuw i8, ptr %i.as, i64 1, !dbg !41984 ; 2 uses
  %i.aw = add nuw i64 %.sroa.02.012.i.i, 1, !dbg !41987
  %i.ax = icmp eq ptr %i.av, %i.ar, !dbg !41988
  br i1 %i.ax, label %.loopexit32, label %bb.o, !dbg !41990

bb.q:                                             ; preds = %bb.o
  %i.ay = getelementptr inbounds nuw i8, ptr %.sroa.0.040, i64 %.sroa.02.012.i.i, !dbg !41991
  %i.az = load i8, ptr %i.ay, align 1, !dbg !41994, !noalias !41966, !noundef !11
  %i.ba = icmp eq i8 %i.az, %4, !dbg !41994
  br i1 %i.ba, label %.loopexit32, label %bb.r, !dbg !41994

bb.r:                                             ; preds = %bb.q
  %i.bb = add nuw i64 %.sroa.02.012.i.i, 1, !dbg !42011 ; 2 uses
  %i.bc = sub nuw i64 %.sroa.7.039, %i.bb, !dbg !42012
  %i.bd = getelementptr inbounds nuw i8, ptr %.sroa.0.040, i64 %i.bb, !dbg !42016
  br label %.loopexit32, !dbg !42018

.loopexit32:                                      ; preds = %bb.p, %bb.n, %bb.q, %bb.r
  %.sroa.11.0.ph = phi i64 [ 0, %bb.n ], [ %.sroa.02.012.i.i, %bb.q ], [ %.sroa.02.012.i.i, %bb.r ], [ %.sroa.7.039, %bb.p ]
  %.sroa.18.1.ph = phi i1 [ true, %bb.n ], [ true, %bb.q ], [ false, %bb.r ], [ true, %bb.p ]
  %.sroa.7.1.ph = phi i64 [ 0, %bb.n ], [ %.sroa.7.039, %bb.q ], [ %i.bc, %bb.r ], [ %.sroa.7.039, %bb.p ]
  %.sroa.0.1.ph = phi ptr [ %.sroa.0.040, %bb.n ], [ %.sroa.0.040, %bb.q ], [ %i.bd, %bb.r ], [ %.sroa.0.040, %bb.p ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.040) ]
  %i.be = getelementptr i8, ptr %.sroa.0.040, i64 %.sroa.11.0.ph, !dbg !42023 ; 2 uses
  %i.bf = load atomic ptr, ptr @_RNvNvNtNtNtCslnrARR2vGZ9_6memchr4arch6x86_646memchr11memchr2_raw2FN monotonic, align 8, !dbg !42037, !noalias !42060, !nonnull !11, !noundef !11
  %i.bg = tail call { i64, ptr } %i.bf(i8 noundef %3, i8 noundef %4, ptr noundef nonnull %.sroa.0.040, ptr noundef %i.be), !dbg !42069, !noalias !42060, !inline_history !42071 ; 2 uses
  %i.bh = extractvalue { i64, ptr } %i.bg, 0, !dbg !42072
  %i.bi = trunc nuw i64 %i.bh to i1, !dbg !42073
  br i1 %i.bi, label %.lr.ph.i13, label %_RINvYNtNtCslnrARR2vGZ9_6memchr6memchr7Memchr2NtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4foldjNCNvYB3_BH_5count0ECslpwjCj2YNBy_9polars_io.exit, !dbg !42073

.lr.ph.i13:                                       ; preds = %.loopexit32, %.lr.ph.i13
  %i.bj = phi { i64, ptr } [ %i.bp, %.lr.ph.i13 ], [ %i.bg, %.loopexit32 ]
  %.sroa.0.08.i = phi i64 [ %i.bn, %.lr.ph.i13 ], [ 0, %.loopexit32 ]
  %i.bk = extractvalue { i64, ptr } %i.bj, 1, !dbg !42072 ; 2 uses
  %i.bl = tail call noundef i64 @_RNvXNtCslnrARR2vGZ9_6memchr3extPhNtB2_7Pointer8distanceCslpwjCj2YNBy_9polars_io(ptr noundef %i.bk, ptr noundef nonnull %.sroa.0.040), !dbg !42076, !noalias !42078 ; 0 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bk, i64 1, !dbg !42081
  %i.bn = add i64 %.sroa.0.08.i, 1, !dbg !42085   ; 2 uses
  %i.bo = load atomic ptr, ptr @_RNvNvNtNtNtCslnrARR2vGZ9_6memchr4arch6x86_646memchr11memchr2_raw2FN monotonic, align 8, !dbg !42037, !noalias !42089, !nonnull !11, !noundef !11
  %i.bp = tail call { i64, ptr } %i.bo(i8 noundef %3, i8 noundef %4, ptr noundef nonnull %i.bm, ptr noundef %i.be), !dbg !42069, !noalias !42089, !inline_history !42071 ; 2 uses
  %i.bq = extractvalue { i64, ptr } %i.bp, 0, !dbg !42072
  %i.br = trunc nuw i64 %i.bq to i1, !dbg !42073
  br i1 %i.br, label %.lr.ph.i13, label %_RINvYNtNtCslnrARR2vGZ9_6memchr6memchr7Memchr2NtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4foldjNCNvYB3_BH_5count0ECslpwjCj2YNBy_9polars_io.exit, !dbg !42073

_RINvYNtNtCslnrARR2vGZ9_6memchr6memchr7Memchr2NtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4foldjNCNvYB3_BH_5count0ECslpwjCj2YNBy_9polars_io.exit: ; preds = %.lr.ph.i13, %.loopexit32
  %.sroa.0.0.lcssa.i = phi i64 [ 0, %.loopexit32 ], [ %i.bn, %.lr.ph.i13 ], !dbg !42092
  %.not12 = icmp ult i64 %.sroa.0.0.lcssa.i, %2, !dbg !42035
  br i1 %.not12, label %bb.s, label %.loopexit33, !dbg !42035

_RNvXs_NtNtNtNtCslpwjCj2YNBy_9polars_io3csv4read11splitfields5innerNtB4_11SplitFieldsNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit: ; preds = %bb.s, %bb.m
  %.us-phi = phi i64 [ %i.ap, %bb.m ], [ %i.bu, %bb.s ], !dbg !42099
  %i.bs = sub i64 %2, %.us-phi, !dbg !42099
  %i.bt = icmp ult i64 %i.bs, 2, !dbg !42102
  br label %.loopexit33, !dbg !42103

.loopexit33:                                      ; preds = %_RINvYNtNtCslnrARR2vGZ9_6memchr6memchr7Memchr2NtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4foldjNCNvYB3_BH_5count0ECslpwjCj2YNBy_9polars_io.exit, %_RINvYNtNtCslnrARR2vGZ9_6memchr6memchr7Memchr2NtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4foldjNCNvYB3_BH_5count0ECslpwjCj2YNBy_9polars_io.exit.us, %_RNvXs_NtNtNtNtCslpwjCj2YNBy_9polars_io3csv4read11splitfields5innerNtB4_11SplitFieldsNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit
  %.sroa.02.0 = phi i1 [ %i.bt, %_RNvXs_NtNtNtNtCslpwjCj2YNBy_9polars_io3csv4read11splitfields5innerNtB4_11SplitFieldsNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit ], [ false, %_RINvYNtNtCslnrARR2vGZ9_6memchr6memchr7Memchr2NtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4foldjNCNvYB3_BH_5count0ECslpwjCj2YNBy_9polars_io.exit.us ], [ false, %_RINvYNtNtCslnrARR2vGZ9_6memchr6memchr7Memchr2NtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4foldjNCNvYB3_BH_5count0ECslpwjCj2YNBy_9polars_io.exit ], !dbg !42104
  ret i1 %.sroa.02.0, !dbg !42103

bb.s:                                             ; preds = %_RINvYNtNtCslnrARR2vGZ9_6memchr6memchr7Memchr2NtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4foldjNCNvYB3_BH_5count0ECslpwjCj2YNBy_9polars_io.exit
  %i.bu = add i64 %.sroa.03.042, 1, !dbg !42093   ; 2 uses
  br i1 %.sroa.18.1.ph, label %_RNvXs_NtNtNtNtCslpwjCj2YNBy_9polars_io3csv4read11splitfields5innerNtB4_11SplitFieldsNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit, label %.split, !dbg !42094
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_RNvXNtNtCscgRAwXFJnXP_4core4iter8adaptersINtB2_12GenericShuntINtNtB2_3map3MapIBY_INtNtNtCse4dvU5uQ85g_8indexmap3map4iter4IterNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeENCNvXNtB2U_6schemaINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaB2O_uENtB3Q_9SchemaExt11iter_fields0ENCNvNtCslpwjCj2YNBy_9polars_io6shared23schema_to_arrow_checked0EINtNtB6_6result6ResultNtNtB6_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEENtNtNtB4_6traits8iterator8Iterator9size_hintB5w_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(40) %1) unnamed_addr #17 !dbg !42105 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !42106
  %i.b = load ptr, ptr %i.a, align 8, !dbg !42106, !nonnull !11, !align !615, !noundef !11
  %i.c = load i64, ptr %i.b, align 8, !dbg !42107, !range !1116, !noundef !11
  %.not = icmp eq i64 %i.c, 18, !dbg !42107
  br i1 %.not, label %bb.b, label %bb.c, !dbg !42106

bb.b:                                             ; preds = %bb.a
  %.val = load ptr, ptr %1, align 8, !dbg !42112, !nonnull !11, !noundef !11
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !42112
  %.val1 = load ptr, ptr %i.d, align 8, !dbg !42112, !nonnull !11, !noundef !11
  %i.e = ptrtoint ptr %.val1 to i64, !dbg !42113
  %i.f = ptrtoint ptr %.val to i64, !dbg !42113
  %i.g = sub nuw i64 %i.e, %i.f, !dbg !42113
  %i.h = udiv exact i64 %i.g, 80, !dbg !42113
  br label %bb.c, !dbg !42133

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sink = phi i64 [ %i.h, %bb.b ], [ 0, %bb.a ], !dbg !42134
  store i64 0, ptr %0, align 8, !dbg !42134
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !42134
  store i64 1, ptr %i.i, align 8, !dbg !42134
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !42134
  store i64 %.sink, ptr %i.j, align 8, !dbg !42134
  ret void, !dbg !42135
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_RNvXNtNtCscgRAwXFJnXP_4core4iter8adaptersINtB2_12GenericShuntINtNtB2_3map3MapIBY_INtNtNtCse4dvU5uQ85g_8indexmap3map4iter4IterNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeENCNvXNtB2U_6schemaINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaB2O_uENtB3Q_9SchemaExt11iter_fields0ENCNvNtNtNtCslpwjCj2YNBy_9polars_io3csv4read6reader18prepare_csv_schema0EINtNtB6_6result6ResultNtNtB6_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEENtNtNtB4_6traits8iterator8Iterator9size_hintB5A_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(40) %1) unnamed_addr #17 !dbg !42136 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !42137
  %i.b = load ptr, ptr %i.a, align 8, !dbg !42137, !nonnull !11, !align !615, !noundef !11
  %i.c = load i64, ptr %i.b, align 8, !dbg !42138, !range !1116, !noundef !11
  %.not = icmp eq i64 %i.c, 18, !dbg !42138
  br i1 %.not, label %bb.b, label %bb.c, !dbg !42137

bb.b:                                             ; preds = %bb.a
  %.val = load ptr, ptr %1, align 8, !dbg !42143, !nonnull !11, !noundef !11
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !42143
  %.val1 = load ptr, ptr %i.d, align 8, !dbg !42143, !nonnull !11, !noundef !11
  %i.e = ptrtoint ptr %.val1 to i64, !dbg !42144
  %i.f = ptrtoint ptr %.val to i64, !dbg !42144
  %i.g = sub nuw i64 %i.e, %i.f, !dbg !42144
  %i.h = udiv exact i64 %i.g, 80, !dbg !42144
  br label %bb.c, !dbg !42153

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sink = phi i64 [ %i.h, %bb.b ], [ 0, %bb.a ], !dbg !42154
  store i64 0, ptr %0, align 8, !dbg !42154
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !42154
  store i64 1, ptr %i.i, align 8, !dbg !42154
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !42154
  store i64 %.sink, ptr %i.j, align 8, !dbg !42154
  ret void, !dbg !42155
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, ptr } @_RNvXNtNtCscgRAwXFJnXP_4core4iter8adaptersINtB2_12GenericShuntINtNtB2_3map3MapINtNtB2_3zip3ZipIB1e_IB1e_INtNtNtB6_5slice4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EEINtNtNtB28_3vec9into_iter8IntoIterINtB3v_3VecNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow5write5pages6NestedEEEIB3r_NtNtNtNtNtB4h_7parquet6schema5types12parquet_type13PrimitiveTypeEEIB1E_NtNtB5q_14parquet_bridge8EncodingEENCINvB4b_16array_to_columnsRB23_E0EINtNtB6_6result6ResultNtNtB6_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEENtNtNtB4_6traits8iterator8Iterator4nextCslpwjCj2YNBy_9polars_io(ptr noalias noundef align 8 dereferenceable(160) %0) unnamed_addr #3 personality ptr @rust_eh_personality !dbg !42156 {
_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtB4_3ops12control_flow11ControlFlowINtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet5write8dyn_iter7DynIterINtNtB4_6result6ResultNtNtB1s_4page4PageNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEEECslpwjCj2YNBy_9polars_io.exit:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !42157), !dbg !42160
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !42163, !noalias !42157
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 152, !dbg !42166
  %i.d = load ptr, ptr %i.c, align 8, !dbg !42166, !alias.scope !42157, !nonnull !11, !align !615, !noundef !11
  call void @_RINvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB6_3MapINtNtB8_3zip3ZipIBY_IBY_INtNtNtBc_5slice4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EEINtNtNtB1Q_3vec9into_iter8IntoIterINtB3d_3VecNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow5write5pages6NestedEEEIB39_NtNtNtNtNtB3Z_7parquet6schema5types12parquet_type13PrimitiveTypeEEIB1m_NtNtB58_14parquet_bridge8EncodingEENCINvB3T_16array_to_columnsRB1L_E0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvXB8_INtB8_12GenericShuntBN_INtNtBc_6result6ResultNtNtBc_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEB7h_8try_folduNCINvNvB7h_12try_for_each4callINtNtNtB58_5write8dyn_iter7DynIterIB8w_NtNtB58_4page4PageB9i_EEINtNtNtBc_3ops12control_flow11ControlFlowBaJ_ENcNtBbK_5Break0E0BbK_E0IBbL_BbK_EECslpwjCj2YNBy_9polars_io(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(160) %0, ptr noalias noundef nonnull %i.a, ptr noalias noundef nonnull align 8 dereferenceable(72) %i.d), !dbg !42167
  %i.e = load i64, ptr %i.b, align 8, !dbg !42168, !range !357, !noalias !42157, !noundef !11
  %i.f = trunc nuw i64 %i.e to i1, !dbg !42171
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !42171
end_hunk_2
