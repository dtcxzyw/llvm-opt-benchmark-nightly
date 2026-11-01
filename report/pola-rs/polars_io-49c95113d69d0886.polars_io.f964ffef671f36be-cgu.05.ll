Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pola-rs/original/polars_io-49c95113d69d0886.polars_io.f964ffef671f36be-cgu.05?download=true
inline.NumInlined: 3766
inline.NumDeleted: 1964
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_RNvXNtNtCsgZ49sUHp3tW_5alloc3vec21spec_from_iter_nestedINtB4_3VecIBS_NtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet14parquet_bridge8EncodingEEINtB2_18SpecFromIterNestedB11_INtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtCse4dvU5uQ85g_8indexmap3map4iter6ValuesNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldENCNvNtNtNtCslpwjCj2YNBy_9polars_io7parquet5write6writer13get_encodings0EE9from_iterB6a_:bb.a
bb.h:                                             ; preds = %.noexc6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !28462, !noalias !28415
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !dbg !28462, !noalias !28415
  %i.ag = load i64, ptr %.sroa.6.0..sroa_idx, align 8, !dbg !28463, !alias.scope !28415, !noundef !1073 ; 4 uses
  %i.ah = icmp ult i64 %i.ag, 384307168202282326, !dbg !28464
  call void @llvm.assume(i1 %i.ah), !dbg !28465
  %i.ai = load i64, ptr %i.i, align 8, !dbg !28466, !range !1139, !alias.scope !28415, !noundef !1073
  %i.aj = icmp eq i64 %i.ag, %i.ai, !dbg !28467
  br i1 %i.aj, label %bb.i, label %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VecIBv_NtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet14parquet_bridge8EncodingEE7reserveCslpwjCj2YNBy_9polars_io.exit.i.i, !dbg !28467

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !28468, !noalias !28415
  invoke void @_RNvXsS_NtNtCse4dvU5uQ85g_8indexmap3map4iterINtB5_6ValuesNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator9size_hintCslpwjCj2YNBy_9polars_io(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.d)
          to label %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtCse4dvU5uQ85g_8indexmap3map4iter6ValuesNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldENCNvNtNtNtCslpwjCj2YNBy_9polars_io7parquet5write6writer13get_encodings0ENtNtNtB9_6traits8iterator8Iterator9size_hintB3A_.exit.i.i unwind label %bb.j, !dbg !28469

_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VecIBv_NtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet14parquet_bridge8EncodingEE7reserveCslpwjCj2YNBy_9polars_io.exit.i.i: ; preds = %bb.k, %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtCse4dvU5uQ85g_8indexmap3map4iter6ValuesNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldENCNvNtNtNtCslpwjCj2YNBy_9polars_io7parquet5write6writer13get_encodings0ENtNtNtB9_6traits8iterator8Iterator9size_hintB3A_.exit.i.i, %bb.h
  %i.ak = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !dbg !28470, !alias.scope !28415, !nonnull !1073, !noundef !1073
  %i.al = getelementptr inbounds nuw [24 x i8], ptr %i.ak, i64 %i.ag, !dbg !28471
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.al, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !dbg !28472
  %i.am = add nuw nsw i64 %i.ag, 1, !dbg !28473
  store i64 %i.am, ptr %.sroa.6.0..sroa_idx, align 8, !dbg !28474, !alias.scope !28415
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !28475, !noalias !28415
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !28475, !noalias !28415
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !28454, !noalias !28415
  %i.an = icmp eq ptr %i.ae, %2, !dbg !28455
  br i1 %i.an, label %.loopexit, label %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtCse4dvU5uQ85g_8indexmap3map4iter6ValuesNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldENCNvNtNtNtCslpwjCj2YNBy_9polars_io7parquet5write6writer13get_encodings0ENtNtNtB9_6traits8iterator8Iterator4nextB3A_.exit.i.i, !dbg !28456

bb.j:                                             ; preds = %bb.k, %bb.i
  %i.ao = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet14parquet_bridge8EncodingENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCslpwjCj2YNBy_9polars_io(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %.body unwind label %bb.l, !dbg !28476

_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtCse4dvU5uQ85g_8indexmap3map4iter6ValuesNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldENCNvNtNtNtCslpwjCj2YNBy_9polars_io7parquet5write6writer13get_encodings0ENtNtNtB9_6traits8iterator8Iterator9size_hintB3A_.exit.i.i: ; preds = %bb.i
  %i.ap = load i64, ptr %i.a, align 8, !dbg !28477, !noalias !28415, !noundef !1073
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !28478, !noalias !28415
  %i.aq = call i64 @llvm.uadd.sat.i64(i64 %i.ap, i64 1), !dbg !28479 ; 2 uses
  %i.ar = load i64, ptr %.sroa.6.0..sroa_idx, align 8, !dbg !28480, !alias.scope !28417, !noundef !1073 ; 2 uses
  %i.as = load i64, ptr %i.i, align 8, !dbg !28481, !range !1139, !alias.scope !28417, !noundef !1073
  %i.at = sub i64 %i.as, %i.ar, !dbg !28482
  %i.au = icmp ugt i64 %i.aq, %i.at, !dbg !28483
  br i1 %i.au, label %bb.k, label %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VecIBv_NtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet14parquet_bridge8EncodingEE7reserveCslpwjCj2YNBy_9polars_io.exit.i.i, !dbg !28484, !prof !1095

bb.k:                                             ; preds = %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtCse4dvU5uQ85g_8indexmap3map4iter6ValuesNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldENCNvNtNtNtCslpwjCj2YNBy_9polars_io7parquet5write6writer13get_encodings0ENtNtNtB9_6traits8iterator8Iterator9size_hintB3A_.exit.i.i
  invoke void @_RINvNvMs2_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECslpwjCj2YNBy_9polars_io(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.i, i64 noundef %i.ar, i64 noundef range(i64 1, 0) %i.aq, i64 noundef 8, i64 noundef 24)
          to label %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VecIBv_NtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet14parquet_bridge8EncodingEE7reserveCslpwjCj2YNBy_9polars_io.exit.i.i unwind label %bb.j, !dbg !28485

bb.l:                                             ; preds = %bb.j
  %i.av = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #34, !dbg !28486
  unreachable, !dbg !28486

bb.m:                                             ; preds = %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtCse4dvU5uQ85g_8indexmap3map4iter6ValuesNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldENCNvNtNtNtCslpwjCj2YNBy_9polars_io7parquet5write6writer13get_encodings0ENtNtNtB9_6traits8iterator8Iterator4nextB3A_.exit.i.i
  %i.aw = landingpad { ptr, i32 }
          cleanup
  br label %.body, !dbg !28433

.body:                                            ; preds = %bb.j, %bb.m
  %eh.lpad-body = phi { ptr, i32 } [ %i.aw, %bb.m ], [ %i.ao, %bb.j ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecIBH_NtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet14parquet_bridge8EncodingEEECslpwjCj2YNBy_9polars_io(ptr noalias noundef align 8 dereferenceable(24) %i.i) #33
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet14parquet_bridge8EncodingEECslpwjCj2YNBy_9polars_io.exit unwind label %bb.n, !dbg !28433

.loopexit:                                        ; preds = %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VecIBv_NtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet14parquet_bridge8EncodingEE7reserveCslpwjCj2YNBy_9polars_io.exit.i.i, %.noexc6, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !28475, !noalias !28415
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !28487, !noalias !28413
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.i, i64 24, i1 false), !dbg !28488
  br label %bb.c, !dbg !28433

bb.n:                                             ; preds = %bb.d, %.body
  %i.ax = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #34, !dbg !28489
  unreachable, !dbg !28489

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet14parquet_bridge8EncodingEECslpwjCj2YNBy_9polars_io.exit: ; preds = %bb.d, %.body
  %.pn = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %i.q, %bb.d ]
  resume { ptr, i32 } %.pn, !dbg !28489
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtNtCsgZ49sUHp3tW_5alloc3vec21spec_from_iter_nestedINtB4_3VecINtNtB6_6borrow3CoweEEINtB2_18SpecFromIterNestedB11_INtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapNtNtNtNtNtCslpwjCj2YNBy_9polars_io3csv4read11splitfields5inner11SplitFieldsNCNvNtB2L_16schema_inference13infer_headers0EE9from_iterB2P_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !28490 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 8 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [24 x i8], align 8                ; 5 uses
  %i.e = alloca [24 x i8], align 8                ; 7 uses
  %i.f = alloca [24 x i8], align 8                ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !28725
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !28726
  tail call void @llvm.experimental.noalias.scope.decl(metadata !28685), !dbg !28727
  tail call void @llvm.experimental.noalias.scope.decl(metadata !28686), !dbg !28728
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 19, !dbg !28729 ; 6 uses
  %i.h = load i8, ptr %i.g, align 1, !dbg !28729, !range !1473, !alias.scope !28693, !noundef !1073
  %i.i = trunc nuw i8 %i.h to i1, !dbg !28729
  br i1 %i.i, label %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapNtNtNtNtNtCslpwjCj2YNBy_9polars_io3csv4read11splitfields5inner11SplitFieldsNCNvNtB12_16schema_inference13infer_headers0ENtNtNtB9_6traits8iterator8Iterator4nextB16_.exit.thread, label %bb.b, !dbg !28729

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !28730 ; 2 uses
  %i.k = load i64, ptr %i.j, align 8, !dbg !28730, !alias.scope !28693, !noundef !1073 ; 11 uses
  %i.l = icmp eq i64 %i.k, 0, !dbg !28730
  br i1 %i.l, label %bb.c, label %bb.d, !dbg !28730

