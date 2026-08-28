Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/jiff-rs/original/jiff-789e66dc7021757c.jiff.764126a7be50c476-cgu.02?download=true
inline.NumInlined: 431
inline.NumDeleted: 215
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_RINvMNtNtCsb09rMIQFAXO_9jiff_core2tz5posixNtB3_5TzEnv12parse_os_strRNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringECsa9sSWSfjDbm_4jiff:bb.a
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #19, !noalias !28
  %i.ac = tail call noundef ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef range(i64 1, 0) %i.z, i64 noundef 1) #19, !noalias !28 ; 3 uses
  %i.ad = icmp eq ptr %i.ac, null
  br i1 %i.ad, label %.noexc.i.i.i, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsb09rMIQFAXO_9jiff_core4util8SmallStrKj1e_EEECsa9sSWSfjDbm_4jiff.exit.i.i.i

.noexc.i.i.i:                                     ; preds = %bb.k
  tail call void @_RNvNtCs1xwejQucwHj_5alloc5alloc18handle_alloc_error(i64 noundef 1, i64 noundef %i.z) #20, !noalias !33
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsb09rMIQFAXO_9jiff_core4util8SmallStrKj1e_EEECsa9sSWSfjDbm_4jiff.exit.i.i.i: ; preds = %bb.k
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ac, ptr nonnull readonly align 1 %i.x, i64 %i.z, i1 false), !noalias !34
  br label %bb.l

bb.l:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsb09rMIQFAXO_9jiff_core4util8SmallStrKj1e_EEECsa9sSWSfjDbm_4jiff.exit.i.i.i, %bb.j
  %.sroa.025.0.i = phi i8 [ 2, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsb09rMIQFAXO_9jiff_core4util8SmallStrKj1e_EEECsa9sSWSfjDbm_4jiff.exit.i.i.i ], [ 0, %bb.j ]
  %.sroa.8.0.i = phi ptr [ %i.ac, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsb09rMIQFAXO_9jiff_core4util8SmallStrKj1e_EEECsa9sSWSfjDbm_4jiff.exit.i.i.i ], [ %.7..7..sroa.5.sroa.5.0.copyload.i.i, %bb.j ]
  %.sink.i.sroa.phi.i = phi ptr [ %.sroa.10.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsb09rMIQFAXO_9jiff_core4util8SmallStrKj1e_EEECsa9sSWSfjDbm_4jiff.exit.i.i.i ], [ %.sroa.12.i, %bb.j ]
  %.sroa.42.sroa.6.30.insert.insert.sink.i.i = phi i64 [ %i.z, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsb09rMIQFAXO_9jiff_core4util8SmallStrKj1e_EEECsa9sSWSfjDbm_4jiff.exit.i.i.i ], [ %.sroa.42.sroa.6.30.insert.insert.i.i, %bb.j ]
  store i64 %.sroa.42.sroa.6.30.insert.insert.sink.i.i, ptr %.sink.i.sroa.phi.i, align 8, !alias.scope !25, !noalias !26
  %.sroa.10.i.0..sroa.10.i.0..sroa.10.i.0..sroa.10.0..sroa.10.0..sroa.10.0.copyload.i = load i64, ptr %.sroa.10.i, align 8, !noalias !10
  %.sroa.12.i.0..sroa.12.i.0..sroa.12.i.0..sroa.12.0..sroa.12.0..sroa.12.0.copyload.i = load i64, ptr %.sroa.12.i, align 8, !noalias !10
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.10.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.12.i)
  store i8 -1, ptr %0, align 8, !alias.scope !5, !noalias !8
  %.sroa.410.sroa.3.0..sroa.410.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 %.sroa.025.0.i, ptr %.sroa.410.sroa.3.0..sroa.410.0..sroa_idx.sroa_idx.i, align 8, !alias.scope !5, !noalias !8
  %.sroa.410.sroa.4.0..sroa.410.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.410.sroa.4.0..sroa.410.0..sroa_idx.sroa_idx.i, ptr noundef nonnull align 1 dereferenceable(7) %i.a, i64 7, i1 false), !noalias !8
  %.sroa.410.sroa.5.0..sroa.410.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.8.0.i, ptr %.sroa.410.sroa.5.0..sroa.410.0..sroa_idx.sroa_idx.i, align 8, !alias.scope !5, !noalias !8
  %.sroa.410.sroa.6.0..sroa.410.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.10.i.0..sroa.10.i.0..sroa.10.i.0..sroa.10.0..sroa.10.0..sroa.10.0.copyload.i, ptr %.sroa.410.sroa.6.0..sroa.410.0..sroa_idx.sroa_idx.i, align 8, !alias.scope !5, !noalias !8
  %.sroa.410.sroa.7.0..sroa.410.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %.sroa.12.i.0..sroa.12.i.0..sroa.12.i.0..sroa.12.0..sroa.12.0..sroa.12.0.copyload.i, ptr %.sroa.410.sroa.7.0..sroa.410.0..sroa_idx.sroa_idx.i, align 8, !alias.scope !5, !noalias !8
  br label %_RINvMNtNtCsb09rMIQFAXO_9jiff_core2tz5posixNtB3_5TzEnv5parseRShECsa9sSWSfjDbm_4jiff.exit

bb.m:                                             ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !10
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i32 15, ptr %i.ae, align 1, !alias.scope !5, !noalias !8
  store i8 -2, ptr %0, align 8, !alias.scope !5, !noalias !8
  br label %_RINvMNtNtCsb09rMIQFAXO_9jiff_core2tz5posixNtB3_5TzEnv5parseRShECsa9sSWSfjDbm_4jiff.exit

_RINvMNtNtCsb09rMIQFAXO_9jiff_core2tz5posixNtB3_5TzEnv5parseRShECsa9sSWSfjDbm_4jiff.exit: ; preds = %bb.f, %bb.l, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.o

bb.n:                                             ; preds = %bb.a
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i32 16, ptr %i.af, align 1
  store i8 -2, ptr %0, align 8
  br label %bb.o

