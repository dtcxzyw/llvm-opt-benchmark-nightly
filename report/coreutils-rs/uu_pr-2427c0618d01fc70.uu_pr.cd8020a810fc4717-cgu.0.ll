Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/coreutils-rs/original/uu_pr-2427c0618d01fc70.uu_pr.cd8020a810fc4717-cgu.0?download=true
inline.NumInlined: 1527
inline.NumDeleted: 885
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 16
begin_hunk_0_@_RNvCshDScVpnq8df_5uu_pr13build_options:bb.a
  %i.jo = getelementptr inbounds nuw i8, ptr %i.bn, i64 8
  %i.jp = load double, ptr %i.jo, align 8, !noalias !1852, !noundef !4
  call fastcc void @_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setRedECshDScVpnq8df_5uu_pr(ptr noalias nofree noundef align 8 dereferenceable(24) %i.bo, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @25, i64 noundef 3, double noundef %i.jp) #30, !noalias !1852
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bn), !noalias !1852
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bl), !noalias !1852
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bl, ptr noundef nonnull align 8 dereferenceable(24) %i.bo, i64 24, i1 false), !noalias !1852
  call void @_RNvNtNtCsh036I4OHgIr_6uucore4mods6locale21get_message_with_args(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.bp, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @33, i64 noundef 32, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.bl) #30, !noalias !1852
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bl), !noalias !1852
  br i1 %i.jl, label %.split.i.i, label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %.thread107.i
  %i.jq = phi ptr [ %i.hk, %.thread107.i ], [ %.ph.i.i, %bb.aq ]
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %i.jq, i64 noundef %.val589, i64 noundef range(i64 1, -9223372036854775807) 1) #30, !noalias !1857
  br label %.split.i.i

bb.as:                                            ; preds = %.thread.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bn), !noalias !1852
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bm), !noalias !1852
  store i64 %.val589, ptr %i.bm, align 8, !noalias !1852
  %.sroa.5.0..sroa_idx2.i.i = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  store ptr %.ph.i.i, ptr %.sroa.5.0..sroa_idx2.i.i, align 8, !noalias !1852
  %.sroa.8.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.bm, i64 16
  store i64 %.val589, ptr %.sroa.8.0..sroa_idx.i.i, align 8, !noalias !1852
  call fastcc void @_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setReNtNtCs7tKScEop1B6_5alloc6string6StringECshDScVpnq8df_5uu_pr(ptr noalias nofree noundef align 8 dereferenceable(24) %i.bo, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @25, i64 noundef 3, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.bm) #30, !noalias !1852
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bm), !noalias !1852
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bl), !noalias !1852
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bl, ptr noundef nonnull align 8 dereferenceable(24) %i.bo, i64 24, i1 false), !noalias !1852
  call void @_RNvNtNtCsh036I4OHgIr_6uucore4mods6locale21get_message_with_args(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.bp, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @33, i64 noundef 32, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.bl) #30, !noalias !1852
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bl), !noalias !1852
  br label %.split.i.i

.split.i.i:                                       ; preds = %bb.as, %bb.ar, %bb.aq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bo), !noalias !1852
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bk), !noalias !1852
  call void @_RNvNtNtCsh036I4OHgIr_6uucore4mods6locale11get_message(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.bk, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @27, i64 noundef 19) #30, !noalias !1852
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bj), !noalias !1852
  store ptr %i.bp, ptr %i.bj, align 8, !noalias !1852
  %.sroa.46.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  store ptr @_RNvXsq_NtCs7tKScEop1B6_5alloc6stringNtB5_6StringNtNtCs6JMX4GRUq9U_4core3fmt7Display3fmt, ptr %.sroa.46.0..sroa_idx.i.i, align 8, !noalias !1852
  %i.jr = getelementptr inbounds nuw i8, ptr %i.bj, i64 16
  store ptr %i.bk, ptr %i.jr, align 8, !noalias !1852
  %.sroa.410.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.bj, i64 24
  store ptr @_RNvXsq_NtCs7tKScEop1B6_5alloc6stringNtB5_6StringNtNtCs6JMX4GRUq9U_4core3fmt7Display3fmt, ptr %.sroa.410.0..sroa_idx.i.i, align 8, !noalias !1852
  call void @_RNvNvNtCs7tKScEop1B6_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.bq, ptr noundef nonnull @28, ptr noundef nonnull %i.bj) #30, !noalias !1848
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bj), !noalias !1852
  call void @llvm.experimental.noalias.scope.decl(metadata !1858)
  call void @llvm.experimental.noalias.scope.decl(metadata !1859)
  %.val.i.i17.i.i = load i64, ptr %i.bk, align 8, !range !6, !alias.scope !1860, !noalias !1852, !noundef !4 ; 2 uses
  %i.js = icmp eq i64 %.val.i.i17.i.i, 0
  br i1 %i.js, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECshDScVpnq8df_5uu_pr.exit19.i.i, label %bb.at

bb.at:                                            ; preds = %.split.i.i
  %i.jt = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  %.val1.i.i18.i.i = load ptr, ptr %i.jt, align 8, !alias.scope !1860, !noalias !1852, !nonnull !4, !noundef !4
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i18.i.i, i64 noundef %.val.i.i17.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #30, !noalias !1861
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECshDScVpnq8df_5uu_pr.exit19.i.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECshDScVpnq8df_5uu_pr.exit19.i.i: ; preds = %bb.at, %.split.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bk), !noalias !1852
  call void @llvm.experimental.noalias.scope.decl(metadata !1862)
  call void @llvm.experimental.noalias.scope.decl(metadata !1863)
  %.val.i.i20.i.i = load i64, ptr %i.bp, align 8, !range !6, !alias.scope !1864, !noalias !1852, !noundef !4 ; 2 uses
  %i.ju = icmp eq i64 %.val.i.i20.i.i, 0
  br i1 %i.ju, label %bb.bi, label %bb.au

bb.au:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECshDScVpnq8df_5uu_pr.exit19.i.i
  %i.jv = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  %.val1.i.i21.i.i = load ptr, ptr %i.jv, align 8, !alias.scope !1864, !noalias !1852, !nonnull !4, !noundef !4
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i21.i.i, i64 noundef %.val.i.i20.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #30, !noalias !1865
  br label %bb.bi

bb.av:                                            ; preds = %bb.ac, %.thread38.i
  %.sroa.4.0.i.ph40.i = phi i32 [ %i.gn, %.thread38.i ], [ %.sroa.4.0.i.ph.i, %bb.ac ]
  tail call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #30, !noalias !1866
  %i.jw = tail call noundef dereferenceable_or_null(1) ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) 1, i64 noundef range(i64 1, 9) 1) #30, !noalias !1866 ; 3 uses
  %i.jx = icmp eq ptr %i.jw, null
  br i1 %i.jx, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %bb.av
  tail call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef 1, i64 1) #31, !noalias !1848
  unreachable

