Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/coreutils-rs/original/uu_numfmt-ef49e477fd601728.uu_numfmt.86976827d2a51656-cgu.0?download=true
inline.NumInlined: 1038
inline.NumDeleted: 517
loop-unroll.NumCompletelyUnrolled: 16
loop-unroll.NumUnrolled: 16
begin_hunk_0_@_RNvNtCsbyqtxyC5WYI_9uu_numfmt6format14transform_from:bb.a
  ]

thread-pre-split.i96.i:                           ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsbyqtxyC5WYI_9uu_numfmt.exit.i72
  %.pr.i97.i = load i8, ptr %i.awp, align 1, !alias.scope !2405, !noalias !2396
  br label %bb.mf

bb.mf:                                            ; preds = %thread-pre-split.i96.i, %bb.me
  %i.aws = phi i8 [ %.pr.i97.i, %thread-pre-split.i96.i ], [ %i.awr, %bb.me ]
  switch i8 %i.aws, label %bb.mm [
    i8 43, label %bb.mg
    i8 45, label %bb.mh
  ]

bb.mg:                                            ; preds = %bb.mf
  %i.awt = getelementptr inbounds nuw i8, ptr %i.awp, i64 1
  %i.awu = add nsw i64 %.sroa.6.0.copyload.i70, -1
  br label %bb.mm

bb.mh:                                            ; preds = %bb.mf
  %i.awv = getelementptr inbounds nuw i8, ptr %i.awp, i64 1 ; 2 uses
  %i.aww = add nsw i64 %.sroa.6.0.copyload.i70, -1 ; 3 uses
  %i.awx = icmp samesign ult i64 %.sroa.6.0.copyload.i70, 17
  br i1 %i.awx, label %.preheader114.i74.i, label %.lr.ph.i66.i

.preheader114.i74.i:                              ; preds = %bb.mh
  %.not103137.i75.i = icmp eq i64 %i.aww, 0
  br i1 %.not103137.i75.i, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit98.i, label %.lr.ph141.i76.i

.lr.ph.i66.i:                                     ; preds = %bb.mh, %bb.mk
  %.sroa.0.1136.i67.i = phi ptr [ %i.awy, %bb.mk ], [ %i.awv, %bb.mh ] ; 2 uses
  %.sroa.26.1135.i68.i = phi i64 [ %i.awz, %bb.mk ], [ %i.aww, %bb.mh ]
  %.sroa.084.0134.i69.i = phi i64 [ %i.axk, %bb.mk ], [ 0, %bb.mh ]
  %i.awy = getelementptr inbounds nuw i8, ptr %.sroa.0.1136.i67.i, i64 1
  %i.awz = add nsw i64 %.sroa.26.1135.i68.i, -1   ; 2 uses
  %i.axa = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %.sroa.084.0134.i69.i, i64 10) ; 2 uses
  %i.axb = extractvalue { i64, i1 } %i.axa, 0
  %i.axc = extractvalue { i64, i1 } %i.axa, 1
  br i1 %i.axc, label %.loopexit290.i, label %bb.mi, !prof !15

bb.mi:                                            ; preds = %.lr.ph.i66.i
  %i.axd = load i8, ptr %.sroa.0.1136.i67.i, align 1, !alias.scope !2405, !noalias !2396, !noundef !4
  %i.axe = zext i8 %i.axd to i32
  %i.axf = add nsw i32 %i.axe, -48                ; 2 uses
  %i.axg = icmp ult i32 %i.axf, 10
  br i1 %i.axg, label %bb.mj, label %.loopexit290.i

bb.mj:                                            ; preds = %bb.mi
  %i.axh = zext nneg i32 %i.axf to i64
  %i.axi = call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %i.axb, i64 %i.axh) ; 2 uses
  %i.axj = extractvalue { i64, i1 } %i.axi, 1
  br i1 %i.axj, label %.loopexit290.i, label %bb.mk, !prof !15

bb.mk:                                            ; preds = %bb.mj
  %i.axk = extractvalue { i64, i1 } %i.axi, 0     ; 2 uses
  %.not102.i71.i = icmp eq i64 %i.awz, 0
  br i1 %.not102.i71.i, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit98.i, label %.lr.ph.i66.i