bb.o:                                             ; preds = %_RINvMNtNtCsb09rMIQFAXO_9jiff_core2tz5posixNtB3_5TzEnv5parseRShECsa9sSWSfjDbm_4jiff.exit, %bb.n
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden { i64, ptr } @_RINvMs1_NtNtNtCsa9sSWSfjDbm_4jiff3fmt8friendly7printerNtB6_11SpanPrinter10print_spanINtBa_11StdFmtWriteQNtNtCs3oUPovFnLWP_4core3fmt9FormatterEEBc_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(64) %1, ptr noalias nofree noundef align 8 dereferenceable(24) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 8 uses
  %i.c = alloca [306 x i8], align 1               ; 3 uses
  %i.d = alloca [8 x i8], align 8                 ; 2 uses
  store ptr %2, ptr %i.d, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.c, ptr %i.b, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 306, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  store i16 0, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 17
  %i.h = load i8, ptr %i.g, align 1, !range !35, !noundef !4
  %i.i = trunc nuw i8 %i.h to i1
  br i1 %i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @_RNvMs1_NtNtNtCsa9sSWSfjDbm_4jiff3fmt8friendly7printerNtB5_11SpanPrinter22print_span_designators(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %1, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  call void @_RNvMs1_NtNtNtCsa9sSWSfjDbm_4jiff3fmt8friendly7printerNtB5_11SpanPrinter14print_span_hms(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %1, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.j = load ptr, ptr %i.b, align 8, !nonnull !4, !noundef !4
  %i.k = load i16, ptr %i.f, align 8, !noundef !4
  %i.l = zext i16 %i.k to i64
  %i.m = call noundef zeroext i1 @_RNvXNtCs3oUPovFnLWP_4core3fmtQNtB2_9FormatterNtB2_5Write9write_strCsa9sSWSfjDbm_4jiff(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.d, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.j, i64 noundef range(i64 0, 65536) %i.l)
  br i1 %i.m, label %bb.e, label %_RNvXs7_NtCsa9sSWSfjDbm_4jiff3fmtINtB5_11StdFmtWriteQNtNtCs3oUPovFnLWP_4core3fmt9FormatterENtB5_5Write9write_strB7_.exit

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !36
  store i8 3, ptr %i.a, align 8, !noalias !36
  %i.n = call noundef ptr @_RNvXs0_NtNtCsa9sSWSfjDbm_4jiff5error3fmtNtB7_5ErrorINtNtCs3oUPovFnLWP_4core7convert4FromNtB5_5ErrorE4from(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %i.a) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !36
  br label %_RNvXs7_NtCsa9sSWSfjDbm_4jiff3fmtINtB5_11StdFmtWriteQNtNtCs3oUPovFnLWP_4core3fmt9FormatterENtB5_5Write9write_strB7_.exit

_RNvXs7_NtCsa9sSWSfjDbm_4jiff3fmtINtB5_11StdFmtWriteQNtNtCs3oUPovFnLWP_4core3fmt9FormatterENtB5_5Write9write_strB7_.exit: ; preds = %bb.d, %bb.e
  %.sroa.3.0.i = phi ptr [ %i.n, %bb.e ], [ undef, %bb.d ]
  %.sroa.0.0.i = phi i64 [ 1, %bb.e ], [ 0, %bb.d ]
  %i.o = insertvalue { i64, ptr } poison, i64 %.sroa.0.0.i, 0
  %i.p = insertvalue { i64, ptr } %i.o, ptr %.sroa.3.0.i, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret { i64, ptr } %i.p
}

; Function Attrs: nonlazybind uwtable
define hidden { i64, ptr } @_RINvMs1_NtNtNtCsa9sSWSfjDbm_4jiff3fmt8friendly7printerNtB6_11SpanPrinter14print_durationINtBa_11StdFmtWriteQNtNtCs3oUPovFnLWP_4core3fmt9FormatterEEBc_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %1, ptr noalias nofree noundef align 8 dereferenceable(24) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 8 uses
  %i.c = alloca [194 x i8], align 1               ; 3 uses
  %i.d = alloca [8 x i8], align 8                 ; 2 uses
  store ptr %2, ptr %i.d, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.c, ptr %i.b, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 194, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  store i16 0, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 17
  %i.h = load i8, ptr %i.g, align 1, !range !35, !noundef !4
  %i.i = trunc nuw i8 %i.h to i1
  br i1 %i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @_RNvMs1_NtNtNtCsa9sSWSfjDbm_4jiff3fmt8friendly7printerNtB5_11SpanPrinter33print_signed_duration_designators(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %1, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  call void @_RNvMs1_NtNtNtCsa9sSWSfjDbm_4jiff3fmt8friendly7printerNtB5_11SpanPrinter25print_signed_duration_hms(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %1, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.j = load ptr, ptr %i.b, align 8, !nonnull !4, !noundef !4
  %i.k = load i16, ptr %i.f, align 8, !noundef !4
  %i.l = zext i16 %i.k to i64
  %i.m = call noundef zeroext i1 @_RNvXNtCs3oUPovFnLWP_4core3fmtQNtB2_9FormatterNtB2_5Write9write_strCsa9sSWSfjDbm_4jiff(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.d, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.j, i64 noundef range(i64 0, 65536) %i.l)
  br i1 %i.m, label %bb.e, label %_RNvXs7_NtCsa9sSWSfjDbm_4jiff3fmtINtB5_11StdFmtWriteQNtNtCs3oUPovFnLWP_4core3fmt9FormatterENtB5_5Write9write_strB7_.exit

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !40
  store i8 3, ptr %i.a, align 8, !noalias !40
  %i.n = call noundef ptr @_RNvXs0_NtNtCsa9sSWSfjDbm_4jiff5error3fmtNtB7_5ErrorINtNtCs3oUPovFnLWP_4core7convert4FromNtB5_5ErrorE4from(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %i.a) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !40
  br label %_RNvXs7_NtCsa9sSWSfjDbm_4jiff3fmtINtB5_11StdFmtWriteQNtNtCs3oUPovFnLWP_4core3fmt9FormatterENtB5_5Write9write_strB7_.exit

_RNvXs7_NtCsa9sSWSfjDbm_4jiff3fmtINtB5_11StdFmtWriteQNtNtCs3oUPovFnLWP_4core3fmt9FormatterENtB5_5Write9write_strB7_.exit: ; preds = %bb.d, %bb.e
  %.sroa.3.0.i = phi ptr [ %i.n, %bb.e ], [ undef, %bb.d ]
  %.sroa.0.0.i = phi i64 [ 1, %bb.e ], [ 0, %bb.d ]
  %i.o = insertvalue { i64, ptr } poison, i64 %.sroa.0.0.i, 0
  %i.p = insertvalue { i64, ptr } %i.o, ptr %.sroa.3.0.i, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret { i64, ptr } %i.p
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs_NtNtCsb09rMIQFAXO_9jiff_core2tz5posixNtB5_8TimeZone5parseReECsa9sSWSfjDbm_4jiff(ptr dead_on_unwind noalias nofree noundef writable sret([80 x i8]) align 8 captures(none) dereferenceable(80) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %1, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %2, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 0, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i8 1, ptr %i.d, align 8
  call void @_RNvMs5_NtNtCsb09rMIQFAXO_9jiff_core2tz5posixNtB5_6Parser5parse(ptr noalias nofree noundef nonnull sret([80 x i8]) align 8 captures(none) dereferenceable(80) %0, ptr noundef nonnull align 8 %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden noundef i64 @_RINvNtCs1xwejQucwHj_5alloc4sync11data_offsetNtNtNtCsb09rMIQFAXO_9jiff_core2tz4tzif18MaybeNamedTimeZoneECsa9sSWSfjDbm_4jiff(ptr nofree noundef readnone captures(none) %0) unnamed_addr #1 {
bb.a:
  ret i64 16
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden noundef i64 @_RINvNtCs1xwejQucwHj_5alloc4sync11data_offsetNtNtNtCsb09rMIQFAXO_9jiff_core2tz5posix8TimeZoneECsa9sSWSfjDbm_4jiff(ptr nofree noundef readnone captures(none) %0) unnamed_addr #1 {
bb.a:
  ret i64 16
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden noundef i64 @_RINvNtCs1xwejQucwHj_5alloc4sync11data_offseteECsa9sSWSfjDbm_4jiff(ptr nofree noundef readnone captures(none) %0, i64 noundef %1) unnamed_addr #1 {
bb.a:
  ret i64 16
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtNtCsa9sSWSfjDbm_4jiff2tz2db12concatenated5inner5NamesEEB17_(ptr noalias nofree noundef nonnull align 8 dereferenceable(112) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !16, !noundef !4
  %1 = icmp eq i64 %i.a, 0
  br i1 %1, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtNtCsa9sSWSfjDbm_4jiff2tz2db12concatenated5inner5NamesEBL_.exit, %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecINtNtB7_4sync3ArceEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCsa9sSWSfjDbm_4jiff(ptr noalias nofree noundef nonnull align 8 dereferenceable(88) %i.b)
          to label %bb.e unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.c = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecINtNtB7_4sync3ArceEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCsa9sSWSfjDbm_4jiff(ptr noalias nofree noundef nonnull align 8 dereferenceable(88) %i.b)
          to label %.body.i.i.i.i unwind label %bb.f

bb.e:                                             ; preds = %bb.c
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecINtNtB7_4sync3ArceEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCsa9sSWSfjDbm_4jiff(ptr noalias nofree noundef nonnull align 8 dereferenceable(88) %i.b)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtBG_4sync3ArceEEECsa9sSWSfjDbm_4jiff.exit.i.i.i.i unwind label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.d = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #22
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.e = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i.i

.body.i.i.i.i:                                    ; preds = %bb.g, %bb.d
  %eh.lpad-body.i.i.i.i = phi { ptr, i32 } [ %i.e, %bb.g ], [ %i.c, %bb.d ]
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 48
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECsa9sSWSfjDbm_4jiff(ptr noalias nofree noundef align 8 dereferenceable(24) %i.f) #23
          to label %common.resume.i.i.i.i unwind label %bb.j

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtBG_4sync3ArceEEECsa9sSWSfjDbm_4jiff.exit.i.i.i.i: ; preds = %bb.e
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCsa9sSWSfjDbm_4jiff(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtNtCsa9sSWSfjDbm_4jiff2tz2db12concatenated5inner5NamesEBL_.exit unwind label %bb.h

bb.h:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtBG_4sync3ArceEEECsa9sSWSfjDbm_4jiff.exit.i.i.i.i
  %i.h = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCsa9sSWSfjDbm_4jiff(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %common.resume.i.i.i.i unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.i = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #22
  unreachable

common.resume.i.i.i.i:                            ; preds = %bb.h, %.body.i.i.i.i
  %common.resume.op.i.i.i.i = phi { ptr, i32 } [ %i.h, %bb.h ], [ %eh.lpad-body.i.i.i.i, %.body.i.i.i.i ]
  resume { ptr, i32 } %common.resume.op.i.i.i.i

bb.j:                                             ; preds = %.body.i.i.i.i
  %i.j = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #22
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtNtCsa9sSWSfjDbm_4jiff2tz2db12concatenated5inner5NamesEBL_.exit: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtBG_4sync3ArceEEECsa9sSWSfjDbm_4jiff.exit.i.i.i.i
  tail call void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCsa9sSWSfjDbm_4jiff(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g)
  br label %bb.b
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtNtCsa9sSWSfjDbm_4jiff2tz2db8zoneinfo5inner13ZoneInfoNamesEEB17_(ptr noalias nofree noundef nonnull align 8 dereferenceable(104) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !16, !noundef !4
  %1 = icmp eq i64 %i.a, 0
  br i1 %1, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtNtCsa9sSWSfjDbm_4jiff2tz2db8zoneinfo5inner13ZoneInfoNamesEBL_.exit, %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCsa9sSWSfjDbm_4jiff(ptr noalias nofree noundef nonnull align 8 dereferenceable(80) %i.b)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringECsa9sSWSfjDbm_4jiff.exit.i.i.i.i.i unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.c = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCsa9sSWSfjDbm_4jiff(ptr noalias nofree noundef nonnull align 8 dereferenceable(80) %i.b)
          to label %.body.i.i.i.i unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.d = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #22
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringECsa9sSWSfjDbm_4jiff.exit.i.i.i.i.i: ; preds = %bb.c
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCsa9sSWSfjDbm_4jiff(ptr noalias nofree noundef nonnull align 8 dereferenceable(80) %i.b)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsaL1QbXo9JQH_3std4path7PathBufECsa9sSWSfjDbm_4jiff.exit.i.i.i.i unwind label %bb.f

bb.f:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringECsa9sSWSfjDbm_4jiff.exit.i.i.i.i.i
  %i.e = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i.i

.body.i.i.i.i:                                    ; preds = %bb.f, %bb.d
  %eh.lpad-body.i.i.i.i = phi { ptr, i32 } [ %i.e, %bb.f ], [ %i.c, %bb.d ]
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 48
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtNtNtCsa9sSWSfjDbm_4jiff2tz2db8zoneinfo5inner12ZoneInfoNameEEB1i_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.f) #23
          to label %common.resume.i.i.i.i unwind label %bb.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsaL1QbXo9JQH_3std4path7PathBufECsa9sSWSfjDbm_4jiff.exit.i.i.i.i: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringECsa9sSWSfjDbm_4jiff.exit.i.i.i.i.i
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtNtNtNtCsa9sSWSfjDbm_4jiff2tz2db8zoneinfo5inner12ZoneInfoNameENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBP_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtNtCsa9sSWSfjDbm_4jiff2tz2db8zoneinfo5inner13ZoneInfoNamesEBL_.exit unwind label %bb.g

bb.g:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsaL1QbXo9JQH_3std4path7PathBufECsa9sSWSfjDbm_4jiff.exit.i.i.i.i
  %i.h = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtNtNtNtNtCsa9sSWSfjDbm_4jiff2tz2db8zoneinfo5inner12ZoneInfoNameENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBW_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %common.resume.i.i.i.i unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.i = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #22
  unreachable

common.resume.i.i.i.i:                            ; preds = %bb.g, %.body.i.i.i.i
  %common.resume.op.i.i.i.i = phi { ptr, i32 } [ %i.h, %bb.g ], [ %eh.lpad-body.i.i.i.i, %.body.i.i.i.i ]
  resume { ptr, i32 } %common.resume.op.i.i.i.i

bb.i:                                             ; preds = %.body.i.i.i.i
  %i.j = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #22
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtNtCsa9sSWSfjDbm_4jiff2tz2db8zoneinfo5inner13ZoneInfoNamesEBL_.exit: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsaL1QbXo9JQH_3std4path7PathBufECsa9sSWSfjDbm_4jiff.exit.i.i.i.i
  tail call void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtNtNtNtNtCsa9sSWSfjDbm_4jiff2tz2db8zoneinfo5inner12ZoneInfoNameENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBW_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g)
  br label %bb.b
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtNtNtCsa9sSWSfjDbm_4jiff2tz2db8zoneinfo5inner12ZoneInfoNameEEB1i_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtNtNtNtCsa9sSWSfjDbm_4jiff2tz2db8zoneinfo5inner12ZoneInfoNameENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBP_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtNtNtNtNtCsa9sSWSfjDbm_4jiff2tz2db8zoneinfo5inner12ZoneInfoNameENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBW_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVecNtNtNtNtNtCsa9sSWSfjDbm_4jiff2tz2db8zoneinfo5inner12ZoneInfoNameEEB1p_.exit unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtNtNtNtNtCsa9sSWSfjDbm_4jiff2tz2db8zoneinfo5inner12ZoneInfoNameENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBW_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
  ret void

bb.d:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #22
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVecNtNtNtNtNtCsa9sSWSfjDbm_4jiff2tz2db8zoneinfo5inner12ZoneInfoNameEEB1p_.exit: ; preds = %bb.b
  resume { ptr, i32 } %i.a
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECsa9sSWSfjDbm_4jiff(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCsa9sSWSfjDbm_4jiff(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCsa9sSWSfjDbm_4jiff(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVechEECsa9sSWSfjDbm_4jiff.exit unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCsa9sSWSfjDbm_4jiff(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
  ret void

bb.d:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #22
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVechEECsa9sSWSfjDbm_4jiff.exit: ; preds = %bb.b
  resume { ptr, i32 } %i.a
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison6rwlock6RwLockNtNtNtNtNtCsa9sSWSfjDbm_4jiff2tz2db12concatenated5inner11CachedZonesEEB1C_(ptr noalias nofree noundef nonnull align 8 dereferenceable(104) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtNtNtNtCsa9sSWSfjDbm_4jiff2tz2db12concatenated5inner14CachedTimeZoneENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBP_(ptr noalias nofree noundef nonnull align 8 dereferenceable(88) %i.a)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtNtNtNtNtCsa9sSWSfjDbm_4jiff2tz2db12concatenated5inner14CachedTimeZoneENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBW_(ptr noalias nofree noundef nonnull align 8 dereferenceable(88) %i.a)
          to label %.body.i.i unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtNtNtNtNtCsa9sSWSfjDbm_4jiff2tz2db12concatenated5inner14CachedTimeZoneENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBW_(ptr noalias nofree noundef nonnull align 8 dereferenceable(88) %i.a)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtNtNtCsa9sSWSfjDbm_4jiff2tz2db12concatenated5inner14CachedTimeZoneEEB1i_.exit.i.i unwind label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #22
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.d = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

.body.i.i:                                        ; preds = %bb.e, %bb.b
  %eh.lpad-body.i.i = phi { ptr, i32 } [ %i.d, %bb.e ], [ %i.b, %bb.b ]
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECsa9sSWSfjDbm_4jiff(ptr noalias nofree noundef align 8 dereferenceable(24) %i.e) #23
          to label %.body2.i.i unwind label %bb.l

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtNtNtCsa9sSWSfjDbm_4jiff2tz2db12concatenated5inner14CachedTimeZoneEEB1i_.exit.i.i: ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCsa9sSWSfjDbm_4jiff(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %bb.g unwind label %bb.f

bb.f:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtNtNtCsa9sSWSfjDbm_4jiff2tz2db12concatenated5inner14CachedTimeZoneEEB1i_.exit.i.i
  %i.g = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCsa9sSWSfjDbm_4jiff(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %.body2.i.i unwind label %bb.h

bb.g:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtNtNtCsa9sSWSfjDbm_4jiff2tz2db12concatenated5inner14CachedTimeZoneEEB1i_.exit.i.i
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCsa9sSWSfjDbm_4jiff(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECsa9sSWSfjDbm_4jiff.exit.i.i unwind label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #22
  unreachable

.body2.i.i:                                       ; preds = %bb.i, %bb.f, %.body.i.i
  %.pn.i.i = phi { ptr, i32 } [ %eh.lpad-body.i.i, %.body.i.i ], [ %i.j, %bb.i ], [ %i.g, %bb.f ]
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 64
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECsa9sSWSfjDbm_4jiff(ptr noalias nofree noundef align 8 dereferenceable(24) %i.i) #23
          to label %common.resume.i.i unwind label %bb.l

bb.i:                                             ; preds = %bb.g
  %i.j = landingpad { ptr, i32 }
          cleanup
  br label %.body2.i.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECsa9sSWSfjDbm_4jiff.exit.i.i: ; preds = %bb.g
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCsa9sSWSfjDbm_4jiff(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.k)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_4cell10UnsafeCellNtNtNtNtNtCsa9sSWSfjDbm_4jiff2tz2db12concatenated5inner11CachedZonesEEB1a_.exit unwind label %bb.j

bb.j:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECsa9sSWSfjDbm_4jiff.exit.i.i
  %i.l = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCsa9sSWSfjDbm_4jiff(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.k)
          to label %common.resume.i.i unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.m = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
end_hunk_0
begin_hunk_1_@_RNvMs1_NtNtNtCsa9sSWSfjDbm_4jiff3fmt8friendly7printerNtB5_11SpanPrinter33print_span_designators_fractional:switch.lookup
  %i.cx = icmp eq i64 %.sroa.40.0.copyload, 0     ; 2 uses
  %or.cond4.i.i307 = select i1 %or.cond22.i.i306, i1 %i.cx, i1 false
  %.sroa.24509.60.insert.ext = select i1 %or.cond4.i.i307, i32 0, i32 %.pre-phi694 ; 2 uses
  %i.cy = icmp eq i32 %.sroa.24509.60.insert.ext, 254
  br i1 %i.cy, label %bb.at, label %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultNtNtCsa9sSWSfjDbm_4jiff4span4SpanNtNtBL_5error5ErrorE6expectBL_.exit374, !prof !56

bb.at:                                            ; preds = %_RNvMs4_NtCsa9sSWSfjDbm_4jiff4spanNtB5_4Span10only_lower.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !449
  %i.cz = inttoptr i64 %.sroa.0.2688 to ptr
  store ptr %i.cz, ptr %i.a, align 8, !noalias !449
  invoke void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @36, i64 noundef 31, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @6, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @37) #20
          to label %bb.ax unwind label %bb.au, !noalias !455

bb.au:                                            ; preds = %bb.at
  %i.da = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !456), !noalias !370
  %i.db = load ptr, ptr %i.a, align 8, !alias.scope !459, !noalias !449, !noundef !4 ; 2 uses
  %i.dc = icmp eq ptr %i.db, null
  br i1 %i.dc, label %common.resume, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.dd = atomicrmw sub ptr %i.db, i64 1 release, align 8, !noalias !462
  %i.de = icmp eq i64 %i.dd, 1
  br i1 %i.de, label %bb.aw, label %common.resume

bb.aw:                                            ; preds = %bb.av
  fence acquire, !noalias !467
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtCsa9sSWSfjDbm_4jiff5error10ErrorInnerE9drop_slowBK_(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(8) %i.a) #21
          to label %common.resume unwind label %bb.ay, !noalias !455, !inline_history !108

bb.ax:                                            ; preds = %bb.at
  unreachable

bb.ay:                                            ; preds = %bb.aw
  %i.df = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #22, !noalias !455
  unreachable

_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultNtNtCsa9sSWSfjDbm_4jiff4span4SpanNtNtBL_5error5ErrorE6expectBL_.exit374: ; preds = %_RNvMs4_NtCsa9sSWSfjDbm_4jiff4spanNtB5_4Span10only_lower.exit
  %i.dg = select i1 %i.ct, i1 %i.cu, i1 false
  %i.dh = select i1 %i.dg, i1 %i.cv, i1 false
  %i.di = select i1 %i.dh, i1 %i.cw, i1 false
  %i.dj = select i1 %i.di, i1 %i.t, i1 false
  %i.dk = select i1 %i.dj, i1 %i.cx, i1 false
  %.sroa.16.60.insert.ext.i = select i1 %i.dk, i32 0, i32 %.sroa.24509.60.insert.ext
  %.sroa.90.61.extract.shift245 = and i32 %.sroa.90.3, -256
  %.sroa.16.60.insert.insert.i = or disjoint i32 %.sroa.16.60.insert.ext.i, %.sroa.90.61.extract.shift245
  %i.dl = and i16 %.sroa.75.3, -961
  store i64 %.sroa.0.2688, ptr %i.h, align 8, !alias.scope !468
  %.sroa.18.0..sroa_idx13 = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store i64 %.sroa.18.1671680, ptr %.sroa.18.0..sroa_idx13, align 8, !alias.scope !468
  %.sroa.25.0..sroa_idx33 = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store i64 %.sroa.25.0656665682, ptr %.sroa.25.0..sroa_idx33, align 8, !alias.scope !468
  %.sroa.32.0..sroa_idx53 = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  store i64 %.sroa.32.0.copyload, ptr %.sroa.32.0..sroa_idx53, align 8, !alias.scope !468
  %.sroa.40.0..sroa_idx73 = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  store i64 %.sroa.40.0.copyload, ptr %.sroa.40.0..sroa_idx73, align 8, !alias.scope !468
  %.sroa.48.0..sroa_idx93 = getelementptr inbounds nuw i8, ptr %i.h, i64 40
  store i32 0, ptr %.sroa.48.0..sroa_idx93, align 8, !alias.scope !468
  %.sroa.55.0..sroa_idx113 = getelementptr inbounds nuw i8, ptr %i.h, i64 44
  store i32 0, ptr %.sroa.55.0..sroa_idx113, align 4, !alias.scope !468
  %.sroa.62.0..sroa_idx133 = getelementptr inbounds nuw i8, ptr %i.h, i64 48
  %.sroa.62.sroa.18.0.insert.ext261 = zext i32 %.sroa.62.sroa.18.3 to i64
  %.sroa.62.sroa.18.0.insert.shift262 = shl nuw i64 %.sroa.62.sroa.18.0.insert.ext261, 32
  store i64 %.sroa.62.sroa.18.0.insert.shift262, ptr %.sroa.62.0..sroa_idx133, align 8, !alias.scope !468
  %.sroa.75.0..sroa_idx158 = getelementptr inbounds nuw i8, ptr %i.h, i64 56
  store i16 %i.dl, ptr %.sroa.75.0..sroa_idx158, align 8, !alias.scope !468
  %.sroa.83.0..sroa_idx178 = getelementptr inbounds nuw i8, ptr %i.h, i64 58
  store i16 0, ptr %.sroa.83.0..sroa_idx178, align 2, !alias.scope !468
  %.sroa.90.0..sroa_idx198 = getelementptr inbounds nuw i8, ptr %i.h, i64 60
  store i32 %.sroa.16.60.insert.insert.i, ptr %.sroa.90.0..sroa_idx198, align 4, !alias.scope !468
  call fastcc void @_RNvMs1_NtNtNtCsa9sSWSfjDbm_4jiff3fmt8friendly7printerNtB5_11SpanPrinter35print_span_designators_non_fraction(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.i, ptr noalias nofree noundef align 8 dereferenceable(24) %2)
  %i.dm = call fastcc { i64, i32 } @_RNvMs1_NtCsa9sSWSfjDbm_4jiff4spanNtB5_4Span21to_invariant_duration(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.h) #25 ; 2 uses
  %i.dn = extractvalue { i64, i32 } %i.dm, 0
  %i.do = extractvalue { i64, i32 } %i.dm, 1
  %.sroa.01.0 = tail call i64 @llvm.abs.i64(i64 %i.dn, i1 false) ; 2 uses
  %.sroa.02.0 = tail call i32 @llvm.abs.i32(i32 %i.do, i1 false) ; 4 uses
  %i.dp = icmp ult i32 %.sroa.02.0, 1000000000
  br i1 %i.dp, label %_RNvMNtCs3oUPovFnLWP_4core4timeNtB2_8Duration3new.exit, label %bb.az

bb.az:                                            ; preds = %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultNtNtCsa9sSWSfjDbm_4jiff4span4SpanNtNtBL_5error5ErrorE6expectBL_.exit374
  %i.dq = udiv i32 %.sroa.02.0, 1000000000
  %i.dr = zext nneg i32 %i.dq to i64
  %i.ds = add nuw i64 %.sroa.01.0, %i.dr
  %i.dt = urem i32 %.sroa.02.0, 1000000000
  br label %_RNvMNtCs3oUPovFnLWP_4core4timeNtB2_8Duration3new.exit

_RNvMNtCs3oUPovFnLWP_4core4timeNtB2_8Duration3new.exit: ; preds = %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultNtNtCsa9sSWSfjDbm_4jiff4span4SpanNtNtBL_5error5ErrorE6expectBL_.exit374, %bb.az
  %.sroa.3.0.i = phi i32 [ %i.dt, %bb.az ], [ %.sroa.02.0, %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultNtNtCsa9sSWSfjDbm_4jiff4span4SpanNtNtBL_5error5ErrorE6expectBL_.exit374 ]
  %.sroa.0.0.i = phi i64 [ %i.ds, %bb.az ], [ %.sroa.01.0, %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultNtNtCsa9sSWSfjDbm_4jiff4span4SpanNtNtBL_5error5ErrorE6expectBL_.exit374 ]
  tail call fastcc void @_RNvMs4_NtNtNtCsa9sSWSfjDbm_4jiff3fmt8friendly7printerNtB5_16DesignatorWriter25write_fractional_duration(ptr noalias nofree noundef align 8 dereferenceable(24) %2, i8 noundef %1, i64 %.sroa.0.0.i, i32 %.sroa.3.0.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMs1_NtNtNtCsa9sSWSfjDbm_4jiff3fmt8friendly7printerNtB5_11SpanPrinter35print_span_designators_non_fraction(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %0, ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.b = load i16, ptr %i.a, align 8, !noundef !4 ; 10 uses
  %i.c = and i16 %i.b, 512
  %.not = icmp eq i16 %i.c, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.c, %bb.a
  %i.d = and i16 %i.b, 256
  %.not1 = icmp eq i16 %i.d, 0
  br i1 %.not1, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 58
  %i.f = load i16, ptr %i.e, align 2, !noundef !4
  %i.g = zext i16 %i.f to i64
  tail call fastcc void @_RNvMs4_NtNtNtCsa9sSWSfjDbm_4jiff3fmt8friendly7printerNtB5_16DesignatorWriter5write(ptr noalias nofree noundef align 8 dereferenceable(24) %1, i8 noundef 9, i64 noundef %i.g) #21
  br label %bb.b

bb.d:                                             ; preds = %bb.e, %bb.b
  %i.h = and i16 %i.b, 128
  %.not2 = icmp eq i16 %i.h, 0
  br i1 %.not2, label %bb.f, label %bb.g

bb.e:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.j = load i32, ptr %i.i, align 8, !noundef !4
  %i.k = zext i32 %i.j to i64
  tail call fastcc void @_RNvMs4_NtNtNtCsa9sSWSfjDbm_4jiff3fmt8friendly7printerNtB5_16DesignatorWriter5write(ptr noalias nofree noundef align 8 dereferenceable(24) %1, i8 noundef 8, i64 noundef %i.k) #21
  br label %bb.d

bb.f:                                             ; preds = %bb.g, %bb.d
  %i.l = and i16 %i.b, 64
  %.not3 = icmp eq i16 %i.l, 0
  br i1 %.not3, label %bb.h, label %bb.i

bb.g:                                             ; preds = %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.n = load i32, ptr %i.m, align 4, !noundef !4
  %i.o = zext i32 %i.n to i64
  tail call fastcc void @_RNvMs4_NtNtNtCsa9sSWSfjDbm_4jiff3fmt8friendly7printerNtB5_16DesignatorWriter5write(ptr noalias nofree noundef align 8 dereferenceable(24) %1, i8 noundef 7, i64 noundef %i.o) #21
  br label %bb.f

bb.h:                                             ; preds = %bb.i, %bb.f
  %i.p = and i16 %i.b, 32
  %.not4 = icmp eq i16 %i.p, 0
  br i1 %.not4, label %bb.j, label %bb.k

bb.i:                                             ; preds = %bb.f
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.r = load i32, ptr %i.q, align 8, !noundef !4
  %i.s = zext i32 %i.r to i64
  tail call fastcc void @_RNvMs4_NtNtNtCsa9sSWSfjDbm_4jiff3fmt8friendly7printerNtB5_16DesignatorWriter5write(ptr noalias nofree noundef align 8 dereferenceable(24) %1, i8 noundef 6, i64 noundef %i.s) #21
  br label %bb.h

bb.j:                                             ; preds = %bb.k, %bb.h
  %i.t = and i16 %i.b, 16
  %.not5 = icmp eq i16 %i.t, 0
  br i1 %.not5, label %bb.l, label %bb.m

bb.k:                                             ; preds = %bb.h
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.v = load i32, ptr %i.u, align 4, !noundef !4
  %i.w = zext i32 %i.v to i64
  tail call fastcc void @_RNvMs4_NtNtNtCsa9sSWSfjDbm_4jiff3fmt8friendly7printerNtB5_16DesignatorWriter5write(ptr noalias nofree noundef align 8 dereferenceable(24) %1, i8 noundef 5, i64 noundef %i.w) #21
  br label %bb.j

bb.l:                                             ; preds = %bb.m, %bb.j
  %i.x = and i16 %i.b, 8
  %.not6 = icmp eq i16 %i.x, 0
  br i1 %.not6, label %bb.n, label %bb.o

bb.m:                                             ; preds = %bb.j
  %i.y = load i64, ptr %0, align 8, !noundef !4
  tail call fastcc void @_RNvMs4_NtNtNtCsa9sSWSfjDbm_4jiff3fmt8friendly7printerNtB5_16DesignatorWriter5write(ptr noalias nofree noundef align 8 dereferenceable(24) %1, i8 noundef 4, i64 noundef %i.y) #21
  br label %bb.l

bb.n:                                             ; preds = %bb.o, %bb.l
  %i.z = and i16 %i.b, 4
  %.not7 = icmp eq i16 %i.z, 0
  br i1 %.not7, label %bb.p, label %bb.q

bb.o:                                             ; preds = %bb.l
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ab = load i64, ptr %i.aa, align 8, !noundef !4
  tail call fastcc void @_RNvMs4_NtNtNtCsa9sSWSfjDbm_4jiff3fmt8friendly7printerNtB5_16DesignatorWriter5write(ptr noalias nofree noundef align 8 dereferenceable(24) %1, i8 noundef 3, i64 noundef %i.ab) #21
  br label %bb.n

bb.p:                                             ; preds = %bb.q, %bb.n
  %i.ac = and i16 %i.b, 2
  %.not8 = icmp eq i16 %i.ac, 0
  br i1 %.not8, label %bb.r, label %bb.s

bb.q:                                             ; preds = %bb.n
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ae = load i64, ptr %i.ad, align 8, !noundef !4
  tail call fastcc void @_RNvMs4_NtNtNtCsa9sSWSfjDbm_4jiff3fmt8friendly7printerNtB5_16DesignatorWriter5write(ptr noalias nofree noundef align 8 dereferenceable(24) %1, i8 noundef 2, i64 noundef %i.ae) #21
  br label %bb.p

bb.r:                                             ; preds = %bb.s, %bb.p
  %2 = and i16 %i.b, 1
  %.not9 = icmp eq i16 %2, 0
  br i1 %.not9, label %bb.t, label %bb.u

bb.s:                                             ; preds = %bb.p
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ag = load i64, ptr %i.af, align 8, !noundef !4
  tail call fastcc void @_RNvMs4_NtNtNtCsa9sSWSfjDbm_4jiff3fmt8friendly7printerNtB5_16DesignatorWriter5write(ptr noalias nofree noundef align 8 dereferenceable(24) %1, i8 noundef 1, i64 noundef %i.ag) #21
  br label %bb.r

bb.t:                                             ; preds = %bb.u, %bb.r
  ret void

bb.u:                                             ; preds = %bb.r
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ai = load i64, ptr %i.ah, align 8, !noundef !4
  tail call fastcc void @_RNvMs4_NtNtNtCsa9sSWSfjDbm_4jiff3fmt8friendly7printerNtB5_16DesignatorWriter5write(ptr noalias nofree noundef align 8 dereferenceable(24) %1, i8 noundef 0, i64 noundef %i.ai) #21
  br label %bb.t
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs1_NtNtNtCsa9sSWSfjDbm_4jiff3fmt8friendly7printerNtB5_11SpanPrinter35print_unsigned_duration_designators(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %1, ptr noalias nofree noundef align 8 dereferenceable(24) %2) unnamed_addr #0 {
_RNvMs4_NtNtNtCsa9sSWSfjDbm_4jiff3fmt8friendly7printerNtB5_16DesignatorWriter3new.exit:
  %i.a = alloca [24 x i8], align 8                ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !470)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !473)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 10
  %i.c = load i8, ptr %i.b, align 2, !range !62, !alias.scope !473, !noalias !475, !noundef !4
  %i.d = icmp eq i8 %i.c, 2                       ; 3 uses
  %spec.select = select i1 %i.d, i8 43, i8 45
  %spec.select3 = select i1 %i.d, i8 0, i8 2
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.f = load i8, ptr %i.e, align 4, !range !35, !alias.scope !473, !noalias !475, !noundef !4
  %i.g = trunc nuw i8 %i.f to i1
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 13
  %i.i = load i8, ptr %i.h, align 1, !alias.scope !473, !noalias !475
  %.sroa.0.0.i = select i1 %i.g, i8 %i.i, i8 0
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 14
  %i.k = load i8, ptr %i.j, align 2, !range !35, !alias.scope !473, !noalias !475, !noundef !4
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 15
  %i.m = load i8, ptr %i.l, align 1, !alias.scope !473, !noalias !475
  store ptr %0, ptr %i.a, align 8, !alias.scope !470, !noalias !477
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %2, ptr %i.n, align 8, !alias.scope !470, !noalias !477
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i8 %spec.select3, ptr %i.o, align 8, !alias.scope !470, !noalias !477
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 17
  store i8 %spec.select, ptr %i.p, align 1, !alias.scope !470, !noalias !477
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 18
  store i8 %.sroa.0.0.i, ptr %i.q, align 2, !alias.scope !470, !noalias !477
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 19
  store i8 %i.k, ptr %i.r, align 1, !alias.scope !470, !noalias !477
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 20
  store i8 %i.m, ptr %i.s, align 4, !alias.scope !470, !noalias !477
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 21 ; 2 uses
  store i8 0, ptr %i.t, align 1, !alias.scope !470, !noalias !477
  br i1 %i.d, label %bb.a, label %_RNvMs4_NtNtNtCsa9sSWSfjDbm_4jiff3fmt8friendly7printerNtB5_16DesignatorWriter23maybe_write_prefix_sign.exit

bb.a:                                             ; preds = %_RNvMs4_NtNtNtCsa9sSWSfjDbm_4jiff3fmt8friendly7printerNtB5_16DesignatorWriter3new.exit
  tail call void @llvm.experimental.noalias.scope.decl(metadata !478)
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.v = load i64, ptr %i.u, align 8, !alias.scope !478, !noalias !481, !noundef !4
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.x = load i16, ptr %i.w, align 8, !alias.scope !478, !noalias !481, !noundef !4 ; 2 uses
  %i.y = zext i16 %i.x to i64                     ; 2 uses
  %.not.i.i = icmp eq i64 %i.v, %i.y
  br i1 %.not.i.i, label %bb.b, label %_RNvMs0_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB5_14BorrowedBuffer16write_ascii_char.exit.i, !prof !56

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs3oUPovFnLWP_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @14, i64 noundef 43, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @15) #24, !noalias !484
  unreachable

_RNvMs0_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB5_14BorrowedBuffer16write_ascii_char.exit.i: ; preds = %bb.a
  %i.z = load ptr, ptr %2, align 8, !alias.scope !478, !noalias !481, !nonnull !4, !noundef !4
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.y
  store i8 43, ptr %i.aa, align 1, !noalias !484
  %i.ab = add i16 %i.x, 1
  store i16 %i.ab, ptr %i.w, align 8, !alias.scope !478, !noalias !481
  br label %_RNvMs4_NtNtNtCsa9sSWSfjDbm_4jiff3fmt8friendly7printerNtB5_16DesignatorWriter23maybe_write_prefix_sign.exit

_RNvMs4_NtNtNtCsa9sSWSfjDbm_4jiff3fmt8friendly7printerNtB5_16DesignatorWriter23maybe_write_prefix_sign.exit: ; preds = %_RNvMs4_NtNtNtCsa9sSWSfjDbm_4jiff3fmt8friendly7printerNtB5_16DesignatorWriter3new.exit, %_RNvMs0_NtNtCsa9sSWSfjDbm_4jiff3fmt6bufferNtB5_14BorrowedBuffer16write_ascii_char.exit.i
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 9
  %.val = load i8, ptr %i.ac, align 1, !range !213, !noundef !4
  %.val1 = load i64, ptr %1, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val2 = load i32, ptr %i.ad, align 8
  call fastcc void @_RNvMs1_NtNtNtCsa9sSWSfjDbm_4jiff3fmt8friendly7printerNtB5_11SpanPrinter26print_duration_designators(i8 %.val, i64 %.val1, i32 %.val2, ptr noalias nofree noundef align 8 dereferenceable(24) %i.a)
  %i.ae = load i8, ptr %i.t, align 1, !range !35, !alias.scope !485, !noundef !4
  %i.af = trunc nuw i8 %i.ae to i1
  br i1 %i.af, label %_RNvMs4_NtNtNtCsa9sSWSfjDbm_4jiff3fmt8friendly7printerNtB5_16DesignatorWriter16maybe_write_zero.exit, label %bb.c, !prof !217

bb.c:                                             ; preds = %_RNvMs4_NtNtNtCsa9sSWSfjDbm_4jiff3fmt8friendly7printerNtB5_16DesignatorWriter23maybe_write_prefix_sign.exit
  call fastcc void @_RNvNvMs4_NtNtNtCsa9sSWSfjDbm_4jiff3fmt8friendly7printerNtB7_16DesignatorWriter16maybe_write_zero3imp(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(24) %i.a) #21
  br label %_RNvMs4_NtNtNtCsa9sSWSfjDbm_4jiff3fmt8friendly7printerNtB5_16DesignatorWriter16maybe_write_zero.exit

_RNvMs4_NtNtNtCsa9sSWSfjDbm_4jiff3fmt8friendly7printerNtB5_16DesignatorWriter16maybe_write_zero.exit: ; preds = %_RNvMs4_NtNtNtCsa9sSWSfjDbm_4jiff3fmt8friendly7printerNtB5_16DesignatorWriter23maybe_write_prefix_sign.exit, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMs4_NtNtNtCsa9sSWSfjDbm_4jiff3fmt8friendly7printerNtB5_16DesignatorWriter25write_fractional_duration(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(24) %0, i8 noundef range(i8 0, 5) %1, i64 %.0.val, i32 %.8.val) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [1 x i8], align 1                 ; 3 uses
  %i.b = alloca [1 x i8], align 1                 ; 3 uses
  %i.c = alloca [16 x i8], align 8                ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 18
  %i.e = load i8, ptr %i.d, align 2, !noundef !4
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 19
  %i.g = load i8, ptr %i.f, align 1, !range !35, !noundef !4 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.i = load i8, ptr %i.h, align 4               ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !488)
  switch i8 %1, label %default.unreachable [
    i8 0, label %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultmNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCsa9sSWSfjDbm_4jiff.exit26.i
    i8 1, label %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultmNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCsa9sSWSfjDbm_4jiff.exit.i
    i8 2, label %_RNvMs5_NtNtNtCsa9sSWSfjDbm_4jiff3fmt8friendly7printerNtB5_17FractionalPrinter13from_duration.exit
    i8 3, label %bb.b
    i8 4, label %bb.c
  ]

default.unreachable:                              ; preds = %bb.a
  unreachable

_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultmNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCsa9sSWSfjDbm_4jiff.exit26.i: ; preds = %bb.a
  %i.j = zext i64 %.0.val to i128
  %i.k = mul nuw nsw i128 %i.j, 1000000000
  %i.l = zext nneg i32 %.8.val to i128
  %i.m = add nuw nsw i128 %i.k, %i.l
  %i.n = urem i128 %i.m, 3600000000000
  %.lhs.trunc.i = trunc nuw nsw i128 %i.n to i64
  %i.o = udiv i64 %.lhs.trunc.i, 3600
  %i.p = udiv i64 %.0.val, 3600
  %.sroa.6.0.extract.trunc.i23.i = trunc nuw nsw i64 %i.o to i32
  br label %_RNvMs5_NtNtNtCsa9sSWSfjDbm_4jiff3fmt8friendly7printerNtB5_17FractionalPrinter13from_duration.exit

_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultmNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCsa9sSWSfjDbm_4jiff.exit.i: ; preds = %bb.a
  %i.q = zext i64 %.0.val to i128
  %i.r = mul nuw nsw i128 %i.q, 1000000000
  %i.s = zext nneg i32 %.8.val to i128
  %i.t = add nuw nsw i128 %i.r, %i.s
  %i.u = urem i128 %i.t, 60000000000
  %.lhs.trunc11.i = trunc nuw nsw i128 %i.u to i64
  %i.v = udiv i64 %.lhs.trunc11.i, 60
  %i.w = udiv i64 %.0.val, 60
  %.sroa.6.0.extract.trunc.i.i = trunc nuw nsw i64 %i.v to i32
  br label %_RNvMs5_NtNtNtCsa9sSWSfjDbm_4jiff3fmt8friendly7printerNtB5_17FractionalPrinter13from_duration.exit

bb.b:                                             ; preds = %bb.a
  %i.x = zext i64 %.0.val to i128
  %i.y = mul nuw nsw i128 %i.x, 1000
  %i.z = udiv i32 %.8.val, 1000000
  %i.aa = urem i32 %.8.val, 1000000
  %i.ab = zext nneg i32 %i.z to i128
  %i.ac = add nuw nsw i128 %i.y, %i.ab            ; 2 uses
  %i.ad = icmp samesign ugt i128 %i.ac, 18446744073709551615
  br i1 %i.ad, label %bb.d, label %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultyNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCsa9sSWSfjDbm_4jiff.exit27.i

bb.c:                                             ; preds = %bb.a
  %i.ae = zext i64 %.0.val to i128
  %i.af = mul nuw nsw i128 %i.ae, 1000000
  %i.ag = udiv i32 %.8.val, 1000
  %i.ah = urem i32 %.8.val, 1000
  %i.ai = zext nneg i32 %i.ag to i128
  %i.aj = add nuw nsw i128 %i.af, %i.ai           ; 2 uses
  %i.ak = icmp samesign ugt i128 %i.aj, 18446744073709551615
  br i1 %i.ak, label %bb.e, label %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultyNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCsa9sSWSfjDbm_4jiff.exit.i

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !491
  store i8 2, ptr %i.a, align 1, !noalias !491
  call void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @7, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @8, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @40) #24, !noalias !495
  unreachable

_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultyNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCsa9sSWSfjDbm_4jiff.exit27.i: ; preds = %bb.b
  %i.al = trunc nuw i128 %i.ac to i64
  %i.am = mul nuw nsw i32 %i.aa, 1000
  br label %_RNvMs5_NtNtNtCsa9sSWSfjDbm_4jiff3fmt8friendly7printerNtB5_17FractionalPrinter13from_duration.exit

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !496
  store i8 2, ptr %i.b, align 1, !noalias !496
  call void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @7, i64 noundef 43, ptr noundef nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @8, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @41) #24, !noalias !500
  unreachable

_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultyNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCsa9sSWSfjDbm_4jiff.exit.i: ; preds = %bb.c
  %i.an = trunc nuw i128 %i.aj to i64
  %i.ao = mul nuw nsw i32 %i.ah, 1000000
  br label %_RNvMs5_NtNtNtCsa9sSWSfjDbm_4jiff3fmt8friendly7printerNtB5_17FractionalPrinter13from_duration.exit

_RNvMs5_NtNtNtCsa9sSWSfjDbm_4jiff3fmt8friendly7printerNtB5_17FractionalPrinter13from_duration.exit: ; preds = %bb.a, %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultmNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCsa9sSWSfjDbm_4jiff.exit26.i, %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultmNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCsa9sSWSfjDbm_4jiff.exit.i, %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultyNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCsa9sSWSfjDbm_4jiff.exit27.i, %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultyNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCsa9sSWSfjDbm_4jiff.exit.i
  %.sink17.i = phi i64 [ %i.an, %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultyNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCsa9sSWSfjDbm_4jiff.exit.i ], [ %i.al, %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultyNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCsa9sSWSfjDbm_4jiff.exit27.i ], [ %i.w, %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultmNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCsa9sSWSfjDbm_4jiff.exit.i ], [ %i.p, %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultmNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCsa9sSWSfjDbm_4jiff.exit26.i ], [ %.0.val, %bb.a ] ; 3 uses
  %.sink.i = phi i32 [ %i.ao, %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultyNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCsa9sSWSfjDbm_4jiff.exit.i ], [ %i.am, %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultyNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCsa9sSWSfjDbm_4jiff.exit27.i ], [ %.sroa.6.0.extract.trunc.i.i, %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultmNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCsa9sSWSfjDbm_4jiff.exit.i ], [ %.sroa.6.0.extract.trunc.i23.i, %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultmNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCsa9sSWSfjDbm_4jiff.exit26.i ], [ %.8.val, %bb.a ] ; 2 uses
  store i64 %.sink17.i, ptr %i.c, align 8, !alias.scope !488
  %i.ap = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i32 %.sink.i, ptr %i.ap, align 8, !alias.scope !488
  %i.aq = getelementptr inbounds nuw i8, ptr %i.c, i64 12
  store i8 %i.e, ptr %i.aq, align 4, !alias.scope !488
  %i.ar = getelementptr inbounds nuw i8, ptr %i.c, i64 13
  store i8 %i.g, ptr %i.ar, align 1, !alias.scope !488
  %i.as = getelementptr inbounds nuw i8, ptr %i.c, i64 14
end_hunk_1
begin_hunk_2_@_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtCsa9sSWSfjDbm_4jiff5error10ErrorInnerE9drop_slowBK_:bb.a
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtCsb09rMIQFAXO_9jiff_core2tz5posix8TimeZoneEECsa9sSWSfjDbm_4jiff.exit.i.i.i.i.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtCsb09rMIQFAXO_9jiff_core2tz5posix8TimeZoneEECsa9sSWSfjDbm_4jiff.exit.i.i.i.i.i: ; preds = %bb.t, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !562
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsa9sSWSfjDbm_4jiff5error9ErrorKindEBF_.exit

bb.u:                                             ; preds = %bb.a
  %i.be = getelementptr inbounds nuw i8, ptr %i.j, i64 40
  tail call void @llvm.experimental.noalias.scope.decl(metadata !590)
  %i.bf = load i64, ptr %i.be, align 8, !range !593, !alias.scope !594, !noundef !4
  switch i64 %i.bf, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsa9sSWSfjDbm_4jiff5error9ErrorKindEBF_.exit [
    i64 1, label %bb.v
    i64 2, label %bb.w
  ]

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxeEECsa9sSWSfjDbm_4jiff.exit.sink.split.i.i: ; preds = %bb.w, %bb.v
  %.val1.sink.i.i = phi i64 [ %.val3.i17.i, %bb.v ], [ %.val1.i14.i, %bb.w ]
  %i.bg = getelementptr inbounds nuw i8, ptr %i.j, i64 48
  %.val.i15.i = load ptr, ptr %i.bg, align 8, !alias.scope !594, !nonnull !4, !noundef !4
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i15.i, i64 noundef %.val1.sink.i.i, i64 noundef 1) #19, !noalias !594
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsa9sSWSfjDbm_4jiff5error9ErrorKindEBF_.exit

bb.v:                                             ; preds = %bb.u
  %i.bh = getelementptr inbounds nuw i8, ptr %i.j, i64 56
  %.val3.i17.i = load i64, ptr %i.bh, align 8, !alias.scope !594, !noundef !4 ; 2 uses
  %i.bi = icmp eq i64 %.val3.i17.i, 0
  br i1 %i.bi, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsa9sSWSfjDbm_4jiff5error9ErrorKindEBF_.exit, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxeEECsa9sSWSfjDbm_4jiff.exit.sink.split.i.i

bb.w:                                             ; preds = %bb.u
  %i.bj = getelementptr inbounds nuw i8, ptr %i.j, i64 56
  %.val1.i14.i = load i64, ptr %i.bj, align 8, !alias.scope !594, !noundef !4 ; 2 uses
  %i.bk = icmp eq i64 %.val1.i14.i, 0
  br i1 %i.bk, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsa9sSWSfjDbm_4jiff5error9ErrorKindEBF_.exit, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxeEECsa9sSWSfjDbm_4jiff.exit.sink.split.i.i

bb.x:                                             ; preds = %bb.a
  %i.bl = getelementptr inbounds nuw i8, ptr %i.j, i64 40
  %.val7.i = load i32, ptr %i.bl, align 8, !range !595, !alias.scope !562, !noundef !4
  %i.bm = getelementptr inbounds nuw i8, ptr %i.j, i64 56
  %.val8.i = load ptr, ptr %i.bm, align 8, !alias.scope !562 ; 9 uses
  switch i32 %.val7.i, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsa9sSWSfjDbm_4jiff5error9ErrorKindEBF_.exit [
    i32 3, label %bb.y
    i32 4, label %bb.ae
    i32 5, label %bb.ak
  ]

bb.y:                                             ; preds = %bb.x
  %i.bn = ptrtoint ptr %.val8.i to i64
  %i.bo = and i64 %i.bn, 7
  switch i64 %i.bo, label %bb.z [
    i64 1, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsa9sSWSfjDbm_4jiff5error9ErrorKindEBF_.exit
    i64 2, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsa9sSWSfjDbm_4jiff5error9ErrorKindEBF_.exit
    i64 3, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsa9sSWSfjDbm_4jiff5error9ErrorKindEBF_.exit
    i64 0, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsa9sSWSfjDbm_4jiff5error9ErrorKindEBF_.exit
    i64 4, label %bb.aa
    i64 5, label %bb.ac
  ]

bb.z:                                             ; preds = %bb.y
  unreachable

bb.aa:                                            ; preds = %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !562
  %i.bp = getelementptr i8, ptr %.val8.i, i64 -20 ; 2 uses
  store ptr %i.bp, ptr %i.f, align 8, !noalias !562
  %i.bq = atomicrmw sub ptr %i.bp, i64 1 release, align 8, !noalias !596
  %i.br = icmp eq i64 %i.bq, 1
  br i1 %i.br, label %bb.ab, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtCsb09rMIQFAXO_9jiff_core2tz4tzif18MaybeNamedTimeZoneEECsa9sSWSfjDbm_4jiff.exit.i.i.i.i19.i

bb.ab:                                            ; preds = %bb.aa
  fence acquire
  call void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtCsb09rMIQFAXO_9jiff_core2tz4tzif18MaybeNamedTimeZoneE9drop_slowCsa9sSWSfjDbm_4jiff(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(8) %i.f) #21, !noalias !562
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtCsb09rMIQFAXO_9jiff_core2tz4tzif18MaybeNamedTimeZoneEECsa9sSWSfjDbm_4jiff.exit.i.i.i.i19.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtCsb09rMIQFAXO_9jiff_core2tz4tzif18MaybeNamedTimeZoneEECsa9sSWSfjDbm_4jiff.exit.i.i.i.i19.i: ; preds = %bb.ab, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !562
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsa9sSWSfjDbm_4jiff5error9ErrorKindEBF_.exit

bb.ac:                                            ; preds = %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !562
  %i.bs = getelementptr i8, ptr %.val8.i, i64 -21 ; 2 uses
  store ptr %i.bs, ptr %i.e, align 8, !noalias !562
  %i.bt = atomicrmw sub ptr %i.bs, i64 1 release, align 8, !noalias !601
  %i.bu = icmp eq i64 %i.bt, 1
  br i1 %i.bu, label %bb.ad, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtCsb09rMIQFAXO_9jiff_core2tz5posix8TimeZoneEECsa9sSWSfjDbm_4jiff.exit.i.i.i.i18.i

bb.ad:                                            ; preds = %bb.ac
  fence acquire
  call void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtCsb09rMIQFAXO_9jiff_core2tz5posix8TimeZoneE9drop_slowCsa9sSWSfjDbm_4jiff(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(8) %i.e) #21, !noalias !562
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtCsb09rMIQFAXO_9jiff_core2tz5posix8TimeZoneEECsa9sSWSfjDbm_4jiff.exit.i.i.i.i18.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtCsb09rMIQFAXO_9jiff_core2tz5posix8TimeZoneEECsa9sSWSfjDbm_4jiff.exit.i.i.i.i18.i: ; preds = %bb.ad, %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !562
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsa9sSWSfjDbm_4jiff5error9ErrorKindEBF_.exit

bb.ae:                                            ; preds = %bb.x
  %i.bv = ptrtoint ptr %.val8.i to i64
  %i.bw = and i64 %i.bv, 7
  switch i64 %i.bw, label %bb.af [
    i64 1, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsa9sSWSfjDbm_4jiff5error9ErrorKindEBF_.exit
    i64 2, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsa9sSWSfjDbm_4jiff5error9ErrorKindEBF_.exit
    i64 3, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsa9sSWSfjDbm_4jiff5error9ErrorKindEBF_.exit
    i64 0, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsa9sSWSfjDbm_4jiff5error9ErrorKindEBF_.exit
    i64 4, label %bb.ag
    i64 5, label %bb.ai
  ]

bb.af:                                            ; preds = %bb.ae
  unreachable

bb.ag:                                            ; preds = %bb.ae
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !562
  %i.bx = getelementptr i8, ptr %.val8.i, i64 -20 ; 2 uses
  store ptr %i.bx, ptr %i.d, align 8, !noalias !562
  %i.by = atomicrmw sub ptr %i.bx, i64 1 release, align 8, !noalias !606
  %i.bz = icmp eq i64 %i.by, 1
  br i1 %i.bz, label %bb.ah, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtCsb09rMIQFAXO_9jiff_core2tz4tzif18MaybeNamedTimeZoneEECsa9sSWSfjDbm_4jiff.exit.i.i.i4.i.i

bb.ah:                                            ; preds = %bb.ag
  fence acquire
  call void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtCsb09rMIQFAXO_9jiff_core2tz4tzif18MaybeNamedTimeZoneE9drop_slowCsa9sSWSfjDbm_4jiff(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(8) %i.d) #21, !noalias !562
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtCsb09rMIQFAXO_9jiff_core2tz4tzif18MaybeNamedTimeZoneEECsa9sSWSfjDbm_4jiff.exit.i.i.i4.i.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtCsb09rMIQFAXO_9jiff_core2tz4tzif18MaybeNamedTimeZoneEECsa9sSWSfjDbm_4jiff.exit.i.i.i4.i.i: ; preds = %bb.ah, %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !562
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsa9sSWSfjDbm_4jiff5error9ErrorKindEBF_.exit

bb.ai:                                            ; preds = %bb.ae
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !562
  %i.ca = getelementptr i8, ptr %.val8.i, i64 -21 ; 2 uses
  store ptr %i.ca, ptr %i.c, align 8, !noalias !562
  %i.cb = atomicrmw sub ptr %i.ca, i64 1 release, align 8, !noalias !611
  %i.cc = icmp eq i64 %i.cb, 1
  br i1 %i.cc, label %bb.aj, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtCsb09rMIQFAXO_9jiff_core2tz5posix8TimeZoneEECsa9sSWSfjDbm_4jiff.exit.i.i.i3.i.i

bb.aj:                                            ; preds = %bb.ai
  fence acquire
  call void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtCsb09rMIQFAXO_9jiff_core2tz5posix8TimeZoneE9drop_slowCsa9sSWSfjDbm_4jiff(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(8) %i.c) #21, !noalias !562
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtCsb09rMIQFAXO_9jiff_core2tz5posix8TimeZoneEECsa9sSWSfjDbm_4jiff.exit.i.i.i3.i.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtCsb09rMIQFAXO_9jiff_core2tz5posix8TimeZoneEECsa9sSWSfjDbm_4jiff.exit.i.i.i3.i.i: ; preds = %bb.aj, %bb.ai
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !562
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsa9sSWSfjDbm_4jiff5error9ErrorKindEBF_.exit

bb.ak:                                            ; preds = %bb.x
  %i.cd = ptrtoint ptr %.val8.i to i64
  %i.ce = and i64 %i.cd, 7
  switch i64 %i.ce, label %bb.al [
    i64 1, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsa9sSWSfjDbm_4jiff5error9ErrorKindEBF_.exit
    i64 2, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsa9sSWSfjDbm_4jiff5error9ErrorKindEBF_.exit
    i64 3, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsa9sSWSfjDbm_4jiff5error9ErrorKindEBF_.exit
    i64 0, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsa9sSWSfjDbm_4jiff5error9ErrorKindEBF_.exit
    i64 4, label %bb.am
    i64 5, label %bb.ao
  ]

bb.al:                                            ; preds = %bb.ak
  unreachable

bb.am:                                            ; preds = %bb.ak
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !562
  %i.cf = getelementptr i8, ptr %.val8.i, i64 -20 ; 2 uses
  store ptr %i.cf, ptr %i.b, align 8, !noalias !562
  %i.cg = atomicrmw sub ptr %i.cf, i64 1 release, align 8, !noalias !616
  %i.ch = icmp eq i64 %i.cg, 1
  br i1 %i.ch, label %bb.an, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtCsb09rMIQFAXO_9jiff_core2tz4tzif18MaybeNamedTimeZoneEECsa9sSWSfjDbm_4jiff.exit.i.i.i7.i.i

bb.an:                                            ; preds = %bb.am
  fence acquire
  call void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtCsb09rMIQFAXO_9jiff_core2tz4tzif18MaybeNamedTimeZoneE9drop_slowCsa9sSWSfjDbm_4jiff(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(8) %i.b) #21, !noalias !562
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtCsb09rMIQFAXO_9jiff_core2tz4tzif18MaybeNamedTimeZoneEECsa9sSWSfjDbm_4jiff.exit.i.i.i7.i.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtCsb09rMIQFAXO_9jiff_core2tz4tzif18MaybeNamedTimeZoneEECsa9sSWSfjDbm_4jiff.exit.i.i.i7.i.i: ; preds = %bb.an, %bb.am
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !562
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsa9sSWSfjDbm_4jiff5error9ErrorKindEBF_.exit

bb.ao:                                            ; preds = %bb.ak
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !562
  %i.ci = getelementptr i8, ptr %.val8.i, i64 -21 ; 2 uses
  store ptr %i.ci, ptr %i.a, align 8, !noalias !562
  %i.cj = atomicrmw sub ptr %i.ci, i64 1 release, align 8, !noalias !621
  %i.ck = icmp eq i64 %i.cj, 1
  br i1 %i.ck, label %bb.ap, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtCsb09rMIQFAXO_9jiff_core2tz5posix8TimeZoneEECsa9sSWSfjDbm_4jiff.exit.i.i.i6.i.i

bb.ap:                                            ; preds = %bb.ao
  fence acquire
  call void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtCsb09rMIQFAXO_9jiff_core2tz5posix8TimeZoneE9drop_slowCsa9sSWSfjDbm_4jiff(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(8) %i.a) #21, !noalias !562
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtCsb09rMIQFAXO_9jiff_core2tz5posix8TimeZoneEECsa9sSWSfjDbm_4jiff.exit.i.i.i6.i.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtCsb09rMIQFAXO_9jiff_core2tz5posix8TimeZoneEECsa9sSWSfjDbm_4jiff.exit.i.i.i6.i.i: ; preds = %bb.ap, %bb.ao
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !562
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsa9sSWSfjDbm_4jiff5error9ErrorKindEBF_.exit

bb.aq:                                            ; preds = %bb.l, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsa9sSWSfjDbm_4jiff5error13FilePathErrorEBF_.exit.i
  %i.cl = landingpad { ptr, i32 }
          cleanup
  br label %.body6

.body6:                                           ; preds = %bb.d, %bb.aq
  %eh.lpad-body7 = phi { ptr, i32 } [ %i.cl, %bb.aq ], [ %i.u, %bb.d ] ; 4 uses
  %i.cm = load i64, ptr %i.k, align 8, !range !16, !alias.scope !626, !noundef !4
  %1 = icmp eq i64 %i.cm, 0
  br i1 %1, label %.body, label %bb.ar

bb.ar:                                            ; preds = %.body6
  %i.cn = getelementptr inbounds nuw i8, ptr %i.j, i64 24 ; 2 uses
  %i.co = load ptr, ptr %i.cn, align 8, !alias.scope !629, !noundef !4 ; 2 uses
  %i.cp = icmp eq ptr %i.co, null
  br i1 %i.cp, label %.body, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.cq = atomicrmw sub ptr %i.co, i64 1 release, align 8, !noalias !634
  %i.cr = icmp eq i64 %i.cq, 1
  br i1 %i.cr, label %bb.at, label %.body

bb.at:                                            ; preds = %bb.as
  fence acquire, !noalias !639
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtCsa9sSWSfjDbm_4jiff5error10ErrorInnerE9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.cn) #21
          to label %.body unwind label %bb.ax, !inline_history !640

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsa9sSWSfjDbm_4jiff5error9ErrorKindEBF_.exit: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtCsb09rMIQFAXO_9jiff_core2tz5posix8TimeZoneEECsa9sSWSfjDbm_4jiff.exit.i.i.i6.i.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtCsb09rMIQFAXO_9jiff_core2tz4tzif18MaybeNamedTimeZoneEECsa9sSWSfjDbm_4jiff.exit.i.i.i7.i.i, %bb.ak, %bb.ak, %bb.ak, %bb.ak, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtCsb09rMIQFAXO_9jiff_core2tz5posix8TimeZoneEECsa9sSWSfjDbm_4jiff.exit.i.i.i3.i.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtCsb09rMIQFAXO_9jiff_core2tz4tzif18MaybeNamedTimeZoneEECsa9sSWSfjDbm_4jiff.exit.i.i.i4.i.i, %bb.ae, %bb.ae, %bb.ae, %bb.ae, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtCsb09rMIQFAXO_9jiff_core2tz5posix8TimeZoneEECsa9sSWSfjDbm_4jiff.exit.i.i.i.i18.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtCsb09rMIQFAXO_9jiff_core2tz4tzif18MaybeNamedTimeZoneEECsa9sSWSfjDbm_4jiff.exit.i.i.i.i19.i, %bb.y, %bb.y, %bb.y, %bb.y, %bb.x, %bb.w, %bb.v, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxeEECsa9sSWSfjDbm_4jiff.exit.sink.split.i.i, %bb.u, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtCsb09rMIQFAXO_9jiff_core2tz5posix8TimeZoneEECsa9sSWSfjDbm_4jiff.exit.i.i.i.i.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtCsb09rMIQFAXO_9jiff_core2tz4tzif18MaybeNamedTimeZoneEECsa9sSWSfjDbm_4jiff.exit.i.i.i.i.i, %bb.o, %bb.o, %bb.o, %bb.o, %bb.n, %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i.i.i13.i, %bb.m, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsa9sSWSfjDbm_4jiff5error7IOErrorEBF_.exit.i, %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i.i.i11.i, %bb.i, %bb.h, %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i.i7.i.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxeEECsa9sSWSfjDbm_4jiff.exit.i.i, %bb.f, %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i.i.i.i, %bb.b, %bb.a, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsa9sSWSfjDbm_4jiff5error13FilePathErrorEBF_.exit.i
  %i.cs = load i64, ptr %i.k, align 8, !range !16, !alias.scope !641, !noundef !4
  %2 = icmp eq i64 %i.cs, 0
  br i1 %2, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsa9sSWSfjDbm_4jiff5error10ErrorInnerEBF_.exit, label %bb.au

bb.au:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsa9sSWSfjDbm_4jiff5error9ErrorKindEBF_.exit
  %i.ct = getelementptr inbounds nuw i8, ptr %i.j, i64 24 ; 2 uses
  %i.cu = load ptr, ptr %i.ct, align 8, !alias.scope !644, !noundef !4 ; 2 uses
  %i.cv = icmp eq ptr %i.cu, null
  br i1 %i.cv, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsa9sSWSfjDbm_4jiff5error10ErrorInnerEBF_.exit, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.cw = atomicrmw sub ptr %i.cu, i64 1 release, align 8, !noalias !649
  %i.cx = icmp eq i64 %i.cw, 1
  br i1 %i.cx, label %bb.aw, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsa9sSWSfjDbm_4jiff5error10ErrorInnerEBF_.exit

bb.aw:                                            ; preds = %bb.av
  fence acquire, !noalias !654
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtCsa9sSWSfjDbm_4jiff5error10ErrorInnerE9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ct) #21
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsa9sSWSfjDbm_4jiff5error10ErrorInnerEBF_.exit unwind label %bb.ay, !inline_history !640

bb.ax:                                            ; preds = %bb.at
  %i.cy = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #22, !inline_history !655
  unreachable

bb.ay:                                            ; preds = %bb.aw
  %i.cz = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.ar, %bb.as, %bb.at, %.body6, %bb.ay
  %eh.lpad-body = phi { ptr, i32 } [ %i.cz, %bb.ay ], [ %eh.lpad-body7, %.body6 ], [ %eh.lpad-body7, %bb.at ], [ %eh.lpad-body7, %bb.as ], [ %eh.lpad-body7, %bb.ar ]
  %i.da = icmp eq ptr %i.j, inttoptr (i64 -1 to ptr)
  br i1 %i.da, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync4WeakNtNtCsa9sSWSfjDbm_4jiff5error10ErrorInnerRNtNtBG_5alloc6GlobalEEB1e_.exit, label %bb.az

bb.az:                                            ; preds = %.body
  %i.db = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.dc = atomicrmw sub ptr %i.db, i64 1 release, align 8
  %i.dd = icmp eq i64 %i.dc, 1
  br i1 %i.dd, label %bb.ba, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync4WeakNtNtCsa9sSWSfjDbm_4jiff5error10ErrorInnerRNtNtBG_5alloc6GlobalEEB1e_.exit

bb.ba:                                            ; preds = %bb.az
  fence acquire
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.j, i64 noundef 72, i64 noundef 8) #19
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync4WeakNtNtCsa9sSWSfjDbm_4jiff5error10ErrorInnerRNtNtBG_5alloc6GlobalEEB1e_.exit

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsa9sSWSfjDbm_4jiff5error10ErrorInnerEBF_.exit: ; preds = %bb.au, %bb.av, %bb.aw, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsa9sSWSfjDbm_4jiff5error9ErrorKindEBF_.exit
  %i.de = icmp eq ptr %i.j, inttoptr (i64 -1 to ptr)
  br i1 %i.de, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync4WeakNtNtCsa9sSWSfjDbm_4jiff5error10ErrorInnerRNtNtBG_5alloc6GlobalEEB1e_.exit2, label %bb.bb

bb.bb:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsa9sSWSfjDbm_4jiff5error10ErrorInnerEBF_.exit
  %i.df = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.dg = atomicrmw sub ptr %i.df, i64 1 release, align 8
  %i.dh = icmp eq i64 %i.dg, 1
  br i1 %i.dh, label %bb.bc, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync4WeakNtNtCsa9sSWSfjDbm_4jiff5error10ErrorInnerRNtNtBG_5alloc6GlobalEEB1e_.exit2

bb.bc:                                            ; preds = %bb.bb
  fence acquire
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.j, i64 noundef 72, i64 noundef 8) #19
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync4WeakNtNtCsa9sSWSfjDbm_4jiff5error10ErrorInnerRNtNtBG_5alloc6GlobalEEB1e_.exit2

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync4WeakNtNtCsa9sSWSfjDbm_4jiff5error10ErrorInnerRNtNtBG_5alloc6GlobalEEB1e_.exit2: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsa9sSWSfjDbm_4jiff5error10ErrorInnerEBF_.exit, %bb.bb, %bb.bc
  ret void

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync4WeakNtNtCsa9sSWSfjDbm_4jiff5error10ErrorInnerRNtNtBG_5alloc6GlobalEEB1e_.exit: ; preds = %bb.ba, %bb.az, %.body
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: noinline nonlazybind uwtable
define void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtCsa9sSWSfjDbm_4jiff2tz2db4KindE9drop_slowBM_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !4, !noundef !4 ; 14 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 3 uses
  %i.c = load i64, ptr %i.b, align 8, !range !656, !alias.scope !657, !noundef !4
  %i.d = icmp eq i64 %i.c, 2
  br i1 %i.d, label %bb.b, label %bb.m

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 128 ; 4 uses
  %i.g = load i64, ptr %i.f, align 8, !range !660, !alias.scope !661, !noundef !4
  %i.h = icmp eq i64 %i.g, -1
  br i1 %i.h, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaL1QbXo9JQH_3std4path7PathBufEECsa9sSWSfjDbm_4jiff.exit.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCsa9sSWSfjDbm_4jiff(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsaL1QbXo9JQH_3std4path7PathBufECsa9sSWSfjDbm_4jiff.exit.i.i.i unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCsa9sSWSfjDbm_4jiff(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %.body.i.i unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.j = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #22
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsaL1QbXo9JQH_3std4path7PathBufECsa9sSWSfjDbm_4jiff.exit.i.i.i: ; preds = %bb.c
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCsa9sSWSfjDbm_4jiff(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaL1QbXo9JQH_3std4path7PathBufEECsa9sSWSfjDbm_4jiff.exit.i.i unwind label %bb.f

bb.f:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsaL1QbXo9JQH_3std4path7PathBufECsa9sSWSfjDbm_4jiff.exit.i.i.i
  %i.k = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

.body.i.i:                                        ; preds = %bb.f, %bb.d
  %eh.lpad-body.i.i = phi { ptr, i32 } [ %i.k, %bb.f ], [ %i.i, %bb.d ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtNtCsa9sSWSfjDbm_4jiff2tz2db8zoneinfo5inner13ZoneInfoNamesEEB17_(ptr noalias nofree noundef nonnull align 8 dereferenceable(184) %i.e) #23
          to label %bb.g unwind label %bb.l

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaL1QbXo9JQH_3std4path7PathBufEECsa9sSWSfjDbm_4jiff.exit.i.i: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsaL1QbXo9JQH_3std4path7PathBufECsa9sSWSfjDbm_4jiff.exit.i.i.i, %bb.b
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtNtCsa9sSWSfjDbm_4jiff2tz2db8zoneinfo5inner13ZoneInfoNamesEEB17_(ptr noalias nofree noundef nonnull align 8 dereferenceable(184) %i.e)
          to label %bb.i unwind label %bb.h

bb.g:                                             ; preds = %bb.h, %.body.i.i
  %.pn.i.i = phi { ptr, i32 } [ %i.m, %bb.h ], [ %eh.lpad-body.i.i, %.body.i.i ]
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 152
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison6rwlock6RwLockNtNtNtNtNtCsa9sSWSfjDbm_4jiff2tz2db8zoneinfo5inner11CachedZonesEEB1C_(ptr noalias nofree noundef align 8 dereferenceable(56) %i.l) #23
          to label %.body unwind label %bb.l

bb.h:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaL1QbXo9JQH_3std4path7PathBufEECsa9sSWSfjDbm_4jiff.exit.i.i
  %i.m = landingpad { ptr, i32 }
          cleanup
  br label %bb.g

bb.i:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaL1QbXo9JQH_3std4path7PathBufEECsa9sSWSfjDbm_4jiff.exit.i.i
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 168 ; 3 uses
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtNtNtNtCsa9sSWSfjDbm_4jiff2tz2db8zoneinfo5inner14CachedTimeZoneENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBP_(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.n)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtNtCsa9sSWSfjDbm_4jiff2tz2db8zoneinfo5inner8DatabaseEBL_.exit.i unwind label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.o = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtNtNtNtNtCsa9sSWSfjDbm_4jiff2tz2db8zoneinfo5inner14CachedTimeZoneENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBW_(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.n)
          to label %.body unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.p = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #22
  unreachable

bb.l:                                             ; preds = %bb.g, %.body.i.i
  %i.q = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #22
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtNtCsa9sSWSfjDbm_4jiff2tz2db8zoneinfo5inner8DatabaseEBL_.exit.i: ; preds = %bb.i
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtNtNtNtNtCsa9sSWSfjDbm_4jiff2tz2db8zoneinfo5inner14CachedTimeZoneENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBW_(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.n)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsa9sSWSfjDbm_4jiff2tz2db4KindEBH_.exit unwind label %bb.u

bb.m:                                             ; preds = %bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 128 ; 4 uses
  %i.s = load i64, ptr %i.r, align 8, !range !660, !alias.scope !666, !noundef !4
  %i.t = icmp eq i64 %i.s, -1
  br i1 %i.t, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaL1QbXo9JQH_3std4path7PathBufEECsa9sSWSfjDbm_4jiff.exit.i5.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCsa9sSWSfjDbm_4jiff(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.r)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsaL1QbXo9JQH_3std4path7PathBufECsa9sSWSfjDbm_4jiff.exit.i.i4.i unwind label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.u = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCsa9sSWSfjDbm_4jiff(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.r)
          to label %.body.i1.i unwind label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.v = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #22
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsaL1QbXo9JQH_3std4path7PathBufECsa9sSWSfjDbm_4jiff.exit.i.i4.i: ; preds = %bb.n
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCsa9sSWSfjDbm_4jiff(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.r)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaL1QbXo9JQH_3std4path7PathBufEECsa9sSWSfjDbm_4jiff.exit.i5.i unwind label %bb.q

bb.q:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsaL1QbXo9JQH_3std4path7PathBufECsa9sSWSfjDbm_4jiff.exit.i.i4.i
  %i.w = landingpad { ptr, i32 }
          cleanup
  br label %.body.i1.i

.body.i1.i:                                       ; preds = %bb.q, %bb.o
  %eh.lpad-body.i2.i = phi { ptr, i32 } [ %i.w, %bb.q ], [ %i.u, %bb.o ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtNtCsa9sSWSfjDbm_4jiff2tz2db12concatenated5inner5NamesEEB17_(ptr noalias nofree noundef nonnull align 8 dereferenceable(240) %i.b) #23
          to label %bb.r unwind label %bb.t

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaL1QbXo9JQH_3std4path7PathBufEECsa9sSWSfjDbm_4jiff.exit.i5.i: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsaL1QbXo9JQH_3std4path7PathBufECsa9sSWSfjDbm_4jiff.exit.i.i4.i, %bb.m
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtNtCsa9sSWSfjDbm_4jiff2tz2db12concatenated5inner5NamesEEB17_(ptr noalias nofree noundef nonnull align 8 dereferenceable(240) %i.b)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtNtCsa9sSWSfjDbm_4jiff2tz2db12concatenated5inner8DatabaseEBL_.exit.i unwind label %bb.s

bb.r:                                             ; preds = %bb.s, %.body.i1.i
  %.pn.i3.i = phi { ptr, i32 } [ %i.y, %bb.s ], [ %eh.lpad-body.i2.i, %.body.i1.i ]
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 152
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison6rwlock6RwLockNtNtNtNtNtCsa9sSWSfjDbm_4jiff2tz2db12concatenated5inner11CachedZonesEEB1C_(ptr noalias nofree noundef align 8 dereferenceable(104) %i.x) #23
          to label %.body unwind label %bb.t

bb.s:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaL1QbXo9JQH_3std4path7PathBufEECsa9sSWSfjDbm_4jiff.exit.i5.i
  %i.y = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

bb.t:                                             ; preds = %bb.r, %.body.i1.i
  %i.z = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #22
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtNtCsa9sSWSfjDbm_4jiff2tz2db12concatenated5inner8DatabaseEBL_.exit.i: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaL1QbXo9JQH_3std4path7PathBufEECsa9sSWSfjDbm_4jiff.exit.i5.i
  %i.aa = getelementptr inbounds nuw i8, ptr %i.a, i64 152
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison6rwlock6RwLockNtNtNtNtNtCsa9sSWSfjDbm_4jiff2tz2db12concatenated5inner11CachedZonesEEB1C_(ptr noalias nofree noundef align 8 dereferenceable(104) %i.aa)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsa9sSWSfjDbm_4jiff2tz2db4KindEBH_.exit unwind label %bb.u

bb.u:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtNtCsa9sSWSfjDbm_4jiff2tz2db12concatenated5inner8DatabaseEBL_.exit.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtNtCsa9sSWSfjDbm_4jiff2tz2db8zoneinfo5inner8DatabaseEBL_.exit.i
  %i.ab = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.g, %bb.j, %bb.r, %bb.u
  %eh.lpad-body = phi { ptr, i32 } [ %i.ab, %bb.u ], [ %.pn.i.i, %bb.g ], [ %i.o, %bb.j ], [ %.pn.i3.i, %bb.r ]
  %i.ac = icmp eq ptr %i.a, inttoptr (i64 -1 to ptr)
  br i1 %i.ac, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync4WeakNtNtNtCsa9sSWSfjDbm_4jiff2tz2db4KindRNtNtBG_5alloc6GlobalEEB1g_.exit, label %bb.v

bb.v:                                             ; preds = %.body
  %i.ad = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.ae = atomicrmw sub ptr %i.ad, i64 1 release, align 8
  %i.af = icmp eq i64 %i.ae, 1
  br i1 %i.af, label %bb.w, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync4WeakNtNtNtCsa9sSWSfjDbm_4jiff2tz2db4KindRNtNtBG_5alloc6GlobalEEB1g_.exit

bb.w:                                             ; preds = %bb.v
  fence acquire
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.a, i64 noundef 256, i64 noundef 8) #19
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync4WeakNtNtNtCsa9sSWSfjDbm_4jiff2tz2db4KindRNtNtBG_5alloc6GlobalEEB1g_.exit

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsa9sSWSfjDbm_4jiff2tz2db4KindEBH_.exit: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtNtCsa9sSWSfjDbm_4jiff2tz2db8zoneinfo5inner8DatabaseEBL_.exit.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtNtCsa9sSWSfjDbm_4jiff2tz2db12concatenated5inner8DatabaseEBL_.exit.i
  %i.ag = icmp eq ptr %i.a, inttoptr (i64 -1 to ptr)
  br i1 %i.ag, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync4WeakNtNtNtCsa9sSWSfjDbm_4jiff2tz2db4KindRNtNtBG_5alloc6GlobalEEB1g_.exit3, label %bb.x

bb.x:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsa9sSWSfjDbm_4jiff2tz2db4KindEBH_.exit
  %i.ah = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.ai = atomicrmw sub ptr %i.ah, i64 1 release, align 8
  %i.aj = icmp eq i64 %i.ai, 1
  br i1 %i.aj, label %bb.y, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync4WeakNtNtNtCsa9sSWSfjDbm_4jiff2tz2db4KindRNtNtBG_5alloc6GlobalEEB1g_.exit3

bb.y:                                             ; preds = %bb.x
  fence acquire
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.a, i64 noundef 256, i64 noundef 8) #19
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync4WeakNtNtNtCsa9sSWSfjDbm_4jiff2tz2db4KindRNtNtBG_5alloc6GlobalEEB1g_.exit3

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync4WeakNtNtNtCsa9sSWSfjDbm_4jiff2tz2db4KindRNtNtBG_5alloc6GlobalEEB1g_.exit3: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsa9sSWSfjDbm_4jiff2tz2db4KindEBH_.exit, %bb.x, %bb.y
  ret void

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync4WeakNtNtNtCsa9sSWSfjDbm_4jiff2tz2db4KindRNtNtBG_5alloc6GlobalEEB1g_.exit: ; preds = %bb.w, %bb.v, %.body
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: noinline nounwind nonlazybind uwtable
define void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtCsb09rMIQFAXO_9jiff_core2tz4tzif18MaybeNamedTimeZoneE9drop_slowCsa9sSWSfjDbm_4jiff(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !4, !noundef !4 ; 30 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !671)
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 248
  tail call void @llvm.experimental.noalias.scope.decl(metadata !674)
  %i.d = load i8, ptr %i.c, align 8, !range !15, !alias.scope !677, !noundef !4 ; 2 uses
  %i.e = icmp eq i8 %i.d, -1
  br i1 %i.e, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsb09rMIQFAXO_9jiff_core2tz4tzif18MaybeNamedTimeZoneECsa9sSWSfjDbm_4jiff.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !678)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !681)
  %switch.i.i.i.i = icmp samesign ult i8 %i.d, 2
  br i1 %switch.i.i.i.i, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsb09rMIQFAXO_9jiff_core2tz4tzif18MaybeNamedTimeZoneECsa9sSWSfjDbm_4jiff.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 264
  %.val1.i.i.i.i = load i64, ptr %i.f, align 8, !alias.scope !684, !noundef !4 ; 2 uses
  %i.g = icmp eq i64 %.val1.i.i.i.i, 0
  br i1 %i.g, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsb09rMIQFAXO_9jiff_core2tz4tzif18MaybeNamedTimeZoneECsa9sSWSfjDbm_4jiff.exit, label %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i

_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i: ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 256
  %.val.i.i.i.i = load ptr, ptr %i.h, align 8, !alias.scope !684, !nonnull !4, !noundef !4
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i, i64 noundef %.val1.i.i.i.i, i64 noundef 1) #19, !noalias !684
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsb09rMIQFAXO_9jiff_core2tz4tzif18MaybeNamedTimeZoneECsa9sSWSfjDbm_4jiff.exit

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsb09rMIQFAXO_9jiff_core2tz4tzif18MaybeNamedTimeZoneECsa9sSWSfjDbm_4jiff.exit: ; preds = %bb.a, %bb.b, %bb.c, %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !685)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !688)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !691)
  %i.i = load i64, ptr %i.b, align 8, !range !16, !alias.scope !694, !noundef !4
  %1 = icmp eq i64 %i.i, 0
  br i1 %1, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsb09rMIQFAXO_9jiff_core4util16MaybeStaticSliceINtBE_8SmallStrKj6_EEECsa9sSWSfjDbm_4jiff.exit.i, label %bb.d

bb.d:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsb09rMIQFAXO_9jiff_core2tz4tzif18MaybeNamedTimeZoneECsa9sSWSfjDbm_4jiff.exit
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %.val.i.i.i = load ptr, ptr %i.j, align 8, !alias.scope !694, !nonnull !4, !noundef !4 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %.val1.i.i.i = load i64, ptr %i.k, align 8, !alias.scope !694, !noundef !4 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !695)
  %i.l = icmp eq i64 %.val1.i.i.i, 0
  br i1 %i.l, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsb09rMIQFAXO_9jiff_core4util16MaybeStaticSliceINtBE_8SmallStrKj6_EEECsa9sSWSfjDbm_4jiff.exit.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.d, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsb09rMIQFAXO_9jiff_core4util8SmallStrKj6_EECsa9sSWSfjDbm_4jiff.exit.i.i.i.i.i
  %.sroa.0.07.i.i.i.i.i = phi i64 [ %i.n, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsb09rMIQFAXO_9jiff_core4util8SmallStrKj6_EECsa9sSWSfjDbm_4jiff.exit.i.i.i.i.i ], [ 0, %bb.d ] ; 2 uses
  %i.m = getelementptr inbounds nuw [24 x i8], ptr %.val.i.i.i, i64 %.sroa.0.07.i.i.i.i.i ; 3 uses
  %i.n = add nuw nsw i64 %.sroa.0.07.i.i.i.i.i, 1 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !698)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !701)
  %i.o = load i8, ptr %i.m, align 8, !range !116, !alias.scope !704, !noalias !694, !noundef !4
  %switch.i.i.i.i.i.i.i = icmp samesign ult i8 %i.o, 2
  br i1 %switch.i.i.i.i.i.i.i, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsb09rMIQFAXO_9jiff_core4util8SmallStrKj6_EECsa9sSWSfjDbm_4jiff.exit.i.i.i.i.i, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %.val1.i.i.i.i.i.i.i = load i64, ptr %i.p, align 8, !alias.scope !704, !noalias !694, !noundef !4 ; 2 uses
  %i.q = icmp eq i64 %.val1.i.i.i.i.i.i.i, 0
  br i1 %i.q, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsb09rMIQFAXO_9jiff_core4util8SmallStrKj6_EECsa9sSWSfjDbm_4jiff.exit.i.i.i.i.i, label %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i.i.i

