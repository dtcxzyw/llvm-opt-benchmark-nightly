inline.NumInlined: 2534
inline.NumDeleted: 536
loop-unroll.NumCompletelyUnrolled: 65
loop-unroll.NumRuntimeUnrolled: 15
loop-unroll.NumUnrolled: 132
begin_hunk_0_@_RINvMs8_NtNtCsk4ZPsEfLtLH_6brotli3enc6encodeINtB6_24BrotliEncoderStateStructNtNtCsbA1n9drshSs_12alloc_stdlib9std_alloc13StandardAllocE11encode_dataNCNvMs2_NtB8_6writerINtB2t_24CompressorWriterCustomIoNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorINtNtCsjPfRcqrlXv6_19brotli_decompressor11io_wrappers12IntoIoWriterQINtNtCsgZ49sUHp3tW_5alloc3vec3VechEEINtNtB1g_10heap_alloc7WrapBoxhEB1c_E14flush_or_close0ECsfISxE4fmY1Y_14polars_parquet:bb.a
  call void @llvm.experimental.noalias.scope.decl(metadata !1959), !dbg !1958
  %i.abn = load i64, ptr %i.ba, align 8, !dbg !1961, !alias.scope !1963, !noalias !1964, !noundef !14
  %i.abo = add i64 %i.abn, 7, !dbg !1965
  %i.abp = and i64 %i.abo, 4294967288, !dbg !1967 ; 2 uses
  store i64 %i.abp, ptr %i.ba, align 8, !dbg !1967, !alias.scope !1963, !noalias !1964
  %i.abq = lshr exact i64 %i.abp, 3, !dbg !1968   ; 3 uses
  %i.abr = icmp samesign ult i64 %i.abq, %.val116, !dbg !1969
  br i1 %i.abr, label %_RNvNtNtCsk4ZPsEfLtLH_6brotli3enc17brotli_bit_stream18JumpToByteBoundary.exit.i38.i, label %.invoke.i.i, !dbg !1969

_RNvNtNtCsk4ZPsEfLtLH_6brotli3enc17brotli_bit_stream18JumpToByteBoundary.exit.i38.i: ; preds = %bb.fv
  %i.abs = getelementptr inbounds nuw i8, ptr %.val, i64 %i.abq, !dbg !1969
  store i8 0, ptr %i.abs, align 1, !dbg !1969, !alias.scope !1970, !noalias !1971
  br label %bb.ft, !dbg !1972

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsbA1n9drshSs_12alloc_stdlib10heap_alloc7WrapBoxNtNtNtCsk4ZPsEfLtLH_6brotli3enc14entropy_encode11HuffmanTreeEECsfISxE4fmY1Y_14polars_parquet.exit131.i.i: ; preds = %bb.fu, %bb.ft
  call void @llvm.experimental.noalias.scope.decl(metadata !1973), !dbg !1492
  %.val1.i.i.i = load i64, ptr %.sroa.842.0..sroa_idx.i.i, align 8, !dbg !1976, !alias.scope !1973, !noalias !1443, !noundef !14 ; 2 uses
  %i.abt = icmp eq i64 %.val1.i.i.i, 0, !dbg !1979
  br i1 %i.abt, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsbA1n9drshSs_12alloc_stdlib10heap_alloc7WrapBoxhEECsfISxE4fmY1Y_14polars_parquet.exit.i133.i.i, label %bb.fw, !dbg !1979

bb.fw:                                            ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsbA1n9drshSs_12alloc_stdlib10heap_alloc7WrapBoxNtNtNtCsk4ZPsEfLtLH_6brotli3enc14entropy_encode11HuffmanTreeEECsfISxE4fmY1Y_14polars_parquet.exit131.i.i
  %.val.i.i.i = load ptr, ptr %.sroa.741.0..sroa_idx.i.i, align 8, !dbg !1976, !alias.scope !1973, !noalias !1443, !nonnull !14, !noundef !14
  call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i, i64 noundef range(i64 1, 0) %.val1.i.i.i, i64 noundef 1) #19, !dbg !1983, !noalias !1988
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsbA1n9drshSs_12alloc_stdlib10heap_alloc7WrapBoxhEECsfISxE4fmY1Y_14polars_parquet.exit.i133.i.i, !dbg !1989

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsbA1n9drshSs_12alloc_stdlib10heap_alloc7WrapBoxhEECsfISxE4fmY1Y_14polars_parquet.exit.i133.i.i: ; preds = %bb.fw, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsbA1n9drshSs_12alloc_stdlib10heap_alloc7WrapBoxNtNtNtCsk4ZPsEfLtLH_6brotli3enc14entropy_encode11HuffmanTreeEECsfISxE4fmY1Y_14polars_parquet.exit131.i.i
  %.val3.i.i.i = load i64, ptr %.sroa.1044.0..sroa_idx.i.i, align 8, !dbg !1976, !alias.scope !1973, !noalias !1443, !noundef !14 ; 2 uses
  %i.abu = icmp eq i64 %.val3.i.i.i, 0, !dbg !1990
  br i1 %i.abu, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtCsk4ZPsEfLtLH_6brotli3enc17brotli_bit_stream12BlockEncoderNtNtCsbA1n9drshSs_12alloc_stdlib9std_alloc13StandardAllocEECsfISxE4fmY1Y_14polars_parquet.exit.i.i, label %bb.fx, !dbg !1990

bb.fx:                                            ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsbA1n9drshSs_12alloc_stdlib10heap_alloc7WrapBoxhEECsfISxE4fmY1Y_14polars_parquet.exit.i133.i.i
  %.val2.i.i.i = load ptr, ptr %.sroa.943.0..sroa_idx.i.i, align 8, !dbg !1976, !alias.scope !1973, !noalias !1443, !nonnull !14, !noundef !14
  %i.abv = shl nuw nsw i64 %.val3.i.i.i, 1, !dbg !1994
  call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %.val2.i.i.i, i64 noundef range(i64 1, 0) %i.abv, i64 noundef 2) #19, !dbg !1997, !noalias !1988
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtCsk4ZPsEfLtLH_6brotli3enc17brotli_bit_stream12BlockEncoderNtNtCsbA1n9drshSs_12alloc_stdlib9std_alloc13StandardAllocEECsfISxE4fmY1Y_14polars_parquet.exit.i.i, !dbg !2002

bb.fy:                                            ; preds = %bb.hp, %bb.eh
  br i1 %.sroa.022.2.lpad-body.i.i, label %.thread58.i.i, label %bb.gb, !dbg !2003

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtCsk4ZPsEfLtLH_6brotli3enc17brotli_bit_stream12BlockEncoderNtNtCsbA1n9drshSs_12alloc_stdlib9std_alloc13StandardAllocEECsfISxE4fmY1Y_14polars_parquet.exit.i.i: ; preds = %bb.fx, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsbA1n9drshSs_12alloc_stdlib10heap_alloc7WrapBoxhEECsfISxE4fmY1Y_14polars_parquet.exit.i133.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !dbg !1492, !noalias !1443
  call void @llvm.experimental.noalias.scope.decl(metadata !2004), !dbg !2003
  %.val1.i134.i.i = load i64, ptr %.sroa.825.0..sroa_idx.i.i, align 8, !dbg !2007, !alias.scope !2004, !noalias !1443, !noundef !14 ; 2 uses
  %i.abw = icmp eq i64 %.val1.i134.i.i, 0, !dbg !2009
  br i1 %i.abw, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsbA1n9drshSs_12alloc_stdlib10heap_alloc7WrapBoxhEECsfISxE4fmY1Y_14polars_parquet.exit.i136.i.i, label %bb.fz, !dbg !2009

bb.fz:                                            ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtCsk4ZPsEfLtLH_6brotli3enc17brotli_bit_stream12BlockEncoderNtNtCsbA1n9drshSs_12alloc_stdlib9std_alloc13StandardAllocEECsfISxE4fmY1Y_14polars_parquet.exit.i.i
  %.val.i135.i.i = load ptr, ptr %.sroa.724.0..sroa_idx.i.i, align 8, !dbg !2007, !alias.scope !2004, !noalias !1443, !nonnull !14, !noundef !14
  call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i135.i.i, i64 noundef range(i64 1, 0) %.val1.i134.i.i, i64 noundef 1) #19, !dbg !2013, !noalias !2018
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsbA1n9drshSs_12alloc_stdlib10heap_alloc7WrapBoxhEECsfISxE4fmY1Y_14polars_parquet.exit.i136.i.i, !dbg !2019

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsbA1n9drshSs_12alloc_stdlib10heap_alloc7WrapBoxhEECsfISxE4fmY1Y_14polars_parquet.exit.i136.i.i: ; preds = %bb.fz, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtCsk4ZPsEfLtLH_6brotli3enc17brotli_bit_stream12BlockEncoderNtNtCsbA1n9drshSs_12alloc_stdlib9std_alloc13StandardAllocEECsfISxE4fmY1Y_14polars_parquet.exit.i.i
  %.val3.i137.i.i = load i64, ptr %.sroa.1027.0..sroa_idx.i.i, align 8, !dbg !2007, !alias.scope !2004, !noalias !1443, !noundef !14 ; 2 uses
  %i.abx = icmp eq i64 %.val3.i137.i.i, 0, !dbg !2020
  br i1 %i.abx, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtCsk4ZPsEfLtLH_6brotli3enc17brotli_bit_stream12BlockEncoderNtNtCsbA1n9drshSs_12alloc_stdlib9std_alloc13StandardAllocEECsfISxE4fmY1Y_14polars_parquet.exit139.i.i, label %bb.ga, !dbg !2020

bb.ga:                                            ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsbA1n9drshSs_12alloc_stdlib10heap_alloc7WrapBoxhEECsfISxE4fmY1Y_14polars_parquet.exit.i136.i.i
  %.val2.i138.i.i = load ptr, ptr %.sroa.926.0..sroa_idx.i.i, align 8, !dbg !2007, !alias.scope !2004, !noalias !1443, !nonnull !14, !noundef !14
  %i.aby = shl nuw nsw i64 %.val3.i137.i.i, 1, !dbg !2024
  call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %.val2.i138.i.i, i64 noundef range(i64 1, 0) %i.aby, i64 noundef 2) #19, !dbg !2027, !noalias !2018
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtCsk4ZPsEfLtLH_6brotli3enc17brotli_bit_stream12BlockEncoderNtNtCsbA1n9drshSs_12alloc_stdlib9std_alloc13StandardAllocEECsfISxE4fmY1Y_14polars_parquet.exit139.i.i, !dbg !2032

bb.gb:                                            ; preds = %.thread58.i.i, %bb.fy
  br i1 %.sroa.023.2.lpad-body.i.i, label %.thread68.i.i, label %.body.i, !dbg !2033

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtCsk4ZPsEfLtLH_6brotli3enc17brotli_bit_stream12BlockEncoderNtNtCsbA1n9drshSs_12alloc_stdlib9std_alloc13StandardAllocEECsfISxE4fmY1Y_14polars_parquet.exit139.i.i: ; preds = %bb.ga, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsbA1n9drshSs_12alloc_stdlib10heap_alloc7WrapBoxhEECsfISxE4fmY1Y_14polars_parquet.exit.i136.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !dbg !2003, !noalias !1443
  call void @llvm.experimental.noalias.scope.decl(metadata !2034), !dbg !2033
  %.val1.i140.i.i = load i64, ptr %.sroa.8.0..sroa_idx.i.i, align 8, !dbg !2037, !alias.scope !2034, !noalias !1443, !noundef !14 ; 2 uses
  %i.abz = icmp eq i64 %.val1.i140.i.i, 0, !dbg !2039
  br i1 %i.abz, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsbA1n9drshSs_12alloc_stdlib10heap_alloc7WrapBoxhEECsfISxE4fmY1Y_14polars_parquet.exit.i142.i.i, label %bb.gc, !dbg !2039

bb.gc:                                            ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtCsk4ZPsEfLtLH_6brotli3enc17brotli_bit_stream12BlockEncoderNtNtCsbA1n9drshSs_12alloc_stdlib9std_alloc13StandardAllocEECsfISxE4fmY1Y_14polars_parquet.exit139.i.i
  %.val.i141.i.i = load ptr, ptr %.sroa.717.0..sroa_idx.i.i, align 8, !dbg !2037, !alias.scope !2034, !noalias !1443, !nonnull !14, !noundef !14
  call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i141.i.i, i64 noundef range(i64 1, 0) %.val1.i140.i.i, i64 noundef 1) #19, !dbg !2043, !noalias !2048
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsbA1n9drshSs_12alloc_stdlib10heap_alloc7WrapBoxhEECsfISxE4fmY1Y_14polars_parquet.exit.i142.i.i, !dbg !2049

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsbA1n9drshSs_12alloc_stdlib10heap_alloc7WrapBoxhEECsfISxE4fmY1Y_14polars_parquet.exit.i142.i.i: ; preds = %bb.gc, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtCsk4ZPsEfLtLH_6brotli3enc17brotli_bit_stream12BlockEncoderNtNtCsbA1n9drshSs_12alloc_stdlib9std_alloc13StandardAllocEECsfISxE4fmY1Y_14polars_parquet.exit139.i.i
  %.val3.i143.i.i = load i64, ptr %.sroa.10.0..sroa_idx.i.i, align 8, !dbg !2037, !alias.scope !2034, !noalias !1443, !noundef !14 ; 2 uses
  %i.aca = icmp eq i64 %.val3.i143.i.i, 0, !dbg !2050
  br i1 %i.aca, label %bb.hr, label %bb.gd, !dbg !2050

bb.gd:                                            ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsbA1n9drshSs_12alloc_stdlib10heap_alloc7WrapBoxhEECsfISxE4fmY1Y_14polars_parquet.exit.i142.i.i
  %.val2.i144.i.i = load ptr, ptr %.sroa.9.0..sroa_idx.i.i, align 8, !dbg !2037, !alias.scope !2034, !noalias !1443, !nonnull !14, !noundef !14
  %i.acb = shl nuw nsw i64 %.val3.i143.i.i, 1, !dbg !2054
  call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %.val2.i144.i.i, i64 noundef range(i64 1, 0) %i.acb, i64 noundef 2) #19, !dbg !2057, !noalias !2048
  br label %bb.hr, !dbg !2062

