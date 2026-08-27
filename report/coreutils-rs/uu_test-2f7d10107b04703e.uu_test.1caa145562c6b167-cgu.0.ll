Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/coreutils-rs/original/uu_test-2f7d10107b04703e.uu_test.1caa145562c6b167-cgu.0?download=true
inline.NumInlined: 491
inline.NumDeleted: 233
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_RNvCs2szWGFz6wmN_7uu_test4eval:bb.a
  %.sroa.0.0.i345 = phi i8 [ %i.ck, %bb.aj ], [ 1, %bb.ai ]
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 %.sroa.0.0.i345, ptr %i.cl, align 8
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aq, %bb.ap, %_RNvXs8_NtNtCs2vKOLqTMYjT_3std3ffi6os_strNtB5_8OsStringNtNtCs6JMX4GRUq9U_4core3cmp9PartialEq2eq.exit347, %_RNvXs8_NtNtCs2vKOLqTMYjT_3std3ffi6os_strNtB5_8OsStringNtNtCs6JMX4GRUq9U_4core3cmp9PartialEq2eq.exit
  store i64 -1, ptr %0, align 8
  %i.cm = icmp eq i64 %.sroa.4639.0.copyload, 0
  br i1 %i.cm, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringECs2szWGFz6wmN_7uu_test.exit348, label %bb.al

bb.al:                                            ; preds = %bb.ak
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5640.0.copyload) ]
  tail call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5640.0.copyload, i64 noundef %.sroa.4639.0.copyload, i64 noundef range(i64 1, -9223372036854775807) 1) #21
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringECs2szWGFz6wmN_7uu_test.exit348

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringECs2szWGFz6wmN_7uu_test.exit348: ; preds = %bb.ak, %bb.al
  %i.cn = icmp eq i64 %.sroa.4634.0.copyload, 0
  br i1 %i.cn, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringECs2szWGFz6wmN_7uu_test.exit349, label %bb.am

bb.am:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringECs2szWGFz6wmN_7uu_test.exit348
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5635.0.copyload) ]
  tail call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5635.0.copyload, i64 noundef %.sroa.4634.0.copyload, i64 noundef range(i64 1, -9223372036854775807) 1) #21
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringECs2szWGFz6wmN_7uu_test.exit349

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringECs2szWGFz6wmN_7uu_test.exit349: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringECs2szWGFz6wmN_7uu_test.exit348, %bb.am
  %i.co = icmp eq i64 %.sroa.5132.sroa.0.0.copyload, 0
  br i1 %i.co, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringECs2szWGFz6wmN_7uu_test.exit, label %bb.an

bb.an:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringECs2szWGFz6wmN_7uu_test.exit349
  tail call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5132.sroa.4.0.copyload, i64 noundef %.sroa.5132.sroa.0.0.copyload, i64 noundef range(i64 1, -9223372036854775807) 1) #21
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringECs2szWGFz6wmN_7uu_test.exit

bb.ao:                                            ; preds = %bb.ad
  %i.cp = load i8, ptr %.sroa.5132.sroa.4.0.copyload, align 1, !noundef !18
  switch i8 %i.cp, label %bb.ag [
    i8 60, label %bb.ap
    i8 62, label %bb.aq
  ]

bb.ap:                                            ; preds = %bb.ao
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5640.0.copyload) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5635.0.copyload) ]
  %spec.store.select.i = tail call i64 @llvm.umin.i64(i64 %.sroa.6641.0.copyload, i64 %.sroa.6636.0.copyload)
  %i.cq = tail call i32 @memcmp(ptr nonnull readonly %.sroa.5640.0.copyload, ptr nonnull readonly %.sroa.5635.0.copyload, i64 %spec.store.select.i), !alias.scope !209 ; 2 uses
  %i.cr = sext i32 %i.cq to i64
  %i.cs = icmp eq i32 %i.cq, 0
  %i.ct = sub i64 %.sroa.6641.0.copyload, %.sroa.6636.0.copyload
  %spec.select.i = select i1 %i.cs, i64 %i.ct, i64 %i.cr
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 8
  %spec.select.i.lobit = lshr i64 %spec.select.i, 63
  %i.cv = trunc nuw nsw i64 %spec.select.i.lobit to i8
  store i8 %i.cv, ptr %i.cu, align 8
  br label %bb.ak

bb.aq:                                            ; preds = %bb.ao
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5640.0.copyload) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5635.0.copyload) ]
  %spec.store.select.i351 = tail call i64 @llvm.umin.i64(i64 %.sroa.6641.0.copyload, i64 %.sroa.6636.0.copyload)
  %i.cw = tail call i32 @memcmp(ptr nonnull readonly %.sroa.5640.0.copyload, ptr nonnull readonly %.sroa.5635.0.copyload, i64 %spec.store.select.i351), !alias.scope !213 ; 2 uses
  %i.cx = sext i32 %i.cw to i64
  %i.cy = icmp eq i32 %i.cw, 0
  %i.cz = sub i64 %.sroa.6641.0.copyload, %.sroa.6636.0.copyload
  %spec.select.i352 = select i1 %i.cy, i64 %i.cz, i64 %i.cx
  %i.da = icmp sgt i64 %spec.select.i352, 0
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.dc = zext i1 %i.da to i8
  store i8 %i.dc, ptr %i.db, align 8
  br label %bb.ak

bb.ar:                                            ; preds = %bb.y
  %i.dd = add nsw i64 %i.z, -2                    ; 4 uses
  store i64 %i.dd, ptr %i.y, align 8
  %i.de = icmp samesign ult i64 %i.dd, %i.ac
  tail call void @llvm.assume(i1 %i.de)
  %i.df = getelementptr inbounds nuw [40 x i8], ptr %i.af, i64 %i.dd ; 4 uses
  %.sroa.0628.0.copyload = load i64, ptr %i.df, align 8
  %.sroa.4629.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.df, i64 8
  %.sroa.4629.0.copyload = load i64, ptr %.sroa.4629.0..sroa_idx, align 8 ; 4 uses
  %.sroa.5630.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.df, i64 16
  %.sroa.5630.0.copyload = load ptr, ptr %.sroa.5630.0..sroa_idx, align 8 ; 5 uses
  %.sroa.6631.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.df, i64 24
  %.sroa.6631.0.copyload = load i64, ptr %.sroa.6631.0..sroa_idx, align 8 ; 2 uses
  %i.dg = icmp eq i64 %.sroa.0628.0.copyload, 3
  br i1 %i.dg, label %bb.as, label %.thread559, !prof !208

.thread559:                                       ; preds = %bb.y, %bb.ar
  tail call void @_RNvNtCs6JMX4GRUq9U_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @4, i64 noundef 14, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @9) #22
  unreachable

bb.as:                                            ; preds = %bb.ar
  %i.dh = icmp eq i64 %i.dd, 0
  br i1 %i.dh, label %.thread561, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.di = add nsw i64 %i.z, -3                    ; 3 uses
  store i64 %i.di, ptr %i.y, align 8
  %i.dj = icmp samesign ult i64 %i.di, %i.ac
  tail call void @llvm.assume(i1 %i.dj)
  %i.dk = getelementptr inbounds nuw [40 x i8], ptr %i.af, i64 %i.di ; 4 uses
  %.sroa.0643.0.copyload = load i64, ptr %i.dk, align 8
  %.sroa.4644.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dk, i64 8
  %.sroa.4644.0.copyload = load i64, ptr %.sroa.4644.0..sroa_idx, align 8 ; 4 uses
  %.sroa.5645.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dk, i64 16
  %.sroa.5645.0.copyload = load ptr, ptr %.sroa.5645.0..sroa_idx, align 8 ; 5 uses
  %.sroa.6646.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dk, i64 24
  %.sroa.6646.0.copyload = load i64, ptr %.sroa.6646.0..sroa_idx, align 8 ; 2 uses
  %i.dl = icmp eq i64 %.sroa.0643.0.copyload, 3
  br i1 %i.dl, label %bb.au, label %.thread561, !prof !208

.thread561:                                       ; preds = %bb.as, %bb.at
  tail call void @_RNvNtCs6JMX4GRUq9U_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @4, i64 noundef 14, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @8) #22
  unreachable

bb.au:                                            ; preds = %bb.at
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5645.0.copyload) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5630.0.copyload) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5132.sroa.4.0.copyload) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !217
  call fastcc void @_RNvMCs2szWGFz6wmN_7uu_testNtB2_7Integer5parse(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.m, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.5645.0.copyload, i64 noundef %.sroa.6646.0.copyload) #21, !noalias !223
  %i.dm = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.dn = load i8, ptr %i.dm, align 8, !range !224, !noalias !217, !noundef !18 ; 2 uses
  %.not.i = icmp eq i8 %i.dn, 2
  br i1 %.not.i, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %bb.au
  %.sroa.0110.0.copyload.i = load ptr, ptr %i.m, align 8, !noalias !217 ; 2 uses
  %.sroa.4111.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %.sroa.4111.0.copyload.i = load i64, ptr %.sroa.4111.0..sroa_idx.i, align 8, !noalias !217 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !217
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !217
  call fastcc void @_RNvMCs2szWGFz6wmN_7uu_testNtB2_7Integer5parse(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.l, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.5630.0.copyload, i64 noundef %.sroa.6631.0.copyload) #21, !noalias !225
  %i.do = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.dp = load i8, ptr %i.do, align 8, !range !224, !noalias !217, !noundef !18 ; 2 uses
  %.not56.i = icmp eq i8 %i.dp, 2
  br i1 %.not56.i, label %bb.be, label %bb.ay

bb.aw:                                            ; preds = %bb.au
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !217
  store i64 1, ptr %i.j, align 8, !noalias !217
  %.sroa.435.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store ptr %.sroa.5645.0.copyload, ptr %.sroa.435.0..sroa_idx.i, align 8, !noalias !217
  %.sroa.5.0..sroa_idx.i355 = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  store i64 %.sroa.6646.0.copyload, ptr %.sroa.5.0..sroa_idx.i355, align 8, !noalias !217
  %i.dq = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  store i8 1, ptr %i.dq, align 8, !noalias !217
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !226
  store i64 0, ptr %i.g, align 8, !noalias !226
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 2 uses
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !226
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 2 uses
  store i64 0, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !noalias !226
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !226
  %i.dr = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store i64 1610612768, ptr %i.dr, align 8, !noalias !226
  store ptr %i.g, ptr %i.f, align 8, !noalias !226
  %i.ds = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr @47, ptr %i.ds, align 8, !noalias !226
  %i.dt = call noundef zeroext i1 @_RNvXs_Cs46VsjAK4zfE_10os_displayNtB4_6QuotedNtNtCs6JMX4GRUq9U_4core3fmt7Display3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.j, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f) #21, !noalias !230
  br i1 %i.dt, label %bb.ax, label %_RNvXsC_NtCs7tKScEop1B6_5alloc6stringNtCs46VsjAK4zfE_10os_display6QuotedNtB5_12SpecToString14spec_to_stringCs2szWGFz6wmN_7uu_test.exit.i, !prof !207

bb.ax:                                            ; preds = %bb.aw
  call void @_RNvNtCs6JMX4GRUq9U_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @48, i64 noundef 55, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @34, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @50) #22, !noalias !230
  unreachable

_RNvXsC_NtCs7tKScEop1B6_5alloc6stringNtCs46VsjAK4zfE_10os_display6QuotedNtB5_12SpecToString14spec_to_stringCs2szWGFz6wmN_7uu_test.exit.i: ; preds = %bb.aw
  %.sroa.0106.0.copyload.i = load ptr, ptr %i.g, align 8, !noalias !231
  %.sroa.4107.0.copyload.i = load i64, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !231
  %.sroa.5108.0.copyload.i = load i8, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !noalias !231
  %.sroa.6109.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.20, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.6109.0..sroa_idx.i, i64 7, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !226
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !226
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !217
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !217
  br label %bb.br

bb.ay:                                            ; preds = %bb.av
  %.sroa.0128.0.copyload.i = load ptr, ptr %i.l, align 8, !noalias !217 ; 2 uses
  %.sroa.4129.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %.sroa.4129.0.copyload.i = load i64, ptr %.sroa.4129.0..sroa_idx.i, align 8, !noalias !217 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !217
  %i.du = trunc nuw i8 %i.dn to i1                ; 2 uses
  %i.dv = trunc nuw i8 %i.dp to i1                ; 2 uses
  br i1 %i.du, label %bb.ba, label %bb.az

bb.az:                                            ; preds = %bb.ay
  br i1 %i.dv, label %_RNvXs_Cs2szWGFz6wmN_7uu_testNtB4_7IntegerNtNtCs6JMX4GRUq9U_4core3cmp3Ord3cmp.exit.i, label %bb.bb

bb.ba:                                            ; preds = %bb.ay
  br i1 %i.dv, label %bb.bb, label %_RNvXs_Cs2szWGFz6wmN_7uu_testNtB4_7IntegerNtNtCs6JMX4GRUq9U_4core3cmp3Ord3cmp.exit.i

bb.bb:                                            ; preds = %bb.ba, %bb.az
  %i.dw = tail call i8 @llvm.ucmp.i8.i64(i64 %.sroa.4111.0.copyload.i, i64 %.sroa.4129.0.copyload.i)
  %i.dx = icmp eq i64 %.sroa.4111.0.copyload.i, %.sroa.4129.0.copyload.i
  br i1 %i.dx, label %bb.bc, label %bb.bd