bb.c:                                             ; preds = %bb.b
  store i8 1, ptr %i.g, align 1, !dbg !28731, !alias.scope !28693
  %i.m = load ptr, ptr %1, align 8, !dbg !28732, !alias.scope !28693, !nonnull !1073, !noundef !1073 ; 2 uses
  br label %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapNtNtNtNtNtCslpwjCj2YNBy_9polars_io3csv4read11splitfields5inner11SplitFieldsNCNvNtB12_16schema_inference13infer_headers0ENtNtNtB9_6traits8iterator8Iterator4nextB16_.exit, !dbg !28733

bb.d:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 20, !dbg !28734
  %i.o = load i8, ptr %i.n, align 4, !dbg !28734, !range !1473, !alias.scope !28693, !noundef !1073
  %i.p = trunc nuw i8 %i.o to i1, !dbg !28734
  %.pre.i.i = load ptr, ptr %1, align 8, !dbg !28735, !alias.scope !28693 ; 16 uses
  br i1 %i.p, label %bb.g, label %.lr.ph.i.i.i, !dbg !28734

.lr.ph.i.i.i:                                     ; preds = %bb.g, %bb.d
  %i.q = getelementptr inbounds nuw i8, ptr %.pre.i.i, i64 %i.k, !dbg !28736
  tail call void @llvm.experimental.noalias.scope.decl(metadata !28698), !dbg !28737
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.s = load i8, ptr %i.r, align 8, !alias.scope !28699, !noundef !1073
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 18
  %i.u = load i8, ptr %i.t, align 2, !alias.scope !28699 ; 2 uses
  br label %bb.e, !dbg !28738

bb.e:                                             ; preds = %bb.f, %.lr.ph.i.i.i
  %.sroa.02.012.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i ], [ %i.z, %bb.f ] ; 5 uses
  %i.v = phi ptr [ %.pre.i.i, %.lr.ph.i.i.i ], [ %i.y, %bb.f ] ; 2 uses
  %.val7.i.i.i = load i8, ptr %i.v, align 1, !dbg !28739, !noalias !28700, !noundef !1073 ; 2 uses
  %i.w = icmp eq i8 %.val7.i.i.i, %i.s, !dbg !28740
  %i.x = icmp eq i8 %.val7.i.i.i, %i.u
  %or.cond.i.i.i = select i1 %i.w, i1 true, i1 %i.x, !dbg !28740
  br i1 %or.cond.i.i.i, label %bb.h, label %bb.f, !dbg !28740

bb.f:                                             ; preds = %bb.e
  %i.y = getelementptr inbounds nuw i8, ptr %i.v, i64 1, !dbg !28741 ; 2 uses
  %i.z = add nuw i64 %.sroa.02.012.i.i.i, 1, !dbg !28742
  %i.aa = icmp eq ptr %i.y, %i.q, !dbg !28743
  br i1 %i.aa, label %bb.i, label %bb.e, !dbg !28738

bb.g:                                             ; preds = %bb.d
  %i.ab = load i8, ptr %.pre.i.i, align 1, !dbg !28744, !noalias !28702, !noundef !1073 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 17, !dbg !28745
  %i.ad = load i8, ptr %i.ac, align 1, !dbg !28745, !alias.scope !28693, !noundef !1073
  %i.ae = icmp eq i8 %i.ab, %i.ad, !dbg !28746
  br i1 %i.ae, label %.lr.ph.i.i, label %.lr.ph.i.i.i, !dbg !28746

.lr.ph.i.i:                                       ; preds = %bb.g
  %i.af = getelementptr inbounds nuw i8, ptr %.pre.i.i, i64 %i.k, !dbg !28747
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ah = load i8, ptr %i.ag, align 8, !alias.scope !28693
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 18
  %i.aj = load i8, ptr %i.ai, align 2, !alias.scope !28693
  br label %bb.l, !dbg !28748

bb.h:                                             ; preds = %bb.e
  %i.ak = icmp ult i64 %.sroa.02.012.i.i.i, %i.k, !dbg !28749
  tail call void @llvm.assume(i1 %i.ak), !dbg !28750
  %i.al = getelementptr inbounds nuw i8, ptr %.pre.i.i, i64 %.sroa.02.012.i.i.i, !dbg !28751
  %i.am = load i8, ptr %i.al, align 1, !dbg !28752, !noalias !28702, !noundef !1073
  %i.an = icmp eq i8 %i.am, %i.u, !dbg !28752
  br i1 %i.an, label %bb.j, label %bb.k, !dbg !28752

bb.i:                                             ; preds = %bb.f
  store i8 1, ptr %i.g, align 1, !dbg !28753, !alias.scope !28693
  br label %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapNtNtNtNtNtCslpwjCj2YNBy_9polars_io3csv4read11splitfields5inner11SplitFieldsNCNvNtB12_16schema_inference13infer_headers0ENtNtNtB9_6traits8iterator8Iterator4nextB16_.exit, !dbg !28754

bb.j:                                             ; preds = %bb.h
  store i8 1, ptr %i.g, align 1, !dbg !28755, !alias.scope !28693
  br label %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapNtNtNtNtNtCslpwjCj2YNBy_9polars_io3csv4read11splitfields5inner11SplitFieldsNCNvNtB12_16schema_inference13infer_headers0ENtNtNtB9_6traits8iterator8Iterator4nextB16_.exit, !dbg !28756