bb.ge:                                            ; preds = %bb.fo
  %i.acc = getelementptr inbounds nuw [16 x i8], ptr %.val183, i64 %.sroa.026.0187.i.i, !dbg !1836
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.n, ptr noundef nonnull readonly align 4 dereferenceable(16) %i.acc, i64 16, i1 false), !dbg !1836, !noalias !2063
  %i.acd = load i16, ptr %i.zd, align 4, !dbg !2064, !noalias !1443, !noundef !14 ; 3 uses
  %i.ace = zext i16 %i.acd to i64, !dbg !2064
  invoke fastcc void @_RNvMs7_NtNtCsk4ZPsEfLtLH_6brotli3enc17brotli_bit_streamINtB5_12BlockEncoderNtNtCsbA1n9drshSs_12alloc_stdlib9std_alloc13StandardAllocE12store_symbolCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef align 8 dereferenceable(984) %i.p, i64 noundef %i.ace, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.ba, ptr noalias noundef nonnull %.val, i64 noundef range(i64 2, -9223372036854775808) %.val116)
          to label %bb.gf unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i.i, !dbg !2066, !noalias !1512

bb.gf:                                            ; preds = %bb.ge
  invoke void @_RNvNtNtCsk4ZPsEfLtLH_6brotli3enc17brotli_bit_stream17StoreCommandExtra(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(16) %i.n, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.ba, ptr noalias noundef nonnull %.val, i64 noundef range(i64 2, -9223372036854775808) %.val116)
          to label %bb.gg unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i.i, !dbg !2068, !noalias !1512

bb.gg:                                            ; preds = %bb.gf
  %i.acf = load i32, ptr %i.n, align 4, !dbg !2069, !noalias !1443, !noundef !14 ; 3 uses
  %i.acg = icmp eq i32 %i.acf, 0, !dbg !2069      ; 2 uses
  br i1 %i.xw, label %bb.gh, label %bb.gi, !dbg !2070

bb.gh:                                            ; preds = %bb.gg
  br i1 %i.acg, label %.loopexit.i.i, label %.lr.ph185.preheader.i.i, !dbg !2071

.lr.ph185.preheader.i.i:                          ; preds = %bb.gh
  %i.ach = zext i32 %i.acf to i64, !dbg !2073
  br label %.lr.ph185.i.i, !dbg !2074

bb.gi:                                            ; preds = %bb.gg
  br i1 %i.acg, label %.loopexit.i.i, label %.lr.ph179.preheader.i.i, !dbg !2075

.lr.ph179.preheader.i.i:                          ; preds = %bb.gi
  %i.aci = zext i32 %i.acf to i64, !dbg !2077
  br label %.lr.ph179.i.i, !dbg !2078

.lr.ph185.i.i:                                    ; preds = %_RNvMs7_NtNtCsk4ZPsEfLtLH_6brotli3enc17brotli_bit_streamINtB5_12BlockEncoderNtNtCsbA1n9drshSs_12alloc_stdlib9std_alloc13StandardAllocE12store_symbolCsfISxE4fmY1Y_14polars_parquet.exit.i.i, %.lr.ph185.preheader.i.i
  %.sroa.0.1183.i.i = phi i64 [ %i.adr, %_RNvMs7_NtNtCsk4ZPsEfLtLH_6brotli3enc17brotli_bit_streamINtB5_12BlockEncoderNtNtCsbA1n9drshSs_12alloc_stdlib9std_alloc13StandardAllocE12store_symbolCsfISxE4fmY1Y_14polars_parquet.exit.i.i ], [ %.sroa.0.0190.i.i, %.lr.ph185.preheader.i.i ] ; 2 uses
  %.sroa.017.0182.i.i = phi i64 [ %i.ads, %_RNvMs7_NtNtCsk4ZPsEfLtLH_6brotli3enc17brotli_bit_streamINtB5_12BlockEncoderNtNtCsbA1n9drshSs_12alloc_stdlib9std_alloc13StandardAllocE12store_symbolCsfISxE4fmY1Y_14polars_parquet.exit.i.i ], [ %i.ach, %.lr.ph185.preheader.i.i ]
  %i.acj = and i64 %.sroa.0.1183.i.i, %i.kr, !dbg !2081 ; 3 uses
  %i.ack = icmp samesign ult i64 %i.acj, %i.nn, !dbg !2074
  br i1 %i.ack, label %bb.gj, label %.invoke387.i.i, !dbg !2074

bb.gj:                                            ; preds = %.lr.ph185.i.i
  %i.acl = getelementptr inbounds nuw i8, ptr %i.no, i64 %i.acj, !dbg !2074
  %i.acm = load i8, ptr %i.acl, align 1, !dbg !2074, !alias.scope !2082, !noalias !2083, !noundef !14
  %i.acn = zext i8 %i.acm to i64, !dbg !2074
  call void @llvm.experimental.noalias.scope.decl(metadata !2084), !dbg !2087
  %i.aco = load i64, ptr %.sroa.1719.0..sroa_idx.i.i, align 8, !dbg !2088, !alias.scope !2084, !noalias !2091, !noundef !14 ; 2 uses
  %i.acp = icmp eq i64 %i.aco, 0, !dbg !2088
  br i1 %i.acp, label %bb.gk, label %bb.gn, !dbg !2088

bb.gk:                                            ; preds = %bb.gj
  %i.acq = load i64, ptr %.sroa.1618.0..sroa_idx.i.i, align 8, !dbg !2094, !alias.scope !2084, !noalias !2091, !noundef !14
  %i.acr = add i64 %i.acq, 1, !dbg !2095          ; 7 uses
  store i64 %i.acr, ptr %.sroa.1618.0..sroa_idx.i.i, align 8, !dbg !2098, !alias.scope !2084, !noalias !2091
  %i.acs = load i64, ptr %.sroa.616.0..sroa_idx.i.i, align 8, !dbg !2099, !alias.scope !2084, !noalias !2091, !noundef !14 ; 2 uses
  %i.act = icmp ult i64 %i.acr, %i.acs, !dbg !2099
  br i1 %i.act, label %bb.gl, label %.invoke.i.i, !dbg !2099

bb.gl:                                            ; preds = %bb.gk
  %i.acu = load i64, ptr %.sroa.415.0..sroa_idx.i.i, align 8, !dbg !2101, !alias.scope !2084, !noalias !2091, !noundef !14 ; 2 uses
  %i.acv = icmp ult i64 %i.acr, %i.acu, !dbg !2101
  br i1 %i.acv, label %bb.gm, label %.invoke.i.i, !dbg !2101

bb.gm:                                            ; preds = %bb.gl
  %i.acw = load ptr, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !dbg !2099, !alias.scope !2084, !noalias !2091, !nonnull !14, !align !791, !noundef !14
  %i.acx = getelementptr inbounds nuw [4 x i8], ptr %i.acw, i64 %i.acr, !dbg !2099
  %i.acy = load i32, ptr %i.acx, align 4, !dbg !2099, !noalias !2103, !noundef !14 ; 2 uses
  %i.acz = load ptr, ptr %i.q, align 8, !dbg !2101, !alias.scope !2084, !noalias !2091, !nonnull !14, !noundef !14
  %i.ada = getelementptr inbounds nuw i8, ptr %i.acz, i64 %i.acr, !dbg !2101
  %i.adb = load i8, ptr %i.ada, align 1, !dbg !2101, !noalias !2103, !noundef !14 ; 2 uses
  %i.adc = zext i32 %i.acy to i64, !dbg !2104
  store i64 %i.adc, ptr %.sroa.1719.0..sroa_idx.i.i, align 8, !dbg !2104, !alias.scope !2084, !noalias !2091
  %i.add = zext i8 %i.adb to i64, !dbg !2106
  %i.ade = load i64, ptr %.sroa.11.0..sroa_idx.i.i, align 8, !dbg !2107, !alias.scope !2084, !noalias !2091, !noundef !14
  %i.adf = mul i64 %i.ade, %i.add, !dbg !2108
  store i64 %i.adf, ptr %.sroa.18.0..sroa_idx.i.i, align 8, !dbg !2111, !alias.scope !2084, !noalias !2091
  invoke void @_RNvNtNtCsk4ZPsEfLtLH_6brotli3enc17brotli_bit_stream16StoreBlockSwitch(ptr noalias noundef nonnull align 8 dereferenceable(872) %.sroa.14.0..sroa_idx.i.i, i32 noundef %i.acy, i8 noundef %i.adb, i1 noundef zeroext false, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.ba, ptr noalias noundef nonnull %.val, i64 noundef range(i64 2, -9223372036854775808) %.val116)
          to label %.noexc148.i.i unwind label %.loopexit76.i.i, !dbg !2112, !noalias !1512

.noexc148.i.i:                                    ; preds = %bb.gm
  %.pre.i.i.i = load i64, ptr %.sroa.1719.0..sroa_idx.i.i, align 8, !dbg !2113, !alias.scope !2084, !noalias !2091
  br label %bb.gn, !dbg !2112

bb.gn:                                            ; preds = %.noexc148.i.i, %bb.gj
  %i.adg = phi i64 [ %i.aco, %bb.gj ], [ %.pre.i.i.i, %.noexc148.i.i ], !dbg !2113
  %i.adh = add i64 %i.adg, -1, !dbg !2114
  store i64 %i.adh, ptr %.sroa.1719.0..sroa_idx.i.i, align 8, !dbg !2117, !alias.scope !2084, !noalias !2091
  %i.adi = load i64, ptr %.sroa.18.0..sroa_idx.i.i, align 8, !dbg !2118, !alias.scope !2084, !noalias !2091, !noundef !14
  %i.adj = add i64 %i.adi, %i.acn, !dbg !2119     ; 6 uses
  %.val7.i.i.i = load i64, ptr %.sroa.8.0..sroa_idx.i.i, align 8, !dbg !2121, !alias.scope !2084, !noalias !2091, !noundef !14 ; 2 uses
  %i.adk = icmp ult i64 %i.adj, %.val7.i.i.i, !dbg !2123
  br i1 %i.adk, label %bb.go, label %.invoke.i.i, !dbg !2123

bb.go:                                            ; preds = %bb.gn
  %.val9.i.i.i = load i64, ptr %.sroa.10.0..sroa_idx.i.i, align 8, !dbg !2124, !alias.scope !2084, !noalias !2091, !noundef !14 ; 2 uses
  %i.adl = icmp ult i64 %i.adj, %.val9.i.i.i, !dbg !2125
  br i1 %i.adl, label %bb.gp, label %.invoke.i.i, !dbg !2125

bb.gp:                                            ; preds = %bb.go
  %.val8.i.i.i = load ptr, ptr %.sroa.9.0..sroa_idx.i.i, align 8, !dbg !2124, !alias.scope !2084, !noalias !2091, !nonnull !14, !noundef !14
  %.val.i146.i.i = load ptr, ptr %.sroa.717.0..sroa_idx.i.i, align 8, !dbg !2121, !alias.scope !2084, !noalias !2091, !nonnull !14, !noundef !14
  %i.adm = getelementptr inbounds nuw i8, ptr %.val.i146.i.i, i64 %i.adj, !dbg !2123
  %i.adn = load i8, ptr %i.adm, align 1, !dbg !2123, !noalias !1512, !noundef !14
  %i.ado = getelementptr inbounds nuw [2 x i8], ptr %.val8.i.i.i, i64 %i.adj, !dbg !2125
  %i.adp = load i16, ptr %i.ado, align 2, !dbg !2125, !noalias !1512, !noundef !14
  %i.adq = zext i16 %i.adp to i64, !dbg !2125
  invoke void @_RNvNtNtCsk4ZPsEfLtLH_6brotli3enc17brotli_bit_stream15BrotliWriteBits(i8 noundef %i.adn, i64 noundef %i.adq, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.ba, ptr noalias noundef nonnull %.val, i64 noundef range(i64 2, -9223372036854775808) %.val116)
          to label %_RNvMs7_NtNtCsk4ZPsEfLtLH_6brotli3enc17brotli_bit_streamINtB5_12BlockEncoderNtNtCsbA1n9drshSs_12alloc_stdlib9std_alloc13StandardAllocE12store_symbolCsfISxE4fmY1Y_14polars_parquet.exit.i.i unwind label %.loopexit76.i.i, !dbg !2126, !noalias !1512

_RNvMs7_NtNtCsk4ZPsEfLtLH_6brotli3enc17brotli_bit_streamINtB5_12BlockEncoderNtNtCsbA1n9drshSs_12alloc_stdlib9std_alloc13StandardAllocE12store_symbolCsfISxE4fmY1Y_14polars_parquet.exit.i.i: ; preds = %bb.gp
  %i.adr = add i64 %.sroa.0.1183.i.i, 1, !dbg !2127 ; 2 uses
  %i.ads = add nsw i64 %.sroa.017.0182.i.i, -1, !dbg !2130 ; 2 uses
  %i.adt = icmp eq i64 %i.ads, 0, !dbg !2071
  br i1 %i.adt, label %.loopexit.i.i, label %.lr.ph185.i.i, !dbg !2071

