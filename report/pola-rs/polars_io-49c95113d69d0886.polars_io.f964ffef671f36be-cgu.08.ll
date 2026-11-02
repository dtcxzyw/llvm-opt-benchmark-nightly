Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pola-rs/original/polars_io-49c95113d69d0886.polars_io.f964ffef671f36be-cgu.08?download=true
inline.NumInlined: 2639
inline.NumDeleted: 1280
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumRuntimeUnrolled: 15
loop-unroll.NumUnrolled: 26
begin_hunk_0_@_RNvMs_NtNtCslpwjCj2YNBy_9polars_io10path_utils12hugging_faceNtB4_11HFPathParts12try_from_uri:bb.a
bb.bo:                                            ; preds = %bb.bd
  %i.en = load ptr, ptr %i.eb, align 8, !dbg !26473, !noalias !26188, !nonnull !1150, !noundef !1150 ; 2 uses
  %i.eo = icmp ule i64 %.sroa.3.0.i, %i.ea, !dbg !26474
  tail call void @llvm.assume(i1 %i.eo), !dbg !26475
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !26476, !noalias !26188
  %.not102.i = icmp eq i64 %.sroa.3.0.i, 0, !dbg !26477
  br i1 %.not102.i, label %_RNCNvMs_NtNtCslpwjCj2YNBy_9polars_io10path_utils12hugging_faceNtB6_11HFPathParts12try_from_uri0Ba_.exit, label %bb.bp, !dbg !26477

bb.bp:                                            ; preds = %bb.bo
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.en, ptr nonnull align 1 %.sroa.034.0.i, i64 %.sroa.3.0.i, i1 false), !dbg !26478, !noalias !26188
  br label %_RNCNvMs_NtNtCslpwjCj2YNBy_9polars_io10path_utils12hugging_faceNtB6_11HFPathParts12try_from_uri0Ba_.exit, !dbg !26479

bb.bq:                                            ; preds = %bb.bm
  invoke void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsgZ49sUHp3tW_5alloc6string6StringECslpwjCj2YNBy_9polars_io(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.i) #40
          to label %bb.n unwind label %bb.be, !dbg !26470, !noalias !26188

_RNCNvMs_NtNtCslpwjCj2YNBy_9polars_io10path_utils12hugging_faceNtB6_11HFPathParts12try_from_uri0Ba_.exit: ; preds = %bb.bo, %bb.bp
  %.sroa.680.0.i = phi i64 [ %.sroa.3.0.i143.i, %bb.bp ], [ 0, %bb.bo ], !dbg !26480
  %.sroa.083.i.sroa.0.0.copyload = load i64, ptr %i.j, align 8, !dbg !26481, !noalias !26188 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.083.i.sroa.4, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.447.0..sroa_idx.i, i64 16, i1 false), !dbg !26481
  %.sroa.083.i.sroa.4.24..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.083.i.sroa.4, i64 16, !dbg !26482
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.083.i.sroa.4.24..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.i, i64 24, i1 false), !dbg !26482
  %.sroa.083.i.sroa.4.48..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.083.i.sroa.4, i64 40, !dbg !26483
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.083.i.sroa.4.48..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.h, i64 24, i1 false), !dbg !26483
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !dbg !26470, !noalias !26188
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !dbg !26470, !noalias !26188
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !dbg !26325, !noalias !26188
  %.not = icmp eq i64 %.sroa.083.i.sroa.0.0.copyload, -9223372036854775808, !dbg !26484
  br i1 %.not, label %.split, label %bb.br, !dbg !26485, !prof !1262

bb.br:                                            ; preds = %_RNCNvMs_NtNtCslpwjCj2YNBy_9polars_io10path_utils12hugging_faceNtB6_11HFPathParts12try_from_uri0Ba_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !dbg !26486
  store i64 %.sroa.083.i.sroa.0.0.copyload, ptr %i.o, align 8, !dbg !26486
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 8, !dbg !26486 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.10.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.083.i.sroa.4, i64 64, i1 false), !dbg !26486
  %.sroa.1029.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 72, !dbg !26486
  store i64 %i.ea, ptr %.sroa.1029.0..sroa_idx, align 8, !dbg !26486
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 80, !dbg !26486
  store ptr %i.en, ptr %.sroa.11.0..sroa_idx, align 8, !dbg !26486
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 88, !dbg !26486
  store i64 %.sroa.680.0.i, ptr %.sroa.12.0..sroa_idx, align 8, !dbg !26486
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !dbg !26487
  %i.ep = load ptr, ptr %.sroa.10.0..sroa_idx, align 8, !dbg !26488, !nonnull !1150, !noundef !1150
  %i.eq = getelementptr inbounds nuw i8, ptr %i.o, i64 16, !dbg !26489
  %i.er = load i64, ptr %i.eq, align 8, !dbg !26489, !noundef !1150
  store ptr %i.ep, ptr %i.n, align 8, !dbg !26490
  %i.es = getelementptr inbounds nuw i8, ptr %i.n, i64 8, !dbg !26490
  store i64 %i.er, ptr %i.es, align 8, !dbg !26490
  %i.et = invoke noundef zeroext i1 @_RNvXsf_NtNtCscgRAwXFJnXP_4core5slice3cmpReNtB5_13SliceContains14slice_containsCslpwjCj2YNBy_9polars_io(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.n, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) @94, i64 noundef 2)
          to label %bb.bt unwind label %bb.bs, !dbg !26491

.split:                                           ; preds = %bb.d, %bb.a, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsgZ49sUHp3tW_5alloc6string6StringECslpwjCj2YNBy_9polars_io.exit.i, %_RNCNvMs_NtNtCslpwjCj2YNBy_9polars_io10path_utils12hugging_faceNtB6_11HFPathParts12try_from_uri0Ba_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !dbg !26492
  store ptr %i.r, ptr %i.p, align 8, !dbg !26492
  %.sroa.413.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 8, !dbg !26492
  store ptr @_RNvXs1i_NtCscgRAwXFJnXP_4core3fmtReNtB6_7Display3fmtCslpwjCj2YNBy_9polars_io, ptr %.sroa.413.0..sroa_idx, align 8, !dbg !26492
  call void @_RNvNvNtCsgZ49sUHp3tW_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.q, ptr noundef nonnull @97, ptr noundef nonnull %i.p), !dbg !26493
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !dbg !26494
  %.sroa.424.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !26494
  call void @_RNvXs_CsgjwxzEoLG5s_12polars_errorNtB4_9ErrStringINtNtCscgRAwXFJnXP_4core7convert4FromNtNtCsgZ49sUHp3tW_5alloc6string6StringE4fromCslpwjCj2YNBy_9polars_io(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %.sroa.424.0..sroa_idx, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.q, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @98), !dbg !26495
  %i.eu = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !26494
  store i64 2, ptr %i.eu, align 8, !dbg !26494
  store i64 -9223372036854775808, ptr %0, align 8, !dbg !26494
  br label %bb.bx, !dbg !26494

bb.bs:                                            ; preds = %bb.bu, %_RINvMNtCscgRAwXFJnXP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsgZ49sUHp3tW_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECslpwjCj2YNBy_9polars_io.exit, %bb.br
  %i.ev = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCslpwjCj2YNBy_9polars_io10path_utils12hugging_face11HFPathPartsEBM_(ptr noalias noundef align 8 dereferenceable(96) %i.o) #40
          to label %common.resume unwind label %bb.by, !dbg !26496

bb.bt:                                            ; preds = %bb.br
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !dbg !26497
  br i1 %i.et, label %bb.bv, label %bb.bu, !dbg !26498

bb.bu:                                            ; preds = %bb.bt
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !dbg !26499
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !dbg !26500
  store ptr @94, ptr %i.k, align 8, !dbg !26500
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 8, !dbg !26500
  store ptr @_RNvXsa_NtCscgRAwXFJnXP_4core5arrayARej2_NtNtB7_3fmt5Debug3fmtCslpwjCj2YNBy_9polars_io, ptr %.sroa.43.0..sroa_idx, align 8, !dbg !26500
  %i.ew = getelementptr inbounds nuw i8, ptr %i.k, i64 16, !dbg !26500
  store ptr %i.o, ptr %i.ew, align 8, !dbg !26500
  %.sroa.47.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 24, !dbg !26500
  store ptr @_RNvXsq_NtCsgZ49sUHp3tW_5alloc6stringNtB5_6StringNtNtCscgRAwXFJnXP_4core3fmt7Display3fmt, ptr %.sroa.47.0..sroa_idx, align 8, !dbg !26500
  invoke void @_RNvNvNtCsgZ49sUHp3tW_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.l, ptr noundef nonnull @95, ptr noundef nonnull %i.k)
          to label %_RINvMNtCscgRAwXFJnXP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsgZ49sUHp3tW_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECslpwjCj2YNBy_9polars_io.exit unwind label %bb.bs, !dbg !26501

bb.bv:                                            ; preds = %bb.bt
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 8 dereferenceable(96) %i.o, i64 96, i1 false), !dbg !26502
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !dbg !26496
  br label %bb.bx, !dbg !26503

_RINvMNtCscgRAwXFJnXP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsgZ49sUHp3tW_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECslpwjCj2YNBy_9polars_io.exit: ; preds = %bb.bu
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !dbg !26499
  invoke void @_RNvXs_CsgjwxzEoLG5s_12polars_errorNtB4_9ErrStringINtNtCscgRAwXFJnXP_4core7convert4FromNtNtCsgZ49sUHp3tW_5alloc6string6StringE4fromCslpwjCj2YNBy_9polars_io(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.m, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.l, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @96)
          to label %bb.bw unwind label %bb.bs, !dbg !26504

bb.bw:                                            ; preds = %_RINvMNtCscgRAwXFJnXP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsgZ49sUHp3tW_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECslpwjCj2YNBy_9polars_io.exit
  %.sroa.436.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !26499
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.436.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.m, i64 24, i1 false), !dbg !26499
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !dbg !26499
  %i.ex = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !26499
  store i64 2, ptr %i.ex, align 8, !dbg !26499
  store i64 -9223372036854775808, ptr %0, align 8, !dbg !26499
  call fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCslpwjCj2YNBy_9polars_io10path_utils12hugging_face11HFPathPartsEBM_(ptr noalias noundef align 8 dereferenceable(96) %i.o), !dbg !26496
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !dbg !26496
  br label %bb.bx, !dbg !26505

bb.bx:                                            ; preds = %.split, %bb.bw, %bb.bv
  ret void, !dbg !26503

bb.by:                                            ; preds = %bb.bs
  %i.ey = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #42, !dbg !26506
  unreachable, !dbg !26506
}

; Function Attrs: nonlazybind uwtable
define { ptr, i64 } @_RNvMs_NtNtNtCslpwjCj2YNBy_9polars_io3csv4read6parserNtB4_10SplitLines11next_scalar(ptr noalias nofree noundef align 8 captures(none) dereferenceable(40) %0) unnamed_addr #3 personality ptr @rust_eh_personality !dbg !26507 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !26598 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !dbg !26598, !noundef !1150 ; 11 uses
  %i.c = icmp eq i64 %i.b, 0, !dbg !26598
  br i1 %i.c, label %bb.g, label %bb.b, !dbg !26598

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !dbg !26599, !nonnull !1150, !noundef !1150 ; 11 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !26600
  %i.f = load ptr, ptr %i.e, align 8, !dbg !26600, !align !1232, !noundef !1150 ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !26578), !dbg !26601
  tail call void @llvm.experimental.noalias.scope.decl(metadata !26579), !dbg !26601
  %.not.i = icmp eq ptr %i.f, null, !dbg !26602
  br i1 %.not.i, label %.lr.ph, label %bb.c, !dbg !26603

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 23, !dbg !26602
  %i.h = load i8, ptr %i.g, align 1, !dbg !26602, !range !1375, !alias.scope !26579, !noundef !1150 ; 3 uses
  %.not4.i = icmp eq i8 %i.h, -38, !dbg !26602
  br i1 %.not4.i, label %_RNvNtNtNtCslpwjCj2YNBy_9polars_io3csv4read6parser15is_comment_line.exit, label %bb.d, !dbg !26603

bb.d:                                             ; preds = %bb.c
  %i.i = icmp ugt i8 %i.h, -41, !dbg !26604
  br i1 %i.i, label %bb.f, label %bb.e, !dbg !26604

bb.e:                                             ; preds = %bb.d
  %i.j = add i8 %i.h, 64, !dbg !26605
  %i.k = tail call i8 @llvm.umin.i8(i8 %i.j, i8 24), !dbg !26606
  %.sroa.0.0.i.i.i = zext nneg i8 %i.k to i64, !dbg !26606
  br label %_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr8as_slice.exit.i, !dbg !26607

bb.f:                                             ; preds = %bb.d
  %i.l = load ptr, ptr %i.f, align 8, !dbg !26608, !alias.scope !26580, !noundef !1150
  %i.m = getelementptr inbounds nuw i8, ptr %i.f, i64 8, !dbg !26609
  %i.n = load i64, ptr %i.m, align 8, !dbg !26609, !alias.scope !26580, !noundef !1150
  br label %_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr8as_slice.exit.i, !dbg !26610

_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr8as_slice.exit.i: ; preds = %bb.f, %bb.e
  %.sroa.01.0.i.i = phi i64 [ %i.n, %bb.f ], [ %.sroa.0.0.i.i.i, %bb.e ], !dbg !26611
  %.sroa.0.0.i.i = phi ptr [ %i.l, %bb.f ], [ %i.f, %bb.e ], !dbg !26612
  %i.o = tail call noundef zeroext i1 @_RNvMNtCscgRAwXFJnXP_4core5sliceSh11starts_withCslpwjCj2YNBy_9polars_io(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.d, i64 noundef range(i64 0, -9223372036854775808) %i.b, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.sroa.0.0.i.i, i64 noundef %.sroa.01.0.i.i), !dbg !26613
  br i1 %i.o, label %bb.i, label %.lr.ph, !dbg !26601

_RNvNtNtNtCslpwjCj2YNBy_9polars_io3csv4read6parser15is_comment_line.exit: ; preds = %bb.c
  %i.p = load i8, ptr %i.d, align 1, !dbg !26614, !alias.scope !26578, !noundef !1150
  %i.q = load i8, ptr %i.f, align 8, !dbg !26615, !alias.scope !26579, !noundef !1150
  %i.r = icmp eq i8 %i.p, %i.q, !dbg !26614
  br i1 %i.r, label %bb.i, label %.lr.ph, !dbg !26601

.sink.split:                                      ; preds = %bb.h, %bb.m, %bb.j, %_RNvNtNtNtCslpwjCj2YNBy_9polars_io3csv4read6parser24next_line_position_naive.exit.i, %bb.i, %.split.us
  %.sink32 = phi ptr [ %i.be, %.split.us ], [ inttoptr (i64 1 to ptr), %bb.i ], [ %i.ar, %bb.j ], [ inttoptr (i64 1 to ptr), %_RNvNtNtNtCslpwjCj2YNBy_9polars_io3csv4read6parser24next_line_position_naive.exit.i ], [ inttoptr (i64 1 to ptr), %bb.m ], [ inttoptr (i64 1 to ptr), %bb.h ]
  %.sink = phi i64 [ %i.bd, %.split.us ], [ 0, %bb.i ], [ %i.aq, %bb.j ], [ 0, %_RNvNtNtNtCslpwjCj2YNBy_9polars_io3csv4read6parser24next_line_position_naive.exit.i ], [ 0, %bb.m ], [ 0, %bb.h ]
  %.sroa.5.0.ph = phi i64 [ %i.bc, %.split.us ], [ %i.b, %bb.i ], [ %i.ao, %bb.j ], [ %i.b, %_RNvNtNtNtCslpwjCj2YNBy_9polars_io3csv4read6parser24next_line_position_naive.exit.i ], [ %i.b, %bb.m ], [ %i.b, %bb.h ]
  store ptr %.sink32, ptr %0, align 8, !dbg !26616
  store i64 %.sink, ptr %i.a, align 8, !dbg !26616
  br label %bb.g, !dbg !26617

bb.g:                                             ; preds = %.sink.split, %bb.a
  %.sroa.5.0 = phi i64 [ undef, %bb.a ], [ %.sroa.5.0.ph, %.sink.split ], !dbg !26616
  %.sroa.0.0 = phi ptr [ null, %bb.a ], [ %i.d, %.sink.split ], !dbg !26616
  %i.s = insertvalue { ptr, i64 } poison, ptr %.sroa.0.0, 0, !dbg !26617
  %i.t = insertvalue { ptr, i64 } %i.s, i64 %.sroa.5.0, 1, !dbg !26617
  ret { ptr, i64 } %i.t, !dbg !26617

.lr.ph:                                           ; preds = %_RNvNtNtNtCslpwjCj2YNBy_9polars_io3csv4read6parser15is_comment_line.exit, %_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr8as_slice.exit.i, %bb.b
  %i.u = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.b, !dbg !26618 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 34
  %i.w = load i8, ptr %i.v, align 2, !range !1394, !noundef !1150
  %i.x = trunc nuw i8 %i.w to i1
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.z = load i8, ptr %i.y, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 33
  %i.ab = load i8, ptr %i.aa, align 1             ; 2 uses
  br i1 %i.x, label %.lr.ph.split, label %.lr.ph.split.us

.lr.ph.split.us:                                  ; preds = %.lr.ph, %bb.h
  %.sroa.02.015.us = phi i32 [ %i.ad, %bb.h ], [ 0, %.lr.ph ]
  %.sroa.05.014.us = phi ptr [ %i.ae, %bb.h ], [ %i.d, %.lr.ph ] ; 2 uses
  %i.ac = load i8, ptr %.sroa.05.014.us, align 1, !dbg !26619, !noundef !1150
  %i.ad = add nuw nsw i32 %.sroa.02.015.us, 1, !dbg !26620 ; 2 uses
  %.not = icmp eq i8 %i.ac, %i.ab, !dbg !26621
  br i1 %.not, label %.split.us, label %bb.h, !dbg !26621

