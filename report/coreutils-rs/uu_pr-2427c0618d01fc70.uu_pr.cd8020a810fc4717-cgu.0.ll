Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/coreutils-rs/original/uu_pr-2427c0618d01fc70.uu_pr.cd8020a810fc4717-cgu.0?download=true
inline.NumInlined: 1527
inline.NumDeleted: 885
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 15
begin_hunk_0_@_RNvCshDScVpnq8df_5uu_pr13build_options:bb.a
  %.val1.i.i18.i.i = load ptr, ptr %i.jt, align 8, !alias.scope !1960, !noalias !1950, !nonnull !4, !noundef !4
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i18.i.i, i64 noundef %.val.i.i17.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #30, !noalias !1961
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECshDScVpnq8df_5uu_pr.exit19.i.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECshDScVpnq8df_5uu_pr.exit19.i.i: ; preds = %bb.at, %.split.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bk), !noalias !1950
  call void @llvm.experimental.noalias.scope.decl(metadata !1962)
  call void @llvm.experimental.noalias.scope.decl(metadata !1963)
  %.val.i.i20.i.i = load i64, ptr %i.bp, align 8, !range !6, !alias.scope !1964, !noalias !1950, !noundef !4 ; 2 uses
  %i.ju = icmp eq i64 %.val.i.i20.i.i, 0
  br i1 %i.ju, label %bb.bi, label %bb.au

bb.au:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECshDScVpnq8df_5uu_pr.exit19.i.i
  %i.jv = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  %.val1.i.i21.i.i = load ptr, ptr %i.jv, align 8, !alias.scope !1964, !noalias !1950, !nonnull !4, !noundef !4
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i21.i.i, i64 noundef %.val.i.i20.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #30, !noalias !1965
  br label %bb.bi

bb.av:                                            ; preds = %bb.ac, %.thread38.i
  %.sroa.4.0.i.ph40.i = phi i32 [ %i.gn, %.thread38.i ], [ %.sroa.4.0.i.ph.i, %bb.ac ]
  tail call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #30, !noalias !1966
  %i.jw = tail call noundef dereferenceable_or_null(1) ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) 1, i64 noundef range(i64 1, 9) 1) #30, !noalias !1966 ; 3 uses
  %i.jx = icmp eq ptr %i.jw, null
  br i1 %i.jx, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %bb.av
  tail call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef 1, i64 1) #31, !noalias !1957
  unreachable

bb.ax:                                            ; preds = %bb.av
  %i.jy = trunc nuw nsw i32 %.sroa.4.0.i.ph40.i to i8
  store i8 %i.jy, ptr %i.jw, align 1, !noalias !1957
  %.not.i27.not.i = icmp eq i64 %.val589, 1
  br i1 %.not.i27.not.i, label %_RNvMsv_NtCs6JMX4GRUq9U_4core3numj27from_ascii_bytes_radix_impl.exit52.i, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.jz = getelementptr inbounds nuw i8, ptr %.val588, i64 1 ; 2 uses
  %i.ka = load i8, ptr %i.jz, align 1, !alias.scope !1967, !noalias !1957, !noundef !4 ; 3 uses
  %i.kb = icmp sgt i8 %i.ka, -65
  br i1 %i.kb, label %_RNvXs9_NtNtCs6JMX4GRUq9U_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3get.exit.i, label %_RNvMsv_NtCs6JMX4GRUq9U_4core3numj27from_ascii_bytes_radix_impl.exit52.i

_RNvXs9_NtNtCs6JMX4GRUq9U_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3get.exit.i: ; preds = %bb.ay
  %i.kc = add i64 %.val589, -1                    ; 2 uses
  %cond.i = icmp eq i64 %i.kc, 1
  br i1 %cond.i, label %bb.az, label %thread-pre-split.i50.i

bb.az:                                            ; preds = %_RNvXs9_NtNtCs6JMX4GRUq9U_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3get.exit.i
  switch i8 %i.ka, label %thread-pre-split.i50.i [
    i8 43, label %_RNvMsv_NtCs6JMX4GRUq9U_4core3numj27from_ascii_bytes_radix_impl.exit52.i
    i8 45, label %_RNvMsv_NtCs6JMX4GRUq9U_4core3numj27from_ascii_bytes_radix_impl.exit52.i
  ]

thread-pre-split.i50.i:                           ; preds = %bb.az, %_RNvXs9_NtNtCs6JMX4GRUq9U_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3get.exit.i
  %cond.i31.i = icmp eq i8 %i.ka, 43              ; 2 uses
  %i.kd = sext i1 %cond.i31.i to i64
  %.sroa.15.0.i32.i = add nsw i64 %i.kc, %i.kd    ; 4 uses
  %.sroa.0.0.idx.i33.i = zext i1 %cond.i31.i to i64
  %.sroa.0.0.i34.i = getelementptr inbounds nuw i8, ptr %i.jz, i64 %.sroa.0.0.idx.i33.i ; 2 uses
  %i.ke = icmp samesign ult i64 %.sroa.15.0.i32.i, 17
  br i1 %i.ke, label %.preheader.i43.i, label %.preheader56.i35.i.preheader

.preheader.i43.i:                                 ; preds = %thread-pre-split.i50.i
  %.not5366.i44.i = icmp eq i64 %.sroa.15.0.i32.i, 0
  br i1 %.not5366.i44.i, label %_RNvMsv_NtCs6JMX4GRUq9U_4core3numj27from_ascii_bytes_radix_impl.exit52.i, label %.lr.ph.i45.i

.preheader56.i35.i:                               ; preds = %bb.ba
  %i.kf = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i38.i1532, i64 1
  %i.kg = add nsw i64 %.sroa.15.1.i37.i1531, -1   ; 2 uses
  %.not52.i39.i = icmp eq i64 %i.kg, 0
  br i1 %.not52.i39.i, label %_RNvMsv_NtCs6JMX4GRUq9U_4core3numj27from_ascii_bytes_radix_impl.exit52.i, label %.preheader56.i35.i.preheader

.preheader56.i35.i.preheader:                     ; preds = %thread-pre-split.i50.i, %.preheader56.i35.i
  %.sroa.0.1.i38.i1532 = phi ptr [ %i.kf, %.preheader56.i35.i ], [ %.sroa.0.0.i34.i, %thread-pre-split.i50.i ] ; 2 uses
  %.sroa.15.1.i37.i1531 = phi i64 [ %i.kg, %.preheader56.i35.i ], [ %.sroa.15.0.i32.i, %thread-pre-split.i50.i ]
  %.sroa.042.0.i36.i1530 = phi i64 [ %i.kp, %.preheader56.i35.i ], [ 0, %thread-pre-split.i50.i ]
  %i.kh = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %.sroa.042.0.i36.i1530, i64 10) ; 2 uses
  %i.ki = extractvalue { i64, i1 } %i.kh, 1
  br i1 %i.ki, label %_RNvMsv_NtCs6JMX4GRUq9U_4core3numj27from_ascii_bytes_radix_impl.exit52.i, label %bb.ba, !prof !8

bb.ba:                                            ; preds = %.preheader56.i35.i.preheader
  %i.kj = extractvalue { i64, i1 } %i.kh, 0       ; 2 uses
  %i.kk = load i8, ptr %.sroa.0.1.i38.i1532, align 1, !alias.scope !1968, !noalias !1969, !noundef !4
  %i.kl = zext i8 %i.kk to i32
  %i.km = add nsw i32 %i.kl, -48                  ; 2 uses
  %i.kn = icmp ugt i32 %i.km, 9
  %i.ko = zext nneg i32 %i.km to i64
  %i.kp = add i64 %i.kj, %i.ko                    ; 3 uses
  %i.kq = icmp ult i64 %i.kp, %i.kj
  %or.cond53.i = select i1 %i.kn, i1 true, i1 %i.kq, !prof !10
  br i1 %or.cond53.i, label %_RNvMsv_NtCs6JMX4GRUq9U_4core3numj27from_ascii_bytes_radix_impl.exit52.i, label %.preheader56.i35.i, !prof !10

.lr.ph.i45.i:                                     ; preds = %.preheader.i43.i, %bb.bb
  %.sroa.0.269.i46.i = phi ptr [ %i.kx, %bb.bb ], [ %.sroa.0.0.i34.i, %.preheader.i43.i ] ; 2 uses
  %.sroa.15.268.i47.i = phi i64 [ %i.kw, %bb.bb ], [ %.sroa.15.0.i32.i, %.preheader.i43.i ]
  %.sroa.042.267.i48.i = phi i64 [ %i.kz, %bb.bb ], [ 0, %.preheader.i43.i ]
  %i.kr = load i8, ptr %.sroa.0.269.i46.i, align 1, !alias.scope !1968, !noalias !1969, !noundef !4
  %i.ks = zext i8 %i.kr to i32
  %i.kt = add nsw i32 %i.ks, -48                  ; 2 uses
  %i.ku = icmp ult i32 %i.kt, 10
  br i1 %i.ku, label %bb.bb, label %_RNvMsv_NtCs6JMX4GRUq9U_4core3numj27from_ascii_bytes_radix_impl.exit52.i

bb.bb:                                            ; preds = %.lr.ph.i45.i
  %i.kv = mul i64 %.sroa.042.267.i48.i, 10
  %i.kw = add nsw i64 %.sroa.15.268.i47.i, -1     ; 2 uses
  %i.kx = getelementptr inbounds nuw i8, ptr %.sroa.0.269.i46.i, i64 1
  %i.ky = zext nneg i32 %i.kt to i64
  %i.kz = add i64 %i.kv, %i.ky                    ; 2 uses
  %.not53.i49.i = icmp eq i64 %i.kw, 0
  br i1 %.not53.i49.i, label %_RNvMsv_NtCs6JMX4GRUq9U_4core3numj27from_ascii_bytes_radix_impl.exit52.i, label %.lr.ph.i45.i

