Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pola-rs/original/polars_core-ad80a04fff11224b.polars_core.149bbfd31402d64a-cgu.03?download=true
inline.NumInlined: 23643
inline.NumDeleted: 6782
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_RNvXs2_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array4castINtB7_12ChunkedArrayNtNtB9_9datatypes10StringTypeENtNtB7_3ops9ChunkCast17cast_with_options:bb.a
  %i.lt = getelementptr inbounds nuw i8, ptr %i.an, i64 8, !dbg !361042
  store ptr %i.ls, ptr %i.lt, align 8, !dbg !361042
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am), !dbg !361046
  invoke void @_RNvNtNtCs1LHh8CLbVkQ_11polars_core5utils6series23handle_casting_failures(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.ao, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.an, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.bb)
          to label %bb.dj unwind label %bb.dh, !dbg !361041

bb.dh:                                            ; preds = %_RNvXs0_NtNtCs1LHh8CLbVkQ_11polars_core6series15implementationsINtNtB9_13chunked_array12ChunkedArrayNtNtB9_9datatypes10StringTypeENtNtB7_4from10IntoSeries11into_seriesB9_.exit
  %i.lu = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.lv = atomicrmw sub ptr %i.lr, i64 1 release, align 8, !dbg !361047, !noalias !361053
  %i.lw = icmp eq i64 %i.lv, 1, !dbg !361060
  br i1 %i.lw, label %bb.di, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEBK_.exit175, !dbg !361060

bb.di:                                            ; preds = %bb.dh
  fence acquire, !dbg !361061
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcDNtNtNtCs1LHh8CLbVkQ_11polars_core6series12series_trait11SeriesTraitEL_E9drop_slowBN_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.an) #42
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEBK_.exit175 unwind label %bb.y, !dbg !361063

bb.dj:                                            ; preds = %_RNvXs0_NtNtCs1LHh8CLbVkQ_11polars_core6series15implementationsINtNtB9_13chunked_array12ChunkedArrayNtNtB9_9datatypes10StringTypeENtNtB7_4from10IntoSeries11into_seriesB9_.exit
  %i.lx = load i64, ptr %i.ao, align 8, !dbg !361064, !range !584, !noundef !11
  %.not113 = icmp eq i64 %i.lx, 18, !dbg !361064
  br i1 %.not113, label %bb.dm, label %bb.dk, !dbg !361065

bb.dk:                                            ; preds = %bb.dj
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %i.ao, i64 72, i1 false), !dbg !361066
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao), !dbg !361067
  %i.ly = atomicrmw sub ptr %i.lr, i64 1 release, align 8, !dbg !361068, !noalias !361074
  %i.lz = icmp eq i64 %i.ly, 1, !dbg !361081
  br i1 %i.lz, label %bb.dl, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEBK_.exit177, !dbg !361081

bb.dl:                                            ; preds = %bb.dk
  fence acquire, !dbg !361082
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcDNtNtNtCs1LHh8CLbVkQ_11polars_core6series12series_trait11SeriesTraitEL_E9drop_slowBN_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.an) #42
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEBK_.exit177 unwind label %bb.da, !dbg !361084

bb.dm:                                            ; preds = %bb.dj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao), !dbg !361067
  %i.ma = atomicrmw sub ptr %i.lr, i64 1 release, align 8, !dbg !361085, !noalias !361091
  %i.mb = icmp eq i64 %i.ma, 1, !dbg !361098
  br i1 %i.mb, label %bb.dn, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEBK_.exit179, !dbg !361098

bb.dn:                                            ; preds = %bb.dm
  fence acquire, !dbg !361099
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcDNtNtNtCs1LHh8CLbVkQ_11polars_core6series12series_trait11SeriesTraitEL_E9drop_slowBN_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.an) #42
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEBK_.exit179 unwind label %bb.da, !dbg !361101

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEBK_.exit179: ; preds = %bb.dm, %bb.dn
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an), !dbg !361102
  %.pre = load ptr, ptr %i.bb, align 8, !dbg !361030
  %.pre226 = load ptr, ptr %i.lg, align 8, !dbg !361030
  br label %bb.dc, !dbg !361103

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEBK_.exit177: ; preds = %bb.dk, %bb.dl
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an), !dbg !361102
  call void @llvm.experimental.noalias.scope.decl(metadata !361104), !dbg !360999
  call void @llvm.experimental.noalias.scope.decl(metadata !361107), !dbg !361110
  call void @llvm.experimental.noalias.scope.decl(metadata !361112), !dbg !361115
  %i.mc = load ptr, ptr %i.bb, align 8, !dbg !361117, !alias.scope !361121, !nonnull !11, !noundef !11
  %i.md = atomicrmw sub ptr %i.mc, i64 1 release, align 8, !dbg !361122, !noalias !361121
  %i.me = icmp eq i64 %i.md, 1, !dbg !361125
  br i1 %i.me, label %bb.do, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEBK_.exit180, !dbg !361125

bb.do:                                            ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEBK_.exit177
  fence acquire, !dbg !361126
  call void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcDNtNtNtCs1LHh8CLbVkQ_11polars_core6series12series_trait11SeriesTraitEL_E9drop_slowBN_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.bb) #42, !dbg !361128
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEBK_.exit180, !dbg !361128

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEBK_.exit180: ; preds = %bb.do, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEBK_.exit177, %bb.ch, %bb.cp, %bb.cx
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bb), !dbg !360999
  br label %bb.o, !dbg !360389

bb.dp:                                            ; preds = %bb.cv
  %i.mf = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.mg = getelementptr inbounds nuw i8, ptr %i.as, i64 23, !dbg !361129
  %i.mh = load i8, ptr %i.mg, align 1, !dbg !361129, !range !434, !alias.scope !361136, !noundef !11
  %i.mi = icmp eq i8 %i.mh, -40, !dbg !361145
  br i1 %i.mi, label %bb.dq, label %common.resume, !dbg !361145, !prof !54

bb.dq:                                            ; preds = %bb.dp
  invoke void @_RNvNvXs2_NtCs7VARH73bmU_11compact_str4reprNtB7_4ReprNtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4drop13outlined_drop(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.as)
          to label %common.resume unwind label %bb.y, !dbg !361146

bb.dr:                                            ; preds = %bb.h
  call void @_RNvNvXs1_NtCs7VARH73bmU_11compact_str4reprNtB7_4ReprNtNtCscgRAwXFJnXP_4core5clone5Clone5clone10clone_heap(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.k, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.cz) #42, !dbg !361147
  br label %bb.dt, !dbg !361147

bb.ds:                                            ; preds = %bb.h
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.k, ptr noundef nonnull align 8 dereferenceable(24) %i.cz, i64 24, i1 false), !dbg !361148
  br label %bb.dt, !dbg !361150

bb.dt:                                            ; preds = %bb.ds, %bb.dr
  %i.mj = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !361151
  %i.mk = load ptr, ptr %i.mj, align 8, !dbg !361151, !nonnull !11, !noundef !11
  %i.ml = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !361163
  %i.mm = load i64, ptr %i.ml, align 8, !dbg !361163, !noundef !11
  %i.mn = getelementptr inbounds nuw i8, ptr %2, i64 16, !dbg !361164
  %i.mo = load ptr, ptr %i.mn, align 16, !dbg !361164, !nonnull !11, !noundef !11
  %i.mp = getelementptr inbounds nuw i8, ptr %2, i64 24, !dbg !361182
  %i.mq = load i64, ptr %i.mp, align 8, !dbg !361182, !noundef !11
  call void @_RNvNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array4cast21cast_single_to_struct(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %0, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.k, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.mk, i64 noundef %i.mm, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) %i.mo, i64 noundef %i.mq, i8 noundef %3), !dbg !361183
  br label %bb.o, !dbg !361184

bb.du:                                            ; preds = %bb.b
  call void @_RNvNvXs1_NtCs7VARH73bmU_11compact_str4reprNtB7_4ReprNtNtCscgRAwXFJnXP_4core5clone5Clone5clone10clone_heap(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.f, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bq) #42, !dbg !361185
  br label %bb.dw, !dbg !361185

bb.dv:                                            ; preds = %bb.b
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.f, ptr noundef nonnull align 8 dereferenceable(24) %i.bq, i64 24, i1 false), !dbg !361186
  br label %bb.dw, !dbg !361188

bb.dw:                                            ; preds = %bb.dv, %bb.du
  %i.mr = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !361189
  %i.ms = load ptr, ptr %i.mr, align 8, !dbg !361189, !nonnull !11, !noundef !11
  %i.mt = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !361201
  %i.mu = load i64, ptr %i.mt, align 8, !dbg !361201, !noundef !11
  call void @_RNvNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array4cast9cast_impl(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(address) dereferenceable(72) %0, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.f, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.ms, i64 noundef %i.mu, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(48) %2, i8 noundef %3), !dbg !361202
  br label %bb.o, !dbg !361203
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs2_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7bitwiseINtB7_12ChunkedArrayNtNtB9_9datatypes11BooleanTypeENtNtNtCscgRAwXFJnXP_4core3ops3bit5BitOr5bitor(ptr dead_on_unwind noalias noundef writable sret([56 x i8]) align 8 captures(address) dereferenceable(56) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(56) %1, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(56) %2) unnamed_addr #2 personality ptr @rust_eh_personality !dbg !361204 {
bb.a:
  invoke void @_RNvXs1_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7bitwiseRINtB7_12ChunkedArrayNtNtB9_9datatypes11BooleanTypeENtNtNtCscgRAwXFJnXP_4core3ops3bit5BitOr5bitor(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(address) dereferenceable(56) %0, ptr noundef nonnull align 8 %1, ptr noundef nonnull align 8 %2)
          to label %bb.c unwind label %bb.b, !dbg !361206

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtBL_9datatypes11BooleanTypeEEBL_(ptr noalias noundef align 8 dereferenceable(56) %2) #36
          to label %bb.d unwind label %bb.g, !dbg !361207