bb.h:                                             ; preds = %.lr.ph.split.us
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.05.014.us, i64 1, !dbg !26622 ; 2 uses
  %i.af = icmp eq ptr %i.ae, %i.u, !dbg !26623
  br i1 %i.af, label %.sink.split, label %.lr.ph.split.us, !dbg !26586

bb.i:                                             ; preds = %_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr8as_slice.exit.i, %_RNvNtNtNtCslpwjCj2YNBy_9polars_io3csv4read6parser15is_comment_line.exit
  tail call void @llvm.experimental.noalias.scope.decl(metadata !26587), !dbg !26624
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 33, !dbg !26625
  %i.ah = load i8, ptr %i.ag, align 1, !dbg !26625, !alias.scope !26587, !noundef !1150
  %i.ai = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.b, !dbg !26626
  %i.aj = load atomic ptr, ptr @_RNvNvNtNtNtCslnrARR2vGZ9_6memchr4arch6x86_646memchr10memchr_raw2FN monotonic, align 8, !dbg !26627, !noalias !26588, !nonnull !1150, !noundef !1150
  %i.ak = tail call { i64, ptr } %i.aj(i8 noundef %i.ah, ptr noundef nonnull readonly %i.d, ptr noundef nonnull readonly %i.ai), !dbg !26628, !noalias !26589, !inline_history !26557 ; 2 uses
  %i.al = extractvalue { i64, ptr } %i.ak, 0, !dbg !26629
  %i.am = trunc nuw i64 %i.al to i1, !dbg !26630
  br i1 %i.am, label %_RNvNtNtNtCslpwjCj2YNBy_9polars_io3csv4read6parser24next_line_position_naive.exit.i, label %.sink.split, !dbg !26630

_RNvNtNtNtCslpwjCj2YNBy_9polars_io3csv4read6parser24next_line_position_naive.exit.i: ; preds = %bb.i
  %i.an = extractvalue { i64, ptr } %i.ak, 1, !dbg !26629
  %i.ao = tail call noundef i64 @_RNvXNtCslnrARR2vGZ9_6memchr3extPhNtB2_7Pointer8distanceCslpwjCj2YNBy_9polars_io(ptr noundef %i.an, ptr noundef nonnull readonly %i.d), !dbg !26631, !noalias !26587 ; 2 uses
  %i.ap = add i64 %i.ao, 1, !dbg !26632           ; 3 uses
  %.not.i.not.i = icmp eq i64 %i.b, %i.ap, !dbg !26632
  br i1 %.not.i.not.i, label %.sink.split, label %bb.j, !dbg !26633

bb.j:                                             ; preds = %_RNvNtNtNtCslpwjCj2YNBy_9polars_io3csv4read6parser24next_line_position_naive.exit.i
  %i.aq = sub nuw i64 %i.b, %i.ap, !dbg !26634
  %i.ar = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.ap, !dbg !26635
  br label %.sink.split, !dbg !26636

.lr.ph.split:                                     ; preds = %.lr.ph, %bb.m
  %.sroa.02.015 = phi i32 [ %i.au, %bb.m ], [ 0, %.lr.ph ]
  %.sroa.05.014 = phi ptr [ %i.as, %bb.m ], [ %i.d, %.lr.ph ] ; 2 uses
  %.sroa.06.013 = phi i1 [ %.sroa.06.1, %bb.m ], [ false, %.lr.ph ] ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.sroa.05.014, i64 1, !dbg !26622 ; 2 uses
  %i.at = load i8, ptr %.sroa.05.014, align 1, !dbg !26619, !noundef !1150 ; 2 uses
  %i.au = add nuw nsw i32 %.sroa.02.015, 1, !dbg !26620 ; 2 uses
  %i.av = icmp eq i8 %i.at, %i.z
  br i1 %i.av, label %bb.l, label %bb.k, !dbg !26637

bb.k:                                             ; preds = %.lr.ph.split
  %i.aw = icmp ne i8 %i.at, %i.ab, !dbg !26621
  %or.cond = select i1 %i.aw, i1 true, i1 %.sroa.06.013, !dbg !26621
  br i1 %or.cond, label %bb.m, label %.split.us, !dbg !26621

bb.l:                                             ; preds = %.lr.ph.split
  %i.ax = xor i1 %.sroa.06.013, true, !dbg !26638
  br label %bb.m, !dbg !26639

.split.us:                                        ; preds = %.lr.ph.split.us, %bb.k
  %.us-phi = phi i32 [ %i.au, %bb.k ], [ %i.ad, %.lr.ph.split.us ], !dbg !26640
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !26640
  %i.az = load i64, ptr %i.ay, align 8, !dbg !26640, !noundef !1150
  %i.ba = zext i32 %.us-phi to i64, !dbg !26641
  %i.bb = add i64 %i.az, %i.ba, !dbg !26640       ; 3 uses
  %i.bc = add i64 %i.bb, -1, !dbg !26642
  %i.bd = sub nuw i64 %i.b, %i.bb, !dbg !26643
  %i.be = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.bb, !dbg !26644
  br label %.sink.split, !dbg !26617

bb.m:                                             ; preds = %bb.k, %bb.l
  %.sroa.06.1 = phi i1 [ %i.ax, %bb.l ], [ %.sroa.06.013, %bb.k ], !dbg !26645
  %i.bf = icmp eq ptr %i.as, %i.u, !dbg !26623
  br i1 %i.bf, label %.sink.split, label %.lr.ph.split, !dbg !26586
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMsc_NtNtNtCslpwjCj2YNBy_9polars_io3csv4read7builderNtB5_9Utf8Field3new(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([216 x i8]) align 8 captures(none) dereferenceable(216) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1, i64 noundef %2, i1 noundef zeroext %3, i8 %4, i1 noundef zeroext %5) unnamed_addr #3 personality ptr @rust_eh_personality !dbg !26646 {
bb.a:
  %i.a = alloca [160 x i8], align 8               ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !26665
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !dbg !26665
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !26666
  invoke void @_RNvMs2_NtNtNtCs8774dFTUdNv_12polars_arrow5array7binview7mutableINtB5_22MutableBinaryViewArrayShE13with_capacityCslpwjCj2YNBy_9polars_io(ptr noalias noundef nonnull sret([160 x i8]) align 8 captures(none) dereferenceable(160) %i.a, i64 noundef %2)
          to label %bb.d unwind label %bb.b, !dbg !26666

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          cleanup
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 23, !dbg !26667
  %i.e = load i8, ptr %i.d, align 1, !dbg !26667, !range !1272, !alias.scope !26663, !noundef !1150
  %i.f = icmp eq i8 %i.e, -40, !dbg !26668
  br i1 %i.f, label %bb.c, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECslpwjCj2YNBy_9polars_io.exit, !dbg !26668, !prof !1161

bb.c:                                             ; preds = %bb.b
  invoke void @_RNvNvXs2_NtCs7VARH73bmU_11compact_str4reprNtB7_4ReprNtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4drop13outlined_drop(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECslpwjCj2YNBy_9polars_io.exit unwind label %bb.e, !dbg !26669

bb.d:                                             ; preds = %bb.a
  %. = select i1 %3, i8 %4, i8 34, !dbg !26670
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 184, !dbg !26671
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.g, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !dbg !26671
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr noundef nonnull align 8 dereferenceable(160) %i.a, i64 160, i1 false), !dbg !26671
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 160, !dbg !26671
  store i64 0, ptr %i.h, align 8, !dbg !26671
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 168, !dbg !26671
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.4.0..sroa_idx, align 8, !dbg !26671
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 176, !dbg !26671
  store i64 0, ptr %.sroa.5.0..sroa_idx, align 8, !dbg !26671
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 209, !dbg !26671
  store i8 %., ptr %i.i, align 1, !dbg !26671
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 208, !dbg !26671
  %i.k = zext i1 %5 to i8, !dbg !26671
  store i8 %i.k, ptr %i.j, align 8, !dbg !26671
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !26672
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !26672
  ret void, !dbg !26673

bb.e:                                             ; preds = %bb.c
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #42, !dbg !26674
  unreachable, !dbg !26674

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECslpwjCj2YNBy_9polars_io.exit: ; preds = %bb.b, %bb.c
  resume { ptr, i32 } %i.c, !dbg !26674
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMse_NtNtNtCslpwjCj2YNBy_9polars_io3csv4read7builderINtB5_16CategoricalFieldNtNtCs1LHh8CLbVkQ_11polars_core9datatypes16Categorical8TypeE3newBb_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([208 x i8]) align 16 captures(none) dereferenceable(208) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(24) %1, i64 noundef %2, i1 noundef zeroext %3, i8 %4, ptr noalias noundef align 16 captures(address) dead_on_return dereferenceable(48) %5) unnamed_addr #3 personality ptr @rust_eh_personality !dbg !26675 {
bb.a:
  %i.a = alloca [176 x i8], align 16              ; 16 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !26727
  tail call void @llvm.experimental.noalias.scope.decl(metadata !26717), !dbg !26728
  tail call void @llvm.experimental.noalias.scope.decl(metadata !26718), !dbg !26728
  tail call void @llvm.experimental.noalias.scope.decl(metadata !26719), !dbg !26728
  %i.b = load i8, ptr %5, align 16, !dbg !26729, !range !1377, !alias.scope !26719, !noundef !1150 ; 2 uses
  %i.c = and i8 %i.b, 30, !dbg !26730
  %switch.i = icmp eq i8 %i.c, 26, !dbg !26730
  br i1 %switch.i, label %bb.c, label %bb.b, !dbg !26730, !prof !1753

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvNtCscgRAwXFJnXP_4core9panicking9panic_fmt(ptr noundef nonnull @75, ptr noundef nonnull inttoptr (i64 111 to ptr), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @76) #41
          to label %bb.f unwind label %bb.e, !dbg !26731, !noalias !26720

bb.c:                                             ; preds = %bb.a
  %.sroa.0.0.i = getelementptr inbounds nuw i8, ptr %5, i64 16, !dbg !26732
  %i.d = load ptr, ptr %.sroa.0.0.i, align 16, !dbg !26733, !alias.scope !26719, !nonnull !1150, !noundef !1150 ; 2 uses
  %i.e = atomicrmw add ptr %i.d, i64 1 monotonic, align 8, !dbg !26734, !noalias !26720
  %i.f = icmp slt i64 %i.e, 0, !dbg !26735
  br i1 %i.f, label %bb.d, label %_RNvMNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7builder11categoricalINtB2_25CategoricalChunkedBuilderNtNtB8_9datatypes16Categorical8TypeE3newCslpwjCj2YNBy_9polars_io.exit, !dbg !26735

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.trap(), !dbg !26736
  unreachable, !dbg !26736

bb.e:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeECslpwjCj2YNBy_9polars_io(ptr noalias noundef nonnull align 16 dereferenceable(48) %5) #40
          to label %bb.h unwind label %bb.g, !dbg !26737, !noalias !26721

bb.f:                                             ; preds = %bb.b
  unreachable

bb.g:                                             ; preds = %bb.i, %bb.e
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #42, !dbg !26738, !noalias !26717
  unreachable, !dbg !26738

bb.h:                                             ; preds = %bb.e
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 23, !dbg !26739
  %i.j = load i8, ptr %i.i, align 1, !dbg !26739, !range !1272, !alias.scope !26722, !noundef !1150
  %i.k = icmp eq i8 %i.j, -40, !dbg !26740
  br i1 %i.k, label %bb.i, label %common.resume, !dbg !26740, !prof !1161

bb.i:                                             ; preds = %bb.h
  invoke void @_RNvNvXs2_NtCs7VARH73bmU_11compact_str4reprNtB7_4ReprNtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4drop13outlined_drop(ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
          to label %common.resume unwind label %bb.g, !dbg !26741, !noalias !26717

common.resume:                                    ; preds = %bb.k, %bb.h, %bb.i
  %common.resume.op = phi { ptr, i32 } [ %i.g, %bb.h ], [ %i.g, %bb.i ], [ %i.y, %bb.k ]
  resume { ptr, i32 } %common.resume.op, !dbg !26742

_RNvMNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7builder11categoricalINtB2_25CategoricalChunkedBuilderNtNtB8_9datatypes16Categorical8TypeE3newCslpwjCj2YNBy_9polars_io.exit: ; preds = %bb.c
  %i.l = icmp eq i8 %i.b, 27, !dbg !26743
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(176) %i.a, ptr noundef nonnull align 16 dereferenceable(48) %5, i64 48, i1 false), !dbg !26744, !alias.scope !26724
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 56, !dbg !26745
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.m, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !dbg !26745, !alias.scope !26721
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 48, !dbg !26745
  store ptr %i.d, ptr %i.n, align 16, !dbg !26745, !alias.scope !26717
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 160, !dbg !26745
  %i.p = zext i1 %i.l to i8, !dbg !26745
  store i8 %i.p, ptr %i.o, align 16, !dbg !26745, !alias.scope !26717
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 136, !dbg !26745 ; 2 uses
  store i64 0, ptr %i.q, align 8, !dbg !26745, !alias.scope !26717
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 144, !dbg !26745
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.4.0..sroa_idx.i, align 16, !dbg !26745, !alias.scope !26717
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 152, !dbg !26745
  store i64 0, ptr %.sroa.5.0..sroa_idx.i, align 8, !dbg !26745, !alias.scope !26717
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 80, !dbg !26745 ; 2 uses
  store i64 0, ptr %i.r, align 16, !dbg !26745, !alias.scope !26717
  %.sroa.02.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 88, !dbg !26745
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.02.sroa.4.0..sroa_idx.i, align 8, !dbg !26745, !alias.scope !26717
  %.sroa.02.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 96, !dbg !26745
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(40) %.sroa.02.sroa.5.0..sroa_idx.i, i8 0, i64 40, i1 false), !dbg !26745, !alias.scope !26717
  invoke void @_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE7reserveCslpwjCj2YNBy_9polars_io(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.q, i64 noundef %2)
          to label %.noexc unwind label %bb.k, !dbg !26746

.noexc:                                           ; preds = %_RNvMNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7builder11categoricalINtB2_25CategoricalChunkedBuilderNtNtB8_9datatypes16Categorical8TypeE3newCslpwjCj2YNBy_9polars_io.exit
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 112, !dbg !26747
  %i.t = load i64, ptr %i.s, align 16, !dbg !26747, !alias.scope !26725, !noundef !1150
  %i.u = add i64 %i.t, %2, !dbg !26747
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 120, !dbg !26748
  %i.w = load i64, ptr %i.v, align 8, !dbg !26748, !alias.scope !26725, !noundef !1150
  %i.x = icmp ugt i64 %i.u, %i.w, !dbg !26747
  br i1 %i.x, label %bb.j, label %_RNvMNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7builder11categoricalINtB2_25CategoricalChunkedBuilderNtNtB8_9datatypes16Categorical8TypeE7reserveCslpwjCj2YNBy_9polars_io.exit, !dbg !26747, !prof !1161

bb.j:                                             ; preds = %.noexc
  invoke void @_RNvMNtNtCs8774dFTUdNv_12polars_arrow6bitmap7builderNtB2_13BitmapBuilder12reserve_slow(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.r, i64 noundef %2) #44
          to label %_RNvMNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7builder11categoricalINtB2_25CategoricalChunkedBuilderNtNtB8_9datatypes16Categorical8TypeE7reserveCslpwjCj2YNBy_9polars_io.exit unwind label %bb.k, !dbg !26749

bb.k:                                             ; preds = %bb.j, %_RNvMNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7builder11categoricalINtB2_25CategoricalChunkedBuilderNtNtB8_9datatypes16Categorical8TypeE3newCslpwjCj2YNBy_9polars_io.exit
  %i.y = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7builder11categorical25CategoricalChunkedBuilderNtNtBP_9datatypes16Categorical8TypeEECslpwjCj2YNBy_9polars_io(ptr noalias noundef align 16 dereferenceable(176) %i.a) #40
          to label %common.resume unwind label %bb.l, !dbg !26750

_RNvMNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7builder11categoricalINtB2_25CategoricalChunkedBuilderNtNtB8_9datatypes16Categorical8TypeE7reserveCslpwjCj2YNBy_9polars_io.exit: ; preds = %.noexc, %bb.j
  %. = select i1 %3, i8 %4, i8 34, !dbg !26751
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(176) %0, ptr noundef nonnull align 16 dereferenceable(176) %i.a, i64 176, i1 false), !dbg !26752
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 176, !dbg !26753
  store i64 0, ptr %i.z, align 16, !dbg !26753
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 184, !dbg !26753
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.4.0..sroa_idx, align 8, !dbg !26753
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 192, !dbg !26753
  store i64 0, ptr %.sroa.5.0..sroa_idx, align 16, !dbg !26753
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 200, !dbg !26753
  store i8 %., ptr %i.aa, align 8, !dbg !26753
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !26750
  ret void, !dbg !26754

bb.l:                                             ; preds = %bb.k
  %i.ab = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
end_hunk_0
begin_hunk_1_@_RNvNtNtNtCslpwjCj2YNBy_9polars_io3csv4read6parser11parse_lines:bb.a
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking9panic_fmt(ptr noundef nonnull @115, ptr noundef nonnull inttoptr (i64 79 to ptr), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @116) #45, !dbg !41125
  unreachable, !dbg !41125