.lr.ph179.i.i:                                    ; preds = %.lr.ph179.preheader.i.i, %_RNvMs9_NtNtCsk4ZPsEfLtLH_6brotli3enc17brotli_bit_streamINtB5_12BlockEncoderNtNtCsbA1n9drshSs_12alloc_stdlib9std_alloc13StandardAllocE25store_symbol_with_contextCsfISxE4fmY1Y_14polars_parquet.exit.i.i
  %.sroa.0.3177.i.i = phi i64 [ %i.ahj, %_RNvMs9_NtNtCsk4ZPsEfLtLH_6brotli3enc17brotli_bit_streamINtB5_12BlockEncoderNtNtCsbA1n9drshSs_12alloc_stdlib9std_alloc13StandardAllocE25store_symbol_with_contextCsfISxE4fmY1Y_14polars_parquet.exit.i.i ], [ %.sroa.0.0190.i.i, %.lr.ph179.preheader.i.i ] ; 2 uses
  %.sroa.09.2176.i.i = phi i8 [ %i.afv, %_RNvMs9_NtNtCsk4ZPsEfLtLH_6brotli3enc17brotli_bit_streamINtB5_12BlockEncoderNtNtCsbA1n9drshSs_12alloc_stdlib9std_alloc13StandardAllocE25store_symbol_with_contextCsfISxE4fmY1Y_14polars_parquet.exit.i.i ], [ %.sroa.09.0189.i.i, %.lr.ph179.preheader.i.i ] ; 6 uses
  %.sroa.011.2175.i.i = phi i8 [ %.sroa.09.2176.i.i, %_RNvMs9_NtNtCsk4ZPsEfLtLH_6brotli3enc17brotli_bit_streamINtB5_12BlockEncoderNtNtCsbA1n9drshSs_12alloc_stdlib9std_alloc13StandardAllocE25store_symbol_with_contextCsfISxE4fmY1Y_14polars_parquet.exit.i.i ], [ %.sroa.011.0188.i.i, %.lr.ph179.preheader.i.i ] ; 2 uses
  %.sroa.019.0174.i.i = phi i64 [ %i.ahk, %_RNvMs9_NtNtCsk4ZPsEfLtLH_6brotli3enc17brotli_bit_streamINtB5_12BlockEncoderNtNtCsbA1n9drshSs_12alloc_stdlib9std_alloc13StandardAllocE25store_symbol_with_contextCsfISxE4fmY1Y_14polars_parquet.exit.i.i ], [ %i.aci, %.lr.ph179.preheader.i.i ]
  switch i8 %i.li, label %.lr.ph179.i.i.unreachabledefault [
    i8 0, label %bb.gq
    i8 1, label %bb.gr
    i8 2, label %bb.gs
    i8 3, label %bb.gt
  ], !dbg !2078

default.unreachable:                              ; preds = %bb.id
  unreachable

bb.gq:                                            ; preds = %.lr.ph179.i.i
  %i.adu = and i8 %.sroa.09.2176.i.i, 63, !dbg !2133
  br label %_RNvNtNtCsk4ZPsEfLtLH_6brotli3enc17brotli_bit_stream7Context.exit.i.i, !dbg !2134

bb.gr:                                            ; preds = %.lr.ph179.i.i
  %i.adv = lshr i8 %.sroa.09.2176.i.i, 2, !dbg !2135
  br label %_RNvNtNtCsk4ZPsEfLtLH_6brotli3enc17brotli_bit_stream7Context.exit.i.i, !dbg !2136

bb.gs:                                            ; preds = %.lr.ph179.i.i
  %i.adw = zext i8 %.sroa.011.2175.i.i to i64, !dbg !2137
  %i.adx = zext i8 %.sroa.09.2176.i.i to i64, !dbg !2138
  %i.ady = getelementptr inbounds nuw i8, ptr @_RNvNtNtCsk4ZPsEfLtLH_6brotli3enc9constants18kUTF8ContextLookup, i64 %i.adx, !dbg !2139
  %i.adz = load i8, ptr %i.ady, align 1, !dbg !2139, !noalias !1443, !noundef !14
  %i.aea = getelementptr inbounds nuw i8, ptr @_RNvNtNtCsk4ZPsEfLtLH_6brotli3enc9constants18kUTF8ContextLookup, i64 %i.adw, !dbg !2140
  %i.aeb = getelementptr inbounds nuw i8, ptr %i.aea, i64 256, !dbg !2140
  %i.aec = load i8, ptr %i.aeb, align 1, !dbg !2140, !noalias !1443, !noundef !14
  %i.aed = or i8 %i.aec, %i.adz, !dbg !2141
  br label %_RNvNtNtCsk4ZPsEfLtLH_6brotli3enc17brotli_bit_stream7Context.exit.i.i, !dbg !2142

.lr.ph179.i.i.unreachabledefault:                 ; preds = %.lr.ph179.i.i
  unreachable

bb.gt:                                            ; preds = %.lr.ph179.i.i
  %i.aee = zext i8 %.sroa.011.2175.i.i to i64, !dbg !2143
  %i.aef = zext i8 %.sroa.09.2176.i.i to i64, !dbg !2144
  %i.aeg = getelementptr inbounds nuw i8, ptr @_RNvNtNtCsk4ZPsEfLtLH_6brotli3enc9constants24kSigned3BitContextLookup, i64 %i.aef, !dbg !2145
  %i.aeh = load i8, ptr %i.aeg, align 1, !dbg !2145, !noalias !1443, !noundef !14
  %i.aei = shl i8 %i.aeh, 3, !dbg !2146
  %i.aej = getelementptr inbounds nuw i8, ptr @_RNvNtNtCsk4ZPsEfLtLH_6brotli3enc9constants24kSigned3BitContextLookup, i64 %i.aee, !dbg !2147
  %i.aek = load i8, ptr %i.aej, align 1, !dbg !2147, !noalias !1443, !noundef !14
  %i.ael = add i8 %i.aei, %i.aek, !dbg !2148
  br label %_RNvNtNtCsk4ZPsEfLtLH_6brotli3enc17brotli_bit_stream7Context.exit.i.i, !dbg !2149

.loopexit.i.i:                                    ; preds = %_RNvMs9_NtNtCsk4ZPsEfLtLH_6brotli3enc17brotli_bit_streamINtB5_12BlockEncoderNtNtCsbA1n9drshSs_12alloc_stdlib9std_alloc13StandardAllocE25store_symbol_with_contextCsfISxE4fmY1Y_14polars_parquet.exit.i.i, %_RNvMs7_NtNtCsk4ZPsEfLtLH_6brotli3enc17brotli_bit_streamINtB5_12BlockEncoderNtNtCsbA1n9drshSs_12alloc_stdlib9std_alloc13StandardAllocE12store_symbolCsfISxE4fmY1Y_14polars_parquet.exit.i.i, %bb.gi, %bb.gh
  %.sroa.011.1.i.i = phi i8 [ %.sroa.011.0188.i.i, %bb.gh ], [ %.sroa.011.0188.i.i, %_RNvMs7_NtNtCsk4ZPsEfLtLH_6brotli3enc17brotli_bit_streamINtB5_12BlockEncoderNtNtCsbA1n9drshSs_12alloc_stdlib9std_alloc13StandardAllocE12store_symbolCsfISxE4fmY1Y_14polars_parquet.exit.i.i ], [ %.sroa.011.0188.i.i, %bb.gi ], [ %.sroa.09.2176.i.i, %_RNvMs9_NtNtCsk4ZPsEfLtLH_6brotli3enc17brotli_bit_streamINtB5_12BlockEncoderNtNtCsbA1n9drshSs_12alloc_stdlib9std_alloc13StandardAllocE25store_symbol_with_contextCsfISxE4fmY1Y_14polars_parquet.exit.i.i ]
  %.sroa.09.1.i.i = phi i8 [ %.sroa.09.0189.i.i, %bb.gh ], [ %.sroa.09.0189.i.i, %_RNvMs7_NtNtCsk4ZPsEfLtLH_6brotli3enc17brotli_bit_streamINtB5_12BlockEncoderNtNtCsbA1n9drshSs_12alloc_stdlib9std_alloc13StandardAllocE12store_symbolCsfISxE4fmY1Y_14polars_parquet.exit.i.i ], [ %.sroa.09.0189.i.i, %bb.gi ], [ %i.afv, %_RNvMs9_NtNtCsk4ZPsEfLtLH_6brotli3enc17brotli_bit_streamINtB5_12BlockEncoderNtNtCsbA1n9drshSs_12alloc_stdlib9std_alloc13StandardAllocE25store_symbol_with_contextCsfISxE4fmY1Y_14polars_parquet.exit.i.i ]
  %.sroa.0.2.i.i = phi i64 [ %.sroa.0.0190.i.i, %bb.gh ], [ %i.adr, %_RNvMs7_NtNtCsk4ZPsEfLtLH_6brotli3enc17brotli_bit_streamINtB5_12BlockEncoderNtNtCsbA1n9drshSs_12alloc_stdlib9std_alloc13StandardAllocE12store_symbolCsfISxE4fmY1Y_14polars_parquet.exit.i.i ], [ %.sroa.0.0190.i.i, %bb.gi ], [ %i.ahj, %_RNvMs9_NtNtCsk4ZPsEfLtLH_6brotli3enc17brotli_bit_streamINtB5_12BlockEncoderNtNtCsbA1n9drshSs_12alloc_stdlib9std_alloc13StandardAllocE25store_symbol_with_contextCsfISxE4fmY1Y_14polars_parquet.exit.i.i ]
  %.val85.i.i = load i32, ptr %i.zg, align 4, !dbg !2150, !noalias !1443, !noundef !14
  %i.aem = and i32 %.val85.i.i, 33554431, !dbg !2151 ; 2 uses
  %i.aen = zext nneg i32 %i.aem to i64, !dbg !2153
  %i.aeo = add i64 %.sroa.0.2.i.i, %i.aen, !dbg !2154 ; 3 uses
  %i.aep = icmp eq i32 %i.aem, 0, !dbg !2156
  br i1 %i.aep, label %bb.gv, label %bb.gu, !dbg !2156

bb.gu:                                            ; preds = %.loopexit.i.i
  %i.aeq = add i64 %i.aeo, 4294967294, !dbg !2157
  %i.aer = and i64 %i.aeq, %i.kr, !dbg !2159      ; 3 uses
  %i.aes = icmp samesign ult i64 %i.aer, %i.nn, !dbg !2160
  br i1 %i.aes, label %bb.gw, label %.invoke387.i.i, !dbg !2160

bb.gv:                                            ; preds = %bb.he, %bb.gx, %.loopexit.i.i
  %.sroa.011.3.i.i = phi i8 [ %.sroa.011.1.i.i, %.loopexit.i.i ], [ %i.aeu, %bb.he ], [ %i.aeu, %bb.gx ]
  %.sroa.09.3.i.i = phi i8 [ %.sroa.09.1.i.i, %.loopexit.i.i ], [ %i.aez, %bb.he ], [ %i.aez, %bb.gx ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !dbg !2161, !noalias !1443
  %exitcond274.not.i.i = icmp eq i64 %i.aac, %i.nw, !dbg !1754
  br i1 %exitcond274.not.i.i, label %._crit_edge192.i.i, label %bb.fo, !dbg !1762

bb.gw:                                            ; preds = %bb.gu
  %i.aet = getelementptr inbounds nuw i8, ptr %i.no, i64 %i.aer, !dbg !2160
  %i.aeu = load i8, ptr %i.aet, align 1, !dbg !2160, !alias.scope !2082, !noalias !2083, !noundef !14 ; 2 uses
  %i.aev = add i64 %i.aeo, 4294967295, !dbg !2162
  %i.aew = and i64 %i.aev, %i.kr, !dbg !2164      ; 3 uses
  %i.aex = icmp samesign ult i64 %i.aew, %i.nn, !dbg !2165
  br i1 %i.aex, label %bb.gx, label %.invoke387.i.i, !dbg !2165

bb.gx:                                            ; preds = %bb.gw
  %i.aey = getelementptr inbounds nuw i8, ptr %i.no, i64 %i.aew, !dbg !2165
  %i.aez = load i8, ptr %i.aey, align 1, !dbg !2165, !alias.scope !2082, !noalias !2083, !noundef !14 ; 2 uses
  %i.afa = icmp ugt i16 %i.acd, 127, !dbg !2166
  br i1 %i.afa, label %bb.gy, label %bb.gv, !dbg !2166

bb.gy:                                            ; preds = %bb.gx
  %i.afb = load i16, ptr %i.zh, align 2, !dbg !2167, !noalias !1443, !noundef !14 ; 2 uses
  %i.afc = and i16 %i.afb, 1023, !dbg !2167
  %i.afd = zext nneg i16 %i.afc to i64, !dbg !2167 ; 2 uses
  %i.afe = lshr i16 %i.afb, 10, !dbg !2168
  %i.aff = load i32, ptr %i.zi, align 4, !dbg !2170, !noalias !1443, !noundef !14
  %i.afg = zext i32 %i.aff to i64, !dbg !2170
  br i1 %i.yc, label %bb.gz, label %bb.ha, !dbg !2172

bb.gz:                                            ; preds = %bb.gy
  invoke fastcc void @_RNvMs7_NtNtCsk4ZPsEfLtLH_6brotli3enc17brotli_bit_streamINtB5_12BlockEncoderNtNtCsbA1n9drshSs_12alloc_stdlib9std_alloc13StandardAllocE12store_symbolCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef align 8 dereferenceable(984) %i.o, i64 noundef %i.afd, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.ba, ptr noalias noundef nonnull %.val, i64 noundef range(i64 2, -9223372036854775808) %.val116)
          to label %bb.he unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i.i, !dbg !2174, !noalias !1512

bb.ha:                                            ; preds = %bb.gy
  %i.afh = zext i16 %i.acd to i32, !dbg !2175     ; 2 uses
  %i.afi = lshr i32 %i.afh, 6, !dbg !2178         ; 2 uses
  %i.afj = and i32 %i.afh, 7, !dbg !2179          ; 4 uses
  switch i32 %i.afi, label %bb.hc [
    i32 4, label %bb.hb
    i32 2, label %bb.hb
  ], !dbg !2181

bb.hb:                                            ; preds = %bb.ha, %bb.ha
  %.old1.i.i.i = icmp samesign ult i32 %i.afj, 3, !dbg !2183
  br i1 %.old1.i.i.i, label %bb.hf, label %bb.hd, !dbg !2183

bb.hc:                                            ; preds = %bb.ha
  %i.afk = icmp eq i32 %i.afi, 7, !dbg !2184
  %i.afl = icmp samesign ult i32 %i.afj, 3
  %or.cond.i155.i.i = select i1 %i.afk, i1 %i.afl, i1 false, !dbg !2184
  br i1 %or.cond.i155.i.i, label %bb.hf, label %bb.hd, !dbg !2184

bb.hd:                                            ; preds = %bb.hc, %bb.hb
  br label %bb.hf, !dbg !2185

bb.he:                                            ; preds = %bb.hf, %bb.gz
  %i.afm = trunc nuw nsw i16 %i.afe to i8, !dbg !2186
  invoke void @_RNvNtNtCsk4ZPsEfLtLH_6brotli3enc17brotli_bit_stream15BrotliWriteBits(i8 noundef %i.afm, i64 noundef %i.afg, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.ba, ptr noalias noundef nonnull %.val, i64 noundef range(i64 2, -9223372036854775808) %.val116)
          to label %bb.gv unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i.i, !dbg !2187, !noalias !1512