_RNvMsv_NtCs6JMX4GRUq9U_4core3numj27from_ascii_bytes_radix_impl.exit52.i: ; preds = %bb.ba, %.preheader56.i35.i.preheader, %.preheader56.i35.i, %bb.bb, %.lr.ph.i45.i, %.preheader.i43.i, %bb.az, %bb.az, %bb.ay, %bb.ax
  %.sink.i30.i = phi i64 [ 5, %bb.az ], [ 5, %bb.ay ], [ 0, %.preheader.i43.i ], [ 5, %bb.az ], [ 5, %.lr.ph.i45.i ], [ 5, %bb.ax ], [ %i.kz, %bb.bb ], [ 5, %.preheader56.i35.i.preheader ], [ %i.kp, %.preheader56.i35.i ], [ 5, %bb.ba ]
  tail call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #30, !noalias !1970
  br label %bb.bd

bb.bc:                                            ; preds = %.loopexit62.i
  store i8 9, ptr %i.fy, align 1, !noalias !1948
  br label %bb.bd

bb.bd:                                            ; preds = %_RNvMsv_NtCs6JMX4GRUq9U_4core3numj27from_ascii_bytes_radix_impl.exit52.i, %bb.bc
  %.sroa.316.034.i = phi ptr [ %i.jw, %_RNvMsv_NtCs6JMX4GRUq9U_4core3numj27from_ascii_bytes_radix_impl.exit52.i ], [ %i.fy, %bb.bc ]
  %.sroa.06.0.i = phi i64 [ %.sink.i30.i, %_RNvMsv_NtCs6JMX4GRUq9U_4core3numj27from_ascii_bytes_radix_impl.exit52.i ], [ %.sroa.111.0.i, %bb.bc ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bq)
  br label %_RINvMNtCs6JMX4GRUq9U_4core6optionINtB3_6OptionNtCshDScVpnq8df_5uu_pr13NumberingModeE7or_elseNCNvBK_13build_optionss0_0EBK_.exit

bb.be:                                            ; preds = %_RINvMNtNtCsgNwXemyrBWj_12clap_builder6parser5errorNtB3_12MatchesError6unwrapINtNtCs6JMX4GRUq9U_4core6option6OptionRNtNtCs7tKScEop1B6_5alloc6string6StringEECshDScVpnq8df_5uu_pr.exit618
  %i.la = tail call noundef zeroext i1 @_RNvMNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matchesNtB2_10ArgMatches11contains_id(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @37, i64 noundef 12) #30, !noalias !1971
  br i1 %i.la, label %bb.bf, label %_RINvMNtCs6JMX4GRUq9U_4core6optionINtB3_6OptionNtCshDScVpnq8df_5uu_pr13NumberingModeE7or_elseNCNvBK_13build_optionss0_0EBK_.exit

bb.bf:                                            ; preds = %bb.be
  tail call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #30, !noalias !1972
  %i.lb = tail call noundef dereferenceable_or_null(1) ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) 1, i64 noundef range(i64 1, 9) 1) #30, !noalias !1972 ; 3 uses
  %i.lc = icmp eq ptr %i.lb, null
  br i1 %i.lc, label %bb.bg, label %_RNvXs0_CshDScVpnq8df_5uu_prNtB5_13NumberingModeNtNtCs6JMX4GRUq9U_4core7default7Default7default.exit.i.i

bb.bg:                                            ; preds = %bb.bf
  tail call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef 1, i64 1) #31, !noalias !1973
  unreachable

_RNvXs0_CshDScVpnq8df_5uu_prNtB5_13NumberingModeNtNtCs6JMX4GRUq9U_4core7default7Default7default.exit.i.i: ; preds = %bb.bf
  store i8 9, ptr %i.lb, align 1, !noalias !1973
  br label %_RINvMNtCs6JMX4GRUq9U_4core6optionINtB3_6OptionNtCshDScVpnq8df_5uu_pr13NumberingModeE7or_elseNCNvBK_13build_optionss0_0EBK_.exit

_RINvMNtCs6JMX4GRUq9U_4core6optionINtB3_6OptionNtCshDScVpnq8df_5uu_pr13NumberingModeE7or_elseNCNvBK_13build_optionss0_0EBK_.exit: ; preds = %bb.be, %bb.bd, %_RNvXs0_CshDScVpnq8df_5uu_prNtB5_13NumberingModeNtNtCs6JMX4GRUq9U_4core7default7Default7default.exit.i.i
  %.sroa.12815.0 = phi i64 [ 1, %_RNvXs0_CshDScVpnq8df_5uu_prNtB5_13NumberingModeNtNtCs6JMX4GRUq9U_4core7default7Default7default.exit.i.i ], [ %.sroa.7.01048, %bb.bd ], [ undef, %bb.be ]
  %.sroa.11812.0 = phi i64 [ 5, %_RNvXs0_CshDScVpnq8df_5uu_prNtB5_13NumberingModeNtNtCs6JMX4GRUq9U_4core7default7Default7default.exit.i.i ], [ %.sroa.06.0.i, %bb.bd ], [ undef, %bb.be ]
  %.sroa.8806.0 = phi ptr [ %i.lb, %_RNvXs0_CshDScVpnq8df_5uu_prNtB5_13NumberingModeNtNtCs6JMX4GRUq9U_4core7default7Default7default.exit.i.i ], [ %.sroa.316.034.i, %bb.bd ], [ undef, %bb.be ] ; 3 uses
  %switch.i793.not = phi i1 [ false, %_RNvXs0_CshDScVpnq8df_5uu_prNtB5_13NumberingModeNtNtCs6JMX4GRUq9U_4core7default7Default7default.exit.i.i ], [ false, %bb.bd ], [ true, %bb.be ]
  %.sroa.0804.0 = phi i64 [ 1, %_RNvXs0_CshDScVpnq8df_5uu_prNtB5_13NumberingModeNtNtCs6JMX4GRUq9U_4core7default7Default7default.exit.i.i ], [ 1, %bb.bd ], [ -1, %bb.be ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cq)
  call fastcc void @_RINvMs0_NtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matchesNtB6_10ArgMatches11try_get_oneNtNtCs7tKScEop1B6_5alloc6string6StringECshDScVpnq8df_5uu_pr(ptr noalias nofree noundef align 8 captures(none) dereferenceable(40) %i.cq, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @56, i64 noundef 11) #30
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1974)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bi)
  store ptr @56, ptr %i.bi, align 8, !noalias !1975
  %i.ld = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  store i64 11, ptr %i.ld, align 8, !noalias !1975
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bh), !noalias !1975
  %i.le = load i64, ptr %i.cq, align 8, !range !13, !alias.scope !1974, !noalias !1976, !noundef !4
  %.not.i621 = icmp eq i64 %i.le, 2
  br i1 %.not.i621, label %_RINvMNtNtCsgNwXemyrBWj_12clap_builder6parser5errorNtB3_12MatchesError6unwrapINtNtCs6JMX4GRUq9U_4core6option6OptionRNtNtCs7tKScEop1B6_5alloc6string6StringEECshDScVpnq8df_5uu_pr.exit624, label %bb.bh, !prof !14

bb.bh:                                            ; preds = %_RINvMNtCs6JMX4GRUq9U_4core6optionINtB3_6OptionNtCshDScVpnq8df_5uu_pr13NumberingModeE7or_elseNCNvBK_13build_optionss0_0EBK_.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.bh, ptr noundef nonnull readonly align 8 dereferenceable(40) %i.cq, i64 40, i1 false), !noalias !1976
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bg), !noalias !1975
  store ptr %i.bi, ptr %i.bg, align 8, !noalias !1975
  %.sroa.42.0..sroa_idx.i622 = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  store ptr @_RNvXs1i_NtCs6JMX4GRUq9U_4core3fmtReNtB6_7Display3fmtCshDScVpnq8df_5uu_pr, ptr %.sroa.42.0..sroa_idx.i622, align 8, !noalias !1975
  %i.lf = getelementptr inbounds nuw i8, ptr %i.bg, i64 16
  store ptr %i.bh, ptr %i.lf, align 8, !noalias !1975
  %.sroa.46.0..sroa_idx.i623 = getelementptr inbounds nuw i8, ptr %i.bg, i64 24
  store ptr @_RNvXs0_NtNtCsgNwXemyrBWj_12clap_builder6parser5errorNtB5_12MatchesErrorNtNtCs6JMX4GRUq9U_4core3fmt7Display3fmt, ptr %.sroa.46.0..sroa_idx.i623, align 8, !noalias !1975
  call void @_RNvNtCs6JMX4GRUq9U_4core9panicking9panic_fmt(ptr noundef nonnull @7, ptr noundef nonnull %i.bg, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @9) #32, !noalias !1974
  unreachable

_RINvMNtNtCsgNwXemyrBWj_12clap_builder6parser5errorNtB3_12MatchesError6unwrapINtNtCs6JMX4GRUq9U_4core6option6OptionRNtNtCs7tKScEop1B6_5alloc6string6StringEECshDScVpnq8df_5uu_pr.exit624: ; preds = %_RINvMNtCs6JMX4GRUq9U_4core6optionINtB3_6OptionNtCshDScVpnq8df_5uu_pr13NumberingModeE7or_elseNCNvBK_13build_optionss0_0EBK_.exit
  %i.lg = getelementptr inbounds nuw i8, ptr %i.cq, i64 8
  %i.lh = load ptr, ptr %i.lg, align 8, !alias.scope !1974, !noalias !1976, !align !11, !noundef !4 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bh), !noalias !1975
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bi)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cq)
  %.not545 = icmp eq ptr %i.lh, null
  br i1 %.not545, label %bb.cx, label %bb.bj

