inline.NumInlined: 294
inline.NumDeleted: 122
begin_hunk_0_@_RINvNtCs3TL38MOHY2H_17pretty_assertions7printer11write_linesNtNtCsbvkFyIu7lgC_4core3fmt9FormatterECsfY7SmN0bPrO_14deltalake_test:bb.a
  %i.e = alloca [24 x i8], align 8                ; 4 uses
  %i.f = alloca [24 x i8], align 8                ; 4 uses
  %i.g = alloca [16 x i8], align 8                ; 5 uses
  %i.h = alloca [32 x i8], align 16               ; 6 uses
  %i.i = alloca [24 x i8], align 8                ; 4 uses
  %i.j = alloca [24 x i8], align 8                ; 12 uses
  %i.k = alloca [32 x i8], align 8                ; 6 uses
  %i.l = alloca [16 x i8], align 8                ; 3 uses
  %i.m = alloca [16 x i8], align 8                ; 5 uses
  %i.n = alloca [32 x i8], align 16               ; 6 uses
  %i.o = alloca [24 x i8], align 8                ; 4 uses
  %i.p = alloca [24 x i8], align 8                ; 12 uses
  %i.q = alloca [32 x i8], align 8                ; 6 uses
end_hunk_0
begin_hunk_1_@_RINvNtCs3TL38MOHY2H_17pretty_assertions7printer11write_linesNtNtCsbvkFyIu7lgC_4core3fmt9FormatterECsfY7SmN0bPrO_14deltalake_test:bb.a
  %.sroa.527.sroa.4.0..sroa.323.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %i.ah = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 10 uses
  %.sroa.440.0..sroa_idx.a = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.aj = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %.sroa.446.0..sroa_idx.a = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.ak = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.al = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.am = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 4 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  %.sroa.2.0..sroa_idx.i.a = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  %.sroa.3.0..sroa_idx.i.a = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.4.0..sroa_idx.i100.a = getelementptr inbounds nuw i8, ptr %i.b, i64 10
  %.sroa.582.0..sroa_idx.i.a = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %.sroa.6.0..sroa_idx.i.a = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.2101.0..sroa_idx.i.a = getelementptr inbounds nuw i8, ptr %i.b, i64 20
  %.sroa.3102.0..sroa_idx.i.a = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.4103.0..sroa_idx.i.a = getelementptr inbounds nuw i8, ptr %i.a, i64 10
  %.sroa.5104.0..sroa_idx.i.a = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  %.sroa.6105.0..sroa_idx.i.a = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.450.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 20
  %i.ao = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %.sroa.454.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.ap = getelementptr inbounds nuw i8, ptr %i.k, i64 8
end_hunk_1
begin_hunk_2_@_RINvNtCs3TL38MOHY2H_17pretty_assertions7printer11write_linesNtNtCsbvkFyIu7lgC_4core3fmt9FormatterECsfY7SmN0bPrO_14deltalake_test:bb.a
bb.l:                                             ; preds = %bb.h, %bb.m
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.8.1) ]
  store ptr %.sroa.8.1, ptr %i.l, align 8
  store i64 %.sroa.10.1, ptr %i.al, align 8
  %i.bd = load i64, ptr %i.ag, align 8, !noundef !3
  %i.be = icmp eq i64 %i.bd, 1
  br i1 %i.be, label %bb.ag, label %bb.be
end_hunk_2
begin_hunk_3_@_RINvNtCs3TL38MOHY2H_17pretty_assertions7printer11write_linesNtNtCsbvkFyIu7lgC_4core3fmt9FormatterECsfY7SmN0bPrO_14deltalake_test:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  store <2 x ptr> <ptr @10, ptr @_RNvXsk_NtCsbvkFyIu7lgC_4core3fmtcNtB5_7Display3fmt>, ptr %i.n, align 16
  store ptr %i.r, ptr %.sroa.440.0..sroa_idx.a, align 16
  store ptr @_RNvXs1i_NtCsbvkFyIu7lgC_4core3fmtReNtB6_7Display3fmtCsfY7SmN0bPrO_14deltalake_test, ptr %i.aj, align 8
  invoke void @_RNvNvNtCs6Po7BT7Nknu_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.o, ptr noundef nonnull @1, ptr noundef nonnull %i.n)
          to label %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs6Po7BT7Nknu_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsfY7SmN0bPrO_14deltalake_test.exit unwind label %.loopexit