bb.bc:                                            ; preds = %bb.bb
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0128.0.copyload.i) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0110.0.copyload.i) ]
  %i.dy = tail call i32 @memcmp(ptr nonnull %.sroa.0110.0.copyload.i, ptr nonnull %.sroa.0128.0.copyload.i, i64 %.sroa.4111.0.copyload.i), !noalias !232
  %2 = sext i32 %i.dy to i64
  %i.dz = tail call i8 @llvm.scmp.i8.i64(i64 %2, i64 0)
  br label %bb.bd

bb.bd:                                            ; preds = %bb.bc, %bb.bb
  %.sroa.0.1.i.i = phi i8 [ %i.dz, %bb.bc ], [ %i.dw, %bb.bb ] ; 2 uses
  %switch.offset.i.i = sub nsw i8 0, %.sroa.0.1.i.i
  %spec.select.i353 = select i1 %i.du, i8 %switch.offset.i.i, i8 %.sroa.0.1.i.i
  br label %_RNvXs_Cs2szWGFz6wmN_7uu_testNtB4_7IntegerNtNtCs6JMX4GRUq9U_4core3cmp3Ord3cmp.exit.i

_RNvXs_Cs2szWGFz6wmN_7uu_testNtB4_7IntegerNtNtCs6JMX4GRUq9U_4core3cmp3Ord3cmp.exit.i: ; preds = %bb.bd, %bb.ba, %bb.az
  %.sroa.0.0.i.i = phi i8 [ -1, %bb.ba ], [ %spec.select.i353, %bb.bd ], [ 1, %bb.az ] ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !217
  call void @_RNvNtNtCs6JMX4GRUq9U_4core3str8converts9from_utf8(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.h, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.5132.sroa.4.0.copyload, i64 noundef %.sroa.5132.sroa.5.0.copyload) #21, !noalias !236
  %i.ea = load i64, ptr %i.h, align 8, !range !199, !noalias !217, !noundef !18
  %i.eb = trunc nuw i64 %i.ea to i1
  br i1 %i.eb, label %bb.bg, label %bb.bh

bb.be:                                            ; preds = %bb.av
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !217
  store i64 1, ptr %i.i, align 8, !noalias !217
  %.sroa.445.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr %.sroa.5630.0.copyload, ptr %.sroa.445.0..sroa_idx.i, align 8, !noalias !217
  %.sroa.546.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  store i64 %.sroa.6631.0.copyload, ptr %.sroa.546.0..sroa_idx.i, align 8, !noalias !217
  %i.ec = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  store i8 1, ptr %i.ec, align 8, !noalias !217
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !237
  store i64 0, ptr %i.e, align 8, !noalias !237
  %.sroa.4.0..sroa_idx.i66.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.4.0..sroa_idx.i66.i, align 8, !noalias !237
  %.sroa.5.0..sroa_idx.i67.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  store i64 0, ptr %.sroa.5.0..sroa_idx.i67.i, align 8, !noalias !237
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !237
  %i.ed = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store i64 1610612768, ptr %i.ed, align 8, !noalias !237
  store ptr %i.e, ptr %i.d, align 8, !noalias !237
  %i.ee = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr @47, ptr %i.ee, align 8, !noalias !237
  %i.ef = call noundef zeroext i1 @_RNvXs_Cs46VsjAK4zfE_10os_displayNtB4_6QuotedNtNtCs6JMX4GRUq9U_4core3fmt7Display3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.i, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d) #21, !noalias !241
  br i1 %i.ef, label %bb.bf, label %_RNvXsC_NtCs7tKScEop1B6_5alloc6stringNtCs46VsjAK4zfE_10os_display6QuotedNtB5_12SpecToString14spec_to_stringCs2szWGFz6wmN_7uu_test.exit68.i, !prof !207

bb.bf:                                            ; preds = %bb.be
  call void @_RNvNtCs6JMX4GRUq9U_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @48, i64 noundef 55, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @34, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @50) #22, !noalias !241
  unreachable

_RNvXsC_NtCs7tKScEop1B6_5alloc6stringNtCs46VsjAK4zfE_10os_display6QuotedNtB5_12SpecToString14spec_to_stringCs2szWGFz6wmN_7uu_test.exit68.i: ; preds = %bb.be
  %.sroa.0124.0.copyload.i = load ptr, ptr %i.e, align 8, !noalias !242
  %.sroa.4125.0.copyload.i = load i64, ptr %.sroa.4.0..sroa_idx.i66.i, align 8, !noalias !242
  %.sroa.5126.0.copyload.i = load i8, ptr %.sroa.5.0..sroa_idx.i67.i, align 8, !noalias !242
  %.sroa.6127.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.20, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.6127.0..sroa_idx.i, i64 7, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !237
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !237
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !217
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !217
  br label %bb.br

bb.bg:                                            ; preds = %_RNvXs_Cs2szWGFz6wmN_7uu_testNtB4_7IntegerNtNtCs6JMX4GRUq9U_4core3cmp3Ord3cmp.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !217
  br label %.critedge65.i

bb.bh:                                            ; preds = %_RNvXs_Cs2szWGFz6wmN_7uu_testNtB4_7IntegerNtNtCs6JMX4GRUq9U_4core3cmp3Ord3cmp.exit.i
  %i.eg = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.eh = load ptr, ptr %i.eg, align 8, !noalias !217, !nonnull !18, !noundef !18 ; 12 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.ej = load i64, ptr %i.ei, align 8, !noalias !217, !noundef !18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !217
  %i.ek = icmp eq i64 %i.ej, 3
  br i1 %i.ek, label %bb.bi, label %.critedge65.i

bb.bi:                                            ; preds = %bb.bh
  %i.el = load i16, ptr %i.eh, align 1
  %i.em = xor i16 %i.el, 25901
  %i.en = getelementptr i8, ptr %i.eh, i64 2
  %i.eo = load i8, ptr %i.en, align 1
  %i.ep = zext i8 %i.eo to i16
  %i.eq = xor i16 %i.ep, 113
  %i.er = or i16 %i.em, %i.eq
  %i.es = icmp ne i16 %i.er, 0
  %i.et = zext i1 %i.es to i32
  %i.eu = icmp eq i32 %i.et, 0
  br i1 %i.eu, label %bb.bj, label %bb.bk

bb.bj:                                            ; preds = %bb.bi
  %i.ev = icmp eq i8 %.sroa.0.0.i.i, 0
  %i.ew = zext i1 %i.ev to i8
  br label %bb.bv

bb.bk:                                            ; preds = %bb.bi
  %i.ex = load i16, ptr %i.eh, align 1
  %i.ey = xor i16 %i.ex, 28205
  %i.ez = getelementptr i8, ptr %i.eh, i64 2
  %i.fa = load i8, ptr %i.ez, align 1
  %i.fb = zext i8 %i.fa to i16
  %i.fc = xor i16 %i.fb, 101
  %i.fd = or i16 %i.ey, %i.fc
  %i.fe = icmp ne i16 %i.fd, 0
  %i.ff = zext i1 %i.fe to i32
  %i.fg = icmp eq i32 %i.ff, 0
  br i1 %i.fg, label %bb.bl, label %.critedge.i

bb.bl:                                            ; preds = %bb.bk
  %i.fh = icmp ne i8 %.sroa.0.0.i.i, 0
  %i.fi = zext i1 %i.fh to i8
  br label %bb.bv

.critedge.i:                                      ; preds = %bb.bk
  %i.fj = load i16, ptr %i.eh, align 1
  %i.fk = xor i16 %i.fj, 26413
  %i.fl = getelementptr i8, ptr %i.eh, i64 2
  %i.fm = load i8, ptr %i.fl, align 1
  %i.fn = zext i8 %i.fm to i16
  %i.fo = xor i16 %i.fn, 116
  %i.fp = or i16 %i.fk, %i.fo
  %i.fq = icmp ne i16 %i.fp, 0
  %i.fr = zext i1 %i.fq to i32
  %i.fs = icmp eq i32 %i.fr, 0
  br i1 %i.fs, label %bb.bm, label %.critedge62.i

bb.bm:                                            ; preds = %.critedge.i
  %i.ft = icmp sgt i8 %.sroa.0.0.i.i, 0
  %i.fu = zext i1 %i.ft to i8
  br label %bb.bv

.critedge62.i:                                    ; preds = %.critedge.i
  %i.fv = load i16, ptr %i.eh, align 1
  %i.fw = xor i16 %i.fv, 26413
  %i.fx = getelementptr i8, ptr %i.eh, i64 2
  %i.fy = load i8, ptr %i.fx, align 1
  %i.fz = zext i8 %i.fy to i16
  %i.ga = xor i16 %i.fz, 101
  %i.gb = or i16 %i.fw, %i.ga
  %i.gc = icmp ne i16 %i.gb, 0
  %i.gd = zext i1 %i.gc to i32
  %i.ge = icmp eq i32 %i.gd, 0
  br i1 %i.ge, label %bb.bn, label %.critedge63.i

bb.bn:                                            ; preds = %.critedge62.i
  %i.gf = icmp sgt i8 %.sroa.0.0.i.i, -1
  %i.gg = zext i1 %i.gf to i8
  br label %bb.bv

.critedge63.i:                                    ; preds = %.critedge62.i
  %i.gh = load i16, ptr %i.eh, align 1
  %i.gi = xor i16 %i.gh, 27693
  %i.gj = getelementptr i8, ptr %i.eh, i64 2
  %i.gk = load i8, ptr %i.gj, align 1
  %i.gl = zext i8 %i.gk to i16
  %i.gm = xor i16 %i.gl, 116
  %i.gn = or i16 %i.gi, %i.gm
  %i.go = icmp ne i16 %i.gn, 0
  %i.gp = zext i1 %i.go to i32
  %i.gq = icmp eq i32 %i.gp, 0
  br i1 %i.gq, label %bb.bo, label %.critedge64.i

bb.bo:                                            ; preds = %.critedge63.i
  %.lobit.i = lshr i8 %.sroa.0.0.i.i, 7
  br label %bb.bv

.critedge64.i:                                    ; preds = %.critedge63.i
  %i.gr = load i16, ptr %i.eh, align 1
  %i.gs = xor i16 %i.gr, 27693
  %i.gt = getelementptr i8, ptr %i.eh, i64 2
  %i.gu = load i8, ptr %i.gt, align 1
  %i.gv = zext i8 %i.gu to i16
  %i.gw = xor i16 %i.gv, 101
  %i.gx = or i16 %i.gs, %i.gw
  %i.gy = icmp ne i16 %i.gx, 0
  %i.gz = zext i1 %i.gy to i32
  %i.ha = icmp eq i32 %i.gz, 0
  br i1 %i.ha, label %bb.bq, label %.critedge65.i

.critedge65.i:                                    ; preds = %.critedge64.i, %bb.bh, %bb.bg
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !217
  store i64 1, ptr %i.k, align 8, !noalias !217
  %.sroa.454.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store ptr %.sroa.5132.sroa.4.0.copyload, ptr %.sroa.454.0..sroa_idx.i, align 8, !noalias !217
  %.sroa.555.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  store i64 %.sroa.5132.sroa.5.0.copyload, ptr %.sroa.555.0..sroa_idx.i, align 8, !noalias !217
  %i.hb = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  store i8 1, ptr %i.hb, align 8, !noalias !217
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !243
  store i64 0, ptr %i.c, align 8, !noalias !243
  %.sroa.4.0..sroa_idx.i69.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.4.0..sroa_idx.i69.i, align 8, !noalias !243
  %.sroa.5.0..sroa_idx.i70.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  store i64 0, ptr %.sroa.5.0..sroa_idx.i70.i, align 8, !noalias !243
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !243
  %i.hc = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 1610612768, ptr %i.hc, align 8, !noalias !243
  store ptr %i.c, ptr %i.b, align 8, !noalias !243
  %i.hd = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @47, ptr %i.hd, align 8, !noalias !243
  %i.he = call noundef zeroext i1 @_RNvXs_Cs46VsjAK4zfE_10os_displayNtB4_6QuotedNtNtCs6JMX4GRUq9U_4core3fmt7Display3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.k, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b) #21, !noalias !247
  br i1 %i.he, label %bb.bp, label %_RNvXsC_NtCs7tKScEop1B6_5alloc6stringNtCs46VsjAK4zfE_10os_display6QuotedNtB5_12SpecToString14spec_to_stringCs2szWGFz6wmN_7uu_test.exit71.i, !prof !207

bb.bp:                                            ; preds = %.critedge65.i
  call void @_RNvNtCs6JMX4GRUq9U_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @48, i64 noundef 55, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @34, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @50) #22, !noalias !247
  unreachable

_RNvXsC_NtCs7tKScEop1B6_5alloc6stringNtCs46VsjAK4zfE_10os_display6QuotedNtB5_12SpecToString14spec_to_stringCs2szWGFz6wmN_7uu_test.exit71.i: ; preds = %.critedge65.i
end_hunk_0
begin_hunk_1_@_RNvNtCs2szWGFz6wmN_7uu_test6parser5parse:bb.a

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.m, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringECs2szWGFz6wmN_7uu_test.exit.i.i.i.i.i
  %.sroa.0.04.i.i.i.i.i = phi i64 [ %i.ah, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringECs2szWGFz6wmN_7uu_test.exit.i.i.i.i.i ], [ 0, %bb.m ] ; 2 uses
  %i.ag = getelementptr inbounds nuw [24 x i8], ptr %.val.i.i.i.i, i64 %.sroa.0.04.i.i.i.i.i ; 2 uses
  %i.ah = add nuw nsw i64 %.sroa.0.04.i.i.i.i.i, 1 ; 2 uses
  %.val.i.i.i.i.i = load i64, ptr %i.ag, align 8, !range !70, !alias.scope !1348, !noalias !1347, !noundef !18 ; 2 uses
  %i.ai = icmp eq i64 %.val.i.i.i.i.i, 0
  br i1 %i.ai, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringECs2szWGFz6wmN_7uu_test.exit.i.i.i.i.i, label %bb.n

