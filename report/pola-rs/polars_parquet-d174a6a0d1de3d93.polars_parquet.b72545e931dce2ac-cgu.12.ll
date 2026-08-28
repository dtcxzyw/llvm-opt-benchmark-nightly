Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pola-rs/original/polars_parquet-d174a6a0d1de3d93.polars_parquet.b72545e931dce2ac-cgu.12?download=true
inline.NumInlined: 3702
inline.NumDeleted: 1158
loop-unroll.NumCompletelyUnrolled: 31
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 41
begin_hunk_0_@_RINvNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow5write10dictionary20serialize_keys_rangeyEB8_:bb.a
  br label %_RNvMs_NtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow5write5pagesNtB4_6Nested3len.exit, !dbg !40210

bb.da:                                            ; preds = %bb.cx
  %i.zr = getelementptr inbounds nuw i8, ptr %3, i64 24, !dbg !40211
  %i.zs = load i64, ptr %i.zr, align 8, !dbg !40211, !noundef !12
  %i.zt = add i64 %i.zs, -1, !dbg !40214
  br label %_RNvMs_NtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow5write5pagesNtB4_6Nested3len.exit, !dbg !40215

bb.db:                                            ; preds = %bb.cx
  %i.zu = getelementptr inbounds nuw i8, ptr %3, i64 48, !dbg !40216
  %i.zv = load i64, ptr %i.zu, align 8, !dbg !40216, !noundef !12
  br label %_RNvMs_NtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow5write5pagesNtB4_6Nested3len.exit, !dbg !40217

bb.dc:                                            ; preds = %bb.cx
  %i.zw = getelementptr inbounds nuw i8, ptr %3, i64 40, !dbg !40218
  %i.zx = load i64, ptr %i.zw, align 8, !dbg !40218, !noundef !12
  br label %_RNvMs_NtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow5write5pagesNtB4_6Nested3len.exit, !dbg !40219

bb.dd:                                            ; preds = %bb.cw
  invoke void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef 0, i64 noundef 0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @66) #33
          to label %bb.de unwind label %bb.cd, !dbg !40200

bb.de:                                            ; preds = %bb.dd
  unreachable

bb.df:                                            ; preds = %bb.cv
  %i.zy = landingpad { ptr, i32 }
          cleanup
  br label %bb.ds

_RNvYINtNtNtCs8774dFTUdNv_12polars_arrow5array10dictionary15DictionaryArrayyENtB7_5Array10null_countCsfISxE4fmY1Y_14polars_parquet.exit: ; preds = %bb.cu, %bb.ct, %bb.cv
  %.sroa.0.1.i = phi i64 [ %i.zj, %bb.cu ], [ 0, %bb.ct ], [ %i.zk, %bb.cv ], !dbg !40220
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !dbg !40221
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %i.k, ptr noundef nonnull align 8 dereferenceable(136) %5, i64 136, i1 false), !dbg !40221
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !dbg !40222
  call void @llvm.experimental.noalias.scope.decl(metadata !40223), !dbg !40226
  call void @llvm.experimental.noalias.scope.decl(metadata !40227), !dbg !40226
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !40229
  %i.zz = getelementptr inbounds nuw i8, ptr %2, i64 48, !dbg !40229 ; 2 uses
  %i.aaa = getelementptr inbounds nuw i8, ptr %2, i64 71, !dbg !40234
  %i.aab = load i8, ptr %i.aaa, align 1, !dbg !40234, !range !2324, !alias.scope !40227, !noalias !40223, !noundef !12
  %i.aac = icmp eq i8 %i.aab, -40, !dbg !40238
  br i1 %i.aac, label %bb.dg, label %bb.dh, !dbg !40238

bb.dg:                                            ; preds = %_RNvYINtNtNtCs8774dFTUdNv_12polars_arrow5array10dictionary15DictionaryArrayyENtB7_5Array10null_countCsfISxE4fmY1Y_14polars_parquet.exit
  invoke void @_RNvNvXs1_NtCs7VARH73bmU_11compact_str4reprNtB7_4ReprNtNtCscgRAwXFJnXP_4core5clone5Clone5clone10clone_heap(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.zz) #32
          to label %bb.dj unwind label %bb.dq, !dbg !40239

bb.dh:                                            ; preds = %_RNvYINtNtNtCs8774dFTUdNv_12polars_arrow5array10dictionary15DictionaryArrayyENtB7_5Array10null_countCsfISxE4fmY1Y_14polars_parquet.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.zz, i64 24, i1 false), !dbg !40240, !noalias !40223
  br label %bb.dj, !dbg !40242

bb.di:                                            ; preds = %bb.dj
  %i.aad = landingpad { ptr, i32 }
          cleanup
  br label %bb.cb, !dbg !40243

bb.dj:                                            ; preds = %bb.dh, %bb.dg
  %i.aae = getelementptr inbounds nuw i8, ptr %2, i64 40, !dbg !40229
  %i.aaf = getelementptr inbounds nuw i8, ptr %2, i64 80, !dbg !40244
  %i.aag = getelementptr inbounds nuw i8, ptr %i.j, i64 80, !dbg !40246
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.aag, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.aaf, i64 24, i1 false), !dbg !40244, !alias.scope !40247
  %i.aah = getelementptr inbounds nuw i8, ptr %2, i64 16, !dbg !40248
  %i.aai = getelementptr inbounds nuw i8, ptr %i.j, i64 16, !dbg !40246
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.aai, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.aah, i64 24, i1 false), !dbg !40248, !alias.scope !40247
  %i.aaj = getelementptr inbounds nuw i8, ptr %i.j, i64 40, !dbg !40246
  %i.aak = load <2 x i32>, ptr %i.aae, align 8, !dbg !40250, !alias.scope !40227, !noalias !40223
  store <2 x i32> %i.aak, ptr %i.aaj, align 8, !dbg !40246, !alias.scope !40223, !noalias !40227
  %.sroa.5.0..sroa_idx.i59 = getelementptr inbounds nuw i8, ptr %i.j, i64 48, !dbg !40246
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %.sroa.5.0..sroa_idx.i59, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false), !dbg !40246, !noalias !40227
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.j, i64 72, !dbg !40246
  store i8 %.val, ptr %.sroa.6.0..sroa_idx.i, align 8, !dbg !40246, !alias.scope !40223, !noalias !40227
  %i.aal = load <2 x i64>, ptr %2, align 8, !dbg !40252, !alias.scope !40227, !noalias !40223
  store <2 x i64> %i.aal, ptr %i.j, align 16, !dbg !40246, !alias.scope !40223, !noalias !40227
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !40254
  invoke void @_RNvNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow5write5utils16build_plain_page(ptr noalias noundef nonnull sret([328 x i8]) align 8 captures(none) dereferenceable(328) %i.m, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.l, i64 noundef %.sroa.010.0, i64 noundef %.sroa.011.0, i64 noundef %.sroa.0.1.i, i64 noundef %i.ww, i64 noundef %i.wv, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(136) %i.k, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(104) %i.j, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(56) %6, i8 noundef 7)
          to label %bb.dk unwind label %bb.di, !dbg !40176

