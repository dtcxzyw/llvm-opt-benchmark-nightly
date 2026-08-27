Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pola-rs/original/polars_io-49c95113d69d0886.polars_io.f964ffef671f36be-cgu.05?download=true
inline.NumInlined: 3766
inline.NumDeleted: 1964
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_RNvXNtNtCsgZ49sUHp3tW_5alloc3vec21spec_from_iter_nestedINtB4_3VecIBS_NtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet14parquet_bridge8EncodingEEINtB2_18SpecFromIterNestedB11_INtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtCse4dvU5uQ85g_8indexmap3map4iter6ValuesNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldENCNvNtNtNtCslpwjCj2YNBy_9polars_io7parquet5write6writer13get_encodings0EE9from_iterB6a_:bb.a
bb.h:                                             ; preds = %.noexc6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !28164, !noalias !28134
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !dbg !28164, !noalias !28134
  %i.ag = load i64, ptr %.sroa.6.0..sroa_idx, align 8, !dbg !28165, !alias.scope !28134, !noundef !13 ; 4 uses
  %i.ah = icmp ult i64 %i.ag, 384307168202282326, !dbg !28168
  call void @llvm.assume(i1 %i.ah), !dbg !28170
  %i.ai = load i64, ptr %i.i, align 8, !dbg !28171, !range !1083, !alias.scope !28134, !noundef !13
  %i.aj = icmp eq i64 %i.ag, %i.ai, !dbg !28179
  br i1 %i.aj, label %bb.i, label %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VecIBv_NtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet14parquet_bridge8EncodingEE7reserveCslpwjCj2YNBy_9polars_io.exit.i.i, !dbg !28179

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !28180, !noalias !28134
  invoke void @_RNvXsS_NtNtCse4dvU5uQ85g_8indexmap3map4iterINtB5_6ValuesNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator9size_hintCslpwjCj2YNBy_9polars_io(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.d)
          to label %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtCse4dvU5uQ85g_8indexmap3map4iter6ValuesNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldENCNvNtNtNtCslpwjCj2YNBy_9polars_io7parquet5write6writer13get_encodings0ENtNtNtB9_6traits8iterator8Iterator9size_hintB3A_.exit.i.i unwind label %bb.j, !dbg !28181

_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VecIBv_NtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet14parquet_bridge8EncodingEE7reserveCslpwjCj2YNBy_9polars_io.exit.i.i: ; preds = %bb.k, %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtCse4dvU5uQ85g_8indexmap3map4iter6ValuesNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldENCNvNtNtNtCslpwjCj2YNBy_9polars_io7parquet5write6writer13get_encodings0ENtNtNtB9_6traits8iterator8Iterator9size_hintB3A_.exit.i.i, %bb.h
  %i.ak = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !dbg !28183, !alias.scope !28134, !nonnull !13, !noundef !13
  %i.al = getelementptr inbounds nuw [24 x i8], ptr %i.ak, i64 %i.ag, !dbg !28192
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.al, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !dbg !28195
  %i.am = add nuw nsw i64 %i.ag, 1, !dbg !28196
  store i64 %i.am, ptr %.sroa.6.0..sroa_idx, align 8, !dbg !28197, !alias.scope !28134
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !28200, !noalias !28134
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !28200, !noalias !28134
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !28135, !noalias !28134
  %i.an = icmp eq ptr %i.ae, %2, !dbg !28139
  br i1 %i.an, label %.loopexit, label %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtCse4dvU5uQ85g_8indexmap3map4iter6ValuesNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldENCNvNtNtNtCslpwjCj2YNBy_9polars_io7parquet5write6writer13get_encodings0ENtNtNtB9_6traits8iterator8Iterator4nextB3A_.exit.i.i, !dbg !28144

bb.j:                                             ; preds = %bb.k, %bb.i
  %i.ao = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet14parquet_bridge8EncodingENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCslpwjCj2YNBy_9polars_io(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %.body unwind label %bb.l, !dbg !28201

_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtCse4dvU5uQ85g_8indexmap3map4iter6ValuesNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldENCNvNtNtNtCslpwjCj2YNBy_9polars_io7parquet5write6writer13get_encodings0ENtNtNtB9_6traits8iterator8Iterator9size_hintB3A_.exit.i.i: ; preds = %bb.i
  %i.ap = load i64, ptr %i.a, align 8, !dbg !28204, !noalias !28134, !noundef !13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !28205, !noalias !28134
  %i.aq = call i64 @llvm.uadd.sat.i64(i64 %i.ap, i64 1), !dbg !28206 ; 2 uses
  %i.ar = load i64, ptr %.sroa.6.0..sroa_idx, align 8, !dbg !28210, !alias.scope !28213, !noundef !13 ; 2 uses
  %i.as = load i64, ptr %i.i, align 8, !dbg !28216, !range !1083, !alias.scope !28213, !noundef !13
  %i.at = sub i64 %i.as, %i.ar, !dbg !28225
  %i.au = icmp ugt i64 %i.aq, %i.at, !dbg !28228
  br i1 %i.au, label %bb.k, label %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VecIBv_NtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet14parquet_bridge8EncodingEE7reserveCslpwjCj2YNBy_9polars_io.exit.i.i, !dbg !28229, !prof !68

bb.k:                                             ; preds = %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtCse4dvU5uQ85g_8indexmap3map4iter6ValuesNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldENCNvNtNtNtCslpwjCj2YNBy_9polars_io7parquet5write6writer13get_encodings0ENtNtNtB9_6traits8iterator8Iterator9size_hintB3A_.exit.i.i
  invoke void @_RINvNvMs2_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECslpwjCj2YNBy_9polars_io(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.i, i64 noundef %i.ar, i64 noundef range(i64 1, 0) %i.aq, i64 noundef 8, i64 noundef 24)
          to label %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VecIBv_NtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet14parquet_bridge8EncodingEE7reserveCslpwjCj2YNBy_9polars_io.exit.i.i unwind label %bb.j, !dbg !28230

bb.l:                                             ; preds = %bb.j
  %i.av = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #34, !dbg !28231
  unreachable, !dbg !28231

bb.m:                                             ; preds = %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtCse4dvU5uQ85g_8indexmap3map4iter6ValuesNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldENCNvNtNtNtCslpwjCj2YNBy_9polars_io7parquet5write6writer13get_encodings0ENtNtNtB9_6traits8iterator8Iterator4nextB3A_.exit.i.i
  %i.aw = landingpad { ptr, i32 }
          cleanup
  br label %.body, !dbg !28085

.body:                                            ; preds = %bb.j, %bb.m
  %eh.lpad-body = phi { ptr, i32 } [ %i.aw, %bb.m ], [ %i.ao, %bb.j ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecIBH_NtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet14parquet_bridge8EncodingEEECslpwjCj2YNBy_9polars_io(ptr noalias noundef align 8 dereferenceable(24) %i.i) #33
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet14parquet_bridge8EncodingEECslpwjCj2YNBy_9polars_io.exit unwind label %bb.n, !dbg !28085

.loopexit:                                        ; preds = %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VecIBv_NtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet14parquet_bridge8EncodingEE7reserveCslpwjCj2YNBy_9polars_io.exit.i.i, %.noexc6, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !28200, !noalias !28134
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !28232, !noalias !28123
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.i, i64 24, i1 false), !dbg !28233
  br label %bb.c, !dbg !28085

bb.n:                                             ; preds = %bb.d, %.body
  %i.ax = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #34, !dbg !28234
  unreachable, !dbg !28234

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet14parquet_bridge8EncodingEECslpwjCj2YNBy_9polars_io.exit: ; preds = %bb.d, %.body
  %.pn = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %i.q, %bb.d ]
  resume { ptr, i32 } %.pn, !dbg !28234
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtNtCsgZ49sUHp3tW_5alloc3vec21spec_from_iter_nestedINtB4_3VecINtNtB6_6borrow3CoweEEINtB2_18SpecFromIterNestedB11_INtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapNtNtNtNtNtCslpwjCj2YNBy_9polars_io3csv4read11splitfields5inner11SplitFieldsNCNvNtB2L_16schema_inference13infer_headers0EE9from_iterB2P_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !28235 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 8 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [24 x i8], align 8                ; 5 uses
  %i.e = alloca [24 x i8], align 8                ; 7 uses
  %i.f = alloca [24 x i8], align 8                ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !28236
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !28237
  tail call void @llvm.experimental.noalias.scope.decl(metadata !28238), !dbg !28241
  tail call void @llvm.experimental.noalias.scope.decl(metadata !28242), !dbg !28245
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 19, !dbg !28248 ; 6 uses
  %i.h = load i8, ptr %i.g, align 1, !dbg !28248, !range !19218, !alias.scope !28257, !noalias !28258, !noundef !13
  %i.i = trunc nuw i8 %i.h to i1, !dbg !28248
  br i1 %i.i, label %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapNtNtNtNtNtCslpwjCj2YNBy_9polars_io3csv4read11splitfields5inner11SplitFieldsNCNvNtB12_16schema_inference13infer_headers0ENtNtNtB9_6traits8iterator8Iterator4nextB16_.exit.thread, label %bb.b, !dbg !28248

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !28261 ; 2 uses
  %i.k = load i64, ptr %i.j, align 8, !dbg !28261, !alias.scope !28257, !noalias !28258, !noundef !13 ; 11 uses
  %i.l = icmp eq i64 %i.k, 0, !dbg !28261
  br i1 %i.l, label %bb.c, label %bb.d, !dbg !28261