bb.n:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.aj = getelementptr i8, ptr %i.ag, i64 8
  %.val3.i.i.i.i.i = load ptr, ptr %i.aj, align 8, !alias.scope !1348, !noalias !1347, !nonnull !18, !noundef !18
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i.i.i.i, i64 noundef %.val.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #21, !noalias !1351
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringECs2szWGFz6wmN_7uu_test.exit.i.i.i.i.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringECs2szWGFz6wmN_7uu_test.exit.i.i.i.i.i: ; preds = %bb.n, %.lr.ph.i.i.i.i.i
  %i.ak = icmp eq i64 %i.ah, %i.ae
  br i1 %i.ak, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueSNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringECs2szWGFz6wmN_7uu_test.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueSNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringECs2szWGFz6wmN_7uu_test.exit.i.i.i.i: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringECs2szWGFz6wmN_7uu_test.exit.i.i.i.i.i, %bb.m
  %i.al = load i64, ptr %.sroa.64.0..sroa_idx, align 8, !alias.scope !1347, !noundef !18 ; 2 uses
  %i.am = icmp eq i64 %i.al, 0
  br i1 %i.am, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtCs7tKScEop1B6_5alloc3vec9into_iter8IntoIterNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEECs2szWGFz6wmN_7uu_test.exit.i.i, label %bb.o

bb.o:                                             ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueSNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringECs2szWGFz6wmN_7uu_test.exit.i.i.i.i
  %i.an = load ptr, ptr %.sroa.42.0..sroa_idx, align 8, !alias.scope !1347, !nonnull !18, !noundef !18
  %i.ao = mul nuw i64 %i.al, 24
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %i.an, i64 noundef %i.ao, i64 noundef range(i64 1, -9223372036854775807) 8) #21, !noalias !1347
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtCs7tKScEop1B6_5alloc3vec9into_iter8IntoIterNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEECs2szWGFz6wmN_7uu_test.exit.i.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtCs7tKScEop1B6_5alloc3vec9into_iter8IntoIterNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEECs2szWGFz6wmN_7uu_test.exit.i.i: ; preds = %bb.o, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueSNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringECs2szWGFz6wmN_7uu_test.exit.i.i.i.i
  %.val.i.i = load i64, ptr %i.o, align 8, !range !538, !alias.scope !1352, !noundef !18 ; 2 uses
  %i.ap = icmp sgt i64 %.val.i.i, 0
  br i1 %i.ap, label %bb.p, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters8peekable8PeekableINtNtNtCs7tKScEop1B6_5alloc3vec9into_iter8IntoIterNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEEECs2szWGFz6wmN_7uu_test.exit.i

bb.p:                                             ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtCs7tKScEop1B6_5alloc3vec9into_iter8IntoIterNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEECs2szWGFz6wmN_7uu_test.exit.i.i
  %i.aq = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %.val1.i.i = load ptr, ptr %i.aq, align 8, !alias.scope !1352, !nonnull !18, !noundef !18
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i, i64 noundef %.val.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #21, !noalias !1352
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters8peekable8PeekableINtNtNtCs7tKScEop1B6_5alloc3vec9into_iter8IntoIterNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEEECs2szWGFz6wmN_7uu_test.exit.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters8peekable8PeekableINtNtNtCs7tKScEop1B6_5alloc3vec9into_iter8IntoIterNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEEECs2szWGFz6wmN_7uu_test.exit.i: ; preds = %bb.p, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtCs7tKScEop1B6_5alloc3vec9into_iter8IntoIterNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEECs2szWGFz6wmN_7uu_test.exit.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !1353)
  %.val.i1.i = load ptr, ptr %.sroa.46.0..sroa_idx, align 8, !alias.scope !1356, !nonnull !18, !noundef !18 ; 2 uses
  %.val1.i2.i = load i64, ptr %.sroa.57.0..sroa_idx, align 8, !alias.scope !1356, !noundef !18 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1357)
  %i.ar = icmp eq i64 %.val1.i2.i, 0
  br i1 %i.ar, label %_RNvXsp_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtNtCs2szWGFz6wmN_7uu_test6parser6SymbolENtNtNtCs6JMX4GRUq9U_4core3ops4drop4Drop4dropBJ_.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters8peekable8PeekableINtNtNtCs7tKScEop1B6_5alloc3vec9into_iter8IntoIterNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEEECs2szWGFz6wmN_7uu_test.exit.i, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs2szWGFz6wmN_7uu_test6parser6SymbolEBF_.exit.i.i.i.i
  %.sroa.0.03.i.i.i.i = phi i64 [ %i.at, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs2szWGFz6wmN_7uu_test6parser6SymbolEBF_.exit.i.i.i.i ], [ 0, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters8peekable8PeekableINtNtNtCs7tKScEop1B6_5alloc3vec9into_iter8IntoIterNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEEECs2szWGFz6wmN_7uu_test.exit.i ] ; 2 uses
  %i.as = getelementptr inbounds nuw [40 x i8], ptr %.val.i1.i, i64 %.sroa.0.03.i.i.i.i ; 6 uses
  %i.at = add nuw nsw i64 %.sroa.0.03.i.i.i.i, 1  ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1360)
  %i.au = load i64, ptr %i.as, align 8, !range !162, !alias.scope !1363, !noalias !1356, !noundef !18
  switch i64 %i.au, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs2szWGFz6wmN_7uu_test6parser6SymbolEBF_.exit.i.i.i.i [
    i64 2, label %bb.q
    i64 3, label %bb.r
    i64 4, label %bb.s
    i64 5, label %bb.t
  ]

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringECs2szWGFz6wmN_7uu_test.exit.sink.split.i.i.i.i.i: ; preds = %bb.t, %bb.s, %bb.r, %bb.q
  %.sink7.i.i.i.i.i = phi i64 [ 24, %bb.s ], [ 16, %bb.r ], [ 16, %bb.q ], [ 24, %bb.t ]
  %.val2.i.sink.i.i.i.i.i = phi i64 [ %.val4.i.i.i.i.i.i, %bb.s ], [ %.val.i.i.i.i3.i, %bb.r ], [ %.val2.i.i.i.i.i, %bb.q ], [ %.val2.i.i.i.i.i.i, %bb.t ]
  %i.av = getelementptr inbounds nuw i8, ptr %i.as, i64 %.sink7.i.i.i.i.i
  %.val1.i6.i.i.i.i.i = load ptr, ptr %i.av, align 8, !alias.scope !1363, !noalias !1356, !nonnull !18, !noundef !18
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i6.i.i.i.i.i, i64 noundef %.val2.i.sink.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #21, !noalias !1364
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs2szWGFz6wmN_7uu_test6parser6SymbolEBF_.exit.i.i.i.i

bb.q:                                             ; preds = %.lr.ph.i.i.i.i
  %i.aw = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %.val2.i.i.i.i.i = load i64, ptr %i.aw, align 8, !range !70, !alias.scope !1363, !noalias !1356, !noundef !18 ; 2 uses
  %i.ax = icmp eq i64 %.val2.i.i.i.i.i, 0
  br i1 %i.ax, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs2szWGFz6wmN_7uu_test6parser6SymbolEBF_.exit.i.i.i.i, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringECs2szWGFz6wmN_7uu_test.exit.sink.split.i.i.i.i.i

bb.r:                                             ; preds = %.lr.ph.i.i.i.i
  %i.ay = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %.val.i.i.i.i3.i = load i64, ptr %i.ay, align 8, !range !70, !alias.scope !1363, !noalias !1356, !noundef !18 ; 2 uses
  %i.az = icmp eq i64 %.val.i.i.i.i3.i, 0
  br i1 %i.az, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs2szWGFz6wmN_7uu_test6parser6SymbolEBF_.exit.i.i.i.i, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringECs2szWGFz6wmN_7uu_test.exit.sink.split.i.i.i.i.i

bb.s:                                             ; preds = %.lr.ph.i.i.i.i
  %i.ba = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  %.val4.i.i.i.i.i.i = load i64, ptr %i.ba, align 8, !range !70, !alias.scope !1365, !noalias !1356, !noundef !18 ; 2 uses
  %i.bb = icmp eq i64 %.val4.i.i.i.i.i.i, 0
  br i1 %i.bb, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs2szWGFz6wmN_7uu_test6parser6SymbolEBF_.exit.i.i.i.i, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringECs2szWGFz6wmN_7uu_test.exit.sink.split.i.i.i.i.i

bb.t:                                             ; preds = %.lr.ph.i.i.i.i
  %i.bc = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  %.val2.i.i.i.i.i.i = load i64, ptr %i.bc, align 8, !range !70, !alias.scope !1368, !noalias !1356, !noundef !18 ; 2 uses
  %i.bd = icmp eq i64 %.val2.i.i.i.i.i.i, 0
  br i1 %i.bd, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs2szWGFz6wmN_7uu_test6parser6SymbolEBF_.exit.i.i.i.i, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringECs2szWGFz6wmN_7uu_test.exit.sink.split.i.i.i.i.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs2szWGFz6wmN_7uu_test6parser6SymbolEBF_.exit.i.i.i.i: ; preds = %bb.t, %bb.s, %bb.r, %bb.q, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringECs2szWGFz6wmN_7uu_test.exit.sink.split.i.i.i.i.i, %.lr.ph.i.i.i.i
  %i.be = icmp eq i64 %i.at, %.val1.i2.i
  br i1 %i.be, label %_RNvXsp_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtNtCs2szWGFz6wmN_7uu_test6parser6SymbolENtNtNtCs6JMX4GRUq9U_4core3ops4drop4Drop4dropBJ_.exit.i.i, label %.lr.ph.i.i.i.i

_RNvXsp_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtNtCs2szWGFz6wmN_7uu_test6parser6SymbolENtNtNtCs6JMX4GRUq9U_4core3ops4drop4Drop4dropBJ_.exit.i.i: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs2szWGFz6wmN_7uu_test6parser6SymbolEBF_.exit.i.i.i.i, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters8peekable8PeekableINtNtNtCs7tKScEop1B6_5alloc3vec9into_iter8IntoIterNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEEECs2szWGFz6wmN_7uu_test.exit.i
  %.val2.i.i = load i64, ptr %i.g, align 8, !range !70, !alias.scope !1356, !noundef !18 ; 2 uses
  %i.bf = icmp eq i64 %.val2.i.i, 0
  br i1 %i.bf, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs2szWGFz6wmN_7uu_test6parser6ParserEBF_.exit, label %bb.u

bb.u:                                             ; preds = %_RNvXsp_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtNtCs2szWGFz6wmN_7uu_test6parser6SymbolENtNtNtCs6JMX4GRUq9U_4core3ops4drop4Drop4dropBJ_.exit.i.i
  %i.bg = mul nuw i64 %.val2.i.i, 40
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i1.i, i64 noundef %i.bg, i64 noundef range(i64 1, -9223372036854775807) 8) #21, !noalias !1356
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs2szWGFz6wmN_7uu_test6parser6ParserEBF_.exit

bb.v:                                             ; preds = %_RNvXs4_NtNtCs7tKScEop1B6_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextCs2szWGFz6wmN_7uu_test.exit.i._crit_edge, %bb.h
  %.val1.i.i.i = phi ptr [ %.val1.i.i.i.pre, %_RNvXs4_NtNtCs7tKScEop1B6_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextCs2szWGFz6wmN_7uu_test.exit.i._crit_edge ], [ %i.s, %bb.h ] ; 2 uses
  %.val.i.i.i = phi ptr [ %.val.i.i.i.pre, %_RNvXs4_NtNtCs7tKScEop1B6_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextCs2szWGFz6wmN_7uu_test.exit.i._crit_edge ], [ %i.t, %bb.h ] ; 3 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bh, ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 24, i1 false)
  store i64 -1, ptr %0, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !1371)
  call void @llvm.experimental.noalias.scope.decl(metadata !1372)
  call void @llvm.experimental.noalias.scope.decl(metadata !1373)
  %i.bi = ptrtoint ptr %.val1.i.i.i to i64
  %i.bj = ptrtoint ptr %.val.i.i.i to i64
  %i.bk = sub nuw i64 %i.bi, %i.bj
  %i.bl = udiv exact i64 %i.bk, 24
  call void @llvm.experimental.noalias.scope.decl(metadata !1374)
  %i.bm = icmp eq ptr %.val1.i.i.i, %.val.i.i.i
  br i1 %i.bm, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueSNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringECs2szWGFz6wmN_7uu_test.exit.i.i.i, label %.lr.ph.i.i.i.i10

.lr.ph.i.i.i.i10:                                 ; preds = %bb.v, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringECs2szWGFz6wmN_7uu_test.exit.i.i.i.i
  %.sroa.0.04.i.i.i.i = phi i64 [ %i.bo, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringECs2szWGFz6wmN_7uu_test.exit.i.i.i.i ], [ 0, %bb.v ] ; 2 uses
  %i.bn = getelementptr inbounds nuw [24 x i8], ptr %.val.i.i.i, i64 %.sroa.0.04.i.i.i.i ; 2 uses
  %i.bo = add nuw nsw i64 %.sroa.0.04.i.i.i.i, 1  ; 2 uses
  %.val.i.i.i.i11 = load i64, ptr %i.bn, align 8, !range !70, !alias.scope !1374, !noalias !1322, !noundef !18 ; 2 uses
  %i.bp = icmp eq i64 %.val.i.i.i.i11, 0
  br i1 %i.bp, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringECs2szWGFz6wmN_7uu_test.exit.i.i.i.i, label %bb.w