bb.dk:                                            ; preds = %bb.dj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !dbg !40243
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !dbg !40243
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !dbg !40243
  %i.aam = load i64, ptr %i.m, align 8, !dbg !40255, !range !112, !noundef !12
  %i.aan = icmp eq i64 %i.aam, 2, !dbg !40255
  br i1 %i.aan, label %bb.dl, label %bb.dm, !dbg !40258

bb.dl:                                            ; preds = %bb.dk
  %i.aao = getelementptr inbounds nuw i8, ptr %i.m, i64 8, !dbg !40259
  %i.aap = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !40260
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.aap, ptr noundef nonnull align 8 dereferenceable(72) %i.aao, i64 72, i1 false), !dbg !40259
  store i64 3, ptr %0, align 8, !dbg !40260
  br label %bb.dn, !dbg !40262

bb.dm:                                            ; preds = %bb.dk
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(328) %0, ptr noundef nonnull align 8 dereferenceable(328) %i.m, i64 328, i1 false), !dbg !40263
  br label %bb.dn, !dbg !40264

bb.dn:                                            ; preds = %bb.dm, %bb.dl
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !dbg !40265
  %i.aaq = load ptr, ptr %i.p, align 8, !dbg !40266, !alias.scope !40268, !noundef !12
  %i.aar = icmp eq ptr %i.aaq, null, !dbg !40266
  br i1 %i.aar, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapEECsfISxE4fmY1Y_14polars_parquet.exit62, label %bb.do, !dbg !40266

bb.do:                                            ; preds = %bb.dn
  invoke void @_RNvXse_NtCsknLZRuU4977_13polars_buffer7storageINtB5_13SharedStoragehENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.p)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapEECsfISxE4fmY1Y_14polars_parquet.exit62 unwind label %bb.bx, !dbg !40271

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapEECsfISxE4fmY1Y_14polars_parquet.exit62: ; preds = %bb.dn, %bb.do
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !dbg !40274
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !dbg !39805
  br label %bb.dp, !dbg !39805

bb.dp:                                            ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VechEECsfISxE4fmY1Y_14polars_parquet.exit, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapEECsfISxE4fmY1Y_14polars_parquet.exit62
  ret void, !dbg !40275

bb.dq:                                            ; preds = %bb.dg
  %i.aas = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs1gC9x3uey1Y_21polars_parquet_format14parquet_format10StatisticsEECsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef align 8 dereferenceable(136) %i.k) #30
          to label %bb.ds unwind label %bb.dr, !dbg !40243

bb.dr:                                            ; preds = %bb.cc, %.thread81, %.body.thread, %bb.ds, %bb.dq
  %i.aat = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #29, !dbg !40276
  unreachable, !dbg !40276

bb.ds:                                            ; preds = %bb.dq, %bb.df
  %.sroa.015.3.ph = phi i8 [ 1, %bb.df ], [ 0, %bb.dq ]
  %.pn.ph = phi { ptr, i32 } [ %i.zy, %bb.df ], [ %i.aas, %bb.dq ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VechEECsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef align 8 dereferenceable(24) %i.l) #30
          to label %bb.cb unwind label %bb.dr, !dbg !40243

bb.dt:                                            ; preds = %bb.cp, %bb.ce
  store i64 3, ptr %0, align 8, !dbg !40277
  %i.aau = load ptr, ptr %i.p, align 8, !dbg !40279, !alias.scope !40281, !noundef !12
  %i.aav = icmp eq ptr %i.aau, null, !dbg !40279
  br i1 %i.aav, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapEECsfISxE4fmY1Y_14polars_parquet.exit64, label %bb.du, !dbg !40279

bb.du:                                            ; preds = %bb.dt
  invoke void @_RNvXse_NtCsknLZRuU4977_13polars_buffer7storageINtB5_13SharedStoragehENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.p)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapEECsfISxE4fmY1Y_14polars_parquet.exit64 unwind label %bb.bx, !dbg !40284

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapEECsfISxE4fmY1Y_14polars_parquet.exit64: ; preds = %bb.dt, %bb.du
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !dbg !40274
  invoke void @_RNvXso_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.q)
          to label %bb.dw unwind label %bb.dv, !dbg !40287

bb.dv:                                            ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapEECsfISxE4fmY1Y_14polars_parquet.exit64
  %i.aaw = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.q)
          to label %.thread81 unwind label %bb.dx, !dbg !40289

bb.dw:                                            ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapEECsfISxE4fmY1Y_14polars_parquet.exit64
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.q)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VechEECsfISxE4fmY1Y_14polars_parquet.exit unwind label %bb.dz, !dbg !40291

bb.dx:                                            ; preds = %bb.dv
  %i.aax = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #29, !dbg !40287
  unreachable, !dbg !40287

bb.dy:                                            ; preds = %.body.thread, %.body
  %.sroa.015.4 = phi i8 [ %.sroa.015.0, %.body ], [ %.sroa.015.089, %.body.thread ], !dbg !39301
  %.pn35 = phi { ptr, i32 } [ %.pn33, %.body ], [ %.pn3390, %.body.thread ] ; 2 uses
  %i.aay = trunc nuw i8 %.sroa.015.4 to i1, !dbg !39805
  br i1 %i.aay, label %.thread81, label %bb.ea, !dbg !39805

bb.dz:                                            ; preds = %bb.dw
  %i.aaz = landingpad { ptr, i32 }
          cleanup
  br label %.thread81

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VechEECsfISxE4fmY1Y_14polars_parquet.exit: ; preds = %bb.dw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !dbg !39805
  call fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs1gC9x3uey1Y_21polars_parquet_format14parquet_format10StatisticsEECsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef align 8 dereferenceable(136) %5), !dbg !39805
  br label %bb.dp, !dbg !39805