bb.k:                                             ; preds = %bb.r, %bb.h
  %.sroa.016.0.i.i = phi i64 [ %i.bb, %bb.r ], [ %.sroa.02.012.i.i.i, %bb.h ], !dbg !28757 ; 2 uses
  %.sroa.0.0.i.i = phi i1 [ true, %bb.r ], [ false, %bb.h ], !dbg !28758
  %i.ao = add nuw i64 %.sroa.016.0.i.i, 1, !dbg !28759 ; 2 uses
  %i.ap = sub nuw i64 %i.k, %i.ao, !dbg !28760    ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.pre.i.i, i64 %i.ao, !dbg !28761 ; 2 uses
  store ptr %i.aq, ptr %1, align 8, !dbg !28762, !alias.scope !28693
  store i64 %i.ap, ptr %i.j, align 8, !dbg !28762, !alias.scope !28693
  br label %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapNtNtNtNtNtCslpwjCj2YNBy_9polars_io3csv4read11splitfields5inner11SplitFieldsNCNvNtB12_16schema_inference13infer_headers0ENtNtNtB9_6traits8iterator8Iterator4nextB16_.exit, !dbg !28763

bb.l:                                             ; preds = %bb.n, %.lr.ph.i.i
  %.sroa.05.053.i.i = phi i8 [ 0, %.lr.ph.i.i ], [ %spec.select.i.i, %bb.n ] ; 2 uses
  %.sroa.09.052.i.i = phi i32 [ 0, %.lr.ph.i.i ], [ %i.ax, %bb.n ] ; 4 uses
  %.sroa.012.051.i.i = phi ptr [ %.pre.i.i, %.lr.ph.i.i ], [ %i.ar, %bb.n ] ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.sroa.012.051.i.i, i64 1, !dbg !28764 ; 2 uses
  %i.as = load i8, ptr %.sroa.012.051.i.i, align 1, !dbg !28765, !noalias !28702, !noundef !1073 ; 3 uses
  %i.at = icmp eq i8 %i.as, %i.ab, !dbg !28766
  %i.au = zext i1 %i.at to i8, !dbg !28766        ; 2 uses
  %spec.select.i.i = xor i8 %.sroa.05.053.i.i, %i.au, !dbg !28766
  %.not.i.i = icmp eq i8 %.sroa.05.053.i.i, %i.au, !dbg !28767
  br i1 %.not.i.i, label %bb.m, label %bb.n, !dbg !28767

bb.m:                                             ; preds = %bb.l
  %i.av = icmp eq i8 %i.as, %i.ah, !dbg !28768
  %i.aw = icmp eq i8 %i.as, %i.aj                 ; 2 uses
  %or.cond.i.i = select i1 %i.av, i1 true, i1 %i.aw, !dbg !28768
  br i1 %or.cond.i.i, label %bb.o, label %bb.n, !dbg !28768

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.ax = add i32 %.sroa.09.052.i.i, 1, !dbg !28769
  %i.ay = icmp eq ptr %i.ar, %i.af, !dbg !28770
  br i1 %i.ay, label %.thread.i.i, label %bb.l, !dbg !28748

bb.o:                                             ; preds = %bb.m
  br i1 %i.aw, label %bb.p, label %bb.q, !dbg !28771

bb.p:                                             ; preds = %bb.o
  %i.az = zext i32 %.sroa.09.052.i.i to i64, !dbg !28772
  store i8 1, ptr %i.g, align 1, !dbg !28773, !alias.scope !28693
  br label %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapNtNtNtNtNtCslpwjCj2YNBy_9polars_io3csv4read11splitfields5inner11SplitFieldsNCNvNtB12_16schema_inference13infer_headers0ENtNtNtB9_6traits8iterator8Iterator4nextB16_.exit, !dbg !28774

bb.q:                                             ; preds = %bb.o
  %i.ba = icmp eq i32 %.sroa.09.052.i.i, 0, !dbg !28775
  br i1 %i.ba, label %.thread.i.i, label %bb.r, !dbg !28775

.thread.i.i:                                      ; preds = %bb.n, %bb.q
  store i8 1, ptr %i.g, align 1, !dbg !28776, !alias.scope !28693
  br label %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapNtNtNtNtNtCslpwjCj2YNBy_9polars_io3csv4read11splitfields5inner11SplitFieldsNCNvNtB12_16schema_inference13infer_headers0ENtNtNtB9_6traits8iterator8Iterator4nextB16_.exit, !dbg !28774

bb.r:                                             ; preds = %bb.q
  %i.bb = zext i32 %.sroa.09.052.i.i to i64, !dbg !28777
  br label %bb.k, !dbg !28778

_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapNtNtNtNtNtCslpwjCj2YNBy_9polars_io3csv4read11splitfields5inner11SplitFieldsNCNvNtB12_16schema_inference13infer_headers0ENtNtNtB9_6traits8iterator8Iterator4nextB16_.exit: ; preds = %bb.c, %bb.i, %bb.j, %bb.k, %bb.p, %.thread.i.i
  %.sroa.8.0.copyload = phi i1 [ true, %bb.j ], [ false, %bb.k ], [ true, %.thread.i.i ], [ true, %bb.p ], [ true, %bb.c ], [ true, %bb.i ]
  %.sroa.411.0.copyload = phi i64 [ %i.k, %bb.j ], [ %i.ap, %bb.k ], [ %i.k, %.thread.i.i ], [ %i.k, %bb.p ], [ 0, %bb.c ], [ %i.k, %bb.i ]
  %.sroa.010.0.copyload = phi ptr [ %.pre.i.i, %bb.j ], [ %i.aq, %bb.k ], [ %.pre.i.i, %.thread.i.i ], [ %.pre.i.i, %bb.p ], [ %i.m, %bb.c ], [ %.pre.i.i, %bb.i ]
  %.sroa.15.0.ph.i = phi i1 [ false, %bb.j ], [ %.sroa.0.0.i.i, %bb.k ], [ true, %.thread.i.i ], [ true, %bb.p ], [ false, %bb.c ], [ false, %bb.i ]
  %.sroa.9.0.ph.i = phi i64 [ %.sroa.02.012.i.i.i, %bb.j ], [ %.sroa.016.0.i.i, %bb.k ], [ %i.k, %.thread.i.i ], [ %i.az, %bb.p ], [ 0, %bb.c ], [ %i.k, %bb.i ] ; 3 uses
  %.sroa.0.0.ph.i = phi ptr [ %.pre.i.i, %bb.j ], [ %.pre.i.i, %bb.k ], [ %.pre.i.i, %.thread.i.i ], [ %.pre.i.i, %bb.p ], [ %i.m, %bb.c ], [ %.pre.i.i, %bb.i ] ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.ph.i) ]
  %i.bc = icmp ugt i64 %.sroa.9.0.ph.i, 1
  %or.cond.i1.i = and i1 %.sroa.15.0.ph.i, %i.bc, !dbg !28779 ; 2 uses
  %i.bd = add i64 %.sroa.9.0.ph.i, -2, !dbg !28779
  %.sroa.5.0.i.i = select i1 %or.cond.i1.i, i64 %i.bd, i64 %.sroa.9.0.ph.i, !dbg !28779
  %.sroa.0.0.idx.i.i = zext i1 %or.cond.i1.i to i64, !dbg !28779
  %.sroa.0.0.i2.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph.i, i64 %.sroa.0.0.idx.i.i, !dbg !28779
  call void @_RNvMNtCsgZ49sUHp3tW_5alloc6stringNtB2_6String15from_utf8_lossy(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.e, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.sroa.0.0.i2.i, i64 noundef %.sroa.5.0.i.i), !dbg !28780, !noalias !28685
  %.pr = load i64, ptr %i.e, align 8, !dbg !28726
  %.not = icmp eq i64 %.pr, -9223372036854775807, !dbg !28726
  br i1 %.not, label %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapNtNtNtNtNtCslpwjCj2YNBy_9polars_io3csv4read11splitfields5inner11SplitFieldsNCNvNtB12_16schema_inference13infer_headers0ENtNtNtB9_6traits8iterator8Iterator4nextB16_.exit.thread, label %bb.v, !dbg !28781