bb.c:                                             ; preds = %bb.b
  store i8 1, ptr %i.g, align 1, !dbg !28262, !alias.scope !28257, !noalias !28258
  %i.m = load ptr, ptr %1, align 8, !dbg !28266, !alias.scope !28257, !noalias !28258, !nonnull !13, !noundef !13 ; 2 uses
  br label %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapNtNtNtNtNtCslpwjCj2YNBy_9polars_io3csv4read11splitfields5inner11SplitFieldsNCNvNtB12_16schema_inference13infer_headers0ENtNtNtB9_6traits8iterator8Iterator4nextB16_.exit, !dbg !28267

bb.d:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 20, !dbg !28269
  %i.o = load i8, ptr %i.n, align 4, !dbg !28269, !range !19218, !alias.scope !28257, !noalias !28258, !noundef !13
  %i.p = trunc nuw i8 %i.o to i1, !dbg !28269
  %.pre.i.i = load ptr, ptr %1, align 8, !dbg !28271, !alias.scope !28257, !noalias !28258 ; 16 uses
  br i1 %i.p, label %bb.g, label %.lr.ph.i.i.i, !dbg !28269

.lr.ph.i.i.i:                                     ; preds = %bb.g, %bb.d
  %i.q = getelementptr inbounds nuw i8, ptr %.pre.i.i, i64 %i.k, !dbg !28272
  tail call void @llvm.experimental.noalias.scope.decl(metadata !28283), !dbg !28286
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.s = load i8, ptr %i.r, align 8, !alias.scope !28287, !noalias !28288, !noundef !13
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 18
  %i.u = load i8, ptr %i.t, align 2, !alias.scope !28287, !noalias !28288 ; 2 uses
  br label %bb.e, !dbg !28290

bb.e:                                             ; preds = %bb.f, %.lr.ph.i.i.i
  %.sroa.02.012.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i ], [ %i.z, %bb.f ] ; 5 uses
  %i.v = phi ptr [ %.pre.i.i, %.lr.ph.i.i.i ], [ %i.y, %bb.f ] ; 2 uses
  %.val7.i.i.i = load i8, ptr %i.v, align 1, !dbg !28300, !noalias !28301, !noundef !13 ; 2 uses
  %i.w = icmp eq i8 %.val7.i.i.i, %i.s, !dbg !28302
  %i.x = icmp eq i8 %.val7.i.i.i, %i.u
  %or.cond.i.i.i = select i1 %i.w, i1 true, i1 %i.x, !dbg !28302
  br i1 %or.cond.i.i.i, label %bb.h, label %bb.f, !dbg !28302

bb.f:                                             ; preds = %bb.e
  %i.y = getelementptr inbounds nuw i8, ptr %i.v, i64 1, !dbg !28309 ; 2 uses
  %i.z = add nuw i64 %.sroa.02.012.i.i.i, 1, !dbg !28312
  %i.aa = icmp eq ptr %i.y, %i.q, !dbg !28313
  br i1 %i.aa, label %bb.i, label %bb.e, !dbg !28290

bb.g:                                             ; preds = %bb.d
  %i.ab = load i8, ptr %.pre.i.i, align 1, !dbg !28316, !noalias !28317, !noundef !13 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 17, !dbg !28318
  %i.ad = load i8, ptr %i.ac, align 1, !dbg !28318, !alias.scope !28257, !noalias !28258, !noundef !13
  %i.ae = icmp eq i8 %i.ab, %i.ad, !dbg !28319
  br i1 %i.ae, label %.lr.ph.i.i, label %.lr.ph.i.i.i, !dbg !28319

.lr.ph.i.i:                                       ; preds = %bb.g
  %i.af = getelementptr inbounds nuw i8, ptr %.pre.i.i, i64 %i.k, !dbg !28320
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ah = load i8, ptr %i.ag, align 8, !alias.scope !28257, !noalias !28258
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 18
  %i.aj = load i8, ptr %i.ai, align 2, !alias.scope !28257, !noalias !28258
  br label %bb.l, !dbg !28330

bb.h:                                             ; preds = %bb.e
  %i.ak = icmp ult i64 %.sroa.02.012.i.i.i, %i.k, !dbg !28337
  tail call void @llvm.assume(i1 %i.ak), !dbg !28345
  %i.al = getelementptr inbounds nuw i8, ptr %.pre.i.i, i64 %.sroa.02.012.i.i.i, !dbg !28346
  %i.am = load i8, ptr %i.al, align 1, !dbg !28347, !noalias !28317, !noundef !13
  %i.an = icmp eq i8 %i.am, %i.u, !dbg !28347
  br i1 %i.an, label %bb.j, label %bb.k, !dbg !28347

bb.i:                                             ; preds = %bb.f
  store i8 1, ptr %i.g, align 1, !dbg !28348, !alias.scope !28257, !noalias !28258
  br label %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapNtNtNtNtNtCslpwjCj2YNBy_9polars_io3csv4read11splitfields5inner11SplitFieldsNCNvNtB12_16schema_inference13infer_headers0ENtNtNtB9_6traits8iterator8Iterator4nextB16_.exit, !dbg !28350

bb.j:                                             ; preds = %bb.h
  store i8 1, ptr %i.g, align 1, !dbg !28351, !alias.scope !28257, !noalias !28258
  br label %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapNtNtNtNtNtCslpwjCj2YNBy_9polars_io3csv4read11splitfields5inner11SplitFieldsNCNvNtB12_16schema_inference13infer_headers0ENtNtNtB9_6traits8iterator8Iterator4nextB16_.exit, !dbg !28354

