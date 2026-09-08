Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pola-rs/original/polars_parquet-d174a6a0d1de3d93.polars_parquet.b72545e931dce2ac-cgu.13?download=true
inline.NumInlined: 1332
inline.NumDeleted: 801
loop-unroll.NumCompletelyUnrolled: 27
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 42
begin_hunk_0_@_RNvMs_NtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7decoderNtB4_7Decoder13consume_block:bb.a
  %i.ak = load i8, ptr %i.ag, align 1, !dbg !17155, !noundef !636
  %i.al = zext i8 %i.ak to i64, !dbg !17156       ; 3 uses
  %.sroa.0.0.i25 = tail call noundef i64 @llvm.umin.i64(i64 %i.h, i64 %.sroa.0.0.i), !dbg !17157 ; 2 uses
  %i.am = mul i64 %i.h, %i.al, !dbg !17158        ; 2 uses
  %i.an = lshr i64 %i.am, 3, !dbg !17159
  %i.ao = and i64 %i.am, 7, !dbg !17160
  %.not21 = icmp ne i64 %i.ao, 0, !dbg !17161
  %i.ap = zext i1 %.not21 to i64, !dbg !17161
  %.sroa.02.0 = add nuw nsw i64 %i.an, %i.ap, !dbg !17161 ; 5 uses
  %i.aq = mul i64 %.sroa.0.0.i25, %i.al, !dbg !17162 ; 2 uses
  %i.ar = lshr i64 %i.aq, 3, !dbg !17163
  %i.as = and i64 %i.aq, 7, !dbg !17164
  %.not22 = icmp ne i64 %i.as, 0, !dbg !17165
  %i.at = zext i1 %.not22 to i64, !dbg !17165
  %.sroa.03.0 = add nuw nsw i64 %i.ar, %i.at, !dbg !17165 ; 3 uses
  %.not.i26 = icmp ugt i64 %.sroa.02.0, %i.ai, !dbg !17166
  br i1 %.not.i26, label %bb.k, label %_RNvMNtCscgRAwXFJnXP_4core5sliceSh8split_atCsfISxE4fmY1Y_14polars_parquet.exit30, !dbg !17166, !prof !737

bb.k:                                             ; preds = %bb.j
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking9panic_fmt(ptr noundef nonnull @74, ptr noundef nonnull inttoptr (i64 19 to ptr), ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @99) #29, !dbg !17167, !noalias !17113
  unreachable, !dbg !17167

_RNvMNtCscgRAwXFJnXP_4core5sliceSh8split_atCsfISxE4fmY1Y_14polars_parquet.exit30: ; preds = %bb.j
  %.not23 = icmp samesign ugt i64 %.sroa.03.0, %.sroa.02.0
  br i1 %.not23, label %bb.r, label %bb.l, !dbg !17168, !prof !757

bb.l:                                             ; preds = %_RNvMNtCscgRAwXFJnXP_4core5sliceSh8split_atCsfISxE4fmY1Y_14polars_parquet.exit30
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !17169
  call void @_RNvMs_NtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding9bitpacked6decodeINtB4_7DecoderyE18try_new_allow_zeroBc_(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.b, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.ah, i64 noundef %.sroa.03.0, i64 noundef %i.al, i64 noundef %.sroa.0.0.i25), !dbg !17169
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17121), !dbg !17170
  %i.au = load ptr, ptr %i.b, align 8, !dbg !17171, !alias.scope !17121, !noalias !17122, !noundef !636
  %i.av = icmp eq ptr %i.au, null, !dbg !17171
  br i1 %i.av, label %bb.m, label %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultINtNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding9bitpacked6decode7DecoderyENtNtBQ_5error12ParquetErrorE6unwrapBS_.exit, !dbg !17172, !prof !737

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !17173, !noalias !17123
  %i.aw = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !17173
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.aw, i64 32, i1 false), !dbg !17173, !noalias !17122
  invoke void @_RNvNtCscgRAwXFJnXP_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @75, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @76, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @101) #30
          to label %bb.o unwind label %bb.n, !dbg !17174, !noalias !17123

bb.n:                                             ; preds = %bb.m
  %i.ax = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet5error12ParquetErrorEBM_(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.a) #31
          to label %bb.q unwind label %bb.p, !dbg !17175, !noalias !17123

bb.o:                                             ; preds = %bb.m
  unreachable

bb.p:                                             ; preds = %bb.n
  %i.ay = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #32, !dbg !17176, !noalias !17123
  unreachable, !dbg !17176

bb.q:                                             ; preds = %bb.n
  resume { ptr, i32 } %i.ax, !dbg !17176

_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultINtNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding9bitpacked6decode7DecoderyENtNtBQ_5error12ParquetErrorE6unwrapBS_.exit: ; preds = %bb.l
  %i.az = add i64 %.sroa.0.0.i24, -1, !dbg !17177
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ag, i64 1, !dbg !17178
  %i.bb = sub nuw nsw i64 %i.ai, %.sroa.02.0, !dbg !17179
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ah, i64 %.sroa.02.0, !dbg !17180
  %i.bd = lshr i64 %.sroa.0.1.i.i43, 1, !dbg !17181
  %i.be = and i64 %.sroa.0.1.i.i43, 1, !dbg !17182
  %i.bf = sub nsw i64 0, %i.be, !dbg !17183
  %i.bg = xor i64 %i.bd, %i.bf, !dbg !17181
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.08, ptr noundef nonnull readonly align 8 dereferenceable(40) %i.b, i64 40, i1 false), !dbg !17184
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !17185
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !17186
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !17186
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 72, !dbg !17186
  %.sroa.08.40..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.08, i64 40, !dbg !17187
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(512) %.sroa.08.40..sroa_idx, ptr noundef nonnull align 8 dereferenceable(512) %i.bj, i64 512, i1 false), !dbg !17186
  store ptr %i.ba, ptr %i.bh, align 8, !dbg !17188
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !17188
  store i64 %i.az, ptr %.sroa.4.0..sroa_idx, align 8, !dbg !17188
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(552) %i.bi, ptr noundef nonnull align 8 dereferenceable(552) %.sroa.08, i64 552, i1 false), !dbg !17188
  %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 584, !dbg !17188
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 600, !dbg !17188
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx, i8 0, i64 16, i1 false), !dbg !17188
  store i64 %i.bg, ptr %.sroa.6.0..sroa_idx, align 8, !dbg !17188
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 608, !dbg !17188
  store i64 %.sroa.0.0.i, ptr %.sroa.7.0..sroa_idx, align 8, !dbg !17188
  %i.bk = sub nuw i64 %i.j, %.sroa.0.0.i, !dbg !17189
  store i64 %i.bk, ptr %i.i, align 8, !dbg !17189
  store ptr %i.bc, ptr %0, align 8, !dbg !17190
  store i64 %i.bb, ptr %i.p, align 8, !dbg !17190
  ret void, !dbg !17191

