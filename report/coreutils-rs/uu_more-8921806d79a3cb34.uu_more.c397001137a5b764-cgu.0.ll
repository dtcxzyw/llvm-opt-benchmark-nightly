Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/coreutils-rs/original/uu_more-8921806d79a3cb34.uu_more.c397001137a5b764-cgu.0?download=true
inline.NumInlined: 797
inline.NumDeleted: 452
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_RNvCsgN7rS7e43TA_7uu_more4more:bb.a

bb.an:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsgN7rS7e43TA_7uu_more.exit47.i
  %.not.i.i.i = icmp slt i64 %.sroa.9.0.copyload.i, 0
  br i1 %.not.i.i.i, label %bb.ap, label %bb.ao, !prof !299

bb.ao:                                            ; preds = %bb.an
  %i.fr = icmp eq i64 %.sroa.9.0.copyload.i, 0
  br i1 %i.fr, label %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsgN7rS7e43TA_7uu_more.exit.thread8.i.i, label %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i.i

_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i.i: ; preds = %bb.ao
  call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #26, !noalias !322
  %i.fs = call noundef ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %.sroa.9.0.copyload.i, i64 noundef range(i64 1, 9) 1) #26, !noalias !322 ; 3 uses
  %i.ft = icmp eq ptr %i.fs, null
  br i1 %i.ft, label %bb.ap, label %bb.aq

.split.i.i:                                       ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsgN7rS7e43TA_7uu_more.exit47.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !320
  store ptr @90, ptr %i.r, align 8, !noalias !320
  %.sroa.42.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store ptr @_RNvXNtNtNtCsfxi9wTnNW09_9crossterm5style5types9attributeNtB2_9AttributeNtNtCs6JMX4GRUq9U_4core3fmt7Display3fmt, ptr %.sroa.42.0..sroa_idx.i.i, align 8, !noalias !320
  %i.fu = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  store ptr %i.s, ptr %i.fu, align 8, !noalias !320
  %.sroa.46.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  store ptr @_RNvXs1i_NtCs6JMX4GRUq9U_4core3fmtReNtB6_7Display3fmtCsgN7rS7e43TA_7uu_more, ptr %.sroa.46.0..sroa_idx.i.i, align 8, !noalias !320
  %i.fv = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  store ptr @91, ptr %i.fv, align 8, !noalias !320
  %.sroa.410.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.r, i64 40
  store ptr @_RNvXNtNtNtCsfxi9wTnNW09_9crossterm5style5types9attributeNtB2_9AttributeNtNtCs6JMX4GRUq9U_4core3fmt7Display3fmt, ptr %.sroa.410.0..sroa_idx.i.i, align 8, !noalias !320
  call void @_RNvNvNtCs7tKScEop1B6_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.v, ptr noundef nonnull @92, ptr noundef nonnull %i.r) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !320
  br label %_RNvMs5_CsgN7rS7e43TA_7uu_moreNtB5_5Pager14highlight_text.exit.i

bb.ap:                                            ; preds = %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i.i, %bb.an
  %.sroa.4.0.ph.i.i = phi i64 [ 1, %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i.i ], [ 0, %bb.an ]
  call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i.i, i64 %.sroa.9.0.copyload.i) #29, !noalias !317
  unreachable

_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsgN7rS7e43TA_7uu_more.exit.thread8.i.i: ; preds = %bb.aq, %bb.ao
  %i.fw = phi ptr [ %i.fs, %bb.aq ], [ inttoptr (i64 1 to ptr), %bb.ao ]
  store i64 %.sroa.9.0.copyload.i, ptr %i.v, align 8, !alias.scope !317, !noalias !325
  %.sroa.413.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  store ptr %i.fw, ptr %.sroa.413.0..sroa_idx.i.i, align 8, !alias.scope !317, !noalias !325
  %.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  store i64 %.sroa.9.0.copyload.i, ptr %.sroa.6.0..sroa_idx.i.i, align 8, !alias.scope !317, !noalias !325
  br label %_RNvMs5_CsgN7rS7e43TA_7uu_moreNtB5_5Pager14highlight_text.exit.i

bb.aq:                                            ; preds = %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.fs, ptr nonnull readonly align 1 %.sroa.6.0.copyload.i, i64 %.sroa.9.0.copyload.i, i1 false), !noalias !317
  br label %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsgN7rS7e43TA_7uu_more.exit.thread8.i.i

_RNvMs5_CsgN7rS7e43TA_7uu_moreNtB5_5Pager14highlight_text.exit.i: ; preds = %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsgN7rS7e43TA_7uu_more.exit.thread8.i.i, %.split.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !296
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !296
  store ptr %i.v, ptr %i.u, align 8, !noalias !296
  %.sroa.431.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  store ptr @_RNvXsq_NtCs7tKScEop1B6_5alloc6stringNtB5_6StringNtNtCs6JMX4GRUq9U_4core3fmt7Display3fmt, ptr %.sroa.431.0..sroa_idx.i, align 8, !noalias !296
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !326
  store ptr %i.cp, ptr %i.q, align 8, !noalias !326
  %i.fx = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 2 uses
  store ptr null, ptr %i.fx, align 8, !noalias !326
  %i.fy = call noundef zeroext i1 @_RNvNtCs6JMX4GRUq9U_4core3fmt5write(ptr noundef nonnull %i.q, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @23, ptr noundef nonnull @102, ptr noundef nonnull %i.u) #26
  %i.fz = load ptr, ptr %i.fx, align 8, !noalias !326, !noundef !4 ; 5 uses
  %.not.i5.i.i = icmp eq ptr %i.fz, null          ; 2 uses
  br i1 %i.fy, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %_RNvMs5_CsgN7rS7e43TA_7uu_moreNtB5_5Pager14highlight_text.exit.i
  br i1 %.not.i5.i.i, label %bb.aw, label %bb.ax, !prof !174

bb.as:                                            ; preds = %_RNvMs5_CsgN7rS7e43TA_7uu_moreNtB5_5Pager14highlight_text.exit.i
  br i1 %.not.i5.i.i, label %bb.az, label %bb.at

bb.at:                                            ; preds = %bb.as
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !326
  %i.ga = ptrtoint ptr %i.fz to i64               ; 2 uses
  %i.gb = and i64 %i.ga, 3
  switch i64 %i.gb, label %default.unreachable [
    i64 2, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgN7rS7e43TA_7uu_more.exit.i.i.i.i
    i64 3, label %bb.au
    i64 0, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgN7rS7e43TA_7uu_more.exit.i.i.i.i
    i64 1, label %bb.av
  ], !prof !149

default.unreachable:                              ; preds = %bb.cx, %bb.at
  unreachable

bb.au:                                            ; preds = %bb.at
  %i.gc = icmp ult ptr %i.fz, inttoptr (i64 188978561024 to ptr)
  %i.gd = and i64 %i.ga, 1095216660480
  %i.ge = icmp ne i64 %i.gd, 1095216660480
  call void @llvm.assume(i1 %i.gc)
  call void @llvm.assume(i1 %i.ge)
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgN7rS7e43TA_7uu_more.exit.i.i.i.i

bb.av:                                            ; preds = %bb.at
  %i.gf = getelementptr i8, ptr %i.fz, i64 -1     ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.gf) ]
  %i.gg = getelementptr inbounds nuw i8, ptr %i.p, i64 8 ; 2 uses
  store ptr %i.gf, ptr %i.gg, align 8, !alias.scope !331, !noalias !326
  store i8 3, ptr %i.p, align 8, !alias.scope !331, !noalias !326
  call void @_RNvXsd_NtNtCs6JMX4GRUq9U_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.gg) #26
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgN7rS7e43TA_7uu_more.exit.i.i.i.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgN7rS7e43TA_7uu_more.exit.i.i.i.i: ; preds = %bb.av, %bb.au, %bb.at, %bb.at
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !326
  br label %bb.az

bb.aw:                                            ; preds = %bb.ar
  call void @_RNvNtCs6JMX4GRUq9U_4core9panicking9panic_fmt(ptr noundef nonnull @24, ptr noundef nonnull inttoptr (i64 173 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @26) #27
  unreachable

bb.ax:                                            ; preds = %bb.ar
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !326
  %i.gh = call { ptr, ptr } @_RNvXsf_NtNtCsh036I4OHgIr_6uucore4mods5errorINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtB5_6UErrorEL_EINtNtCs6JMX4GRUq9U_4core7convert4FromNtNtNtB1A_2io5error5ErrorE4from(ptr noundef nonnull %i.fz) #26 ; 2 uses
  %i.gi = extractvalue { ptr, ptr } %i.gh, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !296
  call void @llvm.experimental.noalias.scope.decl(metadata !334)
  %.val.i50.i = load i64, ptr %i.v, align 8, !range !40, !alias.scope !334, !noalias !296, !noundef !4 ; 2 uses
  %i.gj = icmp eq i64 %.val.i50.i, 0
  br i1 %i.gj, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsgN7rS7e43TA_7uu_more.exit52.i, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.gk = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %.val1.i51.i = load ptr, ptr %i.gk, align 8, !alias.scope !334, !noalias !296, !nonnull !4, !noundef !4
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i51.i, i64 noundef %.val.i50.i, i64 noundef range(i64 1, -9223372036854775807) 1) #26, !noalias !334
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsgN7rS7e43TA_7uu_more.exit52.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsgN7rS7e43TA_7uu_more.exit52.i: ; preds = %bb.ay, %bb.ax
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !296
  br label %bb.bf