.body.thread:                                     ; preds = %bb.bq, %bb.bt, %.loopexit.split-lp.i.i, %.body
  %.pn3390 = phi { ptr, i32 } [ %.pn33, %.body ], [ %i.vo, %bb.bq ], [ %lpad.phi.i.i, %.loopexit.split-lp.i.i ], [ %i.vu, %bb.bt ]
  %.sroa.015.089 = phi i8 [ %.sroa.015.0, %.body ], [ 1, %bb.bq ], [ 1, %.loopexit.split-lp.i.i ], [ 1, %bb.bt ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VechEECsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef align 8 dereferenceable(24) %i.q) #30
          to label %bb.dy unwind label %bb.dr, !dbg !39805

bb.ea:                                            ; preds = %.thread81, %bb.dy
  %.pn3584 = phi { ptr, i32 } [ %.pn3585, %.thread81 ], [ %.pn35, %bb.dy ]
  resume { ptr, i32 } %.pn3584, !dbg !40276

.thread81:                                        ; preds = %bb.dv, %bb.dz, %bb.dy
  %.pn3585 = phi { ptr, i32 } [ %.pn35, %bb.dy ], [ %i.aaz, %bb.dz ], [ %i.aaw, %bb.dv ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs1gC9x3uey1Y_21polars_parquet_format14parquet_format10StatisticsEECsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef align 8 dereferenceable(136) %5) #30
          to label %bb.ea unwind label %bb.dr, !dbg !39805
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RINvXNvMNtCsgZ49sUHp3tW_5alloc5sliceSp9to_vec_inNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow5write5pages6NestedNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalEBS_(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr nofree noundef nonnull align 8 captures(address) %1, i64 noundef range(i64 1, 128102389400760776) %2) unnamed_addr #2 personality ptr @rust_eh_personality !dbg !40293 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %.sroa.14 = alloca i64, align 8                 ; 8 uses
  %.sroa.19 = alloca i64, align 8                 ; 8 uses
  %.sroa.24 = alloca i64, align 8                 ; 8 uses
  %.sroa.29 = alloca i64, align 8                 ; 8 uses
  %.sroa.34 = alloca i64, align 8                 ; 6 uses
  %.sroa.37 = alloca i8, align 8                  ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !40295
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !40296
  call void @_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef %2, i1 noundef zeroext false, i64 noundef 8, i64 noundef 72), !dbg !40296
  %i.c = load i64, ptr %i.a, align 8, !dbg !40296, !range !2995, !noundef !12
  %i.d = trunc nuw i64 %i.c to i1, !dbg !40302
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !40303
  %i.f = load i64, ptr %i.e, align 8, !dbg !40303, !range !75, !noundef !12 ; 8 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !40303 ; 2 uses
  br i1 %i.d, label %bb.b, label %_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsfISxE4fmY1Y_14polars_parquet.exit, !dbg !40302, !prof !37

bb.b:                                             ; preds = %bb.a
  %i.h = load i64, ptr %i.g, align 8, !dbg !40304
  tail call void @_RNvNtCsgZ49sUHp3tW_5alloc7raw_vec12handle_error(i64 noundef %i.f, i64 %i.h) #33, !dbg !40305
  unreachable, !dbg !40305

_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsfISxE4fmY1Y_14polars_parquet.exit: ; preds = %bb.a
  %i.i = load ptr, ptr %i.g, align 8, !dbg !40306, !nonnull !12, !noundef !12 ; 2 uses
  %i.j = icmp ule i64 %2, %i.f, !dbg !40307
  tail call void @llvm.assume(i1 %i.j), !dbg !40309
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !40311
  store i64 %i.f, ptr %i.b, align 8, !dbg !40312
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !40312
  store ptr %i.i, ptr %i.k, align 8, !dbg !40312
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !40312 ; 2 uses
  %i.m = getelementptr inbounds nuw [72 x i8], ptr %1, i64 %2, !dbg !40313
  br label %bb.c, !dbg !40325

bb.c:                                             ; preds = %_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsfISxE4fmY1Y_14polars_parquet.exit, %bb.af
  %.sroa.012.066 = phi ptr [ %1, %_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsfISxE4fmY1Y_14polars_parquet.exit ], [ %i.p, %bb.af ] ; 34 uses
  %.sroa.7.065 = phi i64 [ 0, %_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsfISxE4fmY1Y_14polars_parquet.exit ], [ %i.q, %bb.af ] ; 3 uses
  %.sroa.10.064 = phi i64 [ %i.f, %_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsfISxE4fmY1Y_14polars_parquet.exit ], [ %i.n, %bb.af ]
  %i.n = add i64 %.sroa.10.064, -1, !dbg !40333   ; 2 uses
  %i.o = icmp eq ptr %.sroa.012.066, %i.m, !dbg !40334
  br i1 %i.o, label %.thread, label %bb.d, !dbg !40346

.thread:                                          ; preds = %bb.c, %bb.af
  store i64 %2, ptr %i.l, align 8, !dbg !40347
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false), !dbg !40350
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !40351
  ret void, !dbg !40352

bb.d:                                             ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.012.066, i64 72, !dbg !40353
  %i.q = add nuw nsw i64 %.sroa.7.065, 1, !dbg !40356
  %exitcond.not = icmp eq i64 %.sroa.7.065, %i.f, !dbg !40359
  br i1 %exitcond.not, label %bb.ad, label %bb.e, !dbg !40359

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.14), !dbg !40361
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.19), !dbg !40361
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.24), !dbg !40361
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.29), !dbg !40361
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.34), !dbg !40361
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.37), !dbg !40361
  tail call void @llvm.experimental.noalias.scope.decl(metadata !40362), !dbg !40365
  %i.r = load i64, ptr %.sroa.012.066, align 8, !dbg !40366, !range !3776, !noalias !40362, !noundef !12 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.012.066, i64 8, !dbg !40370 ; 5 uses
  switch i64 %i.r, label %default.unreachable [
    i64 0, label %bb.f
    i64 1, label %bb.g
    i64 2, label %bb.m
    i64 3, label %bb.s
    i64 4, label %bb.t
  ], !dbg !40366

default.unreachable:                              ; preds = %bb.e
  unreachable