_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapNtNtNtNtNtCslpwjCj2YNBy_9polars_io3csv4read11splitfields5inner11SplitFieldsNCNvNtB12_16schema_inference13infer_headers0ENtNtNtB9_6traits8iterator8Iterator4nextB16_.exit.thread: ; preds = %bb.a, %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapNtNtNtNtNtCslpwjCj2YNBy_9polars_io3csv4read11splitfields5inner11SplitFieldsNCNvNtB12_16schema_inference13infer_headers0ENtNtNtB9_6traits8iterator8Iterator4nextB16_.exit
  store i64 0, ptr %0, align 8, !dbg !28782
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !28782
  store ptr inttoptr (i64 8 to ptr), ptr %i.be, align 8, !dbg !28782
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !28782
  store i64 0, ptr %i.bf, align 8, !dbg !28782
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !28783
  br label %bb.s, !dbg !28784

bb.s:                                             ; preds = %.loopexit, %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapNtNtNtNtNtCslpwjCj2YNBy_9polars_io3csv4read11splitfields5inner11SplitFieldsNCNvNtB12_16schema_inference13infer_headers0ENtNtNtB9_6traits8iterator8Iterator4nextB16_.exit.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !28784
  ret void, !dbg !28785

bb.t:                                             ; preds = %bb.w, %bb.v
  %i.bg = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bh = load i64, ptr %i.d, align 8, !dbg !28786, !range !1183, !alias.scope !28713, !noundef !1073
  %i.bi = icmp eq i64 %i.bh, -9223372036854775808, !dbg !28786
  br i1 %i.bi, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CoweEECslpwjCj2YNBy_9polars_io.exit, label %bb.u, !dbg !28786

bb.u:                                             ; preds = %bb.t
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCslpwjCj2YNBy_9polars_io(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CoweEECslpwjCj2YNBy_9polars_io.exit unwind label %bb.as, !dbg !28787

bb.v:                                             ; preds = %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapNtNtNtNtNtCslpwjCj2YNBy_9polars_io3csv4read11splitfields5inner11SplitFieldsNCNvNtB12_16schema_inference13infer_headers0ENtNtNtB9_6traits8iterator8Iterator4nextB16_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !28788
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false), !dbg !28788
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !28789
  invoke void @_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCslpwjCj2YNBy_9polars_io(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, i64 noundef 4, i1 noundef zeroext false, i64 noundef 8, i64 noundef 24)
          to label %.noexc5 unwind label %bb.t, !dbg !28789

.noexc5:                                          ; preds = %bb.v
  %i.bj = load i64, ptr %i.c, align 8, !dbg !28789, !range !1280, !noundef !1073
  %i.bk = trunc nuw i64 %i.bj to i1, !dbg !28790
  %i.bl = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !28791
  %i.bm = load i64, ptr %i.bl, align 8, !dbg !28791, !range !1183, !noundef !1073 ; 3 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.c, i64 16, !dbg !28791 ; 2 uses
  br i1 %i.bk, label %bb.w, label %bb.x, !dbg !28790, !prof !1095

bb.w:                                             ; preds = %.noexc5
  %i.bo = load i64, ptr %i.bn, align 8, !dbg !28792
  invoke void @_RNvNtCsgZ49sUHp3tW_5alloc7raw_vec12handle_error(i64 noundef %i.bm, i64 %i.bo) #32
          to label %.noexc6 unwind label %bb.t, !dbg !28793

.noexc6:                                          ; preds = %bb.w
  unreachable, !dbg !28793

bb.x:                                             ; preds = %.noexc5
  %i.bp = load ptr, ptr %i.bn, align 8, !dbg !28794, !nonnull !1073, !noundef !1073 ; 2 uses
  %i.bq = icmp ugt i64 %i.bm, 3, !dbg !28795
  tail call void @llvm.assume(i1 %i.bq), !dbg !28796
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !28797
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bp, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false), !dbg !28798
  store i64 %i.bm, ptr %i.f, align 8, !dbg !28799
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 8, !dbg !28799 ; 2 uses
  store ptr %i.bp, ptr %.sroa.4.0..sroa_idx, align 8, !dbg !28799
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 16, !dbg !28799 ; 3 uses
  store i64 1, ptr %.sroa.6.0..sroa_idx, align 8, !dbg !28799
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !28800
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !28783
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !28801
  %.sroa.5.0.copyload = load i8, ptr %.sroa.5.0..sroa_idx, align 8, !dbg !28801 ; 2 uses
  %.sroa.6.0..sroa_idx12 = getelementptr inbounds nuw i8, ptr %1, i64 17, !dbg !28801
  %.sroa.6.0.copyload = load i8, ptr %.sroa.6.0..sroa_idx12, align 1, !dbg !28801 ; 2 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 18, !dbg !28801
  %.sroa.7.0.copyload = load i8, ptr %.sroa.7.0..sroa_idx, align 2, !dbg !28801 ; 3 uses
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 20, !dbg !28801
  %.sroa.9.0.copyload = load i8, ptr %.sroa.9.0..sroa_idx, align 4, !dbg !28801
  tail call void @llvm.experimental.noalias.scope.decl(metadata !28717), !dbg !28802
  tail call void @llvm.experimental.noalias.scope.decl(metadata !28718), !dbg !28803
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !28804, !noalias !28719
  br i1 %.sroa.8.0.copyload, label %.loopexit, label %.lr.ph.i.i7, !dbg !28805

.lr.ph.i.i7:                                      ; preds = %bb.x
  %i.br = trunc nuw i8 %.sroa.9.0.copyload to i1
  br label %bb.y, !dbg !28805

bb.y:                                             ; preds = %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VecINtNtB6_6borrow3CoweEE7reserveCslpwjCj2YNBy_9polars_io.exit.i.i, %.lr.ph.i.i7
  %i.bs = phi i64 [ %.sroa.411.0.copyload, %.lr.ph.i.i7 ], [ %i.cx, %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VecINtNtB6_6borrow3CoweEE7reserveCslpwjCj2YNBy_9polars_io.exit.i.i ] ; 13 uses
  %i.bt = phi ptr [ %.sroa.010.0.copyload, %.lr.ph.i.i7 ], [ %i.cy, %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VecINtNtB6_6borrow3CoweEE7reserveCslpwjCj2YNBy_9polars_io.exit.i.i ] ; 15 uses
  %i.bu = icmp eq i64 %i.bs, 0, !dbg !28806
  br i1 %i.bu, label %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapNtNtNtNtNtCslpwjCj2YNBy_9polars_io3csv4read11splitfields5inner11SplitFieldsNCNvNtB12_16schema_inference13infer_headers0ENtNtNtB9_6traits8iterator8Iterator4nextB16_.exit.i.i, label %bb.z, !dbg !28806