bb.az:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgN7rS7e43TA_7uu_more.exit.i.i.i.i, %bb.as
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !326
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !296
  call void @llvm.experimental.noalias.scope.decl(metadata !337)
  %.val.i53.i = load i64, ptr %i.v, align 8, !range !40, !alias.scope !337, !noalias !296, !noundef !4 ; 2 uses
  %i.gl = icmp eq i64 %.val.i53.i, 0
  br i1 %i.gl, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsgN7rS7e43TA_7uu_more.exit55.i, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.gm = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %.val1.i54.i = load ptr, ptr %i.gm, align 8, !alias.scope !337, !noalias !296, !nonnull !4, !noundef !4
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i54.i, i64 noundef %.val.i53.i, i64 noundef range(i64 1, -9223372036854775807) 1) #26, !noalias !337
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsgN7rS7e43TA_7uu_more.exit55.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsgN7rS7e43TA_7uu_more.exit55.i: ; preds = %bb.ba, %bb.az
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !296
  %i.gn = call noundef ptr @_RNvXse_NtNtCs2vKOLqTMYjT_3std2io5stdioNtB5_6StdoutNtNtNtCs6JMX4GRUq9U_4core2io5write5Write5flush(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.cq) #26 ; 2 uses
  %.not36.i = icmp eq ptr %i.gn, null
  br i1 %.not36.i, label %bb.bc, label %bb.bb

bb.bb:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsgN7rS7e43TA_7uu_more.exit55.i
  %i.go = call { ptr, ptr } @_RNvXsf_NtNtCsh036I4OHgIr_6uucore4mods5errorINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtB5_6UErrorEL_EINtNtCs6JMX4GRUq9U_4core7convert4FromNtNtNtB1A_2io5error5ErrorE4from(ptr noundef nonnull %i.gn) #26 ; 2 uses
  %i.gp = extractvalue { ptr, ptr } %i.go, 0
  br label %bb.bf

bb.bc:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsgN7rS7e43TA_7uu_more.exit55.i
  %.val40.i = load i64, ptr %i.cp, align 8, !range !229, !alias.scope !296, !noundef !4
  %i.gq = call fastcc { ptr, ptr } @_RNvMs5_CsgN7rS7e43TA_7uu_moreNtB5_5Pager18wait_for_enter_key(i64 %.val40.i) #26 ; 2 uses
  %i.gr = extractvalue { ptr, ptr } %i.gq, 0      ; 2 uses
  %.not37.i = icmp eq ptr %i.gr, null
  br i1 %.not37.i, label %bb.bd, label %bb.bf

bb.bd:                                            ; preds = %bb.bc
  store i64 0, ptr %i.ce, align 8, !alias.scope !296
  %i.gs = icmp eq i64 %.sroa.0.0.copyload.i, 0
  br i1 %i.gs, label %_RNvMs5_CsgN7rS7e43TA_7uu_moreNtB5_5Pager16handle_from_line.exit.thread, label %bb.be

bb.be:                                            ; preds = %bb.bd
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.6.0.copyload.i, i64 noundef %.sroa.0.0.copyload.i, i64 noundef range(i64 1, -9223372036854775807) 1) #26, !noalias !340
  br label %_RNvMs5_CsgN7rS7e43TA_7uu_moreNtB5_5Pager16handle_from_line.exit.thread

bb.bf:                                            ; preds = %bb.bc, %bb.bb, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsgN7rS7e43TA_7uu_more.exit52.i
  %.sroa.0.0.i = phi ptr [ %i.gi, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsgN7rS7e43TA_7uu_more.exit52.i ], [ %i.gp, %bb.bb ], [ %i.gr, %bb.bc ]
  %.merged109 = phi { ptr, ptr } [ %i.gh, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsgN7rS7e43TA_7uu_more.exit52.i ], [ %i.go, %bb.bb ], [ %i.gq, %bb.bc ]
  %i.gt = icmp eq i64 %.sroa.0.0.copyload.i, 0
  br i1 %i.gt, label %_RNvMs5_CsgN7rS7e43TA_7uu_moreNtB5_5Pager16handle_from_line.exit, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.6.0.copyload.i, i64 noundef %.sroa.0.0.copyload.i, i64 noundef range(i64 1, -9223372036854775807) 1) #26, !noalias !343
  br label %_RNvMs5_CsgN7rS7e43TA_7uu_moreNtB5_5Pager16handle_from_line.exit

_RNvMs5_CsgN7rS7e43TA_7uu_moreNtB5_5Pager16handle_from_line.exit: ; preds = %bb.bf, %bb.bg
  %.not = icmp eq ptr %.sroa.0.0.i, null
  br i1 %.not, label %_RNvMs5_CsgN7rS7e43TA_7uu_moreNtB5_5Pager16handle_from_line.exit.thread, label %bb.dq

_RNvMs5_CsgN7rS7e43TA_7uu_moreNtB5_5Pager16handle_from_line.exit.thread: ; preds = %bb.bd, %bb.q, %bb.be, %_RNvMs5_CsgN7rS7e43TA_7uu_moreNtB5_5Pager16handle_from_line.exit
  call void @llvm.experimental.noalias.scope.decl(metadata !346)
  %i.gu = load i64, ptr %i.ch, align 8, !range !169, !alias.scope !346, !noundef !4
  %.not.i58 = icmp eq i64 %i.gu, -1
  br i1 %.not.i58, label %_RNvMs5_CsgN7rS7e43TA_7uu_moreNtB5_5Pager21handle_pattern_search.exit.thread, label %bb.bh

bb.bh:                                            ; preds = %_RNvMs5_CsgN7rS7e43TA_7uu_moreNtB5_5Pager16handle_from_line.exit.thread
  call void @llvm.experimental.noalias.scope.decl(metadata !349)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !352
  call void @_RNvXs4_NtCs7tKScEop1B6_5alloc6stringNtB5_6StringNtNtCs6JMX4GRUq9U_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ch) #26
  %.sroa.08.0.copyload.i.i = load i64, ptr %i.i, align 8, !noalias !352 ; 2 uses
  %.sroa.49.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %.sroa.49.0.copyload.i.i = load ptr, ptr %.sroa.49.0..sroa_idx.i.i, align 8, !noalias !352 ; 17 uses
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %.sroa.5.0.copyload.i.i = load i64, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !noalias !352
  %.sroa.5.0.copyload.fr.i.i = freeze i64 %.sroa.5.0.copyload.i.i ; 22 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !352
  %i.gv = load i64, ptr %i.ce, align 8, !alias.scope !352, !noundef !4 ; 12 uses
  %i.gw = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 6 uses
  %i.gx = icmp ult i64 %.sroa.5.0.copyload.fr.i.i, 33
  %i.gy = add nsw i64 %.sroa.5.0.copyload.fr.i.i, -1
  %i.gz = call i64 @llvm.usub.sat.i64(i64 range(i64 2, 33) %.sroa.5.0.copyload.fr.i.i, i64 4)
  %i.ha = add nuw nsw i64 %.sroa.5.0.copyload.fr.i.i, 15 ; 3 uses
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.49.0.copyload.i.i, i64 1 ; 2 uses
  %i.hb = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.hc = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.hd = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.he = add nuw nsw i64 %.sroa.5.0.copyload.fr.i.i, 63 ; 2 uses
  switch i64 %.sroa.5.0.copyload.fr.i.i, label %.split.split.i.preheader.i [
    i64 0, label %.split.us.i.i
    i64 1, label %.split.split.us.i.preheader.i
  ]

.split.split.us.i.preheader.i:                    ; preds = %bb.bh
  call void @llvm.experimental.noalias.scope.decl(metadata !353)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !356
  call fastcc void @_RNvMs5_CsgN7rS7e43TA_7uu_moreNtB5_5Pager15read_until_line(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %i.h, ptr noalias nofree noundef nonnull align 8 dereferenceable(184) %i.ah, i64 noundef %i.gv) #26
  %i.hf = load ptr, ptr %i.h, align 8, !noalias !356, !noundef !4 ; 2 uses
  %.not3.i.us27.i83.i = icmp eq ptr %i.hf, null
  %.val7.i.us28.i84.i = load ptr, ptr %i.gw, align 8, !noalias !356 ; 2 uses
  br i1 %.not3.i.us27.i83.i, label %_RNvMs5_CsgN7rS7e43TA_7uu_moreNtB5_5Pager8get_line.exit.us31.i.i, label %.split.split.us.i._crit_edge.i

.split.split.i.preheader.i:                       ; preds = %bb.bh
  call void @llvm.experimental.noalias.scope.decl(metadata !357)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !359
  call fastcc void @_RNvMs5_CsgN7rS7e43TA_7uu_moreNtB5_5Pager15read_until_line(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %i.h, ptr noalias nofree noundef nonnull align 8 dereferenceable(184) %i.ah, i64 noundef %i.gv) #26
  %i.hg = load ptr, ptr %i.h, align 8, !noalias !359, !noundef !4 ; 2 uses
  %.not3.i.i88.i = icmp eq ptr %i.hg, null
  %.val7.i.i89.i = load ptr, ptr %i.gw, align 8, !noalias !359 ; 2 uses
  br i1 %.not3.i.i88.i, label %_RNvMs5_CsgN7rS7e43TA_7uu_moreNtB5_5Pager8get_line.exit.i.lr.ph.i, label %.split.split.i._crit_edge.i