_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i.i.i: ; preds = %bb.e
  %i.r = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %.val.i.i.i.i.i.i.i = load ptr, ptr %i.r, align 8, !alias.scope !704, !noalias !694, !nonnull !4, !noundef !4
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i.i.i.i, i64 noundef %.val1.i.i.i.i.i.i.i, i64 noundef 1) #19, !noalias !705
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsb09rMIQFAXO_9jiff_core4util8SmallStrKj6_EECsa9sSWSfjDbm_4jiff.exit.i.i.i.i.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsb09rMIQFAXO_9jiff_core4util8SmallStrKj6_EECsa9sSWSfjDbm_4jiff.exit.i.i.i.i.i: ; preds = %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i.i.i, %bb.e, %.lr.ph.i.i.i.i.i
  %i.s = icmp eq i64 %i.n, %.val1.i.i.i
  br i1 %i.s, label %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i4.i.i.i.i, label %.lr.ph.i.i.i.i.i

_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i4.i.i.i.i: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsb09rMIQFAXO_9jiff_core4util8SmallStrKj6_EECsa9sSWSfjDbm_4jiff.exit.i.i.i.i.i
  %i.t = mul nuw nsw i64 %.val1.i.i.i, 24
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i, i64 noundef %i.t, i64 noundef 8) #19, !noalias !694
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsb09rMIQFAXO_9jiff_core4util16MaybeStaticSliceINtBE_8SmallStrKj6_EEECsa9sSWSfjDbm_4jiff.exit.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsb09rMIQFAXO_9jiff_core4util16MaybeStaticSliceINtBE_8SmallStrKj6_EEECsa9sSWSfjDbm_4jiff.exit.i: ; preds = %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i4.i.i.i.i, %bb.d, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsb09rMIQFAXO_9jiff_core2tz4tzif18MaybeNamedTimeZoneECsa9sSWSfjDbm_4jiff.exit
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 160
  tail call void @llvm.experimental.noalias.scope.decl(metadata !706)
  %i.v = load i8, ptr %i.u, align 8, !range !15, !alias.scope !709, !noundef !4 ; 2 uses
  %i.w = icmp eq i8 %i.v, -1
  br i1 %i.w, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsb09rMIQFAXO_9jiff_core2tz5posix8TimeZoneEECsa9sSWSfjDbm_4jiff.exit.i, label %bb.f