bb.hf:                                            ; preds = %bb.hd, %bb.hc, %bb.hb
  %.sroa.0.0.i154.i.i = phi i32 [ %i.afj, %bb.hc ], [ 3, %bb.hd ], [ %i.afj, %bb.hb ], !dbg !2188
  %i.afn = zext nneg i32 %.sroa.0.0.i154.i.i to i64, !dbg !2189
  invoke fastcc void @_RNvMs9_NtNtCsk4ZPsEfLtLH_6brotli3enc17brotli_bit_streamINtB5_12BlockEncoderNtNtCsbA1n9drshSs_12alloc_stdlib9std_alloc13StandardAllocE25store_symbol_with_contextCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef align 8 dereferenceable(984) %i.o, i64 noundef %i.afd, i64 noundef %i.afn, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) %.val48.i.i, i64 noundef %.val49.i.i, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.ba, ptr noalias noundef nonnull %.val, i64 noundef range(i64 2, -9223372036854775808) %.val116, i64 noundef 2)
          to label %bb.he unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i.i, !dbg !2190, !noalias !1512

_RNvNtNtCsk4ZPsEfLtLH_6brotli3enc17brotli_bit_stream7Context.exit.i.i: ; preds = %bb.gt, %bb.gs, %bb.gr, %bb.gq
  %.sroa.0.0.i153.i.i = phi i8 [ %i.adu, %bb.gq ], [ %i.adv, %bb.gr ], [ %i.aed, %bb.gs ], [ %i.ael, %bb.gt ], !dbg !2191
  %i.afo = zext i8 %.sroa.0.0.i153.i.i to i64, !dbg !2192
  %i.afp = and i64 %.sroa.0.3177.i.i, %i.kr, !dbg !2193 ; 3 uses
  %i.afq = icmp samesign ult i64 %i.afp, %i.nn, !dbg !2195
  br i1 %i.afq, label %bb.hg, label %.invoke387.i.i, !dbg !2195

.invoke387.i.i:                                   ; preds = %bb.gw, %bb.gu, %bb.fo, %_RNvNtNtCsk4ZPsEfLtLH_6brotli3enc17brotli_bit_stream7Context.exit.i.i, %.lr.ph185.i.i
  %i.afr = phi i64 [ %i.afp, %_RNvNtNtCsk4ZPsEfLtLH_6brotli3enc17brotli_bit_stream7Context.exit.i.i ], [ %i.acj, %.lr.ph185.i.i ], [ %i.aer, %bb.gu ], [ %.val184, %bb.fo ], [ %i.aew, %bb.gw ]
  %i.afs = phi i64 [ %i.nn, %_RNvNtNtCsk4ZPsEfLtLH_6brotli3enc17brotli_bit_stream7Context.exit.i.i ], [ %i.nn, %.lr.ph185.i.i ], [ %i.nn, %bb.gu ], [ %.val184, %bb.fo ], [ %i.nn, %bb.gw ]
  %i.aft = phi ptr [ @132, %_RNvNtNtCsk4ZPsEfLtLH_6brotli3enc17brotli_bit_stream7Context.exit.i.i ], [ @129, %.lr.ph185.i.i ], [ @130, %bb.gu ], [ @128, %bb.fo ], [ @131, %bb.gw ]
  invoke void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %i.afr, i64 noundef %i.afs, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.aft) #20
          to label %.cont388.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.i, !dbg !2196, !noalias !1512

.cont388.i.i:                                     ; preds = %.invoke387.i.i
  unreachable

bb.hg:                                            ; preds = %_RNvNtNtCsk4ZPsEfLtLH_6brotli3enc17brotli_bit_stream7Context.exit.i.i
  %i.afu = getelementptr inbounds nuw i8, ptr %i.no, i64 %i.afp, !dbg !2195
  %i.afv = load i8, ptr %i.afu, align 1, !dbg !2195, !alias.scope !2082, !noalias !2083, !noundef !14 ; 3 uses
  %i.afw = zext i8 %i.afv to i64, !dbg !2197
  call void @llvm.experimental.noalias.scope.decl(metadata !2199), !dbg !2202
  call void @llvm.experimental.noalias.scope.decl(metadata !2203), !dbg !2202
  %i.afx = load i64, ptr %.sroa.1719.0..sroa_idx.i.i, align 8, !dbg !2205, !alias.scope !2199, !noalias !2208, !noundef !14 ; 2 uses
  %i.afy = icmp eq i64 %i.afx, 0, !dbg !2205
  br i1 %i.afy, label %bb.hh, label %bb.hk, !dbg !2205

bb.hh:                                            ; preds = %bb.hg
  %i.afz = load i64, ptr %.sroa.1618.0..sroa_idx.i.i, align 8, !dbg !2211, !alias.scope !2199, !noalias !2208, !noundef !14
  %i.aga = add i64 %i.afz, 1, !dbg !2212          ; 7 uses
  store i64 %i.aga, ptr %.sroa.1618.0..sroa_idx.i.i, align 8, !dbg !2215, !alias.scope !2199, !noalias !2208
  %i.agb = load i64, ptr %.sroa.616.0..sroa_idx.i.i, align 8, !dbg !2216, !alias.scope !2199, !noalias !2208, !noundef !14 ; 2 uses
  %i.agc = icmp ult i64 %i.aga, %i.agb, !dbg !2216
  br i1 %i.agc, label %bb.hi, label %.invoke.i.i, !dbg !2216

bb.hi:                                            ; preds = %bb.hh
  %i.agd = load i64, ptr %.sroa.415.0..sroa_idx.i.i, align 8, !dbg !2218, !alias.scope !2199, !noalias !2208, !noundef !14 ; 2 uses
  %i.age = icmp ult i64 %i.aga, %i.agd, !dbg !2218
  br i1 %i.age, label %bb.hj, label %.invoke.i.i, !dbg !2218

bb.hj:                                            ; preds = %bb.hi
  %i.agf = load ptr, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !dbg !2216, !alias.scope !2199, !noalias !2208, !nonnull !14, !align !791, !noundef !14
  %i.agg = getelementptr inbounds nuw [4 x i8], ptr %i.agf, i64 %i.aga, !dbg !2216
  %i.agh = load i32, ptr %i.agg, align 4, !dbg !2216, !noalias !2220, !noundef !14 ; 2 uses
  %i.agi = load ptr, ptr %i.q, align 8, !dbg !2218, !alias.scope !2199, !noalias !2208, !nonnull !14, !noundef !14
  %i.agj = getelementptr inbounds nuw i8, ptr %i.agi, i64 %i.aga, !dbg !2218
  %i.agk = load i8, ptr %i.agj, align 1, !dbg !2218, !noalias !2220, !noundef !14 ; 2 uses
  %i.agl = zext i32 %i.agh to i64, !dbg !2221
  store i64 %i.agl, ptr %.sroa.1719.0..sroa_idx.i.i, align 8, !dbg !2221, !alias.scope !2199, !noalias !2208
  %i.agm = zext i8 %i.agk to i64, !dbg !2223
  %i.agn = shl nuw nsw i64 %i.agm, 6, !dbg !2224
  store i64 %i.agn, ptr %.sroa.18.0..sroa_idx.i.i, align 8, !dbg !2224, !alias.scope !2199, !noalias !2208
  invoke void @_RNvNtNtCsk4ZPsEfLtLH_6brotli3enc17brotli_bit_stream16StoreBlockSwitch(ptr noalias noundef nonnull align 8 dereferenceable(872) %.sroa.14.0..sroa_idx.i.i, i32 noundef %i.agh, i8 noundef %i.agk, i1 noundef zeroext false, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.ba, ptr noalias noundef nonnull %.val, i64 noundef range(i64 2, -9223372036854775808) %.val116)
          to label %.noexc160.i.i unwind label %.loopexit.split-lp.loopexit.i.i, !dbg !2225, !noalias !1512

.noexc160.i.i:                                    ; preds = %bb.hj
  %.pre.i158.i.i = load i64, ptr %.sroa.1719.0..sroa_idx.i.i, align 8, !dbg !2226, !alias.scope !2199, !noalias !2208
  br label %bb.hk, !dbg !2225

bb.hk:                                            ; preds = %.noexc160.i.i, %bb.hg
  %i.ago = phi i64 [ %i.afx, %bb.hg ], [ %.pre.i158.i.i, %.noexc160.i.i ], !dbg !2226
  %i.agp = add i64 %i.ago, -1, !dbg !2227
  store i64 %i.agp, ptr %.sroa.1719.0..sroa_idx.i.i, align 8, !dbg !2230, !alias.scope !2199, !noalias !2208
  %i.agq = load i64, ptr %.sroa.18.0..sroa_idx.i.i, align 8, !dbg !2231, !alias.scope !2199, !noalias !2208, !noundef !14
  %i.agr = add i64 %i.agq, %i.afo, !dbg !2232     ; 3 uses
  %i.ags = icmp ult i64 %i.agr, %.val47.i.i, !dbg !2234
  br i1 %i.ags, label %bb.hl, label %.invoke.i.i, !dbg !2234

bb.hl:                                            ; preds = %bb.hk
  %i.agt = getelementptr inbounds nuw [4 x i8], ptr %.val46.i.i, i64 %i.agr, !dbg !2234
  %i.agu = load i32, ptr %i.agt, align 4, !dbg !2234, !alias.scope !2203, !noalias !2235, !noundef !14
  %i.agv = zext i32 %i.agu to i64, !dbg !2234
  %i.agw = load i64, ptr %.sroa.11.0..sroa_idx.i.i, align 8, !dbg !2236, !alias.scope !2199, !noalias !2208, !noundef !14
  %i.agx = mul i64 %i.agw, %i.agv, !dbg !2238
  %i.agy = add i64 %i.agx, %i.afw, !dbg !2241     ; 6 uses
  %.val9.i156.i.i = load i64, ptr %.sroa.8.0..sroa_idx.i.i, align 8, !dbg !2243, !alias.scope !2199, !noalias !2208, !noundef !14 ; 2 uses
  %i.agz = icmp ult i64 %i.agy, %.val9.i156.i.i, !dbg !2245
  br i1 %i.agz, label %bb.hm, label %.invoke.i.i, !dbg !2245

bb.hm:                                            ; preds = %bb.hl
  %.val11.i.i.i = load i64, ptr %.sroa.10.0..sroa_idx.i.i, align 8, !dbg !2246, !alias.scope !2199, !noalias !2208, !noundef !14 ; 2 uses
  %i.aha = icmp ult i64 %i.agy, %.val11.i.i.i, !dbg !2247
  br i1 %i.aha, label %bb.hn, label %.invoke.i.i, !dbg !2247

bb.hn:                                            ; preds = %bb.hm
  %.val10.i.i.i = load ptr, ptr %.sroa.9.0..sroa_idx.i.i, align 8, !dbg !2246, !alias.scope !2199, !noalias !2208, !nonnull !14, !noundef !14
  %.val.i157.i.i = load ptr, ptr %.sroa.717.0..sroa_idx.i.i, align 8, !dbg !2243, !alias.scope !2199, !noalias !2208, !nonnull !14, !noundef !14
  %i.ahb = getelementptr inbounds nuw i8, ptr %.val.i157.i.i, i64 %i.agy, !dbg !2245
  %i.ahc = load i8, ptr %i.ahb, align 1, !dbg !2245, !noalias !2248, !noundef !14
  %i.ahd = getelementptr inbounds nuw [2 x i8], ptr %.val10.i.i.i, i64 %i.agy, !dbg !2247
  %i.ahe = load i16, ptr %i.ahd, align 2, !dbg !2247, !noalias !2248, !noundef !14
  %i.ahf = zext i16 %i.ahe to i64, !dbg !2247
  invoke void @_RNvNtNtCsk4ZPsEfLtLH_6brotli3enc17brotli_bit_stream15BrotliWriteBits(i8 noundef %i.ahc, i64 noundef %i.ahf, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.ba, ptr noalias noundef nonnull %.val, i64 noundef range(i64 2, -9223372036854775808) %.val116)
          to label %_RNvMs9_NtNtCsk4ZPsEfLtLH_6brotli3enc17brotli_bit_streamINtB5_12BlockEncoderNtNtCsbA1n9drshSs_12alloc_stdlib9std_alloc13StandardAllocE25store_symbol_with_contextCsfISxE4fmY1Y_14polars_parquet.exit.i.i unwind label %.loopexit.split-lp.loopexit.i.i, !dbg !2249, !noalias !1512

.invoke.i.i:                                      ; preds = %bb.hm, %bb.hl, %bb.hk, %bb.hi, %bb.hh, %bb.go, %bb.gn, %bb.gl, %bb.gk, %bb.fv
  %i.ahg = phi i64 [ %i.abq, %bb.fv ], [ %i.adj, %bb.go ], [ %i.adj, %bb.gn ], [ %i.acr, %bb.gl ], [ %i.acr, %bb.gk ], [ %i.agy, %bb.hm ], [ %i.agy, %bb.hl ], [ %i.agr, %bb.hk ], [ %i.aga, %bb.hi ], [ %i.aga, %bb.hh ]
  %i.ahh = phi i64 [ %.val116, %bb.fv ], [ %.val9.i.i.i, %bb.go ], [ %.val7.i.i.i, %bb.gn ], [ %i.acu, %bb.gl ], [ %i.acs, %bb.gk ], [ %.val11.i.i.i, %bb.hm ], [ %.val9.i156.i.i, %bb.hl ], [ %.val47.i.i, %bb.hk ], [ %i.agd, %bb.hi ], [ %i.agb, %bb.hh ]
  %i.ahi = phi ptr [ @516, %bb.fv ], [ @455, %bb.go ], [ @454, %bb.gn ], [ @453, %bb.gl ], [ @452, %bb.gk ], [ @462, %bb.hm ], [ @461, %bb.hl ], [ @460, %bb.hk ], [ @459, %bb.hi ], [ @458, %bb.hh ]
  invoke void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %i.ahg, i64 noundef %i.ahh, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ahi) #18
          to label %.cont.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.i, !dbg !2250, !noalias !1512