_RNvMs5_CsgN7rS7e43TA_7uu_moreNtB5_5Pager8get_line.exit.i.lr.ph.i: ; preds = %.split.split.i.preheader.i
  %i.hh = ptrtoint ptr %.val7.i.i89.i to i64
  %i.hi = trunc i64 %i.hh to i8                   ; 2 uses
  %i.hj = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !359, !nonnull !4 ; 2 uses
  br i1 %i.gx, label %_RNvMs5_CsgN7rS7e43TA_7uu_moreNtB5_5Pager8get_line.exit.i.us.i.preheader, label %_RNvMs5_CsgN7rS7e43TA_7uu_moreNtB5_5Pager8get_line.exit.i.i

_RNvMs5_CsgN7rS7e43TA_7uu_moreNtB5_5Pager8get_line.exit.i.us.i.preheader: ; preds = %_RNvMs5_CsgN7rS7e43TA_7uu_moreNtB5_5Pager8get_line.exit.i.lr.ph.i
  %invariant.op = sub i64 -15, %.sroa.5.0.copyload.fr.i.i
  br label %_RNvMs5_CsgN7rS7e43TA_7uu_moreNtB5_5Pager8get_line.exit.i.us.i

_RNvMs5_CsgN7rS7e43TA_7uu_moreNtB5_5Pager8get_line.exit.i.us.i: ; preds = %_RNvMs5_CsgN7rS7e43TA_7uu_moreNtB5_5Pager8get_line.exit.i.us.i.preheader, %_RNvXst_NtNtCs6JMX4GRUq9U_4core3str7patternReNtB5_7Pattern15is_contained_in.exit.thread12.i.us.i
  %i.hk = phi i8 [ %i.lv, %_RNvXst_NtNtCs6JMX4GRUq9U_4core3str7patternReNtB5_7Pattern15is_contained_in.exit.thread12.i.us.i ], [ %i.hi, %_RNvMs5_CsgN7rS7e43TA_7uu_moreNtB5_5Pager8get_line.exit.i.us.i.preheader ]
  %i.hl = phi ptr [ %i.lt, %_RNvXst_NtNtCs6JMX4GRUq9U_4core3str7patternReNtB5_7Pattern15is_contained_in.exit.thread12.i.us.i ], [ %i.hj, %_RNvMs5_CsgN7rS7e43TA_7uu_moreNtB5_5Pager8get_line.exit.i.us.i.preheader ]
  %.sroa.01.0.i90.us.i = phi i64 [ %i.lr, %_RNvXst_NtNtCs6JMX4GRUq9U_4core3str7patternReNtB5_7Pattern15is_contained_in.exit.thread12.i.us.i ], [ %i.gv, %_RNvMs5_CsgN7rS7e43TA_7uu_moreNtB5_5Pager8get_line.exit.i.us.i.preheader ] ; 7 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !360)
  %i.hm = load i64, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !362
  %i.hn = trunc nuw i8 %i.hk to i1
  %i.ho = icmp ult i64 %.sroa.01.0.i90.us.i, %i.hm
  %or.cond6.i.i.us.i = select i1 %i.hn, i1 %i.ho, i1 false ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !362
  br i1 %or.cond6.i.i.us.i, label %bb.bi, label %_RNvXst_NtNtCs6JMX4GRUq9U_4core3str7patternReNtB5_7Pattern15is_contained_in.exit.thread.i.i

bb.bi:                                            ; preds = %_RNvMs5_CsgN7rS7e43TA_7uu_moreNtB5_5Pager8get_line.exit.i.us.i
  %i.hp = getelementptr inbounds nuw [24 x i8], ptr %i.hl, i64 %.sroa.01.0.i90.us.i ; 2 uses
  %i.hq = getelementptr inbounds nuw i8, ptr %i.hp, i64 8
  %i.hr = load ptr, ptr %i.hq, align 8, !nonnull !4, !noundef !4 ; 8 uses
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hp, i64 16
  %i.ht = load i64, ptr %i.hs, align 8, !noundef !4 ; 12 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.49.0.copyload.i.i) ]
  call void @llvm.experimental.noalias.scope.decl(metadata !363)
  call void @llvm.experimental.noalias.scope.decl(metadata !366)
  %i.hu = icmp ult i64 %.sroa.5.0.copyload.fr.i.i, %i.ht
  br i1 %i.hu, label %bb.bl, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.hv = icmp eq i64 %.sroa.5.0.copyload.fr.i.i, %i.ht
  br i1 %i.hv, label %bb.bk, label %_RNvXst_NtNtCs6JMX4GRUq9U_4core3str7patternReNtB5_7Pattern15is_contained_in.exit.thread12.i.us.i

bb.bk:                                            ; preds = %bb.bj
  %bcmp.i.i.us.i = call i32 @bcmp(ptr nonnull readonly %.sroa.49.0.copyload.i.i, ptr nonnull readonly %i.hr, i64 %.sroa.5.0.copyload.fr.i.i), !alias.scope !368
  %i.hw = icmp eq i32 %bcmp.i.i.us.i, 0
  %i.hx = zext i1 %i.hw to i8
  br label %_RNvXst_NtNtCs6JMX4GRUq9U_4core3str7patternReNtB5_7Pattern15is_contained_in.exit.i.us.i

bb.bl:                                            ; preds = %bb.bi
  call void @llvm.experimental.noalias.scope.decl(metadata !369)
  call void @llvm.experimental.noalias.scope.decl(metadata !372)
  %i.hy = load i8, ptr %.sroa.49.0.copyload.i.i, align 1, !alias.scope !374, !noalias !375, !noundef !4 ; 3 uses
  switch i64 %.sroa.5.0.copyload.fr.i.i, label %.lr.ph [
    i64 2, label %.thread.i.i.i.us.i
    i64 0, label %_RNvNtNtCs6JMX4GRUq9U_4core3str7pattern13simd_contains.exit.i.i.loopexit.us.i
  ]

.preheader.i.us.i:                                ; preds = %_RNCINvNvNtNtNtNtCs6JMX4GRUq9U_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0CsgN7rS7e43TA_7uu_more.exit.i.i.i.i.us.i
  %i.hz = icmp ult i64 %i.gz, %i.ib
  br i1 %i.hz, label %.lr.ph, label %_RNvNtNtCs6JMX4GRUq9U_4core3str7pattern13simd_contains.exit.i.i.loopexit.us.i

.lr.ph:                                           ; preds = %bb.bl, %.preheader.i.us.i
  %i.ia = phi i64 [ %i.ib, %.preheader.i.us.i ], [ %.sroa.5.0.copyload.fr.i.i, %bb.bl ]
  %i.ib = add nsw i64 %i.ia, -1                   ; 6 uses
  %i.ic = icmp ult i64 %i.ib, %.sroa.5.0.copyload.fr.i.i
  br i1 %i.ic, label %_RNCINvNvNtNtNtNtCs6JMX4GRUq9U_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0CsgN7rS7e43TA_7uu_more.exit.i.i.i.i.us.i, label %.split98.us.i

_RNCINvNvNtNtNtNtCs6JMX4GRUq9U_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0CsgN7rS7e43TA_7uu_more.exit.i.i.i.i.us.i: ; preds = %.lr.ph
  %i.id = getelementptr inbounds nuw i8, ptr %.sroa.49.0.copyload.i.i, i64 %i.ib
  %i.ie = load i8, ptr %i.id, align 1, !alias.scope !374, !noalias !376, !noundef !4 ; 2 uses
  %.not.i.not.i.i.i.i.us.i = icmp eq i8 %i.ie, %i.hy
  br i1 %.not.i.not.i.i.i.i.us.i, label %.preheader.i.us.i, label %bb.bm

bb.bm:                                            ; preds = %_RNCINvNvNtNtNtNtCs6JMX4GRUq9U_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0CsgN7rS7e43TA_7uu_more.exit.i.i.i.i.us.i
  %i.if = icmp ult i64 %i.ht, %i.ha
  br i1 %i.if, label %.lr.ph.split.us.i.i.i.i.us.i, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.ig = insertelement <16 x i8> poison, i8 %i.hy, i64 0
  %i.ih = shufflevector <16 x i8> %i.ig, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.bo

.thread.i.i.i.us.i:                               ; preds = %bb.bl
  %i.ii = icmp ult i64 %i.ht, 17
  br i1 %i.ii, label %.lr.ph.split.us.i.i.i.i.us.i, label %.thread92.i.i.i.us.i

.thread92.i.i.i.us.i:                             ; preds = %.thread.i.i.i.us.i
  %i.ij = insertelement <16 x i8> poison, i8 %i.hy, i64 0
  %i.ik = shufflevector <16 x i8> %i.ij, <16 x i8> poison, <16 x i32> zeroinitializer
  %.pre.i.i.i.us.i = load i8, ptr %.phi.trans.insert.i.i.i.i, align 1, !alias.scope !374, !noalias !375
  br label %bb.bo