bb.f:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsb09rMIQFAXO_9jiff_core4util16MaybeStaticSliceINtBE_8SmallStrKj6_EEECsa9sSWSfjDbm_4jiff.exit.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !710)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !713)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !716)
  %switch.i.i.i.i.i = icmp samesign ult i8 %i.v, 2
  br i1 %switch.i.i.i.i.i, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsb09rMIQFAXO_9jiff_core4util8SmallStrKj6_EECsa9sSWSfjDbm_4jiff.exit.i.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 176
  %.val1.i.i.i.i.i = load i64, ptr %i.x, align 8, !alias.scope !719, !noundef !4 ; 2 uses
  %i.y = icmp eq i64 %.val1.i.i.i.i.i, 0
  br i1 %i.y, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsb09rMIQFAXO_9jiff_core4util8SmallStrKj6_EECsa9sSWSfjDbm_4jiff.exit.i.i.i, label %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i

_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i: ; preds = %bb.g
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 168
  %.val.i.i.i.i.i = load ptr, ptr %i.z, align 8, !alias.scope !719, !nonnull !4, !noundef !4
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i.i, i64 noundef %.val1.i.i.i.i.i, i64 noundef 1) #19, !noalias !719
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsb09rMIQFAXO_9jiff_core4util8SmallStrKj6_EECsa9sSWSfjDbm_4jiff.exit.i.i.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsb09rMIQFAXO_9jiff_core4util8SmallStrKj6_EECsa9sSWSfjDbm_4jiff.exit.i.i.i: ; preds = %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i, %bb.g, %bb.f
  %i.aa = getelementptr inbounds nuw i8, ptr %i.a, i64 184
  tail call void @llvm.experimental.noalias.scope.decl(metadata !720)
  %i.ab = load i8, ptr %i.aa, align 8, !range !15, !alias.scope !723, !noundef !4 ; 2 uses
  %i.ac = icmp eq i8 %i.ab, -1
  br i1 %i.ac, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsb09rMIQFAXO_9jiff_core2tz5posix8TimeZoneEECsa9sSWSfjDbm_4jiff.exit.i, label %bb.h