bb.c:                                             ; preds = %bb.a
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtBL_9datatypes11BooleanTypeEEBL_(ptr noalias noundef align 8 dereferenceable(56) %2)
          to label %bb.f unwind label %bb.e, !dbg !361207

bb.d:                                             ; preds = %bb.e, %bb.b
  %.pn = phi { ptr, i32 } [ %i.b, %bb.e ], [ %i.a, %bb.b ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtBL_9datatypes11BooleanTypeEEBL_(ptr noalias noundef align 8 dereferenceable(56) %1) #36
          to label %bb.h unwind label %bb.g, !dbg !361207

bb.e:                                             ; preds = %bb.c
  %i.b = landingpad { ptr, i32 }
          cleanup
  br label %bb.d

bb.f:                                             ; preds = %bb.c
  tail call fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtBL_9datatypes11BooleanTypeEEBL_(ptr noalias noundef align 8 dereferenceable(56) %1), !dbg !361207
  ret void, !dbg !361208

bb.g:                                             ; preds = %bb.d, %bb.b
  %i.c = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #38, !dbg !361209
  unreachable, !dbg !361209

bb.h:                                             ; preds = %bb.d
  resume { ptr, i32 } %.pn, !dbg !361209
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs2_NtNtCs1LHh8CLbVkQ_11polars_core7hashing13vector_hasherINtNtB9_13chunked_array12ChunkedArrayNtNtB9_9datatypes11BooleanTypeENtB5_7VecHash16vec_hash_combine(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([72 x i8]) align 8 captures(none) dereferenceable(72) %0, ptr nofree noundef nonnull readonly align 8 captures(none) %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %2, i64 noundef %3, ptr noalias noundef nonnull align 8 %4, i64 noundef range(i64 0, 1152921504606846976) %5) unnamed_addr #2 personality ptr @rust_eh_personality !dbg !361210 {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 8 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [72 x i8], align 8                ; 4 uses
  %i.d = alloca [128 x i8], align 8               ; 15 uses
  %i.e = alloca [8 x i8], align 8                 ; 4 uses
  %i.f = alloca [40 x i8], align 8                ; 7 uses
  %i.g = alloca [8 x i8], align 8                 ; 4 uses
  %i.h = alloca [8 x i8], align 8                 ; 5 uses
  %i.i = alloca [8 x i8], align 8                 ; 5 uses
  %i.j = alloca [16 x i8], align 8                ; 5 uses
  store ptr %2, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store i64 %3, ptr %i.k, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !dbg !361212
  %i.l = call noundef i64 @_RINvYNtNtCsk79RHlfmHDk_8foldhash7quality19SeedableRandomStateNtNtCscgRAwXFJnXP_4core4hash11BuildHasher8hash_onebECs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.j, i1 noundef zeroext true), !dbg !361213
  store i64 %i.l, ptr %i.i, align 8, !dbg !361213
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !dbg !361214
  %i.m = call noundef i64 @_RINvYNtNtCsk79RHlfmHDk_8foldhash7quality19SeedableRandomStateNtNtCscgRAwXFJnXP_4core4hash11BuildHasher8hash_onebECs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.j, i1 noundef zeroext false), !dbg !361216
  store i64 %i.m, ptr %i.h, align 8, !dbg !361216
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !dbg !361217
  %i.n = call noundef i64 @_RNvNtNtCs1LHh8CLbVkQ_11polars_core7hashing13vector_hasher19get_null_hash_value(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.j), !dbg !361219
  store i64 %i.n, ptr %i.g, align 8, !dbg !361219
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !361220
  %i.p = load ptr, ptr %i.o, align 8, !dbg !361220, !nonnull !11, !noundef !11
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !361237
  %i.r = load i64, ptr %i.q, align 8, !dbg !361237, !noundef !11 ; 2 uses
  %i.s = icmp eq i64 %i.r, 0, !dbg !361238
  br i1 %i.s, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB2j_8adapters3map8map_foldRBQ_RNtNtB1s_7boolean12BooleanArrayuNCNvMs_NtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops8downcastINtB4i_12ChunkedArrayNtNtB4k_9datatypes11BooleanTypeE13downcast_iter0NCINvNvB2d_8for_each4callB3B_NCNvXs2_NtNtB4k_7hashing13vector_hasherB5d_NtB6V_7VecHash16vec_hash_combine0E0E0EB4k_.exit, label %bb.b, !dbg !361249

bb.b:                                             ; preds = %bb.a
  %.sroa.429.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.530.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.631.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %.sroa.732.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %5 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.d, i64 72 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.d, i64 112
  %.sroa.43.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.54.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.w = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  %i.x = getelementptr inbounds nuw i8, ptr %i.d, i64 64
  %i.y = getelementptr inbounds nuw i8, ptr %i.d, i64 104
  %i.z = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.aa = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.ac = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %i.ad = getelementptr inbounds nuw i8, ptr %i.d, i64 96
  %.phi.trans.insert.i.i.i13.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 88
  %.sroa.5.0..sroa_idx23.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %.sroa.6.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %.sroa.7.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  br label %bb.c, !dbg !361250

bb.c:                                             ; preds = %_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map8map_foldRINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_ERNtNtB1x_7boolean12BooleanArrayuNCNvMs_NtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops8downcastINtB2Y_12ChunkedArrayNtNtB30_9datatypes11BooleanTypeE13downcast_iter0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB2h_NCNvXs2_NtNtB30_7hashing13vector_hasherB3T_NtB65_7VecHash16vec_hash_combine0E0E0B30_.exit.i, %bb.b
  %.sroa.0.0 = phi i64 [ 0, %bb.b ], [ %i.dx, %_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map8map_foldRINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_ERNtNtB1x_7boolean12BooleanArrayuNCNvMs_NtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops8downcastINtB2Y_12ChunkedArrayNtNtB30_9datatypes11BooleanTypeE13downcast_iter0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB2h_NCNvXs2_NtNtB30_7hashing13vector_hasherB3T_NtB65_7VecHash16vec_hash_combine0E0E0B30_.exit.i ], !dbg !361254 ; 7 uses
  %.sroa.01.0.i = phi i64 [ 0, %bb.b ], [ %i.dy, %_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map8map_foldRINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_ERNtNtB1x_7boolean12BooleanArrayuNCNvMs_NtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops8downcastINtB2Y_12ChunkedArrayNtNtB30_9datatypes11BooleanTypeE13downcast_iter0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB2h_NCNvXs2_NtNtB30_7hashing13vector_hasherB3T_NtB65_7VecHash16vec_hash_combine0E0E0B30_.exit.i ], !dbg !361255 ; 2 uses
  %i.ae = getelementptr inbounds nuw [16 x i8], ptr %i.p, i64 %.sroa.01.0.i, !dbg !361256
  %.val.i = load ptr, ptr %i.ae, align 8, !dbg !361260, !noalias !361261, !nonnull !11, !noundef !11 ; 9 uses
  %.val.i.i.i.i.i = load i8, ptr %.val.i, align 8, !dbg !361264, !range !53624, !noalias !361274, !noundef !11
  %i.af = icmp eq i8 %.val.i.i.i.i.i, 0, !dbg !361281
  br i1 %i.af, label %bb.e, label %bb.d, !dbg !361283

bb.d:                                             ; preds = %bb.c
  %i.ag = getelementptr inbounds nuw i8, ptr %.val.i, i64 64, !dbg !361284 ; 2 uses
  %i.ah = load ptr, ptr %i.ag, align 8, !dbg !361284, !noalias !361274, !noundef !11
  %.not.i.i.i.i.i.i = icmp eq ptr %i.ah, null, !dbg !361284
  br i1 %.not.i.i.i.i.i.i, label %_RNvYNtNtNtCs8774dFTUdNv_12polars_arrow5array7boolean12BooleanArrayNtB6_5Array10null_countCs1LHh8CLbVkQ_11polars_core.exit.thread.i.i.i.i, label %bb.f, !dbg !361287

bb.e:                                             ; preds = %bb.c
  %i.ai = getelementptr inbounds nuw i8, ptr %.val.i, i64 48, !dbg !361289
  %i.aj = load i64, ptr %i.ai, align 8, !dbg !361289, !noalias !361274, !noundef !11
  br label %_RNvYNtNtNtCs8774dFTUdNv_12polars_arrow5array7boolean12BooleanArrayNtB6_5Array10null_countCs1LHh8CLbVkQ_11polars_core.exit.i.i.i.i, !dbg !361293

bb.f:                                             ; preds = %bb.d
  %i.ak = call noundef i64 @_RNvMs_NtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutableNtB4_6Bitmap10unset_bits(ptr noundef nonnull align 8 %i.ag), !dbg !361294, !noalias !361274
  br label %_RNvYNtNtNtCs8774dFTUdNv_12polars_arrow5array7boolean12BooleanArrayNtB6_5Array10null_countCs1LHh8CLbVkQ_11polars_core.exit.i.i.i.i, !dbg !361297

_RNvYNtNtNtCs8774dFTUdNv_12polars_arrow5array7boolean12BooleanArrayNtB6_5Array10null_countCs1LHh8CLbVkQ_11polars_core.exit.i.i.i.i: ; preds = %bb.f, %bb.e
  %.sroa.0.1.i.i.i.i.i = phi i64 [ %i.aj, %bb.e ], [ %i.ak, %bb.f ], !dbg !361300
  %i.al = icmp eq i64 %.sroa.0.1.i.i.i.i.i, 0, !dbg !361301
  br i1 %i.al, label %_RNvYNtNtNtCs8774dFTUdNv_12polars_arrow5array7boolean12BooleanArrayNtB6_5Array10null_countCs1LHh8CLbVkQ_11polars_core.exit.thread.i.i.i.i, label %bb.g, !dbg !361301