bb.bi:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECshDScVpnq8df_5uu_pr.exit19.i.i, %bb.au
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bp), !noalias !1950
  %.sroa.11.16..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bq, i64 16
  %.sroa.11.16.copyload = load i64, ptr %.sroa.11.16..sroa_idx, align 16
  %i.li = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.4960.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.lj = load <2 x i64>, ptr %i.bq, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bq)
  store ptr inttoptr (i64 -9223372036854775808 to ptr), ptr %i.li, align 8
  store <2 x i64> %i.lj, ptr %.sroa.4960.0..sroa_idx, align 8
  %.sroa.6962.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %.sroa.11.16.copyload, ptr %.sroa.6962.0..sroa_idx, align 8
  store i64 2, ptr %0, align 8
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtCshDScVpnq8df_5uu_pr13NumberingModeEEBZ_.exit

bb.bj:                                            ; preds = %_RINvMNtNtCsgNwXemyrBWj_12clap_builder6parser5errorNtB3_12MatchesError6unwrapINtNtCs6JMX4GRUq9U_4core6option6OptionRNtNtCs7tKScEop1B6_5alloc6string6StringEECshDScVpnq8df_5uu_pr.exit624
  %i.lk = getelementptr i8, ptr %i.lh, i64 8
  %.val592 = load ptr, ptr %i.lk, align 8, !nonnull !4, !noundef !4 ; 16 uses
  %i.ll = getelementptr i8, ptr %i.lh, i64 16
  %.val593 = load i64, ptr %i.ll, align 8, !noundef !4 ; 21 uses
  %.not.i625 = icmp samesign eq i64 %.val593, 0
  br i1 %.not.i625, label %_RNCNvCshDScVpnq8df_5uu_pr13build_optionss1_0B3_.exit.thread, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.lm = load i8, ptr %.val592, align 1, !noalias !1977, !noundef !4 ; 8 uses
  %i.ln = icmp sgt i8 %i.lm, -1
  br i1 %i.ln, label %bb.bl, label %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCshDScVpnq8df_5uu_pr.exit12.i.i626

_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCshDScVpnq8df_5uu_pr.exit12.i.i626: ; preds = %bb.bk
  %i.lo = getelementptr inbounds nuw i8, ptr %.val592, i64 1
  %i.lp = and i8 %i.lm, 31
  %i.lq = zext nneg i8 %i.lp to i32               ; 3 uses
  %i.lr = icmp samesign ne i64 %.val593, 1
  tail call void @llvm.assume(i1 %i.lr)
  %i.ls = load i8, ptr %i.lo, align 1, !noalias !1977, !noundef !4
  %i.lt = shl nuw nsw i32 %i.lq, 6
  %i.lu = and i8 %i.ls, 63
  %i.lv = zext nneg i8 %i.lu to i32               ; 2 uses
  %i.lw = or disjoint i32 %i.lt, %i.lv
  %i.lx = icmp samesign ugt i8 %i.lm, -33
  br i1 %i.lx, label %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCshDScVpnq8df_5uu_pr.exit14.i.i628, label %bb.bm

bb.bl:                                            ; preds = %bb.bk
  %i.ly = zext nneg i8 %i.lm to i32
  br label %bb.bm

_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCshDScVpnq8df_5uu_pr.exit14.i.i628: ; preds = %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCshDScVpnq8df_5uu_pr.exit12.i.i626
  %i.lz = getelementptr inbounds nuw i8, ptr %.val592, i64 2
  %i.ma = icmp samesign ne i64 %.val593, 2
  tail call void @llvm.assume(i1 %i.ma)
  %i.mb = load i8, ptr %i.lz, align 1, !noalias !1977, !noundef !4
  %i.mc = shl nuw nsw i32 %i.lv, 6
  %i.md = and i8 %i.mb, 63
  %i.me = zext nneg i8 %i.md to i32
  %i.mf = or disjoint i32 %i.mc, %i.me            ; 2 uses
  %i.mg = shl nuw nsw i32 %i.lq, 12
  %i.mh = or disjoint i32 %i.mf, %i.mg
  %i.mi = icmp samesign ugt i8 %i.lm, -17
  br i1 %i.mi, label %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCshDScVpnq8df_5uu_pr.exit16.i.i629, label %bb.bm

_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCshDScVpnq8df_5uu_pr.exit16.i.i629: ; preds = %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCshDScVpnq8df_5uu_pr.exit14.i.i628
  %i.mj = getelementptr inbounds nuw i8, ptr %.val592, i64 3
  %i.mk = icmp samesign ne i64 %.val593, 3
  tail call void @llvm.assume(i1 %i.mk)
  %i.ml = load i8, ptr %i.mj, align 1, !noalias !1977, !noundef !4
  %i.mm = shl nuw nsw i32 %i.lq, 18
  %i.mn = and i32 %i.mm, 1835008
  %i.mo = shl nuw nsw i32 %i.mf, 6
  %i.mp = and i8 %i.ml, 63
  %i.mq = zext nneg i8 %i.mp to i32
  %i.mr = or disjoint i32 %i.mo, %i.mq
  %i.ms = or disjoint i32 %i.mr, %i.mn
  br label %bb.bm

bb.bm:                                            ; preds = %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCshDScVpnq8df_5uu_pr.exit16.i.i629, %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCshDScVpnq8df_5uu_pr.exit14.i.i628, %bb.bl, %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCshDScVpnq8df_5uu_pr.exit12.i.i626
  %spec.select.ph.i = phi i32 [ %i.mh, %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCshDScVpnq8df_5uu_pr.exit14.i.i628 ], [ %i.ms, %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCshDScVpnq8df_5uu_pr.exit16.i.i629 ], [ %i.lw, %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCshDScVpnq8df_5uu_pr.exit12.i.i626 ], [ %i.ly, %bb.bl ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.be), !noalias !1978
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bf), !noalias !1978
  %i.mt = getelementptr inbounds nuw i8, ptr %i.be, i64 12
  %i.mu = getelementptr inbounds nuw i8, ptr %i.bf, i64 12
  %i.mv = add nsw i32 %spec.select.ph.i, -48
  %or.cond.i.i.i = icmp ult i32 %i.mv, 10
  br i1 %or.cond.i.i.i, label %bb.bo, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.mw = icmp samesign ult i32 %spec.select.ph.i, 128
  br i1 %i.mw, label %bb.cc, label %bb.cb

bb.bo:                                            ; preds = %bb.bm
  %cond.i627 = icmp eq i64 %.val593, 1
  br i1 %cond.i627, label %bb.bp, label %thread-pre-split.i.i.i.i

bb.bp:                                            ; preds = %bb.bo
  switch i8 %i.lm, label %.lr.ph152.i.i.i.i.preheader [
    i8 43, label %_RNvMsp_NtCs6JMX4GRUq9U_4core3numl27from_ascii_bytes_radix_impl.exit.thread.i.i.i
    i8 45, label %_RNvMsp_NtCs6JMX4GRUq9U_4core3numl27from_ascii_bytes_radix_impl.exit.thread.i.i.i
  ]

thread-pre-split.i.i.i.i:                         ; preds = %bb.bo
  switch i8 %i.lm, label %bb.bw [
    i8 43, label %bb.bq
    i8 45, label %bb.br
  ]

bb.bq:                                            ; preds = %thread-pre-split.i.i.i.i
  %i.mx = getelementptr inbounds nuw i8, ptr %.val592, i64 1
  %i.my = add nsw i64 %.val593, -1
  br label %bb.bw

bb.br:                                            ; preds = %thread-pre-split.i.i.i.i
  %i.mz = getelementptr inbounds nuw i8, ptr %.val592, i64 1 ; 2 uses
  %5 = add nsw i64 %.val593, -1                   ; 2 uses
  %i.na = icmp samesign ult i64 %.val593, 9
  br i1 %i.na, label %.lr.ph143.i.i.i.i.a, label %.lr.ph.i.i.i.i

.loopexit.i.i.i.i:                                ; preds = %bb.bu, %bb.bv, %bb.bz, %bb.ca
  %.sroa.086.1.i.i.i.i = phi i32 [ %9, %bb.bv ], [ %i.or, %bb.ca ], [ %i.oj, %bb.bz ], [ %i.no, %bb.bu ]
  %i.nb = zext i32 %.sroa.086.1.i.i.i.i to i64
  %i.nc = shl nuw i64 %i.nb, 32
  br label %_RNvMsp_NtCs6JMX4GRUq9U_4core3numl27from_ascii_bytes_radix_impl.exit.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.br, %bb.bu
  %.sroa.0.1138.i.i.i.i = phi ptr [ %i.nd, %bb.bu ], [ %i.mz, %bb.br ] ; 3 uses
  %.sroa.26.1137.i.i.i.i = phi i64 [ %i.ne, %bb.bu ], [ %5, %bb.br ]
  %.sroa.086.0136.i.i.i.i = phi i32 [ %i.no, %bb.bu ], [ 0, %bb.br ]
  %i.nd = getelementptr inbounds nuw i8, ptr %.sroa.0.1138.i.i.i.i, i64 1
  %i.ne = add nsw i64 %.sroa.26.1137.i.i.i.i, -1  ; 2 uses
  %i.nf = tail call { i32, i1 } @llvm.smul.with.overflow.i32(i32 %.sroa.086.0136.i.i.i.i, i32 10) ; 2 uses
  %i.ng = extractvalue { i32, i1 } %i.nf, 0
  %i.nh = extractvalue { i32, i1 } %i.nf, 1
  br i1 %i.nh, label %.loopexit114.sink.split.i.i.i.i, label %bb.bs, !prof !8