bb.z:                                             ; preds = %bb.y
  br i1 %i.br, label %bb.ac, label %.lr.ph.i.i.i.i.i, !dbg !28807

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.ac, %bb.z
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bt, i64 %i.bs, !dbg !28808
  br label %bb.aa, !dbg !28809

bb.aa:                                            ; preds = %bb.ab, %.lr.ph.i.i.i.i.i
  %.sroa.02.012.i.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i.i.i ], [ %i.ca, %bb.ab ] ; 5 uses
  %i.bw = phi ptr [ %i.bt, %.lr.ph.i.i.i.i.i ], [ %i.bz, %bb.ab ] ; 2 uses
  %.val7.i.i.i.i.i = load i8, ptr %i.bw, align 1, !dbg !28810, !noalias !28720, !noundef !1073 ; 2 uses
  %i.bx = icmp eq i8 %.val7.i.i.i.i.i, %.sroa.5.0.copyload, !dbg !28811
  %i.by = icmp eq i8 %.val7.i.i.i.i.i, %.sroa.7.0.copyload
  %or.cond.i.i.i.i.i = select i1 %i.bx, i1 true, i1 %i.by, !dbg !28811
  br i1 %or.cond.i.i.i.i.i, label %bb.ad, label %bb.ab, !dbg !28811

bb.ab:                                            ; preds = %bb.aa
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bw, i64 1, !dbg !28812 ; 2 uses
  %i.ca = add nuw i64 %.sroa.02.012.i.i.i.i.i, 1, !dbg !28813
  %i.cb = icmp eq ptr %i.bz, %i.bv, !dbg !28814
  br i1 %i.cb, label %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapNtNtNtNtNtCslpwjCj2YNBy_9polars_io3csv4read11splitfields5inner11SplitFieldsNCNvNtB12_16schema_inference13infer_headers0ENtNtNtB9_6traits8iterator8Iterator4nextB16_.exit.i.i, label %bb.aa, !dbg !28809

bb.ac:                                            ; preds = %bb.z
  %i.cc = load i8, ptr %i.bt, align 1, !dbg !28815, !noalias !28721, !noundef !1073
  %i.cd = icmp eq i8 %i.cc, %.sroa.6.0.copyload, !dbg !28816
  br i1 %i.cd, label %.lr.ph.i.i.i.i, label %.lr.ph.i.i.i.i.i, !dbg !28816

.lr.ph.i.i.i.i:                                   ; preds = %bb.ac
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bt, i64 %i.bs, !dbg !28817
  br label %bb.af, !dbg !28818

bb.ad:                                            ; preds = %bb.aa
  %i.cf = icmp ult i64 %.sroa.02.012.i.i.i.i.i, %i.bs, !dbg !28819
  call void @llvm.assume(i1 %i.cf), !dbg !28820
  %i.cg = getelementptr inbounds nuw i8, ptr %i.bt, i64 %.sroa.02.012.i.i.i.i.i, !dbg !28821
  %i.ch = load i8, ptr %i.cg, align 1, !dbg !28822, !noalias !28721, !noundef !1073
  %i.ci = icmp eq i8 %i.ch, %.sroa.7.0.copyload, !dbg !28822
  br i1 %i.ci, label %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapNtNtNtNtNtCslpwjCj2YNBy_9polars_io3csv4read11splitfields5inner11SplitFieldsNCNvNtB12_16schema_inference13infer_headers0ENtNtNtB9_6traits8iterator8Iterator4nextB16_.exit.i.i, label %bb.ae, !dbg !28822

bb.ae:                                            ; preds = %bb.al, %bb.ad
  %.sroa.016.0.i.i.i.i = phi i64 [ %i.cw, %bb.al ], [ %.sroa.02.012.i.i.i.i.i, %bb.ad ], !dbg !28823 ; 2 uses
  %.sroa.0.0.i.i.i.i = phi i1 [ true, %bb.al ], [ false, %bb.ad ], !dbg !28824
  %i.cj = add nuw i64 %.sroa.016.0.i.i.i.i, 1, !dbg !28825 ; 2 uses
  %i.ck = sub nuw i64 %i.bs, %i.cj, !dbg !28826
  %i.cl = getelementptr inbounds nuw i8, ptr %i.bt, i64 %i.cj, !dbg !28827
  br label %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapNtNtNtNtNtCslpwjCj2YNBy_9polars_io3csv4read11splitfields5inner11SplitFieldsNCNvNtB12_16schema_inference13infer_headers0ENtNtNtB9_6traits8iterator8Iterator4nextB16_.exit.i.i, !dbg !28828

bb.af:                                            ; preds = %bb.ah, %.lr.ph.i.i.i.i
  %.sroa.05.053.i.i.i.i = phi i8 [ 0, %.lr.ph.i.i.i.i ], [ %spec.select.i.i.i.i, %bb.ah ] ; 2 uses
  %.sroa.09.052.i.i.i.i = phi i32 [ 0, %.lr.ph.i.i.i.i ], [ %i.cs, %bb.ah ] ; 4 uses
  %.sroa.012.051.i.i.i.i = phi ptr [ %i.bt, %.lr.ph.i.i.i.i ], [ %i.cm, %bb.ah ] ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %.sroa.012.051.i.i.i.i, i64 1, !dbg !28829 ; 2 uses
  %i.cn = load i8, ptr %.sroa.012.051.i.i.i.i, align 1, !dbg !28830, !noalias !28721, !noundef !1073 ; 3 uses
  %i.co = icmp eq i8 %i.cn, %.sroa.6.0.copyload, !dbg !28831
  %i.cp = zext i1 %i.co to i8, !dbg !28831        ; 2 uses
  %spec.select.i.i.i.i = xor i8 %.sroa.05.053.i.i.i.i, %i.cp, !dbg !28831
  %.not.i.i.i.i = icmp eq i8 %.sroa.05.053.i.i.i.i, %i.cp, !dbg !28832
  br i1 %.not.i.i.i.i, label %bb.ag, label %bb.ah, !dbg !28832

bb.ag:                                            ; preds = %bb.af
  %i.cq = icmp eq i8 %i.cn, %.sroa.5.0.copyload, !dbg !28833
  %i.cr = icmp eq i8 %i.cn, %.sroa.7.0.copyload   ; 2 uses
  %or.cond.i.i.i.i = select i1 %i.cq, i1 true, i1 %i.cr, !dbg !28833
  br i1 %or.cond.i.i.i.i, label %bb.ai, label %bb.ah, !dbg !28833

bb.ah:                                            ; preds = %bb.ag, %bb.af
  %i.cs = add i32 %.sroa.09.052.i.i.i.i, 1, !dbg !28834
  %i.ct = icmp eq ptr %i.cm, %i.ce, !dbg !28835
  br i1 %i.ct, label %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapNtNtNtNtNtCslpwjCj2YNBy_9polars_io3csv4read11splitfields5inner11SplitFieldsNCNvNtB12_16schema_inference13infer_headers0ENtNtNtB9_6traits8iterator8Iterator4nextB16_.exit.i.i, label %bb.af, !dbg !28818

bb.ai:                                            ; preds = %bb.ag
  br i1 %i.cr, label %bb.aj, label %bb.ak, !dbg !28836