bb.c:                                             ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 60, !dbg !41126
  %i.q = load i8, ptr %i.p, align 4, !dbg !41126, !range !1394, !noundef !1150
  %.not = icmp ne i64 %8, %12, !dbg !41127
  %i.r = ptrtoint ptr %1 to i64, !dbg !41128      ; 2 uses
  %i.s = trunc i64 %11 to i32, !dbg !41129
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 55
  %i.u = load i8, ptr %i.t, align 1, !range !1332
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
  %i.ak = load i8, ptr %i.aj, align 8, !range !1394
  %i.al = trunc nuw i8 %i.ak to i1                ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %3, i64 57
  %i.an = load i8, ptr %i.am, align 1             ; 3 uses
  %.not108 = icmp eq ptr %6, null
  %i.ao = getelementptr inbounds nuw i8, ptr %3, i64 59
  %i.ap = load i8, ptr %i.ao, align 1, !range !1394
  %i.aq = trunc nuw i8 %i.ap to i1                ; 2 uses
  %not. = xor i1 %i.aq, true                      ; 2 uses
  %i.ar = trunc nuw i8 %i.q to i1
  %i.as = or i1 %.not, %i.ar
  %..sroa.0.0.i.i.i270 = select i1 %i.w, i64 %i.ab, i64 %.sroa.0.0.i.i.i
  %.271 = select i1 %i.w, ptr %i.z, ptr %i.v
  br label %.lr.ph, !dbg !41130

.lr.ph:                                           ; preds = %bb.c, %.outer
  %.sroa.0.0.ph269 = phi ptr [ %1, %bb.c ], [ %.sroa.0.1, %.outer ] ; 2 uses
  %.sroa.23.0.ph268 = phi i64 [ %2, %bb.c ], [ %.sroa.23.1, %.outer ] ; 3 uses
  %.sroa.036.0.ph267 = phi i32 [ 0, %bb.c ], [ %i.fx, %.outer ]
  %i.at = icmp eq i64 %.sroa.23.0.ph268, 0, !dbg !41131 ; 2 uses
  br i1 %.not105, label %.lr.ph.split.us, label %.lr.ph.split.split

.lr.ph.split.us:                                  ; preds = %.lr.ph
  br i1 %i.at, label %.split234.us, label %_RNvNtNtNtCslpwjCj2YNBy_9polars_io3csv4read6parser15is_comment_line.exit.thread, !dbg !41131

.lr.ph.split.split:                               ; preds = %.lr.ph
  br i1 %i.at, label %.split234.us, label %.lr.ph254, !dbg !41131

.outer._crit_edge:                                ; preds = %.outer
  %i.au = ptrtoint ptr %.sroa.0.1 to i64, !dbg !41132
  %i.av = sub i64 %i.au, %i.r, !dbg !41133
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !41134
  store i64 %i.av, ptr %i.aw, align 8, !dbg !41134
  br label %bb.d, !dbg !41135

.split234.us:                                     ; preds = %.lr.ph.split.split, %.lr.ph.split.us, %bb.e, %_RNvNtNtNtCslpwjCj2YNBy_9polars_io3csv4read6parser24next_line_position_naive.exit
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !41136
  store i64 %2, ptr %i.ax, align 8, !dbg !41136
  br label %bb.d, !dbg !41135

.lr.ph254:                                        ; preds = %.lr.ph.split.split, %_RNvNtNtNtCslpwjCj2YNBy_9polars_io3csv4read6parser24next_line_position_naive.exit
  %.sroa.23.0230253 = phi i64 [ %i.bk, %_RNvNtNtNtCslpwjCj2YNBy_9polars_io3csv4read6parser24next_line_position_naive.exit ], [ %.sroa.23.0.ph268, %.lr.ph.split.split ] ; 6 uses
  %.sroa.0.0231252 = phi ptr [ %.sroa.0.3, %_RNvNtNtNtCslpwjCj2YNBy_9polars_io3csv4read6parser24next_line_position_naive.exit ], [ %.sroa.0.0.ph269, %.lr.ph.split.split ] ; 8 uses
  br i1 %.not4.i, label %_RNvNtNtNtCslpwjCj2YNBy_9polars_io3csv4read6parser15is_comment_line.exit, label %_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr8as_slice.exit.i, !dbg !41137

_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr8as_slice.exit.i: ; preds = %.lr.ph254
  %i.ay = tail call noundef zeroext i1 @_RNvMNtCscgRAwXFJnXP_4core5sliceSh11starts_withCslpwjCj2YNBy_9polars_io(ptr noalias noundef nonnull readonly captures(address, read_provenance) %.sroa.0.0231252, i64 noundef range(i64 0, -9223372036854775808) %.sroa.23.0230253, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.271, i64 noundef %..sroa.0.0.i.i.i270), !dbg !41138
  br i1 %i.ay, label %bb.e, label %_RNvNtNtNtCslpwjCj2YNBy_9polars_io3csv4read6parser15is_comment_line.exit.thread, !dbg !41139

_RNvNtNtNtCslpwjCj2YNBy_9polars_io3csv4read6parser15is_comment_line.exit: ; preds = %.lr.ph254
  %i.az = load i8, ptr %.sroa.0.0231252, align 1, !dbg !41140, !alias.scope !41031, !noundef !1150
  %i.ba = icmp eq i8 %i.az, %i.ad, !dbg !41140
  br i1 %i.ba, label %bb.e, label %_RNvNtNtNtCslpwjCj2YNBy_9polars_io3csv4read6parser15is_comment_line.exit.thread, !dbg !41139

bb.d:                                             ; preds = %_RNCNvNtNtNtCslpwjCj2YNBy_9polars_io3csv4read6parser11parse_lines0B9_.exit, %.split, %.split234.us, %.outer._crit_edge
  %.sink = phi i64 [ 2, %_RNCNvNtNtNtCslpwjCj2YNBy_9polars_io3csv4read6parser11parse_lines0B9_.exit ], [ 2, %.split ], [ 18, %.split234.us ], [ 18, %.outer._crit_edge ]
  store i64 %.sink, ptr %0, align 8, !dbg !41141
  ret void, !dbg !41142

_RNvNtNtNtCslpwjCj2YNBy_9polars_io3csv4read6parser15is_comment_line.exit.thread: ; preds = %_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr8as_slice.exit.i, %_RNvNtNtNtCslpwjCj2YNBy_9polars_io3csv4read6parser15is_comment_line.exit, %.lr.ph.split.us
  %.us-phi = phi i64 [ %.sroa.23.0.ph268, %.lr.ph.split.us ], [ %.sroa.23.0230253, %_RNvNtNtNtCslpwjCj2YNBy_9polars_io3csv4read6parser15is_comment_line.exit ], [ %.sroa.23.0230253, %_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr8as_slice.exit.i ], !dbg !41143 ; 9 uses
  %.us-phi235 = phi ptr [ %.sroa.0.0.ph269, %.lr.ph.split.us ], [ %.sroa.0.0231252, %_RNvNtNtNtCslpwjCj2YNBy_9polars_io3csv4read6parser15is_comment_line.exit ], [ %.sroa.0.0231252, %_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr8as_slice.exit.i ], !dbg !41143 ; 6 uses
  br label %.outer322, !dbg !41144

.outer322:                                        ; preds = %.split319, %_RNvNtNtNtCslpwjCj2YNBy_9polars_io3csv4read6parser15is_comment_line.exit.thread
  %.sroa.039.1263.ph.pn = phi ptr [ %.sroa.039.1263.ph, %.split319 ], [ %7, %_RNvNtNtNtCslpwjCj2YNBy_9polars_io3csv4read6parser15is_comment_line.exit.thread ] ; 2 uses
  %.sroa.044.0262.ph = phi i64 [ %i.dn, %.split319 ], [ 0, %_RNvNtNtNtCslpwjCj2YNBy_9polars_io3csv4read6parser15is_comment_line.exit.thread ] ; 4 uses
  %.sroa.053.0261.ph = phi i64 [ %i.dc, %.split319 ], [ 0, %_RNvNtNtNtCslpwjCj2YNBy_9polars_io3csv4read6parser15is_comment_line.exit.thread ]
  %.sroa.0.0157259.ph = phi ptr [ %.sroa.0.1158.ph191198, %.split319 ], [ %.us-phi235, %_RNvNtNtNtCslpwjCj2YNBy_9polars_io3csv4read6parser15is_comment_line.exit.thread ]
  %.sroa.7.0258.ph = phi i64 [ %.sroa.7.1.ph189199, %.split319 ], [ %.us-phi, %_RNvNtNtNtCslpwjCj2YNBy_9polars_io3csv4read6parser15is_comment_line.exit.thread ]
  %.sroa.0.0165255.ph = phi i32 [ %i.es, %.split319 ], [ 0, %_RNvNtNtNtCslpwjCj2YNBy_9polars_io3csv4read6parser15is_comment_line.exit.thread ]
  %.sroa.085.0260.ph = load i64, ptr %.sroa.039.1263.ph.pn, align 8, !dbg !41145, !noundef !1150 ; 2 uses
  %.sroa.039.1263.ph = getelementptr inbounds nuw i8, ptr %.sroa.039.1263.ph.pn, i64 8 ; 2 uses
  %i.bb = trunc i64 %.sroa.085.0260.ph to i32
  br label %bb.f, !dbg !41146

bb.e:                                             ; preds = %_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr8as_slice.exit.i, %_RNvNtNtNtCslpwjCj2YNBy_9polars_io3csv4read6parser15is_comment_line.exit
  %i.bc = getelementptr inbounds nuw i8, ptr %.sroa.0.0231252, i64 %.sroa.23.0230253, !dbg !41147
  %i.bd = load atomic ptr, ptr @_RNvNvNtNtNtCslnrARR2vGZ9_6memchr4arch6x86_646memchr10memchr_raw2FN monotonic, align 8, !dbg !41148, !noalias !41041, !nonnull !1150, !noundef !1150
  %i.be = tail call { i64, ptr } %i.bd(i8 noundef %i.af, ptr noundef nonnull readonly %.sroa.0.0231252, ptr noundef nonnull readonly %i.bc), !dbg !41149, !noalias !41042, !inline_history !40821 ; 2 uses
  %i.bf = extractvalue { i64, ptr } %i.be, 0, !dbg !41150
  %i.bg = trunc nuw i64 %i.bf to i1, !dbg !41151
  br i1 %i.bg, label %_RNvNtNtNtCslpwjCj2YNBy_9polars_io3csv4read6parser24next_line_position_naive.exit, label %.split234.us, !dbg !41151

_RNvNtNtNtCslpwjCj2YNBy_9polars_io3csv4read6parser24next_line_position_naive.exit: ; preds = %bb.e
  %i.bh = extractvalue { i64, ptr } %i.be, 1, !dbg !41150
  %i.bi = tail call noundef i64 @_RNvXNtCslnrARR2vGZ9_6memchr3extPhNtB2_7Pointer8distanceCslpwjCj2YNBy_9polars_io(ptr noundef %i.bh, ptr noundef nonnull readonly %.sroa.0.0231252), !dbg !41152
  %i.bj = add i64 %i.bi, 1, !dbg !41153           ; 3 uses
  %.not.i.not = icmp eq i64 %.sroa.23.0230253, %i.bj, !dbg !41153
  %i.bk = sub nuw i64 %.sroa.23.0230253, %i.bj, !dbg !41154 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %.sroa.0.0231252, i64 %i.bj, !dbg !41154
  %.sroa.0.3 = select i1 %.not.i.not, ptr inttoptr (i64 1 to ptr), ptr %i.bl, !dbg !41154
  %i.bm = icmp eq i64 %i.bk, 0, !dbg !41131
  br i1 %i.bm, label %.split234.us, label %.lr.ph254, !dbg !41131

bb.f:                                             ; preds = %.outer322, %bb.u
  %.sroa.053.0261 = phi i64 [ %i.cr, %bb.u ], [ %.sroa.053.0261.ph, %.outer322 ] ; 3 uses
  %.sroa.0.0157259 = phi ptr [ %.sroa.0.1158.ph, %bb.u ], [ %.sroa.0.0157259.ph, %.outer322 ] ; 20 uses
  %.sroa.7.0258 = phi i64 [ %.sroa.7.1.ph, %bb.u ], [ %.sroa.7.0258.ph, %.outer322 ] ; 13 uses
  %.sroa.0.0165255 = phi i32 [ %i.da, %bb.u ], [ %.sroa.0.0165255.ph, %.outer322 ] ; 7 uses
  %i.bn = icmp eq i64 %.sroa.7.0258, 0, !dbg !41146
  br i1 %i.bn, label %.thread, label %bb.g, !dbg !41146

bb.g:                                             ; preds = %bb.f
  br i1 %i.al, label %bb.j, label %.lr.ph.i.i, !dbg !41155

.lr.ph.i.i:                                       ; preds = %bb.j, %bb.g
  %i.bo = getelementptr inbounds nuw i8, ptr %.sroa.0.0157259, i64 %.sroa.7.0258, !dbg !41156
  br label %bb.h, !dbg !41157

bb.h:                                             ; preds = %bb.i, %.lr.ph.i.i
  %.sroa.02.012.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %i.bt, %bb.i ] ; 5 uses
  %i.bp = phi ptr [ %.sroa.0.0157259, %.lr.ph.i.i ], [ %i.bs, %bb.i ] ; 2 uses
  %.val7.i.i = load i8, ptr %i.bp, align 1, !dbg !41158, !noalias !41043, !noundef !1150 ; 2 uses
  %i.bq = icmp eq i8 %.val7.i.i, %i.ai, !dbg !41159
  %i.br = icmp eq i8 %.val7.i.i, %i.af
  %or.cond.i.i = or i1 %i.bq, %i.br, !dbg !41159
  br i1 %or.cond.i.i, label %bb.k, label %bb.i, !dbg !41159

bb.i:                                             ; preds = %bb.h
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bp, i64 1, !dbg !41160 ; 2 uses
  %i.bt = add nuw i64 %.sroa.02.012.i.i, 1, !dbg !41161
  %i.bu = icmp eq ptr %i.bs, %i.bo, !dbg !41162
  br i1 %i.bu, label %.loopexit, label %bb.h, !dbg !41157

bb.j:                                             ; preds = %bb.g
  %i.bv = load i8, ptr %.sroa.0.0157259, align 1, !dbg !41163, !noalias !41044, !noundef !1150
  %i.bw = icmp eq i8 %i.bv, %i.an, !dbg !41164
  br i1 %i.bw, label %.lr.ph.i, label %.lr.ph.i.i, !dbg !41164

.lr.ph.i:                                         ; preds = %bb.j
  %i.bx = getelementptr inbounds nuw i8, ptr %.sroa.0.0157259, i64 %.sroa.7.0258, !dbg !41165
  br label %bb.m, !dbg !41166

bb.k:                                             ; preds = %bb.h
  %i.by = icmp ult i64 %.sroa.02.012.i.i, %.sroa.7.0258, !dbg !41167
  tail call void @llvm.assume(i1 %i.by), !dbg !41168
  %i.bz = getelementptr inbounds nuw i8, ptr %.sroa.0.0157259, i64 %.sroa.02.012.i.i, !dbg !41169
  %i.ca = load i8, ptr %i.bz, align 1, !dbg !41170, !noalias !41044, !noundef !1150
  %i.cb = icmp eq i8 %i.ca, %i.af, !dbg !41170
  br i1 %i.cb, label %.loopexit, label %bb.l, !dbg !41170

bb.l:                                             ; preds = %bb.s, %bb.k
  %.sroa.016.0.i = phi i64 [ %i.cp, %bb.s ], [ %.sroa.02.012.i.i, %bb.k ], !dbg !41171 ; 2 uses
  %.sroa.0.0.i114 = phi i1 [ true, %bb.s ], [ false, %bb.k ], !dbg !41172
  %i.cc = add nuw i64 %.sroa.016.0.i, 1, !dbg !41173 ; 2 uses
  %i.cd = sub nuw i64 %.sroa.7.0258, %i.cc, !dbg !41174
  %i.ce = getelementptr inbounds nuw i8, ptr %.sroa.0.0157259, i64 %i.cc, !dbg !41175
  br label %.loopexit, !dbg !41176

bb.m:                                             ; preds = %bb.o, %.lr.ph.i
  %.sroa.05.053.i = phi i8 [ 0, %.lr.ph.i ], [ %spec.select.i, %bb.o ] ; 2 uses
  %.sroa.09.052.i = phi i32 [ 0, %.lr.ph.i ], [ %i.cl, %bb.o ] ; 4 uses
  %.sroa.012.051.i = phi ptr [ %.sroa.0.0157259, %.lr.ph.i ], [ %i.cf, %bb.o ] ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %.sroa.012.051.i, i64 1, !dbg !41177 ; 2 uses
  %i.cg = load i8, ptr %.sroa.012.051.i, align 1, !dbg !41178, !noalias !41044, !noundef !1150 ; 3 uses
  %i.ch = icmp eq i8 %i.cg, %i.an, !dbg !41179
  %i.ci = zext i1 %i.ch to i8, !dbg !41179        ; 2 uses
  %spec.select.i = xor i8 %.sroa.05.053.i, %i.ci, !dbg !41179
  %.not.i115 = icmp eq i8 %.sroa.05.053.i, %i.ci, !dbg !41180
  br i1 %.not.i115, label %bb.n, label %bb.o, !dbg !41180

bb.n:                                             ; preds = %bb.m
  %i.cj = icmp eq i8 %i.cg, %i.ai, !dbg !41181
  %i.ck = icmp eq i8 %i.cg, %i.af                 ; 2 uses
  %or.cond.i = or i1 %i.cj, %i.ck, !dbg !41181
  br i1 %or.cond.i, label %bb.p, label %bb.o, !dbg !41181

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.cl = add nuw nsw i32 %.sroa.09.052.i, 1, !dbg !41182
  %i.cm = icmp eq ptr %i.cf, %i.bx, !dbg !41183
  br i1 %i.cm, label %.loopexit, label %bb.m, !dbg !41166

bb.p:                                             ; preds = %bb.n
  br i1 %i.ck, label %bb.q, label %bb.r, !dbg !41184

bb.q:                                             ; preds = %bb.p
  %i.cn = zext nneg i32 %.sroa.09.052.i to i64, !dbg !41185
  br label %.loopexit, !dbg !41186

bb.r:                                             ; preds = %bb.p
  %i.co = icmp eq i32 %.sroa.09.052.i, 0, !dbg !41187
  br i1 %i.co, label %.loopexit, label %bb.s, !dbg !41187

bb.s:                                             ; preds = %bb.r
  %i.cp = zext nneg i32 %.sroa.09.052.i to i64, !dbg !41188
  br label %bb.l, !dbg !41189