bb.k:                                             ; preds = %bb.r, %bb.h
  %.sroa.016.0.i.i = phi i64 [ %i.bb, %bb.r ], [ %.sroa.02.012.i.i.i, %bb.h ], !dbg !28356 ; 2 uses
  %.sroa.0.0.i.i = phi i1 [ true, %bb.r ], [ false, %bb.h ], !dbg !28357
  %i.ao = add nuw i64 %.sroa.016.0.i.i, 1, !dbg !28358 ; 2 uses
  %i.ap = sub nuw i64 %i.k, %i.ao, !dbg !28361    ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.pre.i.i, i64 %i.ao, !dbg !28369 ; 2 uses
  store ptr %i.aq, ptr %1, align 8, !dbg !28375, !alias.scope !28257, !noalias !28258
  store i64 %i.ap, ptr %i.j, align 8, !dbg !28375, !alias.scope !28257, !noalias !28258
  br label %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapNtNtNtNtNtCslpwjCj2YNBy_9polars_io3csv4read11splitfields5inner11SplitFieldsNCNvNtB12_16schema_inference13infer_headers0ENtNtNtB9_6traits8iterator8Iterator4nextB16_.exit, !dbg !28376

bb.l:                                             ; preds = %bb.n, %.lr.ph.i.i
  %.sroa.05.053.i.i = phi i8 [ 0, %.lr.ph.i.i ], [ %spec.select.i.i, %bb.n ] ; 2 uses
  %.sroa.09.052.i.i = phi i32 [ 0, %.lr.ph.i.i ], [ %i.ax, %bb.n ] ; 4 uses
  %.sroa.012.051.i.i = phi ptr [ %.pre.i.i, %.lr.ph.i.i ], [ %i.ar, %bb.n ] ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.sroa.012.051.i.i, i64 1, !dbg !28377 ; 2 uses
  %i.as = load i8, ptr %.sroa.012.051.i.i, align 1, !dbg !28380, !noalias !28317, !noundef !13 ; 3 uses
  %i.at = icmp eq i8 %i.as, %i.ab, !dbg !28381
  %i.au = zext i1 %i.at to i8, !dbg !28381        ; 2 uses
  %spec.select.i.i = xor i8 %.sroa.05.053.i.i, %i.au, !dbg !28381
  %.not.i.i = icmp eq i8 %.sroa.05.053.i.i, %i.au, !dbg !28383
  br i1 %.not.i.i, label %bb.m, label %bb.n, !dbg !28383

bb.m:                                             ; preds = %bb.l
  %i.av = icmp eq i8 %i.as, %i.ah, !dbg !28384
  %i.aw = icmp eq i8 %i.as, %i.aj                 ; 2 uses
  %or.cond.i.i = select i1 %i.av, i1 true, i1 %i.aw, !dbg !28384
  br i1 %or.cond.i.i, label %bb.o, label %bb.n, !dbg !28384

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.ax = add i32 %.sroa.09.052.i.i, 1, !dbg !28387
  %i.ay = icmp eq ptr %i.ar, %i.af, !dbg !28388
  br i1 %i.ay, label %.thread.i.i, label %bb.l, !dbg !28330

bb.o:                                             ; preds = %bb.m
  br i1 %i.aw, label %bb.p, label %bb.q, !dbg !28391

bb.p:                                             ; preds = %bb.o
  %i.az = zext i32 %.sroa.09.052.i.i to i64, !dbg !28392
  store i8 1, ptr %i.g, align 1, !dbg !28393, !alias.scope !28257, !noalias !28258
  br label %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapNtNtNtNtNtCslpwjCj2YNBy_9polars_io3csv4read11splitfields5inner11SplitFieldsNCNvNtB12_16schema_inference13infer_headers0ENtNtNtB9_6traits8iterator8Iterator4nextB16_.exit, !dbg !28395

bb.q:                                             ; preds = %bb.o
  %i.ba = icmp eq i32 %.sroa.09.052.i.i, 0, !dbg !28397
  br i1 %i.ba, label %.thread.i.i, label %bb.r, !dbg !28397

.thread.i.i:                                      ; preds = %bb.n, %bb.q
  store i8 1, ptr %i.g, align 1, !dbg !28398, !alias.scope !28257, !noalias !28258
  br label %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapNtNtNtNtNtCslpwjCj2YNBy_9polars_io3csv4read11splitfields5inner11SplitFieldsNCNvNtB12_16schema_inference13infer_headers0ENtNtNtB9_6traits8iterator8Iterator4nextB16_.exit, !dbg !28395

bb.r:                                             ; preds = %bb.q
  %i.bb = zext i32 %.sroa.09.052.i.i to i64, !dbg !28400
  br label %bb.k, !dbg !28401

_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapNtNtNtNtNtCslpwjCj2YNBy_9polars_io3csv4read11splitfields5inner11SplitFieldsNCNvNtB12_16schema_inference13infer_headers0ENtNtNtB9_6traits8iterator8Iterator4nextB16_.exit: ; preds = %bb.c, %bb.i, %bb.j, %bb.k, %bb.p, %.thread.i.i
  %.sroa.8.0.copyload = phi i1 [ true, %bb.j ], [ false, %bb.k ], [ true, %.thread.i.i ], [ true, %bb.p ], [ true, %bb.c ], [ true, %bb.i ]
  %.sroa.411.0.copyload = phi i64 [ %i.k, %bb.j ], [ %i.ap, %bb.k ], [ %i.k, %.thread.i.i ], [ %i.k, %bb.p ], [ 0, %bb.c ], [ %i.k, %bb.i ]
  %.sroa.010.0.copyload = phi ptr [ %.pre.i.i, %bb.j ], [ %i.aq, %bb.k ], [ %.pre.i.i, %.thread.i.i ], [ %.pre.i.i, %bb.p ], [ %i.m, %bb.c ], [ %.pre.i.i, %bb.i ]
  %.sroa.15.0.ph.i = phi i1 [ false, %bb.j ], [ %.sroa.0.0.i.i, %bb.k ], [ true, %.thread.i.i ], [ true, %bb.p ], [ false, %bb.c ], [ false, %bb.i ]
  %.sroa.9.0.ph.i = phi i64 [ %.sroa.02.012.i.i.i, %bb.j ], [ %.sroa.016.0.i.i, %bb.k ], [ %i.k, %.thread.i.i ], [ %i.az, %bb.p ], [ 0, %bb.c ], [ %i.k, %bb.i ] ; 3 uses
  %.sroa.0.0.ph.i = phi ptr [ %.pre.i.i, %bb.j ], [ %.pre.i.i, %bb.k ], [ %.pre.i.i, %.thread.i.i ], [ %.pre.i.i, %bb.p ], [ %i.m, %bb.c ], [ %.pre.i.i, %bb.i ] ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.ph.i) ]
  %i.bc = icmp ugt i64 %.sroa.9.0.ph.i, 1
  %or.cond.i1.i = and i1 %.sroa.15.0.ph.i, %i.bc, !dbg !28402 ; 2 uses
  %i.bd = add i64 %.sroa.9.0.ph.i, -2, !dbg !28402
  %.sroa.5.0.i.i = select i1 %or.cond.i1.i, i64 %i.bd, i64 %.sroa.9.0.ph.i, !dbg !28402
  %.sroa.0.0.idx.i.i = zext i1 %or.cond.i1.i to i64, !dbg !28402
  %.sroa.0.0.i2.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph.i, i64 %.sroa.0.0.idx.i.i, !dbg !28402
  call void @_RNvMNtCsgZ49sUHp3tW_5alloc6stringNtB2_6String15from_utf8_lossy(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.e, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.sroa.0.0.i2.i, i64 noundef %.sroa.5.0.i.i), !dbg !28414, !noalias !28238
  %.pr = load i64, ptr %i.e, align 8, !dbg !28237
  %.not = icmp eq i64 %.pr, -9223372036854775807, !dbg !28237
  br i1 %.not, label %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapNtNtNtNtNtCslpwjCj2YNBy_9polars_io3csv4read11splitfields5inner11SplitFieldsNCNvNtB12_16schema_inference13infer_headers0ENtNtNtB9_6traits8iterator8Iterator4nextB16_.exit.thread, label %bb.v, !dbg !28416