bb.f:                                             ; preds = %bb.e
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.012.066, i64 48, !dbg !40371
  %i.u = load i8, ptr %i.t, align 8, !dbg !40371, !range !16, !noalias !40362, !noundef !12
  %i.v = load ptr, ptr %i.s, align 8, !dbg !40376, !noalias !40362, !noundef !12 ; 4 uses
  %.not19.i = icmp eq ptr %i.v, null, !dbg !40376
  br i1 %.not19.i, label %bb.w, label %bb.u, !dbg !40379

bb.g:                                             ; preds = %bb.e
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.012.066, i64 64, !dbg !40380
  %i.x = load i8, ptr %i.w, align 8, !dbg !40380, !range !16, !noalias !40385, !noundef !12
  %i.y = load ptr, ptr %i.s, align 8, !dbg !40388, !noalias !40385, !nonnull !12, !noundef !12 ; 3 uses
  %i.z = load i64, ptr %i.y, align 8, !dbg !40399, !range !3427, !noalias !40385, !noundef !12
  %i.aa = icmp eq i64 %i.z, 3, !dbg !40403
  br i1 %i.aa, label %bb.h, label %bb.i, !dbg !40403

bb.h:                                             ; preds = %bb.i, %bb.g
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.012.066, i64 16, !dbg !40404
  %i.ac = load ptr, ptr %i.ab, align 8, !dbg !40404, !noalias !40385, !noundef !12
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.012.066, i64 24, !dbg !40405
  %i.ae = load i64, ptr %i.ad, align 8, !dbg !40405, !noalias !40385, !noundef !12
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.012.066, i64 32, !dbg !40406
  %i.ag = load ptr, ptr %i.af, align 8, !dbg !40406, !noalias !40385, !noundef !12 ; 4 uses
  %.not.i.i = icmp eq ptr %i.ag, null, !dbg !40406
  br i1 %.not.i.i, label %_RNvXs8_NtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow5write5pagesINtB5_10ListNestedlENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneBb_.exit.i, label %bb.j, !dbg !40409

bb.i:                                             ; preds = %bb.g
  %i.ah = getelementptr inbounds nuw i8, ptr %i.y, i64 24, !dbg !40410
  %i.ai = atomicrmw add ptr %i.ah, i64 1 monotonic, align 8, !dbg !40417, !noalias !40385 ; 0 uses
  br label %bb.h, !dbg !40420

bb.j:                                             ; preds = %bb.h
  %i.aj = load i64, ptr %i.ag, align 8, !dbg !40421, !range !3427, !noalias !40425, !noundef !12
  %i.ak = icmp eq i64 %i.aj, 3, !dbg !40428
  br i1 %i.ak, label %bb.l, label %bb.k, !dbg !40428

bb.k:                                             ; preds = %bb.j
  %i.al = getelementptr inbounds nuw i8, ptr %i.ag, i64 24, !dbg !40429
  %i.am = atomicrmw add ptr %i.al, i64 1 monotonic, align 8, !dbg !40433, !noalias !40425 ; 0 uses
  br label %bb.l, !dbg !40435

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.an = getelementptr inbounds nuw i8, ptr %.sroa.012.066, i64 40, !dbg !40436
  %i.ao = load i64, ptr %i.an, align 8, !dbg !40436, !noalias !40425, !noundef !12
  %i.ap = getelementptr inbounds nuw i8, ptr %.sroa.012.066, i64 48, !dbg !40437
  %i.aq = load i64, ptr %i.ap, align 8, !dbg !40437, !noalias !40425, !noundef !12
  %i.ar = getelementptr inbounds nuw i8, ptr %.sroa.012.066, i64 56, !dbg !40438
  %i.as = load atomic i64, ptr %i.ar monotonic, align 8, !dbg !40445, !noalias !40425
  br label %_RNvXs8_NtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow5write5pagesINtB5_10ListNestedlENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneBb_.exit.i, !dbg !40447

_RNvXs8_NtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow5write5pagesINtB5_10ListNestedlENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneBb_.exit.i: ; preds = %bb.l, %bb.h
  %.sroa.5.sroa.5.0.i.i = phi i64 [ undef, %bb.h ], [ %i.as, %bb.l ], !dbg !40448
  %.sroa.5.sroa.4.0.i.i = phi i64 [ undef, %bb.h ], [ %i.aq, %bb.l ], !dbg !40448
  %.sroa.5.sroa.0.0.i.i = phi i64 [ undef, %bb.h ], [ %i.ao, %bb.l ], !dbg !40448
  %i.at = ptrtoint ptr %i.ac to i64, !dbg !40449
  store i64 %i.ae, ptr %.sroa.14, align 8, !dbg !40449, !alias.scope !40362
  %3 = ptrtoint ptr %i.ag to i64, !dbg !40449
  store i64 %3, ptr %.sroa.19, align 8, !dbg !40449, !alias.scope !40362
  br label %bb.af, !dbg !40450

bb.m:                                             ; preds = %bb.e
  %i.au = getelementptr inbounds nuw i8, ptr %.sroa.012.066, i64 64, !dbg !40451
  %i.av = load i8, ptr %i.au, align 8, !dbg !40451, !range !16, !noalias !40455, !noundef !12
  %i.aw = load ptr, ptr %i.s, align 8, !dbg !40458, !noalias !40455, !nonnull !12, !noundef !12 ; 3 uses
  %i.ax = load i64, ptr %i.aw, align 8, !dbg !40467, !range !3427, !noalias !40455, !noundef !12
  %i.ay = icmp eq i64 %i.ax, 3, !dbg !40471
  br i1 %i.ay, label %bb.n, label %bb.o, !dbg !40471

bb.n:                                             ; preds = %bb.o, %bb.m
  %i.az = getelementptr inbounds nuw i8, ptr %.sroa.012.066, i64 16, !dbg !40472
  %i.ba = load ptr, ptr %i.az, align 8, !dbg !40472, !noalias !40455, !noundef !12
  %i.bb = getelementptr inbounds nuw i8, ptr %.sroa.012.066, i64 24, !dbg !40473
  %i.bc = load i64, ptr %i.bb, align 8, !dbg !40473, !noalias !40455, !noundef !12
  %i.bd = getelementptr inbounds nuw i8, ptr %.sroa.012.066, i64 32, !dbg !40474
  %i.be = load ptr, ptr %i.bd, align 8, !dbg !40474, !noalias !40455, !noundef !12 ; 4 uses
  %.not.i20.i = icmp eq ptr %i.be, null, !dbg !40474
  br i1 %.not.i20.i, label %_RNvXs8_NtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow5write5pagesINtB5_10ListNestedxENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneBb_.exit.i, label %bb.p, !dbg !40477