.lr.ph141.i76.i:                                  ; preds = %.preheader114.i74.i, %bb.ml
  %.sroa.0.2140.i77.i = phi ptr [ %i.axr, %bb.ml ], [ %i.awv, %.preheader114.i74.i ] ; 2 uses
  %.sroa.26.2139.i78.i = phi i64 [ %i.axq, %bb.ml ], [ %i.aww, %.preheader114.i74.i ]
  %.sroa.084.2138.i79.i = phi i64 [ %i.axt, %bb.ml ], [ 0, %.preheader114.i74.i ]
  %i.axl = load i8, ptr %.sroa.0.2140.i77.i, align 1, !alias.scope !2405, !noalias !2396, !noundef !4
  %i.axm = zext i8 %i.axl to i32
  %i.axn = add nsw i32 %i.axm, -48                ; 2 uses
  %i.axo = icmp ult i32 %i.axn, 10
  br i1 %i.axo, label %bb.ml, label %.loopexit290.i

bb.ml:                                            ; preds = %.lr.ph141.i76.i
  %i.axp = mul i64 %.sroa.084.2138.i79.i, 10
  %i.axq = add nsw i64 %.sroa.26.2139.i78.i, -1   ; 2 uses
  %i.axr = getelementptr inbounds nuw i8, ptr %.sroa.0.2140.i77.i, i64 1
  %i.axs = zext nneg i32 %i.axn to i64
  %i.axt = sub i64 %i.axp, %i.axs                 ; 2 uses
  %.not103.i80.i = icmp eq i64 %i.axq, 0
  br i1 %.not103.i80.i, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit98.i, label %.lr.ph141.i76.i

bb.mm:                                            ; preds = %bb.mg, %bb.mf
  %.sroa.26.0.i81.i = phi i64 [ %i.awu, %bb.mg ], [ %.sroa.6.0.copyload.i70, %bb.mf ] ; 4 uses
  %.sroa.0.0.i82.i = phi ptr [ %i.awt, %bb.mg ], [ %i.awp, %bb.mf ] ; 2 uses
  %i.axu = icmp samesign ult i64 %.sroa.26.0.i81.i, 16
  br i1 %i.axu, label %.preheader.i89.i, label %.preheader111.i83.i

.preheader.i89.i:                                 ; preds = %bb.mm
  %.not105146.i90.i = icmp eq i64 %.sroa.26.0.i81.i, 0
  br i1 %.not105146.i90.i, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit98.i, label %.lr.ph150.i91.i

.preheader111.i83.i:                              ; preds = %bb.mm, %bb.mp
  %.sroa.0.3145.i84.i = phi ptr [ %i.axv, %bb.mp ], [ %.sroa.0.0.i82.i, %bb.mm ] ; 2 uses
  %.sroa.26.3144.i85.i = phi i64 [ %i.axw, %bb.mp ], [ %.sroa.26.0.i81.i, %bb.mm ]
  %.sroa.084.3143.i86.i = phi i64 [ %i.ayh, %bb.mp ], [ 0, %bb.mm ]
  %i.axv = getelementptr inbounds nuw i8, ptr %.sroa.0.3145.i84.i, i64 1
  %i.axw = add nsw i64 %.sroa.26.3144.i85.i, -1   ; 2 uses
  %i.axx = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %.sroa.084.3143.i86.i, i64 10) ; 2 uses
  %i.axy = extractvalue { i64, i1 } %i.axx, 0
  %i.axz = extractvalue { i64, i1 } %i.axx, 1
  br i1 %i.axz, label %.loopexit290.i, label %bb.mn, !prof !15

bb.mn:                                            ; preds = %.preheader111.i83.i
  %i.aya = load i8, ptr %.sroa.0.3145.i84.i, align 1, !alias.scope !2405, !noalias !2396, !noundef !4
  %i.ayb = zext i8 %i.aya to i32
  %i.ayc = add nsw i32 %i.ayb, -48                ; 2 uses
  %i.ayd = icmp ult i32 %i.ayc, 10
  br i1 %i.ayd, label %bb.mo, label %.loopexit290.i

