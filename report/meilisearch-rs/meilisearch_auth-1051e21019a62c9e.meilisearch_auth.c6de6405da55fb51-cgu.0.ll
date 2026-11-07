Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/meilisearch-rs/original/meilisearch_auth-1051e21019a62c9e.meilisearch_auth.c6de6405da55fb51-cgu.0?download=true
inline.NumInlined: 2724
inline.NumDeleted: 1326
loop-unroll.NumCompletelyUnrolled: 35
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 37
begin_hunk_0_@"_ZN87_$LT$heed_types..serde_json..SerdeJson$LT$T$GT$$u20$as$u20$heed_traits..BytesDecode$GT$12bytes_decode17hefc7e53531005b46E":bb.a
  store i8 0, ptr %i.bc, align 8, !noalias !8977
  %i.eh = invoke noundef nonnull align 8 ptr @"_ZN66_$LT$serde_json..error..Error$u20$as$u20$serde_core..de..Error$GT$12invalid_type17h38714a19462d06b7E"(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.bc, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @25)
          to label %.noexc22.i unwind label %bb.jg, !noalias !8919

.noexc22.i:                                       ; preds = %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bc), !noalias !8977
  br label %.invoke.i

bb.ag:                                            ; preds = %.noexc16.i
  %i.ei = load ptr, ptr %i.dx, align 8, !noalias !8932, !nonnull !9, !align !13, !noundef !9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bp), !noalias !8932
  br label %.noexc19.i

bb.ah:                                            ; preds = %.noexc16.i
  %.sroa.2.0.copyload.i.i.i.i.i.i = load i64, ptr %i.dx, align 8, !noalias !8932 ; 3 uses
  switch i64 %i.dv, label %default.unreachable [
    i64 0, label %bb.ai
    i64 1, label %bb.aj
    i64 2, label %bb.ak
  ]

default.unreachable:                              ; preds = %bb.is, %bb.gp, %bb.ge, %bb.fn, %bb.fc, %bb.ah
  unreachable

bb.ai:                                            ; preds = %bb.ah
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bb), !noalias !8978
  %i.ej = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  store i64 %.sroa.2.0.copyload.i.i.i.i.i.i, ptr %i.ej, align 8, !noalias !8978
  store i8 3, ptr %i.bb, align 8, !noalias !8978
  %i.ek = invoke noundef nonnull align 8 ptr @"_ZN66_$LT$serde_json..error..Error$u20$as$u20$serde_core..de..Error$GT$12invalid_type17h38714a19462d06b7E"(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.bb, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @25)
          to label %.noexc24.i unwind label %bb.jg, !noalias !8919

.noexc24.i:                                       ; preds = %bb.ai
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bb), !noalias !8978
  br label %bb.al

bb.aj:                                            ; preds = %bb.ah
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ba), !noalias !8979
  %i.el = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  store i64 %.sroa.2.0.copyload.i.i.i.i.i.i, ptr %i.el, align 8, !noalias !8979
  store i8 1, ptr %i.ba, align 8, !noalias !8979
  %i.em = invoke noundef nonnull align 8 ptr @"_ZN66_$LT$serde_json..error..Error$u20$as$u20$serde_core..de..Error$GT$12invalid_type17h38714a19462d06b7E"(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.ba, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @25)
          to label %.noexc25.i unwind label %bb.jg, !noalias !8919

.noexc25.i:                                       ; preds = %bb.aj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ba), !noalias !8979
  br label %bb.al

bb.ak:                                            ; preds = %bb.ah
  call void @llvm.lifetime.start.p0(ptr nonnull %i.az), !noalias !8980
  %i.en = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  store i64 %.sroa.2.0.copyload.i.i.i.i.i.i, ptr %i.en, align 8, !noalias !8980
  store i8 2, ptr %i.az, align 8, !noalias !8980
  %i.eo = invoke noundef nonnull align 8 ptr @"_ZN66_$LT$serde_json..error..Error$u20$as$u20$serde_core..de..Error$GT$12invalid_type17h38714a19462d06b7E"(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.az, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @25)
          to label %.noexc26.i unwind label %bb.jg, !noalias !8919

.noexc26.i:                                       ; preds = %bb.ak
  call void @llvm.lifetime.end.p0(ptr nonnull %i.az), !noalias !8980
  br label %bb.al

bb.al:                                            ; preds = %.noexc26.i, %.noexc25.i, %.noexc24.i
  %.sink.i.i.i.i.i.i.i = phi ptr [ %i.eo, %.noexc26.i ], [ %i.em, %.noexc25.i ], [ %i.ek, %.noexc24.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bp), !noalias !8932
  br label %.invoke.i

bb.am:                                            ; preds = %.noexc17.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bn), !noalias !8932
  br label %.noexc19.i

bb.an:                                            ; preds = %.noexc17.i
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bn, i64 16
  %.sroa.4.0.copyload.i.i.i.i.i.i = load i64, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !8932
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ec) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !8981
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !8982
  store i128 -170141183460469231731687303715884105728, ptr %i.g, align 16, !noalias !8983
  %.sroa.7.0..sroa_idx3.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 2 uses
  store i32 -2147483648, ptr %.sroa.7.0..sroa_idx3.i.i.i.i.i.i.i.i, align 16, !noalias !8983
  %.sroa.8.0..sroa_idx7.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 20 ; 2 uses
  store i32 -2147483648, ptr %.sroa.8.0..sroa_idx7.i.i.i.i.i.i.i.i, align 4, !noalias !8983
  %.sroa.9.0..sroa_idx11.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 24 ; 2 uses
  store i32 -1, ptr %.sroa.9.0..sroa_idx11.i.i.i.i.i.i.i.i, align 8, !noalias !8983
  %.sroa.10.0..sroa_idx15.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 28 ; 2 uses
  store i16 -32768, ptr %.sroa.10.0..sroa_idx15.i.i.i.i.i.i.i.i, align 4, !noalias !8983
  %.sroa.11.0..sroa_idx19.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 30 ; 2 uses
  store i16 -32768, ptr %.sroa.11.0..sroa_idx19.i.i.i.i.i.i.i.i, align 2, !noalias !8983
  %.sroa.12.0..sroa_idx23.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 32 ; 2 uses
  store i16 0, ptr %.sroa.12.0..sroa_idx23.i.i.i.i.i.i.i.i, align 16, !noalias !8983
  %.sroa.13.0..sroa_idx27.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 34 ; 2 uses
  %.sroa.14.0..sroa_idx31.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 35
  %.sroa.15.0..sroa_idx35.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 36
  %.sroa.16.0..sroa_idx39.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 37
  %.sroa.17.0..sroa_idx43.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 38 ; 2 uses
  store i32 -1, ptr %.sroa.13.0..sroa_idx27.i.i.i.i.i.i.i.i, align 2, !noalias !8984
  %.sroa.18.0..sroa_idx47.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 39
  %.sroa.19.0..sroa_idx51.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  %.sroa.20.0..sroa_idx55.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 41
  %.sroa.21.0..sroa_idx59.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 42
  %.sroa.22.0..sroa_idx63.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 43
  %.sroa.23.0..sroa_idx67.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 44
  %.sroa.24.0..sroa_idx71.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 45
  store <8 x i8> <i8 0, i8 0, i8 -1, i8 0, i8 -1, i8 -1, i8 -128, i8 -128>, ptr %.sroa.17.0..sroa_idx43.i.i.i.i.i.i.i.i, align 2, !noalias !8983
  %.sroa.25.0..sroa_idx75.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 46 ; 2 uses
  %.sroa.26.0..sroa_idx79.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 47
  %.sroa.27.0..sroa_idx83.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 48
  %.sroa.28.0..sroa_idx87.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 49
  store <4 x i8> <i8 -128, i8 0, i8 7, i8 2>, ptr %.sroa.25.0..sroa_idx75.i.i.i.i.i.i.i.i, align 2, !noalias !8983
  %.sroa.29.0..sroa_idx91.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 50 ; 2 uses
  %.sroa.30.0..sroa_idx95.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 51
  %.sroa.31.0..sroa_idx99.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 52
  %.sroa.32.0..sroa_idx103.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 53
  store i32 0, ptr %.sroa.29.0..sroa_idx91.i.i.i.i.i.i.i.i, align 2, !noalias !8984
  %i.ep = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 5 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !8982
  invoke fastcc void @"_ZN4time7parsing6parsed141_$LT$impl$u20$time..parsing..parsed..sealed..AnyFormatItem$u20$for$u20$time..format_description..borrowed_format_item..BorrowedFormatItem$GT$10parse_item17h298a3c813ae1d4e8E"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.f, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @68, ptr noalias noundef align 16 dereferenceable(64) %i.g, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.ec, i64 noundef %.sroa.4.0.copyload.i.i.i.i.i.i)
          to label %.noexc28.i unwind label %bb.jg, !noalias !8919

.noexc28.i:                                       ; preds = %bb.an
  %i.er = load i64, ptr %i.f, align 8, !range !16, !noalias !8982, !noundef !9 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.er, 3
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %bb.ao, label %bb.as

bb.ao:                                            ; preds = %.noexc28.i
  %i.es = load ptr, ptr %i.ep, align 8, !noalias !8982, !nonnull !9, !align !14, !noundef !9
  %i.et = load i64, ptr %i.eq, align 8, !noalias !8982, !noundef !9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !8982
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !8982
  invoke fastcc void @"_ZN4time7parsing6parsed141_$LT$impl$u20$time..parsing..parsed..sealed..AnyFormatItem$u20$for$u20$time..format_description..borrowed_format_item..BorrowedFormatItem$GT$10parse_item17h298a3c813ae1d4e8E"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.f, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) getelementptr inbounds nuw (i8, ptr @68, i64 24), ptr noalias noundef align 16 dereferenceable(64) %i.g, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.es, i64 noundef %i.et)
          to label %.noexc29.i unwind label %bb.jg, !noalias !8919

.noexc29.i:                                       ; preds = %bb.ao
  %i.eu = load i64, ptr %i.f, align 8, !range !16, !noalias !8982, !noundef !9 ; 2 uses
  %.not.i.1.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.eu, 3
  br i1 %.not.i.1.i.i.i.i.i.i.i.i.i.i, label %bb.ap, label %bb.as

bb.ap:                                            ; preds = %.noexc29.i
  %i.ev = load ptr, ptr %i.ep, align 8, !noalias !8982, !nonnull !9, !align !14, !noundef !9
  %i.ew = load i64, ptr %i.eq, align 8, !noalias !8982, !noundef !9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !8982
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !8982
  invoke fastcc void @"_ZN4time7parsing6parsed141_$LT$impl$u20$time..parsing..parsed..sealed..AnyFormatItem$u20$for$u20$time..format_description..borrowed_format_item..BorrowedFormatItem$GT$10parse_item17h298a3c813ae1d4e8E"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.f, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) getelementptr inbounds nuw (i8, ptr @68, i64 48), ptr noalias noundef align 16 dereferenceable(64) %i.g, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.ev, i64 noundef %i.ew)
          to label %.noexc30.i unwind label %bb.jg, !noalias !8919

.noexc30.i:                                       ; preds = %bb.ap
  %i.ex = load i64, ptr %i.f, align 8, !range !16, !noalias !8982, !noundef !9 ; 2 uses
  %.not.i.2.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.ex, 3
  br i1 %.not.i.2.i.i.i.i.i.i.i.i.i.i, label %bb.aq, label %bb.as

bb.aq:                                            ; preds = %.noexc30.i
  %i.ey = load ptr, ptr %i.ep, align 8, !noalias !8982, !nonnull !9, !align !14, !noundef !9
  %i.ez = load i64, ptr %i.eq, align 8, !noalias !8982, !noundef !9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !8982
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !8982
  invoke fastcc void @"_ZN4time7parsing6parsed141_$LT$impl$u20$time..parsing..parsed..sealed..AnyFormatItem$u20$for$u20$time..format_description..borrowed_format_item..BorrowedFormatItem$GT$10parse_item17h298a3c813ae1d4e8E"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.f, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) getelementptr inbounds nuw (i8, ptr @68, i64 72), ptr noalias noundef align 16 dereferenceable(64) %i.g, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.ey, i64 noundef %i.ez)
          to label %.noexc31.i unwind label %bb.jg, !noalias !8919

.noexc31.i:                                       ; preds = %bb.aq
  %i.fa = load i64, ptr %i.f, align 8, !range !16, !noalias !8982, !noundef !9 ; 2 uses
  %.not.i.3.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.fa, 3
  br i1 %.not.i.3.i.i.i.i.i.i.i.i.i.i, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %.noexc31.i
  %i.fb = load ptr, ptr %i.ep, align 8, !noalias !8982, !nonnull !9, !align !14, !noundef !9
  %i.fc = load i64, ptr %i.eq, align 8, !noalias !8982, !noundef !9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !8982
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !8982
  invoke fastcc void @"_ZN4time7parsing6parsed141_$LT$impl$u20$time..parsing..parsed..sealed..AnyFormatItem$u20$for$u20$time..format_description..borrowed_format_item..BorrowedFormatItem$GT$10parse_item17h298a3c813ae1d4e8E"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.f, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) getelementptr inbounds nuw (i8, ptr @68, i64 96), ptr noalias noundef align 16 dereferenceable(64) %i.g, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.fb, i64 noundef %i.fc)
          to label %.noexc32.i unwind label %bb.jg, !noalias !8919

.noexc32.i:                                       ; preds = %bb.ar
  %i.fd = load i64, ptr %i.f, align 8, !range !16, !noalias !8982, !noundef !9 ; 2 uses
  %.not.i.4.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.fd, 3
  br i1 %.not.i.4.i.i.i.i.i.i.i.i.i.i, label %bb.at, label %bb.as