bb.ax:                                            ; preds = %bb.av
  %i.jy = trunc nuw nsw i32 %.sroa.4.0.i.ph40.i to i8
  store i8 %i.jy, ptr %i.jw, align 1, !noalias !1848
  %.not.i27.not.i = icmp eq i64 %.val589, 1
  br i1 %.not.i27.not.i, label %_RNvMsv_NtCs6JMX4GRUq9U_4core3numj27from_ascii_bytes_radix_impl.exit52.i, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.jz = getelementptr inbounds nuw i8, ptr %.val588, i64 1 ; 2 uses
  %i.ka = load i8, ptr %i.jz, align 1, !alias.scope !1867, !noalias !1848, !noundef !4 ; 3 uses
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
  %i.kk = load i8, ptr %.sroa.0.1.i38.i1532, align 1, !alias.scope !1868, !noalias !1848, !noundef !4
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
  %i.kr = load i8, ptr %.sroa.0.269.i46.i, align 1, !alias.scope !1868, !noalias !1848, !noundef !4
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
  tail call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #30, !noalias !1869
  br label %bb.bd

bb.bc:                                            ; preds = %.loopexit62.i
  store i8 9, ptr %i.fy, align 1, !noalias !1850
  br label %bb.bd

bb.bd:                                            ; preds = %_RNvMsv_NtCs6JMX4GRUq9U_4core3numj27from_ascii_bytes_radix_impl.exit52.i, %bb.bc
  %.sroa.316.034.i = phi ptr [ %i.jw, %_RNvMsv_NtCs6JMX4GRUq9U_4core3numj27from_ascii_bytes_radix_impl.exit52.i ], [ %i.fy, %bb.bc ]
  %.sroa.06.0.i = phi i64 [ %.sink.i30.i, %_RNvMsv_NtCs6JMX4GRUq9U_4core3numj27from_ascii_bytes_radix_impl.exit52.i ], [ %.sroa.111.0.i, %bb.bc ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bq)
  br label %_RINvMNtCs6JMX4GRUq9U_4core6optionINtB3_6OptionNtCshDScVpnq8df_5uu_pr13NumberingModeE7or_elseNCNvBK_13build_optionss0_0EBK_.exit

bb.be:                                            ; preds = %_RINvMNtNtCsgNwXemyrBWj_12clap_builder6parser5errorNtB3_12MatchesError6unwrapINtNtCs6JMX4GRUq9U_4core6option6OptionRNtNtCs7tKScEop1B6_5alloc6string6StringEECshDScVpnq8df_5uu_pr.exit618
  %i.la = tail call noundef zeroext i1 @_RNvMNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matchesNtB2_10ArgMatches11contains_id(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @37, i64 noundef 12) #30, !noalias !1870
  br i1 %i.la, label %bb.bf, label %_RINvMNtCs6JMX4GRUq9U_4core6optionINtB3_6OptionNtCshDScVpnq8df_5uu_pr13NumberingModeE7or_elseNCNvBK_13build_optionss0_0EBK_.exit

bb.bf:                                            ; preds = %bb.be
  tail call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #30, !noalias !1871
  %i.lb = tail call noundef dereferenceable_or_null(1) ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) 1, i64 noundef range(i64 1, 9) 1) #30, !noalias !1871 ; 3 uses
  %i.lc = icmp eq ptr %i.lb, null
  br i1 %i.lc, label %bb.bg, label %_RNvXs0_CshDScVpnq8df_5uu_prNtB5_13NumberingModeNtNtCs6JMX4GRUq9U_4core7default7Default7default.exit.i.i

bb.bg:                                            ; preds = %bb.bf
  tail call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef 1, i64 1) #31, !noalias !1872
  unreachable

_RNvXs0_CshDScVpnq8df_5uu_prNtB5_13NumberingModeNtNtCs6JMX4GRUq9U_4core7default7Default7default.exit.i.i: ; preds = %bb.bf
  store i8 9, ptr %i.lb, align 1, !noalias !1872
  br label %_RINvMNtCs6JMX4GRUq9U_4core6optionINtB3_6OptionNtCshDScVpnq8df_5uu_pr13NumberingModeE7or_elseNCNvBK_13build_optionss0_0EBK_.exit

_RINvMNtCs6JMX4GRUq9U_4core6optionINtB3_6OptionNtCshDScVpnq8df_5uu_pr13NumberingModeE7or_elseNCNvBK_13build_optionss0_0EBK_.exit: ; preds = %bb.be, %bb.bd, %_RNvXs0_CshDScVpnq8df_5uu_prNtB5_13NumberingModeNtNtCs6JMX4GRUq9U_4core7default7Default7default.exit.i.i
  %.sroa.12815.0 = phi i64 [ 1, %_RNvXs0_CshDScVpnq8df_5uu_prNtB5_13NumberingModeNtNtCs6JMX4GRUq9U_4core7default7Default7default.exit.i.i ], [ %.sroa.7.01048, %bb.bd ], [ undef, %bb.be ]
  %.sroa.11812.0 = phi i64 [ 5, %_RNvXs0_CshDScVpnq8df_5uu_prNtB5_13NumberingModeNtNtCs6JMX4GRUq9U_4core7default7Default7default.exit.i.i ], [ %.sroa.06.0.i, %bb.bd ], [ undef, %bb.be ]
  %.sroa.8806.0 = phi ptr [ %i.lb, %_RNvXs0_CshDScVpnq8df_5uu_prNtB5_13NumberingModeNtNtCs6JMX4GRUq9U_4core7default7Default7default.exit.i.i ], [ %.sroa.316.034.i, %bb.bd ], [ undef, %bb.be ] ; 3 uses
  %switch.i793.not = phi i1 [ true, %_RNvXs0_CshDScVpnq8df_5uu_prNtB5_13NumberingModeNtNtCs6JMX4GRUq9U_4core7default7Default7default.exit.i.i ], [ true, %bb.bd ], [ false, %bb.be ]
  %.sroa.0804.0 = phi i64 [ 1, %_RNvXs0_CshDScVpnq8df_5uu_prNtB5_13NumberingModeNtNtCs6JMX4GRUq9U_4core7default7Default7default.exit.i.i ], [ 1, %bb.bd ], [ -1, %bb.be ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cq)
  call fastcc void @_RINvMs0_NtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matchesNtB6_10ArgMatches11try_get_oneNtNtCs7tKScEop1B6_5alloc6string6StringECshDScVpnq8df_5uu_pr(ptr noalias nofree noundef align 8 captures(none) dereferenceable(40) %i.cq, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @56, i64 noundef 11) #30
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1873)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bi)
  store ptr @56, ptr %i.bi, align 8, !noalias !1874
  %i.ld = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  store i64 11, ptr %i.ld, align 8, !noalias !1874
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bh), !noalias !1874
  %i.le = load i64, ptr %i.cq, align 8, !range !13, !alias.scope !1873, !noundef !4
  %.not.i621 = icmp eq i64 %i.le, 2
  br i1 %.not.i621, label %_RINvMNtNtCsgNwXemyrBWj_12clap_builder6parser5errorNtB3_12MatchesError6unwrapINtNtCs6JMX4GRUq9U_4core6option6OptionRNtNtCs7tKScEop1B6_5alloc6string6StringEECshDScVpnq8df_5uu_pr.exit624, label %bb.bh, !prof !14