bb.bs:                                            ; preds = %.lr.ph.i.i.i.i
  %i.ni = load i8, ptr %.sroa.0.1138.i.i.i.i, align 1, !alias.scope !1979, !noalias !1980, !noundef !4
  %i.nj = zext i8 %i.ni to i32
  %i.nk = add nsw i32 %i.nj, -48                  ; 2 uses
  %i.nl = icmp ult i32 %i.nk, 10
  br i1 %i.nl, label %bb.bt, label %_RNvMsp_NtCs6JMX4GRUq9U_4core3numl27from_ascii_bytes_radix_impl.exit.thread.i.i.i

bb.bt:                                            ; preds = %bb.bs
  %i.nm = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %i.ng, i32 %i.nk) ; 2 uses
  %i.nn = extractvalue { i32, i1 } %i.nm, 1
  br i1 %i.nn, label %_RNvMsp_NtCs6JMX4GRUq9U_4core3numl27from_ascii_bytes_radix_impl.exit.thread.i.i.i, label %bb.bu, !prof !8

bb.bu:                                            ; preds = %bb.bt
  %i.no = extractvalue { i32, i1 } %i.nm, 0       ; 2 uses
  %.not104.i.i.i.i = icmp eq i64 %i.ne, 0
  br i1 %.not104.i.i.i.i, label %.loopexit.i.i.i.i, label %.lr.ph.i.i.i.i

.loopexit114.sink.split.i.i.i.i:                  ; preds = %.lr.ph.i.i.i.i, %.preheader115.i.i.i.i
  %.sroa.0.3147.lcssa.sink.i.i.i.i = phi ptr [ %.sroa.0.3147.i.i.i.i, %.preheader115.i.i.i.i ], [ %.sroa.0.1138.i.i.i.i, %.lr.ph.i.i.i.i ]
  %.sink190.i.i.i.i = phi i64 [ 513, %.preheader115.i.i.i.i ], [ 769, %.lr.ph.i.i.i.i ]
  %i.np = load i8, ptr %.sroa.0.3147.lcssa.sink.i.i.i.i, align 1, !alias.scope !1979, !noalias !1980, !noundef !4
  %i.nq = add i8 %i.np, -48
  %i.nr = icmp ult i8 %i.nq, 10
  %i.ns = select i1 %i.nr, i64 %.sink190.i.i.i.i, i64 257
  br label %_RNvMsp_NtCs6JMX4GRUq9U_4core3numl27from_ascii_bytes_radix_impl.exit.i.i.i

.lr.ph143.i.i.i.i.a:                              ; preds = %bb.br, %bb.bv
  %.sroa.0.2142.i.i.i.i = phi ptr [ %8, %bb.bv ], [ %i.mz, %bb.br ] ; 2 uses
  %.sroa.26.2141.i.i.i.i = phi i64 [ %7, %bb.bv ], [ %5, %bb.br ]
  %.sroa.086.2140.i.i.i.i = phi i32 [ %9, %bb.bv ], [ 0, %bb.br ]
  %i.nt = load i8, ptr %.sroa.0.2142.i.i.i.i, align 1, !alias.scope !1979, !noalias !1980, !noundef !4
  %i.nu = zext i8 %i.nt to i32
  %i.nv = add nsw i32 %i.nu, -48                  ; 2 uses
  %i.nw = icmp ult i32 %i.nv, 10
  br i1 %i.nw, label %bb.bv, label %_RNvMsp_NtCs6JMX4GRUq9U_4core3numl27from_ascii_bytes_radix_impl.exit.thread.i.i.i

bb.bv:                                            ; preds = %.lr.ph143.i.i.i.i.a
  %6 = mul i32 %.sroa.086.2140.i.i.i.i, 10
  %7 = add nsw i64 %.sroa.26.2141.i.i.i.i, -1     ; 2 uses
  %8 = getelementptr inbounds nuw i8, ptr %.sroa.0.2142.i.i.i.i, i64 1
  %9 = sub i32 %6, %i.nv                          ; 2 uses
  %.not105.i.i.i.i = icmp eq i64 %7, 0
  br i1 %.not105.i.i.i.i, label %.loopexit.i.i.i.i, label %.lr.ph143.i.i.i.i.a

bb.bw:                                            ; preds = %bb.bq, %thread-pre-split.i.i.i.i
  %.sroa.26.0.i.i.i.i = phi i64 [ %i.my, %bb.bq ], [ %.val593, %thread-pre-split.i.i.i.i ] ; 3 uses
  %.sroa.0.0.i.i.i.i = phi ptr [ %i.mx, %bb.bq ], [ %.val592, %thread-pre-split.i.i.i.i ] ; 2 uses
  %i.nx = icmp samesign ult i64 %.sroa.26.0.i.i.i.i, 8
  br i1 %i.nx, label %.lr.ph152.i.i.i.i.preheader, label %.preheader115.i.i.i.i

.lr.ph152.i.i.i.i.preheader:                      ; preds = %bb.bp, %bb.bw
  %.sroa.0.4151.i.i.i.i.ph = phi ptr [ %.val592, %bb.bp ], [ %.sroa.0.0.i.i.i.i, %bb.bw ]
  %.sroa.26.4150.i.i.i.i.ph = phi i64 [ 1, %bb.bp ], [ %.sroa.26.0.i.i.i.i, %bb.bw ]
  br label %.lr.ph152.i.i.i.i

.preheader115.i.i.i.i:                            ; preds = %bb.bw, %bb.bz
  %.sroa.0.3147.i.i.i.i = phi ptr [ %i.ny, %bb.bz ], [ %.sroa.0.0.i.i.i.i, %bb.bw ] ; 3 uses
  %.sroa.26.3146.i.i.i.i = phi i64 [ %i.nz, %bb.bz ], [ %.sroa.26.0.i.i.i.i, %bb.bw ]
  %.sroa.086.3145.i.i.i.i = phi i32 [ %i.oj, %bb.bz ], [ 0, %bb.bw ]
  %i.ny = getelementptr inbounds nuw i8, ptr %.sroa.0.3147.i.i.i.i, i64 1
  %i.nz = add nsw i64 %.sroa.26.3146.i.i.i.i, -1  ; 2 uses
  %i.oa = tail call { i32, i1 } @llvm.smul.with.overflow.i32(i32 %.sroa.086.3145.i.i.i.i, i32 10) ; 2 uses
  %i.ob = extractvalue { i32, i1 } %i.oa, 0
  %i.oc = extractvalue { i32, i1 } %i.oa, 1
  br i1 %i.oc, label %.loopexit114.sink.split.i.i.i.i, label %bb.bx, !prof !8

bb.bx:                                            ; preds = %.preheader115.i.i.i.i
  %i.od = load i8, ptr %.sroa.0.3147.i.i.i.i, align 1, !alias.scope !1979, !noalias !1980, !noundef !4
  %i.oe = zext i8 %i.od to i32
  %i.of = add nsw i32 %i.oe, -48                  ; 2 uses
  %i.og = icmp ult i32 %i.of, 10
  br i1 %i.og, label %bb.by, label %_RNvMsp_NtCs6JMX4GRUq9U_4core3numl27from_ascii_bytes_radix_impl.exit.thread.i.i.i

bb.by:                                            ; preds = %bb.bx
  %i.oh = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %i.ob, i32 %i.of) ; 2 uses
  %i.oi = extractvalue { i32, i1 } %i.oh, 1
  br i1 %i.oi, label %_RNvMsp_NtCs6JMX4GRUq9U_4core3numl27from_ascii_bytes_radix_impl.exit.thread.i.i.i, label %bb.bz, !prof !8

bb.bz:                                            ; preds = %bb.by
  %i.oj = extractvalue { i32, i1 } %i.oh, 0       ; 2 uses
  %.not106.i.i.i.i = icmp eq i64 %i.nz, 0
  br i1 %.not106.i.i.i.i, label %.loopexit.i.i.i.i, label %.preheader115.i.i.i.i

.lr.ph152.i.i.i.i:                                ; preds = %.lr.ph152.i.i.i.i.preheader, %bb.ca
  %.sroa.0.4151.i.i.i.i = phi ptr [ %i.oq, %bb.ca ], [ %.sroa.0.4151.i.i.i.i.ph, %.lr.ph152.i.i.i.i.preheader ] ; 2 uses
  %.sroa.26.4150.i.i.i.i = phi i64 [ %i.op, %bb.ca ], [ %.sroa.26.4150.i.i.i.i.ph, %.lr.ph152.i.i.i.i.preheader ]
  %.sroa.086.4149.i.i.i.i = phi i32 [ %i.or, %bb.ca ], [ 0, %.lr.ph152.i.i.i.i.preheader ]
  %i.ok = load i8, ptr %.sroa.0.4151.i.i.i.i, align 1, !alias.scope !1979, !noalias !1980, !noundef !4
  %i.ol = zext i8 %i.ok to i32
  %i.om = add nsw i32 %i.ol, -48                  ; 2 uses
  %i.on = icmp ult i32 %i.om, 10
  br i1 %i.on, label %bb.ca, label %_RNvMsp_NtCs6JMX4GRUq9U_4core3numl27from_ascii_bytes_radix_impl.exit.thread.i.i.i

bb.ca:                                            ; preds = %.lr.ph152.i.i.i.i
  %i.oo = mul i32 %.sroa.086.4149.i.i.i.i, 10
  %i.op = add nsw i64 %.sroa.26.4150.i.i.i.i, -1  ; 2 uses
  %i.oq = getelementptr inbounds nuw i8, ptr %.sroa.0.4151.i.i.i.i, i64 1
  %i.or = add i32 %i.om, %i.oo                    ; 2 uses
  %.not107.i.i.i.i = icmp eq i64 %i.op, 0
  br i1 %.not107.i.i.i.i, label %.loopexit.i.i.i.i, label %.lr.ph152.i.i.i.i