bb.as:                                            ; preds = %.noexc32.i, %.noexc31.i, %.noexc30.i, %.noexc29.i, %.noexc28.i
  %.lcssa.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.er, %.noexc28.i ], [ %i.eu, %.noexc29.i ], [ %i.ex, %.noexc30.i ], [ %i.fa, %.noexc31.i ], [ %i.fd, %.noexc32.i ]
  %.sroa.515.0.copyload.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.ep, align 8, !noalias !8982
  %.sroa.616.0.copyload.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.eq, align 8, !noalias !8982 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !8982
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !8982
  %i.fe = ptrtoint ptr %.sroa.515.0.copyload.i.i.i.i.i.i.i.i.i.i.i to i64 ; 2 uses
  %.sroa.11.sroa.0.0.extract.trunc.i.i.i.i.i.i.i = trunc i64 %i.fe to i32
  %.sroa.11.sroa.7.0.extract.shift.i.i.i.i.i.i.i = lshr i64 %i.fe, 32
  %.sroa.11.sroa.7.0.extract.trunc.i.i.i.i.i.i.i = trunc nuw i64 %.sroa.11.sroa.7.0.extract.shift.i.i.i.i.i.i.i to i32
  %.sroa.14.sroa.0.0.extract.trunc.i.i.i.i.i.i.i = trunc i64 %.sroa.616.0.copyload.i.i.i.i.i.i.i.i.i.i.i to i32
  %.sroa.14.sroa.7.0.extract.shift.i.i.i.i.i.i.i = lshr i64 %.sroa.616.0.copyload.i.i.i.i.i.i.i.i.i.i.i, 32
  %.sroa.14.sroa.7.0.extract.trunc.i.i.i.i.i.i.i = trunc i64 %.sroa.14.sroa.7.0.extract.shift.i.i.i.i.i.i.i to i16
  %.sroa.14.sroa.8.0.extract.shift.i.i.i.i.i.i.i = lshr i64 %.sroa.616.0.copyload.i.i.i.i.i.i.i.i.i.i.i, 48
  %.sroa.14.sroa.8.0.extract.trunc.i.i.i.i.i.i.i = trunc nuw i64 %.sroa.14.sroa.8.0.extract.shift.i.i.i.i.i.i.i to i16
  br label %_ZN4time7parsing8parsable6sealed6Sealed22parse_offset_date_time17heae73a90e57bab8eE.exit.thread62.i.i.i.i.i.i

bb.at:                                            ; preds = %.noexc32.i
  %i.ff = load i64, ptr %i.eq, align 8, !noalias !8982, !noundef !9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !8982
  %.sroa.0.0.copyload2.i22.i.i.i.i.i.i.i = load i64, ptr %i.g, align 16, !noalias !8985 ; 3 uses
  %.sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %.sroa.0.0.copyload2.i23.i.i.i.i.i.i.i = load i64, ptr %.sroa_idx.i.i.i.i.i.i.i, align 8, !noalias !8985 ; 3 uses
  %.sroa.7.0.copyload6.i.i.i.i.i.i.i.i = load i32, ptr %.sroa.7.0..sroa_idx3.i.i.i.i.i.i.i.i, align 16, !noalias !8983 ; 7 uses
  %.sroa.8.0.copyload10.i.i.i.i.i.i.i.i = load i32, ptr %.sroa.8.0..sroa_idx7.i.i.i.i.i.i.i.i, align 4, !noalias !8983 ; 7 uses
  %.sroa.9.0.copyload14.i.i.i.i.i.i.i.i = load i32, ptr %.sroa.9.0..sroa_idx11.i.i.i.i.i.i.i.i, align 8, !noalias !8983 ; 7 uses
  %.sroa.10.0.copyload18.i.i.i.i.i.i.i.i = load i16, ptr %.sroa.10.0..sroa_idx15.i.i.i.i.i.i.i.i, align 4, !noalias !8983 ; 3 uses
  %.sroa.11.0.copyload22.i.i.i.i.i.i.i.i = load i16, ptr %.sroa.11.0..sroa_idx19.i.i.i.i.i.i.i.i, align 2, !noalias !8983 ; 3 uses
  %.sroa.12.0.copyload26.i.i.i.i.i.i.i.i = load i16, ptr %.sroa.12.0..sroa_idx23.i.i.i.i.i.i.i.i, align 16, !noalias !8983 ; 4 uses
  %.sroa.13.0.copyload30.i.i.i.i.i.i.i.i = load i8, ptr %.sroa.13.0..sroa_idx27.i.i.i.i.i.i.i.i, align 2, !noalias !8983 ; 3 uses
  %.sroa.14.0.copyload34.i.i.i.i.i.i.i.i = load i8, ptr %.sroa.14.0..sroa_idx31.i.i.i.i.i.i.i.i, align 1, !noalias !8983 ; 3 uses
  %.sroa.15.0.copyload38.i.i.i.i.i.i.i.i = load i8, ptr %.sroa.15.0..sroa_idx35.i.i.i.i.i.i.i.i, align 4, !noalias !8983 ; 3 uses
  %.sroa.16.0.copyload42.i.i.i.i.i.i.i.i = load i8, ptr %.sroa.16.0..sroa_idx39.i.i.i.i.i.i.i.i, align 1, !noalias !8983 ; 3 uses
  %.sroa.17.0.copyload46.i.i.i.i.i.i.i.i = load i8, ptr %.sroa.17.0..sroa_idx43.i.i.i.i.i.i.i.i, align 2, !noalias !8983 ; 3 uses
  %.sroa.18.0.copyload50.i.i.i.i.i.i.i.i = load i8, ptr %.sroa.18.0..sroa_idx47.i.i.i.i.i.i.i.i, align 1, !noalias !8983 ; 5 uses
  %.sroa.19.0.copyload54.i.i.i.i.i.i.i.i = load i8, ptr %.sroa.19.0..sroa_idx51.i.i.i.i.i.i.i.i, align 8, !noalias !8983 ; 5 uses
  %.sroa.20.0.copyload58.i.i.i.i.i.i.i.i = load i8, ptr %.sroa.20.0..sroa_idx55.i.i.i.i.i.i.i.i, align 1, !noalias !8983 ; 6 uses
  %.sroa.21.0.copyload62.i.i.i.i.i.i.i.i = load i8, ptr %.sroa.21.0..sroa_idx59.i.i.i.i.i.i.i.i, align 2, !noalias !8983 ; 4 uses
  %.sroa.22.0.copyload66.i.i.i.i.i.i.i.i = load i8, ptr %.sroa.22.0..sroa_idx63.i.i.i.i.i.i.i.i, align 1, !noalias !8983 ; 5 uses
  %.sroa.23.0.copyload70.i.i.i.i.i.i.i.i = load i8, ptr %.sroa.23.0..sroa_idx67.i.i.i.i.i.i.i.i, align 4, !noalias !8983 ; 9 uses
  %.sroa.24.0.copyload74.i.i.i.i.i.i.i.i = load i8, ptr %.sroa.24.0..sroa_idx71.i.i.i.i.i.i.i.i, align 1, !noalias !8983 ; 5 uses
  %.sroa.25.0.copyload78.i.i.i.i.i.i.i.i = load i8, ptr %.sroa.25.0..sroa_idx75.i.i.i.i.i.i.i.i, align 2, !noalias !8983 ; 5 uses
  %.sroa.26.0.copyload82.i.i.i.i.i.i.i.i = load i8, ptr %.sroa.26.0..sroa_idx79.i.i.i.i.i.i.i.i, align 1, !noalias !8983 ; 5 uses
  %.sroa.27.0.copyload86.i.i.i.i.i.i.i.i = load i8, ptr %.sroa.27.0..sroa_idx83.i.i.i.i.i.i.i.i, align 16, !noalias !8983 ; 5 uses
  %.sroa.28.0.copyload90.i.i.i.i.i.i.i.i = load i8, ptr %.sroa.28.0..sroa_idx87.i.i.i.i.i.i.i.i, align 1, !noalias !8983 ; 2 uses
  %.sroa.29.0.copyload94.i.i.i.i.i.i.i.i = load i8, ptr %.sroa.29.0..sroa_idx91.i.i.i.i.i.i.i.i, align 2, !noalias !8983
  %.sroa.30.0.copyload98.i.i.i.i.i.i.i.i = load i8, ptr %.sroa.30.0..sroa_idx95.i.i.i.i.i.i.i.i, align 1, !noalias !8983
  %.sroa.31.0.copyload102.i.i.i.i.i.i.i.i = load i8, ptr %.sroa.31.0..sroa_idx99.i.i.i.i.i.i.i.i, align 4, !noalias !8983
  %.sroa.32.0.copyload106.i.i.i.i.i.i.i.i = load i8, ptr %.sroa.32.0..sroa_idx103.i.i.i.i.i.i.i.i, align 1, !noalias !8983 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !8982
  %i.fg = icmp eq i64 %i.ff, 0
  br i1 %i.fg, label %_ZN4time7parsing8parsable6sealed6Sealed5parse17hc832a904ce2adf28E.exit.i.i.i.i.i.i.i, label %_ZN4time7parsing8parsable6sealed6Sealed22parse_offset_date_time17heae73a90e57bab8eE.exit.thread62.i.i.i.i.i.i

_ZN4time7parsing8parsable6sealed6Sealed5parse17hc832a904ce2adf28E.exit.i.i.i.i.i.i.i: ; preds = %bb.at
  %i.fh = icmp eq i8 %.sroa.32.0.copyload106.i.i.i.i.i.i.i.i, 2
  br i1 %i.fh, label %_ZN4time7parsing8parsable6sealed6Sealed22parse_offset_date_time17heae73a90e57bab8eE.exit.i.i.i.i.i.i, label %bb.au

bb.au:                                            ; preds = %_ZN4time7parsing8parsable6sealed6Sealed5parse17hc832a904ce2adf28E.exit.i.i.i.i.i.i.i
  %.sroa.011.sroa.0.0.insert.ext.i.i.i.i.i.i.i = zext i64 %.sroa.0.0.copyload2.i22.i.i.i.i.i.i.i to i128
  %.sroa.011.sroa.0.8.insert.ext.i.i.i.i.i.i.i = zext i64 %.sroa.0.0.copyload2.i23.i.i.i.i.i.i.i to i128
  %.sroa.011.sroa.0.8.insert.shift.i.i.i.i.i.i.i = shl nuw i128 %.sroa.011.sroa.0.8.insert.ext.i.i.i.i.i.i.i, 64 ; 2 uses
  %.sroa.011.sroa.0.8.insert.insert.i.i.i.i.i.i.i = or disjoint i128 %.sroa.011.sroa.0.8.insert.shift.i.i.i.i.i.i.i, %.sroa.011.sroa.0.0.insert.ext.i.i.i.i.i.i.i ; 4 uses
  %i.fi = icmp eq i128 %.sroa.011.sroa.0.8.insert.insert.i.i.i.i.i.i.i, -170141183460469231731687303715884105728
  br i1 %i.fi, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.fj = icmp sgt i128 %.sroa.011.sroa.0.8.insert.insert.i.i.i.i.i.i.i, -377705116800000000001
  call void @llvm.assume(i1 %i.fj), !noalias !8986
  %i.fk = icmp slt i128 %.sroa.011.sroa.0.8.insert.insert.i.i.i.i.i.i.i, 253402300800000000000
  call void @llvm.assume(i1 %i.fk), !noalias !8986
  %.sroa.011.sroa.0.8.insert.insert.i.i.i.i.i.i.i.frozen = freeze i128 %.sroa.011.sroa.0.8.insert.insert.i.i.i.i.i.i.i ; 2 uses
  %i.fl = sdiv i128 %.sroa.011.sroa.0.8.insert.insert.i.i.i.i.i.i.i.frozen, 1000000000 ; 2 uses
  %i.fm = mul i128 %i.fl, 1000000000
  %.decomposed = sub i128 %.sroa.011.sroa.0.8.insert.insert.i.i.i.i.i.i.i.frozen, %i.fm ; 4 uses
  %i.fn = icmp eq i128 %.decomposed, 0
  %i.fo = ashr i128 %.sroa.011.sroa.0.8.insert.shift.i.i.i.i.i.i.i, 127
  %i.fp = select i1 %i.fn, i128 0, i128 %i.fo
  %.sroa.0.0.off0.v.i.i.i.i.i.i.i.i.i = add nsw i128 %i.fp, %i.fl
  %.sroa.0.0.off0.i.i.i.i.i.i.i.i.i = trunc nsw i128 %.sroa.0.0.off0.v.i.i.i.i.i.i.i.i.i to i64 ; 4 uses
  %or.cond.i.i.i.i.i.i.i.i.i.i = icmp slt i64 %.sroa.0.0.off0.i.i.i.i.i.i.i.i.i, -377705116800
  br i1 %or.cond.i.i.i.i.i.i.i.i.i.i, label %bb.ax, label %bb.ay, !prof !18

bb.aw:                                            ; preds = %bb.au
  %i.fq = trunc nuw i8 %.sroa.32.0.copyload106.i.i.i.i.i.i.i.i to i1
  br i1 %i.fq, label %3, label %7

bb.ax:                                            ; preds = %bb.av
  %.sroa.01.sroa.12.0.extract.shift12.i.i.i.i.i.i.i = lshr i64 ptrtoint (ptr @260 to i64), 32
  br label %_ZN4time7parsing8parsable6sealed6Sealed22parse_offset_date_time17heae73a90e57bab8eE.exit.thread25.i.i.i.i.i.i