bb.bh:                                            ; preds = %_RINvMNtCs6JMX4GRUq9U_4core6optionINtB3_6OptionNtCshDScVpnq8df_5uu_pr13NumberingModeE7or_elseNCNvBK_13build_optionss0_0EBK_.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.bh, ptr noundef nonnull readonly align 8 dereferenceable(40) %i.cq, i64 40, i1 false), !noalias !1875
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bg), !noalias !1874
  store ptr %i.bi, ptr %i.bg, align 8, !noalias !1874
  %.sroa.42.0..sroa_idx.i622 = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  store ptr @_RNvXs1i_NtCs6JMX4GRUq9U_4core3fmtReNtB6_7Display3fmtCshDScVpnq8df_5uu_pr, ptr %.sroa.42.0..sroa_idx.i622, align 8, !noalias !1874
  %i.lf = getelementptr inbounds nuw i8, ptr %i.bg, i64 16
  store ptr %i.bh, ptr %i.lf, align 8, !noalias !1874
  %.sroa.46.0..sroa_idx.i623 = getelementptr inbounds nuw i8, ptr %i.bg, i64 24
  store ptr @_RNvXs0_NtNtCsgNwXemyrBWj_12clap_builder6parser5errorNtB5_12MatchesErrorNtNtCs6JMX4GRUq9U_4core3fmt7Display3fmt, ptr %.sroa.46.0..sroa_idx.i623, align 8, !noalias !1874
  call void @_RNvNtCs6JMX4GRUq9U_4core9panicking9panic_fmt(ptr noundef nonnull @7, ptr noundef nonnull %i.bg, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @9) #32, !noalias !1873
  unreachable

_RINvMNtNtCsgNwXemyrBWj_12clap_builder6parser5errorNtB3_12MatchesError6unwrapINtNtCs6JMX4GRUq9U_4core6option6OptionRNtNtCs7tKScEop1B6_5alloc6string6StringEECshDScVpnq8df_5uu_pr.exit624: ; preds = %_RINvMNtCs6JMX4GRUq9U_4core6optionINtB3_6OptionNtCshDScVpnq8df_5uu_pr13NumberingModeE7or_elseNCNvBK_13build_optionss0_0EBK_.exit
  %i.lg = getelementptr inbounds nuw i8, ptr %i.cq, i64 8
  %i.lh = load ptr, ptr %i.lg, align 8, !alias.scope !1873, !align !11, !noundef !4 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bh), !noalias !1874
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bi)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cq)
  %.not545 = icmp eq ptr %i.lh, null
  br i1 %.not545, label %bb.dd, label %bb.bj

bb.bi:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECshDScVpnq8df_5uu_pr.exit19.i.i, %bb.au
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bp), !noalias !1852
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
  %.val592 = load ptr, ptr %i.lk, align 8, !nonnull !4, !noundef !4 ; 22 uses
  %i.ll = getelementptr i8, ptr %i.lh, i64 16
  %.val593 = load i64, ptr %i.ll, align 8, !noundef !4 ; 27 uses
  %.not.i625 = icmp samesign eq i64 %.val593, 0
  br i1 %.not.i625, label %_RNCNvCshDScVpnq8df_5uu_pr13build_optionss1_0B3_.exit.thread, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.lm = load i8, ptr %.val592, align 1, !noalias !1876, !noundef !4 ; 8 uses
  %i.ln = icmp sgt i8 %i.lm, -1
  br i1 %i.ln, label %bb.bl, label %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCshDScVpnq8df_5uu_pr.exit12.i.i626

_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCshDScVpnq8df_5uu_pr.exit12.i.i626: ; preds = %bb.bk
  %i.lo = getelementptr inbounds nuw i8, ptr %.val592, i64 1
  %i.lp = and i8 %i.lm, 31
  %i.lq = zext nneg i8 %i.lp to i32               ; 3 uses
  %i.lr = icmp samesign ne i64 %.val593, 1
  tail call void @llvm.assume(i1 %i.lr)
  %i.ls = load i8, ptr %i.lo, align 1, !noalias !1876, !noundef !4
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
  %i.mb = load i8, ptr %i.lz, align 1, !noalias !1876, !noundef !4
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
  %i.ml = load i8, ptr %i.mj, align 1, !noalias !1876, !noundef !4
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
  call void @llvm.lifetime.start.p0(ptr nonnull %i.be), !noalias !1877
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bf), !noalias !1877
  %i.mt = getelementptr inbounds nuw i8, ptr %i.be, i64 12
  %i.mu = getelementptr inbounds nuw i8, ptr %i.bf, i64 12
  %i.mv = add nsw i32 %spec.select.ph.i, -48
  %or.cond.i.i.i = icmp ult i32 %i.mv, 10
  br i1 %or.cond.i.i.i, label %bb.bo, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.mw = icmp samesign ult i32 %spec.select.ph.i, 128
  br i1 %i.mw, label %bb.ci, label %bb.ch

bb.bo:                                            ; preds = %bb.bm
  %cond.i627 = icmp eq i64 %.val593, 1
  br i1 %cond.i627, label %bb.bp, label %thread-pre-split.i.i.i.i

bb.bp:                                            ; preds = %bb.bo
  switch i8 %i.lm, label %.lr.ph152.i.i.i.i.preheader [
    i8 43, label %_RNvMsp_NtCs6JMX4GRUq9U_4core3numl27from_ascii_bytes_radix_impl.exit.thread.i.i.i
    i8 45, label %_RNvMsp_NtCs6JMX4GRUq9U_4core3numl27from_ascii_bytes_radix_impl.exit.thread.i.i.i
  ]

thread-pre-split.i.i.i.i:                         ; preds = %bb.bo
  switch i8 %i.lm, label %bb.cc [
    i8 43, label %bb.bq
    i8 45, label %bb.br
  ]

bb.bq:                                            ; preds = %thread-pre-split.i.i.i.i
  %i.mx = getelementptr inbounds nuw i8, ptr %.val592, i64 1
  %i.my = add nsw i64 %.val593, -1
  br label %bb.cc

bb.br:                                            ; preds = %thread-pre-split.i.i.i.i
  %i.mz = getelementptr inbounds nuw i8, ptr %.val592, i64 1 ; 2 uses
  %i.na = icmp samesign ult i64 %.val593, 9
  br i1 %i.na, label %.lr.ph143.i.i.i.i, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %bb.br
  %i.nb = add nsw i64 %.val593, -1
  br label %.lr.ph.i.i.i.i