.loopexit:                                        ; preds = %bb.i, %bb.o, %bb.q, %bb.k, %bb.l, %bb.r
  %.sroa.18127.0.ph = phi i1 [ true, %bb.q ], [ true, %bb.r ], [ true, %bb.o ], [ %.sroa.0.0.i114, %bb.l ], [ false, %bb.k ], [ false, %bb.i ] ; 2 uses
  %.sroa.11.0.ph = phi i64 [ %i.cn, %bb.q ], [ %.sroa.7.0258, %bb.r ], [ %.sroa.7.0258, %bb.o ], [ %.sroa.016.0.i, %bb.l ], [ %.sroa.02.012.i.i, %bb.k ], [ %.sroa.7.0258, %bb.i ] ; 5 uses
  %.sroa.18.1.ph = phi i1 [ true, %bb.q ], [ true, %bb.r ], [ true, %bb.o ], [ false, %bb.l ], [ true, %bb.k ], [ true, %bb.i ] ; 3 uses
  %.sroa.7.1.ph = phi i64 [ %.sroa.7.0258, %bb.q ], [ %.sroa.7.0258, %bb.r ], [ %.sroa.7.0258, %bb.o ], [ %i.cd, %bb.l ], [ %.sroa.7.0258, %bb.k ], [ %.sroa.7.0258, %bb.i ] ; 3 uses
  %.sroa.0.1158.ph = phi ptr [ %.sroa.0.0157259, %bb.q ], [ %.sroa.0.0157259, %bb.r ], [ %.sroa.0.0157259, %bb.o ], [ %i.ce, %bb.l ], [ %.sroa.0.0157259, %bb.k ], [ %.sroa.0.0157259, %bb.i ] ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0157259) ]
  %i.cq = add i64 %.sroa.053.0261, 1, !dbg !41190
  %i.cr = add i64 %i.cq, %.sroa.11.0.ph, !dbg !41191 ; 4 uses
  %i.cs = icmp eq i32 %.sroa.0.0165255, %i.bb, !dbg !41192
  br i1 %i.cs, label %bb.t, label %bb.u, !dbg !41192

.thread:                                          ; preds = %bb.f
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0157259) ]
  %i.ct = add i64 %.sroa.053.0261, 1, !dbg !41191 ; 2 uses
  %i.cu = trunc i64 %.sroa.085.0260.ph to i32, !dbg !41193
  %i.cv = icmp eq i32 %.sroa.0.0165255, %i.cu, !dbg !41192
  br i1 %i.cv, label %.thread192, label %_RNvXs_NtNtNtNtCslpwjCj2YNBy_9polars_io3csv4read11splitfields5innerNtB4_11SplitFieldsNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit, !dbg !41192

_RNvXs_NtNtNtNtCslpwjCj2YNBy_9polars_io3csv4read11splitfields5innerNtB4_11SplitFieldsNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit: ; preds = %.thread, %.split319, %bb.u
  %.sroa.044.2318 = phi i64 [ %.sroa.044.0262.ph, %bb.u ], [ %.sroa.044.0262.ph, %.thread ], [ %i.dn, %.split319 ]
  %i.cw = phi i64 [ %i.cr, %bb.u ], [ %i.ct, %.thread ], [ %i.dc, %.split319 ]
  %.sroa.0.0.i116 = tail call noundef i64 @llvm.umin.i64(i64 %.us-phi, i64 %i.cw), !dbg !41194 ; 2 uses
  %i.cx = sub nuw i64 %.us-phi, %.sroa.0.0.i116, !dbg !41195
  %i.cy = getelementptr inbounds nuw i8, ptr %.us-phi235, i64 %.sroa.0.0.i116, !dbg !41196
  br label %_RNvNtNtNtCslpwjCj2YNBy_9polars_io3csv4read6parser14skip_this_line.exit, !dbg !41197

_RNvNtNtNtCslpwjCj2YNBy_9polars_io3csv4read6parser14skip_this_line.exit: ; preds = %bb.bd, %bb.ba, %bb.bf, %bb.bc, %bb.az, %bb.ax, %_RNvXs_NtNtNtNtCslpwjCj2YNBy_9polars_io3csv4read11splitfields5innerNtB4_11SplitFieldsNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit
  %.sroa.044.1 = phi i64 [ %.sroa.044.2318, %_RNvXs_NtNtNtNtCslpwjCj2YNBy_9polars_io3csv4read11splitfields5innerNtB4_11SplitFieldsNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit ], [ %i.dn, %bb.ax ], [ %i.dn, %bb.az ], [ %i.dn, %bb.bf ], [ %i.dn, %bb.bc ], [ %i.dn, %bb.ba ], [ %i.dn, %bb.bd ], !dbg !41198 ; 2 uses
  %.sroa.23.1 = phi i64 [ %i.cx, %_RNvXs_NtNtNtNtCslpwjCj2YNBy_9polars_io3csv4read11splitfields5innerNtB4_11SplitFieldsNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit ], [ %i.ez, %bb.ax ], [ 0, %bb.az ], [ %i.fv, %bb.bf ], [ 0, %bb.bc ], [ 0, %bb.ba ], [ 0, %bb.bd ], !dbg !41199
  %.sroa.0.1 = phi ptr [ %i.cy, %_RNvXs_NtNtNtNtCslpwjCj2YNBy_9polars_io3csv4read11splitfields5innerNtB4_11SplitFieldsNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit ], [ %i.fa, %bb.ax ], [ inttoptr (i64 1 to ptr), %bb.az ], [ %i.fw, %bb.bf ], [ inttoptr (i64 1 to ptr), %bb.bc ], [ inttoptr (i64 1 to ptr), %bb.ba ], [ inttoptr (i64 1 to ptr), %bb.bd ], !dbg !41199 ; 2 uses
  %i.cz = icmp ult i64 %.sroa.044.1, %8, !dbg !41200
  br i1 %i.cz, label %.lr.ph265, label %.outer, !dbg !41200

bb.t:                                             ; preds = %.loopexit
  %.not107 = icmp eq i64 %.sroa.11.0.ph, 0, !dbg !41201
  br i1 %.not107, label %.thread192, label %bb.v, !dbg !41201

bb.u:                                             ; preds = %.loopexit
  %i.da = add i32 %.sroa.0.0165255, 1, !dbg !41202
  br i1 %.sroa.18.1.ph, label %_RNvXs_NtNtNtNtCslpwjCj2YNBy_9polars_io3csv4read11splitfields5innerNtB4_11SplitFieldsNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit, label %bb.f, !dbg !41144

.thread192:                                       ; preds = %.thread, %bb.v, %bb.t
  %.sroa.11.0.ph185201 = phi i64 [ 0, %bb.t ], [ %.sroa.11.0.ph, %bb.v ], [ 0, %.thread ]
  %.sroa.18.1.ph187200 = phi i1 [ %.sroa.18.1.ph, %bb.t ], [ %.sroa.18.1.ph, %bb.v ], [ true, %.thread ]
  %.sroa.7.1.ph189199 = phi i64 [ %.sroa.7.1.ph, %bb.t ], [ %.sroa.7.1.ph, %bb.v ], [ 0, %.thread ]
  %.sroa.0.1158.ph191198 = phi ptr [ %.sroa.0.1158.ph, %bb.t ], [ %.sroa.0.1158.ph, %bb.v ], [ %.sroa.0.0157259, %.thread ]
  %i.db = phi i1 [ %.sroa.18127.0.ph, %bb.t ], [ %.sroa.18127.0.ph, %bb.v ], [ false, %.thread ] ; 2 uses
  %i.dc = phi i64 [ %i.cr, %bb.t ], [ %i.cr, %bb.v ], [ %i.ct, %.thread ] ; 5 uses
  %.sroa.12.0 = phi i64 [ 0, %bb.t ], [ %spec.select, %bb.v ], [ 0, %.thread ], !dbg !41053 ; 5 uses
  %i.dd = getelementptr inbounds nuw [304 x i8], ptr %9, i64 %.sroa.044.0262.ph, !dbg !41203 ; 3 uses
  br i1 %.not108, label %bb.x, label %bb.w, !dbg !41204

bb.v:                                             ; preds = %bb.t
  %i.de = add i64 %.sroa.11.0.ph, -1, !dbg !41205 ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %.sroa.0.0157259, i64 %i.de, !dbg !41206
  %i.dg = load i8, ptr %i.df, align 1, !dbg !41207, !noundef !1150
  %i.dh = icmp eq i8 %i.dg, 13, !dbg !41207
  %spec.select = select i1 %i.dh, i64 %i.de, i64 %.sroa.11.0.ph, !dbg !41207
  br label %.thread192, !dbg !41207

bb.w:                                             ; preds = %.thread192
  %.not110 = xor i1 %i.db, true, !dbg !41208
  %i.di = icmp eq i64 %.sroa.12.0, 0              ; 2 uses
  %or.cond = or i1 %i.di, %.not110, !dbg !41208   ; 2 uses
  %i.dj = add i64 %.sroa.12.0, -2, !dbg !41208
  %.sroa.380.0 = select i1 %or.cond, i64 %.sroa.12.0, i64 %i.dj, !dbg !41208
  %not.or.cond = xor i1 %or.cond, true, !dbg !41208
  %.sroa.079.0.idx = zext i1 %not.or.cond to i64, !dbg !41208
  %.sroa.079.0 = getelementptr inbounds nuw i8, ptr %.sroa.0.0157259, i64 %.sroa.079.0.idx, !dbg !41208
  %i.dk = zext i32 %.sroa.0.0165255 to i64, !dbg !41209
  %i.dl = tail call noundef zeroext i1 @_RNvMs5_NtNtNtCslpwjCj2YNBy_9polars_io3csv4read7optionsNtB5_18NullValuesCompiled7is_null(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %6, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.sroa.079.0, i64 noundef %.sroa.380.0, i64 noundef %i.dk), !dbg !41210
  br i1 %i.dl, label %bb.y, label %bb.x, !dbg !41211

bb.x:                                             ; preds = %.thread192, %bb.w
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !dbg !41212
  call fastcc void @_RNvMsk_NtNtNtCslpwjCj2YNBy_9polars_io3csv4read7builderNtB5_7Builder3add(ptr noalias noundef align 8 captures(address) dereferenceable(72) %i.n, ptr noalias noundef align 16 dereferenceable(304) %i.dd, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.sroa.0.0157259, i64 noundef %.sroa.12.0, i1 noundef zeroext %5, i1 noundef zeroext %i.db, i1 noundef zeroext %i.aq) #46, !dbg !41213
  %i.dm = load i64, ptr %i.n, align 8, !dbg !41214, !range !1265, !noundef !1150
  %.not109 = icmp eq i64 %i.dm, 18, !dbg !41214
  br i1 %.not109, label %bb.at, label %bb.aa, !dbg !41215

bb.y:                                             ; preds = %bb.w
  %.sroa.082.0 = and i1 %i.di, %not., !dbg !41216
  tail call void @_RNvMsk_NtNtNtCslpwjCj2YNBy_9polars_io3csv4read7builderNtB5_7Builder8add_null(ptr noalias noundef nonnull align 16 dereferenceable(304) %i.dd, i1 noundef zeroext %.sroa.082.0), !dbg !41217
  br label %bb.z, !dbg !41218

bb.z:                                             ; preds = %bb.at, %bb.y
  %i.dn = add i64 %.sroa.044.0262.ph, 1, !dbg !41219 ; 8 uses
  %i.do = icmp eq ptr %.sroa.039.1263.ph, %i.ag, !dbg !41220
  br i1 %i.do, label %bb.au, label %.split319, !dbg !41221

bb.aa:                                            ; preds = %bb.x
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !dbg !41222
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.k, ptr noundef nonnull align 8 dereferenceable(72) %i.n, i64 72, i1 false), !dbg !41223
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4137), !dbg !41222
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !41224
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !dbg !41224, !noalias !41066
  %i.dp = ptrtoint ptr %.sroa.0.0157259 to i64, !dbg !41225
  %i.dq = sub i64 %4, %i.r, !dbg !41226
  %i.dr = add i64 %i.dq, %i.dp, !dbg !41226
  store i64 %i.dr, ptr %i.j, align 8, !dbg !41226, !noalias !41066
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !dbg !41227, !noalias !41066
  invoke void @_RNvMNtCsgZ49sUHp3tW_5alloc6stringNtB2_6String15from_utf8_lossy(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.i, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.sroa.0.0157259, i64 noundef %.sroa.12.0)
          to label %bb.ac unwind label %bb.ab, !dbg !41228, !noalias !41066

.body.i:                                          ; preds = %bb.ao, %bb.an, %bb.af, %bb.ab
  %.pn32.i = phi { ptr, i32 } [ %.pn.i, %bb.af ], [ %i.ds, %bb.ab ], [ %i.em, %bb.ao ], [ %i.em, %bb.an ]
  invoke void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtCsgjwxzEoLG5s_12polars_error11PolarsErrorECslpwjCj2YNBy_9polars_io(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.k) #40
          to label %bb.as unwind label %bb.ar, !dbg !41229, !noalias !41067

bb.ab:                                            ; preds = %bb.aa
  %i.ds = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

bb.ac:                                            ; preds = %bb.aa
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !dbg !41230, !noalias !41066
  %i.dt = zext i32 %.sroa.0.0165255 to i64, !dbg !41231 ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %13, i64 16, !dbg !41232
  %i.dv = load i64, ptr %i.du, align 8, !dbg !41232, !noalias !41066, !noundef !1150
  %i.dw = icmp ugt i64 %i.dv, %i.dt, !dbg !41233
  br i1 %i.dw, label %bb.ae, label %bb.ad, !dbg !41233, !prof !1264

bb.ad:                                            ; preds = %bb.ac
  invoke void @_RNvNtCscgRAwXFJnXP_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @56) #41
          to label %bb.ah unwind label %bb.ag, !dbg !41234, !noalias !41066

bb.ae:                                            ; preds = %bb.ac
  %i.dx = getelementptr inbounds nuw i8, ptr %13, i64 8, !dbg !41235
  %i.dy = load ptr, ptr %i.dx, align 8, !dbg !41235, !noalias !41066, !nonnull !1150, !noundef !1150
  %i.dz = getelementptr inbounds nuw [80 x i8], ptr %i.dy, i64 %i.dt, !dbg !41236
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 48, !dbg !41237
  store ptr %i.ea, ptr %i.h, align 8, !dbg !41238, !noalias !41066
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !dbg !41239, !noalias !41066
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !41240, !noalias !41066
  store ptr %i.i, ptr %i.e, align 8, !dbg !41240, !noalias !41066
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !41241, !noalias !41066
  invoke void @_RNvMsk_NtNtNtCslpwjCj2YNBy_9polars_io3csv4read7builderNtB5_7Builder5dtype(ptr noalias noundef nonnull sret([48 x i8]) align 16 captures(address) dereferenceable(48) %i.d, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(304) %i.dd)
          to label %bb.ai unwind label %bb.ag, !dbg !41242, !noalias !41066

bb.af:                                            ; preds = %bb.aj, %bb.ag
  %.pn.i = phi { ptr, i32 } [ %i.eb, %bb.ag ], [ %i.ej, %bb.aj ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CoweEECslpwjCj2YNBy_9polars_io(ptr noalias noundef align 8 dereferenceable(24) %i.i) #40
          to label %.body.i unwind label %bb.ar, !dbg !41243, !noalias !41067

bb.ag:                                            ; preds = %bb.ak, %_RINvMNtCscgRAwXFJnXP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsgZ49sUHp3tW_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECslpwjCj2YNBy_9polars_io.exit.i, %bb.ae, %bb.ad
  %i.eb = landingpad { ptr, i32 }
          cleanup
  br label %bb.af

bb.ah:                                            ; preds = %bb.ad
  unreachable

bb.ai:                                            ; preds = %bb.ae
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !41244, !noalias !41066
  %i.ec = add i32 %.sroa.0.0165255, 1, !dbg !41244
  store i32 %i.ec, ptr %i.c, align 4, !dbg !41244, !noalias !41066
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !41245, !noalias !41066
  store ptr %i.i, ptr %i.b, align 8, !dbg !41245, !noalias !41066
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !41246, !noalias !41066
  store ptr %i.e, ptr %i.a, align 8, !dbg !41246, !noalias !41066
  %.sroa.44.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !41246
  store ptr @_RNvXs1i_NtCscgRAwXFJnXP_4core3fmtRINtNtCsgZ49sUHp3tW_5alloc6borrow3CoweENtB6_7Display3fmtCslpwjCj2YNBy_9polars_io, ptr %.sroa.44.0..sroa_idx.i, align 8, !dbg !41246, !noalias !41066
  %i.ed = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !41246
  store ptr %i.d, ptr %i.ed, align 8, !dbg !41246, !noalias !41066
  %.sroa.48.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24, !dbg !41246
  store ptr @_RNvXs5_NtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtypeNtB5_8DataTypeNtNtCscgRAwXFJnXP_4core3fmt7Display3fmt, ptr %.sroa.48.0..sroa_idx.i, align 8, !dbg !41246, !noalias !41066
  %i.ee = getelementptr inbounds nuw i8, ptr %i.a, i64 32, !dbg !41246
  store ptr %i.h, ptr %i.ee, align 8, !dbg !41246, !noalias !41066
  %.sroa.412.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 40, !dbg !41246
  store ptr @_RNvXs1i_NtCscgRAwXFJnXP_4core3fmtRNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNtB6_7Display3fmtCslpwjCj2YNBy_9polars_io, ptr %.sroa.412.0..sroa_idx.i, align 8, !dbg !41246, !noalias !41066
  %i.ef = getelementptr inbounds nuw i8, ptr %i.a, i64 48, !dbg !41246
  store ptr %i.c, ptr %i.ef, align 8, !dbg !41246, !noalias !41066
  %.sroa.416.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 56, !dbg !41246
  store ptr @_RNvXs8_NtNtNtCscgRAwXFJnXP_4core3fmt3num3impmNtB9_7Display3fmt, ptr %.sroa.416.0..sroa_idx.i, align 8, !dbg !41246, !noalias !41066
  %i.eg = getelementptr inbounds nuw i8, ptr %i.a, i64 64, !dbg !41246
  store ptr %i.j, ptr %i.eg, align 8, !dbg !41246, !noalias !41066
  %.sroa.420.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 72, !dbg !41246
  store ptr @_RNvXsi_NtNtNtCscgRAwXFJnXP_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.420.0..sroa_idx.i, align 8, !dbg !41246, !noalias !41066
  %i.eh = getelementptr inbounds nuw i8, ptr %i.a, i64 80, !dbg !41246
  store ptr %i.b, ptr %i.eh, align 8, !dbg !41246, !noalias !41066
  %.sroa.424.0..sroa_idx.i117 = getelementptr inbounds nuw i8, ptr %i.a, i64 88, !dbg !41246
  store ptr @_RNvXs1i_NtCscgRAwXFJnXP_4core3fmtRINtNtCsgZ49sUHp3tW_5alloc6borrow3CoweENtB6_7Display3fmtCslpwjCj2YNBy_9polars_io, ptr %.sroa.424.0..sroa_idx.i117, align 8, !dbg !41246, !noalias !41066
  %i.ei = getelementptr inbounds nuw i8, ptr %i.a, i64 96, !dbg !41246
  store ptr %i.k, ptr %i.ei, align 8, !dbg !41246, !noalias !41066
  %.sroa.428.0..sroa_idx.i118 = getelementptr inbounds nuw i8, ptr %i.a, i64 104, !dbg !41246
  store ptr @_RNvXs4_CsgjwxzEoLG5s_12polars_errorNtB5_11PolarsErrorNtNtCscgRAwXFJnXP_4core3fmt7Display3fmt, ptr %.sroa.428.0..sroa_idx.i118, align 8, !dbg !41246, !noalias !41066
  invoke void @_RNvNvNtCsgZ49sUHp3tW_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.f, ptr noundef nonnull @57, ptr noundef nonnull %i.a)
          to label %_RINvMNtCscgRAwXFJnXP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsgZ49sUHp3tW_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECslpwjCj2YNBy_9polars_io.exit.i unwind label %bb.aj, !dbg !41247, !noalias !41067