bb.o:                                             ; preds = %bb.m
  %i.bf = getelementptr inbounds nuw i8, ptr %i.aw, i64 24, !dbg !40478
  %i.bg = atomicrmw add ptr %i.bf, i64 1 monotonic, align 8, !dbg !40485, !noalias !40455 ; 0 uses
  br label %bb.n, !dbg !40488

bb.p:                                             ; preds = %bb.n
  %i.bh = load i64, ptr %i.be, align 8, !dbg !40489, !range !3427, !noalias !40493, !noundef !12
  %i.bi = icmp eq i64 %i.bh, 3, !dbg !40496
  br i1 %i.bi, label %bb.r, label %bb.q, !dbg !40496

bb.q:                                             ; preds = %bb.p
  %i.bj = getelementptr inbounds nuw i8, ptr %i.be, i64 24, !dbg !40497
  %i.bk = atomicrmw add ptr %i.bj, i64 1 monotonic, align 8, !dbg !40501, !noalias !40493 ; 0 uses
  br label %bb.r, !dbg !40503

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.bl = getelementptr inbounds nuw i8, ptr %.sroa.012.066, i64 40, !dbg !40504
  %i.bm = load i64, ptr %i.bl, align 8, !dbg !40504, !noalias !40493, !noundef !12
  %i.bn = getelementptr inbounds nuw i8, ptr %.sroa.012.066, i64 48, !dbg !40505
  %i.bo = load i64, ptr %i.bn, align 8, !dbg !40505, !noalias !40493, !noundef !12
  %i.bp = getelementptr inbounds nuw i8, ptr %.sroa.012.066, i64 56, !dbg !40506
  %i.bq = load atomic i64, ptr %i.bp monotonic, align 8, !dbg !40513, !noalias !40493
  br label %_RNvXs8_NtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow5write5pagesINtB5_10ListNestedxENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneBb_.exit.i, !dbg !40515

_RNvXs8_NtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow5write5pagesINtB5_10ListNestedxENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneBb_.exit.i: ; preds = %bb.r, %bb.n
  %.sroa.5.sroa.5.0.i21.i = phi i64 [ undef, %bb.n ], [ %i.bq, %bb.r ], !dbg !40516
  %.sroa.5.sroa.4.0.i22.i = phi i64 [ undef, %bb.n ], [ %i.bo, %bb.r ], !dbg !40516
  %.sroa.5.sroa.0.0.i23.i = phi i64 [ undef, %bb.n ], [ %i.bm, %bb.r ], !dbg !40516
  %i.br = ptrtoint ptr %i.ba to i64, !dbg !40517
  store i64 %i.bc, ptr %.sroa.14, align 8, !dbg !40517, !alias.scope !40362
  %4 = ptrtoint ptr %i.be to i64, !dbg !40517
  store i64 %4, ptr %.sroa.19, align 8, !dbg !40517, !alias.scope !40362
  br label %bb.af, !dbg !40450

bb.s:                                             ; preds = %bb.e
  %i.bs = load ptr, ptr %i.s, align 8, !dbg !40518, !noalias !40362, !noundef !12 ; 4 uses
  %.not18.i = icmp eq ptr %i.bs, null, !dbg !40518
  br i1 %.not18.i, label %bb.z, label %bb.x, !dbg !40524

bb.t:                                             ; preds = %bb.e
  %i.bt = getelementptr inbounds nuw i8, ptr %.sroa.012.066, i64 48, !dbg !40525
  %i.bu = load i8, ptr %i.bt, align 8, !dbg !40525, !range !16, !noalias !40362, !noundef !12
  %i.bv = load ptr, ptr %i.s, align 8, !dbg !40530, !noalias !40362, !noundef !12 ; 4 uses
  %.not.i = icmp eq ptr %i.bv, null, !dbg !40530
  br i1 %.not.i, label %bb.ac, label %bb.aa, !dbg !40532

bb.u:                                             ; preds = %bb.f
  %i.bw = load i64, ptr %i.v, align 8, !dbg !40533, !range !3427, !noalias !40537, !noundef !12
  %i.bx = icmp eq i64 %i.bw, 3, !dbg !40540
  br i1 %i.bx, label %_RNvXs8_NtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutableNtB5_6BitmapNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit.i, label %bb.v, !dbg !40540

bb.v:                                             ; preds = %bb.u
  %i.by = getelementptr inbounds nuw i8, ptr %i.v, i64 24, !dbg !40541
  %i.bz = atomicrmw add ptr %i.by, i64 1 monotonic, align 8, !dbg !40545, !noalias !40537 ; 0 uses
  br label %_RNvXs8_NtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutableNtB5_6BitmapNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit.i, !dbg !40547

_RNvXs8_NtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutableNtB5_6BitmapNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit.i: ; preds = %bb.v, %bb.u
  %i.ca = getelementptr inbounds nuw i8, ptr %.sroa.012.066, i64 16, !dbg !40548
  %i.cb = load i64, ptr %i.ca, align 8, !dbg !40548, !noalias !40537, !noundef !12
  %i.cc = getelementptr inbounds nuw i8, ptr %.sroa.012.066, i64 24, !dbg !40549
  %i.cd = load i64, ptr %i.cc, align 8, !dbg !40549, !noalias !40537, !noundef !12
  %i.ce = getelementptr inbounds nuw i8, ptr %.sroa.012.066, i64 32, !dbg !40550
  %i.cf = load atomic i64, ptr %i.ce monotonic, align 8, !dbg !40557, !noalias !40537
  br label %bb.w, !dbg !40559

bb.w:                                             ; preds = %_RNvXs8_NtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutableNtB5_6BitmapNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit.i, %bb.f
  %.sroa.517.sroa.5.0.i = phi i64 [ undef, %bb.f ], [ %i.cf, %_RNvXs8_NtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutableNtB5_6BitmapNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit.i ], !dbg !40371
  %.sroa.517.sroa.4.0.i = phi i64 [ undef, %bb.f ], [ %i.cd, %_RNvXs8_NtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutableNtB5_6BitmapNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit.i ], !dbg !40371
  %.sroa.517.sroa.0.0.i = phi i64 [ undef, %bb.f ], [ %i.cb, %_RNvXs8_NtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutableNtB5_6BitmapNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit.i ], !dbg !40371
  %i.cg = getelementptr inbounds nuw i8, ptr %.sroa.012.066, i64 40, !dbg !40371
  %i.ch = load i64, ptr %i.cg, align 8, !dbg !40371, !noalias !40362, !noundef !12
  br label %bb.af, !dbg !40450