_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapNtNtNtNtNtCslpwjCj2YNBy_9polars_io3csv4read11splitfields5inner11SplitFieldsNCNvNtB12_16schema_inference13infer_headers0ENtNtNtB9_6traits8iterator8Iterator4nextB16_.exit.thread: ; preds = %bb.a, %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapNtNtNtNtNtCslpwjCj2YNBy_9polars_io3csv4read11splitfields5inner11SplitFieldsNCNvNtB12_16schema_inference13infer_headers0ENtNtNtB9_6traits8iterator8Iterator4nextB16_.exit
  store i64 0, ptr %0, align 8, !dbg !28417
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !28417
  store ptr inttoptr (i64 8 to ptr), ptr %i.be, align 8, !dbg !28417
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !28417
  store i64 0, ptr %i.bf, align 8, !dbg !28417
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !28420
  br label %bb.s, !dbg !28421

bb.s:                                             ; preds = %.loopexit, %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapNtNtNtNtNtCslpwjCj2YNBy_9polars_io3csv4read11splitfields5inner11SplitFieldsNCNvNtB12_16schema_inference13infer_headers0ENtNtNtB9_6traits8iterator8Iterator4nextB16_.exit.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !28421
  ret void, !dbg !28422

bb.t:                                             ; preds = %bb.w, %bb.v
  %i.bg = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bh = load i64, ptr %i.d, align 8, !dbg !28423, !range !1689, !alias.scope !28425, !noundef !13
  %i.bi = icmp eq i64 %i.bh, -9223372036854775808, !dbg !28423
  br i1 %i.bi, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CoweEECslpwjCj2YNBy_9polars_io.exit, label %bb.u, !dbg !28423

bb.u:                                             ; preds = %bb.t
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCslpwjCj2YNBy_9polars_io(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CoweEECslpwjCj2YNBy_9polars_io.exit unwind label %bb.as, !dbg !28428

bb.v:                                             ; preds = %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapNtNtNtNtNtCslpwjCj2YNBy_9polars_io3csv4read11splitfields5inner11SplitFieldsNCNvNtB12_16schema_inference13infer_headers0ENtNtNtB9_6traits8iterator8Iterator4nextB16_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !28432
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false), !dbg !28432
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !28433
  invoke void @_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCslpwjCj2YNBy_9polars_io(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, i64 noundef 4, i1 noundef zeroext false, i64 noundef 8, i64 noundef 24)
          to label %.noexc5 unwind label %bb.t, !dbg !28433

.noexc5:                                          ; preds = %bb.v
  %i.bj = load i64, ptr %i.c, align 8, !dbg !28433, !range !7703, !noundef !13
  %i.bk = trunc nuw i64 %i.bj to i1, !dbg !28444
  %i.bl = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !28445
  %i.bm = load i64, ptr %i.bl, align 8, !dbg !28445, !range !1689, !noundef !13 ; 3 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.c, i64 16, !dbg !28445 ; 2 uses
  br i1 %i.bk, label %bb.w, label %bb.x, !dbg !28444, !prof !68

bb.w:                                             ; preds = %.noexc5
  %i.bo = load i64, ptr %i.bn, align 8, !dbg !28446
  invoke void @_RNvNtCsgZ49sUHp3tW_5alloc7raw_vec12handle_error(i64 noundef %i.bm, i64 %i.bo) #32
          to label %.noexc6 unwind label %bb.t, !dbg !28447

.noexc6:                                          ; preds = %bb.w
  unreachable, !dbg !28447

bb.x:                                             ; preds = %.noexc5
  %i.bp = load ptr, ptr %i.bn, align 8, !dbg !28448, !nonnull !13, !noundef !13 ; 2 uses
  %i.bq = icmp ugt i64 %i.bm, 3, !dbg !28449
  tail call void @llvm.assume(i1 %i.bq), !dbg !28451
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !28453
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bp, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false), !dbg !28454
  store i64 %i.bm, ptr %i.f, align 8, !dbg !28456
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 8, !dbg !28456 ; 2 uses
  store ptr %i.bp, ptr %.sroa.4.0..sroa_idx, align 8, !dbg !28456
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 16, !dbg !28456 ; 3 uses
  store i64 1, ptr %.sroa.6.0..sroa_idx, align 8, !dbg !28456
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !28457
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !28420
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !28458
  %.sroa.5.0.copyload = load i8, ptr %.sroa.5.0..sroa_idx, align 8, !dbg !28458 ; 2 uses
  %.sroa.6.0..sroa_idx12 = getelementptr inbounds nuw i8, ptr %1, i64 17, !dbg !28458
  %.sroa.6.0.copyload = load i8, ptr %.sroa.6.0..sroa_idx12, align 1, !dbg !28458 ; 2 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 18, !dbg !28458
  %.sroa.7.0.copyload = load i8, ptr %.sroa.7.0..sroa_idx, align 2, !dbg !28458 ; 3 uses
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 20, !dbg !28458
  %.sroa.9.0.copyload = load i8, ptr %.sroa.9.0..sroa_idx, align 4, !dbg !28458
  tail call void @llvm.experimental.noalias.scope.decl(metadata !28460), !dbg !28463
  tail call void @llvm.experimental.noalias.scope.decl(metadata !28464), !dbg !28467
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !28470, !noalias !28474
  br i1 %.sroa.8.0.copyload, label %.loopexit, label %.lr.ph.i.i7, !dbg !28477

.lr.ph.i.i7:                                      ; preds = %bb.x
  %i.br = trunc nuw i8 %.sroa.9.0.copyload to i1
  br label %bb.y, !dbg !28477

bb.y:                                             ; preds = %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VecINtNtB6_6borrow3CoweEE7reserveCslpwjCj2YNBy_9polars_io.exit.i.i, %.lr.ph.i.i7
  %i.bs = phi i64 [ %.sroa.411.0.copyload, %.lr.ph.i.i7 ], [ %i.cx, %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VecINtNtB6_6borrow3CoweEE7reserveCslpwjCj2YNBy_9polars_io.exit.i.i ] ; 13 uses
  %i.bt = phi ptr [ %.sroa.010.0.copyload, %.lr.ph.i.i7 ], [ %i.cy, %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VecINtNtB6_6borrow3CoweEE7reserveCslpwjCj2YNBy_9polars_io.exit.i.i ] ; 15 uses
  %i.bu = icmp eq i64 %i.bs, 0, !dbg !28480
  br i1 %i.bu, label %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapNtNtNtNtNtCslpwjCj2YNBy_9polars_io3csv4read11splitfields5inner11SplitFieldsNCNvNtB12_16schema_inference13infer_headers0ENtNtNtB9_6traits8iterator8Iterator4nextB16_.exit.i.i, label %bb.z, !dbg !28480

bb.z:                                             ; preds = %bb.y
  br i1 %i.br, label %bb.ac, label %.lr.ph.i.i.i.i.i, !dbg !28481

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.ac, %bb.z
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bt, i64 %i.bs, !dbg !28482
  br label %bb.aa, !dbg !28486