bb.ay:                                            ; preds = %bb.av
  %i.fr = sdiv i64 %.sroa.0.0.off0.i.i.i.i.i.i.i.i.i, 86400
  %i.fs = srem i64 %.sroa.0.0.off0.i.i.i.i.i.i.i.i.i, 86400 ; 4 uses
  %i.ft = icmp eq i64 %i.fs, 0
  %i.fu = ashr i64 %.sroa.0.0.off0.i.i.i.i.i.i.i.i.i, 63
  %i.fv = select i1 %i.ft, i64 0, i64 %i.fu
  %.sroa.03.0.i.i.i.i.i.i.i.i.i.i = add nsw i64 %i.fv, %i.fr
  %i.fw = trunc nsw i64 %.sroa.03.0.i.i.i.i.i.i.i.i.i.i to i32
  %i.fx = add nsw i32 %i.fw, 869850581            ; 2 uses
  %i.fy = zext nneg i32 %i.fx to i64
  %i.fz = mul nuw nsw i64 %i.fy, 3853261555       ; 2 uses
  %i.ga = lshr i64 %i.fz, 15
  %i.gb = lshr i64 %i.fz, 47
  %i.gc = trunc nuw nsw i64 %i.gb to i32          ; 3 uses
  %i.gd = trunc i64 %i.ga to i32
  %i.ge = icmp ugt i32 %i.gd, 42920275
  %i.gf = and i32 %i.gc, 3
  %i.gg = icmp eq i32 %i.gf, 0
  %.sroa.0.0.i.i.i.i.i.i.i.i.i.i.i = or i1 %i.ge, %i.gg ; 2 uses
  %i.gh = lshr i32 %i.gc, 2
  %i.gi = add nuw nsw i32 %i.fx, %i.gc
  %i.gj = sub nuw nsw i32 %i.gi, %i.gh
  %i.gk = zext nneg i32 %i.gj to i64
  %i.gl = mul nuw nsw i64 %i.gk, 3010298776       ; 2 uses
  %i.gm = lshr i64 %i.gl, 8
  %i.gn = lshr i64 %i.gl, 40
  %i.go = trunc nuw nsw i64 %i.gn to i32          ; 2 uses
  %i.gp = and i64 %i.gm, 4294967295
  %i.gq = mul nuw nsw i64 %i.gp, 1461
  %i.gr = lshr i64 %i.gq, 34
  %i.gs = trunc nuw nsw i64 %i.gr to i32
  %i.gt = zext i1 %.sroa.0.0.i.i.i.i.i.i.i.i.i.i.i to i32
  %i.gu = add nuw nsw i32 %i.gs, %i.gt
  %i.gv = and i32 %i.go, 3
  %i.gw = icmp eq i32 %i.gv, 0
  %i.gx = and i1 %.sroa.0.0.i.i.i.i.i.i.i.i.i.i.i, %i.gw
  %i.gy = shl nuw i32 %i.go, 10
  %i.gz = add nsw i32 %i.gy, 1858256896
  %i.ha = select i1 %i.gx, i32 512, i32 0
  %i.hb = or disjoint i32 %i.ha, %i.gz
  %i.hc = or i32 %i.hb, %i.gu                     ; 2 uses
  %i.hd = icmp ne i32 %i.hc, 0
  call void @llvm.assume(i1 %i.hd), !noalias !8986
  %i.he = icmp slt i64 %i.fs, 0
  %i.hf = add nsw i64 %i.fs, 86400
  %spec.select.i.i.i.i.i.i.i.i.i.i.i = select i1 %i.he, i64 %i.hf, i64 %i.fs ; 2 uses
  %.lhs.trunc.i.i.i.i.i.i.i.i.i.i = trunc nuw nsw i64 %spec.select.i.i.i.i.i.i.i.i.i.i.i to i32 ; 3 uses
  %i.hg = udiv i32 %.lhs.trunc.i.i.i.i.i.i.i.i.i.i, 3600
  %i.hh = urem i32 %.lhs.trunc.i.i.i.i.i.i.i.i.i.i, 3600
  %.lhs.trunc20.i.i.i.i.i.i.i.i.i.i = trunc nuw nsw i32 %i.hh to i16
  %i.hi = udiv i16 %.lhs.trunc20.i.i.i.i.i.i.i.i.i.i, 60
  %i.hj = urem i32 %.lhs.trunc.i.i.i.i.i.i.i.i.i.i, 60
  %i.hk = icmp ult i64 %spec.select.i.i.i.i.i.i.i.i.i.i.i, 86400
  call void @llvm.assume(i1 %i.hk), !noalias !8986
  %i.hl = icmp slt i128 %.decomposed, 0
  %i.hm = add nsw i128 %.decomposed, 1000000000
  %spec.select.i.i.i.i.i.i.i.i.i.i = select i1 %i.hl, i128 %i.hm, i128 %.decomposed
  %i.hn = trunc nuw nsw i128 %spec.select.i.i.i.i.i.i.i.i.i.i to i32 ; 2 uses
  %i.ho = icmp samesign ult i32 %i.hn, 1000000000
  call void @llvm.assume(i1 %i.ho), !noalias !8986
  %i.hp = shl nuw nsw i32 %i.hg, 16
  %i.hq = shl nuw nsw i16 %i.hi, 8
  %i.hr = zext nneg i16 %i.hq to i32
  %.sroa.3.0.insert.insert.i.i.i155.i.i.i.i.i.i.i = or disjoint i32 %i.hp, %i.hr
  %.sroa.2.0.insert.insert.i.i.i156.i.i.i.i.i.i.i = or disjoint i32 %.sroa.3.0.insert.insert.i.i.i155.i.i.i.i.i.i.i, %i.hj
  %i.hs = icmp eq i32 %.sroa.9.0.copyload14.i.i.i.i.i.i.i.i, -1
  %.sroa.6255.0.i.i.i.i.i.i.i.i = zext i32 %i.hc to i64
  %.sroa.01.sroa.0.0.extract.trunc.i.i.i.i.i.i.i = select i1 %i.hs, i32 %i.hn, i32 %.sroa.9.0.copyload14.i.i.i.i.i.i.i.i
  %i.ht = zext nneg i32 %.sroa.2.0.insert.insert.i.i.i156.i.i.i.i.i.i.i to i64
  br label %_ZN4time7parsing8parsable6sealed6Sealed22parse_offset_date_time17heae73a90e57bab8eE.exit.thread.i.i.i.i.i.i

3:                                                ; preds = %bb.aw
  %cond.i.i.i.i.i.i.i.i = icmp eq i8 %.sroa.22.0.copyload66.i.i.i.i.i.i.i.i, -1
  br i1 %cond.i.i.i.i.i.i.i.i, label %7, label %4

4:                                                ; preds = %3
  %5 = icmp ult i8 %.sroa.22.0.copyload66.i.i.i.i.i.i.i.i, 61
  call void @llvm.assume(i1 %5), !noalias !8986
  %6 = icmp eq i8 %.sroa.22.0.copyload66.i.i.i.i.i.i.i.i, 60
  br i1 %6, label %8, label %7

7:                                                ; preds = %8, %4, %3, %bb.aw
  %.sroa.1957.0.i.i.i.i.i.i.i = phi i8 [ -1, %3 ], [ 59, %8 ], [ %.sroa.22.0.copyload66.i.i.i.i.i.i.i.i, %4 ], [ %.sroa.22.0.copyload66.i.i.i.i.i.i.i.i, %bb.aw ] ; 6 uses
  %.sroa.4.0.i.i.i.i.i.i.i = phi i32 [ %.sroa.9.0.copyload14.i.i.i.i.i.i.i.i, %3 ], [ 999999999, %8 ], [ %.sroa.9.0.copyload14.i.i.i.i.i.i.i.i, %4 ], [ %.sroa.9.0.copyload14.i.i.i.i.i.i.i.i, %bb.aw ] ; 4 uses
  %.sroa.023.0.i.i.i.i.i.i.i.i = phi i1 [ false, %3 ], [ true, %8 ], [ false, %4 ], [ false, %bb.aw ]
  %.not294.i.i.i.i.i.i.i.i.i = icmp ne i32 %.sroa.7.0.copyload6.i.i.i.i.i.i.i.i, -2147483648 ; 2 uses
  br i1 %.not294.i.i.i.i.i.i.i.i.i, label %bb.az, label %.thread.i.i.i.i.i.i.i.i.i

bb.az:                                            ; preds = %7
  %i.hu = icmp sgt i32 %.sroa.7.0.copyload6.i.i.i.i.i.i.i.i, -10000
  call void @llvm.assume(i1 %i.hu), !noalias !8986
  %i.hv = icmp slt i32 %.sroa.7.0.copyload6.i.i.i.i.i.i.i.i, 10000
  call void @llvm.assume(i1 %i.hv), !noalias !8986
  br label %.thread.i.i.i.i.i.i.i.i.i

.thread.i.i.i.i.i.i.i.i.i:                        ; preds = %bb.az, %7
  %.not295.i.i.i.i.i.i.i.i.i = icmp eq i16 %.sroa.10.0.copyload18.i.i.i.i.i.i.i.i, -32768
  %spec.select.i.i.i.i.i.i.i.i = select i1 %.not295.i.i.i.i.i.i.i.i.i, i8 2, i8 %.sroa.30.0.copyload98.i.i.i.i.i.i.i.i ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq i8 %.sroa.13.0.copyload30.i.i.i.i.i.i.i.i, -1
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %.thread391.i.i.i.i.i.i.i.i.i, label %bb.ba

bb.ba:                                            ; preds = %.thread.i.i.i.i.i.i.i.i.i
  %i.hw = icmp ult i8 %.sroa.13.0.copyload30.i.i.i.i.i.i.i.i, 100
  call void @llvm.assume(i1 %i.hw), !noalias !8986
  %.not296.i.i.i.i.i.i.i.i.i = icmp eq i8 %spec.select.i.i.i.i.i.i.i.i, 2
  %or.cond325.i.i.i.i.i.i.i.i.i = or i1 %.not294.i.i.i.i.i.i.i.i.i, %.not296.i.i.i.i.i.i.i.i.i
  br i1 %or.cond325.i.i.i.i.i.i.i.i.i, label %.thread391.i.i.i.i.i.i.i.i.i, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.hx = trunc nuw i8 %spec.select.i.i.i.i.i.i.i.i to i1
  %i.hy = sext i16 %.sroa.10.0.copyload18.i.i.i.i.i.i.i.i to i32
  %i.hz = mul nsw i32 %i.hy, 100
  %i.ia = zext nneg i8 %.sroa.13.0.copyload30.i.i.i.i.i.i.i.i to i32 ; 2 uses
  %i.ib = sub nsw i32 0, %i.ia
  %.sroa.07.0.p.i.i.i.i.i.i.i.i.i = select i1 %i.hx, i32 %i.ib, i32 %i.ia
  %.sroa.07.0.i.i.i.i.i.i.i.i.i = add nsw i32 %.sroa.07.0.p.i.i.i.i.i.i.i.i.i, %i.hz ; 2 uses
  %i.ic = add nsw i32 %.sroa.07.0.i.i.i.i.i.i.i.i.i, 9999
  %or.cond.i.i.i.i.i.i.i.i.i = icmp ult i32 %i.ic, 19999
  %spec.select.i.i.i.i.i.i.i.i.i = select i1 %or.cond.i.i.i.i.i.i.i.i.i, i32 %.sroa.07.0.i.i.i.i.i.i.i.i.i, i32 -2147483648
  br label %.thread391.i.i.i.i.i.i.i.i.i

.thread391.i.i.i.i.i.i.i.i.i:                     ; preds = %bb.bb, %bb.ba, %.thread.i.i.i.i.i.i.i.i.i
  %i.id = phi i32 [ %.sroa.7.0.copyload6.i.i.i.i.i.i.i.i, %.thread.i.i.i.i.i.i.i.i.i ], [ %.sroa.7.0.copyload6.i.i.i.i.i.i.i.i, %bb.ba ], [ %spec.select.i.i.i.i.i.i.i.i.i, %bb.bb ] ; 18 uses
  %.not298.i.i.i.i.i.i.i.i.i = icmp ne i32 %.sroa.8.0.copyload10.i.i.i.i.i.i.i.i, -2147483648 ; 2 uses
  br i1 %.not298.i.i.i.i.i.i.i.i.i, label %bb.bc, label %.thread397.i.i.i.i.i.i.i.i.i

bb.bc:                                            ; preds = %.thread391.i.i.i.i.i.i.i.i.i
  %i.ie = icmp sgt i32 %.sroa.8.0.copyload10.i.i.i.i.i.i.i.i, -10000
  call void @llvm.assume(i1 %i.ie), !noalias !8986
  %i.if = icmp slt i32 %.sroa.8.0.copyload10.i.i.i.i.i.i.i.i, 10000
  call void @llvm.assume(i1 %i.if), !noalias !8986
  br label %.thread397.i.i.i.i.i.i.i.i.i

.thread397.i.i.i.i.i.i.i.i.i:                     ; preds = %bb.bc, %.thread391.i.i.i.i.i.i.i.i.i
  %.not299.i.i.i.i.i.i.i.i.i = icmp eq i16 %.sroa.11.0.copyload22.i.i.i.i.i.i.i.i, -32768
  %spec.select368.i.i.i.i.i.i.i.i = select i1 %.not299.i.i.i.i.i.i.i.i.i, i8 2, i8 %.sroa.31.0.copyload102.i.i.i.i.i.i.i.i ; 2 uses
  %.not297.i.i.i.i.i.i.i.i.i = icmp eq i8 %.sroa.14.0.copyload34.i.i.i.i.i.i.i.i, -1
  br i1 %.not297.i.i.i.i.i.i.i.i.i, label %.thread398.i.i.i.i.i.i.i.i.i, label %bb.bd

bb.bd:                                            ; preds = %.thread397.i.i.i.i.i.i.i.i.i
  %i.ig = icmp ult i8 %.sroa.14.0.copyload34.i.i.i.i.i.i.i.i, 100
  call void @llvm.assume(i1 %i.ig), !noalias !8986
  %.not300.i.i.i.i.i.i.i.i.i = icmp eq i8 %spec.select368.i.i.i.i.i.i.i.i, 2
  %or.cond328.i.i.i.i.i.i.i.i.i = or i1 %.not298.i.i.i.i.i.i.i.i.i, %.not300.i.i.i.i.i.i.i.i.i
  br i1 %or.cond328.i.i.i.i.i.i.i.i.i, label %.thread398.i.i.i.i.i.i.i.i.i, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.ih = trunc nuw i8 %spec.select368.i.i.i.i.i.i.i.i to i1
  %i.ii = sext i16 %.sroa.11.0.copyload22.i.i.i.i.i.i.i.i to i32
  %i.ij = mul nsw i32 %i.ii, 100
  %i.ik = zext nneg i8 %.sroa.14.0.copyload34.i.i.i.i.i.i.i.i to i32 ; 2 uses
  %i.il = sub nsw i32 0, %i.ik
  %.sroa.019.0.p.i.i.i.i.i.i.i.i.i = select i1 %i.ih, i32 %i.il, i32 %i.ik
  %.sroa.019.0.i.i.i.i.i.i.i.i.i = add nsw i32 %.sroa.019.0.p.i.i.i.i.i.i.i.i.i, %i.ij ; 2 uses
  %i.im = add nsw i32 %.sroa.019.0.i.i.i.i.i.i.i.i.i, 9999
  %or.cond1.i.i.i.i.i.i.i.i.i = icmp ult i32 %i.im, 19999
  %spec.select339.i.i.i.i.i.i.i.i.i = select i1 %or.cond1.i.i.i.i.i.i.i.i.i, i32 %.sroa.019.0.i.i.i.i.i.i.i.i.i, i32 -2147483648
  br label %.thread398.i.i.i.i.i.i.i.i.i

.thread398.i.i.i.i.i.i.i.i.i:                     ; preds = %bb.be, %bb.bd, %.thread397.i.i.i.i.i.i.i.i.i
  %i.in = phi i32 [ %.sroa.8.0.copyload10.i.i.i.i.i.i.i.i, %.thread397.i.i.i.i.i.i.i.i.i ], [ %.sroa.8.0.copyload10.i.i.i.i.i.i.i.i, %bb.bd ], [ %spec.select339.i.i.i.i.i.i.i.i.i, %bb.be ] ; 4 uses
  %.not301.i.i.i.i.i.i.i.i.i = icmp eq i32 %i.id, -2147483648 ; 6 uses
  br i1 %.not301.i.i.i.i.i.i.i.i.i, label %.critedge.i.i.i.i.i.i.i.i.i, label %.thread511.i.i.i.i.i.i.i.i.i

.thread511.i.i.i.i.i.i.i.i.i:                     ; preds = %.thread398.i.i.i.i.i.i.i.i.i
  %i.io = icmp sgt i32 %i.id, -10000
  call void @llvm.assume(i1 %i.io), !noalias !8986
  %i.ip = icmp slt i32 %i.id, 10000
  call void @llvm.assume(i1 %i.ip), !noalias !8986
  %i.iq = icmp eq i16 %.sroa.12.0.copyload26.i.i.i.i.i.i.i.i, 0
  br i1 %i.iq, label %.critedge.i.i.i.i.i.i.i.i.i, label %bb.bf, !prof !11