bb.x:                                             ; preds = %bb.s
  %i.ci = load i64, ptr %i.bs, align 8, !dbg !40560, !range !3427, !noalias !40564, !noundef !12
  %i.cj = icmp eq i64 %i.ci, 3, !dbg !40567
  br i1 %i.cj, label %_RNvXs8_NtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutableNtB5_6BitmapNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit29.i, label %bb.y, !dbg !40567

bb.y:                                             ; preds = %bb.x
  %i.ck = getelementptr inbounds nuw i8, ptr %i.bs, i64 24, !dbg !40568
  %i.cl = atomicrmw add ptr %i.ck, i64 1 monotonic, align 8, !dbg !40572, !noalias !40564 ; 0 uses
  br label %_RNvXs8_NtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutableNtB5_6BitmapNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit29.i, !dbg !40574

_RNvXs8_NtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutableNtB5_6BitmapNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit29.i: ; preds = %bb.y, %bb.x
  %i.cm = getelementptr inbounds nuw i8, ptr %.sroa.012.066, i64 16, !dbg !40575
  %i.cn = load i64, ptr %i.cm, align 8, !dbg !40575, !noalias !40564, !noundef !12
  %i.co = getelementptr inbounds nuw i8, ptr %.sroa.012.066, i64 24, !dbg !40576
  %i.cp = load i64, ptr %i.co, align 8, !dbg !40576, !noalias !40564, !noundef !12
  %i.cq = getelementptr inbounds nuw i8, ptr %.sroa.012.066, i64 32, !dbg !40577
  %i.cr = load atomic i64, ptr %i.cq monotonic, align 8, !dbg !40584, !noalias !40564
  br label %bb.z, !dbg !40586

bb.z:                                             ; preds = %_RNvXs8_NtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutableNtB5_6BitmapNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit29.i, %bb.s
  %.sroa.514.sroa.5.0.i = phi i64 [ undef, %bb.s ], [ %i.cr, %_RNvXs8_NtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutableNtB5_6BitmapNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit29.i ], !dbg !40587
  %.sroa.514.sroa.4.0.i = phi i64 [ undef, %bb.s ], [ %i.cp, %_RNvXs8_NtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutableNtB5_6BitmapNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit29.i ], !dbg !40587
  %.sroa.514.sroa.0.0.i = phi i64 [ undef, %bb.s ], [ %i.cn, %_RNvXs8_NtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutableNtB5_6BitmapNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit29.i ], !dbg !40587
  %i.cs = getelementptr inbounds nuw i8, ptr %.sroa.012.066, i64 56, !dbg !40587
  %i.ct = load i8, ptr %i.cs, align 8, !dbg !40587, !range !16, !noalias !40362, !noundef !12
  %i.cu = getelementptr inbounds nuw i8, ptr %.sroa.012.066, i64 40, !dbg !40587
  %i.cv = load i64, ptr %i.cu, align 8, !dbg !40587, !noalias !40362, !noundef !12
  %i.cw = getelementptr inbounds nuw i8, ptr %.sroa.012.066, i64 48, !dbg !40587
  %i.cx = load i64, ptr %i.cw, align 8, !dbg !40587, !noalias !40362, !noundef !12
  store i64 %.sroa.514.sroa.4.0.i, ptr %.sroa.14, align 8, !dbg !40588, !alias.scope !40362
  br label %bb.af, !dbg !40450

bb.aa:                                            ; preds = %bb.t
  %i.cy = load i64, ptr %i.bv, align 8, !dbg !40589, !range !3427, !noalias !40593, !noundef !12
  %i.cz = icmp eq i64 %i.cy, 3, !dbg !40596
  br i1 %i.cz, label %_RNvXs8_NtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutableNtB5_6BitmapNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit30.i, label %bb.ab, !dbg !40596

bb.ab:                                            ; preds = %bb.aa
  %i.da = getelementptr inbounds nuw i8, ptr %i.bv, i64 24, !dbg !40597
  %i.db = atomicrmw add ptr %i.da, i64 1 monotonic, align 8, !dbg !40601, !noalias !40593 ; 0 uses
  br label %_RNvXs8_NtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutableNtB5_6BitmapNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit30.i, !dbg !40603

_RNvXs8_NtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutableNtB5_6BitmapNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit30.i: ; preds = %bb.ab, %bb.aa
  %i.dc = getelementptr inbounds nuw i8, ptr %.sroa.012.066, i64 16, !dbg !40604
  %i.dd = load i64, ptr %i.dc, align 8, !dbg !40604, !noalias !40593, !noundef !12
  %i.de = getelementptr inbounds nuw i8, ptr %.sroa.012.066, i64 24, !dbg !40605
  %i.df = load i64, ptr %i.de, align 8, !dbg !40605, !noalias !40593, !noundef !12
  %i.dg = getelementptr inbounds nuw i8, ptr %.sroa.012.066, i64 32, !dbg !40606
  %i.dh = load atomic i64, ptr %i.dg monotonic, align 8, !dbg !40613, !noalias !40593
  br label %bb.ac, !dbg !40615

bb.ac:                                            ; preds = %_RNvXs8_NtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutableNtB5_6BitmapNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit30.i, %bb.t
  %.sroa.511.sroa.5.0.i = phi i64 [ undef, %bb.t ], [ %i.dh, %_RNvXs8_NtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutableNtB5_6BitmapNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit30.i ], !dbg !40525
  %.sroa.511.sroa.4.0.i = phi i64 [ undef, %bb.t ], [ %i.df, %_RNvXs8_NtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutableNtB5_6BitmapNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit30.i ], !dbg !40525
  %.sroa.511.sroa.0.0.i = phi i64 [ undef, %bb.t ], [ %i.dd, %_RNvXs8_NtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutableNtB5_6BitmapNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit30.i ], !dbg !40525
  %i.di = getelementptr inbounds nuw i8, ptr %.sroa.012.066, i64 40, !dbg !40525
  %i.dj = load i64, ptr %i.di, align 8, !dbg !40525, !noalias !40362, !noundef !12
  br label %bb.af, !dbg !40450