bb.mo:                                            ; preds = %bb.mn
  %i.aye = zext nneg i32 %i.ayc to i64
  %i.ayf = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %i.axy, i64 %i.aye) ; 2 uses
  %i.ayg = extractvalue { i64, i1 } %i.ayf, 1
  br i1 %i.ayg, label %.loopexit290.i, label %bb.mp, !prof !15

bb.mp:                                            ; preds = %bb.mo
  %i.ayh = extractvalue { i64, i1 } %i.ayf, 0     ; 2 uses
  %.not104.i88.i = icmp eq i64 %i.axw, 0
  br i1 %.not104.i88.i, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit98.i, label %.preheader111.i83.i

.lr.ph150.i91.i:                                  ; preds = %.preheader.i89.i, %bb.mq
  %.sroa.0.4149.i92.i = phi ptr [ %i.ayo, %bb.mq ], [ %.sroa.0.0.i82.i, %.preheader.i89.i ] ; 2 uses
  %.sroa.26.4148.i93.i = phi i64 [ %i.ayn, %bb.mq ], [ %.sroa.26.0.i81.i, %.preheader.i89.i ]
  %.sroa.084.4147.i94.i = phi i64 [ %i.ayq, %bb.mq ], [ 0, %.preheader.i89.i ]
  %i.ayi = load i8, ptr %.sroa.0.4149.i92.i, align 1, !alias.scope !2405, !noalias !2396, !noundef !4
  %i.ayj = zext i8 %i.ayi to i32
  %i.ayk = add nsw i32 %i.ayj, -48                ; 2 uses
  %i.ayl = icmp ult i32 %i.ayk, 10
  br i1 %i.ayl, label %bb.mq, label %.loopexit290.i

bb.mq:                                            ; preds = %.lr.ph150.i91.i
  %i.aym = mul i64 %.sroa.084.4147.i94.i, 10
  %i.ayn = add nsw i64 %.sroa.26.4148.i93.i, -1   ; 2 uses
  %i.ayo = getelementptr inbounds nuw i8, ptr %.sroa.0.4149.i92.i, i64 1
  %i.ayp = zext nneg i32 %i.ayk to i64
  %i.ayq = add i64 %i.aym, %i.ayp                 ; 2 uses
  %.not105.i95.i = icmp eq i64 %i.ayn, 0
  br i1 %.not105.i95.i, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit98.i, label %.lr.ph150.i91.i

bb.mr:                                            ; preds = %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.awl, ptr nonnull align 1 %.sroa.4.0.copyload.i, i64 %.sroa.6.0.copyload.i70, i1 false), !noalias !2396
  br label %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsbyqtxyC5WYI_9uu_numfmt.exit.thread253.i

.loopexit290.i:                                   ; preds = %bb.mj, %bb.mi, %.lr.ph.i66.i, %.lr.ph141.i76.i, %bb.mo, %bb.mn, %.preheader111.i83.i, %.lr.ph150.i91.i, %bb.me, %bb.me, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsbyqtxyC5WYI_9uu_numfmt.exit.i72
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !2396
  call void @_RNvXs2_NtNtCs6JMX4GRUq9U_4core3num11float_parsedNtNtNtB9_3str6traits7FromStr8from_str(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.t, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.awp, i64 noundef %.sroa.6.0.copyload.i70) #25, !noalias !2396
  %i.ayr = load i8, ptr %i.t, align 8, !range !19, !noalias !2396, !noundef !4
  %i.ays = trunc nuw i8 %i.ayr to i1
  br i1 %i.ays, label %bb.mu, label %bb.mv

_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit98.i: ; preds = %bb.mk, %bb.ml, %bb.mp, %bb.mq, %.preheader.i89.i, %.preheader114.i74.i
  %.sroa.15210.0.i = phi i64 [ %i.ayq, %bb.mq ], [ %i.axt, %bb.ml ], [ %i.ayh, %bb.mp ], [ 0, %.preheader.i89.i ], [ 0, %.preheader114.i74.i ], [ %i.axk, %bb.mk ]
  call fastcc void @_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setRexECsbyqtxyC5WYI_9uu_numfmt(ptr noalias nofree noundef align 8 dereferenceable(24) %i.y, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @51, i64 noundef 6, i64 noundef %.sroa.15210.0.i) #26, !noalias !2396
  br label %bb.ms