bb.r:                                             ; preds = %_RNvMNtCscgRAwXFJnXP_4core5sliceSh8split_atCsfISxE4fmY1Y_14polars_parquet.exit30
  tail call void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %.sroa.03.0, i64 noundef %.sroa.02.0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @102) #29, !dbg !17192
  unreachable, !dbg !17192
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs_NtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7decoderNtB4_7Decoder7try_new(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([664 x i8]) align 8 captures(none) dereferenceable(664) %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef range(i64 0, -9223372036854775808) %2) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !17193 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %i.e = alloca [32 x i8], align 8                ; 6 uses
  %i.f = alloca [24 x i8], align 8                ; 6 uses
  %i.g = alloca [32 x i8], align 8                ; 6 uses
  %i.h = alloca [40 x i8], align 8                ; 7 uses
  %.sroa.6240 = alloca [32 x i8], align 8         ; 7 uses
  %i.i = alloca [32 x i8], align 8                ; 7 uses
  %.sroa.4176 = alloca [24 x i8], align 8         ; 4 uses
  %i.j = alloca [1 x i8], align 1                 ; 4 uses
  %i.k = alloca [8 x i8], align 8                 ; 2 uses
  %i.l = alloca [8 x i8], align 8                 ; 2 uses
  %i.m = alloca [8 x i8], align 8                 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 %2, !dbg !17631 ; 2 uses
  %i.o = icmp samesign eq i64 %2, 0, !dbg !17632
  br i1 %i.o, label %_RNvNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding13zigzag_leb1286decode.exit.thread.thread, label %.lr.ph.i, !dbg !17633

.lr.ph.i:                                         ; preds = %bb.a, %.lr.ph.i
  %.sroa.0.011.i = phi i64 [ %i.w, %.lr.ph.i ], [ 0, %bb.a ]
  %.sroa.02.010.i = phi i32 [ %i.z, %.lr.ph.i ], [ 0, %bb.a ] ; 2 uses
  %.sroa.04.09.i = phi i64 [ %i.p, %.lr.ph.i ], [ 0, %bb.a ] ; 2 uses
  %.sroa.06.08.i = phi ptr [ %i.y, %.lr.ph.i ], [ %1, %bb.a ] ; 2 uses
  %i.p = add nuw nsw i64 %.sroa.04.09.i, 1, !dbg !17634 ; 4 uses
  %i.q = load i8, ptr %.sroa.06.08.i, align 1, !dbg !17635, !alias.scope !17499, !noundef !636 ; 2 uses
  %i.r = and i8 %i.q, 127, !dbg !17636
  %i.s = zext nneg i8 %i.r to i64, !dbg !17637
  %i.t = and i32 %.sroa.02.010.i, 63, !dbg !17638
  %i.u = zext nneg i32 %i.t to i64, !dbg !17638
  %i.v = shl i64 %i.s, %i.u, !dbg !17638
  %i.w = or i64 %i.v, %.sroa.0.011.i, !dbg !17639 ; 8 uses
  %i.x = icmp sgt i8 %i.q, -1, !dbg !17640
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.06.08.i, i64 1 ; 2 uses
  %i.z = add i32 %.sroa.02.010.i, 7
  %i.aa = icmp eq ptr %i.y, %i.n
  %or.cond.i = select i1 %i.x, i1 true, i1 %i.aa, !dbg !17640
  br i1 %or.cond.i, label %_RNvNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding7uleb1286decode.exit, label %.lr.ph.i, !dbg !17640

_RNvNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding7uleb1286decode.exit: ; preds = %.lr.ph.i
  %.not451 = icmp samesign ugt i64 %2, %.sroa.04.09.i, !dbg !17641
  br i1 %.not451, label %bb.b, label %bb.c, !dbg !17641

bb.b:                                             ; preds = %_RNvNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding7uleb1286decode.exit
  %i.ab = sub nuw nsw i64 %2, %i.p, !dbg !17642   ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 %i.p, !dbg !17643 ; 2 uses
  %i.ad = and i64 %i.w, 127, !dbg !17644          ; 2 uses
  store i64 %i.ad, ptr %i.m, align 8, !dbg !17644
  %i.ae = icmp eq i64 %i.ad, 0, !dbg !17645
  br i1 %i.ae, label %bb.e, label %bb.f, !dbg !17645, !prof !17506

bb.c:                                             ; preds = %_RNvNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding7uleb1286decode.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !17646, !noalias !17507
  call void @_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, i64 noundef 44, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1), !dbg !17646, !noalias !17507
  %i.af = load i64, ptr %i.d, align 8, !dbg !17646, !range !736, !noalias !17507, !noundef !636
  %i.ag = trunc nuw i64 %i.af to i1, !dbg !17647
  %i.ah = getelementptr inbounds nuw i8, ptr %i.d, i64 8, !dbg !17648
  %i.ai = load i64, ptr %i.ah, align 8, !dbg !17648, !range !643, !noalias !17507, !noundef !636 ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.d, i64 16, !dbg !17648 ; 2 uses
  br i1 %i.ag, label %bb.d, label %_RNvYNCNvMs_NtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7decoderNtB9_7Decoder7try_new0INtNtNtCscgRAwXFJnXP_4core3ops8function6FnOnceuE9call_onceBh_.exit, !dbg !17647, !prof !737

bb.d:                                             ; preds = %bb.c
  %i.ak = load i64, ptr %i.aj, align 8, !dbg !17649, !noalias !17507
  tail call void @_RNvNtCsgZ49sUHp3tW_5alloc7raw_vec12handle_error(i64 noundef %i.ai, i64 %i.ak) #30, !dbg !17650, !noalias !17507
  unreachable, !dbg !17650

_RNvYNCNvMs_NtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7decoderNtB9_7Decoder7try_new0INtNtNtCscgRAwXFJnXP_4core3ops8function6FnOnceuE9call_onceBh_.exit: ; preds = %bb.c
  %i.al = load ptr, ptr %i.aj, align 8, !dbg !17651, !noalias !17507, !nonnull !636, !noundef !636 ; 2 uses
  %i.am = icmp samesign ugt i64 %i.ai, 43, !dbg !17652
  tail call void @llvm.assume(i1 %i.am), !dbg !17653
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !17654, !noalias !17507
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(44) %i.al, ptr noundef nonnull align 1 dereferenceable(44) @57, i64 44, i1 false), !dbg !17655, !noalias !17507
  %i.an = ptrtoint ptr %i.al to i64, !dbg !17656
  %i.ao = inttoptr i64 %i.ai to ptr, !dbg !17657
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !17658
  store i64 -9223372036854775808, ptr %i.ap, align 8, !dbg !17658
  %.sroa.2261.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !17658
  store ptr %i.ao, ptr %.sroa.2261.0..sroa_idx, align 8, !dbg !17658
  %.sroa.3262.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !17658
  store i64 %i.an, ptr %.sroa.3262.0..sroa_idx, align 8, !dbg !17658
  %.sroa.4263.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !17658
  store i64 44, ptr %.sroa.4263.0..sroa_idx, align 8, !dbg !17658
  store ptr null, ptr %0, align 8, !dbg !17658
  br label %bb.u, !dbg !17659