bb.w:                                             ; preds = %.lr.ph.i.i.i.i10
  %i.bq = getelementptr i8, ptr %i.bn, i64 8
  %.val3.i.i.i.i = load ptr, ptr %i.bq, align 8, !alias.scope !1374, !noalias !1322, !nonnull !18, !noundef !18
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i.i.i, i64 noundef %.val.i.i.i.i11, i64 noundef range(i64 1, -9223372036854775807) 1) #21, !noalias !1377
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringECs2szWGFz6wmN_7uu_test.exit.i.i.i.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringECs2szWGFz6wmN_7uu_test.exit.i.i.i.i: ; preds = %bb.w, %.lr.ph.i.i.i.i10
  %i.br = icmp eq i64 %i.bo, %i.bl
  br i1 %i.br, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueSNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringECs2szWGFz6wmN_7uu_test.exit.i.i.i, label %.lr.ph.i.i.i.i10

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueSNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringECs2szWGFz6wmN_7uu_test.exit.i.i.i: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringECs2szWGFz6wmN_7uu_test.exit.i.i.i.i, %bb.v
  %i.bs = load i64, ptr %.sroa.64.0..sroa_idx, align 8, !alias.scope !1322, !noundef !18 ; 2 uses
  %i.bt = icmp eq i64 %i.bs, 0
  br i1 %i.bt, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtCs7tKScEop1B6_5alloc3vec9into_iter8IntoIterNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEECs2szWGFz6wmN_7uu_test.exit.i, label %bb.x

bb.x:                                             ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueSNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringECs2szWGFz6wmN_7uu_test.exit.i.i.i
  %i.bu = load ptr, ptr %.sroa.42.0..sroa_idx, align 8, !alias.scope !1322, !nonnull !18, !noundef !18
  %i.bv = mul nuw i64 %i.bs, 24
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %i.bu, i64 noundef %i.bv, i64 noundef range(i64 1, -9223372036854775807) 8) #21, !noalias !1322
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtCs7tKScEop1B6_5alloc3vec9into_iter8IntoIterNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEECs2szWGFz6wmN_7uu_test.exit.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtCs7tKScEop1B6_5alloc3vec9into_iter8IntoIterNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEECs2szWGFz6wmN_7uu_test.exit.i: ; preds = %bb.x, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueSNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringECs2szWGFz6wmN_7uu_test.exit.i.i.i
  %.val.i = load i64, ptr %i.o, align 8, !range !538, !alias.scope !1371, !noundef !18 ; 2 uses
  %i.bw = icmp sgt i64 %.val.i, 0
  br i1 %i.bw, label %bb.y, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs2szWGFz6wmN_7uu_test6parser6ParserEBF_.exit

bb.y:                                             ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtCs7tKScEop1B6_5alloc3vec9into_iter8IntoIterNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEECs2szWGFz6wmN_7uu_test.exit.i
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5.sroa.0.0.copyload.i, i64 noundef %.val.i, i64 noundef range(i64 1, -9223372036854775807) 1) #21, !noalias !1371
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs2szWGFz6wmN_7uu_test6parser6ParserEBF_.exit

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs2szWGFz6wmN_7uu_test6parser6ParserEBF_.exit: ; preds = %bb.y, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtCs7tKScEop1B6_5alloc3vec9into_iter8IntoIterNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEECs2szWGFz6wmN_7uu_test.exit.i, %bb.u, %_RNvXsp_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtNtCs2szWGFz6wmN_7uu_test6parser6SymbolENtNtNtCs6JMX4GRUq9U_4core3ops4drop4Drop4dropBJ_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, target_mem: none) uwtable
define noundef range(i8 -1, 2) i8 @_RNvXs0_Cs2szWGFz6wmN_7uu_testNtB5_7IntegerNtNtCs6JMX4GRUq9U_4core3cmp10PartialOrd11partial_cmp(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #4 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1378)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1381)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i8, ptr %i.a, align 8, !range !1383, !alias.scope !1378, !noalias !1381, !noundef !18
  %i.c = trunc nuw i8 %i.b to i1                  ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = load i8, ptr %i.d, align 8, !range !1383, !alias.scope !1381, !noalias !1378, !noundef !18
  %i.f = trunc nuw i8 %i.e to i1                  ; 2 uses
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  br i1 %i.f, label %_RNvXs_Cs2szWGFz6wmN_7uu_testNtB4_7IntegerNtNtCs6JMX4GRUq9U_4core3cmp3Ord3cmp.exit, label %bb.d

bb.c:                                             ; preds = %bb.a
  br i1 %i.f, label %bb.d, label %_RNvXs_Cs2szWGFz6wmN_7uu_testNtB4_7IntegerNtNtCs6JMX4GRUq9U_4core3cmp3Ord3cmp.exit

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load i64, ptr %i.g, align 8, !alias.scope !1378, !noalias !1381, !noundef !18 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.j = load i64, ptr %i.i, align 8, !alias.scope !1381, !noalias !1378, !noundef !18 ; 2 uses
  %i.k = tail call i8 @llvm.ucmp.i8.i64(i64 %i.h, i64 %i.j)
  %i.l = icmp eq i64 %i.h, %i.j
  br i1 %i.l, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.m = load ptr, ptr %1, align 8, !alias.scope !1381, !noalias !1378, !nonnull !18, !noundef !18
  %i.n = load ptr, ptr %0, align 8, !alias.scope !1378, !noalias !1381, !nonnull !18, !noundef !18
  %i.o = tail call i32 @memcmp(ptr nonnull %i.n, ptr nonnull %i.m, i64 %i.h), !noalias !1384
  %2 = sext i32 %i.o to i64
  %i.p = tail call i8 @llvm.scmp.i8.i64(i64 %2, i64 0)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.sroa.0.1.i = phi i8 [ %i.p, %bb.e ], [ %i.k, %bb.d ] ; 2 uses
  %switch.offset.i = sub nsw i8 0, %.sroa.0.1.i
  %spec.select = select i1 %i.c, i8 %switch.offset.i, i8 %.sroa.0.1.i
  br label %_RNvXs_Cs2szWGFz6wmN_7uu_testNtB4_7IntegerNtNtCs6JMX4GRUq9U_4core3cmp3Ord3cmp.exit

_RNvXs_Cs2szWGFz6wmN_7uu_testNtB4_7IntegerNtNtCs6JMX4GRUq9U_4core3cmp3Ord3cmp.exit: ; preds = %bb.f, %bb.b, %bb.c
  %.sroa.0.0.i = phi i8 [ -1, %bb.c ], [ %spec.select, %bb.f ], [ 1, %bb.b ]
  ret i8 %.sroa.0.0.i
}

; Function Attrs: nounwind nonlazybind uwtable
define noundef zeroext i1 @_RNvXs0_NtCs2szWGFz6wmN_7uu_test5errorNtB5_10ParseErrorNtNtCs6JMX4GRUq9U_4core3fmt7Display3fmt(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 8 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [16 x i8], align 8                ; 6 uses
  %i.e = alloca [24 x i8], align 8                ; 10 uses
  %i.f = alloca [24 x i8], align 8                ; 7 uses
  %i.g = alloca [16 x i8], align 8                ; 5 uses
  %i.h = alloca [24 x i8], align 8                ; 8 uses
  %i.i = alloca [24 x i8], align 8                ; 6 uses
  %i.j = alloca [16 x i8], align 8                ; 6 uses
  %i.k = alloca [24 x i8], align 8                ; 10 uses
  %i.l = alloca [24 x i8], align 8                ; 7 uses
  %i.m = alloca [16 x i8], align 8                ; 5 uses
  %i.n = alloca [24 x i8], align 8                ; 8 uses
  %i.o = alloca [24 x i8], align 8                ; 6 uses
  %i.p = alloca [16 x i8], align 8                ; 6 uses
  %i.q = alloca [24 x i8], align 8                ; 10 uses
  %i.r = alloca [24 x i8], align 8                ; 7 uses
  %i.s = alloca [16 x i8], align 8                ; 5 uses
  %i.t = alloca [24 x i8], align 8                ; 8 uses
  %i.u = alloca [24 x i8], align 8                ; 6 uses
  %i.v = alloca [16 x i8], align 8                ; 6 uses
  %i.w = alloca [24 x i8], align 8                ; 10 uses
  %i.x = alloca [24 x i8], align 8                ; 7 uses
  %i.y = alloca [16 x i8], align 8                ; 5 uses
  %i.z = alloca [24 x i8], align 8                ; 8 uses
  %i.aa = alloca [24 x i8], align 8               ; 6 uses
  %i.ab = alloca [16 x i8], align 8               ; 6 uses
  %i.ac = alloca [24 x i8], align 8               ; 10 uses
  %i.ad = alloca [24 x i8], align 8               ; 7 uses
  %i.ae = alloca [16 x i8], align 8               ; 5 uses
  %i.af = alloca [24 x i8], align 8               ; 8 uses
  %i.ag = alloca [24 x i8], align 8               ; 6 uses
  %i.ah = alloca [16 x i8], align 8               ; 6 uses
  %i.ai = alloca [24 x i8], align 8               ; 10 uses
  %i.aj = alloca [24 x i8], align 8               ; 7 uses
  %i.ak = alloca [16 x i8], align 8               ; 5 uses
  %i.al = alloca [24 x i8], align 8               ; 6 uses
  %i.am = load i64, ptr %0, align 8, !range !162, !noundef !18
  switch i64 %i.am, label %default.unreachable791 [
    i64 0, label %bb.b
    i64 1, label %bb.d
    i64 2, label %bb.f
    i64 3, label %bb.h
    i64 4, label %bb.j
    i64 5, label %bb.l
    i64 6, label %bb.n
  ]

default.unreachable791:                           ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.al)
  call void @_RNvNtNtCsh036I4OHgIr_6uucore4mods6locale11get_message(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.al, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @37, i64 noundef 25) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak)
  store ptr %i.al, ptr %i.ak, align 8
  %.sroa.420.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  store ptr @_RNvXsq_NtCs7tKScEop1B6_5alloc6stringNtB5_6StringNtNtCs6JMX4GRUq9U_4core3fmt7Display3fmt, ptr %.sroa.420.0..sroa_idx, align 8
  %i.an = load ptr, ptr %1, align 8, !nonnull !18, !noundef !18
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ap = load ptr, ptr %i.ao, align 8, !nonnull !18, !align !193, !noundef !18
  %i.aq = call noundef zeroext i1 @_RNvNtCs6JMX4GRUq9U_4core3fmt5write(ptr noundef nonnull %i.an, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.ap, ptr noundef nonnull @35, ptr noundef nonnull %i.ak) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak)
  call void @llvm.experimental.noalias.scope.decl(metadata !1385)
  %.val.i = load i64, ptr %i.al, align 8, !range !70, !alias.scope !1385, !noundef !18 ; 2 uses
  %i.ar = icmp eq i64 %.val.i, 0
  br i1 %i.ar, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs2szWGFz6wmN_7uu_test.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.as = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %.val1.i = load ptr, ptr %i.as, align 8, !alias.scope !1385, !nonnull !18, !noundef !18
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i, i64 noundef %.val.i, i64 noundef range(i64 1, -9223372036854775807) 1) #21, !noalias !1385
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs2szWGFz6wmN_7uu_test.exit

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs2szWGFz6wmN_7uu_test.exit: ; preds = %bb.b, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al)
  br label %bb.p

bb.d:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai)
  store i64 0, ptr %i.ai, align 8
  %.sroa.415.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.415.0..sroa_idx, align 8
  %.sroa.516.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  store i64 0, ptr %.sroa.516.0..sroa_idx, align 8
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.au = load ptr, ptr %i.at, align 8, !nonnull !18, !noundef !18
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.aw = load i64, ptr %i.av, align 8, !noundef !18 ; 16 uses
  %.not.i = icmp slt i64 %i.aw, 0
  br i1 %.not.i, label %bb.q, label %bb.e, !prof !1303

bb.e:                                             ; preds = %bb.d
  %i.ax = icmp eq i64 %i.aw, 0
  br i1 %i.ax, label %.thread, label %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i

_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i: ; preds = %bb.e
  tail call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #21, !noalias !1388
  %i.ay = tail call noundef ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.aw, i64 noundef range(i64 1, 9) 1) #21, !noalias !1388 ; 18 uses
  %i.az = icmp eq ptr %i.ay, null
  br i1 %i.az, label %bb.q, label %bb.r

bb.f:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac)
  store i64 0, ptr %i.ac, align 8
  %.sroa.412.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.412.0..sroa_idx, align 8
  %.sroa.513.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  store i64 0, ptr %.sroa.513.0..sroa_idx, align 8
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bb = load ptr, ptr %i.ba, align 8, !nonnull !18, !noundef !18
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bd = load i64, ptr %i.bc, align 8, !noundef !18 ; 16 uses
  %.not.i155 = icmp slt i64 %i.bd, 0
  br i1 %.not.i155, label %bb.aj, label %bb.g, !prof !1303

bb.g:                                             ; preds = %bb.f
  %i.be = icmp eq i64 %i.bd, 0
  br i1 %i.be, label %.thread499, label %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i156