bb.ms:                                            ; preds = %bb.mv, %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit98.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !2396
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.r, ptr noundef nonnull align 8 dereferenceable(24) %i.y, i64 24, i1 false), !noalias !2396
  call void @_RNvNtNtCsh036I4OHgIr_6uucore4mods6locale21get_message_with_args(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.z, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @126, i64 noundef 29, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.r) #26, !noalias !2396
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !2396
  br i1 %i.awk, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsbyqtxyC5WYI_9uu_numfmt.exit101.i, label %bb.mt

bb.mt:                                            ; preds = %bb.ms
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %i.awp, i64 noundef %.sroa.6.0.copyload.i70, i64 noundef range(i64 1, -9223372036854775807) 1) #26, !noalias !2406
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsbyqtxyC5WYI_9uu_numfmt.exit101.i

bb.mu:                                            ; preds = %.loopexit290.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !2396
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !2396
  store i64 %.sroa.6.0.copyload.i70, ptr %i.s, align 8, !noalias !2396
  %.sroa.5201.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  store ptr %i.awp, ptr %.sroa.5201.0..sroa_idx.i, align 8, !noalias !2396
  %.sroa.9.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  store i64 %.sroa.6.0.copyload.i70, ptr %.sroa.9.0..sroa_idx.i, align 8, !noalias !2396
  call fastcc void @_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setReNtNtCs7tKScEop1B6_5alloc6string6StringECsbyqtxyC5WYI_9uu_numfmt(ptr noalias nofree noundef align 8 dereferenceable(24) %i.y, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @51, i64 noundef 6, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.s) #26, !noalias !2396
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !2396
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !2396
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.r, ptr noundef nonnull align 8 dereferenceable(24) %i.y, i64 24, i1 false), !noalias !2396
  call void @_RNvNtNtCsh036I4OHgIr_6uucore4mods6locale21get_message_with_args(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.z, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @126, i64 noundef 29, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.r) #26, !noalias !2396
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !2396
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsbyqtxyC5WYI_9uu_numfmt.exit101.i

bb.mv:                                            ; preds = %.loopexit290.i
  %i.ayt = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.ayu = load double, ptr %i.ayt, align 8, !noalias !2396, !noundef !4
  call fastcc void @_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setRedECsbyqtxyC5WYI_9uu_numfmt(ptr noalias nofree noundef align 8 dereferenceable(24) %i.y, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @51, i64 noundef 6, double noundef %i.ayu) #26, !noalias !2396
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !2396
  br label %bb.ms

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsbyqtxyC5WYI_9uu_numfmt.exit101.i: ; preds = %bb.mu, %bb.mt, %bb.ms
  %i.ayv = icmp eq i64 %.sroa.0.0.copyload189.i, 0
  %or.cond.i73 = select i1 %.sroa.08.0.not.i, i1 true, i1 %i.ayv
  br i1 %or.cond.i73, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsbyqtxyC5WYI_9uu_numfmt.exit104.i, label %bb.mw

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsbyqtxyC5WYI_9uu_numfmt.exit104.i: ; preds = %bb.mw, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsbyqtxyC5WYI_9uu_numfmt.exit101.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !2396
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ej, ptr noundef nonnull align 8 dereferenceable(24) %i.z, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !2396
  br label %_RNvNtCsbyqtxyC5WYI_9uu_numfmt6format13remove_suffix.exit

bb.mw:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsbyqtxyC5WYI_9uu_numfmt.exit101.i
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5.0.copyload192.i, i64 noundef %.sroa.0.0.copyload189.i, i64 noundef range(i64 1, -9223372036854775807) 1) #26, !noalias !2407
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsbyqtxyC5WYI_9uu_numfmt.exit104.i