bb.aa:                                            ; preds = %bb.ab, %.lr.ph.i.i.i.i.i
  %.sroa.02.012.i.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i.i.i ], [ %i.ca, %bb.ab ] ; 5 uses
  %i.bw = phi ptr [ %i.bt, %.lr.ph.i.i.i.i.i ], [ %i.bz, %bb.ab ] ; 2 uses
  %.val7.i.i.i.i.i = load i8, ptr %i.bw, align 1, !dbg !28489, !noalias !28490, !noundef !13 ; 2 uses
  %i.bx = icmp eq i8 %.val7.i.i.i.i.i, %.sroa.5.0.copyload, !dbg !28500
  %i.by = icmp eq i8 %.val7.i.i.i.i.i, %.sroa.7.0.copyload
  %or.cond.i.i.i.i.i = select i1 %i.bx, i1 true, i1 %i.by, !dbg !28500
  br i1 %or.cond.i.i.i.i.i, label %bb.ad, label %bb.ab, !dbg !28500

bb.ab:                                            ; preds = %bb.aa
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bw, i64 1, !dbg !28503 ; 2 uses
  %i.ca = add nuw i64 %.sroa.02.012.i.i.i.i.i, 1, !dbg !28505
  %i.cb = icmp eq ptr %i.bz, %i.bv, !dbg !28506
  br i1 %i.cb, label %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapNtNtNtNtNtCslpwjCj2YNBy_9polars_io3csv4read11splitfields5inner11SplitFieldsNCNvNtB12_16schema_inference13infer_headers0ENtNtNtB9_6traits8iterator8Iterator4nextB16_.exit.i.i, label %bb.aa, !dbg !28486

bb.ac:                                            ; preds = %bb.z
  %i.cc = load i8, ptr %i.bt, align 1, !dbg !28508, !noalias !28509, !noundef !13
  %i.cd = icmp eq i8 %i.cc, %.sroa.6.0.copyload, !dbg !28510
  br i1 %i.cd, label %.lr.ph.i.i.i.i, label %.lr.ph.i.i.i.i.i, !dbg !28510

.lr.ph.i.i.i.i:                                   ; preds = %bb.ac
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bt, i64 %i.bs, !dbg !28511
  br label %bb.af, !dbg !28515

bb.ad:                                            ; preds = %bb.aa
  %i.cf = icmp ult i64 %.sroa.02.012.i.i.i.i.i, %i.bs, !dbg !28517
  call void @llvm.assume(i1 %i.cf), !dbg !28520
  %i.cg = getelementptr inbounds nuw i8, ptr %i.bt, i64 %.sroa.02.012.i.i.i.i.i, !dbg !28521
  %i.ch = load i8, ptr %i.cg, align 1, !dbg !28522, !noalias !28509, !noundef !13
  %i.ci = icmp eq i8 %i.ch, %.sroa.7.0.copyload, !dbg !28522
  br i1 %i.ci, label %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapNtNtNtNtNtCslpwjCj2YNBy_9polars_io3csv4read11splitfields5inner11SplitFieldsNCNvNtB12_16schema_inference13infer_headers0ENtNtNtB9_6traits8iterator8Iterator4nextB16_.exit.i.i, label %bb.ae, !dbg !28522

bb.ae:                                            ; preds = %bb.al, %bb.ad
  %.sroa.016.0.i.i.i.i = phi i64 [ %i.cw, %bb.al ], [ %.sroa.02.012.i.i.i.i.i, %bb.ad ], !dbg !28523 ; 2 uses
  %.sroa.0.0.i.i.i.i = phi i1 [ true, %bb.al ], [ false, %bb.ad ], !dbg !28524
  %i.cj = add nuw i64 %.sroa.016.0.i.i.i.i, 1, !dbg !28525 ; 2 uses
  %i.ck = sub nuw i64 %i.bs, %i.cj, !dbg !28526
  %i.cl = getelementptr inbounds nuw i8, ptr %i.bt, i64 %i.cj, !dbg !28530
  br label %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapNtNtNtNtNtCslpwjCj2YNBy_9polars_io3csv4read11splitfields5inner11SplitFieldsNCNvNtB12_16schema_inference13infer_headers0ENtNtNtB9_6traits8iterator8Iterator4nextB16_.exit.i.i, !dbg !28532

bb.af:                                            ; preds = %bb.ah, %.lr.ph.i.i.i.i
  %.sroa.05.053.i.i.i.i = phi i8 [ 0, %.lr.ph.i.i.i.i ], [ %spec.select.i.i.i.i, %bb.ah ] ; 2 uses
  %.sroa.09.052.i.i.i.i = phi i32 [ 0, %.lr.ph.i.i.i.i ], [ %i.cs, %bb.ah ] ; 4 uses
  %.sroa.012.051.i.i.i.i = phi ptr [ %i.bt, %.lr.ph.i.i.i.i ], [ %i.cm, %bb.ah ] ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %.sroa.012.051.i.i.i.i, i64 1, !dbg !28533 ; 2 uses
  %i.cn = load i8, ptr %.sroa.012.051.i.i.i.i, align 1, !dbg !28535, !noalias !28509, !noundef !13 ; 3 uses
  %i.co = icmp eq i8 %i.cn, %.sroa.6.0.copyload, !dbg !28536
  %i.cp = zext i1 %i.co to i8, !dbg !28536        ; 2 uses
  %spec.select.i.i.i.i = xor i8 %.sroa.05.053.i.i.i.i, %i.cp, !dbg !28536
  %.not.i.i.i.i = icmp eq i8 %.sroa.05.053.i.i.i.i, %i.cp, !dbg !28537
  br i1 %.not.i.i.i.i, label %bb.ag, label %bb.ah, !dbg !28537

bb.ag:                                            ; preds = %bb.af
  %i.cq = icmp eq i8 %i.cn, %.sroa.5.0.copyload, !dbg !28538
  %i.cr = icmp eq i8 %i.cn, %.sroa.7.0.copyload   ; 2 uses
  %or.cond.i.i.i.i = select i1 %i.cq, i1 true, i1 %i.cr, !dbg !28538
  br i1 %or.cond.i.i.i.i, label %bb.ai, label %bb.ah, !dbg !28538

bb.ah:                                            ; preds = %bb.ag, %bb.af
  %i.cs = add i32 %.sroa.09.052.i.i.i.i, 1, !dbg !28540
  %i.ct = icmp eq ptr %i.cm, %i.ce, !dbg !28541
  br i1 %i.ct, label %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapNtNtNtNtNtCslpwjCj2YNBy_9polars_io3csv4read11splitfields5inner11SplitFieldsNCNvNtB12_16schema_inference13infer_headers0ENtNtNtB9_6traits8iterator8Iterator4nextB16_.exit.i.i, label %bb.af, !dbg !28515

bb.ai:                                            ; preds = %bb.ag
  br i1 %i.cr, label %bb.aj, label %bb.ak, !dbg !28543

bb.aj:                                            ; preds = %bb.ai
  %i.cu = zext i32 %.sroa.09.052.i.i.i.i to i64, !dbg !28544
  br label %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapNtNtNtNtNtCslpwjCj2YNBy_9polars_io3csv4read11splitfields5inner11SplitFieldsNCNvNtB12_16schema_inference13infer_headers0ENtNtNtB9_6traits8iterator8Iterator4nextB16_.exit.i.i, !dbg !28545