bb.aj:                                            ; preds = %bb.ai
  %i.cu = zext i32 %.sroa.09.052.i.i.i.i to i64, !dbg !28837
  br label %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapNtNtNtNtNtCslpwjCj2YNBy_9polars_io3csv4read11splitfields5inner11SplitFieldsNCNvNtB12_16schema_inference13infer_headers0ENtNtNtB9_6traits8iterator8Iterator4nextB16_.exit.i.i, !dbg !28838

bb.ak:                                            ; preds = %bb.ai
  %i.cv = icmp eq i32 %.sroa.09.052.i.i.i.i, 0, !dbg !28839
  br i1 %i.cv, label %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapNtNtNtNtNtCslpwjCj2YNBy_9polars_io3csv4read11splitfields5inner11SplitFieldsNCNvNtB12_16schema_inference13infer_headers0ENtNtNtB9_6traits8iterator8Iterator4nextB16_.exit.i.i, label %bb.al, !dbg !28839

bb.al:                                            ; preds = %bb.ak
  %i.cw = zext i32 %.sroa.09.052.i.i.i.i to i64, !dbg !28840
  br label %bb.ae, !dbg !28841

_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapNtNtNtNtNtCslpwjCj2YNBy_9polars_io3csv4read11splitfields5inner11SplitFieldsNCNvNtB12_16schema_inference13infer_headers0ENtNtNtB9_6traits8iterator8Iterator4nextB16_.exit.i.i: ; preds = %bb.ab, %bb.ah, %bb.ak, %bb.aj, %bb.ae, %bb.ad, %bb.y
  %i.cx = phi i64 [ %i.bs, %bb.ah ], [ %i.ck, %bb.ae ], [ %i.bs, %bb.ad ], [ %i.bs, %bb.aj ], [ 0, %bb.y ], [ %i.bs, %bb.ak ], [ %i.bs, %bb.ab ]
  %i.cy = phi ptr [ %i.bt, %bb.ah ], [ %i.cl, %bb.ae ], [ %i.bt, %bb.ad ], [ %i.bt, %bb.aj ], [ %i.bt, %bb.y ], [ %i.bt, %bb.ak ], [ %i.bt, %bb.ab ]
  %i.cz = phi i1 [ true, %bb.ah ], [ false, %bb.ae ], [ true, %bb.ad ], [ true, %bb.aj ], [ true, %bb.y ], [ true, %bb.ak ], [ true, %bb.ab ]
  %.sroa.15.0.ph.i.i.i = phi i1 [ true, %bb.ah ], [ %.sroa.0.0.i.i.i.i, %bb.ae ], [ false, %bb.ad ], [ true, %bb.aj ], [ false, %bb.y ], [ true, %bb.ak ], [ false, %bb.ab ]
  %.sroa.9.0.ph.i.i.i = phi i64 [ %i.bs, %bb.ah ], [ %.sroa.016.0.i.i.i.i, %bb.ae ], [ %.sroa.02.012.i.i.i.i.i, %bb.ad ], [ %i.cu, %bb.aj ], [ 0, %bb.y ], [ %i.bs, %bb.ak ], [ %i.bs, %bb.ab ] ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bt) ]
  %i.da = icmp ugt i64 %.sroa.9.0.ph.i.i.i, 1
  %or.cond.i1.i.i.i = and i1 %.sroa.15.0.ph.i.i.i, %i.da, !dbg !28842 ; 2 uses
  %i.db = add i64 %.sroa.9.0.ph.i.i.i, -2, !dbg !28842
  %.sroa.5.0.i.i.i.i = select i1 %or.cond.i1.i.i.i, i64 %i.db, i64 %.sroa.9.0.ph.i.i.i, !dbg !28842
  %.sroa.0.0.idx.i.i.i.i = zext i1 %or.cond.i1.i.i.i to i64, !dbg !28842
  %.sroa.0.0.i2.i.i.i = getelementptr inbounds nuw i8, ptr %i.bt, i64 %.sroa.0.0.idx.i.i.i.i, !dbg !28842
  invoke void @_RNvMNtCsgZ49sUHp3tW_5alloc6stringNtB2_6String15from_utf8_lossy(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.sroa.0.0.i2.i.i.i, i64 noundef %.sroa.5.0.i.i.i.i)
          to label %.noexc9 unwind label %bb.ar, !dbg !28843

.noexc9:                                          ; preds = %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapNtNtNtNtNtCslpwjCj2YNBy_9polars_io3csv4read11splitfields5inner11SplitFieldsNCNvNtB12_16schema_inference13infer_headers0ENtNtNtB9_6traits8iterator8Iterator4nextB16_.exit.i.i
  %.pr.i.i = load i64, ptr %i.b, align 8, !dbg !28804, !noalias !28719
  %.not.i.i8 = icmp eq i64 %.pr.i.i, -9223372036854775807, !dbg !28804
  br i1 %.not.i.i8, label %.loopexit, label %bb.am, !dbg !28844

bb.am:                                            ; preds = %.noexc9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !28845, !noalias !28719
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false), !dbg !28845, !noalias !28719
  %i.dc = load i64, ptr %.sroa.6.0..sroa_idx, align 8, !dbg !28846, !alias.scope !28722, !noundef !1073 ; 5 uses
  %i.dd = icmp ult i64 %i.dc, 384307168202282326, !dbg !28847
  call void @llvm.assume(i1 %i.dd), !dbg !28848
  %i.de = load i64, ptr %i.f, align 8, !dbg !28849, !range !1139, !alias.scope !28722, !noundef !1073
  %i.df = icmp eq i64 %i.dc, %i.de, !dbg !28850
  br i1 %i.df, label %bb.ap, label %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VecINtNtB6_6borrow3CoweEE7reserveCslpwjCj2YNBy_9polars_io.exit.i.i, !dbg !28850

_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VecINtNtB6_6borrow3CoweEE7reserveCslpwjCj2YNBy_9polars_io.exit.i.i: ; preds = %bb.ap, %bb.am
  %i.dg = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !dbg !28851, !alias.scope !28722, !nonnull !1073, !noundef !1073
  %i.dh = getelementptr inbounds nuw [24 x i8], ptr %i.dg, i64 %i.dc, !dbg !28852
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.dh, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false), !dbg !28853, !noalias !28723
  %i.di = add nuw nsw i64 %i.dc, 1, !dbg !28854
  store i64 %i.di, ptr %.sroa.6.0..sroa_idx, align 8, !dbg !28855, !alias.scope !28722
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !28856, !noalias !28719
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !28856, !noalias !28719
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !28804, !noalias !28719
  br i1 %i.cz, label %.loopexit, label %bb.y, !dbg !28805

bb.an:                                            ; preds = %bb.ap
  %i.dj = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.dk = load i64, ptr %i.a, align 8, !dbg !28857, !range !1183, !alias.scope !28724, !noalias !28719, !noundef !1073
  %i.dl = icmp eq i64 %i.dk, -9223372036854775808, !dbg !28857
  br i1 %i.dl, label %.body, label %bb.ao, !dbg !28857