bb.h:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsb09rMIQFAXO_9jiff_core4util8SmallStrKj6_EECsa9sSWSfjDbm_4jiff.exit.i.i.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !724)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !727)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !730)
  %switch.i.i.i.i.i.i4.i = icmp samesign ult i8 %i.ab, 2
  br i1 %switch.i.i.i.i.i.i4.i, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsb09rMIQFAXO_9jiff_core2tz5posix8TimeZoneEECsa9sSWSfjDbm_4jiff.exit.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ad = getelementptr inbounds nuw i8, ptr %i.a, i64 200
  %.val1.i.i.i.i.i.i5.i = load i64, ptr %i.ad, align 8, !alias.scope !733, !noundef !4 ; 2 uses
  %i.ae = icmp eq i64 %.val1.i.i.i.i.i.i5.i, 0
  br i1 %i.ae, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsb09rMIQFAXO_9jiff_core2tz5posix8TimeZoneEECsa9sSWSfjDbm_4jiff.exit.i, label %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i.i6.i

_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i.i6.i: ; preds = %bb.i
  %i.af = getelementptr inbounds nuw i8, ptr %i.a, i64 192
  %.val.i.i.i.i.i.i7.i = load ptr, ptr %i.af, align 8, !alias.scope !733, !nonnull !4, !noundef !4
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i.i.i7.i, i64 noundef %.val1.i.i.i.i.i.i5.i, i64 noundef 1) #19, !noalias !733
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsb09rMIQFAXO_9jiff_core2tz5posix8TimeZoneEECsa9sSWSfjDbm_4jiff.exit.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsb09rMIQFAXO_9jiff_core2tz5posix8TimeZoneEECsa9sSWSfjDbm_4jiff.exit.i: ; preds = %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i.i6.i, %bb.i, %bb.h, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsb09rMIQFAXO_9jiff_core4util8SmallStrKj6_EECsa9sSWSfjDbm_4jiff.exit.i.i.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsb09rMIQFAXO_9jiff_core4util16MaybeStaticSliceINtBE_8SmallStrKj6_EEECsa9sSWSfjDbm_4jiff.exit.i
  %i.ag = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  tail call void @llvm.experimental.noalias.scope.decl(metadata !734)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !737)
  %i.ah = load i64, ptr %i.ag, align 8, !range !16, !alias.scope !740, !noundef !4
  %2 = icmp eq i64 %i.ah, 0
  br i1 %2, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsb09rMIQFAXO_9jiff_core2tz4tzif8TimeZoneECsa9sSWSfjDbm_4jiff.exit, label %bb.j