bb.bf:                                            ; preds = %.thread511.i.i.i.i.i.i.i.i.i
  %i.ir = icmp ult i16 %.sroa.12.0.copyload26.i.i.i.i.i.i.i.i, 367
  call void @llvm.assume(i1 %i.ir), !noalias !8986
  %.sroa.010.0.i.i.i.i.i.i.i.i.i.i = call i32 @llvm.abs.i32(i32 %i.id, i1 true)
  %i.is = mul i32 %.sroa.010.0.i.i.i.i.i.i.i.i.i.i, 33555415
  %i.it = and i32 %i.is, 100695055
  %i.iu = icmp samesign ult i32 %i.it, 31745      ; 2 uses
  %or.cond1.i.i.i.i.i.i.i.i.i.i = icmp samesign ult i16 %.sroa.12.0.copyload26.i.i.i.i.i.i.i.i, 366
  br i1 %or.cond1.i.i.i.i.i.i.i.i.i.i, label %bb.bi, label %bb.bg, !prof !17

bb.bg:                                            ; preds = %bb.bf
  br i1 %i.iu, label %bb.bi, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %.sroa.0191.sroa.15.0.extract.shift.i.i.i.i.i.i.i.i = lshr i64 ptrtoint (ptr @266 to i64), 32
  br label %_ZN4time7parsing8parsable6sealed6Sealed22parse_offset_date_time17heae73a90e57bab8eE.exit.thread25.i.i.i.i.i.i

bb.bi:                                            ; preds = %bb.bg, %bb.bf
  %i.iv = shl nsw i32 %i.id, 10
  %i.iw = select i1 %i.iu, i32 512, i32 0
  %i.ix = or disjoint i32 %i.iw, %i.iv
  %i.iy = zext nneg i16 %.sroa.12.0.copyload26.i.i.i.i.i.i.i.i to i32
  %i.iz = or disjoint i32 %i.ix, %i.iy
  br label %bb.ck

.critedge.i.i.i.i.i.i.i.i.i:                      ; preds = %.thread398.i.i.i.i.i.i.i.i.i, %.thread511.i.i.i.i.i.i.i.i.i
  %i.ja = icmp eq i8 %.sroa.18.0.copyload50.i.i.i.i.i.i.i.i, 0
  br i1 %i.ja, label %.thread423.i.i.i.i.i.i.i.i.i, label %bb.bj, !prof !11

bb.bj:                                            ; preds = %.critedge.i.i.i.i.i.i.i.i.i
  %i.jb = icmp ult i8 %.sroa.18.0.copyload50.i.i.i.i.i.i.i.i, 32
  call void @llvm.assume(i1 %i.jb), !noalias !8986
  %.not304.i.i.i.i.i.i.i.i.i = icmp eq i8 %.sroa.26.0.copyload82.i.i.i.i.i.i.i.i, 0
  %or.cond331.i.i.i.i.i.i.i.i.i = or i1 %.not304.i.i.i.i.i.i.i.i.i, %.not301.i.i.i.i.i.i.i.i.i
  br i1 %or.cond331.i.i.i.i.i.i.i.i.i, label %.thread423.i.i.i.i.i.i.i.i.i, label %bb.bk

.thread423.i.i.i.i.i.i.i.i.i:                     ; preds = %bb.bj, %.critedge.i.i.i.i.i.i.i.i.i
  %.not306.i.i.i.i.i.i.i.i.i = icmp eq i32 %i.in, -2147483648 ; 2 uses
  br i1 %.not306.i.i.i.i.i.i.i.i.i, label %bb.bq, label %bb.bp

bb.bk:                                            ; preds = %bb.bj
  %i.jc = add i32 %i.id, -10000
  %or.cond.i340.i.i.i.i.i.i.i.i.i = icmp ult i32 %i.jc, -19999
  br i1 %or.cond.i340.i.i.i.i.i.i.i.i.i, label %bb.bn, label %bb.bl, !prof !18

bb.bl:                                            ; preds = %bb.bk
  %.sroa.012.0.i.i.i.i.i.i.i.i.i.i = call i32 @llvm.abs.i32(i32 %i.id, i1 true)
  %i.jd = mul i32 %.sroa.012.0.i.i.i.i.i.i.i.i.i.i, 33555415
  %i.je = and i32 %i.jd, 100695055
  %i.jf = icmp samesign ult i32 %i.je, 31745      ; 3 uses
  %or.cond1.i341.i.i.i.i.i.i.i.i.i = icmp samesign ult i8 %.sroa.18.0.copyload50.i.i.i.i.i.i.i.i, 29
  br i1 %or.cond1.i341.i.i.i.i.i.i.i.i.i, label %bb.bo, label %bb.bm, !prof !17

bb.bm:                                            ; preds = %bb.bl
  %i.jg = icmp eq i8 %.sroa.26.0.copyload82.i.i.i.i.i.i.i.i, 2
  %i.jh = lshr i8 %.sroa.26.0.copyload82.i.i.i.i.i.i.i.i, 3
  %i.ji = xor i8 %i.jh, %.sroa.26.0.copyload82.i.i.i.i.i.i.i.i
  %i.jj = or i8 %i.ji, 30
  %..i.i.i.i.i.i.i.i.i.i = select i1 %i.jf, i8 29, i8 28
  %.sroa.05.0.i.i.i.i.i.i.i.i.i.i = select i1 %i.jg, i8 %..i.i.i.i.i.i.i.i.i.i, i8 %i.jj
  %.not.i.i.i.i.i.i.i.i.i.i = icmp samesign ugt i8 %.sroa.18.0.copyload50.i.i.i.i.i.i.i.i, %.sroa.05.0.i.i.i.i.i.i.i.i.i.i
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %bb.bn, label %bb.bo

bb.bn:                                            ; preds = %bb.bm, %bb.bk
  %.sroa.0370.0.ph.i.i.i.i.i.i.i.i.i = phi ptr [ @267, %bb.bm ], [ @241, %bb.bk ]
  %.sroa.8371.0.ph.i.i.i.i.i.i.i.i.i = phi i64 [ 3, %bb.bm ], [ 4, %bb.bk ]
  %.sink.i342.ph.i.i.i.i.i.i.i.i.i = phi i8 [ 1, %bb.bm ], [ 0, %bb.bk ]
  %i.jk = ptrtoint ptr %.sroa.0370.0.ph.i.i.i.i.i.i.i.i.i to i64 ; 2 uses
  %.sroa.0191.sroa.0.0.extract.trunc.i.i.i.i.i.i.i.i = trunc i64 %i.jk to i32
  %.sroa.0191.sroa.15.0.extract.shift197.i.i.i.i.i.i.i.i = lshr i64 %i.jk, 32
  br label %_ZN4time7parsing8parsable6sealed6Sealed22parse_offset_date_time17heae73a90e57bab8eE.exit.thread25.i.i.i.i.i.i

bb.bo:                                            ; preds = %bb.bm, %bb.bl
  %i.jl = zext nneg i8 %.sroa.26.0.copyload82.i.i.i.i.i.i.i.i to i64
  %.sroa.sel.i.i.i.i.i.i.i.i.i.i = select i1 %i.jf, ptr getelementptr inbounds nuw (i8, ptr @268, i64 24), ptr @268
  %i.jm = getelementptr [2 x i8], ptr %.sroa.sel.i.i.i.i.i.i.i.i.i.i, i64 %i.jl
  %i.jn = getelementptr i8, ptr %i.jm, i64 -2
  %i.jo = load i16, ptr %i.jn, align 2, !noalias !8987, !noundef !9
  %i.jp = zext nneg i8 %.sroa.18.0.copyload50.i.i.i.i.i.i.i.i to i16
  %i.jq = add i16 %i.jo, %i.jp
  %i.jr = shl nsw i32 %i.id, 10
  %i.js = select i1 %i.jf, i32 512, i32 0
  %i.jt = or disjoint i32 %i.js, %i.jr
  %i.ju = zext i16 %i.jq to i32
  %i.jv = or i32 %i.jt, %i.ju                     ; 2 uses
  %i.jw = icmp ne i32 %i.jv, 0
  call void @llvm.assume(i1 %i.jw), !noalias !8986
  br label %bb.ck

bb.bp:                                            ; preds = %.thread423.i.i.i.i.i.i.i.i.i
  %i.jx = icmp sgt i32 %i.in, -10000
  call void @llvm.assume(i1 %i.jx), !noalias !8986
  %i.jy = icmp slt i32 %i.in, 10000
  call void @llvm.assume(i1 %i.jy), !noalias !8986
  br label %bb.bq

bb.bq:                                            ; preds = %bb.bp, %.thread423.i.i.i.i.i.i.i.i.i
  %i.jz = icmp eq i8 %.sroa.17.0.copyload46.i.i.i.i.i.i.i.i, 0
  br i1 %i.jz, label %.thread444.i.i.i.i.i.i.i.i.i, label %bb.br, !prof !11

.thread444.i.i.i.i.i.i.i.i.i:                     ; preds = %bb.bq
  %.not308448.i.i.i.i.i.i.i.i.i = icmp eq i8 %.sroa.27.0.copyload86.i.i.i.i.i.i.i.i, 7
  br label %bb.bs

bb.br:                                            ; preds = %bb.bq
  %i.ka = icmp ult i8 %.sroa.17.0.copyload46.i.i.i.i.i.i.i.i, 54
  call void @llvm.assume(i1 %i.ka), !noalias !8986
  %.not308.i.i.i.i.i.i.i.i.i = icmp eq i8 %.sroa.27.0.copyload86.i.i.i.i.i.i.i.i, 7 ; 2 uses
  %or.cond334.i.i.i.i.i.i.i.i.i = or i1 %.not308.i.i.i.i.i.i.i.i.i, %.not306.i.i.i.i.i.i.i.i.i
  br i1 %or.cond334.i.i.i.i.i.i.i.i.i, label %bb.bs, label %bb.bt

bb.bs:                                            ; preds = %bb.br, %.thread444.i.i.i.i.i.i.i.i.i
  %.not308450.i.i.i.i.i.i.i.i.i = phi i1 [ %.not308448.i.i.i.i.i.i.i.i.i, %.thread444.i.i.i.i.i.i.i.i.i ], [ %.not308.i.i.i.i.i.i.i.i.i, %bb.br ] ; 2 uses
  br i1 %.not301.i.i.i.i.i.i.i.i.i, label %bb.bx, label %bb.bw

bb.bt:                                            ; preds = %bb.br
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !8988
  invoke void @_ZN4time4date4Date18from_iso_week_date17h82d4ed19514e9fc5E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.e, i32 noundef %i.in, i8 noundef %.sroa.17.0.copyload46.i.i.i.i.i.i.i.i, i8 noundef %.sroa.27.0.copyload86.i.i.i.i.i.i.i.i)
          to label %.noexc33.i unwind label %bb.jg, !noalias !8919

.noexc33.i:                                       ; preds = %bb.bt
  %i.kb = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.kc = load i8, ptr %i.kb, align 8, !range !39, !noalias !8988, !noundef !9 ; 2 uses
  %.not319.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.kc, 2
  %i.kd = load i32, ptr %i.e, align 8, !noalias !8988 ; 2 uses
  br i1 %.not319.i.i.i.i.i.i.i.i.i, label %bb.bv, label %bb.bu

bb.bu:                                            ; preds = %.noexc33.i
  %.sroa.4183.0..sroa_idx.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  %.sroa.0191.sroa.15.4.copyload203.i.i.i.i.i.i.i.i = load i32, ptr %.sroa.4183.0..sroa_idx.i.i.i.i.i.i.i.i.i, align 4, !noalias !8989
  %.sroa.17.4..sroa.4183.0..sroa_idx.i.sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.sroa.17.4.copyload193.i.i.i.i.i.i.i.i = load i64, ptr %.sroa.17.4..sroa.4183.0..sroa_idx.i.sroa_idx.i.i.i.i.i.i.i.i, align 8, !noalias !8989
  %.sroa.6185.0..sroa_idx.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 17
  %.sroa.34.i.i.sroa.0.0.copyload.i.i.i.i.i.i = load i24, ptr %.sroa.6185.0..sroa_idx.i.i.i.i.i.i.i.i.i, align 1, !noalias !8985
  %.sroa.34.i.i.sroa.4.0..sroa.6185.0..sroa_idx.i.i.i.sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 20
  %.sroa.34.i.i.sroa.4.0.copyload.i.i.i.i.i.i = load i16, ptr %.sroa.34.i.i.sroa.4.0..sroa.6185.0..sroa_idx.i.i.i.sroa_idx.i.i.i.i.i.i, align 4, !noalias !8985
  %.sroa.34.i.i.sroa.5.0..sroa.6185.0..sroa_idx.i.i.i.sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 22
  %.sroa.34.i.i.sroa.5.0.copyload.i.i.i.i.i.i = load i16, ptr %.sroa.34.i.i.sroa.5.0..sroa.6185.0..sroa_idx.i.i.i.sroa_idx.i.i.i.i.i.i, align 2, !noalias !8985
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !8988
  %i.ke = zext i32 %.sroa.0191.sroa.15.4.copyload203.i.i.i.i.i.i.i.i to i64
  %i.kf = zext i24 %.sroa.34.i.i.sroa.0.0.copyload.i.i.i.i.i.i to i32
  br label %_ZN4time7parsing8parsable6sealed6Sealed22parse_offset_date_time17heae73a90e57bab8eE.exit.thread25.i.i.i.i.i.i

bb.bv:                                            ; preds = %.noexc33.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !8988
  br label %bb.ck

bb.bw:                                            ; preds = %bb.bs
  %i.kg = icmp sgt i32 %i.id, -10000
  call void @llvm.assume(i1 %i.kg), !noalias !8986
  %i.kh = icmp slt i32 %i.id, 10000
  call void @llvm.assume(i1 %i.kh), !noalias !8986
  br label %bb.bx

bb.bx:                                            ; preds = %bb.bw, %bb.bs
  %.not309.i.i.i.i.i.i.i.i.i = icmp eq i8 %.sroa.15.0.copyload38.i.i.i.i.i.i.i.i, -1
  br i1 %.not309.i.i.i.i.i.i.i.i.i, label %.thread456.i.i.i.i.i.i.i.i.i, label %bb.by

bb.by:                                            ; preds = %bb.bx
  %i.ki = icmp ult i8 %.sroa.15.0.copyload38.i.i.i.i.i.i.i.i, 54
  call void @llvm.assume(i1 %i.ki), !noalias !8986
  %or.cond336.i.i.i.i.i.i.i.i.i = or i1 %.not301.i.i.i.i.i.i.i.i.i, %.not308450.i.i.i.i.i.i.i.i.i
  br i1 %or.cond336.i.i.i.i.i.i.i.i.i, label %.thread456.i.i.i.i.i.i.i.i.i, label %switch.lookup