_RNvYNtNtNtCs8774dFTUdNv_12polars_arrow5array7boolean12BooleanArrayNtB6_5Array10null_countCs1LHh8CLbVkQ_11polars_core.exit.thread.i.i.i.i: ; preds = %_RNvYNtNtNtCs8774dFTUdNv_12polars_arrow5array7boolean12BooleanArrayNtB6_5Array10null_countCs1LHh8CLbVkQ_11polars_core.exit.i.i.i.i, %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !361302, !noalias !361274
  %i.am = getelementptr inbounds nuw i8, ptr %.val.i, i64 32, !dbg !361303
  call void @_RNvMs_NtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutableNtB4_6Bitmap4iter(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.f, ptr noundef nonnull align 8 %i.am), !dbg !361308, !noalias !361274
  %i.an = icmp ugt i64 %.sroa.0.0, %5, !dbg !361309
  br i1 %i.an, label %bb.l, label %bb.h, !dbg !361309, !prof !54

bb.g:                                             ; preds = %_RNvYNtNtNtCs8774dFTUdNv_12polars_arrow5array7boolean12BooleanArrayNtB6_5Array10null_countCs1LHh8CLbVkQ_11polars_core.exit.i.i.i.i
  %i.ao = getelementptr inbounds nuw i8, ptr %.val.i, i64 64, !dbg !361314
  %i.ap = load ptr, ptr %i.ao, align 8, !dbg !361314, !noalias !361274, !noundef !11 ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.ap, null, !dbg !361314
  br i1 %.not.i.i.i.i, label %bb.o, label %bb.m, !dbg !361319, !prof !54

bb.h:                                             ; preds = %_RNvYNtNtNtCs8774dFTUdNv_12polars_arrow5array7boolean12BooleanArrayNtB6_5Array10null_countCs1LHh8CLbVkQ_11polars_core.exit.thread.i.i.i.i
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %.sroa.0.0, !dbg !361320
  %.sroa.0.0.copyload.i.i.i.i = load ptr, ptr %i.f, align 8, !dbg !361325, !alias.scope !361332, !noalias !361339
  %.sroa.5.0.copyload.i.i.i.i = load i64, ptr %.sroa.5.0..sroa_idx23.i.i.i.i, align 8, !dbg !361325, !alias.scope !361332, !noalias !361339
  %.sroa.6.0.copyload.i.i.i.i = load i64, ptr %.sroa.6.0..sroa_idx.i.i.i.i, align 8, !dbg !361325, !alias.scope !361332, !noalias !361339
  %.sroa.7.0.copyload.i.i.i.i = load i64, ptr %.sroa.7.0..sroa_idx.i.i.i.i, align 8, !dbg !361325, !alias.scope !361332, !noalias !361339
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !361341, !noalias !361274
  call void @llvm.experimental.noalias.scope.decl(metadata !361342), !dbg !361345
  call void @llvm.experimental.noalias.scope.decl(metadata !361352), !dbg !361345
  %.val.i11.i.i.i.i = load i64, ptr %i.i, align 8, !alias.scope !361342, !noalias !361354
  %.val13.i.i.i.i.i = load i64, ptr %i.h, align 8, !alias.scope !361352, !noalias !361356
  br label %bb.i, !dbg !361357

bb.i:                                             ; preds = %bb.k, %bb.h
  %i.ar = phi ptr [ %i.bh, %bb.k ], [ %i.aq, %bb.h ] ; 4 uses
  %.pre.i.i16.i.i.i.i.i = phi i64 [ %i.bf, %bb.k ], [ %.sroa.5.0.copyload.i.i.i.i, %bb.h ]
  %i.as = phi ptr [ %i.az, %bb.k ], [ %.sroa.0.0.copyload.i.i.i.i, %bb.h ] ; 3 uses
  %i.at = phi i64 [ %i.ba, %bb.k ], [ %.sroa.7.0.copyload.i.i.i.i, %bb.h ] ; 4 uses
  %i.au = phi i64 [ %i.be, %bb.k ], [ %.sroa.6.0.copyload.i.i.i.i, %bb.h ] ; 2 uses
  %i.av = icmp eq i64 %i.au, 0, !dbg !361361
  br i1 %i.av, label %bb.j, label %_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i.i.i.i.i, !dbg !361361

bb.j:                                             ; preds = %bb.i
  %i.aw = icmp eq i64 %i.at, 0, !dbg !361366
  br i1 %i.aw, label %_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map8map_foldRINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_ERNtNtB1x_7boolean12BooleanArrayuNCNvMs_NtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops8downcastINtB2Y_12ChunkedArrayNtNtB30_9datatypes11BooleanTypeE13downcast_iter0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB2h_NCNvXs2_NtNtB30_7hashing13vector_hasherB3T_NtB65_7VecHash16vec_hash_combine0E0E0B30_.exit.i, label %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs1LHh8CLbVkQ_11polars_core.exit.i.i.i.i.i.i.i, !dbg !361366

_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs1LHh8CLbVkQ_11polars_core.exit.i.i.i.i.i.i.i: ; preds = %bb.j
  %.sroa.0.0.i.i.i.i.i.i.i.i = call noundef i64 @llvm.umin.i64(i64 %i.at, i64 64), !dbg !361367 ; 2 uses
  %i.ax = sub i64 %i.at, %.sroa.0.0.i.i.i.i.i.i.i.i, !dbg !361369
  %.sroa.02.0.copyload.i.i.i.i.i.i.i = load i64, ptr %i.as, align 1, !dbg !361370, !noalias !361374
  %i.ay = getelementptr inbounds nuw i8, ptr %i.as, i64 8, !dbg !361379
  br label %_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i.i.i.i.i, !dbg !361384

_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i.i.i.i.i: ; preds = %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs1LHh8CLbVkQ_11polars_core.exit.i.i.i.i.i.i.i, %bb.i
  %i.az = phi ptr [ %i.ay, %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs1LHh8CLbVkQ_11polars_core.exit.i.i.i.i.i.i.i ], [ %i.as, %bb.i ]
  %i.ba = phi i64 [ %i.ax, %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs1LHh8CLbVkQ_11polars_core.exit.i.i.i.i.i.i.i ], [ %i.at, %bb.i ]
  %i.bb = phi i64 [ %.sroa.0.0.i.i.i.i.i.i.i.i, %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs1LHh8CLbVkQ_11polars_core.exit.i.i.i.i.i.i.i ], [ %i.au, %bb.i ], !dbg !361385
  %i.bc = phi i64 [ %.sroa.02.0.copyload.i.i.i.i.i.i.i, %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs1LHh8CLbVkQ_11polars_core.exit.i.i.i.i.i.i.i ], [ %.pre.i.i16.i.i.i.i.i, %bb.i ], !dbg !361386 ; 2 uses
  %i.bd = icmp eq ptr %i.ar, %i.t, !dbg !361387
  br i1 %i.bd, label %_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map8map_foldRINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_ERNtNtB1x_7boolean12BooleanArrayuNCNvMs_NtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops8downcastINtB2Y_12ChunkedArrayNtNtB30_9datatypes11BooleanTypeE13downcast_iter0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB2h_NCNvXs2_NtNtB30_7hashing13vector_hasherB3T_NtB65_7VecHash16vec_hash_combine0E0E0B30_.exit.i, label %bb.k, !dbg !361392

bb.k:                                             ; preds = %_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i.i.i.i.i
  %i.be = add i64 %i.bb, -1, !dbg !361385
  %i.bf = lshr i64 %i.bc, 1, !dbg !361393
  %i.bg = trunc i64 %i.bc to i1, !dbg !361386
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ar, i64 8, !dbg !361394
  %.sroa.0.0.i.i.i.i.i.i.i = select i1 %i.bg, i64 %.val.i11.i.i.i.i, i64 %.val13.i.i.i.i.i, !dbg !361396 ; 2 uses
  %i.bi = load i64, ptr %i.ar, align 8, !dbg !361403, !alias.scope !361405, !noalias !361410, !noundef !11 ; 2 uses
  %i.bj = shl i64 %.sroa.0.0.i.i.i.i.i.i.i, 6, !dbg !361413
  %i.bk = lshr i64 %i.bi, 2, !dbg !361416
  %i.bl = add i64 %i.bj, 2654435769, !dbg !361417
  %i.bm = add i64 %i.bl, %i.bi, !dbg !361420
  %i.bn = add i64 %i.bm, %i.bk, !dbg !361422
  %i.bo = xor i64 %i.bn, %.sroa.0.0.i.i.i.i.i.i.i, !dbg !361424
  store i64 %i.bo, ptr %i.ar, align 8, !dbg !361425, !alias.scope !361405, !noalias !361410
  br label %bb.i, !dbg !361357

bb.l:                                             ; preds = %_RNvYNtNtNtCs8774dFTUdNv_12polars_arrow5array7boolean12BooleanArrayNtB6_5Array10null_countCs1LHh8CLbVkQ_11polars_core.exit.thread.i.i.i.i
  call void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef %.sroa.0.0, i64 noundef %5, i64 noundef %5, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @84) #39, !dbg !361426, !noalias !361274
  unreachable, !dbg !361426