bb.ak:                                            ; preds = %bb.ai
  %i.cv = icmp eq i32 %.sroa.09.052.i.i.i.i, 0, !dbg !28546
  br i1 %i.cv, label %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapNtNtNtNtNtCslpwjCj2YNBy_9polars_io3csv4read11splitfields5inner11SplitFieldsNCNvNtB12_16schema_inference13infer_headers0ENtNtNtB9_6traits8iterator8Iterator4nextB16_.exit.i.i, label %bb.al, !dbg !28546

bb.al:                                            ; preds = %bb.ak
  %i.cw = zext i32 %.sroa.09.052.i.i.i.i to i64, !dbg !28547
  br label %bb.ae, !dbg !28548

_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapNtNtNtNtNtCslpwjCj2YNBy_9polars_io3csv4read11splitfields5inner11SplitFieldsNCNvNtB12_16schema_inference13infer_headers0ENtNtNtB9_6traits8iterator8Iterator4nextB16_.exit.i.i: ; preds = %bb.ab, %bb.ah, %bb.ak, %bb.aj, %bb.ae, %bb.ad, %bb.y
  %i.cx = phi i64 [ %i.bs, %bb.ah ], [ %i.ck, %bb.ae ], [ %i.bs, %bb.ad ], [ %i.bs, %bb.aj ], [ 0, %bb.y ], [ %i.bs, %bb.ak ], [ %i.bs, %bb.ab ]
  %i.cy = phi ptr [ %i.bt, %bb.ah ], [ %i.cl, %bb.ae ], [ %i.bt, %bb.ad ], [ %i.bt, %bb.aj ], [ %i.bt, %bb.y ], [ %i.bt, %bb.ak ], [ %i.bt, %bb.ab ]
  %i.cz = phi i1 [ true, %bb.ah ], [ false, %bb.ae ], [ true, %bb.ad ], [ true, %bb.aj ], [ true, %bb.y ], [ true, %bb.ak ], [ true, %bb.ab ]
  %.sroa.15.0.ph.i.i.i = phi i1 [ true, %bb.ah ], [ %.sroa.0.0.i.i.i.i, %bb.ae ], [ false, %bb.ad ], [ true, %bb.aj ], [ false, %bb.y ], [ true, %bb.ak ], [ false, %bb.ab ]
  %.sroa.9.0.ph.i.i.i = phi i64 [ %i.bs, %bb.ah ], [ %.sroa.016.0.i.i.i.i, %bb.ae ], [ %.sroa.02.012.i.i.i.i.i, %bb.ad ], [ %i.cu, %bb.aj ], [ 0, %bb.y ], [ %i.bs, %bb.ak ], [ %i.bs, %bb.ab ] ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bt) ]
  %i.da = icmp ugt i64 %.sroa.9.0.ph.i.i.i, 1
  %or.cond.i1.i.i.i = and i1 %.sroa.15.0.ph.i.i.i, %i.da, !dbg !28549 ; 2 uses
  %i.db = add i64 %.sroa.9.0.ph.i.i.i, -2, !dbg !28549
  %.sroa.5.0.i.i.i.i = select i1 %or.cond.i1.i.i.i, i64 %i.db, i64 %.sroa.9.0.ph.i.i.i, !dbg !28549
  %.sroa.0.0.idx.i.i.i.i = zext i1 %or.cond.i1.i.i.i to i64, !dbg !28549
  %.sroa.0.0.i2.i.i.i = getelementptr inbounds nuw i8, ptr %i.bt, i64 %.sroa.0.0.idx.i.i.i.i, !dbg !28549
  invoke void @_RNvMNtCsgZ49sUHp3tW_5alloc6stringNtB2_6String15from_utf8_lossy(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.sroa.0.0.i2.i.i.i, i64 noundef %.sroa.5.0.i.i.i.i)
          to label %.noexc9 unwind label %bb.ar, !dbg !28553

.noexc9:                                          ; preds = %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapNtNtNtNtNtCslpwjCj2YNBy_9polars_io3csv4read11splitfields5inner11SplitFieldsNCNvNtB12_16schema_inference13infer_headers0ENtNtNtB9_6traits8iterator8Iterator4nextB16_.exit.i.i
  %.pr.i.i = load i64, ptr %i.b, align 8, !dbg !28470, !noalias !28474
  %.not.i.i8 = icmp eq i64 %.pr.i.i, -9223372036854775807, !dbg !28470
  br i1 %.not.i.i8, label %.loopexit, label %bb.am, !dbg !28554

bb.am:                                            ; preds = %.noexc9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !28555, !noalias !28474
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false), !dbg !28555, !noalias !28474
  %i.dc = load i64, ptr %.sroa.6.0..sroa_idx, align 8, !dbg !28556, !alias.scope !28559, !noalias !28560, !noundef !13 ; 5 uses
  %i.dd = icmp ult i64 %i.dc, 384307168202282326, !dbg !28561
  call void @llvm.assume(i1 %i.dd), !dbg !28563
  %i.de = load i64, ptr %i.f, align 8, !dbg !28564, !range !1083, !alias.scope !28559, !noalias !28560, !noundef !13
  %i.df = icmp eq i64 %i.dc, %i.de, !dbg !28572
  br i1 %i.df, label %bb.ap, label %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VecINtNtB6_6borrow3CoweEE7reserveCslpwjCj2YNBy_9polars_io.exit.i.i, !dbg !28572

_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VecINtNtB6_6borrow3CoweEE7reserveCslpwjCj2YNBy_9polars_io.exit.i.i: ; preds = %bb.ap, %bb.am
  %i.dg = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !dbg !28573, !alias.scope !28559, !noalias !28560, !nonnull !13, !noundef !13
  %i.dh = getelementptr inbounds nuw [24 x i8], ptr %i.dg, i64 %i.dc, !dbg !28582
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.dh, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false), !dbg !28585, !noalias !28560
  %i.di = add nuw nsw i64 %i.dc, 1, !dbg !28586
  store i64 %i.di, ptr %.sroa.6.0..sroa_idx, align 8, !dbg !28587, !alias.scope !28559, !noalias !28560
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !28590, !noalias !28474
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !28590, !noalias !28474
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !28470, !noalias !28474
  br i1 %i.cz, label %.loopexit, label %bb.y, !dbg !28477

bb.an:                                            ; preds = %bb.ap
  %i.dj = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.dk = load i64, ptr %i.a, align 8, !dbg !28591, !range !1689, !alias.scope !28593, !noalias !28474, !noundef !13
  %i.dl = icmp eq i64 %i.dk, -9223372036854775808, !dbg !28591
  br i1 %i.dl, label %.body, label %bb.ao, !dbg !28591