bb.e:                                             ; preds = %bb.b
  %i.aq = icmp eq i64 %2, %i.p, !dbg !17660
  br i1 %i.aq, label %_RNvNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding13zigzag_leb1286decode.exit.thread.thread, label %.lr.ph.i369, !dbg !17661

.lr.ph.i369:                                      ; preds = %bb.e, %.lr.ph.i369
  %.sroa.0.011.i370 = phi i64 [ %i.ay, %.lr.ph.i369 ], [ 0, %bb.e ]
  %.sroa.02.010.i371 = phi i32 [ %i.bb, %.lr.ph.i369 ], [ 0, %bb.e ] ; 2 uses
  %.sroa.04.09.i372 = phi i64 [ %i.ar, %.lr.ph.i369 ], [ 0, %bb.e ] ; 2 uses
  %.sroa.06.08.i373 = phi ptr [ %i.ba, %.lr.ph.i369 ], [ %i.ac, %bb.e ] ; 2 uses
  %i.ar = add nuw nsw i64 %.sroa.04.09.i372, 1, !dbg !17662 ; 4 uses
  %i.as = load i8, ptr %.sroa.06.08.i373, align 1, !dbg !17663, !alias.scope !17512, !noundef !636 ; 2 uses
  %i.at = and i8 %i.as, 127, !dbg !17664
  %i.au = zext nneg i8 %i.at to i64, !dbg !17665
  %i.av = and i32 %.sroa.02.010.i371, 63, !dbg !17666
  %i.aw = zext nneg i32 %i.av to i64, !dbg !17666
  %i.ax = shl i64 %i.au, %i.aw, !dbg !17666
  %i.ay = or i64 %i.ax, %.sroa.0.011.i370, !dbg !17667 ; 8 uses
  %i.az = icmp sgt i8 %i.as, -1, !dbg !17668
  %i.ba = getelementptr inbounds nuw i8, ptr %.sroa.06.08.i373, i64 1 ; 2 uses
  %i.bb = add i32 %.sroa.02.010.i371, 7
  %i.bc = icmp eq ptr %i.ba, %i.n
  %or.cond.i374 = select i1 %i.az, i1 true, i1 %i.bc, !dbg !17668
  br i1 %or.cond.i374, label %_RNvNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding7uleb1286decode.exit377, label %.lr.ph.i369, !dbg !17668

_RNvNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding7uleb1286decode.exit377: ; preds = %.lr.ph.i369
  %.not452 = icmp samesign ugt i64 %i.ab, %.sroa.04.09.i372, !dbg !17669
  br i1 %.not452, label %_RNvNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding7uleb1286decode.exit377.thread, label %bb.g, !dbg !17669

bb.f:                                             ; preds = %bb.b
  call void @_RINvNtCscgRAwXFJnXP_4core9panicking13assert_failedjjEB4_(i8 noundef 0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.m, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) @105, ptr noundef null, ptr undef, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @112) #29, !dbg !17670
  unreachable, !dbg !17670

_RNvNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding7uleb1286decode.exit377.thread: ; preds = %_RNvNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding7uleb1286decode.exit377
  %i.bd = sub nuw nsw i64 %i.ab, %i.ar, !dbg !17671 ; 3 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.ar, !dbg !17672 ; 3 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 %2, !dbg !17673 ; 2 uses
  %i.bg = icmp eq i64 %i.ab, %i.ar, !dbg !17674
  br i1 %i.bg, label %_RNvNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding13zigzag_leb1286decode.exit.thread, label %.lr.ph.i378, !dbg !17675

.lr.ph.i378:                                      ; preds = %_RNvNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding7uleb1286decode.exit377.thread, %.lr.ph.i378
  %.sroa.0.011.i379 = phi i64 [ %i.bo, %.lr.ph.i378 ], [ 0, %_RNvNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding7uleb1286decode.exit377.thread ]
  %.sroa.02.010.i380 = phi i32 [ %i.br, %.lr.ph.i378 ], [ 0, %_RNvNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding7uleb1286decode.exit377.thread ] ; 2 uses
  %.sroa.04.09.i381 = phi i64 [ %i.bh, %.lr.ph.i378 ], [ 0, %_RNvNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding7uleb1286decode.exit377.thread ] ; 2 uses
  %.sroa.06.08.i382 = phi ptr [ %i.bq, %.lr.ph.i378 ], [ %i.be, %_RNvNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding7uleb1286decode.exit377.thread ] ; 2 uses
  %i.bh = add nuw nsw i64 %.sroa.04.09.i381, 1, !dbg !17676 ; 4 uses
  %i.bi = load i8, ptr %.sroa.06.08.i382, align 1, !dbg !17677, !alias.scope !17522, !noundef !636 ; 2 uses
  %i.bj = and i8 %i.bi, 127, !dbg !17678
  %i.bk = zext nneg i8 %i.bj to i64, !dbg !17679
  %i.bl = and i32 %.sroa.02.010.i380, 63, !dbg !17680
  %i.bm = zext nneg i32 %i.bl to i64, !dbg !17680
  %i.bn = shl i64 %i.bk, %i.bm, !dbg !17680
  %i.bo = or i64 %i.bn, %.sroa.0.011.i379, !dbg !17681 ; 3 uses
  %i.bp = icmp sgt i8 %i.bi, -1, !dbg !17682
  %i.bq = getelementptr inbounds nuw i8, ptr %.sroa.06.08.i382, i64 1 ; 2 uses
  %i.br = add i32 %.sroa.02.010.i380, 7
  %i.bs = icmp eq ptr %i.bq, %i.bf
  %or.cond.i383 = select i1 %i.bp, i1 true, i1 %i.bs, !dbg !17682
  br i1 %or.cond.i383, label %_RNvNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding7uleb1286decode.exit386, label %.lr.ph.i378, !dbg !17682

_RNvNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding7uleb1286decode.exit386: ; preds = %.lr.ph.i378
  %.not453 = icmp samesign ugt i64 %i.bd, %.sroa.04.09.i381, !dbg !17683
  br i1 %.not453, label %_RNvNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding7uleb1286decode.exit386.thread, label %bb.i, !dbg !17683