bb.bo:                                            ; preds = %.thread92.i.i.i.us.i, %bb.bn
  %i.il = phi i8 [ %.pre.i.i.i.us.i, %.thread92.i.i.i.us.i ], [ %i.ie, %bb.bn ]
  %i.im = phi <16 x i8> [ %i.ik, %.thread92.i.i.i.us.i ], [ %i.ih, %bb.bn ] ; 6 uses
  %storemerge9194.i.i.i.us.i = phi i64 [ 1, %.thread92.i.i.i.us.i ], [ %i.ib, %bb.bn ] ; 6 uses
  %i.in = insertelement <16 x i8> poison, i8 %i.il, i64 0
  %i.io = shufflevector <16 x i8> %i.in, <16 x i8> poison, <16 x i32> zeroinitializer ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !384
  store ptr %i.hr, ptr %i.e, align 8, !noalias !384
  store i64 %i.ht, ptr %i.hb, align 8, !noalias !384
  store ptr %.phi.trans.insert.i.i.i.i, ptr %i.hc, align 8, !noalias !384
  store i64 %i.gy, ptr %i.hd, align 8, !noalias !384
  %.not.i4.i.i.us.i = icmp ult i64 %i.he, %i.ht
  br i1 %.not.i4.i.i.us.i, label %.lr.ph.i7.i.i.us.i, label %.preheader.i5.i.i.us.i

.lr.ph.i7.i.i.us.i:                               ; preds = %bb.bo, %bb.bt
  %.sroa.06.0102.i.i.i.us.i = phi i64 [ %i.ki, %bb.bt ], [ 0, %bb.bo ] ; 6 uses
  %i.ip = getelementptr inbounds nuw i8, ptr %i.hr, i64 %.sroa.06.0102.i.i.i.us.i ; 5 uses
  %.sroa.0.0.copyload.i.i.i.i.us.i = load <16 x i8>, ptr %i.ip, align 1, !alias.scope !375, !noalias !385
  %i.iq = getelementptr inbounds nuw i8, ptr %i.ip, i64 %storemerge9194.i.i.i.us.i
  %.sroa.01.0.copyload.i.i.i.i.us.i = load <16 x i8>, ptr %i.iq, align 1, !alias.scope !375, !noalias !385
  %i.ir = icmp eq <16 x i8> %.sroa.0.0.copyload.i.i.i.i.us.i, %i.im
  %i.is = icmp eq <16 x i8> %.sroa.01.0.copyload.i.i.i.i.us.i, %i.io
  %i.it = and <16 x i1> %i.ir, %i.is
  %i.iu = bitcast <16 x i1> %i.it to i16          ; 2 uses
  %i.iv = getelementptr inbounds nuw i8, ptr %i.ip, i64 16 ; 2 uses
  %.sroa.0.0.copyload.i.1.i.i.i.us.i = load <16 x i8>, ptr %i.iv, align 1, !alias.scope !375, !noalias !385
  %i.iw = getelementptr inbounds nuw i8, ptr %i.iv, i64 %storemerge9194.i.i.i.us.i
  %.sroa.01.0.copyload.i.1.i.i.i.us.i = load <16 x i8>, ptr %i.iw, align 1, !alias.scope !375, !noalias !385
  %i.ix = icmp eq <16 x i8> %.sroa.0.0.copyload.i.1.i.i.i.us.i, %i.im
  %i.iy = icmp eq <16 x i8> %.sroa.01.0.copyload.i.1.i.i.i.us.i, %i.io
  %i.iz = and <16 x i1> %i.ix, %i.iy
  %i.ja = bitcast <16 x i1> %i.iz to i16          ; 2 uses
  %i.jb = getelementptr inbounds nuw i8, ptr %i.ip, i64 32 ; 2 uses
  %.sroa.0.0.copyload.i.2.i.i.i.us.i = load <16 x i8>, ptr %i.jb, align 1, !alias.scope !375, !noalias !385
  %i.jc = getelementptr inbounds nuw i8, ptr %i.jb, i64 %storemerge9194.i.i.i.us.i
  %.sroa.01.0.copyload.i.2.i.i.i.us.i = load <16 x i8>, ptr %i.jc, align 1, !alias.scope !375, !noalias !385
  %i.jd = icmp eq <16 x i8> %.sroa.0.0.copyload.i.2.i.i.i.us.i, %i.im
  %i.je = icmp eq <16 x i8> %.sroa.01.0.copyload.i.2.i.i.i.us.i, %i.io
  %i.jf = and <16 x i1> %i.jd, %i.je
  %i.jg = bitcast <16 x i1> %i.jf to i16          ; 2 uses
  %i.jh = getelementptr inbounds nuw i8, ptr %i.ip, i64 48 ; 2 uses
  %.sroa.0.0.copyload.i.3.i.i.i.us.i = load <16 x i8>, ptr %i.jh, align 1, !alias.scope !375, !noalias !385
  %i.ji = getelementptr inbounds nuw i8, ptr %i.jh, i64 %storemerge9194.i.i.i.us.i
  %.sroa.01.0.copyload.i.3.i.i.i.us.i = load <16 x i8>, ptr %i.ji, align 1, !alias.scope !375, !noalias !385
  %i.jj = icmp eq <16 x i8> %.sroa.0.0.copyload.i.3.i.i.i.us.i, %i.im
  %i.jk = icmp eq <16 x i8> %.sroa.01.0.copyload.i.3.i.i.i.us.i, %i.io
  %i.jl = and <16 x i1> %i.jj, %i.jk
  %i.jm = bitcast <16 x i1> %i.jl to i16          ; 2 uses
  %i.jn = icmp eq i16 %i.iu, 0
  br i1 %i.jn, label %.preheader95.1.i.i.i.us.i, label %bb.bp

bb.bp:                                            ; preds = %.lr.ph.i7.i.i.us.i
  %i.jo = call fastcc noundef zeroext i1 @_RNCNvNtNtCs6JMX4GRUq9U_4core3str7pattern13simd_containss0_0CsgN7rS7e43TA_7uu_more(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.e, i64 noundef %.sroa.06.0102.i.i.i.us.i, i16 noundef %i.iu, i1 noundef zeroext false) #28
  %i.jp = zext i1 %i.jo to i8
  br label %.preheader95.1.i.i.i.us.i

.preheader95.1.i.i.i.us.i:                        ; preds = %bb.bp, %.lr.ph.i7.i.i.us.i
  %.sroa.014.2.i.i.i.us.i = phi i8 [ 0, %.lr.ph.i7.i.i.us.i ], [ %i.jp, %bb.bp ] ; 3 uses
  %i.jq = icmp eq i16 %i.ja, 0
  br i1 %i.jq, label %.preheader95.2.i.i.i.us.i, label %bb.bq

bb.bq:                                            ; preds = %.preheader95.1.i.i.i.us.i
  %i.jr = or disjoint i64 %.sroa.06.0102.i.i.i.us.i, 16
  %i.js = trunc nuw i8 %.sroa.014.2.i.i.i.us.i to i1
  %i.jt = call fastcc noundef zeroext i1 @_RNCNvNtNtCs6JMX4GRUq9U_4core3str7pattern13simd_containss0_0CsgN7rS7e43TA_7uu_more(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.e, i64 noundef %i.jr, i16 noundef %i.ja, i1 noundef zeroext %i.js) #28
  %i.ju = zext i1 %i.jt to i8
  %i.jv = or i8 %.sroa.014.2.i.i.i.us.i, %i.ju
  br label %.preheader95.2.i.i.i.us.i

.preheader95.2.i.i.i.us.i:                        ; preds = %bb.bq, %.preheader95.1.i.i.i.us.i
  %.sroa.014.2.1.i.i.i.us.i = phi i8 [ %.sroa.014.2.i.i.i.us.i, %.preheader95.1.i.i.i.us.i ], [ %i.jv, %bb.bq ] ; 3 uses
  %i.jw = icmp eq i16 %i.jg, 0
  br i1 %i.jw, label %.preheader95.3.i.i.i.us.i, label %bb.br

bb.br:                                            ; preds = %.preheader95.2.i.i.i.us.i
  %i.jx = or disjoint i64 %.sroa.06.0102.i.i.i.us.i, 32
  %i.jy = trunc nuw i8 %.sroa.014.2.1.i.i.i.us.i to i1
  %i.jz = call fastcc noundef zeroext i1 @_RNCNvNtNtCs6JMX4GRUq9U_4core3str7pattern13simd_containss0_0CsgN7rS7e43TA_7uu_more(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.e, i64 noundef %i.jx, i16 noundef %i.jg, i1 noundef zeroext %i.jy) #28
  %i.ka = zext i1 %i.jz to i8
  %i.kb = or i8 %.sroa.014.2.1.i.i.i.us.i, %i.ka
  br label %.preheader95.3.i.i.i.us.i

.preheader95.3.i.i.i.us.i:                        ; preds = %bb.br, %.preheader95.2.i.i.i.us.i
  %.sroa.014.2.2.i.i.i.us.i = phi i8 [ %.sroa.014.2.1.i.i.i.us.i, %.preheader95.2.i.i.i.us.i ], [ %i.kb, %bb.br ] ; 3 uses
  %i.kc = icmp eq i16 %i.jm, 0
  br i1 %i.kc, label %bb.bt, label %bb.bs