.cont.i.i:                                        ; preds = %.invoke.i.i
  unreachable

end_hunk_0
begin_hunk_1_@_RINvMs8_NtNtCsk4ZPsEfLtLH_6brotli3enc6encodeINtB6_24BrotliEncoderStateStructNtNtCsbA1n9drshSs_12alloc_stdlib9std_alloc13StandardAllocE11encode_dataNCNvXs4_NtB8_6writerINtB2t_24CompressorWriterCustomIoNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorINtNtCsjPfRcqrlXv6_19brotli_decompressor11io_wrappers12IntoIoWriterQINtNtCsgZ49sUHp3tW_5alloc3vec3VechEEINtNtB1g_10heap_alloc7WrapBoxhEB1c_EINtB3S_11CustomWriteB3c_E5write0ECsfISxE4fmY1Y_14polars_parquet:bb.a
  call void @llvm.experimental.noalias.scope.decl(metadata !3870), !dbg !3869
  %i.abn = load i64, ptr %i.ba, align 8, !dbg !3872, !alias.scope !3874, !noalias !3875, !noundef !14
  %i.abo = add i64 %i.abn, 7, !dbg !3876
  %i.abp = and i64 %i.abo, 4294967288, !dbg !3878 ; 2 uses
  store i64 %i.abp, ptr %i.ba, align 8, !dbg !3878, !alias.scope !3874, !noalias !3875
  %i.abq = lshr exact i64 %i.abp, 3, !dbg !3879   ; 3 uses
  %i.abr = icmp samesign ult i64 %i.abq, %.val116, !dbg !3880
  br i1 %i.abr, label %_RNvNtNtCsk4ZPsEfLtLH_6brotli3enc17brotli_bit_stream18JumpToByteBoundary.exit.i38.i, label %.invoke.i.i, !dbg !3880

_RNvNtNtCsk4ZPsEfLtLH_6brotli3enc17brotli_bit_stream18JumpToByteBoundary.exit.i38.i: ; preds = %bb.fv
  %i.abs = getelementptr inbounds nuw i8, ptr %.val, i64 %i.abq, !dbg !3880
  store i8 0, ptr %i.abs, align 1, !dbg !3880, !alias.scope !3881, !noalias !3882
  br label %bb.ft, !dbg !3883

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsbA1n9drshSs_12alloc_stdlib10heap_alloc7WrapBoxNtNtNtCsk4ZPsEfLtLH_6brotli3enc14entropy_encode11HuffmanTreeEECsfISxE4fmY1Y_14polars_parquet.exit131.i.i: ; preds = %bb.fu, %bb.ft
  call void @llvm.experimental.noalias.scope.decl(metadata !3884), !dbg !3435
  %.val1.i.i.i = load i64, ptr %.sroa.842.0..sroa_idx.i.i, align 8, !dbg !3887, !alias.scope !3884, !noalias !3387, !noundef !14 ; 2 uses
  %i.abt = icmp eq i64 %.val1.i.i.i, 0, !dbg !3889
  br i1 %i.abt, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsbA1n9drshSs_12alloc_stdlib10heap_alloc7WrapBoxhEECsfISxE4fmY1Y_14polars_parquet.exit.i133.i.i, label %bb.fw, !dbg !3889

bb.fw:                                            ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsbA1n9drshSs_12alloc_stdlib10heap_alloc7WrapBoxNtNtNtCsk4ZPsEfLtLH_6brotli3enc14entropy_encode11HuffmanTreeEECsfISxE4fmY1Y_14polars_parquet.exit131.i.i
  %.val.i.i.i = load ptr, ptr %.sroa.741.0..sroa_idx.i.i, align 8, !dbg !3887, !alias.scope !3884, !noalias !3387, !nonnull !14, !noundef !14
  call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i, i64 noundef range(i64 1, 0) %.val1.i.i.i, i64 noundef 1) #19, !dbg !3893, !noalias !3898
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsbA1n9drshSs_12alloc_stdlib10heap_alloc7WrapBoxhEECsfISxE4fmY1Y_14polars_parquet.exit.i133.i.i, !dbg !3899

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsbA1n9drshSs_12alloc_stdlib10heap_alloc7WrapBoxhEECsfISxE4fmY1Y_14polars_parquet.exit.i133.i.i: ; preds = %bb.fw, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsbA1n9drshSs_12alloc_stdlib10heap_alloc7WrapBoxNtNtNtCsk4ZPsEfLtLH_6brotli3enc14entropy_encode11HuffmanTreeEECsfISxE4fmY1Y_14polars_parquet.exit131.i.i
  %.val3.i.i.i = load i64, ptr %.sroa.1044.0..sroa_idx.i.i, align 8, !dbg !3887, !alias.scope !3884, !noalias !3387, !noundef !14 ; 2 uses
  %i.abu = icmp eq i64 %.val3.i.i.i, 0, !dbg !3900
  br i1 %i.abu, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtCsk4ZPsEfLtLH_6brotli3enc17brotli_bit_stream12BlockEncoderNtNtCsbA1n9drshSs_12alloc_stdlib9std_alloc13StandardAllocEECsfISxE4fmY1Y_14polars_parquet.exit.i.i, label %bb.fx, !dbg !3900

bb.fx:                                            ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsbA1n9drshSs_12alloc_stdlib10heap_alloc7WrapBoxhEECsfISxE4fmY1Y_14polars_parquet.exit.i133.i.i
  %.val2.i.i.i = load ptr, ptr %.sroa.943.0..sroa_idx.i.i, align 8, !dbg !3887, !alias.scope !3884, !noalias !3387, !nonnull !14, !noundef !14
  %i.abv = shl nuw nsw i64 %.val3.i.i.i, 1, !dbg !3904
  call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %.val2.i.i.i, i64 noundef range(i64 1, 0) %i.abv, i64 noundef 2) #19, !dbg !3907, !noalias !3898
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtCsk4ZPsEfLtLH_6brotli3enc17brotli_bit_stream12BlockEncoderNtNtCsbA1n9drshSs_12alloc_stdlib9std_alloc13StandardAllocEECsfISxE4fmY1Y_14polars_parquet.exit.i.i, !dbg !3912

bb.fy:                                            ; preds = %bb.hp, %bb.eh
  br i1 %.sroa.022.2.lpad-body.i.i, label %.thread58.i.i, label %bb.gb, !dbg !3913

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtCsk4ZPsEfLtLH_6brotli3enc17brotli_bit_stream12BlockEncoderNtNtCsbA1n9drshSs_12alloc_stdlib9std_alloc13StandardAllocEECsfISxE4fmY1Y_14polars_parquet.exit.i.i: ; preds = %bb.fx, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsbA1n9drshSs_12alloc_stdlib10heap_alloc7WrapBoxhEECsfISxE4fmY1Y_14polars_parquet.exit.i133.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !dbg !3435, !noalias !3387
  call void @llvm.experimental.noalias.scope.decl(metadata !3914), !dbg !3913
  %.val1.i134.i.i = load i64, ptr %.sroa.825.0..sroa_idx.i.i, align 8, !dbg !3917, !alias.scope !3914, !noalias !3387, !noundef !14 ; 2 uses
  %i.abw = icmp eq i64 %.val1.i134.i.i, 0, !dbg !3919
  br i1 %i.abw, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsbA1n9drshSs_12alloc_stdlib10heap_alloc7WrapBoxhEECsfISxE4fmY1Y_14polars_parquet.exit.i136.i.i, label %bb.fz, !dbg !3919

bb.fz:                                            ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtCsk4ZPsEfLtLH_6brotli3enc17brotli_bit_stream12BlockEncoderNtNtCsbA1n9drshSs_12alloc_stdlib9std_alloc13StandardAllocEECsfISxE4fmY1Y_14polars_parquet.exit.i.i
  %.val.i135.i.i = load ptr, ptr %.sroa.724.0..sroa_idx.i.i, align 8, !dbg !3917, !alias.scope !3914, !noalias !3387, !nonnull !14, !noundef !14
  call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i135.i.i, i64 noundef range(i64 1, 0) %.val1.i134.i.i, i64 noundef 1) #19, !dbg !3923, !noalias !3928
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsbA1n9drshSs_12alloc_stdlib10heap_alloc7WrapBoxhEECsfISxE4fmY1Y_14polars_parquet.exit.i136.i.i, !dbg !3929

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsbA1n9drshSs_12alloc_stdlib10heap_alloc7WrapBoxhEECsfISxE4fmY1Y_14polars_parquet.exit.i136.i.i: ; preds = %bb.fz, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtCsk4ZPsEfLtLH_6brotli3enc17brotli_bit_stream12BlockEncoderNtNtCsbA1n9drshSs_12alloc_stdlib9std_alloc13StandardAllocEECsfISxE4fmY1Y_14polars_parquet.exit.i.i
  %.val3.i137.i.i = load i64, ptr %.sroa.1027.0..sroa_idx.i.i, align 8, !dbg !3917, !alias.scope !3914, !noalias !3387, !noundef !14 ; 2 uses
  %i.abx = icmp eq i64 %.val3.i137.i.i, 0, !dbg !3930
  br i1 %i.abx, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtCsk4ZPsEfLtLH_6brotli3enc17brotli_bit_stream12BlockEncoderNtNtCsbA1n9drshSs_12alloc_stdlib9std_alloc13StandardAllocEECsfISxE4fmY1Y_14polars_parquet.exit139.i.i, label %bb.ga, !dbg !3930

bb.ga:                                            ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsbA1n9drshSs_12alloc_stdlib10heap_alloc7WrapBoxhEECsfISxE4fmY1Y_14polars_parquet.exit.i136.i.i
  %.val2.i138.i.i = load ptr, ptr %.sroa.926.0..sroa_idx.i.i, align 8, !dbg !3917, !alias.scope !3914, !noalias !3387, !nonnull !14, !noundef !14
  %i.aby = shl nuw nsw i64 %.val3.i137.i.i, 1, !dbg !3934
  call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %.val2.i138.i.i, i64 noundef range(i64 1, 0) %i.aby, i64 noundef 2) #19, !dbg !3937, !noalias !3928
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtCsk4ZPsEfLtLH_6brotli3enc17brotli_bit_stream12BlockEncoderNtNtCsbA1n9drshSs_12alloc_stdlib9std_alloc13StandardAllocEECsfISxE4fmY1Y_14polars_parquet.exit139.i.i, !dbg !3942

bb.gb:                                            ; preds = %.thread58.i.i, %bb.fy
  br i1 %.sroa.023.2.lpad-body.i.i, label %.thread68.i.i, label %.body.i, !dbg !3943

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtCsk4ZPsEfLtLH_6brotli3enc17brotli_bit_stream12BlockEncoderNtNtCsbA1n9drshSs_12alloc_stdlib9std_alloc13StandardAllocEECsfISxE4fmY1Y_14polars_parquet.exit139.i.i: ; preds = %bb.ga, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsbA1n9drshSs_12alloc_stdlib10heap_alloc7WrapBoxhEECsfISxE4fmY1Y_14polars_parquet.exit.i136.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !dbg !3913, !noalias !3387
  call void @llvm.experimental.noalias.scope.decl(metadata !3944), !dbg !3943
  %.val1.i140.i.i = load i64, ptr %.sroa.8.0..sroa_idx.i.i, align 8, !dbg !3947, !alias.scope !3944, !noalias !3387, !noundef !14 ; 2 uses
  %i.abz = icmp eq i64 %.val1.i140.i.i, 0, !dbg !3949
  br i1 %i.abz, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsbA1n9drshSs_12alloc_stdlib10heap_alloc7WrapBoxhEECsfISxE4fmY1Y_14polars_parquet.exit.i142.i.i, label %bb.gc, !dbg !3949

bb.gc:                                            ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtCsk4ZPsEfLtLH_6brotli3enc17brotli_bit_stream12BlockEncoderNtNtCsbA1n9drshSs_12alloc_stdlib9std_alloc13StandardAllocEECsfISxE4fmY1Y_14polars_parquet.exit139.i.i
  %.val.i141.i.i = load ptr, ptr %.sroa.717.0..sroa_idx.i.i, align 8, !dbg !3947, !alias.scope !3944, !noalias !3387, !nonnull !14, !noundef !14
  call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i141.i.i, i64 noundef range(i64 1, 0) %.val1.i140.i.i, i64 noundef 1) #19, !dbg !3953, !noalias !3958
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsbA1n9drshSs_12alloc_stdlib10heap_alloc7WrapBoxhEECsfISxE4fmY1Y_14polars_parquet.exit.i142.i.i, !dbg !3959

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsbA1n9drshSs_12alloc_stdlib10heap_alloc7WrapBoxhEECsfISxE4fmY1Y_14polars_parquet.exit.i142.i.i: ; preds = %bb.gc, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtCsk4ZPsEfLtLH_6brotli3enc17brotli_bit_stream12BlockEncoderNtNtCsbA1n9drshSs_12alloc_stdlib9std_alloc13StandardAllocEECsfISxE4fmY1Y_14polars_parquet.exit139.i.i
  %.val3.i143.i.i = load i64, ptr %.sroa.10.0..sroa_idx.i.i, align 8, !dbg !3947, !alias.scope !3944, !noalias !3387, !noundef !14 ; 2 uses
  %i.aca = icmp eq i64 %.val3.i143.i.i, 0, !dbg !3960
  br i1 %i.aca, label %bb.hr, label %bb.gd, !dbg !3960

bb.gd:                                            ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsbA1n9drshSs_12alloc_stdlib10heap_alloc7WrapBoxhEECsfISxE4fmY1Y_14polars_parquet.exit.i142.i.i
  %.val2.i144.i.i = load ptr, ptr %.sroa.9.0..sroa_idx.i.i, align 8, !dbg !3947, !alias.scope !3944, !noalias !3387, !nonnull !14, !noundef !14
  %i.acb = shl nuw nsw i64 %.val3.i143.i.i, 1, !dbg !3964
  call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %.val2.i144.i.i, i64 noundef range(i64 1, 0) %i.acb, i64 noundef 2) #19, !dbg !3967, !noalias !3958
  br label %bb.hr, !dbg !3972