.loopexit.i.i.i.i:                                ; preds = %bb.bu, %bb.bv, %bb.bw, %bb.bx, %bb.by, %bb.bz, %bb.ca, %bb.cb, %bb.cf, %bb.cg
  %.sroa.086.1.i.i.i.i = phi i32 [ %i.po, %bb.cb ], [ %i.qj, %bb.cg ], [ %i.qb, %bb.cf ], [ %i.ny, %bb.bv ], [ %i.of, %bb.bw ], [ %i.om, %bb.bx ], [ %i.ot, %bb.by ], [ %i.pa, %bb.bz ], [ %i.ph, %bb.ca ], [ %i.np, %bb.bu ]
  %i.nc = zext i32 %.sroa.086.1.i.i.i.i to i64
  %i.nd = shl nuw i64 %i.nc, 32
  br label %_RNvMsp_NtCs6JMX4GRUq9U_4core3numl27from_ascii_bytes_radix_impl.exit.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader, %bb.bu
  %.sroa.0.1138.i.i.i.i = phi ptr [ %i.ne, %bb.bu ], [ %i.mz, %.lr.ph.i.i.i.i.preheader ] ; 3 uses
  %.sroa.26.1137.i.i.i.i = phi i64 [ %i.nf, %bb.bu ], [ %i.nb, %.lr.ph.i.i.i.i.preheader ]
  %.sroa.086.0136.i.i.i.i = phi i32 [ %i.np, %bb.bu ], [ 0, %.lr.ph.i.i.i.i.preheader ]
  %i.ne = getelementptr inbounds nuw i8, ptr %.sroa.0.1138.i.i.i.i, i64 1
  %i.nf = add nsw i64 %.sroa.26.1137.i.i.i.i, -1  ; 2 uses
  %i.ng = tail call { i32, i1 } @llvm.smul.with.overflow.i32(i32 %.sroa.086.0136.i.i.i.i, i32 10) ; 2 uses
  %i.nh = extractvalue { i32, i1 } %i.ng, 0
  %i.ni = extractvalue { i32, i1 } %i.ng, 1
  br i1 %i.ni, label %.loopexit114.sink.split.i.i.i.i, label %bb.bs, !prof !8

bb.bs:                                            ; preds = %.lr.ph.i.i.i.i
  %i.nj = load i8, ptr %.sroa.0.1138.i.i.i.i, align 1, !alias.scope !1878, !noalias !1879, !noundef !4
  %i.nk = zext i8 %i.nj to i32
  %i.nl = add nsw i32 %i.nk, -48                  ; 2 uses
  %i.nm = icmp ult i32 %i.nl, 10
  br i1 %i.nm, label %bb.bt, label %_RNvMsp_NtCs6JMX4GRUq9U_4core3numl27from_ascii_bytes_radix_impl.exit.thread.i.i.i

bb.bt:                                            ; preds = %bb.bs
  %i.nn = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %i.nh, i32 %i.nl) ; 2 uses
  %i.no = extractvalue { i32, i1 } %i.nn, 1
  br i1 %i.no, label %_RNvMsp_NtCs6JMX4GRUq9U_4core3numl27from_ascii_bytes_radix_impl.exit.thread.i.i.i, label %bb.bu, !prof !8

bb.bu:                                            ; preds = %bb.bt
  %i.np = extractvalue { i32, i1 } %i.nn, 0       ; 2 uses
  %.not104.i.i.i.i = icmp eq i64 %i.nf, 0
  br i1 %.not104.i.i.i.i, label %.loopexit.i.i.i.i, label %.lr.ph.i.i.i.i

.loopexit114.sink.split.i.i.i.i:                  ; preds = %.lr.ph.i.i.i.i, %.preheader115.i.i.i.i
  %.sroa.0.3147.lcssa.sink.i.i.i.i = phi ptr [ %.sroa.0.3147.i.i.i.i, %.preheader115.i.i.i.i ], [ %.sroa.0.1138.i.i.i.i, %.lr.ph.i.i.i.i ]
  %.sink190.i.i.i.i = phi i64 [ 513, %.preheader115.i.i.i.i ], [ 769, %.lr.ph.i.i.i.i ]
  %i.nq = load i8, ptr %.sroa.0.3147.lcssa.sink.i.i.i.i, align 1, !alias.scope !1878, !noalias !1879, !noundef !4
  %i.nr = add i8 %i.nq, -48
  %i.ns = icmp ult i8 %i.nr, 10
  %i.nt = select i1 %i.ns, i64 %.sink190.i.i.i.i, i64 257
  br label %_RNvMsp_NtCs6JMX4GRUq9U_4core3numl27from_ascii_bytes_radix_impl.exit.i.i.i

.lr.ph143.i.i.i.i:                                ; preds = %bb.br
  %i.nu = load i8, ptr %i.mz, align 1, !alias.scope !1878, !noalias !1879, !noundef !4 ; 2 uses
  %i.nv = add i8 %i.nu, -48
  %i.nw = icmp ult i8 %i.nv, 10
end_hunk_0
begin_hunk_1_@_RNvCshDScVpnq8df_5uu_pr13build_options:bb.a
  %i.aom = and i64 %i.aoj, 65280
  %i.aon = icmp eq i64 %i.aom, 512
  br i1 %i.aon, label %.split531, label %.split

bb.mf:                                            ; preds = %bb.mc
  %.sroa.6527.0.extract.shift = lshr i64 %i.aoj, 32
  %i.aoo = icmp sgt i64 %i.aoj, -1
  br i1 %i.aoo, label %bb.md, label %.split

.split:                                           ; preds = %bb.me, %bb.mf
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4314)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cv)
  store i64 0, ptr %i.cv, align 8
  %.sroa.4516.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cv, i64 8
  store ptr %i.aog, ptr %.sroa.4516.0..sroa_idx, align 8
  %.sroa.5517.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cv, i64 16
  store i64 %i.aoi, ptr %.sroa.5517.0..sroa_idx, align 8
  %i.aop = getelementptr inbounds nuw i8, ptr %i.cv, i64 24
  store i8 1, ptr %i.aop, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cu)
  store ptr %i.cv, ptr %i.cu, align 8
  %.sroa.4521.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cu, i64 8
  store ptr @_RNvXs_Cs46VsjAK4zfE_10os_displayNtB4_6QuotedNtNtCs6JMX4GRUq9U_4core3fmt7Display3fmt, ptr %.sroa.4521.0..sroa_idx, align 8
  call void @_RNvNvNtCs7tKScEop1B6_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %.sroa.4314, ptr noundef nonnull @76, ptr noundef nonnull %i.cu) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cu)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cv)
  %i.aoq = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 -9223372036854775808, ptr %i.aoq, align 8
  %.sroa.4314.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4314.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4314, i64 24, i1 false)
  store i64 2, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4314)
  br label %bb.mi

bb.mg:                                            ; preds = %bb.md
  %i.aor = getelementptr inbounds nuw i8, ptr %i.cy, i64 32
  %.val.i.i775 = load i64, ptr %i.aor, align 8
  %.sroa.02.0.i.i = select i1 %.not574, i64 0, i64 %.val.i.i775
  %.sroa.0316.0 = select i1 %i.dy, i64 %3, i64 %.sroa.02.0.i.i
  %i.aos = icmp ult i64 %.sroa.0316.0, 2          ; 3 uses
  %brmerge = or i1 %.not574, %i.aos
  %.sroa.6234.0.mux = select i1 %i.aos, i64 %.sroa.6234.0, i64 72
  %.sroa.0233.0.mux = select i1 %i.aos, i64 %.sroa.0233.0, i64 1
  br i1 %brmerge, label %_RINvMNtCs6JMX4GRUq9U_4core6optionINtB3_6OptionRNtCshDScVpnq8df_5uu_pr17ColumnModeOptionsE6map_orjNCNvBL_13build_optionssi_0EBL_.exit, label %bb.mh

