Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pola-rs/original/polars_sql-4f9f54f7d5831ee1.polars_sql.cafc849952b8d473-cgu.09?download=true
inline.NumInlined: 3056
inline.NumDeleted: 1023
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_RNvMNtCscgRAwXFJnXP_4core5sliceSINtCse4dvU5uQ85g_8indexmap6BucketNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeE12rotate_rightCshquuC4dCYVj_10polars_sql:bb.a

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !22183
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(80) %i.c, ptr noundef nonnull align 16 dereferenceable(80) %0, i64 80, i1 false), !dbg !22186
  br label %.outer, !dbg !22189

.outer:                                           ; preds = %bb.j, %bb.e
  %.sroa.018.0.i.i.ph = phi i64 [ %spec.select.i.i, %bb.j ], [ %2, %bb.e ] ; 3 uses
  %.sroa.06.0.i.i.ph = phi i64 [ %i.l, %bb.j ], [ %2, %bb.e ]
  br label %bb.f, !dbg !22190

bb.f:                                             ; preds = %.outer, %bb.g
  %.sroa.06.0.i.i = phi i64 [ %i.k, %bb.g ], [ %.sroa.06.0.i.i.ph, %.outer ], !dbg !22191 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !22192
  %i.j = getelementptr inbounds nuw [80 x i8], ptr %0, i64 %.sroa.06.0.i.i, !dbg !22193 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(80) %i.d, ptr noundef nonnull align 16 dereferenceable(80) %i.j, i64 80, i1 false), !dbg !22195
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(80) %i.j, ptr noundef nonnull align 16 dereferenceable(80) %i.c, i64 80, i1 false), !dbg !22199
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(80) %i.c, ptr noundef nonnull align 16 dereferenceable(80) %i.d, i64 80, i1 false), !dbg !22200
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !22201
  %.not.i.i = icmp ult i64 %.sroa.06.0.i.i, %i.e, !dbg !22190
  br i1 %.not.i.i, label %bb.g, label %bb.h, !dbg !22190

bb.g:                                             ; preds = %bb.f
  %i.k = add nuw nsw i64 %.sroa.06.0.i.i, %2, !dbg !22202
  br label %bb.f, !dbg !22203

bb.h:                                             ; preds = %bb.f
  %i.l = sub nuw nsw i64 %.sroa.06.0.i.i, %i.e, !dbg !22204 ; 3 uses
  %i.m = icmp eq i64 %i.l, 0, !dbg !22205
  br i1 %i.m, label %bb.i, label %bb.j, !dbg !22205

bb.i:                                             ; preds = %bb.h
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(80) %0, ptr noundef nonnull align 16 dereferenceable(80) %i.c, i64 80, i1 false), !dbg !22206
  %i.n = icmp ugt i64 %.sroa.018.0.i.i.ph, 1, !dbg !22209
  br i1 %i.n, label %.lr.ph.i.i, label %_RINvNtNtCscgRAwXFJnXP_4core5slice6rotate14ptr_rotate_gcdINtCse4dvU5uQ85g_8indexmap6BucketNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeEECshquuC4dCYVj_10polars_sql.exit.i, !dbg !22209

bb.j:                                             ; preds = %bb.h
  %spec.select.i.i = tail call i64 @llvm.umin.i64(i64 %i.l, i64 %.sroa.018.0.i.i.ph), !dbg !22210
  br label %.outer, !dbg !22210

.lr.ph.i.i:                                       ; preds = %bb.i, %bb.n
  %.sroa.020.029.i.i = phi i64 [ %i.u, %bb.n ], [ 1, %bb.i ] ; 4 uses
  %i.o = getelementptr inbounds nuw [80 x i8], ptr %0, i64 %.sroa.020.029.i.i, !dbg !22211 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(80) %i.c, ptr noundef nonnull align 16 dereferenceable(80) %i.o, i64 80, i1 false), !dbg !22213
  %i.p = add i64 %.sroa.020.029.i.i, %2, !dbg !22216
  br label %bb.k, !dbg !22217

bb.k:                                             ; preds = %.backedge, %.lr.ph.i.i
  %.sroa.06.2.i.i = phi i64 [ %i.p, %.lr.ph.i.i ], [ %.sroa.06.2.i.i.be, %.backedge ], !dbg !22218 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !22219
  %i.q = getelementptr inbounds nuw [80 x i8], ptr %0, i64 %.sroa.06.2.i.i, !dbg !22220 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(80) %i.b, ptr noundef nonnull align 16 dereferenceable(80) %i.q, i64 80, i1 false), !dbg !22222
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(80) %i.q, ptr noundef nonnull align 16 dereferenceable(80) %i.c, i64 80, i1 false), !dbg !22226
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(80) %i.c, ptr noundef nonnull align 16 dereferenceable(80) %i.b, i64 80, i1 false), !dbg !22227
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !22228
  %.not28.i.i = icmp ult i64 %.sroa.06.2.i.i, %i.e, !dbg !22229
  br i1 %.not28.i.i, label %bb.l, label %bb.m, !dbg !22229

bb.l:                                             ; preds = %bb.k
  %i.r = add nuw nsw i64 %.sroa.06.2.i.i, %2, !dbg !22230
  br label %.backedge, !dbg !22231

bb.m:                                             ; preds = %bb.k
  %i.s = sub nuw i64 %.sroa.06.2.i.i, %i.e, !dbg !22232 ; 2 uses
  %i.t = icmp eq i64 %i.s, %.sroa.020.029.i.i, !dbg !22233
  br i1 %i.t, label %bb.n, label %.backedge, !dbg !22233

.backedge:                                        ; preds = %bb.m, %bb.l
  %.sroa.06.2.i.i.be = phi i64 [ %i.s, %bb.m ], [ %i.r, %bb.l ]
  br label %bb.k, !dbg !22219

bb.n:                                             ; preds = %bb.m
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(80) %i.o, ptr noundef nonnull align 16 dereferenceable(80) %i.c, i64 80, i1 false), !dbg !22234
  %i.u = add nuw i64 %.sroa.020.029.i.i, 1, !dbg !22237 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.u, %.sroa.018.0.i.i.ph, !dbg !22209
  br i1 %exitcond.not.i.i, label %_RINvNtNtCscgRAwXFJnXP_4core5slice6rotate14ptr_rotate_gcdINtCse4dvU5uQ85g_8indexmap6BucketNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeEECshquuC4dCYVj_10polars_sql.exit.i, label %.lr.ph.i.i, !dbg !22209

_RINvNtNtCscgRAwXFJnXP_4core5slice6rotate14ptr_rotate_gcdINtCse4dvU5uQ85g_8indexmap6BucketNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeEECshquuC4dCYVj_10polars_sql.exit.i: ; preds = %bb.n, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !22238
  br label %_RINvNtNtCscgRAwXFJnXP_4core5slice6rotate10ptr_rotateINtCse4dvU5uQ85g_8indexmap6BucketNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeEECshquuC4dCYVj_10polars_sql.exit, !dbg !22239

bb.o:                                             ; preds = %bb.d
  %i.v = icmp samesign ult i64 %2, %i.e, !dbg !22240
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !22241
  %i.w = getelementptr inbounds nuw [80 x i8], ptr %0, i64 %2, !dbg !22243 ; 2 uses
  br i1 %i.v, label %bb.q, label %bb.p, !dbg !22245

bb.p:                                             ; preds = %bb.o
  %i.x = mul nuw nsw i64 %i.e, 80, !dbg !22246    ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.a, ptr nonnull align 16 %0, i64 %i.x, i1 false), !dbg !22246
  %i.y = mul nuw nsw i64 %2, 80, !dbg !22248
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 16 %0, ptr nonnull align 16 %i.f, i64 %i.y, i1 false), !dbg !22248
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.w, ptr nonnull align 16 %i.a, i64 %i.x, i1 false), !dbg !22250
  br label %_RINvNtNtCscgRAwXFJnXP_4core5slice6rotate18ptr_rotate_memmoveINtCse4dvU5uQ85g_8indexmap6BucketNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeEECshquuC4dCYVj_10polars_sql.exit.i, !dbg !22252

bb.q:                                             ; preds = %bb.o
  %i.z = mul nuw nsw i64 %2, 80, !dbg !22253      ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.a, ptr nonnull align 16 %i.f, i64 %i.z, i1 false), !dbg !22253
  %i.aa = mul nuw nsw i64 %i.e, 80, !dbg !22255
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 16 %i.w, ptr nonnull align 16 %0, i64 %i.aa, i1 false), !dbg !22255
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %0, ptr nonnull align 16 %i.a, i64 %i.z, i1 false), !dbg !22257
  br label %_RINvNtNtCscgRAwXFJnXP_4core5slice6rotate18ptr_rotate_memmoveINtCse4dvU5uQ85g_8indexmap6BucketNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeEECshquuC4dCYVj_10polars_sql.exit.i, !dbg !22252

_RINvNtNtCscgRAwXFJnXP_4core5slice6rotate18ptr_rotate_memmoveINtCse4dvU5uQ85g_8indexmap6BucketNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeEECshquuC4dCYVj_10polars_sql.exit.i: ; preds = %bb.q, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !22259
  br label %_RINvNtNtCscgRAwXFJnXP_4core5slice6rotate10ptr_rotateINtCse4dvU5uQ85g_8indexmap6BucketNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeEECshquuC4dCYVj_10polars_sql.exit, !dbg !22260

_RINvNtNtCscgRAwXFJnXP_4core5slice6rotate10ptr_rotateINtCse4dvU5uQ85g_8indexmap6BucketNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeEECshquuC4dCYVj_10polars_sql.exit: ; preds = %bb.c, %_RINvNtNtCscgRAwXFJnXP_4core5slice6rotate14ptr_rotate_gcdINtCse4dvU5uQ85g_8indexmap6BucketNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeEECshquuC4dCYVj_10polars_sql.exit.i, %_RINvNtNtCscgRAwXFJnXP_4core5slice6rotate18ptr_rotate_memmoveINtCse4dvU5uQ85g_8indexmap6BucketNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeEECshquuC4dCYVj_10polars_sql.exit.i
  ret void, !dbg !22261
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind optsize willreturn memory(argmem: readwrite) uwtable
define void @_RNvMNtCscgRAwXFJnXP_4core5sliceSNtNtCsgZ49sUHp3tW_5alloc6string6String14swap_uncheckedCshquuC4dCYVj_10polars_sql(ptr noalias nofree noundef nonnull align 8 captures(none) %0, i64 noundef range(i64 0, 384307168202282326) %1, i64 noundef %2, i64 noundef %3, ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %4) unnamed_addr #3 !dbg !22262 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %2, !dbg !22263 ; 2 uses
  %i.c = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %3, !dbg !22267 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !22269
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false), !dbg !22271
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !dbg !22273
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false), !dbg !22275
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !22277
  ret void, !dbg !22278
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind optsize willreturn memory(argmem: readwrite) uwtable
define void @_RNvMs0_Cse4dvU5uQ85g_8indexmapINtB5_6BucketNtNtCsgZ49sUHp3tW_5alloc6string6StringuE3keyCshquuC4dCYVj_10polars_sql(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %1) unnamed_addr #3 !dbg !22279 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !dbg !22280
  ret void, !dbg !22281
}

; Function Attrs: nonlazybind optsize uwtable
define void @_RNvMs0_NtCshe0pyuXM1S4_13polars_schema6schemaINtB5_6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuE13with_capacityCshquuC4dCYVj_10polars_sql(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([64 x i8]) align 8 captures(none) dereferenceable(64) %0, i64 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !63 {
bb.a:
  tail call void @_RNvXs6_NtCs2mZqlW55729_12polars_utils7aliasesINtNtCse4dvU5uQ85g_8indexmap3map8IndexMapNtNtB7_6pl_str10PlSmallStrNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateENtB5_12InitHashMaps13with_capacityCshquuC4dCYVj_10polars_sql(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(address) dereferenceable(64) %0, i64 noundef %1), !dbg !22282
  ret void, !dbg !22283
}

; Function Attrs: nonlazybind optsize uwtable
define void @_RNvMs1_NtCshe0pyuXM1S4_13polars_schema6schemaINtB5_6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuE15insert_at_indexCshquuC4dCYVj_10polars_sql(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([80 x i8]) align 16 captures(none) dereferenceable(80) %0, ptr noalias noundef align 8 dereferenceable(64) %1, i64 noundef %2, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(24) %3, ptr noalias noundef align 16 captures(address) dead_on_return dereferenceable(48) %4) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !22284 {
bb.a:
  %i.a = alloca [48 x i8], align 16               ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [64 x i8], align 16               ; 5 uses
  %i.d = alloca [48 x i8], align 16               ; 6 uses
  %i.e = alloca [32 x i8], align 8                ; 7 uses
  %i.f = alloca [8 x i8], align 8                 ; 4 uses
  %i.g = alloca [24 x i8], align 8                ; 2 uses
  %i.h = alloca [24 x i8], align 8                ; 4 uses
  %i.i = alloca [8 x i8], align 8                 ; 3 uses
  store i64 %2, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 48, !dbg !22285 ; 2 uses
  %i.k = load i64, ptr %i.j, align 8, !dbg !22285, !noundef !13 ; 2 uses
  %.not = icmp ugt i64 %2, %i.k, !dbg !22297
  br i1 %.not, label %bb.b, label %bb.c, !dbg !22297

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !dbg !22298
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !22299
  store i64 %i.k, ptr %i.f, align 8, !dbg !22300
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !22310
  store ptr %i.i, ptr %i.e, align 8, !dbg !22310
  %.sroa.44.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8, !dbg !22310
  store ptr @_RNvXsi_NtNtNtCscgRAwXFJnXP_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.44.0..sroa_idx, align 8, !dbg !22310
  %i.l = getelementptr inbounds nuw i8, ptr %i.e, i64 16, !dbg !22310
  store ptr %i.f, ptr %i.l, align 8, !dbg !22310
  %.sroa.48.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 24, !dbg !22310
  store ptr @_RNvXsi_NtNtNtCscgRAwXFJnXP_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.48.0..sroa_idx, align 8, !dbg !22310
  invoke void @_RNvNvNtCsgZ49sUHp3tW_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.g, ptr noundef nonnull @25, ptr noundef nonnull %i.e)
          to label %_RINvMNtCscgRAwXFJnXP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsgZ49sUHp3tW_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECshquuC4dCYVj_10polars_sql.exit unwind label %bb.o, !dbg !22313

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !22319
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !22320
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false), !dbg !22320
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !22321
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %i.a, ptr noundef nonnull align 16 dereferenceable(48) %4, i64 48, i1 false), !dbg !22321
  call void @_RNvMs2_NtCse4dvU5uQ85g_8indexmap3mapINtB5_8IndexMapNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE11insert_fullCshquuC4dCYVj_10polars_sql(ptr noalias noundef nonnull sret([64 x i8]) align 16 captures(address) dereferenceable(64) %i.c, ptr noalias noundef nonnull align 8 dereferenceable(64) %1, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.b, ptr noalias noundef nonnull align 16 captures(address) dereferenceable(48) %i.a), !dbg !22322
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !22323
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !22323
  %i.m = load i64, ptr %i.c, align 16, !dbg !22324, !noundef !13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !22325
  %i.n = getelementptr inbounds nuw i8, ptr %i.c, i64 16, !dbg !22325
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %i.d, ptr noundef nonnull align 16 dereferenceable(48) %i.n, i64 48, i1 false), !dbg !22325
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !22326
  %i.o = load i8, ptr %i.d, align 16, !dbg !22327, !range !117, !noundef !13
  %.not11 = icmp eq i8 %i.o, 31, !dbg !22327      ; 2 uses
  br i1 %.not11, label %bb.j, label %bb.h, !dbg !22333

_RINvMNtCscgRAwXFJnXP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsgZ49sUHp3tW_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECshquuC4dCYVj_10polars_sql.exit: ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !22298
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !22298
  invoke void @_RNvXs_CsgjwxzEoLG5s_12polars_errorNtB4_9ErrStringINtNtCscgRAwXFJnXP_4core7convert4FromNtNtCsgZ49sUHp3tW_5alloc6string6StringE4fromCshquuC4dCYVj_10polars_sql(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.h, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.g, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @26)
          to label %bb.d unwind label %bb.o, !dbg !22334

bb.d:                                             ; preds = %_RINvMNtCscgRAwXFJnXP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsgZ49sUHp3tW_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECshquuC4dCYVj_10polars_sql.exit
  %.sroa.418.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !22298
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %.sroa.418.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.h, i64 24, i1 false), !dbg !22298
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !dbg !22298
  store <2 x i64> <i64 1, i64 7>, ptr %0, align 16, !dbg !22298
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeECshquuC4dCYVj_10polars_sql(ptr noalias noundef align 16 dereferenceable(48) %4)
          to label %bb.f unwind label %bb.e, !dbg !22338

bb.e:                                             ; preds = %bb.d
  %i.p = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

bb.f:                                             ; preds = %bb.d
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 23, !dbg !22339
  %i.r = load i8, ptr %i.q, align 1, !dbg !22339, !range !150, !alias.scope !22346, !noundef !13
  %i.s = icmp eq i8 %i.r, -40, !dbg !22355
  br i1 %i.s, label %bb.g, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECshquuC4dCYVj_10polars_sql.exit, !dbg !22355, !prof !161

bb.g:                                             ; preds = %bb.f
  call void @_RNvNvXs2_NtCs7VARH73bmU_11compact_str4reprNtB7_4ReprNtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4drop13outlined_drop(ptr noalias noundef nonnull align 8 dereferenceable(24) %3), !dbg !22356
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECshquuC4dCYVj_10polars_sql.exit, !dbg !22356

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECshquuC4dCYVj_10polars_sql.exit: ; preds = %bb.g, %bb.f, %bb.m
  ret void, !dbg !22357

bb.h:                                             ; preds = %bb.c
  %i.t = load i64, ptr %i.j, align 8, !dbg !22358, !noundef !13
  %i.u = icmp eq i64 %2, %i.t, !dbg !22368
  br i1 %i.u, label %bb.i, label %bb.j, !dbg !22368

bb.i:                                             ; preds = %bb.h
  %i.v = add i64 %2, -1, !dbg !22369              ; 2 uses
  store i64 %i.v, ptr %i.i, align 8, !dbg !22369
  br label %bb.j, !dbg !22370

bb.j:                                             ; preds = %bb.h, %bb.c, %bb.i
  %i.w = phi i64 [ %2, %bb.h ], [ %2, %bb.c ], [ %i.v, %bb.i ], !dbg !22371
  invoke void @_RNvMs_NtCse4dvU5uQ85g_8indexmap5innerINtB4_4CoreNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeE10move_indexCshquuC4dCYVj_10polars_sql(ptr noalias noundef nonnull align 8 dereferenceable(56) %1, i64 noundef %i.m, i64 noundef %i.w, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @27)
          to label %bb.m unwind label %bb.k, !dbg !22372

bb.k:                                             ; preds = %bb.j
  %i.x = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  br i1 %.not11, label %.thread, label %bb.l, !dbg !22375

bb.l:                                             ; preds = %bb.k
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeECshquuC4dCYVj_10polars_sql(ptr noalias noundef nonnull align 16 dereferenceable(48) %i.d)
          to label %.thread unwind label %bb.n, !dbg !22375

bb.m:                                             ; preds = %bb.j
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !22377
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %i.y, ptr noundef nonnull align 16 dereferenceable(48) %i.d, i64 48, i1 false), !dbg !22378
  store i64 0, ptr %0, align 16, !dbg !22377
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !22338
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECshquuC4dCYVj_10polars_sql.exit, !dbg !22338

bb.n:                                             ; preds = %bb.q, %bb.l, %bb.o
  %i.z = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #35, !dbg !22379
  unreachable, !dbg !22379

bb.o:                                             ; preds = %bb.b, %_RINvMNtCscgRAwXFJnXP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsgZ49sUHp3tW_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECshquuC4dCYVj_10polars_sql.exit
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeECshquuC4dCYVj_10polars_sql(ptr noalias noundef align 16 dereferenceable(48) %4) #36
          to label %bb.p unwind label %bb.n, !dbg !22338

.thread:                                          ; preds = %bb.p, %bb.q, %bb.l, %bb.k
  %.pn.pn33 = phi { ptr, i32 } [ %i.x, %bb.l ], [ %.pn.pn.ph, %bb.p ], [ %i.x, %bb.k ], [ %.pn.pn.ph, %bb.q ]
  resume { ptr, i32 } %.pn.pn33, !dbg !22379

bb.p:                                             ; preds = %bb.o, %bb.e
  %.pn.pn.ph = phi { ptr, i32 } [ %i.p, %bb.e ], [ %lpad.thr_comm, %bb.o ] ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 23, !dbg !22380
  %i.ab = load i8, ptr %i.aa, align 1, !dbg !22380, !range !150, !alias.scope !22387, !noundef !13
  %i.ac = icmp eq i8 %i.ab, -40, !dbg !22396
  br i1 %i.ac, label %bb.q, label %.thread, !dbg !22396, !prof !161

bb.q:                                             ; preds = %bb.p
  invoke void @_RNvNvXs2_NtCs7VARH73bmU_11compact_str4reprNtB7_4ReprNtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4drop13outlined_drop(ptr noalias noundef nonnull align 8 dereferenceable(24) %3)
          to label %.thread unwind label %bb.n, !dbg !22397
}

; Function Attrs: nonlazybind optsize uwtable
define noundef align 16 ptr @_RNvMs1_NtCshe0pyuXM1S4_13polars_schema6schemaINtB5_6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuE3getCshquuC4dCYVj_10polars_sql(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(64) %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #0 !dbg !22398 {
bb.a:
  %i.a = tail call noundef align 16 ptr @_RINvMs3_NtCse4dvU5uQ85g_8indexmap3mapINtB6_8IndexMapNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE3geteECshquuC4dCYVj_10polars_sql(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2), !dbg !22399
  ret ptr %i.a, !dbg !22400
}

; Function Attrs: nonlazybind optsize uwtable
define noundef zeroext i1 @_RNvMs1_NtCshe0pyuXM1S4_13polars_schema6schemaINtB5_6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuE8containsCshquuC4dCYVj_10polars_sql(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(64) %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #0 !dbg !22401 {
bb.a:
  %i.a = tail call noundef align 16 ptr @_RINvMs3_NtCse4dvU5uQ85g_8indexmap3mapINtB6_8IndexMapNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE3geteECshquuC4dCYVj_10polars_sql(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2), !dbg !22402
  %i.b = icmp ne ptr %i.a, null, !dbg !22405
  ret i1 %i.b, !dbg !22410
}

; Function Attrs: nonlazybind optsize uwtable
define void @_RNvMs1_NtCshe0pyuXM1S4_13polars_schema6schemaINtB5_6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuE8get_fullCshquuC4dCYVj_10polars_sql(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(64) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3) unnamed_addr #0 !dbg !22411 {
bb.a:
  tail call void @_RINvMs3_NtCse4dvU5uQ85g_8indexmap3mapINtB6_8IndexMapNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE8get_fulleECshquuC4dCYVj_10polars_sql(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3), !dbg !22412
  ret void, !dbg !22413
}

; Function Attrs: nonlazybind optsize uwtable
define void @_RNvMs2_NtCse4dvU5uQ85g_8indexmap3mapINtB5_8IndexMapNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE11insert_fullCshquuC4dCYVj_10polars_sql(ptr dead_on_unwind noalias noundef writable sret([64 x i8]) align 16 captures(none) dereferenceable(64) %0, ptr noalias noundef align 8 dereferenceable(64) %1, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(24) %2, ptr noalias noundef align 16 captures(address) dead_on_return dereferenceable(48) %3) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !22414 {
bb.a:
  %i.a = alloca [48 x i8], align 16               ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 56, !dbg !22415
  %i.d = invoke noundef i64 @_RINvYNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateNtNtCscgRAwXFJnXP_4core4hash11BuildHasher8hash_oneRNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECshquuC4dCYVj_10polars_sql(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %2)
          to label %bb.b unwind label %bb.c, !dbg !22418

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !22419
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !dbg !22419
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !22421
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %i.a, ptr noundef nonnull align 16 dereferenceable(48) %3, i64 48, i1 false), !dbg !22421
  call void @_RNvMs_NtCse4dvU5uQ85g_8indexmap5innerINtB4_4CoreNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeE11insert_fullCshquuC4dCYVj_10polars_sql(ptr noalias noundef nonnull sret([64 x i8]) align 16 captures(none) dereferenceable(64) %0, ptr noalias noundef nonnull align 8 dereferenceable(56) %1, i64 noundef %i.d, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.b, ptr noalias noundef nonnull align 16 captures(address) dereferenceable(48) %i.a), !dbg !22422
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !22423
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !22423
  ret void, !dbg !22424

bb.c:                                             ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeECshquuC4dCYVj_10polars_sql(ptr noalias noundef align 16 dereferenceable(48) %3) #36
          to label %bb.e unwind label %bb.d, !dbg !22425

bb.d:                                             ; preds = %bb.f, %bb.c
  %i.f = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #35, !dbg !22426
  unreachable, !dbg !22426

.critedge:                                        ; preds = %bb.e, %bb.f
  resume { ptr, i32 } %i.e, !dbg !22426

bb.e:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 23, !dbg !22427
  %i.h = load i8, ptr %i.g, align 1, !dbg !22427, !range !150, !alias.scope !22434, !noundef !13
  %i.i = icmp eq i8 %i.h, -40, !dbg !22443
  br i1 %i.i, label %bb.f, label %.critedge, !dbg !22443, !prof !161

bb.f:                                             ; preds = %bb.e
  invoke void @_RNvNvXs2_NtCs7VARH73bmU_11compact_str4reprNtB7_4ReprNtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4drop13outlined_drop(ptr noalias noundef nonnull align 8 dereferenceable(24) %2)
          to label %.critedge unwind label %bb.d, !dbg !22444
}

; Function Attrs: nonlazybind optsize uwtable
define { i64, i1 } @_RNvMs2_NtCse4dvU5uQ85g_8indexmap3mapINtB5_8IndexMapNtNtCsgZ49sUHp3tW_5alloc6string6StringuNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE11insert_fullCshquuC4dCYVj_10polars_sql(ptr noalias noundef align 8 dereferenceable(64) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !22445 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 56, !dbg !22446
  %i.c = invoke noundef i64 @_RINvYNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateNtNtCscgRAwXFJnXP_4core4hash11BuildHasher8hash_oneRNtNtCsgZ49sUHp3tW_5alloc6string6StringECshquuC4dCYVj_10polars_sql(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1)
          to label %bb.b unwind label %bb.c, !dbg !22449

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !22450
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !dbg !22450
  %i.d = call { i64, i1 } @_RNvMs_NtCse4dvU5uQ85g_8indexmap5innerINtB4_4CoreNtNtCsgZ49sUHp3tW_5alloc6string6StringuE11insert_fullCshquuC4dCYVj_10polars_sql(ptr noalias noundef nonnull align 8 dereferenceable(56) %0, i64 noundef %i.c, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.a), !dbg !22452
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !22453
  ret { i64, i1 } %i.d, !dbg !22454

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsgZ49sUHp3tW_5alloc6string6StringECshquuC4dCYVj_10polars_sql.exit: ; preds = %bb.c
  resume { ptr, i32 } %i.e, !dbg !22455

bb.c:                                             ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VechEECshquuC4dCYVj_10polars_sql(ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsgZ49sUHp3tW_5alloc6string6StringECshquuC4dCYVj_10polars_sql.exit unwind label %bb.d, !dbg !22456

bb.d:                                             ; preds = %bb.c
  %i.f = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #35, !dbg !22455
  unreachable, !dbg !22455
}

; Function Attrs: nonlazybind optsize uwtable
define void @_RNvMs2_NtNtNtCs8774dFTUdNv_12polars_arrow5array7binview7mutableINtB5_22MutableBinaryViewArrayeE13with_capacityCshquuC4dCYVj_10polars_sql(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([160 x i8]) align 8 captures(none) dereferenceable(160) %0, i64 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !22458 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [40 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 7 uses
  %i.d = alloca [24 x i8], align 8                ; 7 uses
  %i.e = alloca [24 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !22459
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !22460
  call void @_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsc3zL0BVEvAh_5gimli(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef %1, i1 noundef zeroext false, i64 noundef 4, i64 noundef 16), !dbg !22460
  %i.f = load i64, ptr %i.a, align 8, !dbg !22460, !range !168, !noundef !13
  %i.g = trunc nuw i64 %i.f to i1, !dbg !22468
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !22469
  %i.i = load i64, ptr %i.h, align 8, !dbg !22469, !range !793, !noundef !13 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !22469 ; 2 uses
  br i1 %i.g, label %bb.b, label %bb.c, !dbg !22468, !prof !161

bb.b:                                             ; preds = %bb.a
  %i.k = load i64, ptr %i.j, align 8, !dbg !22470
  tail call void @_RNvNtCsgZ49sUHp3tW_5alloc7raw_vec12handle_error(i64 noundef %i.i, i64 %i.k) #37, !dbg !22471
  unreachable, !dbg !22471

bb.c:                                             ; preds = %bb.a
  %i.l = load ptr, ptr %i.j, align 8, !dbg !22473, !nonnull !13, !noundef !13
  %i.m = icmp ule i64 %1, %i.i, !dbg !22474
  tail call void @llvm.assume(i1 %i.m), !dbg !22478
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !22481
  store i64 %i.i, ptr %i.e, align 8, !dbg !22482
  %i.n = getelementptr inbounds nuw i8, ptr %i.e, i64 8, !dbg !22482
  store ptr %i.l, ptr %i.n, align 8, !dbg !22482
  %i.o = getelementptr inbounds nuw i8, ptr %i.e, i64 16, !dbg !22482
  store i64 0, ptr %i.o, align 8, !dbg !22482
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !22483
  store i64 0, ptr %i.d, align 8, !dbg !22484
  %i.p = getelementptr inbounds nuw i8, ptr %i.d, i64 8, !dbg !22484
  store ptr inttoptr (i64 8 to ptr), ptr %i.p, align 8, !dbg !22484
  %i.q = getelementptr inbounds nuw i8, ptr %i.d, i64 16, !dbg !22484
  store i64 0, ptr %i.q, align 8, !dbg !22484
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !22486
  store i64 0, ptr %i.c, align 8, !dbg !22487
  %i.r = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !22487
  store ptr inttoptr (i64 1 to ptr), ptr %i.r, align 8, !dbg !22487
  %i.s = getelementptr inbounds nuw i8, ptr %i.c, i64 16, !dbg !22487
  store i64 0, ptr %i.s, align 8, !dbg !22487
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !22489
  invoke void @_RNvXs3_NtCs2mZqlW55729_12polars_utils7aliasesINtNtCs7tGzs63DEEy_9hashbrown3map7HashMapjmNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateENtB5_12InitHashMaps3newCshquuC4dCYVj_10polars_sql(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.b)
          to label %bb.d unwind label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutable13MutableBitmapEECshquuC4dCYVj_10polars_sql.exit, !dbg !22489

bb.d:                                             ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false), !dbg !22490
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !22490
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.t, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false), !dbg !22490
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 48, !dbg !22490
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.u, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !dbg !22490
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 72, !dbg !22490
  store i64 -9223372036854775808, ptr %i.v, align 8, !dbg !22490
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 144, !dbg !22490
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 104, !dbg !22490
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.w, i8 0, i64 16, i1 false), !dbg !22490
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.x, ptr noundef nonnull align 8 dereferenceable(40) %i.b, i64 40, i1 false), !dbg !22490
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !22491
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !22491
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !22491
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !22491
  ret void, !dbg !22492

bb.e:                                             ; preds = %bb.g, %bb.f, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutable13MutableBitmapEECshquuC4dCYVj_10polars_sql.exit
  %i.y = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #35, !dbg !22493
  unreachable, !dbg !22493

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutable13MutableBitmapEECshquuC4dCYVj_10polars_sql.exit: ; preds = %bb.c
  %i.z = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VechEECshquuC4dCYVj_10polars_sql(ptr noalias noundef align 8 dereferenceable(24) %i.c) #36
          to label %bb.f unwind label %bb.e, !dbg !22491

bb.f:                                             ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutable13MutableBitmapEECshquuC4dCYVj_10polars_sql.exit
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferhEEECshquuC4dCYVj_10polars_sql(ptr noalias noundef align 8 dereferenceable(24) %i.d) #36
          to label %bb.g unwind label %bb.e, !dbg !22491

bb.g:                                             ; preds = %bb.f
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtNtNtCs8774dFTUdNv_12polars_arrow5array7binview4view4ViewEECshquuC4dCYVj_10polars_sql(ptr noalias noundef align 8 dereferenceable(24) %i.e) #36
          to label %bb.h unwind label %bb.e, !dbg !22491

bb.h:                                             ; preds = %bb.g
  resume { ptr, i32 } %i.z, !dbg !22493
}

; Function Attrs: nonlazybind optsize uwtable
define noundef zeroext i1 @_RNvMs2_NtNtNtCs8774dFTUdNv_12polars_arrow5array7binview7mutableINtB5_22MutableBinaryViewArrayeE18finish_in_progressCshquuC4dCYVj_10polars_sql(ptr noalias noundef align 8 dereferenceable(160) %0) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !22494 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 64, !dbg !22495 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !dbg !22495, !noundef !13 ; 2 uses
  %i.e = icmp sgt i64 %i.d, -1, !dbg !22500
  tail call void @llvm.assume(i1 %i.e), !dbg !22502
  %i.f = icmp ne i64 %i.d, 0, !dbg !22503         ; 2 uses
  br i1 %i.f, label %bb.b, label %bb.h, !dbg !22503

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 48, !dbg !22495 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !22504 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !22505
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !22505
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 24, i1 false), !dbg !22506
  store i64 0, ptr %i.g, align 8, !dbg !22510
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56, !dbg !22510
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.4.0..sroa_idx, align 8, !dbg !22510
  store i64 0, ptr %i.c, align 8, !dbg !22510
  %i.i = call noundef nonnull ptr @_RNvMs5_NtCsknLZRuU4977_13polars_buffer7storageINtB5_13SharedStoragehE8from_vecCshquuC4dCYVj_10polars_sql(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.a), !dbg !22512
  call void @_RNvMs6_NtCsknLZRuU4977_13polars_buffer6bufferINtB5_6BufferhE12from_storageCshquuC4dCYVj_10polars_sql(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noundef nonnull %i.i), !dbg !22523
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !22524
  tail call void @llvm.experimental.noalias.scope.decl(metadata !22525), !dbg !22528
  tail call void @llvm.experimental.noalias.scope.decl(metadata !22531), !dbg !22528
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 40, !dbg !22533 ; 2 uses
  %i.k = load i64, ptr %i.j, align 8, !dbg !22533, !alias.scope !22525, !noalias !22531, !noundef !13 ; 3 uses
  %i.l = load i64, ptr %i.h, align 8, !dbg !22536, !range !2002, !alias.scope !22525, !noalias !22531, !noundef !13
  %i.m = icmp eq i64 %i.k, %i.l, !dbg !22542
  br i1 %i.m, label %bb.c, label %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferhEE8push_mutCshquuC4dCYVj_10polars_sql.exit, !dbg !22542

bb.c:                                             ; preds = %bb.b
  invoke void @_RNvMs3_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferhEE8grow_oneCs8774dFTUdNv_12polars_arrow(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferhEE8push_mutCshquuC4dCYVj_10polars_sql.exit unwind label %bb.d, !dbg !22543, !noalias !22531

bb.d:                                             ; preds = %bb.c
  %i.n = landingpad { ptr, i32 }
          cleanup
  tail call void @llvm.experimental.noalias.scope.decl(metadata !22544), !dbg !22547
  tail call void @llvm.experimental.noalias.scope.decl(metadata !22548), !dbg !22551
  tail call void @llvm.experimental.noalias.scope.decl(metadata !22554), !dbg !22557
  %i.o = load ptr, ptr %i.b, align 8, !dbg !22559, !alias.scope !22563, !noalias !22525, !nonnull !13, !noundef !13 ; 2 uses
  %i.p = load i64, ptr %i.o, align 8, !dbg !22564, !range !5656, !noalias !22563, !noundef !13
  %i.q = icmp eq i64 %i.p, 3, !dbg !22565
  br i1 %i.q, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferhEECshquuC4dCYVj_10polars_sql.exit.i, label %bb.e, !dbg !22565

bb.e:                                             ; preds = %bb.d
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 24, !dbg !22566
  %i.s = atomicrmw sub ptr %i.r, i64 1 release, align 8, !dbg !22570, !noalias !22563
  %i.t = icmp eq i64 %i.s, 1, !dbg !22572
  br i1 %i.t, label %bb.f, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferhEECshquuC4dCYVj_10polars_sql.exit.i, !dbg !22572, !prof !161

bb.f:                                             ; preds = %bb.e
  fence acquire, !dbg !22573
  invoke void @_RNvMs9_NtCsknLZRuU4977_13polars_buffer7storageINtB5_13SharedStoragehE9drop_slowCshquuC4dCYVj_10polars_sql(ptr noalias noundef nonnull readonly align 8 dereferenceable(24) %i.b)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferhEECshquuC4dCYVj_10polars_sql.exit.i unwind label %bb.g, !dbg !22575

bb.g:                                             ; preds = %bb.f
  %i.u = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #35, !dbg !22576, !noalias !22531
  unreachable, !dbg !22576

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferhEECshquuC4dCYVj_10polars_sql.exit.i: ; preds = %bb.f, %bb.e, %bb.d
  resume { ptr, i32 } %i.n, !dbg !22576

_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferhEE8push_mutCshquuC4dCYVj_10polars_sql.exit: ; preds = %bb.b, %bb.c
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !22577
  %i.w = load ptr, ptr %i.v, align 8, !dbg !22577, !alias.scope !22525, !noalias !22531, !nonnull !13, !noundef !13
  %i.x = getelementptr inbounds nuw [24 x i8], ptr %i.w, i64 %i.k, !dbg !22586
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.x, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.b, i64 24, i1 false), !dbg !22589
  %i.y = add i64 %i.k, 1, !dbg !22593
  store i64 %i.y, ptr %i.j, align 8, !dbg !22593, !alias.scope !22525, !noalias !22531
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !22594
  br label %bb.h, !dbg !22595

bb.h:                                             ; preds = %bb.a, %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferhEE8push_mutCshquuC4dCYVj_10polars_sql.exit
  ret i1 %i.f, !dbg !22596
}

; Function Attrs: nonlazybind optsize uwtable
define void @_RNvMs2_NtNtNtCs8774dFTUdNv_12polars_arrow5array7binview7mutableINtB5_22MutableBinaryViewArrayeE22push_value_into_bufferCshquuC4dCYVj_10polars_sql(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 4 captures(none) dereferenceable(16) %0, ptr noalias noundef align 8 dereferenceable(160) %1, ptr noalias noundef nonnull readonly captures(none) %2, i64 noundef range(i64 0, -9223372036854775808) %3) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !22597 {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %.sroa.4 = alloca [12 x i8], align 8            ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %i.e = icmp samesign ult i64 %3, 4294967296, !dbg !22598
  br i1 %i.e, label %bb.c, label %bb.b, !dbg !22598, !prof !14409

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @28, i64 noundef 50, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @30) #40, !dbg !22599
  unreachable, !dbg !22599

bb.c:                                             ; preds = %bb.a
  %i.f = icmp samesign ult i64 %3, 13, !dbg !22600
  br i1 %i.f, label %bb.q, label %bb.d, !dbg !22600

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 152, !dbg !22601 ; 2 uses
  %i.h = load i64, ptr %i.g, align 8, !dbg !22601, !noundef !13
  %i.i = add i64 %i.h, %3, !dbg !22601
  store i64 %i.i, ptr %i.g, align 8, !dbg !22601
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 48, !dbg !22602 ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 64, !dbg !22602 ; 6 uses
  %i.l = load i64, ptr %i.k, align 8, !dbg !22602, !noundef !13 ; 3 uses
  %i.m = icmp sgt i64 %i.l, -1, !dbg !22605
  tail call void @llvm.assume(i1 %i.m), !dbg !22607
  %i.n = add nuw i64 %i.l, %3, !dbg !22608
  %i.o = load i64, ptr %i.j, align 8, !dbg !22611, !range !2002, !noundef !13 ; 2 uses
  %.sroa.0.0.i = tail call noundef range(i64 0, 576460752303423487) i64 @llvm.umin.i64(i64 range(i64 0, -9223372036854775808) %i.o, i64 2147483647), !dbg !22618
  %i.p = icmp ugt i64 %i.n, %.sroa.0.0.i, !dbg !22620
  br i1 %i.p, label %bb.e, label %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCshquuC4dCYVj_10polars_sql.exit, !dbg !22620

bb.e:                                             ; preds = %bb.d
  %i.q = shl nuw i64 %i.o, 1, !dbg !22621
  %i.r = tail call i64 @llvm.umax.i64(i64 range(i64 0, -1) %i.q, i64 8192), !dbg !22622
  %.sroa.0.0.i11 = tail call noundef range(i64 8192, 16777217) i64 @llvm.umin.i64(i64 %i.r, i64 16777216), !dbg !22622
  %.sroa.0.0.i12 = tail call noundef range(i64 32, 0) i64 @llvm.umax.i64(i64 range(i64 32, 16777217) %.sroa.0.0.i11, i64 %3), !dbg !22626 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !22628
  call void @_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsc3zL0BVEvAh_5gimli(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, i64 noundef %.sroa.0.0.i12, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1), !dbg !22628
  %i.s = load i64, ptr %i.b, align 8, !dbg !22628, !range !168, !noundef !13
  %i.t = trunc nuw i64 %i.s to i1, !dbg !22638
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !22639
  %i.v = load i64, ptr %i.u, align 8, !dbg !22639, !range !793, !noundef !13 ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !22639 ; 2 uses
  br i1 %i.t, label %bb.f, label %bb.g, !dbg !22638, !prof !161

_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCshquuC4dCYVj_10polars_sql.exit: ; preds = %bb.d, %bb.o
  %i.x = phi i64 [ %i.l, %bb.d ], [ %.pre, %bb.o ], !dbg !22640 ; 2 uses
  %i.y = icmp sgt i64 %i.x, -1, !dbg !22642
  call void @llvm.assume(i1 %i.y), !dbg !22644
  call void @_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE7reserveCslQmxXDgb3RF_9addr2line(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.j, i64 noundef %3), !dbg !22645
  %i.z = load i64, ptr %i.k, align 8, !dbg !22653, !alias.scope !22655, !noundef !13 ; 2 uses
  %i.aa = icmp sgt i64 %i.z, -1, !dbg !22658
  call void @llvm.assume(i1 %i.aa), !dbg !22659
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 56, !dbg !22660
  %i.ac = load ptr, ptr %i.ab, align 8, !dbg !22660, !alias.scope !22655, !nonnull !13, !noundef !13
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.z, !dbg !22665
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ad, ptr nonnull readonly align 1 %2, i64 %3, i1 false), !dbg !22667
  %.pre.i = load i64, ptr %i.k, align 8, !dbg !22669, !alias.scope !22655
  %i.ae = add i64 %.pre.i, %3, !dbg !22669
  store i64 %i.ae, ptr %i.k, align 8, !dbg !22669, !alias.scope !22655
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 40, !dbg !22670
  %i.ag = load i64, ptr %i.af, align 8, !dbg !22670, !noundef !13 ; 3 uses
  %i.ah = icmp ult i64 %i.ag, 384307168202282326, !dbg !22673
  call void @llvm.assume(i1 %i.ah), !dbg !22675
  %i.ai = icmp samesign ugt i64 %i.ag, 4294967295, !dbg !22676
  br i1 %i.ai, label %.split, label %.split9, !dbg !22676

bb.f:                                             ; preds = %bb.e
  %i.aj = load i64, ptr %i.w, align 8, !dbg !22683
  tail call void @_RNvNtCsgZ49sUHp3tW_5alloc7raw_vec12handle_error(i64 noundef %i.v, i64 %i.aj) #37, !dbg !22684
  unreachable, !dbg !22684

bb.g:                                             ; preds = %bb.e
  %i.ak = load ptr, ptr %i.w, align 8, !dbg !22686, !nonnull !13, !noundef !13
  %i.al = icmp samesign ule i64 %.sroa.0.0.i12, %i.v, !dbg !22687
  tail call void @llvm.assume(i1 %i.al), !dbg !22691
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !22694
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !22695
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %i.j, i64 24, i1 false), !dbg !22697
  store i64 %i.v, ptr %i.j, align 8, !dbg !22700
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 56, !dbg !22700
  store ptr %i.ak, ptr %.sroa.2.0..sroa_idx, align 8, !dbg !22700
  store i64 0, ptr %i.k, align 8, !dbg !22700
  %i.am = getelementptr inbounds nuw i8, ptr %i.d, i64 16, !dbg !22702
  %i.an = load i64, ptr %i.am, align 8, !dbg !22702, !noundef !13 ; 2 uses
  %i.ao = icmp sgt i64 %i.an, -1, !dbg !22707
  tail call void @llvm.assume(i1 %i.ao), !dbg !22709
  %i.ap = icmp eq i64 %i.an, 0, !dbg !22710
  br i1 %i.ap, label %bb.h, label %bb.i, !dbg !22710

bb.h:                                             ; preds = %bb.g
  call fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VechEECshquuC4dCYVj_10polars_sql(ptr noalias noundef align 8 dereferenceable(24) %i.d), !dbg !22711
  br label %bb.o, !dbg !22711

bb.i:                                             ; preds = %bb.g
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 24, !dbg !22712 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !22713
  %i.ar = call noundef nonnull ptr @_RNvMs5_NtCsknLZRuU4977_13polars_buffer7storageINtB5_13SharedStoragehE8from_vecCshquuC4dCYVj_10polars_sql(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.d), !dbg !22714
  call void @_RNvMs6_NtCsknLZRuU4977_13polars_buffer6bufferINtB5_6BufferhE12from_storageCshquuC4dCYVj_10polars_sql(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, ptr noundef nonnull %i.ar), !dbg !22721
  tail call void @llvm.experimental.noalias.scope.decl(metadata !22722), !dbg !22725
  tail call void @llvm.experimental.noalias.scope.decl(metadata !22728), !dbg !22725
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 40, !dbg !22730 ; 2 uses
  %i.at = load i64, ptr %i.as, align 8, !dbg !22730, !alias.scope !22722, !noalias !22728, !noundef !13 ; 3 uses
  %i.au = load i64, ptr %i.aq, align 8, !dbg !22732, !range !2002, !alias.scope !22722, !noalias !22728, !noundef !13
  %i.av = icmp eq i64 %i.at, %i.au, !dbg !22735
  br i1 %i.av, label %bb.j, label %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferhEE8push_mutCshquuC4dCYVj_10polars_sql.exit, !dbg !22735

bb.j:                                             ; preds = %bb.i
  invoke void @_RNvMs3_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferhEE8grow_oneCs8774dFTUdNv_12polars_arrow(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.aq)
          to label %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferhEE8push_mutCshquuC4dCYVj_10polars_sql.exit unwind label %bb.k, !dbg !22736, !noalias !22728

bb.k:                                             ; preds = %bb.j
  %i.aw = landingpad { ptr, i32 }
          cleanup
  tail call void @llvm.experimental.noalias.scope.decl(metadata !22737), !dbg !22740
  tail call void @llvm.experimental.noalias.scope.decl(metadata !22741), !dbg !22744
  tail call void @llvm.experimental.noalias.scope.decl(metadata !22746), !dbg !22749
  %i.ax = load ptr, ptr %i.c, align 8, !dbg !22751, !alias.scope !22754, !noalias !22722, !nonnull !13, !noundef !13 ; 2 uses
  %i.ay = load i64, ptr %i.ax, align 8, !dbg !22755, !range !5656, !noalias !22754, !noundef !13
  %i.az = icmp eq i64 %i.ay, 3, !dbg !22756
  br i1 %i.az, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferhEECshquuC4dCYVj_10polars_sql.exit.i, label %bb.l, !dbg !22756

bb.l:                                             ; preds = %bb.k
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ax, i64 24, !dbg !22757
  %i.bb = atomicrmw sub ptr %i.ba, i64 1 release, align 8, !dbg !22761, !noalias !22754
  %i.bc = icmp eq i64 %i.bb, 1, !dbg !22763
  br i1 %i.bc, label %bb.m, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferhEECshquuC4dCYVj_10polars_sql.exit.i, !dbg !22763, !prof !161

bb.m:                                             ; preds = %bb.l
  fence acquire, !dbg !22764
  invoke void @_RNvMs9_NtCsknLZRuU4977_13polars_buffer7storageINtB5_13SharedStoragehE9drop_slowCshquuC4dCYVj_10polars_sql(ptr noalias noundef nonnull readonly align 8 dereferenceable(24) %i.c)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferhEECshquuC4dCYVj_10polars_sql.exit.i unwind label %bb.n, !dbg !22766

bb.n:                                             ; preds = %bb.m
  %i.bd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #35, !dbg !22767, !noalias !22728
  unreachable, !dbg !22767

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferhEECshquuC4dCYVj_10polars_sql.exit.i: ; preds = %bb.m, %bb.l, %bb.k
  resume { ptr, i32 } %i.aw, !dbg !22767

_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferhEE8push_mutCshquuC4dCYVj_10polars_sql.exit: ; preds = %bb.i, %bb.j
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !22768
  %i.bf = load ptr, ptr %i.be, align 8, !dbg !22768, !alias.scope !22722, !noalias !22728, !nonnull !13, !noundef !13
  %i.bg = getelementptr inbounds nuw [24 x i8], ptr %i.bf, i64 %i.at, !dbg !22773
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bg, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.c, i64 24, i1 false), !dbg !22775
  %i.bh = add i64 %i.at, 1, !dbg !22777
  store i64 %i.bh, ptr %i.as, align 8, !dbg !22777, !alias.scope !22722, !noalias !22728
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !22778
  br label %bb.o, !dbg !22711

bb.o:                                             ; preds = %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferhEE8push_mutCshquuC4dCYVj_10polars_sql.exit, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !22711
  %.pre = load i64, ptr %i.k, align 8, !dbg !22640
  br label %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCshquuC4dCYVj_10polars_sql.exit, !dbg !22779

.split9:                                          ; preds = %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCshquuC4dCYVj_10polars_sql.exit
  %i.bi = trunc i64 %i.x to i32, !dbg !22780
  %i.bj = trunc nuw i64 %i.ag to i32, !dbg !22781
  %.val = load i32, ptr %2, align 1, !dbg !22782
  %i.bk = trunc nuw i64 %3 to i32, !dbg !22784
  store i32 %i.bk, ptr %0, align 4, !dbg !22793, !alias.scope !22794
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 4, !dbg !22793
  store i32 %.val, ptr %i.bl, align 4, !dbg !22793, !alias.scope !22794
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !22793
  store i32 %i.bj, ptr %i.bm, align 4, !dbg !22793, !alias.scope !22794
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 12, !dbg !22793
  store i32 %i.bi, ptr %i.bn, align 4, !dbg !22793, !alias.scope !22794
  br label %bb.p, !dbg !22782

.split:                                           ; preds = %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCshquuC4dCYVj_10polars_sql.exit
  call void @_RNvNtCscgRAwXFJnXP_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @22, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @24, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @31) #37, !dbg !22797
  unreachable

bb.p:                                             ; preds = %bb.q, %.split9
  ret void, !dbg !22801

bb.q:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4), !dbg !22802
  %i.bo = trunc nuw nsw i64 %3 to i32, !dbg !22807
  store <2 x i32> zeroinitializer, ptr %.sroa.4, align 8, !dbg !22808
  %.sroa.4.8..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.4, i64 8, !dbg !22808
  store i32 0, ptr %.sroa.4.8..sroa_idx, align 8, !dbg !22808
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.4, ptr nonnull align 1 %2, i64 %3, i1 false), !dbg !22809
  store i32 %i.bo, ptr %0, align 4, !dbg !22815
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4, !dbg !22815
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.4.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(12) %.sroa.4, i64 12, i1 false), !dbg !22815
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4), !dbg !22816
  br label %bb.p, !dbg !22817
}

; Function Attrs: nonlazybind optsize uwtable
define noundef nonnull ptr @_RNvMs5_NtCsknLZRuU4977_13polars_buffer7storageINtB5_13SharedStorageINtNtB7_6buffer6BufferhEE8from_vecCshquuC4dCYVj_10polars_sql(ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !22818 {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !22819
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !22820
  %i.c = load ptr, ptr %i.b, align 8, !dbg !22820, !nonnull !13, !noundef !13
  %i.d = load i64, ptr %0, align 8, !dbg !22820, !range !2002, !noundef !13
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !22820
  %i.f = load i64, ptr %i.e, align 8, !dbg !22820, !noundef !13 ; 2 uses
  %i.g = icmp ult i64 %i.f, 384307168202282326, !dbg !22821
  tail call void @llvm.assume(i1 %i.g), !dbg !22827
  %i.h = mul nuw nsw i64 %i.f, 24, !dbg !22828
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24, !dbg !22829
  store i64 1, ptr %i.i, align 8, !dbg !22829
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 32, !dbg !22829
  store ptr %i.c, ptr %i.j, align 8, !dbg !22829
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 40, !dbg !22829
  store i64 %i.h, ptr %i.k, align 8, !dbg !22829
  store i64 0, ptr %i.a, align 8, !dbg !22829
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !22829
  store i64 %i.d, ptr %.sroa.4.0..sroa_idx, align 8, !dbg !22829
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !22829
  store ptr @32, ptr %.sroa.5.0..sroa_idx, align 8, !dbg !22829
  tail call void @_RNvCs9MrPpZx4smZ_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #39, !dbg !22833, !noalias !22848
  %i.l = tail call noundef align 8 dereferenceable_or_null(48) ptr @_RNvCs9MrPpZx4smZ_7___rustc12___rust_alloc(i64 noundef range(i64 48, 129) 48, i64 noundef 8) #39, !dbg !22851, !noalias !22848 ; 3 uses
  %i.m = icmp eq ptr %i.l, null, !dbg !22852
  br i1 %i.m, label %bb.b, label %_RNvMNtCsgZ49sUHp3tW_5alloc5boxedINtB2_3BoxINtNtCsknLZRuU4977_13polars_buffer7storage18SharedStorageInnerINtNtBJ_6buffer6BufferhEEE3newCshquuC4dCYVj_10polars_sql.exit, !dbg !22853, !prof !161

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvNtCsgZ49sUHp3tW_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 48) #37
          to label %.noexc unwind label %bb.c, !dbg !22854

.noexc:                                           ; preds = %bb.b
  unreachable, !dbg !22854

bb.c:                                             ; preds = %bb.b
  %i.n = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsknLZRuU4977_13polars_buffer7storage18SharedStorageInnerINtNtBL_6buffer6BufferhEEECshquuC4dCYVj_10polars_sql(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.a) #36
          to label %bb.e unwind label %bb.d, !dbg !22855

bb.d:                                             ; preds = %bb.c
  %i.o = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #35, !dbg !22856
  unreachable, !dbg !22856

bb.e:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.n, !dbg !22856

_RNvMNtCsgZ49sUHp3tW_5alloc5boxedINtB2_3BoxINtNtCsknLZRuU4977_13polars_buffer7storage18SharedStorageInnerINtNtBJ_6buffer6BufferhEEE3newCshquuC4dCYVj_10polars_sql.exit: ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.l, ptr noundef nonnull align 8 dereferenceable(48) %i.a, i64 48, i1 false), !dbg !22857
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !22859
  ret ptr %i.l, !dbg !22860
}

; Function Attrs: nonlazybind optsize uwtable
define noundef nonnull ptr @_RNvMs5_NtCsknLZRuU4977_13polars_buffer7storageINtB5_13SharedStorageNtNtNtNtCs8774dFTUdNv_12polars_arrow5array7binview4view4ViewE8from_vecCshquuC4dCYVj_10polars_sql(ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !22861 {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !22862
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !22863
  %i.c = load ptr, ptr %i.b, align 8, !dbg !22863, !nonnull !13, !noundef !13
  %i.d = load i64, ptr %0, align 8, !dbg !22863, !range !2002, !noundef !13
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !22863
  %i.f = load i64, ptr %i.e, align 8, !dbg !22863, !noundef !13 ; 2 uses
  %i.g = icmp ult i64 %i.f, 576460752303423488, !dbg !22864
  tail call void @llvm.assume(i1 %i.g), !dbg !22869
  %i.h = shl nuw nsw i64 %i.f, 4, !dbg !22870
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24, !dbg !22871
  store i64 1, ptr %i.i, align 8, !dbg !22871
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 32, !dbg !22871
  store ptr %i.c, ptr %i.j, align 8, !dbg !22871
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 40, !dbg !22871
  store i64 %i.h, ptr %i.k, align 8, !dbg !22871
  store i64 0, ptr %i.a, align 8, !dbg !22871
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !22871
  store i64 %i.d, ptr %.sroa.4.0..sroa_idx, align 8, !dbg !22871
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !22871
  store ptr @33, ptr %.sroa.5.0..sroa_idx, align 8, !dbg !22871
  tail call void @_RNvCs9MrPpZx4smZ_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #39, !dbg !22875, !noalias !22883
  %i.l = tail call noundef align 8 dereferenceable_or_null(48) ptr @_RNvCs9MrPpZx4smZ_7___rustc12___rust_alloc(i64 noundef range(i64 48, 129) 48, i64 noundef 8) #39, !dbg !22886, !noalias !22883 ; 3 uses
  %i.m = icmp eq ptr %i.l, null, !dbg !22887
  br i1 %i.m, label %bb.b, label %_RNvMNtCsgZ49sUHp3tW_5alloc5boxedINtB2_3BoxINtNtCsknLZRuU4977_13polars_buffer7storage18SharedStorageInnerNtNtNtNtCs8774dFTUdNv_12polars_arrow5array7binview4view4ViewEE3newCshquuC4dCYVj_10polars_sql.exit, !dbg !22888, !prof !161

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvNtCsgZ49sUHp3tW_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 48) #37
          to label %.noexc unwind label %bb.c, !dbg !22889

.noexc:                                           ; preds = %bb.b
  unreachable, !dbg !22889

bb.c:                                             ; preds = %bb.b
  %i.n = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsknLZRuU4977_13polars_buffer7storage18SharedStorageInnerNtNtNtNtCs8774dFTUdNv_12polars_arrow5array7binview4view4ViewEECshquuC4dCYVj_10polars_sql(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.a) #36
          to label %bb.e unwind label %bb.d, !dbg !22890

bb.d:                                             ; preds = %bb.c
  %i.o = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #35, !dbg !22891
  unreachable, !dbg !22891

bb.e:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.n, !dbg !22891

_RNvMNtCsgZ49sUHp3tW_5alloc5boxedINtB2_3BoxINtNtCsknLZRuU4977_13polars_buffer7storage18SharedStorageInnerNtNtNtNtCs8774dFTUdNv_12polars_arrow5array7binview4view4ViewEE3newCshquuC4dCYVj_10polars_sql.exit: ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.l, ptr noundef nonnull align 8 dereferenceable(48) %i.a, i64 48, i1 false), !dbg !22892
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !22894
  ret ptr %i.l, !dbg !22895
}

; Function Attrs: nonlazybind optsize uwtable
define noundef nonnull ptr @_RNvMs5_NtCsknLZRuU4977_13polars_buffer7storageINtB5_13SharedStoragehE8from_vecCshquuC4dCYVj_10polars_sql(ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !22896 {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !22897
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !22898
  %i.c = load ptr, ptr %i.b, align 8, !dbg !22898, !nonnull !13, !noundef !13
  %i.d = load i64, ptr %0, align 8, !dbg !22898, !range !2002, !noundef !13
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !22898
  %i.f = load i64, ptr %i.e, align 8, !dbg !22898, !noundef !13 ; 2 uses
  %i.g = icmp sgt i64 %i.f, -1, !dbg !22899
  tail call void @llvm.assume(i1 %i.g), !dbg !22904
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 24, !dbg !22905
  store i64 1, ptr %i.h, align 8, !dbg !22905
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32, !dbg !22905
  store ptr %i.c, ptr %i.i, align 8, !dbg !22905
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 40, !dbg !22905
  store i64 %i.f, ptr %i.j, align 8, !dbg !22905
  store i64 0, ptr %i.a, align 8, !dbg !22905
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !22905
  store i64 %i.d, ptr %.sroa.4.0..sroa_idx, align 8, !dbg !22905
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !22905
  store ptr @34, ptr %.sroa.5.0..sroa_idx, align 8, !dbg !22905
  tail call void @_RNvCs9MrPpZx4smZ_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #39, !dbg !22909, !noalias !22917
  %i.k = tail call noundef align 8 dereferenceable_or_null(48) ptr @_RNvCs9MrPpZx4smZ_7___rustc12___rust_alloc(i64 noundef range(i64 48, 129) 48, i64 noundef 8) #39, !dbg !22920, !noalias !22917 ; 3 uses
  %i.l = icmp eq ptr %i.k, null, !dbg !22921
  br i1 %i.l, label %bb.b, label %_RNvMNtCsgZ49sUHp3tW_5alloc5boxedINtB2_3BoxINtNtCsknLZRuU4977_13polars_buffer7storage18SharedStorageInnerhEE3newCshquuC4dCYVj_10polars_sql.exit, !dbg !22922, !prof !161

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvNtCsgZ49sUHp3tW_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 48) #37
          to label %.noexc unwind label %bb.c, !dbg !22923

.noexc:                                           ; preds = %bb.b
  unreachable, !dbg !22923

bb.c:                                             ; preds = %bb.b
  %i.m = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsknLZRuU4977_13polars_buffer7storage18SharedStorageInnerhEECshquuC4dCYVj_10polars_sql(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.a) #36
          to label %bb.e unwind label %bb.d, !dbg !22924

bb.d:                                             ; preds = %bb.c
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #35, !dbg !22925
  unreachable, !dbg !22925

bb.e:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.m, !dbg !22925

_RNvMNtCsgZ49sUHp3tW_5alloc5boxedINtB2_3BoxINtNtCsknLZRuU4977_13polars_buffer7storage18SharedStorageInnerhEE3newCshquuC4dCYVj_10polars_sql.exit: ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.k, ptr noundef nonnull align 8 dereferenceable(48) %i.a, i64 48, i1 false), !dbg !22926
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !22928
  ret ptr %i.k, !dbg !22929
}

; Function Attrs: nonlazybind optsize uwtable
define noundef nonnull ptr @_RNvMs5_NtCsknLZRuU4977_13polars_buffer7storageINtB5_13SharedStoragelE8from_vecCshquuC4dCYVj_10polars_sql(ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !22930 {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !22931
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !22932
  %i.c = load ptr, ptr %i.b, align 8, !dbg !22932, !nonnull !13, !noundef !13
  %i.d = load i64, ptr %0, align 8, !dbg !22932, !range !2002, !noundef !13
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !22932
  %i.f = load i64, ptr %i.e, align 8, !dbg !22932, !noundef !13 ; 2 uses
  %i.g = icmp ult i64 %i.f, 2305843009213693952, !dbg !22933
  tail call void @llvm.assume(i1 %i.g), !dbg !22938
  %i.h = shl nuw nsw i64 %i.f, 2, !dbg !22939
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24, !dbg !22940
  store i64 1, ptr %i.i, align 8, !dbg !22940
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 32, !dbg !22940
  store ptr %i.c, ptr %i.j, align 8, !dbg !22940
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 40, !dbg !22940
  store i64 %i.h, ptr %i.k, align 8, !dbg !22940
  store i64 0, ptr %i.a, align 8, !dbg !22940
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !22940
  store i64 %i.d, ptr %.sroa.4.0..sroa_idx, align 8, !dbg !22940
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !22940
  store ptr @35, ptr %.sroa.5.0..sroa_idx, align 8, !dbg !22940
  tail call void @_RNvCs9MrPpZx4smZ_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #39, !dbg !22944, !noalias !22952
  %i.l = tail call noundef align 8 dereferenceable_or_null(48) ptr @_RNvCs9MrPpZx4smZ_7___rustc12___rust_alloc(i64 noundef range(i64 48, 129) 48, i64 noundef 8) #39, !dbg !22955, !noalias !22952 ; 3 uses
end_hunk_0
begin_hunk_1_@_RNvMs9_NtCsknLZRuU4977_13polars_buffer7storageINtB5_13SharedStorageNtNtCs2mZqlW55729_12polars_utils7pl_path9PlRefPathE9drop_slowCshquuC4dCYVj_10polars_sql:bb.a
  %i.a = load ptr, ptr %0, align 8, !dbg !23111, !nonnull !13, !noundef !13 ; 9 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23112), !dbg !23115
  invoke void @_RNvXs1_NtCsknLZRuU4977_13polars_buffer7storageINtB5_18SharedStorageInnerNtNtCs2mZqlW55729_12polars_utils7pl_path9PlRefPathENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCshquuC4dCYVj_10polars_sql(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.a)
          to label %bb.d unwind label %bb.b, !dbg !23120

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.c = load i64, ptr %i.a, align 8, !dbg !23123, !range !5656, !alias.scope !23125, !noundef !13
  %i.d = icmp eq i64 %i.c, 1, !dbg !23123
  br i1 %i.d, label %bb.c, label %bb.h, !dbg !23123

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !23123
  %.val.i.i.i = load ptr, ptr %i.e, align 8, !dbg !23123, !alias.scope !23125
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !23123
  %.val1.i.i.i = load ptr, ptr %i.f, align 8, !dbg !23123, !alias.scope !23125, !nonnull !13, !align !1076, !noundef !13
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EECshquuC4dCYVj_10polars_sql(ptr %.val.i.i.i, ptr nonnull %.val1.i.i.i)
          to label %bb.h unwind label %bb.f, !dbg !23123, !noalias !23112

bb.d:                                             ; preds = %bb.a
  %i.g = load i64, ptr %i.a, align 8, !dbg !23128, !range !5656, !alias.scope !23130, !noundef !13
  %i.h = icmp eq i64 %i.g, 1, !dbg !23128
  br i1 %i.h, label %bb.e, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxINtNtCsknLZRuU4977_13polars_buffer7storage18SharedStorageInnerNtNtCs2mZqlW55729_12polars_utils7pl_path9PlRefPathEEECshquuC4dCYVj_10polars_sql.exit, !dbg !23128

bb.e:                                             ; preds = %bb.d
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !23128
  %.val.i1.i.i = load ptr, ptr %i.i, align 8, !dbg !23128, !alias.scope !23130
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !23128
  %.val1.i2.i.i = load ptr, ptr %i.j, align 8, !dbg !23128, !alias.scope !23130, !nonnull !13, !align !1076, !noundef !13
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EECshquuC4dCYVj_10polars_sql(ptr %.val.i1.i.i, ptr nonnull %.val1.i2.i.i)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxINtNtCsknLZRuU4977_13polars_buffer7storage18SharedStorageInnerNtNtCs2mZqlW55729_12polars_utils7pl_path9PlRefPathEEECshquuC4dCYVj_10polars_sql.exit unwind label %bb.g, !dbg !23128

bb.f:                                             ; preds = %bb.c
  %i.k = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #35, !dbg !23120, !noalias !23112
  unreachable, !dbg !23120

bb.g:                                             ; preds = %bb.e
  %i.l = landingpad { ptr, i32 }
          cleanup
  br label %bb.h, !dbg !23115

bb.h:                                             ; preds = %bb.g, %bb.c, %bb.b
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.l, %bb.g ], [ %i.b, %bb.c ], [ %i.b, %bb.b ]
  tail call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %i.a, i64 noundef 48, i64 noundef 8) #39, !dbg !23133
  resume { ptr, i32 } %eh.lpad-body.i, !dbg !23115

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxINtNtCsknLZRuU4977_13polars_buffer7storage18SharedStorageInnerNtNtCs2mZqlW55729_12polars_utils7pl_path9PlRefPathEEECshquuC4dCYVj_10polars_sql.exit: ; preds = %bb.d, %bb.e
  tail call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %i.a, i64 noundef 48, i64 noundef 8) #39, !dbg !23142
  ret void, !dbg !23148
}

; Function Attrs: cold nonlazybind optsize uwtable
define void @_RNvMs9_NtCsknLZRuU4977_13polars_buffer7storageINtB5_13SharedStorageNtNtNtNtCs8774dFTUdNv_12polars_arrow5array7binview4view4ViewE9drop_slowCshquuC4dCYVj_10polars_sql(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #4 personality ptr @rust_eh_personality !dbg !23149 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !dbg !23150, !nonnull !13, !noundef !13 ; 3 uses
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsknLZRuU4977_13polars_buffer7storage18SharedStorageInnerNtNtNtNtCs8774dFTUdNv_12polars_arrow5array7binview4view4ViewEECshquuC4dCYVj_10polars_sql(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.a)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxINtNtCsknLZRuU4977_13polars_buffer7storage18SharedStorageInnerNtNtNtNtCs8774dFTUdNv_12polars_arrow5array7binview4view4ViewEEECshquuC4dCYVj_10polars_sql.exit unwind label %bb.b, !dbg !23151

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %i.a, i64 noundef 48, i64 noundef 8) #39, !dbg !23156
  resume { ptr, i32 } %i.b, !dbg !23151

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxINtNtCsknLZRuU4977_13polars_buffer7storage18SharedStorageInnerNtNtNtNtCs8774dFTUdNv_12polars_arrow5array7binview4view4ViewEEECshquuC4dCYVj_10polars_sql.exit: ; preds = %bb.a
  tail call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %i.a, i64 noundef 48, i64 noundef 8) #39, !dbg !23165
  ret void, !dbg !23171
}

; Function Attrs: cold nonlazybind optsize uwtable
define void @_RNvMs9_NtCsknLZRuU4977_13polars_buffer7storageINtB5_13SharedStoragehE9drop_slowCshquuC4dCYVj_10polars_sql(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #4 personality ptr @rust_eh_personality !dbg !23172 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !dbg !23173, !nonnull !13, !noundef !13 ; 3 uses
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsknLZRuU4977_13polars_buffer7storage18SharedStorageInnerhEECshquuC4dCYVj_10polars_sql(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.a)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxINtNtCsknLZRuU4977_13polars_buffer7storage18SharedStorageInnerhEEECshquuC4dCYVj_10polars_sql.exit unwind label %bb.b, !dbg !23174

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %i.a, i64 noundef 48, i64 noundef 8) #39, !dbg !23179
  resume { ptr, i32 } %i.b, !dbg !23174

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxINtNtCsknLZRuU4977_13polars_buffer7storage18SharedStorageInnerhEEECshquuC4dCYVj_10polars_sql.exit: ; preds = %bb.a
  tail call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %i.a, i64 noundef 48, i64 noundef 8) #39, !dbg !23188
  ret void, !dbg !23194
}

; Function Attrs: cold nonlazybind optsize uwtable
define void @_RNvMs9_NtCsknLZRuU4977_13polars_buffer7storageINtB5_13SharedStoragelE9drop_slowCshquuC4dCYVj_10polars_sql(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #4 personality ptr @rust_eh_personality !dbg !23195 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !dbg !23196, !nonnull !13, !noundef !13 ; 3 uses
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsknLZRuU4977_13polars_buffer7storage18SharedStorageInnerlEECshquuC4dCYVj_10polars_sql(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.a)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxINtNtCsknLZRuU4977_13polars_buffer7storage18SharedStorageInnerlEEECshquuC4dCYVj_10polars_sql.exit unwind label %bb.b, !dbg !23197

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %i.a, i64 noundef 48, i64 noundef 8) #39, !dbg !23202
  resume { ptr, i32 } %i.b, !dbg !23197

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxINtNtCsknLZRuU4977_13polars_buffer7storage18SharedStorageInnerlEEECshquuC4dCYVj_10polars_sql.exit: ; preds = %bb.a
  tail call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %i.a, i64 noundef 48, i64 noundef 8) #39, !dbg !23211
  ret void, !dbg !23217
}

; Function Attrs: cold nonlazybind optsize uwtable
define void @_RNvMs9_NtCsknLZRuU4977_13polars_buffer7storageINtB5_13SharedStoragexE9drop_slowCshquuC4dCYVj_10polars_sql(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #4 personality ptr @rust_eh_personality !dbg !23218 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !dbg !23219, !nonnull !13, !noundef !13 ; 3 uses
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsknLZRuU4977_13polars_buffer7storage18SharedStorageInnerxEECshquuC4dCYVj_10polars_sql(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.a)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxINtNtCsknLZRuU4977_13polars_buffer7storage18SharedStorageInnerxEEECshquuC4dCYVj_10polars_sql.exit unwind label %bb.b, !dbg !23220

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %i.a, i64 noundef 48, i64 noundef 8) #39, !dbg !23225
  resume { ptr, i32 } %i.b, !dbg !23220

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxINtNtCsknLZRuU4977_13polars_buffer7storage18SharedStorageInnerxEEECshquuC4dCYVj_10polars_sql.exit: ; preds = %bb.a
  tail call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %i.a, i64 noundef 48, i64 noundef 8) #39, !dbg !23234
  ret void, !dbg !23240
}

; Function Attrs: nonlazybind optsize uwtable
define internal fastcc void @_RNvMs_NtCshquuC4dCYVj_10polars_sql15table_functionsNtB4_20PolarsTableFunctions22get_file_path_from_arg(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(72) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(784) %1) unnamed_addr #0 !dbg !23241 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 2 uses
  store ptr %1, ptr %i.c, align 8
  %i.d = load i64, ptr %1, align 8, !dbg !23245, !range !1066, !noundef !13 ; 2 uses
  %i.e = icmp ne i64 %i.d, 7, !dbg !23245
  tail call void @llvm.assume(i1 %i.e), !dbg !23245
  %i.f = icmp eq i64 %i.d, 8, !dbg !23246
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = load i64, ptr %i.g, align 8, !range !5762
  %i.i = icmp eq i64 %i.h, 3, !dbg !23246
  %or.cond = select i1 %i.f, i1 %i.i, i1 false, !dbg !23246, !prof !6159
  br i1 %or.cond, label %bb.c, label %bb.b, !dbg !23246, !prof !6159

bb.b:                                             ; preds = %bb.d, %bb.c, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !23247
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !23248
  store ptr %i.c, ptr %i.a, align 8, !dbg !23248
  %.sroa.45.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !23248
  store ptr @_RNvXs1i_NtCscgRAwXFJnXP_4core3fmtRNtNtCsaRr8xKSRVhT_9sqlparser3ast11FunctionArgNtB6_7Display3fmtCshquuC4dCYVj_10polars_sql, ptr %.sroa.45.0..sroa_idx, align 8, !dbg !23248
  call fastcc void @_RNvNtCsgZ49sUHp3tW_5alloc3fmt6format(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.b, ptr noundef nonnull @42, ptr noundef nonnull %i.a) #41, !dbg !23247
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !23247
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !23247
  call void @_RNvXs_CsgjwxzEoLG5s_12polars_errorNtB4_9ErrStringINtNtCscgRAwXFJnXP_4core7convert4FromNtNtCsgZ49sUHp3tW_5alloc6string6StringE4fromCshquuC4dCYVj_10polars_sql(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %.sroa.42.0..sroa_idx, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @43), !dbg !23251
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !23247
  br label %bb.f, !dbg !23247

bb.c:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !23245
  %i.k = load i64, ptr %i.j, align 8, !dbg !23245, !range !23254, !noundef !13 ; 2 uses
  %i.l = icmp ne i64 %i.k, 48, !dbg !23245
  tail call void @llvm.assume(i1 %i.l), !dbg !23245
  %i.m = icmp eq i64 %i.k, 45, !dbg !23246
  br i1 %i.m, label %bb.d, label %bb.b, !dbg !23246, !prof !14409

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 24, !dbg !23245
  %i.o = load i64, ptr %i.n, align 8, !dbg !23245, !range !23255, !noundef !13 ; 2 uses
  %i.p = icmp ne i64 %i.o, -9223372036854775806, !dbg !23245
  tail call void @llvm.assume(i1 %i.p), !dbg !23245
  %i.q = icmp eq i64 %i.o, -9223372036854775807, !dbg !23246
  br i1 %i.q, label %bb.e, label %bb.b, !dbg !23246, !prof !14409

bb.e:                                             ; preds = %bb.d
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !23256
  %i.s = tail call { ptr, i64 } @_RINvMs4_NtCs2mZqlW55729_12polars_utils7pl_pathNtB6_9PlRefPath3newRNtNtCsgZ49sUHp3tW_5alloc6string6StringECshquuC4dCYVj_10polars_sql(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.r), !dbg !23257 ; 2 uses
  %i.t = extractvalue { ptr, i64 } %i.s, 0, !dbg !23257
  %i.u = extractvalue { ptr, i64 } %i.s, 1, !dbg !23257
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !23259
  store ptr %i.t, ptr %i.v, align 8, !dbg !23259
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !23259
  store i64 %i.u, ptr %i.w, align 8, !dbg !23259
  br label %bb.f, !dbg !23260

bb.f:                                             ; preds = %bb.e, %bb.b
  %storemerge = phi i64 [ 12, %bb.b ], [ 18, %bb.e ], !dbg !23261
  store i64 %storemerge, ptr %0, align 8, !dbg !23261
  ret void, !dbg !23262
}

; Function Attrs: nonlazybind optsize uwtable
define hidden void @_RNvMs_NtCshquuC4dCYVj_10polars_sql15table_functionsNtB4_20PolarsTableFunctions7execute(ptr dead_on_unwind noalias noundef writable sret([400 x i8]) align 16 captures(address) dereferenceable(400) %0, ptr noalias noundef readonly captures(none) dereferenceable(1) %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %2, i64 noundef range(i64 0, 11764505149049459) %3) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !23263 {
bb.a:
  %i.a = alloca [288 x i8], align 8               ; 4 uses
  %i.b = alloca [384 x i8], align 16              ; 7 uses
  %.sroa.719.i33 = alloca [72 x i8], align 8      ; 6 uses
  %i.c = alloca [72 x i8], align 8                ; 8 uses
  %i.d = alloca [16 x i8], align 8                ; 10 uses
  %i.e = alloca [16 x i8], align 8                ; 5 uses
  %i.f = alloca [8 x i8], align 8                 ; 4 uses
  %i.g = alloca [24 x i8], align 8                ; 4 uses
  %i.h = alloca [376 x i8], align 8               ; 22 uses
  %i.i = alloca [384 x i8], align 16              ; 7 uses
  %.sroa.719.i15 = alloca [72 x i8], align 8      ; 6 uses
  %i.j = alloca [72 x i8], align 8                ; 8 uses
  %i.k = alloca [16 x i8], align 8                ; 7 uses
  %i.l = alloca [16 x i8], align 8                ; 5 uses
  %i.m = alloca [8 x i8], align 8                 ; 4 uses
  %i.n = alloca [24 x i8], align 8                ; 4 uses
  %i.o = alloca [256 x i8], align 8               ; 15 uses
  %i.p = alloca [384 x i8], align 16              ; 7 uses
  %.sroa.719.i1 = alloca [72 x i8], align 8       ; 6 uses
  %i.q = alloca [72 x i8], align 8                ; 8 uses
  %i.r = alloca [16 x i8], align 8                ; 7 uses
  %i.s = alloca [16 x i8], align 8                ; 5 uses
  %i.t = alloca [8 x i8], align 8                 ; 4 uses
  %i.u = alloca [24 x i8], align 8                ; 4 uses
  %i.v = alloca [464 x i8], align 8               ; 4 uses
  %i.w = alloca [464 x i8], align 8               ; 4 uses
  %i.x = alloca [464 x i8], align 8               ; 4 uses
  %i.y = alloca [384 x i8], align 16              ; 7 uses
  %.sroa.719.i = alloca [72 x i8], align 8        ; 6 uses
  %i.z = alloca [72 x i8], align 8                ; 8 uses
  %i.aa = alloca [16 x i8], align 8               ; 10 uses
  %i.ab = alloca [16 x i8], align 8               ; 5 uses
  %i.ac = alloca [8 x i8], align 8                ; 4 uses
  %i.ad = alloca [24 x i8], align 8               ; 4 uses
  %i.ae = load i8, ptr %1, align 1, !dbg !23264, !range !23265, !noundef !13
  %i.af = icmp eq i64 %3, 1, !dbg !23266          ; 4 uses
  switch i8 %i.ae, label %default.unreachable56 [
    i8 0, label %bb.b
    i8 1, label %bb.s
    i8 2, label %bb.ag
    i8 3, label %bb.au
  ], !dbg !23267

default.unreachable56:                            ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23268), !dbg !23271
  br i1 %i.af, label %bb.c, label %bb.d, !dbg !23272, !prof !14409

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa), !dbg !23275, !noalias !23276
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !dbg !23278, !noalias !23276
  call fastcc void @_RNvMs_NtCshquuC4dCYVj_10polars_sql15table_functionsNtB4_20PolarsTableFunctions22get_file_path_from_arg(ptr noalias noundef align 8 captures(none) dereferenceable(72) %i.z, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(784) %2), !dbg !23279, !noalias !23268
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23280), !dbg !23278
  %i.ag = load i64, ptr %i.z, align 8, !dbg !23283, !range !14337, !alias.scope !23286, !noalias !23288, !noundef !13 ; 2 uses
  %.not.i.i = icmp eq i64 %i.ag, 18, !dbg !23283
  %i.ah = getelementptr inbounds nuw i8, ptr %i.z, i64 8, !dbg !23289
  %i.ai = load ptr, ptr %i.ah, align 8, !dbg !23289, !alias.scope !23290, !noalias !23276 ; 4 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.z, i64 16, !dbg !23289
  %i.ak = load i64, ptr %i.aj, align 8, !dbg !23289, !alias.scope !23290, !noalias !23276 ; 3 uses
  br i1 %.not.i.i, label %bb.f, label %bb.e, !dbg !23291

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad), !dbg !23292, !noalias !23276
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac), !dbg !23293, !noalias !23276
  store i64 %3, ptr %i.ac, align 8, !dbg !23293, !noalias !23276
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab), !dbg !23294, !noalias !23276
  store ptr %i.ac, ptr %i.ab, align 8, !dbg !23294, !noalias !23276
  %.sroa.47.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ab, i64 8, !dbg !23294
  store ptr @_RNvXsZ_NtNtCscgRAwXFJnXP_4core3fmt3numjNtB7_5Debug3fmt, ptr %.sroa.47.0..sroa_idx.i, align 8, !dbg !23294, !noalias !23276
  call fastcc void @_RNvNtCsgZ49sUHp3tW_5alloc3fmt6format(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.ad, ptr noundef nonnull @44, ptr noundef nonnull %i.ab) #41, !dbg !23292, !noalias !23276
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !dbg !23292, !noalias !23276
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !dbg !23292, !noalias !23276
  %.sroa.44.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !23292
  call void @_RNvXs_CsgjwxzEoLG5s_12polars_errorNtB4_9ErrStringINtNtCscgRAwXFJnXP_4core7convert4FromNtNtCsgZ49sUHp3tW_5alloc6string6StringE4fromCshquuC4dCYVj_10polars_sql(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %.sroa.44.0..sroa_idx.i, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.ad, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @45), !dbg !23297, !noalias !23299
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !dbg !23292, !noalias !23276
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !23292
  store <2 x i64> <i64 -9223372036854775778, i64 12>, ptr %i.al, align 16, !dbg !23292, !alias.scope !23268, !noalias !23299
  br label %_RNvMs_NtCshquuC4dCYVj_10polars_sql15table_functionsNtB4_20PolarsTableFunctions8read_csv.exit, !dbg !23300

bb.e:                                             ; preds = %bb.c
  %.sroa.11.0..sroa_idx14.i = getelementptr inbounds nuw i8, ptr %i.z, i64 24, !dbg !23302
  %.sroa.416.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 48, !dbg !23304
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %.sroa.416.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.11.0..sroa_idx14.i, i64 48, i1 false), !dbg !23302, !noalias !23299
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !dbg !23310, !noalias !23276
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23311), !dbg !23314
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !23304
  store i64 %i.ag, ptr %i.am, align 8, !dbg !23304, !alias.scope !23315, !noalias !23299
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !23304
  store ptr %i.ai, ptr %.sroa.2.0..sroa_idx.i, align 16, !dbg !23304, !alias.scope !23315, !noalias !23299
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 40, !dbg !23304
  store i64 %i.ak, ptr %.sroa.3.0..sroa_idx.i, align 8, !dbg !23304, !alias.scope !23315, !noalias !23299
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !23304
  store i64 -9223372036854775778, ptr %i.an, align 16, !dbg !23304, !alias.scope !23317, !noalias !23318
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils7pl_path9PlRefPathECshquuC4dCYVj_10polars_sql.exit4.i, !dbg !23300

bb.f:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !dbg !23310, !noalias !23276
  store ptr %i.ai, ptr %i.aa, align 8, !dbg !23319, !noalias !23276
  %i.ao = getelementptr inbounds nuw i8, ptr %i.aa, i64 8, !dbg !23319 ; 2 uses
  store i64 %i.ak, ptr %i.ao, align 8, !dbg !23319, !noalias !23276
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.719.i), !dbg !23322
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y), !dbg !23322, !noalias !23276
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !dbg !23322, !noalias !23276
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !dbg !23322, !noalias !23276
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !dbg !23322, !noalias !23276
  %i.ap = atomicrmw add ptr %i.ai, i64 1 monotonic, align 8, !dbg !23324, !noalias !23268
  %i.aq = icmp slt i64 %i.ap, 0, !dbg !23342
  br i1 %i.aq, label %bb.g, label %bb.j, !dbg !23342

bb.g:                                             ; preds = %bb.f
  tail call void @llvm.trap(), !dbg !23344
  unreachable, !dbg !23344

bb.h:                                             ; preds = %bb.m, %bb.l, %bb.k, %bb.j
  %i.ar = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !23345), !dbg !23348
  call void @llvm.experimental.noalias.scope.decl(metadata !23349), !dbg !23352
  call void @llvm.experimental.noalias.scope.decl(metadata !23354), !dbg !23357
  call void @llvm.experimental.noalias.scope.decl(metadata !23359), !dbg !23362
  %i.as = load ptr, ptr %i.aa, align 8, !dbg !23364, !alias.scope !23368, !noalias !23276, !nonnull !13, !noundef !13
  %i.at = atomicrmw sub ptr %i.as, i64 1 release, align 8, !dbg !23369, !noalias !23372
  %i.au = icmp eq i64 %i.at, 1, !dbg !23373
  br i1 %i.au, label %bb.i, label %common.resume, !dbg !23373

bb.i:                                             ; preds = %bb.h
  fence acquire, !dbg !23374
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArceE9drop_slowCsfHnWouPsIOz_14regex_automata(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.aa) #38
          to label %common.resume unwind label %bb.r, !dbg !23376, !noalias !23268

bb.j:                                             ; preds = %bb.f
  invoke void @_RNvMNtNtCs7Ga9Brpi21q_11polars_lazy4scan3csvNtB2_13LazyCsvReader3new(ptr noalias noundef nonnull sret([464 x i8]) align 8 captures(address) dereferenceable(464) %i.v, ptr noundef nonnull %i.ai, i64 noundef %i.ak)
          to label %bb.k unwind label %bb.h, !dbg !23322, !noalias !23268

bb.k:                                             ; preds = %bb.j
  invoke void @_RNvMNtNtCs7Ga9Brpi21q_11polars_lazy4scan3csvNtB2_13LazyCsvReader20with_try_parse_dates(ptr noalias noundef nonnull sret([464 x i8]) align 8 captures(address) dereferenceable(464) %i.w, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(464) %i.v, i1 noundef zeroext true)
          to label %bb.l unwind label %bb.h, !dbg !23377, !noalias !23268

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !dbg !23378, !noalias !23276
  invoke void @_RNvMNtNtCs7Ga9Brpi21q_11polars_lazy4scan3csvNtB2_13LazyCsvReader20with_missing_is_null(ptr noalias noundef nonnull sret([464 x i8]) align 8 captures(address) dereferenceable(464) %i.x, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(464) %i.w, i1 noundef zeroext true)
          to label %bb.m unwind label %bb.h, !dbg !23379, !noalias !23268

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !dbg !23380, !noalias !23276
  invoke void @_RNvXs_NtNtCs7Ga9Brpi21q_11polars_lazy4scan3csvNtB4_13LazyCsvReaderNtNtB6_16file_list_reader18LazyFileListReader6finish(ptr noalias noundef nonnull sret([384 x i8]) align 16 captures(none) dereferenceable(384) %i.y, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(464) %i.x)
          to label %bb.n unwind label %bb.h, !dbg !23381, !noalias !23268

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !dbg !23382, !noalias !23276
  call void @llvm.experimental.noalias.scope.decl(metadata !23383), !dbg !23322
  %i.av = load i64, ptr %i.y, align 16, !dbg !23386, !range !5117, !alias.scope !23389, !noalias !23391, !noundef !13 ; 2 uses
  %i.aw = icmp eq i64 %i.av, -9223372036854775778, !dbg !23386
  %i.ax = getelementptr inbounds nuw i8, ptr %i.y, i64 8, !dbg !23392
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.719.i, ptr noundef nonnull align 8 dereferenceable(72) %i.ax, i64 72, i1 false), !dbg !23392, !alias.scope !23393, !noalias !23276
  br i1 %i.aw, label %bb.p, label %bb.o, !dbg !23394

bb.o:                                             ; preds = %bb.n
  %.sroa.921.0..sroa_idx22.i = getelementptr inbounds nuw i8, ptr %i.y, i64 80, !dbg !23395
  %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 96, !dbg !23397
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(304) %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx.i, ptr noundef nonnull align 16 dereferenceable(304) %.sroa.921.0..sroa_idx22.i, i64 304, i1 false), !dbg !23395, !noalias !23299
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !dbg !23399, !noalias !23276
  %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !23397
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.719.i, i64 72, i1 false), !dbg !23322, !noalias !23299
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.719.i), !dbg !23400
  %i.ay = load ptr, ptr %i.aa, align 8, !dbg !23401, !noalias !23276, !nonnull !13, !noundef !13
  %i.az = load i64, ptr %i.ao, align 8, !dbg !23401, !noalias !23276, !noundef !13
  store ptr %i.ay, ptr %0, align 16, !dbg !23397, !alias.scope !23268, !noalias !23299
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !23397
  store i64 %i.az, ptr %.sroa.4.0..sroa_idx.i, align 8, !dbg !23397, !alias.scope !23268, !noalias !23299
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !23397
  store i64 %i.av, ptr %.sroa.5.0..sroa_idx.i, align 16, !dbg !23397, !alias.scope !23268, !noalias !23299
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !dbg !23348, !noalias !23276
  br label %_RNvMs_NtCshquuC4dCYVj_10polars_sql15table_functionsNtB4_20PolarsTableFunctions8read_csv.exit, !dbg !23402

bb.p:                                             ; preds = %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !dbg !23399, !noalias !23276
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !23403
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.ba, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.719.i, i64 72, i1 false), !dbg !23399, !noalias !23299
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !23403
  store i64 -9223372036854775778, ptr %i.bb, align 16, !dbg !23403, !alias.scope !23407, !noalias !23410
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.719.i), !dbg !23400
  call void @llvm.experimental.noalias.scope.decl(metadata !23412), !dbg !23348
  call void @llvm.experimental.noalias.scope.decl(metadata !23415), !dbg !23418
  call void @llvm.experimental.noalias.scope.decl(metadata !23420), !dbg !23423
  call void @llvm.experimental.noalias.scope.decl(metadata !23425), !dbg !23428
  %i.bc = load ptr, ptr %i.aa, align 8, !dbg !23430, !alias.scope !23434, !noalias !23276, !nonnull !13, !noundef !13
  %i.bd = atomicrmw sub ptr %i.bc, i64 1 release, align 8, !dbg !23435, !noalias !23438
  %i.be = icmp eq i64 %i.bd, 1, !dbg !23439
  br i1 %i.be, label %bb.q, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils7pl_path9PlRefPathECshquuC4dCYVj_10polars_sql.exit4.i, !dbg !23439

bb.q:                                             ; preds = %bb.p
  fence acquire, !dbg !23440
  call void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArceE9drop_slowCsfHnWouPsIOz_14regex_automata(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.aa) #38, !dbg !23442, !noalias !23268
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils7pl_path9PlRefPathECshquuC4dCYVj_10polars_sql.exit4.i, !dbg !23442

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils7pl_path9PlRefPathECshquuC4dCYVj_10polars_sql.exit4.i: ; preds = %bb.q, %bb.p, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !dbg !23348, !noalias !23276
  br label %_RNvMs_NtCshquuC4dCYVj_10polars_sql15table_functionsNtB4_20PolarsTableFunctions8read_csv.exit, !dbg !23300

bb.r:                                             ; preds = %bb.i
  %i.bf = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #35, !dbg !23443, !noalias !23268
  unreachable, !dbg !23443

common.resume:                                    ; preds = %bb.ba, %bb.bb, %bb.am, %bb.an, %bb.y, %bb.z, %bb.h, %bb.i
  %common.resume.op = phi { ptr, i32 } [ %i.cu, %bb.am ], [ %i.ar, %bb.h ], [ %i.br, %bb.y ], [ %i.ar, %bb.i ], [ %i.br, %bb.z ], [ %i.cu, %bb.an ], [ %i.ee, %bb.bb ], [ %i.ee, %bb.ba ]
  resume { ptr, i32 } %common.resume.op, !dbg !23266

bb.s:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23444), !dbg !23447
  br i1 %i.af, label %bb.t, label %bb.u, !dbg !23448, !prof !14409

bb.t:                                             ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !dbg !23451, !noalias !23452
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !dbg !23454, !noalias !23452
  call fastcc void @_RNvMs_NtCshquuC4dCYVj_10polars_sql15table_functionsNtB4_20PolarsTableFunctions22get_file_path_from_arg(ptr noalias noundef align 8 captures(none) dereferenceable(72) %i.q, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(784) %2), !dbg !23455, !noalias !23444
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23456), !dbg !23454
  %i.bg = load i64, ptr %i.q, align 8, !dbg !23459, !range !14337, !alias.scope !23461, !noalias !23463, !noundef !13 ; 2 uses
  %.not.i.i4 = icmp eq i64 %i.bg, 18, !dbg !23459
  %i.bh = getelementptr inbounds nuw i8, ptr %i.q, i64 8, !dbg !23464
  %i.bi = load ptr, ptr %i.bh, align 8, !dbg !23464, !alias.scope !23465, !noalias !23452 ; 7 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.q, i64 16, !dbg !23464
  %i.bk = load i64, ptr %i.bj, align 8, !dbg !23464, !alias.scope !23465, !noalias !23452 ; 4 uses
  br i1 %.not.i.i4, label %bb.w, label %bb.v, !dbg !23466

bb.u:                                             ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !dbg !23467, !noalias !23452
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !dbg !23468, !noalias !23452
  store i64 %3, ptr %i.t, align 8, !dbg !23468, !noalias !23452
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !dbg !23469, !noalias !23452
  store ptr %i.t, ptr %i.s, align 8, !dbg !23469, !noalias !23452
  %.sroa.47.0..sroa_idx.i2 = getelementptr inbounds nuw i8, ptr %i.s, i64 8, !dbg !23469
  store ptr @_RNvXsZ_NtNtCscgRAwXFJnXP_4core3fmt3numjNtB7_5Debug3fmt, ptr %.sroa.47.0..sroa_idx.i2, align 8, !dbg !23469, !noalias !23452
  call fastcc void @_RNvNtCsgZ49sUHp3tW_5alloc3fmt6format(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.u, ptr noundef nonnull @40, ptr noundef nonnull %i.s) #41, !dbg !23467, !noalias !23452
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !dbg !23467, !noalias !23452
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !dbg !23467, !noalias !23452
  %.sroa.44.0..sroa_idx.i3 = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !23467
  call void @_RNvXs_CsgjwxzEoLG5s_12polars_errorNtB4_9ErrStringINtNtCscgRAwXFJnXP_4core7convert4FromNtNtCsgZ49sUHp3tW_5alloc6string6StringE4fromCshquuC4dCYVj_10polars_sql(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %.sroa.44.0..sroa_idx.i3, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.u, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @41), !dbg !23472, !noalias !23474
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !dbg !23467, !noalias !23452
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !23467
  store <2 x i64> <i64 -9223372036854775778, i64 12>, ptr %i.bl, align 16, !dbg !23467, !alias.scope !23444, !noalias !23474
  br label %_RNvMs_NtCshquuC4dCYVj_10polars_sql15table_functionsNtB4_20PolarsTableFunctions8read_csv.exit, !dbg !23475

bb.v:                                             ; preds = %bb.t
  %.sroa.11.0..sroa_idx14.i5 = getelementptr inbounds nuw i8, ptr %i.q, i64 24, !dbg !23477
  %.sroa.416.0..sroa_idx.i6 = getelementptr inbounds nuw i8, ptr %0, i64 48, !dbg !23478
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %.sroa.416.0..sroa_idx.i6, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.11.0..sroa_idx14.i5, i64 48, i1 false), !dbg !23477, !noalias !23474
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !dbg !23482, !noalias !23452
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23483), !dbg !23486
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !23478
  store i64 %i.bg, ptr %i.bm, align 8, !dbg !23478, !alias.scope !23487, !noalias !23474
  %.sroa.2.0..sroa_idx.i7 = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !23478
  store ptr %i.bi, ptr %.sroa.2.0..sroa_idx.i7, align 16, !dbg !23478, !alias.scope !23487, !noalias !23474
  %.sroa.3.0..sroa_idx.i8 = getelementptr inbounds nuw i8, ptr %0, i64 40, !dbg !23478
  store i64 %i.bk, ptr %.sroa.3.0..sroa_idx.i8, align 8, !dbg !23478, !alias.scope !23487, !noalias !23474
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !23478
  store i64 -9223372036854775778, ptr %i.bn, align 16, !dbg !23478, !alias.scope !23489, !noalias !23490
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils7pl_path9PlRefPathECshquuC4dCYVj_10polars_sql.exit5.i, !dbg !23475

bb.w:                                             ; preds = %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !dbg !23482, !noalias !23452
  store ptr %i.bi, ptr %i.r, align 8, !dbg !23491, !noalias !23452
  %i.bo = getelementptr inbounds nuw i8, ptr %i.r, i64 8, !dbg !23491
  store i64 %i.bk, ptr %i.bo, align 8, !dbg !23491, !noalias !23452
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.719.i1), !dbg !23494
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !dbg !23494, !noalias !23452
  %i.bp = atomicrmw add ptr %i.bi, i64 1 monotonic, align 8, !dbg !23496, !noalias !23444
  %i.bq = icmp slt i64 %i.bp, 0, !dbg !23502
  br i1 %i.bq, label %bb.x, label %bb.aa, !dbg !23502

bb.x:                                             ; preds = %bb.w
  tail call void @llvm.trap(), !dbg !23503
  unreachable, !dbg !23503

bb.y:                                             ; preds = %bb.z
  fence acquire, !dbg !23504
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArceE9drop_slowCsfHnWouPsIOz_14regex_automata(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.r) #38
          to label %common.resume unwind label %bb.af, !dbg !23510, !noalias !23444

bb.z:                                             ; preds = %bb.aa
  %i.br = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bs = atomicrmw sub ptr %i.bi, i64 1 release, align 8, !dbg !23511, !noalias !23514
  %i.bt = icmp eq i64 %i.bs, 1, !dbg !23523
  br i1 %i.bt, label %bb.y, label %common.resume, !dbg !23523

bb.aa:                                            ; preds = %bb.w
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !dbg !23524, !noalias !23452
  store i64 0, ptr %i.o, align 8, !dbg !23525, !alias.scope !23532, !noalias !23452
  %i.bu = getelementptr inbounds nuw i8, ptr %i.o, i64 254, !dbg !23525
  store i8 4, ptr %i.bu, align 2, !dbg !23525, !alias.scope !23532, !noalias !23452
  %.sroa.3.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.o, i64 207, !dbg !23525
  store i8 -38, ptr %.sroa.3.0..sroa_idx.i.i, align 1, !dbg !23525, !alias.scope !23532, !noalias !23452
  %i.bv = getelementptr inbounds nuw i8, ptr %i.o, i64 16, !dbg !23525
  store i64 2, ptr %i.bv, align 8, !dbg !23525, !alias.scope !23532, !noalias !23452
  %i.bw = getelementptr inbounds nuw i8, ptr %i.o, i64 160, !dbg !23525
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.o, i64 176, !dbg !23525
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bw, i8 0, i64 16, i1 false), !dbg !23525, !alias.scope !23532, !noalias !23452
  store i8 1, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !dbg !23525, !alias.scope !23532, !noalias !23452
  %.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.o, i64 177, !dbg !23525
  store i8 1, ptr %.sroa.6.0..sroa_idx.i.i, align 1, !dbg !23525, !alias.scope !23532, !noalias !23452
  %i.bx = getelementptr inbounds nuw i8, ptr %i.o, i64 248, !dbg !23525
  %i.by = getelementptr inbounds nuw i8, ptr %i.o, i64 240, !dbg !23525
  store ptr null, ptr %i.by, align 8, !dbg !23525, !alias.scope !23532, !noalias !23452
  store <4 x i8> <i8 1, i8 0, i8 0, i8 1>, ptr %i.bx, align 8, !dbg !23525, !alias.scope !23532, !noalias !23452
  %i.bz = getelementptr inbounds nuw i8, ptr %i.o, i64 252, !dbg !23525
  store i8 1, ptr %i.bz, align 4, !dbg !23525, !alias.scope !23532, !noalias !23452
  %.sroa.36.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.o, i64 239, !dbg !23525
  store i8 -38, ptr %.sroa.36.0..sroa_idx.i.i, align 1, !dbg !23525, !alias.scope !23532, !noalias !23452
  %i.ca = getelementptr inbounds nuw i8, ptr %i.o, i64 253, !dbg !23525
  store i8 0, ptr %i.ca, align 1, !dbg !23525, !alias.scope !23532, !noalias !23452
  invoke void @_RNvMs1_NtNtCs7Ga9Brpi21q_11polars_lazy4scan7parquetNtNtB9_5frame9LazyFrame12scan_parquet(ptr noalias noundef nonnull sret([384 x i8]) align 16 captures(address) dereferenceable(384) %i.p, ptr noundef nonnull %i.bi, i64 noundef %i.bk, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(256) %i.o)
          to label %bb.ab unwind label %bb.z, !dbg !23494, !noalias !23444

bb.ab:                                            ; preds = %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !dbg !23535, !noalias !23452
  call void @llvm.experimental.noalias.scope.decl(metadata !23536), !dbg !23494
  %i.cb = load i64, ptr %i.p, align 16, !dbg !23539, !range !5117, !alias.scope !23541, !noalias !23543, !noundef !13 ; 2 uses
  %i.cc = icmp eq i64 %i.cb, -9223372036854775778, !dbg !23539
  %i.cd = getelementptr inbounds nuw i8, ptr %i.p, i64 8, !dbg !23544
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.719.i1, ptr noundef nonnull align 8 dereferenceable(72) %i.cd, i64 72, i1 false), !dbg !23544, !alias.scope !23545, !noalias !23452
  br i1 %i.cc, label %bb.ad, label %bb.ac, !dbg !23546

bb.ac:                                            ; preds = %bb.ab
  %.sroa.921.0..sroa_idx22.i10 = getelementptr inbounds nuw i8, ptr %i.p, i64 80, !dbg !23547
  %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx.i11 = getelementptr inbounds nuw i8, ptr %0, i64 96, !dbg !23548
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(304) %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx.i11, ptr noundef nonnull align 16 dereferenceable(304) %.sroa.921.0..sroa_idx22.i10, i64 304, i1 false), !dbg !23547, !noalias !23474
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !dbg !23550, !noalias !23452
  %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx.i12 = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !23548
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx.i12, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.719.i1, i64 72, i1 false), !dbg !23494, !noalias !23474
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.719.i1), !dbg !23551
  store ptr %i.bi, ptr %0, align 16, !dbg !23548, !alias.scope !23444, !noalias !23474
  %.sroa.4.0..sroa_idx.i13 = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !23548
  store i64 %i.bk, ptr %.sroa.4.0..sroa_idx.i13, align 8, !dbg !23548, !alias.scope !23444, !noalias !23474
  %.sroa.5.0..sroa_idx.i14 = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !23548
  store i64 %i.cb, ptr %.sroa.5.0..sroa_idx.i14, align 16, !dbg !23548, !alias.scope !23444, !noalias !23474
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !dbg !23552, !noalias !23452
  br label %_RNvMs_NtCshquuC4dCYVj_10polars_sql15table_functionsNtB4_20PolarsTableFunctions8read_csv.exit, !dbg !23553

bb.ad:                                            ; preds = %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !dbg !23550, !noalias !23452
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !23554
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.ce, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.719.i1, i64 72, i1 false), !dbg !23550, !noalias !23474
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !23554
  store i64 -9223372036854775778, ptr %i.cf, align 16, !dbg !23554, !alias.scope !23558, !noalias !23561
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.719.i1), !dbg !23551
  %i.cg = atomicrmw sub ptr %i.bi, i64 1 release, align 8, !dbg !23563, !noalias !23570
  %i.ch = icmp eq i64 %i.cg, 1, !dbg !23579
  br i1 %i.ch, label %bb.ae, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils7pl_path9PlRefPathECshquuC4dCYVj_10polars_sql.exit5.i, !dbg !23579

bb.ae:                                            ; preds = %bb.ad
  fence acquire, !dbg !23580
  call void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArceE9drop_slowCsfHnWouPsIOz_14regex_automata(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.r) #38, !dbg !23582, !noalias !23444
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils7pl_path9PlRefPathECshquuC4dCYVj_10polars_sql.exit5.i, !dbg !23582

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils7pl_path9PlRefPathECshquuC4dCYVj_10polars_sql.exit5.i: ; preds = %bb.ae, %bb.ad, %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !dbg !23552, !noalias !23452
  br label %_RNvMs_NtCshquuC4dCYVj_10polars_sql15table_functionsNtB4_20PolarsTableFunctions8read_csv.exit, !dbg !23475

bb.af:                                            ; preds = %bb.y
  %i.ci = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #35, !dbg !23583, !noalias !23444
  unreachable, !dbg !23583

bb.ag:                                            ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23584), !dbg !23587
  br i1 %i.af, label %bb.ah, label %bb.ai, !dbg !23588, !prof !14409

bb.ah:                                            ; preds = %bb.ag
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !dbg !23591, !noalias !23592
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !dbg !23594, !noalias !23592
  call fastcc void @_RNvMs_NtCshquuC4dCYVj_10polars_sql15table_functionsNtB4_20PolarsTableFunctions22get_file_path_from_arg(ptr noalias noundef align 8 captures(none) dereferenceable(72) %i.j, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(784) %2), !dbg !23595, !noalias !23584
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23596), !dbg !23594
  %i.cj = load i64, ptr %i.j, align 8, !dbg !23599, !range !14337, !alias.scope !23601, !noalias !23603, !noundef !13 ; 2 uses
  %.not.i.i18 = icmp eq i64 %i.cj, 18, !dbg !23599
  %i.ck = getelementptr inbounds nuw i8, ptr %i.j, i64 8, !dbg !23604
  %i.cl = load ptr, ptr %i.ck, align 8, !dbg !23604, !alias.scope !23605, !noalias !23592 ; 7 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.j, i64 16, !dbg !23604
  %i.cn = load i64, ptr %i.cm, align 8, !dbg !23604, !alias.scope !23605, !noalias !23592 ; 4 uses
  br i1 %.not.i.i18, label %bb.ak, label %bb.aj, !dbg !23606

bb.ai:                                            ; preds = %bb.ag
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !dbg !23607, !noalias !23592
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !dbg !23608, !noalias !23592
  store i64 %3, ptr %i.m, align 8, !dbg !23608, !noalias !23592
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !dbg !23609, !noalias !23592
  store ptr %i.m, ptr %i.l, align 8, !dbg !23609, !noalias !23592
  %.sroa.47.0..sroa_idx.i16 = getelementptr inbounds nuw i8, ptr %i.l, i64 8, !dbg !23609
  store ptr @_RNvXsZ_NtNtCscgRAwXFJnXP_4core3fmt3numjNtB7_5Debug3fmt, ptr %.sroa.47.0..sroa_idx.i16, align 8, !dbg !23609, !noalias !23592
  call fastcc void @_RNvNtCsgZ49sUHp3tW_5alloc3fmt6format(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.n, ptr noundef nonnull @46, ptr noundef nonnull %i.l) #41, !dbg !23607, !noalias !23592
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !dbg !23607, !noalias !23592
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !dbg !23607, !noalias !23592
  %.sroa.44.0..sroa_idx.i17 = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !23607
  call void @_RNvXs_CsgjwxzEoLG5s_12polars_errorNtB4_9ErrStringINtNtCscgRAwXFJnXP_4core7convert4FromNtNtCsgZ49sUHp3tW_5alloc6string6StringE4fromCshquuC4dCYVj_10polars_sql(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %.sroa.44.0..sroa_idx.i17, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.n, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @47), !dbg !23612, !noalias !23614
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !dbg !23607, !noalias !23592
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !23607
  store <2 x i64> <i64 -9223372036854775778, i64 12>, ptr %i.co, align 16, !dbg !23607, !alias.scope !23584, !noalias !23614
  br label %_RNvMs_NtCshquuC4dCYVj_10polars_sql15table_functionsNtB4_20PolarsTableFunctions8read_csv.exit, !dbg !23615

bb.aj:                                            ; preds = %bb.ah
  %.sroa.11.0..sroa_idx14.i19 = getelementptr inbounds nuw i8, ptr %i.j, i64 24, !dbg !23617
  %.sroa.416.0..sroa_idx.i20 = getelementptr inbounds nuw i8, ptr %0, i64 48, !dbg !23618
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %.sroa.416.0..sroa_idx.i20, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.11.0..sroa_idx14.i19, i64 48, i1 false), !dbg !23617, !noalias !23614
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !dbg !23622, !noalias !23592
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23623), !dbg !23626
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !23618
  store i64 %i.cj, ptr %i.cp, align 8, !dbg !23618, !alias.scope !23627, !noalias !23614
  %.sroa.2.0..sroa_idx.i21 = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !23618
  store ptr %i.cl, ptr %.sroa.2.0..sroa_idx.i21, align 16, !dbg !23618, !alias.scope !23627, !noalias !23614
  %.sroa.3.0..sroa_idx.i22 = getelementptr inbounds nuw i8, ptr %0, i64 40, !dbg !23618
  store i64 %i.cn, ptr %.sroa.3.0..sroa_idx.i22, align 8, !dbg !23618, !alias.scope !23627, !noalias !23614
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !23618
  store i64 -9223372036854775778, ptr %i.cq, align 16, !dbg !23618, !alias.scope !23629, !noalias !23630
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils7pl_path9PlRefPathECshquuC4dCYVj_10polars_sql.exit5.i23, !dbg !23615

bb.ak:                                            ; preds = %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !dbg !23622, !noalias !23592
  store ptr %i.cl, ptr %i.k, align 8, !dbg !23631, !noalias !23592
  %i.cr = getelementptr inbounds nuw i8, ptr %i.k, i64 8, !dbg !23631
  store i64 %i.cn, ptr %i.cr, align 8, !dbg !23631, !noalias !23592
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.719.i15), !dbg !23634
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !dbg !23634, !noalias !23592
  %i.cs = atomicrmw add ptr %i.cl, i64 1 monotonic, align 8, !dbg !23636, !noalias !23584
  %i.ct = icmp slt i64 %i.cs, 0, !dbg !23642
  br i1 %i.ct, label %bb.al, label %bb.ao, !dbg !23642

bb.al:                                            ; preds = %bb.ak
  tail call void @llvm.trap(), !dbg !23643
  unreachable, !dbg !23643

bb.am:                                            ; preds = %bb.an
  fence acquire, !dbg !23644
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArceE9drop_slowCsfHnWouPsIOz_14regex_automata(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.k) #38
          to label %common.resume unwind label %bb.at, !dbg !23650, !noalias !23584

bb.an:                                            ; preds = %bb.ao
  %i.cu = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cv = atomicrmw sub ptr %i.cl, i64 1 release, align 8, !dbg !23651, !noalias !23654
  %i.cw = icmp eq i64 %i.cv, 1, !dbg !23663
  br i1 %i.cw, label %bb.am, label %common.resume, !dbg !23663

bb.ao:                                            ; preds = %bb.ak
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !dbg !23664, !noalias !23592
  %i.cx = getelementptr inbounds nuw i8, ptr %i.h, i64 288, !dbg !23665
  %i.cy = getelementptr inbounds nuw i8, ptr %i.h, i64 24, !dbg !23665
  store i64 2, ptr %i.cy, align 8, !dbg !23665, !alias.scope !23671, !noalias !23592
  %i.cz = getelementptr inbounds nuw i8, ptr %i.h, i64 208, !dbg !23665
  %.sroa.5.0..sroa_idx.i.i24 = getelementptr inbounds nuw i8, ptr %i.h, i64 224, !dbg !23665
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cz, i8 0, i64 16, i1 false), !dbg !23665, !alias.scope !23671, !noalias !23592
  store i8 1, ptr %.sroa.5.0..sroa_idx.i.i24, align 8, !dbg !23665, !alias.scope !23671, !noalias !23592
  %.sroa.6.0..sroa_idx.i.i25 = getelementptr inbounds nuw i8, ptr %i.h, i64 225, !dbg !23665
  store i8 1, ptr %.sroa.6.0..sroa_idx.i.i25, align 1, !dbg !23665, !alias.scope !23671, !noalias !23592
  %i.da = getelementptr inbounds nuw i8, ptr %i.h, i64 352, !dbg !23665
  store i8 0, ptr %i.da, align 8, !dbg !23665, !alias.scope !23671, !noalias !23592
  %i.db = getelementptr inbounds nuw i8, ptr %i.h, i64 353, !dbg !23665
  store i8 0, ptr %i.db, align 1, !dbg !23665, !alias.scope !23671, !noalias !23592
  %i.dc = getelementptr inbounds nuw i8, ptr %i.h, i64 354, !dbg !23665
  store i8 1, ptr %i.dc, align 2, !dbg !23665, !alias.scope !23671, !noalias !23592
  store <2 x ptr> splat (ptr null), ptr %i.cx, align 8, !dbg !23665, !alias.scope !23671, !noalias !23592
  %i.dd = getelementptr inbounds nuw i8, ptr %i.h, i64 312, !dbg !23665
  store ptr null, ptr %i.dd, align 8, !dbg !23665, !alias.scope !23671, !noalias !23592
  %i.de = getelementptr inbounds nuw i8, ptr %i.h, i64 328, !dbg !23665
  %.sroa.3.0..sroa_idx.i.i26 = getelementptr inbounds nuw i8, ptr %i.h, i64 255, !dbg !23665
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.de, i8 0, i64 16, i1 false), !dbg !23665, !alias.scope !23671, !noalias !23592
  store i8 -38, ptr %.sroa.3.0..sroa_idx.i.i26, align 1, !dbg !23665, !alias.scope !23671, !noalias !23592
  %i.df = getelementptr inbounds nuw i8, ptr %i.h, i64 168, !dbg !23665
  store i64 2, ptr %i.df, align 8, !dbg !23665, !alias.scope !23671, !noalias !23592
  %i.dg = getelementptr inbounds nuw i8, ptr %i.h, i64 355, !dbg !23665
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(13) %i.dg, ptr noundef nonnull align 1 dereferenceable(13) @75, i64 13, i1 false), !dbg !23665, !noalias !23592
  %i.dh = getelementptr inbounds nuw i8, ptr %i.h, i64 368, !dbg !23665
  store i8 0, ptr %i.dh, align 8, !dbg !23665, !alias.scope !23671, !noalias !23592
  %i.di = getelementptr inbounds nuw i8, ptr %i.h, i64 369, !dbg !23665
  store i8 0, ptr %i.di, align 1, !dbg !23665, !alias.scope !23671, !noalias !23592
  %.sroa.38.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 287, !dbg !23665
  store i8 -38, ptr %.sroa.38.0..sroa_idx.i.i, align 1, !dbg !23665, !alias.scope !23671, !noalias !23592
  %i.dj = getelementptr inbounds nuw i8, ptr %i.h, i64 192, !dbg !23665
  store i64 2, ptr %i.dj, align 8, !dbg !23665, !alias.scope !23671, !noalias !23592
  %i.dk = getelementptr inbounds nuw i8, ptr %i.h, i64 344, !dbg !23665
  store ptr null, ptr %i.dk, align 8, !dbg !23665, !alias.scope !23671, !noalias !23592
  store i64 0, ptr %i.h, align 8, !dbg !23665, !alias.scope !23671, !noalias !23592
  invoke void @_RNvMNtNtCs7Ga9Brpi21q_11polars_lazy4scan3ipcNtNtB6_5frame9LazyFrame8scan_ipc(ptr noalias noundef nonnull sret([384 x i8]) align 16 captures(address) dereferenceable(384) %i.i, ptr noundef nonnull %i.cl, i64 noundef %i.cn, i1 noundef zeroext false, i1 noundef zeroext true, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(376) %i.h)
          to label %bb.ap unwind label %bb.an, !dbg !23634, !noalias !23584

bb.ap:                                            ; preds = %bb.ao
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !dbg !23674, !noalias !23592
  call void @llvm.experimental.noalias.scope.decl(metadata !23675), !dbg !23634
  %i.dl = load i64, ptr %i.i, align 16, !dbg !23678, !range !5117, !alias.scope !23680, !noalias !23682, !noundef !13 ; 2 uses
  %i.dm = icmp eq i64 %i.dl, -9223372036854775778, !dbg !23678
  %i.dn = getelementptr inbounds nuw i8, ptr %i.i, i64 8, !dbg !23683
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.719.i15, ptr noundef nonnull align 8 dereferenceable(72) %i.dn, i64 72, i1 false), !dbg !23683, !alias.scope !23684, !noalias !23592
  br i1 %i.dm, label %bb.ar, label %bb.aq, !dbg !23685

bb.aq:                                            ; preds = %bb.ap
  %.sroa.921.0..sroa_idx22.i28 = getelementptr inbounds nuw i8, ptr %i.i, i64 80, !dbg !23686
  %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx.i29 = getelementptr inbounds nuw i8, ptr %0, i64 96, !dbg !23687
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(304) %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx.i29, ptr noundef nonnull align 16 dereferenceable(304) %.sroa.921.0..sroa_idx22.i28, i64 304, i1 false), !dbg !23686, !noalias !23614
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !dbg !23689, !noalias !23592
  %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx.i30 = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !23687
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx.i30, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.719.i15, i64 72, i1 false), !dbg !23634, !noalias !23614
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.719.i15), !dbg !23690
  store ptr %i.cl, ptr %0, align 16, !dbg !23687, !alias.scope !23584, !noalias !23614
  %.sroa.4.0..sroa_idx.i31 = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !23687
  store i64 %i.cn, ptr %.sroa.4.0..sroa_idx.i31, align 8, !dbg !23687, !alias.scope !23584, !noalias !23614
  %.sroa.5.0..sroa_idx.i32 = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !23687
  store i64 %i.dl, ptr %.sroa.5.0..sroa_idx.i32, align 16, !dbg !23687, !alias.scope !23584, !noalias !23614
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !dbg !23691, !noalias !23592
  br label %_RNvMs_NtCshquuC4dCYVj_10polars_sql15table_functionsNtB4_20PolarsTableFunctions8read_csv.exit, !dbg !23692

bb.ar:                                            ; preds = %bb.ap
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !dbg !23689, !noalias !23592
  %i.do = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !23693
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.do, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.719.i15, i64 72, i1 false), !dbg !23689, !noalias !23614
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !23693
  store i64 -9223372036854775778, ptr %i.dp, align 16, !dbg !23693, !alias.scope !23697, !noalias !23700
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.719.i15), !dbg !23690
  %i.dq = atomicrmw sub ptr %i.cl, i64 1 release, align 8, !dbg !23702, !noalias !23709
  %i.dr = icmp eq i64 %i.dq, 1, !dbg !23718
  br i1 %i.dr, label %bb.as, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils7pl_path9PlRefPathECshquuC4dCYVj_10polars_sql.exit5.i23, !dbg !23718

bb.as:                                            ; preds = %bb.ar
  fence acquire, !dbg !23719
  call void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArceE9drop_slowCsfHnWouPsIOz_14regex_automata(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.k) #38, !dbg !23721, !noalias !23584
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils7pl_path9PlRefPathECshquuC4dCYVj_10polars_sql.exit5.i23, !dbg !23721

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils7pl_path9PlRefPathECshquuC4dCYVj_10polars_sql.exit5.i23: ; preds = %bb.as, %bb.ar, %bb.aj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !dbg !23691, !noalias !23592
  br label %_RNvMs_NtCshquuC4dCYVj_10polars_sql15table_functionsNtB4_20PolarsTableFunctions8read_csv.exit, !dbg !23615

bb.at:                                            ; preds = %bb.am
  %i.ds = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #35, !dbg !23722, !noalias !23584
  unreachable, !dbg !23722

bb.au:                                            ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23723), !dbg !23726
  br i1 %i.af, label %bb.av, label %bb.aw, !dbg !23727, !prof !14409

bb.av:                                            ; preds = %bb.au
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !23730, !noalias !23731
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !23733, !noalias !23731
  call fastcc void @_RNvMs_NtCshquuC4dCYVj_10polars_sql15table_functionsNtB4_20PolarsTableFunctions22get_file_path_from_arg(ptr noalias noundef align 8 captures(none) dereferenceable(72) %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(784) %2), !dbg !23734, !noalias !23723
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23735), !dbg !23733
  %i.dt = load i64, ptr %i.c, align 8, !dbg !23738, !range !14337, !alias.scope !23740, !noalias !23742, !noundef !13 ; 2 uses
  %.not.i.i36 = icmp eq i64 %i.dt, 18, !dbg !23738
  %i.du = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !23743
  %i.dv = load ptr, ptr %i.du, align 8, !dbg !23743, !alias.scope !23744, !noalias !23731 ; 4 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %i.c, i64 16, !dbg !23743
  %i.dx = load i64, ptr %i.dw, align 8, !dbg !23743, !alias.scope !23744, !noalias !23731 ; 3 uses
  br i1 %.not.i.i36, label %bb.ay, label %bb.ax, !dbg !23745

bb.aw:                                            ; preds = %bb.au
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !dbg !23746, !noalias !23731
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !23747, !noalias !23731
  store i64 %3, ptr %i.f, align 8, !dbg !23747, !noalias !23731
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !23748, !noalias !23731
  store ptr %i.f, ptr %i.e, align 8, !dbg !23748, !noalias !23731
  %.sroa.47.0..sroa_idx.i34 = getelementptr inbounds nuw i8, ptr %i.e, i64 8, !dbg !23748
  store ptr @_RNvXsZ_NtNtCscgRAwXFJnXP_4core3fmt3numjNtB7_5Debug3fmt, ptr %.sroa.47.0..sroa_idx.i34, align 8, !dbg !23748, !noalias !23731
  call fastcc void @_RNvNtCsgZ49sUHp3tW_5alloc3fmt6format(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.g, ptr noundef nonnull @38, ptr noundef nonnull %i.e) #41, !dbg !23746, !noalias !23731
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !23746, !noalias !23731
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !23746, !noalias !23731
  %.sroa.44.0..sroa_idx.i35 = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !23746
  call void @_RNvXs_CsgjwxzEoLG5s_12polars_errorNtB4_9ErrStringINtNtCscgRAwXFJnXP_4core7convert4FromNtNtCsgZ49sUHp3tW_5alloc6string6StringE4fromCshquuC4dCYVj_10polars_sql(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %.sroa.44.0..sroa_idx.i35, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.g, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @39), !dbg !23751, !noalias !23753
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !23746, !noalias !23731
  %i.dy = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !23746
  store <2 x i64> <i64 -9223372036854775778, i64 12>, ptr %i.dy, align 16, !dbg !23746, !alias.scope !23723, !noalias !23753
  br label %_RNvMs_NtCshquuC4dCYVj_10polars_sql15table_functionsNtB4_20PolarsTableFunctions8read_csv.exit, !dbg !23754

bb.ax:                                            ; preds = %bb.av
  %.sroa.11.0..sroa_idx14.i37 = getelementptr inbounds nuw i8, ptr %i.c, i64 24, !dbg !23756
  %.sroa.416.0..sroa_idx.i38 = getelementptr inbounds nuw i8, ptr %0, i64 48, !dbg !23757
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %.sroa.416.0..sroa_idx.i38, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.11.0..sroa_idx14.i37, i64 48, i1 false), !dbg !23756, !noalias !23753
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !23761, !noalias !23731
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23762), !dbg !23765
  %i.dz = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !23757
  store i64 %i.dt, ptr %i.dz, align 8, !dbg !23757, !alias.scope !23766, !noalias !23753
  %.sroa.2.0..sroa_idx.i39 = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !23757
  store ptr %i.dv, ptr %.sroa.2.0..sroa_idx.i39, align 16, !dbg !23757, !alias.scope !23766, !noalias !23753
  %.sroa.3.0..sroa_idx.i40 = getelementptr inbounds nuw i8, ptr %0, i64 40, !dbg !23757
  store i64 %i.dx, ptr %.sroa.3.0..sroa_idx.i40, align 8, !dbg !23757, !alias.scope !23766, !noalias !23753
  %i.ea = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !23757
  store i64 -9223372036854775778, ptr %i.ea, align 16, !dbg !23757, !alias.scope !23768, !noalias !23769
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils7pl_path9PlRefPathECshquuC4dCYVj_10polars_sql.exit4.i41, !dbg !23754

bb.ay:                                            ; preds = %bb.av
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !23761, !noalias !23731
  store ptr %i.dv, ptr %i.d, align 8, !dbg !23770, !noalias !23731
  %i.eb = getelementptr inbounds nuw i8, ptr %i.d, i64 8, !dbg !23770 ; 2 uses
  store i64 %i.dx, ptr %i.eb, align 8, !dbg !23770, !noalias !23731
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.719.i33), !dbg !23773
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !23773, !noalias !23731
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !23773, !noalias !23731
  %i.ec = atomicrmw add ptr %i.dv, i64 1 monotonic, align 8, !dbg !23775, !noalias !23723
  %i.ed = icmp slt i64 %i.ec, 0, !dbg !23781
  br i1 %i.ed, label %bb.az, label %bb.bc, !dbg !23781

bb.az:                                            ; preds = %bb.ay
  tail call void @llvm.trap(), !dbg !23782
  unreachable, !dbg !23782

bb.ba:                                            ; preds = %bb.bd, %bb.bc
  %i.ee = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !23783), !dbg !23786
  call void @llvm.experimental.noalias.scope.decl(metadata !23787), !dbg !23790
  call void @llvm.experimental.noalias.scope.decl(metadata !23792), !dbg !23795
  call void @llvm.experimental.noalias.scope.decl(metadata !23797), !dbg !23800
  %i.ef = load ptr, ptr %i.d, align 8, !dbg !23802, !alias.scope !23806, !noalias !23731, !nonnull !13, !noundef !13
  %i.eg = atomicrmw sub ptr %i.ef, i64 1 release, align 8, !dbg !23807, !noalias !23810
  %i.eh = icmp eq i64 %i.eg, 1, !dbg !23811
  br i1 %i.eh, label %bb.bb, label %common.resume, !dbg !23811

bb.bb:                                            ; preds = %bb.ba
  fence acquire, !dbg !23812
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArceE9drop_slowCsfHnWouPsIOz_14regex_automata(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.d) #38
          to label %common.resume unwind label %bb.bi, !dbg !23814, !noalias !23723

bb.bc:                                            ; preds = %bb.ay
  invoke void @_RNvMNtNtCs7Ga9Brpi21q_11polars_lazy4scan6ndjsonNtB2_18LazyJsonLineReader3new(ptr noalias noundef nonnull sret([288 x i8]) align 8 captures(none) dereferenceable(288) %i.a, ptr noundef nonnull %i.dv, i64 noundef %i.dx)
          to label %bb.bd unwind label %bb.ba, !dbg !23773, !noalias !23723

bb.bd:                                            ; preds = %bb.bc
  invoke void @_RNvXs_NtNtCs7Ga9Brpi21q_11polars_lazy4scan6ndjsonNtB4_18LazyJsonLineReaderNtNtB6_16file_list_reader18LazyFileListReader6finish(ptr noalias noundef nonnull sret([384 x i8]) align 16 captures(none) dereferenceable(384) %i.b, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(288) %i.a)
          to label %bb.be unwind label %bb.ba, !dbg !23815, !noalias !23723

bb.be:                                            ; preds = %bb.bd
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !23816, !noalias !23731
  call void @llvm.experimental.noalias.scope.decl(metadata !23817), !dbg !23773
  %i.ei = load i64, ptr %i.b, align 16, !dbg !23820, !range !5117, !alias.scope !23822, !noalias !23824, !noundef !13 ; 2 uses
  %i.ej = icmp eq i64 %i.ei, -9223372036854775778, !dbg !23820
  %i.ek = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !23825
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.719.i33, ptr noundef nonnull align 8 dereferenceable(72) %i.ek, i64 72, i1 false), !dbg !23825, !alias.scope !23826, !noalias !23731
  br i1 %i.ej, label %bb.bg, label %bb.bf, !dbg !23827

bb.bf:                                            ; preds = %bb.be
  %.sroa.921.0..sroa_idx22.i43 = getelementptr inbounds nuw i8, ptr %i.b, i64 80, !dbg !23828
  %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx.i44 = getelementptr inbounds nuw i8, ptr %0, i64 96, !dbg !23829
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(304) %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx.i44, ptr noundef nonnull align 16 dereferenceable(304) %.sroa.921.0..sroa_idx22.i43, i64 304, i1 false), !dbg !23828, !noalias !23753
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !23831, !noalias !23731
  %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx.i45 = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !23829
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx.i45, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.719.i33, i64 72, i1 false), !dbg !23773, !noalias !23753
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.719.i33), !dbg !23832
  %i.el = load ptr, ptr %i.d, align 8, !dbg !23833, !noalias !23731, !nonnull !13, !noundef !13
  %i.em = load i64, ptr %i.eb, align 8, !dbg !23833, !noalias !23731, !noundef !13
  store ptr %i.el, ptr %0, align 16, !dbg !23829, !alias.scope !23723, !noalias !23753
  %.sroa.4.0..sroa_idx.i46 = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !23829
  store i64 %i.em, ptr %.sroa.4.0..sroa_idx.i46, align 8, !dbg !23829, !alias.scope !23723, !noalias !23753
  %.sroa.5.0..sroa_idx.i47 = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !23829
  store i64 %i.ei, ptr %.sroa.5.0..sroa_idx.i47, align 16, !dbg !23829, !alias.scope !23723, !noalias !23753
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !23786, !noalias !23731
  br label %_RNvMs_NtCshquuC4dCYVj_10polars_sql15table_functionsNtB4_20PolarsTableFunctions8read_csv.exit, !dbg !23834

bb.bg:                                            ; preds = %bb.be
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !23831, !noalias !23731
  %i.en = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !23835
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.en, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.719.i33, i64 72, i1 false), !dbg !23831, !noalias !23753
  %i.eo = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !23835
  store i64 -9223372036854775778, ptr %i.eo, align 16, !dbg !23835, !alias.scope !23839, !noalias !23842
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.719.i33), !dbg !23832
  call void @llvm.experimental.noalias.scope.decl(metadata !23844), !dbg !23786
  call void @llvm.experimental.noalias.scope.decl(metadata !23847), !dbg !23850
  call void @llvm.experimental.noalias.scope.decl(metadata !23852), !dbg !23855
  call void @llvm.experimental.noalias.scope.decl(metadata !23857), !dbg !23860
  %i.ep = load ptr, ptr %i.d, align 8, !dbg !23862, !alias.scope !23866, !noalias !23731, !nonnull !13, !noundef !13
  %i.eq = atomicrmw sub ptr %i.ep, i64 1 release, align 8, !dbg !23867, !noalias !23870
  %i.er = icmp eq i64 %i.eq, 1, !dbg !23871
  br i1 %i.er, label %bb.bh, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils7pl_path9PlRefPathECshquuC4dCYVj_10polars_sql.exit4.i41, !dbg !23871

bb.bh:                                            ; preds = %bb.bg
  fence acquire, !dbg !23872
  call void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArceE9drop_slowCsfHnWouPsIOz_14regex_automata(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.d) #38, !dbg !23874, !noalias !23723
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils7pl_path9PlRefPathECshquuC4dCYVj_10polars_sql.exit4.i41, !dbg !23874

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils7pl_path9PlRefPathECshquuC4dCYVj_10polars_sql.exit4.i41: ; preds = %bb.bh, %bb.bg, %bb.ax
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !23786, !noalias !23731
  br label %_RNvMs_NtCshquuC4dCYVj_10polars_sql15table_functionsNtB4_20PolarsTableFunctions8read_csv.exit, !dbg !23754

bb.bi:                                            ; preds = %bb.bb
  %i.es = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #35, !dbg !23875, !noalias !23723
  unreachable, !dbg !23875

_RNvMs_NtCshquuC4dCYVj_10polars_sql15table_functionsNtB4_20PolarsTableFunctions8read_csv.exit: ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils7pl_path9PlRefPathECshquuC4dCYVj_10polars_sql.exit4.i41, %bb.bf, %bb.aw, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils7pl_path9PlRefPathECshquuC4dCYVj_10polars_sql.exit5.i23, %bb.aq, %bb.ai, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils7pl_path9PlRefPathECshquuC4dCYVj_10polars_sql.exit5.i, %bb.ac, %bb.u, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils7pl_path9PlRefPathECshquuC4dCYVj_10polars_sql.exit4.i, %bb.o, %bb.d
  ret void, !dbg !23876
}

; Function Attrs: inlinehint nonlazybind optsize uwtable
define internal fastcc noundef zeroext i1 @_RNvMsa_NtNtCs1LHh8CLbVkQ_11polars_core9datatypes9any_valueNtB5_8AnyValue10eq_missing(ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(48) %0, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(48) %1, i1 noundef zeroext %2) unnamed_addr #5 personality ptr @rust_eh_personality !dbg !23877 {
bb.a:
  %i.a = alloca [32 x i8], align 16               ; 4 uses
  %i.b = alloca [32 x i8], align 16               ; 4 uses
  %i.c = alloca [32 x i8], align 16               ; 5 uses
  %i.d = alloca [32 x i8], align 16               ; 5 uses
  %i.e = alloca [48 x i8], align 16               ; 6 uses
  %i.f = alloca [48 x i8], align 16               ; 6 uses
  %i.g = alloca [24 x i8], align 8                ; 4 uses
  %i.h = alloca [24 x i8], align 8                ; 4 uses
  %i.i = alloca [24 x i8], align 8                ; 4 uses
  %i.j = alloca [24 x i8], align 8                ; 4 uses
  %i.k = alloca [48 x i8], align 16               ; 8 uses
  %i.l = alloca [48 x i8], align 16               ; 8 uses
  %i.m = alloca [48 x i8], align 16               ; 8 uses
  %i.n = alloca [48 x i8], align 16               ; 8 uses
  %i.o = alloca [48 x i8], align 16               ; 9 uses
  %i.p = alloca [48 x i8], align 16               ; 9 uses
  %i.q = alloca [48 x i8], align 16               ; 7 uses
  %i.r = alloca [48 x i8], align 16               ; 8 uses
  %i.s = alloca [48 x i8], align 16               ; 8 uses
  %i.t = alloca [48 x i8], align 16               ; 7 uses
  %i.u = alloca [48 x i8], align 16               ; 8 uses
  %i.v = alloca [48 x i8], align 16               ; 8 uses
  %i.w = load i8, ptr %0, align 16, !dbg !23878, !range !8790, !noundef !13 ; 34 uses
  switch i8 %i.w, label %bb.b [
    i8 28, label %bb.c
    i8 31, label %bb.d
    i8 33, label %bb.g
  ], !dbg !23879

bb.b:                                             ; preds = %bb.a
  %i.x = load i8, ptr %1, align 16, !dbg !23878, !range !8790, !noundef !13 ; 5 uses
  switch i8 %i.x, label %bb.m [
    i8 28, label %bb.n
    i8 31, label %bb.o
    i8 33, label %bb.r
  ], !dbg !23879

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !dbg !23880
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !23882
  %i.z = getelementptr inbounds nuw i8, ptr %i.t, i64 8, !dbg !23880
  %i.aa = load <2 x ptr>, ptr %i.y, align 8, !dbg !23882
  store <2 x ptr> %i.aa, ptr %i.z, align 8, !dbg !23880
  store i8 27, ptr %i.t, align 16, !dbg !23880
  %i.ab = invoke fastcc noundef zeroext i1 @_RNvMsa_NtNtCs1LHh8CLbVkQ_11polars_core9datatypes9any_valueNtB5_8AnyValue10eq_missing(ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(48) %i.t, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(48) %1, i1 noundef zeroext true) #41
          to label %_RNvXsb_NtNtCs1LHh8CLbVkQ_11polars_core9datatypes9any_valueNtB5_8AnyValueNtNtCscgRAwXFJnXP_4core3cmp9PartialEq2eq.exit unwind label %bb.h, !dbg !23883, !inline_history !23887

bb.d:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !dbg !23888
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !23890 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 31, !dbg !23896
  %i.ae = load i8, ptr %i.ad, align 1, !dbg !23896, !range !150, !alias.scope !23902, !noundef !13 ; 2 uses
  %i.af = icmp ugt i8 %i.ae, -41, !dbg !23905
  br i1 %i.af, label %bb.f, label %bb.e, !dbg !23905

bb.e:                                             ; preds = %bb.d
  %i.ag = add i8 %i.ae, 64, !dbg !23906
  %i.ah = tail call i8 @llvm.umin.i8(i8 %i.ag, i8 24), !dbg !23908
  %.sroa.0.0.i.i = zext nneg i8 %i.ah to i64, !dbg !23908
  br label %_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr8as_slice.exit, !dbg !23911

bb.f:                                             ; preds = %bb.d
  %i.ai = load ptr, ptr %i.ac, align 8, !dbg !23912, !alias.scope !23902, !noundef !13
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !23913
  %i.ak = load i64, ptr %i.aj, align 16, !dbg !23913, !alias.scope !23902, !noundef !13
  br label %_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr8as_slice.exit, !dbg !23914

_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr8as_slice.exit: ; preds = %bb.e, %bb.f
  %.sroa.01.0.i = phi i64 [ %i.ak, %bb.f ], [ %.sroa.0.0.i.i, %bb.e ], !dbg !23915
  %.sroa.0.0.i = phi ptr [ %i.ai, %bb.f ], [ %i.ac, %bb.e ], !dbg !23916
  %i.al = getelementptr inbounds nuw i8, ptr %i.v, i64 8, !dbg !23888
  store ptr %.sroa.0.0.i, ptr %i.al, align 8, !dbg !23888
  %i.am = getelementptr inbounds nuw i8, ptr %i.v, i64 16, !dbg !23888
  store i64 %.sroa.01.0.i, ptr %i.am, align 16, !dbg !23888
  store i8 2, ptr %i.v, align 16, !dbg !23888
  %i.an = invoke fastcc noundef zeroext i1 @_RNvMsa_NtNtCs1LHh8CLbVkQ_11polars_core9datatypes9any_valueNtB5_8AnyValue10eq_missing(ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(48) %i.v, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(48) %1, i1 noundef zeroext true) #41
end_hunk_1
begin_hunk_2_@_RNvXNtCshe0pyuXM1S4_13polars_schema6schemaINtB2_6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuENtNtCscgRAwXFJnXP_4core7default7Default7defaultCshquuC4dCYVj_10polars_sql:bb.a
  %i.a = tail call noundef i64 @_RNvNtCsk79RHlfmHDk_8foldhash4seed19gen_per_hasher_seed(), !dbg !24669
  %i.b = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtNtCsk79RHlfmHDk_8foldhash4seed6global19GLOBAL_SEED_STORAGE, i64 48) acquire, align 8, !dbg !24677
  %i.c = icmp eq i8 %i.b, 2, !dbg !24683
  br i1 %i.c, label %bb.c, label %bb.b, !dbg !24683, !prof !14409

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvMs_NtNtCsk79RHlfmHDk_8foldhash4seed6globalNtB4_10GlobalSeed9init_slow() #38, !dbg !24684
  br label %bb.c, !dbg !24684

bb.c:                                             ; preds = %bb.b, %bb.a
  store i64 0, ptr %0, align 8, !dbg !24685
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !24685
  store ptr inttoptr (i64 16 to ptr), ptr %.sroa.4.0..sroa_idx, align 8, !dbg !24685
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !24685
  store i64 0, ptr %.sroa.5.0..sroa_idx, align 8, !dbg !24685
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !24685
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) @12, i64 32, i1 false), !dbg !24685
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56, !dbg !24685
  store i64 %i.a, ptr %.sroa.7.0..sroa_idx, align 8, !dbg !24685
  ret void, !dbg !24686
}

; Function Attrs: nonlazybind optsize uwtable
define void @_RNvXNtCshquuC4dCYVj_10polars_sql15table_functionsNtB2_20PolarsTableFunctionsNtNtNtCscgRAwXFJnXP_4core3str6traits7FromStr8from_str(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([72 x i8]) align 8 captures(none) dereferenceable(72) %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !24687 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  %i.e = alloca [24 x i8], align 8                ; 7 uses
  %i.f = alloca [16 x i8], align 8                ; 3 uses
  store ptr %1, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store i64 %2, ptr %i.g, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !24689
  call void @_RNvMs3_NtCsgZ49sUHp3tW_5alloc3stre12to_lowercase(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.e, ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2), !dbg !24690
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 8, !dbg !24691
  %.val = load ptr, ptr %i.h, align 8, !dbg !24691, !nonnull !13, !noundef !13 ; 6 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16, !dbg !24691
  %.val2 = load i64, ptr %i.i, align 8, !dbg !24691, !noundef !13
  switch i64 %.val2, label %_RNvXs_NtNtCscgRAwXFJnXP_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit11.thread [
    i64 8, label %_RNvXs_NtNtCscgRAwXFJnXP_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit
    i64 12, label %_RNvXs_NtNtCscgRAwXFJnXP_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit5
    i64 9, label %_RNvXs_NtNtCscgRAwXFJnXP_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit11
  ], !dbg !24692

bb.b:                                             ; preds = %bb.c, %_RNvXs_NtNtCscgRAwXFJnXP_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit11.thread
  %i.j = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VechEECshquuC4dCYVj_10polars_sql(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsgZ49sUHp3tW_5alloc6string6StringECshquuC4dCYVj_10polars_sql.exit unwind label %bb.g, !dbg !24696

_RNvXs_NtNtCscgRAwXFJnXP_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit: ; preds = %bb.a
  %i.k = load i64, ptr %.val, align 1, !dbg !24698
  %i.l = icmp ne i64 %i.k, 8535274980154369394, !dbg !24698
  %i.m = zext i1 %i.l to i32, !dbg !24698
  %i.n = icmp eq i32 %i.m, 0, !dbg !24698
  br i1 %i.n, label %bb.f, label %_RNvXs_NtNtCscgRAwXFJnXP_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit8, !dbg !24700

_RNvXs_NtNtCscgRAwXFJnXP_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit5: ; preds = %bb.a
  %i.o = load i64, ptr %.val, align 1, !dbg !24701
  %i.p = xor i64 %i.o, 8241992348073026930, !dbg !24701
  %i.q = getelementptr i8, ptr %.val, i64 8, !dbg !24701
  %i.r = load i32, ptr %i.q, align 1, !dbg !24701
  %i.s = zext i32 %i.r to i64, !dbg !24701
  %i.t = xor i64 %i.s, 1952806257, !dbg !24701
  %i.u = or i64 %i.p, %i.t, !dbg !24701
  %i.v = icmp ne i64 %i.u, 0, !dbg !24701
  %i.w = zext i1 %i.v to i32, !dbg !24701
  %i.x = icmp eq i32 %i.w, 0, !dbg !24701
  br i1 %i.x, label %bb.f, label %_RNvXs_NtNtCscgRAwXFJnXP_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit11.thread, !dbg !24706

_RNvXs_NtNtCscgRAwXFJnXP_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit8: ; preds = %_RNvXs_NtNtCscgRAwXFJnXP_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit
  %i.y = load i64, ptr %.val, align 1, !dbg !24707
  %i.z = icmp ne i64 %i.y, 7165342865573373298, !dbg !24707
  %i.aa = zext i1 %i.z to i32, !dbg !24707
  %i.ab = icmp eq i32 %i.aa, 0, !dbg !24707
  br i1 %i.ab, label %bb.f, label %_RNvXs_NtNtCscgRAwXFJnXP_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit11.thread, !dbg !24712

_RNvXs_NtNtCscgRAwXFJnXP_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit11: ; preds = %bb.a
  %i.ac = load i64, ptr %.val, align 1, !dbg !24713
  %i.ad = xor i64 %i.ac, 8030879518470268274, !dbg !24713
  %i.ae = getelementptr i8, ptr %.val, i64 8, !dbg !24713
  %i.af = load i8, ptr %i.ae, align 1, !dbg !24713
  %i.ag = zext i8 %i.af to i64, !dbg !24713
  %i.ah = xor i64 %i.ag, 110, !dbg !24713
  %i.ai = or i64 %i.ad, %i.ah, !dbg !24713
  %i.aj = icmp ne i64 %i.ai, 0, !dbg !24713
  %i.ak = zext i1 %i.aj to i32, !dbg !24713
  %i.al = icmp eq i32 %i.ak, 0, !dbg !24713
  br i1 %i.al, label %bb.f, label %_RNvXs_NtNtCscgRAwXFJnXP_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit11.thread, !dbg !24718

_RNvXs_NtNtCscgRAwXFJnXP_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit11.thread: ; preds = %bb.a, %_RNvXs_NtNtCscgRAwXFJnXP_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit8, %_RNvXs_NtNtCscgRAwXFJnXP_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit5, %_RNvXs_NtNtCscgRAwXFJnXP_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !24719
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !24719
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !24719
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !24720
  store ptr %i.f, ptr %i.a, align 8, !dbg !24720
  %.sroa.419.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !24720
  store ptr @_RNvXs1i_NtCscgRAwXFJnXP_4core3fmtReNtB6_7Display3fmtCsh6mDDnHa5nR_14rustc_demangle, ptr %.sroa.419.0..sroa_idx, align 8, !dbg !24720
  invoke void @_RNvNvNtCsgZ49sUHp3tW_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noundef nonnull @59, ptr noundef nonnull %i.a)
          to label %bb.c unwind label %bb.b, !dbg !24723

bb.c:                                             ; preds = %_RNvXs_NtNtCscgRAwXFJnXP_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit11.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !24719
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.b, i64 24, i1 false), !dbg !24727, !alias.scope !24730
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !24719
  invoke void @_RNvXs_CsgjwxzEoLG5s_12polars_errorNtB4_9ErrStringINtNtCscgRAwXFJnXP_4core7convert4FromNtNtCsgZ49sUHp3tW_5alloc6string6StringE4fromCshquuC4dCYVj_10polars_sql(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @60)
          to label %bb.d unwind label %bb.b, !dbg !24734

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !24719
  %.sroa.416.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !24719
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.416.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false), !dbg !24719
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !24719
  br label %bb.e, !dbg !24736

bb.e:                                             ; preds = %bb.f, %bb.d
  %storemerge = phi i64 [ 18, %bb.f ], [ 11, %bb.d ], !dbg !24737
  store i64 %storemerge, ptr %0, align 8, !dbg !24737
  call fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VechEECshquuC4dCYVj_10polars_sql(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e), !dbg !24738
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !24739
  ret void, !dbg !24736

bb.f:                                             ; preds = %_RNvXs_NtNtCscgRAwXFJnXP_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit11, %_RNvXs_NtNtCscgRAwXFJnXP_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit8, %_RNvXs_NtNtCscgRAwXFJnXP_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit5, %_RNvXs_NtNtCscgRAwXFJnXP_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit
  %.sroa.0.0 = phi i8 [ 2, %_RNvXs_NtNtCscgRAwXFJnXP_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit8 ], [ 0, %_RNvXs_NtNtCscgRAwXFJnXP_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit ], [ 1, %_RNvXs_NtNtCscgRAwXFJnXP_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit5 ], [ 3, %_RNvXs_NtNtCscgRAwXFJnXP_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit11 ], !dbg !24737
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !24740
  store i8 %.sroa.0.0, ptr %i.am, align 8, !dbg !24740
  br label %bb.e, !dbg !24736

bb.g:                                             ; preds = %bb.b
  %i.an = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #35, !dbg !24741
  unreachable, !dbg !24741

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsgZ49sUHp3tW_5alloc6string6StringECshquuC4dCYVj_10polars_sql.exit: ; preds = %bb.b
  resume { ptr, i32 } %i.j, !dbg !24741
}

; Function Attrs: nonlazybind optsize uwtable
define void @_RNvXNtNtCscgRAwXFJnXP_4core4iter8adaptersINtB2_12GenericShuntINtNtB2_3map3MapIBY_INtNtNtB6_5slice4iter4IterINtNtCsaRr8xKSRVhT_9sqlparser3ast6ParensINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtB1K_4ExprEEENCNvMs1_NtCshquuC4dCYVj_10polars_sql7contextNtB3e_10SQLContext13process_query0ENCINvB3a_14process_valuesB1d_E0EINtNtB6_6result6ResultNtNtB6_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEENtNtNtB4_6traits8iterator8Iterator4nextB3g_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 8)) %0, ptr noalias noundef align 8 dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !24742 {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %.sroa.6 = alloca [16 x i8], align 8            ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6), !dbg !24743
  tail call void @llvm.experimental.noalias.scope.decl(metadata !24744), !dbg !24747
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !24750, !noalias !24752
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24, !dbg !24754
  %i.d = load ptr, ptr %i.c, align 8, !dbg !24754, !alias.scope !24744, !noalias !24755, !nonnull !13, !align !1076, !noundef !13
  call void @_RINvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB6_3MapIBO_INtNtNtBc_5slice4iter4IterINtNtCsaRr8xKSRVhT_9sqlparser3ast6ParensINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtB1u_4ExprEEENCNvMs1_NtCshquuC4dCYVj_10polars_sql7contextNtB2Y_10SQLContext13process_query0ENCINvB2U_14process_valuesBX_E0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvXB8_INtB8_12GenericShuntBN_INtNtBc_6result6ResultNtNtBc_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEB4C_8try_folduNCINvNvB4C_12try_for_each4callNtNtNtCs1LHh8CLbVkQ_11polars_core5frame3row3RowINtNtNtBc_3ops12control_flow11ControlFlowB84_ENcNtB8P_5Break0E0B8P_E0IB8Q_B8P_EEB30_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(32) %1, ptr noalias noundef nonnull %i.a, ptr noalias noundef nonnull align 8 dereferenceable(72) %i.d), !dbg !24756, !noalias !24755
  %i.e = load i64, ptr %i.b, align 8, !dbg !24757, !range !5918, !noalias !24752, !noundef !13 ; 3 uses
  %.not.i = icmp eq i64 %i.e, -9223372036854775807, !dbg !24757
  br i1 %.not.i, label %_RINvXNtNtCscgRAwXFJnXP_4core4iter8adaptersINtB3_12GenericShuntINtNtB3_3map3MapIBZ_INtNtNtB7_5slice4iter4IterINtNtCsaRr8xKSRVhT_9sqlparser3ast6ParensINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtB1L_4ExprEEENCNvMs1_NtCshquuC4dCYVj_10polars_sql7contextNtB3f_10SQLContext13process_query0ENCINvB3b_14process_valuesB1e_E0EINtNtB7_6result6ResultNtNtB7_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEENtNtNtB5_6traits8iterator8Iterator8try_folduNCINvNvB6q_12try_for_each4callNtNtNtCs1LHh8CLbVkQ_11polars_core5frame3row3RowINtNtNtB7_3ops12control_flow11ControlFlowB7C_ENcNtB8n_5Break0E0B8n_EB3h_.exit.thread, label %_RINvXNtNtCscgRAwXFJnXP_4core4iter8adaptersINtB3_12GenericShuntINtNtB3_3map3MapIBZ_INtNtNtB7_5slice4iter4IterINtNtCsaRr8xKSRVhT_9sqlparser3ast6ParensINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtB1L_4ExprEEENCNvMs1_NtCshquuC4dCYVj_10polars_sql7contextNtB3f_10SQLContext13process_query0ENCINvB3b_14process_valuesB1e_E0EINtNtB7_6result6ResultNtNtB7_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEENtNtNtB5_6traits8iterator8Iterator8try_folduNCINvNvB6q_12try_for_each4callNtNtNtCs1LHh8CLbVkQ_11polars_core5frame3row3RowINtNtNtB7_3ops12control_flow11ControlFlowB7C_ENcNtB8n_5Break0E0B8n_EB3h_.exit, !dbg !24759

_RINvXNtNtCscgRAwXFJnXP_4core4iter8adaptersINtB3_12GenericShuntINtNtB3_3map3MapIBZ_INtNtNtB7_5slice4iter4IterINtNtCsaRr8xKSRVhT_9sqlparser3ast6ParensINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtB1L_4ExprEEENCNvMs1_NtCshquuC4dCYVj_10polars_sql7contextNtB3f_10SQLContext13process_query0ENCINvB3b_14process_valuesB1e_E0EINtNtB7_6result6ResultNtNtB7_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEENtNtNtB5_6traits8iterator8Iterator8try_folduNCINvNvB6q_12try_for_each4callNtNtNtCs1LHh8CLbVkQ_11polars_core5frame3row3RowINtNtNtB7_3ops12control_flow11ControlFlowB7C_ENcNtB8n_5Break0E0B8n_EB3h_.exit.thread: ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !24760, !noalias !24752
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtB4_3ops12control_flow11ControlFlowNtNtNtCs1LHh8CLbVkQ_11polars_core5frame3row3RowEECshquuC4dCYVj_10polars_sql.exit, !dbg !24761

_RINvXNtNtCscgRAwXFJnXP_4core4iter8adaptersINtB3_12GenericShuntINtNtB3_3map3MapIBZ_INtNtNtB7_5slice4iter4IterINtNtCsaRr8xKSRVhT_9sqlparser3ast6ParensINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtB1L_4ExprEEENCNvMs1_NtCshquuC4dCYVj_10polars_sql7contextNtB3f_10SQLContext13process_query0ENCINvB3b_14process_valuesB1e_E0EINtNtB7_6result6ResultNtNtB7_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEENtNtNtB5_6traits8iterator8Iterator8try_folduNCINvNvB6q_12try_for_each4callNtNtNtCs1LHh8CLbVkQ_11polars_core5frame3row3RowINtNtNtB7_3ops12control_flow11ControlFlowB7C_ENcNtB8n_5Break0E0B8n_EB3h_.exit: ; preds = %bb.a
  %.sroa.6.0..sroa_idx7 = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !24764
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.0..sroa_idx7, i64 16, i1 false), !dbg !24764, !noalias !24744
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !24760, !noalias !24752
  %.not = icmp eq i64 %i.e, -9223372036854775808, !dbg !24765
  br i1 %.not, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtB4_3ops12control_flow11ControlFlowNtNtNtCs1LHh8CLbVkQ_11polars_core5frame3row3RowEECshquuC4dCYVj_10polars_sql.exit, label %bb.b, !dbg !24761

bb.b:                                             ; preds = %_RINvXNtNtCscgRAwXFJnXP_4core4iter8adaptersINtB3_12GenericShuntINtNtB3_3map3MapIBZ_INtNtNtB7_5slice4iter4IterINtNtCsaRr8xKSRVhT_9sqlparser3ast6ParensINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtB1L_4ExprEEENCNvMs1_NtCshquuC4dCYVj_10polars_sql7contextNtB3f_10SQLContext13process_query0ENCINvB3b_14process_valuesB1e_E0EINtNtB7_6result6ResultNtNtB7_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEENtNtNtB5_6traits8iterator8Iterator8try_folduNCINvNvB6q_12try_for_each4callNtNtNtCs1LHh8CLbVkQ_11polars_core5frame3row3RowINtNtNtB7_3ops12control_flow11ControlFlowB7C_ENcNtB8n_5Break0E0B8n_EB3h_.exit
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !24766
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6, i64 16, i1 false), !dbg !24768
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtB4_3ops12control_flow11ControlFlowNtNtNtCs1LHh8CLbVkQ_11polars_core5frame3row3RowEECshquuC4dCYVj_10polars_sql.exit, !dbg !24769

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtB4_3ops12control_flow11ControlFlowNtNtNtCs1LHh8CLbVkQ_11polars_core5frame3row3RowEECshquuC4dCYVj_10polars_sql.exit: ; preds = %_RINvXNtNtCscgRAwXFJnXP_4core4iter8adaptersINtB3_12GenericShuntINtNtB3_3map3MapIBZ_INtNtNtB7_5slice4iter4IterINtNtCsaRr8xKSRVhT_9sqlparser3ast6ParensINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtB1L_4ExprEEENCNvMs1_NtCshquuC4dCYVj_10polars_sql7contextNtB3f_10SQLContext13process_query0ENCINvB3b_14process_valuesB1e_E0EINtNtB7_6result6ResultNtNtB7_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEENtNtNtB5_6traits8iterator8Iterator8try_folduNCINvNvB6q_12try_for_each4callNtNtNtCs1LHh8CLbVkQ_11polars_core5frame3row3RowINtNtNtB7_3ops12control_flow11ControlFlowB7C_ENcNtB8n_5Break0E0B8n_EB3h_.exit, %_RINvXNtNtCscgRAwXFJnXP_4core4iter8adaptersINtB3_12GenericShuntINtNtB3_3map3MapIBZ_INtNtNtB7_5slice4iter4IterINtNtCsaRr8xKSRVhT_9sqlparser3ast6ParensINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtB1L_4ExprEEENCNvMs1_NtCshquuC4dCYVj_10polars_sql7contextNtB3f_10SQLContext13process_query0ENCINvB3b_14process_valuesB1e_E0EINtNtB7_6result6ResultNtNtB7_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEENtNtNtB5_6traits8iterator8Iterator8try_folduNCINvNvB6q_12try_for_each4callNtNtNtCs1LHh8CLbVkQ_11polars_core5frame3row3RowINtNtNtB7_3ops12control_flow11ControlFlowB7C_ENcNtB8n_5Break0E0B8n_EB3h_.exit.thread, %bb.b
  %.sink = phi i64 [ %i.e, %bb.b ], [ -9223372036854775808, %_RINvXNtNtCscgRAwXFJnXP_4core4iter8adaptersINtB3_12GenericShuntINtNtB3_3map3MapIBZ_INtNtNtB7_5slice4iter4IterINtNtCsaRr8xKSRVhT_9sqlparser3ast6ParensINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtB1L_4ExprEEENCNvMs1_NtCshquuC4dCYVj_10polars_sql7contextNtB3f_10SQLContext13process_query0ENCINvB3b_14process_valuesB1e_E0EINtNtB7_6result6ResultNtNtB7_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEENtNtNtB5_6traits8iterator8Iterator8try_folduNCINvNvB6q_12try_for_each4callNtNtNtCs1LHh8CLbVkQ_11polars_core5frame3row3RowINtNtNtB7_3ops12control_flow11ControlFlowB7C_ENcNtB8n_5Break0E0B8n_EB3h_.exit.thread ], [ -9223372036854775808, %_RINvXNtNtCscgRAwXFJnXP_4core4iter8adaptersINtB3_12GenericShuntINtNtB3_3map3MapIBZ_INtNtNtB7_5slice4iter4IterINtNtCsaRr8xKSRVhT_9sqlparser3ast6ParensINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtB1L_4ExprEEENCNvMs1_NtCshquuC4dCYVj_10polars_sql7contextNtB3f_10SQLContext13process_query0ENCINvB3b_14process_valuesB1e_E0EINtNtB7_6result6ResultNtNtB7_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEENtNtNtB5_6traits8iterator8Iterator8try_folduNCINvNvB6q_12try_for_each4callNtNtNtCs1LHh8CLbVkQ_11polars_core5frame3row3RowINtNtNtB7_3ops12control_flow11ControlFlowB7C_ENcNtB8n_5Break0E0B8n_EB3h_.exit ]
  store i64 %.sink, ptr %0, align 8, !dbg !24770
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6), !dbg !24771
  ret void, !dbg !24772
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @_RNvXNtNtCscgRAwXFJnXP_4core4iter8adaptersINtB2_12GenericShuntINtNtB2_3map3MapIBY_INtNtNtB6_5slice4iter4IterINtNtCsaRr8xKSRVhT_9sqlparser3ast6ParensINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtB1K_4ExprEEENCNvMs1_NtCshquuC4dCYVj_10polars_sql7contextNtB3e_10SQLContext13process_query0ENCINvB3a_14process_valuesB1d_E0EINtNtB6_6result6ResultNtNtB6_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEENtNtNtB4_6traits8iterator8Iterator9size_hintB3g_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(32) %1) unnamed_addr #6 !dbg !24773 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24, !dbg !24774
  %i.b = load ptr, ptr %i.a, align 8, !dbg !24774, !nonnull !13, !align !1076, !noundef !13
  %i.c = load i64, ptr %i.b, align 8, !dbg !24775, !range !14337, !noundef !13
  %.not = icmp eq i64 %i.c, 18, !dbg !24775
  br i1 %.not, label %bb.b, label %bb.c, !dbg !24774

bb.b:                                             ; preds = %bb.a
  %.val = load ptr, ptr %1, align 8, !dbg !24780, !nonnull !13, !noundef !13
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !24780
  %.val1 = load ptr, ptr %i.d, align 8, !dbg !24780, !nonnull !13, !noundef !13
  %i.e = ptrtoint ptr %.val1 to i64, !dbg !24781
  %i.f = ptrtoint ptr %.val to i64, !dbg !24781
  %i.g = sub nuw i64 %i.e, %i.f, !dbg !24781
  %i.h = udiv exact i64 %i.g, 200, !dbg !24781
  br label %bb.c, !dbg !24797

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sink = phi i64 [ %i.h, %bb.b ], [ 0, %bb.a ], !dbg !24798
  store <2 x i64> <i64 0, i64 1>, ptr %0, align 8, !dbg !24798
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !24798
  store i64 %.sink, ptr %i.i, align 8, !dbg !24798
  ret void, !dbg !24799
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @_RNvXNtNtCscgRAwXFJnXP_4core4iter8adaptersINtB2_12GenericShuntINtNtB2_3map3MapINtNtB2_5chain5ChainINtNtNtB4_7sources4once4OnceRNtNtNtCsaRr8xKSRVhT_9sqlparser3ast5query11TableFactorEIBY_INtNtNtB6_5slice4iter4IterNtB22_4JoinENCNvMNtCshquuC4dCYVj_10polars_sql8subqueryNtNtB3F_7context10SQLContext21resolve_subquery_from0EENvB4g_14get_table_nameEINtNtB6_6option6OptionNtNtB6_7convert10InfallibleEENtNtNtB4_6traits8iterator8Iterator9size_hintB3F_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(40) %1) unnamed_addr #6 !dbg !14429 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !24800
  %i.b = load ptr, ptr %i.a, align 8, !dbg !24800, !nonnull !13, !noundef !13
  %i.c = load i8, ptr %i.b, align 1, !dbg !24801, !range !4069, !noundef !13
  %i.d = trunc nuw i8 %i.c to i1, !dbg !24801
  br i1 %i.d, label %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtB7_5chain5ChainINtNtNtB9_7sources4once4OnceRNtNtNtCsaRr8xKSRVhT_9sqlparser3ast5query11TableFactorEIBN_INtNtNtBb_5slice4iter4IterNtB1L_4JoinENCNvMNtCshquuC4dCYVj_10polars_sql8subqueryNtNtB3o_7context10SQLContext21resolve_subquery_from0EENvB3Z_14get_table_nameENtNtNtB9_6traits8iterator8Iterator9size_hintB3o_.exit, label %bb.b, !dbg !24800

bb.b:                                             ; preds = %bb.a
  %i.e = load i64, ptr %1, align 8, !dbg !24803, !range !168, !alias.scope !24811, !noalias !24816, !noundef !13
  %i.f = trunc nuw i64 %i.e to i1, !dbg !24819
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !24803
  %i.h = load ptr, ptr %i.g, align 8, !dbg !24803, !alias.scope !24811, !noalias !24816, !noundef !13 ; 3 uses
  %.not7.i.i = icmp eq ptr %i.h, null, !dbg !24803 ; 2 uses
  br i1 %i.f, label %bb.c, label %bb.d, !dbg !24819

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !24803
  %.val12.i.i = load ptr, ptr %i.i, align 8, !dbg !24820, !alias.scope !24811, !noalias !24816, !align !1076, !noundef !13
  %i.j = icmp ne ptr %.val12.i.i, null, !dbg !24821
  %i.k = zext i1 %i.j to i64, !dbg !24821         ; 2 uses
  br i1 %.not7.i.i, label %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtB7_5chain5ChainINtNtNtB9_7sources4once4OnceRNtNtNtCsaRr8xKSRVhT_9sqlparser3ast5query11TableFactorEIBN_INtNtNtBb_5slice4iter4IterNtB1L_4JoinENCNvMNtCshquuC4dCYVj_10polars_sql8subqueryNtNtB3o_7context10SQLContext21resolve_subquery_from0EENvB3Z_14get_table_nameENtNtNtB9_6traits8iterator8Iterator9size_hintB3o_.exit, label %bb.f, !dbg !24819

bb.d:                                             ; preds = %bb.b
  br i1 %.not7.i.i, label %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtB7_5chain5ChainINtNtNtB9_7sources4once4OnceRNtNtNtCsaRr8xKSRVhT_9sqlparser3ast5query11TableFactorEIBN_INtNtNtBb_5slice4iter4IterNtB1L_4JoinENCNvMNtCshquuC4dCYVj_10polars_sql8subqueryNtNtB3o_7context10SQLContext21resolve_subquery_from0EENvB3Z_14get_table_nameENtNtNtB9_6traits8iterator8Iterator9size_hintB3o_.exit, label %bb.e, !dbg !24819

bb.e:                                             ; preds = %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 24, !dbg !24836
  %.val11.i.i = load ptr, ptr %i.l, align 8, !dbg !24836, !alias.scope !24811, !noalias !24816, !nonnull !13, !noundef !13
  %i.m = ptrtoint ptr %.val11.i.i to i64, !dbg !24838
  %i.n = ptrtoint ptr %i.h to i64, !dbg !24838
  %i.o = sub nuw i64 %i.m, %i.n, !dbg !24838
  %i.p = udiv exact i64 %i.o, 2000, !dbg !24838
  br label %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtB7_5chain5ChainINtNtNtB9_7sources4once4OnceRNtNtNtCsaRr8xKSRVhT_9sqlparser3ast5query11TableFactorEIBN_INtNtNtBb_5slice4iter4IterNtB1L_4JoinENCNvMNtCshquuC4dCYVj_10polars_sql8subqueryNtNtB3o_7context10SQLContext21resolve_subquery_from0EENvB3Z_14get_table_nameENtNtNtB9_6traits8iterator8Iterator9size_hintB3o_.exit, !dbg !24836

bb.f:                                             ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 24, !dbg !24852
  %.val9.i.i = load ptr, ptr %i.q, align 8, !dbg !24852, !alias.scope !24811, !noalias !24816, !nonnull !13, !noundef !13
  %i.r = ptrtoint ptr %.val9.i.i to i64, !dbg !24855
  %i.s = ptrtoint ptr %i.h to i64, !dbg !24855
  %i.t = sub nuw i64 %i.r, %i.s, !dbg !24855
  %i.u = udiv exact i64 %i.t, 2000, !dbg !24855
  %i.v = add nuw nsw i64 %i.u, %i.k, !dbg !24861
  br label %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtB7_5chain5ChainINtNtNtB9_7sources4once4OnceRNtNtNtCsaRr8xKSRVhT_9sqlparser3ast5query11TableFactorEIBN_INtNtNtBb_5slice4iter4IterNtB1L_4JoinENCNvMNtCshquuC4dCYVj_10polars_sql8subqueryNtNtB3o_7context10SQLContext21resolve_subquery_from0EENvB3Z_14get_table_nameENtNtNtB9_6traits8iterator8Iterator9size_hintB3o_.exit, !dbg !24865

_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtB7_5chain5ChainINtNtNtB9_7sources4once4OnceRNtNtNtCsaRr8xKSRVhT_9sqlparser3ast5query11TableFactorEIBN_INtNtNtBb_5slice4iter4IterNtB1L_4JoinENCNvMNtCshquuC4dCYVj_10polars_sql8subqueryNtNtB3o_7context10SQLContext21resolve_subquery_from0EENvB3Z_14get_table_nameENtNtNtB9_6traits8iterator8Iterator9size_hintB3o_.exit: ; preds = %bb.f, %bb.e, %bb.d, %bb.c, %bb.a
  %.sink20.i.i.sink = phi i64 [ 0, %bb.a ], [ %i.v, %bb.f ], [ %i.p, %bb.e ], [ %i.k, %bb.c ], [ 0, %bb.d ]
  store <2 x i64> <i64 0, i64 1>, ptr %0, align 8, !dbg !24866
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !24866
  store i64 %.sink20.i.i.sink, ptr %i.w, align 8, !dbg !24866
  ret void, !dbg !24867
}

; Function Attrs: nonlazybind optsize uwtable
define { i1, i8 } @_RNvXNtNtCscgRAwXFJnXP_4core4iter8adaptersINtB2_12GenericShuntINtNtB2_3map3MapINtNtB2_9enumerate9EnumerateINtNtNtB6_5slice4iter6ChunkshEENCINvXs2_Cs1tlcHH8F7Uh_3hexINtNtCsgZ49sUHp3tW_5alloc3vec3VechENtB2j_7FromHex8from_hexNtNtB2G_6string6StringE0EINtNtB6_6result6ResultNtNtB6_7convert10InfallibleNtNtB2j_5error12FromHexErrorEENtNtNtB4_6traits8iterator8Iterator4nextCshquuC4dCYVj_10polars_sql(ptr noalias noundef align 8 dereferenceable(40) %0) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !24868 {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !24869
  %i.c = load ptr, ptr %i.b, align 8, !dbg !24869, !alias.scope !24873, !nonnull !13, !align !1076, !noundef !13
  %i.d = call { i8, i8 } @_RINvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB6_3MapINtNtB8_9enumerate9EnumerateINtNtNtBc_5slice4iter6ChunkshEENCINvXs2_Cs1tlcHH8F7Uh_3hexINtNtCsgZ49sUHp3tW_5alloc3vec3VechENtB23_7FromHex8from_hexNtNtB2q_6string6StringE0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvXB8_INtB8_12GenericShuntBN_INtNtBc_6result6ResultNtNtBc_7convert10InfallibleNtNtB23_5error12FromHexErrorEEB3G_8try_folduNCINvNvB3G_12try_for_each4callhINtNtNtBc_3ops12control_flow11ControlFlowhENcNtB6U_5Break0E0B6U_E0IB6V_B6U_EECshquuC4dCYVj_10polars_sql(ptr noalias noundef nonnull align 8 dereferenceable(40) %0, ptr noalias noundef nonnull %i.a, ptr noalias noundef nonnull align 8 dereferenceable(16) %i.c), !dbg !24876 ; 2 uses
  %i.e = extractvalue { i8, i8 } %i.d, 0, !dbg !24877
  %i.f = extractvalue { i8, i8 } %i.d, 1, !dbg !24878
  %.sroa.0.0.i = trunc i8 %i.e to i1, !dbg !24878 ; 2 uses
  %i.g = insertvalue { i1, i8 } poison, i1 %.sroa.0.0.i, 0, !dbg !24880
  %.sroa.3.0 = select i1 %.sroa.0.0.i, i8 %i.f, i8 undef, !dbg !24881
  %i.h = insertvalue { i1, i8 } %i.g, i8 %.sroa.3.0, 1, !dbg !24884
  ret { i1, i8 } %i.h, !dbg !24884
}

; Function Attrs: nonlazybind optsize uwtable
define void @_RNvXNtNtCscgRAwXFJnXP_4core4iter8adaptersINtB2_12GenericShuntINtNtB2_3map3MapINtNtB2_9enumerate9EnumerateINtNtNtB6_5slice4iter6ChunkshEENCINvXs2_Cs1tlcHH8F7Uh_3hexINtNtCsgZ49sUHp3tW_5alloc3vec3VechENtB2j_7FromHex8from_hexNtNtB2G_6string6StringE0EINtNtB6_6result6ResultNtNtB6_7convert10InfallibleNtNtB2j_5error12FromHexErrorEENtNtNtB4_6traits8iterator8Iterator9size_hintCshquuC4dCYVj_10polars_sql(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(40) %1) unnamed_addr #0 !dbg !24885 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !24886
  %i.b = load ptr, ptr %i.a, align 8, !dbg !24886, !nonnull !13, !align !1076, !noundef !13
  %i.c = load i32, ptr %i.b, align 8, !dbg !24887, !range !11747, !noundef !13
  %.not = icmp eq i32 %i.c, 3, !dbg !24887
  br i1 %.not, label %bb.b, label %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtB7_9enumerate9EnumerateINtNtNtBb_5slice4iter6ChunkshEENCINvXs2_Cs1tlcHH8F7Uh_3hexINtNtCsgZ49sUHp3tW_5alloc3vec3VechENtB22_7FromHex8from_hexNtNtB2p_6string6StringE0ENtNtNtB9_6traits8iterator8Iterator9size_hintCshquuC4dCYVj_10polars_sql.exit, !dbg !24886

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !24892
  %.val = load i64, ptr %i.d, align 8, !dbg !24892, !noundef !13 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !24892
  %.val1 = load i64, ptr %i.e, align 8, !dbg !24892 ; 3 uses
  %i.f = icmp eq i64 %.val, 0, !dbg !24893
  br i1 %i.f, label %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtB7_9enumerate9EnumerateINtNtNtBb_5slice4iter6ChunkshEENCINvXs2_Cs1tlcHH8F7Uh_3hexINtNtCsgZ49sUHp3tW_5alloc3vec3VechENtB22_7FromHex8from_hexNtNtB2p_6string6StringE0ENtNtNtB9_6traits8iterator8Iterator9size_hintCshquuC4dCYVj_10polars_sql.exit, label %bb.c, !dbg !24893

bb.c:                                             ; preds = %bb.b
  %i.g = icmp eq i64 %.val1, 0, !dbg !24901
  br i1 %i.g, label %bb.e, label %bb.d, !dbg !24901

bb.d:                                             ; preds = %bb.c
  %i.h = udiv i64 %.val, %.val1, !dbg !24901
  %i.i = urem i64 %.val, %.val1, !dbg !24904
  %.not.i.i.i = icmp ne i64 %i.i, 0, !dbg !24906
  %i.j = zext i1 %.not.i.i.i to i64, !dbg !24906
  %.sroa.0.0.i.i.i = add i64 %i.h, %i.j, !dbg !24906
  br label %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtB7_9enumerate9EnumerateINtNtNtBb_5slice4iter6ChunkshEENCINvXs2_Cs1tlcHH8F7Uh_3hexINtNtCsgZ49sUHp3tW_5alloc3vec3VechENtB22_7FromHex8from_hexNtNtB2p_6string6StringE0ENtNtNtB9_6traits8iterator8Iterator9size_hintCshquuC4dCYVj_10polars_sql.exit, !dbg !24908

bb.e:                                             ; preds = %bb.c
  tail call void @_RNvNtNtCscgRAwXFJnXP_4core9panicking11panic_const23panic_const_div_by_zero(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @62) #40, !dbg !24901, !noalias !24909
  unreachable, !dbg !24901

_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtB7_9enumerate9EnumerateINtNtNtBb_5slice4iter6ChunkshEENCINvXs2_Cs1tlcHH8F7Uh_3hexINtNtCsgZ49sUHp3tW_5alloc3vec3VechENtB22_7FromHex8from_hexNtNtB2p_6string6StringE0ENtNtNtB9_6traits8iterator8Iterator9size_hintCshquuC4dCYVj_10polars_sql.exit: ; preds = %bb.d, %bb.b, %bb.a
  %.sroa.0.0.sink1.i.i.i.sink = phi i64 [ 0, %bb.a ], [ %.sroa.0.0.i.i.i, %bb.d ], [ 0, %bb.b ]
  store <2 x i64> <i64 0, i64 1>, ptr %0, align 8, !dbg !24916
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !24916
  store i64 %.sroa.0.0.sink1.i.i.i.sink, ptr %i.k, align 8, !dbg !24916
  ret void, !dbg !24917
}

; Function Attrs: nonlazybind optsize uwtable
define void @_RNvXNtNtCscgRAwXFJnXP_4core4iter8adaptersINtB2_12GenericShuntINtNtB2_3map3MapINtNtNtB6_5slice4iter4IterNtNtCsaRr8xKSRVhT_9sqlparser3ast10ObjectNameENCNvNtCshquuC4dCYVj_10polars_sql7context23process_join_constraint0EINtNtB6_6result6ResultNtNtB6_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEENtNtNtB4_6traits8iterator8Iterator4nextB2s_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([144 x i8]) align 16 captures(none) dereferenceable(144) initializes((112, 120)) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !24918 {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [144 x i8], align 16              ; 7 uses
  %.sroa.0 = alloca [112 x i8], align 16          ; 4 uses
  %.sroa.6 = alloca [24 x i8], align 8            ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0), !dbg !24919
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6), !dbg !24919
  tail call void @llvm.experimental.noalias.scope.decl(metadata !24920), !dbg !24923
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !24926, !noalias !24928
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !24930
  %i.d = load ptr, ptr %i.c, align 8, !dbg !24930, !alias.scope !24920, !noalias !24931, !nonnull !13, !align !1076, !noundef !13
  call void @_RINvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterNtNtCsaRr8xKSRVhT_9sqlparser3ast10ObjectNameENCNvNtCshquuC4dCYVj_10polars_sql7context23process_join_constraint0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvXB8_INtB8_12GenericShuntBN_INtNtBc_6result6ResultNtNtBc_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEB3b_8try_folduNCINvNvB3b_12try_for_each4callNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprINtNtNtBc_3ops12control_flow11ControlFlowB6D_ENcNtB7o_5Break0E0B7o_E0IB7p_B7o_EEB2c_(ptr noalias noundef nonnull sret([144 x i8]) align 16 captures(address) dereferenceable(144) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull %i.a, ptr noalias noundef nonnull align 8 dereferenceable(72) %i.d), !dbg !24932, !noalias !24931
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 112, !dbg !24933
  %i.f = load i64, ptr %i.e, align 16, !dbg !24933, !range !1047, !noalias !24928, !noundef !13 ; 3 uses
  %.not.i = icmp eq i64 %i.f, -9223372036854775779, !dbg !24933
  br i1 %.not.i, label %_RINvXNtNtCscgRAwXFJnXP_4core4iter8adaptersINtB3_12GenericShuntINtNtB3_3map3MapINtNtNtB7_5slice4iter4IterNtNtCsaRr8xKSRVhT_9sqlparser3ast10ObjectNameENCNvNtCshquuC4dCYVj_10polars_sql7context23process_join_constraint0EINtNtB7_6result6ResultNtNtB7_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEENtNtNtB5_6traits8iterator8Iterator8try_folduNCINvNvB4Y_12try_for_each4callNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprINtNtNtB7_3ops12control_flow11ControlFlowB6a_ENcNtB6V_5Break0E0B6V_EB2t_.exit.thread, label %_RINvXNtNtCscgRAwXFJnXP_4core4iter8adaptersINtB3_12GenericShuntINtNtB3_3map3MapINtNtNtB7_5slice4iter4IterNtNtCsaRr8xKSRVhT_9sqlparser3ast10ObjectNameENCNvNtCshquuC4dCYVj_10polars_sql7context23process_join_constraint0EINtNtB7_6result6ResultNtNtB7_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEENtNtNtB5_6traits8iterator8Iterator8try_folduNCINvNvB4Y_12try_for_each4callNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprINtNtNtB7_3ops12control_flow11ControlFlowB6a_ENcNtB6V_5Break0E0B6V_EB2t_.exit, !dbg !24935

_RINvXNtNtCscgRAwXFJnXP_4core4iter8adaptersINtB3_12GenericShuntINtNtB3_3map3MapINtNtNtB7_5slice4iter4IterNtNtCsaRr8xKSRVhT_9sqlparser3ast10ObjectNameENCNvNtCshquuC4dCYVj_10polars_sql7context23process_join_constraint0EINtNtB7_6result6ResultNtNtB7_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEENtNtNtB5_6traits8iterator8Iterator8try_folduNCINvNvB4Y_12try_for_each4callNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprINtNtNtB7_3ops12control_flow11ControlFlowB6a_ENcNtB6V_5Break0E0B6V_EB2t_.exit.thread: ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !24936, !noalias !24928
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtB4_3ops12control_flow11ControlFlowNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprEECshquuC4dCYVj_10polars_sql.exit, !dbg !24937

_RINvXNtNtCscgRAwXFJnXP_4core4iter8adaptersINtB3_12GenericShuntINtNtB3_3map3MapINtNtNtB7_5slice4iter4IterNtNtCsaRr8xKSRVhT_9sqlparser3ast10ObjectNameENCNvNtCshquuC4dCYVj_10polars_sql7context23process_join_constraint0EINtNtB7_6result6ResultNtNtB7_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEENtNtNtB5_6traits8iterator8Iterator8try_folduNCINvNvB4Y_12try_for_each4callNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprINtNtNtB7_3ops12control_flow11ControlFlowB6a_ENcNtB6V_5Break0E0B6V_EB2t_.exit: ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(112) %.sroa.0, ptr noundef nonnull align 16 dereferenceable(112) %i.b, i64 112, i1 false), !dbg !24940, !noalias !24920
  %.sroa.6.0..sroa_idx4 = getelementptr inbounds nuw i8, ptr %i.b, i64 120, !dbg !24940
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6.0..sroa_idx4, i64 24, i1 false), !dbg !24940, !noalias !24920
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !24936, !noalias !24928
  %.not = icmp eq i64 %i.f, -9223372036854775780, !dbg !24941
  br i1 %.not, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtB4_3ops12control_flow11ControlFlowNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprEECshquuC4dCYVj_10polars_sql.exit, label %bb.b, !dbg !24937

bb.b:                                             ; preds = %_RINvXNtNtCscgRAwXFJnXP_4core4iter8adaptersINtB3_12GenericShuntINtNtB3_3map3MapINtNtNtB7_5slice4iter4IterNtNtCsaRr8xKSRVhT_9sqlparser3ast10ObjectNameENCNvNtCshquuC4dCYVj_10polars_sql7context23process_join_constraint0EINtNtB7_6result6ResultNtNtB7_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEENtNtNtB5_6traits8iterator8Iterator8try_folduNCINvNvB4Y_12try_for_each4callNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprINtNtNtB7_3ops12control_flow11ControlFlowB6a_ENcNtB6V_5Break0E0B6V_EB2t_.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(112) %0, ptr noundef nonnull align 16 dereferenceable(112) %.sroa.0, i64 112, i1 false), !dbg !24942
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 120, !dbg !24943
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6, i64 24, i1 false), !dbg !24942
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtB4_3ops12control_flow11ControlFlowNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprEECshquuC4dCYVj_10polars_sql.exit, !dbg !24945

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtB4_3ops12control_flow11ControlFlowNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprEECshquuC4dCYVj_10polars_sql.exit: ; preds = %_RINvXNtNtCscgRAwXFJnXP_4core4iter8adaptersINtB3_12GenericShuntINtNtB3_3map3MapINtNtNtB7_5slice4iter4IterNtNtCsaRr8xKSRVhT_9sqlparser3ast10ObjectNameENCNvNtCshquuC4dCYVj_10polars_sql7context23process_join_constraint0EINtNtB7_6result6ResultNtNtB7_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEENtNtNtB5_6traits8iterator8Iterator8try_folduNCINvNvB4Y_12try_for_each4callNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprINtNtNtB7_3ops12control_flow11ControlFlowB6a_ENcNtB6V_5Break0E0B6V_EB2t_.exit, %_RINvXNtNtCscgRAwXFJnXP_4core4iter8adaptersINtB3_12GenericShuntINtNtB3_3map3MapINtNtNtB7_5slice4iter4IterNtNtCsaRr8xKSRVhT_9sqlparser3ast10ObjectNameENCNvNtCshquuC4dCYVj_10polars_sql7context23process_join_constraint0EINtNtB7_6result6ResultNtNtB7_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEENtNtNtB5_6traits8iterator8Iterator8try_folduNCINvNvB4Y_12try_for_each4callNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprINtNtNtB7_3ops12control_flow11ControlFlowB6a_ENcNtB6V_5Break0E0B6V_EB2t_.exit.thread, %bb.b
  %.sink = phi i64 [ %i.f, %bb.b ], [ -9223372036854775780, %_RINvXNtNtCscgRAwXFJnXP_4core4iter8adaptersINtB3_12GenericShuntINtNtB3_3map3MapINtNtNtB7_5slice4iter4IterNtNtCsaRr8xKSRVhT_9sqlparser3ast10ObjectNameENCNvNtCshquuC4dCYVj_10polars_sql7context23process_join_constraint0EINtNtB7_6result6ResultNtNtB7_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEENtNtNtB5_6traits8iterator8Iterator8try_folduNCINvNvB4Y_12try_for_each4callNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprINtNtNtB7_3ops12control_flow11ControlFlowB6a_ENcNtB6V_5Break0E0B6V_EB2t_.exit.thread ], [ -9223372036854775780, %_RINvXNtNtCscgRAwXFJnXP_4core4iter8adaptersINtB3_12GenericShuntINtNtB3_3map3MapINtNtNtB7_5slice4iter4IterNtNtCsaRr8xKSRVhT_9sqlparser3ast10ObjectNameENCNvNtCshquuC4dCYVj_10polars_sql7context23process_join_constraint0EINtNtB7_6result6ResultNtNtB7_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEENtNtNtB5_6traits8iterator8Iterator8try_folduNCINvNvB4Y_12try_for_each4callNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprINtNtNtB7_3ops12control_flow11ControlFlowB6a_ENcNtB6V_5Break0E0B6V_EB2t_.exit ]
  %.sroa.46.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 112, !dbg !24946
  store i64 %.sink, ptr %.sroa.46.0..sroa_idx, align 16, !dbg !24946
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0), !dbg !24947
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6), !dbg !24947
  ret void, !dbg !24948
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @_RNvXNtNtCscgRAwXFJnXP_4core4iter8adaptersINtB2_12GenericShuntINtNtB2_3map3MapINtNtNtB6_5slice4iter4IterNtNtCsaRr8xKSRVhT_9sqlparser3ast10ObjectNameENCNvNtCshquuC4dCYVj_10polars_sql7context23process_join_constraint0EINtNtB6_6result6ResultNtNtB6_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEENtNtNtB4_6traits8iterator8Iterator9size_hintB2s_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #6 !dbg !24949 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !24950
  %i.b = load ptr, ptr %i.a, align 8, !dbg !24950, !nonnull !13, !align !1076, !noundef !13
  %i.c = load i64, ptr %i.b, align 8, !dbg !24951, !range !14337, !noundef !13
  %.not = icmp eq i64 %i.c, 18, !dbg !24951
  br i1 %.not, label %bb.b, label %bb.c, !dbg !24950

bb.b:                                             ; preds = %bb.a
  %.val = load ptr, ptr %1, align 8, !dbg !24956, !nonnull !13, !noundef !13
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !24956
  %.val1 = load ptr, ptr %i.d, align 8, !dbg !24956, !nonnull !13, !noundef !13
  %i.e = ptrtoint ptr %.val1 to i64, !dbg !24957
  %i.f = ptrtoint ptr %.val to i64, !dbg !24957
  %i.g = sub nuw i64 %i.e, %i.f, !dbg !24957
  %i.h = udiv exact i64 %i.g, 24, !dbg !24957
  br label %bb.c, !dbg !24971

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sink = phi i64 [ %i.h, %bb.b ], [ 0, %bb.a ], !dbg !24972
  store <2 x i64> <i64 0, i64 1>, ptr %0, align 8, !dbg !24972
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !24972
  store i64 %.sink, ptr %i.i, align 8, !dbg !24972
  ret void, !dbg !24973
}

; Function Attrs: nonlazybind optsize uwtable
define void @_RNvXNtNtCscgRAwXFJnXP_4core4iter8adaptersINtB2_12GenericShuntINtNtB2_3map3MapINtNtNtB6_5slice4iter4IterNtNtCsaRr8xKSRVhT_9sqlparser3ast4ExprENCINvMs0_NtCshquuC4dCYVj_10polars_sql9functionsNtB2o_18SQLFunctionVisitor23apply_cumulative_windowNCNvB2k_11visit_counts_0NCB3R_s0_0E0EINtNtB6_6result6ResultNtNtB6_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEENtNtNtB4_6traits8iterator8Iterator4nextB2q_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([144 x i8]) align 16 captures(none) dereferenceable(144) initializes((112, 120)) %0, ptr noalias noundef align 8 dereferenceable(40) %1) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !24974 {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [144 x i8], align 16              ; 7 uses
  %.sroa.0 = alloca [112 x i8], align 16          ; 4 uses
  %.sroa.6 = alloca [24 x i8], align 8            ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0), !dbg !24975
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6), !dbg !24975
  tail call void @llvm.experimental.noalias.scope.decl(metadata !24976), !dbg !24979
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !24982, !noalias !24984
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !24986
  %i.d = load ptr, ptr %i.c, align 8, !dbg !24986, !alias.scope !24976, !noalias !24987, !nonnull !13, !align !1076, !noundef !13
  call void @_RINvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterNtNtCsaRr8xKSRVhT_9sqlparser3ast4ExprENCINvMs0_NtCshquuC4dCYVj_10polars_sql9functionsNtB28_18SQLFunctionVisitor23apply_cumulative_windowNCNvB24_11visit_counts_0NCB3B_s0_0E0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvXB8_INtB8_12GenericShuntBN_INtNtBc_6result6ResultNtNtBc_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEB4a_8try_folduNCINvNvB4a_12try_for_each4callNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprINtNtNtBc_3ops12control_flow11ControlFlowB7C_ENcNtB8n_5Break0E0B8n_E0IB8o_B8n_EEB2a_(ptr noalias noundef nonnull sret([144 x i8]) align 16 captures(address) dereferenceable(144) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(40) %1, ptr noalias noundef nonnull %i.a, ptr noalias noundef nonnull align 8 dereferenceable(72) %i.d), !dbg !24988, !noalias !24987
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 112, !dbg !24989
  %i.f = load i64, ptr %i.e, align 16, !dbg !24989, !range !1047, !noalias !24984, !noundef !13 ; 3 uses
  %.not.i = icmp eq i64 %i.f, -9223372036854775779, !dbg !24989
  br i1 %.not.i, label %_RINvXNtNtCscgRAwXFJnXP_4core4iter8adaptersINtB3_12GenericShuntINtNtB3_3map3MapINtNtNtB7_5slice4iter4IterNtNtCsaRr8xKSRVhT_9sqlparser3ast4ExprENCINvMs0_NtCshquuC4dCYVj_10polars_sql9functionsNtB2p_18SQLFunctionVisitor23apply_cumulative_windowNCNvB2l_11visit_counts_0NCB3S_s0_0E0EINtNtB7_6result6ResultNtNtB7_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEENtNtNtB5_6traits8iterator8Iterator8try_folduNCINvNvB5X_12try_for_each4callNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprINtNtNtB7_3ops12control_flow11ControlFlowB79_ENcNtB7U_5Break0E0B7U_EB2r_.exit.thread, label %_RINvXNtNtCscgRAwXFJnXP_4core4iter8adaptersINtB3_12GenericShuntINtNtB3_3map3MapINtNtNtB7_5slice4iter4IterNtNtCsaRr8xKSRVhT_9sqlparser3ast4ExprENCINvMs0_NtCshquuC4dCYVj_10polars_sql9functionsNtB2p_18SQLFunctionVisitor23apply_cumulative_windowNCNvB2l_11visit_counts_0NCB3S_s0_0E0EINtNtB7_6result6ResultNtNtB7_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEENtNtNtB5_6traits8iterator8Iterator8try_folduNCINvNvB5X_12try_for_each4callNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprINtNtNtB7_3ops12control_flow11ControlFlowB79_ENcNtB7U_5Break0E0B7U_EB2r_.exit, !dbg !24991

_RINvXNtNtCscgRAwXFJnXP_4core4iter8adaptersINtB3_12GenericShuntINtNtB3_3map3MapINtNtNtB7_5slice4iter4IterNtNtCsaRr8xKSRVhT_9sqlparser3ast4ExprENCINvMs0_NtCshquuC4dCYVj_10polars_sql9functionsNtB2p_18SQLFunctionVisitor23apply_cumulative_windowNCNvB2l_11visit_counts_0NCB3S_s0_0E0EINtNtB7_6result6ResultNtNtB7_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEENtNtNtB5_6traits8iterator8Iterator8try_folduNCINvNvB5X_12try_for_each4callNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprINtNtNtB7_3ops12control_flow11ControlFlowB79_ENcNtB7U_5Break0E0B7U_EB2r_.exit.thread: ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !24992, !noalias !24984
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtB4_3ops12control_flow11ControlFlowNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprEECshquuC4dCYVj_10polars_sql.exit, !dbg !24993

_RINvXNtNtCscgRAwXFJnXP_4core4iter8adaptersINtB3_12GenericShuntINtNtB3_3map3MapINtNtNtB7_5slice4iter4IterNtNtCsaRr8xKSRVhT_9sqlparser3ast4ExprENCINvMs0_NtCshquuC4dCYVj_10polars_sql9functionsNtB2p_18SQLFunctionVisitor23apply_cumulative_windowNCNvB2l_11visit_counts_0NCB3S_s0_0E0EINtNtB7_6result6ResultNtNtB7_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEENtNtNtB5_6traits8iterator8Iterator8try_folduNCINvNvB5X_12try_for_each4callNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprINtNtNtB7_3ops12control_flow11ControlFlowB79_ENcNtB7U_5Break0E0B7U_EB2r_.exit: ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(112) %.sroa.0, ptr noundef nonnull align 16 dereferenceable(112) %i.b, i64 112, i1 false), !dbg !24996, !noalias !24976
  %.sroa.6.0..sroa_idx4 = getelementptr inbounds nuw i8, ptr %i.b, i64 120, !dbg !24996
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6.0..sroa_idx4, i64 24, i1 false), !dbg !24996, !noalias !24976
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !24992, !noalias !24984
  %.not = icmp eq i64 %i.f, -9223372036854775780, !dbg !24997
  br i1 %.not, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtB4_3ops12control_flow11ControlFlowNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprEECshquuC4dCYVj_10polars_sql.exit, label %bb.b, !dbg !24993

bb.b:                                             ; preds = %_RINvXNtNtCscgRAwXFJnXP_4core4iter8adaptersINtB3_12GenericShuntINtNtB3_3map3MapINtNtNtB7_5slice4iter4IterNtNtCsaRr8xKSRVhT_9sqlparser3ast4ExprENCINvMs0_NtCshquuC4dCYVj_10polars_sql9functionsNtB2p_18SQLFunctionVisitor23apply_cumulative_windowNCNvB2l_11visit_counts_0NCB3S_s0_0E0EINtNtB7_6result6ResultNtNtB7_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEENtNtNtB5_6traits8iterator8Iterator8try_folduNCINvNvB5X_12try_for_each4callNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprINtNtNtB7_3ops12control_flow11ControlFlowB79_ENcNtB7U_5Break0E0B7U_EB2r_.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(112) %0, ptr noundef nonnull align 16 dereferenceable(112) %.sroa.0, i64 112, i1 false), !dbg !24998
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 120, !dbg !24999
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6, i64 24, i1 false), !dbg !24998
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtB4_3ops12control_flow11ControlFlowNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprEECshquuC4dCYVj_10polars_sql.exit, !dbg !25001

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtB4_3ops12control_flow11ControlFlowNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprEECshquuC4dCYVj_10polars_sql.exit: ; preds = %_RINvXNtNtCscgRAwXFJnXP_4core4iter8adaptersINtB3_12GenericShuntINtNtB3_3map3MapINtNtNtB7_5slice4iter4IterNtNtCsaRr8xKSRVhT_9sqlparser3ast4ExprENCINvMs0_NtCshquuC4dCYVj_10polars_sql9functionsNtB2p_18SQLFunctionVisitor23apply_cumulative_windowNCNvB2l_11visit_counts_0NCB3S_s0_0E0EINtNtB7_6result6ResultNtNtB7_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEENtNtNtB5_6traits8iterator8Iterator8try_folduNCINvNvB5X_12try_for_each4callNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprINtNtNtB7_3ops12control_flow11ControlFlowB79_ENcNtB7U_5Break0E0B7U_EB2r_.exit, %_RINvXNtNtCscgRAwXFJnXP_4core4iter8adaptersINtB3_12GenericShuntINtNtB3_3map3MapINtNtNtB7_5slice4iter4IterNtNtCsaRr8xKSRVhT_9sqlparser3ast4ExprENCINvMs0_NtCshquuC4dCYVj_10polars_sql9functionsNtB2p_18SQLFunctionVisitor23apply_cumulative_windowNCNvB2l_11visit_counts_0NCB3S_s0_0E0EINtNtB7_6result6ResultNtNtB7_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEENtNtNtB5_6traits8iterator8Iterator8try_folduNCINvNvB5X_12try_for_each4callNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprINtNtNtB7_3ops12control_flow11ControlFlowB79_ENcNtB7U_5Break0E0B7U_EB2r_.exit.thread, %bb.b
  %.sink = phi i64 [ %i.f, %bb.b ], [ -9223372036854775780, %_RINvXNtNtCscgRAwXFJnXP_4core4iter8adaptersINtB3_12GenericShuntINtNtB3_3map3MapINtNtNtB7_5slice4iter4IterNtNtCsaRr8xKSRVhT_9sqlparser3ast4ExprENCINvMs0_NtCshquuC4dCYVj_10polars_sql9functionsNtB2p_18SQLFunctionVisitor23apply_cumulative_windowNCNvB2l_11visit_counts_0NCB3S_s0_0E0EINtNtB7_6result6ResultNtNtB7_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEENtNtNtB5_6traits8iterator8Iterator8try_folduNCINvNvB5X_12try_for_each4callNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprINtNtNtB7_3ops12control_flow11ControlFlowB79_ENcNtB7U_5Break0E0B7U_EB2r_.exit.thread ], [ -9223372036854775780, %_RINvXNtNtCscgRAwXFJnXP_4core4iter8adaptersINtB3_12GenericShuntINtNtB3_3map3MapINtNtNtB7_5slice4iter4IterNtNtCsaRr8xKSRVhT_9sqlparser3ast4ExprENCINvMs0_NtCshquuC4dCYVj_10polars_sql9functionsNtB2p_18SQLFunctionVisitor23apply_cumulative_windowNCNvB2l_11visit_counts_0NCB3S_s0_0E0EINtNtB7_6result6ResultNtNtB7_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEENtNtNtB5_6traits8iterator8Iterator8try_folduNCINvNvB5X_12try_for_each4callNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprINtNtNtB7_3ops12control_flow11ControlFlowB79_ENcNtB7U_5Break0E0B7U_EB2r_.exit ]
  %.sroa.46.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 112, !dbg !25002
  store i64 %.sink, ptr %.sroa.46.0..sroa_idx, align 16, !dbg !25002
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0), !dbg !25003
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6), !dbg !25003
  ret void, !dbg !25004
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @_RNvXNtNtCscgRAwXFJnXP_4core4iter8adaptersINtB2_12GenericShuntINtNtB2_3map3MapINtNtNtB6_5slice4iter4IterNtNtCsaRr8xKSRVhT_9sqlparser3ast4ExprENCINvMs0_NtCshquuC4dCYVj_10polars_sql9functionsNtB2o_18SQLFunctionVisitor23apply_cumulative_windowNCNvB2k_11visit_counts_0NCB3R_s0_0E0EINtNtB6_6result6ResultNtNtB6_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEENtNtNtB4_6traits8iterator8Iterator9size_hintB2q_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(40) %1) unnamed_addr #6 !dbg !25005 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !25006
  %i.b = load ptr, ptr %i.a, align 8, !dbg !25006, !nonnull !13, !align !1076, !noundef !13
  %i.c = load i64, ptr %i.b, align 8, !dbg !25007, !range !14337, !noundef !13
  %.not = icmp eq i64 %i.c, 18, !dbg !25007
  br i1 %.not, label %bb.b, label %bb.c, !dbg !25006

bb.b:                                             ; preds = %bb.a
  %.val = load ptr, ptr %1, align 8, !dbg !25012, !nonnull !13, !noundef !13
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !25012
  %.val1 = load ptr, ptr %i.d, align 8, !dbg !25012, !nonnull !13, !noundef !13
  %i.e = ptrtoint ptr %.val1 to i64, !dbg !25013
  %i.f = ptrtoint ptr %.val to i64, !dbg !25013
  %i.g = sub nuw i64 %i.e, %i.f, !dbg !25013
  %i.h = udiv exact i64 %i.g, 328, !dbg !25013
  br label %bb.c, !dbg !25027

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sink = phi i64 [ %i.h, %bb.b ], [ 0, %bb.a ], !dbg !25028
  store <2 x i64> <i64 0, i64 1>, ptr %0, align 8, !dbg !25028
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !25028
  store i64 %.sink, ptr %i.i, align 8, !dbg !25028
  ret void, !dbg !25029
}

; Function Attrs: nonlazybind optsize uwtable
define void @_RNvXNtNtCscgRAwXFJnXP_4core4iter8adaptersINtB2_12GenericShuntINtNtB2_3map3MapINtNtNtB6_5slice4iter4IterNtNtCsaRr8xKSRVhT_9sqlparser3ast4ExprENCINvMs0_NtCshquuC4dCYVj_10polars_sql9functionsNtB2o_18SQLFunctionVisitor23apply_cumulative_windowNvB2o_7sql_sumNvMNtCsfcROwRM8ZtH_11polars_plan3dslNtNtB46_4expr4Expr7cum_sumE0EINtNtB6_6result6ResultNtNtB6_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEENtNtNtB4_6traits8iterator8Iterator4nextB2q_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([144 x i8]) align 16 captures(none) dereferenceable(144) initializes((112, 120)) %0, ptr noalias noundef align 8 dereferenceable(40) %1) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !25030 {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [144 x i8], align 16              ; 7 uses
  %.sroa.0 = alloca [112 x i8], align 16          ; 4 uses
  %.sroa.6 = alloca [24 x i8], align 8            ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0), !dbg !25031
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6), !dbg !25031
  tail call void @llvm.experimental.noalias.scope.decl(metadata !25032), !dbg !25035
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !25038, !noalias !25040
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !25042
  %i.d = load ptr, ptr %i.c, align 8, !dbg !25042, !alias.scope !25032, !noalias !25043, !nonnull !13, !align !1076, !noundef !13
  call void @_RINvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterNtNtCsaRr8xKSRVhT_9sqlparser3ast4ExprENCINvMs0_NtCshquuC4dCYVj_10polars_sql9functionsNtB28_18SQLFunctionVisitor23apply_cumulative_windowNvB28_7sql_sumNvMNtCsfcROwRM8ZtH_11polars_plan3dslNtNtB3Q_4expr4Expr7cum_sumE0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvXB8_INtB8_12GenericShuntBN_INtNtBc_6result6ResultNtNtBc_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEB4Q_8try_folduNCINvNvB4Q_12try_for_each4callB4n_INtNtNtBc_3ops12control_flow11ControlFlowB4n_ENcNtB8m_5Break0E0B8m_E0IB8n_B8m_EEB2a_(ptr noalias noundef nonnull sret([144 x i8]) align 16 captures(address) dereferenceable(144) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(40) %1, ptr noalias noundef nonnull %i.a, ptr noalias noundef nonnull align 8 dereferenceable(72) %i.d), !dbg !25044, !noalias !25043
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 112, !dbg !25045
  %i.f = load i64, ptr %i.e, align 16, !dbg !25045, !range !1047, !noalias !25040, !noundef !13 ; 3 uses
  %.not.i = icmp eq i64 %i.f, -9223372036854775779, !dbg !25045
  br i1 %.not.i, label %_RINvXNtNtCscgRAwXFJnXP_4core4iter8adaptersINtB3_12GenericShuntINtNtB3_3map3MapINtNtNtB7_5slice4iter4IterNtNtCsaRr8xKSRVhT_9sqlparser3ast4ExprENCINvMs0_NtCshquuC4dCYVj_10polars_sql9functionsNtB2p_18SQLFunctionVisitor23apply_cumulative_windowNvB2p_7sql_sumNvMNtCsfcROwRM8ZtH_11polars_plan3dslNtNtB47_4expr4Expr7cum_sumE0EINtNtB7_6result6ResultNtNtB7_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEENtNtNtB5_6traits8iterator8Iterator8try_folduNCINvNvB6D_12try_for_each4callB4E_INtNtNtB7_3ops12control_flow11ControlFlowB4E_ENcNtB7T_5Break0E0B7T_EB2r_.exit.thread, label %_RINvXNtNtCscgRAwXFJnXP_4core4iter8adaptersINtB3_12GenericShuntINtNtB3_3map3MapINtNtNtB7_5slice4iter4IterNtNtCsaRr8xKSRVhT_9sqlparser3ast4ExprENCINvMs0_NtCshquuC4dCYVj_10polars_sql9functionsNtB2p_18SQLFunctionVisitor23apply_cumulative_windowNvB2p_7sql_sumNvMNtCsfcROwRM8ZtH_11polars_plan3dslNtNtB47_4expr4Expr7cum_sumE0EINtNtB7_6result6ResultNtNtB7_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEENtNtNtB5_6traits8iterator8Iterator8try_folduNCINvNvB6D_12try_for_each4callB4E_INtNtNtB7_3ops12control_flow11ControlFlowB4E_ENcNtB7T_5Break0E0B7T_EB2r_.exit, !dbg !25047

_RINvXNtNtCscgRAwXFJnXP_4core4iter8adaptersINtB3_12GenericShuntINtNtB3_3map3MapINtNtNtB7_5slice4iter4IterNtNtCsaRr8xKSRVhT_9sqlparser3ast4ExprENCINvMs0_NtCshquuC4dCYVj_10polars_sql9functionsNtB2p_18SQLFunctionVisitor23apply_cumulative_windowNvB2p_7sql_sumNvMNtCsfcROwRM8ZtH_11polars_plan3dslNtNtB47_4expr4Expr7cum_sumE0EINtNtB7_6result6ResultNtNtB7_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEENtNtNtB5_6traits8iterator8Iterator8try_folduNCINvNvB6D_12try_for_each4callB4E_INtNtNtB7_3ops12control_flow11ControlFlowB4E_ENcNtB7T_5Break0E0B7T_EB2r_.exit.thread: ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !25048, !noalias !25040
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtB4_3ops12control_flow11ControlFlowNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprEECshquuC4dCYVj_10polars_sql.exit, !dbg !25049

_RINvXNtNtCscgRAwXFJnXP_4core4iter8adaptersINtB3_12GenericShuntINtNtB3_3map3MapINtNtNtB7_5slice4iter4IterNtNtCsaRr8xKSRVhT_9sqlparser3ast4ExprENCINvMs0_NtCshquuC4dCYVj_10polars_sql9functionsNtB2p_18SQLFunctionVisitor23apply_cumulative_windowNvB2p_7sql_sumNvMNtCsfcROwRM8ZtH_11polars_plan3dslNtNtB47_4expr4Expr7cum_sumE0EINtNtB7_6result6ResultNtNtB7_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEENtNtNtB5_6traits8iterator8Iterator8try_folduNCINvNvB6D_12try_for_each4callB4E_INtNtNtB7_3ops12control_flow11ControlFlowB4E_ENcNtB7T_5Break0E0B7T_EB2r_.exit: ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(112) %.sroa.0, ptr noundef nonnull align 16 dereferenceable(112) %i.b, i64 112, i1 false), !dbg !25052, !noalias !25032
  %.sroa.6.0..sroa_idx4 = getelementptr inbounds nuw i8, ptr %i.b, i64 120, !dbg !25052
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6.0..sroa_idx4, i64 24, i1 false), !dbg !25052, !noalias !25032
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !25048, !noalias !25040
  %.not = icmp eq i64 %i.f, -9223372036854775780, !dbg !25053
  br i1 %.not, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtB4_3ops12control_flow11ControlFlowNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprEECshquuC4dCYVj_10polars_sql.exit, label %bb.b, !dbg !25049

bb.b:                                             ; preds = %_RINvXNtNtCscgRAwXFJnXP_4core4iter8adaptersINtB3_12GenericShuntINtNtB3_3map3MapINtNtNtB7_5slice4iter4IterNtNtCsaRr8xKSRVhT_9sqlparser3ast4ExprENCINvMs0_NtCshquuC4dCYVj_10polars_sql9functionsNtB2p_18SQLFunctionVisitor23apply_cumulative_windowNvB2p_7sql_sumNvMNtCsfcROwRM8ZtH_11polars_plan3dslNtNtB47_4expr4Expr7cum_sumE0EINtNtB7_6result6ResultNtNtB7_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEENtNtNtB5_6traits8iterator8Iterator8try_folduNCINvNvB6D_12try_for_each4callB4E_INtNtNtB7_3ops12control_flow11ControlFlowB4E_ENcNtB7T_5Break0E0B7T_EB2r_.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(112) %0, ptr noundef nonnull align 16 dereferenceable(112) %.sroa.0, i64 112, i1 false), !dbg !25054
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 120, !dbg !25055
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6, i64 24, i1 false), !dbg !25054
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtB4_3ops12control_flow11ControlFlowNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprEECshquuC4dCYVj_10polars_sql.exit, !dbg !25057

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtB4_3ops12control_flow11ControlFlowNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprEECshquuC4dCYVj_10polars_sql.exit: ; preds = %_RINvXNtNtCscgRAwXFJnXP_4core4iter8adaptersINtB3_12GenericShuntINtNtB3_3map3MapINtNtNtB7_5slice4iter4IterNtNtCsaRr8xKSRVhT_9sqlparser3ast4ExprENCINvMs0_NtCshquuC4dCYVj_10polars_sql9functionsNtB2p_18SQLFunctionVisitor23apply_cumulative_windowNvB2p_7sql_sumNvMNtCsfcROwRM8ZtH_11polars_plan3dslNtNtB47_4expr4Expr7cum_sumE0EINtNtB7_6result6ResultNtNtB7_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEENtNtNtB5_6traits8iterator8Iterator8try_folduNCINvNvB6D_12try_for_each4callB4E_INtNtNtB7_3ops12control_flow11ControlFlowB4E_ENcNtB7T_5Break0E0B7T_EB2r_.exit, %_RINvXNtNtCscgRAwXFJnXP_4core4iter8adaptersINtB3_12GenericShuntINtNtB3_3map3MapINtNtNtB7_5slice4iter4IterNtNtCsaRr8xKSRVhT_9sqlparser3ast4ExprENCINvMs0_NtCshquuC4dCYVj_10polars_sql9functionsNtB2p_18SQLFunctionVisitor23apply_cumulative_windowNvB2p_7sql_sumNvMNtCsfcROwRM8ZtH_11polars_plan3dslNtNtB47_4expr4Expr7cum_sumE0EINtNtB7_6result6ResultNtNtB7_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEENtNtNtB5_6traits8iterator8Iterator8try_folduNCINvNvB6D_12try_for_each4callB4E_INtNtNtB7_3ops12control_flow11ControlFlowB4E_ENcNtB7T_5Break0E0B7T_EB2r_.exit.thread, %bb.b
  %.sink = phi i64 [ %i.f, %bb.b ], [ -9223372036854775780, %_RINvXNtNtCscgRAwXFJnXP_4core4iter8adaptersINtB3_12GenericShuntINtNtB3_3map3MapINtNtNtB7_5slice4iter4IterNtNtCsaRr8xKSRVhT_9sqlparser3ast4ExprENCINvMs0_NtCshquuC4dCYVj_10polars_sql9functionsNtB2p_18SQLFunctionVisitor23apply_cumulative_windowNvB2p_7sql_sumNvMNtCsfcROwRM8ZtH_11polars_plan3dslNtNtB47_4expr4Expr7cum_sumE0EINtNtB7_6result6ResultNtNtB7_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEENtNtNtB5_6traits8iterator8Iterator8try_folduNCINvNvB6D_12try_for_each4callB4E_INtNtNtB7_3ops12control_flow11ControlFlowB4E_ENcNtB7T_5Break0E0B7T_EB2r_.exit.thread ], [ -9223372036854775780, %_RINvXNtNtCscgRAwXFJnXP_4core4iter8adaptersINtB3_12GenericShuntINtNtB3_3map3MapINtNtNtB7_5slice4iter4IterNtNtCsaRr8xKSRVhT_9sqlparser3ast4ExprENCINvMs0_NtCshquuC4dCYVj_10polars_sql9functionsNtB2p_18SQLFunctionVisitor23apply_cumulative_windowNvB2p_7sql_sumNvMNtCsfcROwRM8ZtH_11polars_plan3dslNtNtB47_4expr4Expr7cum_sumE0EINtNtB7_6result6ResultNtNtB7_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEENtNtNtB5_6traits8iterator8Iterator8try_folduNCINvNvB6D_12try_for_each4callB4E_INtNtNtB7_3ops12control_flow11ControlFlowB4E_ENcNtB7T_5Break0E0B7T_EB2r_.exit ]
  %.sroa.46.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 112, !dbg !25058
  store i64 %.sink, ptr %.sroa.46.0..sroa_idx, align 16, !dbg !25058
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0), !dbg !25059
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6), !dbg !25059
  ret void, !dbg !25060
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @_RNvXNtNtCscgRAwXFJnXP_4core4iter8adaptersINtB2_12GenericShuntINtNtB2_3map3MapINtNtNtB6_5slice4iter4IterNtNtCsaRr8xKSRVhT_9sqlparser3ast4ExprENCINvMs0_NtCshquuC4dCYVj_10polars_sql9functionsNtB2o_18SQLFunctionVisitor23apply_cumulative_windowNvB2o_7sql_sumNvMNtCsfcROwRM8ZtH_11polars_plan3dslNtNtB46_4expr4Expr7cum_sumE0EINtNtB6_6result6ResultNtNtB6_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEENtNtNtB4_6traits8iterator8Iterator9size_hintB2q_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(40) %1) unnamed_addr #6 !dbg !25061 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !25062
  %i.b = load ptr, ptr %i.a, align 8, !dbg !25062, !nonnull !13, !align !1076, !noundef !13
  %i.c = load i64, ptr %i.b, align 8, !dbg !25063, !range !14337, !noundef !13
  %.not = icmp eq i64 %i.c, 18, !dbg !25063
  br i1 %.not, label %bb.b, label %bb.c, !dbg !25062

bb.b:                                             ; preds = %bb.a
  %.val = load ptr, ptr %1, align 8, !dbg !25068, !nonnull !13, !noundef !13
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !25068
  %.val1 = load ptr, ptr %i.d, align 8, !dbg !25068, !nonnull !13, !noundef !13
  %i.e = ptrtoint ptr %.val1 to i64, !dbg !25069
  %i.f = ptrtoint ptr %.val to i64, !dbg !25069
  %i.g = sub nuw i64 %i.e, %i.f, !dbg !25069
  %i.h = udiv exact i64 %i.g, 328, !dbg !25069
  br label %bb.c, !dbg !25076

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sink = phi i64 [ %i.h, %bb.b ], [ 0, %bb.a ], !dbg !25077
  store <2 x i64> <i64 0, i64 1>, ptr %0, align 8, !dbg !25077
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !25077
  store i64 %.sink, ptr %i.i, align 8, !dbg !25077
  ret void, !dbg !25078
}

; Function Attrs: nonlazybind optsize uwtable
define void @_RNvXNtNtCscgRAwXFJnXP_4core4iter8adaptersINtB2_12GenericShuntINtNtB2_3map3MapINtNtNtB6_5slice4iter4IterNtNtCsaRr8xKSRVhT_9sqlparser3ast4ExprENCINvMs0_NtCshquuC4dCYVj_10polars_sql9functionsNtB2o_18SQLFunctionVisitor23apply_cumulative_windowNvMNtNtCsfcROwRM8ZtH_11polars_plan3dsl10statisticsNtNtB3U_4expr4Expr3maxNvMB3U_B4D_7cum_maxE0EINtNtB6_6result6ResultNtNtB6_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEENtNtNtB4_6traits8iterator8Iterator4nextB2q_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([144 x i8]) align 16 captures(none) dereferenceable(144) initializes((112, 120)) %0, ptr noalias noundef align 8 dereferenceable(40) %1) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !25079 {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [144 x i8], align 16              ; 7 uses
  %.sroa.0 = alloca [112 x i8], align 16          ; 4 uses
  %.sroa.6 = alloca [24 x i8], align 8            ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0), !dbg !25080
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6), !dbg !25080
  tail call void @llvm.experimental.noalias.scope.decl(metadata !25081), !dbg !25084
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !25087, !noalias !25089
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !25091
  %i.d = load ptr, ptr %i.c, align 8, !dbg !25091, !alias.scope !25081, !noalias !25092, !nonnull !13, !align !1076, !noundef !13
  call void @_RINvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterNtNtCsaRr8xKSRVhT_9sqlparser3ast4ExprENCINvMs0_NtCshquuC4dCYVj_10polars_sql9functionsNtB28_18SQLFunctionVisitor23apply_cumulative_windowNvMNtNtCsfcROwRM8ZtH_11polars_plan3dsl10statisticsNtNtB3E_4expr4Expr3maxNvMB3E_B4n_7cum_maxE0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvXB8_INtB8_12GenericShuntBN_INtNtBc_6result6ResultNtNtBc_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEB55_8try_folduNCINvNvB55_12try_for_each4callB4n_INtNtNtBc_3ops12control_flow11ControlFlowB4n_ENcNtB8B_5Break0E0B8B_E0IB8C_B8B_EEB2a_(ptr noalias noundef nonnull sret([144 x i8]) align 16 captures(address) dereferenceable(144) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(40) %1, ptr noalias noundef nonnull %i.a, ptr noalias noundef nonnull align 8 dereferenceable(72) %i.d), !dbg !25093, !noalias !25092
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 112, !dbg !25094
  %i.f = load i64, ptr %i.e, align 16, !dbg !25094, !range !1047, !noalias !25089, !noundef !13 ; 3 uses
  %.not.i = icmp eq i64 %i.f, -9223372036854775779, !dbg !25094
  br i1 %.not.i, label %_RINvXNtNtCscgRAwXFJnXP_4core4iter8adaptersINtB3_12GenericShuntINtNtB3_3map3MapINtNtNtB7_5slice4iter4IterNtNtCsaRr8xKSRVhT_9sqlparser3ast4ExprENCINvMs0_NtCshquuC4dCYVj_10polars_sql9functionsNtB2p_18SQLFunctionVisitor23apply_cumulative_windowNvMNtNtCsfcROwRM8ZtH_11polars_plan3dsl10statisticsNtNtB3V_4expr4Expr3maxNvMB3V_B4E_7cum_maxE0EINtNtB7_6result6ResultNtNtB7_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEENtNtNtB5_6traits8iterator8Iterator8try_folduNCINvNvB6S_12try_for_each4callB4E_INtNtNtB7_3ops12control_flow11ControlFlowB4E_ENcNtB88_5Break0E0B88_EB2r_.exit.thread, label %_RINvXNtNtCscgRAwXFJnXP_4core4iter8adaptersINtB3_12GenericShuntINtNtB3_3map3MapINtNtNtB7_5slice4iter4IterNtNtCsaRr8xKSRVhT_9sqlparser3ast4ExprENCINvMs0_NtCshquuC4dCYVj_10polars_sql9functionsNtB2p_18SQLFunctionVisitor23apply_cumulative_windowNvMNtNtCsfcROwRM8ZtH_11polars_plan3dsl10statisticsNtNtB3V_4expr4Expr3maxNvMB3V_B4E_7cum_maxE0EINtNtB7_6result6ResultNtNtB7_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEENtNtNtB5_6traits8iterator8Iterator8try_folduNCINvNvB6S_12try_for_each4callB4E_INtNtNtB7_3ops12control_flow11ControlFlowB4E_ENcNtB88_5Break0E0B88_EB2r_.exit, !dbg !25096

_RINvXNtNtCscgRAwXFJnXP_4core4iter8adaptersINtB3_12GenericShuntINtNtB3_3map3MapINtNtNtB7_5slice4iter4IterNtNtCsaRr8xKSRVhT_9sqlparser3ast4ExprENCINvMs0_NtCshquuC4dCYVj_10polars_sql9functionsNtB2p_18SQLFunctionVisitor23apply_cumulative_windowNvMNtNtCsfcROwRM8ZtH_11polars_plan3dsl10statisticsNtNtB3V_4expr4Expr3maxNvMB3V_B4E_7cum_maxE0EINtNtB7_6result6ResultNtNtB7_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEENtNtNtB5_6traits8iterator8Iterator8try_folduNCINvNvB6S_12try_for_each4callB4E_INtNtNtB7_3ops12control_flow11ControlFlowB4E_ENcNtB88_5Break0E0B88_EB2r_.exit.thread: ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !25097, !noalias !25089
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtB4_3ops12control_flow11ControlFlowNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprEECshquuC4dCYVj_10polars_sql.exit, !dbg !25098

_RINvXNtNtCscgRAwXFJnXP_4core4iter8adaptersINtB3_12GenericShuntINtNtB3_3map3MapINtNtNtB7_5slice4iter4IterNtNtCsaRr8xKSRVhT_9sqlparser3ast4ExprENCINvMs0_NtCshquuC4dCYVj_10polars_sql9functionsNtB2p_18SQLFunctionVisitor23apply_cumulative_windowNvMNtNtCsfcROwRM8ZtH_11polars_plan3dsl10statisticsNtNtB3V_4expr4Expr3maxNvMB3V_B4E_7cum_maxE0EINtNtB7_6result6ResultNtNtB7_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEENtNtNtB5_6traits8iterator8Iterator8try_folduNCINvNvB6S_12try_for_each4callB4E_INtNtNtB7_3ops12control_flow11ControlFlowB4E_ENcNtB88_5Break0E0B88_EB2r_.exit: ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(112) %.sroa.0, ptr noundef nonnull align 16 dereferenceable(112) %i.b, i64 112, i1 false), !dbg !25101, !noalias !25081
  %.sroa.6.0..sroa_idx4 = getelementptr inbounds nuw i8, ptr %i.b, i64 120, !dbg !25101
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6.0..sroa_idx4, i64 24, i1 false), !dbg !25101, !noalias !25081
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !25097, !noalias !25089
  %.not = icmp eq i64 %i.f, -9223372036854775780, !dbg !25102
  br i1 %.not, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtB4_3ops12control_flow11ControlFlowNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprEECshquuC4dCYVj_10polars_sql.exit, label %bb.b, !dbg !25098

bb.b:                                             ; preds = %_RINvXNtNtCscgRAwXFJnXP_4core4iter8adaptersINtB3_12GenericShuntINtNtB3_3map3MapINtNtNtB7_5slice4iter4IterNtNtCsaRr8xKSRVhT_9sqlparser3ast4ExprENCINvMs0_NtCshquuC4dCYVj_10polars_sql9functionsNtB2p_18SQLFunctionVisitor23apply_cumulative_windowNvMNtNtCsfcROwRM8ZtH_11polars_plan3dsl10statisticsNtNtB3V_4expr4Expr3maxNvMB3V_B4E_7cum_maxE0EINtNtB7_6result6ResultNtNtB7_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEENtNtNtB5_6traits8iterator8Iterator8try_folduNCINvNvB6S_12try_for_each4callB4E_INtNtNtB7_3ops12control_flow11ControlFlowB4E_ENcNtB88_5Break0E0B88_EB2r_.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(112) %0, ptr noundef nonnull align 16 dereferenceable(112) %.sroa.0, i64 112, i1 false), !dbg !25103
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 120, !dbg !25104
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6, i64 24, i1 false), !dbg !25103
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtB4_3ops12control_flow11ControlFlowNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprEECshquuC4dCYVj_10polars_sql.exit, !dbg !25106

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtB4_3ops12control_flow11ControlFlowNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprEECshquuC4dCYVj_10polars_sql.exit: ; preds = %_RINvXNtNtCscgRAwXFJnXP_4core4iter8adaptersINtB3_12GenericShuntINtNtB3_3map3MapINtNtNtB7_5slice4iter4IterNtNtCsaRr8xKSRVhT_9sqlparser3ast4ExprENCINvMs0_NtCshquuC4dCYVj_10polars_sql9functionsNtB2p_18SQLFunctionVisitor23apply_cumulative_windowNvMNtNtCsfcROwRM8ZtH_11polars_plan3dsl10statisticsNtNtB3V_4expr4Expr3maxNvMB3V_B4E_7cum_maxE0EINtNtB7_6result6ResultNtNtB7_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEENtNtNtB5_6traits8iterator8Iterator8try_folduNCINvNvB6S_12try_for_each4callB4E_INtNtNtB7_3ops12control_flow11ControlFlowB4E_ENcNtB88_5Break0E0B88_EB2r_.exit, %_RINvXNtNtCscgRAwXFJnXP_4core4iter8adaptersINtB3_12GenericShuntINtNtB3_3map3MapINtNtNtB7_5slice4iter4IterNtNtCsaRr8xKSRVhT_9sqlparser3ast4ExprENCINvMs0_NtCshquuC4dCYVj_10polars_sql9functionsNtB2p_18SQLFunctionVisitor23apply_cumulative_windowNvMNtNtCsfcROwRM8ZtH_11polars_plan3dsl10statisticsNtNtB3V_4expr4Expr3maxNvMB3V_B4E_7cum_maxE0EINtNtB7_6result6ResultNtNtB7_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEENtNtNtB5_6traits8iterator8Iterator8try_folduNCINvNvB6S_12try_for_each4callB4E_INtNtNtB7_3ops12control_flow11ControlFlowB4E_ENcNtB88_5Break0E0B88_EB2r_.exit.thread, %bb.b
  %.sink = phi i64 [ %i.f, %bb.b ], [ -9223372036854775780, %_RINvXNtNtCscgRAwXFJnXP_4core4iter8adaptersINtB3_12GenericShuntINtNtB3_3map3MapINtNtNtB7_5slice4iter4IterNtNtCsaRr8xKSRVhT_9sqlparser3ast4ExprENCINvMs0_NtCshquuC4dCYVj_10polars_sql9functionsNtB2p_18SQLFunctionVisitor23apply_cumulative_windowNvMNtNtCsfcROwRM8ZtH_11polars_plan3dsl10statisticsNtNtB3V_4expr4Expr3maxNvMB3V_B4E_7cum_maxE0EINtNtB7_6result6ResultNtNtB7_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEENtNtNtB5_6traits8iterator8Iterator8try_folduNCINvNvB6S_12try_for_each4callB4E_INtNtNtB7_3ops12control_flow11ControlFlowB4E_ENcNtB88_5Break0E0B88_EB2r_.exit.thread ], [ -9223372036854775780, %_RINvXNtNtCscgRAwXFJnXP_4core4iter8adaptersINtB3_12GenericShuntINtNtB3_3map3MapINtNtNtB7_5slice4iter4IterNtNtCsaRr8xKSRVhT_9sqlparser3ast4ExprENCINvMs0_NtCshquuC4dCYVj_10polars_sql9functionsNtB2p_18SQLFunctionVisitor23apply_cumulative_windowNvMNtNtCsfcROwRM8ZtH_11polars_plan3dsl10statisticsNtNtB3V_4expr4Expr3maxNvMB3V_B4E_7cum_maxE0EINtNtB7_6result6ResultNtNtB7_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEENtNtNtB5_6traits8iterator8Iterator8try_folduNCINvNvB6S_12try_for_each4callB4E_INtNtNtB7_3ops12control_flow11ControlFlowB4E_ENcNtB88_5Break0E0B88_EB2r_.exit ]
  %.sroa.46.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 112, !dbg !25107
  store i64 %.sink, ptr %.sroa.46.0..sroa_idx, align 16, !dbg !25107
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0), !dbg !25108
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6), !dbg !25108
  ret void, !dbg !25109
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @_RNvXNtNtCscgRAwXFJnXP_4core4iter8adaptersINtB2_12GenericShuntINtNtB2_3map3MapINtNtNtB6_5slice4iter4IterNtNtCsaRr8xKSRVhT_9sqlparser3ast4ExprENCINvMs0_NtCshquuC4dCYVj_10polars_sql9functionsNtB2o_18SQLFunctionVisitor23apply_cumulative_windowNvMNtNtCsfcROwRM8ZtH_11polars_plan3dsl10statisticsNtNtB3U_4expr4Expr3maxNvMB3U_B4D_7cum_maxE0EINtNtB6_6result6ResultNtNtB6_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEENtNtNtB4_6traits8iterator8Iterator9size_hintB2q_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(40) %1) unnamed_addr #6 !dbg !25110 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !25111
  %i.b = load ptr, ptr %i.a, align 8, !dbg !25111, !nonnull !13, !align !1076, !noundef !13
  %i.c = load i64, ptr %i.b, align 8, !dbg !25112, !range !14337, !noundef !13
  %.not = icmp eq i64 %i.c, 18, !dbg !25112
  br i1 %.not, label %bb.b, label %bb.c, !dbg !25111

bb.b:                                             ; preds = %bb.a
  %.val = load ptr, ptr %1, align 8, !dbg !25117, !nonnull !13, !noundef !13
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !25117
  %.val1 = load ptr, ptr %i.d, align 8, !dbg !25117, !nonnull !13, !noundef !13
  %i.e = ptrtoint ptr %.val1 to i64, !dbg !25118
  %i.f = ptrtoint ptr %.val to i64, !dbg !25118
  %i.g = sub nuw i64 %i.e, %i.f, !dbg !25118
  %i.h = udiv exact i64 %i.g, 328, !dbg !25118
  br label %bb.c, !dbg !25125

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sink = phi i64 [ %i.h, %bb.b ], [ 0, %bb.a ], !dbg !25126
  store <2 x i64> <i64 0, i64 1>, ptr %0, align 8, !dbg !25126
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !25126
  store i64 %.sink, ptr %i.i, align 8, !dbg !25126
  ret void, !dbg !25127
}

; Function Attrs: nonlazybind optsize uwtable
define void @_RNvXNtNtCscgRAwXFJnXP_4core4iter8adaptersINtB2_12GenericShuntINtNtB2_3map3MapINtNtNtB6_5slice4iter4IterNtNtCsaRr8xKSRVhT_9sqlparser3ast4ExprENCINvMs0_NtCshquuC4dCYVj_10polars_sql9functionsNtB2o_18SQLFunctionVisitor23apply_cumulative_windowNvMNtNtCsfcROwRM8ZtH_11polars_plan3dsl10statisticsNtNtB3U_4expr4Expr3minNvMB3U_B4D_7cum_minE0EINtNtB6_6result6ResultNtNtB6_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEENtNtNtB4_6traits8iterator8Iterator4nextB2q_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([144 x i8]) align 16 captures(none) dereferenceable(144) initializes((112, 120)) %0, ptr noalias noundef align 8 dereferenceable(40) %1) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !25128 {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [144 x i8], align 16              ; 7 uses
  %.sroa.0 = alloca [112 x i8], align 16          ; 4 uses
  %.sroa.6 = alloca [24 x i8], align 8            ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0), !dbg !25129
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6), !dbg !25129
  tail call void @llvm.experimental.noalias.scope.decl(metadata !25130), !dbg !25133
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !25136, !noalias !25138
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !25140
  %i.d = load ptr, ptr %i.c, align 8, !dbg !25140, !alias.scope !25130, !noalias !25141, !nonnull !13, !align !1076, !noundef !13
  call void @_RINvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterNtNtCsaRr8xKSRVhT_9sqlparser3ast4ExprENCINvMs0_NtCshquuC4dCYVj_10polars_sql9functionsNtB28_18SQLFunctionVisitor23apply_cumulative_windowNvMNtNtCsfcROwRM8ZtH_11polars_plan3dsl10statisticsNtNtB3E_4expr4Expr3minNvMB3E_B4n_7cum_minE0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvXB8_INtB8_12GenericShuntBN_INtNtBc_6result6ResultNtNtBc_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEB55_8try_folduNCINvNvB55_12try_for_each4callB4n_INtNtNtBc_3ops12control_flow11ControlFlowB4n_ENcNtB8B_5Break0E0B8B_E0IB8C_B8B_EEB2a_(ptr noalias noundef nonnull sret([144 x i8]) align 16 captures(address) dereferenceable(144) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(40) %1, ptr noalias noundef nonnull %i.a, ptr noalias noundef nonnull align 8 dereferenceable(72) %i.d), !dbg !25142, !noalias !25141
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 112, !dbg !25143
  %i.f = load i64, ptr %i.e, align 16, !dbg !25143, !range !1047, !noalias !25138, !noundef !13 ; 3 uses
  %.not.i = icmp eq i64 %i.f, -9223372036854775779, !dbg !25143
  br i1 %.not.i, label %_RINvXNtNtCscgRAwXFJnXP_4core4iter8adaptersINtB3_12GenericShuntINtNtB3_3map3MapINtNtNtB7_5slice4iter4IterNtNtCsaRr8xKSRVhT_9sqlparser3ast4ExprENCINvMs0_NtCshquuC4dCYVj_10polars_sql9functionsNtB2p_18SQLFunctionVisitor23apply_cumulative_windowNvMNtNtCsfcROwRM8ZtH_11polars_plan3dsl10statisticsNtNtB3V_4expr4Expr3minNvMB3V_B4E_7cum_minE0EINtNtB7_6result6ResultNtNtB7_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEENtNtNtB5_6traits8iterator8Iterator8try_folduNCINvNvB6S_12try_for_each4callB4E_INtNtNtB7_3ops12control_flow11ControlFlowB4E_ENcNtB88_5Break0E0B88_EB2r_.exit.thread, label %_RINvXNtNtCscgRAwXFJnXP_4core4iter8adaptersINtB3_12GenericShuntINtNtB3_3map3MapINtNtNtB7_5slice4iter4IterNtNtCsaRr8xKSRVhT_9sqlparser3ast4ExprENCINvMs0_NtCshquuC4dCYVj_10polars_sql9functionsNtB2p_18SQLFunctionVisitor23apply_cumulative_windowNvMNtNtCsfcROwRM8ZtH_11polars_plan3dsl10statisticsNtNtB3V_4expr4Expr3minNvMB3V_B4E_7cum_minE0EINtNtB7_6result6ResultNtNtB7_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEENtNtNtB5_6traits8iterator8Iterator8try_folduNCINvNvB6S_12try_for_each4callB4E_INtNtNtB7_3ops12control_flow11ControlFlowB4E_ENcNtB88_5Break0E0B88_EB2r_.exit, !dbg !25145

_RINvXNtNtCscgRAwXFJnXP_4core4iter8adaptersINtB3_12GenericShuntINtNtB3_3map3MapINtNtNtB7_5slice4iter4IterNtNtCsaRr8xKSRVhT_9sqlparser3ast4ExprENCINvMs0_NtCshquuC4dCYVj_10polars_sql9functionsNtB2p_18SQLFunctionVisitor23apply_cumulative_windowNvMNtNtCsfcROwRM8ZtH_11polars_plan3dsl10statisticsNtNtB3V_4expr4Expr3minNvMB3V_B4E_7cum_minE0EINtNtB7_6result6ResultNtNtB7_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEENtNtNtB5_6traits8iterator8Iterator8try_folduNCINvNvB6S_12try_for_each4callB4E_INtNtNtB7_3ops12control_flow11ControlFlowB4E_ENcNtB88_5Break0E0B88_EB2r_.exit.thread: ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !25146, !noalias !25138
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtB4_3ops12control_flow11ControlFlowNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprEECshquuC4dCYVj_10polars_sql.exit, !dbg !25147

_RINvXNtNtCscgRAwXFJnXP_4core4iter8adaptersINtB3_12GenericShuntINtNtB3_3map3MapINtNtNtB7_5slice4iter4IterNtNtCsaRr8xKSRVhT_9sqlparser3ast4ExprENCINvMs0_NtCshquuC4dCYVj_10polars_sql9functionsNtB2p_18SQLFunctionVisitor23apply_cumulative_windowNvMNtNtCsfcROwRM8ZtH_11polars_plan3dsl10statisticsNtNtB3V_4expr4Expr3minNvMB3V_B4E_7cum_minE0EINtNtB7_6result6ResultNtNtB7_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEENtNtNtB5_6traits8iterator8Iterator8try_folduNCINvNvB6S_12try_for_each4callB4E_INtNtNtB7_3ops12control_flow11ControlFlowB4E_ENcNtB88_5Break0E0B88_EB2r_.exit: ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(112) %.sroa.0, ptr noundef nonnull align 16 dereferenceable(112) %i.b, i64 112, i1 false), !dbg !25150, !noalias !25130
  %.sroa.6.0..sroa_idx4 = getelementptr inbounds nuw i8, ptr %i.b, i64 120, !dbg !25150
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6.0..sroa_idx4, i64 24, i1 false), !dbg !25150, !noalias !25130
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !25146, !noalias !25138
  %.not = icmp eq i64 %i.f, -9223372036854775780, !dbg !25151
  br i1 %.not, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtB4_3ops12control_flow11ControlFlowNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprEECshquuC4dCYVj_10polars_sql.exit, label %bb.b, !dbg !25147

bb.b:                                             ; preds = %_RINvXNtNtCscgRAwXFJnXP_4core4iter8adaptersINtB3_12GenericShuntINtNtB3_3map3MapINtNtNtB7_5slice4iter4IterNtNtCsaRr8xKSRVhT_9sqlparser3ast4ExprENCINvMs0_NtCshquuC4dCYVj_10polars_sql9functionsNtB2p_18SQLFunctionVisitor23apply_cumulative_windowNvMNtNtCsfcROwRM8ZtH_11polars_plan3dsl10statisticsNtNtB3V_4expr4Expr3minNvMB3V_B4E_7cum_minE0EINtNtB7_6result6ResultNtNtB7_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEENtNtNtB5_6traits8iterator8Iterator8try_folduNCINvNvB6S_12try_for_each4callB4E_INtNtNtB7_3ops12control_flow11ControlFlowB4E_ENcNtB88_5Break0E0B88_EB2r_.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(112) %0, ptr noundef nonnull align 16 dereferenceable(112) %.sroa.0, i64 112, i1 false), !dbg !25152
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 120, !dbg !25153
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6, i64 24, i1 false), !dbg !25152
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtB4_3ops12control_flow11ControlFlowNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprEECshquuC4dCYVj_10polars_sql.exit, !dbg !25155

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtB4_3ops12control_flow11ControlFlowNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprEECshquuC4dCYVj_10polars_sql.exit: ; preds = %_RINvXNtNtCscgRAwXFJnXP_4core4iter8adaptersINtB3_12GenericShuntINtNtB3_3map3MapINtNtNtB7_5slice4iter4IterNtNtCsaRr8xKSRVhT_9sqlparser3ast4ExprENCINvMs0_NtCshquuC4dCYVj_10polars_sql9functionsNtB2p_18SQLFunctionVisitor23apply_cumulative_windowNvMNtNtCsfcROwRM8ZtH_11polars_plan3dsl10statisticsNtNtB3V_4expr4Expr3minNvMB3V_B4E_7cum_minE0EINtNtB7_6result6ResultNtNtB7_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEENtNtNtB5_6traits8iterator8Iterator8try_folduNCINvNvB6S_12try_for_each4callB4E_INtNtNtB7_3ops12control_flow11ControlFlowB4E_ENcNtB88_5Break0E0B88_EB2r_.exit, %_RINvXNtNtCscgRAwXFJnXP_4core4iter8adaptersINtB3_12GenericShuntINtNtB3_3map3MapINtNtNtB7_5slice4iter4IterNtNtCsaRr8xKSRVhT_9sqlparser3ast4ExprENCINvMs0_NtCshquuC4dCYVj_10polars_sql9functionsNtB2p_18SQLFunctionVisitor23apply_cumulative_windowNvMNtNtCsfcROwRM8ZtH_11polars_plan3dsl10statisticsNtNtB3V_4expr4Expr3minNvMB3V_B4E_7cum_minE0EINtNtB7_6result6ResultNtNtB7_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEENtNtNtB5_6traits8iterator8Iterator8try_folduNCINvNvB6S_12try_for_each4callB4E_INtNtNtB7_3ops12control_flow11ControlFlowB4E_ENcNtB88_5Break0E0B88_EB2r_.exit.thread, %bb.b
  %.sink = phi i64 [ %i.f, %bb.b ], [ -9223372036854775780, %_RINvXNtNtCscgRAwXFJnXP_4core4iter8adaptersINtB3_12GenericShuntINtNtB3_3map3MapINtNtNtB7_5slice4iter4IterNtNtCsaRr8xKSRVhT_9sqlparser3ast4ExprENCINvMs0_NtCshquuC4dCYVj_10polars_sql9functionsNtB2p_18SQLFunctionVisitor23apply_cumulative_windowNvMNtNtCsfcROwRM8ZtH_11polars_plan3dsl10statisticsNtNtB3V_4expr4Expr3minNvMB3V_B4E_7cum_minE0EINtNtB7_6result6ResultNtNtB7_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEENtNtNtB5_6traits8iterator8Iterator8try_folduNCINvNvB6S_12try_for_each4callB4E_INtNtNtB7_3ops12control_flow11ControlFlowB4E_ENcNtB88_5Break0E0B88_EB2r_.exit.thread ], [ -9223372036854775780, %_RINvXNtNtCscgRAwXFJnXP_4core4iter8adaptersINtB3_12GenericShuntINtNtB3_3map3MapINtNtNtB7_5slice4iter4IterNtNtCsaRr8xKSRVhT_9sqlparser3ast4ExprENCINvMs0_NtCshquuC4dCYVj_10polars_sql9functionsNtB2p_18SQLFunctionVisitor23apply_cumulative_windowNvMNtNtCsfcROwRM8ZtH_11polars_plan3dsl10statisticsNtNtB3V_4expr4Expr3minNvMB3V_B4E_7cum_minE0EINtNtB7_6result6ResultNtNtB7_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEENtNtNtB5_6traits8iterator8Iterator8try_folduNCINvNvB6S_12try_for_each4callB4E_INtNtNtB7_3ops12control_flow11ControlFlowB4E_ENcNtB88_5Break0E0B88_EB2r_.exit ]
  %.sroa.46.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 112, !dbg !25156
  store i64 %.sink, ptr %.sroa.46.0..sroa_idx, align 16, !dbg !25156
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0), !dbg !25157
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6), !dbg !25157
  ret void, !dbg !25158
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @_RNvXNtNtCscgRAwXFJnXP_4core4iter8adaptersINtB2_12GenericShuntINtNtB2_3map3MapINtNtNtB6_5slice4iter4IterNtNtCsaRr8xKSRVhT_9sqlparser3ast4ExprENCINvMs0_NtCshquuC4dCYVj_10polars_sql9functionsNtB2o_18SQLFunctionVisitor23apply_cumulative_windowNvMNtNtCsfcROwRM8ZtH_11polars_plan3dsl10statisticsNtNtB3U_4expr4Expr3minNvMB3U_B4D_7cum_minE0EINtNtB6_6result6ResultNtNtB6_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEENtNtNtB4_6traits8iterator8Iterator9size_hintB2q_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(40) %1) unnamed_addr #6 !dbg !25159 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !25160
  %i.b = load ptr, ptr %i.a, align 8, !dbg !25160, !nonnull !13, !align !1076, !noundef !13
  %i.c = load i64, ptr %i.b, align 8, !dbg !25161, !range !14337, !noundef !13
  %.not = icmp eq i64 %i.c, 18, !dbg !25161
  br i1 %.not, label %bb.b, label %bb.c, !dbg !25160

bb.b:                                             ; preds = %bb.a
  %.val = load ptr, ptr %1, align 8, !dbg !25166, !nonnull !13, !noundef !13
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !25166
  %.val1 = load ptr, ptr %i.d, align 8, !dbg !25166, !nonnull !13, !noundef !13
  %i.e = ptrtoint ptr %.val1 to i64, !dbg !25167
  %i.f = ptrtoint ptr %.val to i64, !dbg !25167
  %i.g = sub nuw i64 %i.e, %i.f, !dbg !25167
  %i.h = udiv exact i64 %i.g, 328, !dbg !25167
  br label %bb.c, !dbg !25174

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sink = phi i64 [ %i.h, %bb.b ], [ 0, %bb.a ], !dbg !25175
  store <2 x i64> <i64 0, i64 1>, ptr %0, align 8, !dbg !25175
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !25175
  store i64 %.sink, ptr %i.i, align 8, !dbg !25175
  ret void, !dbg !25176
}

; Function Attrs: nonlazybind optsize uwtable
define void @_RNvXNtNtCscgRAwXFJnXP_4core4iter8adaptersINtB2_12GenericShuntINtNtB2_3map3MapINtNtNtB6_5slice4iter4IterNtNtCsaRr8xKSRVhT_9sqlparser3ast4ExprENCINvMs0_NtCshquuC4dCYVj_10polars_sql9functionsNtB2o_18SQLFunctionVisitor23apply_cumulative_windowNvMNtNtCsfcROwRM8ZtH_11polars_plan3dsl10statisticsNtNtB3U_4expr4Expr3sumNvMB3U_B4D_7cum_sumE0EINtNtB6_6result6ResultNtNtB6_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEENtNtNtB4_6traits8iterator8Iterator4nextB2q_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([144 x i8]) align 16 captures(none) dereferenceable(144) initializes((112, 120)) %0, ptr noalias noundef align 8 dereferenceable(40) %1) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !25177 {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [144 x i8], align 16              ; 7 uses
  %.sroa.0 = alloca [112 x i8], align 16          ; 4 uses
  %.sroa.6 = alloca [24 x i8], align 8            ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0), !dbg !25178
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6), !dbg !25178
  tail call void @llvm.experimental.noalias.scope.decl(metadata !25179), !dbg !25182
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !25185, !noalias !25187
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !25189
  %i.d = load ptr, ptr %i.c, align 8, !dbg !25189, !alias.scope !25179, !noalias !25190, !nonnull !13, !align !1076, !noundef !13
  call void @_RINvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterNtNtCsaRr8xKSRVhT_9sqlparser3ast4ExprENCINvMs0_NtCshquuC4dCYVj_10polars_sql9functionsNtB28_18SQLFunctionVisitor23apply_cumulative_windowNvMNtNtCsfcROwRM8ZtH_11polars_plan3dsl10statisticsNtNtB3E_4expr4Expr3sumNvMB3E_B4n_7cum_sumE0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvXB8_INtB8_12GenericShuntBN_INtNtBc_6result6ResultNtNtBc_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEB55_8try_folduNCINvNvB55_12try_for_each4callB4n_INtNtNtBc_3ops12control_flow11ControlFlowB4n_ENcNtB8B_5Break0E0B8B_E0IB8C_B8B_EEB2a_(ptr noalias noundef nonnull sret([144 x i8]) align 16 captures(address) dereferenceable(144) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(40) %1, ptr noalias noundef nonnull %i.a, ptr noalias noundef nonnull align 8 dereferenceable(72) %i.d), !dbg !25191, !noalias !25190
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 112, !dbg !25192
  %i.f = load i64, ptr %i.e, align 16, !dbg !25192, !range !1047, !noalias !25187, !noundef !13 ; 3 uses
  %.not.i = icmp eq i64 %i.f, -9223372036854775779, !dbg !25192
  br i1 %.not.i, label %_RINvXNtNtCscgRAwXFJnXP_4core4iter8adaptersINtB3_12GenericShuntINtNtB3_3map3MapINtNtNtB7_5slice4iter4IterNtNtCsaRr8xKSRVhT_9sqlparser3ast4ExprENCINvMs0_NtCshquuC4dCYVj_10polars_sql9functionsNtB2p_18SQLFunctionVisitor23apply_cumulative_windowNvMNtNtCsfcROwRM8ZtH_11polars_plan3dsl10statisticsNtNtB3V_4expr4Expr3sumNvMB3V_B4E_7cum_sumE0EINtNtB7_6result6ResultNtNtB7_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEENtNtNtB5_6traits8iterator8Iterator8try_folduNCINvNvB6S_12try_for_each4callB4E_INtNtNtB7_3ops12control_flow11ControlFlowB4E_ENcNtB88_5Break0E0B88_EB2r_.exit.thread, label %_RINvXNtNtCscgRAwXFJnXP_4core4iter8adaptersINtB3_12GenericShuntINtNtB3_3map3MapINtNtNtB7_5slice4iter4IterNtNtCsaRr8xKSRVhT_9sqlparser3ast4ExprENCINvMs0_NtCshquuC4dCYVj_10polars_sql9functionsNtB2p_18SQLFunctionVisitor23apply_cumulative_windowNvMNtNtCsfcROwRM8ZtH_11polars_plan3dsl10statisticsNtNtB3V_4expr4Expr3sumNvMB3V_B4E_7cum_sumE0EINtNtB7_6result6ResultNtNtB7_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEENtNtNtB5_6traits8iterator8Iterator8try_folduNCINvNvB6S_12try_for_each4callB4E_INtNtNtB7_3ops12control_flow11ControlFlowB4E_ENcNtB88_5Break0E0B88_EB2r_.exit, !dbg !25194

_RINvXNtNtCscgRAwXFJnXP_4core4iter8adaptersINtB3_12GenericShuntINtNtB3_3map3MapINtNtNtB7_5slice4iter4IterNtNtCsaRr8xKSRVhT_9sqlparser3ast4ExprENCINvMs0_NtCshquuC4dCYVj_10polars_sql9functionsNtB2p_18SQLFunctionVisitor23apply_cumulative_windowNvMNtNtCsfcROwRM8ZtH_11polars_plan3dsl10statisticsNtNtB3V_4expr4Expr3sumNvMB3V_B4E_7cum_sumE0EINtNtB7_6result6ResultNtNtB7_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEENtNtNtB5_6traits8iterator8Iterator8try_folduNCINvNvB6S_12try_for_each4callB4E_INtNtNtB7_3ops12control_flow11ControlFlowB4E_ENcNtB88_5Break0E0B88_EB2r_.exit.thread: ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !25195, !noalias !25187
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtB4_3ops12control_flow11ControlFlowNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprEECshquuC4dCYVj_10polars_sql.exit, !dbg !25196

_RINvXNtNtCscgRAwXFJnXP_4core4iter8adaptersINtB3_12GenericShuntINtNtB3_3map3MapINtNtNtB7_5slice4iter4IterNtNtCsaRr8xKSRVhT_9sqlparser3ast4ExprENCINvMs0_NtCshquuC4dCYVj_10polars_sql9functionsNtB2p_18SQLFunctionVisitor23apply_cumulative_windowNvMNtNtCsfcROwRM8ZtH_11polars_plan3dsl10statisticsNtNtB3V_4expr4Expr3sumNvMB3V_B4E_7cum_sumE0EINtNtB7_6result6ResultNtNtB7_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEENtNtNtB5_6traits8iterator8Iterator8try_folduNCINvNvB6S_12try_for_each4callB4E_INtNtNtB7_3ops12control_flow11ControlFlowB4E_ENcNtB88_5Break0E0B88_EB2r_.exit: ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(112) %.sroa.0, ptr noundef nonnull align 16 dereferenceable(112) %i.b, i64 112, i1 false), !dbg !25199, !noalias !25179
  %.sroa.6.0..sroa_idx4 = getelementptr inbounds nuw i8, ptr %i.b, i64 120, !dbg !25199
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6.0..sroa_idx4, i64 24, i1 false), !dbg !25199, !noalias !25179
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !25195, !noalias !25187
  %.not = icmp eq i64 %i.f, -9223372036854775780, !dbg !25200
  br i1 %.not, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtB4_3ops12control_flow11ControlFlowNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprEECshquuC4dCYVj_10polars_sql.exit, label %bb.b, !dbg !25196

bb.b:                                             ; preds = %_RINvXNtNtCscgRAwXFJnXP_4core4iter8adaptersINtB3_12GenericShuntINtNtB3_3map3MapINtNtNtB7_5slice4iter4IterNtNtCsaRr8xKSRVhT_9sqlparser3ast4ExprENCINvMs0_NtCshquuC4dCYVj_10polars_sql9functionsNtB2p_18SQLFunctionVisitor23apply_cumulative_windowNvMNtNtCsfcROwRM8ZtH_11polars_plan3dsl10statisticsNtNtB3V_4expr4Expr3sumNvMB3V_B4E_7cum_sumE0EINtNtB7_6result6ResultNtNtB7_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEENtNtNtB5_6traits8iterator8Iterator8try_folduNCINvNvB6S_12try_for_each4callB4E_INtNtNtB7_3ops12control_flow11ControlFlowB4E_ENcNtB88_5Break0E0B88_EB2r_.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(112) %0, ptr noundef nonnull align 16 dereferenceable(112) %.sroa.0, i64 112, i1 false), !dbg !25201
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 120, !dbg !25202
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6, i64 24, i1 false), !dbg !25201
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtB4_3ops12control_flow11ControlFlowNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprEECshquuC4dCYVj_10polars_sql.exit, !dbg !25204

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtB4_3ops12control_flow11ControlFlowNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprEECshquuC4dCYVj_10polars_sql.exit: ; preds = %_RINvXNtNtCscgRAwXFJnXP_4core4iter8adaptersINtB3_12GenericShuntINtNtB3_3map3MapINtNtNtB7_5slice4iter4IterNtNtCsaRr8xKSRVhT_9sqlparser3ast4ExprENCINvMs0_NtCshquuC4dCYVj_10polars_sql9functionsNtB2p_18SQLFunctionVisitor23apply_cumulative_windowNvMNtNtCsfcROwRM8ZtH_11polars_plan3dsl10statisticsNtNtB3V_4expr4Expr3sumNvMB3V_B4E_7cum_sumE0EINtNtB7_6result6ResultNtNtB7_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEENtNtNtB5_6traits8iterator8Iterator8try_folduNCINvNvB6S_12try_for_each4callB4E_INtNtNtB7_3ops12control_flow11ControlFlowB4E_ENcNtB88_5Break0E0B88_EB2r_.exit, %_RINvXNtNtCscgRAwXFJnXP_4core4iter8adaptersINtB3_12GenericShuntINtNtB3_3map3MapINtNtNtB7_5slice4iter4IterNtNtCsaRr8xKSRVhT_9sqlparser3ast4ExprENCINvMs0_NtCshquuC4dCYVj_10polars_sql9functionsNtB2p_18SQLFunctionVisitor23apply_cumulative_windowNvMNtNtCsfcROwRM8ZtH_11polars_plan3dsl10statisticsNtNtB3V_4expr4Expr3sumNvMB3V_B4E_7cum_sumE0EINtNtB7_6result6ResultNtNtB7_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEENtNtNtB5_6traits8iterator8Iterator8try_folduNCINvNvB6S_12try_for_each4callB4E_INtNtNtB7_3ops12control_flow11ControlFlowB4E_ENcNtB88_5Break0E0B88_EB2r_.exit.thread, %bb.b
  %.sink = phi i64 [ %i.f, %bb.b ], [ -9223372036854775780, %_RINvXNtNtCscgRAwXFJnXP_4core4iter8adaptersINtB3_12GenericShuntINtNtB3_3map3MapINtNtNtB7_5slice4iter4IterNtNtCsaRr8xKSRVhT_9sqlparser3ast4ExprENCINvMs0_NtCshquuC4dCYVj_10polars_sql9functionsNtB2p_18SQLFunctionVisitor23apply_cumulative_windowNvMNtNtCsfcROwRM8ZtH_11polars_plan3dsl10statisticsNtNtB3V_4expr4Expr3sumNvMB3V_B4E_7cum_sumE0EINtNtB7_6result6ResultNtNtB7_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEENtNtNtB5_6traits8iterator8Iterator8try_folduNCINvNvB6S_12try_for_each4callB4E_INtNtNtB7_3ops12control_flow11ControlFlowB4E_ENcNtB88_5Break0E0B88_EB2r_.exit.thread ], [ -9223372036854775780, %_RINvXNtNtCscgRAwXFJnXP_4core4iter8adaptersINtB3_12GenericShuntINtNtB3_3map3MapINtNtNtB7_5slice4iter4IterNtNtCsaRr8xKSRVhT_9sqlparser3ast4ExprENCINvMs0_NtCshquuC4dCYVj_10polars_sql9functionsNtB2p_18SQLFunctionVisitor23apply_cumulative_windowNvMNtNtCsfcROwRM8ZtH_11polars_plan3dsl10statisticsNtNtB3V_4expr4Expr3sumNvMB3V_B4E_7cum_sumE0EINtNtB7_6result6ResultNtNtB7_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEENtNtNtB5_6traits8iterator8Iterator8try_folduNCINvNvB6S_12try_for_each4callB4E_INtNtNtB7_3ops12control_flow11ControlFlowB4E_ENcNtB88_5Break0E0B88_EB2r_.exit ]
  %.sroa.46.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 112, !dbg !25205
  store i64 %.sink, ptr %.sroa.46.0..sroa_idx, align 16, !dbg !25205
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0), !dbg !25206
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6), !dbg !25206
  ret void, !dbg !25207
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @_RNvXNtNtCscgRAwXFJnXP_4core4iter8adaptersINtB2_12GenericShuntINtNtB2_3map3MapINtNtNtB6_5slice4iter4IterNtNtCsaRr8xKSRVhT_9sqlparser3ast4ExprENCINvMs0_NtCshquuC4dCYVj_10polars_sql9functionsNtB2o_18SQLFunctionVisitor23apply_cumulative_windowNvMNtNtCsfcROwRM8ZtH_11polars_plan3dsl10statisticsNtNtB3U_4expr4Expr3sumNvMB3U_B4D_7cum_sumE0EINtNtB6_6result6ResultNtNtB6_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEENtNtNtB4_6traits8iterator8Iterator9size_hintB2q_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(40) %1) unnamed_addr #6 !dbg !25208 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !25209
  %i.b = load ptr, ptr %i.a, align 8, !dbg !25209, !nonnull !13, !align !1076, !noundef !13
  %i.c = load i64, ptr %i.b, align 8, !dbg !25210, !range !14337, !noundef !13
  %.not = icmp eq i64 %i.c, 18, !dbg !25210
  br i1 %.not, label %bb.b, label %bb.c, !dbg !25209

bb.b:                                             ; preds = %bb.a
  %.val = load ptr, ptr %1, align 8, !dbg !25215, !nonnull !13, !noundef !13
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !25215
  %.val1 = load ptr, ptr %i.d, align 8, !dbg !25215, !nonnull !13, !noundef !13
  %i.e = ptrtoint ptr %.val1 to i64, !dbg !25216
  %i.f = ptrtoint ptr %.val to i64, !dbg !25216
  %i.g = sub nuw i64 %i.e, %i.f, !dbg !25216
  %i.h = udiv exact i64 %i.g, 328, !dbg !25216
  br label %bb.c, !dbg !25223

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sink = phi i64 [ %i.h, %bb.b ], [ 0, %bb.a ], !dbg !25224
  store <2 x i64> <i64 0, i64 1>, ptr %0, align 8, !dbg !25224
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !25224
  store i64 %.sink, ptr %i.i, align 8, !dbg !25224
  ret void, !dbg !25225
}

; Function Attrs: nonlazybind optsize uwtable
define void @_RNvXNtNtCscgRAwXFJnXP_4core4iter8adaptersINtB2_12GenericShuntINtNtB2_3map3MapINtNtNtB6_5slice4iter4IterNtNtCsaRr8xKSRVhT_9sqlparser3ast4ExprENCNCINvMs1_NtCshquuC4dCYVj_10polars_sql7contextNtB2q_10SQLContext14process_valuesIBY_IB1e_INtB1F_6ParensINtNtCsgZ49sUHp3tW_5alloc3vec3VecB1D_EEENCNvB2m_13process_query0EE00EINtNtB6_6result6ResultNtNtB6_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEENtNtNtB4_6traits8iterator8Iterator4nextB2s_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 16 captures(none) dereferenceable(48) initializes((0, 1)) %0, ptr noalias noundef align 8 dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !25226 {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [48 x i8], align 16               ; 6 uses
  %.sroa.6 = alloca [47 x i8], align 1            ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6), !dbg !25227
  tail call void @llvm.experimental.noalias.scope.decl(metadata !25228), !dbg !25231
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !25234, !noalias !25236
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24, !dbg !25238
  %i.d = load ptr, ptr %i.c, align 8, !dbg !25238, !alias.scope !25228, !noalias !25239, !nonnull !13, !align !1076, !noundef !13
  call void @_RINvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterNtNtCsaRr8xKSRVhT_9sqlparser3ast4ExprENCNCINvMs1_NtCshquuC4dCYVj_10polars_sql7contextNtB2a_10SQLContext14process_valuesIBO_IBY_INtB1p_6ParensINtNtCsgZ49sUHp3tW_5alloc3vec3VecB1n_EEENCNvB26_13process_query0EE00ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvXB8_INtB8_12GenericShuntBN_INtNtBc_6result6ResultNtNtBc_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEB4L_8try_folduNCINvNvB4L_12try_for_each4callNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9any_value8AnyValueINtNtNtBc_3ops12control_flow11ControlFlowB8d_ENcNtB9d_5Break0E0B9d_E0IB9e_B9d_EEB2c_(ptr noalias noundef nonnull sret([48 x i8]) align 16 captures(address) dereferenceable(48) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(32) %1, ptr noalias noundef nonnull %i.a, ptr noalias noundef nonnull align 8 dereferenceable(72) %i.d), !dbg !25240, !noalias !25239
  %i.e = load i8, ptr %i.b, align 16, !dbg !25241, !range !17556, !noalias !25236, !noundef !13 ; 3 uses
  %.not.i = icmp eq i8 %i.e, 36, !dbg !25241
  br i1 %.not.i, label %_RINvXNtNtCscgRAwXFJnXP_4core4iter8adaptersINtB3_12GenericShuntINtNtB3_3map3MapINtNtNtB7_5slice4iter4IterNtNtCsaRr8xKSRVhT_9sqlparser3ast4ExprENCNCINvMs1_NtCshquuC4dCYVj_10polars_sql7contextNtB2r_10SQLContext14process_valuesIBZ_IB1f_INtB1G_6ParensINtNtCsgZ49sUHp3tW_5alloc3vec3VecB1E_EEENCNvB2n_13process_query0EE00EINtNtB7_6result6ResultNtNtB7_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEENtNtNtB5_6traits8iterator8Iterator8try_folduNCINvNvB6z_12try_for_each4callNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9any_value8AnyValueINtNtNtB7_3ops12control_flow11ControlFlowB7L_ENcNtB8L_5Break0E0B8L_EB2t_.exit.thread, label %_RINvXNtNtCscgRAwXFJnXP_4core4iter8adaptersINtB3_12GenericShuntINtNtB3_3map3MapINtNtNtB7_5slice4iter4IterNtNtCsaRr8xKSRVhT_9sqlparser3ast4ExprENCNCINvMs1_NtCshquuC4dCYVj_10polars_sql7contextNtB2r_10SQLContext14process_valuesIBZ_IB1f_INtB1G_6ParensINtNtCsgZ49sUHp3tW_5alloc3vec3VecB1E_EEENCNvB2n_13process_query0EE00EINtNtB7_6result6ResultNtNtB7_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEENtNtNtB5_6traits8iterator8Iterator8try_folduNCINvNvB6z_12try_for_each4callNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9any_value8AnyValueINtNtNtB7_3ops12control_flow11ControlFlowB7L_ENcNtB8L_5Break0E0B8L_EB2t_.exit, !dbg !25243

_RINvXNtNtCscgRAwXFJnXP_4core4iter8adaptersINtB3_12GenericShuntINtNtB3_3map3MapINtNtNtB7_5slice4iter4IterNtNtCsaRr8xKSRVhT_9sqlparser3ast4ExprENCNCINvMs1_NtCshquuC4dCYVj_10polars_sql7contextNtB2r_10SQLContext14process_valuesIBZ_IB1f_INtB1G_6ParensINtNtCsgZ49sUHp3tW_5alloc3vec3VecB1E_EEENCNvB2n_13process_query0EE00EINtNtB7_6result6ResultNtNtB7_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEENtNtNtB5_6traits8iterator8Iterator8try_folduNCINvNvB6z_12try_for_each4callNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9any_value8AnyValueINtNtNtB7_3ops12control_flow11ControlFlowB7L_ENcNtB8L_5Break0E0B8L_EB2t_.exit.thread: ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !25244, !noalias !25236
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtB4_3ops12control_flow11ControlFlowNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9any_value8AnyValueEECshquuC4dCYVj_10polars_sql.exit, !dbg !25245

_RINvXNtNtCscgRAwXFJnXP_4core4iter8adaptersINtB3_12GenericShuntINtNtB3_3map3MapINtNtNtB7_5slice4iter4IterNtNtCsaRr8xKSRVhT_9sqlparser3ast4ExprENCNCINvMs1_NtCshquuC4dCYVj_10polars_sql7contextNtB2r_10SQLContext14process_valuesIBZ_IB1f_INtB1G_6ParensINtNtCsgZ49sUHp3tW_5alloc3vec3VecB1E_EEENCNvB2n_13process_query0EE00EINtNtB7_6result6ResultNtNtB7_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEENtNtNtB5_6traits8iterator8Iterator8try_folduNCINvNvB6z_12try_for_each4callNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9any_value8AnyValueINtNtNtB7_3ops12control_flow11ControlFlowB7L_ENcNtB8L_5Break0E0B8L_EB2t_.exit: ; preds = %bb.a
  %.sroa.6.0..sroa_idx7 = getelementptr inbounds nuw i8, ptr %i.b, i64 1, !dbg !25248
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(47) %.sroa.6, ptr noundef nonnull align 1 dereferenceable(47) %.sroa.6.0..sroa_idx7, i64 47, i1 false), !dbg !25248, !noalias !25228
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !25244, !noalias !25236
  %.not = icmp eq i8 %i.e, 35, !dbg !25249
  br i1 %.not, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtB4_3ops12control_flow11ControlFlowNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9any_value8AnyValueEECshquuC4dCYVj_10polars_sql.exit, label %bb.b, !dbg !25245

bb.b:                                             ; preds = %_RINvXNtNtCscgRAwXFJnXP_4core4iter8adaptersINtB3_12GenericShuntINtNtB3_3map3MapINtNtNtB7_5slice4iter4IterNtNtCsaRr8xKSRVhT_9sqlparser3ast4ExprENCNCINvMs1_NtCshquuC4dCYVj_10polars_sql7contextNtB2r_10SQLContext14process_valuesIBZ_IB1f_INtB1G_6ParensINtNtCsgZ49sUHp3tW_5alloc3vec3VecB1E_EEENCNvB2n_13process_query0EE00EINtNtB7_6result6ResultNtNtB7_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEENtNtNtB5_6traits8iterator8Iterator8try_folduNCINvNvB6z_12try_for_each4callNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9any_value8AnyValueINtNtNtB7_3ops12control_flow11ControlFlowB7L_ENcNtB8L_5Break0E0B8L_EB2t_.exit
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1, !dbg !25250
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(47) %.sroa.5.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(47) %.sroa.6, i64 47, i1 false), !dbg !25252
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtB4_3ops12control_flow11ControlFlowNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9any_value8AnyValueEECshquuC4dCYVj_10polars_sql.exit, !dbg !25253

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtB4_3ops12control_flow11ControlFlowNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9any_value8AnyValueEECshquuC4dCYVj_10polars_sql.exit: ; preds = %_RINvXNtNtCscgRAwXFJnXP_4core4iter8adaptersINtB3_12GenericShuntINtNtB3_3map3MapINtNtNtB7_5slice4iter4IterNtNtCsaRr8xKSRVhT_9sqlparser3ast4ExprENCNCINvMs1_NtCshquuC4dCYVj_10polars_sql7contextNtB2r_10SQLContext14process_valuesIBZ_IB1f_INtB1G_6ParensINtNtCsgZ49sUHp3tW_5alloc3vec3VecB1E_EEENCNvB2n_13process_query0EE00EINtNtB7_6result6ResultNtNtB7_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEENtNtNtB5_6traits8iterator8Iterator8try_folduNCINvNvB6z_12try_for_each4callNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9any_value8AnyValueINtNtNtB7_3ops12control_flow11ControlFlowB7L_ENcNtB8L_5Break0E0B8L_EB2t_.exit, %_RINvXNtNtCscgRAwXFJnXP_4core4iter8adaptersINtB3_12GenericShuntINtNtB3_3map3MapINtNtNtB7_5slice4iter4IterNtNtCsaRr8xKSRVhT_9sqlparser3ast4ExprENCNCINvMs1_NtCshquuC4dCYVj_10polars_sql7contextNtB2r_10SQLContext14process_valuesIBZ_IB1f_INtB1G_6ParensINtNtCsgZ49sUHp3tW_5alloc3vec3VecB1E_EEENCNvB2n_13process_query0EE00EINtNtB7_6result6ResultNtNtB7_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEENtNtNtB5_6traits8iterator8Iterator8try_folduNCINvNvB6z_12try_for_each4callNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9any_value8AnyValueINtNtNtB7_3ops12control_flow11ControlFlowB7L_ENcNtB8L_5Break0E0B8L_EB2t_.exit.thread, %bb.b
  %.sink = phi i8 [ %i.e, %bb.b ], [ 35, %_RINvXNtNtCscgRAwXFJnXP_4core4iter8adaptersINtB3_12GenericShuntINtNtB3_3map3MapINtNtNtB7_5slice4iter4IterNtNtCsaRr8xKSRVhT_9sqlparser3ast4ExprENCNCINvMs1_NtCshquuC4dCYVj_10polars_sql7contextNtB2r_10SQLContext14process_valuesIBZ_IB1f_INtB1G_6ParensINtNtCsgZ49sUHp3tW_5alloc3vec3VecB1E_EEENCNvB2n_13process_query0EE00EINtNtB7_6result6ResultNtNtB7_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEENtNtNtB5_6traits8iterator8Iterator8try_folduNCINvNvB6z_12try_for_each4callNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9any_value8AnyValueINtNtNtB7_3ops12control_flow11ControlFlowB7L_ENcNtB8L_5Break0E0B8L_EB2t_.exit.thread ], [ 35, %_RINvXNtNtCscgRAwXFJnXP_4core4iter8adaptersINtB3_12GenericShuntINtNtB3_3map3MapINtNtNtB7_5slice4iter4IterNtNtCsaRr8xKSRVhT_9sqlparser3ast4ExprENCNCINvMs1_NtCshquuC4dCYVj_10polars_sql7contextNtB2r_10SQLContext14process_valuesIBZ_IB1f_INtB1G_6ParensINtNtCsgZ49sUHp3tW_5alloc3vec3VecB1E_EEENCNvB2n_13process_query0EE00EINtNtB7_6result6ResultNtNtB7_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEENtNtNtB5_6traits8iterator8Iterator8try_folduNCINvNvB6z_12try_for_each4callNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9any_value8AnyValueINtNtNtB7_3ops12control_flow11ControlFlowB7L_ENcNtB8L_5Break0E0B8L_EB2t_.exit ]
  store i8 %.sink, ptr %0, align 16, !dbg !25254
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6), !dbg !25255
  ret void, !dbg !25256
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @_RNvXNtNtCscgRAwXFJnXP_4core4iter8adaptersINtB2_12GenericShuntINtNtB2_3map3MapINtNtNtB6_5slice4iter4IterNtNtCsaRr8xKSRVhT_9sqlparser3ast4ExprENCNCINvMs1_NtCshquuC4dCYVj_10polars_sql7contextNtB2q_10SQLContext14process_valuesIBY_IB1e_INtB1F_6ParensINtNtCsgZ49sUHp3tW_5alloc3vec3VecB1D_EEENCNvB2m_13process_query0EE00EINtNtB6_6result6ResultNtNtB6_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEENtNtNtB4_6traits8iterator8Iterator9size_hintB2s_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(32) %1) unnamed_addr #6 !dbg !25257 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24, !dbg !25258
  %i.b = load ptr, ptr %i.a, align 8, !dbg !25258, !nonnull !13, !align !1076, !noundef !13
  %i.c = load i64, ptr %i.b, align 8, !dbg !25259, !range !14337, !noundef !13
  %.not = icmp eq i64 %i.c, 18, !dbg !25259
  br i1 %.not, label %bb.b, label %bb.c, !dbg !25258

bb.b:                                             ; preds = %bb.a
  %.val = load ptr, ptr %1, align 8, !dbg !25264, !nonnull !13, !noundef !13
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !25264
  %.val1 = load ptr, ptr %i.d, align 8, !dbg !25264, !nonnull !13, !noundef !13
  %i.e = ptrtoint ptr %.val1 to i64, !dbg !25265
  %i.f = ptrtoint ptr %.val to i64, !dbg !25265
  %i.g = sub nuw i64 %i.e, %i.f, !dbg !25265
  %i.h = udiv exact i64 %i.g, 328, !dbg !25265
  br label %bb.c, !dbg !25272

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sink = phi i64 [ %i.h, %bb.b ], [ 0, %bb.a ], !dbg !25273
  store <2 x i64> <i64 0, i64 1>, ptr %0, align 8, !dbg !25273
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !25273
  store i64 %.sink, ptr %i.i, align 8, !dbg !25273
  ret void, !dbg !25274
}

; Function Attrs: nonlazybind optsize uwtable
define void @_RNvXNtNtCscgRAwXFJnXP_4core4iter8adaptersINtB2_12GenericShuntINtNtB2_3map3MapINtNtNtB6_5slice4iter4IterNtNtCsaRr8xKSRVhT_9sqlparser3ast4ExprENCNvMs0_NtCshquuC4dCYVj_10polars_sql9functionsNtB2n_18SQLFunctionVisitor11visit_count0EINtNtB6_6result6ResultNtNtB6_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEENtNtNtB4_6traits8iterator8Iterator4nextB2p_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([144 x i8]) align 16 captures(none) dereferenceable(144) initializes((112, 120)) %0, ptr noalias noundef align 8 dereferenceable(40) %1) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !25275 {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [144 x i8], align 16              ; 7 uses
  %.sroa.0 = alloca [112 x i8], align 16          ; 4 uses
  %.sroa.6 = alloca [24 x i8], align 8            ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0), !dbg !25276
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6), !dbg !25276
  tail call void @llvm.experimental.noalias.scope.decl(metadata !25277), !dbg !25280
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !25283, !noalias !25285
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !25287
  %i.d = load ptr, ptr %i.c, align 8, !dbg !25287, !alias.scope !25277, !noalias !25288, !nonnull !13, !align !1076, !noundef !13
  call void @_RINvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterNtNtCsaRr8xKSRVhT_9sqlparser3ast4ExprENCNvMs0_NtCshquuC4dCYVj_10polars_sql9functionsNtB27_18SQLFunctionVisitor11visit_count0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvXB8_INtB8_12GenericShuntBN_INtNtBc_6result6ResultNtNtBc_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEB3o_8try_folduNCINvNvB3o_12try_for_each4callNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprINtNtNtBc_3ops12control_flow11ControlFlowB6Q_ENcNtB7B_5Break0E0B7B_E0IB7C_B7B_EEB29_(ptr noalias noundef nonnull sret([144 x i8]) align 16 captures(address) dereferenceable(144) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(40) %1, ptr noalias noundef nonnull %i.a, ptr noalias noundef nonnull align 8 dereferenceable(72) %i.d), !dbg !25289, !noalias !25288
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 112, !dbg !25290
  %i.f = load i64, ptr %i.e, align 16, !dbg !25290, !range !1047, !noalias !25285, !noundef !13 ; 3 uses
  %.not.i = icmp eq i64 %i.f, -9223372036854775779, !dbg !25290
  br i1 %.not.i, label %_RINvXNtNtCscgRAwXFJnXP_4core4iter8adaptersINtB3_12GenericShuntINtNtB3_3map3MapINtNtNtB7_5slice4iter4IterNtNtCsaRr8xKSRVhT_9sqlparser3ast4ExprENCNvMs0_NtCshquuC4dCYVj_10polars_sql9functionsNtB2o_18SQLFunctionVisitor11visit_count0EINtNtB7_6result6ResultNtNtB7_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEENtNtNtB5_6traits8iterator8Iterator8try_folduNCINvNvB5b_12try_for_each4callNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprINtNtNtB7_3ops12control_flow11ControlFlowB6n_ENcNtB78_5Break0E0B78_EB2q_.exit.thread, label %_RINvXNtNtCscgRAwXFJnXP_4core4iter8adaptersINtB3_12GenericShuntINtNtB3_3map3MapINtNtNtB7_5slice4iter4IterNtNtCsaRr8xKSRVhT_9sqlparser3ast4ExprENCNvMs0_NtCshquuC4dCYVj_10polars_sql9functionsNtB2o_18SQLFunctionVisitor11visit_count0EINtNtB7_6result6ResultNtNtB7_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEENtNtNtB5_6traits8iterator8Iterator8try_folduNCINvNvB5b_12try_for_each4callNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprINtNtNtB7_3ops12control_flow11ControlFlowB6n_ENcNtB78_5Break0E0B78_EB2q_.exit, !dbg !25292

_RINvXNtNtCscgRAwXFJnXP_4core4iter8adaptersINtB3_12GenericShuntINtNtB3_3map3MapINtNtNtB7_5slice4iter4IterNtNtCsaRr8xKSRVhT_9sqlparser3ast4ExprENCNvMs0_NtCshquuC4dCYVj_10polars_sql9functionsNtB2o_18SQLFunctionVisitor11visit_count0EINtNtB7_6result6ResultNtNtB7_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEENtNtNtB5_6traits8iterator8Iterator8try_folduNCINvNvB5b_12try_for_each4callNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprINtNtNtB7_3ops12control_flow11ControlFlowB6n_ENcNtB78_5Break0E0B78_EB2q_.exit.thread: ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !25293, !noalias !25285
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtB4_3ops12control_flow11ControlFlowNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprEECshquuC4dCYVj_10polars_sql.exit, !dbg !25294

_RINvXNtNtCscgRAwXFJnXP_4core4iter8adaptersINtB3_12GenericShuntINtNtB3_3map3MapINtNtNtB7_5slice4iter4IterNtNtCsaRr8xKSRVhT_9sqlparser3ast4ExprENCNvMs0_NtCshquuC4dCYVj_10polars_sql9functionsNtB2o_18SQLFunctionVisitor11visit_count0EINtNtB7_6result6ResultNtNtB7_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEENtNtNtB5_6traits8iterator8Iterator8try_folduNCINvNvB5b_12try_for_each4callNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprINtNtNtB7_3ops12control_flow11ControlFlowB6n_ENcNtB78_5Break0E0B78_EB2q_.exit: ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(112) %.sroa.0, ptr noundef nonnull align 16 dereferenceable(112) %i.b, i64 112, i1 false), !dbg !25297, !noalias !25277
  %.sroa.6.0..sroa_idx4 = getelementptr inbounds nuw i8, ptr %i.b, i64 120, !dbg !25297
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6.0..sroa_idx4, i64 24, i1 false), !dbg !25297, !noalias !25277
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !25293, !noalias !25285
  %.not = icmp eq i64 %i.f, -9223372036854775780, !dbg !25298
  br i1 %.not, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtB4_3ops12control_flow11ControlFlowNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprEECshquuC4dCYVj_10polars_sql.exit, label %bb.b, !dbg !25294

bb.b:                                             ; preds = %_RINvXNtNtCscgRAwXFJnXP_4core4iter8adaptersINtB3_12GenericShuntINtNtB3_3map3MapINtNtNtB7_5slice4iter4IterNtNtCsaRr8xKSRVhT_9sqlparser3ast4ExprENCNvMs0_NtCshquuC4dCYVj_10polars_sql9functionsNtB2o_18SQLFunctionVisitor11visit_count0EINtNtB7_6result6ResultNtNtB7_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEENtNtNtB5_6traits8iterator8Iterator8try_folduNCINvNvB5b_12try_for_each4callNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprINtNtNtB7_3ops12control_flow11ControlFlowB6n_ENcNtB78_5Break0E0B78_EB2q_.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(112) %0, ptr noundef nonnull align 16 dereferenceable(112) %.sroa.0, i64 112, i1 false), !dbg !25299
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 120, !dbg !25300
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6, i64 24, i1 false), !dbg !25299
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtB4_3ops12control_flow11ControlFlowNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprEECshquuC4dCYVj_10polars_sql.exit, !dbg !25302

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtB4_3ops12control_flow11ControlFlowNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprEECshquuC4dCYVj_10polars_sql.exit: ; preds = %_RINvXNtNtCscgRAwXFJnXP_4core4iter8adaptersINtB3_12GenericShuntINtNtB3_3map3MapINtNtNtB7_5slice4iter4IterNtNtCsaRr8xKSRVhT_9sqlparser3ast4ExprENCNvMs0_NtCshquuC4dCYVj_10polars_sql9functionsNtB2o_18SQLFunctionVisitor11visit_count0EINtNtB7_6result6ResultNtNtB7_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEENtNtNtB5_6traits8iterator8Iterator8try_folduNCINvNvB5b_12try_for_each4callNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprINtNtNtB7_3ops12control_flow11ControlFlowB6n_ENcNtB78_5Break0E0B78_EB2q_.exit, %_RINvXNtNtCscgRAwXFJnXP_4core4iter8adaptersINtB3_12GenericShuntINtNtB3_3map3MapINtNtNtB7_5slice4iter4IterNtNtCsaRr8xKSRVhT_9sqlparser3ast4ExprENCNvMs0_NtCshquuC4dCYVj_10polars_sql9functionsNtB2o_18SQLFunctionVisitor11visit_count0EINtNtB7_6result6ResultNtNtB7_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEENtNtNtB5_6traits8iterator8Iterator8try_folduNCINvNvB5b_12try_for_each4callNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprINtNtNtB7_3ops12control_flow11ControlFlowB6n_ENcNtB78_5Break0E0B78_EB2q_.exit.thread, %bb.b
  %.sink = phi i64 [ %i.f, %bb.b ], [ -9223372036854775780, %_RINvXNtNtCscgRAwXFJnXP_4core4iter8adaptersINtB3_12GenericShuntINtNtB3_3map3MapINtNtNtB7_5slice4iter4IterNtNtCsaRr8xKSRVhT_9sqlparser3ast4ExprENCNvMs0_NtCshquuC4dCYVj_10polars_sql9functionsNtB2o_18SQLFunctionVisitor11visit_count0EINtNtB7_6result6ResultNtNtB7_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEENtNtNtB5_6traits8iterator8Iterator8try_folduNCINvNvB5b_12try_for_each4callNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprINtNtNtB7_3ops12control_flow11ControlFlowB6n_ENcNtB78_5Break0E0B78_EB2q_.exit.thread ], [ -9223372036854775780, %_RINvXNtNtCscgRAwXFJnXP_4core4iter8adaptersINtB3_12GenericShuntINtNtB3_3map3MapINtNtNtB7_5slice4iter4IterNtNtCsaRr8xKSRVhT_9sqlparser3ast4ExprENCNvMs0_NtCshquuC4dCYVj_10polars_sql9functionsNtB2o_18SQLFunctionVisitor11visit_count0EINtNtB7_6result6ResultNtNtB7_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEENtNtNtB5_6traits8iterator8Iterator8try_folduNCINvNvB5b_12try_for_each4callNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprINtNtNtB7_3ops12control_flow11ControlFlowB6n_ENcNtB78_5Break0E0B78_EB2q_.exit ]
  %.sroa.46.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 112, !dbg !25303
  store i64 %.sink, ptr %.sroa.46.0..sroa_idx, align 16, !dbg !25303
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0), !dbg !25304
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6), !dbg !25304
  ret void, !dbg !25305
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @_RNvXNtNtCscgRAwXFJnXP_4core4iter8adaptersINtB2_12GenericShuntINtNtB2_3map3MapINtNtNtB6_5slice4iter4IterNtNtCsaRr8xKSRVhT_9sqlparser3ast4ExprENCNvMs0_NtCshquuC4dCYVj_10polars_sql9functionsNtB2n_18SQLFunctionVisitor11visit_count0EINtNtB6_6result6ResultNtNtB6_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEENtNtNtB4_6traits8iterator8Iterator9size_hintB2p_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(40) %1) unnamed_addr #6 !dbg !25306 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !25307
  %i.b = load ptr, ptr %i.a, align 8, !dbg !25307, !nonnull !13, !align !1076, !noundef !13
  %i.c = load i64, ptr %i.b, align 8, !dbg !25308, !range !14337, !noundef !13
  %.not = icmp eq i64 %i.c, 18, !dbg !25308
  br i1 %.not, label %bb.b, label %bb.c, !dbg !25307

bb.b:                                             ; preds = %bb.a
  %.val = load ptr, ptr %1, align 8, !dbg !25313, !nonnull !13, !noundef !13
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !25313
  %.val1 = load ptr, ptr %i.d, align 8, !dbg !25313, !nonnull !13, !noundef !13
  %i.e = ptrtoint ptr %.val1 to i64, !dbg !25314
  %i.f = ptrtoint ptr %.val to i64, !dbg !25314
  %i.g = sub nuw i64 %i.e, %i.f, !dbg !25314
  %i.h = udiv exact i64 %i.g, 328, !dbg !25314
  br label %bb.c, !dbg !25321

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sink = phi i64 [ %i.h, %bb.b ], [ 0, %bb.a ], !dbg !25322
  store <2 x i64> <i64 0, i64 1>, ptr %0, align 8, !dbg !25322
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !25322
  store i64 %.sink, ptr %i.i, align 8, !dbg !25322
  ret void, !dbg !25323
}

; Function Attrs: nonlazybind optsize uwtable
define void @_RNvXNtNtCscgRAwXFJnXP_4core4iter8adaptersINtB2_12GenericShuntINtNtB2_3map3MapINtNtNtB6_5slice4iter4IterNtNtCsaRr8xKSRVhT_9sqlparser3ast4ExprENCNvMs0_NtCshquuC4dCYVj_10polars_sql9functionsNtB2n_18SQLFunctionVisitor17apply_window_spec0EINtNtB6_6result6ResultNtNtB6_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEENtNtNtB4_6traits8iterator8Iterator4nextB2p_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([144 x i8]) align 16 captures(none) dereferenceable(144) initializes((112, 120)) %0, ptr noalias noundef align 8 dereferenceable(40) %1) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !25324 {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [144 x i8], align 16              ; 7 uses
  %.sroa.0 = alloca [112 x i8], align 16          ; 4 uses
  %.sroa.6 = alloca [24 x i8], align 8            ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0), !dbg !25325
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6), !dbg !25325
  tail call void @llvm.experimental.noalias.scope.decl(metadata !25326), !dbg !25329
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !25332, !noalias !25334
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !25336
  %i.d = load ptr, ptr %i.c, align 8, !dbg !25336, !alias.scope !25326, !noalias !25337, !nonnull !13, !align !1076, !noundef !13
  call void @_RINvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterNtNtCsaRr8xKSRVhT_9sqlparser3ast4ExprENCNvMs0_NtCshquuC4dCYVj_10polars_sql9functionsNtB27_18SQLFunctionVisitor17apply_window_spec0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvXB8_INtB8_12GenericShuntBN_INtNtBc_6result6ResultNtNtBc_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEB3u_8try_folduNCINvNvB3u_12try_for_each4callNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprINtNtNtBc_3ops12control_flow11ControlFlowB6W_ENcNtB7H_5Break0E0B7H_E0IB7I_B7H_EEB29_(ptr noalias noundef nonnull sret([144 x i8]) align 16 captures(address) dereferenceable(144) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(40) %1, ptr noalias noundef nonnull %i.a, ptr noalias noundef nonnull align 8 dereferenceable(72) %i.d), !dbg !25338, !noalias !25337
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 112, !dbg !25339
  %i.f = load i64, ptr %i.e, align 16, !dbg !25339, !range !1047, !noalias !25334, !noundef !13 ; 3 uses
  %.not.i = icmp eq i64 %i.f, -9223372036854775779, !dbg !25339
  br i1 %.not.i, label %_RINvXNtNtCscgRAwXFJnXP_4core4iter8adaptersINtB3_12GenericShuntINtNtB3_3map3MapINtNtNtB7_5slice4iter4IterNtNtCsaRr8xKSRVhT_9sqlparser3ast4ExprENCNvMs0_NtCshquuC4dCYVj_10polars_sql9functionsNtB2o_18SQLFunctionVisitor17apply_window_spec0EINtNtB7_6result6ResultNtNtB7_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEENtNtNtB5_6traits8iterator8Iterator8try_folduNCINvNvB5h_12try_for_each4callNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprINtNtNtB7_3ops12control_flow11ControlFlowB6t_ENcNtB7e_5Break0E0B7e_EB2q_.exit.thread, label %_RINvXNtNtCscgRAwXFJnXP_4core4iter8adaptersINtB3_12GenericShuntINtNtB3_3map3MapINtNtNtB7_5slice4iter4IterNtNtCsaRr8xKSRVhT_9sqlparser3ast4ExprENCNvMs0_NtCshquuC4dCYVj_10polars_sql9functionsNtB2o_18SQLFunctionVisitor17apply_window_spec0EINtNtB7_6result6ResultNtNtB7_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEENtNtNtB5_6traits8iterator8Iterator8try_folduNCINvNvB5h_12try_for_each4callNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprINtNtNtB7_3ops12control_flow11ControlFlowB6t_ENcNtB7e_5Break0E0B7e_EB2q_.exit, !dbg !25341

_RINvXNtNtCscgRAwXFJnXP_4core4iter8adaptersINtB3_12GenericShuntINtNtB3_3map3MapINtNtNtB7_5slice4iter4IterNtNtCsaRr8xKSRVhT_9sqlparser3ast4ExprENCNvMs0_NtCshquuC4dCYVj_10polars_sql9functionsNtB2o_18SQLFunctionVisitor17apply_window_spec0EINtNtB7_6result6ResultNtNtB7_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEENtNtNtB5_6traits8iterator8Iterator8try_folduNCINvNvB5h_12try_for_each4callNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprINtNtNtB7_3ops12control_flow11ControlFlowB6t_ENcNtB7e_5Break0E0B7e_EB2q_.exit.thread: ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !25342, !noalias !25334
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtB4_3ops12control_flow11ControlFlowNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprEECshquuC4dCYVj_10polars_sql.exit, !dbg !25343

_RINvXNtNtCscgRAwXFJnXP_4core4iter8adaptersINtB3_12GenericShuntINtNtB3_3map3MapINtNtNtB7_5slice4iter4IterNtNtCsaRr8xKSRVhT_9sqlparser3ast4ExprENCNvMs0_NtCshquuC4dCYVj_10polars_sql9functionsNtB2o_18SQLFunctionVisitor17apply_window_spec0EINtNtB7_6result6ResultNtNtB7_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEENtNtNtB5_6traits8iterator8Iterator8try_folduNCINvNvB5h_12try_for_each4callNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprINtNtNtB7_3ops12control_flow11ControlFlowB6t_ENcNtB7e_5Break0E0B7e_EB2q_.exit: ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(112) %.sroa.0, ptr noundef nonnull align 16 dereferenceable(112) %i.b, i64 112, i1 false), !dbg !25346, !noalias !25326
  %.sroa.6.0..sroa_idx4 = getelementptr inbounds nuw i8, ptr %i.b, i64 120, !dbg !25346
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6.0..sroa_idx4, i64 24, i1 false), !dbg !25346, !noalias !25326
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !25342, !noalias !25334
  %.not = icmp eq i64 %i.f, -9223372036854775780, !dbg !25347
  br i1 %.not, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtB4_3ops12control_flow11ControlFlowNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprEECshquuC4dCYVj_10polars_sql.exit, label %bb.b, !dbg !25343

bb.b:                                             ; preds = %_RINvXNtNtCscgRAwXFJnXP_4core4iter8adaptersINtB3_12GenericShuntINtNtB3_3map3MapINtNtNtB7_5slice4iter4IterNtNtCsaRr8xKSRVhT_9sqlparser3ast4ExprENCNvMs0_NtCshquuC4dCYVj_10polars_sql9functionsNtB2o_18SQLFunctionVisitor17apply_window_spec0EINtNtB7_6result6ResultNtNtB7_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEENtNtNtB5_6traits8iterator8Iterator8try_folduNCINvNvB5h_12try_for_each4callNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprINtNtNtB7_3ops12control_flow11ControlFlowB6t_ENcNtB7e_5Break0E0B7e_EB2q_.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(112) %0, ptr noundef nonnull align 16 dereferenceable(112) %.sroa.0, i64 112, i1 false), !dbg !25348
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 120, !dbg !25349
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6, i64 24, i1 false), !dbg !25348
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtB4_3ops12control_flow11ControlFlowNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprEECshquuC4dCYVj_10polars_sql.exit, !dbg !25351

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtB4_3ops12control_flow11ControlFlowNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprEECshquuC4dCYVj_10polars_sql.exit: ; preds = %_RINvXNtNtCscgRAwXFJnXP_4core4iter8adaptersINtB3_12GenericShuntINtNtB3_3map3MapINtNtNtB7_5slice4iter4IterNtNtCsaRr8xKSRVhT_9sqlparser3ast4ExprENCNvMs0_NtCshquuC4dCYVj_10polars_sql9functionsNtB2o_18SQLFunctionVisitor17apply_window_spec0EINtNtB7_6result6ResultNtNtB7_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEENtNtNtB5_6traits8iterator8Iterator8try_folduNCINvNvB5h_12try_for_each4callNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprINtNtNtB7_3ops12control_flow11ControlFlowB6t_ENcNtB7e_5Break0E0B7e_EB2q_.exit, %_RINvXNtNtCscgRAwXFJnXP_4core4iter8adaptersINtB3_12GenericShuntINtNtB3_3map3MapINtNtNtB7_5slice4iter4IterNtNtCsaRr8xKSRVhT_9sqlparser3ast4ExprENCNvMs0_NtCshquuC4dCYVj_10polars_sql9functionsNtB2o_18SQLFunctionVisitor17apply_window_spec0EINtNtB7_6result6ResultNtNtB7_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEENtNtNtB5_6traits8iterator8Iterator8try_folduNCINvNvB5h_12try_for_each4callNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprINtNtNtB7_3ops12control_flow11ControlFlowB6t_ENcNtB7e_5Break0E0B7e_EB2q_.exit.thread, %bb.b
  %.sink = phi i64 [ %i.f, %bb.b ], [ -9223372036854775780, %_RINvXNtNtCscgRAwXFJnXP_4core4iter8adaptersINtB3_12GenericShuntINtNtB3_3map3MapINtNtNtB7_5slice4iter4IterNtNtCsaRr8xKSRVhT_9sqlparser3ast4ExprENCNvMs0_NtCshquuC4dCYVj_10polars_sql9functionsNtB2o_18SQLFunctionVisitor17apply_window_spec0EINtNtB7_6result6ResultNtNtB7_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEENtNtNtB5_6traits8iterator8Iterator8try_folduNCINvNvB5h_12try_for_each4callNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprINtNtNtB7_3ops12control_flow11ControlFlowB6t_ENcNtB7e_5Break0E0B7e_EB2q_.exit.thread ], [ -9223372036854775780, %_RINvXNtNtCscgRAwXFJnXP_4core4iter8adaptersINtB3_12GenericShuntINtNtB3_3map3MapINtNtNtB7_5slice4iter4IterNtNtCsaRr8xKSRVhT_9sqlparser3ast4ExprENCNvMs0_NtCshquuC4dCYVj_10polars_sql9functionsNtB2o_18SQLFunctionVisitor17apply_window_spec0EINtNtB7_6result6ResultNtNtB7_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEENtNtNtB5_6traits8iterator8Iterator8try_folduNCINvNvB5h_12try_for_each4callNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprINtNtNtB7_3ops12control_flow11ControlFlowB6t_ENcNtB7e_5Break0E0B7e_EB2q_.exit ]
  %.sroa.46.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 112, !dbg !25352
  store i64 %.sink, ptr %.sroa.46.0..sroa_idx, align 16, !dbg !25352
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0), !dbg !25353
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6), !dbg !25353
  ret void, !dbg !25354
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @_RNvXNtNtCscgRAwXFJnXP_4core4iter8adaptersINtB2_12GenericShuntINtNtB2_3map3MapINtNtNtB6_5slice4iter4IterNtNtCsaRr8xKSRVhT_9sqlparser3ast4ExprENCNvMs0_NtCshquuC4dCYVj_10polars_sql9functionsNtB2n_18SQLFunctionVisitor17apply_window_spec0EINtNtB6_6result6ResultNtNtB6_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEENtNtNtB4_6traits8iterator8Iterator9size_hintB2p_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(40) %1) unnamed_addr #6 !dbg !25355 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !25356
  %i.b = load ptr, ptr %i.a, align 8, !dbg !25356, !nonnull !13, !align !1076, !noundef !13
  %i.c = load i64, ptr %i.b, align 8, !dbg !25357, !range !14337, !noundef !13
  %.not = icmp eq i64 %i.c, 18, !dbg !25357
  br i1 %.not, label %bb.b, label %bb.c, !dbg !25356

bb.b:                                             ; preds = %bb.a
  %.val = load ptr, ptr %1, align 8, !dbg !25362, !nonnull !13, !noundef !13
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !25362
  %.val1 = load ptr, ptr %i.d, align 8, !dbg !25362, !nonnull !13, !noundef !13
  %i.e = ptrtoint ptr %.val1 to i64, !dbg !25363
  %i.f = ptrtoint ptr %.val to i64, !dbg !25363
  %i.g = sub nuw i64 %i.e, %i.f, !dbg !25363
  %i.h = udiv exact i64 %i.g, 328, !dbg !25363
  br label %bb.c, !dbg !25370

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sink = phi i64 [ %i.h, %bb.b ], [ 0, %bb.a ], !dbg !25371
  store <2 x i64> <i64 0, i64 1>, ptr %0, align 8, !dbg !25371
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !25371
  store i64 %.sink, ptr %i.i, align 8, !dbg !25371
  ret void, !dbg !25372
}

; Function Attrs: nonlazybind optsize uwtable
define void @_RNvXNtNtCscgRAwXFJnXP_4core4iter8adaptersINtB2_12GenericShuntINtNtB2_3map3MapINtNtNtB6_5slice4iter4IterNtNtCsaRr8xKSRVhT_9sqlparser3ast4ExprENCNvMs1_NtCshquuC4dCYVj_10polars_sql7contextNtB2n_10SQLContext14execute_selects4_0EINtNtB6_6result6ResultNtNtB6_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEENtNtNtB4_6traits8iterator8Iterator4nextB2p_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([144 x i8]) align 16 captures(none) dereferenceable(144) initializes((112, 120)) %0, ptr noalias noundef align 8 dereferenceable(48) %1) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !25373 {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [144 x i8], align 16              ; 7 uses
  %.sroa.0 = alloca [112 x i8], align 16          ; 4 uses
  %.sroa.6 = alloca [24 x i8], align 8            ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0), !dbg !25374
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6), !dbg !25374
  tail call void @llvm.experimental.noalias.scope.decl(metadata !25375), !dbg !25378
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !25381, !noalias !25383
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 40, !dbg !25385
  %i.d = load ptr, ptr %i.c, align 8, !dbg !25385, !alias.scope !25375, !noalias !25386, !nonnull !13, !align !1076, !noundef !13
  call void @_RINvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterNtNtCsaRr8xKSRVhT_9sqlparser3ast4ExprENCNvMs1_NtCshquuC4dCYVj_10polars_sql7contextNtB27_10SQLContext14execute_selects4_0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvXB8_INtB8_12GenericShuntBN_INtNtBc_6result6ResultNtNtBc_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEB3k_8try_folduNCINvNvB3k_12try_for_each4callNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprINtNtNtBc_3ops12control_flow11ControlFlowB6M_ENcNtB7x_5Break0E0B7x_E0IB7y_B7x_EEB29_(ptr noalias noundef nonnull sret([144 x i8]) align 16 captures(address) dereferenceable(144) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(48) %1, ptr noalias noundef nonnull %i.a, ptr noalias noundef nonnull align 8 dereferenceable(72) %i.d), !dbg !25387, !noalias !25386
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 112, !dbg !25388
  %i.f = load i64, ptr %i.e, align 16, !dbg !25388, !range !1047, !noalias !25383, !noundef !13 ; 3 uses
  %.not.i = icmp eq i64 %i.f, -9223372036854775779, !dbg !25388
  br i1 %.not.i, label %_RINvXNtNtCscgRAwXFJnXP_4core4iter8adaptersINtB3_12GenericShuntINtNtB3_3map3MapINtNtNtB7_5slice4iter4IterNtNtCsaRr8xKSRVhT_9sqlparser3ast4ExprENCNvMs1_NtCshquuC4dCYVj_10polars_sql7contextNtB2o_10SQLContext14execute_selects4_0EINtNtB7_6result6ResultNtNtB7_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEENtNtNtB5_6traits8iterator8Iterator8try_folduNCINvNvB57_12try_for_each4callNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprINtNtNtB7_3ops12control_flow11ControlFlowB6j_ENcNtB74_5Break0E0B74_EB2q_.exit.thread, label %_RINvXNtNtCscgRAwXFJnXP_4core4iter8adaptersINtB3_12GenericShuntINtNtB3_3map3MapINtNtNtB7_5slice4iter4IterNtNtCsaRr8xKSRVhT_9sqlparser3ast4ExprENCNvMs1_NtCshquuC4dCYVj_10polars_sql7contextNtB2o_10SQLContext14execute_selects4_0EINtNtB7_6result6ResultNtNtB7_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEENtNtNtB5_6traits8iterator8Iterator8try_folduNCINvNvB57_12try_for_each4callNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprINtNtNtB7_3ops12control_flow11ControlFlowB6j_ENcNtB74_5Break0E0B74_EB2q_.exit, !dbg !25390

_RINvXNtNtCscgRAwXFJnXP_4core4iter8adaptersINtB3_12GenericShuntINtNtB3_3map3MapINtNtNtB7_5slice4iter4IterNtNtCsaRr8xKSRVhT_9sqlparser3ast4ExprENCNvMs1_NtCshquuC4dCYVj_10polars_sql7contextNtB2o_10SQLContext14execute_selects4_0EINtNtB7_6result6ResultNtNtB7_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEENtNtNtB5_6traits8iterator8Iterator8try_folduNCINvNvB57_12try_for_each4callNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprINtNtNtB7_3ops12control_flow11ControlFlowB6j_ENcNtB74_5Break0E0B74_EB2q_.exit.thread: ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !25391, !noalias !25383
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtB4_3ops12control_flow11ControlFlowNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprEECshquuC4dCYVj_10polars_sql.exit, !dbg !25392

_RINvXNtNtCscgRAwXFJnXP_4core4iter8adaptersINtB3_12GenericShuntINtNtB3_3map3MapINtNtNtB7_5slice4iter4IterNtNtCsaRr8xKSRVhT_9sqlparser3ast4ExprENCNvMs1_NtCshquuC4dCYVj_10polars_sql7contextNtB2o_10SQLContext14execute_selects4_0EINtNtB7_6result6ResultNtNtB7_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEENtNtNtB5_6traits8iterator8Iterator8try_folduNCINvNvB57_12try_for_each4callNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprINtNtNtB7_3ops12control_flow11ControlFlowB6j_ENcNtB74_5Break0E0B74_EB2q_.exit: ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(112) %.sroa.0, ptr noundef nonnull align 16 dereferenceable(112) %i.b, i64 112, i1 false), !dbg !25395, !noalias !25375
  %.sroa.6.0..sroa_idx4 = getelementptr inbounds nuw i8, ptr %i.b, i64 120, !dbg !25395
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6.0..sroa_idx4, i64 24, i1 false), !dbg !25395, !noalias !25375
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !25391, !noalias !25383
  %.not = icmp eq i64 %i.f, -9223372036854775780, !dbg !25396
  br i1 %.not, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtB4_3ops12control_flow11ControlFlowNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprEECshquuC4dCYVj_10polars_sql.exit, label %bb.b, !dbg !25392

bb.b:                                             ; preds = %_RINvXNtNtCscgRAwXFJnXP_4core4iter8adaptersINtB3_12GenericShuntINtNtB3_3map3MapINtNtNtB7_5slice4iter4IterNtNtCsaRr8xKSRVhT_9sqlparser3ast4ExprENCNvMs1_NtCshquuC4dCYVj_10polars_sql7contextNtB2o_10SQLContext14execute_selects4_0EINtNtB7_6result6ResultNtNtB7_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEENtNtNtB5_6traits8iterator8Iterator8try_folduNCINvNvB57_12try_for_each4callNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprINtNtNtB7_3ops12control_flow11ControlFlowB6j_ENcNtB74_5Break0E0B74_EB2q_.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(112) %0, ptr noundef nonnull align 16 dereferenceable(112) %.sroa.0, i64 112, i1 false), !dbg !25397
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 120, !dbg !25398
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6, i64 24, i1 false), !dbg !25397
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtB4_3ops12control_flow11ControlFlowNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprEECshquuC4dCYVj_10polars_sql.exit, !dbg !25400

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtB4_3ops12control_flow11ControlFlowNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprEECshquuC4dCYVj_10polars_sql.exit: ; preds = %_RINvXNtNtCscgRAwXFJnXP_4core4iter8adaptersINtB3_12GenericShuntINtNtB3_3map3MapINtNtNtB7_5slice4iter4IterNtNtCsaRr8xKSRVhT_9sqlparser3ast4ExprENCNvMs1_NtCshquuC4dCYVj_10polars_sql7contextNtB2o_10SQLContext14execute_selects4_0EINtNtB7_6result6ResultNtNtB7_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEENtNtNtB5_6traits8iterator8Iterator8try_folduNCINvNvB57_12try_for_each4callNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprINtNtNtB7_3ops12control_flow11ControlFlowB6j_ENcNtB74_5Break0E0B74_EB2q_.exit, %_RINvXNtNtCscgRAwXFJnXP_4core4iter8adaptersINtB3_12GenericShuntINtNtB3_3map3MapINtNtNtB7_5slice4iter4IterNtNtCsaRr8xKSRVhT_9sqlparser3ast4ExprENCNvMs1_NtCshquuC4dCYVj_10polars_sql7contextNtB2o_10SQLContext14execute_selects4_0EINtNtB7_6result6ResultNtNtB7_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEENtNtNtB5_6traits8iterator8Iterator8try_folduNCINvNvB57_12try_for_each4callNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprINtNtNtB7_3ops12control_flow11ControlFlowB6j_ENcNtB74_5Break0E0B74_EB2q_.exit.thread, %bb.b
  %.sink = phi i64 [ %i.f, %bb.b ], [ -9223372036854775780, %_RINvXNtNtCscgRAwXFJnXP_4core4iter8adaptersINtB3_12GenericShuntINtNtB3_3map3MapINtNtNtB7_5slice4iter4IterNtNtCsaRr8xKSRVhT_9sqlparser3ast4ExprENCNvMs1_NtCshquuC4dCYVj_10polars_sql7contextNtB2o_10SQLContext14execute_selects4_0EINtNtB7_6result6ResultNtNtB7_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEENtNtNtB5_6traits8iterator8Iterator8try_folduNCINvNvB57_12try_for_each4callNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprINtNtNtB7_3ops12control_flow11ControlFlowB6j_ENcNtB74_5Break0E0B74_EB2q_.exit.thread ], [ -9223372036854775780, %_RINvXNtNtCscgRAwXFJnXP_4core4iter8adaptersINtB3_12GenericShuntINtNtB3_3map3MapINtNtNtB7_5slice4iter4IterNtNtCsaRr8xKSRVhT_9sqlparser3ast4ExprENCNvMs1_NtCshquuC4dCYVj_10polars_sql7contextNtB2o_10SQLContext14execute_selects4_0EINtNtB7_6result6ResultNtNtB7_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEENtNtNtB5_6traits8iterator8Iterator8try_folduNCINvNvB57_12try_for_each4callNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprINtNtNtB7_3ops12control_flow11ControlFlowB6j_ENcNtB74_5Break0E0B74_EB2q_.exit ]
  %.sroa.46.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 112, !dbg !25401
  store i64 %.sink, ptr %.sroa.46.0..sroa_idx, align 16, !dbg !25401
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0), !dbg !25402
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6), !dbg !25402
  ret void, !dbg !25403
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @_RNvXNtNtCscgRAwXFJnXP_4core4iter8adaptersINtB2_12GenericShuntINtNtB2_3map3MapINtNtNtB6_5slice4iter4IterNtNtCsaRr8xKSRVhT_9sqlparser3ast4ExprENCNvMs1_NtCshquuC4dCYVj_10polars_sql7contextNtB2n_10SQLContext14execute_selects4_0EINtNtB6_6result6ResultNtNtB6_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEENtNtNtB4_6traits8iterator8Iterator9size_hintB2p_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(48) %1) unnamed_addr #6 !dbg !25404 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 40, !dbg !25405
  %i.b = load ptr, ptr %i.a, align 8, !dbg !25405, !nonnull !13, !align !1076, !noundef !13
  %i.c = load i64, ptr %i.b, align 8, !dbg !25406, !range !14337, !noundef !13
  %.not = icmp eq i64 %i.c, 18, !dbg !25406
  br i1 %.not, label %bb.b, label %bb.c, !dbg !25405

bb.b:                                             ; preds = %bb.a
  %.val = load ptr, ptr %1, align 8, !dbg !25411, !nonnull !13, !noundef !13
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !25411
  %.val1 = load ptr, ptr %i.d, align 8, !dbg !25411, !nonnull !13, !noundef !13
  %i.e = ptrtoint ptr %.val1 to i64, !dbg !25412
  %i.f = ptrtoint ptr %.val to i64, !dbg !25412
  %i.g = sub nuw i64 %i.e, %i.f, !dbg !25412
  %i.h = udiv exact i64 %i.g, 328, !dbg !25412
  br label %bb.c, !dbg !25419

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sink = phi i64 [ %i.h, %bb.b ], [ 0, %bb.a ], !dbg !25420
  store <2 x i64> <i64 0, i64 1>, ptr %0, align 8, !dbg !25420
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !25420
  store i64 %.sink, ptr %i.i, align 8, !dbg !25420
  ret void, !dbg !25421
}

; Function Attrs: nonlazybind optsize uwtable
define void @_RNvXNtNtCscgRAwXFJnXP_4core4iter8adaptersINtB2_12GenericShuntINtNtB2_3map3MapINtNtNtB6_5slice4iter4IterNtNtCsaRr8xKSRVhT_9sqlparser3ast4ExprENCNvMs1_NtCshquuC4dCYVj_10polars_sql7contextNtB2n_10SQLContext14execute_selects9_0EINtNtB6_6result6ResultNtNtB6_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEENtNtNtB4_6traits8iterator8Iterator4nextB2p_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((23, 24)) %0, ptr noalias noundef align 8 dereferenceable(40) %1) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !25422 {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %.sroa.0 = alloca [23 x i8], align 8            ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0), !dbg !25423
  tail call void @llvm.experimental.noalias.scope.decl(metadata !25424), !dbg !25427
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !25430, !noalias !25432
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !25434
  %i.d = load ptr, ptr %i.c, align 8, !dbg !25434, !alias.scope !25424, !noalias !25435, !nonnull !13, !align !1076, !noundef !13
  call void @_RINvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterNtNtCsaRr8xKSRVhT_9sqlparser3ast4ExprENCNvMs1_NtCshquuC4dCYVj_10polars_sql7contextNtB27_10SQLContext14execute_selects9_0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvXB8_INtB8_12GenericShuntBN_INtNtBc_6result6ResultNtNtBc_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEB3k_8try_folduNCINvNvB3k_12try_for_each4callNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrINtNtNtBc_3ops12control_flow11ControlFlowB6M_ENcNtB7B_5Break0E0B7B_E0IB7C_B7B_EEB29_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(40) %1, ptr noalias noundef nonnull %i.a, ptr noalias noundef nonnull align 8 dereferenceable(72) %i.d), !dbg !25436, !noalias !25435
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 23, !dbg !25437
  %i.f = load i8, ptr %i.e, align 1, !dbg !25437, !range !17634, !noalias !25432, !noundef !13 ; 3 uses
  %.not.i = icmp eq i8 %i.f, -37, !dbg !25437
  br i1 %.not.i, label %_RINvXNtNtCscgRAwXFJnXP_4core4iter8adaptersINtB3_12GenericShuntINtNtB3_3map3MapINtNtNtB7_5slice4iter4IterNtNtCsaRr8xKSRVhT_9sqlparser3ast4ExprENCNvMs1_NtCshquuC4dCYVj_10polars_sql7contextNtB2o_10SQLContext14execute_selects9_0EINtNtB7_6result6ResultNtNtB7_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEENtNtNtB5_6traits8iterator8Iterator8try_folduNCINvNvB57_12try_for_each4callNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrINtNtNtB7_3ops12control_flow11ControlFlowB6j_ENcNtB78_5Break0E0B78_EB2q_.exit.thread, label %_RINvXNtNtCscgRAwXFJnXP_4core4iter8adaptersINtB3_12GenericShuntINtNtB3_3map3MapINtNtNtB7_5slice4iter4IterNtNtCsaRr8xKSRVhT_9sqlparser3ast4ExprENCNvMs1_NtCshquuC4dCYVj_10polars_sql7contextNtB2o_10SQLContext14execute_selects9_0EINtNtB7_6result6ResultNtNtB7_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEENtNtNtB5_6traits8iterator8Iterator8try_folduNCINvNvB57_12try_for_each4callNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrINtNtNtB7_3ops12control_flow11ControlFlowB6j_ENcNtB78_5Break0E0B78_EB2q_.exit, !dbg !25439

_RINvXNtNtCscgRAwXFJnXP_4core4iter8adaptersINtB3_12GenericShuntINtNtB3_3map3MapINtNtNtB7_5slice4iter4IterNtNtCsaRr8xKSRVhT_9sqlparser3ast4ExprENCNvMs1_NtCshquuC4dCYVj_10polars_sql7contextNtB2o_10SQLContext14execute_selects9_0EINtNtB7_6result6ResultNtNtB7_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEENtNtNtB5_6traits8iterator8Iterator8try_folduNCINvNvB57_12try_for_each4callNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrINtNtNtB7_3ops12control_flow11ControlFlowB6j_ENcNtB78_5Break0E0B78_EB2q_.exit.thread: ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !25440, !noalias !25432
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtB4_3ops12control_flow11ControlFlowNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrEECshquuC4dCYVj_10polars_sql.exit, !dbg !25441

_RINvXNtNtCscgRAwXFJnXP_4core4iter8adaptersINtB3_12GenericShuntINtNtB3_3map3MapINtNtNtB7_5slice4iter4IterNtNtCsaRr8xKSRVhT_9sqlparser3ast4ExprENCNvMs1_NtCshquuC4dCYVj_10polars_sql7contextNtB2o_10SQLContext14execute_selects9_0EINtNtB7_6result6ResultNtNtB7_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEENtNtNtB5_6traits8iterator8Iterator8try_folduNCINvNvB57_12try_for_each4callNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrINtNtNtB7_3ops12control_flow11ControlFlowB6j_ENcNtB78_5Break0E0B78_EB2q_.exit: ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(23) %.sroa.0, ptr noundef nonnull align 8 dereferenceable(23) %i.b, i64 23, i1 false), !dbg !25444, !noalias !25424
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !25440, !noalias !25432
  %.not = icmp eq i8 %i.f, -38, !dbg !25445
  br i1 %.not, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtB4_3ops12control_flow11ControlFlowNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrEECshquuC4dCYVj_10polars_sql.exit, label %bb.b, !dbg !25441

bb.b:                                             ; preds = %_RINvXNtNtCscgRAwXFJnXP_4core4iter8adaptersINtB3_12GenericShuntINtNtB3_3map3MapINtNtNtB7_5slice4iter4IterNtNtCsaRr8xKSRVhT_9sqlparser3ast4ExprENCNvMs1_NtCshquuC4dCYVj_10polars_sql7contextNtB2o_10SQLContext14execute_selects9_0EINtNtB7_6result6ResultNtNtB7_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEENtNtNtB5_6traits8iterator8Iterator8try_folduNCINvNvB57_12try_for_each4callNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrINtNtNtB7_3ops12control_flow11ControlFlowB6j_ENcNtB78_5Break0E0B78_EB2q_.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(23) %0, ptr noundef nonnull align 8 dereferenceable(23) %.sroa.0, i64 23, i1 false), !dbg !25446
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtB4_3ops12control_flow11ControlFlowNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrEECshquuC4dCYVj_10polars_sql.exit, !dbg !25447

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtB4_3ops12control_flow11ControlFlowNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrEECshquuC4dCYVj_10polars_sql.exit: ; preds = %_RINvXNtNtCscgRAwXFJnXP_4core4iter8adaptersINtB3_12GenericShuntINtNtB3_3map3MapINtNtNtB7_5slice4iter4IterNtNtCsaRr8xKSRVhT_9sqlparser3ast4ExprENCNvMs1_NtCshquuC4dCYVj_10polars_sql7contextNtB2o_10SQLContext14execute_selects9_0EINtNtB7_6result6ResultNtNtB7_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEENtNtNtB5_6traits8iterator8Iterator8try_folduNCINvNvB57_12try_for_each4callNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrINtNtNtB7_3ops12control_flow11ControlFlowB6j_ENcNtB78_5Break0E0B78_EB2q_.exit, %_RINvXNtNtCscgRAwXFJnXP_4core4iter8adaptersINtB3_12GenericShuntINtNtB3_3map3MapINtNtNtB7_5slice4iter4IterNtNtCsaRr8xKSRVhT_9sqlparser3ast4ExprENCNvMs1_NtCshquuC4dCYVj_10polars_sql7contextNtB2o_10SQLContext14execute_selects9_0EINtNtB7_6result6ResultNtNtB7_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEENtNtNtB5_6traits8iterator8Iterator8try_folduNCINvNvB57_12try_for_each4callNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrINtNtNtB7_3ops12control_flow11ControlFlowB6j_ENcNtB78_5Break0E0B78_EB2q_.exit.thread, %bb.b
  %.sink = phi i8 [ %i.f, %bb.b ], [ -38, %_RINvXNtNtCscgRAwXFJnXP_4core4iter8adaptersINtB3_12GenericShuntINtNtB3_3map3MapINtNtNtB7_5slice4iter4IterNtNtCsaRr8xKSRVhT_9sqlparser3ast4ExprENCNvMs1_NtCshquuC4dCYVj_10polars_sql7contextNtB2o_10SQLContext14execute_selects9_0EINtNtB7_6result6ResultNtNtB7_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEENtNtNtB5_6traits8iterator8Iterator8try_folduNCINvNvB57_12try_for_each4callNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrINtNtNtB7_3ops12control_flow11ControlFlowB6j_ENcNtB78_5Break0E0B78_EB2q_.exit.thread ], [ -38, %_RINvXNtNtCscgRAwXFJnXP_4core4iter8adaptersINtB3_12GenericShuntINtNtB3_3map3MapINtNtNtB7_5slice4iter4IterNtNtCsaRr8xKSRVhT_9sqlparser3ast4ExprENCNvMs1_NtCshquuC4dCYVj_10polars_sql7contextNtB2o_10SQLContext14execute_selects9_0EINtNtB7_6result6ResultNtNtB7_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEENtNtNtB5_6traits8iterator8Iterator8try_folduNCINvNvB57_12try_for_each4callNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrINtNtNtB7_3ops12control_flow11ControlFlowB6j_ENcNtB78_5Break0E0B78_EB2q_.exit ]
  %.sroa.45.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 23, !dbg !25448
  store i8 %.sink, ptr %.sroa.45.0..sroa_idx, align 1, !dbg !25448
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0), !dbg !25449
  ret void, !dbg !25450
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @_RNvXNtNtCscgRAwXFJnXP_4core4iter8adaptersINtB2_12GenericShuntINtNtB2_3map3MapINtNtNtB6_5slice4iter4IterNtNtCsaRr8xKSRVhT_9sqlparser3ast4ExprENCNvMs1_NtCshquuC4dCYVj_10polars_sql7contextNtB2n_10SQLContext14execute_selects9_0EINtNtB6_6result6ResultNtNtB6_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEENtNtNtB4_6traits8iterator8Iterator9size_hintB2p_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(40) %1) unnamed_addr #6 !dbg !25451 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !25452
  %i.b = load ptr, ptr %i.a, align 8, !dbg !25452, !nonnull !13, !align !1076, !noundef !13
  %i.c = load i64, ptr %i.b, align 8, !dbg !25453, !range !14337, !noundef !13
  %.not = icmp eq i64 %i.c, 18, !dbg !25453
  br i1 %.not, label %bb.b, label %bb.c, !dbg !25452

bb.b:                                             ; preds = %bb.a
  %.val = load ptr, ptr %1, align 8, !dbg !25458, !nonnull !13, !noundef !13
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !25458
  %.val1 = load ptr, ptr %i.d, align 8, !dbg !25458, !nonnull !13, !noundef !13
  %i.e = ptrtoint ptr %.val1 to i64, !dbg !25459
  %i.f = ptrtoint ptr %.val to i64, !dbg !25459
  %i.g = sub nuw i64 %i.e, %i.f, !dbg !25459
  %i.h = udiv exact i64 %i.g, 328, !dbg !25459
  br label %bb.c, !dbg !25466

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sink = phi i64 [ %i.h, %bb.b ], [ 0, %bb.a ], !dbg !25467
  store <2 x i64> <i64 0, i64 1>, ptr %0, align 8, !dbg !25467
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !25467
  store i64 %.sink, ptr %i.i, align 8, !dbg !25467
  ret void, !dbg !25468
}

; Function Attrs: nonlazybind optsize uwtable
define { ptr, ptr } @_RNvXNtNtCscgRAwXFJnXP_4core4iter8adaptersINtB2_12GenericShuntINtNtB2_3map3MapINtNtNtB6_5slice4iter4IterNtNtCsaRr8xKSRVhT_9sqlparser3ast4ExprENCNvMs1_NtCshquuC4dCYVj_10polars_sql7contextNtB2n_10SQLContext9get_tables1_0EINtNtB6_6result6ResultNtNtB6_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEENtNtNtB4_6traits8iterator8Iterator4nextB2p_(ptr noalias noundef align 8 dereferenceable(32) %0) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !25469 {
_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtB4_3ops12control_flow11ControlFlowNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEECshquuC4dCYVj_10polars_sql.exit:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !25470), !dbg !25473
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !25476, !noalias !25470
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !25478
  %i.d = load ptr, ptr %i.c, align 8, !dbg !25478, !alias.scope !25470, !nonnull !13, !align !1076, !noundef !13
  call void @_RINvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterNtNtCsaRr8xKSRVhT_9sqlparser3ast4ExprENCNvMs1_NtCshquuC4dCYVj_10polars_sql7contextNtB27_10SQLContext9get_tables1_0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvXB8_INtB8_12GenericShuntBN_INtNtBc_6result6ResultNtNtBc_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEB3e_8try_folduNCINvNvB3e_12try_for_each4callNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesINtNtNtBc_3ops12control_flow11ControlFlowB6G_ENcNtB7p_5Break0E0B7p_E0IB7q_B7p_EEB29_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(32) %0, ptr noalias noundef nonnull %i.a, ptr noalias noundef nonnull align 8 dereferenceable(72) %i.d), !dbg !25479
  %i.e = load i64, ptr %i.b, align 8, !dbg !25480, !range !168, !noalias !25470, !noundef !13
  %i.f = trunc nuw i64 %i.e to i1, !dbg !25482
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !25482
  %i.h = load ptr, ptr %i.g, align 8, !dbg !25482, !noalias !25470
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !25482
  %i.j = load ptr, ptr %i.i, align 8, !dbg !25482, !noalias !25470
  %.sroa.0.0.i = select i1 %i.f, ptr %i.h, ptr null, !dbg !25482 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !25483, !noalias !25470
  %.not.not = icmp eq ptr %.sroa.0.0.i, null, !dbg !25484
  %spec.select = select i1 %.not.not, ptr undef, ptr %i.j, !dbg !25487
  %i.k = insertvalue { ptr, ptr } poison, ptr %.sroa.0.0.i, 0, !dbg !25488
  %i.l = insertvalue { ptr, ptr } %i.k, ptr %spec.select, 1, !dbg !25489
  ret { ptr, ptr } %i.l, !dbg !25489
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @_RNvXNtNtCscgRAwXFJnXP_4core4iter8adaptersINtB2_12GenericShuntINtNtB2_3map3MapINtNtNtB6_5slice4iter4IterNtNtCsaRr8xKSRVhT_9sqlparser3ast4ExprENCNvMs1_NtCshquuC4dCYVj_10polars_sql7contextNtB2n_10SQLContext9get_tables1_0EINtNtB6_6result6ResultNtNtB6_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEENtNtNtB4_6traits8iterator8Iterator9size_hintB2p_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(32) %1) unnamed_addr #6 !dbg !25490 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24, !dbg !25491
  %i.b = load ptr, ptr %i.a, align 8, !dbg !25491, !nonnull !13, !align !1076, !noundef !13
  %i.c = load i64, ptr %i.b, align 8, !dbg !25492, !range !14337, !noundef !13
  %.not = icmp eq i64 %i.c, 18, !dbg !25492
  br i1 %.not, label %bb.b, label %bb.c, !dbg !25491

bb.b:                                             ; preds = %bb.a
  %.val = load ptr, ptr %1, align 8, !dbg !25497, !nonnull !13, !noundef !13
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !25497
  %.val1 = load ptr, ptr %i.d, align 8, !dbg !25497, !nonnull !13, !noundef !13
  %i.e = ptrtoint ptr %.val1 to i64, !dbg !25498
  %i.f = ptrtoint ptr %.val to i64, !dbg !25498
  %i.g = sub nuw i64 %i.e, %i.f, !dbg !25498
  %i.h = udiv exact i64 %i.g, 328, !dbg !25498
  br label %bb.c, !dbg !25505

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sink = phi i64 [ %i.h, %bb.b ], [ 0, %bb.a ], !dbg !25506
  store <2 x i64> <i64 0, i64 1>, ptr %0, align 8, !dbg !25506
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !25506
  store i64 %.sink, ptr %i.i, align 8, !dbg !25506
  ret void, !dbg !25507
}

; Function Attrs: nonlazybind optsize uwtable
define void @_RNvXNtNtCscgRAwXFJnXP_4core4iter8adaptersINtB2_12GenericShuntINtNtB2_3map3MapINtNtNtB6_5slice4iter4IterNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprENCNvMs1_NtCshquuC4dCYVj_10polars_sql7contextNtB2x_10SQLContext14execute_selects7_0EINtNtB6_6result6ResultNtNtB6_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEENtNtNtB4_6traits8iterator8Iterator4nextB2z_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([80 x i8]) align 16 captures(none) dereferenceable(80) initializes((0, 1)) %0, ptr noalias noundef align 8 dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !25508 {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [80 x i8], align 16               ; 6 uses
  %.sroa.6 = alloca [79 x i8], align 1            ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6), !dbg !25509
  tail call void @llvm.experimental.noalias.scope.decl(metadata !25510), !dbg !25513
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !25516, !noalias !25518
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24, !dbg !25520
  %i.d = load ptr, ptr %i.c, align 8, !dbg !25520, !alias.scope !25510, !noalias !25521, !nonnull !13, !align !1076, !noundef !13
  call void @_RINvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprENCNvMs1_NtCshquuC4dCYVj_10polars_sql7contextNtB2h_10SQLContext14execute_selects7_0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvXB8_INtB8_12GenericShuntBN_INtNtBc_6result6ResultNtNtBc_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEB3u_8try_folduNCINvNvB3u_12try_for_each4callNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5field5FieldINtNtNtBc_3ops12control_flow11ControlFlowB6W_ENcNtB7P_5Break0E0B7P_E0IB7Q_B7P_EEB2j_(ptr noalias noundef nonnull sret([80 x i8]) align 16 captures(address) dereferenceable(80) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(32) %1, ptr noalias noundef nonnull %i.a, ptr noalias noundef nonnull align 8 dereferenceable(72) %i.d), !dbg !25522, !noalias !25521
  %i.e = load i8, ptr %i.b, align 16, !dbg !25523, !range !17665, !noalias !25518, !noundef !13 ; 3 uses
  %.not.i = icmp eq i8 %i.e, 32, !dbg !25523
  br i1 %.not.i, label %_RINvXNtNtCscgRAwXFJnXP_4core4iter8adaptersINtB3_12GenericShuntINtNtB3_3map3MapINtNtNtB7_5slice4iter4IterNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprENCNvMs1_NtCshquuC4dCYVj_10polars_sql7contextNtB2y_10SQLContext14execute_selects7_0EINtNtB7_6result6ResultNtNtB7_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEENtNtNtB5_6traits8iterator8Iterator8try_folduNCINvNvB5h_12try_for_each4callNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5field5FieldINtNtNtB7_3ops12control_flow11ControlFlowB6t_ENcNtB7m_5Break0E0B7m_EB2A_.exit.thread, label %_RINvXNtNtCscgRAwXFJnXP_4core4iter8adaptersINtB3_12GenericShuntINtNtB3_3map3MapINtNtNtB7_5slice4iter4IterNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprENCNvMs1_NtCshquuC4dCYVj_10polars_sql7contextNtB2y_10SQLContext14execute_selects7_0EINtNtB7_6result6ResultNtNtB7_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEENtNtNtB5_6traits8iterator8Iterator8try_folduNCINvNvB5h_12try_for_each4callNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5field5FieldINtNtNtB7_3ops12control_flow11ControlFlowB6t_ENcNtB7m_5Break0E0B7m_EB2A_.exit, !dbg !25525

_RINvXNtNtCscgRAwXFJnXP_4core4iter8adaptersINtB3_12GenericShuntINtNtB3_3map3MapINtNtNtB7_5slice4iter4IterNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprENCNvMs1_NtCshquuC4dCYVj_10polars_sql7contextNtB2y_10SQLContext14execute_selects7_0EINtNtB7_6result6ResultNtNtB7_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEENtNtNtB5_6traits8iterator8Iterator8try_folduNCINvNvB5h_12try_for_each4callNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5field5FieldINtNtNtB7_3ops12control_flow11ControlFlowB6t_ENcNtB7m_5Break0E0B7m_EB2A_.exit.thread: ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !25526, !noalias !25518
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtB4_3ops12control_flow11ControlFlowNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5field5FieldEECshquuC4dCYVj_10polars_sql.exit, !dbg !25527

_RINvXNtNtCscgRAwXFJnXP_4core4iter8adaptersINtB3_12GenericShuntINtNtB3_3map3MapINtNtNtB7_5slice4iter4IterNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprENCNvMs1_NtCshquuC4dCYVj_10polars_sql7contextNtB2y_10SQLContext14execute_selects7_0EINtNtB7_6result6ResultNtNtB7_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEENtNtNtB5_6traits8iterator8Iterator8try_folduNCINvNvB5h_12try_for_each4callNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5field5FieldINtNtNtB7_3ops12control_flow11ControlFlowB6t_ENcNtB7m_5Break0E0B7m_EB2A_.exit: ; preds = %bb.a
  %.sroa.6.0..sroa_idx7 = getelementptr inbounds nuw i8, ptr %i.b, i64 1, !dbg !25530
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(79) %.sroa.6, ptr noundef nonnull align 1 dereferenceable(79) %.sroa.6.0..sroa_idx7, i64 79, i1 false), !dbg !25530, !noalias !25510
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !25526, !noalias !25518
  %.not = icmp eq i8 %i.e, 31, !dbg !25531
  br i1 %.not, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtB4_3ops12control_flow11ControlFlowNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5field5FieldEECshquuC4dCYVj_10polars_sql.exit, label %bb.b, !dbg !25527

bb.b:                                             ; preds = %_RINvXNtNtCscgRAwXFJnXP_4core4iter8adaptersINtB3_12GenericShuntINtNtB3_3map3MapINtNtNtB7_5slice4iter4IterNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprENCNvMs1_NtCshquuC4dCYVj_10polars_sql7contextNtB2y_10SQLContext14execute_selects7_0EINtNtB7_6result6ResultNtNtB7_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEENtNtNtB5_6traits8iterator8Iterator8try_folduNCINvNvB5h_12try_for_each4callNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5field5FieldINtNtNtB7_3ops12control_flow11ControlFlowB6t_ENcNtB7m_5Break0E0B7m_EB2A_.exit
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1, !dbg !25532
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(79) %.sroa.5.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(79) %.sroa.6, i64 79, i1 false), !dbg !25534
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtB4_3ops12control_flow11ControlFlowNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5field5FieldEECshquuC4dCYVj_10polars_sql.exit, !dbg !25535

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtB4_3ops12control_flow11ControlFlowNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5field5FieldEECshquuC4dCYVj_10polars_sql.exit: ; preds = %_RINvXNtNtCscgRAwXFJnXP_4core4iter8adaptersINtB3_12GenericShuntINtNtB3_3map3MapINtNtNtB7_5slice4iter4IterNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprENCNvMs1_NtCshquuC4dCYVj_10polars_sql7contextNtB2y_10SQLContext14execute_selects7_0EINtNtB7_6result6ResultNtNtB7_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEENtNtNtB5_6traits8iterator8Iterator8try_folduNCINvNvB5h_12try_for_each4callNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5field5FieldINtNtNtB7_3ops12control_flow11ControlFlowB6t_ENcNtB7m_5Break0E0B7m_EB2A_.exit, %_RINvXNtNtCscgRAwXFJnXP_4core4iter8adaptersINtB3_12GenericShuntINtNtB3_3map3MapINtNtNtB7_5slice4iter4IterNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprENCNvMs1_NtCshquuC4dCYVj_10polars_sql7contextNtB2y_10SQLContext14execute_selects7_0EINtNtB7_6result6ResultNtNtB7_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEENtNtNtB5_6traits8iterator8Iterator8try_folduNCINvNvB5h_12try_for_each4callNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5field5FieldINtNtNtB7_3ops12control_flow11ControlFlowB6t_ENcNtB7m_5Break0E0B7m_EB2A_.exit.thread, %bb.b
  %.sink = phi i8 [ %i.e, %bb.b ], [ 31, %_RINvXNtNtCscgRAwXFJnXP_4core4iter8adaptersINtB3_12GenericShuntINtNtB3_3map3MapINtNtNtB7_5slice4iter4IterNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprENCNvMs1_NtCshquuC4dCYVj_10polars_sql7contextNtB2y_10SQLContext14execute_selects7_0EINtNtB7_6result6ResultNtNtB7_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEENtNtNtB5_6traits8iterator8Iterator8try_folduNCINvNvB5h_12try_for_each4callNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5field5FieldINtNtNtB7_3ops12control_flow11ControlFlowB6t_ENcNtB7m_5Break0E0B7m_EB2A_.exit.thread ], [ 31, %_RINvXNtNtCscgRAwXFJnXP_4core4iter8adaptersINtB3_12GenericShuntINtNtB3_3map3MapINtNtNtB7_5slice4iter4IterNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprENCNvMs1_NtCshquuC4dCYVj_10polars_sql7contextNtB2y_10SQLContext14execute_selects7_0EINtNtB7_6result6ResultNtNtB7_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEENtNtNtB5_6traits8iterator8Iterator8try_folduNCINvNvB5h_12try_for_each4callNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5field5FieldINtNtNtB7_3ops12control_flow11ControlFlowB6t_ENcNtB7m_5Break0E0B7m_EB2A_.exit ]
  store i8 %.sink, ptr %0, align 16, !dbg !25536
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6), !dbg !25537
  ret void, !dbg !25538
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @_RNvXNtNtCscgRAwXFJnXP_4core4iter8adaptersINtB2_12GenericShuntINtNtB2_3map3MapINtNtNtB6_5slice4iter4IterNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprENCNvMs1_NtCshquuC4dCYVj_10polars_sql7contextNtB2x_10SQLContext14execute_selects7_0EINtNtB6_6result6ResultNtNtB6_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEENtNtNtB4_6traits8iterator8Iterator9size_hintB2z_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(32) %1) unnamed_addr #6 !dbg !25539 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24, !dbg !25540
  %i.b = load ptr, ptr %i.a, align 8, !dbg !25540, !nonnull !13, !align !1076, !noundef !13
  %i.c = load i64, ptr %i.b, align 8, !dbg !25541, !range !14337, !noundef !13
  %.not = icmp eq i64 %i.c, 18, !dbg !25541
  br i1 %.not, label %bb.b, label %bb.c, !dbg !25540

bb.b:                                             ; preds = %bb.a
  %.val = load ptr, ptr %1, align 8, !dbg !25546, !nonnull !13, !noundef !13
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !25546
  %.val1 = load ptr, ptr %i.d, align 8, !dbg !25546, !nonnull !13, !noundef !13
  %i.e = ptrtoint ptr %.val1 to i64, !dbg !25547
  %i.f = ptrtoint ptr %.val to i64, !dbg !25547
  %i.g = sub nuw i64 %i.e, %i.f, !dbg !25547
  %i.h = udiv exact i64 %i.g, 144, !dbg !25547
  br label %bb.c, !dbg !25554

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sink = phi i64 [ %i.h, %bb.b ], [ 0, %bb.a ], !dbg !25555
  store <2 x i64> <i64 0, i64 1>, ptr %0, align 8, !dbg !25555
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !25555
  store i64 %.sink, ptr %i.i, align 8, !dbg !25555
  ret void, !dbg !25556
}

; Function Attrs: nonlazybind optsize uwtable
define void @_RNvXNtNtCscgRAwXFJnXP_4core4iter8adaptersINtB2_12GenericShuntINtNtB2_3map3MapINtNtNtCse4dvU5uQ85g_8indexmap3map4iter4IterNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeENCNvNtCshquuC4dCYVj_10polars_sql8sql_expr27resolve_compound_identifiers1_0EINtNtB6_6result6ResultNtNtB6_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEENtNtNtB4_6traits8iterator8Iterator4nextB3N_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([144 x i8]) align 16 captures(none) dereferenceable(144) initializes((112, 120)) %0, ptr noalias noundef align 8 dereferenceable(40) %1) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !25557 {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [144 x i8], align 16              ; 7 uses
  %.sroa.0 = alloca [112 x i8], align 16          ; 4 uses
  %.sroa.6 = alloca [24 x i8], align 8            ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0), !dbg !25558
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6), !dbg !25558
  tail call void @llvm.experimental.noalias.scope.decl(metadata !25559), !dbg !25562
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !25565, !noalias !25567
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !25569
  %i.d = load ptr, ptr %i.c, align 8, !dbg !25569, !alias.scope !25559, !noalias !25570, !nonnull !13, !align !1076, !noundef !13
  call void @_RINvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB6_3MapINtNtNtCse4dvU5uQ85g_8indexmap3map4iter4IterNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeENCNvNtCshquuC4dCYVj_10polars_sql8sql_expr27resolve_compound_identifiers1_0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvXB8_INtB8_12GenericShuntBN_INtNtBc_6result6ResultNtNtBc_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEB4E_8try_folduNCINvNvB4E_12try_for_each4callNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprINtNtNtBc_3ops12control_flow11ControlFlowB86_ENcNtB8R_5Break0E0B8R_E0IB8S_B8R_EEB3x_(ptr noalias noundef nonnull sret([144 x i8]) align 16 captures(address) dereferenceable(144) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(40) %1, ptr noalias noundef nonnull %i.a, ptr noalias noundef nonnull align 8 dereferenceable(72) %i.d), !dbg !25571, !noalias !25570
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 112, !dbg !25572
  %i.f = load i64, ptr %i.e, align 16, !dbg !25572, !range !1047, !noalias !25567, !noundef !13 ; 3 uses
  %.not.i = icmp eq i64 %i.f, -9223372036854775779, !dbg !25572
  br i1 %.not.i, label %_RINvXNtNtCscgRAwXFJnXP_4core4iter8adaptersINtB3_12GenericShuntINtNtB3_3map3MapINtNtNtCse4dvU5uQ85g_8indexmap3map4iter4IterNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeENCNvNtCshquuC4dCYVj_10polars_sql8sql_expr27resolve_compound_identifiers1_0EINtNtB7_6result6ResultNtNtB7_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEENtNtNtB5_6traits8iterator8Iterator8try_folduNCINvNvB6r_12try_for_each4callNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprINtNtNtB7_3ops12control_flow11ControlFlowB7D_ENcNtB8o_5Break0E0B8o_EB3O_.exit.thread, label %_RINvXNtNtCscgRAwXFJnXP_4core4iter8adaptersINtB3_12GenericShuntINtNtB3_3map3MapINtNtNtCse4dvU5uQ85g_8indexmap3map4iter4IterNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeENCNvNtCshquuC4dCYVj_10polars_sql8sql_expr27resolve_compound_identifiers1_0EINtNtB7_6result6ResultNtNtB7_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEENtNtNtB5_6traits8iterator8Iterator8try_folduNCINvNvB6r_12try_for_each4callNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprINtNtNtB7_3ops12control_flow11ControlFlowB7D_ENcNtB8o_5Break0E0B8o_EB3O_.exit, !dbg !25574

_RINvXNtNtCscgRAwXFJnXP_4core4iter8adaptersINtB3_12GenericShuntINtNtB3_3map3MapINtNtNtCse4dvU5uQ85g_8indexmap3map4iter4IterNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeENCNvNtCshquuC4dCYVj_10polars_sql8sql_expr27resolve_compound_identifiers1_0EINtNtB7_6result6ResultNtNtB7_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEENtNtNtB5_6traits8iterator8Iterator8try_folduNCINvNvB6r_12try_for_each4callNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprINtNtNtB7_3ops12control_flow11ControlFlowB7D_ENcNtB8o_5Break0E0B8o_EB3O_.exit.thread: ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !25575, !noalias !25567
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtB4_3ops12control_flow11ControlFlowNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprEECshquuC4dCYVj_10polars_sql.exit, !dbg !25576

_RINvXNtNtCscgRAwXFJnXP_4core4iter8adaptersINtB3_12GenericShuntINtNtB3_3map3MapINtNtNtCse4dvU5uQ85g_8indexmap3map4iter4IterNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeENCNvNtCshquuC4dCYVj_10polars_sql8sql_expr27resolve_compound_identifiers1_0EINtNtB7_6result6ResultNtNtB7_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEENtNtNtB5_6traits8iterator8Iterator8try_folduNCINvNvB6r_12try_for_each4callNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprINtNtNtB7_3ops12control_flow11ControlFlowB7D_ENcNtB8o_5Break0E0B8o_EB3O_.exit: ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(112) %.sroa.0, ptr noundef nonnull align 16 dereferenceable(112) %i.b, i64 112, i1 false), !dbg !25579, !noalias !25559
  %.sroa.6.0..sroa_idx4 = getelementptr inbounds nuw i8, ptr %i.b, i64 120, !dbg !25579
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6.0..sroa_idx4, i64 24, i1 false), !dbg !25579, !noalias !25559
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !25575, !noalias !25567
  %.not = icmp eq i64 %i.f, -9223372036854775780, !dbg !25580
  br i1 %.not, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtB4_3ops12control_flow11ControlFlowNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprEECshquuC4dCYVj_10polars_sql.exit, label %bb.b, !dbg !25576

bb.b:                                             ; preds = %_RINvXNtNtCscgRAwXFJnXP_4core4iter8adaptersINtB3_12GenericShuntINtNtB3_3map3MapINtNtNtCse4dvU5uQ85g_8indexmap3map4iter4IterNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeENCNvNtCshquuC4dCYVj_10polars_sql8sql_expr27resolve_compound_identifiers1_0EINtNtB7_6result6ResultNtNtB7_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEENtNtNtB5_6traits8iterator8Iterator8try_folduNCINvNvB6r_12try_for_each4callNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprINtNtNtB7_3ops12control_flow11ControlFlowB7D_ENcNtB8o_5Break0E0B8o_EB3O_.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(112) %0, ptr noundef nonnull align 16 dereferenceable(112) %.sroa.0, i64 112, i1 false), !dbg !25581
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 120, !dbg !25582
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6, i64 24, i1 false), !dbg !25581
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtB4_3ops12control_flow11ControlFlowNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprEECshquuC4dCYVj_10polars_sql.exit, !dbg !25584

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtB4_3ops12control_flow11ControlFlowNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprEECshquuC4dCYVj_10polars_sql.exit: ; preds = %_RINvXNtNtCscgRAwXFJnXP_4core4iter8adaptersINtB3_12GenericShuntINtNtB3_3map3MapINtNtNtCse4dvU5uQ85g_8indexmap3map4iter4IterNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeENCNvNtCshquuC4dCYVj_10polars_sql8sql_expr27resolve_compound_identifiers1_0EINtNtB7_6result6ResultNtNtB7_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEENtNtNtB5_6traits8iterator8Iterator8try_folduNCINvNvB6r_12try_for_each4callNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprINtNtNtB7_3ops12control_flow11ControlFlowB7D_ENcNtB8o_5Break0E0B8o_EB3O_.exit, %_RINvXNtNtCscgRAwXFJnXP_4core4iter8adaptersINtB3_12GenericShuntINtNtB3_3map3MapINtNtNtCse4dvU5uQ85g_8indexmap3map4iter4IterNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeENCNvNtCshquuC4dCYVj_10polars_sql8sql_expr27resolve_compound_identifiers1_0EINtNtB7_6result6ResultNtNtB7_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEENtNtNtB5_6traits8iterator8Iterator8try_folduNCINvNvB6r_12try_for_each4callNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprINtNtNtB7_3ops12control_flow11ControlFlowB7D_ENcNtB8o_5Break0E0B8o_EB3O_.exit.thread, %bb.b
  %.sink = phi i64 [ %i.f, %bb.b ], [ -9223372036854775780, %_RINvXNtNtCscgRAwXFJnXP_4core4iter8adaptersINtB3_12GenericShuntINtNtB3_3map3MapINtNtNtCse4dvU5uQ85g_8indexmap3map4iter4IterNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeENCNvNtCshquuC4dCYVj_10polars_sql8sql_expr27resolve_compound_identifiers1_0EINtNtB7_6result6ResultNtNtB7_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEENtNtNtB5_6traits8iterator8Iterator8try_folduNCINvNvB6r_12try_for_each4callNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprINtNtNtB7_3ops12control_flow11ControlFlowB7D_ENcNtB8o_5Break0E0B8o_EB3O_.exit.thread ], [ -9223372036854775780, %_RINvXNtNtCscgRAwXFJnXP_4core4iter8adaptersINtB3_12GenericShuntINtNtB3_3map3MapINtNtNtCse4dvU5uQ85g_8indexmap3map4iter4IterNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeENCNvNtCshquuC4dCYVj_10polars_sql8sql_expr27resolve_compound_identifiers1_0EINtNtB7_6result6ResultNtNtB7_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEENtNtNtB5_6traits8iterator8Iterator8try_folduNCINvNvB6r_12try_for_each4callNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprINtNtNtB7_3ops12control_flow11ControlFlowB7D_ENcNtB8o_5Break0E0B8o_EB3O_.exit ]
  %.sroa.46.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 112, !dbg !25585
  store i64 %.sink, ptr %.sroa.46.0..sroa_idx, align 16, !dbg !25585
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0), !dbg !25586
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6), !dbg !25586
  ret void, !dbg !25587
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @_RNvXNtNtCscgRAwXFJnXP_4core4iter8adaptersINtB2_12GenericShuntINtNtB2_3map3MapINtNtNtCse4dvU5uQ85g_8indexmap3map4iter4IterNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeENCNvNtCshquuC4dCYVj_10polars_sql8sql_expr27resolve_compound_identifiers1_0EINtNtB6_6result6ResultNtNtB6_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEENtNtNtB4_6traits8iterator8Iterator9size_hintB3N_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(40) %1) unnamed_addr #6 !dbg !25588 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !25589
  %i.b = load ptr, ptr %i.a, align 8, !dbg !25589, !nonnull !13, !align !1076, !noundef !13
  %i.c = load i64, ptr %i.b, align 8, !dbg !25590, !range !14337, !noundef !13
  %.not = icmp eq i64 %i.c, 18, !dbg !25590
  br i1 %.not, label %bb.b, label %bb.c, !dbg !25589

bb.b:                                             ; preds = %bb.a
  %.val = load ptr, ptr %1, align 8, !dbg !25595, !alias.scope !25596, !noalias !25599, !nonnull !13, !noundef !13
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !25595
  %.val1 = load ptr, ptr %i.d, align 8, !dbg !25595, !alias.scope !25596, !noalias !25599, !nonnull !13, !noundef !13
  %i.e = ptrtoint ptr %.val1 to i64, !dbg !25601
  %i.f = ptrtoint ptr %.val to i64, !dbg !25601
  %i.g = sub nuw i64 %i.e, %i.f, !dbg !25601
  %i.h = udiv exact i64 %i.g, 80, !dbg !25601
  br label %bb.c, !dbg !25618

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sink = phi i64 [ %i.h, %bb.b ], [ 0, %bb.a ], !dbg !25619
  store <2 x i64> <i64 0, i64 1>, ptr %0, align 8, !dbg !25619
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !25619
  store i64 %.sink, ptr %i.i, align 8, !dbg !25619
  ret void, !dbg !25620
}

; Function Attrs: nonlazybind optsize uwtable
define void @_RNvXNtNtCscgRAwXFJnXP_4core4iter8adaptersINtB2_12GenericShuntINtNtB2_3map3MapINtNtNtCsgZ49sUHp3tW_5alloc3vec9into_iter8IntoIterRNtNtCsaRr8xKSRVhT_9sqlparser3ast15FunctionArgExprENCNvMs0_NtCshquuC4dCYVj_10polars_sql9functionsNtB2Y_18SQLFunctionVisitor9visit_udf0EINtNtB6_6result6ResultNtNtB6_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEENtNtNtB4_6traits8iterator8Iterator4nextB30_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([144 x i8]) align 16 captures(none) dereferenceable(144) initializes((112, 120)) %0, ptr noalias noundef align 8 dereferenceable(56) %1) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !25621 {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [144 x i8], align 16              ; 7 uses
  %.sroa.0 = alloca [112 x i8], align 16          ; 4 uses
  %.sroa.6 = alloca [24 x i8], align 8            ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0), !dbg !25622
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6), !dbg !25622
  tail call void @llvm.experimental.noalias.scope.decl(metadata !25623), !dbg !25626
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !25629, !noalias !25631
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 48, !dbg !25633
  %i.d = load ptr, ptr %i.c, align 8, !dbg !25633, !alias.scope !25623, !noalias !25634, !nonnull !13, !align !1076, !noundef !13
  call void @_RINvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB6_3MapINtNtNtCsgZ49sUHp3tW_5alloc3vec9into_iter8IntoIterRNtNtCsaRr8xKSRVhT_9sqlparser3ast15FunctionArgExprENCNvMs0_NtCshquuC4dCYVj_10polars_sql9functionsNtB2I_18SQLFunctionVisitor9visit_udf0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvXB8_INtB8_12GenericShuntBN_INtNtBc_6result6ResultNtNtBc_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEB3W_8try_folduNCINvNvB3W_12try_for_each4callNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprINtNtNtBc_3ops12control_flow11ControlFlowB7o_ENcNtB89_5Break0E0B89_E0IB8a_B89_EEB2K_(ptr noalias noundef nonnull sret([144 x i8]) align 16 captures(address) dereferenceable(144) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(56) %1, ptr noalias noundef nonnull %i.a, ptr noalias noundef nonnull align 8 dereferenceable(72) %i.d), !dbg !25635, !noalias !25634
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 112, !dbg !25636
  %i.f = load i64, ptr %i.e, align 16, !dbg !25636, !range !1047, !noalias !25631, !noundef !13 ; 3 uses
  %.not.i = icmp eq i64 %i.f, -9223372036854775779, !dbg !25636
  br i1 %.not.i, label %_RINvXNtNtCscgRAwXFJnXP_4core4iter8adaptersINtB3_12GenericShuntINtNtB3_3map3MapINtNtNtCsgZ49sUHp3tW_5alloc3vec9into_iter8IntoIterRNtNtCsaRr8xKSRVhT_9sqlparser3ast15FunctionArgExprENCNvMs0_NtCshquuC4dCYVj_10polars_sql9functionsNtB2Z_18SQLFunctionVisitor9visit_udf0EINtNtB7_6result6ResultNtNtB7_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEENtNtNtB5_6traits8iterator8Iterator8try_folduNCINvNvB5J_12try_for_each4callNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprINtNtNtB7_3ops12control_flow11ControlFlowB6V_ENcNtB7G_5Break0E0B7G_EB31_.exit.thread, label %_RINvXNtNtCscgRAwXFJnXP_4core4iter8adaptersINtB3_12GenericShuntINtNtB3_3map3MapINtNtNtCsgZ49sUHp3tW_5alloc3vec9into_iter8IntoIterRNtNtCsaRr8xKSRVhT_9sqlparser3ast15FunctionArgExprENCNvMs0_NtCshquuC4dCYVj_10polars_sql9functionsNtB2Z_18SQLFunctionVisitor9visit_udf0EINtNtB7_6result6ResultNtNtB7_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEENtNtNtB5_6traits8iterator8Iterator8try_folduNCINvNvB5J_12try_for_each4callNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprINtNtNtB7_3ops12control_flow11ControlFlowB6V_ENcNtB7G_5Break0E0B7G_EB31_.exit, !dbg !25638

_RINvXNtNtCscgRAwXFJnXP_4core4iter8adaptersINtB3_12GenericShuntINtNtB3_3map3MapINtNtNtCsgZ49sUHp3tW_5alloc3vec9into_iter8IntoIterRNtNtCsaRr8xKSRVhT_9sqlparser3ast15FunctionArgExprENCNvMs0_NtCshquuC4dCYVj_10polars_sql9functionsNtB2Z_18SQLFunctionVisitor9visit_udf0EINtNtB7_6result6ResultNtNtB7_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEENtNtNtB5_6traits8iterator8Iterator8try_folduNCINvNvB5J_12try_for_each4callNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprINtNtNtB7_3ops12control_flow11ControlFlowB6V_ENcNtB7G_5Break0E0B7G_EB31_.exit.thread: ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !25639, !noalias !25631
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtB4_3ops12control_flow11ControlFlowNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprEECshquuC4dCYVj_10polars_sql.exit, !dbg !25640

_RINvXNtNtCscgRAwXFJnXP_4core4iter8adaptersINtB3_12GenericShuntINtNtB3_3map3MapINtNtNtCsgZ49sUHp3tW_5alloc3vec9into_iter8IntoIterRNtNtCsaRr8xKSRVhT_9sqlparser3ast15FunctionArgExprENCNvMs0_NtCshquuC4dCYVj_10polars_sql9functionsNtB2Z_18SQLFunctionVisitor9visit_udf0EINtNtB7_6result6ResultNtNtB7_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEENtNtNtB5_6traits8iterator8Iterator8try_folduNCINvNvB5J_12try_for_each4callNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprINtNtNtB7_3ops12control_flow11ControlFlowB6V_ENcNtB7G_5Break0E0B7G_EB31_.exit: ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(112) %.sroa.0, ptr noundef nonnull align 16 dereferenceable(112) %i.b, i64 112, i1 false), !dbg !25643, !noalias !25623
  %.sroa.6.0..sroa_idx4 = getelementptr inbounds nuw i8, ptr %i.b, i64 120, !dbg !25643
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6.0..sroa_idx4, i64 24, i1 false), !dbg !25643, !noalias !25623
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !25639, !noalias !25631
  %.not = icmp eq i64 %i.f, -9223372036854775780, !dbg !25644
  br i1 %.not, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtB4_3ops12control_flow11ControlFlowNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprEECshquuC4dCYVj_10polars_sql.exit, label %bb.b, !dbg !25640

bb.b:                                             ; preds = %_RINvXNtNtCscgRAwXFJnXP_4core4iter8adaptersINtB3_12GenericShuntINtNtB3_3map3MapINtNtNtCsgZ49sUHp3tW_5alloc3vec9into_iter8IntoIterRNtNtCsaRr8xKSRVhT_9sqlparser3ast15FunctionArgExprENCNvMs0_NtCshquuC4dCYVj_10polars_sql9functionsNtB2Z_18SQLFunctionVisitor9visit_udf0EINtNtB7_6result6ResultNtNtB7_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEENtNtNtB5_6traits8iterator8Iterator8try_folduNCINvNvB5J_12try_for_each4callNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprINtNtNtB7_3ops12control_flow11ControlFlowB6V_ENcNtB7G_5Break0E0B7G_EB31_.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(112) %0, ptr noundef nonnull align 16 dereferenceable(112) %.sroa.0, i64 112, i1 false), !dbg !25645
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 120, !dbg !25646
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6, i64 24, i1 false), !dbg !25645
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtB4_3ops12control_flow11ControlFlowNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprEECshquuC4dCYVj_10polars_sql.exit, !dbg !25648

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtB4_3ops12control_flow11ControlFlowNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprEECshquuC4dCYVj_10polars_sql.exit: ; preds = %_RINvXNtNtCscgRAwXFJnXP_4core4iter8adaptersINtB3_12GenericShuntINtNtB3_3map3MapINtNtNtCsgZ49sUHp3tW_5alloc3vec9into_iter8IntoIterRNtNtCsaRr8xKSRVhT_9sqlparser3ast15FunctionArgExprENCNvMs0_NtCshquuC4dCYVj_10polars_sql9functionsNtB2Z_18SQLFunctionVisitor9visit_udf0EINtNtB7_6result6ResultNtNtB7_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEENtNtNtB5_6traits8iterator8Iterator8try_folduNCINvNvB5J_12try_for_each4callNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprINtNtNtB7_3ops12control_flow11ControlFlowB6V_ENcNtB7G_5Break0E0B7G_EB31_.exit, %_RINvXNtNtCscgRAwXFJnXP_4core4iter8adaptersINtB3_12GenericShuntINtNtB3_3map3MapINtNtNtCsgZ49sUHp3tW_5alloc3vec9into_iter8IntoIterRNtNtCsaRr8xKSRVhT_9sqlparser3ast15FunctionArgExprENCNvMs0_NtCshquuC4dCYVj_10polars_sql9functionsNtB2Z_18SQLFunctionVisitor9visit_udf0EINtNtB7_6result6ResultNtNtB7_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEENtNtNtB5_6traits8iterator8Iterator8try_folduNCINvNvB5J_12try_for_each4callNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprINtNtNtB7_3ops12control_flow11ControlFlowB6V_ENcNtB7G_5Break0E0B7G_EB31_.exit.thread, %bb.b
  %.sink = phi i64 [ %i.f, %bb.b ], [ -9223372036854775780, %_RINvXNtNtCscgRAwXFJnXP_4core4iter8adaptersINtB3_12GenericShuntINtNtB3_3map3MapINtNtNtCsgZ49sUHp3tW_5alloc3vec9into_iter8IntoIterRNtNtCsaRr8xKSRVhT_9sqlparser3ast15FunctionArgExprENCNvMs0_NtCshquuC4dCYVj_10polars_sql9functionsNtB2Z_18SQLFunctionVisitor9visit_udf0EINtNtB7_6result6ResultNtNtB7_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEENtNtNtB5_6traits8iterator8Iterator8try_folduNCINvNvB5J_12try_for_each4callNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprINtNtNtB7_3ops12control_flow11ControlFlowB6V_ENcNtB7G_5Break0E0B7G_EB31_.exit.thread ], [ -9223372036854775780, %_RINvXNtNtCscgRAwXFJnXP_4core4iter8adaptersINtB3_12GenericShuntINtNtB3_3map3MapINtNtNtCsgZ49sUHp3tW_5alloc3vec9into_iter8IntoIterRNtNtCsaRr8xKSRVhT_9sqlparser3ast15FunctionArgExprENCNvMs0_NtCshquuC4dCYVj_10polars_sql9functionsNtB2Z_18SQLFunctionVisitor9visit_udf0EINtNtB7_6result6ResultNtNtB7_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEENtNtNtB5_6traits8iterator8Iterator8try_folduNCINvNvB5J_12try_for_each4callNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprINtNtNtB7_3ops12control_flow11ControlFlowB6V_ENcNtB7G_5Break0E0B7G_EB31_.exit ]
  %.sroa.46.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 112, !dbg !25649
  store i64 %.sink, ptr %.sroa.46.0..sroa_idx, align 16, !dbg !25649
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0), !dbg !25650
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6), !dbg !25650
  ret void, !dbg !25651
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @_RNvXNtNtCscgRAwXFJnXP_4core4iter8adaptersINtB2_12GenericShuntINtNtB2_3map3MapINtNtNtCsgZ49sUHp3tW_5alloc3vec9into_iter8IntoIterRNtNtCsaRr8xKSRVhT_9sqlparser3ast15FunctionArgExprENCNvMs0_NtCshquuC4dCYVj_10polars_sql9functionsNtB2Y_18SQLFunctionVisitor9visit_udf0EINtNtB6_6result6ResultNtNtB6_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEENtNtNtB4_6traits8iterator8Iterator9size_hintB30_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(56) %1) unnamed_addr #6 !dbg !25652 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 48, !dbg !25653
  %i.b = load ptr, ptr %i.a, align 8, !dbg !25653, !nonnull !13, !align !1076, !noundef !13
  %i.c = load i64, ptr %i.b, align 8, !dbg !25654, !range !14337, !noundef !13
  %.not = icmp eq i64 %i.c, 18, !dbg !25654
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !25653
  %.val = load ptr, ptr %i.d, align 8, !dbg !25653, !nonnull !13
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24, !dbg !25653
  %.val1 = load ptr, ptr %i.e, align 8, !dbg !25653, !nonnull !13
  %i.f = ptrtoint ptr %.val1 to i64, !dbg !25653
  %i.g = ptrtoint ptr %.val to i64, !dbg !25653
  %i.h = sub nuw i64 %i.f, %i.g, !dbg !25653
  %i.i = lshr exact i64 %i.h, 3, !dbg !25653
  %.sink = select i1 %.not, i64 %i.i, i64 0, !dbg !25653
  store <2 x i64> <i64 0, i64 1>, ptr %0, align 8, !dbg !25659
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !25659
  store i64 %.sink, ptr %i.j, align 8, !dbg !25659
  ret void, !dbg !25660
}

; Function Attrs: inlinehint nonlazybind optsize uwtable
define internal fastcc void @_RNvXNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans5aexpr13function_expr10row_encodeNtB2_18RowEncodingVariantNtNtCscgRAwXFJnXP_4core5clone5Clone5clone(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(56) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1) unnamed_addr #5 personality ptr @rust_eh_personality !dbg !25661 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %.sroa.5 = alloca [16 x i8], align 8            ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 7 uses
  %i.c = load i64, ptr %1, align 8, !dbg !25668, !range !5918, !noundef !13 ; 2 uses
  %.not = icmp eq i64 %i.c, -9223372036854775807, !dbg !25668
  br i1 %.not, label %bb.c, label %bb.b, !dbg !25668

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !25669
  %.not4 = icmp eq i64 %i.c, -9223372036854775808, !dbg !25671
  br i1 %.not4, label %bb.f, label %bb.e, !dbg !25674

bb.c:                                             ; preds = %bb.a
  store i64 -9223372036854775807, ptr %0, align 8, !dbg !25668
  br label %bb.d, !dbg !25668

bb.d:                                             ; preds = %bb.i, %bb.c
  ret void, !dbg !25675

bb.e:                                             ; preds = %bb.b
  call void @_RNvXsa_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecbENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneCshquuC4dCYVj_10polars_sql(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1), !dbg !25676
  br label %bb.g, !dbg !25678

bb.f:                                             ; preds = %bb.b
  store i64 -9223372036854775808, ptr %i.b, align 8, !dbg !25679
  br label %bb.g, !dbg !25679

bb.g:                                             ; preds = %bb.f, %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5), !dbg !25680
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24, !dbg !25681 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !dbg !25681, !range !793, !noundef !13
  %.not5 = icmp eq i64 %i.e, -9223372036854775808, !dbg !25681
  br i1 %.not5, label %bb.i, label %bb.h, !dbg !25682

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !25683
  invoke void @_RNvXsa_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecbENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneCshquuC4dCYVj_10polars_sql(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.d)
          to label %bb.l unwind label %bb.j, !dbg !25685

bb.i:                                             ; preds = %bb.g, %bb.l
  %.sroa.0.0 = phi i64 [ %.sroa.0.0.copyload1, %bb.l ], [ -9223372036854775808, %bb.g ], !dbg !25686
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 48, !dbg !25687
  %i.g = load i8, ptr %i.f, align 8, !dbg !25687, !range !16759, !noundef !13
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false), !dbg !25690
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !25690
  store i64 %.sroa.0.0, ptr %i.h, align 8, !dbg !25690
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !25690
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5, i64 16, i1 false), !dbg !25690
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 48, !dbg !25690
  store i8 %i.g, ptr %i.i, align 8, !dbg !25690
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5), !dbg !25691
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !25691
  br label %bb.d, !dbg !25692

bb.j:                                             ; preds = %bb.h
  %i.j = landingpad { ptr, i32 }
          cleanup
  %i.k = load i64, ptr %i.b, align 8, !dbg !25693, !range !793, !alias.scope !25695, !noundef !13
  %i.l = icmp eq i64 %i.k, -9223372036854775808, !dbg !25693
  br i1 %i.l, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc3vec3VecbEEECshquuC4dCYVj_10polars_sql.exit, label %bb.k, !dbg !25693

bb.k:                                             ; preds = %bb.j
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecbEECshquuC4dCYVj_10polars_sql(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc3vec3VecbEEECshquuC4dCYVj_10polars_sql.exit unwind label %bb.m, !dbg !25693

bb.l:                                             ; preds = %bb.h
  %.sroa.0.0.copyload1 = load i64, ptr %i.a, align 8, !dbg !25698
  %.sroa.5.0..sroa_idx2 = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !25698
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx2, i64 16, i1 false), !dbg !25698
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !25699
  br label %bb.i, !dbg !25700

bb.m:                                             ; preds = %bb.k
  %i.m = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #35, !dbg !25668
  unreachable, !dbg !25668

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc3vec3VecbEEECshquuC4dCYVj_10polars_sql.exit: ; preds = %bb.j, %bb.k
  resume { ptr, i32 } %i.j, !dbg !25668
}

; Function Attrs: inlinehint nonlazybind optsize uwtable
define internal fastcc void @_RNvXs0_NtNtNtCsfcROwRM8ZtH_11polars_plan3dsl13function_expr3catNtB5_19CategoricalFunctionNtNtCscgRAwXFJnXP_4core5clone5Clone5clone(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 16 captures(none) dereferenceable(64) %0, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(64) %1) unnamed_addr #5 !dbg !25701 {
bb.a:
  %i.a = load i8, ptr %1, align 16, !dbg !25706, !range !12779, !noundef !13 ; 5 uses
  switch i8 %i.a, label %default.unreachable1 [
    i8 0, label %bb.f
    i8 1, label %bb.f
    i8 2, label %bb.f
    i8 3, label %bb.b
    i8 4, label %bb.c
    i8 5, label %bb.d
    i8 6, label %bb.e
    i8 7, label %bb.f
  ], !dbg !25706

default.unreachable1:                             ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !25707
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !25708
  tail call void @_RNvXs4_NtCsgZ49sUHp3tW_5alloc6stringNtB5_6StringNtNtCscgRAwXFJnXP_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.b), !dbg !25710
  br label %bb.f, !dbg !25711

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !25712
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !25713
  tail call void @_RNvXs4_NtCsgZ49sUHp3tW_5alloc6stringNtB5_6StringNtNtCscgRAwXFJnXP_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.e, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.d), !dbg !25715
  br label %bb.f, !dbg !25711

bb.d:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !25716
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 24, !dbg !25718
  %i.h = load i64, ptr %i.g, align 8, !dbg !25718
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !25721
  %i.j = load <2 x i64>, ptr %i.f, align 8, !dbg !25716
  store <2 x i64> %i.j, ptr %i.i, align 8, !dbg !25721
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !25721
  store i64 %i.h, ptr %i.k, align 8, !dbg !25721
  br label %bb.f, !dbg !25711

bb.e:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !25722
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !25723
  tail call fastcc void @_RNvXs5_NtNtCsfcROwRM8ZtH_11polars_plan3dsl13datatype_exprNtB5_12DataTypeExprNtNtCscgRAwXFJnXP_4core5clone5Clone5clone(ptr noalias noundef align 16 captures(none) dereferenceable(48) %i.m, ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(48) %i.l) #41, !dbg !25725
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 1, !dbg !25726
  %i.o = load i8, ptr %i.n, align 1, !dbg !25726, !range !4069, !noundef !13
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 1, !dbg !25723
  store i8 %i.o, ptr %i.p, align 1, !dbg !25723
  br label %bb.f, !dbg !25711

bb.f:                                             ; preds = %bb.a, %bb.a, %bb.a, %bb.a, %bb.e, %bb.d, %bb.c, %bb.b
  %.sink = phi i8 [ %i.a, %bb.a ], [ 6, %bb.e ], [ 5, %bb.d ], [ 4, %bb.c ], [ 3, %bb.b ], [ %i.a, %bb.a ], [ %i.a, %bb.a ], [ %i.a, %bb.a ]
  store i8 %.sink, ptr %0, align 16, !dbg !25706
  ret void, !dbg !25727
}

; Function Attrs: inlinehint nounwind nonlazybind optsize memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define internal fastcc void @_RNvXs0_NtNtNtCsfcROwRM8ZtH_11polars_plan3dsl13function_expr4listNtB5_12ListFunctionNtNtCscgRAwXFJnXP_4core5clone5Clone5clone(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #7 !dbg !25728 {
bb.a:
  %i.a = load i64, ptr %1, align 8, !dbg !25732, !range !9196, !noundef !13 ; 4 uses
  %i.b = icmp ne i64 %i.a, 5, !dbg !25732
  tail call void @llvm.assume(i1 %i.b), !dbg !25732
  %i.c = add nsw i64 %i.a, -2, !dbg !25732
  %i.d = icmp samesign ugt i64 %i.a, 1, !dbg !25732
  %i.e = select i1 %i.d, i64 %i.c, i64 3, !dbg !25732
  switch i64 %i.e, label %bb.b [
    i64 0, label %bb.c
    i64 1, label %bb.d
    i64 2, label %bb.e
    i64 3, label %bb.f
    i64 4, label %bb.g
    i64 5, label %bb.h
    i64 6, label %bb.i
    i64 7, label %bb.j
    i64 8, label %bb.k
    i64 9, label %bb.l
    i64 10, label %bb.m
    i64 11, label %bb.n
    i64 12, label %bb.o
    i64 13, label %bb.p
    i64 14, label %bb.q
    i64 15, label %bb.r
    i64 16, label %bb.s
    i64 17, label %bb.t
    i64 18, label %bb.u
    i64 19, label %bb.v
    i64 20, label %bb.w
    i64 21, label %bb.x
    i64 22, label %bb.y
    i64 23, label %bb.z
    i64 24, label %bb.aa
    i64 25, label %bb.ab
  ], !dbg !25732

bb.b:                                             ; preds = %bb.a
  unreachable, !dbg !25733

bb.c:                                             ; preds = %bb.a
  store i64 2, ptr %0, align 8, !dbg !25732
  br label %bb.ac, !dbg !25732

bb.d:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !dbg !25735
  br label %bb.ac, !dbg !25737

bb.e:                                             ; preds = %bb.a
  store i64 4, ptr %0, align 8, !dbg !25732
  br label %bb.ac, !dbg !25732

end_hunk_2
begin_hunk_3_@_RNvXs_Cse4dvU5uQ85g_8indexmapINtB4_6BucketNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeENtNtCscgRAwXFJnXP_4core5clone5Clone10clone_fromCshquuC4dCYVj_10polars_sql:bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 48, !dbg !29390 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !29391), !dbg !29394
  tail call void @llvm.experimental.noalias.scope.decl(metadata !29395), !dbg !29394
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !29397
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 71, !dbg !29397
  %i.i = load i8, ptr %i.h, align 1, !dbg !29397, !range !150, !alias.scope !29411, !noalias !29414, !noundef !13
  %i.j = icmp eq i8 %i.i, -40, !dbg !29416
  br i1 %i.j, label %bb.b, label %bb.c, !dbg !29416

bb.b:                                             ; preds = %bb.a
  call void @_RNvNvXs1_NtCs7VARH73bmU_11compact_str4reprNtB7_4ReprNtNtCscgRAwXFJnXP_4core5clone5Clone5clone10clone_heap(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.g) #38, !dbg !29417, !noalias !29391
  br label %_RNvXsr_NtCs2mZqlW55729_12polars_utils6pl_strNtB5_10PlSmallStrNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit.i, !dbg !29417

bb.c:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull readonly align 16 dereferenceable(24) %i.g, i64 24, i1 false), !dbg !29418, !noalias !29391
  br label %_RNvXsr_NtCs2mZqlW55729_12polars_utils6pl_strNtB5_10PlSmallStrNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit.i, !dbg !29421

_RNvXsr_NtCs2mZqlW55729_12polars_utils6pl_strNtB5_10PlSmallStrNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit.i: ; preds = %bb.c, %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 71, !dbg !29422
  %i.l = load i8, ptr %i.k, align 1, !dbg !29422, !range !150, !alias.scope !29429, !noalias !29395, !noundef !13
  %i.m = icmp eq i8 %i.l, -40, !dbg !29438
  br i1 %i.m, label %bb.d, label %_RNvYNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNtNtCscgRAwXFJnXP_4core5clone5Clone10clone_fromCshquuC4dCYVj_10polars_sql.exit, !dbg !29438, !prof !161

bb.d:                                             ; preds = %_RNvXsr_NtCs2mZqlW55729_12polars_utils6pl_strNtB5_10PlSmallStrNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit.i
  invoke void @_RNvNvXs2_NtCs7VARH73bmU_11compact_str4reprNtB7_4ReprNtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4drop13outlined_drop(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %_RNvYNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNtNtCscgRAwXFJnXP_4core5clone5Clone10clone_fromCshquuC4dCYVj_10polars_sql.exit unwind label %bb.e, !dbg !29439

common.resume:                                    ; preds = %bb.f, %bb.e
  %common.resume.op = phi { ptr, i32 } [ %i.n, %bb.e ], [ %i.o, %bb.f ]
  resume { ptr, i32 } %common.resume.op, !dbg !29440

bb.e:                                             ; preds = %bb.d
  %i.n = landingpad { ptr, i32 }
          cleanup
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.f, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false), !dbg !29441, !noalias !29395
  br label %common.resume, !dbg !29442

_RNvYNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNtNtCscgRAwXFJnXP_4core5clone5Clone10clone_fromCshquuC4dCYVj_10polars_sql.exit: ; preds = %_RNvXsr_NtCs2mZqlW55729_12polars_utils6pl_strNtB5_10PlSmallStrNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit.i, %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.f, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false), !dbg !29441, !noalias !29395
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !29443
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !29444, !noalias !29447
  call fastcc void @_RNvXsk_NtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtypeNtB5_8DataTypeNtNtCscgRAwXFJnXP_4core5clone5Clone5clone(ptr noalias noundef align 16 captures(none) dereferenceable(48) %i.a, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(48) %1) #41, !dbg !29451, !noalias !29452
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeECshquuC4dCYVj_10polars_sql(ptr noalias noundef nonnull align 16 dereferenceable(48) %0)
          to label %_RNvYNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeNtNtCscgRAwXFJnXP_4core5clone5Clone10clone_fromCshquuC4dCYVj_10polars_sql.exit unwind label %bb.f, !dbg !29453

bb.f:                                             ; preds = %_RNvYNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNtNtCscgRAwXFJnXP_4core5clone5Clone10clone_fromCshquuC4dCYVj_10polars_sql.exit
  %i.o = landingpad { ptr, i32 }
          cleanup
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %0, ptr noundef nonnull align 16 dereferenceable(48) %i.a, i64 48, i1 false), !dbg !29453, !noalias !29454
  br label %common.resume, !dbg !29455

_RNvYNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeNtNtCscgRAwXFJnXP_4core5clone5Clone10clone_fromCshquuC4dCYVj_10polars_sql.exit: ; preds = %_RNvYNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNtNtCscgRAwXFJnXP_4core5clone5Clone10clone_fromCshquuC4dCYVj_10polars_sql.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %0, ptr noundef nonnull align 16 dereferenceable(48) %i.a, i64 48, i1 false), !dbg !29453, !noalias !29454
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !29456, !noalias !29447
  ret void, !dbg !29457
}

; Function Attrs: nonlazybind optsize uwtable
define void @_RNvXs_Cse4dvU5uQ85g_8indexmapINtB4_6BucketNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneCshquuC4dCYVj_10polars_sql(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([80 x i8]) align 16 captures(none) dereferenceable(80) %0, ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(80) %1) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !29458 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = alloca [48 x i8], align 16               ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 72, !dbg !29459
  %i.e = load i64, ptr %i.d, align 8, !dbg !29459, !noundef !13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !29460
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 48, !dbg !29460 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !29461), !dbg !29464
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !29465
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 71, !dbg !29465
  %i.h = load i8, ptr %i.g, align 1, !dbg !29465, !range !150, !alias.scope !29461, !noalias !29471, !noundef !13
  %i.i = icmp eq i8 %i.h, -40, !dbg !29473
  br i1 %i.i, label %bb.b, label %bb.c, !dbg !29473

bb.b:                                             ; preds = %bb.a
  call void @_RNvNvXs1_NtCs7VARH73bmU_11compact_str4reprNtB7_4ReprNtNtCscgRAwXFJnXP_4core5clone5Clone5clone10clone_heap(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.f) #38, !dbg !29474, !noalias !29471
  br label %_RNvXsr_NtCs2mZqlW55729_12polars_utils6pl_strNtB5_10PlSmallStrNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit, !dbg !29474

bb.c:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull readonly align 16 dereferenceable(24) %i.f, i64 24, i1 false), !dbg !29475, !noalias !29471
  br label %_RNvXsr_NtCs2mZqlW55729_12polars_utils6pl_strNtB5_10PlSmallStrNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit, !dbg !29477

_RNvXsr_NtCs2mZqlW55729_12polars_utils6pl_strNtB5_10PlSmallStrNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit: ; preds = %bb.b, %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false), !dbg !29478, !noalias !29461
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !29479
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !29480
  invoke fastcc void @_RNvXsk_NtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtypeNtB5_8DataTypeNtNtCscgRAwXFJnXP_4core5clone5Clone5clone(ptr noalias noundef align 16 captures(none) dereferenceable(48) %i.b, ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(48) %1)
          to label %bb.f unwind label %bb.d, !dbg !29481

bb.d:                                             ; preds = %_RNvXsr_NtCs2mZqlW55729_12polars_utils6pl_strNtB5_10PlSmallStrNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit
  %i.j = landingpad { ptr, i32 }
          cleanup
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 23, !dbg !29482
  %i.l = load i8, ptr %i.k, align 1, !dbg !29482, !range !150, !alias.scope !29489, !noundef !13
  %i.m = icmp eq i8 %i.l, -40, !dbg !29498
  br i1 %i.m, label %bb.e, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECshquuC4dCYVj_10polars_sql.exit, !dbg !29498, !prof !161

bb.e:                                             ; preds = %bb.d
  invoke void @_RNvNvXs2_NtCs7VARH73bmU_11compact_str4reprNtB7_4ReprNtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4drop13outlined_drop(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECshquuC4dCYVj_10polars_sql.exit unwind label %bb.g, !dbg !29499

bb.f:                                             ; preds = %_RNvXsr_NtCs2mZqlW55729_12polars_utils6pl_strNtB5_10PlSmallStrNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 72, !dbg !29500
  store i64 %i.e, ptr %i.n, align 8, !dbg !29500
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 48, !dbg !29500
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.o, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !dbg !29500
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %0, ptr noundef nonnull align 16 dereferenceable(48) %i.b, i64 48, i1 false), !dbg !29500
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !29501
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !29501
  ret void, !dbg !29502

bb.g:                                             ; preds = %bb.e
  %i.p = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #35, !dbg !29503
  unreachable, !dbg !29503

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECshquuC4dCYVj_10polars_sql.exit: ; preds = %bb.d, %bb.e
  resume { ptr, i32 } %i.j, !dbg !29503
}

; Function Attrs: nonlazybind optsize uwtable
define void @_RNvXs_NtCsgZ49sUHp3tW_5alloc3strSReINtNtB6_5slice4JoinBv_E4joinCshquuC4dCYVj_10polars_sql(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %1, i64 noundef range(i64 0, 576460752303423488) %2, ptr noalias noundef nonnull readonly captures(address, read_provenance) %3, i64 noundef %4) unnamed_addr #0 !dbg !29504 {
bb.a:
  tail call void @_RINvNtCsgZ49sUHp3tW_5alloc3str17join_generic_copyehReECsaRr8xKSRVhT_9sqlparser(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %1, i64 noundef %2, ptr noalias noundef nonnull readonly captures(address, read_provenance) %3, i64 noundef %4), !dbg !29506
  ret void, !dbg !29507
}

; Function Attrs: nonlazybind optsize uwtable
define void @_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters6clonedINtB4_6ClonedINtNtB6_6filter6FilterINtNtNtCse4dvU5uQ85g_8indexmap3map4iter4KeysNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeENCNCNvMs0_NtCshquuC4dCYVj_10polars_sql9functionsNtB41_18SQLFunctionVisitor14visit_functions1a_00EENtNtNtB8_6traits8iterator8Iterator4nextB43_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !29508 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 3 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !29509), !dbg !29512
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !29513
  tail call void @llvm.experimental.noalias.scope.decl(metadata !29519), !dbg !29522
  tail call void @llvm.experimental.noalias.scope.decl(metadata !29523), !dbg !29526
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !29529
  store ptr %i.d, ptr %i.c, align 8, !noalias !29531
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !alias.scope !29533, !noalias !29536, !nonnull !13, !noundef !13
  %.promoted.i.i.i = load ptr, ptr %1, align 8, !alias.scope !29533, !noalias !29536
  br label %bb.b, !dbg !29537

bb.b:                                             ; preds = %bb.c, %bb.a
  %i.g = phi ptr [ %i.i, %bb.c ], [ %.promoted.i.i.i, %bb.a ] ; 5 uses
  %i.h = icmp eq ptr %i.g, %i.f, !dbg !29541
  br i1 %i.h, label %bb.g, label %bb.c, !dbg !29546

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 80, !dbg !29547 ; 2 uses
  store ptr %i.i, ptr %1, align 8, !dbg !29549, !alias.scope !29533, !noalias !29536
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 48, !dbg !29550
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !29531
  store ptr %i.j, ptr %i.b, align 8, !noalias !29554
  %i.k = call noundef zeroext i1 @_RNvXs1_NtNtNtCscgRAwXFJnXP_4core3ops8function5implsQNCNCNvMs0_NtCshquuC4dCYVj_10polars_sql9functionsNtBY_18SQLFunctionVisitor14visit_functions1a_00INtB7_5FnMutTRRNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrEE8call_mutB10_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.b), !dbg !29558, !noalias !29563
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !29564, !noalias !29531
  br i1 %i.k, label %bb.d, label %bb.b, !dbg !29565

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %i.g, i64 48 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !29566, !noalias !29529
  %i.m = getelementptr inbounds nuw i8, ptr %i.g, i64 71, !dbg !29567
  %i.n = load i8, ptr %i.m, align 1, !dbg !29567, !range !150, !alias.scope !29580, !noalias !29583, !noundef !13
  %i.o = icmp eq i8 %i.n, -40, !dbg !29585
  br i1 %i.o, label %bb.e, label %bb.f, !dbg !29585

bb.e:                                             ; preds = %bb.d
  call void @_RNvNvXs1_NtCs7VARH73bmU_11compact_str4reprNtB7_4ReprNtNtCscgRAwXFJnXP_4core5clone5Clone5clone10clone_heap(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.l) #38, !dbg !29586
  br label %_RNvXsr_NtCs2mZqlW55729_12polars_utils6pl_strNtB5_10PlSmallStrNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit, !dbg !29586

bb.f:                                             ; preds = %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.l, i64 24, i1 false), !dbg !29587
  br label %_RNvXsr_NtCs2mZqlW55729_12polars_utils6pl_strNtB5_10PlSmallStrNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit, !dbg !29589

_RNvXsr_NtCs2mZqlW55729_12polars_utils6pl_strNtB5_10PlSmallStrNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit: ; preds = %bb.e, %bb.f
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false), !dbg !29590
  br label %bb.h, !dbg !29591

bb.g:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !29566, !noalias !29529
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 23, !dbg !29592
  store i8 -38, ptr %i.p, align 1, !dbg !29592
  br label %bb.h, !dbg !29593

bb.h:                                             ; preds = %bb.g, %_RNvXsr_NtCs2mZqlW55729_12polars_utils6pl_strNtB5_10PlSmallStrNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit
  ret void, !dbg !29594
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind optsize willreturn memory(argmem: readwrite) uwtable
define void @_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters6clonedINtB4_6ClonedINtNtB6_6filter6FilterINtNtNtCse4dvU5uQ85g_8indexmap3map4iter4KeysNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeENCNCNvMs0_NtCshquuC4dCYVj_10polars_sql9functionsNtB41_18SQLFunctionVisitor14visit_functions1a_00EENtNtNtB8_6traits8iterator8Iterator9size_hintB43_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #3 !dbg !29595 {
bb.a:
  %.val = load ptr, ptr %1, align 8, !dbg !29596, !alias.scope !29597, !noalias !29600, !nonnull !13, !noundef !13
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !29596
  %.val1 = load ptr, ptr %i.a, align 8, !dbg !29596, !alias.scope !29597, !noalias !29600, !nonnull !13, !noundef !13
  %i.b = ptrtoint ptr %.val1 to i64, !dbg !29602
  %i.c = ptrtoint ptr %.val to i64, !dbg !29602
  %i.d = sub nuw i64 %i.b, %i.c, !dbg !29602
  %i.e = udiv exact i64 %i.d, 80, !dbg !29602
  store <2 x i64> <i64 0, i64 1>, ptr %0, align 8, !dbg !29610, !alias.scope !29612
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !29610
  store i64 %i.e, ptr %i.f, align 8, !dbg !29610, !alias.scope !29612
  ret void, !dbg !29615
}

; Function Attrs: nonlazybind optsize uwtable
define void @_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters6clonedINtB4_6ClonedINtNtCs7tGzs63DEEy_9hashbrown3map4KeysNtNtCsgZ49sUHp3tW_5alloc6string6StringNtNtCs7Ga9Brpi21q_11polars_lazy5frame9LazyFrameEENtNtNtB8_6traits8iterator8Iterator4nextCshquuC4dCYVj_10polars_sql(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(40) %1) unnamed_addr #0 !dbg !29616 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !29617), !dbg !29620
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !29621 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !dbg !29621, !alias.scope !29617, !noundef !13 ; 2 uses
  %i.c = icmp eq i64 %i.b, 0, !dbg !29621
  br i1 %i.c, label %bb.d, label %bb.b, !dbg !29621

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !29628), !dbg !29631
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.e = load i16, ptr %i.d, align 8, !dbg !29632, !alias.scope !29638, !noundef !13 ; 2 uses
  %.not11.i.i = icmp eq i16 %i.e, 0, !dbg !29639
  %.promoted.i.i = load ptr, ptr %1, align 8, !alias.scope !29638 ; 2 uses
  br i1 %.not11.i.i, label %.lr.ph.i.i, label %._crit_edge18.i.i, !dbg !29643

.lr.ph.i.i:                                       ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %.promoted13.i.i = load ptr, ptr %i.f, align 8, !alias.scope !29638
  br label %bb.c, !dbg !29643

._crit_edge.i.i:                                  ; preds = %bb.c
  store ptr %i.k, ptr %i.f, align 8, !dbg !29644, !alias.scope !29638
  store ptr %i.j, ptr %1, align 8, !dbg !29645, !alias.scope !29638
  br label %._crit_edge18.i.i, !dbg !29643

bb.c:                                             ; preds = %bb.c, %.lr.ph.i.i
  %i.g = phi ptr [ %.promoted13.i.i, %.lr.ph.i.i ], [ %i.k, %bb.c ], !dbg !29646 ; 2 uses
  %i.h = phi ptr [ %.promoted.i.i, %.lr.ph.i.i ], [ %i.j, %bb.c ]
  %.val9.i.i = load <16 x i8>, ptr %i.g, align 16, !dbg !29647, !noalias !29638
  %i.i = icmp sgt <16 x i8> %.val9.i.i, splat (i8 -1), !dbg !29650
  %i.j = getelementptr inbounds i8, ptr %i.h, i64 -6656, !dbg !29657 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 16, !dbg !29663 ; 2 uses
  %.cast.i.i = bitcast <16 x i1> %i.i to i16, !dbg !29632 ; 2 uses
  %.not.i.i = icmp eq i16 %.cast.i.i, 0, !dbg !29639
  br i1 %.not.i.i, label %bb.c, label %._crit_edge.i.i, !dbg !29643

._crit_edge18.i.i:                                ; preds = %bb.b, %._crit_edge.i.i
  %i.l = phi ptr [ %i.j, %._crit_edge.i.i ], [ %.promoted.i.i, %bb.b ], !dbg !29666
  %.lcssa.i.i = phi i16 [ %.cast.i.i, %._crit_edge.i.i ], [ %i.e, %bb.b ], !dbg !29632 ; 3 uses
  %i.m = add i16 %.lcssa.i.i, -1, !dbg !29668
  %i.n = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i, i1 true), !dbg !29675
  %i.o = zext nneg i16 %i.n to i64, !dbg !29676
  %i.p = and i16 %i.m, %.lcssa.i.i, !dbg !29677
  store i16 %i.p, ptr %i.d, align 8, !dbg !29681, !alias.scope !29638
  %i.q = sub nsw i64 0, %i.o, !dbg !29682
  %i.r = getelementptr inbounds [416 x i8], ptr %i.l, i64 %i.q, !dbg !29684
  %i.s = add i64 %i.b, -1, !dbg !29685
  store i64 %i.s, ptr %i.a, align 8, !dbg !29685, !alias.scope !29617
  %i.t = getelementptr inbounds i8, ptr %i.r, i64 -416, !dbg !29687
  tail call void @_RNvXs4_NtCsgZ49sUHp3tW_5alloc6stringNtB5_6StringNtNtCscgRAwXFJnXP_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.t), !dbg !29695
  br label %bb.e, !dbg !29703

bb.d:                                             ; preds = %bb.a
  store i64 -9223372036854775808, ptr %0, align 8, !dbg !29704
  br label %bb.e, !dbg !29705

bb.e:                                             ; preds = %bb.d, %._crit_edge18.i.i
  ret void, !dbg !29706
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind optsize willreturn memory(argmem: readwrite) uwtable
define void @_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters6clonedINtB4_6ClonedINtNtCs7tGzs63DEEy_9hashbrown3map4KeysNtNtCsgZ49sUHp3tW_5alloc6string6StringNtNtCs7Ga9Brpi21q_11polars_lazy5frame9LazyFrameEENtNtNtB8_6traits8iterator8Iterator9size_hintCshquuC4dCYVj_10polars_sql(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(40) %1) unnamed_addr #3 !dbg !29707 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !29708
  %.val = load i64, ptr %i.a, align 8, !dbg !29708, !noundef !13 ; 2 uses
  store i64 %.val, ptr %0, align 8, !dbg !29709, !alias.scope !29716
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !29709
  store i64 1, ptr %i.b, align 8, !dbg !29709, !alias.scope !29716
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !29709
  store i64 %.val, ptr %i.c, align 8, !dbg !29709, !alias.scope !29716
  ret void, !dbg !29719
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind optsize willreturn memory(argmem: readwrite) uwtable
define void @_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtBa_5slice4iter4IterINtCse4dvU5uQ85g_8indexmap6BucketNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeEEENtNtNtB8_6traits8iterator8Iterator9size_hintCshquuC4dCYVj_10polars_sql(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(16) %1) unnamed_addr #3 !dbg !29720 {
bb.a:
  %.val = load ptr, ptr %1, align 8, !dbg !29721, !nonnull !13, !noundef !13
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !29721
  %.val1 = load ptr, ptr %i.a, align 8, !dbg !29721, !nonnull !13, !noundef !13
  %i.b = ptrtoint ptr %.val1 to i64, !dbg !29722
  %i.c = ptrtoint ptr %.val to i64, !dbg !29722
  %i.d = sub nuw i64 %i.b, %i.c, !dbg !29722
  %i.e = udiv exact i64 %i.d, 80, !dbg !29722     ; 2 uses
  store i64 %i.e, ptr %0, align 8, !dbg !29727, !alias.scope !29729
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !29727
  store i64 1, ptr %i.f, align 8, !dbg !29727, !alias.scope !29729
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !29727
  store i64 %i.e, ptr %i.g, align 8, !dbg !29727, !alias.scope !29729
  ret void, !dbg !29732
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind optsize willreturn memory(argmem: readwrite) uwtable
define void @_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtBa_5slice4iter4IterNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprEENtNtNtB8_6traits8iterator8Iterator9size_hintCshquuC4dCYVj_10polars_sql(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(16) %1) unnamed_addr #3 !dbg !29733 {
bb.a:
  %.val = load ptr, ptr %1, align 8, !dbg !29734, !nonnull !13, !noundef !13
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !29734
  %.val1 = load ptr, ptr %i.a, align 8, !dbg !29734, !nonnull !13, !noundef !13
  %i.b = ptrtoint ptr %.val1 to i64, !dbg !29735
  %i.c = ptrtoint ptr %.val to i64, !dbg !29735
  %i.d = sub nuw i64 %i.b, %i.c, !dbg !29735
  %i.e = udiv exact i64 %i.d, 144, !dbg !29735    ; 2 uses
  store i64 %i.e, ptr %0, align 8, !dbg !29740, !alias.scope !29742
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !29740
  store i64 1, ptr %i.f, align 8, !dbg !29740, !alias.scope !29742
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !29740
  store i64 %i.e, ptr %i.g, align 8, !dbg !29740, !alias.scope !29742
  ret void, !dbg !29745
}

; Function Attrs: nonlazybind optsize uwtable
define void @_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtCse4dvU5uQ85g_8indexmap3map4iter4KeysNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeEENtNtNtB8_6traits8iterator8Iterator4nextCshquuC4dCYVj_10polars_sql(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((23, 24)) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %1) unnamed_addr #0 !dbg !29746 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 3 uses
  %i.b = load ptr, ptr %1, align 8, !dbg !29747, !alias.scope !29750, !nonnull !13, !noundef !13 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !29753
  %i.d = load ptr, ptr %i.c, align 8, !dbg !29753, !alias.scope !29750, !nonnull !13, !noundef !13
  %i.e = icmp eq ptr %i.b, %i.d, !dbg !29754
  br i1 %i.e, label %bb.e, label %bb.b, !dbg !29756

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 80, !dbg !29757
  store ptr %i.f, ptr %1, align 8, !dbg !29759, !alias.scope !29750
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 48, !dbg !29760 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 71, !dbg !29764
  %i.i = load i8, ptr %i.h, align 1, !dbg !29764, !range !150, !alias.scope !29777, !noalias !29780, !noundef !13
  %i.j = icmp eq i8 %i.i, -40, !dbg !29782
  br i1 %i.j, label %bb.c, label %bb.d, !dbg !29782

bb.c:                                             ; preds = %bb.b
  call void @_RNvNvXs1_NtCs7VARH73bmU_11compact_str4reprNtB7_4ReprNtNtCscgRAwXFJnXP_4core5clone5Clone5clone10clone_heap(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.g) #38, !dbg !29783
  br label %_RNvXsr_NtCs2mZqlW55729_12polars_utils6pl_strNtB5_10PlSmallStrNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit, !dbg !29783

bb.d:                                             ; preds = %bb.b
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.g, i64 24, i1 false), !dbg !29784
  br label %_RNvXsr_NtCs2mZqlW55729_12polars_utils6pl_strNtB5_10PlSmallStrNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit, !dbg !29786

_RNvXsr_NtCs2mZqlW55729_12polars_utils6pl_strNtB5_10PlSmallStrNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit: ; preds = %bb.c, %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false), !dbg !29787
  br label %bb.f, !dbg !29788

bb.e:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 23, !dbg !29789
  store i8 -38, ptr %i.k, align 1, !dbg !29789
  br label %bb.f, !dbg !29790

bb.f:                                             ; preds = %bb.e, %_RNvXsr_NtCs2mZqlW55729_12polars_utils6pl_strNtB5_10PlSmallStrNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit
  ret void, !dbg !29791
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind optsize willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define void @_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtCse4dvU5uQ85g_8indexmap3map4iter4KeysNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeEENtNtNtB8_6traits8iterator8Iterator9size_hintCshquuC4dCYVj_10polars_sql(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(16) %1) unnamed_addr #16 !dbg !29792 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !29793), !dbg !29796
  tail call void @llvm.experimental.noalias.scope.decl(metadata !29797), !dbg !29796
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !29799
  %i.b = load ptr, ptr %i.a, align 8, !dbg !29799, !alias.scope !29797, !noalias !29793, !nonnull !13, !noundef !13
  %i.c = load ptr, ptr %1, align 8, !dbg !29802, !alias.scope !29797, !noalias !29793, !nonnull !13, !noundef !13
  %i.d = ptrtoint ptr %i.b to i64, !dbg !29803
  %i.e = ptrtoint ptr %i.c to i64, !dbg !29803
  %i.f = sub nuw i64 %i.d, %i.e, !dbg !29803
  %i.g = udiv exact i64 %i.f, 80, !dbg !29803     ; 2 uses
  store i64 %i.g, ptr %0, align 8, !dbg !29807, !alias.scope !29793, !noalias !29797
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !29807
  store i64 1, ptr %i.h, align 8, !dbg !29807, !alias.scope !29793, !noalias !29797
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !29807
  store i64 %i.g, ptr %i.i, align 8, !dbg !29807, !alias.scope !29793, !noalias !29797
  ret void, !dbg !29808
}

; Function Attrs: inlinehint nonlazybind optsize uwtable
define internal fastcc void @_RNvXs_NtNtNtCsfcROwRM8ZtH_11polars_plan3dsl13function_expr6binaryNtB4_14BinaryFunctionNtNtCscgRAwXFJnXP_4core5clone5Clone5clone(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 16 captures(none) dereferenceable(64) %0, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(64) %1) unnamed_addr #5 !dbg !29809 {
bb.a:
  %i.a = load i8, ptr %1, align 16, !dbg !29813, !range !9177, !noundef !13
  switch i8 %i.a, label %default.unreachable1 [
    i8 0, label %bb.b
    i8 1, label %bb.c
    i8 2, label %bb.d
    i8 3, label %bb.e
    i8 4, label %bb.f
    i8 5, label %bb.g
    i8 6, label %bb.h
    i8 7, label %bb.i
    i8 8, label %bb.j
    i8 9, label %bb.k
    i8 10, label %bb.l
    i8 11, label %bb.m
    i8 12, label %bb.n
  ], !dbg !29813

default.unreachable1:                             ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
end_hunk_3
begin_hunk_4_@_RNvXsc_NtNtCsfcROwRM8ZtH_11polars_plan3dsl4exprNtB5_4ExprNtNtCscgRAwXFJnXP_4core5clone5Clone5clone:bb.a
    i64 24, label %bb.ih
    i64 25, label %bb.ii
    i64 26, label %bb.ik
    i64 27, label %bb.ji
  ], !dbg !30111

bb.b:                                             ; preds = %bb.a
  unreachable, !dbg !30112

bb.c:                                             ; preds = %bb.a
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 112, !dbg !30111
  store i64 -9223372036854775808, ptr %i.cf, align 16, !dbg !30111
  br label %bb.jm, !dbg !30111

bb.d:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.by), !dbg !30114
  %i.cg = load ptr, ptr %1, align 16, !dbg !30116, !nonnull !13, !noundef !13
  %i.ch = atomicrmw add ptr %i.cg, i64 1 monotonic, align 8, !dbg !30124
  %i.ci = icmp slt i64 %i.ch, 0, !dbg !30130
  br i1 %i.ci, label %bb.jo, label %bb.jn, !dbg !30130

bb.e:                                             ; preds = %bb.a
  %i.cj = getelementptr inbounds nuw i8, ptr %1, i64 23, !dbg !30132
  %i.ck = load i8, ptr %i.cj, align 1, !dbg !30132, !range !150, !noundef !13
  %i.cl = icmp eq i8 %i.ck, -40, !dbg !30144
  br i1 %i.cl, label %bb.jv, label %bb.jw, !dbg !30144

bb.f:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bx), !dbg !30145
  call fastcc void @_RNvXsI_NtNtCsfcROwRM8ZtH_11polars_plan3dsl8selectorNtB5_8SelectorNtNtCscgRAwXFJnXP_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(32) %i.bx, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %1) #41, !dbg !30145
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.bx, i64 32, i1 false), !dbg !30147
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 112, !dbg !30147
  store i64 -9223372036854775805, ptr %i.cm, align 16, !dbg !30147
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bx), !dbg !30148
  br label %bb.jm, !dbg !30149

bb.g:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !30150), !dbg !30153
  %i.cn = load i8, ptr %1, align 16, !dbg !30155, !range !8790, !alias.scope !30150, !noalias !30161, !noundef !13 ; 3 uses
  %i.co = icmp ne i8 %i.cn, 32, !dbg !30155
  tail call void @llvm.assume(i1 %i.co), !dbg !30155
  %i.cp = add nsw i8 %i.cn, -31, !dbg !30155
  %i.cq = icmp samesign ugt i8 %i.cn, 30, !dbg !30155
  %narrow.i = select i1 %i.cq, i8 %i.cp, i8 1, !dbg !30155
  switch i8 %narrow.i, label %bb.h [
    i8 0, label %bb.i
    i8 1, label %bb.u
    i8 2, label %bb.x
    i8 3, label %bb.y
  ], !dbg !30155

bb.h:                                             ; preds = %bb.g
  unreachable, !dbg !30155

bb.i:                                             ; preds = %bb.g
  %i.cr = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !30163
  tail call void @llvm.experimental.noalias.scope.decl(metadata !30164), !dbg !30167
  tail call void @llvm.experimental.noalias.scope.decl(metadata !30169), !dbg !30167
  call void @llvm.lifetime.start.p0(ptr nonnull %i.be), !dbg !30171, !noalias !30175
  %i.cs = load i64, ptr %i.cr, align 16, !dbg !30171, !range !5656, !alias.scope !30176, !noalias !30177, !noundef !13 ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %1, i64 24, !dbg !30178 ; 5 uses
  switch i64 %i.cs, label %default.unreachable [
    i64 0, label %bb.j
    i64 1, label %bb.k
    i64 2, label %bb.l
    i64 3, label %bb.m
  ], !dbg !30171

default.unreachable:                              ; preds = %bb.ik, %bb.bz, %bb.ar, %bb.m, %bb.i
  unreachable

bb.j:                                             ; preds = %bb.i
  %i.cu = getelementptr inbounds nuw i8, ptr %1, i64 47, !dbg !30179
  %i.cv = load i8, ptr %i.cu, align 1, !dbg !30179, !range !150, !alias.scope !30176, !noalias !30177, !noundef !13
  %i.cw = icmp eq i8 %i.cv, -40, !dbg !30191
  br i1 %i.cw, label %bb.r, label %bb.s, !dbg !30191

bb.k:                                             ; preds = %bb.i
  %.sroa.7.0.copyload8.i = load i64, ptr %i.ct, align 8, !dbg !30192, !alias.scope !30194, !noalias !30161
  %.sroa.9.0..sroa_idx11.i = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !30192
  %.sroa.9.0.copyload12.i = load ptr, ptr %.sroa.9.0..sroa_idx11.i, align 16, !dbg !30192, !alias.scope !30194, !noalias !30161
  %.sroa.10.0..sroa_idx15.i = getelementptr inbounds nuw i8, ptr %1, i64 40, !dbg !30192
  %.sroa.10.0.copyload16.i = load i64, ptr %.sroa.10.0..sroa_idx15.i, align 8, !dbg !30192, !alias.scope !30194, !noalias !30161
  br label %_RNvXsq_NtNtCsfcROwRM8ZtH_11polars_plan5plans3litNtB5_15DynLiteralValueNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit.i, !dbg !30195

bb.l:                                             ; preds = %bb.i
  %.sroa.7.0.copyload6.i = load i64, ptr %i.ct, align 8, !dbg !30196, !alias.scope !30194, !noalias !30161
  %.sroa.9.0..sroa_idx9.i = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !30196
  %.sroa.9.0.copyload10.i = load ptr, ptr %.sroa.9.0..sroa_idx9.i, align 16, !dbg !30196, !alias.scope !30194, !noalias !30161
  %.sroa.10.0..sroa_idx13.i = getelementptr inbounds nuw i8, ptr %1, i64 40, !dbg !30196
  %.sroa.10.0.copyload14.i = load i64, ptr %.sroa.10.0..sroa_idx13.i, align 8, !dbg !30196, !alias.scope !30194, !noalias !30161
  br label %_RNvXsq_NtNtCsfcROwRM8ZtH_11polars_plan5plans3litNtB5_15DynLiteralValueNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit.i, !dbg !30195

bb.m:                                             ; preds = %bb.i
  %i.cx = load i64, ptr %i.ct, align 8, !dbg !30198, !range !5656, !alias.scope !30203, !noalias !30206, !noundef !13 ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !30208 ; 4 uses
  switch i64 %i.cx, label %default.unreachable [
    i64 0, label %bb.n
    i64 1, label %bb.o
    i64 2, label %bb.p
    i64 3, label %bb.q
  ], !dbg !30198

bb.n:                                             ; preds = %bb.m
  %i.cz = tail call { ptr, i64 } @_RNvXse_NtCsgZ49sUHp3tW_5alloc5boxedINtB5_3BoxSINtNtCscgRAwXFJnXP_4core6option6OptionNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrEENtNtBN_5clone5Clone5cloneCshquuC4dCYVj_10polars_sql(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.cy), !dbg !30209, !noalias !30206
  br label %_RNvXsr_NtNtCsfcROwRM8ZtH_11polars_plan5plans3litNtB5_19DynListLiteralValueNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit.i.i, !dbg !30211

bb.o:                                             ; preds = %bb.m
  %i.da = tail call { ptr, i64 } @_RNvXse_NtCsgZ49sUHp3tW_5alloc5boxedINtB5_3BoxSINtNtCscgRAwXFJnXP_4core6option6OptionnEENtNtBN_5clone5Clone5cloneCshquuC4dCYVj_10polars_sql(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.cy), !dbg !30212, !noalias !30206
  br label %_RNvXsr_NtNtCsfcROwRM8ZtH_11polars_plan5plans3litNtB5_19DynListLiteralValueNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit.i.i, !dbg !30211

bb.p:                                             ; preds = %bb.m
  %i.db = tail call { ptr, i64 } @_RNvXse_NtCsgZ49sUHp3tW_5alloc5boxedINtB5_3BoxSINtNtCscgRAwXFJnXP_4core6option6OptiondEENtNtBN_5clone5Clone5cloneCshquuC4dCYVj_10polars_sql(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.cy), !dbg !30214, !noalias !30206
  br label %_RNvXsr_NtNtCsfcROwRM8ZtH_11polars_plan5plans3litNtB5_19DynListLiteralValueNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit.i.i, !dbg !30211

bb.q:                                             ; preds = %bb.m
  %i.dc = tail call { ptr, i64 } @_RNvXse_NtCsgZ49sUHp3tW_5alloc5boxedINtB5_3BoxSINtNtCscgRAwXFJnXP_4core6option6OptionNtNtNtCsfcROwRM8ZtH_11polars_plan5plans3lit19DynListLiteralValueEENtNtBN_5clone5Clone5cloneCshquuC4dCYVj_10polars_sql(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.cy), !dbg !30216, !noalias !30206
  br label %_RNvXsr_NtNtCsfcROwRM8ZtH_11polars_plan5plans3litNtB5_19DynListLiteralValueNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit.i.i, !dbg !30211

_RNvXsr_NtNtCsfcROwRM8ZtH_11polars_plan5plans3litNtB5_19DynListLiteralValueNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit.i.i: ; preds = %bb.q, %bb.p, %bb.o, %bb.n
  %.sink5.i.i.i = phi { ptr, i64 } [ %i.dc, %bb.q ], [ %i.db, %bb.p ], [ %i.da, %bb.o ], [ %i.cz, %bb.n ] ; 2 uses
  %i.dd = extractvalue { ptr, i64 } %.sink5.i.i.i, 0, !dbg !30208
  %i.de = extractvalue { ptr, i64 } %.sink5.i.i.i, 1, !dbg !30208
  br label %_RNvXsq_NtNtCsfcROwRM8ZtH_11polars_plan5plans3litNtB5_15DynLiteralValueNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit.i, !dbg !30195

bb.r:                                             ; preds = %bb.j
  call void @_RNvNvXs1_NtCs7VARH73bmU_11compact_str4reprNtB7_4ReprNtNtCscgRAwXFJnXP_4core5clone5Clone5clone10clone_heap(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.be, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ct) #38, !dbg !30218, !noalias !30177
  br label %bb.t, !dbg !30218

bb.s:                                             ; preds = %bb.j
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.be, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.ct, i64 24, i1 false), !dbg !30219, !noalias !30177
  br label %bb.t, !dbg !30222

bb.t:                                             ; preds = %bb.s, %bb.r
  %.sroa.7.8.copyload.i = load i64, ptr %i.be, align 8, !dbg !30223, !noalias !30224
  %.sroa.9.8..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.be, i64 8, !dbg !30223
  %.sroa.9.8.copyload.i = load ptr, ptr %.sroa.9.8..sroa_idx.i, align 8, !dbg !30223, !noalias !30224
  %.sroa.10.8..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.be, i64 16, !dbg !30223
  %.sroa.10.8.copyload.i = load i64, ptr %.sroa.10.8..sroa_idx.i, align 8, !dbg !30223, !noalias !30224
  br label %_RNvXsq_NtNtCsfcROwRM8ZtH_11polars_plan5plans3litNtB5_15DynLiteralValueNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit.i, !dbg !30195

_RNvXsq_NtNtCsfcROwRM8ZtH_11polars_plan5plans3litNtB5_15DynLiteralValueNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit.i: ; preds = %bb.t, %_RNvXsr_NtNtCsfcROwRM8ZtH_11polars_plan5plans3litNtB5_19DynListLiteralValueNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit.i.i, %bb.l, %bb.k
  %.sroa.10.0.i = phi i64 [ %.sroa.10.8.copyload.i, %bb.t ], [ %.sroa.10.0.copyload16.i, %bb.k ], [ %.sroa.10.0.copyload14.i, %bb.l ], [ %i.de, %_RNvXsr_NtNtCsfcROwRM8ZtH_11polars_plan5plans3litNtB5_19DynListLiteralValueNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit.i.i ], !dbg !30171
  %.sroa.9.0.i = phi ptr [ %.sroa.9.8.copyload.i, %bb.t ], [ %.sroa.9.0.copyload12.i, %bb.k ], [ %.sroa.9.0.copyload10.i, %bb.l ], [ %i.dd, %_RNvXsr_NtNtCsfcROwRM8ZtH_11polars_plan5plans3litNtB5_19DynListLiteralValueNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit.i.i ], !dbg !30171
  %.sroa.7.0.i = phi i64 [ %.sroa.7.8.copyload.i, %bb.t ], [ %.sroa.7.0.copyload8.i, %bb.k ], [ %.sroa.7.0.copyload6.i, %bb.l ], [ %i.cx, %_RNvXsr_NtNtCsfcROwRM8ZtH_11polars_plan5plans3litNtB5_19DynListLiteralValueNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit.i.i ], !dbg !30171
  call void @llvm.lifetime.end.p0(ptr nonnull %i.be), !dbg !30225, !noalias !30175
  %i.df = getelementptr inbounds nuw i8, ptr %i.bf, i64 16, !dbg !30226
  store i64 %i.cs, ptr %i.df, align 16, !dbg !30226
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bf, i64 24, !dbg !30226
  store i64 %.sroa.7.0.i, ptr %.sroa.7.0..sroa_idx.i, align 8, !dbg !30226
  %.sroa.9.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bf, i64 32, !dbg !30226
  store ptr %.sroa.9.0.i, ptr %.sroa.9.0..sroa_idx.i, align 16, !dbg !30226
  %.sroa.10.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bf, i64 40, !dbg !30226
  store i64 %.sroa.10.0.i, ptr %.sroa.10.0..sroa_idx.i, align 8, !dbg !30226
  store i8 31, ptr %i.bf, align 16, !dbg !30226
  br label %_RNvXsw_NtNtCsfcROwRM8ZtH_11polars_plan5plans3litNtB5_12LiteralValueNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit, !dbg !30227

bb.u:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bd), !dbg !30228, !noalias !30235
  call fastcc void @_RNvXsk_NtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtypeNtB5_8DataTypeNtNtCscgRAwXFJnXP_4core5clone5Clone5clone(ptr noalias noundef align 16 captures(none) dereferenceable(48) %i.bd, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(96) %1) #41, !dbg !30228, !noalias !30239
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bc), !dbg !30240, !noalias !30235
  %i.dg = getelementptr inbounds nuw i8, ptr %1, i64 48, !dbg !30240
  invoke fastcc void @_RNvXsl_NtNtCs1LHh8CLbVkQ_11polars_core9datatypes9any_valueNtB5_8AnyValueNtNtCscgRAwXFJnXP_4core5clone5Clone5clone(ptr noalias noundef align 16 captures(none) dereferenceable(48) %i.bc, ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(48) %i.dg)
          to label %_RNvXs1_NtCs1LHh8CLbVkQ_11polars_core6scalarNtB5_6ScalarNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit.i unwind label %bb.v, !dbg !30240, !noalias !30239

bb.v:                                             ; preds = %bb.u
  %i.dh = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeECshquuC4dCYVj_10polars_sql(ptr noalias noundef align 16 dereferenceable(48) %i.bd) #36
          to label %common.resume unwind label %bb.w, !dbg !30241, !noalias !30239

bb.w:                                             ; preds = %bb.v
  %i.di = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #35, !dbg !30242, !noalias !30239
  unreachable, !dbg !30242

common.resume:                                    ; preds = %.body, %.body68, %.body73, %bb.js, %bb.jr, %bb.kf, %bb.ke, %bb.kq, %bb.kp, %bb.lm, %bb.ln, %bb.mv, %bb.mu, %bb.my, %bb.mx, %bb.je, %bb.jf, %bb.ah, %bb.v
  %common.resume.op = phi { ptr, i32 } [ %i.vo, %bb.je ], [ %i.dh, %bb.v ], [ %i.ej, %bb.ah ], [ %i.vo, %bb.jf ], [ %eh.lpad-body74, %.body73 ], [ %i.adb, %bb.mx ], [ %i.wl, %bb.jr ], [ %i.xd, %bb.ke ], [ %eh.lpad-body, %.body ], [ %.pn33, %bb.kp ], [ %.pn, %.body68 ], [ %i.adb, %bb.my ], [ %i.aae, %bb.ln ], [ %i.acw, %bb.mu ], [ %i.wl, %bb.js ], [ %i.xd, %bb.kf ], [ %.pn33, %bb.kq ], [ %i.aae, %bb.lm ], [ %i.acw, %bb.mv ]
  resume { ptr, i32 } %common.resume.op, !dbg !30243

_RNvXs1_NtCs1LHh8CLbVkQ_11polars_core6scalarNtB5_6ScalarNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit.i: ; preds = %bb.u
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(96) %i.bf, ptr noundef nonnull align 16 dereferenceable(48) %i.bd, i64 48, i1 false), !dbg !30242
  %i.dj = getelementptr inbounds nuw i8, ptr %i.bf, i64 48, !dbg !30242
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %i.dj, ptr noundef nonnull align 16 dereferenceable(48) %i.bc, i64 48, i1 false), !dbg !30242
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bc), !dbg !30241, !noalias !30235
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bd), !dbg !30241, !noalias !30235
  br label %_RNvXsw_NtNtCsfcROwRM8ZtH_11polars_plan5plans3litNtB5_12LiteralValueNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit, !dbg !30227

bb.x:                                             ; preds = %bb.g
  %i.dk = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !30244 ; 2 uses
  %i.dl = load <2 x ptr>, ptr %i.dk, align 8, !dbg !30244, !alias.scope !30150, !noalias !30161
  %i.dm = load ptr, ptr %i.dk, align 8, !dbg !30244, !alias.scope !30150, !noalias !30161, !nonnull !13, !noundef !13
  %i.dn = atomicrmw add ptr %i.dm, i64 1 monotonic, align 8, !dbg !30257, !noalias !30175
  %i.do = icmp slt i64 %i.dn, 0, !dbg !30262
  br i1 %i.do, label %bb.aa, label %bb.z, !dbg !30262

bb.y:                                             ; preds = %bb.g
  %i.dp = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !30264
  %i.dq = getelementptr inbounds nuw i8, ptr %1, i64 64, !dbg !30264
  %2 = load <2 x i128>, ptr %i.dq, align 16, !dbg !30264, !alias.scope !30150, !noalias !30161 ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %i.bf, i64 16, !dbg !30269
  call fastcc void @_RNvXsk_NtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtypeNtB5_8DataTypeNtNtCscgRAwXFJnXP_4core5clone5Clone5clone(ptr noalias noundef align 16 captures(none) dereferenceable(48) %i.dr, ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(48) %i.dp) #41, !dbg !30264
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bf, i64 64, !dbg !30269
  %3 = extractelement <2 x i128> %2, i64 0, !dbg !30269
  store i128 %3, ptr %.sroa.4.0..sroa_idx.i, align 16, !dbg !30269
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bf, i64 80, !dbg !30269
  %4 = extractelement <2 x i128> %2, i64 1, !dbg !30269
  store i128 %4, ptr %.sroa.5.0..sroa_idx.i, align 16, !dbg !30269
  store i8 34, ptr %i.bf, align 16, !dbg !30269
  br label %_RNvXsw_NtNtCsfcROwRM8ZtH_11polars_plan5plans3litNtB5_12LiteralValueNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit, !dbg !30227

bb.z:                                             ; preds = %bb.x
  %i.ds = getelementptr inbounds nuw i8, ptr %i.bf, i64 8, !dbg !30270
  store <2 x ptr> %i.dl, ptr %i.ds, align 8, !dbg !30270
  store i8 33, ptr %i.bf, align 16, !dbg !30270
  br label %_RNvXsw_NtNtCsfcROwRM8ZtH_11polars_plan5plans3litNtB5_12LiteralValueNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit, !dbg !30227

bb.aa:                                            ; preds = %bb.x
  tail call void @llvm.trap(), !dbg !30271
  unreachable, !dbg !30271

_RNvXsw_NtNtCsfcROwRM8ZtH_11polars_plan5plans3litNtB5_12LiteralValueNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit: ; preds = %_RNvXsq_NtNtCsfcROwRM8ZtH_11polars_plan5plans3litNtB5_15DynLiteralValueNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit.i, %_RNvXs1_NtCs1LHh8CLbVkQ_11polars_core6scalarNtB5_6ScalarNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit.i, %bb.y, %bb.z
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(96) %0, ptr noundef nonnull align 16 dereferenceable(96) %i.bf, i64 96, i1 false), !dbg !30272
  %i.dt = getelementptr inbounds nuw i8, ptr %0, i64 112, !dbg !30272
  store i64 -9223372036854775804, ptr %i.dt, align 16, !dbg !30272
  br label %bb.jm, !dbg !30149

bb.ab:                                            ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.9), !dbg !30273
  tail call void @llvm.experimental.noalias.scope.decl(metadata !30275), !dbg !30273
  %i.du = load i8, ptr %1, align 16, !dbg !30278, !range !9544, !alias.scope !30275, !noalias !30284, !noundef !13 ; 3 uses
  %i.dv = icmp ne i8 %i.du, 40, !dbg !30278
  tail call void @llvm.assume(i1 %i.dv), !dbg !30278
  %i.dw = add nsw i8 %i.du, -39, !dbg !30278
  %i.dx = icmp samesign ugt i8 %i.du, 38, !dbg !30278
  %narrow.i42 = select i1 %i.dx, i8 %i.dw, i8 1, !dbg !30278
  switch i8 %narrow.i42, label %bb.ac [
    i8 0, label %bb.ad
    i8 1, label %bb.ae
    i8 2, label %bb.af
    i8 3, label %bb.ag
    i8 4, label %bb.ak
    i8 5, label %bb.al
  ], !dbg !30278

bb.ac:                                            ; preds = %bb.ab
  unreachable, !dbg !30278

bb.ad:                                            ; preds = %bb.ab
  %i.dy = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !30286
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bb), !dbg !30287, !noalias !30289
  call fastcc void @_RNvXs5_NtNtCsfcROwRM8ZtH_11polars_plan3dsl13datatype_exprNtB5_12DataTypeExprNtNtCscgRAwXFJnXP_4core5clone5Clone5clone(ptr noalias noundef align 16 captures(none) dereferenceable(48) %i.bb, ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(48) %i.dy) #41, !dbg !30287, !noalias !30284, !inline_history !30290
  %.sroa.9.16..sroa_idx113 = getelementptr inbounds nuw i8, ptr %.sroa.9, i64 15, !dbg !30291
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(48) %.sroa.9.16..sroa_idx113, ptr noundef nonnull align 16 dereferenceable(48) %i.bb, i64 48, i1 false), !dbg !30291, !noalias !30275
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bb), !dbg !30292, !noalias !30289
  br label %_RNvXs1_NtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr11datatype_fnNtB5_16DataTypeFunctionNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit, !dbg !30293

bb.ae:                                            ; preds = %bb.ab
  %i.dz = getelementptr inbounds nuw i8, ptr %1, i64 48, !dbg !30294
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ba), !dbg !30295, !noalias !30289
  call fastcc void @_RNvXs5_NtNtCsfcROwRM8ZtH_11polars_plan3dsl13datatype_exprNtB5_12DataTypeExprNtNtCscgRAwXFJnXP_4core5clone5Clone5clone(ptr noalias noundef align 16 captures(none) dereferenceable(48) %i.ba, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(96) %1) #41, !dbg !30295, !noalias !30284, !inline_history !30290
  call void @llvm.lifetime.start.p0(ptr nonnull %i.az), !dbg !30297, !noalias !30289
  invoke fastcc void @_RNvXs5_NtNtCsfcROwRM8ZtH_11polars_plan3dsl13datatype_exprNtB5_12DataTypeExprNtNtCscgRAwXFJnXP_4core5clone5Clone5clone(ptr noalias noundef align 16 captures(none) dereferenceable(48) %i.az, ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(48) %i.dz)
          to label %bb.ai unwind label %bb.ah, !dbg !30297, !noalias !30284, !inline_history !30290

bb.af:                                            ; preds = %bb.ab
  %i.ea = getelementptr inbounds nuw i8, ptr %1, i64 48, !dbg !30298
  %i.eb = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !30299
  call fastcc void @_RNvXs5_NtNtCsfcROwRM8ZtH_11polars_plan3dsl13datatype_exprNtB5_12DataTypeExprNtNtCscgRAwXFJnXP_4core5clone5Clone5clone(ptr noalias noundef align 16 captures(none) dereferenceable(48) %i.ay, ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(48) %i.ea) #41, !dbg !30300, !inline_history !30290
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ax), !dbg !30302, !noalias !30289
  call fastcc void @_RNvXsC_NtNtCsfcROwRM8ZtH_11polars_plan3dsl8selectorNtB5_16DataTypeSelectorNtNtCscgRAwXFJnXP_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(32) %i.ax, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.eb), !dbg !30302, !noalias !30284, !inline_history !30290
  %.sroa.9.48..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.9, i64 47, !dbg !30303
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %.sroa.9.48..sroa_idx, ptr noundef nonnull align 16 dereferenceable(16) %i.ay, i64 16, i1 false), !dbg !30303
  %.sroa.16.48..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ay, i64 16, !dbg !30303
  %.sroa.16.48.copyload = load i64, ptr %.sroa.16.48..sroa_idx, align 16, !dbg !30303 ; 2 uses
  %.sroa.16.sroa.0.0.extract.trunc = trunc i64 %.sroa.16.48.copyload to i8, !dbg !30303
  %.sroa.16.sroa.7.0.extract.shift = and i64 %.sroa.16.48.copyload, -256, !dbg !30304
  %.sroa.18.48..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ay, i64 24, !dbg !30303
  %.sroa.18.48.copyload = load i64, ptr %.sroa.18.48..sroa_idx, align 8, !dbg !30303
  %.sroa.19.48..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ay, i64 32, !dbg !30303
  %.sroa.19.48.copyload = load i8, ptr %.sroa.19.48..sroa_idx, align 16, !dbg !30303
  %.sroa.9.16..sroa_idx114 = getelementptr inbounds nuw i8, ptr %.sroa.9, i64 15, !dbg !30303
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %.sroa.9.16..sroa_idx114, ptr noundef nonnull align 8 dereferenceable(32) %i.ax, i64 32, i1 false), !dbg !30303, !noalias !30275
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ax), !dbg !30305, !noalias !30289
  br label %_RNvXs1_NtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr11datatype_fnNtB5_16DataTypeFunctionNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit, !dbg !30293

bb.ag:                                            ; preds = %bb.ab
  %i.ec = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !30306
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aw), !dbg !30307, !noalias !30289
  call fastcc void @_RNvXs5_NtNtCsfcROwRM8ZtH_11polars_plan3dsl13datatype_exprNtB5_12DataTypeExprNtNtCscgRAwXFJnXP_4core5clone5Clone5clone(ptr noalias noundef align 16 captures(none) dereferenceable(48) %i.aw, ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(48) %i.ec) #41, !dbg !30307, !noalias !30284, !inline_history !30290
  %i.ed = getelementptr inbounds nuw i8, ptr %1, i64 64, !dbg !30309
  %i.ee = load i64, ptr %i.ed, align 16, !dbg !30309, !alias.scope !30275, !noalias !30284, !noundef !13 ; 2 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %1, i64 80, !dbg !30310
  %i.eg = load i8, ptr %i.ef, align 16, !dbg !30310, !range !4069, !alias.scope !30275, !noalias !30284, !noundef !13
  %i.eh = getelementptr inbounds nuw i8, ptr %1, i64 72, !dbg !30311
  %i.ei = load i64, ptr %i.eh, align 8, !dbg !30311, !alias.scope !30275, !noalias !30284, !noundef !13
  %.sroa.9.16..sroa_idx112 = getelementptr inbounds nuw i8, ptr %.sroa.9, i64 15, !dbg !30312
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(48) %.sroa.9.16..sroa_idx112, ptr noundef nonnull align 16 dereferenceable(48) %i.aw, i64 48, i1 false), !dbg !30312, !noalias !30275
  %.sroa.16.sroa.0.0.extract.trunc124 = trunc i64 %i.ee to i8, !dbg !30312
  %.sroa.16.sroa.7.0.extract.shift127 = and i64 %i.ee, -256, !dbg !30304
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aw), !dbg !30313, !noalias !30289
  br label %_RNvXs1_NtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr11datatype_fnNtB5_16DataTypeFunctionNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit, !dbg !30293

bb.ah:                                            ; preds = %bb.ae
  %i.ej = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl13datatype_expr12DataTypeExprECshquuC4dCYVj_10polars_sql(ptr noalias noundef align 16 dereferenceable(48) %i.ba) #36
          to label %common.resume unwind label %bb.aj, !dbg !30314, !noalias !30284, !inline_history !30290

bb.ai:                                            ; preds = %bb.ae
  %.sroa.0.0.copyload109 = load i8, ptr %i.ba, align 16, !dbg !30315, !noalias !30275
  %.sroa.9.0..sroa_idx110 = getelementptr inbounds nuw i8, ptr %i.ba, i64 1, !dbg !30315
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(47) %.sroa.9, ptr noundef nonnull align 1 dereferenceable(47) %.sroa.9.0..sroa_idx110, i64 47, i1 false), !dbg !30315, !noalias !30275
  %.sroa.9.48..sroa_idx115 = getelementptr inbounds nuw i8, ptr %.sroa.9, i64 47, !dbg !30315
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %.sroa.9.48..sroa_idx115, ptr noundef nonnull align 16 dereferenceable(16) %i.az, i64 16, i1 false), !dbg !30315, !noalias !30275
  %.sroa.16.48..sroa_idx116 = getelementptr inbounds nuw i8, ptr %i.az, i64 16, !dbg !30315
  %.sroa.16.48.copyload117 = load i64, ptr %.sroa.16.48..sroa_idx116, align 16, !dbg !30315, !noalias !30275 ; 2 uses
  %.sroa.16.sroa.0.0.extract.trunc123 = trunc i64 %.sroa.16.48.copyload117 to i8, !dbg !30315
  %.sroa.16.sroa.7.0.extract.shift125 = and i64 %.sroa.16.48.copyload117, -256, !dbg !30304
  %.sroa.18.48..sroa_idx118 = getelementptr inbounds nuw i8, ptr %i.az, i64 24, !dbg !30315
  %.sroa.18.48.copyload119 = load i64, ptr %.sroa.18.48..sroa_idx118, align 8, !dbg !30315, !noalias !30275
  %.sroa.19.48..sroa_idx120 = getelementptr inbounds nuw i8, ptr %i.az, i64 32, !dbg !30315
  %.sroa.19.48.copyload121 = load i8, ptr %.sroa.19.48..sroa_idx120, align 16, !dbg !30315, !noalias !30275
  %.sroa.20.48..sroa_idx122 = getelementptr inbounds nuw i8, ptr %i.az, i64 33, !dbg !30315
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(15) %i.bw, ptr noundef nonnull align 1 dereferenceable(15) %.sroa.20.48..sroa_idx122, i64 15, i1 false), !dbg !30315
  call void @llvm.lifetime.end.p0(ptr nonnull %i.az), !dbg !30314, !noalias !30289
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ba), !dbg !30314, !noalias !30289
  br label %_RNvXs1_NtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr11datatype_fnNtB5_16DataTypeFunctionNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit, !dbg !30293

bb.aj:                                            ; preds = %bb.ah
  %i.ek = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #35, !dbg !30278, !noalias !30284, !inline_history !30290
  unreachable, !dbg !30278

bb.ak:                                            ; preds = %bb.ab
  %i.el = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !30316
  %i.em = getelementptr inbounds nuw i8, ptr %1, i64 64, !dbg !30317
  call void @llvm.lifetime.start.p0(ptr nonnull %i.av), !dbg !30318, !noalias !30289
  call fastcc void @_RNvXs5_NtNtCsfcROwRM8ZtH_11polars_plan3dsl13datatype_exprNtB5_12DataTypeExprNtNtCscgRAwXFJnXP_4core5clone5Clone5clone(ptr noalias noundef align 16 captures(none) dereferenceable(48) %i.av, ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(48) %i.el) #41, !dbg !30318, !noalias !30284, !inline_history !30290
  %.val.i = load i8, ptr %i.em, align 16, !dbg !30320, !range !4069, !alias.scope !30275, !noalias !30284, !noundef !13
  %.sroa.9.16..sroa_idx111 = getelementptr inbounds nuw i8, ptr %.sroa.9, i64 15, !dbg !30321
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(48) %.sroa.9.16..sroa_idx111, ptr noundef nonnull align 16 dereferenceable(48) %i.av, i64 48, i1 false), !dbg !30321, !noalias !30275
  call void @llvm.lifetime.end.p0(ptr nonnull %i.av), !dbg !30322, !noalias !30289
  br label %_RNvXs1_NtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr11datatype_fnNtB5_16DataTypeFunctionNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit, !dbg !30293

bb.al:                                            ; preds = %bb.ab
  %i.en = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !30323
  call void @llvm.lifetime.start.p0(ptr nonnull %i.au), !dbg !30324, !noalias !30289
  call fastcc void @_RNvXs5_NtNtCsfcROwRM8ZtH_11polars_plan3dsl13datatype_exprNtB5_12DataTypeExprNtNtCscgRAwXFJnXP_4core5clone5Clone5clone(ptr noalias noundef align 16 captures(none) dereferenceable(48) %i.au, ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(48) %i.en) #41, !dbg !30324, !noalias !30284, !inline_history !30290
  %.sroa.9.16..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.9, i64 15, !dbg !30326
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(48) %.sroa.9.16..sroa_idx, ptr noundef nonnull align 16 dereferenceable(48) %i.au, i64 48, i1 false), !dbg !30326, !noalias !30275
  call void @llvm.lifetime.end.p0(ptr nonnull %i.au), !dbg !30327, !noalias !30289
  br label %_RNvXs1_NtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr11datatype_fnNtB5_16DataTypeFunctionNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit, !dbg !30293

_RNvXs1_NtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr11datatype_fnNtB5_16DataTypeFunctionNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit: ; preds = %bb.ad, %bb.ag, %bb.ai, %bb.af, %bb.ak, %bb.al
  %.sroa.16.sroa.7.sroa.0.0 = phi i64 [ 0, %bb.ad ], [ %.sroa.16.sroa.7.0.extract.shift125, %bb.ai ], [ %.sroa.16.sroa.7.0.extract.shift, %bb.af ], [ %.sroa.16.sroa.7.0.extract.shift127, %bb.ag ], [ 0, %bb.ak ], [ 0, %bb.al ], !dbg !30273
  %.sroa.16.sroa.0.0 = phi i8 [ undef, %bb.ad ], [ %.sroa.16.sroa.0.0.extract.trunc123, %bb.ai ], [ %.sroa.16.sroa.0.0.extract.trunc, %bb.af ], [ %.sroa.16.sroa.0.0.extract.trunc124, %bb.ag ], [ %.val.i, %bb.ak ], [ undef, %bb.al ], !dbg !30273
  %.sroa.19.0 = phi i8 [ undef, %bb.ad ], [ %.sroa.19.48.copyload121, %bb.ai ], [ %.sroa.19.48.copyload, %bb.af ], [ %i.eg, %bb.ag ], [ undef, %bb.ak ], [ undef, %bb.al ], !dbg !30273
  %.sroa.18.0 = phi i64 [ undef, %bb.ad ], [ %.sroa.18.48.copyload119, %bb.ai ], [ %.sroa.18.48.copyload, %bb.af ], [ %i.ei, %bb.ag ], [ undef, %bb.ak ], [ undef, %bb.al ], !dbg !30273
  %.sroa.0.0 = phi i8 [ 39, %bb.ad ], [ %.sroa.0.0.copyload109, %bb.ai ], [ 41, %bb.af ], [ 42, %bb.ag ], [ 43, %bb.ak ], [ 44, %bb.al ], !dbg !30278
  store i8 %.sroa.0.0, ptr %0, align 16, !dbg !30304
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1, !dbg !30304
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(63) %.sroa.9.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(63) %.sroa.9, i64 63, i1 false), !dbg !30304
  %.sroa.16.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 64, !dbg !30304
  %.sroa.16.sroa.0.0.insert.ext = zext i8 %.sroa.16.sroa.0.0 to i64, !dbg !30304
  %.sroa.16.sroa.0.0.insert.insert = or disjoint i64 %.sroa.16.sroa.7.sroa.0.0, %.sroa.16.sroa.0.0.insert.ext, !dbg !30304
  store i64 %.sroa.16.sroa.0.0.insert.insert, ptr %.sroa.16.0..sroa_idx, align 16, !dbg !30304
  %.sroa.18.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 72, !dbg !30304
  store i64 %.sroa.18.0, ptr %.sroa.18.0..sroa_idx, align 8, !dbg !30304
  %.sroa.19.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 80, !dbg !30304
  store i8 %.sroa.19.0, ptr %.sroa.19.0..sroa_idx, align 16, !dbg !30304
  %.sroa.20.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 81, !dbg !30304
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(15) %.sroa.20.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(15) %i.bw, i64 15, i1 false), !dbg !30304
  %i.eo = getelementptr inbounds nuw i8, ptr %0, i64 112, !dbg !30304
  store i64 -9223372036854775803, ptr %i.eo, align 16, !dbg !30304
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9), !dbg !30328
  br label %bb.jm, !dbg !30149

bb.am:                                            ; preds = %bb.a
  %i.ep = load ptr, ptr %1, align 16, !dbg !30329, !nonnull !13, !noundef !13
  %i.eq = atomicrmw add ptr %i.ep, i64 1 monotonic, align 8, !dbg !30336
  %i.er = icmp slt i64 %i.eq, 0, !dbg !30340
  br i1 %i.er, label %bb.jy, label %bb.jz, !dbg !30340

bb.an:                                            ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bv), !dbg !30342
  %i.es = getelementptr inbounds nuw i8, ptr %1, i64 48, !dbg !30344 ; 2 uses
  %i.et = load ptr, ptr %i.es, align 16, !dbg !30344, !nonnull !13, !noundef !13
  %i.eu = atomicrmw add ptr %i.et, i64 1 monotonic, align 8, !dbg !30349
  %i.ev = icmp slt i64 %i.eu, 0, !dbg !30353
  br i1 %i.ev, label %bb.kd, label %bb.kc, !dbg !30353

bb.ao:                                            ; preds = %bb.a
  %i.ew = load ptr, ptr %1, align 16, !dbg !30355, !nonnull !13, !noundef !13
  %i.ex = atomicrmw add ptr %i.ew, i64 1 monotonic, align 8, !dbg !30362
  %i.ey = icmp slt i64 %i.ex, 0, !dbg !30366
  br i1 %i.ey, label %bb.ki, label %bb.kh, !dbg !30366

bb.ap:                                            ; preds = %bb.a
  %i.ez = load ptr, ptr %1, align 16, !dbg !30368, !nonnull !13, !noundef !13
  %i.fa = atomicrmw add ptr %i.ez, i64 1 monotonic, align 8, !dbg !30375
  %i.fb = icmp slt i64 %i.fa, 0, !dbg !30379
  br i1 %i.fb, label %bb.kk, label %bb.kj, !dbg !30379

bb.aq:                                            ; preds = %bb.a
  %i.fc = getelementptr inbounds nuw i8, ptr %1, i64 24, !dbg !30381
end_hunk_4