bb.m:                                             ; preds = %bb.g
  %i.bp = getelementptr inbounds nuw i8, ptr %.val.i, i64 72, !dbg !361427
  %i.bq = load i64, ptr %i.bp, align 8, !dbg !361427, !noalias !361430, !noundef !11 ; 2 uses
  %i.br = lshr i64 %i.bq, 3, !dbg !361427         ; 3 uses
  %i.bs = and i64 %i.bq, 7, !dbg !361433          ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %.val.i, i64 80, !dbg !361434
  %i.bu = load i64, ptr %i.bt, align 8, !dbg !361434, !noalias !361430, !noundef !11 ; 2 uses
  %i.bv = add i64 %i.bs, %i.bu, !dbg !361435
  %i.bw = call i64 @llvm.uadd.sat.i64(i64 %i.bv, i64 7), !dbg !361436
  %i.bx = lshr i64 %i.bw, 3, !dbg !361435         ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.ap, i64 40, !dbg !361438
  %i.bz = load i64, ptr %i.by, align 8, !dbg !361438, !noalias !361430, !noundef !11 ; 2 uses
  %i.ca = add nuw nsw i64 %i.bx, %i.br, !dbg !361440 ; 2 uses
  %.not.i.i.i.i.i = icmp ugt i64 %i.ca, %i.bz, !dbg !361441
  br i1 %.not.i.i.i.i.i, label %bb.n, label %_RNvMs_NtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutableNtB4_6Bitmap8as_slice.exit.i.i.i.i, !dbg !361441, !prof !54

bb.n:                                             ; preds = %bb.m
  call void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef %i.br, i64 noundef %i.ca, i64 noundef %i.bz, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @243) #39, !dbg !361444, !noalias !361430
  unreachable, !dbg !361444

_RNvMs_NtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutableNtB4_6Bitmap8as_slice.exit.i.i.i.i: ; preds = %bb.m
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ap, i64 32, !dbg !361445
  %i.cc = load ptr, ptr %i.cb, align 8, !dbg !361445, !noalias !361430, !nonnull !11, !noundef !11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !361446, !noalias !361274
  store i64 %i.bs, ptr %i.e, align 8, !dbg !361446, !noalias !361274
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !361447, !noalias !361274
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !361447, !noalias !361274
  %i.cd = icmp ugt i64 %.sroa.0.0, %5, !dbg !361449
  br i1 %i.cd, label %bb.r, label %bb.p, !dbg !361449, !prof !54

bb.o:                                             ; preds = %bb.g
  call void @_RNvNtCscgRAwXFJnXP_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @85) #39, !dbg !361453, !noalias !361274
  unreachable, !dbg !361453

bb.p:                                             ; preds = %_RNvMs_NtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutableNtB4_6Bitmap8as_slice.exit.i.i.i.i
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cc, i64 %i.br, !dbg !361456
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %.sroa.0.0, !dbg !361458
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !361463, !noalias !361466
  store ptr %i.ce, ptr %i.a, align 8, !dbg !361463, !noalias !361471
  store i64 %i.bx, ptr %.sroa.429.0..sroa_idx.i.i.i.i, align 8, !dbg !361463, !noalias !361471
  store ptr %i.e, ptr %.sroa.530.0..sroa_idx.i.i.i.i, align 8, !dbg !361463, !noalias !361471
  store i64 0, ptr %.sroa.631.0..sroa_idx.i.i.i.i, align 8, !dbg !361463, !noalias !361471
  store i64 %i.bu, ptr %.sroa.732.0..sroa_idx.i.i.i.i, align 8, !dbg !361463, !noalias !361471
  call void @_RNvXs3_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB5_3ZipINtNtB7_3map3MapINtNtNtBb_3ops5range5RangejENCNCNvXs2_NtNtCs1LHh8CLbVkQ_11polars_core7hashing13vector_hasherINtNtB1S_13chunked_array12ChunkedArrayNtNtB1S_9datatypes11BooleanTypeENtB1O_7VecHash16vec_hash_combine0s_0EINtNtNtBb_5slice4iter7IterMutyEEINtB5_7ZipImplBW_B4p_E3newB1S_(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.c, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(40) %i.a, ptr noundef nonnull align 8 %i.cf, ptr noundef nonnull %i.t), !dbg !361472, !noalias !361475
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !361476, !noalias !361466
  %i.cg = getelementptr inbounds nuw i8, ptr %.val.i, i64 32, !dbg !361477
  call void @llvm.experimental.noalias.scope.decl(metadata !361479), !dbg !361482
  call void @_RNvXs4_NtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutableRNtB5_6BitmapNtNtNtNtCscgRAwXFJnXP_4core4iter6traits7collect12IntoIterator9into_iter(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.u, ptr noundef nonnull align 8 %i.cg), !dbg !361483, !noalias !361486
  call void @llvm.experimental.noalias.scope.decl(metadata !361487), !dbg !361490
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %i.d, ptr noundef nonnull readonly align 8 dereferenceable(72) %i.c, i64 72, i1 false), !dbg !361493, !alias.scope !361496, !noalias !361499
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.v, i8 0, i64 16, i1 false), !dbg !361493, !alias.scope !361501, !noalias !361502
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !361503, !noalias !361274
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !361504, !noalias !361274
  store ptr %i.i, ptr %i.b, align 8, !dbg !361507, !noalias !361274
  store ptr %i.h, ptr %.sroa.43.0..sroa_idx.i.i.i.i, align 8, !dbg !361507, !noalias !361274
  store ptr %i.g, ptr %.sroa.54.0..sroa_idx.i.i.i.i, align 8, !dbg !361507, !noalias !361274
  call void @llvm.experimental.noalias.scope.decl(metadata !361511), !dbg !361514
  call void @llvm.experimental.noalias.scope.decl(metadata !361520), !dbg !361514
  %i.ch = load i64, ptr %i.x, align 8, !alias.scope !361522, !noalias !361529, !noundef !11 ; 2 uses
  %.promoted.i12.i.i.i.i = load i64, ptr %i.w, align 8, !alias.scope !361522, !noalias !361529 ; 2 uses
  %i.ci = icmp ult i64 %.promoted.i12.i.i.i.i, %i.ch, !dbg !361531
  br i1 %i.ci, label %_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB4_3ZipINtNtB6_3map3MapINtNtNtBa_3ops5range5RangejENCNCNvXs2_NtNtCs1LHh8CLbVkQ_11polars_core7hashing13vector_hasherINtNtB1R_13chunked_array12ChunkedArrayNtNtB1R_9datatypes11BooleanTypeENtB1N_7VecHash16vec_hash_combine0s_0EINtNtNtBa_5slice4iter7IterMutyEENtNtNtB8_6traits8iterator8Iterator4nextB1R_.exit.i.lr.ph.i.i.i.i.i, label %_RINvXsi_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB6_3ZipIBO_INtNtB8_3map3MapINtNtNtBc_3ops5range5RangejENCNCNvXs2_NtNtCs1LHh8CLbVkQ_11polars_core7hashing13vector_hasherINtNtB1X_13chunked_array12ChunkedArrayNtNtB1X_9datatypes11BooleanTypeENtB1T_7VecHash16vec_hash_combine0s_0EINtNtNtBc_5slice4iter7IterMutyEENtNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iterator10BitmapIterENtB6_8SpecFold9spec_folduNCINvNvNtNtNtBa_6traits8iterator8Iterator8for_each4callTTbQyEbENCB1L_s0_0E0EB1X_.exit.i.i.i.i, !dbg !361531

_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB4_3ZipINtNtB6_3map3MapINtNtNtBa_3ops5range5RangejENCNCNvXs2_NtNtCs1LHh8CLbVkQ_11polars_core7hashing13vector_hasherINtNtB1R_13chunked_array12ChunkedArrayNtNtB1R_9datatypes11BooleanTypeENtB1N_7VecHash16vec_hash_combine0s_0EINtNtNtBa_5slice4iter7IterMutyEENtNtNtB8_6traits8iterator8Iterator4nextB1R_.exit.i.lr.ph.i.i.i.i.i: ; preds = %bb.p
  %.promoted12.i.i.i.i.i = load i64, ptr %i.y, align 8, !alias.scope !361511, !noalias !361542
  %.val.i.i.i.i.i.i.i.i.i = load i64, ptr %i.z, align 8, !alias.scope !361543, !noalias !361529, !noundef !11
  %i.cj = load ptr, ptr %i.d, align 8, !alias.scope !361548, !noalias !361529, !nonnull !11, !noundef !11
  %i.ck = load i64, ptr %i.aa, align 8, !alias.scope !361548, !noalias !361529, !noundef !11
  %i.cl = load ptr, ptr %i.ab, align 8, !alias.scope !361548, !noalias !361529, !nonnull !11, !align !358, !noundef !11
  %.val.i.i.i.i.i.i.i.i = load ptr, ptr %i.ac, align 8, !alias.scope !361522, !noalias !361529, !nonnull !11, !noundef !11
  %.promoted15.i14.i.i.i.i = load i64, ptr %i.ad, align 8, !alias.scope !361551, !noalias !361529
  %.phi.trans.insert.i.i.promoted.i15.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i13.i.i.i.i, align 8, !alias.scope !361511, !noalias !361542
  %.promoted17.i16.i.i.i.i = load ptr, ptr %i.u, align 8, !alias.scope !361511, !noalias !361542
  br label %_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB4_3ZipINtNtB6_3map3MapINtNtNtBa_3ops5range5RangejENCNCNvXs2_NtNtCs1LHh8CLbVkQ_11polars_core7hashing13vector_hasherINtNtB1R_13chunked_array12ChunkedArrayNtNtB1R_9datatypes11BooleanTypeENtB1N_7VecHash16vec_hash_combine0s_0EINtNtNtBa_5slice4iter7IterMutyEENtNtNtB8_6traits8iterator8Iterator4nextB1R_.exit.i.i.i.i.i.i, !dbg !361531