bb.bs:                                            ; preds = %.preheader95.3.i.i.i.us.i
  %i.kd = or disjoint i64 %.sroa.06.0102.i.i.i.us.i, 48
  %i.ke = trunc nuw i8 %.sroa.014.2.2.i.i.i.us.i to i1
  %i.kf = call fastcc noundef zeroext i1 @_RNCNvNtNtCs6JMX4GRUq9U_4core3str7pattern13simd_containss0_0CsgN7rS7e43TA_7uu_more(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.e, i64 noundef %i.kd, i16 noundef %i.jm, i1 noundef zeroext %i.ke) #28
  %i.kg = zext i1 %i.kf to i8
  %i.kh = or i8 %.sroa.014.2.2.i.i.i.us.i, %i.kg
  br label %bb.bt

bb.bt:                                            ; preds = %bb.bs, %.preheader95.3.i.i.i.us.i
  %.sroa.014.2.3.i.i.i.us.i = phi i8 [ %.sroa.014.2.2.i.i.i.us.i, %.preheader95.3.i.i.i.us.i ], [ %i.kh, %bb.bs ] ; 2 uses
  %i.ki = add i64 %.sroa.06.0102.i.i.i.us.i, 64   ; 3 uses
  %i.kj = add i64 %i.ki, %i.he
  %i.kk = icmp uge i64 %i.kj, %i.ht
  %i.kl = trunc nuw i8 %.sroa.014.2.3.i.i.i.us.i to i1
  %or.cond.i.i.i.us.i = select i1 %i.kk, i1 true, i1 %i.kl
  br i1 %or.cond.i.i.i.us.i, label %.preheader.i5.i.i.us.i, label %.lr.ph.i7.i.i.us.i

.preheader.i5.i.i.us.i:                           ; preds = %bb.bt, %bb.bo
  %.sroa.014.0.lcssa.i.i.i.us.i = phi i8 [ 0, %bb.bo ], [ %.sroa.014.2.3.i.i.i.us.i, %bb.bt ] ; 2 uses
  %.sroa.06.0.lcssa.i.i.i.us.i = phi i64 [ 0, %bb.bo ], [ %i.ki, %bb.bt ] ; 2 uses
  %i.km = add i64 %.sroa.06.0.lcssa.i.i.i.us.i, %i.ha
  %i.kn = icmp uge i64 %i.km, %i.ht
  %i.ko = trunc nuw i8 %.sroa.014.0.lcssa.i.i.i.us.i to i1 ; 2 uses
  %or.cond3104.i.i.i.us.i = select i1 %i.kn, i1 true, i1 %i.ko
  br i1 %or.cond3104.i.i.i.us.i, label %._crit_edge.i6.i.i.us.i, label %.lr.ph106.i.i.i.us.i

.lr.ph106.i.i.i.us.i:                             ; preds = %.preheader.i5.i.i.us.i, %bb.bv
  %.sroa.06.1105.i.i.i.us.i = phi i64 [ %i.ky, %bb.bv ], [ %.sroa.06.0.lcssa.i.i.i.us.i, %.preheader.i5.i.i.us.i ] ; 3 uses
  %i.kp = getelementptr inbounds nuw i8, ptr %i.hr, i64 %.sroa.06.1105.i.i.i.us.i ; 2 uses
  %.sroa.0.0.copyload.i59.i.i.i.us.i = load <16 x i8>, ptr %i.kp, align 1, !alias.scope !375, !noalias !388
  %i.kq = getelementptr inbounds nuw i8, ptr %i.kp, i64 %storemerge9194.i.i.i.us.i
  %.sroa.01.0.copyload.i60.i.i.i.us.i = load <16 x i8>, ptr %i.kq, align 1, !alias.scope !375, !noalias !388
  %i.kr = icmp eq <16 x i8> %.sroa.0.0.copyload.i59.i.i.i.us.i, %i.im
  %i.ks = icmp eq <16 x i8> %.sroa.01.0.copyload.i60.i.i.i.us.i, %i.io
  %i.kt = and <16 x i1> %i.kr, %i.ks
  %i.ku = bitcast <16 x i1> %i.kt to i16          ; 2 uses
  %i.kv = icmp eq i16 %i.ku, 0
  br i1 %i.kv, label %bb.bv, label %bb.bu

bb.bu:                                            ; preds = %.lr.ph106.i.i.i.us.i
  %i.kw = call fastcc noundef zeroext i1 @_RNCNvNtNtCs6JMX4GRUq9U_4core3str7pattern13simd_containss0_0CsgN7rS7e43TA_7uu_more(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.e, i64 noundef %.sroa.06.1105.i.i.i.us.i, i16 noundef %i.ku, i1 noundef zeroext false) #28
  %i.kx = zext i1 %i.kw to i8
  br label %bb.bv

bb.bv:                                            ; preds = %bb.bu, %.lr.ph106.i.i.i.us.i
  %.sroa.014.4.i.i.i.us.i = phi i8 [ 0, %.lr.ph106.i.i.i.us.i ], [ %i.kx, %bb.bu ] ; 2 uses
  %i.ky = add i64 %.sroa.06.1105.i.i.i.us.i, 16   ; 2 uses
  %i.kz = add i64 %i.ky, %i.ha
  %i.la = icmp uge i64 %i.kz, %i.ht
  %i.lb = trunc nuw i8 %.sroa.014.4.i.i.i.us.i to i1 ; 2 uses
  %or.cond3.i.i.i.us.i = or i1 %i.la, %i.lb
  br i1 %or.cond3.i.i.i.us.i, label %._crit_edge.i6.i.i.us.i, label %.lr.ph106.i.i.i.us.i

._crit_edge.i6.i.i.us.i:                          ; preds = %bb.bv, %.preheader.i5.i.i.us.i
  %.sroa.014.3.lcssa.i.i.i.us.i = phi i8 [ %.sroa.014.0.lcssa.i.i.i.us.i, %.preheader.i5.i.i.us.i ], [ %.sroa.014.4.i.i.i.us.i, %bb.bv ] ; 2 uses
  %.lcssa.i.i.i.us.i = phi i1 [ %i.ko, %.preheader.i5.i.i.us.i ], [ %i.lb, %bb.bv ]
  %.reass.reass.i.reass.us.reass.i.reass.reass.reass = add i64 %i.ht, %invariant.op ; 2 uses
  %i.lc = getelementptr inbounds nuw i8, ptr %i.hr, i64 %.reass.reass.i.reass.us.reass.i.reass.reass.reass ; 2 uses
  %.sroa.0.0.copyload.i57.i.i.i.us.i = load <16 x i8>, ptr %i.lc, align 1, !alias.scope !375, !noalias !391
  %i.ld = getelementptr inbounds nuw i8, ptr %i.lc, i64 %storemerge9194.i.i.i.us.i
  %.sroa.01.0.copyload.i58.i.i.i.us.i = load <16 x i8>, ptr %i.ld, align 1, !alias.scope !375, !noalias !391
  %i.le = icmp eq <16 x i8> %.sroa.0.0.copyload.i57.i.i.i.us.i, %i.im
  %i.lf = icmp eq <16 x i8> %.sroa.01.0.copyload.i58.i.i.i.us.i, %i.io
  %i.lg = and <16 x i1> %i.le, %i.lf
  %i.lh = bitcast <16 x i1> %i.lg to i16          ; 2 uses
  %i.li = icmp eq i16 %i.lh, 0
  br i1 %i.li, label %bb.bx, label %bb.bw

bb.bw:                                            ; preds = %._crit_edge.i6.i.i.us.i
  %i.lj = call fastcc noundef zeroext i1 @_RNCNvNtNtCs6JMX4GRUq9U_4core3str7pattern13simd_containss0_0CsgN7rS7e43TA_7uu_more(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.e, i64 noundef %.reass.reass.i.reass.us.reass.i.reass.reass.reass, i16 noundef %i.lh, i1 noundef zeroext %.lcssa.i.i.i.us.i) #28
  %i.lk = zext i1 %i.lj to i8
  %i.ll = or i8 %.sroa.014.3.lcssa.i.i.i.us.i, %i.lk
  br label %bb.bx