.thread456.i.i.i.i.i.i.i.i.i:                     ; preds = %bb.by, %bb.bx
  br i1 %.not301.i.i.i.i.i.i.i.i.i, label %bb.ce, label %bb.cd

switch.lookup:                                    ; preds = %bb.by
  %i.kj = zext nneg i8 %.sroa.15.0.copyload38.i.i.i.i.i.i.i.i to i16
  %i.kk = mul nuw nsw i16 %i.kj, 7
  %i.kl = zext nneg i8 %.sroa.27.0.copyload86.i.i.i.i.i.i.i.i to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @"switch.table._ZN87_$LT$heed_types..serde_json..SerdeJson$LT$T$GT$$u20$as$u20$heed_traits..BytesDecode$GT$12bytes_decode17hefc7e53531005b46E", i64 %i.kl
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i16
  %i.km = add nuw nsw i16 %i.kk, %switch.ext
  %i.kn = shl i32 %i.id, 10                       ; 2 uses
  %i.ko = ashr exact i32 %i.kn, 10
  %i.kp = add nsw i32 %i.ko, 999999               ; 3 uses
  %.neg.i.i.i.i.i.i.i.i.i.i.i = sdiv i32 %i.kp, -100
  %i.kq = add nsw i32 %.neg.i.i.i.i.i.i.i.i.i.i.i, -363521074
  %i.kr = sdiv i32 %i.kp, 400
  %i.ks = add nsw i32 %i.kq, %i.kr
  %i.kt = sext i32 %i.kp to i64
  %i.ku = mul nsw i64 %i.kt, 1461
  %i.kv = sdiv i64 %i.ku, 4
  %i.kw = trunc nsw i64 %i.kv to i32
  %i.kx = add nsw i32 %i.ks, %i.kw
  %i.ky = srem i32 %i.kx, 7
  %i.kz = sext i32 %i.ky to i64
  %i.la = getelementptr [2 x i8], ptr @"switch.table._ZN87_$LT$heed_types..serde_json..SerdeJson$LT$T$GT$$u20$as$u20$heed_traits..BytesDecode$GT$12bytes_decode17hefc7e53531005b46E.615", i64 %i.kz
  %switch.gep211 = getelementptr i8, ptr %i.la, i64 12
  %switch.load212 = load i16, ptr %switch.gep211, align 2
  %i.lb = add nsw i16 %i.km, %switch.load212      ; 2 uses
  %i.lc = add nsw i16 %i.lb, 1                    ; 2 uses
  %i.ld = add i32 %i.id, -10000
  %or.cond.i344.i.i.i.i.i.i.i.i.i = icmp ult i32 %i.ld, -19999
  br i1 %or.cond.i344.i.i.i.i.i.i.i.i.i, label %bb.cb, label %bb.bz, !prof !18

bb.bz:                                            ; preds = %switch.lookup
  %.sroa.010.0.i345.i.i.i.i.i.i.i.i.i = call i32 @llvm.abs.i32(i32 %i.id, i1 true)
  %i.le = mul i32 %.sroa.010.0.i345.i.i.i.i.i.i.i.i.i, 33555415
  %i.lf = and i32 %i.le, 100695055
  %i.lg = icmp samesign ult i32 %i.lf, 31745      ; 2 uses
  %or.cond1.i346.i.i.i.i.i.i.i.i.i = icmp ult i16 %i.lb, 365
  br i1 %or.cond1.i346.i.i.i.i.i.i.i.i.i, label %bb.cc, label %bb.ca, !prof !17

bb.ca:                                            ; preds = %bb.bz
  %i.lh = icmp eq i16 %i.lc, 366
  %brmerge.not.i347.i.i.i.i.i.i.i.i.i = and i1 %i.lg, %i.lh
  br i1 %brmerge.not.i347.i.i.i.i.i.i.i.i.i, label %bb.cc, label %bb.cb

bb.cb:                                            ; preds = %bb.ca, %switch.lookup
  %.sroa.0377.0.ph.i.i.i.i.i.i.i.i.i = phi ptr [ @266, %bb.ca ], [ @241, %switch.lookup ]
  %.sroa.8378.0.ph.i.i.i.i.i.i.i.i.i = phi i64 [ 7, %bb.ca ], [ 4, %switch.lookup ]
  %.sink.i349.ph.i.i.i.i.i.i.i.i.i = phi i8 [ 1, %bb.ca ], [ 0, %switch.lookup ]
  %i.li = ptrtoint ptr %.sroa.0377.0.ph.i.i.i.i.i.i.i.i.i to i64 ; 2 uses
  %.sroa.0191.sroa.0.0.extract.trunc195.i.i.i.i.i.i.i.i = trunc i64 %i.li to i32
  %.sroa.0191.sroa.15.0.extract.shift199.i.i.i.i.i.i.i.i = lshr i64 %i.li, 32
  br label %_ZN4time7parsing8parsable6sealed6Sealed22parse_offset_date_time17heae73a90e57bab8eE.exit.thread25.i.i.i.i.i.i

bb.cc:                                            ; preds = %bb.ca, %bb.bz
  %i.lj = select i1 %i.lg, i32 512, i32 0
  %i.lk = zext nneg i16 %i.lc to i32
  %i.ll = or i32 %i.lj, %i.lk
  %i.lm = or i32 %i.ll, %i.kn                     ; 2 uses
  %i.ln = icmp ne i32 %i.lm, 0
  call void @llvm.assume(i1 %i.ln), !noalias !8986
  br label %bb.ck

bb.cd:                                            ; preds = %.thread456.i.i.i.i.i.i.i.i.i
  %i.lo = icmp sgt i32 %i.id, -10000
  call void @llvm.assume(i1 %i.lo), !noalias !8986
  %i.lp = icmp slt i32 %i.id, 10000
  call void @llvm.assume(i1 %i.lp), !noalias !8986
  br label %bb.ce

bb.ce:                                            ; preds = %bb.cd, %.thread456.i.i.i.i.i.i.i.i.i
  %.not312.i.i.i.i.i.i.i.i.i = icmp eq i8 %.sroa.16.0.copyload42.i.i.i.i.i.i.i.i, -1
  br i1 %.not312.i.i.i.i.i.i.i.i.i, label %_ZN4time7parsing8parsable6sealed6Sealed22parse_offset_date_time17heae73a90e57bab8eE.exit.thread25.i.i.i.i.i.i, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  %i.lq = icmp ult i8 %.sroa.16.0.copyload42.i.i.i.i.i.i.i.i, 54
  call void @llvm.assume(i1 %i.lq), !noalias !8986
  %or.cond338.i.i.i.i.i.i.i.i.i = or i1 %.not301.i.i.i.i.i.i.i.i.i, %.not308450.i.i.i.i.i.i.i.i.i
  br i1 %or.cond338.i.i.i.i.i.i.i.i.i, label %_ZN4time7parsing8parsable6sealed6Sealed22parse_offset_date_time17heae73a90e57bab8eE.exit.thread25.i.i.i.i.i.i, label %switch.lookup206

switch.lookup206:                                 ; preds = %bb.cf
  %i.lr = zext nneg i8 %.sroa.16.0.copyload42.i.i.i.i.i.i.i.i to i16
  %i.ls = mul nuw nsw i16 %i.lr, 7
  %i.lt = zext nneg i8 %.sroa.27.0.copyload86.i.i.i.i.i.i.i.i to i16
  %i.lu = add nuw nsw i16 %i.ls, %i.lt
  %i.lv = shl i32 %i.id, 10                       ; 2 uses
  %i.lw = ashr exact i32 %i.lv, 10
  %i.lx = add nsw i32 %i.lw, 999999               ; 3 uses
  %.neg.i.i353.i.i.i.i.i.i.i.i.i = sdiv i32 %i.lx, -100
  %i.ly = add nsw i32 %.neg.i.i353.i.i.i.i.i.i.i.i.i, -363521074
  %i.lz = sdiv i32 %i.lx, 400
  %i.ma = add nsw i32 %i.ly, %i.lz
  %i.mb = sext i32 %i.lx to i64
  %i.mc = mul nsw i64 %i.mb, 1461
  %i.md = sdiv i64 %i.mc, 4
  %i.me = trunc nsw i64 %i.md to i32
  %i.mf = add nsw i32 %i.ma, %i.me
  %i.mg = srem i32 %i.mf, 7
  %i.mh = sext i32 %i.mg to i64
  %i.mi = getelementptr [2 x i8], ptr @"switch.table._ZN87_$LT$heed_types..serde_json..SerdeJson$LT$T$GT$$u20$as$u20$heed_traits..BytesDecode$GT$12bytes_decode17hefc7e53531005b46E.615", i64 %i.mh
  %switch.gep207 = getelementptr i8, ptr %i.mi, i64 12
  %switch.load208 = load i16, ptr %switch.gep207, align 2
  %i.mj = add nsw i16 %i.lu, %switch.load208      ; 2 uses
  %i.mk = add nsw i16 %i.mj, 1                    ; 2 uses
  %i.ml = add i32 %i.id, -10000
  %or.cond.i358.i.i.i.i.i.i.i.i.i = icmp ult i32 %i.ml, -19999
  br i1 %or.cond.i358.i.i.i.i.i.i.i.i.i, label %bb.ci, label %bb.cg, !prof !18

bb.cg:                                            ; preds = %switch.lookup206
  %.sroa.010.0.i359.i.i.i.i.i.i.i.i.i = call i32 @llvm.abs.i32(i32 %i.id, i1 true)
  %i.mm = mul i32 %.sroa.010.0.i359.i.i.i.i.i.i.i.i.i, 33555415
  %i.mn = and i32 %i.mm, 100695055
  %i.mo = icmp samesign ult i32 %i.mn, 31745      ; 2 uses
  %or.cond1.i360.i.i.i.i.i.i.i.i.i = icmp ult i16 %i.mj, 365
  br i1 %or.cond1.i360.i.i.i.i.i.i.i.i.i, label %bb.cj, label %bb.ch, !prof !17

bb.ch:                                            ; preds = %bb.cg
  %i.mp = icmp eq i16 %i.mk, 366
  %brmerge.not.i361.i.i.i.i.i.i.i.i.i = and i1 %i.mo, %i.mp
  br i1 %brmerge.not.i361.i.i.i.i.i.i.i.i.i, label %bb.cj, label %bb.ci

bb.ci:                                            ; preds = %bb.ch, %switch.lookup206
  %.sroa.0384.0.ph.i.i.i.i.i.i.i.i.i = phi ptr [ @266, %bb.ch ], [ @241, %switch.lookup206 ]
  %.sroa.8385.0.ph.i.i.i.i.i.i.i.i.i = phi i64 [ 7, %bb.ch ], [ 4, %switch.lookup206 ]
  %.sink.i363.ph.i.i.i.i.i.i.i.i.i = phi i8 [ 1, %bb.ch ], [ 0, %switch.lookup206 ]
  %i.mq = ptrtoint ptr %.sroa.0384.0.ph.i.i.i.i.i.i.i.i.i to i64 ; 2 uses
  %.sroa.0191.sroa.0.0.extract.trunc196.i.i.i.i.i.i.i.i = trunc i64 %i.mq to i32
  %.sroa.0191.sroa.15.0.extract.shift201.i.i.i.i.i.i.i.i = lshr i64 %i.mq, 32
  br label %_ZN4time7parsing8parsable6sealed6Sealed22parse_offset_date_time17heae73a90e57bab8eE.exit.thread25.i.i.i.i.i.i

bb.cj:                                            ; preds = %bb.ch, %bb.cg
  %i.mr = select i1 %i.mo, i32 512, i32 0
  %i.ms = zext nneg i16 %i.mk to i32
  %i.mt = or i32 %i.mr, %i.ms
  %i.mu = or i32 %i.mt, %i.lv                     ; 2 uses
  %i.mv = icmp ne i32 %i.mu, 0
  call void @llvm.assume(i1 %i.mv), !noalias !8986
  br label %bb.ck

8:                                                ; preds = %4
  br label %7

bb.ck:                                            ; preds = %bb.cj, %bb.cc, %bb.bv, %bb.bo, %bb.bi
  %.sroa.0191.sroa.0.0.i.i.i.i.i.i.i.i = phi i32 [ %i.kd, %bb.bv ], [ %i.jv, %bb.bo ], [ %i.mu, %bb.cj ], [ %i.iz, %bb.bi ], [ %i.lm, %bb.cc ] ; 5 uses
  %.not.not.i.i.i.i.i.i.i.i.i = icmp eq i8 %.sroa.19.0.copyload54.i.i.i.i.i.i.i.i, -1 ; 2 uses
  br i1 %.not.not.i.i.i.i.i.i.i.i.i, label %bb.cm, label %bb.cl

bb.cl:                                            ; preds = %bb.ck
  %i.mw = icmp ult i8 %.sroa.19.0.copyload54.i.i.i.i.i.i.i.i, 24
  call void @llvm.assume(i1 %i.mw), !noalias !8986
  br label %bb.cm

bb.cm:                                            ; preds = %bb.cl, %bb.ck
  %.not.i168.i.i.i.i.i.i.i.i = icmp eq i8 %.sroa.20.0.copyload58.i.i.i.i.i.i.i.i, 0 ; 2 uses
  br i1 %.not.i168.i.i.i.i.i.i.i.i, label %bb.co, label %bb.cn, !prof !11

bb.cn:                                            ; preds = %bb.cm
  %i.mx = icmp ult i8 %.sroa.20.0.copyload58.i.i.i.i.i.i.i.i, 13
  call void @llvm.assume(i1 %i.mx), !noalias !8986
  br label %bb.co

bb.co:                                            ; preds = %bb.cn, %bb.cm
  br i1 %.not.not.i.i.i.i.i.i.i.i.i, label %bb.cp, label %.thread313.i.i.i.i.i.i.i.i.i

bb.cp:                                            ; preds = %bb.co
  %.not233.i.i.i.i.i.i.i.i.i = icmp eq i8 %.sroa.28.0.copyload90.i.i.i.i.i.i.i.i, 2
  %or.cond.i170.i.i.i.i.i.i.i.i = or i1 %.not.i168.i.i.i.i.i.i.i.i, %.not233.i.i.i.i.i.i.i.i.i
  br i1 %or.cond.i170.i.i.i.i.i.i.i.i, label %bb.dg, label %.critedge.i171.i.i.i.i.i.i.i.i