bb.ao:                                            ; preds = %bb.an
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCslpwjCj2YNBy_9polars_io(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %.body unwind label %bb.aq, !dbg !28858, !noalias !28723

bb.ap:                                            ; preds = %bb.am
  invoke void @_RINvNvMs2_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECslpwjCj2YNBy_9polars_io(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f, i64 noundef %i.dc, i64 noundef range(i64 1, 0) 1, i64 noundef 8, i64 noundef 24)
          to label %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VecINtNtB6_6borrow3CoweEE7reserveCslpwjCj2YNBy_9polars_io.exit.i.i unwind label %bb.an, !dbg !28859, !noalias !28723

bb.aq:                                            ; preds = %bb.ao
  %i.dm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #34, !dbg !28860, !noalias !28723
  unreachable, !dbg !28860

bb.ar:                                            ; preds = %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapNtNtNtNtNtCslpwjCj2YNBy_9polars_io3csv4read11splitfields5inner11SplitFieldsNCNvNtB12_16schema_inference13infer_headers0ENtNtNtB9_6traits8iterator8Iterator4nextB16_.exit.i.i
  %i.dn = landingpad { ptr, i32 }
          cleanup
  br label %.body, !dbg !28784

.body:                                            ; preds = %bb.an, %bb.ao, %bb.ar
  %eh.lpad-body = phi { ptr, i32 } [ %i.dn, %bb.ar ], [ %i.dj, %bb.ao ], [ %i.dj, %bb.an ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecINtNtBL_6borrow3CoweEEECslpwjCj2YNBy_9polars_io(ptr noalias noundef align 8 dereferenceable(24) %i.f) #33
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CoweEECslpwjCj2YNBy_9polars_io.exit unwind label %bb.as, !dbg !28784

.loopexit:                                        ; preds = %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VecINtNtB6_6borrow3CoweEE7reserveCslpwjCj2YNBy_9polars_io.exit.i.i, %.noexc9, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !28856, !noalias !28719
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false), !dbg !28861
  br label %bb.s, !dbg !28784

bb.as:                                            ; preds = %bb.u, %.body
  %i.do = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #34, !dbg !28862
  unreachable, !dbg !28862

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CoweEECslpwjCj2YNBy_9polars_io.exit: ; preds = %bb.t, %bb.u, %.body
  %.pn = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %i.bg, %bb.u ], [ %i.bg, %bb.t ]
  resume { ptr, i32 } %.pn, !dbg !28862
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtNtCsgZ49sUHp3tW_5alloc3vec21spec_from_iter_nestedINtB4_3VecINtNtCscgRAwXFJnXP_4core6result6ResultINtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet5write8dyn_iter20DynStreamingIteratorNtNtB1K_4page14CompressedPageNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEB3s_EEINtB2_18SpecFromIterNestedB11_INtNtNtNtB16_4iter8adapters7flatten7FlatMapINtNtB4P_3zip3ZipIB5s_INtNtNtB16_5slice4iter4IterINtNtB6_5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EEIB5O_NtNtNtNtB1K_6schema5types12parquet_type11ParquetTypeEEIB5O_IBS_NtNtB1K_14parquet_bridge8EncodingEEEBR_NCNvNtNtNtCslpwjCj2YNBy_9polars_io7parquet5write14batched_writer17create_serializer0EE9from_iterB9d_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(200) %1) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !28863 {
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
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !dbg !29051
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !29052
  invoke fastcc void @_RNvXs1_NtNtNtCscgRAwXFJnXP_4core4iter8adapters7flattenINtB5_7FlatMapINtNtB7_3zip3ZipIB15_INtNtNtBb_5slice4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EEIB1q_NtNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet6schema5types12parquet_type11ParquetTypeEEIB1q_INtNtB1U_3vec3VecNtNtB3p_14parquet_bridge8EncodingEEEIB4P_INtNtBb_6result6ResultINtNtNtB3p_5write8dyn_iter20DynStreamingIteratorNtNtB3p_4page14CompressedPageNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEB7l_EENCNvNtNtNtCslpwjCj2YNBy_9polars_io7parquet5write14batched_writer17create_serializer0ENtNtNtB9_6traits8iterator8Iterator4nextB8j_(ptr noalias noundef align 8 captures(address) dereferenceable(72) %i.f, ptr noalias noundef align 8 dereferenceable(200) %1)
          to label %bb.c unwind label %bb.b, !dbg !29053

bb.b:                                             ; preds = %bb.a
  %i.h = landingpad { ptr, i32 }
          cleanup
  br label %bb.an

bb.c:                                             ; preds = %bb.a
  %i.i = load i64, ptr %i.f, align 8, !dbg !29052, !range !1184, !noundef !1073
  %.not = icmp eq i64 %i.i, 19, !dbg !29052
  br i1 %.not, label %bb.i, label %bb.d, !dbg !29054

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !29055
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.e, ptr noundef nonnull align 8 dereferenceable(72) %i.f, i64 72, i1 false), !dbg !29055
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5), !dbg !29056
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7), !dbg !29056
  tail call void @llvm.experimental.noalias.scope.decl(metadata !29018), !dbg !29057
  tail call void @llvm.experimental.noalias.scope.decl(metadata !29019), !dbg !29057
  tail call void @llvm.experimental.noalias.scope.decl(metadata !29020), !dbg !29058
  tail call void @llvm.experimental.noalias.scope.decl(metadata !29021), !dbg !29058
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 136, !dbg !29059
  %i.k = load ptr, ptr %i.j, align 8, !dbg !29059, !alias.scope !29022, !noundef !1073
  %.not.i.i = icmp eq ptr %i.k, null, !dbg !29059
  br i1 %.not.i.i, label %_RINvMNtCscgRAwXFJnXP_4core6optionINtB3_6OptionRINtNtNtCsgZ49sUHp3tW_5alloc3vec9into_iter8IntoIterINtNtB5_6result6ResultINtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet5write8dyn_iter20DynStreamingIteratorNtNtB20_4page14CompressedPageNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEB3I_EEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECslpwjCj2YNBy_9polars_io.exit.i.i, label %bb.e, !dbg !29060

bb.e:                                             ; preds = %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 144, !dbg !29061
  %.val.i.i.i = load ptr, ptr %i.l, align 8, !dbg !29061, !alias.scope !29023, !nonnull !1073, !noundef !1073
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 160, !dbg !29061
  %.val4.i.i.i = load ptr, ptr %i.m, align 8, !dbg !29061, !alias.scope !29023, !nonnull !1073, !noundef !1073
  %i.n = ptrtoint ptr %.val4.i.i.i to i64, !dbg !29062
  %i.o = ptrtoint ptr %.val.i.i.i to i64, !dbg !29062
  %i.p = sub nuw i64 %i.n, %i.o, !dbg !29062
  %i.q = udiv exact i64 %i.p, 72, !dbg !29062
  br label %_RINvMNtCscgRAwXFJnXP_4core6optionINtB3_6OptionRINtNtNtCsgZ49sUHp3tW_5alloc3vec9into_iter8IntoIterINtNtB5_6result6ResultINtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet5write8dyn_iter20DynStreamingIteratorNtNtB20_4page14CompressedPageNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEB3I_EEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECslpwjCj2YNBy_9polars_io.exit.i.i, !dbg !29061