bb.j:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsb09rMIQFAXO_9jiff_core2tz5posix8TimeZoneEECsa9sSWSfjDbm_4jiff.exit.i
  %i.ai = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %.val1.i.i8.i = load i64, ptr %i.ai, align 8, !alias.scope !740, !noundef !4 ; 2 uses
  %i.aj = icmp eq i64 %.val1.i.i8.i, 0
  br i1 %i.aj, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsb09rMIQFAXO_9jiff_core2tz4tzif8TimeZoneECsa9sSWSfjDbm_4jiff.exit, label %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i

_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i: ; preds = %bb.j
  %i.ak = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %.val.i.i9.i = load ptr, ptr %i.ak, align 8, !alias.scope !740, !nonnull !4, !noundef !4
  %i.al = shl nuw nsw i64 %.val1.i.i8.i, 3
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i9.i, i64 noundef %i.al, i64 noundef 4) #19, !noalias !740
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsb09rMIQFAXO_9jiff_core2tz4tzif8TimeZoneECsa9sSWSfjDbm_4jiff.exit

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsb09rMIQFAXO_9jiff_core2tz4tzif8TimeZoneECsa9sSWSfjDbm_4jiff.exit: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsb09rMIQFAXO_9jiff_core2tz5posix8TimeZoneEECsa9sSWSfjDbm_4jiff.exit.i, %bb.j, %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i
  %i.am = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !741)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !744)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !747)
  %i.an = load i64, ptr %i.am, align 8, !range !16, !alias.scope !750, !noundef !4
  %3 = icmp eq i64 %i.an, 0
  br i1 %3, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsb09rMIQFAXO_9jiff_core4util16MaybeStaticSliceNtNtNtBG_2tz4tzif9TimestampEECsa9sSWSfjDbm_4jiff.exit.i, label %bb.k