bb.g:                                             ; preds = %_RNvNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding7uleb1286decode.exit377
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !17684, !noalias !17530
  call void @_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, i64 noundef 44, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1), !dbg !17684, !noalias !17530
  %i.bt = load i64, ptr %i.c, align 8, !dbg !17684, !range !736, !noalias !17530, !noundef !636
  %i.bu = trunc nuw i64 %i.bt to i1, !dbg !17685
  %i.bv = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !17686
  %i.bw = load i64, ptr %i.bv, align 8, !dbg !17686, !range !643, !noalias !17530, !noundef !636 ; 3 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.c, i64 16, !dbg !17686 ; 2 uses
  br i1 %i.bu, label %bb.h, label %_RNvYNCNvMs_NtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7decoderNtB9_7Decoder7try_new0INtNtNtCscgRAwXFJnXP_4core3ops8function6FnOnceuE9call_onceBh_.exit389, !dbg !17685, !prof !737

bb.h:                                             ; preds = %bb.g
  %i.by = load i64, ptr %i.bx, align 8, !dbg !17687, !noalias !17530
  tail call void @_RNvNtCsgZ49sUHp3tW_5alloc7raw_vec12handle_error(i64 noundef %i.bw, i64 %i.by) #30, !dbg !17688, !noalias !17530
  unreachable, !dbg !17688

_RNvYNCNvMs_NtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7decoderNtB9_7Decoder7try_new0INtNtNtCscgRAwXFJnXP_4core3ops8function6FnOnceuE9call_onceBh_.exit389: ; preds = %bb.g
  %i.bz = load ptr, ptr %i.bx, align 8, !dbg !17689, !noalias !17530, !nonnull !636, !noundef !636 ; 2 uses
  %i.ca = icmp samesign ugt i64 %i.bw, 43, !dbg !17690
  tail call void @llvm.assume(i1 %i.ca), !dbg !17691
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !17692, !noalias !17530
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(44) %i.bz, ptr noundef nonnull align 1 dereferenceable(44) @57, i64 44, i1 false), !dbg !17693, !noalias !17530
  %i.cb = ptrtoint ptr %i.bz to i64, !dbg !17694
  %i.cc = inttoptr i64 %i.bw to ptr, !dbg !17695
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !17696
  store i64 -9223372036854775808, ptr %i.cd, align 8, !dbg !17696
  %.sroa.2273.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !17696
  store ptr %i.cc, ptr %.sroa.2273.0..sroa_idx, align 8, !dbg !17696
  %.sroa.3274.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !17696
  store i64 %i.cb, ptr %.sroa.3274.0..sroa_idx, align 8, !dbg !17696
  %.sroa.4275.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !17696
  store i64 44, ptr %.sroa.4275.0..sroa_idx, align 8, !dbg !17696
  store ptr null, ptr %0, align 8, !dbg !17696
  br label %bb.u, !dbg !17697

_RNvNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding7uleb1286decode.exit386.thread: ; preds = %_RNvNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding7uleb1286decode.exit386
  %i.ce = sub nuw nsw i64 %i.bd, %i.bh, !dbg !17698 ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.be, i64 %i.bh, !dbg !17699 ; 3 uses
  %i.cg = icmp eq i64 %i.bd, %i.bh, !dbg !17700
  br i1 %i.cg, label %_RNvNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding13zigzag_leb1286decode.exit.thread, label %.lr.ph.i.i, !dbg !17701

.lr.ph.i.i:                                       ; preds = %_RNvNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding7uleb1286decode.exit386.thread, %.lr.ph.i.i
  %.sroa.0.011.i.i = phi i64 [ %i.co, %.lr.ph.i.i ], [ 0, %_RNvNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding7uleb1286decode.exit386.thread ]
  %.sroa.02.010.i.i = phi i32 [ %i.cr, %.lr.ph.i.i ], [ 0, %_RNvNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding7uleb1286decode.exit386.thread ] ; 2 uses
  %.sroa.04.09.i.i = phi i64 [ %i.ch, %.lr.ph.i.i ], [ 0, %_RNvNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding7uleb1286decode.exit386.thread ] ; 2 uses
  %.sroa.06.08.i.i = phi ptr [ %i.cq, %.lr.ph.i.i ], [ %i.cf, %_RNvNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding7uleb1286decode.exit386.thread ] ; 2 uses
  %i.ch = add nuw nsw i64 %.sroa.04.09.i.i, 1, !dbg !17702 ; 2 uses
  %i.ci = load i8, ptr %.sroa.06.08.i.i, align 1, !dbg !17703, !alias.scope !17536, !noundef !636 ; 2 uses
  %i.cj = and i8 %i.ci, 127, !dbg !17704
  %i.ck = zext nneg i8 %i.cj to i64, !dbg !17705
  %i.cl = and i32 %.sroa.02.010.i.i, 63, !dbg !17706
  %i.cm = zext nneg i32 %i.cl to i64, !dbg !17706
  %i.cn = shl i64 %i.ck, %i.cm, !dbg !17706
  %i.co = or i64 %i.cn, %.sroa.0.011.i.i, !dbg !17707 ; 3 uses
  %i.cp = icmp sgt i8 %i.ci, -1, !dbg !17708
  %i.cq = getelementptr inbounds nuw i8, ptr %.sroa.06.08.i.i, i64 1 ; 2 uses
  %i.cr = add i32 %.sroa.02.010.i.i, 7
  %i.cs = icmp eq ptr %i.cq, %i.bf
  %or.cond.i.i = select i1 %i.cp, i1 true, i1 %i.cs, !dbg !17708
  br i1 %or.cond.i.i, label %_RNvNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding13zigzag_leb1286decode.exit, label %.lr.ph.i.i, !dbg !17708

_RNvNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding13zigzag_leb1286decode.exit: ; preds = %.lr.ph.i.i
  %i.ct = lshr i64 %i.co, 1, !dbg !17709
  %i.cu = and i64 %i.co, 1, !dbg !17710
  %i.cv = sub nsw i64 0, %i.cu, !dbg !17711
  %i.cw = xor i64 %i.ct, %i.cv, !dbg !17709
  %.not = icmp samesign ugt i64 %i.ce, %.sroa.04.09.i.i, !dbg !17712
  br i1 %.not, label %_RNvNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding13zigzag_leb1286decode.exit.thread, label %bb.k, !dbg !17712