bb.mh:                                            ; preds = %bb.mg
  %.sroa.gep = getelementptr inbounds nuw i8, ptr %i.cy, i64 24
  %.val.i777 = load i64, ptr %.sroa.gep, align 8, !alias.scope !2023, !noundef !4
  br label %_RINvMNtCs6JMX4GRUq9U_4core6optionINtB3_6OptionRNtCshDScVpnq8df_5uu_pr17ColumnModeOptionsE6map_orjNCNvBL_13build_optionssi_0EBL_.exit

_RINvMNtCs6JMX4GRUq9U_4core6optionINtB3_6OptionRNtCshDScVpnq8df_5uu_pr17ColumnModeOptionsE6map_orjNCNvBL_13build_optionssi_0EBL_.exit: ; preds = %bb.mg, %bb.mh, %bb.md
  %.sroa.6234.1 = phi i64 [ %.sroa.6234.0.mux, %bb.mg ], [ undef, %bb.md ], [ %.val.i777, %bb.mh ]
  %.sroa.0233.1 = phi i64 [ %.sroa.0233.0.mux, %bb.mg ], [ 0, %bb.md ], [ 1, %bb.mh ]
  %.sroa.16.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 232
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.16.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(48) %i.cy, i64 48, i1 false)
  %i.aot = zext i1 %i.sw to i8
  %i.aou = zext i1 %i.du to i8
  %i.aov = zext i1 %i.aol to i8
  store i64 %.sroa.0119.1, ptr %0, align 8
  %.sroa.4322.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.5121.1, ptr %.sroa.4322.0..sroa_idx, align 8
  %.sroa.5323.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %spec.select1172, ptr %.sroa.5323.0..sroa_idx, align 8
  %.sroa.6324.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %3, ptr %.sroa.6324.0..sroa_idx, align 8
  %.sroa.7325.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %.sroa.0233.1, ptr %.sroa.7325.0..sroa_idx, align 8
  %.sroa.8326.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %.sroa.6234.1, ptr %.sroa.8326.0..sroa_idx, align 8
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 %.val4.pn.i, ptr %.sroa.9.0..sroa_idx, align 8
  %.sroa.9.sroa.4.0..sroa.9.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %i.ep, ptr %.sroa.9.sroa.4.0..sroa.9.0..sroa_idx.sroa_idx, align 8
  %.sroa.9.sroa.5.0..sroa.9.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i64 %.val4.pn.i, ptr %.sroa.9.sroa.5.0..sroa.9.0..sroa_idx.sroa_idx, align 8
  %.sroa.10327.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i64 1, ptr %.sroa.10327.0..sroa_idx, align 8
  %.sroa.10327.sroa.4.0..sroa.10327.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 80
  store ptr %i.te, ptr %.sroa.10327.sroa.4.0..sroa.10327.0..sroa_idx.sroa_idx, align 8
  %.sroa.10327.sroa.5.0..sroa.10327.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i64 1, ptr %.sroa.10327.sroa.5.0..sroa.10327.0..sroa_idx.sroa_idx, align 8
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i64 %.sroa.9844.0, ptr %.sroa.11.0..sroa_idx, align 8
  %.sroa.11.sroa.4.0..sroa.11.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 104
  store ptr %.sroa.7841.0, ptr %.sroa.11.sroa.4.0..sroa.11.0..sroa_idx.sroa_idx, align 8
  %.sroa.11.sroa.5.0..sroa.11.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 112
  store i64 %.sroa.9844.0, ptr %.sroa.11.sroa.5.0..sroa.11.0..sroa_idx.sroa_idx, align 8
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 120
  store i64 %.sroa.0850.0, ptr %.sroa.12.0..sroa_idx, align 8
  %.sroa.12.sroa.4.0..sroa.12.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 128
  store ptr %.sroa.7852.0, ptr %.sroa.12.sroa.4.0..sroa.12.0..sroa_idx.sroa_idx, align 8
  %.sroa.12.sroa.5.0..sroa.12.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 136
  store i64 %.sroa.9855.0, ptr %.sroa.12.sroa.5.0..sroa.12.0..sroa_idx.sroa_idx, align 8
  %.sroa.13328.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 144
  store i64 %.sroa.0877.0, ptr %.sroa.13328.0..sroa_idx, align 8
  %.sroa.13328.sroa.4.0..sroa.13328.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 152
  store ptr %.sroa.7879.0, ptr %.sroa.13328.sroa.4.0..sroa.13328.0..sroa_idx.sroa_idx, align 8
  %.sroa.13328.sroa.5.0..sroa.13328.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 160
  store i64 %.sroa.9882.0, ptr %.sroa.13328.sroa.5.0..sroa.13328.0..sroa_idx.sroa_idx, align 8
  %.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 168
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.14.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.ct, i64 24, i1 false)
  %.sroa.15.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 192
  store i64 %.sroa.0804.0, ptr %.sroa.15.0..sroa_idx, align 8
  %.sroa.15.sroa.4.0..sroa.15.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 200
  store ptr %.sroa.8806.0, ptr %.sroa.15.sroa.4.0..sroa.15.0..sroa_idx.sroa_idx, align 8
  %.sroa.15.sroa.5.0..sroa.15.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 208
  store i64 1, ptr %.sroa.15.sroa.5.0..sroa.15.0..sroa_idx.sroa_idx, align 8
  %.sroa.15.sroa.6.0..sroa.15.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 216
  store i64 %.sroa.11812.0, ptr %.sroa.15.sroa.6.0..sroa.15.0..sroa_idx.sroa_idx, align 8
  %.sroa.15.sroa.7.0..sroa.15.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 224
  store i64 %.sroa.12815.0, ptr %.sroa.15.sroa.7.0..sroa.15.0..sroa_idx.sroa_idx, align 8
  %.sroa.17.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 280
  store i32 %.sroa.758.0, ptr %.sroa.17.0..sroa_idx, align 8
  %.sroa.18.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 284
  store i32 %.sroa.1061.0, ptr %.sroa.18.0..sroa_idx, align 4
  %.sroa.19.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 288
  store i64 %.sroa.0870.0, ptr %.sroa.19.0..sroa_idx, align 8
  %.sroa.20.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 296
  store i64 %.sroa.0205.0, ptr %.sroa.20.0..sroa_idx, align 8
  %.sroa.21.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 304
  store i64 %.sroa.0303.0, ptr %.sroa.21.0..sroa_idx, align 8
  %.sroa.22.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 312
  store i8 %i.aot, ptr %.sroa.22.0..sroa_idx, align 8
  %.sroa.23.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 313
  store i8 %.sroa.0204.1, ptr %.sroa.23.0..sroa_idx, align 1
  %.sroa.24.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 314
  store i8 %i.aou, ptr %.sroa.24.0..sroa_idx, align 2
  %.sroa.25.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 315
  store i8 %i.aov, ptr %.sroa.25.0..sroa_idx, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cy)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dd)
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECshDScVpnq8df_5uu_pr.exit796

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECshDScVpnq8df_5uu_pr.exit796: ; preds = %bb.mo, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtCshDScVpnq8df_5uu_pr13NumberingModeEEBZ_.exit, %bb.c, %bb.e, %_RINvMNtCs6JMX4GRUq9U_4core6optionINtB3_6OptionRNtCshDScVpnq8df_5uu_pr17ColumnModeOptionsE6map_orjNCNvBL_13build_optionssi_0EBL_.exit
  ret void