bb.k:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsb09rMIQFAXO_9jiff_core2tz4tzif8TimeZoneECsa9sSWSfjDbm_4jiff.exit
  %i.ao = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  %.val1.i.i.i3 = load i64, ptr %i.ao, align 8, !alias.scope !750, !noundef !4 ; 2 uses
  %i.ap = icmp eq i64 %.val1.i.i.i3, 0
  br i1 %i.ap, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsb09rMIQFAXO_9jiff_core4util16MaybeStaticSliceNtNtNtBG_2tz4tzif9TimestampEECsa9sSWSfjDbm_4jiff.exit.i, label %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i4

_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i4: ; preds = %bb.k
  %i.aq = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  %.val.i.i.i5 = load ptr, ptr %i.aq, align 8, !alias.scope !750, !nonnull !4, !noundef !4
  %i.ar = shl nuw nsw i64 %.val1.i.i.i3, 3
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i5, i64 noundef %i.ar, i64 noundef 8) #19, !noalias !750
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsb09rMIQFAXO_9jiff_core4util16MaybeStaticSliceNtNtNtBG_2tz4tzif9TimestampEECsa9sSWSfjDbm_4jiff.exit.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsb09rMIQFAXO_9jiff_core4util16MaybeStaticSliceNtNtNtBG_2tz4tzif9TimestampEECsa9sSWSfjDbm_4jiff.exit.i: ; preds = %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i4, %bb.k, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsb09rMIQFAXO_9jiff_core2tz4tzif8TimeZoneECsa9sSWSfjDbm_4jiff.exit
  %i.as = getelementptr inbounds nuw i8, ptr %i.a, i64 88
  tail call void @llvm.experimental.noalias.scope.decl(metadata !751)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !754)
  %i.at = load i64, ptr %i.as, align 8, !range !16, !alias.scope !757, !noundef !4
  %4 = icmp eq i64 %i.at, 0
  br i1 %4, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsb09rMIQFAXO_9jiff_core4util16MaybeStaticSliceNtNtNtBG_2tz4tzif8DateTimeEECsa9sSWSfjDbm_4jiff.exit.i, label %bb.l

bb.l:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsb09rMIQFAXO_9jiff_core4util16MaybeStaticSliceNtNtNtBG_2tz4tzif9TimestampEECsa9sSWSfjDbm_4jiff.exit.i
  %i.au = getelementptr inbounds nuw i8, ptr %i.a, i64 104
  %.val1.i.i4.i = load i64, ptr %i.au, align 8, !alias.scope !757, !noundef !4 ; 2 uses
  %i.av = icmp eq i64 %.val1.i.i4.i, 0
  br i1 %i.av, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsb09rMIQFAXO_9jiff_core4util16MaybeStaticSliceNtNtNtBG_2tz4tzif8DateTimeEECsa9sSWSfjDbm_4jiff.exit.i, label %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i.i.i.i5.i

_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i.i.i.i5.i: ; preds = %bb.l
  %i.aw = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  %.val.i.i6.i = load ptr, ptr %i.aw, align 8, !alias.scope !757, !nonnull !4, !noundef !4
  %i.ax = shl nuw nsw i64 %.val1.i.i4.i, 3
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i6.i, i64 noundef %i.ax, i64 noundef 8) #19, !noalias !757
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsb09rMIQFAXO_9jiff_core4util16MaybeStaticSliceNtNtNtBG_2tz4tzif8DateTimeEECsa9sSWSfjDbm_4jiff.exit.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsb09rMIQFAXO_9jiff_core4util16MaybeStaticSliceNtNtNtBG_2tz4tzif8DateTimeEECsa9sSWSfjDbm_4jiff.exit.i: ; preds = %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i.i.i.i5.i, %bb.l, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsb09rMIQFAXO_9jiff_core4util16MaybeStaticSliceNtNtNtBG_2tz4tzif9TimestampEECsa9sSWSfjDbm_4jiff.exit.i
  %i.ay = getelementptr inbounds nuw i8, ptr %i.a, i64 112
  tail call void @llvm.experimental.noalias.scope.decl(metadata !758)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !761)
  %i.az = load i64, ptr %i.ay, align 8, !range !16, !alias.scope !764, !noundef !4
  %5 = icmp eq i64 %i.az, 0
  br i1 %5, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsb09rMIQFAXO_9jiff_core4util16MaybeStaticSliceNtNtNtBG_2tz4tzif8DateTimeEECsa9sSWSfjDbm_4jiff.exit10.i, label %bb.m