_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB4_3ZipINtNtB6_3map3MapINtNtNtBa_3ops5range5RangejENCNCNvXs2_NtNtCs1LHh8CLbVkQ_11polars_core7hashing13vector_hasherINtNtB1R_13chunked_array12ChunkedArrayNtNtB1R_9datatypes11BooleanTypeENtB1N_7VecHash16vec_hash_combine0s_0EINtNtNtBa_5slice4iter7IterMutyEENtNtNtB8_6traits8iterator8Iterator4nextB1R_.exit.i.i.i.i.i.i: ; preds = %._crit_edge.i.i.i.i.i.i.i, %_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB4_3ZipINtNtB6_3map3MapINtNtNtBa_3ops5range5RangejENCNCNvXs2_NtNtCs1LHh8CLbVkQ_11polars_core7hashing13vector_hasherINtNtB1R_13chunked_array12ChunkedArrayNtNtB1R_9datatypes11BooleanTypeENtB1N_7VecHash16vec_hash_combine0s_0EINtNtNtBa_5slice4iter7IterMutyEENtNtNtB8_6traits8iterator8Iterator4nextB1R_.exit.i.lr.ph.i.i.i.i.i
  %i.cm = phi ptr [ %.promoted17.i16.i.i.i.i, %_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB4_3ZipINtNtB6_3map3MapINtNtNtBa_3ops5range5RangejENCNCNvXs2_NtNtCs1LHh8CLbVkQ_11polars_core7hashing13vector_hasherINtNtB1R_13chunked_array12ChunkedArrayNtNtB1R_9datatypes11BooleanTypeENtB1N_7VecHash16vec_hash_combine0s_0EINtNtNtBa_5slice4iter7IterMutyEENtNtNtB8_6traits8iterator8Iterator4nextB1R_.exit.i.lr.ph.i.i.i.i.i ], [ %i.dg, %._crit_edge.i.i.i.i.i.i.i ] ; 3 uses
  %.pre.i.i16.i18.i.i.i.i = phi i64 [ %.phi.trans.insert.i.i.promoted.i15.i.i.i.i, %_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB4_3ZipINtNtB6_3map3MapINtNtNtBa_3ops5range5RangejENCNCNvXs2_NtNtCs1LHh8CLbVkQ_11polars_core7hashing13vector_hasherINtNtB1R_13chunked_array12ChunkedArrayNtNtB1R_9datatypes11BooleanTypeENtB1N_7VecHash16vec_hash_combine0s_0EINtNtNtBa_5slice4iter7IterMutyEENtNtNtB8_6traits8iterator8Iterator4nextB1R_.exit.i.lr.ph.i.i.i.i.i ], [ %i.dl, %._crit_edge.i.i.i.i.i.i.i ]
  %i.cn = phi i64 [ %.promoted15.i14.i.i.i.i, %_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB4_3ZipINtNtB6_3map3MapINtNtNtBa_3ops5range5RangejENCNCNvXs2_NtNtCs1LHh8CLbVkQ_11polars_core7hashing13vector_hasherINtNtB1R_13chunked_array12ChunkedArrayNtNtB1R_9datatypes11BooleanTypeENtB1N_7VecHash16vec_hash_combine0s_0EINtNtNtBa_5slice4iter7IterMutyEENtNtNtB8_6traits8iterator8Iterator4nextB1R_.exit.i.lr.ph.i.i.i.i.i ], [ %i.dm, %._crit_edge.i.i.i.i.i.i.i ] ; 2 uses
  %i.co = phi i64 [ %.promoted.i12.i.i.i.i, %_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB4_3ZipINtNtB6_3map3MapINtNtNtBa_3ops5range5RangejENCNCNvXs2_NtNtCs1LHh8CLbVkQ_11polars_core7hashing13vector_hasherINtNtB1R_13chunked_array12ChunkedArrayNtNtB1R_9datatypes11BooleanTypeENtB1N_7VecHash16vec_hash_combine0s_0EINtNtNtBa_5slice4iter7IterMutyEENtNtNtB8_6traits8iterator8Iterator4nextB1R_.exit.i.lr.ph.i.i.i.i.i ], [ %i.cq, %._crit_edge.i.i.i.i.i.i.i ] ; 3 uses
  %i.cp = phi i64 [ %.promoted12.i.i.i.i.i, %_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB4_3ZipINtNtB6_3map3MapINtNtNtBa_3ops5range5RangejENCNCNvXs2_NtNtCs1LHh8CLbVkQ_11polars_core7hashing13vector_hasherINtNtB1R_13chunked_array12ChunkedArrayNtNtB1R_9datatypes11BooleanTypeENtB1N_7VecHash16vec_hash_combine0s_0EINtNtNtBa_5slice4iter7IterMutyEENtNtNtB8_6traits8iterator8Iterator4nextB1R_.exit.i.lr.ph.i.i.i.i.i ], [ %i.dh, %._crit_edge.i.i.i.i.i.i.i ] ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !361554), !dbg !361555
  call void @llvm.experimental.noalias.scope.decl(metadata !361556), !dbg !361557
  call void @llvm.experimental.noalias.scope.decl(metadata !361558), !dbg !361559
  %i.cq = add i64 %i.co, 1, !dbg !361560          ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !361562), !dbg !361563
  %i.cr = add nuw i64 %i.co, %.val.i.i.i.i.i.i.i.i.i, !dbg !361564
  call void @llvm.experimental.noalias.scope.decl(metadata !361573), !dbg !361574
  %i.cs = load i64, ptr %i.cl, align 8, !dbg !361575, !noalias !361578, !noundef !11
  %i.ct = add i64 %i.cr, %i.cs, !dbg !361579      ; 2 uses
  %i.cu = lshr i64 %i.ct, 3, !dbg !361580         ; 2 uses
  %i.cv = icmp ult i64 %i.cu, %i.ck, !dbg !361583
  call void @llvm.assume(i1 %i.cv), !dbg !361588
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cj, i64 %i.cu, !dbg !361589
  %i.cx = load i8, ptr %i.cw, align 1, !dbg !361590, !noalias !361578, !noundef !11
  %i.cy = trunc i64 %i.ct to i8, !dbg !361591
  %i.cz = and i8 %i.cy, 7, !dbg !361591
  %i.da = lshr i8 %i.cx, %i.cz, !dbg !361591
  %i.db = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i.i.i.i.i.i.i, i64 %i.co, !dbg !361593 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !361596), !dbg !361597
  %i.dc = icmp eq i64 %i.cn, 0, !dbg !361599
  br i1 %i.dc, label %bb.q, label %._crit_edge.i.i.i.i.i.i.i, !dbg !361599

bb.q:                                             ; preds = %_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB4_3ZipINtNtB6_3map3MapINtNtNtBa_3ops5range5RangejENCNCNvXs2_NtNtCs1LHh8CLbVkQ_11polars_core7hashing13vector_hasherINtNtB1R_13chunked_array12ChunkedArrayNtNtB1R_9datatypes11BooleanTypeENtB1N_7VecHash16vec_hash_combine0s_0EINtNtNtBa_5slice4iter7IterMutyEENtNtNtB8_6traits8iterator8Iterator4nextB1R_.exit.i.i.i.i.i.i
  %i.dd = icmp eq i64 %i.cp, 0, !dbg !361601
  br i1 %i.dd, label %_RINvXsi_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB6_3ZipIBO_INtNtB8_3map3MapINtNtNtBc_3ops5range5RangejENCNCNvXs2_NtNtCs1LHh8CLbVkQ_11polars_core7hashing13vector_hasherINtNtB1X_13chunked_array12ChunkedArrayNtNtB1X_9datatypes11BooleanTypeENtB1T_7VecHash16vec_hash_combine0s_0EINtNtNtBc_5slice4iter7IterMutyEENtNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iterator10BitmapIterENtB6_8SpecFold9spec_folduNCINvNvNtNtNtBa_6traits8iterator8Iterator8for_each4callTTbQyEbENCB1L_s0_0E0EB1X_.exit.i.i.i.i, label %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs1LHh8CLbVkQ_11polars_core.exit.i.i.i20.i.i.i.i, !dbg !361601

_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs1LHh8CLbVkQ_11polars_core.exit.i.i.i20.i.i.i.i: ; preds = %bb.q
  %.sroa.0.0.i.i17.i.i.i.i.i.i = call noundef i64 @llvm.umin.i64(i64 %i.cp, i64 64), !dbg !361602 ; 2 uses
  %i.de = sub i64 %i.cp, %.sroa.0.0.i.i17.i.i.i.i.i.i, !dbg !361604
  %.sroa.02.0.copyload.i.i.i21.i.i.i.i = load i64, ptr %i.cm, align 1, !dbg !361605, !noalias !361609
  %i.df = getelementptr inbounds nuw i8, ptr %i.cm, i64 8, !dbg !361610
  br label %._crit_edge.i.i.i.i.i.i.i, !dbg !361615