bb.ge:                                            ; preds = %bb.fo
  %i.acc = getelementptr inbounds nuw [16 x i8], ptr %.val183, i64 %.sroa.026.0187.i.i, !dbg !3747
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.n, ptr noundef nonnull readonly align 4 dereferenceable(16) %i.acc, i64 16, i1 false), !dbg !3747, !noalias !3973
  %i.acd = load i16, ptr %i.zd, align 4, !dbg !3974, !noalias !3387, !noundef !14 ; 3 uses
  %i.ace = zext i16 %i.acd to i64, !dbg !3974
  invoke fastcc void @_RNvMs7_NtNtCsk4ZPsEfLtLH_6brotli3enc17brotli_bit_streamINtB5_12BlockEncoderNtNtCsbA1n9drshSs_12alloc_stdlib9std_alloc13StandardAllocE12store_symbolCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef align 8 dereferenceable(984) %i.p, i64 noundef %i.ace, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.ba, ptr noalias noundef nonnull %.val, i64 noundef range(i64 2, -9223372036854775808) %.val116)
          to label %bb.gf unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i.i, !dbg !3976, !noalias !3448

bb.gf:                                            ; preds = %bb.ge
  invoke void @_RNvNtNtCsk4ZPsEfLtLH_6brotli3enc17brotli_bit_stream17StoreCommandExtra(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(16) %i.n, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.ba, ptr noalias noundef nonnull %.val, i64 noundef range(i64 2, -9223372036854775808) %.val116)
          to label %bb.gg unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i.i, !dbg !3978, !noalias !3448

bb.gg:                                            ; preds = %bb.gf
  %i.acf = load i32, ptr %i.n, align 4, !dbg !3979, !noalias !3387, !noundef !14 ; 3 uses
  %i.acg = icmp eq i32 %i.acf, 0, !dbg !3979      ; 2 uses
  br i1 %i.xw, label %bb.gh, label %bb.gi, !dbg !3980

bb.gh:                                            ; preds = %bb.gg
  br i1 %i.acg, label %.loopexit.i.i, label %.lr.ph185.preheader.i.i, !dbg !3981

.lr.ph185.preheader.i.i:                          ; preds = %bb.gh
  %i.ach = zext i32 %i.acf to i64, !dbg !3983
  br label %.lr.ph185.i.i, !dbg !3984

bb.gi:                                            ; preds = %bb.gg
  br i1 %i.acg, label %.loopexit.i.i, label %.lr.ph179.preheader.i.i, !dbg !3985

.lr.ph179.preheader.i.i:                          ; preds = %bb.gi
  %i.aci = zext i32 %i.acf to i64, !dbg !3987
  br label %.lr.ph179.i.i, !dbg !3988

.lr.ph185.i.i:                                    ; preds = %_RNvMs7_NtNtCsk4ZPsEfLtLH_6brotli3enc17brotli_bit_streamINtB5_12BlockEncoderNtNtCsbA1n9drshSs_12alloc_stdlib9std_alloc13StandardAllocE12store_symbolCsfISxE4fmY1Y_14polars_parquet.exit.i.i, %.lr.ph185.preheader.i.i
  %.sroa.0.1183.i.i = phi i64 [ %i.adr, %_RNvMs7_NtNtCsk4ZPsEfLtLH_6brotli3enc17brotli_bit_streamINtB5_12BlockEncoderNtNtCsbA1n9drshSs_12alloc_stdlib9std_alloc13StandardAllocE12store_symbolCsfISxE4fmY1Y_14polars_parquet.exit.i.i ], [ %.sroa.0.0190.i.i, %.lr.ph185.preheader.i.i ] ; 2 uses
  %.sroa.017.0182.i.i = phi i64 [ %i.ads, %_RNvMs7_NtNtCsk4ZPsEfLtLH_6brotli3enc17brotli_bit_streamINtB5_12BlockEncoderNtNtCsbA1n9drshSs_12alloc_stdlib9std_alloc13StandardAllocE12store_symbolCsfISxE4fmY1Y_14polars_parquet.exit.i.i ], [ %i.ach, %.lr.ph185.preheader.i.i ]
  %i.acj = and i64 %.sroa.0.1183.i.i, %i.kr, !dbg !3990 ; 3 uses
  %i.ack = icmp samesign ult i64 %i.acj, %i.nn, !dbg !3984
  br i1 %i.ack, label %bb.gj, label %.invoke387.i.i, !dbg !3984

bb.gj:                                            ; preds = %.lr.ph185.i.i
  %i.acl = getelementptr inbounds nuw i8, ptr %i.no, i64 %i.acj, !dbg !3984
  %i.acm = load i8, ptr %i.acl, align 1, !dbg !3984, !alias.scope !3991, !noalias !3992, !noundef !14
  %i.acn = zext i8 %i.acm to i64, !dbg !3984
  call void @llvm.experimental.noalias.scope.decl(metadata !3993), !dbg !3996
  %i.aco = load i64, ptr %.sroa.1719.0..sroa_idx.i.i, align 8, !dbg !3997, !alias.scope !3993, !noalias !3999, !noundef !14 ; 2 uses
  %i.acp = icmp eq i64 %i.aco, 0, !dbg !3997
  br i1 %i.acp, label %bb.gk, label %bb.gn, !dbg !3997

bb.gk:                                            ; preds = %bb.gj
  %i.acq = load i64, ptr %.sroa.1618.0..sroa_idx.i.i, align 8, !dbg !4002, !alias.scope !3993, !noalias !3999, !noundef !14
  %i.acr = add i64 %i.acq, 1, !dbg !4003          ; 7 uses
  store i64 %i.acr, ptr %.sroa.1618.0..sroa_idx.i.i, align 8, !dbg !4005, !alias.scope !3993, !noalias !3999
  %i.acs = load i64, ptr %.sroa.616.0..sroa_idx.i.i, align 8, !dbg !4006, !alias.scope !3993, !noalias !3999, !noundef !14 ; 2 uses
  %i.act = icmp ult i64 %i.acr, %i.acs, !dbg !4006
  br i1 %i.act, label %bb.gl, label %.invoke.i.i, !dbg !4006

bb.gl:                                            ; preds = %bb.gk
  %i.acu = load i64, ptr %.sroa.415.0..sroa_idx.i.i, align 8, !dbg !4007, !alias.scope !3993, !noalias !3999, !noundef !14 ; 2 uses
  %i.acv = icmp ult i64 %i.acr, %i.acu, !dbg !4007
  br i1 %i.acv, label %bb.gm, label %.invoke.i.i, !dbg !4007

bb.gm:                                            ; preds = %bb.gl
  %i.acw = load ptr, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !dbg !4006, !alias.scope !3993, !noalias !3999, !nonnull !14, !align !791, !noundef !14
  %i.acx = getelementptr inbounds nuw [4 x i8], ptr %i.acw, i64 %i.acr, !dbg !4006
  %i.acy = load i32, ptr %i.acx, align 4, !dbg !4006, !noalias !4008, !noundef !14 ; 2 uses
  %i.acz = load ptr, ptr %i.q, align 8, !dbg !4007, !alias.scope !3993, !noalias !3999, !nonnull !14, !noundef !14
  %i.ada = getelementptr inbounds nuw i8, ptr %i.acz, i64 %i.acr, !dbg !4007
  %i.adb = load i8, ptr %i.ada, align 1, !dbg !4007, !noalias !4008, !noundef !14 ; 2 uses
  %i.adc = zext i32 %i.acy to i64, !dbg !4009
  store i64 %i.adc, ptr %.sroa.1719.0..sroa_idx.i.i, align 8, !dbg !4009, !alias.scope !3993, !noalias !3999
  %i.add = zext i8 %i.adb to i64, !dbg !4010
  %i.ade = load i64, ptr %.sroa.11.0..sroa_idx.i.i, align 8, !dbg !4011, !alias.scope !3993, !noalias !3999, !noundef !14
  %i.adf = mul i64 %i.ade, %i.add, !dbg !4012
  store i64 %i.adf, ptr %.sroa.18.0..sroa_idx.i.i, align 8, !dbg !4014, !alias.scope !3993, !noalias !3999
  invoke void @_RNvNtNtCsk4ZPsEfLtLH_6brotli3enc17brotli_bit_stream16StoreBlockSwitch(ptr noalias noundef nonnull align 8 dereferenceable(872) %.sroa.14.0..sroa_idx.i.i, i32 noundef %i.acy, i8 noundef %i.adb, i1 noundef zeroext false, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.ba, ptr noalias noundef nonnull %.val, i64 noundef range(i64 2, -9223372036854775808) %.val116)
          to label %.noexc148.i.i unwind label %.loopexit76.i.i, !dbg !4015, !noalias !3448

.noexc148.i.i:                                    ; preds = %bb.gm
  %.pre.i.i.i = load i64, ptr %.sroa.1719.0..sroa_idx.i.i, align 8, !dbg !4016, !alias.scope !3993, !noalias !3999
  br label %bb.gn, !dbg !4015

bb.gn:                                            ; preds = %.noexc148.i.i, %bb.gj
  %i.adg = phi i64 [ %i.aco, %bb.gj ], [ %.pre.i.i.i, %.noexc148.i.i ], !dbg !4016
  %i.adh = add i64 %i.adg, -1, !dbg !4017
  store i64 %i.adh, ptr %.sroa.1719.0..sroa_idx.i.i, align 8, !dbg !4019, !alias.scope !3993, !noalias !3999
  %i.adi = load i64, ptr %.sroa.18.0..sroa_idx.i.i, align 8, !dbg !4020, !alias.scope !3993, !noalias !3999, !noundef !14
  %i.adj = add i64 %i.adi, %i.acn, !dbg !4021     ; 6 uses
  %.val7.i.i.i = load i64, ptr %.sroa.8.0..sroa_idx.i.i, align 8, !dbg !4023, !alias.scope !3993, !noalias !3999, !noundef !14 ; 2 uses
  %i.adk = icmp ult i64 %i.adj, %.val7.i.i.i, !dbg !4024
  br i1 %i.adk, label %bb.go, label %.invoke.i.i, !dbg !4024

bb.go:                                            ; preds = %bb.gn
  %.val9.i.i.i = load i64, ptr %.sroa.10.0..sroa_idx.i.i, align 8, !dbg !4025, !alias.scope !3993, !noalias !3999, !noundef !14 ; 2 uses
  %i.adl = icmp ult i64 %i.adj, %.val9.i.i.i, !dbg !4026
  br i1 %i.adl, label %bb.gp, label %.invoke.i.i, !dbg !4026

bb.gp:                                            ; preds = %bb.go
  %.val8.i.i.i = load ptr, ptr %.sroa.9.0..sroa_idx.i.i, align 8, !dbg !4025, !alias.scope !3993, !noalias !3999, !nonnull !14, !noundef !14
  %.val.i146.i.i = load ptr, ptr %.sroa.717.0..sroa_idx.i.i, align 8, !dbg !4023, !alias.scope !3993, !noalias !3999, !nonnull !14, !noundef !14
  %i.adm = getelementptr inbounds nuw i8, ptr %.val.i146.i.i, i64 %i.adj, !dbg !4024
  %i.adn = load i8, ptr %i.adm, align 1, !dbg !4024, !noalias !3448, !noundef !14
  %i.ado = getelementptr inbounds nuw [2 x i8], ptr %.val8.i.i.i, i64 %i.adj, !dbg !4026
  %i.adp = load i16, ptr %i.ado, align 2, !dbg !4026, !noalias !3448, !noundef !14
  %i.adq = zext i16 %i.adp to i64, !dbg !4026
  invoke void @_RNvNtNtCsk4ZPsEfLtLH_6brotli3enc17brotli_bit_stream15BrotliWriteBits(i8 noundef %i.adn, i64 noundef %i.adq, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.ba, ptr noalias noundef nonnull %.val, i64 noundef range(i64 2, -9223372036854775808) %.val116)
          to label %_RNvMs7_NtNtCsk4ZPsEfLtLH_6brotli3enc17brotli_bit_streamINtB5_12BlockEncoderNtNtCsbA1n9drshSs_12alloc_stdlib9std_alloc13StandardAllocE12store_symbolCsfISxE4fmY1Y_14polars_parquet.exit.i.i unwind label %.loopexit76.i.i, !dbg !4027, !noalias !3448

_RNvMs7_NtNtCsk4ZPsEfLtLH_6brotli3enc17brotli_bit_streamINtB5_12BlockEncoderNtNtCsbA1n9drshSs_12alloc_stdlib9std_alloc13StandardAllocE12store_symbolCsfISxE4fmY1Y_14polars_parquet.exit.i.i: ; preds = %bb.gp
  %i.adr = add i64 %.sroa.0.1183.i.i, 1, !dbg !4028 ; 2 uses
  %i.ads = add nsw i64 %.sroa.017.0182.i.i, -1, !dbg !4031 ; 2 uses
  %i.adt = icmp eq i64 %i.ads, 0, !dbg !3981
  br i1 %i.adt, label %.loopexit.i.i, label %.lr.ph185.i.i, !dbg !3981