bb.ad:                                            ; preds = %bb.d
  invoke void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %i.f, i64 noundef %i.f, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @88) #33
          to label %bb.ae unwind label %bb.ah, !dbg !40359

bb.ae:                                            ; preds = %bb.ad
  unreachable

bb.af:                                            ; preds = %bb.ac, %bb.z, %bb.w, %_RNvXs8_NtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow5write5pagesINtB5_10ListNestedxENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneBb_.exit.i, %_RNvXs8_NtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow5write5pagesINtB5_10ListNestedlENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneBb_.exit.i
  %.sroa.9.0 = phi i64 [ %.sroa.517.sroa.0.0.i, %bb.w ], [ %i.at, %_RNvXs8_NtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow5write5pagesINtB5_10ListNestedlENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneBb_.exit.i ], [ %i.br, %_RNvXs8_NtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow5write5pagesINtB5_10ListNestedxENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneBb_.exit.i ], [ %.sroa.514.sroa.0.0.i, %bb.z ], [ %.sroa.511.sroa.0.0.i, %bb.ac ], !dbg !40366
  %.sroa.430.0 = phi ptr [ %i.v, %bb.w ], [ %i.y, %_RNvXs8_NtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow5write5pagesINtB5_10ListNestedlENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneBb_.exit.i ], [ %i.aw, %_RNvXs8_NtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow5write5pagesINtB5_10ListNestedxENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneBb_.exit.i ], [ %i.bs, %bb.z ], [ %i.bv, %bb.ac ], !dbg !40366
  %.sink64.i.sroa.phi = phi ptr [ %.sroa.14, %bb.w ], [ %.sroa.24, %_RNvXs8_NtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow5write5pagesINtB5_10ListNestedlENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneBb_.exit.i ], [ %.sroa.24, %_RNvXs8_NtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow5write5pagesINtB5_10ListNestedxENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneBb_.exit.i ], [ %.sroa.19, %bb.z ], [ %.sroa.14, %bb.ac ]
  %.sroa.511.sroa.4.0.sink.i = phi i64 [ %.sroa.517.sroa.4.0.i, %bb.w ], [ %.sroa.5.sroa.0.0.i.i, %_RNvXs8_NtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow5write5pagesINtB5_10ListNestedlENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneBb_.exit.i ], [ %.sroa.5.sroa.0.0.i23.i, %_RNvXs8_NtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow5write5pagesINtB5_10ListNestedxENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneBb_.exit.i ], [ %.sroa.514.sroa.5.0.i, %bb.z ], [ %.sroa.511.sroa.4.0.i, %bb.ac ]
  %.sink63.i.sroa.phi = phi ptr [ %.sroa.19, %bb.w ], [ %.sroa.29, %_RNvXs8_NtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow5write5pagesINtB5_10ListNestedlENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneBb_.exit.i ], [ %.sroa.29, %_RNvXs8_NtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow5write5pagesINtB5_10ListNestedxENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneBb_.exit.i ], [ %.sroa.24, %bb.z ], [ %.sroa.19, %bb.ac ]
  %.sroa.511.sroa.5.0.sink.i = phi i64 [ %.sroa.517.sroa.5.0.i, %bb.w ], [ %.sroa.5.sroa.4.0.i.i, %_RNvXs8_NtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow5write5pagesINtB5_10ListNestedlENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneBb_.exit.i ], [ %.sroa.5.sroa.4.0.i22.i, %_RNvXs8_NtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow5write5pagesINtB5_10ListNestedxENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneBb_.exit.i ], [ %i.cv, %bb.z ], [ %.sroa.511.sroa.5.0.i, %bb.ac ]
  %.sink62.i.sroa.phi = phi ptr [ %.sroa.24, %bb.w ], [ %.sroa.34, %_RNvXs8_NtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow5write5pagesINtB5_10ListNestedlENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneBb_.exit.i ], [ %.sroa.34, %_RNvXs8_NtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow5write5pagesINtB5_10ListNestedxENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneBb_.exit.i ], [ %.sroa.29, %bb.z ], [ %.sroa.24, %bb.ac ]
  %.sink61.i = phi i64 [ %i.ch, %bb.w ], [ %.sroa.5.sroa.5.0.i.i, %_RNvXs8_NtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow5write5pagesINtB5_10ListNestedlENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneBb_.exit.i ], [ %.sroa.5.sroa.5.0.i21.i, %_RNvXs8_NtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow5write5pagesINtB5_10ListNestedxENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneBb_.exit.i ], [ %i.cx, %bb.z ], [ %i.dj, %bb.ac ]
  %.sink60.i.sroa.phi = phi ptr [ %.sroa.29, %bb.w ], [ %.sroa.37, %_RNvXs8_NtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow5write5pagesINtB5_10ListNestedlENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneBb_.exit.i ], [ %.sroa.37, %_RNvXs8_NtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow5write5pagesINtB5_10ListNestedxENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneBb_.exit.i ], [ %.sroa.34, %bb.z ], [ %.sroa.29, %bb.ac ]
  %.sink59.i = phi i8 [ %i.u, %bb.w ], [ %i.x, %_RNvXs8_NtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow5write5pagesINtB5_10ListNestedlENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneBb_.exit.i ], [ %i.av, %_RNvXs8_NtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow5write5pagesINtB5_10ListNestedxENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneBb_.exit.i ], [ %i.ct, %bb.z ], [ %i.bu, %bb.ac ]
  store i64 %.sroa.511.sroa.4.0.sink.i, ptr %.sink64.i.sroa.phi, align 8, !dbg !40366, !alias.scope !40362
  store i64 %.sroa.511.sroa.5.0.sink.i, ptr %.sink63.i.sroa.phi, align 8, !dbg !40366, !alias.scope !40362
  store i64 %.sink61.i, ptr %.sink62.i.sroa.phi, align 8, !dbg !40366, !alias.scope !40362
  store i8 %.sink59.i, ptr %.sink60.i.sroa.phi, align 8, !dbg !40366, !alias.scope !40362
  %i.dk = getelementptr inbounds nuw [72 x i8], ptr %i.i, i64 %.sroa.7.065, !dbg !40359 ; 9 uses
  %.sroa.14.0..sroa.14.0..sroa.14.0..sroa.14.0.copyload = load i64, ptr %.sroa.14, align 8, !dbg !40616
  %.sroa.19.0..sroa.19.0..sroa.19.0..sroa.19.0.copyload = load i64, ptr %.sroa.19, align 8, !dbg !40616
  %.sroa.24.0..sroa.24.0..sroa.24.0..sroa.24.0.copyload = load i64, ptr %.sroa.24, align 8, !dbg !40616
  %.sroa.29.0..sroa.29.0..sroa.29.0..sroa.29.0.copyload = load i64, ptr %.sroa.29, align 8, !dbg !40616
  %.sroa.34.0..sroa.34.0..sroa.34.0..sroa.34.0.copyload = load i64, ptr %.sroa.34, align 8, !dbg !40616
  %.sroa.37.0..sroa.37.0..sroa.37.0..sroa.37.0.copyload = load i8, ptr %.sroa.37, align 8, !dbg !40616
  store i64 %i.r, ptr %i.dk, align 8, !dbg !40635
  %.sroa.448.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dk, i64 8, !dbg !40635
  store ptr %.sroa.430.0, ptr %.sroa.448.0..sroa_idx, align 8, !dbg !40635
  %.sroa.549.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dk, i64 16, !dbg !40635
  store i64 %.sroa.9.0, ptr %.sroa.549.0..sroa_idx, align 8, !dbg !40635
  %.sroa.650.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dk, i64 24, !dbg !40635
  store i64 %.sroa.14.0..sroa.14.0..sroa.14.0..sroa.14.0.copyload, ptr %.sroa.650.0..sroa_idx, align 8, !dbg !40635
  %.sroa.751.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dk, i64 32, !dbg !40635
  store i64 %.sroa.19.0..sroa.19.0..sroa.19.0..sroa.19.0.copyload, ptr %.sroa.751.0..sroa_idx, align 8, !dbg !40635
  %.sroa.852.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dk, i64 40, !dbg !40635
  store i64 %.sroa.24.0..sroa.24.0..sroa.24.0..sroa.24.0.copyload, ptr %.sroa.852.0..sroa_idx, align 8, !dbg !40635
  %.sroa.953.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dk, i64 48, !dbg !40635
  store i64 %.sroa.29.0..sroa.29.0..sroa.29.0..sroa.29.0.copyload, ptr %.sroa.953.0..sroa_idx, align 8, !dbg !40635
  %.sroa.1054.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dk, i64 56, !dbg !40635
  store i64 %.sroa.34.0..sroa.34.0..sroa.34.0..sroa.34.0.copyload, ptr %.sroa.1054.0..sroa_idx, align 8, !dbg !40635
  %.sroa.1155.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dk, i64 64, !dbg !40635
  store i8 %.sroa.37.0..sroa.37.0..sroa.37.0..sroa.37.0.copyload, ptr %.sroa.1155.0..sroa_idx, align 8, !dbg !40635
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.14), !dbg !40636
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.19), !dbg !40636
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.24), !dbg !40636
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.29), !dbg !40636
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.34), !dbg !40636
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.37), !dbg !40636
  %i.dl = icmp eq i64 %i.n, 0, !dbg !40325
  br i1 %i.dl, label %.thread, label %bb.c, !dbg !40325