_RNvMsp_NtCs6JMX4GRUq9U_4core3numl27from_ascii_bytes_radix_impl.exit.i.i.i: ; preds = %.loopexit114.sink.split.i.i.i.i, %.loopexit.i.i.i.i
  %.sroa.12.0.insert.insert.i.i.i.i = phi i64 [ %i.ns, %.loopexit114.sink.split.i.i.i.i ], [ %i.nc, %.loopexit.i.i.i.i ] ; 2 uses
  %i.os = trunc i64 %.sroa.12.0.insert.insert.i.i.i.i to i1
  br i1 %i.os, label %_RNvMsp_NtCs6JMX4GRUq9U_4core3numl27from_ascii_bytes_radix_impl.exit.thread.i.i.i, label %bb.cv

bb.cb:                                            ; preds = %bb.bn
  call fastcc void @_RNCNCNCNvCshDScVpnq8df_5uu_pr13build_optionss1_000B7_(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(32) %i.cp, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.val592, i64 noundef %.val593) #34
  br label %_RNCNvCshDScVpnq8df_5uu_pr13build_optionss1_0B3_.exitthread-pre-split

bb.cc:                                            ; preds = %bb.bn
  %i.ot = icmp sgt i64 %.val593, -1
  tail call void @llvm.assume(i1 %i.ot)
  %.not111.i = icmp eq i64 %.val593, 1
  br i1 %.not111.i, label %_RNCNvCshDScVpnq8df_5uu_pr13build_optionss1_0B3_.exit.thread1074, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  %i.ou = getelementptr inbounds nuw i8, ptr %.val592, i64 1 ; 5 uses
  %i.ov = load i8, ptr %i.ou, align 1, !alias.scope !1981, !noalias !1980, !noundef !4 ; 3 uses
  %i.ow = icmp sgt i8 %i.ov, -65
  br i1 %i.ow, label %bb.ce, label %bb.cr

bb.ce:                                            ; preds = %bb.cd
  %i.ox = add nsw i64 %.val593, -1                ; 4 uses
  %cond.i.i.i = icmp eq i64 %i.ox, 1
  br i1 %cond.i.i.i, label %bb.cf, label %thread-pre-split.i107.i.i.i

bb.cf:                                            ; preds = %bb.ce
  switch i8 %i.ov, label %.lr.ph152.i102.i.i.i.preheader [
    i8 43, label %_RNCNCNCNvCshDScVpnq8df_5uu_pr13build_optionss1_00s0_0B7_.exit.i.i.i
    i8 45, label %_RNCNCNCNvCshDScVpnq8df_5uu_pr13build_optionss1_00s0_0B7_.exit.i.i.i
  ]

.lr.ph152.i102.i.i.i.preheader:                   ; preds = %bb.cm, %bb.cf
  %.sroa.0.4151.i103.i.i.i.ph = phi ptr [ %i.ou, %bb.cf ], [ %.sroa.0.0.i94.i.i.i, %bb.cm ]
  %.sroa.26.4150.i104.i.i.i.ph = phi i64 [ 1, %bb.cf ], [ %.sroa.26.0.i93.i.i.i, %bb.cm ]
  br label %.lr.ph152.i102.i.i.i

thread-pre-split.i107.i.i.i:                      ; preds = %bb.ce
  switch i8 %i.ov, label %bb.cm [
    i8 43, label %bb.cg
    i8 45, label %bb.ch
  ]

bb.cg:                                            ; preds = %thread-pre-split.i107.i.i.i
  %i.oy = getelementptr inbounds nuw i8, ptr %.val592, i64 2
  %i.oz = add nsw i64 %.val593, -2
  br label %bb.cm

bb.ch:                                            ; preds = %thread-pre-split.i107.i.i.i
  %i.pa = getelementptr inbounds nuw i8, ptr %.val592, i64 2 ; 2 uses
  %i.pb = add nsw i64 %.val593, -2                ; 2 uses
  %i.pc = icmp samesign ult i64 %.val593, 10
  br i1 %i.pc, label %.lr.ph143.i88.i.i.i, label %.lr.ph.i74.i.i.i

.loopexit.i81.i.i.i:                              ; preds = %bb.ck, %bb.cl, %bb.cp, %bb.cq
  %.sroa.086.1.i82.i.i.i = phi i32 [ %i.qc, %bb.cl ], [ %i.qx, %bb.cq ], [ %i.qp, %bb.cp ], [ %i.pq, %bb.ck ]
  %i.pd = zext i32 %.sroa.086.1.i82.i.i.i to i64
  %i.pe = shl nuw i64 %i.pd, 32
  br label %_RNvMsp_NtCs6JMX4GRUq9U_4core3numl27from_ascii_bytes_radix_impl.exit109.i.i.i

.lr.ph.i74.i.i.i:                                 ; preds = %bb.ch, %bb.ck
  %.sroa.0.1138.i75.i.i.i = phi ptr [ %i.pf, %bb.ck ], [ %i.pa, %bb.ch ] ; 3 uses
  %.sroa.26.1137.i76.i.i.i = phi i64 [ %i.pg, %bb.ck ], [ %i.pb, %bb.ch ]
  %.sroa.086.0136.i77.i.i.i = phi i32 [ %i.pq, %bb.ck ], [ 0, %bb.ch ]
  %i.pf = getelementptr inbounds nuw i8, ptr %.sroa.0.1138.i75.i.i.i, i64 1
  %i.pg = add nsw i64 %.sroa.26.1137.i76.i.i.i, -1 ; 2 uses
  %i.ph = tail call { i32, i1 } @llvm.smul.with.overflow.i32(i32 %.sroa.086.0136.i77.i.i.i, i32 10) ; 2 uses
  %i.pi = extractvalue { i32, i1 } %i.ph, 0
  %i.pj = extractvalue { i32, i1 } %i.ph, 1
  br i1 %i.pj, label %.loopexit114.sink.split.i83.i.i.i, label %bb.ci, !prof !8

bb.ci:                                            ; preds = %.lr.ph.i74.i.i.i
  %i.pk = load i8, ptr %.sroa.0.1138.i75.i.i.i, align 1, !alias.scope !1982, !noalias !1980, !noundef !4
  %i.pl = zext i8 %i.pk to i32
  %i.pm = add nsw i32 %i.pl, -48                  ; 2 uses
  %i.pn = icmp ult i32 %i.pm, 10
  br i1 %i.pn, label %bb.cj, label %_RNCNCNCNvCshDScVpnq8df_5uu_pr13build_optionss1_00s0_0B7_.exit.i.i.i

bb.cj:                                            ; preds = %bb.ci
  %i.po = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %i.pi, i32 %i.pm) ; 2 uses
  %i.pp = extractvalue { i32, i1 } %i.po, 1
  br i1 %i.pp, label %_RNCNCNCNvCshDScVpnq8df_5uu_pr13build_optionss1_00s0_0B7_.exit.i.i.i, label %bb.ck, !prof !8

bb.ck:                                            ; preds = %bb.cj
  %i.pq = extractvalue { i32, i1 } %i.po, 0       ; 2 uses
  %.not104.i80.i.i.i = icmp eq i64 %i.pg, 0
  br i1 %.not104.i80.i.i.i, label %.loopexit.i81.i.i.i, label %.lr.ph.i74.i.i.i

.loopexit114.sink.split.i83.i.i.i:                ; preds = %.lr.ph.i74.i.i.i, %.preheader115.i95.i.i.i
  %.sroa.0.3147.lcssa.sink.i84.i.i.i = phi ptr [ %.sroa.0.3147.i96.i.i.i, %.preheader115.i95.i.i.i ], [ %.sroa.0.1138.i75.i.i.i, %.lr.ph.i74.i.i.i ]
  %.sink190.i85.i.i.i = phi i64 [ 513, %.preheader115.i95.i.i.i ], [ 769, %.lr.ph.i74.i.i.i ]
  %i.pr = load i8, ptr %.sroa.0.3147.lcssa.sink.i84.i.i.i, align 1, !alias.scope !1982, !noalias !1980, !noundef !4
  %i.ps = add i8 %i.pr, -48
  %i.pt = icmp ult i8 %i.ps, 10
  %i.pu = select i1 %i.pt, i64 %.sink190.i85.i.i.i, i64 257
  br label %_RNvMsp_NtCs6JMX4GRUq9U_4core3numl27from_ascii_bytes_radix_impl.exit109.i.i.i

.lr.ph143.i88.i.i.i:                              ; preds = %bb.ch, %bb.cl
  %.sroa.0.2142.i89.i.i.i = phi ptr [ %i.qb, %bb.cl ], [ %i.pa, %bb.ch ] ; 2 uses
  %.sroa.26.2141.i90.i.i.i = phi i64 [ %i.qa, %bb.cl ], [ %i.pb, %bb.ch ]
  %.sroa.086.2140.i91.i.i.i = phi i32 [ %i.qc, %bb.cl ], [ 0, %bb.ch ]
  %i.pv = load i8, ptr %.sroa.0.2142.i89.i.i.i, align 1, !alias.scope !1982, !noalias !1980, !noundef !4
  %i.pw = zext i8 %i.pv to i32
  %i.px = add nsw i32 %i.pw, -48                  ; 2 uses
  %i.py = icmp ult i32 %i.px, 10
  br i1 %i.py, label %bb.cl, label %_RNCNCNCNvCshDScVpnq8df_5uu_pr13build_optionss1_00s0_0B7_.exit.i.i.i