_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i156: ; preds = %bb.g
  tail call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #21, !noalias !1391
  %i.bf = tail call noundef ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.bd, i64 noundef range(i64 1, 9) 1) #21, !noalias !1391 ; 18 uses
  %i.bg = icmp eq ptr %i.bf, null
  br i1 %i.bg, label %bb.aj, label %bb.ak

bb.h:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w)
  store i64 0, ptr %i.w, align 8
  %.sroa.49.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.49.0..sroa_idx, align 8
  %.sroa.510.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  store i64 0, ptr %.sroa.510.0..sroa_idx, align 8
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bi = load ptr, ptr %i.bh, align 8, !nonnull !18, !noundef !18
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bk = load i64, ptr %i.bj, align 8, !noundef !18 ; 16 uses
  %.not.i159 = icmp slt i64 %i.bk, 0
  br i1 %.not.i159, label %bb.bc, label %bb.i, !prof !1303

bb.i:                                             ; preds = %bb.h
  %i.bl = icmp eq i64 %i.bk, 0
  br i1 %i.bl, label %.thread521, label %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i160

_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i160: ; preds = %bb.i
  tail call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #21, !noalias !1394
  %i.bm = tail call noundef ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.bk, i64 noundef range(i64 1, 9) 1) #21, !noalias !1394 ; 18 uses
  %i.bn = icmp eq ptr %i.bm, null
  br i1 %i.bn, label %bb.bc, label %bb.bd

bb.j:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  store i64 0, ptr %i.q, align 8
  %.sroa.46.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.46.0..sroa_idx, align 8
  %.sroa.57.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  store i64 0, ptr %.sroa.57.0..sroa_idx, align 8
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bp = load ptr, ptr %i.bo, align 8, !nonnull !18, !noundef !18
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.br = load i64, ptr %i.bq, align 8, !noundef !18 ; 16 uses
  %.not.i163 = icmp slt i64 %i.br, 0
  br i1 %.not.i163, label %bb.bv, label %bb.k, !prof !1303

bb.k:                                             ; preds = %bb.j
  %i.bs = icmp eq i64 %i.br, 0
  br i1 %i.bs, label %.thread543, label %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i164

_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i164: ; preds = %bb.k
  tail call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #21, !noalias !1397
  %i.bt = tail call noundef ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.br, i64 noundef range(i64 1, 9) 1) #21, !noalias !1397 ; 18 uses
  %i.bu = icmp eq ptr %i.bt, null
  br i1 %i.bu, label %bb.bv, label %bb.bw

bb.l:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  store i64 0, ptr %i.k, align 8
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 8
end_hunk_1
begin_hunk_2_@_RNvXsZ_NtCs7tKScEop1B6_5alloc6stringNtB5_6StringNtNtCs6JMX4GRUq9U_4core3fmt5Write10write_char:bb.a
  %i.af = or disjoint i8 %i.v, -32
  store i8 %i.af, ptr %i.l, align 1, !noalias !1518
  %i.ag = getelementptr inbounds nuw i8, ptr %i.l, i64 1
  store i8 %i.t, ptr %i.ag, align 1, !noalias !1518
  %i.ah = getelementptr inbounds nuw i8, ptr %i.l, i64 2
  store i8 %i.p, ptr %i.ah, align 1, !noalias !1518
  br label %_RNvMNtCs7tKScEop1B6_5alloc6stringNtB2_6String4push.exit

bb.k:                                             ; preds = %bb.i
  store i8 %i.aa, ptr %i.l, align 1, !noalias !1518
  %i.ai = getelementptr inbounds nuw i8, ptr %i.l, i64 1
  store i8 %i.x, ptr %i.ai, align 1, !noalias !1518
  %i.aj = getelementptr inbounds nuw i8, ptr %i.l, i64 2
  store i8 %i.t, ptr %i.aj, align 1, !noalias !1518
  %i.ak = getelementptr inbounds nuw i8, ptr %i.l, i64 3
  store i8 %i.p, ptr %i.ak, align 1, !noalias !1518
  br label %_RNvMNtCs7tKScEop1B6_5alloc6stringNtB2_6String4push.exit

_RNvMNtCs7tKScEop1B6_5alloc6stringNtB2_6String4push.exit: ; preds = %bb.g, %bb.h, %bb.j, %bb.k
  %i.al = add nuw i64 %.sroa.0.0.i, %i.b
  store i64 %i.al, ptr %i.a, align 8, !alias.scope !1518
  ret i1 false
}

; Function Attrs: inlinehint nounwind nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsZ_NtCs7tKScEop1B6_5alloc6stringNtB5_6StringNtNtCs6JMX4GRUq9U_4core3fmt5Write9write_str(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly captures(none) %1, i64 noundef %2) unnamed_addr #5 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1524)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1527)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !1530, !noalias !1533, !noundef !18 ; 5 uses
  %i.c = load i64, ptr %0, align 8, !range !70, !alias.scope !1530, !noalias !1533, !noundef !18
  %i.d = sub i64 %i.c, %i.b
  %i.e = icmp ugt i64 %2, %i.d
  br i1 %i.e, label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCs2szWGFz6wmN_7uu_test.exit.thread.i.i, label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCs2szWGFz6wmN_7uu_test.exit.i.i, !prof !207

_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCs2szWGFz6wmN_7uu_test.exit.thread.i.i: ; preds = %bb.a
  tail call fastcc void @_RINvNvMs2_NtCs7tKScEop1B6_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs2szWGFz6wmN_7uu_test(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.b, i64 noundef %2, i64 noundef 1, i64 noundef 1) #21, !noalias !1533
  %i.f = load i64, ptr %i.a, align 8, !alias.scope !1535, !noalias !1533, !noundef !18 ; 2 uses
  %i.g = icmp sgt i64 %i.f, -1
  tail call void @llvm.assume(i1 %i.g)
  br label %bb.b

_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCs2szWGFz6wmN_7uu_test.exit.i.i: ; preds = %bb.a
  %i.h = icmp sgt i64 %i.b, -1
  tail call void @llvm.assume(i1 %i.h)
  %.not.i.i = icmp eq i64 %2, 0
  br i1 %.not.i.i, label %_RNvMNtCs7tKScEop1B6_5alloc6stringNtB2_6String8push_str.exit, label %bb.b

bb.b:                                             ; preds = %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCs2szWGFz6wmN_7uu_test.exit.i.i, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCs2szWGFz6wmN_7uu_test.exit.thread.i.i
  %i.i = phi i64 [ %i.f, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCs2szWGFz6wmN_7uu_test.exit.thread.i.i ], [ %i.b, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCs2szWGFz6wmN_7uu_test.exit.i.i ] ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !alias.scope !1535, !noalias !1533, !nonnull !18, !noundef !18
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.l, ptr nonnull readonly align 1 %1, i64 %2, i1 false), !noalias !1535
  br label %_RNvMNtCs7tKScEop1B6_5alloc6stringNtB2_6String8push_str.exit

_RNvMNtCs7tKScEop1B6_5alloc6stringNtB2_6String8push_str.exit: ; preds = %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCs2szWGFz6wmN_7uu_test.exit.i.i, %bb.b
  %i.m = phi i64 [ %i.i, %bb.b ], [ %i.b, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCs2szWGFz6wmN_7uu_test.exit.i.i ]
  %i.n = add i64 %i.m, %2
  store i64 %i.n, ptr %i.a, align 8, !alias.scope !1535, !noalias !1533
  ret i1 false
}

; Function Attrs: nounwind nonlazybind uwtable
define noundef zeroext i1 @_RNvXs_NtCs2szWGFz6wmN_7uu_test6parserNtB4_6SymbolNtNtCs6JMX4GRUq9U_4core3fmt7Display3fmt(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(40) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [32 x i8], align 8                ; 7 uses
  %i.c = load i64, ptr %0, align 8, !range !162, !noundef !18
  switch i64 %i.c, label %default.unreachable21 [
    i64 0, label %bb.e
    i64 1, label %bb.b
    i64 2, label %bb.f
    i64 3, label %bb.f
    i64 4, label %bb.c
    i64 5, label %bb.c
    i64 6, label %bb.d
  ]

default.unreachable21:                            ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  br label %bb.e

bb.c:                                             ; preds = %bb.a, %bb.a
  br label %bb.f

bb.d:                                             ; preds = %bb.a
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.f, %bb.d, %bb.b
  %.sroa.5.0 = phi i64 [ 4, %bb.d ], [ 1, %bb.b ], [ %i.m, %bb.f ], [ 1, %bb.a ]
  %.sroa.03.0 = phi ptr [ @52, %bb.d ], [ @29, %bb.b ], [ %i.k, %bb.f ], [ @28, %bb.a ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 1, ptr %i.b, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %.sroa.03.0, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.55.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 %.sroa.5.0, ptr %.sroa.55.0..sroa_idx, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i8 1, ptr %i.d, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.b, ptr %i.a, align 8
  %.sroa.49.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs_Cs46VsjAK4zfE_10os_displayNtB4_6QuotedNtNtCs6JMX4GRUq9U_4core3fmt7Display3fmt, ptr %.sroa.49.0..sroa_idx, align 8
  %i.e = load ptr, ptr %1, align 8, !nonnull !18, !noundef !18
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !nonnull !18, !align !193, !noundef !18
  %i.h = call noundef zeroext i1 @_RNvNtCs6JMX4GRUq9U_4core3fmt5write(ptr noundef nonnull %i.e, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.g, ptr noundef nonnull @35, ptr noundef nonnull %i.a) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret i1 %i.h

bb.f:                                             ; preds = %bb.a, %bb.a, %bb.c
  %.sink = phi i64 [ 16, %bb.c ], [ 8, %bb.a ], [ 8, %bb.a ]
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 %.sink ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !nonnull !18, !noundef !18
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.m = load i64, ptr %i.l, align 8, !noundef !18
  br label %bb.e
}

; Function Attrs: inlinehint nounwind nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsq_NtCs7tKScEop1B6_5alloc6stringNtB5_6StringNtNtCs6JMX4GRUq9U_4core3fmt7Display3fmt(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !18, !noundef !18
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !18
  %i.e = tail call noundef zeroext i1 @_RNvXsi_NtCs6JMX4GRUq9U_4core3fmteNtB5_7Display3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.b, i64 noundef %i.d, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1) #21
  ret i1 %i.e
}

; Function Attrs: nounwind nonlazybind uwtable
define internal noundef zeroext i1 @_RNvYNtNtCs7tKScEop1B6_5alloc6string6StringNtNtCs6JMX4GRUq9U_4core3fmt5Write9write_fmtCs2szWGFz6wmN_7uu_test(ptr noalias nofree noundef align 8 dereferenceable(24) %0, ptr noundef nonnull %1, ptr noundef nonnull %2) unnamed_addr #1 {
_RNvXs_NvNtNtCs6JMX4GRUq9U_4core3fmt5Write9write_fmtQNtNtCs7tKScEop1B6_5alloc6string6StringNtB4_12SpecWriteFmt14spec_write_fmtCs2szWGFz6wmN_7uu_test.exit:
  %i.a = tail call noundef zeroext i1 @_RNvNtCs6JMX4GRUq9U_4core3fmt5write(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @47, ptr noundef nonnull %1, ptr noundef nonnull %2) #21, !inline_history !1536
  ret i1 %i.a
}

; Function Attrs: nounwind nonlazybind uwtable
declare noundef range(i32 0, 10) i32 @rust_eh_personality(i32 noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef) unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #6