.split531:                                        ; preds = %bb.me
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4312)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cx)
  store i64 0, ptr %i.cx, align 8
  %.sroa.4507.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cx, i64 8
  store ptr %i.aog, ptr %.sroa.4507.0..sroa_idx, align 8
  %.sroa.5508.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cx, i64 16
  store i64 %i.aoi, ptr %.sroa.5508.0..sroa_idx, align 8
  %i.aow = getelementptr inbounds nuw i8, ptr %i.cx, i64 24
  store i8 1, ptr %i.aow, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cw)
  store ptr %i.cx, ptr %i.cw, align 8
  %.sroa.4512.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cw, i64 8
  store ptr @_RNvXs_Cs46VsjAK4zfE_10os_displayNtB4_6QuotedNtNtCs6JMX4GRUq9U_4core3fmt7Display3fmt, ptr %.sroa.4512.0..sroa_idx, align 8
  call void @_RNvNvNtCs7tKScEop1B6_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %.sroa.4312, ptr noundef nonnull @77, ptr noundef nonnull %i.cw) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cw)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cx)
  %i.aox = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 -9223372036854775808, ptr %i.aox, align 8
  %.sroa.4312.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4312.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4312, i64 24, i1 false)
  store i64 2, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4312)
  br label %bb.mi

bb.mi:                                            ; preds = %.split531, %.split
  %.0.val.off.i = add nsw i64 %i.anu, -1
  %switch.i = icmp ult i64 %.0.val.off.i, -2
  br i1 %switch.i, label %bb.mj, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtCshDScVpnq8df_5uu_pr17ColumnModeOptionsEEBZ_.exit

bb.mj:                                            ; preds = %bb.mi
  %i.aoy = getelementptr inbounds nuw i8, ptr %i.cy, i64 8
  %.val610 = load ptr, ptr %i.aoy, align 8, !nonnull !4, !noundef !4
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val610, i64 noundef %i.anu, i64 noundef range(i64 1, -9223372036854775807) 1) #30, !noalias !2024
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtCshDScVpnq8df_5uu_pr17ColumnModeOptionsEEBZ_.exit

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtCshDScVpnq8df_5uu_pr17ColumnModeOptionsEEBZ_.exit: ; preds = %bb.mi, %bb.mj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cy)
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECshDScVpnq8df_5uu_pr.exit764

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECshDScVpnq8df_5uu_pr.exit764: ; preds = %bb.le, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultjNtCshDScVpnq8df_5uu_pr7PrErrorEEB10_.exit770, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtCshDScVpnq8df_5uu_pr17ColumnModeOptionsEEBZ_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dd)
  %i.aoz = icmp eq i64 %.sroa.0877.0, 0
  br i1 %i.aoz, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECshDScVpnq8df_5uu_pr.exit782, label %bb.mk

bb.mk:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECshDScVpnq8df_5uu_pr.exit764
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.7879.0) ]
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.7879.0, i64 noundef %.sroa.0877.0, i64 noundef range(i64 1, -9223372036854775807) 1) #30, !noalias !2025
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECshDScVpnq8df_5uu_pr.exit782

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECshDScVpnq8df_5uu_pr.exit782: ; preds = %bb.ir, %bb.jf, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECshDScVpnq8df_5uu_pr.exit753, %bb.ki, %bb.kd, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECshDScVpnq8df_5uu_pr.exit764, %bb.mk, %bb.je, %bb.if
  %i.apa = icmp eq i64 %.sroa.0850.0, 0
  br i1 %i.apa, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECshDScVpnq8df_5uu_pr.exit791, label %bb.ml

bb.ml:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECshDScVpnq8df_5uu_pr.exit782
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.7852.0, i64 noundef %.sroa.0850.0, i64 noundef range(i64 1, -9223372036854775807) 1) #30, !noalias !2026
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECshDScVpnq8df_5uu_pr.exit791

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECshDScVpnq8df_5uu_pr.exit791: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECshDScVpnq8df_5uu_pr.exit782, %bb.ml
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %i.te, i64 noundef 1, i64 noundef range(i64 1, -9223372036854775807) 1) #30, !noalias !2027
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.7841.0, i64 noundef %.sroa.9844.0, i64 noundef range(i64 1, -9223372036854775807) 1) #30, !noalias !2028
  br label %bb.mm

bb.mm:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECshDScVpnq8df_5uu_pr.exit791, %bb.de
  br i1 %switch.i793.not, label %bb.mn, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtCshDScVpnq8df_5uu_pr13NumberingModeEEBZ_.exit

bb.mn:                                            ; preds = %bb.mm
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.8806.0) ]
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.8806.0, i64 noundef %.sroa.0804.0, i64 noundef range(i64 1, -9223372036854775807) 1) #30, !noalias !2029
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtCshDScVpnq8df_5uu_pr13NumberingModeEEBZ_.exit

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtCshDScVpnq8df_5uu_pr13NumberingModeEEBZ_.exit: ; preds = %bb.bi, %bb.mm, %bb.mn, %bb.s
  br i1 %i.em, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECshDScVpnq8df_5uu_pr.exit796, label %bb.mo