.lr.ph179.i.i:                                    ; preds = %.lr.ph179.preheader.i.i, %_RNvMs9_NtNtCsk4ZPsEfLtLH_6brotli3enc17brotli_bit_streamINtB5_12BlockEncoderNtNtCsbA1n9drshSs_12alloc_stdlib9std_alloc13StandardAllocE25store_symbol_with_contextCsfISxE4fmY1Y_14polars_parquet.exit.i.i
  %.sroa.0.3177.i.i = phi i64 [ %i.ahj, %_RNvMs9_NtNtCsk4ZPsEfLtLH_6brotli3enc17brotli_bit_streamINtB5_12BlockEncoderNtNtCsbA1n9drshSs_12alloc_stdlib9std_alloc13StandardAllocE25store_symbol_with_contextCsfISxE4fmY1Y_14polars_parquet.exit.i.i ], [ %.sroa.0.0190.i.i, %.lr.ph179.preheader.i.i ] ; 2 uses
  %.sroa.09.2176.i.i = phi i8 [ %i.afv, %_RNvMs9_NtNtCsk4ZPsEfLtLH_6brotli3enc17brotli_bit_streamINtB5_12BlockEncoderNtNtCsbA1n9drshSs_12alloc_stdlib9std_alloc13StandardAllocE25store_symbol_with_contextCsfISxE4fmY1Y_14polars_parquet.exit.i.i ], [ %.sroa.09.0189.i.i, %.lr.ph179.preheader.i.i ] ; 6 uses
  %.sroa.011.2175.i.i = phi i8 [ %.sroa.09.2176.i.i, %_RNvMs9_NtNtCsk4ZPsEfLtLH_6brotli3enc17brotli_bit_streamINtB5_12BlockEncoderNtNtCsbA1n9drshSs_12alloc_stdlib9std_alloc13StandardAllocE25store_symbol_with_contextCsfISxE4fmY1Y_14polars_parquet.exit.i.i ], [ %.sroa.011.0188.i.i, %.lr.ph179.preheader.i.i ] ; 2 uses
  %.sroa.019.0174.i.i = phi i64 [ %i.ahk, %_RNvMs9_NtNtCsk4ZPsEfLtLH_6brotli3enc17brotli_bit_streamINtB5_12BlockEncoderNtNtCsbA1n9drshSs_12alloc_stdlib9std_alloc13StandardAllocE25store_symbol_with_contextCsfISxE4fmY1Y_14polars_parquet.exit.i.i ], [ %i.aci, %.lr.ph179.preheader.i.i ]
  switch i8 %i.li, label %.lr.ph179.i.i.unreachabledefault [
    i8 0, label %bb.gq
    i8 1, label %bb.gr
    i8 2, label %bb.gs
    i8 3, label %bb.gt
  ], !dbg !3988

default.unreachable:                              ; preds = %bb.id
  unreachable

bb.gq:                                            ; preds = %.lr.ph179.i.i
  %i.adu = and i8 %.sroa.09.2176.i.i, 63, !dbg !4034
  br label %_RNvNtNtCsk4ZPsEfLtLH_6brotli3enc17brotli_bit_stream7Context.exit.i.i, !dbg !4035

bb.gr:                                            ; preds = %.lr.ph179.i.i
  %i.adv = lshr i8 %.sroa.09.2176.i.i, 2, !dbg !4036
  br label %_RNvNtNtCsk4ZPsEfLtLH_6brotli3enc17brotli_bit_stream7Context.exit.i.i, !dbg !4037

bb.gs:                                            ; preds = %.lr.ph179.i.i
  %i.adw = zext i8 %.sroa.011.2175.i.i to i64, !dbg !4038
  %i.adx = zext i8 %.sroa.09.2176.i.i to i64, !dbg !4039
  %i.ady = getelementptr inbounds nuw i8, ptr @_RNvNtNtCsk4ZPsEfLtLH_6brotli3enc9constants18kUTF8ContextLookup, i64 %i.adx, !dbg !4040
  %i.adz = load i8, ptr %i.ady, align 1, !dbg !4040, !noalias !3387, !noundef !14
  %i.aea = getelementptr inbounds nuw i8, ptr @_RNvNtNtCsk4ZPsEfLtLH_6brotli3enc9constants18kUTF8ContextLookup, i64 %i.adw, !dbg !4041
  %i.aeb = getelementptr inbounds nuw i8, ptr %i.aea, i64 256, !dbg !4041
  %i.aec = load i8, ptr %i.aeb, align 1, !dbg !4041, !noalias !3387, !noundef !14
  %i.aed = or i8 %i.aec, %i.adz, !dbg !4042
  br label %_RNvNtNtCsk4ZPsEfLtLH_6brotli3enc17brotli_bit_stream7Context.exit.i.i, !dbg !4043

.lr.ph179.i.i.unreachabledefault:                 ; preds = %.lr.ph179.i.i
  unreachable

bb.gt:                                            ; preds = %.lr.ph179.i.i
  %i.aee = zext i8 %.sroa.011.2175.i.i to i64, !dbg !4044
  %i.aef = zext i8 %.sroa.09.2176.i.i to i64, !dbg !4045
  %i.aeg = getelementptr inbounds nuw i8, ptr @_RNvNtNtCsk4ZPsEfLtLH_6brotli3enc9constants24kSigned3BitContextLookup, i64 %i.aef, !dbg !4046
  %i.aeh = load i8, ptr %i.aeg, align 1, !dbg !4046, !noalias !3387, !noundef !14
  %i.aei = shl i8 %i.aeh, 3, !dbg !4047
  %i.aej = getelementptr inbounds nuw i8, ptr @_RNvNtNtCsk4ZPsEfLtLH_6brotli3enc9constants24kSigned3BitContextLookup, i64 %i.aee, !dbg !4048
  %i.aek = load i8, ptr %i.aej, align 1, !dbg !4048, !noalias !3387, !noundef !14
  %i.ael = add i8 %i.aei, %i.aek, !dbg !4049
  br label %_RNvNtNtCsk4ZPsEfLtLH_6brotli3enc17brotli_bit_stream7Context.exit.i.i, !dbg !4050

.loopexit.i.i:                                    ; preds = %_RNvMs9_NtNtCsk4ZPsEfLtLH_6brotli3enc17brotli_bit_streamINtB5_12BlockEncoderNtNtCsbA1n9drshSs_12alloc_stdlib9std_alloc13StandardAllocE25store_symbol_with_contextCsfISxE4fmY1Y_14polars_parquet.exit.i.i, %_RNvMs7_NtNtCsk4ZPsEfLtLH_6brotli3enc17brotli_bit_streamINtB5_12BlockEncoderNtNtCsbA1n9drshSs_12alloc_stdlib9std_alloc13StandardAllocE12store_symbolCsfISxE4fmY1Y_14polars_parquet.exit.i.i, %bb.gi, %bb.gh
  %.sroa.011.1.i.i = phi i8 [ %.sroa.011.0188.i.i, %bb.gh ], [ %.sroa.011.0188.i.i, %_RNvMs7_NtNtCsk4ZPsEfLtLH_6brotli3enc17brotli_bit_streamINtB5_12BlockEncoderNtNtCsbA1n9drshSs_12alloc_stdlib9std_alloc13StandardAllocE12store_symbolCsfISxE4fmY1Y_14polars_parquet.exit.i.i ], [ %.sroa.011.0188.i.i, %bb.gi ], [ %.sroa.09.2176.i.i, %_RNvMs9_NtNtCsk4ZPsEfLtLH_6brotli3enc17brotli_bit_streamINtB5_12BlockEncoderNtNtCsbA1n9drshSs_12alloc_stdlib9std_alloc13StandardAllocE25store_symbol_with_contextCsfISxE4fmY1Y_14polars_parquet.exit.i.i ]
  %.sroa.09.1.i.i = phi i8 [ %.sroa.09.0189.i.i, %bb.gh ], [ %.sroa.09.0189.i.i, %_RNvMs7_NtNtCsk4ZPsEfLtLH_6brotli3enc17brotli_bit_streamINtB5_12BlockEncoderNtNtCsbA1n9drshSs_12alloc_stdlib9std_alloc13StandardAllocE12store_symbolCsfISxE4fmY1Y_14polars_parquet.exit.i.i ], [ %.sroa.09.0189.i.i, %bb.gi ], [ %i.afv, %_RNvMs9_NtNtCsk4ZPsEfLtLH_6brotli3enc17brotli_bit_streamINtB5_12BlockEncoderNtNtCsbA1n9drshSs_12alloc_stdlib9std_alloc13StandardAllocE25store_symbol_with_contextCsfISxE4fmY1Y_14polars_parquet.exit.i.i ]
  %.sroa.0.2.i.i = phi i64 [ %.sroa.0.0190.i.i, %bb.gh ], [ %i.adr, %_RNvMs7_NtNtCsk4ZPsEfLtLH_6brotli3enc17brotli_bit_streamINtB5_12BlockEncoderNtNtCsbA1n9drshSs_12alloc_stdlib9std_alloc13StandardAllocE12store_symbolCsfISxE4fmY1Y_14polars_parquet.exit.i.i ], [ %.sroa.0.0190.i.i, %bb.gi ], [ %i.ahj, %_RNvMs9_NtNtCsk4ZPsEfLtLH_6brotli3enc17brotli_bit_streamINtB5_12BlockEncoderNtNtCsbA1n9drshSs_12alloc_stdlib9std_alloc13StandardAllocE25store_symbol_with_contextCsfISxE4fmY1Y_14polars_parquet.exit.i.i ]
  %.val85.i.i = load i32, ptr %i.zg, align 4, !dbg !4051, !noalias !3387, !noundef !14
  %i.aem = and i32 %.val85.i.i, 33554431, !dbg !4052 ; 2 uses
  %i.aen = zext nneg i32 %i.aem to i64, !dbg !4054
  %i.aeo = add i64 %.sroa.0.2.i.i, %i.aen, !dbg !4055 ; 3 uses
  %i.aep = icmp eq i32 %i.aem, 0, !dbg !4057
  br i1 %i.aep, label %bb.gv, label %bb.gu, !dbg !4057

bb.gu:                                            ; preds = %.loopexit.i.i
  %i.aeq = add i64 %i.aeo, 4294967294, !dbg !4058
  %i.aer = and i64 %i.aeq, %i.kr, !dbg !4060      ; 3 uses
  %i.aes = icmp samesign ult i64 %i.aer, %i.nn, !dbg !4061
  br i1 %i.aes, label %bb.gw, label %.invoke387.i.i, !dbg !4061

bb.gv:                                            ; preds = %bb.he, %bb.gx, %.loopexit.i.i
  %.sroa.011.3.i.i = phi i8 [ %.sroa.011.1.i.i, %.loopexit.i.i ], [ %i.aeu, %bb.he ], [ %i.aeu, %bb.gx ]
  %.sroa.09.3.i.i = phi i8 [ %.sroa.09.1.i.i, %.loopexit.i.i ], [ %i.aez, %bb.he ], [ %i.aez, %bb.gx ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !dbg !4062, !noalias !3387
  %exitcond274.not.i.i = icmp eq i64 %i.aac, %i.nw, !dbg !3676
  br i1 %exitcond274.not.i.i, label %._crit_edge192.i.i, label %bb.fo, !dbg !3684

bb.gw:                                            ; preds = %bb.gu
  %i.aet = getelementptr inbounds nuw i8, ptr %i.no, i64 %i.aer, !dbg !4061
  %i.aeu = load i8, ptr %i.aet, align 1, !dbg !4061, !alias.scope !3991, !noalias !3992, !noundef !14 ; 2 uses
  %i.aev = add i64 %i.aeo, 4294967295, !dbg !4063
  %i.aew = and i64 %i.aev, %i.kr, !dbg !4065      ; 3 uses
  %i.aex = icmp samesign ult i64 %i.aew, %i.nn, !dbg !4066
  br i1 %i.aex, label %bb.gx, label %.invoke387.i.i, !dbg !4066

bb.gx:                                            ; preds = %bb.gw
  %i.aey = getelementptr inbounds nuw i8, ptr %i.no, i64 %i.aew, !dbg !4066
  %i.aez = load i8, ptr %i.aey, align 1, !dbg !4066, !alias.scope !3991, !noalias !3992, !noundef !14 ; 2 uses
  %i.afa = icmp ugt i16 %i.acd, 127, !dbg !4067
  br i1 %i.afa, label %bb.gy, label %bb.gv, !dbg !4067

bb.gy:                                            ; preds = %bb.gx
  %i.afb = load i16, ptr %i.zh, align 2, !dbg !4068, !noalias !3387, !noundef !14 ; 2 uses
  %i.afc = and i16 %i.afb, 1023, !dbg !4068
  %i.afd = zext nneg i16 %i.afc to i64, !dbg !4068 ; 2 uses
  %i.afe = lshr i16 %i.afb, 10, !dbg !4069
  %i.aff = load i32, ptr %i.zi, align 4, !dbg !4071, !noalias !3387, !noundef !14
  %i.afg = zext i32 %i.aff to i64, !dbg !4071
  br i1 %i.yc, label %bb.gz, label %bb.ha, !dbg !4073

bb.gz:                                            ; preds = %bb.gy
  invoke fastcc void @_RNvMs7_NtNtCsk4ZPsEfLtLH_6brotli3enc17brotli_bit_streamINtB5_12BlockEncoderNtNtCsbA1n9drshSs_12alloc_stdlib9std_alloc13StandardAllocE12store_symbolCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef align 8 dereferenceable(984) %i.o, i64 noundef %i.afd, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.ba, ptr noalias noundef nonnull %.val, i64 noundef range(i64 2, -9223372036854775808) %.val116)
          to label %bb.he unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i.i, !dbg !4075, !noalias !3448

bb.ha:                                            ; preds = %bb.gy
  %i.afh = zext i16 %i.acd to i32, !dbg !4076     ; 2 uses
  %i.afi = lshr i32 %i.afh, 6, !dbg !4078         ; 2 uses
  %i.afj = and i32 %i.afh, 7, !dbg !4079          ; 4 uses
  switch i32 %i.afi, label %bb.hc [
    i32 4, label %bb.hb
    i32 2, label %bb.hb
  ], !dbg !4080

bb.hb:                                            ; preds = %bb.ha, %bb.ha
  %.old1.i.i.i = icmp samesign ult i32 %i.afj, 3, !dbg !4081
  br i1 %.old1.i.i.i, label %bb.hf, label %bb.hd, !dbg !4081

bb.hc:                                            ; preds = %bb.ha
  %i.afk = icmp eq i32 %i.afi, 7, !dbg !4082
  %i.afl = icmp samesign ult i32 %i.afj, 3
  %or.cond.i155.i.i = select i1 %i.afk, i1 %i.afl, i1 false, !dbg !4082
  br i1 %or.cond.i155.i.i, label %bb.hf, label %bb.hd, !dbg !4082

bb.hd:                                            ; preds = %bb.hc, %bb.hb
  br label %bb.hf, !dbg !4083

bb.he:                                            ; preds = %bb.hf, %bb.gz
  %i.afm = trunc nuw nsw i16 %i.afe to i8, !dbg !4084
  invoke void @_RNvNtNtCsk4ZPsEfLtLH_6brotli3enc17brotli_bit_stream15BrotliWriteBits(i8 noundef %i.afm, i64 noundef %i.afg, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.ba, ptr noalias noundef nonnull %.val, i64 noundef range(i64 2, -9223372036854775808) %.val116)
          to label %bb.gv unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i.i, !dbg !4085, !noalias !3448