; Function Attrs: cold minsize noinline noreturn nounwind nonlazybind optsize uwtable
declare void @_RNvNtCs6JMX4GRUq9U_4core9panicking18panic_bounds_check(i64 noundef, i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #8

; Function Attrs: nounwind nonlazybind uwtable
declare void @_RNvNtNtCs2vKOLqTMYjT_3std3sys2fs16symlink_metadata(ptr dead_on_unwind noalias nofree noundef writable sret([176 x i8]) align 8 captures(address) dereferenceable(176), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #1

; Function Attrs: nounwind nonlazybind uwtable
declare void @_RNvNtNtCs2vKOLqTMYjT_3std3sys2fs8metadata(ptr dead_on_unwind noalias nofree noundef writable sret([176 x i8]) align 8 captures(address) dereferenceable(176), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #1

; Function Attrs: nounwind nonlazybind uwtable
declare void @_RNvXsd_NtNtCs6JMX4GRUq9U_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #1

; Function Attrs: cold noinline noreturn nounwind nonlazybind uwtable
declare void @_RNvNtCs6JMX4GRUq9U_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #9

; Function Attrs: cold minsize noreturn nounwind nonlazybind optsize uwtable
declare void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef range(i64 0, -9223372036854775807), i64) unnamed_addr #10

; Function Attrs: nounwind nonlazybind uwtable
declare noundef i32 @_RNvNtNtNtCsh036I4OHgIr_6uucore8features7process4unix7geteuid() unnamed_addr #1

; Function Attrs: nounwind nonlazybind uwtable
declare noundef i32 @_RNvNtNtNtCsh036I4OHgIr_6uucore8features7process4unix7getegid() unnamed_addr #1

; Function Attrs: nounwind nonlazybind uwtable
declare void @_RNvNvNtCs7tKScEop1B6_5alloc3fmt6format12format_inner(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noundef nonnull, ptr noundef nonnull) unnamed_addr #1

; Function Attrs: nounwind nonlazybind uwtable
declare void @_RNvNtNtCs6JMX4GRUq9U_4core3str8converts9from_utf8(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind nonlazybind willreturn memory(argmem: read)
declare i32 @memcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #11

; Function Attrs: cold noinline noreturn nounwind nonlazybind uwtable
declare void @_RNvNtCs6JMX4GRUq9U_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #9

; Function Attrs: nounwind nonlazybind uwtable
declare void @_RNvMsm_NtCs2vKOLqTMYjT_3std2fsNtB5_8Metadata8accessed(ptr dead_on_unwind noalias nofree noundef writable sret([16 x i8]) align 8 captures(none) dereferenceable(16), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(176)) unnamed_addr #1

; Function Attrs: nounwind nonlazybind uwtable
declare void @_RNvMsm_NtCs2vKOLqTMYjT_3std2fsNtB5_8Metadata8modified(ptr dead_on_unwind noalias nofree noundef writable sret([16 x i8]) align 8 captures(none) dereferenceable(16), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(176)) unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare range(i8 -1, 2) i8 @llvm.scmp.i8.i64(i64, i64) #12

; Function Attrs: nounwind nonlazybind uwtable
declare noundef i32 @isatty(i32 noundef) unnamed_addr #1

; Function Attrs: nounwind nonlazybind uwtable
declare { ptr, i64 } @_RNvCsh036I4OHgIr_6uucore9util_name() unnamed_addr #1

; Function Attrs: nounwind nonlazybind uwtable
declare void @_RNvCsh036I4OHgIr_6uucore23localized_help_template(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #1

; Function Attrs: nounwind nonlazybind uwtable
declare void @_RNvNtNtCsh036I4OHgIr_6uucore4mods6locale11get_message(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #1

; Function Attrs: nounwind nonlazybind uwtable
declare void @_RNvCsh036I4OHgIr_6uucore12format_usage(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #1

; Function Attrs: cold noinline noreturn nounwind nonlazybind uwtable
declare void @_RNvNtCs6JMX4GRUq9U_4core3str16slice_error_fail(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, i64 noundef, i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #9

; Function Attrs: nounwind nonlazybind uwtable
declare noundef zeroext i1 @_RNvXNtNtCs6JMX4GRUq9U_4core2io5errorNtB2_5ErrorNtNtB6_3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: cold noinline noreturn nounwind nonlazybind uwtable
declare void @_RNvNtCs6JMX4GRUq9U_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #9

; Function Attrs: nounwind nonlazybind allockind("free") uwtable
declare void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr allocptr noundef nonnull captures(address), i64 noundef, i64 noundef range(i64 1, -9223372036854775807)) unnamed_addr #13

; Function Attrs: nounwind nonlazybind allockind("realloc,aligned") allocsize(3) uwtable
declare noalias noundef ptr @_RNvCsjSVV5GABoor_7___rustc14___rust_realloc(ptr allocptr noundef nonnull, i64 noundef, i64 allocalign noundef range(i64 1, -9223372036854775807), i64 noundef) unnamed_addr #14

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #15

; Function Attrs: nounwind nonlazybind uwtable
declare void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() unnamed_addr #1

; Function Attrs: nounwind nonlazybind allockind("alloc,uninitialized,aligned") allocsize(0) uwtable
declare noalias noundef ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef, i64 allocalign noundef range(i64 1, -9223372036854775807)) unnamed_addr #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #12

; Function Attrs: noinline nounwind nonlazybind uwtable
declare void @_RNvMs4_NtCs7tKScEop1B6_5alloc7raw_vecINtB5_6RawVecTINtNtB7_6borrow3CoweENtNtCsiMbvvWBbXLn_13fluent_bundle5types11FluentValueEE8grow_oneCsh036I4OHgIr_6uucore(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #17

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i32, i1 } @llvm.smul.with.overflow.i32(i32, i32) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i32, i1 } @llvm.ssub.with.overflow.i32(i32, i32) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i32, i1 } @llvm.sadd.with.overflow.i32(i32, i32) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.smul.with.overflow.i64(i64, i64) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.ssub.with.overflow.i64(i64, i64) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.sadd.with.overflow.i64(i64, i64) #12

; Function Attrs: nounwind nonlazybind uwtable
declare noundef zeroext i1 @_RNvNtCs6JMX4GRUq9U_4core3fmt5write(ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48), ptr noundef nonnull, ptr noundef nonnull) unnamed_addr #1

; Function Attrs: noinline nounwind nonlazybind uwtable
declare void @_RNvXs2_NtNtCs6JMX4GRUq9U_4core3num11float_parsedNtNtNtB9_3str6traits7FromStr8from_str(ptr dead_on_unwind noalias nofree noundef writable sret([16 x i8]) align 8 captures(address) dereferenceable(16), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #17

; Function Attrs: nounwind nonlazybind uwtable
declare void @_RNvNtNtCsh036I4OHgIr_6uucore4mods6locale21get_message_with_args(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24)) unnamed_addr #1

; Function Attrs: nounwind nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs_Cs46VsjAK4zfE_10os_displayNtB4_6QuotedNtNtCs6JMX4GRUq9U_4core3fmt7Display3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nounwind nonlazybind uwtable
declare noundef zeroext i1 @_RNvMsa_NtCs6JMX4GRUq9U_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare range(i8 -1, 2) i8 @llvm.ucmp.i8.i64(i64, i64) #12

; Function Attrs: nounwind nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsi_NtCs6JMX4GRUq9U_4core3fmteNtB5_7Display3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind nonlazybind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #12

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #12

attributes #0 = { nofree norecurse nosync nounwind nonlazybind memory(read, inaccessiblemem: write, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #1 = { nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #2 = { cold nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #3 = { cold noinline nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #5 = { inlinehint nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #8 = { cold minsize noinline noreturn nounwind nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #9 = { cold noinline noreturn nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #10 = { cold minsize noreturn nounwind nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #11 = { mustprogress nocallback nofree nosync nounwind nonlazybind willreturn memory(argmem: read) }
attributes #12 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #13 = { nounwind nonlazybind allockind("free") uwtable "alloc-family"="__rust_alloc" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #14 = { nounwind nonlazybind allockind("realloc,aligned") allocsize(3) uwtable "alloc-family"="__rust_alloc" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #15 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #16 = { nounwind nonlazybind allockind("alloc,uninitialized,aligned") allocsize(0) uwtable "alloc-family"="__rust_alloc" "alloc-variant-zeroed"="_RNvCsjSVV5GABoor_7___rustc19___rust_alloc_zeroed" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #17 = { noinline nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #18 = { nocallback nofree nosync nounwind nonlazybind willreturn memory(argmem: read) }
attributes #19 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #20 = { noinline nounwind }
attributes #21 = { nounwind }
attributes #22 = { noinline noreturn nounwind }
attributes #23 = { inlinehint nounwind }
attributes #24 = { noreturn nounwind }
attributes #25 = { nounwind "function-inline-cost-multiplier"="2" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 2, !"RtLibUseGOT", i32 1}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"rustc version 1.99.0-nightly (7608eb7b0 2026-08-05)"}
!4 = !{!5, !7, !9, !11, !12, !14, !15, !17}
!5 = distinct !{!5, !6, !"_RINvNtNtCs6JMX4GRUq9U_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECs2szWGFz6wmN_7uu_test: argument 0"}
!6 = distinct !{!6, !"_RINvNtNtCs6JMX4GRUq9U_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECs2szWGFz6wmN_7uu_test"}
!7 = distinct !{!7, !8, !"_RNvXs3_NtNtCs6JMX4GRUq9U_4core3str4iterNtB5_11CharIndicesNtNtNtNtB9_4iter6traits8iterator8Iterator4next: argument 0"}
!8 = distinct !{!8, !"_RNvXs3_NtNtCs6JMX4GRUq9U_4core3str4iterNtB5_11CharIndicesNtNtNtNtB9_4iter6traits8iterator8Iterator4next"}
!9 = distinct !{!9, !10, !"_RNvXs8_NtNtCs6JMX4GRUq9U_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher4nextCs2szWGFz6wmN_7uu_test: argument 0"}
!10 = distinct !{!10, !"_RNvXs8_NtNtCs6JMX4GRUq9U_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher4nextCs2szWGFz6wmN_7uu_test"}
!11 = distinct !{!11, !10, !"_RNvXs8_NtNtCs6JMX4GRUq9U_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher4nextCs2szWGFz6wmN_7uu_test: argument 1"}
!12 = distinct !{!12, !13, !"_RNvYINtNtNtCs6JMX4GRUq9U_4core3str7pattern19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher11next_rejectCs2szWGFz6wmN_7uu_test: argument 0"}
!13 = distinct !{!13, !"_RNvYINtNtNtCs6JMX4GRUq9U_4core3str7pattern19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher11next_rejectCs2szWGFz6wmN_7uu_test"}
!14 = distinct !{!14, !13, !"_RNvYINtNtNtCs6JMX4GRUq9U_4core3str7pattern19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher11next_rejectCs2szWGFz6wmN_7uu_test: argument 1"}
!15 = distinct !{!15, !16, !"_RNvXso_NtNtCs6JMX4GRUq9U_4core3str7patternINtB5_21CharPredicateSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher11next_rejectCs2szWGFz6wmN_7uu_test: argument 0"}
!16 = distinct !{!16, !"_RNvXso_NtNtCs6JMX4GRUq9U_4core3str7patternINtB5_21CharPredicateSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher11next_rejectCs2szWGFz6wmN_7uu_test"}
!17 = distinct !{!17, !16, !"_RNvXso_NtNtCs6JMX4GRUq9U_4core3str7patternINtB5_21CharPredicateSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher11next_rejectCs2szWGFz6wmN_7uu_test: argument 1"}
!18 = !{}
!19 = !{!9, !11, !12, !14, !15, !17}
!20 = !{!21, !23, !25, !27, !28, !30, !31, !33}
!21 = distinct !{!21, !22, !"_RINvNtNtCs6JMX4GRUq9U_4core3str11validations23next_code_point_reverseINtNtNtB6_5slice4iter4IterhEECs2szWGFz6wmN_7uu_test: argument 0"}
!22 = distinct !{!22, !"_RINvNtNtCs6JMX4GRUq9U_4core3str11validations23next_code_point_reverseINtNtNtB6_5slice4iter4IterhEECs2szWGFz6wmN_7uu_test"}
!23 = distinct !{!23, !24, !"_RNvXs4_NtNtCs6JMX4GRUq9U_4core3str4iterNtB5_11CharIndicesNtNtNtNtB9_4iter6traits12double_ended19DoubleEndedIterator9next_back: argument 0"}
!24 = distinct !{!24, !"_RNvXs4_NtNtCs6JMX4GRUq9U_4core3str4iterNtB5_11CharIndicesNtNtNtNtB9_4iter6traits12double_ended19DoubleEndedIterator9next_back"}
!25 = distinct !{!25, !26, !"_RNvXs9_NtNtCs6JMX4GRUq9U_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_15ReverseSearcher9next_backCs2szWGFz6wmN_7uu_test: argument 0"}
!26 = distinct !{!26, !"_RNvXs9_NtNtCs6JMX4GRUq9U_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_15ReverseSearcher9next_backCs2szWGFz6wmN_7uu_test"}
!27 = distinct !{!27, !26, !"_RNvXs9_NtNtCs6JMX4GRUq9U_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_15ReverseSearcher9next_backCs2szWGFz6wmN_7uu_test: argument 1"}
!28 = distinct !{!28, !29, !"_RNvYINtNtNtCs6JMX4GRUq9U_4core3str7pattern19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_15ReverseSearcher16next_reject_backCs2szWGFz6wmN_7uu_test: argument 0"}
!29 = distinct !{!29, !"_RNvYINtNtNtCs6JMX4GRUq9U_4core3str7pattern19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_15ReverseSearcher16next_reject_backCs2szWGFz6wmN_7uu_test"}
!30 = distinct !{!30, !29, !"_RNvYINtNtNtCs6JMX4GRUq9U_4core3str7pattern19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_15ReverseSearcher16next_reject_backCs2szWGFz6wmN_7uu_test: argument 1"}
!31 = distinct !{!31, !32, !"_RNvXsp_NtNtCs6JMX4GRUq9U_4core3str7patternINtB5_21CharPredicateSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_15ReverseSearcher16next_reject_backCs2szWGFz6wmN_7uu_test: argument 0"}
!32 = distinct !{!32, !"_RNvXsp_NtNtCs6JMX4GRUq9U_4core3str7patternINtB5_21CharPredicateSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_15ReverseSearcher16next_reject_backCs2szWGFz6wmN_7uu_test"}
!33 = distinct !{!33, !32, !"_RNvXsp_NtNtCs6JMX4GRUq9U_4core3str7patternINtB5_21CharPredicateSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_15ReverseSearcher16next_reject_backCs2szWGFz6wmN_7uu_test: argument 1"}
!34 = !{!25, !27, !28, !30, !31, !33}
!35 = !{!36}
!36 = distinct !{!36, !37, !"_RINvMNtCs6JMX4GRUq9U_4core5sliceSTINtNtCs7tKScEop1B6_5alloc6borrow3CoweENtNtCsiMbvvWBbXLn_13fluent_bundle5types11FluentValueE20binary_search_by_keyRBw_NCINvMNtB1c_4argsNtB2v_10FluentArgs3setReNtNtBB_6string6StringE0ECs2szWGFz6wmN_7uu_test: argument 0"}
!37 = distinct !{!37, !"_RINvMNtCs6JMX4GRUq9U_4core5sliceSTINtNtCs7tKScEop1B6_5alloc6borrow3CoweENtNtCsiMbvvWBbXLn_13fluent_bundle5types11FluentValueE20binary_search_by_keyRBw_NCINvMNtB1c_4argsNtB2v_10FluentArgs3setReNtNtBB_6string6StringE0ECs2szWGFz6wmN_7uu_test"}
!38 = !{!39}
!39 = distinct !{!39, !40, !"_RINvMNtCs6JMX4GRUq9U_4core5sliceSTINtNtCs7tKScEop1B6_5alloc6borrow3CoweENtNtCsiMbvvWBbXLn_13fluent_bundle5types11FluentValueE16binary_search_byNCINvB2_20binary_search_by_keyRBw_NCINvMNtB1c_4argsNtB2V_10FluentArgs3setReNtNtBB_6string6StringE0E0ECs2szWGFz6wmN_7uu_test: argument 0"}
!40 = distinct !{!40, !"_RINvMNtCs6JMX4GRUq9U_4core5sliceSTINtNtCs7tKScEop1B6_5alloc6borrow3CoweENtNtCsiMbvvWBbXLn_13fluent_bundle5types11FluentValueE16binary_search_byNCINvB2_20binary_search_by_keyRBw_NCINvMNtB1c_4argsNtB2V_10FluentArgs3setReNtNtBB_6string6StringE0E0ECs2szWGFz6wmN_7uu_test"}
!41 = !{!42}
!42 = distinct !{!42, !43, !"_RNCINvMNtCs6JMX4GRUq9U_4core5sliceSTINtNtCs7tKScEop1B6_5alloc6borrow3CoweENtNtCsiMbvvWBbXLn_13fluent_bundle5types11FluentValueE20binary_search_by_keyRBy_NCINvMNtB1e_4argsNtB2x_10FluentArgs3setReNtNtBD_6string6StringE0E0Cs2szWGFz6wmN_7uu_test: argument 0"}
!43 = distinct !{!43, !"_RNCINvMNtCs6JMX4GRUq9U_4core5sliceSTINtNtCs7tKScEop1B6_5alloc6borrow3CoweENtNtCsiMbvvWBbXLn_13fluent_bundle5types11FluentValueE20binary_search_by_keyRBy_NCINvMNtB1e_4argsNtB2x_10FluentArgs3setReNtNtBD_6string6StringE0E0Cs2szWGFz6wmN_7uu_test"}
!44 = !{!45}
!45 = distinct !{!45, !46, !"_RNvXs7_NtCs7tKScEop1B6_5alloc6borrowINtB5_3CoweENtNtCs6JMX4GRUq9U_4core3cmp3Ord3cmpCs2szWGFz6wmN_7uu_test: argument 0"}
!46 = distinct !{!46, !"_RNvXs7_NtCs7tKScEop1B6_5alloc6borrowINtB5_3CoweENtNtCs6JMX4GRUq9U_4core3cmp3Ord3cmpCs2szWGFz6wmN_7uu_test"}
!47 = !{!45, !42, !39, !36}
!48 = !{!49, !50}
!49 = distinct !{!49, !46, !"_RNvXs7_NtCs7tKScEop1B6_5alloc6borrowINtB5_3CoweENtNtCs6JMX4GRUq9U_4core3cmp3Ord3cmpCs2szWGFz6wmN_7uu_test: argument 1"}
!50 = distinct !{!50, !40, !"_RINvMNtCs6JMX4GRUq9U_4core5sliceSTINtNtCs7tKScEop1B6_5alloc6borrow3CoweENtNtCsiMbvvWBbXLn_13fluent_bundle5types11FluentValueE16binary_search_byNCINvB2_20binary_search_by_keyRBw_NCINvMNtB1c_4argsNtB2V_10FluentArgs3setReNtNtBB_6string6StringE0E0ECs2szWGFz6wmN_7uu_test: argument 1"}
!51 = !{!52, !54}
!52 = distinct !{!52, !53, !"_RNvXNtNtCs6JMX4GRUq9U_4core3str6traitseNtNtB6_3cmp3Ord3cmp: argument 0"}
!53 = distinct !{!53, !"_RNvXNtNtCs6JMX4GRUq9U_4core3str6traitseNtNtB6_3cmp3Ord3cmp"}
!54 = distinct !{!54, !53, !"_RNvXNtNtCs6JMX4GRUq9U_4core3str6traitseNtNtB6_3cmp3Ord3cmp: argument 1"}
!55 = !{!45, !49, !42, !39, !50, !36}
!56 = !{!57}
!57 = distinct !{!57, !58, !"_RNCINvMNtCs6JMX4GRUq9U_4core5sliceSTINtNtCs7tKScEop1B6_5alloc6borrow3CoweENtNtCsiMbvvWBbXLn_13fluent_bundle5types11FluentValueE20binary_search_by_keyRBy_NCINvMNtB1e_4argsNtB2x_10FluentArgs3setReNtNtBD_6string6StringE0E0Cs2szWGFz6wmN_7uu_test: argument 0"}
!58 = distinct !{!58, !"_RNCINvMNtCs6JMX4GRUq9U_4core5sliceSTINtNtCs7tKScEop1B6_5alloc6borrow3CoweENtNtCsiMbvvWBbXLn_13fluent_bundle5types11FluentValueE20binary_search_by_keyRBy_NCINvMNtB1e_4argsNtB2x_10FluentArgs3setReNtNtBD_6string6StringE0E0Cs2szWGFz6wmN_7uu_test"}
!59 = !{!60}
!60 = distinct !{!60, !61, !"_RNvXs7_NtCs7tKScEop1B6_5alloc6borrowINtB5_3CoweENtNtCs6JMX4GRUq9U_4core3cmp3Ord3cmpCs2szWGFz6wmN_7uu_test: argument 0"}
!61 = distinct !{!61, !"_RNvXs7_NtCs7tKScEop1B6_5alloc6borrowINtB5_3CoweENtNtCs6JMX4GRUq9U_4core3cmp3Ord3cmpCs2szWGFz6wmN_7uu_test"}
!62 = !{!60, !57, !39, !36}
!63 = !{!64, !50}
!64 = distinct !{!64, !61, !"_RNvXs7_NtCs7tKScEop1B6_5alloc6borrowINtB5_3CoweENtNtCs6JMX4GRUq9U_4core3cmp3Ord3cmpCs2szWGFz6wmN_7uu_test: argument 1"}
!65 = !{!66, !68}
!66 = distinct !{!66, !67, !"_RNvXNtNtCs6JMX4GRUq9U_4core3str6traitseNtNtB6_3cmp3Ord3cmp: argument 0"}
!67 = distinct !{!67, !"_RNvXNtNtCs6JMX4GRUq9U_4core3str6traitseNtNtB6_3cmp3Ord3cmp"}
!68 = distinct !{!68, !67, !"_RNvXNtNtCs6JMX4GRUq9U_4core3str6traitseNtNtB6_3cmp3Ord3cmp: argument 1"}
!69 = !{!60, !64, !57, !39, !50, !36}
!70 = !{i64 0, i64 -9223372036854775808}
!71 = !{!72}
!72 = distinct !{!72, !73, !"_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecTINtNtB6_6borrow3CoweENtNtCsiMbvvWBbXLn_13fluent_bundle5types11FluentValueEE10insert_mutCs2szWGFz6wmN_7uu_test: argument 0"}
!73 = distinct !{!73, !"_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecTINtNtB6_6borrow3CoweENtNtCsiMbvvWBbXLn_13fluent_bundle5types11FluentValueEE10insert_mutCs2szWGFz6wmN_7uu_test"}
!74 = !{!75}
!75 = distinct !{!75, !73, !"_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecTINtNtB6_6borrow3CoweENtNtCsiMbvvWBbXLn_13fluent_bundle5types11FluentValueEE10insert_mutCs2szWGFz6wmN_7uu_test: argument 1"}
!76 = !{!77}
!77 = distinct !{!77, !78, !"_RINvMNtCs6JMX4GRUq9U_4core5sliceSTINtNtCs7tKScEop1B6_5alloc6borrow3CoweENtNtCsiMbvvWBbXLn_13fluent_bundle5types11FluentValueE20binary_search_by_keyRBw_NCINvMNtB1c_4argsNtB2v_10FluentArgs3setRedE0ECs2szWGFz6wmN_7uu_test: argument 0"}
!78 = distinct !{!78, !"_RINvMNtCs6JMX4GRUq9U_4core5sliceSTINtNtCs7tKScEop1B6_5alloc6borrow3CoweENtNtCsiMbvvWBbXLn_13fluent_bundle5types11FluentValueE20binary_search_by_keyRBw_NCINvMNtB1c_4argsNtB2v_10FluentArgs3setRedE0ECs2szWGFz6wmN_7uu_test"}
!79 = !{!80}
!80 = distinct !{!80, !81, !"_RINvMNtCs6JMX4GRUq9U_4core5sliceSTINtNtCs7tKScEop1B6_5alloc6borrow3CoweENtNtCsiMbvvWBbXLn_13fluent_bundle5types11FluentValueE16binary_search_byNCINvB2_20binary_search_by_keyRBw_NCINvMNtB1c_4argsNtB2V_10FluentArgs3setRedE0E0ECs2szWGFz6wmN_7uu_test: argument 0"}
!81 = distinct !{!81, !"_RINvMNtCs6JMX4GRUq9U_4core5sliceSTINtNtCs7tKScEop1B6_5alloc6borrow3CoweENtNtCsiMbvvWBbXLn_13fluent_bundle5types11FluentValueE16binary_search_byNCINvB2_20binary_search_by_keyRBw_NCINvMNtB1c_4argsNtB2V_10FluentArgs3setRedE0E0ECs2szWGFz6wmN_7uu_test"}
!82 = !{!83}
!83 = distinct !{!83, !84, !"_RNCINvMNtCs6JMX4GRUq9U_4core5sliceSTINtNtCs7tKScEop1B6_5alloc6borrow3CoweENtNtCsiMbvvWBbXLn_13fluent_bundle5types11FluentValueE20binary_search_by_keyRBy_NCINvMNtB1e_4argsNtB2x_10FluentArgs3setRedE0E0Cs2szWGFz6wmN_7uu_test: argument 0"}
!84 = distinct !{!84, !"_RNCINvMNtCs6JMX4GRUq9U_4core5sliceSTINtNtCs7tKScEop1B6_5alloc6borrow3CoweENtNtCsiMbvvWBbXLn_13fluent_bundle5types11FluentValueE20binary_search_by_keyRBy_NCINvMNtB1e_4argsNtB2x_10FluentArgs3setRedE0E0Cs2szWGFz6wmN_7uu_test"}
!85 = !{!86}
!86 = distinct !{!86, !87, !"_RNvXs7_NtCs7tKScEop1B6_5alloc6borrowINtB5_3CoweENtNtCs6JMX4GRUq9U_4core3cmp3Ord3cmpCs2szWGFz6wmN_7uu_test: argument 0"}
!87 = distinct !{!87, !"_RNvXs7_NtCs7tKScEop1B6_5alloc6borrowINtB5_3CoweENtNtCs6JMX4GRUq9U_4core3cmp3Ord3cmpCs2szWGFz6wmN_7uu_test"}
!88 = !{!86, !83, !80, !77}
!89 = !{!90, !91}
!90 = distinct !{!90, !87, !"_RNvXs7_NtCs7tKScEop1B6_5alloc6borrowINtB5_3CoweENtNtCs6JMX4GRUq9U_4core3cmp3Ord3cmpCs2szWGFz6wmN_7uu_test: argument 1"}
!91 = distinct !{!91, !81, !"_RINvMNtCs6JMX4GRUq9U_4core5sliceSTINtNtCs7tKScEop1B6_5alloc6borrow3CoweENtNtCsiMbvvWBbXLn_13fluent_bundle5types11FluentValueE16binary_search_byNCINvB2_20binary_search_by_keyRBw_NCINvMNtB1c_4argsNtB2V_10FluentArgs3setRedE0E0ECs2szWGFz6wmN_7uu_test: argument 1"}
!92 = !{!93, !95}
!93 = distinct !{!93, !94, !"_RNvXNtNtCs6JMX4GRUq9U_4core3str6traitseNtNtB6_3cmp3Ord3cmp: argument 0"}
!94 = distinct !{!94, !"_RNvXNtNtCs6JMX4GRUq9U_4core3str6traitseNtNtB6_3cmp3Ord3cmp"}
!95 = distinct !{!95, !94, !"_RNvXNtNtCs6JMX4GRUq9U_4core3str6traitseNtNtB6_3cmp3Ord3cmp: argument 1"}
!96 = !{!86, !90, !83, !80, !91, !77}
!97 = !{!98}
!98 = distinct !{!98, !99, !"_RNCINvMNtCs6JMX4GRUq9U_4core5sliceSTINtNtCs7tKScEop1B6_5alloc6borrow3CoweENtNtCsiMbvvWBbXLn_13fluent_bundle5types11FluentValueE20binary_search_by_keyRBy_NCINvMNtB1e_4argsNtB2x_10FluentArgs3setRedE0E0Cs2szWGFz6wmN_7uu_test: argument 0"}
!99 = distinct !{!99, !"_RNCINvMNtCs6JMX4GRUq9U_4core5sliceSTINtNtCs7tKScEop1B6_5alloc6borrow3CoweENtNtCsiMbvvWBbXLn_13fluent_bundle5types11FluentValueE20binary_search_by_keyRBy_NCINvMNtB1e_4argsNtB2x_10FluentArgs3setRedE0E0Cs2szWGFz6wmN_7uu_test"}
!100 = !{!101}
!101 = distinct !{!101, !102, !"_RNvXs7_NtCs7tKScEop1B6_5alloc6borrowINtB5_3CoweENtNtCs6JMX4GRUq9U_4core3cmp3Ord3cmpCs2szWGFz6wmN_7uu_test: argument 0"}
!102 = distinct !{!102, !"_RNvXs7_NtCs7tKScEop1B6_5alloc6borrowINtB5_3CoweENtNtCs6JMX4GRUq9U_4core3cmp3Ord3cmpCs2szWGFz6wmN_7uu_test"}
!103 = !{!101, !98, !80, !77}
!104 = !{!105, !91}
!105 = distinct !{!105, !102, !"_RNvXs7_NtCs7tKScEop1B6_5alloc6borrowINtB5_3CoweENtNtCs6JMX4GRUq9U_4core3cmp3Ord3cmpCs2szWGFz6wmN_7uu_test: argument 1"}
!106 = !{!107, !109}
!107 = distinct !{!107, !108, !"_RNvXNtNtCs6JMX4GRUq9U_4core3str6traitseNtNtB6_3cmp3Ord3cmp: argument 0"}
!108 = distinct !{!108, !"_RNvXNtNtCs6JMX4GRUq9U_4core3str6traitseNtNtB6_3cmp3Ord3cmp"}
!109 = distinct !{!109, !108, !"_RNvXNtNtCs6JMX4GRUq9U_4core3str6traitseNtNtB6_3cmp3Ord3cmp: argument 1"}
!110 = !{!101, !105, !98, !80, !91, !77}
!111 = !{!112}
!112 = distinct !{!112, !113, !"_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecTINtNtB6_6borrow3CoweENtNtCsiMbvvWBbXLn_13fluent_bundle5types11FluentValueEE10insert_mutCs2szWGFz6wmN_7uu_test: argument 0"}
!113 = distinct !{!113, !"_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecTINtNtB6_6borrow3CoweENtNtCsiMbvvWBbXLn_13fluent_bundle5types11FluentValueEE10insert_mutCs2szWGFz6wmN_7uu_test"}
!114 = !{!115}
!115 = distinct !{!115, !113, !"_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecTINtNtB6_6borrow3CoweENtNtCsiMbvvWBbXLn_13fluent_bundle5types11FluentValueEE10insert_mutCs2szWGFz6wmN_7uu_test: argument 1"}
!116 = !{!117}
!117 = distinct !{!117, !118, !"_RINvMNtCs6JMX4GRUq9U_4core5sliceSTINtNtCs7tKScEop1B6_5alloc6borrow3CoweENtNtCsiMbvvWBbXLn_13fluent_bundle5types11FluentValueE20binary_search_by_keyRBw_NCINvMNtB1c_4argsNtB2v_10FluentArgs3setRexE0ECs2szWGFz6wmN_7uu_test: argument 0"}
!118 = distinct !{!118, !"_RINvMNtCs6JMX4GRUq9U_4core5sliceSTINtNtCs7tKScEop1B6_5alloc6borrow3CoweENtNtCsiMbvvWBbXLn_13fluent_bundle5types11FluentValueE20binary_search_by_keyRBw_NCINvMNtB1c_4argsNtB2v_10FluentArgs3setRexE0ECs2szWGFz6wmN_7uu_test"}
!119 = !{!120}
!120 = distinct !{!120, !121, !"_RINvMNtCs6JMX4GRUq9U_4core5sliceSTINtNtCs7tKScEop1B6_5alloc6borrow3CoweENtNtCsiMbvvWBbXLn_13fluent_bundle5types11FluentValueE16binary_search_byNCINvB2_20binary_search_by_keyRBw_NCINvMNtB1c_4argsNtB2V_10FluentArgs3setRexE0E0ECs2szWGFz6wmN_7uu_test: argument 0"}
!121 = distinct !{!121, !"_RINvMNtCs6JMX4GRUq9U_4core5sliceSTINtNtCs7tKScEop1B6_5alloc6borrow3CoweENtNtCsiMbvvWBbXLn_13fluent_bundle5types11FluentValueE16binary_search_byNCINvB2_20binary_search_by_keyRBw_NCINvMNtB1c_4argsNtB2V_10FluentArgs3setRexE0E0ECs2szWGFz6wmN_7uu_test"}
!122 = !{!123}
!123 = distinct !{!123, !124, !"_RNCINvMNtCs6JMX4GRUq9U_4core5sliceSTINtNtCs7tKScEop1B6_5alloc6borrow3CoweENtNtCsiMbvvWBbXLn_13fluent_bundle5types11FluentValueE20binary_search_by_keyRBy_NCINvMNtB1e_4argsNtB2x_10FluentArgs3setRexE0E0Cs2szWGFz6wmN_7uu_test: argument 0"}
!124 = distinct !{!124, !"_RNCINvMNtCs6JMX4GRUq9U_4core5sliceSTINtNtCs7tKScEop1B6_5alloc6borrow3CoweENtNtCsiMbvvWBbXLn_13fluent_bundle5types11FluentValueE20binary_search_by_keyRBy_NCINvMNtB1e_4argsNtB2x_10FluentArgs3setRexE0E0Cs2szWGFz6wmN_7uu_test"}
!125 = !{!126}
!126 = distinct !{!126, !127, !"_RNvXs7_NtCs7tKScEop1B6_5alloc6borrowINtB5_3CoweENtNtCs6JMX4GRUq9U_4core3cmp3Ord3cmpCs2szWGFz6wmN_7uu_test: argument 0"}
!127 = distinct !{!127, !"_RNvXs7_NtCs7tKScEop1B6_5alloc6borrowINtB5_3CoweENtNtCs6JMX4GRUq9U_4core3cmp3Ord3cmpCs2szWGFz6wmN_7uu_test"}
!128 = !{!126, !123, !120, !117}
!129 = !{!130, !131}
!130 = distinct !{!130, !127, !"_RNvXs7_NtCs7tKScEop1B6_5alloc6borrowINtB5_3CoweENtNtCs6JMX4GRUq9U_4core3cmp3Ord3cmpCs2szWGFz6wmN_7uu_test: argument 1"}
!131 = distinct !{!131, !121, !"_RINvMNtCs6JMX4GRUq9U_4core5sliceSTINtNtCs7tKScEop1B6_5alloc6borrow3CoweENtNtCsiMbvvWBbXLn_13fluent_bundle5types11FluentValueE16binary_search_byNCINvB2_20binary_search_by_keyRBw_NCINvMNtB1c_4argsNtB2V_10FluentArgs3setRexE0E0ECs2szWGFz6wmN_7uu_test: argument 1"}
!132 = !{!133, !135}
!133 = distinct !{!133, !134, !"_RNvXNtNtCs6JMX4GRUq9U_4core3str6traitseNtNtB6_3cmp3Ord3cmp: argument 0"}
!134 = distinct !{!134, !"_RNvXNtNtCs6JMX4GRUq9U_4core3str6traitseNtNtB6_3cmp3Ord3cmp"}
!135 = distinct !{!135, !134, !"_RNvXNtNtCs6JMX4GRUq9U_4core3str6traitseNtNtB6_3cmp3Ord3cmp: argument 1"}
!136 = !{!126, !130, !123, !120, !131, !117}
!137 = !{!138}
!138 = distinct !{!138, !139, !"_RNCINvMNtCs6JMX4GRUq9U_4core5sliceSTINtNtCs7tKScEop1B6_5alloc6borrow3CoweENtNtCsiMbvvWBbXLn_13fluent_bundle5types11FluentValueE20binary_search_by_keyRBy_NCINvMNtB1e_4argsNtB2x_10FluentArgs3setRexE0E0Cs2szWGFz6wmN_7uu_test: argument 0"}
!139 = distinct !{!139, !"_RNCINvMNtCs6JMX4GRUq9U_4core5sliceSTINtNtCs7tKScEop1B6_5alloc6borrow3CoweENtNtCsiMbvvWBbXLn_13fluent_bundle5types11FluentValueE20binary_search_by_keyRBy_NCINvMNtB1e_4argsNtB2x_10FluentArgs3setRexE0E0Cs2szWGFz6wmN_7uu_test"}
!140 = !{!141}
!141 = distinct !{!141, !142, !"_RNvXs7_NtCs7tKScEop1B6_5alloc6borrowINtB5_3CoweENtNtCs6JMX4GRUq9U_4core3cmp3Ord3cmpCs2szWGFz6wmN_7uu_test: argument 0"}
!142 = distinct !{!142, !"_RNvXs7_NtCs7tKScEop1B6_5alloc6borrowINtB5_3CoweENtNtCs6JMX4GRUq9U_4core3cmp3Ord3cmpCs2szWGFz6wmN_7uu_test"}
!143 = !{!141, !138, !120, !117}
!144 = !{!145, !131}
!145 = distinct !{!145, !142, !"_RNvXs7_NtCs7tKScEop1B6_5alloc6borrowINtB5_3CoweENtNtCs6JMX4GRUq9U_4core3cmp3Ord3cmpCs2szWGFz6wmN_7uu_test: argument 1"}
!146 = !{!147, !149}
!147 = distinct !{!147, !148, !"_RNvXNtNtCs6JMX4GRUq9U_4core3str6traitseNtNtB6_3cmp3Ord3cmp: argument 0"}
!148 = distinct !{!148, !"_RNvXNtNtCs6JMX4GRUq9U_4core3str6traitseNtNtB6_3cmp3Ord3cmp"}
!149 = distinct !{!149, !148, !"_RNvXNtNtCs6JMX4GRUq9U_4core3str6traitseNtNtB6_3cmp3Ord3cmp: argument 1"}
!150 = !{!141, !145, !138, !120, !131, !117}
!151 = !{!152}
!152 = distinct !{!152, !153, !"_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecTINtNtB6_6borrow3CoweENtNtCsiMbvvWBbXLn_13fluent_bundle5types11FluentValueEE10insert_mutCs2szWGFz6wmN_7uu_test: argument 0"}
!153 = distinct !{!153, !"_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecTINtNtB6_6borrow3CoweENtNtCsiMbvvWBbXLn_13fluent_bundle5types11FluentValueEE10insert_mutCs2szWGFz6wmN_7uu_test"}
!154 = !{!155}
!155 = distinct !{!155, !153, !"_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecTINtNtB6_6borrow3CoweENtNtCsiMbvvWBbXLn_13fluent_bundle5types11FluentValueEE10insert_mutCs2szWGFz6wmN_7uu_test: argument 1"}
!156 = !{!157}
!157 = distinct !{!157, !158, !"_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueSNtNtCs2szWGFz6wmN_7uu_test6parser6SymbolEBG_: argument 0"}
!158 = distinct !{!158, !"_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueSNtNtCs2szWGFz6wmN_7uu_test6parser6SymbolEBG_"}
!159 = !{!160}
!160 = distinct !{!160, !161, !"_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs2szWGFz6wmN_7uu_test6parser6SymbolEBF_: argument 0"}
!161 = distinct !{!161, !"_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs2szWGFz6wmN_7uu_test6parser6SymbolEBF_"}
!162 = !{i64 0, i64 7}
!163 = !{!160, !157}
!164 = !{!165, !160, !157}
!165 = distinct !{!165, !166, !"_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs2szWGFz6wmN_7uu_test6parser8OperatorEBF_: argument 0"}
!166 = distinct !{!166, !"_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs2szWGFz6wmN_7uu_test6parser8OperatorEBF_"}
!167 = !{!168, !160, !157}
!168 = distinct !{!168, !169, !"_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs2szWGFz6wmN_7uu_test6parser13UnaryOperatorEBF_: argument 0"}
!169 = distinct !{!169, !"_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs2szWGFz6wmN_7uu_test6parser13UnaryOperatorEBF_"}
!170 = !{!171}
!171 = distinct !{!171, !172, !"_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs2szWGFz6wmN_7uu_test6parser8OperatorEBF_: argument 0"}
!172 = distinct !{!172, !"_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs2szWGFz6wmN_7uu_test6parser8OperatorEBF_"}
!173 = !{!174}
!174 = distinct !{!174, !175, !"_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs2szWGFz6wmN_7uu_test6parser13UnaryOperatorEBF_: argument 0"}
!175 = distinct !{!175, !"_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs2szWGFz6wmN_7uu_test6parser13UnaryOperatorEBF_"}
!176 = !{!"branch_weights", i32 1, i32 2000, i32 2000, i32 2000, i32 2000}
!177 = !{!178}
!178 = distinct !{!178, !179, !"_RINvNtNtNtCs6JMX4GRUq9U_4core2io5error4repr11decode_reprNtB4_11CustomOwnerNCNvXs1_B2_NtB2_4ReprNtNtNtB8_3ops4drop4Drop4drop0ECs2szWGFz6wmN_7uu_test: argument 0"}
!179 = distinct !{!179, !"_RINvNtNtNtCs6JMX4GRUq9U_4core2io5error4repr11decode_reprNtB4_11CustomOwnerNCNvXs1_B2_NtB2_4ReprNtNtNtB8_3ops4drop4Drop4drop0ECs2szWGFz6wmN_7uu_test"}
!180 = !{i64 -1, i64 -9223372036854775808}
!181 = !{!182}
!182 = distinct !{!182, !183, !"_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs2szWGFz6wmN_7uu_test: argument 0"}
!183 = distinct !{!183, !"_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs2szWGFz6wmN_7uu_test"}
!184 = !{!185}
!185 = distinct !{!185, !186, !"_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCsiMbvvWBbXLn_13fluent_bundle5types11FluentValueECs2szWGFz6wmN_7uu_test: argument 0"}
!186 = distinct !{!186, !"_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCsiMbvvWBbXLn_13fluent_bundle5types11FluentValueECs2szWGFz6wmN_7uu_test"}
end_hunk_2