bb.aj:                                            ; preds = %bb.ai
  %i.ej = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeECslpwjCj2YNBy_9polars_io(ptr noalias noundef align 16 dereferenceable(48) %i.d) #40
          to label %bb.af unwind label %bb.ar, !dbg !41239, !noalias !41067

_RINvMNtCscgRAwXFJnXP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsgZ49sUHp3tW_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECslpwjCj2YNBy_9polars_io.exit.i: ; preds = %bb.ai
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !41239, !noalias !41066
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !41239, !noalias !41066
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !41239, !noalias !41066
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeECslpwjCj2YNBy_9polars_io(ptr noalias noundef align 16 dereferenceable(48) %i.d)
          to label %bb.ak unwind label %bb.ag, !dbg !41239, !noalias !41067

bb.ak:                                            ; preds = %_RINvMNtCscgRAwXFJnXP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsgZ49sUHp3tW_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECslpwjCj2YNBy_9polars_io.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !41239, !noalias !41066
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !41239, !noalias !41066
  invoke void @_RNvXs_CsgjwxzEoLG5s_12polars_errorNtB4_9ErrStringINtNtCscgRAwXFJnXP_4core7convert4FromNtNtCsgZ49sUHp3tW_5alloc6string6StringE4fromCslpwjCj2YNBy_9polars_io(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.g, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.f, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @58)
          to label %bb.al unwind label %bb.ag, !dbg !41248, !noalias !41067

bb.al:                                            ; preds = %bb.ak
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4137, ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 24, i1 false), !dbg !41239, !noalias !41082
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !41239, !noalias !41066
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !dbg !41249, !noalias !41066
  %i.ek = load i64, ptr %i.i, align 8, !dbg !41250, !range !1273, !alias.scope !41083, !noalias !41066, !noundef !1150
  %i.el = icmp eq i64 %i.ek, -9223372036854775808, !dbg !41250
  br i1 %i.el, label %_RNCNvNtNtNtCslpwjCj2YNBy_9polars_io3csv4read6parser11parse_lines0B9_.exit, label %bb.am, !dbg !41250

bb.am:                                            ; preds = %bb.al
  invoke void @_RNvXso_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCslpwjCj2YNBy_9polars_io(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %bb.ap unwind label %bb.an, !dbg !41251, !noalias !41067

bb.an:                                            ; preds = %bb.am
  %i.em = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val2.i.i.i.i = load i64, ptr %i.i, align 8, !dbg !41251, !alias.scope !41084, !noalias !41066 ; 2 uses
  %i.en = icmp eq i64 %.val2.i.i.i.i, 0
  br i1 %i.en, label %.body.i, label %bb.ao, !dbg !41252

bb.ao:                                            ; preds = %bb.an
  %i.eo = getelementptr inbounds nuw i8, ptr %i.i, i64 8, !dbg !41251
  %.val3.i.i.i.i = load ptr, ptr %i.eo, align 8, !dbg !41251, !alias.scope !41085, !noalias !41066, !nonnull !1150, !noundef !1150
  call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i.i.i, i64 noundef %.val2.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #43, !dbg !41253, !noalias !41086
  br label %.body.i, !dbg !41254

bb.ap:                                            ; preds = %bb.am
  %.val.i.i.i.i = load i64, ptr %i.i, align 8, !dbg !41251, !alias.scope !41084, !noalias !41066 ; 2 uses
  %i.ep = icmp eq i64 %.val.i.i.i.i, 0
  br i1 %i.ep, label %_RNCNvNtNtNtCslpwjCj2YNBy_9polars_io3csv4read6parser11parse_lines0B9_.exit, label %bb.aq, !dbg !41255

bb.aq:                                            ; preds = %bb.ap
  %i.eq = getelementptr inbounds nuw i8, ptr %i.i, i64 8, !dbg !41251
  %.val1.i.i.i.i = load ptr, ptr %i.eq, align 8, !dbg !41251, !alias.scope !41085, !noalias !41066, !nonnull !1150, !noundef !1150
  call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i, i64 noundef %.val.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #43, !dbg !41256, !noalias !41087
  br label %_RNCNvNtNtNtCslpwjCj2YNBy_9polars_io3csv4read6parser11parse_lines0B9_.exit, !dbg !41257

bb.ar:                                            ; preds = %bb.aj, %bb.af, %.body.i
  %i.er = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #42, !dbg !41258, !noalias !41067
  unreachable, !dbg !41258

bb.as:                                            ; preds = %.body.i
  resume { ptr, i32 } %.pn32.i, !dbg !41258

_RNCNvNtNtNtCslpwjCj2YNBy_9polars_io3csv4read6parser11parse_lines0B9_.exit: ; preds = %bb.al, %bb.ap, %bb.aq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !dbg !41243, !noalias !41066
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !dbg !41229, !noalias !41066
  call void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtCsgjwxzEoLG5s_12polars_error11PolarsErrorECslpwjCj2YNBy_9polars_io(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.k), !dbg !41229, !noalias !41067
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !41259
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !dbg !41260
  %.sroa.2155.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !41261
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.2155.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4137, i64 24, i1 false), !dbg !41262
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4137), !dbg !41263
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !dbg !41264
  br label %bb.d, !dbg !41265

bb.at:                                            ; preds = %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !dbg !41264
  br label %bb.z, !dbg !41218

.split319:                                        ; preds = %bb.z
  %i.es = add i32 %.sroa.0.0165255, 1, !dbg !41202
  br i1 %.sroa.18.1.ph187200, label %_RNvXs_NtNtNtNtCslpwjCj2YNBy_9polars_io3csv4read11splitfields5innerNtB4_11SplitFieldsNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit, label %.outer322, !dbg !41144

bb.au:                                            ; preds = %bb.z
  %i.et = add i64 %.sroa.11.0.ph185201, %.sroa.053.0261, !dbg !41266 ; 5 uses
  %i.eu = icmp ult i64 %i.et, %.us-phi, !dbg !41267
  br i1 %i.eu, label %bb.av, label %bb.aw, !dbg !41267

bb.av:                                            ; preds = %bb.au
  %i.ev = getelementptr inbounds nuw i8, ptr %.us-phi235, i64 %i.et, !dbg !41268
  %i.ew = load i8, ptr %i.ev, align 1, !dbg !41269, !noundef !1150
  %i.ex = icmp eq i8 %i.ew, %i.af, !dbg !41269
  br i1 %i.ex, label %bb.ax, label %bb.aw, !dbg !41093

bb.aw:                                            ; preds = %bb.au, %bb.av
  %i.ey = icmp uge i64 %i.dc, %.us-phi
  %or.cond112.not = select i1 %i.as, i1 true, i1 %i.ey, !dbg !41270, !prof !41096
  br i1 %or.cond112.not, label %bb.ay, label %.split, !dbg !41270, !prof !41096

bb.ax:                                            ; preds = %bb.av
  %i.ez = sub nuw i64 %.us-phi, %i.dc, !dbg !41271
  %i.fa = getelementptr inbounds nuw i8, ptr %.us-phi235, i64 %i.dc, !dbg !41272
  br label %_RNvNtNtNtCslpwjCj2YNBy_9polars_io3csv4read6parser14skip_this_line.exit, !dbg !41273

bb.ay:                                            ; preds = %bb.aw
  %i.fb = sub nuw i64 %.us-phi, %i.et, !dbg !41274 ; 5 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %.us-phi235, i64 %i.et, !dbg !41275 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !41111), !dbg !41276
  %i.fd = getelementptr inbounds nuw i8, ptr %.us-phi235, i64 %.us-phi, !dbg !41277 ; 2 uses
  %i.fe = icmp eq i64 %.us-phi, %i.et, !dbg !41277 ; 2 uses
  br i1 %i.al, label %bb.az, label %bb.bc, !dbg !41278

bb.az:                                            ; preds = %bb.ay
  br i1 %i.fe, label %_RNvNtNtNtCslpwjCj2YNBy_9polars_io3csv4read6parser14skip_this_line.exit, label %.lr.ph.i.i123, !dbg !41279

.lr.ph.i.i123:                                    ; preds = %bb.az, %bb.ba
  %.sroa.01.012.i.i = phi i8 [ %spec.select.i.i, %bb.ba ], [ 0, %bb.az ] ; 2 uses
  %.sroa.03.011.i.i = phi i32 [ %i.fl, %bb.ba ], [ 0, %bb.az ] ; 2 uses
  %.sroa.05.010.i.i = phi ptr [ %i.fk, %bb.ba ], [ %i.fc, %bb.az ] ; 2 uses
  %i.ff = load i8, ptr %.sroa.05.010.i.i, align 1, !dbg !41280, !alias.scope !41113, !noundef !1150 ; 2 uses
  %i.fg = icmp eq i8 %i.ff, %i.an, !dbg !41281
  %i.fh = zext i1 %i.fg to i8, !dbg !41281        ; 2 uses
  %i.fi = icmp ne i8 %.sroa.01.012.i.i, %i.fh, !dbg !41282
  %i.fj = icmp ne i8 %i.ff, %i.af
  %or.cond.not.i.i = or i1 %i.fj, %i.fi, !dbg !41282
  br i1 %or.cond.not.i.i, label %bb.ba, label %bb.bb, !dbg !41282

bb.ba:                                            ; preds = %.lr.ph.i.i123
  %spec.select.i.i = xor i8 %.sroa.01.012.i.i, %i.fh, !dbg !41281
  %i.fk = getelementptr inbounds nuw i8, ptr %.sroa.05.010.i.i, i64 1, !dbg !41283 ; 2 uses
  %i.fl = add nuw nsw i32 %.sroa.03.011.i.i, 1, !dbg !41284
  %i.fm = icmp eq ptr %i.fk, %i.fd, !dbg !41285
  br i1 %i.fm, label %_RNvNtNtNtCslpwjCj2YNBy_9polars_io3csv4read6parser14skip_this_line.exit, label %.lr.ph.i.i123, !dbg !41279

bb.bb:                                            ; preds = %.lr.ph.i.i123
  %i.fn = zext nneg i32 %.sroa.03.011.i.i to i64, !dbg !41286
  br label %_RNvNtNtNtCslpwjCj2YNBy_9polars_io3csv4read6parser11find_quoted.exit.i, !dbg !41287

bb.bc:                                            ; preds = %bb.ay
  br i1 %i.fe, label %_RNvNtNtNtCslpwjCj2YNBy_9polars_io3csv4read6parser14skip_this_line.exit, label %.lr.ph.i8.i, !dbg !41288

.lr.ph.i8.i:                                      ; preds = %bb.bc, %bb.bd
  %.sroa.02.09.i.i = phi i64 [ %i.fr, %bb.bd ], [ 0, %bb.bc ] ; 3 uses
  %i.fo = phi ptr [ %i.fq, %bb.bd ], [ %i.fc, %bb.bc ] ; 2 uses
  %.val7.i.i120 = load i8, ptr %i.fo, align 1, !dbg !41289, !alias.scope !41111, !noalias !41114, !noundef !1150
  %i.fp = icmp eq i8 %.val7.i.i120, %i.af, !dbg !41290
  br i1 %i.fp, label %bb.be, label %bb.bd, !dbg !41289

bb.bd:                                            ; preds = %.lr.ph.i8.i
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fo, i64 1, !dbg !41291 ; 2 uses
  %i.fr = add nuw nsw i64 %.sroa.02.09.i.i, 1, !dbg !41292
  %i.fs = icmp eq ptr %i.fq, %i.fd, !dbg !41293
  br i1 %i.fs, label %_RNvNtNtNtCslpwjCj2YNBy_9polars_io3csv4read6parser14skip_this_line.exit, label %.lr.ph.i8.i, !dbg !41288

bb.be:                                            ; preds = %.lr.ph.i8.i
  %i.ft = icmp samesign ult i64 %.sroa.02.09.i.i, %i.fb, !dbg !41294
  tail call void @llvm.assume(i1 %i.ft), !dbg !41295
  br label %_RNvNtNtNtCslpwjCj2YNBy_9polars_io3csv4read6parser11find_quoted.exit.i, !dbg !41296

_RNvNtNtNtCslpwjCj2YNBy_9polars_io3csv4read6parser11find_quoted.exit.i: ; preds = %bb.be, %bb.bb
  %.sroa.3.0.i.pn.i = phi i64 [ %.sroa.02.09.i.i, %bb.be ], [ %i.fn, %bb.bb ] ; 2 uses
  %i.fu = add nuw nsw i64 %.sroa.3.0.i.pn.i, 1, !dbg !41297 ; 3 uses
  %.not.i122 = icmp samesign ult i64 %.sroa.3.0.i.pn.i, %i.fb, !dbg !41298
  br i1 %.not.i122, label %bb.bf, label %bb.bg, !dbg !41298, !prof !1264

bb.bf:                                            ; preds = %_RNvNtNtNtCslpwjCj2YNBy_9polars_io3csv4read6parser11find_quoted.exit.i
  %i.fv = sub nuw nsw i64 %i.fb, %i.fu, !dbg !41299
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fc, i64 %i.fu, !dbg !41300
  br label %_RNvNtNtNtCslpwjCj2YNBy_9polars_io3csv4read6parser14skip_this_line.exit, !dbg !41301

bb.bg:                                            ; preds = %_RNvNtNtNtCslpwjCj2YNBy_9polars_io3csv4read6parser11find_quoted.exit.i
  tail call void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef %i.fu, i64 noundef range(i64 0, -9223372036854775808) %i.fb, i64 noundef range(i64 0, -9223372036854775808) %i.fb, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @119) #45, !dbg !41302, !noalias !41111
  unreachable, !dbg !41302

.split:                                           ; preds = %bb.aw
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !dbg !41303
  store ptr @_RNvNtCsgjwxzEoLG5s_12polars_error9constants4TRUE, ptr %i.l, align 8, !dbg !41303
  %.sroa.495.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 8, !dbg !41303
  store ptr @_RNvXs1i_NtCscgRAwXFJnXP_4core3fmtReNtB6_7Display3fmtCslpwjCj2YNBy_9polars_io, ptr %.sroa.495.0..sroa_idx, align 8, !dbg !41303
  call void @_RNvNvNtCsgZ49sUHp3tW_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.m, ptr noundef nonnull @117, ptr noundef nonnull %i.l), !dbg !41304
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !dbg !41305
  %.sroa.4133.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !41305
  call void @_RNvXs_CsgjwxzEoLG5s_12polars_errorNtB4_9ErrStringINtNtCscgRAwXFJnXP_4core7convert4FromNtNtCsgZ49sUHp3tW_5alloc6string6StringE4fromCslpwjCj2YNBy_9polars_io(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %.sroa.4133.0..sroa_idx, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.m, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @118), !dbg !41306
  br label %bb.d, !dbg !41265

.outer:                                           ; preds = %.lr.ph265, %_RNvNtNtNtCslpwjCj2YNBy_9polars_io3csv4read6parser14skip_this_line.exit
  %i.fx = add i32 %.sroa.036.0.ph267, 1, !dbg !41307 ; 2 uses
  %i.fy = icmp ugt i32 %i.fx, %i.s
  br i1 %i.fy, label %.outer._crit_edge, label %.lr.ph, !dbg !41130

.lr.ph265:                                        ; preds = %_RNvNtNtNtCslpwjCj2YNBy_9polars_io3csv4read6parser14skip_this_line.exit, %.lr.ph265
  %.sroa.044.3264 = phi i64 [ %i.ga, %.lr.ph265 ], [ %.sroa.044.1, %_RNvNtNtNtCslpwjCj2YNBy_9polars_io3csv4read6parser14skip_this_line.exit ] ; 2 uses
  %i.fz = getelementptr inbounds nuw [304 x i8], ptr %9, i64 %.sroa.044.3264, !dbg !41308
  tail call void @_RNvMsk_NtNtNtCslpwjCj2YNBy_9polars_io3csv4read7builderNtB5_7Builder8add_null(ptr noalias noundef nonnull align 16 dereferenceable(304) %i.fz, i1 noundef zeroext %not.), !dbg !41309
  %i.ga = add i64 %.sroa.044.3264, 1, !dbg !41310 ; 2 uses
  %exitcond.not = icmp eq i64 %i.ga, %8, !dbg !41200
  br i1 %exitcond.not, label %.outer, label %.lr.ph265, !dbg !41200
}