bb.mo:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtCshDScVpnq8df_5uu_pr13NumberingModeEEBZ_.exit
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ep, i64 noundef %.val4.pn.i, i64 noundef range(i64 1, -9223372036854775807) 1) #30, !noalias !2030
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECshDScVpnq8df_5uu_pr.exit796
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc { ptr, i64 } @_RNvCshDScVpnq8df_5uu_pr15as_page_operand(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.not.i = icmp eq i64 %1, 0
  br i1 %.not.i, label %_RNCNvCshDScVpnq8df_5uu_pr15as_page_operand0B3_.exit11, label %_RNvMNtCs6JMX4GRUq9U_4core5sliceSh11starts_withCshDScVpnq8df_5uu_pr.exit

_RNvMNtCs6JMX4GRUq9U_4core5sliceSh11starts_withCshDScVpnq8df_5uu_pr.exit: ; preds = %bb.a
  %rhsc = load i8, ptr %0, align 1
  %i.a = icmp eq i8 %rhsc, 43
  br i1 %i.a, label %bb.b, label %_RNCNvCshDScVpnq8df_5uu_pr15as_page_operand0B3_.exit11

bb.b:                                             ; preds = %_RNvMNtCs6JMX4GRUq9U_4core5sliceSh11starts_withCshDScVpnq8df_5uu_pr.exit
  %i.b = add i64 %1, -1                           ; 12 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 10 uses
  br label %.lr.ph.split.i.i

.lr.ph.split.i.i:                                 ; preds = %bb.f, %bb.b
  %i.d = phi i64 [ %i.s, %bb.f ], [ 0, %bb.b ]    ; 4 uses
  %i.e = sub nuw i64 %i.b, %i.d                   ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.d ; 2 uses
  %i.g = icmp samesign ult i64 %i.e, 16
  br i1 %i.g, label %.preheader.i.i.i, label %bb.c

.preheader.i.i.i:                                 ; preds = %.lr.ph.split.i.i
  %.not.i.i.i = icmp eq i64 %i.e, 0
  br i1 %.not.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

bb.c:                                             ; preds = %.lr.ph.split.i.i
  %i.h = tail call { i64, i64 } @_RNvNtNtCs6JMX4GRUq9U_4core5slice6memchr14memchr_aligned(i8 noundef 58, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.f, i64 noundef range(i64 0, -9223372036854775808) %i.e) #30, !noalias !2051
  br label %_RNvNtNtCs6JMX4GRUq9U_4core5slice6memchr6memchr.exit.i.i

._crit_edge.i.i.i:                                ; preds = %bb.d, %.lr.ph.i.i.i, %.preheader.i.i.i
  %.sroa.01.0.lcssa.i.i.i = phi i64 [ 0, %.preheader.i.i.i ], [ %i.e, %bb.d ], [ %.sroa.01.05.i.i.i, %.lr.ph.i.i.i ]
  %.sroa.0.1.i.i.i = phi i64 [ 0, %.preheader.i.i.i ], [ 0, %bb.d ], [ 1, %.lr.ph.i.i.i ]
  %i.i = insertvalue { i64, i64 } poison, i64 %.sroa.0.1.i.i.i, 0
  %i.j = insertvalue { i64, i64 } %i.i, i64 %.sroa.01.0.lcssa.i.i.i, 1
  br label %_RNvNtNtCs6JMX4GRUq9U_4core5slice6memchr6memchr.exit.i.i

.lr.ph.i.i.i:                                     ; preds = %.preheader.i.i.i, %bb.d
  %.sroa.01.05.i.i.i = phi i64 [ %i.n, %bb.d ], [ 0, %.preheader.i.i.i ] ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 %.sroa.01.05.i.i.i
  %i.l = load i8, ptr %i.k, align 1, !alias.scope !2052, !noalias !2053, !noundef !4
  %i.m = icmp eq i8 %i.l, 58
  br i1 %i.m, label %._crit_edge.i.i.i, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i.i.i
  %i.n = add nuw nsw i64 %.sroa.01.05.i.i.i, 1    ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.n, %i.e
  br i1 %exitcond.not.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

_RNvNtNtCs6JMX4GRUq9U_4core5slice6memchr6memchr.exit.i.i: ; preds = %._crit_edge.i.i.i, %bb.c
  %.merged.i.i.i = phi { i64, i64 } [ %i.j, %._crit_edge.i.i.i ], [ %i.h, %bb.c ] ; 2 uses
  %i.o = extractvalue { i64, i64 } %.merged.i.i.i, 0
  %i.p = trunc nuw i64 %i.o to i1
  br i1 %i.p, label %bb.e, label %bb.j

bb.e:                                             ; preds = %_RNvNtNtCs6JMX4GRUq9U_4core5slice6memchr6memchr.exit.i.i
  %i.q = extractvalue { i64, i64 } %.merged.i.i.i, 1 ; 2 uses
  %i.r = add nuw i64 %i.d, 1
  %i.s = add i64 %i.r, %i.q                       ; 5 uses
  %.not12.i.i = icmp ugt i64 %i.s, %i.b
  %i.t = add i64 %i.q, %i.d                       ; 4 uses
  %or.cond.i.not.i = icmp ult i64 %i.t, %i.b
  br i1 %or.cond.i.not.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.g, %bb.e
  br i1 %.not12.i.i, label %bb.j, label %.lr.ph.split.i.i

bb.g:                                             ; preds = %bb.e
  %i.u = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.t
  %lhsc.i = load i8, ptr %i.u, align 1, !alias.scope !2054
  %i.v = icmp eq i8 %lhsc.i, 58
  br i1 %i.v, label %bb.h, label %bb.f

_RNCNvCshDScVpnq8df_5uu_pr15as_page_operand0B3_.exit11: ; preds = %bb.l, %.lr.ph, %.lr.ph62, %bb.n, %.lr.ph64, %bb.k, %bb.m, %_RNvMNtCs6JMX4GRUq9U_4core5sliceSh11starts_withCshDScVpnq8df_5uu_pr.exit, %bb.a, %_RNCNvCshDScVpnq8df_5uu_pr15as_page_operand0B3_.exit, %bb.j, %bb.h
  %.sroa.4.0 = phi i64 [ 0, %bb.j ], [ undef, %.lr.ph62 ], [ undef, %_RNvMNtCs6JMX4GRUq9U_4core5sliceSh11starts_withCshDScVpnq8df_5uu_pr.exit ], [ %i.b, %_RNCNvCshDScVpnq8df_5uu_pr15as_page_operand0B3_.exit ], [ %i.b, %bb.m ], [ undef, %bb.h ], [ undef, %bb.a ], [ %i.b, %bb.n ], [ %i.b, %bb.k ], [ %i.b, %.lr.ph64 ], [ %i.b, %.lr.ph ], [ %i.b, %bb.l ]
  %.sroa.0.0 = phi ptr [ null, %bb.j ], [ null, %.lr.ph62 ], [ null, %_RNvMNtCs6JMX4GRUq9U_4core5sliceSh11starts_withCshDScVpnq8df_5uu_pr.exit ], [ null, %_RNCNvCshDScVpnq8df_5uu_pr15as_page_operand0B3_.exit ], [ %i.c, %bb.m ], [ null, %bb.h ], [ null, %bb.a ], [ null, %.lr.ph64 ], [ %i.c, %bb.k ], [ %i.c, %bb.n ], [ null, %.lr.ph ], [ %i.c, %bb.l ]
  %i.w = insertvalue { ptr, i64 } poison, ptr %.sroa.0.0, 0
  %i.x = insertvalue { ptr, i64 } %i.w, i64 %.sroa.4.0, 1
  ret { ptr, i64 } %i.x

bb.h:                                             ; preds = %bb.g
  %i.y = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.t
  %i.z = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.s
  %i.aa = icmp eq i64 %i.t, 0
  br i1 %i.aa, label %_RNCNvCshDScVpnq8df_5uu_pr15as_page_operand0B3_.exit11, label %.lr.ph62

bb.i:                                             ; preds = %.lr.ph62
  %i.ab = getelementptr inbounds nuw i8, ptr %i.ac, i64 1 ; 2 uses
  %.not.not.not.i.not.i = icmp eq ptr %i.ab, %i.y
  br i1 %.not.not.not.i.not.i, label %_RNCNvCshDScVpnq8df_5uu_pr15as_page_operand0B3_.exit, label %.lr.ph62

.lr.ph62:                                         ; preds = %bb.h, %bb.i
  %i.ac = phi ptr [ %i.ab, %bb.i ], [ %i.c, %bb.h ] ; 2 uses
  %.val.i.i = load i8, ptr %i.ac, align 1, !alias.scope !2055, !noalias !2056, !noundef !4
  %i.ad = add i8 %.val.i.i, -58
  %.sroa.0.0.i.i.i.i.i = icmp ult i8 %i.ad, -10
  br i1 %.sroa.0.0.i.i.i.i.i, label %_RNCNvCshDScVpnq8df_5uu_pr15as_page_operand0B3_.exit11, label %bb.i

bb.j:                                             ; preds = %bb.f, %_RNvNtNtCs6JMX4GRUq9U_4core5slice6memchr6memchr.exit.i.i
  %i.ae = icmp eq i64 %i.b, 0
  br i1 %i.ae, label %_RNCNvCshDScVpnq8df_5uu_pr15as_page_operand0B3_.exit11, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.af = getelementptr i8, ptr %0, i64 %1
  %.not.not.not.i.not.i758 = icmp eq i64 %1, 1
  br i1 %.not.not.not.i.not.i758, label %_RNCNvCshDScVpnq8df_5uu_pr15as_page_operand0B3_.exit11, label %.lr.ph

bb.l:                                             ; preds = %.lr.ph
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ah, i64 1 ; 2 uses
  %.not.not.not.i.not.i7 = icmp eq ptr %i.ag, %i.af
  br i1 %.not.not.not.i.not.i7, label %_RNCNvCshDScVpnq8df_5uu_pr15as_page_operand0B3_.exit11, label %.lr.ph

.lr.ph:                                           ; preds = %bb.k, %bb.l
  %i.ah = phi ptr [ %i.ag, %bb.l ], [ %i.c, %bb.k ] ; 2 uses
  %.val.i.i8 = load i8, ptr %i.ah, align 1, !alias.scope !2057, !noalias !2058, !noundef !4
  %i.ai = add i8 %.val.i.i8, -58
  %.sroa.0.0.i.i.i.i.i9 = icmp ult i8 %i.ai, -10
  br i1 %.sroa.0.0.i.i.i.i.i9, label %_RNCNvCshDScVpnq8df_5uu_pr15as_page_operand0B3_.exit11, label %bb.l

_RNCNvCshDScVpnq8df_5uu_pr15as_page_operand0B3_.exit: ; preds = %bb.i
  %i.aj = icmp eq i64 %i.b, %i.s
  br i1 %i.aj, label %_RNCNvCshDScVpnq8df_5uu_pr15as_page_operand0B3_.exit11, label %bb.m

bb.m:                                             ; preds = %_RNCNvCshDScVpnq8df_5uu_pr15as_page_operand0B3_.exit
  %i.ak = getelementptr i8, ptr %0, i64 %1
  %i.al = add nuw nsw i64 %i.s, 1
  %.not.not.not.i.not.i1263 = icmp eq i64 %i.al, %1
  br i1 %.not.not.not.i.not.i1263, label %_RNCNvCshDScVpnq8df_5uu_pr15as_page_operand0B3_.exit11, label %.lr.ph64

bb.n:                                             ; preds = %.lr.ph64
  %i.am = getelementptr inbounds nuw i8, ptr %i.an, i64 1 ; 2 uses
  %.not.not.not.i.not.i12 = icmp eq ptr %i.am, %i.ak
  br i1 %.not.not.not.i.not.i12, label %_RNCNvCshDScVpnq8df_5uu_pr15as_page_operand0B3_.exit11, label %.lr.ph64

.lr.ph64:                                         ; preds = %bb.m, %bb.n
  %i.an = phi ptr [ %i.am, %bb.n ], [ %i.z, %bb.m ] ; 2 uses
  %.val.i.i13 = load i8, ptr %i.an, align 1, !alias.scope !2059, !noalias !2060, !noundef !4
  %i.ao = add i8 %.val.i.i13, -58
  %.sroa.0.0.i.i.i.i.i14 = icmp ult i8 %i.ao, -10
  br i1 %.sroa.0.0.i.i.i.i.i14, label %_RNCNvCshDScVpnq8df_5uu_pr15as_page_operand0B3_.exit11, label %bb.n
}