end_hunk_3
begin_hunk_4_@_RINvNtCs3TL38MOHY2H_17pretty_assertions7printer11write_linesNtNtCsbvkFyIu7lgC_4core3fmt9FormatterECsfY7SmN0bPrO_14deltalake_test:bb.a

bb.x:                                             ; preds = %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs6Po7BT7Nknu_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsfY7SmN0bPrO_14deltalake_test.exit
  store ptr %i.p, ptr %i.q, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.446.0..sroa_idx.a, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  store ptr %i.q, ptr %i.m, align 8
  store ptr @_RNvXs4_NtCsfxCIOvQJdVR_5yansi5paintINtB5_7PaintedRNtNtCs6Po7BT7Nknu_5alloc6string6StringENtNtCsbvkFyIu7lgC_4core3fmt7Display3fmtCsfY7SmN0bPrO_14deltalake_test, ptr %i.ak, align 8
  %i.bn = load ptr, ptr %0, align 8, !alias.scope !63, !nonnull !3, !noundef !3
  %i.bo = load ptr, ptr %i.ai, align 8, !alias.scope !63, !nonnull !3, !align !14, !noundef !3
  %i.bp = invoke noundef zeroext i1 @_RNvNtCsbvkFyIu7lgC_4core3fmt5write(ptr noundef nonnull %i.bn, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.bo, ptr noundef nonnull @2, ptr noundef nonnull %i.m)
end_hunk_4
begin_hunk_5_@_RINvNtCs3TL38MOHY2H_17pretty_assertions7printer11write_linesNtNtCsbvkFyIu7lgC_4core3fmt9FormatterECsfY7SmN0bPrO_14deltalake_test:bb.a
.noexc101:                                        ; preds = %bb.ah
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !69
  store ptr %0, ptr %i.c, align 8, !noalias !69
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.am, ptr noundef nonnull align 8 dereferenceable(24) @11, i64 24, i1 false), !noalias !69
  %i.cc = invoke fastcc noundef zeroext i1 @_RINvMs_NtCs3TL38MOHY2H_17pretty_assertions7printerINtB5_12InlineWriterNtNtCsbvkFyIu7lgC_4core3fmt9FormatterE16write_with_styleNtNtCsfxCIOvQJdVR_5yansi5color5ColorECsfY7SmN0bPrO_14deltalake_test(ptr noalias noundef align 8 dereferenceable(32) %i.c, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(4) @0, i32 4)
          to label %bb.ai unwind label %.loopexit.split-lp.loopexit.split-lp.i

end_hunk_5
begin_hunk_6_@_RINvNtCs3TL38MOHY2H_17pretty_assertions7printer11write_linesNtNtCsbvkFyIu7lgC_4core3fmt9FormatterECsfY7SmN0bPrO_14deltalake_test:bb.a
  br i1 %i.cc, label %_RNvMs_NtCs3TL38MOHY2H_17pretty_assertions7printerINtB4_12InlineWriterNtNtCsbvkFyIu7lgC_4core3fmt9FormatterE6finishCsfY7SmN0bPrO_14deltalake_test.exit.thread.i, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.cd = load ptr, ptr %i.an, align 8, !noalias !69, !nonnull !3, !noundef !3 ; 2 uses
  %i.ce = load i64, ptr %.sroa.2.0..sroa_idx.i.a, align 8, !noalias !69, !noundef !3 ; 2 uses
  %.idx.i = shl nuw nsw i64 %i.ce, 3
  %i.cf = getelementptr inbounds nuw i8, ptr %i.cd, i64 %.idx.i
  %i.cg = icmp eq i64 %i.ce, 0