bb.bx:                                            ; preds = %bb.bw, %._crit_edge.i6.i.i.us.i
  %.sroa.014.5.i.i.i.us.i = phi i8 [ %.sroa.014.3.lcssa.i.i.i.us.i, %._crit_edge.i6.i.i.us.i ], [ %i.ll, %bb.bw ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !384
  br label %_RNvXst_NtNtCs6JMX4GRUq9U_4core3str7patternReNtB5_7Pattern15is_contained_in.exit.i.us.i

_RNvXst_NtNtCs6JMX4GRUq9U_4core3str7patternReNtB5_7Pattern15is_contained_in.exit.i.us.i: ; preds = %_RNvNtNtCs6JMX4GRUq9U_4core3str7pattern13simd_contains.exit.i.i.loopexit.us.i, %bb.bx, %bb.bk
  %.sroa.0.0.i7.i.us.i = phi i8 [ %i.hx, %bb.bk ], [ %i.lx, %_RNvNtNtCs6JMX4GRUq9U_4core3str7pattern13simd_contains.exit.i.i.loopexit.us.i ], [ %.sroa.014.5.i.i.i.us.i, %bb.bx ]
  %i.lm = trunc nuw i8 %.sroa.0.0.i7.i.us.i to i1
  br i1 %i.lm, label %_RNvXst_NtNtCs6JMX4GRUq9U_4core3str7patternReNtB5_7Pattern15is_contained_in.exit.thread.i.i, label %_RNvXst_NtNtCs6JMX4GRUq9U_4core3str7patternReNtB5_7Pattern15is_contained_in.exit.thread12.i.us.i

.lr.ph.split.us.i.i.i.i.us.i:                     ; preds = %.thread.i.i.i.us.i, %bb.bm
  %bcmp.i.i.us22.i.i.i.i.us.i = call i32 @bcmp(ptr noundef nonnull readonly dereferenceable(1) %i.hr, ptr noundef nonnull readonly dereferenceable(1) %.sroa.49.0.copyload.i.i, i64 range(i64 2, 33) %.sroa.5.0.copyload.fr.i.i), !alias.scope !394, !noalias !395
  %i.ln = icmp eq i32 %bcmp.i.i.us22.i.i.i.i.us.i, 0
  br i1 %i.ln, label %_RNvXst_NtNtCs6JMX4GRUq9U_4core3str7patternReNtB5_7Pattern15is_contained_in.exit.thread.i.i, label %_RNCINvNvNtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0CsgN7rS7e43TA_7uu_more.exit.backedge.us.i.i.i.i.us.i

_RNCINvNvNtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0CsgN7rS7e43TA_7uu_more.exit.backedge.us.i.i.i.i.us.i: ; preds = %.lr.ph.split.us.i.i.i.i.us.i, %.split.us.i.i.i.i.us.i
  %.pn.i.i.i.us.i = phi ptr [ %i.lp, %.split.us.i.i.i.i.us.i ], [ %i.hr, %.lr.ph.split.us.i.i.i.i.us.i ]
  %.in.i.i.i.us.i = phi i64 [ %i.lo, %.split.us.i.i.i.i.us.i ], [ %i.ht, %.lr.ph.split.us.i.i.i.i.us.i ]
  %i.lo = add i64 %.in.i.i.i.us.i, -1             ; 2 uses
  %.not27.i.i.i.i.us.i = icmp ugt i64 %.sroa.5.0.copyload.fr.i.i, %i.lo
  br i1 %.not27.i.i.i.i.us.i, label %_RNvXst_NtNtCs6JMX4GRUq9U_4core3str7patternReNtB5_7Pattern15is_contained_in.exit.thread12.i.us.i, label %.split.us.i.i.i.i.us.i

.split.us.i.i.i.i.us.i:                           ; preds = %_RNCINvNvNtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0CsgN7rS7e43TA_7uu_more.exit.backedge.us.i.i.i.i.us.i
  %i.lp = getelementptr inbounds nuw i8, ptr %.pn.i.i.i.us.i, i64 1 ; 2 uses
  %bcmp.i.i.us.i.i.i.i.us.i = call i32 @bcmp(ptr noundef nonnull readonly dereferenceable(1) %i.lp, ptr noundef nonnull readonly dereferenceable(1) %.sroa.49.0.copyload.i.i, i64 range(i64 2, 33) %.sroa.5.0.copyload.fr.i.i), !alias.scope !394, !noalias !395
  %i.lq = icmp eq i32 %bcmp.i.i.us.i.i.i.i.us.i, 0
  br i1 %i.lq, label %_RNvXst_NtNtCs6JMX4GRUq9U_4core3str7patternReNtB5_7Pattern15is_contained_in.exit.thread.i.i, label %_RNCINvNvNtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0CsgN7rS7e43TA_7uu_more.exit.backedge.us.i.i.i.i.us.i

_RNvXst_NtNtCs6JMX4GRUq9U_4core3str7patternReNtB5_7Pattern15is_contained_in.exit.thread12.i.us.i: ; preds = %_RNCINvNvNtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0CsgN7rS7e43TA_7uu_more.exit.backedge.us.i.i.i.i.us.i, %_RNvXst_NtNtCs6JMX4GRUq9U_4core3str7patternReNtB5_7Pattern15is_contained_in.exit.i.us.i, %bb.bj
  %i.lr = add i64 %.sroa.01.0.i90.us.i, 1         ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !399)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !401
  call fastcc void @_RNvMs5_CsgN7rS7e43TA_7uu_moreNtB5_5Pager15read_until_line(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %i.h, ptr noalias nofree noundef nonnull align 8 dereferenceable(184) %i.ah, i64 noundef %i.lr) #26
  %i.ls = load ptr, ptr %i.h, align 8, !noalias !401, !noundef !4 ; 2 uses
  %.not3.i.i.us.i = icmp eq ptr %i.ls, null
  %i.lt = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !401, !nonnull !4
  %.val7.i.i.us.i = load ptr, ptr %i.gw, align 8, !noalias !401 ; 2 uses
  %i.lu = ptrtoint ptr %.val7.i.i.us.i to i64
  %i.lv = trunc i64 %i.lu to i8
  br i1 %.not3.i.i.us.i, label %_RNvMs5_CsgN7rS7e43TA_7uu_moreNtB5_5Pager8get_line.exit.i.us.i, label %.split.split.i._crit_edge.i

_RNvNtNtCs6JMX4GRUq9U_4core3str7pattern13simd_contains.exit.i.i.loopexit.us.i: ; preds = %.preheader.i.us.i, %bb.bl
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !402
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !402
  call void @_RNvMsu_NtNtCs6JMX4GRUq9U_4core3str7patternNtB5_11StrSearcher3new(ptr noalias nofree noundef nonnull sret([104 x i8]) align 8 captures(none) dereferenceable(104) %i.f, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.hr, i64 noundef %i.ht, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.49.0.copyload.i.i, i64 noundef %.sroa.5.0.copyload.fr.i.i) #26
  call fastcc void @_RNvXsv_NtNtCs6JMX4GRUq9U_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match(ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.g, ptr noalias nofree noundef align 8 dereferenceable(104) %i.f) #28
  %i.lw = load i64, ptr %i.g, align 8, !range !229, !noalias !402, !noundef !4
  %i.lx = trunc nuw nsw i64 %i.lw to i8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !402
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !402
  br label %_RNvXst_NtNtCs6JMX4GRUq9U_4core3str7patternReNtB5_7Pattern15is_contained_in.exit.i.us.i

.split.us.i.i:                                    ; preds = %bb.bh
  call void @llvm.experimental.noalias.scope.decl(metadata !360)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !362
  call fastcc void @_RNvMs5_CsgN7rS7e43TA_7uu_moreNtB5_5Pager15read_until_line(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %i.h, ptr noalias nofree noundef nonnull align 8 dereferenceable(184) %i.ah, i64 noundef %i.gv) #26
  %i.ly = load ptr, ptr %i.h, align 8, !noalias !362, !noundef !4 ; 3 uses
  %.not3.i.us.i.i = icmp eq ptr %i.ly, null
  %.val7.i.us.i.i = load ptr, ptr %i.gw, align 8, !noalias !362 ; 5 uses
  br i1 %.not3.i.us.i.i, label %_RNvMs5_CsgN7rS7e43TA_7uu_moreNtB5_5Pager8get_line.exit.us.i.i, label %bb.by

bb.by:                                            ; preds = %.split.us.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val7.i.us.i.i) ]
  %i.lz = load ptr, ptr %.val7.i.us.i.i, align 8, !invariant.load !4 ; 2 uses
  %.not.i.i.i.us.i.i = icmp eq ptr %i.lz, null
  br i1 %.not.i.i.i.us.i.i, label %bb.ca, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  call void %i.lz(ptr noundef nonnull %i.ly) #28, !inline_history !403
  br label %bb.ca

bb.ca:                                            ; preds = %bb.bz, %bb.by
  %i.ma = getelementptr inbounds nuw i8, ptr %.val7.i.us.i.i, i64 8
  %i.mb = load i64, ptr %i.ma, align 8, !range !40, !invariant.load !4 ; 2 uses
  %i.mc = icmp eq i64 %i.mb, 0
  br i1 %i.mc, label %_RNvMs5_CsgN7rS7e43TA_7uu_moreNtB5_5Pager8get_line.exit.us.thread.i.i, label %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator10deallocate.exit.i.i.i.i.us.i.i

_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator10deallocate.exit.i.i.i.i.us.i.i: ; preds = %bb.ca
  %i.md = getelementptr inbounds nuw i8, ptr %.val7.i.us.i.i, i64 16
  %i.me = load i64, ptr %i.md, align 8, !range !145, !invariant.load !4
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ly, i64 noundef %i.mb, i64 noundef range(i64 1, -9223372036854775807) %i.me) #26
  br label %_RNvMs5_CsgN7rS7e43TA_7uu_moreNtB5_5Pager8get_line.exit.us.thread.i.i

_RNvMs5_CsgN7rS7e43TA_7uu_moreNtB5_5Pager8get_line.exit.us.thread.i.i: ; preds = %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator10deallocate.exit.i.i.i.i.us.i.i, %bb.ca
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !362
  br label %_RNvXst_NtNtCs6JMX4GRUq9U_4core3str7patternReNtB5_7Pattern15is_contained_in.exit.thread.i.i