bb.cl:                                            ; preds = %.lr.ph143.i88.i.i.i
  %i.pz = mul i32 %.sroa.086.2140.i91.i.i.i, 10
  %i.qa = add nsw i64 %.sroa.26.2141.i90.i.i.i, -1 ; 2 uses
  %i.qb = getelementptr inbounds nuw i8, ptr %.sroa.0.2142.i89.i.i.i, i64 1
  %i.qc = sub i32 %i.pz, %i.px                    ; 2 uses
  %.not105.i92.i.i.i = icmp eq i64 %i.qa, 0
  br i1 %.not105.i92.i.i.i, label %.loopexit.i81.i.i.i, label %.lr.ph143.i88.i.i.i

bb.cm:                                            ; preds = %bb.cg, %thread-pre-split.i107.i.i.i
  %.sroa.26.0.i93.i.i.i = phi i64 [ %i.oz, %bb.cg ], [ %i.ox, %thread-pre-split.i107.i.i.i ] ; 3 uses
  %.sroa.0.0.i94.i.i.i = phi ptr [ %i.oy, %bb.cg ], [ %i.ou, %thread-pre-split.i107.i.i.i ] ; 2 uses
  %i.qd = icmp samesign ult i64 %.sroa.26.0.i93.i.i.i, 8
  br i1 %i.qd, label %.lr.ph152.i102.i.i.i.preheader, label %.preheader115.i95.i.i.i

.preheader115.i95.i.i.i:                          ; preds = %bb.cm, %bb.cp
  %.sroa.0.3147.i96.i.i.i = phi ptr [ %i.qe, %bb.cp ], [ %.sroa.0.0.i94.i.i.i, %bb.cm ] ; 3 uses
  %.sroa.26.3146.i97.i.i.i = phi i64 [ %i.qf, %bb.cp ], [ %.sroa.26.0.i93.i.i.i, %bb.cm ]
  %.sroa.086.3145.i98.i.i.i = phi i32 [ %i.qp, %bb.cp ], [ 0, %bb.cm ]
  %i.qe = getelementptr inbounds nuw i8, ptr %.sroa.0.3147.i96.i.i.i, i64 1
  %i.qf = add nsw i64 %.sroa.26.3146.i97.i.i.i, -1 ; 2 uses
  %i.qg = tail call { i32, i1 } @llvm.smul.with.overflow.i32(i32 %.sroa.086.3145.i98.i.i.i, i32 10) ; 2 uses
  %i.qh = extractvalue { i32, i1 } %i.qg, 0
  %i.qi = extractvalue { i32, i1 } %i.qg, 1
  br i1 %i.qi, label %.loopexit114.sink.split.i83.i.i.i, label %bb.cn, !prof !8

bb.cn:                                            ; preds = %.preheader115.i95.i.i.i
  %i.qj = load i8, ptr %.sroa.0.3147.i96.i.i.i, align 1, !alias.scope !1982, !noalias !1980, !noundef !4
  %i.qk = zext i8 %i.qj to i32
  %i.ql = add nsw i32 %i.qk, -48                  ; 2 uses
  %i.qm = icmp ult i32 %i.ql, 10
  br i1 %i.qm, label %bb.co, label %_RNCNCNCNvCshDScVpnq8df_5uu_pr13build_optionss1_00s0_0B7_.exit.i.i.i

bb.co:                                            ; preds = %bb.cn
  %i.qn = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %i.qh, i32 %i.ql) ; 2 uses
  %i.qo = extractvalue { i32, i1 } %i.qn, 1
  br i1 %i.qo, label %_RNCNCNCNvCshDScVpnq8df_5uu_pr13build_optionss1_00s0_0B7_.exit.i.i.i, label %bb.cp, !prof !8

bb.cp:                                            ; preds = %bb.co
  %i.qp = extractvalue { i32, i1 } %i.qn, 0       ; 2 uses
  %.not106.i99.i.i.i = icmp eq i64 %i.qf, 0
  br i1 %.not106.i99.i.i.i, label %.loopexit.i81.i.i.i, label %.preheader115.i95.i.i.i

.lr.ph152.i102.i.i.i:                             ; preds = %.lr.ph152.i102.i.i.i.preheader, %bb.cq
  %.sroa.0.4151.i103.i.i.i = phi ptr [ %i.qw, %bb.cq ], [ %.sroa.0.4151.i103.i.i.i.ph, %.lr.ph152.i102.i.i.i.preheader ] ; 2 uses
  %.sroa.26.4150.i104.i.i.i = phi i64 [ %i.qv, %bb.cq ], [ %.sroa.26.4150.i104.i.i.i.ph, %.lr.ph152.i102.i.i.i.preheader ]
  %.sroa.086.4149.i105.i.i.i = phi i32 [ %i.qx, %bb.cq ], [ 0, %.lr.ph152.i102.i.i.i.preheader ]
  %i.qq = load i8, ptr %.sroa.0.4151.i103.i.i.i, align 1, !alias.scope !1982, !noalias !1980, !noundef !4
  %i.qr = zext i8 %i.qq to i32
  %i.qs = add nsw i32 %i.qr, -48                  ; 2 uses
  %i.qt = icmp ult i32 %i.qs, 10
  br i1 %i.qt, label %bb.cq, label %_RNCNCNCNvCshDScVpnq8df_5uu_pr13build_optionss1_00s0_0B7_.exit.i.i.i

bb.cq:                                            ; preds = %.lr.ph152.i102.i.i.i
  %i.qu = mul i32 %.sroa.086.4149.i105.i.i.i, 10
  %i.qv = add nsw i64 %.sroa.26.4150.i104.i.i.i, -1 ; 2 uses
  %i.qw = getelementptr inbounds nuw i8, ptr %.sroa.0.4151.i103.i.i.i, i64 1
  %i.qx = add i32 %i.qs, %i.qu                    ; 2 uses
  %.not107.i106.i.i.i = icmp eq i64 %i.qv, 0
  br i1 %.not107.i106.i.i.i, label %.loopexit.i81.i.i.i, label %.lr.ph152.i102.i.i.i

_RNvMsp_NtCs6JMX4GRUq9U_4core3numl27from_ascii_bytes_radix_impl.exit109.i.i.i: ; preds = %.loopexit114.sink.split.i83.i.i.i, %.loopexit.i81.i.i.i
  %.sroa.12.0.insert.insert.i73.i.i.i = phi i64 [ %i.pu, %.loopexit114.sink.split.i83.i.i.i ], [ %i.pe, %.loopexit.i81.i.i.i ] ; 2 uses
  %.sroa.666.0.extract.shift.i.i.i = lshr i64 %.sroa.12.0.insert.insert.i73.i.i.i, 32
  %.sroa.666.0.extract.trunc.i.i.i = trunc nuw i64 %.sroa.666.0.extract.shift.i.i.i to i32 ; 2 uses
  %i.qy = trunc i64 %.sroa.12.0.insert.insert.i73.i.i.i to i1
  br i1 %i.qy, label %_RNCNCNCNvCshDScVpnq8df_5uu_pr13build_optionss1_00s0_0B7_.exit.i.i.i, label %bb.cs

bb.cr:                                            ; preds = %bb.cd
  tail call void @_RNvNtCs6JMX4GRUq9U_4core3str16slice_error_fail(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.val592, i64 noundef %.val593, i64 noundef 1, i64 noundef %.val593, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @30) #32, !noalias !1980
  unreachable

_RNCNCNCNvCshDScVpnq8df_5uu_pr13build_optionss1_00s0_0B7_.exit.i.i.i: ; preds = %bb.cj, %bb.ci, %.lr.ph143.i88.i.i.i, %bb.co, %bb.cn, %.lr.ph152.i102.i.i.i, %_RNvMsp_NtCs6JMX4GRUq9U_4core3numl27from_ascii_bytes_radix_impl.exit109.i.i.i, %bb.cf, %bb.cf
  call fastcc void @_RNCNCNCNvCshDScVpnq8df_5uu_pr13build_optionss1_000B7_(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(32) %i.be, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ou, i64 noundef %i.ox) #34, !noalias !1980
  %.sroa.023.0.copyload.i.i.i = load i64, ptr %i.be, align 8, !noalias !1980 ; 2 uses
  %.sroa.625.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  %.sroa.625.0.copyload.i.i.i = load i32, ptr %.sroa.625.0..sroa_idx.i.i.i, align 8, !noalias !1980 ; 2 uses
  store i64 %.sroa.023.0.copyload.i.i.i, ptr %i.cp, align 8
  %.sroa.457.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.cp, i64 8
  store i32 %.sroa.625.0.copyload.i.i.i, ptr %.sroa.457.0..sroa_idx.i.i.i, align 8
  %.sroa.558.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.cp, i64 12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %.sroa.558.0..sroa_idx.i.i.i, ptr noundef nonnull align 4 dereferenceable(20) %i.mt, i64 20, i1 false)
  br label %_RNCNvCshDScVpnq8df_5uu_pr13build_optionss1_0B3_.exit

bb.cs:                                            ; preds = %_RNvMsp_NtCs6JMX4GRUq9U_4core3numl27from_ascii_bytes_radix_impl.exit109.i.i.i
  %i.qz = icmp slt i32 %.sroa.666.0.extract.trunc.i.i.i, 1
  br i1 %i.qz, label %bb.cu, label %_RNvMNtCs6JMX4GRUq9U_4core5sliceSh11starts_withCshDScVpnq8df_5uu_pr.exit.i.i.i

_RNvMNtCs6JMX4GRUq9U_4core5sliceSh11starts_withCshDScVpnq8df_5uu_pr.exit.i.i.i: ; preds = %bb.cs
  %i.ra = icmp eq i8 %i.lm, 45
  br i1 %i.ra, label %bb.ct, label %_RNCNvCshDScVpnq8df_5uu_pr13build_optionss1_0B3_.exit.thread1074