end_hunk_6
begin_hunk_7_@_RINvNtCs3TL38MOHY2H_17pretty_assertions7printer11write_linesNtNtCsbvkFyIu7lgC_4core3fmt9FormatterECsfY7SmN0bPrO_14deltalake_test:bb.a

._crit_edge.i:                                    ; preds = %bb.an, %bb.aj
  %i.cm = load ptr, ptr %i.c, align 8, !alias.scope !75, !noalias !69, !nonnull !3, !align !14, !noundef !3 ; 3 uses
  %i.cn = invoke noundef zeroext i1 @_RNvMNtCsfxCIOvQJdVR_5yansi5styleNtB2_5Style10fmt_suffix(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.am, ptr noundef nonnull %i.cm, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @4)
          to label %.noexc.i unwind label %.loopexit.split-lp.loopexit.split-lp.i

.noexc.i:                                         ; preds = %._crit_edge.i
end_hunk_7
begin_hunk_8_@_RINvNtCs3TL38MOHY2H_17pretty_assertions7printer11write_linesNtNtCsbvkFyIu7lgC_4core3fmt9FormatterECsfY7SmN0bPrO_14deltalake_test:bb.a
  %i.cu = getelementptr inbounds nuw i8, ptr %.sroa.06.0195.i, i64 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !69
  store ptr null, ptr %i.b, align 8, !noalias !69
  store i16 1, ptr %.sroa.3.0..sroa_idx.i.a, align 8, !noalias !69
  store i16 0, ptr %.sroa.4.0..sroa_idx.i100.a, align 2, !noalias !69
  store i32 4, ptr %.sroa.582.0..sroa_idx.i.a, align 4, !noalias !69
  store i32 13313, ptr %.sroa.6.0..sroa_idx.i.a, align 8, !noalias !69
  store i32 0, ptr %.sroa.2101.0..sroa_idx.i.a, align 4, !noalias !69
  %i.cv = invoke fastcc noundef zeroext i1 @_RINvMs_NtCs3TL38MOHY2H_17pretty_assertions7printerINtB5_12InlineWriterNtNtCsbvkFyIu7lgC_4core3fmt9FormatterE16write_with_styleNtNtCsfxCIOvQJdVR_5yansi5style5StyleECsfY7SmN0bPrO_14deltalake_test(ptr noalias noundef align 8 dereferenceable(32) %i.c, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.cu, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.b)
          to label %bb.ao unwind label %.loopexit.split-lp.loopexit.i

end_hunk_8
begin_hunk_9_@_RINvNtCs3TL38MOHY2H_17pretty_assertions7printer11write_linesNtNtCsbvkFyIu7lgC_4core3fmt9FormatterECsfY7SmN0bPrO_14deltalake_test:bb.a
  unreachable

bb.as:                                            ; preds = %.noexc63.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.am, ptr noundef nonnull align 8 dereferenceable(24) @11, i64 24, i1 false), !noalias !69
  %i.da = invoke fastcc noundef zeroext i1 @_RINvMs_NtCs3TL38MOHY2H_17pretty_assertions7printerINtB5_12InlineWriterNtNtCsbvkFyIu7lgC_4core3fmt9FormatterE16write_with_styleNtNtCsfxCIOvQJdVR_5yansi5color5ColorECsfY7SmN0bPrO_14deltalake_test(ptr noalias noundef align 8 dereferenceable(32) %i.c, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(4) @10, i32 5)
          to label %bb.at unwind label %.loopexit.split-lp.loopexit.split-lp.i

end_hunk_9
begin_hunk_10_@_RINvNtCs3TL38MOHY2H_17pretty_assertions7printer11write_linesNtNtCsbvkFyIu7lgC_4core3fmt9FormatterECsfY7SmN0bPrO_14deltalake_test:bb.a
  br i1 %i.da, label %_RNvMs_NtCs3TL38MOHY2H_17pretty_assertions7printerINtB4_12InlineWriterNtNtCsbvkFyIu7lgC_4core3fmt9FormatterE6finishCsfY7SmN0bPrO_14deltalake_test.exit.thread.i, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.db = load ptr, ptr %i.an, align 8, !noalias !69, !nonnull !3, !noundef !3 ; 2 uses
  %i.dc = load i64, ptr %.sroa.2.0..sroa_idx.i.a, align 8, !noalias !69, !noundef !3 ; 2 uses
  %.idx200.i = shl nuw nsw i64 %i.dc, 3
  %i.dd = getelementptr inbounds nuw i8, ptr %i.db, i64 %.idx200.i
  %i.de = icmp eq i64 %i.dc, 0