._crit_edge.i.i.i.i.i.i.i:                        ; preds = %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs1LHh8CLbVkQ_11polars_core.exit.i.i.i20.i.i.i.i, %_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB4_3ZipINtNtB6_3map3MapINtNtNtBa_3ops5range5RangejENCNCNvXs2_NtNtCs1LHh8CLbVkQ_11polars_core7hashing13vector_hasherINtNtB1R_13chunked_array12ChunkedArrayNtNtB1R_9datatypes11BooleanTypeENtB1N_7VecHash16vec_hash_combine0s_0EINtNtNtBa_5slice4iter7IterMutyEENtNtNtB8_6traits8iterator8Iterator4nextB1R_.exit.i.i.i.i.i.i
  %i.dg = phi ptr [ %i.df, %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs1LHh8CLbVkQ_11polars_core.exit.i.i.i20.i.i.i.i ], [ %i.cm, %_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB4_3ZipINtNtB6_3map3MapINtNtNtBa_3ops5range5RangejENCNCNvXs2_NtNtCs1LHh8CLbVkQ_11polars_core7hashing13vector_hasherINtNtB1R_13chunked_array12ChunkedArrayNtNtB1R_9datatypes11BooleanTypeENtB1N_7VecHash16vec_hash_combine0s_0EINtNtNtBa_5slice4iter7IterMutyEENtNtNtB8_6traits8iterator8Iterator4nextB1R_.exit.i.i.i.i.i.i ]
  %i.dh = phi i64 [ %i.de, %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs1LHh8CLbVkQ_11polars_core.exit.i.i.i20.i.i.i.i ], [ %i.cp, %_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB4_3ZipINtNtB6_3map3MapINtNtNtBa_3ops5range5RangejENCNCNvXs2_NtNtCs1LHh8CLbVkQ_11polars_core7hashing13vector_hasherINtNtB1R_13chunked_array12ChunkedArrayNtNtB1R_9datatypes11BooleanTypeENtB1N_7VecHash16vec_hash_combine0s_0EINtNtNtBa_5slice4iter7IterMutyEENtNtNtB8_6traits8iterator8Iterator4nextB1R_.exit.i.i.i.i.i.i ]
  %i.di = phi i64 [ %.sroa.0.0.i.i17.i.i.i.i.i.i, %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs1LHh8CLbVkQ_11polars_core.exit.i.i.i20.i.i.i.i ], [ %i.cn, %_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB4_3ZipINtNtB6_3map3MapINtNtNtBa_3ops5range5RangejENCNCNvXs2_NtNtCs1LHh8CLbVkQ_11polars_core7hashing13vector_hasherINtNtB1R_13chunked_array12ChunkedArrayNtNtB1R_9datatypes11BooleanTypeENtB1N_7VecHash16vec_hash_combine0s_0EINtNtNtBa_5slice4iter7IterMutyEENtNtNtB8_6traits8iterator8Iterator4nextB1R_.exit.i.i.i.i.i.i ], !dbg !361616
  %i.dj = phi i64 [ %.sroa.02.0.copyload.i.i.i21.i.i.i.i, %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs1LHh8CLbVkQ_11polars_core.exit.i.i.i20.i.i.i.i ], [ %.pre.i.i16.i18.i.i.i.i, %_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB4_3ZipINtNtB6_3map3MapINtNtNtBa_3ops5range5RangejENCNCNvXs2_NtNtCs1LHh8CLbVkQ_11polars_core7hashing13vector_hasherINtNtB1R_13chunked_array12ChunkedArrayNtNtB1R_9datatypes11BooleanTypeENtB1N_7VecHash16vec_hash_combine0s_0EINtNtNtBa_5slice4iter7IterMutyEENtNtNtB8_6traits8iterator8Iterator4nextB1R_.exit.i.i.i.i.i.i ], !dbg !361617 ; 2 uses
  %i.dk = trunc i64 %i.dj to i1, !dbg !361617
  %i.dl = lshr i64 %i.dj, 1, !dbg !361618
  %i.dm = add i64 %i.di, -1, !dbg !361616
  call void @llvm.experimental.noalias.scope.decl(metadata !361619), !dbg !361622
  call void @llvm.experimental.noalias.scope.decl(metadata !361623), !dbg !361626
  %i.dn = trunc i8 %i.da to i1, !dbg !361629
  %spec.select.idx.i.i.i.i.i.i.i = select i1 %i.dk, i64 0, i64 8, !dbg !361632
  %.sroa.0.0.in.in.v.i.i.i.i.i.i.i = select i1 %i.dn, i64 %spec.select.idx.i.i.i.i.i.i.i, i64 16, !dbg !361632
  %.sroa.0.0.in.in.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 %.sroa.0.0.in.in.v.i.i.i.i.i.i.i, !dbg !361632
  %.sroa.0.0.in.i.i.i.i.i.i.i = load ptr, ptr %.sroa.0.0.in.in.i.i.i.i.i.i.i, align 8, !dbg !361634, !alias.scope !361635, !noalias !361636, !nonnull !11, !align !358, !noundef !11
  %.sroa.0.0.i.i.i19.i.i.i.i = load i64, ptr %.sroa.0.0.in.i.i.i.i.i.i.i, align 8, !dbg !361634, !noalias !361639, !noundef !11 ; 2 uses
  %i.do = load i64, ptr %i.db, align 8, !dbg !361640, !noalias !361639, !noundef !11 ; 2 uses
  %i.dp = shl i64 %.sroa.0.0.i.i.i19.i.i.i.i, 6, !dbg !361642
  %i.dq = add i64 %i.dp, 2654435769, !dbg !361645
  %i.dr = lshr i64 %i.do, 2, !dbg !361648
  %i.ds = add i64 %i.dq, %i.do, !dbg !361649
  %i.dt = add i64 %i.ds, %i.dr, !dbg !361651
  %i.du = xor i64 %i.dt, %.sroa.0.0.i.i.i19.i.i.i.i, !dbg !361653
  store i64 %i.du, ptr %i.db, align 8, !dbg !361654, !noalias !361639
  %exitcond.not.i.i.i.i.i = icmp eq i64 %i.cq, %i.ch, !dbg !361531
  br i1 %exitcond.not.i.i.i.i.i, label %_RINvXsi_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB6_3ZipIBO_INtNtB8_3map3MapINtNtNtBc_3ops5range5RangejENCNCNvXs2_NtNtCs1LHh8CLbVkQ_11polars_core7hashing13vector_hasherINtNtB1X_13chunked_array12ChunkedArrayNtNtB1X_9datatypes11BooleanTypeENtB1T_7VecHash16vec_hash_combine0s_0EINtNtNtBc_5slice4iter7IterMutyEENtNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iterator10BitmapIterENtB6_8SpecFold9spec_folduNCINvNvNtNtNtBa_6traits8iterator8Iterator8for_each4callTTbQyEbENCB1L_s0_0E0EB1X_.exit.i.i.i.i, label %_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB4_3ZipINtNtB6_3map3MapINtNtNtBa_3ops5range5RangejENCNCNvXs2_NtNtCs1LHh8CLbVkQ_11polars_core7hashing13vector_hasherINtNtB1R_13chunked_array12ChunkedArrayNtNtB1R_9datatypes11BooleanTypeENtB1N_7VecHash16vec_hash_combine0s_0EINtNtNtBa_5slice4iter7IterMutyEENtNtNtB8_6traits8iterator8Iterator4nextB1R_.exit.i.i.i.i.i.i, !dbg !361531

_RINvXsi_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB6_3ZipIBO_INtNtB8_3map3MapINtNtNtBc_3ops5range5RangejENCNCNvXs2_NtNtCs1LHh8CLbVkQ_11polars_core7hashing13vector_hasherINtNtB1X_13chunked_array12ChunkedArrayNtNtB1X_9datatypes11BooleanTypeENtB1T_7VecHash16vec_hash_combine0s_0EINtNtNtBc_5slice4iter7IterMutyEENtNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iterator10BitmapIterENtB6_8SpecFold9spec_folduNCINvNvNtNtNtBa_6traits8iterator8Iterator8for_each4callTTbQyEbENCB1L_s0_0E0EB1X_.exit.i.i.i.i: ; preds = %._crit_edge.i.i.i.i.i.i.i, %bb.q, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !361655, !noalias !361274
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !361656, !noalias !361274
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !361657, !noalias !361274
  br label %_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map8map_foldRINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_ERNtNtB1x_7boolean12BooleanArrayuNCNvMs_NtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops8downcastINtB2Y_12ChunkedArrayNtNtB30_9datatypes11BooleanTypeE13downcast_iter0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB2h_NCNvXs2_NtNtB30_7hashing13vector_hasherB3T_NtB65_7VecHash16vec_hash_combine0E0E0B30_.exit.i, !dbg !361658

bb.r:                                             ; preds = %_RNvMs_NtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutableNtB4_6Bitmap8as_slice.exit.i.i.i.i
  call void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef %.sroa.0.0, i64 noundef %5, i64 noundef %5, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @86) #39, !dbg !361659, !noalias !361274
  unreachable, !dbg !361659

_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map8map_foldRINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_ERNtNtB1x_7boolean12BooleanArrayuNCNvMs_NtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops8downcastINtB2Y_12ChunkedArrayNtNtB30_9datatypes11BooleanTypeE13downcast_iter0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB2h_NCNvXs2_NtNtB30_7hashing13vector_hasherB3T_NtB65_7VecHash16vec_hash_combine0E0E0B30_.exit.i: ; preds = %_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i.i.i.i.i, %bb.j, %_RINvXsi_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB6_3ZipIBO_INtNtB8_3map3MapINtNtNtBc_3ops5range5RangejENCNCNvXs2_NtNtCs1LHh8CLbVkQ_11polars_core7hashing13vector_hasherINtNtB1X_13chunked_array12ChunkedArrayNtNtB1X_9datatypes11BooleanTypeENtB1T_7VecHash16vec_hash_combine0s_0EINtNtNtBc_5slice4iter7IterMutyEENtNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iterator10BitmapIterENtB6_8SpecFold9spec_folduNCINvNvNtNtNtBa_6traits8iterator8Iterator8for_each4callTTbQyEbENCB1L_s0_0E0EB1X_.exit.i.i.i.i
  %i.dv = getelementptr inbounds nuw i8, ptr %.val.i, i64 48, !dbg !361660
  %i.dw = load i64, ptr %i.dv, align 8, !dbg !361660, !noalias !361274, !noundef !11
  %i.dx = add i64 %i.dw, %.sroa.0.0, !dbg !361665
  %i.dy = add nuw i64 %.sroa.01.0.i, 1, !dbg !361666 ; 2 uses
  %i.dz = icmp eq i64 %i.dy, %i.r, !dbg !361669
  br i1 %i.dz, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB2j_8adapters3map8map_foldRBQ_RNtNtB1s_7boolean12BooleanArrayuNCNvMs_NtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops8downcastINtB4i_12ChunkedArrayNtNtB4k_9datatypes11BooleanTypeE13downcast_iter0NCINvNvB2d_8for_each4callB3B_NCNvXs2_NtNtB4k_7hashing13vector_hasherB5d_NtB6V_7VecHash16vec_hash_combine0E0E0EB4k_.exit, label %bb.c, !dbg !361669