bb.ct:                                            ; preds = %_RNvMNtCs6JMX4GRUq9U_4core5sliceSh11starts_withCshDScVpnq8df_5uu_pr.exit.i.i.i
  call fastcc void @_RNCNCNCNvCshDScVpnq8df_5uu_pr13build_optionss1_000B7_(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(32) %i.cp, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.val592, i64 noundef %.val593) #34
  br label %_RNCNvCshDScVpnq8df_5uu_pr13build_optionss1_0B3_.exitthread-pre-split

bb.cu:                                            ; preds = %bb.cs
  call fastcc void @_RNCNCNCNvCshDScVpnq8df_5uu_pr13build_optionss1_000B7_(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(32) %i.cp, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ou, i64 noundef %i.ox) #34
  br label %_RNCNvCshDScVpnq8df_5uu_pr13build_optionss1_0B3_.exitthread-pre-split

_RNvMsp_NtCs6JMX4GRUq9U_4core3numl27from_ascii_bytes_radix_impl.exit.thread.i.i.i: ; preds = %bb.bt, %bb.bs, %.lr.ph143.i.i.i.i.a, %bb.by, %bb.bx, %.lr.ph152.i.i.i.i, %bb.bp, %bb.bp, %_RNvMsp_NtCs6JMX4GRUq9U_4core3numl27from_ascii_bytes_radix_impl.exit.i.i.i
  call fastcc void @_RNCNCNCNvCshDScVpnq8df_5uu_pr13build_optionss1_000B7_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %i.bf, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.val592, i64 noundef %.val593) #34, !noalias !1980
  %.sroa.05.0.copyload.i.i.i = load i64, ptr %i.bf, align 8, !noalias !1980 ; 2 uses
  %.sroa.67.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  %.sroa.67.0.copyload.i.i.i = load i32, ptr %.sroa.67.0..sroa_idx.i.i.i, align 8, !noalias !1980 ; 2 uses
  store i64 %.sroa.05.0.copyload.i.i.i, ptr %i.cp, align 8
  %.sroa.444.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.cp, i64 8
  store i32 %.sroa.67.0.copyload.i.i.i, ptr %.sroa.444.0..sroa_idx.i.i.i, align 8
  %.sroa.545.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.cp, i64 12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %.sroa.545.0..sroa_idx.i.i.i, ptr noundef nonnull align 4 dereferenceable(20) %i.mu, i64 20, i1 false)
  br label %_RNCNvCshDScVpnq8df_5uu_pr13build_optionss1_0B3_.exit

bb.cv:                                            ; preds = %_RNvMsp_NtCs6JMX4GRUq9U_4core3numl27from_ascii_bytes_radix_impl.exit.i.i.i
  %.sroa.569.0.extract.shift.i.i.i = lshr i64 %.sroa.12.0.insert.insert.i.i.i.i, 32
  %.sroa.569.0.extract.trunc.i.i.i = trunc nuw i64 %.sroa.569.0.extract.shift.i.i.i to i32 ; 2 uses
  %i.rb = icmp slt i32 %.sroa.569.0.extract.trunc.i.i.i, 1
  br i1 %i.rb, label %bb.cw, label %_RNCNvCshDScVpnq8df_5uu_pr13build_optionss1_0B3_.exit.thread1074

bb.cw:                                            ; preds = %bb.cv
  call fastcc void @_RNCNCNCNvCshDScVpnq8df_5uu_pr13build_optionss1_000B7_(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(32) %i.cp, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.val592, i64 noundef %.val593) #34
  br label %_RNCNvCshDScVpnq8df_5uu_pr13build_optionss1_0B3_.exitthread-pre-split

_RNCNvCshDScVpnq8df_5uu_pr13build_optionss1_0B3_.exit.thread: ; preds = %bb.bj
  store i64 -1, ptr %i.cp, align 8
  %.sroa.4.0..sroa_idx.i630 = getelementptr inbounds nuw i8, ptr %i.cp, i64 8
  store i32 9, ptr %.sroa.4.0..sroa_idx.i630, align 8
  %.sroa.5.0..sroa_idx.i631 = getelementptr inbounds nuw i8, ptr %i.cp, i64 12
  store i32 8, ptr %.sroa.5.0..sroa_idx.i631, align 4
  br label %bb.cz

_RNCNvCshDScVpnq8df_5uu_pr13build_optionss1_0B3_.exitthread-pre-split: ; preds = %bb.cw, %bb.cu, %bb.ct, %bb.cb
  %.sroa.065.0.copyload.pr.pr = load i64, ptr %i.cp, align 8
  %.sroa.667.0..sroa_idx.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.cp, i64 8
  %.sroa.667.0.copyload.pre = load i32, ptr %.sroa.667.0..sroa_idx.phi.trans.insert, align 8
  br label %_RNCNvCshDScVpnq8df_5uu_pr13build_optionss1_0B3_.exit

_RNCNvCshDScVpnq8df_5uu_pr13build_optionss1_0B3_.exit.thread1074: ; preds = %bb.cv, %_RNvMNtCs6JMX4GRUq9U_4core5sliceSh11starts_withCshDScVpnq8df_5uu_pr.exit.i.i.i, %bb.cc
  %spec.select.ph.i.sink = phi i32 [ %spec.select.ph.i, %_RNvMNtCs6JMX4GRUq9U_4core5sliceSh11starts_withCshDScVpnq8df_5uu_pr.exit.i.i.i ], [ %spec.select.ph.i, %bb.cc ], [ 9, %bb.cv ] ; 2 uses
  %.sink = phi i32 [ %.sroa.666.0.extract.trunc.i.i.i, %_RNvMNtCs6JMX4GRUq9U_4core5sliceSh11starts_withCshDScVpnq8df_5uu_pr.exit.i.i.i ], [ 8, %bb.cc ], [ %.sroa.569.0.extract.trunc.i.i.i, %bb.cv ] ; 2 uses
  %i.rc = getelementptr inbounds nuw i8, ptr %i.cp, i64 8
  store i32 %spec.select.ph.i.sink, ptr %i.rc, align 8
  %i.rd = getelementptr inbounds nuw i8, ptr %i.cp, i64 12
  store i32 %.sink, ptr %i.rd, align 4
  store i64 -1, ptr %i.cp, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.be), !noalias !1978
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bf), !noalias !1978
  br label %bb.cz

_RNCNvCshDScVpnq8df_5uu_pr13build_optionss1_0B3_.exit: ; preds = %_RNCNvCshDScVpnq8df_5uu_pr13build_optionss1_0B3_.exitthread-pre-split, %_RNCNCNCNvCshDScVpnq8df_5uu_pr13build_optionss1_00s0_0B7_.exit.i.i.i, %_RNvMsp_NtCs6JMX4GRUq9U_4core3numl27from_ascii_bytes_radix_impl.exit.thread.i.i.i
  %.sroa.667.0.copyload = phi i32 [ %.sroa.667.0.copyload.pre, %_RNCNvCshDScVpnq8df_5uu_pr13build_optionss1_0B3_.exitthread-pre-split ], [ %.sroa.67.0.copyload.i.i.i, %_RNvMsp_NtCs6JMX4GRUq9U_4core3numl27from_ascii_bytes_radix_impl.exit.thread.i.i.i ], [ %.sroa.625.0.copyload.i.i.i, %_RNCNCNCNvCshDScVpnq8df_5uu_pr13build_optionss1_00s0_0B7_.exit.i.i.i ] ; 2 uses
  %.sroa.065.0.copyload.pr = phi i64 [ %.sroa.065.0.copyload.pr.pr, %_RNCNvCshDScVpnq8df_5uu_pr13build_optionss1_0B3_.exitthread-pre-split ], [ %.sroa.05.0.copyload.i.i.i, %_RNvMsp_NtCs6JMX4GRUq9U_4core3numl27from_ascii_bytes_radix_impl.exit.thread.i.i.i ], [ %.sroa.023.0.copyload.i.i.i, %_RNCNCNCNvCshDScVpnq8df_5uu_pr13build_optionss1_00s0_0B7_.exit.i.i.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.be), !noalias !1978
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bf), !noalias !1978
  %.sroa.770.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cp, i64 12
  %.sroa.770.0.copyload = load i32, ptr %.sroa.770.0..sroa_idx, align 4 ; 2 uses
  %.not546 = icmp eq i64 %.sroa.065.0.copyload.pr, -1
  br i1 %.not546, label %bb.cz, label %bb.cy

bb.cx:                                            ; preds = %_RINvMNtNtCsgNwXemyrBWj_12clap_builder6parser5errorNtB3_12MatchesError6unwrapINtNtCs6JMX4GRUq9U_4core6option6OptionRNtNtCs7tKScEop1B6_5alloc6string6StringEECshDScVpnq8df_5uu_pr.exit624, %bb.cz
  %.sroa.1061.0 = phi i32 [ %.sroa.770.0.copyload1073, %bb.cz ], [ undef, %_RINvMNtNtCsgNwXemyrBWj_12clap_builder6parser5errorNtB3_12MatchesError6unwrapINtNtCs6JMX4GRUq9U_4core6option6OptionRNtNtCs7tKScEop1B6_5alloc6string6StringEECshDScVpnq8df_5uu_pr.exit624 ]
  %.sroa.758.0 = phi i32 [ %.sroa.667.0.copyload1072, %bb.cz ], [ -1, %_RINvMNtNtCsgNwXemyrBWj_12clap_builder6parser5errorNtB3_12MatchesError6unwrapINtNtCs6JMX4GRUq9U_4core6option6OptionRNtNtCs7tKScEop1B6_5alloc6string6StringEECshDScVpnq8df_5uu_pr.exit624 ]
  %i.re = tail call noundef zeroext i1 @_RNvMNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matchesNtB2_10ArgMatches8get_flag(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @57, i64 noundef 12) #30 ; 2 uses
  tail call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #30, !noalias !4
  br i1 %i.re, label %bb.db, label %bb.da