end_hunk_10
begin_hunk_11_@_RINvNtCs3TL38MOHY2H_17pretty_assertions7printer11write_linesNtNtCsbvkFyIu7lgC_4core3fmt9FormatterECsfY7SmN0bPrO_14deltalake_test:bb.a

._crit_edge199.i:                                 ; preds = %bb.ay, %bb.au
  %i.dk = load ptr, ptr %i.c, align 8, !alias.scope !82, !noalias !69, !nonnull !3, !align !14, !noundef !3 ; 3 uses
  %i.dl = invoke noundef zeroext i1 @_RNvMNtCsfxCIOvQJdVR_5yansi5styleNtB2_5Style10fmt_suffix(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.am, ptr noundef nonnull %i.dk, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @4)
          to label %.noexc65.i unwind label %.loopexit.split-lp.loopexit.split-lp.i

.noexc65.i:                                       ; preds = %._crit_edge199.i
end_hunk_11
begin_hunk_12_@_RINvNtCs3TL38MOHY2H_17pretty_assertions7printer11write_linesNtNtCsbvkFyIu7lgC_4core3fmt9FormatterECsfY7SmN0bPrO_14deltalake_test:bb.a
  %i.dt = getelementptr inbounds nuw i8, ptr %.sroa.014.0196.i, i64 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !69
  store ptr null, ptr %i.a, align 8, !noalias !69
  store i16 1, ptr %.sroa.3102.0..sroa_idx.i.a, align 8, !noalias !69
  store i16 0, ptr %.sroa.4103.0..sroa_idx.i.a, align 2, !noalias !69
  store i32 5, ptr %.sroa.5104.0..sroa_idx.i.a, align 4, !noalias !69
  store i32 5633, ptr %.sroa.6105.0..sroa_idx.i.a, align 8, !noalias !69
  store i32 0, ptr %.sroa.450.0..sroa_idx, align 4, !noalias !69
  %i.du = invoke fastcc noundef zeroext i1 @_RINvMs_NtCs3TL38MOHY2H_17pretty_assertions7printerINtB5_12InlineWriterNtNtCsbvkFyIu7lgC_4core3fmt9FormatterE16write_with_styleNtNtCsfxCIOvQJdVR_5yansi5style5StyleECsfY7SmN0bPrO_14deltalake_test(ptr noalias noundef align 8 dereferenceable(32) %i.c, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.dt, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.a)
          to label %bb.ba unwind label %.loopexit189.i

end_hunk_12
begin_hunk_13_@_RINvNtCs3TL38MOHY2H_17pretty_assertions7printer11write_linesNtNtCsbvkFyIu7lgC_4core3fmt9FormatterECsfY7SmN0bPrO_14deltalake_test:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  store <2 x ptr> <ptr @10, ptr @_RNvXsk_NtCsbvkFyIu7lgC_4core3fmtcNtB5_7Display3fmt>, ptr %i.h, align 16
  store ptr %i.l, ptr %i.ao, align 16
  store ptr @_RNvXs1i_NtCsbvkFyIu7lgC_4core3fmtReNtB6_7Display3fmtCsfY7SmN0bPrO_14deltalake_test, ptr %.sroa.454.0..sroa_idx, align 8
  invoke void @_RNvNvNtCs6Po7BT7Nknu_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.i, ptr noundef nonnull @1, ptr noundef nonnull %i.h)
          to label %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs6Po7BT7Nknu_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsfY7SmN0bPrO_14deltalake_test.exit106 unwind label %.loopexit
end_hunk_13