bb.mx:                                            ; preds = %bb.le
  %5 = trunc nuw i8 %i.em to i1
  br i1 %5, label %bb.lj, label %.thread.i63

bb.my:                                            ; preds = %bb.li
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !2396
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !2396
  store i64 0, ptr %i.p, align 8, !noalias !2396
  %.sroa.4.0..sroa_idx.i64 = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.4.0..sroa_idx.i64, align 8, !noalias !2396
  %.sroa.5.0..sroa_idx.i65 = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  store i64 0, ptr %.sroa.5.0..sroa_idx.i65, align 8, !noalias !2396
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !2408
  store i64 0, ptr %i.e, align 8, !noalias !2408
  %.sroa.4.0..sroa_idx.i105.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.4.0..sroa_idx.i105.i, align 8, !noalias !2408
  %.sroa.5.0..sroa_idx.i106.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  store i64 0, ptr %.sroa.5.0..sroa_idx.i106.i, align 8, !noalias !2408
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !2408
  %i.ayw = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store i64 1610612768, ptr %i.ayw, align 8, !noalias !2408
  store ptr %i.e, ptr %i.d, align 8, !noalias !2408
  %i.ayx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr @169, ptr %i.ayx, align 8, !noalias !2408
  %i.ayy = call noundef zeroext i1 @_RNvXs7_NtNtCs6JMX4GRUq9U_4core3fmt5floatdNtB7_7Display3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ad, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d) #26, !noalias !2409
  br i1 %i.ayy, label %bb.mz, label %_RNvXsC_NtCs7tKScEop1B6_5alloc6stringdNtB5_12SpecToString14spec_to_stringCsbyqtxyC5WYI_9uu_numfmt.exit107.i, !prof !15

bb.mz:                                            ; preds = %bb.my
  call void @_RNvNtCs6JMX4GRUq9U_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @170, i64 noundef 55, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @109, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @172) #27, !noalias !2409
  unreachable

_RNvXsC_NtCs7tKScEop1B6_5alloc6stringdNtB5_12SpecToString14spec_to_stringCsbyqtxyC5WYI_9uu_numfmt.exit107.i: ; preds = %bb.my
  %.sroa.0211.0.copyload212.i = load i64, ptr %i.e, align 8, !noalias !2410 ; 3 uses
  %.sroa.5213.0.copyload215.i = load ptr, ptr %.sroa.4.0..sroa_idx.i105.i, align 8, !noalias !2410, !nonnull !4, !noundef !4 ; 8 uses
  %.sroa.8217.0.copyload219.i = load i64, ptr %.sroa.5.0..sroa_idx.i106.i, align 8, !noalias !2410 ; 7 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !2408
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !2408
  switch i64 %.sroa.8217.0.copyload219.i, label %thread-pre-split.i139.i [
    i64 0, label %.loopexit283.i
    i64 1, label %bb.na
  ]

bb.na:                                            ; preds = %_RNvXsC_NtCs7tKScEop1B6_5alloc6stringdNtB5_12SpecToString14spec_to_stringCsbyqtxyC5WYI_9uu_numfmt.exit107.i
  %i.ayz = load i8, ptr %.sroa.5213.0.copyload215.i, align 1, !alias.scope !2411, !noalias !2396, !noundef !4 ; 2 uses
  switch i8 %i.ayz, label %bb.nb [
    i8 43, label %.loopexit283.i
    i8 45, label %.loopexit283.i
  ]

thread-pre-split.i139.i:                          ; preds = %_RNvXsC_NtCs7tKScEop1B6_5alloc6stringdNtB5_12SpecToString14spec_to_stringCsbyqtxyC5WYI_9uu_numfmt.exit107.i
  %.pr.i140.i = load i8, ptr %.sroa.5213.0.copyload215.i, align 1, !alias.scope !2411, !noalias !2396
  br label %bb.nb

bb.nb:                                            ; preds = %thread-pre-split.i139.i, %bb.na
  %i.aza = phi i8 [ %.pr.i140.i, %thread-pre-split.i139.i ], [ %i.ayz, %bb.na ]
  switch i8 %i.aza, label %bb.ni [
    i8 43, label %bb.nc
    i8 45, label %bb.nd
  ]