bb.i:                                             ; preds = %_RNvNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding7uleb1286decode.exit386
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !17713, !noalias !17544
  call void @_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, i64 noundef 44, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1), !dbg !17713, !noalias !17544
  %i.cx = load i64, ptr %i.b, align 8, !dbg !17713, !range !736, !noalias !17544, !noundef !636
  %i.cy = trunc nuw i64 %i.cx to i1, !dbg !17714
  %i.cz = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !17715
  %i.da = load i64, ptr %i.cz, align 8, !dbg !17715, !range !643, !noalias !17544, !noundef !636 ; 3 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !17715 ; 2 uses
  br i1 %i.cy, label %bb.j, label %_RNvYNCNvMs_NtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7decoderNtB9_7Decoder7try_new0INtNtNtCscgRAwXFJnXP_4core3ops8function6FnOnceuE9call_onceBh_.exit392, !dbg !17714, !prof !737

bb.j:                                             ; preds = %bb.i
  %i.dc = load i64, ptr %i.db, align 8, !dbg !17716, !noalias !17544
  tail call void @_RNvNtCsgZ49sUHp3tW_5alloc7raw_vec12handle_error(i64 noundef %i.da, i64 %i.dc) #30, !dbg !17717, !noalias !17544
  unreachable, !dbg !17717

_RNvYNCNvMs_NtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7decoderNtB9_7Decoder7try_new0INtNtNtCscgRAwXFJnXP_4core3ops8function6FnOnceuE9call_onceBh_.exit392: ; preds = %bb.i
  %i.dd = load ptr, ptr %i.db, align 8, !dbg !17718, !noalias !17544, !nonnull !636, !noundef !636 ; 2 uses
  %i.de = icmp samesign ugt i64 %i.da, 43, !dbg !17719
  tail call void @llvm.assume(i1 %i.de), !dbg !17720
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !17721, !noalias !17544
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(44) %i.dd, ptr noundef nonnull align 1 dereferenceable(44) @57, i64 44, i1 false), !dbg !17722, !noalias !17544
  %i.df = ptrtoint ptr %i.dd to i64, !dbg !17723
  %i.dg = inttoptr i64 %i.da to ptr, !dbg !17724
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !17725
  store i64 -9223372036854775808, ptr %i.dh, align 8, !dbg !17725
  %.sroa.2285.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !17725
  store ptr %i.dg, ptr %.sroa.2285.0..sroa_idx, align 8, !dbg !17725
  %.sroa.3286.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !17725
  store i64 %i.df, ptr %.sroa.3286.0..sroa_idx, align 8, !dbg !17725
  %.sroa.4287.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !17725
  store i64 44, ptr %.sroa.4287.0..sroa_idx, align 8, !dbg !17725
  store ptr null, ptr %0, align 8, !dbg !17725
  br label %bb.u, !dbg !17726

_RNvNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding13zigzag_leb1286decode.exit.thread: ; preds = %_RNvNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding7uleb1286decode.exit377.thread, %_RNvNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding7uleb1286decode.exit386.thread, %_RNvNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding13zigzag_leb1286decode.exit
  %i.di = phi i64 [ %i.cw, %_RNvNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding13zigzag_leb1286decode.exit ], [ 0, %_RNvNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding7uleb1286decode.exit386.thread ], [ 0, %_RNvNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding7uleb1286decode.exit377.thread ]
  %.sroa.04.1.i.i520 = phi i64 [ %i.ch, %_RNvNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding13zigzag_leb1286decode.exit ], [ 0, %_RNvNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding7uleb1286decode.exit386.thread ], [ 0, %_RNvNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding7uleb1286decode.exit377.thread ] ; 2 uses
  %.sroa.0.1.i385442509517 = phi i64 [ %i.bo, %_RNvNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding13zigzag_leb1286decode.exit ], [ %i.bo, %_RNvNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding7uleb1286decode.exit386.thread ], [ 0, %_RNvNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding7uleb1286decode.exit377.thread ] ; 4 uses
  %i.dj = phi i64 [ %i.ce, %_RNvNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding13zigzag_leb1286decode.exit ], [ 0, %_RNvNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding7uleb1286decode.exit386.thread ], [ 0, %_RNvNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding7uleb1286decode.exit377.thread ]
  %i.dk = phi ptr [ %i.cf, %_RNvNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding13zigzag_leb1286decode.exit ], [ %i.cf, %_RNvNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding7uleb1286decode.exit386.thread ], [ %i.be, %_RNvNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding7uleb1286decode.exit377.thread ]
  %i.dl = sub nuw nsw i64 %i.dj, %.sroa.04.1.i.i520, !dbg !17727 ; 5 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dk, i64 %.sroa.04.1.i.i520, !dbg !17728 ; 3 uses
  %i.dn = icmp eq i64 %i.ay, 0, !dbg !17729
  br i1 %i.dn, label %_RNvNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding13zigzag_leb1286decode.exit.thread.thread, label %bb.m, !dbg !17729

bb.k:                                             ; preds = %_RNvNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding13zigzag_leb1286decode.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !17730, !noalias !17550
  call void @_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef 44, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1), !dbg !17730, !noalias !17550
  %i.do = load i64, ptr %i.a, align 8, !dbg !17730, !range !736, !noalias !17550, !noundef !636
  %i.dp = trunc nuw i64 %i.do to i1, !dbg !17731
  %i.dq = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !17732
  %i.dr = load i64, ptr %i.dq, align 8, !dbg !17732, !range !643, !noalias !17550, !noundef !636 ; 3 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !17732 ; 2 uses
  br i1 %i.dp, label %bb.l, label %_RNvYNCNvMs_NtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7decoderNtB9_7Decoder7try_new0INtNtNtCscgRAwXFJnXP_4core3ops8function6FnOnceuE9call_onceBh_.exit395, !dbg !17731, !prof !737

bb.l:                                             ; preds = %bb.k
  %i.dt = load i64, ptr %i.ds, align 8, !dbg !17733, !noalias !17550
  tail call void @_RNvNtCsgZ49sUHp3tW_5alloc7raw_vec12handle_error(i64 noundef %i.dr, i64 %i.dt) #30, !dbg !17734, !noalias !17550
  unreachable, !dbg !17734

_RNvYNCNvMs_NtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7decoderNtB9_7Decoder7try_new0INtNtNtCscgRAwXFJnXP_4core3ops8function6FnOnceuE9call_onceBh_.exit395: ; preds = %bb.k
  %i.du = load ptr, ptr %i.ds, align 8, !dbg !17735, !noalias !17550, !nonnull !636, !noundef !636 ; 2 uses
  %i.dv = icmp samesign ugt i64 %i.dr, 43, !dbg !17736
  tail call void @llvm.assume(i1 %i.dv), !dbg !17737
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !17738, !noalias !17550
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(44) %i.du, ptr noundef nonnull align 1 dereferenceable(44) @57, i64 44, i1 false), !dbg !17739, !noalias !17550
  %i.dw = ptrtoint ptr %i.du to i64, !dbg !17740
  %i.dx = inttoptr i64 %i.dr to ptr, !dbg !17741
  %i.dy = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !17742
  store i64 -9223372036854775808, ptr %i.dy, align 8, !dbg !17742
  %.sroa.2297.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !17742
  store ptr %i.dx, ptr %.sroa.2297.0..sroa_idx, align 8, !dbg !17742
  %.sroa.3298.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !17742
  store i64 %i.dw, ptr %.sroa.3298.0..sroa_idx, align 8, !dbg !17742
  %.sroa.4299.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !17742
  store i64 44, ptr %.sroa.4299.0..sroa_idx, align 8, !dbg !17742
  store ptr null, ptr %0, align 8, !dbg !17742
  br label %bb.u, !dbg !17743