; Function Attrs: nounwind nonlazybind uwtable
define void @_RNvCshDScVpnq8df_5uu_pr18recreate_arguments(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %1, i64 noundef range(i64 0, 384307168202282326) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.6.i = alloca [16 x i8], align 8          ; 4 uses
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [48 x i8], align 8                ; 9 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [48 x i8], align 8                ; 9 uses
  %i.e = alloca [24 x i8], align 8                ; 4 uses
  %i.f = alloca [24 x i8], align 8                ; 3 uses
  %i.g = alloca [24 x i8], align 8                ; 3 uses
  %i.h = alloca [24 x i8], align 8                ; 3 uses
  %i.i = alloca [24 x i8], align 8                ; 4 uses
  %i.j = alloca [48 x i8], align 8                ; 9 uses
  %i.k = alloca [16 x i8], align 8                ; 5 uses
  %i.l = alloca [40 x i8], align 8                ; 8 uses
  %i.m = alloca [24 x i8], align 8                ; 2 uses
  %.sroa.4 = alloca [16 x i8], align 8            ; 4 uses
  %i.n = alloca [24 x i8], align 8                ; 10 uses
  %i.o = alloca [32 x i8], align 8                ; 6 uses
  %i.p = alloca [32 x i8], align 8                ; 6 uses
  %i.q = alloca [32 x i8], align 8                ; 6 uses
  %i.r = alloca [32 x i8], align 8                ; 6 uses
  %i.s = alloca [32 x i8], align 8                ; 6 uses
  %i.t = alloca [32 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  call void @_RNvMs3_NtNtCsipSpXIjCLRi_5regex5regex6stringNtB5_5Regex3new(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.s, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @93, i64 noundef 9) #30
  call void @llvm.experimental.noalias.scope.decl(metadata !2174)
  call void @llvm.experimental.noalias.scope.decl(metadata !2175)
  %i.u = load ptr, ptr %i.s, align 8, !alias.scope !2175, !noundef !4
  %i.v = icmp eq ptr %i.u, null
  br i1 %i.v, label %bb.b, label %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultNtNtNtCsipSpXIjCLRi_5regex5regex6string5RegexNtNtBN_5error5ErrorE6unwrapCshDScVpnq8df_5uu_pr.exit33, !prof !8

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !2176
  %i.w = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.f, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.w, i64 24, i1 false), !noalias !2177
  call void @_RNvNtCs6JMX4GRUq9U_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @161, i64 noundef 43, ptr noundef nonnull %i.f, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @162, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @94) #32, !noalias !2178
  unreachable

_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultNtNtNtCsipSpXIjCLRi_5regex5regex6string5RegexNtNtBN_5error5ErrorE6unwrapCshDScVpnq8df_5uu_pr.exit33: ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.t, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.s, i64 32, i1 false), !alias.scope !2178
end_hunk_1