bb.nc:                                            ; preds = %bb.nb
  %i.azb = getelementptr inbounds nuw i8, ptr %.sroa.5213.0.copyload215.i, i64 1
  %i.azc = add nsw i64 %.sroa.8217.0.copyload219.i, -1
  br label %bb.ni

bb.nd:                                            ; preds = %bb.nb
  %i.azd = getelementptr inbounds nuw i8, ptr %.sroa.5213.0.copyload215.i, i64 1 ; 2 uses
  %i.aze = add nsw i64 %.sroa.8217.0.copyload219.i, -1 ; 3 uses
  %i.azf = icmp samesign ult i64 %.sroa.8217.0.copyload219.i, 17
  br i1 %i.azf, label %.preheader114.i117.i, label %.lr.ph.i109.i

.preheader114.i117.i:                             ; preds = %bb.nd
  %.not103137.i118.i = icmp eq i64 %i.aze, 0
  br i1 %.not103137.i118.i, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit141.i, label %.lr.ph141.i119.i

.lr.ph.i109.i:                                    ; preds = %bb.nd, %bb.ng
  %.sroa.0.1136.i110.i = phi ptr [ %i.azg, %bb.ng ], [ %i.azd, %bb.nd ] ; 2 uses
  %.sroa.26.1135.i111.i = phi i64 [ %i.azh, %bb.ng ], [ %i.aze, %bb.nd ]
  %.sroa.084.0134.i112.i = phi i64 [ %i.azs, %bb.ng ], [ 0, %bb.nd ]
  %i.azg = getelementptr inbounds nuw i8, ptr %.sroa.0.1136.i110.i, i64 1
  %i.azh = add nsw i64 %.sroa.26.1135.i111.i, -1  ; 2 uses
  %i.azi = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %.sroa.084.0134.i112.i, i64 10) ; 2 uses
  %i.azj = extractvalue { i64, i1 } %i.azi, 0
  %i.azk = extractvalue { i64, i1 } %i.azi, 1
  br i1 %i.azk, label %.loopexit283.i, label %bb.ne, !prof !15

bb.ne:                                            ; preds = %.lr.ph.i109.i
  %i.azl = load i8, ptr %.sroa.0.1136.i110.i, align 1, !alias.scope !2411, !noalias !2396, !noundef !4
  %i.azm = zext i8 %i.azl to i32
  %i.azn = add nsw i32 %i.azm, -48                ; 2 uses
  %i.azo = icmp ult i32 %i.azn, 10
  br i1 %i.azo, label %bb.nf, label %.loopexit283.i

bb.nf:                                            ; preds = %bb.ne
  %i.azp = zext nneg i32 %i.azn to i64
  %i.azq = call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %i.azj, i64 %i.azp) ; 2 uses
  %i.azr = extractvalue { i64, i1 } %i.azq, 1
  br i1 %i.azr, label %.loopexit283.i, label %bb.ng, !prof !15

bb.ng:                                            ; preds = %bb.nf
  %i.azs = extractvalue { i64, i1 } %i.azq, 0     ; 2 uses
  %.not102.i114.i = icmp eq i64 %i.azh, 0
  br i1 %.not102.i114.i, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit141.i, label %.lr.ph.i109.i

.lr.ph141.i119.i:                                 ; preds = %.preheader114.i117.i, %bb.nh
  %.sroa.0.2140.i120.i = phi ptr [ %i.azz, %bb.nh ], [ %i.azd, %.preheader114.i117.i ] ; 2 uses
  %.sroa.26.2139.i121.i = phi i64 [ %i.azy, %bb.nh ], [ %i.aze, %.preheader114.i117.i ]
  %.sroa.084.2138.i122.i = phi i64 [ %i.bab, %bb.nh ], [ 0, %.preheader114.i117.i ]
  %i.azt = load i8, ptr %.sroa.0.2140.i120.i, align 1, !alias.scope !2411, !noalias !2396, !noundef !4
  %i.azu = zext i8 %i.azt to i32
  %i.azv = add nsw i32 %i.azu, -48                ; 2 uses
  %i.azw = icmp ult i32 %i.azv, 10
  br i1 %i.azw, label %bb.nh, label %.loopexit283.i