bb.m:                                             ; preds = %_RNvNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding13zigzag_leb1286decode.exit.thread
  %i.dz = urem i64 %i.w, %i.ay, !dbg !17729       ; 2 uses
  %i.ea = udiv exact i64 %i.w, %i.ay, !dbg !17744 ; 8 uses
  store i64 %i.dz, ptr %i.l, align 8, !dbg !17729
  %i.eb = icmp eq i64 %i.dz, 0, !dbg !17745
  br i1 %i.eb, label %bb.n, label %bb.o, !dbg !17745, !prof !1003

_RNvNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding13zigzag_leb1286decode.exit.thread.thread: ; preds = %bb.a, %bb.e, %_RNvNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding13zigzag_leb1286decode.exit.thread
  tail call void @_RNvNtNtCscgRAwXFJnXP_4core9panicking11panic_const23panic_const_rem_by_zero(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @106) #29, !dbg !17729
  unreachable, !dbg !17729

bb.n:                                             ; preds = %bb.m
  %i.ec = and i64 %i.ea, 31, !dbg !17744          ; 2 uses
  store i64 %i.ec, ptr %i.k, align 8, !dbg !17744
  %i.ed = icmp eq i64 %i.ec, 0, !dbg !17746
  br i1 %i.ed, label %bb.p, label %bb.q, !dbg !17746, !prof !1003

bb.o:                                             ; preds = %bb.m
  call void @_RINvNtCscgRAwXFJnXP_4core9panicking13assert_failedjjEB4_(i8 noundef 0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.l, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) @105, ptr noundef null, ptr undef, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @111) #29, !dbg !17747
  unreachable, !dbg !17747

bb.p:                                             ; preds = %bb.n
  %i.ee = icmp ugt i64 %.sroa.0.1.i385442509517, 1, !dbg !17748
  br i1 %i.ee, label %.lr.ph, label %.thread443, !dbg !17748

bb.q:                                             ; preds = %bb.n
  call void @_RINvNtCscgRAwXFJnXP_4core9panicking13assert_failedjjEB4_(i8 noundef 0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.k, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) @105, ptr noundef null, ptr undef, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @110) #29, !dbg !17749
  unreachable, !dbg !17749

._crit_edge:                                      ; preds = %bb.ac
  %i.ef = sub nsw i64 %i.dl, %i.gu, !dbg !17750   ; 2 uses
  %.not365 = icmp ugt i64 %i.gu, %i.dl
  br i1 %.not365, label %bb.r, label %.thread443, !dbg !17751, !prof !17559

.lr.ph:                                           ; preds = %bb.p
  %3 = icmp eq i64 %i.w, 0
  br i1 %3, label %bb.v, label %.lr.ph.split.preheader, !dbg !17752

.lr.ph.split.preheader:                           ; preds = %.lr.ph
  %i.eg = add i64 %.sroa.0.1.i385442509517, -1, !dbg !17753
  br label %.lr.ph.split, !dbg !17754

.lr.ph.split:                                     ; preds = %.lr.ph.split.preheader, %bb.ac
  %.sroa.0137.0475 = phi i64 [ %i.gw, %bb.ac ], [ %i.eg, %.lr.ph.split.preheader ] ; 4 uses
  %.sroa.0205.1474 = phi ptr [ %i.gv, %bb.ac ], [ %i.dm, %.lr.ph.split.preheader ] ; 4 uses
  %.sroa.13.1473 = phi i64 [ %i.gu, %bb.ac ], [ %i.dl, %.lr.ph.split.preheader ] ; 4 uses
  %i.eh = udiv i64 %.sroa.0137.0475, %i.ea, !dbg !17752
  %i.ei = urem i64 %.sroa.0137.0475, %i.ea, !dbg !17755
  %.not366 = icmp ne i64 %i.ei, 0, !dbg !17756
  %i.ej = zext i1 %.not366 to i64, !dbg !17756
  %.sroa.0140.0 = add nuw nsw i64 %i.eh, %i.ej, !dbg !17756 ; 2 uses
  %.sroa.0.0.i = tail call noundef i64 @llvm.umin.i64(i64 %.sroa.0140.0, i64 %i.ay), !dbg !17757 ; 4 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %.sroa.0205.1474, i64 %.sroa.13.1473, !dbg !17758
  %i.el = icmp samesign eq i64 %.sroa.13.1473, 0, !dbg !17759
  br i1 %i.el, label %_RNvNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding13zigzag_leb1286decode.exit404, label %.lr.ph.i.i396, !dbg !17754

.thread443:                                       ; preds = %bb.p, %._crit_edge
  %i.em = phi i64 [ %i.ef, %._crit_edge ], [ 0, %bb.p ]
  %.sroa.0205.0448 = phi ptr [ %i.gv, %._crit_edge ], [ %i.dm, %bb.p ]
  %.sroa.13.0447 = phi i64 [ %i.gu, %._crit_edge ], [ %i.dl, %bb.p ]
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6240), !dbg !17568
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !dbg !17568
  call void @_RNvMs_NtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding9bitpacked6decodeINtB4_7DecoderyE18try_new_allow_zeroBc_(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.h, ptr noalias noundef nonnull readonly captures(address, read_provenance) inttoptr (i64 1 to ptr), i64 noundef 0, i64 noundef 0, i64 noundef 1), !dbg !17568
  %i.en = load ptr, ptr %i.h, align 8, !dbg !17760, !noundef !636 ; 2 uses
  %i.eo = icmp eq ptr %i.en, null, !dbg !17760
  br i1 %i.eo, label %bb.s, label %bb.t, !dbg !17761

bb.r:                                             ; preds = %._crit_edge
  tail call void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.ef, i64 noundef %i.dl, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @107) #29, !dbg !17762
  unreachable, !dbg !17762