; Function Attrs: nonlazybind uwtable
define hidden { i64, i64 } @_RNvNtNtNtCslpwjCj2YNBy_9polars_io3csv4read6parser18next_line_position(ptr noalias noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef range(i64 0, -9223372036854775808) %1, i64 noundef range(i64 0, 2) %2, i64 %3, i8 noundef %4, i1 noundef zeroext %5, i8 %6, i8 noundef %7) unnamed_addr #3 personality ptr @rust_eh_personality !dbg !41311 {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 6 uses
  %i.b = alloca [40 x i8], align 8                ; 12 uses
  %i.c = zext i1 %5 to i8
  %i.d = icmp eq i64 %1, 0, !dbg !41370
  br i1 %i.d, label %_RINvNtNtNtCslnrARR2vGZ9_6memchr4arch7generic6memchr21search_slice_with_rawNCNvNtB8_6memchr6memchr0ECslpwjCj2YNBy_9polars_io.exit, label %.preheader, !dbg !41370

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
  br label %bb.b, !dbg !41371

_RINvNtNtNtCslnrARR2vGZ9_6memchr4arch7generic6memchr21search_slice_with_rawNCNvNtB8_6memchr6memchr0ECslpwjCj2YNBy_9polars_io.exit: ; preds = %bb.b, %bb.c, %bb.j, %bb.a, %.loopexit
  %.sroa.823.0 = phi i64 [ %.sroa.823.1, %.loopexit ], [ undef, %bb.a ], [ undef, %bb.j ], [ undef, %bb.c ], [ undef, %bb.b ], !dbg !41372
  %.sroa.022.0 = phi i64 [ %.sroa.022.1, %.loopexit ], [ 0, %bb.a ], [ 0, %bb.j ], [ 0, %bb.c ], [ 0, %bb.b ], !dbg !41372
  %i.l = insertvalue { i64, i64 } poison, i64 %.sroa.022.0, 0, !dbg !41373
  %i.m = insertvalue { i64, i64 } %i.l, i64 %.sroa.823.0, 1, !dbg !41373
  ret { i64, i64 } %i.m, !dbg !41373

bb.b:                                             ; preds = %.preheader, %bb.j
  %.sroa.0.065 = phi ptr [ %0, %.preheader ], [ %.sroa.0.1, %bb.j ] ; 6 uses
  %.sroa.8.064 = phi i64 [ %1, %.preheader ], [ %.sroa.8.1, %bb.j ] ; 5 uses
  %.sroa.011.063 = phi i1 [ %i.k, %.preheader ], [ true, %bb.j ] ; 2 uses
  %.sroa.4.062 = phi i64 [ %3, %.preheader ], [ %.sroa.4.1, %bb.j ] ; 2 uses
  %.sroa.024.061 = phi i8 [ 0, %.preheader ], [ %.sroa.024.1, %bb.j ] ; 2 uses
  %.sroa.026.060 = phi i64 [ 0, %.preheader ], [ %.sroa.026.1, %bb.j ] ; 4 uses
  %.sroa.029.059 = phi i8 [ 0, %.preheader ], [ %i.n, %bb.j ]
  %i.n = add i8 %.sroa.029.059, 1, !dbg !41374    ; 2 uses
  %i.o = icmp eq i8 %i.n, -1, !dbg !41375
  %or.cond = and i1 %i.o, %.sroa.011.063, !dbg !41375
  %i.p = tail call i64 @llvm.usub.sat.i64(i64 %.sroa.4.062, i64 1), !dbg !41375
  %.sroa.4.1 = select i1 %or.cond, i64 %i.p, i64 %.sroa.4.062, !dbg !41375 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.0.065, i64 %.sroa.8.064, !dbg !41376
  %i.r = load atomic ptr, ptr @_RNvNvNtNtNtCslnrARR2vGZ9_6memchr4arch6x86_646memchr10memchr_raw2FN monotonic, align 8, !dbg !41377, !noalias !41350, !nonnull !1150, !noundef !1150
  %i.s = tail call { i64, ptr } %i.r(i8 noundef %7, ptr noundef nonnull readonly %.sroa.0.065, ptr noundef nonnull readonly %i.q), !dbg !41378, !noalias !41350, !inline_history !746 ; 2 uses
  %i.t = extractvalue { i64, ptr } %i.s, 0, !dbg !41379
  %i.u = trunc nuw i64 %i.t to i1, !dbg !41380
  br i1 %i.u, label %bb.c, label %_RINvNtNtNtCslnrARR2vGZ9_6memchr4arch7generic6memchr21search_slice_with_rawNCNvNtB8_6memchr6memchr0ECslpwjCj2YNBy_9polars_io.exit, !dbg !41380

bb.c:                                             ; preds = %bb.b
  %i.v = extractvalue { i64, ptr } %i.s, 1, !dbg !41379
  %i.w = tail call noundef i64 @_RNvXNtCslnrARR2vGZ9_6memchr3extPhNtB2_7Pointer8distanceCslpwjCj2YNBy_9polars_io(ptr noundef %i.v, ptr noundef nonnull readonly %.sroa.0.065), !dbg !41381 ; 2 uses
  %i.x = add i64 %i.w, 1, !dbg !41349             ; 5 uses
  %i.y = icmp eq i64 %.sroa.8.064, %i.x, !dbg !41382
  br i1 %i.y, label %_RINvNtNtNtCslnrARR2vGZ9_6memchr4arch7generic6memchr21search_slice_with_rawNCNvNtB8_6memchr6memchr0ECslpwjCj2YNBy_9polars_io.exit, label %bb.d, !dbg !41382

bb.d:                                             ; preds = %bb.c
  %i.z = sub i64 %.sroa.8.064, %i.x, !dbg !41382
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.0.065, i64 %i.x, !dbg !41383
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !41384
  store ptr %i.aa, ptr %i.b, align 8, !dbg !41385
  store i64 %i.z, ptr %i.e, align 8, !dbg !41385
  store i8 %., ptr %i.f, align 8, !dbg !41385
  store i8 %7, ptr %i.g, align 1, !dbg !41385
  store i64 0, ptr %i.h, align 8, !dbg !41385
  store i8 %i.c, ptr %i.i, align 2, !dbg !41385
  store ptr null, ptr %i.j, align 8, !dbg !41385
  %i.ab = call { ptr, i64 } @_RNvMs_NtNtNtCslpwjCj2YNBy_9polars_io3csv4read6parserNtB4_10SplitLines11next_scalar(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.b), !dbg !41386 ; 2 uses
  %i.ac = extractvalue { ptr, i64 } %i.ab, 0, !dbg !41386 ; 2 uses
  %i.ad = extractvalue { ptr, i64 } %i.ab, 1, !dbg !41386
  %.not = icmp eq ptr %i.ac, null, !dbg !41387
  br i1 %.not, label %.loopexit, label %bb.e, !dbg !41388

bb.e:                                             ; preds = %bb.d
  br i1 %.sroa.011.063, label %bb.f, label %bb.g, !dbg !41388

bb.f:                                             ; preds = %bb.e
  %i.ae = tail call fastcc noundef zeroext i1 @_RNvNvNtNtNtCslpwjCj2YNBy_9polars_io3csv4read6parser18next_line_position11accept_line(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.ac, i64 noundef %i.ad, i64 noundef %.sroa.4.1, i8 noundef %4, i8 noundef %7, i1 noundef zeroext %5, i8 %6), !dbg !41389
  br i1 %i.ae, label %bb.i, label %bb.h, !dbg !41389

bb.g:                                             ; preds = %bb.e
  %i.af = add i64 %i.x, %.sroa.026.060, !dbg !41390
  br label %.loopexit, !dbg !41391

.loopexit:                                        ; preds = %bb.d, %bb.l, %bb.g
  %.sroa.823.1 = phi i64 [ %i.aq, %bb.l ], [ %i.af, %bb.g ], [ undef, %bb.d ], !dbg !41392
  %.sroa.022.1 = phi i64 [ 1, %bb.l ], [ 1, %bb.g ], [ 0, %bb.d ], !dbg !41392
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !41393
  br label %_RINvNtNtNtCslnrARR2vGZ9_6memchr4arch7generic6memchr21search_slice_with_rawNCNvNtB8_6memchr6memchr0ECslpwjCj2YNBy_9polars_io.exit, !dbg !41394

bb.h:                                             ; preds = %bb.f
  %i.ag = add i64 %i.w, 2, !dbg !41395            ; 3 uses
  %i.ah = sub nuw i64 %.sroa.8.064, %i.ag, !dbg !41396
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.0.065, i64 %i.ag, !dbg !41397
  %i.aj = add i64 %i.ag, %.sroa.026.060, !dbg !41398
  br label %bb.j, !dbg !41399

bb.i:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !41400
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.242.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(40) %i.b, i64 40, i1 false), !dbg !41400
  br label %bb.k, !dbg !41401

bb.j:                                             ; preds = %bb.n, %bb.h
  %.sroa.026.1 = phi i64 [ %.sroa.026.060, %bb.n ], [ %i.aj, %bb.h ], !dbg !41402
  %.sroa.024.1 = phi i8 [ %i.at, %bb.n ], [ %.sroa.024.061, %bb.h ], !dbg !41403 ; 2 uses
  %.sroa.8.1 = phi i64 [ %.sroa.8.064, %bb.n ], [ %i.ah, %bb.h ]
  %.sroa.0.1 = phi ptr [ %.sroa.0.065, %bb.n ], [ %i.ai, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !41393
  %i.ak = icmp ugt i8 %.sroa.024.1, 2, !dbg !41371
  br i1 %i.ak, label %_RINvNtNtNtCslnrARR2vGZ9_6memchr4arch7generic6memchr21search_slice_with_rawNCNvNtB8_6memchr6memchr0ECslpwjCj2YNBy_9polars_io.exit, label %bb.b, !dbg !41371

thread-pre-split:                                 ; preds = %bb.m
  %.pr = load i64, ptr %i.a, align 8, !dbg !41401 ; 2 uses
  %i.al = icmp eq i64 %.pr, 0, !dbg !41401
  br i1 %i.al, label %bb.l, label %bb.k, !dbg !41401

bb.k:                                             ; preds = %bb.i, %thread-pre-split
  %i.am = phi i64 [ 2, %bb.i ], [ %.pr, %thread-pre-split ]
  %i.an = add i64 %i.am, -1, !dbg !41404
  store i64 %i.an, ptr %i.a, align 8, !dbg !41404
  %i.ao = call { ptr, i64 } @_RNvMs_NtNtNtCslpwjCj2YNBy_9polars_io3csv4read6parserNtB4_10SplitLines11next_scalar(ptr noalias noundef nonnull align 8 dereferenceable(40) %.sroa.242.0..sroa_idx), !dbg !41405 ; 2 uses
  %i.ap = extractvalue { ptr, i64 } %i.ao, 0, !dbg !41405 ; 2 uses
  %.not50 = icmp eq ptr %i.ap, null, !dbg !41406
  br i1 %.not50, label %bb.l, label %bb.m, !dbg !41406

bb.l:                                             ; preds = %thread-pre-split, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !41407
  %i.aq = add i64 %i.x, %.sroa.026.060, !dbg !41408
  br label %.loopexit, !dbg !41409

bb.m:                                             ; preds = %bb.k
  %i.ar = extractvalue { ptr, i64 } %i.ao, 1, !dbg !41405
  %i.as = tail call fastcc noundef zeroext i1 @_RNvNvNtNtNtCslpwjCj2YNBy_9polars_io3csv4read6parser18next_line_position11accept_line(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.ap, i64 noundef %i.ar, i64 noundef %.sroa.4.1, i8 noundef %4, i8 noundef %7, i1 noundef zeroext %5, i8 %6), !dbg !41410
  br i1 %i.as, label %thread-pre-split, label %bb.n, !dbg !41410

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !41407
  %i.at = add nuw nsw i8 %.sroa.024.061, 1, !dbg !41411
end_hunk_1
begin_hunk_2_@_RNvNtNtNtCslpwjCj2YNBy_9polars_io3csv4read6parser26count_rows_from_reader_par:bb.a

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCslpwjCj2YNBy_9polars_io3csv4read6parser10CountLinesEBO_.exit77: ; preds = %bb.al, %bb.am
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !41777
  invoke void @_RNvXse_NtCsknLZRuU4977_13polars_buffer7storageINtB5_13SharedStoragehENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCslpwjCj2YNBy_9polars_io(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferhEECslpwjCj2YNBy_9polars_io.exit79 unwind label %bb.w, !dbg !41778

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferhEECslpwjCj2YNBy_9polars_io.exit79: ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCslpwjCj2YNBy_9polars_io3csv4read6parser10CountLinesEBO_.exit77
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !dbg !41779
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferhEECslpwjCj2YNBy_9polars_io.exit79.invoke, !dbg !41719

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferhEECslpwjCj2YNBy_9polars_io.exit79.invoke: ; preds = %bb.y, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferhEECslpwjCj2YNBy_9polars_io.exit79
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCslpwjCj2YNBy_9polars_io3csv4read7options14CsvReadOptionsEBO_(ptr noalias noundef align 8 dereferenceable(256) %i.l)
          to label %bb.an unwind label %bb.l, !dbg !41719

bb.an:                                            ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferhEECslpwjCj2YNBy_9polars_io.exit79.invoke
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !dbg !41719
  call fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtCslpwjCj2YNBy_9polars_io5utils11compression16ByteSourceReaderNtNtBL_17stream_buf_reader12ReaderSourceEEBN_(ptr noalias noundef align 8 dereferenceable(320) %1), !dbg !41719
  ret void, !dbg !41780

bb.ao:                                            ; preds = %bb.ak, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCslpwjCj2YNBy_9polars_io3csv4read6parser10CountLinesEBO_.exit, %bb.u, %bb.q, %bb.n, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtNtCslpwjCj2YNBy_9polars_io3csv4read7options13CommentPrefixEEB1a_.exit69, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtNtCslpwjCj2YNBy_9polars_io3csv4read7options13CommentPrefixEEB1a_.exit
  %i.dj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #42, !dbg !41781
  unreachable, !dbg !41781

bb.ap:                                            ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtNtCslpwjCj2YNBy_9polars_io3csv4read7options13CommentPrefixEEB1a_.exit
  resume { ptr, i32 } %.pn61, !dbg !41781
}

; Function Attrs: nonlazybind uwtable
define void @_RNvNtNtNtCslpwjCj2YNBy_9polars_io3csv4read7builder13init_builders(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([72 x i8]) align 8 captures(none) dereferenceable(72) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %1, i64 noundef range(i64 0, 1152921504606846976) %2, i64 noundef %3, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(64) %4, i1 noundef zeroext %5, i8 %6, i1 noundef zeroext %7, i1 noundef zeroext %8) unnamed_addr #3 personality ptr @rust_eh_personality !dbg !41782 {
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
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %2, !dbg !41865
  tail call void @llvm.experimental.noalias.scope.decl(metadata !41851), !dbg !41866
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !41867, !noalias !41854
  store i64 18, ptr %i.c, align 8, !dbg !41868, !noalias !41854
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !41869, !noalias !41854
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !41870, !noalias !41855
  store ptr %1, ptr %i.a, align 8, !dbg !41871, !alias.scope !41856, !noalias !41857
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !41871
  store ptr %i.l, ptr %.sroa.2.0..sroa_idx, align 8, !dbg !41871, !alias.scope !41856, !noalias !41857
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !41871
  store ptr %4, ptr %.sroa.3.0..sroa_idx, align 8, !dbg !41871, !alias.scope !41856, !noalias !41857
  %.sroa.4.0..sroa_idx1 = getelementptr inbounds nuw i8, ptr %i.a, i64 24, !dbg !41871
  store ptr %i.g, ptr %.sroa.4.0..sroa_idx1, align 8, !dbg !41871, !alias.scope !41856, !noalias !41857
  %.sroa.5.0..sroa_idx2 = getelementptr inbounds nuw i8, ptr %i.a, i64 32, !dbg !41871
  store ptr %i.d, ptr %.sroa.5.0..sroa_idx2, align 8, !dbg !41871, !alias.scope !41856, !noalias !41857
  %.sroa.6.0..sroa_idx3 = getelementptr inbounds nuw i8, ptr %i.a, i64 40, !dbg !41871
  store ptr %i.f, ptr %.sroa.6.0..sroa_idx3, align 8, !dbg !41871, !alias.scope !41856, !noalias !41857
  %.sroa.7.0..sroa_idx4 = getelementptr inbounds nuw i8, ptr %i.a, i64 48, !dbg !41871
  store ptr %i.e, ptr %.sroa.7.0..sroa_idx4, align 8, !dbg !41871, !alias.scope !41856, !noalias !41857
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 56, !dbg !41871
  store ptr %i.c, ptr %.sroa.4.0..sroa_idx.i, align 8, !dbg !41871, !alias.scope !41856, !noalias !41858
  invoke void @_RNvXNtNtCsgZ49sUHp3tW_5alloc3vec14spec_from_iterINtB4_3VecNtNtNtNtCslpwjCj2YNBy_9polars_io3csv4read7builder7BuilderEINtB2_12SpecFromIterBU_INtNtNtCscgRAwXFJnXP_4core4iter8adapters12GenericShuntINtNtB2g_3map3MapINtNtNtB2k_5slice4iter4IterjENCNvBW_13init_builders0EINtNtB2k_6result6ResultNtNtB2k_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEE9from_iterB12_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(64) %i.a)
          to label %bb.b unwind label %.body.i, !dbg !41872, !noalias !41854