bb.ag:                                            ; preds = %bb.ah
  %i.dm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #29, !dbg !40637
  unreachable, !dbg !40637

bb.ah:                                            ; preds = %bb.ad
  %i.dn = landingpad { ptr, i32 }
          cleanup
  store i64 %i.f, ptr %i.l, align 8, !dbg !40638
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow5write5pages6NestedEEB1l_(ptr noalias noundef align 8 dereferenceable(24) %i.b) #30
          to label %bb.ai unwind label %bb.ag, !dbg !40351

bb.ai:                                            ; preds = %bb.ah
  resume { ptr, i32 } %i.dn, !dbg !40637
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3revINtB5_3RevINtNtB7_3map3MapINtNtNtBb_5slice4iter4IterjENCNCNvMNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8metadata12row_metadataNtB1L_16RowGroupMetadata23columns_under_root_iter00EENtNtNtB9_6traits8iterator8Iterator4folduNCINvNvB3H_8for_each4callRNtNtB1N_21column_chunk_metadata19ColumnChunkMetadataNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5K_3VecB4K_E14extend_trustedBM_E0E0EB1R_(ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #0 !dbg !40647 {
bb.a:
  tail call void @_RINvXs1_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterjENCNCNvMNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8metadata12row_metadataNtB1w_16RowGroupMetadata23columns_under_root_iter00ENtNtNtBa_6traits12double_ended19DoubleEndedIterator5rfolduNCINvNvNtNtB3v_8iterator8Iterator8for_each4callRNtNtB1y_21column_chunk_metadata19ColumnChunkMetadataNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB68_3VecB58_E14extend_trustedINtNtB8_3rev3RevBN_EE0E0EB1C_(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1), !dbg !40651
  ret void, !dbg !40652
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters5chainINtB5_5ChainINtNtB7_3rev3RevINtNtNtBb_3ops5range5RangejEEB1g_ENtNtNtB9_6traits8iterator8Iterator8try_folduNCINvNvB1O_8find_map5checkjTjhENCNvNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow5write5utils36truncate_max_binary_statistics_values_0E0INtNtB1l_12control_flow11ControlFlowB2X_EEB3b_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(48) %1, ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %2) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !40653 {
bb.a:
  %i.a = load i64, ptr %1, align 8, !dbg !40655, !range !2995, !noundef !12
  %i.b = trunc nuw i64 %i.a to i1, !dbg !40657
  br i1 %i.b, label %bb.b, label %bb.f, !dbg !40657

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !40658
  tail call void @llvm.experimental.noalias.scope.decl(metadata !40659), !dbg !40662
  tail call void @llvm.experimental.noalias.scope.decl(metadata !40663), !dbg !40666
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  %i.e = load i64, ptr %i.c, align 8, !alias.scope !40669, !noalias !40676, !noundef !12 ; 2 uses
  %.promoted.i.i = load i64, ptr %i.d, align 8, !alias.scope !40681, !noalias !40682 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.h = load i64, ptr %i.f, align 8              ; 2 uses
  %i.i = load ptr, ptr %i.g, align 8, !nonnull !12
  %i.j = icmp ult i64 %i.e, %.promoted.i.i, !dbg !40683
  br i1 %i.j, label %.lr.ph, label %._crit_edge, !dbg !40697

end_hunk_0