bb.ao:                                            ; preds = %bb.an
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCslpwjCj2YNBy_9polars_io(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %.body unwind label %bb.aq, !dbg !28596, !noalias !28560

bb.ap:                                            ; preds = %bb.am
  invoke void @_RINvNvMs2_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECslpwjCj2YNBy_9polars_io(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f, i64 noundef %i.dc, i64 noundef range(i64 1, 0) 1, i64 noundef 8, i64 noundef 24)
          to label %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VecINtNtB6_6borrow3CoweEE7reserveCslpwjCj2YNBy_9polars_io.exit.i.i unwind label %bb.an, !dbg !28600, !noalias !28560

bb.aq:                                            ; preds = %bb.ao
  %i.dm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #34, !dbg !28608, !noalias !28560
  unreachable, !dbg !28608

bb.ar:                                            ; preds = %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapNtNtNtNtNtCslpwjCj2YNBy_9polars_io3csv4read11splitfields5inner11SplitFieldsNCNvNtB12_16schema_inference13infer_headers0ENtNtNtB9_6traits8iterator8Iterator4nextB16_.exit.i.i
  %i.dn = landingpad { ptr, i32 }
          cleanup
  br label %.body, !dbg !28421

.body:                                            ; preds = %bb.an, %bb.ao, %bb.ar
  %eh.lpad-body = phi { ptr, i32 } [ %i.dn, %bb.ar ], [ %i.dj, %bb.ao ], [ %i.dj, %bb.an ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecINtNtBL_6borrow3CoweEEECslpwjCj2YNBy_9polars_io(ptr noalias noundef align 8 dereferenceable(24) %i.f) #33
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CoweEECslpwjCj2YNBy_9polars_io.exit unwind label %bb.as, !dbg !28421

.loopexit:                                        ; preds = %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VecINtNtB6_6borrow3CoweEE7reserveCslpwjCj2YNBy_9polars_io.exit.i.i, %.noexc9, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !28590, !noalias !28474
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false), !dbg !28609
  br label %bb.s, !dbg !28421

bb.as:                                            ; preds = %bb.u, %.body
  %i.do = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #34, !dbg !28610
  unreachable, !dbg !28610

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CoweEECslpwjCj2YNBy_9polars_io.exit: ; preds = %bb.t, %bb.u, %.body
  %.pn = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %i.bg, %bb.u ], [ %i.bg, %bb.t ]
  resume { ptr, i32 } %.pn, !dbg !28610
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtNtCsgZ49sUHp3tW_5alloc3vec21spec_from_iter_nestedINtB4_3VecINtNtCscgRAwXFJnXP_4core6result6ResultINtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet5write8dyn_iter20DynStreamingIteratorNtNtB1K_4page14CompressedPageNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEB3s_EEINtB2_18SpecFromIterNestedB11_INtNtNtNtB16_4iter8adapters7flatten7FlatMapINtNtB4P_3zip3ZipIB5s_INtNtNtB16_5slice4iter4IterINtNtB6_5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EEIB5O_NtNtNtNtB1K_6schema5types12parquet_type11ParquetTypeEEIB5O_IBS_NtNtB1K_14parquet_bridge8EncodingEEEBR_NCNvNtNtNtCslpwjCj2YNBy_9polars_io7parquet5write14batched_writer17create_serializer0EE9from_iterB9d_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(200) %1) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !28611 {
bb.a:
  %.sroa.5.i.i = alloca i64, align 8              ; 3 uses
  %.sroa.7.i.i = alloca i64, align 8              ; 3 uses
  %i.a = alloca [72 x i8], align 8                ; 4 uses
  %i.b = alloca [72 x i8], align 8                ; 7 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [200 x i8], align 8               ; 14 uses
  %.sroa.5 = alloca i64, align 8                  ; 3 uses
  %.sroa.7 = alloca i64, align 8                  ; 3 uses
  %i.e = alloca [72 x i8], align 8                ; 4 uses
  %i.f = alloca [72 x i8], align 8                ; 7 uses
  %i.g = alloca [24 x i8], align 8                ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !dbg !28612
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !28613
  invoke fastcc void @_RNvXs1_NtNtNtCscgRAwXFJnXP_4core4iter8adapters7flattenINtB5_7FlatMapINtNtB7_3zip3ZipIB15_INtNtNtBb_5slice4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EEIB1q_NtNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet6schema5types12parquet_type11ParquetTypeEEIB1q_INtNtB1U_3vec3VecNtNtB3p_14parquet_bridge8EncodingEEEIB4P_INtNtBb_6result6ResultINtNtNtB3p_5write8dyn_iter20DynStreamingIteratorNtNtB3p_4page14CompressedPageNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEB7l_EENCNvNtNtNtCslpwjCj2YNBy_9polars_io7parquet5write14batched_writer17create_serializer0ENtNtNtB9_6traits8iterator8Iterator4nextB8j_(ptr noalias noundef align 8 captures(address) dereferenceable(72) %i.f, ptr noalias noundef align 8 dereferenceable(200) %1)
          to label %bb.c unwind label %bb.b, !dbg !28614

bb.b:                                             ; preds = %bb.a
  %i.h = landingpad { ptr, i32 }
          cleanup
  br label %bb.an

bb.c:                                             ; preds = %bb.a
  %i.i = load i64, ptr %i.f, align 8, !dbg !28613, !range !1707, !noundef !13
  %.not = icmp eq i64 %i.i, 19, !dbg !28613
  br i1 %.not, label %bb.i, label %bb.d, !dbg !28615

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !28616
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.e, ptr noundef nonnull align 8 dereferenceable(72) %i.f, i64 72, i1 false), !dbg !28616
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5), !dbg !28617
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7), !dbg !28617
  tail call void @llvm.experimental.noalias.scope.decl(metadata !28619), !dbg !28622
  tail call void @llvm.experimental.noalias.scope.decl(metadata !28623), !dbg !28622
  tail call void @llvm.experimental.noalias.scope.decl(metadata !28625), !dbg !28628
  tail call void @llvm.experimental.noalias.scope.decl(metadata !28634), !dbg !28628
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 136, !dbg !28636
  %i.k = load ptr, ptr %i.j, align 8, !dbg !28636, !alias.scope !28642, !noalias !28643, !noundef !13
  %.not.i.i = icmp eq ptr %i.k, null, !dbg !28636
  br i1 %.not.i.i, label %_RINvMNtCscgRAwXFJnXP_4core6optionINtB3_6OptionRINtNtNtCsgZ49sUHp3tW_5alloc3vec9into_iter8IntoIterINtNtB5_6result6ResultINtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet5write8dyn_iter20DynStreamingIteratorNtNtB20_4page14CompressedPageNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEB3I_EEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECslpwjCj2YNBy_9polars_io.exit.i.i, label %bb.e, !dbg !28644

bb.e:                                             ; preds = %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 144, !dbg !28647
  %.val.i.i.i = load ptr, ptr %i.l, align 8, !dbg !28647, !alias.scope !28649, !noalias !28652, !nonnull !13, !noundef !13
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 160, !dbg !28647
  %.val4.i.i.i = load ptr, ptr %i.m, align 8, !dbg !28647, !alias.scope !28649, !noalias !28652, !nonnull !13, !noundef !13
  %i.n = ptrtoint ptr %.val4.i.i.i to i64, !dbg !28655
  %i.o = ptrtoint ptr %.val.i.i.i to i64, !dbg !28655
  %i.p = sub nuw i64 %i.n, %i.o, !dbg !28655
  %i.q = udiv exact i64 %i.p, 72, !dbg !28655
  br label %_RINvMNtCscgRAwXFJnXP_4core6optionINtB3_6OptionRINtNtNtCsgZ49sUHp3tW_5alloc3vec9into_iter8IntoIterINtNtB5_6result6ResultINtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet5write8dyn_iter20DynStreamingIteratorNtNtB20_4page14CompressedPageNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEB3I_EEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECslpwjCj2YNBy_9polars_io.exit.i.i, !dbg !28647