.body.i:                                          ; preds = %bb.a
  %i.m = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.n = load i64, ptr %i.c, align 8, !dbg !41873, !range !1265, !noalias !41854, !noundef !1150
  %.not.i = icmp eq i64 %i.n, 18, !dbg !41873
  br i1 %.not.i, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEECslpwjCj2YNBy_9polars_io.exit.i, label %bb.j, !dbg !41873

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !41874, !noalias !41855
  %i.o = load i64, ptr %i.c, align 8, !dbg !41875, !range !1265, !noalias !41854, !noundef !1150
  %.not.not.i = icmp eq i64 %i.o, 18, !dbg !41875
  br i1 %.not.not.i, label %bb.c, label %bb.d, !dbg !41876

bb.c:                                             ; preds = %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !41877
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.p, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false), !dbg !41878, !noalias !41859
  store i64 18, ptr %0, align 8, !dbg !41877, !alias.scope !41860
  br label %_RINvNtNtCscgRAwXFJnXP_4core4iter8adapters11try_processINtNtB2_3map3MapINtNtNtB6_5slice4iter4IterjENCNvNtNtNtCslpwjCj2YNBy_9polars_io3csv4read7builder13init_builders0ENtB1C_7BuilderINtNtB6_6result6ResultNtNtB6_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorENCINvXso_B2V_IB2T_INtNtCsgZ49sUHp3tW_5alloc3vec3VecB2E_EB3F_EINtNtNtB4_6traits7collect12FromIteratorIB2T_B2E_B3F_EE9from_iterBQ_E0B4F_EB1I_.exit, !dbg !41879

bb.d:                                             ; preds = %bb.b
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %i.c, i64 72, i1 false), !dbg !41880, !noalias !41859
  invoke void @_RNvXso_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecNtNtNtNtCslpwjCj2YNBy_9polars_io3csv4read7builder7BuilderENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropBN_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %bb.g unwind label %bb.e, !dbg !41881, !noalias !41854

bb.e:                                             ; preds = %bb.d
  %i.q = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val2.i.i = load i64, ptr %i.b, align 8, !dbg !41881, !alias.scope !41861, !noalias !41854 ; 2 uses
  %i.r = icmp eq i64 %.val2.i.i, 0
  br i1 %i.r, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEECslpwjCj2YNBy_9polars_io.exit.i, label %bb.f, !dbg !41882

bb.f:                                             ; preds = %bb.e
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !41881
  %.val3.i.i = load ptr, ptr %i.s, align 8, !dbg !41881, !alias.scope !41862, !noalias !41854, !nonnull !1150, !noundef !1150
  %i.t = mul nuw i64 %.val2.i.i, 304, !dbg !41883
  call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i, i64 noundef %i.t, i64 noundef range(i64 1, -9223372036854775807) 16) #43, !dbg !41884, !noalias !41863
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEECslpwjCj2YNBy_9polars_io.exit.i, !dbg !41885

bb.g:                                             ; preds = %bb.d
  %.val.i.i = load i64, ptr %i.b, align 8, !dbg !41881, !alias.scope !41861, !noalias !41854 ; 2 uses
  %i.u = icmp eq i64 %.val.i.i, 0
  br i1 %i.u, label %_RINvNtNtCscgRAwXFJnXP_4core4iter8adapters11try_processINtNtB2_3map3MapINtNtNtB6_5slice4iter4IterjENCNvNtNtNtCslpwjCj2YNBy_9polars_io3csv4read7builder13init_builders0ENtB1C_7BuilderINtNtB6_6result6ResultNtNtB6_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorENCINvXso_B2V_IB2T_INtNtCsgZ49sUHp3tW_5alloc3vec3VecB2E_EB3F_EINtNtNtB4_6traits7collect12FromIteratorIB2T_B2E_B3F_EE9from_iterBQ_E0B4F_EB1I_.exit, label %bb.h, !dbg !41886

bb.h:                                             ; preds = %bb.g
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !41881
  %.val1.i.i = load ptr, ptr %i.v, align 8, !dbg !41881, !alias.scope !41862, !noalias !41854, !nonnull !1150, !noundef !1150
  %i.w = mul nuw i64 %.val.i.i, 304, !dbg !41887
  call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i, i64 noundef %i.w, i64 noundef range(i64 1, -9223372036854775807) 16) #43, !dbg !41888, !noalias !41864
  br label %_RINvNtNtCscgRAwXFJnXP_4core4iter8adapters11try_processINtNtB2_3map3MapINtNtNtB6_5slice4iter4IterjENCNvNtNtNtCslpwjCj2YNBy_9polars_io3csv4read7builder13init_builders0ENtB1C_7BuilderINtNtB6_6result6ResultNtNtB6_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorENCINvXso_B2V_IB2T_INtNtCsgZ49sUHp3tW_5alloc3vec3VecB2E_EB3F_EINtNtNtB4_6traits7collect12FromIteratorIB2T_B2E_B3F_EE9from_iterBQ_E0B4F_EB1I_.exit, !dbg !41889

bb.i:                                             ; preds = %bb.j
  %i.x = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #42, !dbg !41890, !noalias !41854
  unreachable, !dbg !41890

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEECslpwjCj2YNBy_9polars_io.exit.i: ; preds = %bb.j, %bb.f, %bb.e, %.body.i
  %.pn9.i = phi { ptr, i32 } [ %i.m, %.body.i ], [ %i.m, %bb.j ], [ %i.q, %bb.f ], [ %i.q, %bb.e ]
  resume { ptr, i32 } %.pn9.i, !dbg !41890

bb.j:                                             ; preds = %.body.i
  invoke void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtCsgjwxzEoLG5s_12polars_error11PolarsErrorECslpwjCj2YNBy_9polars_io(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.c)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEECslpwjCj2YNBy_9polars_io.exit.i unwind label %bb.i, !dbg !41891, !noalias !41854

_RINvNtNtCscgRAwXFJnXP_4core4iter8adapters11try_processINtNtB2_3map3MapINtNtNtB6_5slice4iter4IterjENCNvNtNtNtCslpwjCj2YNBy_9polars_io3csv4read7builder13init_builders0ENtB1C_7BuilderINtNtB6_6result6ResultNtNtB6_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorENCINvXso_B2V_IB2T_INtNtCsgZ49sUHp3tW_5alloc3vec3VecB2E_EB3F_EINtNtNtB4_6traits7collect12FromIteratorIB2T_B2E_B3F_EE9from_iterBQ_E0B4F_EB1I_.exit: ; preds = %bb.c, %bb.g, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !41892, !noalias !41854
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !41873, !noalias !41854
  ret void, !dbg !41893
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RNvNvNtNtNtCslpwjCj2YNBy_9polars_io3csv4read6parser18next_line_position11accept_line(ptr noalias noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef range(i64 0, -9223372036854775808) %1, i64 noundef %2, i8 noundef %3, i8 noundef %4, i1 noundef zeroext %5, i8 %6) unnamed_addr #3 personality ptr @rust_eh_personality !dbg !41894 {
bb.a:
  br i1 %5, label %.split.us, label %.split

.split.us:                                        ; preds = %bb.a, %bb.m
  %.sroa.03.042.us = phi i64 [ %i.ap, %bb.m ], [ 0, %bb.a ]
  %.sroa.0.040.us = phi ptr [ %.sroa.0.1.ph.us, %bb.m ], [ %0, %bb.a ] ; 17 uses
  %.sroa.7.039.us = phi i64 [ %.sroa.7.1.ph.us, %bb.m ], [ %1, %bb.a ] ; 11 uses
  %i.a = icmp eq i64 %.sroa.7.039.us, 0, !dbg !41997
  br i1 %i.a, label %bb.l, label %bb.b, !dbg !41997

bb.b:                                             ; preds = %.split.us
  %i.b = load i8, ptr %.sroa.0.040.us, align 1, !dbg !41998, !noalias !41976, !noundef !1150
  %i.c = icmp eq i8 %i.b, %6, !dbg !41999
  %i.d = getelementptr inbounds nuw i8, ptr %.sroa.0.040.us, i64 %.sroa.7.039.us, !dbg !42000 ; 2 uses
  br i1 %i.c, label %.lr.ph.i.us, label %.lr.ph.i.i.us, !dbg !41999

.lr.ph.i.i.us:                                    ; preds = %bb.b, %bb.c
  %.sroa.02.012.i.i.us = phi i64 [ %i.i, %bb.c ], [ 0, %bb.b ] ; 4 uses
  %i.e = phi ptr [ %i.h, %bb.c ], [ %.sroa.0.040.us, %bb.b ] ; 2 uses
  %.val7.i.i.us = load i8, ptr %i.e, align 1, !dbg !42001, !noalias !41980, !noundef !1150 ; 2 uses
  %i.f = icmp eq i8 %.val7.i.i.us, %3, !dbg !42002
  %i.g = icmp eq i8 %.val7.i.i.us, %4
  %or.cond.i.i.us = or i1 %i.f, %i.g, !dbg !42002
  br i1 %or.cond.i.i.us, label %bb.d, label %bb.c, !dbg !42002

bb.c:                                             ; preds = %.lr.ph.i.i.us
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 1, !dbg !42003 ; 2 uses
  %i.i = add nuw i64 %.sroa.02.012.i.i.us, 1, !dbg !42004
  %i.j = icmp eq ptr %i.h, %i.d, !dbg !42005
  br i1 %i.j, label %.loopexit.us, label %.lr.ph.i.i.us, !dbg !42006

bb.d:                                             ; preds = %.lr.ph.i.i.us
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.0.040.us, i64 %.sroa.02.012.i.i.us, !dbg !42007
  %i.l = load i8, ptr %i.k, align 1, !dbg !42008, !noalias !41976, !noundef !1150
  %i.m = icmp eq i8 %i.l, %4, !dbg !42008
  br i1 %i.m, label %.loopexit.us, label %bb.j, !dbg !42008

.lr.ph.i.us:                                      ; preds = %bb.b, %bb.f
  %.sroa.05.053.i.us = phi i8 [ %spec.select.i.us, %bb.f ], [ 0, %bb.b ] ; 2 uses
  %.sroa.09.052.i.us = phi i32 [ %i.t, %bb.f ], [ 0, %bb.b ] ; 4 uses
  %.sroa.012.051.i.us = phi ptr [ %i.n, %bb.f ], [ %.sroa.0.040.us, %bb.b ] ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.012.051.i.us, i64 1, !dbg !42009 ; 2 uses
  %i.o = load i8, ptr %.sroa.012.051.i.us, align 1, !dbg !42010, !noalias !41976, !noundef !1150 ; 3 uses
  %i.p = icmp eq i8 %i.o, %6, !dbg !42011
  %i.q = zext i1 %i.p to i8, !dbg !42011          ; 2 uses
  %spec.select.i.us = xor i8 %.sroa.05.053.i.us, %i.q, !dbg !42011
  %.not.i.us = icmp eq i8 %.sroa.05.053.i.us, %i.q, !dbg !42012
  br i1 %.not.i.us, label %bb.e, label %bb.f, !dbg !42012

bb.e:                                             ; preds = %.lr.ph.i.us
  %i.r = icmp eq i8 %i.o, %3, !dbg !42013
  %i.s = icmp eq i8 %i.o, %4                      ; 2 uses
  %or.cond.i.us = or i1 %i.r, %i.s, !dbg !42013
  br i1 %or.cond.i.us, label %bb.g, label %bb.f, !dbg !42013

bb.f:                                             ; preds = %bb.e, %.lr.ph.i.us
  %i.t = add nuw nsw i32 %.sroa.09.052.i.us, 1, !dbg !42014
  %i.u = icmp eq ptr %i.n, %i.d, !dbg !42015
  br i1 %i.u, label %.loopexit.us, label %.lr.ph.i.us, !dbg !42016

bb.g:                                             ; preds = %bb.e
  br i1 %i.s, label %bb.k, label %bb.h, !dbg !42017

bb.h:                                             ; preds = %bb.g
  %i.v = icmp eq i32 %.sroa.09.052.i.us, 0, !dbg !42018
  br i1 %i.v, label %.loopexit.us, label %bb.i, !dbg !42018

bb.i:                                             ; preds = %bb.h
  %i.w = zext nneg i32 %.sroa.09.052.i.us to i64, !dbg !42019
  br label %bb.j, !dbg !42020

bb.j:                                             ; preds = %bb.i, %bb.d
  %.sroa.016.0.i.us = phi i64 [ %i.w, %bb.i ], [ %.sroa.02.012.i.i.us, %bb.d ], !dbg !41977 ; 2 uses
  %i.x = add nuw i64 %.sroa.016.0.i.us, 1, !dbg !42021 ; 2 uses
  %i.y = sub nuw i64 %.sroa.7.039.us, %i.x, !dbg !42022
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.0.040.us, i64 %i.x, !dbg !42023
  br label %.loopexit.us, !dbg !42024

bb.k:                                             ; preds = %bb.g
  %i.aa = zext nneg i32 %.sroa.09.052.i.us to i64, !dbg !42025
  br label %.loopexit.us, !dbg !42026

bb.l:                                             ; preds = %.split.us
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.040.us) ]
  br label %.loopexit.us, !dbg !42027

.loopexit.us:                                     ; preds = %bb.c, %bb.f, %bb.l, %bb.k, %bb.j, %bb.h, %bb.d
  %.sroa.11.0.ph.us = phi i64 [ 0, %bb.l ], [ %.sroa.7.039.us, %bb.h ], [ %.sroa.7.039.us, %bb.f ], [ %.sroa.016.0.i.us, %bb.j ], [ %.sroa.02.012.i.i.us, %bb.d ], [ %i.aa, %bb.k ], [ %.sroa.7.039.us, %bb.c ]
  %.sroa.18.1.ph.us = phi i1 [ true, %bb.l ], [ true, %bb.h ], [ true, %bb.f ], [ false, %bb.j ], [ true, %bb.d ], [ true, %bb.k ], [ true, %bb.c ]
  %.sroa.7.1.ph.us = phi i64 [ 0, %bb.l ], [ %.sroa.7.039.us, %bb.h ], [ %.sroa.7.039.us, %bb.f ], [ %i.y, %bb.j ], [ %.sroa.7.039.us, %bb.d ], [ %.sroa.7.039.us, %bb.k ], [ %.sroa.7.039.us, %bb.c ]
  %.sroa.0.1.ph.us = phi ptr [ %.sroa.0.040.us, %bb.l ], [ %.sroa.0.040.us, %bb.h ], [ %.sroa.0.040.us, %bb.f ], [ %i.z, %bb.j ], [ %.sroa.0.040.us, %bb.d ], [ %.sroa.0.040.us, %bb.k ], [ %.sroa.0.040.us, %bb.c ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.040.us) ]
  %i.ab = getelementptr i8, ptr %.sroa.0.040.us, i64 %.sroa.11.0.ph.us, !dbg !42028 ; 2 uses
  %i.ac = load atomic ptr, ptr @_RNvNvNtNtNtCslnrARR2vGZ9_6memchr4arch6x86_646memchr11memchr2_raw2FN monotonic, align 8, !dbg !42029, !noalias !41989, !nonnull !1150, !noundef !1150
  %i.ad = tail call { i64, ptr } %i.ac(i8 noundef %3, i8 noundef %4, ptr noundef nonnull %.sroa.0.040.us, ptr noundef %i.ab), !dbg !42030, !noalias !41989, !inline_history !41953 ; 2 uses
  %i.ae = extractvalue { i64, ptr } %i.ad, 0, !dbg !42031
  %i.af = trunc nuw i64 %i.ae to i1, !dbg !42032
  br i1 %i.af, label %.lr.ph.i13.us, label %_RINvYNtNtCslnrARR2vGZ9_6memchr6memchr7Memchr2NtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4foldjNCNvYB3_BH_5count0ECslpwjCj2YNBy_9polars_io.exit.us, !dbg !42032

.lr.ph.i13.us:                                    ; preds = %.loopexit.us, %.lr.ph.i13.us
  %i.ag = phi { i64, ptr } [ %i.am, %.lr.ph.i13.us ], [ %i.ad, %.loopexit.us ]
  %.sroa.0.08.i.us = phi i64 [ %i.ak, %.lr.ph.i13.us ], [ 0, %.loopexit.us ]
  %i.ah = extractvalue { i64, ptr } %i.ag, 1, !dbg !42031 ; 2 uses
  %i.ai = tail call noundef i64 @_RNvXNtCslnrARR2vGZ9_6memchr3extPhNtB2_7Pointer8distanceCslpwjCj2YNBy_9polars_io(ptr noundef %i.ah, ptr noundef nonnull %.sroa.0.040.us), !dbg !42033, !noalias !41993 ; 0 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ah, i64 1, !dbg !42034
  %i.ak = add i64 %.sroa.0.08.i.us, 1, !dbg !42035 ; 2 uses
  %i.al = load atomic ptr, ptr @_RNvNvNtNtNtCslnrARR2vGZ9_6memchr4arch6x86_646memchr11memchr2_raw2FN monotonic, align 8, !dbg !42029, !noalias !41995, !nonnull !1150, !noundef !1150
  %i.am = tail call { i64, ptr } %i.al(i8 noundef %3, i8 noundef %4, ptr noundef nonnull %i.aj, ptr noundef %i.ab), !dbg !42030, !noalias !41995, !inline_history !41953 ; 2 uses
  %i.an = extractvalue { i64, ptr } %i.am, 0, !dbg !42031
  %i.ao = trunc nuw i64 %i.an to i1, !dbg !42032
  br i1 %i.ao, label %.lr.ph.i13.us, label %_RINvYNtNtCslnrARR2vGZ9_6memchr6memchr7Memchr2NtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4foldjNCNvYB3_BH_5count0ECslpwjCj2YNBy_9polars_io.exit.us, !dbg !42032