_RINvMNtCscgRAwXFJnXP_4core6optionINtB3_6OptionRINtNtNtCsgZ49sUHp3tW_5alloc3vec9into_iter8IntoIterINtNtB5_6result6ResultINtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet5write8dyn_iter20DynStreamingIteratorNtNtB20_4page14CompressedPageNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEB3I_EEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECslpwjCj2YNBy_9polars_io.exit.i.i: ; preds = %bb.e, %bb.d
  %.sroa.7.0.i.i = phi i64 [ %i.q, %bb.e ], [ 0, %bb.d ], !dbg !29063
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 168, !dbg !29064
  %i.s = load ptr, ptr %i.r, align 8, !dbg !29064, !alias.scope !29022, !noundef !1073
  %.not54.i.i = icmp eq ptr %i.s, null, !dbg !29064
  br i1 %.not54.i.i, label %_RINvMNtCscgRAwXFJnXP_4core6optionINtB3_6OptionRINtNtNtCsgZ49sUHp3tW_5alloc3vec9into_iter8IntoIterINtNtB5_6result6ResultINtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet5write8dyn_iter20DynStreamingIteratorNtNtB20_4page14CompressedPageNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEB3I_EEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECslpwjCj2YNBy_9polars_io.exit65.i.i, label %bb.f, !dbg !29065

bb.f:                                             ; preds = %_RINvMNtCscgRAwXFJnXP_4core6optionINtB3_6OptionRINtNtNtCsgZ49sUHp3tW_5alloc3vec9into_iter8IntoIterINtNtB5_6result6ResultINtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet5write8dyn_iter20DynStreamingIteratorNtNtB20_4page14CompressedPageNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEB3I_EEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECslpwjCj2YNBy_9polars_io.exit.i.i
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 176, !dbg !29066
  %.val.i63.i.i = load ptr, ptr %i.t, align 8, !dbg !29066, !alias.scope !29024, !nonnull !1073, !noundef !1073
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 192, !dbg !29066
  %.val4.i64.i.i = load ptr, ptr %i.u, align 8, !dbg !29066, !alias.scope !29024, !nonnull !1073, !noundef !1073
  %i.v = ptrtoint ptr %.val4.i64.i.i to i64, !dbg !29067
  %i.w = ptrtoint ptr %.val.i63.i.i to i64, !dbg !29067
  %i.x = sub nuw i64 %i.v, %i.w, !dbg !29067
  %i.y = udiv exact i64 %i.x, 72, !dbg !29067
  br label %_RINvMNtCscgRAwXFJnXP_4core6optionINtB3_6OptionRINtNtNtCsgZ49sUHp3tW_5alloc3vec9into_iter8IntoIterINtNtB5_6result6ResultINtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet5write8dyn_iter20DynStreamingIteratorNtNtB20_4page14CompressedPageNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEB3I_EEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECslpwjCj2YNBy_9polars_io.exit65.i.i, !dbg !29066

_RINvMNtCscgRAwXFJnXP_4core6optionINtB3_6OptionRINtNtNtCsgZ49sUHp3tW_5alloc3vec9into_iter8IntoIterINtNtB5_6result6ResultINtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet5write8dyn_iter20DynStreamingIteratorNtNtB20_4page14CompressedPageNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEB3I_EEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECslpwjCj2YNBy_9polars_io.exit65.i.i: ; preds = %bb.f, %_RINvMNtCscgRAwXFJnXP_4core6optionINtB3_6OptionRINtNtNtCsgZ49sUHp3tW_5alloc3vec9into_iter8IntoIterINtNtB5_6result6ResultINtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet5write8dyn_iter20DynStreamingIteratorNtNtB20_4page14CompressedPageNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEB3I_EEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECslpwjCj2YNBy_9polars_io.exit.i.i
  %.sroa.8.0.i.i = phi i64 [ %i.y, %bb.f ], [ 0, %_RINvMNtCscgRAwXFJnXP_4core6optionINtB3_6OptionRINtNtNtCsgZ49sUHp3tW_5alloc3vec9into_iter8IntoIterINtNtB5_6result6ResultINtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet5write8dyn_iter20DynStreamingIteratorNtNtB20_4page14CompressedPageNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEB3I_EEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECslpwjCj2YNBy_9polars_io.exit.i.i ], !dbg !29068
  %i.z = add nuw nsw i64 %.sroa.8.0.i.i, %.sroa.7.0.i.i, !dbg !29069 ; 2 uses
  %i.aa = load i64, ptr %1, align 8, !dbg !29070, !range !1196, !alias.scope !29022, !noundef !1073
  %.not55.i.i = icmp eq i64 %i.aa, 2, !dbg !29070
  br i1 %.not55.i.i, label %bb.h, label %bb.g, !dbg !29071

bb.g:                                             ; preds = %_RINvMNtCscgRAwXFJnXP_4core6optionINtB3_6OptionRINtNtNtCsgZ49sUHp3tW_5alloc3vec9into_iter8IntoIterINtNtB5_6result6ResultINtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet5write8dyn_iter20DynStreamingIteratorNtNtB20_4page14CompressedPageNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEB3I_EEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECslpwjCj2YNBy_9polars_io.exit65.i.i
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 120, !dbg !29072
  %.val.i.i = load i64, ptr %i.ab, align 8, !dbg !29072, !alias.scope !29022, !noundef !1073
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 128, !dbg !29072
  %.val62.i.i = load i64, ptr %i.ac, align 8, !dbg !29072, !alias.scope !29022, !noundef !1073
  %i.ad = icmp eq i64 %.val62.i.i, %.val.i.i, !dbg !29073
  br i1 %i.ad, label %bb.h, label %bb.p, !dbg !29073

bb.h:                                             ; preds = %bb.g, %_RINvMNtCscgRAwXFJnXP_4core6optionINtB3_6OptionRINtNtNtCsgZ49sUHp3tW_5alloc3vec9into_iter8IntoIterINtNtB5_6result6ResultINtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet5write8dyn_iter20DynStreamingIteratorNtNtB20_4page14CompressedPageNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEB3I_EEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECslpwjCj2YNBy_9polars_io.exit65.i.i
  br label %bb.p, !dbg !29074

bb.i:                                             ; preds = %bb.c
  store i64 0, ptr %0, align 8, !dbg !29075
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !29075
  store ptr inttoptr (i64 8 to ptr), ptr %i.ae, align 8, !dbg !29075
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !29075
  store i64 0, ptr %i.af, align 8, !dbg !29075
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !29076
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !29077
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 136, !dbg !29078 ; 2 uses
  %i.ah = load ptr, ptr %i.ag, align 8, !dbg !29079, !alias.scope !29026, !noundef !1073
  %i.ai = icmp eq ptr %i.ah, null, !dbg !29079
  br i1 %i.ai, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtCsgZ49sUHp3tW_5alloc3vec9into_iter8IntoIterINtNtB4_6result6ResultINtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet5write8dyn_iter20DynStreamingIteratorNtNtB2j_4page14CompressedPageNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEB41_EEEECslpwjCj2YNBy_9polars_io.exit.i.i, label %bb.j, !dbg !29079

bb.j:                                             ; preds = %bb.i
  invoke void @_RNvXse_NtNtCsgZ49sUHp3tW_5alloc3vec9into_iterINtB5_8IntoIterINtNtCscgRAwXFJnXP_4core6result6ResultINtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet5write8dyn_iter20DynStreamingIteratorNtNtB1F_4page14CompressedPageNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEB3n_EENtNtNtB11_3ops4drop4Drop4dropCslpwjCj2YNBy_9polars_io(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.ag)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtCsgZ49sUHp3tW_5alloc3vec9into_iter8IntoIterINtNtB4_6result6ResultINtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet5write8dyn_iter20DynStreamingIteratorNtNtB2j_4page14CompressedPageNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEB41_EEEECslpwjCj2YNBy_9polars_io.exit.i.i unwind label %bb.k, !dbg !29080

bb.k:                                             ; preds = %bb.j
  %i.aj = landingpad { ptr, i32 }
end_hunk_0