_RINvMNtCscgRAwXFJnXP_4core6optionINtB3_6OptionRINtNtNtCsgZ49sUHp3tW_5alloc3vec9into_iter8IntoIterINtNtB5_6result6ResultINtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet5write8dyn_iter20DynStreamingIteratorNtNtB20_4page14CompressedPageNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEB3I_EEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECslpwjCj2YNBy_9polars_io.exit.i.i: ; preds = %bb.e, %bb.d
  %.sroa.7.0.i.i = phi i64 [ %i.q, %bb.e ], [ 0, %bb.d ], !dbg !28670
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 168, !dbg !28671
  %i.s = load ptr, ptr %i.r, align 8, !dbg !28671, !alias.scope !28642, !noalias !28643, !noundef !13
  %.not54.i.i = icmp eq ptr %i.s, null, !dbg !28671
  br i1 %.not54.i.i, label %_RINvMNtCscgRAwXFJnXP_4core6optionINtB3_6OptionRINtNtNtCsgZ49sUHp3tW_5alloc3vec9into_iter8IntoIterINtNtB5_6result6ResultINtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet5write8dyn_iter20DynStreamingIteratorNtNtB20_4page14CompressedPageNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEB3I_EEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECslpwjCj2YNBy_9polars_io.exit65.i.i, label %bb.f, !dbg !28674

bb.f:                                             ; preds = %_RINvMNtCscgRAwXFJnXP_4core6optionINtB3_6OptionRINtNtNtCsgZ49sUHp3tW_5alloc3vec9into_iter8IntoIterINtNtB5_6result6ResultINtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet5write8dyn_iter20DynStreamingIteratorNtNtB20_4page14CompressedPageNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEB3I_EEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECslpwjCj2YNBy_9polars_io.exit.i.i
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 176, !dbg !28676
  %.val.i63.i.i = load ptr, ptr %i.t, align 8, !dbg !28676, !alias.scope !28677, !noalias !28680, !nonnull !13, !noundef !13
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 192, !dbg !28676
  %.val4.i64.i.i = load ptr, ptr %i.u, align 8, !dbg !28676, !alias.scope !28677, !noalias !28680, !nonnull !13, !noundef !13
  %i.v = ptrtoint ptr %.val4.i64.i.i to i64, !dbg !28683
  %i.w = ptrtoint ptr %.val.i63.i.i to i64, !dbg !28683
  %i.x = sub nuw i64 %i.v, %i.w, !dbg !28683
  %i.y = udiv exact i64 %i.x, 72, !dbg !28683
  br label %_RINvMNtCscgRAwXFJnXP_4core6optionINtB3_6OptionRINtNtNtCsgZ49sUHp3tW_5alloc3vec9into_iter8IntoIterINtNtB5_6result6ResultINtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet5write8dyn_iter20DynStreamingIteratorNtNtB20_4page14CompressedPageNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEB3I_EEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECslpwjCj2YNBy_9polars_io.exit65.i.i, !dbg !28676

_RINvMNtCscgRAwXFJnXP_4core6optionINtB3_6OptionRINtNtNtCsgZ49sUHp3tW_5alloc3vec9into_iter8IntoIterINtNtB5_6result6ResultINtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet5write8dyn_iter20DynStreamingIteratorNtNtB20_4page14CompressedPageNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEB3I_EEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECslpwjCj2YNBy_9polars_io.exit65.i.i: ; preds = %bb.f, %_RINvMNtCscgRAwXFJnXP_4core6optionINtB3_6OptionRINtNtNtCsgZ49sUHp3tW_5alloc3vec9into_iter8IntoIterINtNtB5_6result6ResultINtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet5write8dyn_iter20DynStreamingIteratorNtNtB20_4page14CompressedPageNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEB3I_EEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECslpwjCj2YNBy_9polars_io.exit.i.i
  %.sroa.8.0.i.i = phi i64 [ %i.y, %bb.f ], [ 0, %_RINvMNtCscgRAwXFJnXP_4core6optionINtB3_6OptionRINtNtNtCsgZ49sUHp3tW_5alloc3vec9into_iter8IntoIterINtNtB5_6result6ResultINtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet5write8dyn_iter20DynStreamingIteratorNtNtB20_4page14CompressedPageNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEB3I_EEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECslpwjCj2YNBy_9polars_io.exit.i.i ], !dbg !28689
  %i.z = add nuw nsw i64 %.sroa.8.0.i.i, %.sroa.7.0.i.i, !dbg !28690 ; 2 uses
  %i.aa = load i64, ptr %1, align 8, !dbg !28694, !range !1811, !alias.scope !28642, !noalias !28643, !noundef !13
  %.not55.i.i = icmp eq i64 %i.aa, 2, !dbg !28694
  br i1 %.not55.i.i, label %bb.h, label %bb.g, !dbg !28701

bb.g:                                             ; preds = %_RINvMNtCscgRAwXFJnXP_4core6optionINtB3_6OptionRINtNtNtCsgZ49sUHp3tW_5alloc3vec9into_iter8IntoIterINtNtB5_6result6ResultINtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet5write8dyn_iter20DynStreamingIteratorNtNtB20_4page14CompressedPageNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEB3I_EEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECslpwjCj2YNBy_9polars_io.exit65.i.i
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 120, !dbg !28702
  %.val.i.i = load i64, ptr %i.ab, align 8, !dbg !28702, !alias.scope !28642, !noalias !28643, !noundef !13
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 128, !dbg !28702
  %.val62.i.i = load i64, ptr %i.ac, align 8, !dbg !28702, !alias.scope !28642, !noalias !28643, !noundef !13
  %i.ad = icmp eq i64 %.val62.i.i, %.val.i.i, !dbg !28704
  br i1 %i.ad, label %bb.h, label %bb.p, !dbg !28704

bb.h:                                             ; preds = %bb.g, %_RINvMNtCscgRAwXFJnXP_4core6optionINtB3_6OptionRINtNtNtCsgZ49sUHp3tW_5alloc3vec9into_iter8IntoIterINtNtB5_6result6ResultINtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet5write8dyn_iter20DynStreamingIteratorNtNtB20_4page14CompressedPageNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEB3I_EEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECslpwjCj2YNBy_9polars_io.exit65.i.i
  br label %bb.p, !dbg !28705

bb.i:                                             ; preds = %bb.c
  store i64 0, ptr %0, align 8, !dbg !28706
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !28706
  store ptr inttoptr (i64 8 to ptr), ptr %i.ae, align 8, !dbg !28706
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !28706
  store i64 0, ptr %i.af, align 8, !dbg !28706
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !28709
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !28710
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 136, !dbg !28711 ; 2 uses
  %i.ah = load ptr, ptr %i.ag, align 8, !dbg !28714, !alias.scope !28716, !noundef !13
  %i.ai = icmp eq ptr %i.ah, null, !dbg !28714
  br i1 %i.ai, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtCsgZ49sUHp3tW_5alloc3vec9into_iter8IntoIterINtNtB4_6result6ResultINtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet5write8dyn_iter20DynStreamingIteratorNtNtB2j_4page14CompressedPageNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEB41_EEEECslpwjCj2YNBy_9polars_io.exit.i.i, label %bb.j, !dbg !28714

bb.j:                                             ; preds = %bb.i
  invoke void @_RNvXse_NtNtCsgZ49sUHp3tW_5alloc3vec9into_iterINtB5_8IntoIterINtNtCscgRAwXFJnXP_4core6result6ResultINtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet5write8dyn_iter20DynStreamingIteratorNtNtB1F_4page14CompressedPageNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEB3n_EENtNtNtB11_3ops4drop4Drop4dropCslpwjCj2YNBy_9polars_io(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.ag)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtCsgZ49sUHp3tW_5alloc3vec9into_iter8IntoIterINtNtB4_6result6ResultINtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet5write8dyn_iter20DynStreamingIteratorNtNtB2j_4page14CompressedPageNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEB41_EEEECslpwjCj2YNBy_9polars_io.exit.i.i unwind label %bb.k, !dbg !28723

bb.k:                                             ; preds = %bb.j
  %i.aj = landingpad { ptr, i32 }
end_hunk_0