bb.hf:                                            ; preds = %bb.hd, %bb.hc, %bb.hb
  %.sroa.0.0.i154.i.i = phi i32 [ %i.afj, %bb.hc ], [ 3, %bb.hd ], [ %i.afj, %bb.hb ], !dbg !4086
  %i.afn = zext nneg i32 %.sroa.0.0.i154.i.i to i64, !dbg !4087
  invoke fastcc void @_RNvMs9_NtNtCsk4ZPsEfLtLH_6brotli3enc17brotli_bit_streamINtB5_12BlockEncoderNtNtCsbA1n9drshSs_12alloc_stdlib9std_alloc13StandardAllocE25store_symbol_with_contextCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef align 8 dereferenceable(984) %i.o, i64 noundef %i.afd, i64 noundef %i.afn, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) %.val48.i.i, i64 noundef %.val49.i.i, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.ba, ptr noalias noundef nonnull %.val, i64 noundef range(i64 2, -9223372036854775808) %.val116, i64 noundef 2)
          to label %bb.he unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i.i, !dbg !4088, !noalias !3448

_RNvNtNtCsk4ZPsEfLtLH_6brotli3enc17brotli_bit_stream7Context.exit.i.i: ; preds = %bb.gt, %bb.gs, %bb.gr, %bb.gq
  %.sroa.0.0.i153.i.i = phi i8 [ %i.adu, %bb.gq ], [ %i.adv, %bb.gr ], [ %i.aed, %bb.gs ], [ %i.ael, %bb.gt ], !dbg !4089
  %i.afo = zext i8 %.sroa.0.0.i153.i.i to i64, !dbg !4090
  %i.afp = and i64 %.sroa.0.3177.i.i, %i.kr, !dbg !4091 ; 3 uses
  %i.afq = icmp samesign ult i64 %i.afp, %i.nn, !dbg !4093
  br i1 %i.afq, label %bb.hg, label %.invoke387.i.i, !dbg !4093

.invoke387.i.i:                                   ; preds = %bb.gw, %bb.gu, %bb.fo, %_RNvNtNtCsk4ZPsEfLtLH_6brotli3enc17brotli_bit_stream7Context.exit.i.i, %.lr.ph185.i.i
  %i.afr = phi i64 [ %i.afp, %_RNvNtNtCsk4ZPsEfLtLH_6brotli3enc17brotli_bit_stream7Context.exit.i.i ], [ %i.acj, %.lr.ph185.i.i ], [ %i.aer, %bb.gu ], [ %.val184, %bb.fo ], [ %i.aew, %bb.gw ]
  %i.afs = phi i64 [ %i.nn, %_RNvNtNtCsk4ZPsEfLtLH_6brotli3enc17brotli_bit_stream7Context.exit.i.i ], [ %i.nn, %.lr.ph185.i.i ], [ %i.nn, %bb.gu ], [ %.val184, %bb.fo ], [ %i.nn, %bb.gw ]
  %i.aft = phi ptr [ @132, %_RNvNtNtCsk4ZPsEfLtLH_6brotli3enc17brotli_bit_stream7Context.exit.i.i ], [ @129, %.lr.ph185.i.i ], [ @130, %bb.gu ], [ @128, %bb.fo ], [ @131, %bb.gw ]
  invoke void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %i.afr, i64 noundef %i.afs, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.aft) #20
          to label %.cont388.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.i, !dbg !4094, !noalias !3448

.cont388.i.i:                                     ; preds = %.invoke387.i.i
  unreachable

bb.hg:                                            ; preds = %_RNvNtNtCsk4ZPsEfLtLH_6brotli3enc17brotli_bit_stream7Context.exit.i.i
  %i.afu = getelementptr inbounds nuw i8, ptr %i.no, i64 %i.afp, !dbg !4093
  %i.afv = load i8, ptr %i.afu, align 1, !dbg !4093, !alias.scope !3991, !noalias !3992, !noundef !14 ; 3 uses
  %i.afw = zext i8 %i.afv to i64, !dbg !4095
  call void @llvm.experimental.noalias.scope.decl(metadata !4097), !dbg !4100
  call void @llvm.experimental.noalias.scope.decl(metadata !4101), !dbg !4100
  %i.afx = load i64, ptr %.sroa.1719.0..sroa_idx.i.i, align 8, !dbg !4103, !alias.scope !4097, !noalias !4105, !noundef !14 ; 2 uses
  %i.afy = icmp eq i64 %i.afx, 0, !dbg !4103
  br i1 %i.afy, label %bb.hh, label %bb.hk, !dbg !4103

bb.hh:                                            ; preds = %bb.hg
  %i.afz = load i64, ptr %.sroa.1618.0..sroa_idx.i.i, align 8, !dbg !4108, !alias.scope !4097, !noalias !4105, !noundef !14
  %i.aga = add i64 %i.afz, 1, !dbg !4109          ; 7 uses
  store i64 %i.aga, ptr %.sroa.1618.0..sroa_idx.i.i, align 8, !dbg !4111, !alias.scope !4097, !noalias !4105
  %i.agb = load i64, ptr %.sroa.616.0..sroa_idx.i.i, align 8, !dbg !4112, !alias.scope !4097, !noalias !4105, !noundef !14 ; 2 uses
  %i.agc = icmp ult i64 %i.aga, %i.agb, !dbg !4112
  br i1 %i.agc, label %bb.hi, label %.invoke.i.i, !dbg !4112

bb.hi:                                            ; preds = %bb.hh
  %i.agd = load i64, ptr %.sroa.415.0..sroa_idx.i.i, align 8, !dbg !4113, !alias.scope !4097, !noalias !4105, !noundef !14 ; 2 uses
  %i.age = icmp ult i64 %i.aga, %i.agd, !dbg !4113
  br i1 %i.age, label %bb.hj, label %.invoke.i.i, !dbg !4113

bb.hj:                                            ; preds = %bb.hi
  %i.agf = load ptr, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !dbg !4112, !alias.scope !4097, !noalias !4105, !nonnull !14, !align !791, !noundef !14
  %i.agg = getelementptr inbounds nuw [4 x i8], ptr %i.agf, i64 %i.aga, !dbg !4112
  %i.agh = load i32, ptr %i.agg, align 4, !dbg !4112, !noalias !4114, !noundef !14 ; 2 uses
  %i.agi = load ptr, ptr %i.q, align 8, !dbg !4113, !alias.scope !4097, !noalias !4105, !nonnull !14, !noundef !14
  %i.agj = getelementptr inbounds nuw i8, ptr %i.agi, i64 %i.aga, !dbg !4113
  %i.agk = load i8, ptr %i.agj, align 1, !dbg !4113, !noalias !4114, !noundef !14 ; 2 uses
  %i.agl = zext i32 %i.agh to i64, !dbg !4115
  store i64 %i.agl, ptr %.sroa.1719.0..sroa_idx.i.i, align 8, !dbg !4115, !alias.scope !4097, !noalias !4105
  %i.agm = zext i8 %i.agk to i64, !dbg !4116
  %i.agn = shl nuw nsw i64 %i.agm, 6, !dbg !4117
  store i64 %i.agn, ptr %.sroa.18.0..sroa_idx.i.i, align 8, !dbg !4117, !alias.scope !4097, !noalias !4105
  invoke void @_RNvNtNtCsk4ZPsEfLtLH_6brotli3enc17brotli_bit_stream16StoreBlockSwitch(ptr noalias noundef nonnull align 8 dereferenceable(872) %.sroa.14.0..sroa_idx.i.i, i32 noundef %i.agh, i8 noundef %i.agk, i1 noundef zeroext false, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.ba, ptr noalias noundef nonnull %.val, i64 noundef range(i64 2, -9223372036854775808) %.val116)
          to label %.noexc160.i.i unwind label %.loopexit.split-lp.loopexit.i.i, !dbg !4118, !noalias !3448

.noexc160.i.i:                                    ; preds = %bb.hj
  %.pre.i158.i.i = load i64, ptr %.sroa.1719.0..sroa_idx.i.i, align 8, !dbg !4119, !alias.scope !4097, !noalias !4105
  br label %bb.hk, !dbg !4118

bb.hk:                                            ; preds = %.noexc160.i.i, %bb.hg
  %i.ago = phi i64 [ %i.afx, %bb.hg ], [ %.pre.i158.i.i, %.noexc160.i.i ], !dbg !4119
  %i.agp = add i64 %i.ago, -1, !dbg !4120
  store i64 %i.agp, ptr %.sroa.1719.0..sroa_idx.i.i, align 8, !dbg !4122, !alias.scope !4097, !noalias !4105
  %i.agq = load i64, ptr %.sroa.18.0..sroa_idx.i.i, align 8, !dbg !4123, !alias.scope !4097, !noalias !4105, !noundef !14
  %i.agr = add i64 %i.agq, %i.afo, !dbg !4124     ; 3 uses
  %i.ags = icmp ult i64 %i.agr, %.val47.i.i, !dbg !4126
  br i1 %i.ags, label %bb.hl, label %.invoke.i.i, !dbg !4126

bb.hl:                                            ; preds = %bb.hk
  %i.agt = getelementptr inbounds nuw [4 x i8], ptr %.val46.i.i, i64 %i.agr, !dbg !4126
  %i.agu = load i32, ptr %i.agt, align 4, !dbg !4126, !alias.scope !4101, !noalias !4127, !noundef !14
  %i.agv = zext i32 %i.agu to i64, !dbg !4126
  %i.agw = load i64, ptr %.sroa.11.0..sroa_idx.i.i, align 8, !dbg !4128, !alias.scope !4097, !noalias !4105, !noundef !14
  %i.agx = mul i64 %i.agw, %i.agv, !dbg !4129
  %i.agy = add i64 %i.agx, %i.afw, !dbg !4131     ; 6 uses
  %.val9.i156.i.i = load i64, ptr %.sroa.8.0..sroa_idx.i.i, align 8, !dbg !4133, !alias.scope !4097, !noalias !4105, !noundef !14 ; 2 uses
  %i.agz = icmp ult i64 %i.agy, %.val9.i156.i.i, !dbg !4134
  br i1 %i.agz, label %bb.hm, label %.invoke.i.i, !dbg !4134

bb.hm:                                            ; preds = %bb.hl
  %.val11.i.i.i = load i64, ptr %.sroa.10.0..sroa_idx.i.i, align 8, !dbg !4135, !alias.scope !4097, !noalias !4105, !noundef !14 ; 2 uses
  %i.aha = icmp ult i64 %i.agy, %.val11.i.i.i, !dbg !4136
  br i1 %i.aha, label %bb.hn, label %.invoke.i.i, !dbg !4136

bb.hn:                                            ; preds = %bb.hm
  %.val10.i.i.i = load ptr, ptr %.sroa.9.0..sroa_idx.i.i, align 8, !dbg !4135, !alias.scope !4097, !noalias !4105, !nonnull !14, !noundef !14
  %.val.i157.i.i = load ptr, ptr %.sroa.717.0..sroa_idx.i.i, align 8, !dbg !4133, !alias.scope !4097, !noalias !4105, !nonnull !14, !noundef !14
  %i.ahb = getelementptr inbounds nuw i8, ptr %.val.i157.i.i, i64 %i.agy, !dbg !4134
  %i.ahc = load i8, ptr %i.ahb, align 1, !dbg !4134, !noalias !4137, !noundef !14
  %i.ahd = getelementptr inbounds nuw [2 x i8], ptr %.val10.i.i.i, i64 %i.agy, !dbg !4136
  %i.ahe = load i16, ptr %i.ahd, align 2, !dbg !4136, !noalias !4137, !noundef !14
  %i.ahf = zext i16 %i.ahe to i64, !dbg !4136
  invoke void @_RNvNtNtCsk4ZPsEfLtLH_6brotli3enc17brotli_bit_stream15BrotliWriteBits(i8 noundef %i.ahc, i64 noundef %i.ahf, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.ba, ptr noalias noundef nonnull %.val, i64 noundef range(i64 2, -9223372036854775808) %.val116)
          to label %_RNvMs9_NtNtCsk4ZPsEfLtLH_6brotli3enc17brotli_bit_streamINtB5_12BlockEncoderNtNtCsbA1n9drshSs_12alloc_stdlib9std_alloc13StandardAllocE25store_symbol_with_contextCsfISxE4fmY1Y_14polars_parquet.exit.i.i unwind label %.loopexit.split-lp.loopexit.i.i, !dbg !4138, !noalias !3448

.invoke.i.i:                                      ; preds = %bb.hm, %bb.hl, %bb.hk, %bb.hi, %bb.hh, %bb.go, %bb.gn, %bb.gl, %bb.gk, %bb.fv
  %i.ahg = phi i64 [ %i.abq, %bb.fv ], [ %i.adj, %bb.go ], [ %i.adj, %bb.gn ], [ %i.acr, %bb.gl ], [ %i.acr, %bb.gk ], [ %i.agy, %bb.hm ], [ %i.agy, %bb.hl ], [ %i.agr, %bb.hk ], [ %i.aga, %bb.hi ], [ %i.aga, %bb.hh ]
  %i.ahh = phi i64 [ %.val116, %bb.fv ], [ %.val9.i.i.i, %bb.go ], [ %.val7.i.i.i, %bb.gn ], [ %i.acu, %bb.gl ], [ %i.acs, %bb.gk ], [ %.val11.i.i.i, %bb.hm ], [ %.val9.i156.i.i, %bb.hl ], [ %.val47.i.i, %bb.hk ], [ %i.agd, %bb.hi ], [ %i.agb, %bb.hh ]
  %i.ahi = phi ptr [ @516, %bb.fv ], [ @455, %bb.go ], [ @454, %bb.gn ], [ @453, %bb.gl ], [ @452, %bb.gk ], [ @462, %bb.hm ], [ @461, %bb.hl ], [ @460, %bb.hk ], [ @459, %bb.hi ], [ @458, %bb.hh ]
  invoke void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %i.ahg, i64 noundef %i.ahh, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ahi) #18
          to label %.cont.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.i, !dbg !4139, !noalias !3448

.cont.i.i:                                        ; preds = %.invoke.i.i
  unreachable

end_hunk_1