_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB2j_8adapters3map8map_foldRBQ_RNtNtB1s_7boolean12BooleanArrayuNCNvMs_NtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops8downcastINtB4i_12ChunkedArrayNtNtB4k_9datatypes11BooleanTypeE13downcast_iter0NCINvNvB2d_8for_each4callB3B_NCNvXs2_NtNtB4k_7hashing13vector_hasherB5d_NtB6V_7VecHash16vec_hash_combine0E0E0EB4k_.exit: ; preds = %_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map8map_foldRINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_ERNtNtB1x_7boolean12BooleanArrayuNCNvMs_NtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops8downcastINtB2Y_12ChunkedArrayNtNtB30_9datatypes11BooleanTypeE13downcast_iter0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB2h_NCNvXs2_NtNtB30_7hashing13vector_hasherB3T_NtB65_7VecHash16vec_hash_combine0E0E0B30_.exit.i, %bb.a
  store i64 18, ptr %0, align 8, !dbg !361670
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !361671
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !dbg !361672
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !dbg !361673
  ret void, !dbg !361674
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs2_NtNtCs1LHh8CLbVkQ_11polars_core7hashing13vector_hasherINtNtB9_13chunked_array12ChunkedArrayNtNtB9_9datatypes11BooleanTypeENtB5_7VecHash8vec_hash(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([72 x i8]) align 8 captures(none) dereferenceable(72) %0, ptr nofree noundef nonnull readonly align 8 captures(none) %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %2, i64 noundef %3, ptr noalias noundef align 8 dereferenceable(24) initializes((16, 24)) %4) unnamed_addr #2 personality ptr @rust_eh_personality !dbg !361675 {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 4 uses
  %i.b = alloca [104 x i8], align 8               ; 7 uses
  %i.c = alloca [56 x i8], align 8                ; 6 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [8 x i8], align 8                 ; 5 uses
  %i.f = alloca [8 x i8], align 8                 ; 5 uses
  %i.g = alloca [16 x i8], align 8                ; 5 uses
  store ptr %2, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store i64 %3, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 16, !dbg !361676
  store i64 0, ptr %i.i, align 8, !dbg !361676
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !361680
  %i.k = load i64, ptr %i.j, align 8, !dbg !361680, !noundef !11
  tail call void @_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VecyE7reserveCs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %4, i64 noundef %i.k), !dbg !361683
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !361684
  %i.l = call noundef i64 @_RINvYNtNtCsk79RHlfmHDk_8foldhash7quality19SeedableRandomStateNtNtCscgRAwXFJnXP_4core4hash11BuildHasher8hash_onebECs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.g, i1 noundef zeroext true), !dbg !361685
  store i64 %i.l, ptr %i.f, align 8, !dbg !361685
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !361686
  %i.m = call noundef i64 @_RINvYNtNtCsk79RHlfmHDk_8foldhash7quality19SeedableRandomStateNtNtCscgRAwXFJnXP_4core4hash11BuildHasher8hash_onebECs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.g, i1 noundef zeroext false), !dbg !361688
  store i64 %i.m, ptr %i.e, align 8, !dbg !361688
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !361689
  %i.n = call noundef i64 @_RNvNtNtCs1LHh8CLbVkQ_11polars_core7hashing13vector_hasher19get_null_hash_value(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.g), !dbg !361691
  store i64 %i.n, ptr %i.d, align 8, !dbg !361691
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !361692
  %i.p = load ptr, ptr %i.o, align 8, !dbg !361692, !nonnull !11, !noundef !11
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !361710
  %i.r = load i64, ptr %i.q, align 8, !dbg !361710, !noundef !11 ; 2 uses
  %i.s = icmp eq i64 %i.r, 0, !dbg !361711
  br i1 %i.s, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB2j_8adapters3map8map_foldRBQ_RNtNtB1s_7boolean12BooleanArrayuNCNvMs_NtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops8downcastINtB4i_12ChunkedArrayNtNtB4k_9datatypes11BooleanTypeE13downcast_iter0NCINvNvB2d_8for_each4callB3B_NCNvXs2_NtNtB4k_7hashing13vector_hasherB5d_NtB6V_7VecHash8vec_hash0E0E0EB4k_.exit, label %bb.b, !dbg !361722

bb.b:                                             ; preds = %bb.a
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %.sroa.4.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.5.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.u = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.v = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  br label %bb.c, !dbg !361723

bb.c:                                             ; preds = %_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map8map_foldRINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_ERNtNtB1x_7boolean12BooleanArrayuNCNvMs_NtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops8downcastINtB2Y_12ChunkedArrayNtNtB30_9datatypes11BooleanTypeE13downcast_iter0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB2h_NCNvXs2_NtNtB30_7hashing13vector_hasherB3T_NtB65_7VecHash8vec_hash0E0E0B30_.exit.i, %bb.b
  %.sroa.01.0.i = phi i64 [ 0, %bb.b ], [ %i.ai, %_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map8map_foldRINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_ERNtNtB1x_7boolean12BooleanArrayuNCNvMs_NtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops8downcastINtB2Y_12ChunkedArrayNtNtB30_9datatypes11BooleanTypeE13downcast_iter0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB2h_NCNvXs2_NtNtB30_7hashing13vector_hasherB3T_NtB65_7VecHash8vec_hash0E0E0B30_.exit.i ], !dbg !361727 ; 2 uses
  %i.w = getelementptr inbounds nuw [16 x i8], ptr %i.p, i64 %.sroa.01.0.i, !dbg !361728
  %.val.i = load ptr, ptr %i.w, align 8, !dbg !361732, !noalias !361733, !nonnull !11, !noundef !11 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !361736, !noalias !361746
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !361736, !noalias !361746
  %.val.i.i.i.i.i = load i8, ptr %.val.i, align 8, !dbg !361736, !range !53624, !noalias !361751, !noundef !11
  %i.x = icmp eq i8 %.val.i.i.i.i.i, 0, !dbg !361754
  br i1 %i.x, label %bb.e, label %bb.d, !dbg !361756

bb.d:                                             ; preds = %bb.c
  %i.y = getelementptr inbounds nuw i8, ptr %.val.i, i64 64, !dbg !361757 ; 2 uses
  %i.z = load ptr, ptr %i.y, align 8, !dbg !361757, !noalias !361751, !noundef !11
  %.not.i.i.i.i.i.i = icmp eq ptr %i.z, null, !dbg !361757
  br i1 %.not.i.i.i.i.i.i, label %_RNvYNtNtNtCs8774dFTUdNv_12polars_arrow5array7boolean12BooleanArrayNtB6_5Array10null_countCs1LHh8CLbVkQ_11polars_core.exit.thread.i.i.i.i, label %bb.f, !dbg !361760

bb.e:                                             ; preds = %bb.c
  %i.aa = getelementptr inbounds nuw i8, ptr %.val.i, i64 48, !dbg !361762
  %i.ab = load i64, ptr %i.aa, align 8, !dbg !361762, !noalias !361751, !noundef !11
  br label %_RNvYNtNtNtCs8774dFTUdNv_12polars_arrow5array7boolean12BooleanArrayNtB6_5Array10null_countCs1LHh8CLbVkQ_11polars_core.exit.i.i.i.i, !dbg !361766

bb.f:                                             ; preds = %bb.d
  %i.ac = call noundef i64 @_RNvMs_NtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutableNtB4_6Bitmap10unset_bits(ptr noundef nonnull align 8 %i.y), !dbg !361767, !noalias !361751
  br label %_RNvYNtNtNtCs8774dFTUdNv_12polars_arrow5array7boolean12BooleanArrayNtB6_5Array10null_countCs1LHh8CLbVkQ_11polars_core.exit.i.i.i.i, !dbg !361770

_RNvYNtNtNtCs8774dFTUdNv_12polars_arrow5array7boolean12BooleanArrayNtB6_5Array10null_countCs1LHh8CLbVkQ_11polars_core.exit.i.i.i.i: ; preds = %bb.f, %bb.e
  %.sroa.0.1.i.i.i.i.i = phi i64 [ %i.ab, %bb.e ], [ %i.ac, %bb.f ], !dbg !361772
  %i.ad = icmp eq i64 %.sroa.0.1.i.i.i.i.i, 0, !dbg !361773
  br i1 %i.ad, label %_RNvYNtNtNtCs8774dFTUdNv_12polars_arrow5array7boolean12BooleanArrayNtB6_5Array10null_countCs1LHh8CLbVkQ_11polars_core.exit.thread.i.i.i.i, label %bb.g, !dbg !361773

_RNvYNtNtNtCs8774dFTUdNv_12polars_arrow5array7boolean12BooleanArrayNtB6_5Array10null_countCs1LHh8CLbVkQ_11polars_core.exit.thread.i.i.i.i: ; preds = %_RNvYNtNtNtCs8774dFTUdNv_12polars_arrow5array7boolean12BooleanArrayNtB6_5Array10null_countCs1LHh8CLbVkQ_11polars_core.exit.i.i.i.i, %bb.d
  %i.ae = getelementptr inbounds nuw i8, ptr %.val.i, i64 32, !dbg !361774
  call void @_RNvMs_NtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutableNtB4_6Bitmap4iter(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.c, ptr noundef nonnull align 8 %i.ae), !dbg !361779, !noalias !361751
  store ptr %i.f, ptr %i.u, align 8, !dbg !361780, !noalias !361751
  store ptr %i.e, ptr %i.v, align 8, !dbg !361780, !noalias !361751
  call void @_RINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB6_3VecyE16extend_desugaredINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapNtNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iterator10BitmapIterNCNCNvXs2_NtNtCs1LHh8CLbVkQ_11polars_core7hashing13vector_hasherINtNtB3a_13chunked_array12ChunkedArrayNtNtB3a_9datatypes11BooleanTypeENtB36_7VecHash8vec_hash00EEB3a_(ptr noalias noundef nonnull align 8 dereferenceable(24) %4, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(56) %i.c), !dbg !361785, !noalias !361751
  br label %_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map8map_foldRINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_ERNtNtB1x_7boolean12BooleanArrayuNCNvMs_NtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops8downcastINtB2Y_12ChunkedArrayNtNtB30_9datatypes11BooleanTypeE13downcast_iter0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB2h_NCNvXs2_NtNtB30_7hashing13vector_hasherB3T_NtB65_7VecHash8vec_hash0E0E0B30_.exit.i, !dbg !361785