bb.nh:                                            ; preds = %.lr.ph141.i119.i
  %i.azx = mul i64 %.sroa.084.2138.i122.i, 10
  %i.azy = add nsw i64 %.sroa.26.2139.i121.i, -1  ; 2 uses
  %i.azz = getelementptr inbounds nuw i8, ptr %.sroa.0.2140.i120.i, i64 1
  %i.baa = zext nneg i32 %i.azv to i64
  %i.bab = sub i64 %i.azx, %i.baa                 ; 2 uses
  %.not103.i123.i = icmp eq i64 %i.azy, 0
  br i1 %.not103.i123.i, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit141.i, label %.lr.ph141.i119.i

bb.ni:                                            ; preds = %bb.nc, %bb.nb
  %.sroa.26.0.i124.i = phi i64 [ %i.azc, %bb.nc ], [ %.sroa.8217.0.copyload219.i, %bb.nb ] ; 4 uses
  %.sroa.0.0.i125.i = phi ptr [ %i.azb, %bb.nc ], [ %.sroa.5213.0.copyload215.i, %bb.nb ] ; 2 uses
  %i.bac = icmp samesign ult i64 %.sroa.26.0.i124.i, 16
  br i1 %i.bac, label %.preheader.i132.i, label %.preheader111.i126.i

.preheader.i132.i:                                ; preds = %bb.ni
  %.not105146.i133.i = icmp eq i64 %.sroa.26.0.i124.i, 0
  br i1 %.not105146.i133.i, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit141.i, label %.lr.ph150.i134.i

.preheader111.i126.i:                             ; preds = %bb.ni, %bb.nl
  %.sroa.0.3145.i127.i = phi ptr [ %i.bad, %bb.nl ], [ %.sroa.0.0.i125.i, %bb.ni ] ; 2 uses
  %.sroa.26.3144.i128.i = phi i64 [ %i.bae, %bb.nl ], [ %.sroa.26.0.i124.i, %bb.ni ]
  %.sroa.084.3143.i129.i = phi i64 [ %i.bap, %bb.nl ], [ 0, %bb.ni ]
  %i.bad = getelementptr inbounds nuw i8, ptr %.sroa.0.3145.i127.i, i64 1
  %i.bae = add nsw i64 %.sroa.26.3144.i128.i, -1  ; 2 uses
  %i.baf = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %.sroa.084.3143.i129.i, i64 10) ; 2 uses
  %i.bag = extractvalue { i64, i1 } %i.baf, 0
  %i.bah = extractvalue { i64, i1 } %i.baf, 1
  br i1 %i.bah, label %.loopexit283.i, label %bb.nj, !prof !15

bb.nj:                                            ; preds = %.preheader111.i126.i
  %i.bai = load i8, ptr %.sroa.0.3145.i127.i, align 1, !alias.scope !2411, !noalias !2396, !noundef !4
  %i.baj = zext i8 %i.bai to i32
  %i.bak = add nsw i32 %i.baj, -48                ; 2 uses
  %i.bal = icmp ult i32 %i.bak, 10
  br i1 %i.bal, label %bb.nk, label %.loopexit283.i

bb.nk:                                            ; preds = %bb.nj
  %i.bam = zext nneg i32 %i.bak to i64
  %i.ban = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %i.bag, i64 %i.bam) ; 2 uses
  %i.bao = extractvalue { i64, i1 } %i.ban, 1
  br i1 %i.bao, label %.loopexit283.i, label %bb.nl, !prof !15

bb.nl:                                            ; preds = %bb.nk
  %i.bap = extractvalue { i64, i1 } %i.ban, 0     ; 2 uses
  %.not104.i131.i = icmp eq i64 %i.bae, 0
  br i1 %.not104.i131.i, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit141.i, label %.preheader111.i126.i