bb.m:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsb09rMIQFAXO_9jiff_core4util16MaybeStaticSliceNtNtNtBG_2tz4tzif8DateTimeEECsa9sSWSfjDbm_4jiff.exit.i
  %i.ba = getelementptr inbounds nuw i8, ptr %i.a, i64 128
  %.val1.i.i7.i = load i64, ptr %i.ba, align 8, !alias.scope !764, !noundef !4 ; 2 uses
  %i.bb = icmp eq i64 %.val1.i.i7.i, 0
  br i1 %i.bb, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsb09rMIQFAXO_9jiff_core4util16MaybeStaticSliceNtNtNtBG_2tz4tzif8DateTimeEECsa9sSWSfjDbm_4jiff.exit10.i, label %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i.i.i.i8.i

_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i.i.i.i8.i: ; preds = %bb.m
  %i.bc = getelementptr inbounds nuw i8, ptr %i.a, i64 120
  %.val.i.i9.i6 = load ptr, ptr %i.bc, align 8, !alias.scope !764, !nonnull !4, !noundef !4
  %i.bd = shl nuw nsw i64 %.val1.i.i7.i, 3
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i9.i6, i64 noundef %i.bd, i64 noundef 8) #19, !noalias !764
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsb09rMIQFAXO_9jiff_core4util16MaybeStaticSliceNtNtNtBG_2tz4tzif8DateTimeEECsa9sSWSfjDbm_4jiff.exit10.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsb09rMIQFAXO_9jiff_core4util16MaybeStaticSliceNtNtNtBG_2tz4tzif8DateTimeEECsa9sSWSfjDbm_4jiff.exit10.i: ; preds = %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i.i.i.i8.i, %bb.m, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsb09rMIQFAXO_9jiff_core4util16MaybeStaticSliceNtNtNtBG_2tz4tzif8DateTimeEECsa9sSWSfjDbm_4jiff.exit.i
  %i.be = getelementptr inbounds nuw i8, ptr %i.a, i64 136
  tail call void @llvm.experimental.noalias.scope.decl(metadata !765)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !768)
  %i.bf = load i64, ptr %i.be, align 8, !range !16, !alias.scope !771, !noundef !4
  %6 = icmp eq i64 %i.bf, 0
  br i1 %6, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsb09rMIQFAXO_9jiff_core2tz4tzif11TransitionsECsa9sSWSfjDbm_4jiff.exit, label %bb.n

bb.n:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsb09rMIQFAXO_9jiff_core4util16MaybeStaticSliceNtNtNtBG_2tz4tzif8DateTimeEECsa9sSWSfjDbm_4jiff.exit10.i
  %i.bg = getelementptr inbounds nuw i8, ptr %i.a, i64 152
  %.val1.i.i11.i = load i64, ptr %i.bg, align 8, !alias.scope !771, !noundef !4 ; 2 uses
  %i.bh = icmp eq i64 %.val1.i.i11.i, 0
  br i1 %i.bh, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsb09rMIQFAXO_9jiff_core2tz4tzif11TransitionsECsa9sSWSfjDbm_4jiff.exit, label %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i.i.i.i12.i

_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i.i.i.i12.i: ; preds = %bb.n
  %i.bi = getelementptr inbounds nuw i8, ptr %i.a, i64 144
  %.val.i.i13.i = load ptr, ptr %i.bi, align 8, !alias.scope !771, !nonnull !4, !noundef !4
  %i.bj = shl nuw nsw i64 %.val1.i.i11.i, 1
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i13.i, i64 noundef %i.bj, i64 noundef 1) #19, !noalias !771
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsb09rMIQFAXO_9jiff_core2tz4tzif11TransitionsECsa9sSWSfjDbm_4jiff.exit

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsb09rMIQFAXO_9jiff_core2tz4tzif11TransitionsECsa9sSWSfjDbm_4jiff.exit: ; preds = %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i.i.i.i12.i, %bb.n, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsb09rMIQFAXO_9jiff_core4util16MaybeStaticSliceNtNtNtBG_2tz4tzif8DateTimeEECsa9sSWSfjDbm_4jiff.exit10.i
  %i.bk = icmp eq ptr %i.a, inttoptr (i64 -1 to ptr)
  br i1 %i.bk, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync4WeakNtNtNtCsb09rMIQFAXO_9jiff_core2tz4tzif18MaybeNamedTimeZoneRNtNtBG_5alloc6GlobalEECsa9sSWSfjDbm_4jiff.exit2, label %bb.o

bb.o:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsb09rMIQFAXO_9jiff_core2tz4tzif11TransitionsECsa9sSWSfjDbm_4jiff.exit
  %i.bl = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.bm = atomicrmw sub ptr %i.bl, i64 1 release, align 8
  %i.bn = icmp eq i64 %i.bm, 1
  br i1 %i.bn, label %bb.p, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync4WeakNtNtNtCsb09rMIQFAXO_9jiff_core2tz4tzif18MaybeNamedTimeZoneRNtNtBG_5alloc6GlobalEECsa9sSWSfjDbm_4jiff.exit2

bb.p:                                             ; preds = %bb.o
  fence acquire
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.a, i64 noundef 280, i64 noundef 8) #19
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync4WeakNtNtNtCsb09rMIQFAXO_9jiff_core2tz4tzif18MaybeNamedTimeZoneRNtNtBG_5alloc6GlobalEECsa9sSWSfjDbm_4jiff.exit2

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync4WeakNtNtNtCsb09rMIQFAXO_9jiff_core2tz4tzif18MaybeNamedTimeZoneRNtNtBG_5alloc6GlobalEECsa9sSWSfjDbm_4jiff.exit2: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsb09rMIQFAXO_9jiff_core2tz4tzif11TransitionsECsa9sSWSfjDbm_4jiff.exit, %bb.o, %bb.p
  ret void
}

; Function Attrs: noinline nounwind nonlazybind uwtable
define void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtCsb09rMIQFAXO_9jiff_core2tz5posix8TimeZoneE9drop_slowCsa9sSWSfjDbm_4jiff(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !4, !noundef !4 ; 9 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !772)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !775)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !778)
  %i.c = load i8, ptr %i.b, align 8, !range !116, !alias.scope !781, !noundef !4
  %switch.i.i.i = icmp samesign ult i8 %i.c, 2
  br i1 %switch.i.i.i, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsb09rMIQFAXO_9jiff_core4util8SmallStrKj6_EECsa9sSWSfjDbm_4jiff.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %.val1.i.i.i = load i64, ptr %i.d, align 8, !alias.scope !781, !noundef !4 ; 2 uses
  %i.e = icmp eq i64 %.val1.i.i.i, 0
  br i1 %i.e, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsb09rMIQFAXO_9jiff_core4util8SmallStrKj6_EECsa9sSWSfjDbm_4jiff.exit.i, label %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i

_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i: ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %.val.i.i.i = load ptr, ptr %i.f, align 8, !alias.scope !781, !nonnull !4, !noundef !4
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i, i64 noundef %.val1.i.i.i, i64 noundef 1) #19, !noalias !781
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsb09rMIQFAXO_9jiff_core4util8SmallStrKj6_EECsa9sSWSfjDbm_4jiff.exit.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsb09rMIQFAXO_9jiff_core4util8SmallStrKj6_EECsa9sSWSfjDbm_4jiff.exit.i: ; preds = %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i, %bb.b, %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  tail call void @llvm.experimental.noalias.scope.decl(metadata !782)
  %i.h = load i8, ptr %i.g, align 8, !range !15, !alias.scope !785, !noundef !4 ; 2 uses
  %i.i = icmp eq i8 %i.h, -1
  br i1 %i.i, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsb09rMIQFAXO_9jiff_core2tz5posix8TimeZoneECsa9sSWSfjDbm_4jiff.exit, label %bb.c

bb.c:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsb09rMIQFAXO_9jiff_core4util8SmallStrKj6_EECsa9sSWSfjDbm_4jiff.exit.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !786)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !789)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !792)
  %switch.i.i.i.i.i = icmp samesign ult i8 %i.h, 2
  br i1 %switch.i.i.i.i.i, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsb09rMIQFAXO_9jiff_core2tz5posix8TimeZoneECsa9sSWSfjDbm_4jiff.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %.val1.i.i.i.i.i = load i64, ptr %i.j, align 8, !alias.scope !795, !noundef !4 ; 2 uses
  %i.k = icmp eq i64 %.val1.i.i.i.i.i, 0
  br i1 %i.k, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsb09rMIQFAXO_9jiff_core2tz5posix8TimeZoneECsa9sSWSfjDbm_4jiff.exit, label %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i

_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i: ; preds = %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %.val.i.i.i.i.i = load ptr, ptr %i.l, align 8, !alias.scope !795, !nonnull !4, !noundef !4
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i.i, i64 noundef %.val1.i.i.i.i.i, i64 noundef 1) #19, !noalias !795
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsb09rMIQFAXO_9jiff_core2tz5posix8TimeZoneECsa9sSWSfjDbm_4jiff.exit

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsb09rMIQFAXO_9jiff_core2tz5posix8TimeZoneECsa9sSWSfjDbm_4jiff.exit: ; preds = %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i, %bb.d, %bb.c, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsb09rMIQFAXO_9jiff_core4util8SmallStrKj6_EECsa9sSWSfjDbm_4jiff.exit.i
  %i.m = icmp eq ptr %i.a, inttoptr (i64 -1 to ptr)
  br i1 %i.m, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync4WeakNtNtNtCsb09rMIQFAXO_9jiff_core2tz5posix8TimeZoneRNtNtBG_5alloc6GlobalEECsa9sSWSfjDbm_4jiff.exit2, label %bb.e

bb.e:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsb09rMIQFAXO_9jiff_core2tz5posix8TimeZoneECsa9sSWSfjDbm_4jiff.exit
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.o = atomicrmw sub ptr %i.n, i64 1 release, align 8
  %i.p = icmp eq i64 %i.o, 1
  br i1 %i.p, label %bb.f, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync4WeakNtNtNtCsb09rMIQFAXO_9jiff_core2tz5posix8TimeZoneRNtNtBG_5alloc6GlobalEECsa9sSWSfjDbm_4jiff.exit2

bb.f:                                             ; preds = %bb.e
  fence acquire
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.a, i64 noundef 96, i64 noundef 8) #19
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync4WeakNtNtNtCsb09rMIQFAXO_9jiff_core2tz5posix8TimeZoneRNtNtBG_5alloc6GlobalEECsa9sSWSfjDbm_4jiff.exit2

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync4WeakNtNtNtCsb09rMIQFAXO_9jiff_core2tz5posix8TimeZoneRNtNtBG_5alloc6GlobalEECsa9sSWSfjDbm_4jiff.exit2: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsb09rMIQFAXO_9jiff_core2tz5posix8TimeZoneECsa9sSWSfjDbm_4jiff.exit, %bb.e, %bb.f
  ret void
}

; Function Attrs: noinline nonlazybind uwtable
define void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtNtNtCsa9sSWSfjDbm_4jiff2tz2db8zoneinfo5inner17ZoneInfoNameInnerE9drop_slowBQ_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !4, !noundef !4 ; 11 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 3 uses
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCsa9sSWSfjDbm_4jiff(ptr noalias nofree noundef nonnull align 8 dereferenceable(80) %i.b)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringECsa9sSWSfjDbm_4jiff.exit.i.i unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCsa9sSWSfjDbm_4jiff(ptr noalias nofree noundef nonnull align 8 dereferenceable(80) %i.b)
          to label %.body.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #22
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringECsa9sSWSfjDbm_4jiff.exit.i.i: ; preds = %bb.a
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCsa9sSWSfjDbm_4jiff(ptr noalias nofree noundef nonnull align 8 dereferenceable(80) %i.b)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsaL1QbXo9JQH_3std4path7PathBufECsa9sSWSfjDbm_4jiff.exit.i unwind label %bb.d

bb.d:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringECsa9sSWSfjDbm_4jiff.exit.i.i
  %i.e = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.d, %bb.b
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.e, %bb.d ], [ %i.c, %bb.b ]
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECsa9sSWSfjDbm_4jiff(ptr noalias nofree noundef align 8 dereferenceable(24) %i.f) #23
          to label %.body2.i unwind label %bb.j

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsaL1QbXo9JQH_3std4path7PathBufECsa9sSWSfjDbm_4jiff.exit.i: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringECsa9sSWSfjDbm_4jiff.exit.i.i
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 40 ; 3 uses
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCsa9sSWSfjDbm_4jiff(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECsa9sSWSfjDbm_4jiff.exit.i.i unwind label %bb.e

bb.e:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsaL1QbXo9JQH_3std4path7PathBufECsa9sSWSfjDbm_4jiff.exit.i
  %i.h = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCsa9sSWSfjDbm_4jiff(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %.body2.i unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.i = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #22
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECsa9sSWSfjDbm_4jiff.exit.i.i: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsaL1QbXo9JQH_3std4path7PathBufECsa9sSWSfjDbm_4jiff.exit.i
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCsa9sSWSfjDbm_4jiff(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECsa9sSWSfjDbm_4jiff.exit.i unwind label %bb.g

.body2.i:                                         ; preds = %bb.g, %bb.e, %.body.i
  %.pn.i = phi { ptr, i32 } [ %eh.lpad-body.i, %.body.i ], [ %i.k, %bb.g ], [ %i.h, %bb.e ]
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECsa9sSWSfjDbm_4jiff(ptr noalias nofree noundef align 8 dereferenceable(24) %i.j) #23
          to label %.body unwind label %bb.j

bb.g:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECsa9sSWSfjDbm_4jiff.exit.i.i
  %i.k = landingpad { ptr, i32 }
          cleanup
  br label %.body2.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECsa9sSWSfjDbm_4jiff.exit.i: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECsa9sSWSfjDbm_4jiff.exit.i.i
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 64 ; 3 uses
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCsa9sSWSfjDbm_4jiff(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.l)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECsa9sSWSfjDbm_4jiff.exit6.i unwind label %bb.h

bb.h:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECsa9sSWSfjDbm_4jiff.exit.i
  %i.m = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCsa9sSWSfjDbm_4jiff(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.l)
          to label %.body unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #22
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECsa9sSWSfjDbm_4jiff.exit6.i: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECsa9sSWSfjDbm_4jiff.exit.i
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCsa9sSWSfjDbm_4jiff(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.l)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtNtCsa9sSWSfjDbm_4jiff2tz2db8zoneinfo5inner17ZoneInfoNameInnerEBL_.exit unwind label %bb.k

bb.j:                                             ; preds = %.body2.i, %.body.i
  %i.o = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #22
  unreachable

bb.k:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECsa9sSWSfjDbm_4jiff.exit6.i
  %i.p = landingpad { ptr, i32 }
          cleanup
  br label %.body
end_hunk_2