bb.cy:                                            ; preds = %_RNCNvCshDScVpnq8df_5uu_pr13build_optionss1_0B3_.exit
  %.sroa.6371.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6371.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %i.ds, i64 16, i1 false)
  %i.rf = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.065.0.copyload.pr, ptr %i.rf, align 8
  %.sroa.4369.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %.sroa.667.0.copyload, ptr %.sroa.4369.0..sroa_idx, align 8
  %.sroa.5370.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 %.sroa.770.0.copyload, ptr %.sroa.5370.0..sroa_idx, align 4
  store i64 2, ptr %0, align 8
  br label %bb.mg

bb.cz:                                            ; preds = %_RNCNvCshDScVpnq8df_5uu_pr13build_optionss1_0B3_.exit.thread1074, %_RNCNvCshDScVpnq8df_5uu_pr13build_optionss1_0B3_.exit.thread, %_RNCNvCshDScVpnq8df_5uu_pr13build_optionss1_0B3_.exit
  %.sroa.770.0.copyload1073 = phi i32 [ 8, %_RNCNvCshDScVpnq8df_5uu_pr13build_optionss1_0B3_.exit.thread ], [ %.sroa.770.0.copyload, %_RNCNvCshDScVpnq8df_5uu_pr13build_optionss1_0B3_.exit ], [ %.sink, %_RNCNvCshDScVpnq8df_5uu_pr13build_optionss1_0B3_.exit.thread1074 ]
  %.sroa.667.0.copyload1072 = phi i32 [ 9, %_RNCNvCshDScVpnq8df_5uu_pr13build_optionss1_0B3_.exit.thread ], [ %.sroa.667.0.copyload, %_RNCNvCshDScVpnq8df_5uu_pr13build_optionss1_0B3_.exit ], [ %spec.select.ph.i.sink, %_RNCNvCshDScVpnq8df_5uu_pr13build_optionss1_0B3_.exit.thread1074 ] ; 2 uses
  %i.rg = icmp ult i32 %.sroa.667.0.copyload1072, 1114112
  tail call void @llvm.assume(i1 %i.rg)
  br label %bb.cx

bb.da:                                            ; preds = %bb.cx
  %i.rh = tail call noundef dereferenceable_or_null(1) ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) 1, i64 noundef range(i64 1, 9) 1) #30, !noalias !1983 ; 3 uses
  %i.ri = icmp eq ptr %i.rh, null
  br i1 %i.ri, label %bb.dd, label %bb.de

bb.db:                                            ; preds = %bb.cx
  %i.rj = tail call noundef dereferenceable_or_null(2) ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) 2, i64 noundef range(i64 1, 9) 1) #30, !noalias !1984 ; 4 uses
  %i.rk = icmp eq ptr %i.rj, null
  br i1 %i.rk, label %bb.dc, label %_RNvMNtCs7tKScEop1B6_5alloc5sliceSh6repeatCshDScVpnq8df_5uu_pr.exit

bb.dc:                                            ; preds = %bb.db
  tail call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef 1, i64 2) #31, !noalias !1985
  unreachable

_RNvMNtCs7tKScEop1B6_5alloc5sliceSh6repeatCshDScVpnq8df_5uu_pr.exit: ; preds = %bb.db
  store i8 10, ptr %i.rj, align 1, !noalias !1986
  %i.rl = getelementptr inbounds nuw i8, ptr %i.rj, i64 1
  store i8 10, ptr %i.rl, align 1, !noalias !1985
  br label %bb.df

bb.dd:                                            ; preds = %bb.da
  tail call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef 1, i64 1) #31
  unreachable

bb.de:                                            ; preds = %bb.da
  store i8 10, ptr %i.rh, align 1
  br label %bb.df

bb.df:                                            ; preds = %bb.de, %_RNvMNtCs7tKScEop1B6_5alloc5sliceSh6repeatCshDScVpnq8df_5uu_pr.exit
  %.sroa.9844.0 = phi i64 [ 2, %_RNvMNtCs7tKScEop1B6_5alloc5sliceSh6repeatCshDScVpnq8df_5uu_pr.exit ], [ 1, %bb.de ] ; 3 uses
  %.sroa.7841.0 = phi ptr [ %i.rj, %_RNvMNtCs7tKScEop1B6_5alloc5sliceSh6repeatCshDScVpnq8df_5uu_pr.exit ], [ %i.rh, %bb.de ] ; 2 uses
  tail call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #30, !noalias !1987
  %i.rm = tail call noundef dereferenceable_or_null(1) ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) 1, i64 noundef range(i64 1, 9) 1) #30, !noalias !1987 ; 4 uses
  %i.rn = icmp eq ptr %i.rm, null
  br i1 %i.rn, label %bb.dg, label %bb.dh

bb.dg:                                            ; preds = %bb.df
  tail call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef 1, i64 1) #31
  unreachable

bb.dh:                                            ; preds = %bb.df
  store i8 10, ptr %i.rm, align 1
  br i1 %i.dv, label %bb.dj, label %bb.di

bb.di:                                            ; preds = %bb.dh
  %.not547 = icmp eq i64 %3, 0
  br i1 %.not547, label %bb.dl, label %bb.dk

bb.dj:                                            ; preds = %bb.dm, %bb.dh
  %i.ro = tail call { i64, i32 } @_RNvMs5_NtCs2vKOLqTMYjT_3std4timeNtB5_10SystemTime3now() #30 ; 2 uses
  %i.rp = extractvalue { i64, i32 } %i.ro, 1
  %i.rq = extractvalue { i64, i32 } %i.ro, 0
  br label %bb.ds

bb.dk:                                            ; preds = %bb.di
  %i.rr = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.rs = load i64, ptr %i.rr, align 8, !noundef !4 ; 2 uses
  %i.rt = icmp eq i64 %i.rs, 1
  %.val.i.i.pre = load ptr, ptr %2, align 8       ; 2 uses
  br i1 %i.rt, label %bb.dm, label %bb.dn

bb.dl:                                            ; preds = %bb.di
  tail call void @_RNvNtCs6JMX4GRUq9U_4core9panicking18panic_bounds_check(i64 noundef 0, i64 noundef 0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @58) #32
  unreachable

bb.dm:                                            ; preds = %bb.dk
  %lhsc548 = load i8, ptr %.val.i.i.pre, align 1
  %i.ru = icmp eq i8 %lhsc548, 45
  br i1 %i.ru, label %bb.dj, label %bb.dn

bb.dn:                                            ; preds = %bb.dk, %bb.dm
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bd), !noalias !1988
  call void @_RNvNtNtCs2vKOLqTMYjT_3std3sys2fs8metadata(ptr noalias nofree noundef nonnull sret([176 x i8]) align 8 captures(address) dereferenceable(176) %i.bd, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.val.i.i.pre, i64 noundef %i.rs) #30, !noalias !1988
  %i.rv = load i64, ptr %i.bd, align 8, !range !13, !noalias !1988, !noundef !4 ; 2 uses
  %i.rw = icmp eq i64 %i.rv, 2
  %i.rx = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  %i.ry = load ptr, ptr %i.rx, align 8, !noalias !1989 ; 4 uses
  br i1 %i.rw, label %bb.hh, label %bb.do

bb.do:                                            ; preds = %bb.dn
  %.sroa.13864.0..sroa_idx865 = getelementptr inbounds nuw i8, ptr %i.bd, i64 16
  %.sroa.5982.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.co, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.co)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(160) %.sroa.5982.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(160) %.sroa.13864.0..sroa_idx865, i64 160, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bd), !noalias !1988
  store i64 %i.rv, ptr %i.co, align 8
  %.sroa.4981.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.co, i64 8
  store ptr %i.ry, ptr %.sroa.4981.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bc), !noalias !1990
  call void @_RNvMsm_NtCs2vKOLqTMYjT_3std2fsNtB5_8Metadata8modified(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.bc, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(176) %i.co) #30
  %i.rz = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  %i.sa = load i32, ptr %i.rz, align 8, !range !1991, !noalias !1990, !noundef !4 ; 2 uses
  %i.sb = icmp eq i32 %i.sa, -1
  %i.sc = load i64, ptr %i.bc, align 8, !noalias !1990 ; 4 uses
  %i.sd = inttoptr i64 %i.sc to ptr
  br i1 %i.sb, label %bb.dp, label %_RNCNvCshDScVpnq8df_5uu_pr13build_optionss2_0B3_.exit

bb.dp:                                            ; preds = %bb.do
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bb), !noalias !1990
  %i.se = and i64 %i.sc, 3
  switch i64 %i.se, label %default.unreachable [
    i64 2, label %_RNCNvCshDScVpnq8df_5uu_pr13build_optionss2_0B3_.exit.thread
    i64 3, label %bb.dq
    i64 0, label %_RNCNvCshDScVpnq8df_5uu_pr13build_optionss2_0B3_.exit.thread
    i64 1, label %bb.dr
  ], !prof !16

default.unreachable:                              ; preds = %bb.hh, %bb.dp
  unreachable

bb.dq:                                            ; preds = %bb.dp
  %i.sf = icmp ult i64 %i.sc, 188978561024
  call void @llvm.assume(i1 %i.sf)
  br label %_RNCNvCshDScVpnq8df_5uu_pr13build_optionss2_0B3_.exit.thread

bb.dr:                                            ; preds = %bb.dp
  %i.sg = getelementptr i8, ptr %i.sd, i64 -1     ; 2 uses
end_hunk_0