_RNvMs5_CsgN7rS7e43TA_7uu_moreNtB5_5Pager8get_line.exit.us.i.i: ; preds = %.split.us.i.i
  %i.mf = ptrtoint ptr %.val7.i.us.i.i to i64
  %i.mg = load i64, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !362
  %i.mh = trunc i64 %i.mf to i1
  %i.mi = icmp ult i64 %i.gv, %i.mg
  %or.cond6.i.us.i.i = select i1 %i.mh, i1 %i.mi, i1 false
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !362
  br i1 %or.cond6.i.us.i.i, label %bb.cb, label %_RNvXst_NtNtCs6JMX4GRUq9U_4core3str7patternReNtB5_7Pattern15is_contained_in.exit.thread.i.i

bb.cb:                                            ; preds = %_RNvMs5_CsgN7rS7e43TA_7uu_moreNtB5_5Pager8get_line.exit.us.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.49.0.copyload.i.i) ]
  call void @llvm.experimental.noalias.scope.decl(metadata !363)
  call void @llvm.experimental.noalias.scope.decl(metadata !366)
  br label %_RNvXst_NtNtCs6JMX4GRUq9U_4core3str7patternReNtB5_7Pattern15is_contained_in.exit.thread.i.i

.split.split.us.i._crit_edge.i:                   ; preds = %_RNvXst_NtNtCs6JMX4GRUq9U_4core3str7patternReNtB5_7Pattern15is_contained_in.exit.thread12.us.i.i, %.split.split.us.i.preheader.i
  %.sroa.01.0.us26.i.lcssa.i = phi i64 [ %i.gv, %.split.split.us.i.preheader.i ], [ %i.nk, %_RNvXst_NtNtCs6JMX4GRUq9U_4core3str7patternReNtB5_7Pattern15is_contained_in.exit.thread12.us.i.i ]
  %.lcssa78.i = phi ptr [ %i.hf, %.split.split.us.i.preheader.i ], [ %i.nl, %_RNvXst_NtNtCs6JMX4GRUq9U_4core3str7patternReNtB5_7Pattern15is_contained_in.exit.thread12.us.i.i ] ; 2 uses
  %.val7.i.us28.i.lcssa.i = phi ptr [ %.val7.i.us28.i84.i, %.split.split.us.i.preheader.i ], [ %.val7.i.us28.i.i, %_RNvXst_NtNtCs6JMX4GRUq9U_4core3str7patternReNtB5_7Pattern15is_contained_in.exit.thread12.us.i.i ] ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val7.i.us28.i.lcssa.i) ]
  %i.mj = load ptr, ptr %.val7.i.us28.i.lcssa.i, align 8, !invariant.load !4 ; 2 uses
  %.not.i.i.i.us29.i.i = icmp eq ptr %i.mj, null
  br i1 %.not.i.i.i.us29.i.i, label %bb.cd, label %bb.cc

bb.cc:                                            ; preds = %.split.split.us.i._crit_edge.i
  call void %i.mj(ptr noundef nonnull %.lcssa78.i) #28, !inline_history !403
  br label %bb.cd

bb.cd:                                            ; preds = %bb.cc, %.split.split.us.i._crit_edge.i
  %i.mk = getelementptr inbounds nuw i8, ptr %.val7.i.us28.i.lcssa.i, i64 8
  %i.ml = load i64, ptr %i.mk, align 8, !range !40, !invariant.load !4 ; 2 uses
  %i.mm = icmp eq i64 %i.ml, 0
  br i1 %i.mm, label %_RNvMs5_CsgN7rS7e43TA_7uu_moreNtB5_5Pager8get_line.exit.us31.thread.i.i, label %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator10deallocate.exit.i.i.i.i.us30.i.i

_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator10deallocate.exit.i.i.i.i.us30.i.i: ; preds = %bb.cd
  %i.mn = getelementptr inbounds nuw i8, ptr %.val7.i.us28.i.lcssa.i, i64 16
  %i.mo = load i64, ptr %i.mn, align 8, !range !145, !invariant.load !4
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.lcssa78.i, i64 noundef %i.ml, i64 noundef range(i64 1, -9223372036854775807) %i.mo) #26
  br label %_RNvMs5_CsgN7rS7e43TA_7uu_moreNtB5_5Pager8get_line.exit.us31.thread.i.i

_RNvMs5_CsgN7rS7e43TA_7uu_moreNtB5_5Pager8get_line.exit.us31.thread.i.i: ; preds = %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator10deallocate.exit.i.i.i.i.us30.i.i, %bb.cd
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !362
  br label %_RNvXst_NtNtCs6JMX4GRUq9U_4core3str7patternReNtB5_7Pattern15is_contained_in.exit.thread.i.i

_RNvMs5_CsgN7rS7e43TA_7uu_moreNtB5_5Pager8get_line.exit.us31.i.i: ; preds = %.split.split.us.i.preheader.i, %_RNvXst_NtNtCs6JMX4GRUq9U_4core3str7patternReNtB5_7Pattern15is_contained_in.exit.thread12.us.i.i
  %.in.in.i = phi ptr [ %.val7.i.us28.i.i, %_RNvXst_NtNtCs6JMX4GRUq9U_4core3str7patternReNtB5_7Pattern15is_contained_in.exit.thread12.us.i.i ], [ %.val7.i.us28.i84.i, %.split.split.us.i.preheader.i ]
  %.sroa.01.0.us26.i85.i = phi i64 [ %i.nk, %_RNvXst_NtNtCs6JMX4GRUq9U_4core3str7patternReNtB5_7Pattern15is_contained_in.exit.thread12.us.i.i ], [ %i.gv, %.split.split.us.i.preheader.i ] ; 7 uses
  %.in.i = ptrtoint ptr %.in.in.i to i64
  %i.mp = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !404, !nonnull !4
  call void @llvm.experimental.noalias.scope.decl(metadata !360)
  %i.mq = load i64, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !362
  %i.mr = trunc i64 %.in.i to i1
  %i.ms = icmp ult i64 %.sroa.01.0.us26.i85.i, %i.mq
  %or.cond6.i.us33.i.i = select i1 %i.mr, i1 %i.ms, i1 false ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !362
  br i1 %or.cond6.i.us33.i.i, label %bb.ce, label %_RNvXst_NtNtCs6JMX4GRUq9U_4core3str7patternReNtB5_7Pattern15is_contained_in.exit.thread.i.i

bb.ce:                                            ; preds = %_RNvMs5_CsgN7rS7e43TA_7uu_moreNtB5_5Pager8get_line.exit.us31.i.i
  %i.mt = getelementptr inbounds nuw [24 x i8], ptr %i.mp, i64 %.sroa.01.0.us26.i85.i ; 2 uses
  %i.mu = getelementptr inbounds nuw i8, ptr %i.mt, i64 8
  %i.mv = load ptr, ptr %i.mu, align 8, !nonnull !4, !noundef !4 ; 3 uses
  %i.mw = getelementptr inbounds nuw i8, ptr %i.mt, i64 16
  %i.mx = load i64, ptr %i.mw, align 8, !noundef !4 ; 5 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.49.0.copyload.i.i) ]
  call void @llvm.experimental.noalias.scope.decl(metadata !363)
  call void @llvm.experimental.noalias.scope.decl(metadata !366)
  %i.my = icmp ugt i64 %i.mx, 1
  br i1 %i.my, label %bb.cg, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  %i.mz = icmp eq i64 %i.mx, 1
  br i1 %i.mz, label %.split80.i.i, label %_RNvXst_NtNtCs6JMX4GRUq9U_4core3str7patternReNtB5_7Pattern15is_contained_in.exit.thread12.us.i.i

.split80.i.i:                                     ; preds = %bb.cf
  %lhsc.i.i = load i8, ptr %.sroa.49.0.copyload.i.i, align 1
  %rhsc.i.i = load i8, ptr %i.mv, align 1
  %i.na = icmp eq i8 %lhsc.i.i, %rhsc.i.i
  br i1 %i.na, label %_RNvXst_NtNtCs6JMX4GRUq9U_4core3str7patternReNtB5_7Pattern15is_contained_in.exit.thread.i.i, label %_RNvXst_NtNtCs6JMX4GRUq9U_4core3str7patternReNtB5_7Pattern15is_contained_in.exit.thread12.us.i.i

bb.cg:                                            ; preds = %bb.ce
  %i.nb = load i8, ptr %.sroa.49.0.copyload.i.i, align 1, !alias.scope !363, !noalias !366, !noundef !4 ; 2 uses
  %i.nc = icmp samesign ult i64 %i.mx, 16
  br i1 %i.nc, label %.lr.ph.i.i.us.i.i, label %_RNvXst_NtNtCs6JMX4GRUq9U_4core3str7patternReNtB5_7Pattern15is_contained_in.exit.us.i.i