_RINvYNtNtCslnrARR2vGZ9_6memchr6memchr7Memchr2NtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4foldjNCNvYB3_BH_5count0ECslpwjCj2YNBy_9polars_io.exit.us: ; preds = %.lr.ph.i13.us, %.loopexit.us
  %.sroa.0.0.lcssa.i.us = phi i64 [ 0, %.loopexit.us ], [ %i.ak, %.lr.ph.i13.us ], !dbg !42036
  %.not12.us = icmp ult i64 %.sroa.0.0.lcssa.i.us, %2, !dbg !41982
  br i1 %.not12.us, label %bb.m, label %.loopexit33, !dbg !41982

bb.m:                                             ; preds = %_RINvYNtNtCslnrARR2vGZ9_6memchr6memchr7Memchr2NtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4foldjNCNvYB3_BH_5count0ECslpwjCj2YNBy_9polars_io.exit.us
  %i.ap = add i64 %.sroa.03.042.us, 1, !dbg !42037 ; 2 uses
  br i1 %.sroa.18.1.ph.us, label %_RNvXs_NtNtNtNtCslpwjCj2YNBy_9polars_io3csv4read11splitfields5innerNtB4_11SplitFieldsNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit, label %.split.us, !dbg !42038

.split:                                           ; preds = %bb.a, %bb.s
  %.sroa.03.042 = phi i64 [ %i.bu, %bb.s ], [ 0, %bb.a ]
  %.sroa.0.040 = phi ptr [ %.sroa.0.1.ph, %bb.s ], [ %0, %bb.a ] ; 12 uses
  %.sroa.7.039 = phi i64 [ %.sroa.7.1.ph, %bb.s ], [ %1, %bb.a ] ; 6 uses
  %i.aq = icmp eq i64 %.sroa.7.039, 0, !dbg !41997
  br i1 %i.aq, label %bb.n, label %.lr.ph.i.i, !dbg !41997

bb.n:                                             ; preds = %.split
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.040) ]
  br label %.loopexit32, !dbg !42027

.lr.ph.i.i:                                       ; preds = %.split
  %i.ar = getelementptr inbounds nuw i8, ptr %.sroa.0.040, i64 %.sroa.7.039, !dbg !42039
  br label %bb.o, !dbg !42006

bb.o:                                             ; preds = %bb.p, %.lr.ph.i.i
  %.sroa.02.012.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %i.aw, %bb.p ] ; 5 uses
  %i.as = phi ptr [ %.sroa.0.040, %.lr.ph.i.i ], [ %i.av, %bb.p ] ; 2 uses
  %.val7.i.i = load i8, ptr %i.as, align 1, !dbg !42001, !noalias !41980, !noundef !1150 ; 2 uses
  %i.at = icmp eq i8 %.val7.i.i, %3, !dbg !42002
  %i.au = icmp eq i8 %.val7.i.i, %4
  %or.cond.i.i = or i1 %i.at, %i.au, !dbg !42002
  br i1 %or.cond.i.i, label %bb.q, label %bb.p, !dbg !42002

bb.p:                                             ; preds = %bb.o
  %i.av = getelementptr inbounds nuw i8, ptr %i.as, i64 1, !dbg !42003 ; 2 uses
  %i.aw = add nuw i64 %.sroa.02.012.i.i, 1, !dbg !42004
  %i.ax = icmp eq ptr %i.av, %i.ar, !dbg !42005
  br i1 %i.ax, label %.loopexit32, label %bb.o, !dbg !42006

bb.q:                                             ; preds = %bb.o
  %i.ay = getelementptr inbounds nuw i8, ptr %.sroa.0.040, i64 %.sroa.02.012.i.i, !dbg !42007
  %i.az = load i8, ptr %i.ay, align 1, !dbg !42008, !noalias !41976, !noundef !1150
  %i.ba = icmp eq i8 %i.az, %4, !dbg !42008
  br i1 %i.ba, label %.loopexit32, label %bb.r, !dbg !42008

bb.r:                                             ; preds = %bb.q
  %i.bb = add nuw i64 %.sroa.02.012.i.i, 1, !dbg !42021 ; 2 uses
  %i.bc = sub nuw i64 %.sroa.7.039, %i.bb, !dbg !42022
  %i.bd = getelementptr inbounds nuw i8, ptr %.sroa.0.040, i64 %i.bb, !dbg !42023
  br label %.loopexit32, !dbg !42024

.loopexit32:                                      ; preds = %bb.p, %bb.n, %bb.q, %bb.r
  %.sroa.11.0.ph = phi i64 [ 0, %bb.n ], [ %.sroa.02.012.i.i, %bb.q ], [ %.sroa.02.012.i.i, %bb.r ], [ %.sroa.7.039, %bb.p ]
  %.sroa.18.1.ph = phi i1 [ true, %bb.n ], [ true, %bb.q ], [ false, %bb.r ], [ true, %bb.p ]
  %.sroa.7.1.ph = phi i64 [ 0, %bb.n ], [ %.sroa.7.039, %bb.q ], [ %i.bc, %bb.r ], [ %.sroa.7.039, %bb.p ]
  %.sroa.0.1.ph = phi ptr [ %.sroa.0.040, %bb.n ], [ %.sroa.0.040, %bb.q ], [ %i.bd, %bb.r ], [ %.sroa.0.040, %bb.p ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.040) ]
  %i.be = getelementptr i8, ptr %.sroa.0.040, i64 %.sroa.11.0.ph, !dbg !42028 ; 2 uses
  %i.bf = load atomic ptr, ptr @_RNvNvNtNtNtCslnrARR2vGZ9_6memchr4arch6x86_646memchr11memchr2_raw2FN monotonic, align 8, !dbg !42029, !noalias !41989, !nonnull !1150, !noundef !1150
  %i.bg = tail call { i64, ptr } %i.bf(i8 noundef %3, i8 noundef %4, ptr noundef nonnull %.sroa.0.040, ptr noundef %i.be), !dbg !42030, !noalias !41989, !inline_history !41953 ; 2 uses
  %i.bh = extractvalue { i64, ptr } %i.bg, 0, !dbg !42031
  %i.bi = trunc nuw i64 %i.bh to i1, !dbg !42032
  br i1 %i.bi, label %.lr.ph.i13, label %_RINvYNtNtCslnrARR2vGZ9_6memchr6memchr7Memchr2NtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4foldjNCNvYB3_BH_5count0ECslpwjCj2YNBy_9polars_io.exit, !dbg !42032

.lr.ph.i13:                                       ; preds = %.loopexit32, %.lr.ph.i13
  %i.bj = phi { i64, ptr } [ %i.bp, %.lr.ph.i13 ], [ %i.bg, %.loopexit32 ]
  %.sroa.0.08.i = phi i64 [ %i.bn, %.lr.ph.i13 ], [ 0, %.loopexit32 ]
  %i.bk = extractvalue { i64, ptr } %i.bj, 1, !dbg !42031 ; 2 uses
  %i.bl = tail call noundef i64 @_RNvXNtCslnrARR2vGZ9_6memchr3extPhNtB2_7Pointer8distanceCslpwjCj2YNBy_9polars_io(ptr noundef %i.bk, ptr noundef nonnull %.sroa.0.040), !dbg !42033, !noalias !41993 ; 0 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bk, i64 1, !dbg !42034
  %i.bn = add i64 %.sroa.0.08.i, 1, !dbg !42035   ; 2 uses
  %i.bo = load atomic ptr, ptr @_RNvNvNtNtNtCslnrARR2vGZ9_6memchr4arch6x86_646memchr11memchr2_raw2FN monotonic, align 8, !dbg !42029, !noalias !41995, !nonnull !1150, !noundef !1150
  %i.bp = tail call { i64, ptr } %i.bo(i8 noundef %3, i8 noundef %4, ptr noundef nonnull %i.bm, ptr noundef %i.be), !dbg !42030, !noalias !41995, !inline_history !41953 ; 2 uses
  %i.bq = extractvalue { i64, ptr } %i.bp, 0, !dbg !42031
  %i.br = trunc nuw i64 %i.bq to i1, !dbg !42032
  br i1 %i.br, label %.lr.ph.i13, label %_RINvYNtNtCslnrARR2vGZ9_6memchr6memchr7Memchr2NtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4foldjNCNvYB3_BH_5count0ECslpwjCj2YNBy_9polars_io.exit, !dbg !42032

_RINvYNtNtCslnrARR2vGZ9_6memchr6memchr7Memchr2NtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4foldjNCNvYB3_BH_5count0ECslpwjCj2YNBy_9polars_io.exit: ; preds = %.lr.ph.i13, %.loopexit32
  %.sroa.0.0.lcssa.i = phi i64 [ 0, %.loopexit32 ], [ %i.bn, %.lr.ph.i13 ], !dbg !42036
  %.not12 = icmp ult i64 %.sroa.0.0.lcssa.i, %2, !dbg !41982
  br i1 %.not12, label %bb.s, label %.loopexit33, !dbg !41982

_RNvXs_NtNtNtNtCslpwjCj2YNBy_9polars_io3csv4read11splitfields5innerNtB4_11SplitFieldsNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit: ; preds = %bb.s, %bb.m
  %.us-phi = phi i64 [ %i.ap, %bb.m ], [ %i.bu, %bb.s ], !dbg !42040
  %i.bs = sub i64 %2, %.us-phi, !dbg !42040
  %i.bt = icmp ult i64 %i.bs, 2, !dbg !42041
  br label %.loopexit33, !dbg !42042

.loopexit33:                                      ; preds = %_RINvYNtNtCslnrARR2vGZ9_6memchr6memchr7Memchr2NtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4foldjNCNvYB3_BH_5count0ECslpwjCj2YNBy_9polars_io.exit, %_RINvYNtNtCslnrARR2vGZ9_6memchr6memchr7Memchr2NtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4foldjNCNvYB3_BH_5count0ECslpwjCj2YNBy_9polars_io.exit.us, %_RNvXs_NtNtNtNtCslpwjCj2YNBy_9polars_io3csv4read11splitfields5innerNtB4_11SplitFieldsNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit
  %.sroa.02.0 = phi i1 [ %i.bt, %_RNvXs_NtNtNtNtCslpwjCj2YNBy_9polars_io3csv4read11splitfields5innerNtB4_11SplitFieldsNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit ], [ false, %_RINvYNtNtCslnrARR2vGZ9_6memchr6memchr7Memchr2NtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4foldjNCNvYB3_BH_5count0ECslpwjCj2YNBy_9polars_io.exit.us ], [ false, %_RINvYNtNtCslnrARR2vGZ9_6memchr6memchr7Memchr2NtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4foldjNCNvYB3_BH_5count0ECslpwjCj2YNBy_9polars_io.exit ], !dbg !42043
  ret i1 %.sroa.02.0, !dbg !42042

bb.s:                                             ; preds = %_RINvYNtNtCslnrARR2vGZ9_6memchr6memchr7Memchr2NtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4foldjNCNvYB3_BH_5count0ECslpwjCj2YNBy_9polars_io.exit
  %i.bu = add i64 %.sroa.03.042, 1, !dbg !42037   ; 2 uses
  br i1 %.sroa.18.1.ph, label %_RNvXs_NtNtNtNtCslpwjCj2YNBy_9polars_io3csv4read11splitfields5innerNtB4_11SplitFieldsNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit, label %.split, !dbg !42038
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_RNvXNtNtCscgRAwXFJnXP_4core4iter8adaptersINtB2_12GenericShuntINtNtB2_3map3MapIBY_INtNtNtCse4dvU5uQ85g_8indexmap3map4iter4IterNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeENCNvXNtB2U_6schemaINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaB2O_uENtB3Q_9SchemaExt11iter_fields0ENCNvNtCslpwjCj2YNBy_9polars_io6shared23schema_to_arrow_checked0EINtNtB6_6result6ResultNtNtB6_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEENtNtNtB4_6traits8iterator8Iterator9size_hintB5w_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(40) %1) unnamed_addr #16 !dbg !42044 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !42057
  %i.b = load ptr, ptr %i.a, align 8, !dbg !42057, !nonnull !1150, !align !1232, !noundef !1150
  %i.c = load i64, ptr %i.b, align 8, !dbg !42058, !range !1265, !noundef !1150
  %.not = icmp eq i64 %i.c, 18, !dbg !42058
  br i1 %.not, label %bb.b, label %bb.c, !dbg !42057

bb.b:                                             ; preds = %bb.a
  %.val = load ptr, ptr %1, align 8, !dbg !42059, !nonnull !1150, !noundef !1150
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !42059
  %.val1 = load ptr, ptr %i.d, align 8, !dbg !42059, !nonnull !1150, !noundef !1150
  %i.e = ptrtoint ptr %.val1 to i64, !dbg !42060
  %i.f = ptrtoint ptr %.val to i64, !dbg !42060
  %i.g = sub nuw i64 %i.e, %i.f, !dbg !42060
  %i.h = udiv exact i64 %i.g, 80, !dbg !42060
  br label %bb.c, !dbg !42061

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sink = phi i64 [ %i.h, %bb.b ], [ 0, %bb.a ], !dbg !42062
  store i64 0, ptr %0, align 8, !dbg !42062
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !42062
  store i64 1, ptr %i.i, align 8, !dbg !42062
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !42062
  store i64 %.sink, ptr %i.j, align 8, !dbg !42062
  ret void, !dbg !42063
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_RNvXNtNtCscgRAwXFJnXP_4core4iter8adaptersINtB2_12GenericShuntINtNtB2_3map3MapIBY_INtNtNtCse4dvU5uQ85g_8indexmap3map4iter4IterNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeENCNvXNtB2U_6schemaINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaB2O_uENtB3Q_9SchemaExt11iter_fields0ENCNvNtNtNtCslpwjCj2YNBy_9polars_io3csv4read6reader18prepare_csv_schema0EINtNtB6_6result6ResultNtNtB6_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEENtNtNtB4_6traits8iterator8Iterator9size_hintB5A_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(40) %1) unnamed_addr #16 !dbg !42064 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !42077
  %i.b = load ptr, ptr %i.a, align 8, !dbg !42077, !nonnull !1150, !align !1232, !noundef !1150
  %i.c = load i64, ptr %i.b, align 8, !dbg !42078, !range !1265, !noundef !1150
  %.not = icmp eq i64 %i.c, 18, !dbg !42078
  br i1 %.not, label %bb.b, label %bb.c, !dbg !42077

bb.b:                                             ; preds = %bb.a
  %.val = load ptr, ptr %1, align 8, !dbg !42079, !nonnull !1150, !noundef !1150
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !42079
  %.val1 = load ptr, ptr %i.d, align 8, !dbg !42079, !nonnull !1150, !noundef !1150
  %i.e = ptrtoint ptr %.val1 to i64, !dbg !42080
  %i.f = ptrtoint ptr %.val to i64, !dbg !42080
  %i.g = sub nuw i64 %i.e, %i.f, !dbg !42080
  %i.h = udiv exact i64 %i.g, 80, !dbg !42080
  br label %bb.c, !dbg !42081

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sink = phi i64 [ %i.h, %bb.b ], [ 0, %bb.a ], !dbg !42082
  store i64 0, ptr %0, align 8, !dbg !42082
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !42082
  store i64 1, ptr %i.i, align 8, !dbg !42082
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !42082
  store i64 %.sink, ptr %i.j, align 8, !dbg !42082
  ret void, !dbg !42083
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, ptr } @_RNvXNtNtCscgRAwXFJnXP_4core4iter8adaptersINtB2_12GenericShuntINtNtB2_3map3MapINtNtB2_3zip3ZipIB1e_IB1e_INtNtNtB6_5slice4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EEINtNtNtB28_3vec9into_iter8IntoIterINtB3v_3VecNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow5write5pages6NestedEEEIB3r_NtNtNtNtNtB4h_7parquet6schema5types12parquet_type13PrimitiveTypeEEIB1E_NtNtB5q_14parquet_bridge8EncodingEENCINvB4b_16array_to_columnsRB23_E0EINtNtB6_6result6ResultNtNtB6_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEENtNtNtB4_6traits8iterator8Iterator4nextCslpwjCj2YNBy_9polars_io(ptr noalias noundef align 8 dereferenceable(160) %0) unnamed_addr #3 personality ptr @rust_eh_personality !dbg !42084 {
_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtB4_3ops12control_flow11ControlFlowINtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet5write8dyn_iter7DynIterINtNtB4_6result6ResultNtNtB1s_4page4PageNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEEECslpwjCj2YNBy_9polars_io.exit:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !42093), !dbg !42096
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !42097, !noalias !42093
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 152, !dbg !42098
  %i.d = load ptr, ptr %i.c, align 8, !dbg !42098, !alias.scope !42093, !nonnull !1150, !align !1232, !noundef !1150
  call void @_RINvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB6_3MapINtNtB8_3zip3ZipIBY_IBY_INtNtNtBc_5slice4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EEINtNtNtB1Q_3vec9into_iter8IntoIterINtB3d_3VecNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow5write5pages6NestedEEEIB39_NtNtNtNtNtB3Z_7parquet6schema5types12parquet_type13PrimitiveTypeEEIB1m_NtNtB58_14parquet_bridge8EncodingEENCINvB3T_16array_to_columnsRB1L_E0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvXB8_INtB8_12GenericShuntBN_INtNtBc_6result6ResultNtNtBc_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEB7h_8try_folduNCINvNvB7h_12try_for_each4callINtNtNtB58_5write8dyn_iter7DynIterIB8w_NtNtB58_4page4PageB9i_EEINtNtNtBc_3ops12control_flow11ControlFlowBaJ_ENcNtBbK_5Break0E0BbK_E0IBbL_BbK_EECslpwjCj2YNBy_9polars_io(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(160) %0, ptr noalias noundef nonnull %i.a, ptr noalias noundef nonnull align 8 dereferenceable(72) %i.d), !dbg !42099
  %i.e = load i64, ptr %i.b, align 8, !dbg !42100, !range !1196, !noalias !42093, !noundef !1150
  %i.f = trunc nuw i64 %i.e to i1, !dbg !42101
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !42101
end_hunk_2