.critedge.i171.i.i.i.i.i.i.i.i:                   ; preds = %bb.cp
  %i.my = trunc nuw i8 %.sroa.28.0.copyload90.i.i.i.i.i.i.i.i to i1
  %i.mz = icmp eq i8 %.sroa.20.0.copyload58.i.i.i.i.i.i.i.i, 12 ; 2 uses
  %i.na = add nuw nsw i8 %.sroa.20.0.copyload58.i.i.i.i.i.i.i.i, 12
  %spec.select.i172.i.i.i.i.i.i.i.i = select i1 %i.mz, i8 12, i8 %i.na
  %..sroa.011.0.i.i.i.i.i.i.i.i.i = select i1 %i.mz, i8 0, i8 %.sroa.20.0.copyload58.i.i.i.i.i.i.i.i
  %.sroa.0.0.ph.i.i.i.i.i.i.i.i.i = select i1 %i.my, i8 %spec.select.i172.i.i.i.i.i.i.i.i, i8 %..sroa.011.0.i.i.i.i.i.i.i.i.i ; 3 uses
  %i.nb = icmp samesign ult i8 %.sroa.20.0.copyload58.i.i.i.i.i.i.i.i, 13
  call void @llvm.assume(i1 %i.nb), !noalias !8986
  %.not235.i.i.i.i.i.i.i.i.i = icmp eq i8 %.sroa.21.0.copyload62.i.i.i.i.i.i.i.i, -1
  br i1 %.not235.i.i.i.i.i.i.i.i.i, label %.critedge252.i.i.i.i.i.i.i.i.i, label %.thread313.thread360.i.i.i.i.i.i.i.i.i

.thread313.i.i.i.i.i.i.i.i.i:                     ; preds = %bb.co
  %i.nc = icmp samesign ult i8 %.sroa.19.0.copyload54.i.i.i.i.i.i.i.i, 24
  call void @llvm.assume(i1 %i.nc), !noalias !8986
  %.not238.i.i.i.i.i.i.i.i.i = icmp eq i8 %.sroa.21.0.copyload62.i.i.i.i.i.i.i.i, -1
  br i1 %.not238.i.i.i.i.i.i.i.i.i, label %.thread313.thread.i.i.i.i.i.i.i.i.i, label %bb.cr

.thread313.thread360.i.i.i.i.i.i.i.i.i:           ; preds = %.critedge.i171.i.i.i.i.i.i.i.i
  %i.nd = icmp ult i8 %.sroa.21.0.copyload62.i.i.i.i.i.i.i.i, 60
  call void @llvm.assume(i1 %i.nd), !noalias !8986
  br label %bb.cr

.critedge252.i.i.i.i.i.i.i.i.i:                   ; preds = %.critedge.i171.i.i.i.i.i.i.i.i
  %.not236.i.i.i.i.i.i.i.i.i = icmp eq i8 %.sroa.1957.0.i.i.i.i.i.i.i, -1
  %.not237.i.i.i.i.i.i.i.i.i = icmp eq i32 %.sroa.4.0.i.i.i.i.i.i.i, -1
  %or.cond = select i1 %.not236.i.i.i.i.i.i.i.i.i, i1 %.not237.i.i.i.i.i.i.i.i.i, i1 false
  br i1 %or.cond, label %bb.cq, label %.thread313.thread.i.i.i.i.i.i.i.i.i

bb.cq:                                            ; preds = %.critedge252.i.i.i.i.i.i.i.i.i
  %.sroa.0.6.insert.ext.i.i.i.i.i.i.i.i.i = zext nneg i8 %.sroa.0.0.ph.i.i.i.i.i.i.i.i.i to i64
  %.sroa.0.6.insert.shift.i.i.i.i.i.i.i.i.i = shl nuw nsw i64 %.sroa.0.6.insert.ext.i.i.i.i.i.i.i.i.i, 48
  br label %bb.dh

bb.cr:                                            ; preds = %.thread313.thread360.i.i.i.i.i.i.i.i.i, %.thread313.i.i.i.i.i.i.i.i.i
  %.sroa.0.0312363.i.i.i.i.i.i.i.i.i = phi i8 [ %.sroa.0.0.ph.i.i.i.i.i.i.i.i.i, %.thread313.thread360.i.i.i.i.i.i.i.i.i ], [ %.sroa.19.0.copyload54.i.i.i.i.i.i.i.i, %.thread313.i.i.i.i.i.i.i.i.i ]
  %i.ne = zext nneg i8 %.sroa.21.0.copyload62.i.i.i.i.i.i.i.i to i64
  %i.nf = shl nuw nsw i64 %i.ne, 40
  br label %.thread313.thread.i.i.i.i.i.i.i.i.i