.lr.ph150.i134.i:                                 ; preds = %.preheader.i132.i, %bb.nm
  %.sroa.0.4149.i135.i = phi ptr [ %i.baw, %bb.nm ], [ %.sroa.0.0.i125.i, %.preheader.i132.i ] ; 2 uses
  %.sroa.26.4148.i136.i = phi i64 [ %i.bav, %bb.nm ], [ %.sroa.26.0.i124.i, %.preheader.i132.i ]
  %.sroa.084.4147.i137.i = phi i64 [ %i.bay, %bb.nm ], [ 0, %.preheader.i132.i ]
  %i.baq = load i8, ptr %.sroa.0.4149.i135.i, align 1, !alias.scope !2411, !noalias !2396, !noundef !4
  %i.bar = zext i8 %i.baq to i32
  %i.bas = add nsw i32 %i.bar, -48                ; 2 uses
  %i.bat = icmp ult i32 %i.bas, 10
  br i1 %i.bat, label %bb.nm, label %.loopexit283.i

bb.nm:                                            ; preds = %.lr.ph150.i134.i
  %i.bau = mul i64 %.sroa.084.4147.i137.i, 10
  %i.bav = add nsw i64 %.sroa.26.4148.i136.i, -1  ; 2 uses
  %i.baw = getelementptr inbounds nuw i8, ptr %.sroa.0.4149.i135.i, i64 1
  %i.bax = zext nneg i32 %i.bas to i64
  %i.bay = add i64 %i.bau, %i.bax                 ; 2 uses
  %.not105.i138.i = icmp eq i64 %i.bav, 0
  br i1 %.not105.i138.i, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit141.i, label %.lr.ph150.i134.i

.thread.i63:                                      ; preds = %bb.mx, %bb.li
  call void @_RNvNtNtCsh036I4OHgIr_6uucore4mods6locale11get_message(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.ej, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @129, i64 noundef 40) #26
  br label %_RNvNtCsbyqtxyC5WYI_9uu_numfmt6format13remove_suffix.exit

.loopexit283.i:                                   ; preds = %bb.nf, %bb.ne, %.lr.ph.i109.i, %.lr.ph141.i119.i, %bb.nk, %bb.nj, %.preheader111.i126.i, %.lr.ph150.i134.i, %bb.na, %bb.na, %_RNvXsC_NtCs7tKScEop1B6_5alloc6stringdNtB5_12SpecToString14spec_to_stringCsbyqtxyC5WYI_9uu_numfmt.exit107.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !2396
  call void @_RNvXs2_NtNtCs6JMX4GRUq9U_4core3num11float_parsedNtNtNtB9_3str6traits7FromStr8from_str(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.o, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.5213.0.copyload215.i, i64 noundef %.sroa.8217.0.copyload219.i) #25, !noalias !2396
  %i.baz = load i8, ptr %i.o, align 8, !range !19, !noalias !2396, !noundef !4
  %i.bba = trunc nuw i8 %i.baz to i1
  br i1 %i.bba, label %bb.nn, label %bb.no

_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit141.i: ; preds = %bb.ng, %bb.nh, %bb.nl, %bb.nm, %.preheader.i132.i, %.preheader114.i117.i
  %.sroa.15224.0.i = phi i64 [ %i.bay, %bb.nm ], [ %i.bab, %bb.nh ], [ %i.bap, %bb.nl ], [ 0, %.preheader.i132.i ], [ 0, %.preheader114.i117.i ], [ %i.azs, %bb.ng ]
  call fastcc void @_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setRexECsbyqtxyC5WYI_9uu_numfmt(ptr noalias nofree noundef align 8 dereferenceable(24) %i.p, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @124, i64 noundef 6, i64 noundef %.sroa.15224.0.i) #26, !noalias !2396
  br label %.split38.i

.split38.i:                                       ; preds = %bb.no, %bb.nn, %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit141.i
  %.sroa.09.0.not.i = phi i1 [ true, %bb.nn ], [ false, %bb.no ], [ false, %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit141.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !2396
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !2396
  %spec.select.i = select i1 %i.jb, ptr @127, ptr inttoptr (i64 1 to ptr)
  %.mask.i = and i8 %.sroa.65.0.copyload, 1
end_hunk_0