_RNvXst_NtNtCs6JMX4GRUq9U_4core3str7patternReNtB5_7Pattern15is_contained_in.exit.us.i.i: ; preds = %bb.cg
  %i.nd = call { i64, i64 } @_RNvNtNtCs6JMX4GRUq9U_4core5slice6memchr14memchr_aligned(i8 noundef %i.nb, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.mv, i64 noundef range(i64 0, -9223372036854775808) %i.mx) #26, !noalias !363
  %i.ne = extractvalue { i64, i64 } %i.nd, 0
  %i.nf = icmp eq i64 %i.ne, 1
  br i1 %i.nf, label %_RNvXst_NtNtCs6JMX4GRUq9U_4core3str7patternReNtB5_7Pattern15is_contained_in.exit.thread.i.i, label %_RNvXst_NtNtCs6JMX4GRUq9U_4core3str7patternReNtB5_7Pattern15is_contained_in.exit.thread12.us.i.i

.lr.ph.i.i.us.i.i:                                ; preds = %bb.cg, %bb.ch
  %.sroa.01.05.i.i.us.i.i = phi i64 [ %i.nj, %bb.ch ], [ 0, %bb.cg ] ; 2 uses
  %i.ng = getelementptr inbounds nuw i8, ptr %i.mv, i64 %.sroa.01.05.i.i.us.i.i
  %i.nh = load i8, ptr %i.ng, align 1, !alias.scope !406, !noalias !363, !noundef !4
  %i.ni = icmp eq i8 %i.nh, %i.nb
  br i1 %i.ni, label %_RNvXst_NtNtCs6JMX4GRUq9U_4core3str7patternReNtB5_7Pattern15is_contained_in.exit.thread.i.i, label %bb.ch

bb.ch:                                            ; preds = %.lr.ph.i.i.us.i.i
  %i.nj = add nuw nsw i64 %.sroa.01.05.i.i.us.i.i, 1 ; 2 uses
  %exitcond.not.i.i.us.i.i = icmp eq i64 %i.nj, %i.mx
  br i1 %exitcond.not.i.i.us.i.i, label %_RNvXst_NtNtCs6JMX4GRUq9U_4core3str7patternReNtB5_7Pattern15is_contained_in.exit.thread12.us.i.i, label %.lr.ph.i.i.us.i.i

_RNvXst_NtNtCs6JMX4GRUq9U_4core3str7patternReNtB5_7Pattern15is_contained_in.exit.thread12.us.i.i: ; preds = %bb.ch, %_RNvXst_NtNtCs6JMX4GRUq9U_4core3str7patternReNtB5_7Pattern15is_contained_in.exit.us.i.i, %.split80.i.i, %bb.cf
  %i.nk = add i64 %.sroa.01.0.us26.i85.i, 1       ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !409)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !410
  call fastcc void @_RNvMs5_CsgN7rS7e43TA_7uu_moreNtB5_5Pager15read_until_line(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %i.h, ptr noalias nofree noundef nonnull align 8 dereferenceable(184) %i.ah, i64 noundef %i.nk) #26
  %i.nl = load ptr, ptr %i.h, align 8, !noalias !410, !noundef !4 ; 2 uses
  %.not3.i.us27.i.i = icmp eq ptr %i.nl, null
  %.val7.i.us28.i.i = load ptr, ptr %i.gw, align 8, !noalias !410 ; 2 uses
  br i1 %.not3.i.us27.i.i, label %_RNvMs5_CsgN7rS7e43TA_7uu_moreNtB5_5Pager8get_line.exit.us31.i.i, label %.split.split.us.i._crit_edge.i

.split.split.i._crit_edge.i:                      ; preds = %_RNvXst_NtNtCs6JMX4GRUq9U_4core3str7patternReNtB5_7Pattern15is_contained_in.exit.thread12.i.i, %_RNvXst_NtNtCs6JMX4GRUq9U_4core3str7patternReNtB5_7Pattern15is_contained_in.exit.thread12.i.us.i, %.split.split.i.preheader.i
  %.sroa.01.0.i.lcssa.i = phi i64 [ %i.gv, %.split.split.i.preheader.i ], [ %i.lr, %_RNvXst_NtNtCs6JMX4GRUq9U_4core3str7patternReNtB5_7Pattern15is_contained_in.exit.thread12.i.us.i ], [ %i.oi, %_RNvXst_NtNtCs6JMX4GRUq9U_4core3str7patternReNtB5_7Pattern15is_contained_in.exit.thread12.i.i ]
  %.lcssa69.i = phi ptr [ %i.hg, %.split.split.i.preheader.i ], [ %i.ls, %_RNvXst_NtNtCs6JMX4GRUq9U_4core3str7patternReNtB5_7Pattern15is_contained_in.exit.thread12.i.us.i ], [ %i.oj, %_RNvXst_NtNtCs6JMX4GRUq9U_4core3str7patternReNtB5_7Pattern15is_contained_in.exit.thread12.i.i ] ; 2 uses
  %.val7.i.i.lcssa.i = phi ptr [ %.val7.i.i89.i, %.split.split.i.preheader.i ], [ %.val7.i.i.us.i, %_RNvXst_NtNtCs6JMX4GRUq9U_4core3str7patternReNtB5_7Pattern15is_contained_in.exit.thread12.i.us.i ], [ %.val7.i.i.i, %_RNvXst_NtNtCs6JMX4GRUq9U_4core3str7patternReNtB5_7Pattern15is_contained_in.exit.thread12.i.i ] ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val7.i.i.lcssa.i) ]
  %i.nm = load ptr, ptr %.val7.i.i.lcssa.i, align 8, !invariant.load !4 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.nm, null
  br i1 %.not.i.i.i.i.i, label %bb.cj, label %bb.ci

bb.ci:                                            ; preds = %.split.split.i._crit_edge.i
  call void %i.nm(ptr noundef nonnull %.lcssa69.i) #28, !inline_history !403
  br label %bb.cj

bb.cj:                                            ; preds = %bb.ci, %.split.split.i._crit_edge.i
  %i.nn = getelementptr inbounds nuw i8, ptr %.val7.i.i.lcssa.i, i64 8
  %i.no = load i64, ptr %i.nn, align 8, !range !40, !invariant.load !4 ; 2 uses
  %i.np = icmp eq i64 %i.no, 0
  br i1 %i.np, label %_RNvMs5_CsgN7rS7e43TA_7uu_moreNtB5_5Pager8get_line.exit.thread.i.i, label %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i

_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i: ; preds = %bb.cj
  %i.nq = getelementptr inbounds nuw i8, ptr %.val7.i.i.lcssa.i, i64 16
  %i.nr = load i64, ptr %i.nq, align 8, !range !145, !invariant.load !4
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.lcssa69.i, i64 noundef %i.no, i64 noundef range(i64 1, -9223372036854775807) %i.nr) #26
  br label %_RNvMs5_CsgN7rS7e43TA_7uu_moreNtB5_5Pager8get_line.exit.thread.i.i

_RNvMs5_CsgN7rS7e43TA_7uu_moreNtB5_5Pager8get_line.exit.thread.i.i: ; preds = %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i, %bb.cj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !362
  br label %_RNvXst_NtNtCs6JMX4GRUq9U_4core3str7patternReNtB5_7Pattern15is_contained_in.exit.thread.i.i

_RNvMs5_CsgN7rS7e43TA_7uu_moreNtB5_5Pager8get_line.exit.i.i: ; preds = %_RNvMs5_CsgN7rS7e43TA_7uu_moreNtB5_5Pager8get_line.exit.i.lr.ph.i, %_RNvXst_NtNtCs6JMX4GRUq9U_4core3str7patternReNtB5_7Pattern15is_contained_in.exit.thread12.i.i
  %i.ns = phi i8 [ %i.om, %_RNvXst_NtNtCs6JMX4GRUq9U_4core3str7patternReNtB5_7Pattern15is_contained_in.exit.thread12.i.i ], [ %i.hi, %_RNvMs5_CsgN7rS7e43TA_7uu_moreNtB5_5Pager8get_line.exit.i.lr.ph.i ]
  %i.nt = phi ptr [ %i.ok, %_RNvXst_NtNtCs6JMX4GRUq9U_4core3str7patternReNtB5_7Pattern15is_contained_in.exit.thread12.i.i ], [ %i.hj, %_RNvMs5_CsgN7rS7e43TA_7uu_moreNtB5_5Pager8get_line.exit.i.lr.ph.i ]
  %.sroa.01.0.i90.i = phi i64 [ %i.oi, %_RNvXst_NtNtCs6JMX4GRUq9U_4core3str7patternReNtB5_7Pattern15is_contained_in.exit.thread12.i.i ], [ %i.gv, %_RNvMs5_CsgN7rS7e43TA_7uu_moreNtB5_5Pager8get_line.exit.i.lr.ph.i ] ; 6 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !360)
  %i.nu = load i64, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !362
  %i.nv = trunc nuw i8 %i.ns to i1
  %i.nw = icmp ult i64 %.sroa.01.0.i90.i, %i.nu
  %or.cond6.i.i.i = select i1 %i.nv, i1 %i.nw, i1 false ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !362
  br i1 %or.cond6.i.i.i, label %bb.ck, label %_RNvXst_NtNtCs6JMX4GRUq9U_4core3str7patternReNtB5_7Pattern15is_contained_in.exit.thread.i.i

bb.ck:                                            ; preds = %_RNvMs5_CsgN7rS7e43TA_7uu_moreNtB5_5Pager8get_line.exit.i.i
  %i.nx = getelementptr inbounds nuw [24 x i8], ptr %i.nt, i64 %.sroa.01.0.i90.i ; 2 uses
end_hunk_0