bb.s:                                             ; preds = %.thread443
  %i.ep = getelementptr inbounds nuw i8, ptr %i.h, i64 8, !dbg !17763
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6240, ptr noundef nonnull align 8 dereferenceable(32) %i.ep, i64 32, i1 false), !dbg !17763
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !dbg !17764
  %i.eq = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !17765
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.eq, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6240, i64 32, i1 false), !dbg !17764
  store ptr null, ptr %0, align 8, !dbg !17765
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6240), !dbg !17766
  br label %bb.u, !dbg !17767

bb.t:                                             ; preds = %.thread443
  %i.er = icmp ne i64 %.sroa.0.1.i385442509517, 0, !dbg !17768
  %i.es = zext i1 %i.er to i64, !dbg !17769
  %i.et = tail call i64 @llvm.usub.sat.i64(i64 %.sroa.0.1.i385442509517, i64 1), !dbg !17770
  %.sroa.5344.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 8, !dbg !17771
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6240, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.5344.0..sroa_idx, i64 32, i1 false), !dbg !17771
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !dbg !17764
  %.sroa.8249.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40, !dbg !17772
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.8249.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6240, i64 32, i1 false), !dbg !17568
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 72, !dbg !17772
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(512) %.sroa.9.0..sroa_idx, i8 0, i64 512, i1 false), !dbg !17773
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6240), !dbg !17766
  store ptr %i.dm, ptr %0, align 8, !dbg !17772
  %.sroa.4245.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !17772
  store i64 %i.em, ptr %.sroa.4245.0..sroa_idx, align 8, !dbg !17772
  %.sroa.5246.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !17772
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.5246.0..sroa_idx, align 8, !dbg !17772
  %.sroa.6247.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !17772
  store i64 0, ptr %.sroa.6247.0..sroa_idx, align 8, !dbg !17772
  %.sroa.7248.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !17772
  store ptr %i.en, ptr %.sroa.7248.0..sroa_idx, align 8, !dbg !17772
  %.sroa.10250.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 584, !dbg !17772
  %.sroa.13251.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 608, !dbg !17772
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.10250.0..sroa_idx, i8 0, i64 24, i1 false), !dbg !17772
  store i64 %i.es, ptr %.sroa.13251.0..sroa_idx, align 8, !dbg !17772
  %.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 616, !dbg !17772
  store i64 %i.ay, ptr %.sroa.14.0..sroa_idx, align 8, !dbg !17772
  %.sroa.15.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 624, !dbg !17772
  store i64 %i.w, ptr %.sroa.15.0..sroa_idx, align 8, !dbg !17772
  %.sroa.16.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 632, !dbg !17772
  store i64 %i.et, ptr %.sroa.16.0..sroa_idx, align 8, !dbg !17772
  %.sroa.17.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 640, !dbg !17772
  store i64 %i.di, ptr %.sroa.17.0..sroa_idx, align 8, !dbg !17772
  %.sroa.18.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 648, !dbg !17772
  store ptr %.sroa.0205.0448, ptr %.sroa.18.0..sroa_idx, align 8, !dbg !17772
  %.sroa.19.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 656, !dbg !17772
  store i64 %.sroa.13.0447, ptr %.sroa.19.0..sroa_idx, align 8, !dbg !17772
  br label %bb.u, !dbg !17774

bb.u:                                             ; preds = %bb.s, %bb.ae, %.split, %bb.ab, %bb.x, %bb.t, %_RNvYNCNvMs_NtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7decoderNtB9_7Decoder7try_new0INtNtNtCscgRAwXFJnXP_4core3ops8function6FnOnceuE9call_onceBh_.exit395, %_RNvYNCNvMs_NtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7decoderNtB9_7Decoder7try_new0INtNtNtCscgRAwXFJnXP_4core3ops8function6FnOnceuE9call_onceBh_.exit392, %_RNvYNCNvMs_NtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7decoderNtB9_7Decoder7try_new0INtNtNtCscgRAwXFJnXP_4core3ops8function6FnOnceuE9call_onceBh_.exit389, %_RNvYNCNvMs_NtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7decoderNtB9_7Decoder7try_new0INtNtNtCscgRAwXFJnXP_4core3ops8function6FnOnceuE9call_onceBh_.exit
  ret void, !dbg !17774

.lr.ph.i.i396:                                    ; preds = %.lr.ph.split, %.lr.ph.i.i396
  %.sroa.04.09.i.i399 = phi i64 [ %i.eu, %.lr.ph.i.i396 ], [ 0, %.lr.ph.split ]
  %.sroa.06.08.i.i400 = phi ptr [ %i.ex, %.lr.ph.i.i396 ], [ %.sroa.0205.1474, %.lr.ph.split ] ; 2 uses
  %i.eu = add nuw nsw i64 %.sroa.04.09.i.i399, 1, !dbg !17775 ; 2 uses
  %i.ev = load i8, ptr %.sroa.06.08.i.i400, align 1, !dbg !17776, !alias.scope !17576, !noundef !636
  %i.ew = icmp sgt i8 %i.ev, -1, !dbg !17777
  %i.ex = getelementptr inbounds nuw i8, ptr %.sroa.06.08.i.i400, i64 1 ; 2 uses
  %i.ey = icmp eq ptr %i.ex, %i.ek
  %or.cond.i.i401 = select i1 %i.ew, i1 true, i1 %i.ey, !dbg !17777
  br i1 %or.cond.i.i401, label %_RNvNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding13zigzag_leb1286decode.exit404, label %.lr.ph.i.i396, !dbg !17777

_RNvNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding13zigzag_leb1286decode.exit404: ; preds = %.lr.ph.i.i396, %.lr.ph.split
  %.sroa.04.1.i.i402 = phi i64 [ 0, %.lr.ph.split ], [ %i.eu, %.lr.ph.i.i396 ], !dbg !17778 ; 3 uses
  %i.ez = icmp ult i64 %.sroa.13.1473, %.sroa.04.1.i.i402, !dbg !17779
  br i1 %i.ez, label %bb.x, label %bb.w, !dbg !17779

bb.v:                                             ; preds = %.lr.ph
  tail call void @_RNvNtNtCscgRAwXFJnXP_4core9panicking11panic_const23panic_const_div_by_zero(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @108) #29, !dbg !17752
  unreachable, !dbg !17752

bb.w:                                             ; preds = %_RNvNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding13zigzag_leb1286decode.exit404
  %i.fa = sub nuw nsw i64 %.sroa.13.1473, %.sroa.04.1.i.i402, !dbg !17780 ; 3 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %.sroa.0205.1474, i64 %.sroa.04.1.i.i402, !dbg !17781 ; 8 uses
  %i.fc = icmp ult i64 %i.fa, %i.ay, !dbg !17782
  br i1 %i.fc, label %bb.y, label %bb.z, !dbg !17782