.thread313.thread.i.i.i.i.i.i.i.i.i:              ; preds = %bb.cr, %.critedge252.i.i.i.i.i.i.i.i.i, %.thread313.i.i.i.i.i.i.i.i.i
  %.not238359.i.i.i.i.i.i.i.i.i = phi i1 [ true, %.thread313.i.i.i.i.i.i.i.i.i ], [ false, %bb.cr ], [ true, %.critedge252.i.i.i.i.i.i.i.i.i ]
  %.sroa.0.0312358.i.i.i.i.i.i.i.i.i = phi i8 [ %.sroa.19.0.copyload54.i.i.i.i.i.i.i.i, %.thread313.i.i.i.i.i.i.i.i.i ], [ %.sroa.0.0312363.i.i.i.i.i.i.i.i.i, %bb.cr ], [ %.sroa.0.0.ph.i.i.i.i.i.i.i.i.i, %.critedge252.i.i.i.i.i.i.i.i.i ] ; 4 uses
  %.sroa.0306.5.insert.ext.i.i.i.i.i.i.i.i.i = phi i64 [ 280375465082880, %.thread313.i.i.i.i.i.i.i.i.i ], [ %i.nf, %bb.cr ], [ 280375465082880, %.critedge252.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %.not239.i.i.i.i.i.i.i.i.i = icmp ne i8 %.sroa.1957.0.i.i.i.i.i.i.i, -1 ; 3 uses
  br i1 %.not239.i.i.i.i.i.i.i.i.i, label %bb.cs, label %bb.ct

bb.cs:                                            ; preds = %.thread313.thread.i.i.i.i.i.i.i.i.i
  %i.ng = icmp ult i8 %.sroa.1957.0.i.i.i.i.i.i.i, 61
  call void @llvm.assume(i1 %i.ng), !noalias !8986
  br label %bb.ct

bb.ct:                                            ; preds = %bb.cs, %.thread313.thread.i.i.i.i.i.i.i.i.i
  %.not244.i.i.i.i.i.i.i.i.i = icmp ne i32 %.sroa.4.0.i.i.i.i.i.i.i, -1 ; 4 uses
  br i1 %.not244.i.i.i.i.i.i.i.i.i, label %bb.cu, label %bb.cv

bb.cu:                                            ; preds = %bb.ct
  %i.nh = icmp ult i32 %.sroa.4.0.i.i.i.i.i.i.i, 1000000000
  call void @llvm.assume(i1 %i.nh), !noalias !8986
  br label %bb.cv

bb.cv:                                            ; preds = %bb.cu, %bb.ct
  br i1 %.not238359.i.i.i.i.i.i.i.i.i, label %bb.cx, label %bb.cw

bb.cw:                                            ; preds = %bb.cv
  br i1 %.not239.i.i.i.i.i.i.i.i.i, label %bb.cz, label %bb.da

bb.cx:                                            ; preds = %bb.cv
  %brmerge.i.i.i.i.i.i.i.i.i = or i1 %.not239.i.i.i.i.i.i.i.i.i, %.not244.i.i.i.i.i.i.i.i.i
  br i1 %brmerge.i.i.i.i.i.i.i.i.i, label %bb.dg, label %bb.cy

bb.cy:                                            ; preds = %bb.cx
  %.sroa.0294.6.insert.ext.i.i.i.i.i.i.i.i.i = zext nneg i8 %.sroa.0.0312358.i.i.i.i.i.i.i.i.i to i64
  %.sroa.0294.6.insert.shift.i.i.i.i.i.i.i.i.i = shl nuw nsw i64 %.sroa.0294.6.insert.ext.i.i.i.i.i.i.i.i.i, 48
  br label %bb.dh

bb.cz:                                            ; preds = %bb.cw
  %i.ni = icmp samesign ugt i8 %.sroa.1957.0.i.i.i.i.i.i.i, 59 ; 2 uses
  br i1 %.not244.i.i.i.i.i.i.i.i.i, label %bb.dc, label %bb.dd

bb.da:                                            ; preds = %bb.cw
  br i1 %.not244.i.i.i.i.i.i.i.i.i, label %bb.dg, label %bb.db

bb.db:                                            ; preds = %bb.da
  %.sroa.0299.6.insert.ext.i.i.i.i.i.i.i.i.i = zext nneg i8 %.sroa.0.0312358.i.i.i.i.i.i.i.i.i to i64
  %.sroa.0299.6.insert.shift.i.i.i.i.i.i.i.i.i = shl nuw nsw i64 %.sroa.0299.6.insert.ext.i.i.i.i.i.i.i.i.i, 48
  %.sroa.0299.6.insert.insert.i.i.i.i.i.i.i.i.i = add nuw nsw i64 %.sroa.0299.6.insert.shift.i.i.i.i.i.i.i.i.i, %.sroa.0306.5.insert.ext.i.i.i.i.i.i.i.i.i
  br label %bb.dh

bb.dc:                                            ; preds = %bb.cz
  br i1 %i.ni, label %bb.dg, label %bb.df, !prof !18

bb.dd:                                            ; preds = %bb.cz
  br i1 %i.ni, label %bb.dg, label %bb.de, !prof !18

bb.de:                                            ; preds = %bb.dd
  %.sroa.0302.4.insert.ext.i.i.i.i.i.i.i.i.i = zext nneg i8 %.sroa.1957.0.i.i.i.i.i.i.i to i64
  %.sroa.0302.4.insert.shift.i.i.i.i.i.i.i.i.i = shl nuw nsw i64 %.sroa.0302.4.insert.ext.i.i.i.i.i.i.i.i.i, 32
  %.sroa.0302.6.insert.ext.i.i.i.i.i.i.i.i.i = zext nneg i8 %.sroa.0.0312358.i.i.i.i.i.i.i.i.i to i64
  %.sroa.0302.6.insert.shift.i.i.i.i.i.i.i.i.i = shl nuw nsw i64 %.sroa.0302.6.insert.ext.i.i.i.i.i.i.i.i.i, 48
  %i.nj = or disjoint i64 %.sroa.0302.6.insert.shift.i.i.i.i.i.i.i.i.i, %.sroa.0302.4.insert.shift.i.i.i.i.i.i.i.i.i
  %.sroa.0302.6.insert.insert.i.i.i.i.i.i.i.i.i = or i64 %i.nj, %.sroa.0306.5.insert.ext.i.i.i.i.i.i.i.i.i
  br label %bb.dh

bb.df:                                            ; preds = %bb.dc
  %.sroa.0306.0.insert.ext.i.i.i.i.i.i.i.i.i = zext nneg i32 %.sroa.4.0.i.i.i.i.i.i.i to i64
  %.sroa.0306.4.insert.ext.i.i.i.i.i.i.i.i.i = zext nneg i8 %.sroa.1957.0.i.i.i.i.i.i.i to i64
  %.sroa.0306.4.insert.shift.i.i.i.i.i.i.i.i.i = shl nuw nsw i64 %.sroa.0306.4.insert.ext.i.i.i.i.i.i.i.i.i, 32
  %i.nk = or disjoint i64 %.sroa.0306.4.insert.shift.i.i.i.i.i.i.i.i.i, %.sroa.0306.0.insert.ext.i.i.i.i.i.i.i.i.i
  %.sroa.0306.6.insert.ext.i.i.i.i.i.i.i.i.i = zext nneg i8 %.sroa.0.0312358.i.i.i.i.i.i.i.i.i to i64
  %.sroa.0306.6.insert.shift.i.i.i.i.i.i.i.i.i = shl nuw nsw i64 %.sroa.0306.6.insert.ext.i.i.i.i.i.i.i.i.i, 48
  %i.nl = or disjoint i64 %.sroa.0306.6.insert.shift.i.i.i.i.i.i.i.i.i, %i.nk
  %.sroa.0306.6.insert.insert.i.i.i.i.i.i.i.i.i = or i64 %i.nl, %.sroa.0306.5.insert.ext.i.i.i.i.i.i.i.i.i
  br label %bb.dh

bb.dg:                                            ; preds = %bb.dd, %bb.dc, %bb.da, %bb.cx, %bb.cp
  %.sink365.i.i.i.i.i.i.i.i.i = phi i8 [ 2, %bb.da ], [ 0, %bb.dd ], [ 2, %bb.cp ], [ 0, %bb.dc ], [ 2, %bb.cx ]
  %.sroa.01.sroa.12.0.extract.shift16.i.i.i.i.i.i.i = lshr i64 ptrtoint (ptr @269 to i64), 32
  br label %_ZN4time7parsing8parsable6sealed6Sealed22parse_offset_date_time17heae73a90e57bab8eE.exit.thread25.i.i.i.i.i.i

bb.dh:                                            ; preds = %bb.df, %bb.de, %bb.db, %bb.cy, %bb.cq
  %.sroa.0214.0.ph.i.i.i.i.i.i.i.i = phi i64 [ %.sroa.0302.6.insert.insert.i.i.i.i.i.i.i.i.i, %bb.de ], [ %.sroa.0299.6.insert.insert.i.i.i.i.i.i.i.i.i, %bb.db ], [ %.sroa.0306.6.insert.insert.i.i.i.i.i.i.i.i.i, %bb.df ], [ %.sroa.0294.6.insert.shift.i.i.i.i.i.i.i.i.i, %bb.cy ], [ %.sroa.0.6.insert.shift.i.i.i.i.i.i.i.i.i, %bb.cq ] ; 7 uses
  %i.nm = icmp eq i8 %.sroa.23.0.copyload70.i.i.i.i.i.i.i.i, -128
  br i1 %i.nm, label %_ZN4time7parsing8parsable6sealed6Sealed22parse_offset_date_time17heae73a90e57bab8eE.exit.thread25.i.i.i.i.i.i, label %bb.di

bb.di:                                            ; preds = %bb.dh
  %i.nn = icmp sgt i8 %.sroa.23.0.copyload70.i.i.i.i.i.i.i.i, -24
  call void @llvm.assume(i1 %i.nn), !noalias !8986
  %i.no = icmp slt i8 %.sroa.23.0.copyload70.i.i.i.i.i.i.i.i, 24
  call void @llvm.assume(i1 %i.no), !noalias !8986
  %.not.i173.i.i.i.i.i.i.i.i = icmp eq i8 %.sroa.24.0.copyload74.i.i.i.i.i.i.i.i, -128
  br i1 %.not.i173.i.i.i.i.i.i.i.i, label %.thread51.i.i.i.i.i.i.i.i.i, label %bb.dj

bb.dj:                                            ; preds = %bb.di
  %i.np = icmp sgt i8 %.sroa.24.0.copyload74.i.i.i.i.i.i.i.i, -60
  call void @llvm.assume(i1 %i.np), !noalias !8986
  %i.nq = icmp slt i8 %.sroa.24.0.copyload74.i.i.i.i.i.i.i.i, 60
  call void @llvm.assume(i1 %i.nq), !noalias !8986
  %i.nr = trunc nuw i8 %.sroa.29.0.copyload94.i.i.i.i.i.i.i.i to i1 ; 2 uses
  %i.ns = sub nsw i8 0, %.sroa.24.0.copyload74.i.i.i.i.i.i.i.i
  %spec.select.i.i174.i.i.i.i.i.i.i.i = select i1 %i.nr, i8 %i.ns, i8 %.sroa.24.0.copyload74.i.i.i.i.i.i.i.i ; 4 uses
  %.not65.i.i.i.i.i.i.i.i.i = icmp eq i8 %.sroa.25.0.copyload78.i.i.i.i.i.i.i.i, -128
  br i1 %.not65.i.i.i.i.i.i.i.i.i, label %bb.dl, label %bb.dk

bb.dk:                                            ; preds = %bb.dj
  %i.nt = icmp sgt i8 %.sroa.25.0.copyload78.i.i.i.i.i.i.i.i, -60
  call void @llvm.assume(i1 %i.nt), !noalias !8986
  %i.nu = icmp slt i8 %.sroa.25.0.copyload78.i.i.i.i.i.i.i.i, 60
  call void @llvm.assume(i1 %i.nu), !noalias !8986
  %i.nv = sub nsw i8 0, %.sroa.25.0.copyload78.i.i.i.i.i.i.i.i
  %spec.select.i19.i.i.i.i.i.i.i.i.i = select i1 %i.nr, i8 %i.nv, i8 %.sroa.25.0.copyload78.i.i.i.i.i.i.i.i
  br label %bb.dl

bb.dl:                                            ; preds = %bb.dk, %bb.dj
  %spec.select.i175.i.i.i.i.i.i.i.i = phi i8 [ 0, %bb.dj ], [ %spec.select.i19.i.i.i.i.i.i.i.i.i, %bb.dk ] ; 3 uses
  %i.nw = icmp sgt i8 %.sroa.23.0.copyload70.i.i.i.i.i.i.i.i, 0 ; 2 uses
  %i.nx = icmp slt i8 %spec.select.i.i174.i.i.i.i.i.i.i.i, 0
  %or.cond40.i.i.i.i.i.i.i.i.i.i.i = and i1 %i.nw, %i.nx
  br i1 %or.cond40.i.i.i.i.i.i.i.i.i.i.i, label %bb.dn, label %bb.dm

bb.dm:                                            ; preds = %bb.dl
  %i.ny = icmp slt i8 %.sroa.23.0.copyload70.i.i.i.i.i.i.i.i, 0
  %i.nz = icmp sgt i8 %spec.select.i.i174.i.i.i.i.i.i.i.i, 0
  %or.cond41.i.i.i.i.i.i.i.i.i.i.i = and i1 %i.ny, %i.nz
  br i1 %or.cond41.i.i.i.i.i.i.i.i.i.i.i, label %bb.dn, label %bb.do

bb.dn:                                            ; preds = %bb.dm, %bb.dl
  %i.oa = sub nsw i8 0, %spec.select.i.i174.i.i.i.i.i.i.i.i
  br label %bb.do

bb.do:                                            ; preds = %bb.dn, %bb.dm
  %.sroa.0.1.i.i.i.i.i.i.i.i.i.i.i = phi i8 [ %spec.select.i.i174.i.i.i.i.i.i.i.i, %bb.dm ], [ %i.oa, %bb.dn ] ; 2 uses
  %i.ob = icmp slt i8 %spec.select.i175.i.i.i.i.i.i.i.i, 0 ; 2 uses
  %or.cond42.i.i.i.i.i.i.i.i.i.i.i = and i1 %i.nw, %i.ob
  br i1 %or.cond42.i.i.i.i.i.i.i.i.i.i.i, label %bb.dp, label %.thread51.i.i.i.i.i.i.i.i.i

bb.dp:                                            ; preds = %.thread51.i.i.i.i.i.i.i.i.i, %bb.do
  %.sroa.0.1.i.i59.i.i.i.i.i.i.i.i.i = phi i8 [ %.sroa.0.1.i.i57.i.i.i.i.i.i.i.i.i, %.thread51.i.i.i.i.i.i.i.i.i ], [ %.sroa.0.1.i.i.i.i.i.i.i.i.i.i.i, %bb.do ]
  %.sroa.05.030374256.i.i.i.i.i.i.i.i.i = phi i8 [ %.sroa.05.030374255.i.i.i.i.i.i.i.i.i, %.thread51.i.i.i.i.i.i.i.i.i ], [ %spec.select.i175.i.i.i.i.i.i.i.i, %bb.do ]
  %i.oc = sub nsw i8 0, %.sroa.05.030374256.i.i.i.i.i.i.i.i.i
  br label %bb.dq

.thread51.i.i.i.i.i.i.i.i.i:                      ; preds = %bb.do, %bb.di
  %i.od = phi i1 [ %i.ob, %bb.do ], [ false, %bb.di ]
  %.sroa.0.1.i.i57.i.i.i.i.i.i.i.i.i = phi i8 [ %.sroa.0.1.i.i.i.i.i.i.i.i.i.i.i, %bb.do ], [ 0, %bb.di ] ; 4 uses
  %.sroa.05.030374255.i.i.i.i.i.i.i.i.i = phi i8 [ %spec.select.i175.i.i.i.i.i.i.i.i, %bb.do ], [ 0, %bb.di ] ; 3 uses
  %i.oe = icmp slt i8 %.sroa.23.0.copyload70.i.i.i.i.i.i.i.i, 0
  %i.of = icmp sgt i8 %.sroa.05.030374255.i.i.i.i.i.i.i.i.i, 0 ; 2 uses
  %or.cond.i.i.i.i.i.i.i.i.i.i.i = and i1 %i.oe, %i.of
  %i.og = icmp sgt i8 %.sroa.0.1.i.i57.i.i.i.i.i.i.i.i.i, 0
  %or.cond38.i.i.i.i.i.i.i.i.i.i.i = and i1 %i.od, %i.og
  %i.oh = icmp slt i8 %.sroa.0.1.i.i57.i.i.i.i.i.i.i.i.i, 0
  %or.cond39.i.i.i.i.i.i.i.i.i.i.i = and i1 %i.oh, %i.of
  %i.oi = or i1 %or.cond38.i.i.i.i.i.i.i.i.i.i.i, %or.cond39.i.i.i.i.i.i.i.i.i.i.i
  %or.cond44.i.i.i.i.i.i.i.i.i.i.i = select i1 %or.cond.i.i.i.i.i.i.i.i.i.i.i, i1 true, i1 %i.oi
  br i1 %or.cond44.i.i.i.i.i.i.i.i.i.i.i, label %bb.dp, label %bb.dq

bb.dq:                                            ; preds = %.thread51.i.i.i.i.i.i.i.i.i, %bb.dp
  %.sroa.0.1.i.i58.i.i.i.i.i.i.i.i.i = phi i8 [ %.sroa.0.1.i.i59.i.i.i.i.i.i.i.i.i, %bb.dp ], [ %.sroa.0.1.i.i57.i.i.i.i.i.i.i.i.i, %.thread51.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %.sroa.06.0.i.i.i.i.i.i.i.i.i.i.i = phi i8 [ %i.oc, %bb.dp ], [ %.sroa.05.030374255.i.i.i.i.i.i.i.i.i, %.thread51.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %.sroa.3.0.insert.ext.i.i.i.i.i.i.i.i.i.i.i = zext i8 %.sroa.23.0.copyload70.i.i.i.i.i.i.i.i to i64
  %.sroa.2.0.insert.ext.i.i.i.i.i.i.i.i.i.i.i = zext i8 %.sroa.0.1.i.i58.i.i.i.i.i.i.i.i.i to i64
  %.sroa.012.0.insert.ext.i.i.i.i.i.i.i.i.i.i.i = zext i8 %.sroa.06.0.i.i.i.i.i.i.i.i.i.i.i to i64
  %.sroa.0332.0.extract.trunc.i.i.i.i.i.i.i.i = trunc i64 %.sroa.0214.0.ph.i.i.i.i.i.i.i.i to i32 ; 3 uses
  br i1 %.sroa.023.0.i.i.i.i.i.i.i.i, label %bb.dr, label %._crit_edge.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i:                        ; preds = %_ZN4time16offset_date_time14OffsetDateTime29is_valid_leap_second_stand_in17h06e25827798c37cbE.exit.i.i.i.i.i.i.i.i, %bb.dq
  %.sroa.01.sroa.0.0.extract.trunc6.pre-phi.i.i.i.i.i.i.i = phi i32 [ 999999999, %_ZN4time16offset_date_time14OffsetDateTime29is_valid_leap_second_stand_in17h06e25827798c37cbE.exit.i.i.i.i.i.i.i.i ], [ %.sroa.0332.0.extract.trunc.i.i.i.i.i.i.i.i, %bb.dq ]
  %.sroa.01.sroa.12.0.extract.shift14.i.i.i.i.i.i.i = lshr i64 %.sroa.0214.0.ph.i.i.i.i.i.i.i.i, 32
  %.sroa.13.8.insert.ext.i.i.i.i.i.i.i = zext i32 %.sroa.0191.sroa.0.0.i.i.i.i.i.i.i.i to i64
  %i.oj = shl nuw nsw i64 %.sroa.2.0.insert.ext.i.i.i.i.i.i.i.i.i.i.i, 40
  %i.ok = shl nuw nsw i64 %.sroa.3.0.insert.ext.i.i.i.i.i.i.i.i.i.i.i, 48
  %i.ol = shl nuw nsw i64 %.sroa.012.0.insert.ext.i.i.i.i.i.i.i.i.i.i.i, 32
  %i.om = or disjoint i64 %i.ol, %i.ok
  %.sroa.13.12.insert.shift.i.i.i.i.i.i.i = or disjoint i64 %i.om, %i.oj
  %.sroa.13.12.insert.insert.i.i.i.i.i.i.i = or disjoint i64 %.sroa.13.12.insert.shift.i.i.i.i.i.i.i, %.sroa.13.8.insert.ext.i.i.i.i.i.i.i
  br label %_ZN4time7parsing8parsable6sealed6Sealed22parse_offset_date_time17heae73a90e57bab8eE.exit.thread.i.i.i.i.i.i

bb.dr:                                            ; preds = %bb.dq
  %i.on = icmp ult i32 %.sroa.0332.0.extract.trunc.i.i.i.i.i.i.i.i, 1000000000
  call void @llvm.assume(i1 %i.on), !noalias !8986
  %i.oo = icmp eq i32 %.sroa.0332.0.extract.trunc.i.i.i.i.i.i.i.i, 999999999
  br i1 %i.oo, label %bb.ds, label %_ZN4time16offset_date_time14OffsetDateTime29is_valid_leap_second_stand_in17h06e25827798c37cbE.exit.thread.i.i.i.i.i.i.i.i

bb.ds:                                            ; preds = %bb.dr
  %i.op = or i8 %.sroa.0.1.i.i58.i.i.i.i.i.i.i.i.i, %.sroa.23.0.copyload70.i.i.i.i.i.i.i.i
  %i.oq = or i8 %i.op, %.sroa.06.0.i.i.i.i.i.i.i.i.i.i.i
  %i.or = icmp eq i8 %i.oq, 0
  br i1 %i.or, label %bb.du, label %bb.dt

bb.dt:                                            ; preds = %bb.ds
  %.sroa.0332.4.extract.shift.i.i.i.i.i.i.i.i = lshr i64 %.sroa.0214.0.ph.i.i.i.i.i.i.i.i, 32
  %.sroa.0332.4.extract.trunc.i.i.i.i.i.i.i.i = trunc i64 %.sroa.0332.4.extract.shift.i.i.i.i.i.i.i.i to i8 ; 2 uses
  %i.os = icmp ult i8 %.sroa.0332.4.extract.trunc.i.i.i.i.i.i.i.i, 60
  call void @llvm.assume(i1 %i.os), !noalias !8986
  %i.ot = sub nsw i8 %.sroa.0332.4.extract.trunc.i.i.i.i.i.i.i.i, %.sroa.06.0.i.i.i.i.i.i.i.i.i.i.i ; 5 uses
  %i.ou = icmp sgt i8 %i.ot, -1
  br i1 %i.ou, label %bb.dw, label %bb.dv, !prof !23

bb.du:                                            ; preds = %bb.ds
  %i.ov = ashr i32 %.sroa.0191.sroa.0.0.i.i.i.i.i.i.i.i, 10
  %i.ow = trunc i32 %.sroa.0191.sroa.0.0.i.i.i.i.i.i.i.i to i16
  %i.ox = and i16 %i.ow, 511
  br label %_ZN4time16offset_date_time14OffsetDateTime10to_utc_raw17h9673f3291919b32eE.exit.i.i.i.i.i.i.i.i.i

bb.dv:                                            ; preds = %bb.dt
  %i.oy = add nsw i8 %i.ot, 60
  br label %bb.dx

bb.dw:                                            ; preds = %bb.dt
  %i.oz = icmp samesign ult i8 %i.ot, 60
  br i1 %i.oz, label %bb.dx, label %bb.dy, !prof !23

bb.dx:                                            ; preds = %bb.dy, %bb.dw, %bb.dv
  %.sroa.030.0.i.i.i.i.i.i.i.i.i.i = phi i8 [ -1, %bb.dv ], [ 1, %bb.dy ], [ 0, %bb.dw ]
  %.sroa.029.0.i.i.i.i.i.i.i.i.i.i = phi i8 [ %i.oy, %bb.dv ], [ %i.pe, %bb.dy ], [ %i.ot, %bb.dw ]
  %.sroa.0332.5.extract.shift.i.i.i.i.i.i.i.i = lshr i64 %.sroa.0214.0.ph.i.i.i.i.i.i.i.i, 40
  %.sroa.0332.5.extract.trunc.i.i.i.i.i.i.i.i = trunc i64 %.sroa.0332.5.extract.shift.i.i.i.i.i.i.i.i to i8 ; 2 uses
  %i.pa = icmp ult i8 %.sroa.0332.5.extract.trunc.i.i.i.i.i.i.i.i, 60
  call void @llvm.assume(i1 %i.pa), !noalias !8986
  %i.pb = sub nsw i8 %.sroa.0332.5.extract.trunc.i.i.i.i.i.i.i.i, %.sroa.0.1.i.i58.i.i.i.i.i.i.i.i.i
  %i.pc = add nsw i8 %.sroa.030.0.i.i.i.i.i.i.i.i.i.i, %i.pb ; 5 uses
  %i.pd = icmp sgt i8 %i.pc, -1
  br i1 %i.pd, label %bb.ea, label %bb.dz, !prof !23

bb.dy:                                            ; preds = %bb.dw
  %i.pe = add nsw i8 %i.ot, -60
  br label %bb.dx

bb.dz:                                            ; preds = %bb.dx
  %i.pf = add nsw i8 %i.pc, 60
  br label %bb.eb

bb.ea:                                            ; preds = %bb.dx
  %i.pg = icmp samesign ult i8 %i.pc, 60
  br i1 %i.pg, label %bb.eb, label %bb.ec, !prof !23

bb.eb:                                            ; preds = %bb.ec, %bb.ea, %bb.dz
  %.sroa.031.0.i.i.i.i.i.i.i.i.i.i = phi i8 [ %i.pf, %bb.dz ], [ %i.pl, %bb.ec ], [ %i.pc, %bb.ea ]
  %.sroa.032.0.i.i.i.i.i.i.i.i.i.i = phi i8 [ -1, %bb.dz ], [ 1, %bb.ec ], [ 0, %bb.ea ]
  %.sroa.0332.6.extract.shift.i.i.i.i.i.i.i.i = lshr i64 %.sroa.0214.0.ph.i.i.i.i.i.i.i.i, 48
  %.sroa.0332.6.extract.trunc.i.i.i.i.i.i.i.i = trunc nuw nsw i64 %.sroa.0332.6.extract.shift.i.i.i.i.i.i.i.i to i8
  %i.ph = icmp samesign ult i64 %.sroa.0214.0.ph.i.i.i.i.i.i.i.i, 6755399441055744
  call void @llvm.assume(i1 %i.ph), !noalias !8986
  %i.pi = sub nsw i8 %.sroa.0332.6.extract.trunc.i.i.i.i.i.i.i.i, %.sroa.23.0.copyload70.i.i.i.i.i.i.i.i
  %i.pj = add nsw i8 %.sroa.032.0.i.i.i.i.i.i.i.i.i.i, %i.pi ; 5 uses
  %i.pk = icmp sgt i8 %i.pj, -1
  br i1 %i.pk, label %bb.ed, label %bb.ee, !prof !23

bb.ec:                                            ; preds = %bb.ea
  %i.pl = add nsw i8 %i.pc, -60
  br label %bb.eb

bb.ed:                                            ; preds = %bb.eb
  %i.pm = icmp samesign ult i8 %i.pj, 24
  br i1 %i.pm, label %bb.ef, label %bb.eg, !prof !23

bb.ee:                                            ; preds = %bb.eb
  %i.pn = add nsw i8 %i.pj, 24
  br label %bb.ef

bb.ef:                                            ; preds = %bb.eg, %bb.ee, %bb.ed
  %.sroa.033.0.i.i.i.i.i.i.i.i.i.i = phi i8 [ %i.pj, %bb.ed ], [ %i.pw, %bb.eg ], [ %i.pn, %bb.ee ]
  %.sroa.034.0.i.i.i.i.i.i.i.i.i.i = phi i16 [ 0, %bb.ed ], [ 1, %bb.eg ], [ -1, %bb.ee ]
  %i.po = ashr i32 %.sroa.0191.sroa.0.0.i.i.i.i.i.i.i.i, 10 ; 6 uses
  %i.pp = trunc i32 %.sroa.0191.sroa.0.0.i.i.i.i.i.i.i.i to i16
  %i.pq = and i16 %i.pp, 511
  %i.pr = add nsw i16 %.sroa.034.0.i.i.i.i.i.i.i.i.i.i, %i.pq ; 5 uses
  %.sroa.026.0.i.i.i.i.i.i.i.i.i.i = call i32 @llvm.abs.i32(i32 %i.po, i1 true)
  %i.ps = mul i32 %.sroa.026.0.i.i.i.i.i.i.i.i.i.i, 33555415
  %i.pt = and i32 %i.ps, 100695055
  %i.pu = icmp samesign ult i32 %i.pt, 31745
  %.sroa.016.0.i.i.i.i.i.i.i.i.i.i = select i1 %i.pu, i16 366, i16 365 ; 2 uses
  %i.pv = icmp sgt i16 %i.pr, %.sroa.016.0.i.i.i.i.i.i.i.i.i.i
  br i1 %i.pv, label %bb.eh, label %bb.ei, !prof !11

bb.eg:                                            ; preds = %bb.ed
  %i.pw = add nsw i8 %i.pj, -24
  br label %bb.ef

bb.eh:                                            ; preds = %bb.ef
  %i.px = sub nuw nsw i16 %i.pr, %.sroa.016.0.i.i.i.i.i.i.i.i.i.i
  %i.py = add nsw i32 %i.po, 1
  br label %bb.ek

bb.ei:                                            ; preds = %bb.ef
  %i.pz = icmp slt i16 %i.pr, 1
  br i1 %i.pz, label %bb.ej, label %bb.ek, !prof !11

bb.ej:                                            ; preds = %bb.ei
  %i.qa = add nsw i32 %i.po, -1                   ; 2 uses
  %i.qb = icmp slt i32 %i.po, 1
  %i.qc = sub nsw i32 1, %i.po
  %.sroa.027.0.i.i.i.i.i.i.i.i.i.i = select i1 %i.qb, i32 %i.qc, i32 %i.qa
  %i.qd = mul i32 %.sroa.027.0.i.i.i.i.i.i.i.i.i.i, 33555415
  %i.qe = and i32 %i.qd, 100695055
  %i.qf = icmp samesign ult i32 %i.qe, 31745
  %.sroa.017.0.i.i.i.i.i.i.i.i.i.i = select i1 %i.qf, i16 366, i16 365
  %i.qg = add nsw i16 %i.pr, %.sroa.017.0.i.i.i.i.i.i.i.i.i.i
  br label %bb.ek

bb.ek:                                            ; preds = %bb.ej, %bb.ei, %bb.eh
  %.sroa.011.0.i.i.i.i.i.i.i.i.i.i = phi i16 [ %i.px, %bb.eh ], [ %i.qg, %bb.ej ], [ %i.pr, %bb.ei ]
  %.sroa.06.0.i.i.i.i.i.i.i.i.i.i = phi i32 [ %i.py, %bb.eh ], [ %i.qa, %bb.ej ], [ %i.po, %bb.ei ]
  %.sroa.4.0.insert.ext.i.i.i.i.i.i.i.i.i.i.i = zext nneg i8 %.sroa.033.0.i.i.i.i.i.i.i.i.i.i to i64
  %.sroa.4.0.insert.shift.i.i.i.i.i.i.i.i.i.i.i = shl nuw nsw i64 %.sroa.4.0.insert.ext.i.i.i.i.i.i.i.i.i.i.i, 48
  %.sroa.3.0.insert.ext.i.i.i177.i.i.i.i.i.i.i.i = zext nneg i8 %.sroa.031.0.i.i.i.i.i.i.i.i.i.i to i64
  %.sroa.3.0.insert.shift.i.i.i178.i.i.i.i.i.i.i.i = shl nuw nsw i64 %.sroa.3.0.insert.ext.i.i.i177.i.i.i.i.i.i.i.i, 40
  %.sroa.3.0.insert.insert.i.i.i.i.i.i.i.i.i.i.i = or disjoint i64 %.sroa.4.0.insert.shift.i.i.i.i.i.i.i.i.i.i.i, %.sroa.3.0.insert.shift.i.i.i178.i.i.i.i.i.i.i.i
  %.sroa.2.0.insert.ext.i.i.i179.i.i.i.i.i.i.i.i = zext nneg i8 %.sroa.029.0.i.i.i.i.i.i.i.i.i.i to i64
  %.sroa.2.0.insert.shift.i.i.i180.i.i.i.i.i.i.i.i = shl nuw nsw i64 %.sroa.2.0.insert.ext.i.i.i179.i.i.i.i.i.i.i.i, 32
  %.sroa.2.0.insert.insert.i.i.i181.i.i.i.i.i.i.i.i = or disjoint i64 %.sroa.3.0.insert.insert.i.i.i.i.i.i.i.i.i.i.i, %.sroa.2.0.insert.shift.i.i.i180.i.i.i.i.i.i.i.i
  br label %_ZN4time16offset_date_time14OffsetDateTime10to_utc_raw17h9673f3291919b32eE.exit.i.i.i.i.i.i.i.i.i

_ZN4time16offset_date_time14OffsetDateTime10to_utc_raw17h9673f3291919b32eE.exit.i.i.i.i.i.i.i.i.i: ; preds = %bb.ek, %bb.du
  %.sroa.06.0.sink.i.i.i.i.i.i.i.i.i.i = phi i32 [ %.sroa.06.0.i.i.i.i.i.i.i.i.i.i, %bb.ek ], [ %i.ov, %bb.du ] ; 3 uses
  %.sroa.011.0.sink.i.i.i.i.i.i.i.i.i.i = phi i16 [ %.sroa.011.0.i.i.i.i.i.i.i.i.i.i, %bb.ek ], [ %i.ox, %bb.du ] ; 3 uses
  %.sroa.0.0.insert.insert.i.sink.i.i.i.i.i.i.i.i.i.i = phi i64 [ %.sroa.2.0.insert.insert.i.i.i181.i.i.i.i.i.i.i.i, %bb.ek ], [ %.sroa.0214.0.ph.i.i.i.i.i.i.i.i, %bb.du ] ; 4 uses
  %.sroa.611.12.extract.shift.i.i.i.i.i.i.i.i.i = lshr i64 %.sroa.0.0.insert.insert.i.sink.i.i.i.i.i.i.i.i.i.i, 32
  %.sroa.611.12.extract.trunc.i.i.i.i.i.i.i.i.i = trunc i64 %.sroa.611.12.extract.shift.i.i.i.i.i.i.i.i.i to i8 ; 2 uses
  %.sroa.611.13.extract.shift.i.i.i.i.i.i.i.i.i = lshr i64 %.sroa.0.0.insert.insert.i.sink.i.i.i.i.i.i.i.i.i.i, 40
  %.sroa.611.13.extract.trunc.i.i.i.i.i.i.i.i.i = trunc i64 %.sroa.611.13.extract.shift.i.i.i.i.i.i.i.i.i to i8 ; 2 uses
  %i.qh = add nsw i32 %.sroa.06.0.sink.i.i.i.i.i.i.i.i.i.i, -10000
  %or.cond.i.i182.i.i.i.i.i.i.i.i = icmp ult i32 %i.qh, -19999
  br i1 %or.cond.i.i182.i.i.i.i.i.i.i.i, label %_ZN4time16offset_date_time14OffsetDateTime29is_valid_leap_second_stand_in17h06e25827798c37cbE.exit.thread.i.i.i.i.i.i.i.i, label %bb.el, !prof !18

bb.el:                                            ; preds = %_ZN4time16offset_date_time14OffsetDateTime10to_utc_raw17h9673f3291919b32eE.exit.i.i.i.i.i.i.i.i.i
  %.sroa.010.0.i.i183.i.i.i.i.i.i.i.i = call i32 @llvm.abs.i32(i32 %.sroa.06.0.sink.i.i.i.i.i.i.i.i.i.i, i1 true) ; 2 uses
  %i.qi = mul i32 %.sroa.010.0.i.i183.i.i.i.i.i.i.i.i, 33555415
  %i.qj = and i32 %i.qi, 100695055
  %i.qk = icmp samesign ult i32 %i.qj, 31745      ; 2 uses
  %i.ql = add nsw i16 %.sroa.011.0.sink.i.i.i.i.i.i.i.i.i.i, -1
  %or.cond1.i.i184.i.i.i.i.i.i.i.i = icmp ult i16 %i.ql, 365
  br i1 %or.cond1.i.i184.i.i.i.i.i.i.i.i, label %bb.en, label %bb.em, !prof !17

bb.em:                                            ; preds = %bb.el
  %i.qm = icmp eq i16 %.sroa.011.0.sink.i.i.i.i.i.i.i.i.i.i, 366
  %brmerge.not.i.i.i.i.i.i.i.i.i.i = and i1 %i.qm, %i.qk
  br i1 %brmerge.not.i.i.i.i.i.i.i.i.i.i, label %bb.en, label %_ZN4time16offset_date_time14OffsetDateTime29is_valid_leap_second_stand_in17h06e25827798c37cbE.exit.thread.i.i.i.i.i.i.i.i

bb.en:                                            ; preds = %bb.em, %bb.el
  %i.qn = shl nsw i32 %.sroa.06.0.sink.i.i.i.i.i.i.i.i.i.i, 10
  %i.qo = select i1 %i.qk, i32 512, i32 0
  %i.qp = or disjoint i32 %i.qo, %i.qn
  %i.qq = zext nneg i16 %.sroa.011.0.sink.i.i.i.i.i.i.i.i.i.i to i32 ; 3 uses
  %i.qr = or i32 %i.qp, %i.qq                     ; 2 uses
  %i.qs = icmp ne i32 %i.qr, 0
  call void @llvm.assume(i1 %i.qs), !noalias !8986
  %i.qt = icmp samesign ult i64 %.sroa.0.0.insert.insert.i.sink.i.i.i.i.i.i.i.i.i.i, 6755399441055744
  call void @llvm.assume(i1 %i.qt), !noalias !8986
  %.sroa.611.14.extract.shift.i.mask.i.i.i.i.i.i.i.i = and i64 %.sroa.0.0.insert.insert.i.sink.i.i.i.i.i.i.i.i.i.i, 8725724278030336
  %i.qu = icmp eq i64 %.sroa.611.14.extract.shift.i.mask.i.i.i.i.i.i.i.i, 6473924464345088
  br i1 %i.qu, label %bb.eo, label %_ZN4time16offset_date_time14OffsetDateTime29is_valid_leap_second_stand_in17h06e25827798c37cbE.exit.thread.i.i.i.i.i.i.i.i

bb.eo:                                            ; preds = %bb.en
  %i.qv = icmp ult i8 %.sroa.611.13.extract.trunc.i.i.i.i.i.i.i.i.i, 60
  call void @llvm.assume(i1 %i.qv), !noalias !8986
  %i.qw = icmp eq i8 %.sroa.611.13.extract.trunc.i.i.i.i.i.i.i.i.i, 59
  br i1 %i.qw, label %bb.ep, label %_ZN4time16offset_date_time14OffsetDateTime29is_valid_leap_second_stand_in17h06e25827798c37cbE.exit.thread.i.i.i.i.i.i.i.i

bb.ep:                                            ; preds = %bb.eo
  %i.qx = icmp ult i8 %.sroa.611.12.extract.trunc.i.i.i.i.i.i.i.i.i, 60
  call void @llvm.assume(i1 %i.qx), !noalias !8986
  %i.qy = icmp eq i8 %.sroa.611.12.extract.trunc.i.i.i.i.i.i.i.i.i, 59
  br i1 %i.qy, label %bb.eq, label %_ZN4time16offset_date_time14OffsetDateTime29is_valid_leap_second_stand_in17h06e25827798c37cbE.exit.thread.i.i.i.i.i.i.i.i
end_hunk_0