bb.g:                                             ; preds = %_RNvYNtNtNtCs8774dFTUdNv_12polars_arrow5array7boolean12BooleanArrayNtB6_5Array10null_countCs1LHh8CLbVkQ_11polars_core.exit.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !361790, !noalias !361751
  %i.af = getelementptr inbounds nuw i8, ptr %.val.i, i64 32, !dbg !361795
  call void @_RNvMs_NtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutableNtB4_6Bitmap4iter(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.a, ptr noundef nonnull align 8 %i.af), !dbg !361797, !noalias !361751
  %i.ag = getelementptr inbounds nuw i8, ptr %.val.i, i64 64, !dbg !361798 ; 2 uses
  %i.ah = load ptr, ptr %i.ag, align 8, !dbg !361798, !noalias !361751, !noundef !11
  %.not.i.i.i.i = icmp eq ptr %i.ah, null, !dbg !361798
  %..i.i.i.i = select i1 %.not.i.i.i.i, ptr null, ptr %i.ag, !dbg !361803
  call void @_RNvMs4_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validityINtB5_11ZipValiditybNtNtB7_8iterator10BitmapIterB1o_E17new_with_validityCs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull sret([80 x i8]) align 8 captures(none) dereferenceable(80) %i.t, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(40) %i.a, ptr noundef align 8 %..i.i.i.i), !dbg !361804, !noalias !361751
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !361805, !noalias !361751
  store ptr %i.f, ptr %i.b, align 8, !dbg !361806, !noalias !361751
  store ptr %i.e, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !dbg !361806, !noalias !361751
  store ptr %i.d, ptr %.sroa.5.0..sroa_idx.i.i.i.i, align 8, !dbg !361806, !noalias !361751
  call void @_RINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB6_3VecyE16extend_desugaredINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validity11ZipValiditybNtNtB1T_8iterator10BitmapIterB34_ENCNCNvXs2_NtNtCs1LHh8CLbVkQ_11polars_core7hashing13vector_hasherINtNtB3Q_13chunked_array12ChunkedArrayNtNtB3Q_9datatypes11BooleanTypeENtB3M_7VecHash8vec_hash0s_0EEB3Q_(ptr noalias noundef nonnull align 8 dereferenceable(24) %4, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(104) %i.b), !dbg !361812, !noalias !361751
  br label %_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map8map_foldRINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_ERNtNtB1x_7boolean12BooleanArrayuNCNvMs_NtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops8downcastINtB2Y_12ChunkedArrayNtNtB30_9datatypes11BooleanTypeE13downcast_iter0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB2h_NCNvXs2_NtNtB30_7hashing13vector_hasherB3T_NtB65_7VecHash8vec_hash0E0E0B30_.exit.i, !dbg !361812

_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map8map_foldRINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_ERNtNtB1x_7boolean12BooleanArrayuNCNvMs_NtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops8downcastINtB2Y_12ChunkedArrayNtNtB30_9datatypes11BooleanTypeE13downcast_iter0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB2h_NCNvXs2_NtNtB30_7hashing13vector_hasherB3T_NtB65_7VecHash8vec_hash0E0E0B30_.exit.i: ; preds = %bb.g, %_RNvYNtNtNtCs8774dFTUdNv_12polars_arrow5array7boolean12BooleanArrayNtB6_5Array10null_countCs1LHh8CLbVkQ_11polars_core.exit.thread.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !361818, !noalias !361746
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !361818, !noalias !361746
  %i.ai = add nuw i64 %.sroa.01.0.i, 1, !dbg !361819 ; 2 uses
  %i.aj = icmp eq i64 %i.ai, %i.r, !dbg !361822
  br i1 %i.aj, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB2j_8adapters3map8map_foldRBQ_RNtNtB1s_7boolean12BooleanArrayuNCNvMs_NtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops8downcastINtB4i_12ChunkedArrayNtNtB4k_9datatypes11BooleanTypeE13downcast_iter0NCINvNvB2d_8for_each4callB3B_NCNvXs2_NtNtB4k_7hashing13vector_hasherB5d_NtB6V_7VecHash8vec_hash0E0E0EB4k_.exit, label %bb.c, !dbg !361822

_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB2j_8adapters3map8map_foldRBQ_RNtNtB1s_7boolean12BooleanArrayuNCNvMs_NtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops8downcastINtB4i_12ChunkedArrayNtNtB4k_9datatypes11BooleanTypeE13downcast_iter0NCINvNvB2d_8for_each4callB3B_NCNvXs2_NtNtB4k_7hashing13vector_hasherB5d_NtB6V_7VecHash8vec_hash0E0E0EB4k_.exit: ; preds = %_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map8map_foldRINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_ERNtNtB1x_7boolean12BooleanArrayuNCNvMs_NtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops8downcastINtB2Y_12ChunkedArrayNtNtB30_9datatypes11BooleanTypeE13downcast_iter0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB2h_NCNvXs2_NtNtB30_7hashing13vector_hasherB3T_NtB65_7VecHash8vec_hash0E0E0B30_.exit.i, %bb.a
  store i64 18, ptr %0, align 8, !dbg !361823
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !361824
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !361825
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !361826
  ret void, !dbg !361827
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvXs2_NtNtCs8774dFTUdNv_12polars_arrow5array15fixed_size_listNtB5_18FixedSizeListArrayNtB7_5Array10as_any_mut(ptr noalias noundef align 8 dereferenceable(96) %0) unnamed_addr #6 !dbg !361828 {
bb.a:
  %i.a = insertvalue { ptr, ptr } poison, ptr %0, 0, !dbg !361829
  %i.b = insertvalue { ptr, ptr } %i.a, ptr @377, 1, !dbg !361829
  ret { ptr, ptr } %i.b, !dbg !361829
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal { ptr, ptr } @_RNvXs2_NtNtCs8774dFTUdNv_12polars_arrow5array15fixed_size_listNtB5_18FixedSizeListArrayNtB7_5Array13with_validity(ptr noundef nonnull align 8 captures(address, read_provenance) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(32) %1) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !361830 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 5 uses
  %i.b = alloca [32 x i8], align 8                ; 6 uses
  %i.c = alloca [96 x i8], align 8                ; 11 uses
  %i.d = alloca [96 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !361831
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !361831
  tail call void @llvm.experimental.noalias.scope.decl(metadata !361832), !dbg !361835
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48, !dbg !361836
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 56, !dbg !361840
  %i.g = load i64, ptr %i.f, align 8, !dbg !361840, !noalias !361832, !noundef !11
  %i.h = load <2 x i64>, ptr %i.e, align 8, !dbg !361836, !noalias !361832
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !361841, !noalias !361832
  invoke fastcc void @_RNvXs3_NtCs8774dFTUdNv_12polars_arrow9datatypesNtB5_13ArrowDataTypeNtNtCscgRAwXFJnXP_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(32) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %0) #40
          to label %.noexc unwind label %bb.h, !dbg !361841

.noexc:                                           ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !361842
  %i.j = invoke { ptr, ptr } @_RNvXs5_NtCs8774dFTUdNv_12polars_arrow5arrayINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtB5_5ArrayEL_ENtNtCscgRAwXFJnXP_4core5clone5Clone5clone(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.i)
          to label %bb.c unwind label %bb.b, !dbg !361842, !noalias !361832 ; 2 uses

bb.b:                                             ; preds = %.noexc
  %i.k = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs8774dFTUdNv_12polars_arrow9datatypes13ArrowDataTypeECs1LHh8CLbVkQ_11polars_core(ptr noalias noundef align 8 dereferenceable(32) %i.a) #36
          to label %bb.w unwind label %bb.g, !dbg !361843, !noalias !361832

bb.c:                                             ; preds = %.noexc
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 64, !dbg !361844
  %i.m = load ptr, ptr %i.l, align 8, !dbg !361844, !noalias !361832, !noundef !11 ; 4 uses
  %.not.i = icmp eq ptr %i.m, null, !dbg !361844  ; 2 uses
  br i1 %.not.i, label %bb.i, label %bb.d, !dbg !361847

bb.d:                                             ; preds = %bb.c
  %i.n = load i64, ptr %i.m, align 8, !dbg !361848, !range !1188, !noalias !361852, !noundef !11
  %i.o = icmp eq i64 %i.n, 3, !dbg !361855
  br i1 %i.o, label %bb.f, label %bb.e, !dbg !361855

bb.e:                                             ; preds = %bb.d
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 24, !dbg !361856
  %i.q = atomicrmw add ptr %i.p, i64 1 monotonic, align 8, !dbg !361860, !noalias !361852 ; 0 uses
  br label %bb.f, !dbg !361862

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 72, !dbg !361863
  %i.s = load <2 x i64>, ptr %i.r, align 8, !dbg !361863, !noalias !361852
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 88, !dbg !361864
  %i.u = load atomic i64, ptr %i.t monotonic, align 8, !dbg !361871, !noalias !361852
  br label %bb.i, !dbg !361873

bb.g:                                             ; preds = %bb.b
  %i.v = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #38, !dbg !361874, !noalias !361832
  unreachable, !dbg !361874
end_hunk_0