bb.x:                                             ; preds = %_RNvNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding13zigzag_leb1286decode.exit404
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !dbg !17783
  call fastcc void @_RNCNvMs_NtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7decoderNtB6_7Decoder7try_news_0Be_(ptr noalias noundef align 8 captures(none) dereferenceable(32) %i.g) #34, !dbg !17783
  %.sroa.0152.0.copyload = load i64, ptr %i.g, align 8, !dbg !17784
  %.sroa.6154.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 8, !dbg !17784
  %.sroa.6154.0.copyload = load ptr, ptr %.sroa.6154.0..sroa_idx, align 8, !dbg !17784
  %.sroa.8157.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 16, !dbg !17784
  %i.fd = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !17785
  %.sroa.2309.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !17785
  %.sroa.3310.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !17785
  %i.fe = load <2 x i64>, ptr %.sroa.8157.0..sroa_idx, align 8, !dbg !17784
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !17786
  store i64 %.sroa.0152.0.copyload, ptr %i.fd, align 8, !dbg !17785
  store ptr %.sroa.6154.0.copyload, ptr %.sroa.2309.0..sroa_idx, align 8, !dbg !17785
  store <2 x i64> %i.fe, ptr %.sroa.3310.0..sroa_idx, align 8, !dbg !17785
  store ptr null, ptr %0, align 8, !dbg !17785
  br label %bb.u, !dbg !17787

bb.y:                                             ; preds = %bb.w
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !17788
  call void @_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.f, i64 noundef 48, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1), !dbg !17788
  %i.ff = load i64, ptr %i.f, align 8, !dbg !17788, !range !736, !noundef !636
  %i.fg = trunc nuw i64 %i.ff to i1, !dbg !17789
  %i.fh = getelementptr inbounds nuw i8, ptr %i.f, i64 8, !dbg !17790
  %i.fi = load i64, ptr %i.fh, align 8, !dbg !17790, !range !643, !noundef !636 ; 3 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %i.f, i64 16, !dbg !17790 ; 2 uses
  br i1 %i.fg, label %bb.ad, label %bb.ae, !dbg !17789, !prof !737

bb.z:                                             ; preds = %bb.w
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fb, i64 %.sroa.0.0.i, !dbg !17791
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0205.1474) ]
  %cond = icmp eq i64 %.sroa.0140.0, 0, !dbg !17792
  br i1 %cond, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtBY_8adapters6copied9copy_foldhjNCINvNtB1K_3map8map_foldhjjNCNvMs_NtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding15delta_bitpacked7decoderNtB2P_7Decoder7try_news1_0NCINvXsK_NtBW_5accumjNtB4G_3Sum3sumINtB2m_3MapINtB1I_6CopiedBF_EB2I_EE0E0E0EB2X_.exit, label %.lr.ph547, !dbg !17792

bb.aa:                                            ; preds = %.lr.ph547
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fm, i64 1, !dbg !17793 ; 2 uses
  %.not.not.not.i.not = icmp eq ptr %i.fl, %i.fk, !dbg !17794
  br i1 %.not.not.not.i.not, label %.preheader.preheader, label %.lr.ph547, !dbg !17792

.lr.ph547:                                        ; preds = %bb.z, %bb.aa
  %i.fm = phi ptr [ %i.fl, %bb.aa ], [ %i.fb, %bb.z ] ; 2 uses
  %.val.i = load i8, ptr %i.fm, align 1, !dbg !17795, !noalias !17605, !noundef !636 ; 2 uses
  %i.fn = icmp ugt i8 %.val.i, 64, !dbg !17796
  br i1 %i.fn, label %.split, label %bb.aa, !dbg !17795

.split:                                           ; preds = %.lr.ph547
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !dbg !17797
  store i8 %.val.i, ptr %i.j, align 1, !dbg !17797
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4176), !dbg !17798
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !dbg !17799
  store ptr %i.j, ptr %i.i, align 8, !dbg !17799
  %.sroa.4324.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 8, !dbg !17799
  store ptr @_RNvXNtNtNtCscgRAwXFJnXP_4core3fmt3num3imphNtB6_7Display3fmt, ptr %.sroa.4324.0..sroa_idx, align 8, !dbg !17799
  %i.fo = getelementptr inbounds nuw i8, ptr %i.i, i64 16, !dbg !17799
  store ptr @7, ptr %i.fo, align 8, !dbg !17799
  %.sroa.4328.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 24, !dbg !17799
  store ptr @_RNvXNtNtNtCscgRAwXFJnXP_4core3fmt3num3imphNtB6_7Display3fmt, ptr %.sroa.4328.0..sroa_idx, align 8, !dbg !17799
  call void @_RNvNvNtCsgZ49sUHp3tW_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %.sroa.4176, ptr noundef nonnull @109, ptr noundef nonnull %i.i), !dbg !17800
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !dbg !17801
  %i.fp = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !17802
  store i64 -9223372036854775808, ptr %i.fp, align 8, !dbg !17802
  %.sroa.4176.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !17802
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4176.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4176, i64 24, i1 false), !dbg !17802
  store ptr null, ptr %0, align 8, !dbg !17802
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4176), !dbg !17803
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !dbg !17804
  br label %bb.u, !dbg !17787

.preheader.preheader:                             ; preds = %bb.aa
  %xtraiter = and i64 %.sroa.0.0.i, 3, !dbg !17805 ; 3 uses
  %i.fq = icmp ult i64 %.sroa.0.0.i, 4, !dbg !17805
  br i1 %i.fq, label %.preheader.epil.preheader, label %.preheader.preheader.new, !dbg !17805

.preheader.preheader.new:                         ; preds = %.preheader.preheader
  %unroll_iter = and i64 %.sroa.0.0.i, 1152921504606846972, !dbg !17805
  br label %.preheader, !dbg !17805

.preheader:                                       ; preds = %.preheader, %.preheader.preheader.new
  %.sroa.04.0.i = phi i64 [ 0, %.preheader.preheader.new ], [ %i.gk, %.preheader ], !dbg !17806 ; 5 uses
  %.sroa.02.0.i = phi i64 [ 0, %.preheader.preheader.new ], [ %.sroa.0.0.i.i.i.i.3, %.preheader ], !dbg !17807
  %niter = phi i64 [ 0, %.preheader.preheader.new ], [ %niter.next.3, %.preheader ]
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fb, i64 %.sroa.04.0.i, !dbg !17808
  %.val13.i = load i8, ptr %i.fr, align 1, !dbg !17809, !noalias !17614, !noundef !636
  %i.fs = zext i8 %.val13.i to i64, !dbg !17810
  %i.ft = mul i64 %i.ea, %i.fs, !dbg !17811
  %i.fu = lshr exact i64 %i.ft, 3, !dbg !17812
  %.sroa.0.0.i.i.i.i = add i64 %i.fu, %.sroa.02.0.i, !dbg !17813
end_hunk_0
