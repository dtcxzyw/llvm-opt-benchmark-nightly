Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pola-rs/original/polars_dtype-1a69546bcdb44d93.polars_dtype.5d47620fe5dcef62-cgu.02?download=true
inline.NumInlined: 165
inline.NumDeleted: 84
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@0 = private unnamed_addr constant [41 x i8] c"crates/polars-utils/src/parma/raw/mod.rs\00", align 1
@1 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"(\00\00\00\00\00\00\00v\02\00\00F\00\00\00" }>, align 8
@_RNvNCNKNvNtNtCsbm5zPlkZccl_4pyo38internal5state12ATTACH_COUNT0s_023___RUST_STD_INTERNAL_VAL = external thread_local local_unnamed_addr global i64
@2 = private unnamed_addr constant [60 x i8] c"attempted to insert more categories than the maximum allowed", align 1
@3 = private unnamed_addr constant <{ [16 x i8], ptr, [8 x i8], [40 x i8] }> <{ [16 x i8] c"\02\00\00\00\00\00\00\00\00\00\00\00\00\00\00\80", ptr @2, [8 x i8] c"<\00\00\00\00\00\00\00", [40 x i8] undef }>, align 8
@4 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtCsh8eZTKRCwoO_3std4sync6poison11PoisonErrorINtNtBJ_5mutex10MutexGuardINtNtNtCs2mZqlW55729_12polars_utils5parma3raw14TableLockStateemEEEECs80wj1cxFixi_12polars_dtype, [16 x i8] c"\10\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs_NtNtCsh8eZTKRCwoO_3std4sync6poisonINtB4_11PoisonErrorINtNtB4_5mutex10MutexGuardINtNtNtCs2mZqlW55729_12polars_utils5parma3raw14TableLockStateemEEENtNtCscgRAwXFJnXP_4core3fmt5Debug3fmtCs80wj1cxFixi_12polars_dtype }>, align 8
@5 = private unnamed_addr constant [43 x i8] c"called `Result::unwrap()` on an `Err` value", align 1
@6 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtCsh8eZTKRCwoO_3std4sync6poison11PoisonErrorINtNtBJ_5mutex10MutexGuarduEEECs80wj1cxFixi_12polars_dtype, [16 x i8] c"\10\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs_NtNtCsh8eZTKRCwoO_3std4sync6poisonINtB4_11PoisonErrorINtNtB4_5mutex10MutexGuarduEENtNtCscgRAwXFJnXP_4core3fmt5Debug3fmtCs80wj1cxFixi_12polars_dtype }>, align 8
@7 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @_RNvXsd_NtNtCscgRAwXFJnXP_4core5alloc6layoutNtB5_11LayoutErrorNtNtB9_3fmt5Debug3fmt }>, align 8
@_RNvNtNtCs2mZqlW55729_12polars_utils5parma3raw15EMPTY_ALLOC_LOC = external global { { i64, { { { i64 } } }, { { { i64 } } }, { { { i64 } } }, {}, [0 x { { { { i64 } } } }] }, [1 x { { { { i64 } } } }], [8 x { { { ptr } } }] }
@8 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"(\00\00\00\00\00\00\00%\00\00\00T\00\00\00" }>, align 8
@9 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"(\00\00\00\00\00\00\00&\00\00\00\0E\00\00\00" }>, align 8
@10 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"(\00\00\00\00\00\00\00)\00\00\00P\00\00\00" }>, align 8
@11 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"(\00\00\00\00\00\00\00*\00\00\00\0E\00\00\00" }>, align 8
@12 = private unnamed_addr constant [87 x i8] c"assertion failed: num_entries.is_power_of_two() && num_entries >= size_of::<TagGroup>()", align 1
@13 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"(\00\00\00\00\00\00\00\22\00\00\00\09\00\00\00" }>, align 8
@_RNvNtNtCsh8eZTKRCwoO_3std9panicking11panic_count18GLOBAL_PANIC_COUNT = external local_unnamed_addr global { { { i64 } } }
@14 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"(\00\00\00\00\00\00\00Q\01\00\004\00\00\00" }>, align 8
@15 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"(\00\00\00\00\00\00\00]\01\00\00@\00\00\00" }>, align 8
@16 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"(\00\00\00\00\00\00\00\FB\00\00\00.\00\00\00" }>, align 8
@17 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"(\00\00\00\00\00\00\00\0B\01\00\006\00\00\00" }>, align 8
@18 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"(\00\00\00\00\00\00\00\BC\00\00\00J\00\00\00" }>, align 8
@19 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"(\00\00\00\00\00\00\00\BF\00\00\00\0E\00\00\00" }>, align 8
@20 = private unnamed_addr constant [11 x i8] c"LayoutError", align 1

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs2_NtNtCs2mZqlW55729_12polars_utils5parma3rawINtB6_8RawTableemE22try_get_or_insert_withNtCsgjwxzEoLG5s_12polars_error11PolarsErrorNCNvMNtNtCs80wj1cxFixi_12polars_dtype11categorical7mappingNtB2e_18CategoricalMapping20insert_cat_with_hash0NCB2b_s_0EB2i_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([72 x i8]) align 8 captures(none) dereferenceable(72) %0, ptr noundef nonnull align 128 %1, i64 noundef %2, ptr noalias noundef nonnull readonly captures(none) %3, i64 noundef %4, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %5, ptr noundef nonnull align 128 %6) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !207 {
bb.a:
  %i.a = alloca [0 x i8], align 1                 ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 7 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  %i.d = alloca [16 x i8], align 8                ; 5 uses
  %i.e = alloca [24 x i8], align 8                ; 6 uses
  %i.f = alloca [24 x i8], align 8                ; 6 uses
  %i.g = alloca [8 x i8], align 8                 ; 4 uses
  %i.h = alloca [24 x i8], align 8                ; 7 uses
  %i.i = alloca [72 x i8], align 8                ; 21 uses
  %i.j = alloca [24 x i8], align 8                ; 7 uses
  %i.k = alloca [24 x i8], align 8                ; 4 uses
  %i.l = alloca [24 x i8], align 8                ; 5 uses
  %i.m = alloca [16 x i8], align 8                ; 5 uses
  %i.n = alloca [16 x i8], align 8                ; 5 uses
  %i.o = alloca [24 x i8], align 8                ; 6 uses
  %i.p = alloca [24 x i8], align 8                ; 8 uses
  %i.q = alloca [8 x i8], align 8                 ; 5 uses
  %i.r = alloca [8 x i8], align 8                 ; 3 uses
  store ptr %5, ptr %i.r, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !1279 ; 5 uses
  %i.t = load atomic ptr, ptr %i.s acquire, align 32, !dbg !1280 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  store ptr %i.r, ptr %i.q, align 8, !noalias !1124
  %i.u = lshr i64 %2, 3, !dbg !1281               ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 32, !dbg !1282
  %i.w = load i64, ptr %i.t, align 8, !dbg !1283, !noalias !1124, !noundef !91 ; 3 uses
  %i.x = lshr i64 %i.w, 3, !dbg !1283             ; 2 uses
  %i.y = getelementptr i8, ptr %i.t, i64 %i.w, !dbg !1284
  %i.z = getelementptr i8, ptr %i.y, i64 32, !dbg !1284
  %i.aa = add nsw i64 %i.x, -1, !dbg !1285
  %i.ab = lshr i64 %2, 57, !dbg !1286             ; 2 uses
  %i.ac = mul nuw nsw i64 %i.ab, 72340172838076673, !dbg !1287 ; 3 uses
  %i.ad = icmp ne i64 %i.x, 0
  call void @llvm.assume(i1 %i.ad)
  br label %bb.b, !dbg !1288

bb.b:                                             ; preds = %bb.d, %bb.a
  %.sroa.7.0.i = phi i64 [ 0, %bb.a ], [ %i.ax, %bb.d ], !dbg !1289 ; 2 uses
  %.sroa.0.0.i = phi i64 [ %i.u, %bb.a ], [ %i.ay, %bb.d ], !dbg !1289 ; 3 uses
  %i.ae = and i64 %.sroa.0.0.i, %i.aa, !dbg !1290 ; 2 uses
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %i.ae, !dbg !1291
  %i.ag = load atomic i64, ptr %i.af monotonic, align 8, !dbg !1292, !noalias !1124 ; 3 uses
  %i.ah = xor i64 %i.ag, %i.ac, !dbg !1293
  %i.ai = add i64 %i.ah, -72340172838076673, !dbg !1294
  %i.aj = and i64 %i.ag, -9187201950435737472, !dbg !1295 ; 2 uses
  %i.ak = xor i64 %i.aj, -9187201950435737472, !dbg !1295
  %i.al = and i64 %i.ak, %i.ai, !dbg !1295        ; 2 uses
  %i.am = icmp eq i64 %i.al, 0, !dbg !1296
  br i1 %i.am, label %._crit_edge.i, label %.lr.ph.i, !dbg !1296

.lr.ph.i:                                         ; preds = %bb.b
  %i.an = shl nuw i64 %i.ae, 3
  br label %bb.c, !dbg !1296

._crit_edge.i:                                    ; preds = %bb.e, %bb.b
  %i.ao = add i64 %i.ag, 72340172838076673, !dbg !1297
  %i.ap = and i64 %i.aj, %i.ao, !dbg !1298
  %i.aq = icmp eq i64 %i.ap, 0, !dbg !1299
  br i1 %i.aq, label %bb.d, label %.loopexit, !dbg !1299

bb.c:                                             ; preds = %bb.e, %.lr.ph.i
  %.sroa.014.030.i = phi i64 [ %i.al, %.lr.ph.i ], [ %i.ba, %bb.e ] ; 3 uses
  %i.ar = call range(i64 7, 65) i64 @llvm.cttz.i64(i64 %.sroa.014.030.i, i1 true), !dbg !1300
  %i.as = lshr i64 %i.ar, 3, !dbg !1301
  %i.at = or disjoint i64 %i.as, %i.an, !dbg !1302 ; 2 uses
  %i.au = icmp ult i64 %i.at, %i.w, !dbg !1303
  call void @llvm.assume(i1 %i.au), !dbg !1304
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %i.at, !dbg !1305
  %i.aw = load atomic ptr, ptr %i.av acquire, align 8, !dbg !1306, !noalias !1124 ; 5 uses
  %magicptr.i = ptrtoint ptr %i.aw to i64, !dbg !1307
  switch i64 %magicptr.i, label %bb.f [
    i64 0, label %.loopexit
    i64 -1, label %bb.e
  ], !dbg !1307

bb.d:                                             ; preds = %._crit_edge.i
  %i.ax = add i64 %.sroa.7.0.i, 1, !dbg !1308     ; 2 uses
  %i.ay = add i64 %.sroa.0.0.i, %i.ax, !dbg !1309
  br label %bb.b, !dbg !1288

bb.e:                                             ; preds = %_RNvMs_NtNtCs2mZqlW55729_12polars_utils5parma3rawINtB4_11EntryHeaderemE7key_ptrCs80wj1cxFixi_12polars_dtype.exit.i, %bb.f, %bb.c
  %i.az = add i64 %.sroa.014.030.i, -128, !dbg !1310
  %i.ba = and i64 %i.az, %.sroa.014.030.i, !dbg !1311 ; 2 uses
  %i.bb = icmp eq i64 %i.ba, 0, !dbg !1296
  br i1 %i.bb, label %._crit_edge.i, label %bb.c, !dbg !1296

bb.f:                                             ; preds = %bb.c
  %i.bc = load atomic ptr, ptr %i.aw acquire, align 8, !dbg !1312, !noalias !1136
  %i.bd = ptrtoint ptr %i.bc to i64, !dbg !1313   ; 2 uses
  %i.be = and i64 %i.bd, 4, !dbg !1314
  %i.bf = icmp eq i64 %i.be, 0, !dbg !1314
  br i1 %i.bf, label %_RNvMs_NtNtCs2mZqlW55729_12polars_utils5parma3rawINtB4_11EntryHeaderemE7key_ptrCs80wj1cxFixi_12polars_dtype.exit.i, label %bb.e, !dbg !1314

_RNvMs_NtNtCs2mZqlW55729_12polars_utils5parma3rawINtB4_11EntryHeaderemE7key_ptrCs80wj1cxFixi_12polars_dtype.exit.i: ; preds = %bb.f
  %i.bg = getelementptr inbounds nuw i8, ptr %i.aw, i64 16, !dbg !1315
  %i.bh = getelementptr inbounds nuw i8, ptr %i.aw, i64 24, !dbg !1316
  %i.bi = load i64, ptr %i.bg, align 8, !dbg !1317, !noalias !1136, !noundef !91
  %i.bj = call noundef zeroext i1 @_RNvXs1_NtNtNtCscgRAwXFJnXP_4core3ops8function5implsQNCNvMNtNtCs80wj1cxFixi_12polars_dtype11categorical7mappingNtBT_18CategoricalMapping20insert_cat_with_hash0INtB7_5FnMutTReEE8call_mutBX_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.q, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.bh, i64 noundef %i.bi), !dbg !1318, !noalias !1136
  br i1 %i.bj, label %bb.g, label %bb.e, !dbg !1318

bb.g:                                             ; preds = %_RNvMs_NtNtCs2mZqlW55729_12polars_utils5parma3rawINtB4_11EntryHeaderemE7key_ptrCs80wj1cxFixi_12polars_dtype.exit.i
  %i.bk = and i64 %i.bd, 1, !dbg !1319
  %i.bl = icmp eq i64 %i.bk, 0, !dbg !1319
  br i1 %i.bl, label %.loopexit, label %bb.dp, !dbg !1319

.loopexit:                                        ; preds = %._crit_edge.i, %bb.c, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !dbg !1320
  %i.bm = load ptr, ptr %i.r, align 8, !dbg !1321, !nonnull !91, !align !121, !noundef !91 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1137), !dbg !1322
  %i.bn = add i64 %4, -9223372036854775793, !dbg !1323
  %.not.i.i.i = icmp ult i64 %i.bn, -9223372036854775801, !dbg !1323
  br i1 %.not.i.i.i, label %bb.h, label %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultNtNtNtB4_5alloc6layout6LayoutNtBJ_11LayoutErrorE6unwrapCs80wj1cxFixi_12polars_dtype.exit.i.i.i, !dbg !1324, !prof !127

bb.h:                                             ; preds = %.loopexit
  call void @_RNvNtCscgRAwXFJnXP_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @5, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @7, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @18) #19, !dbg !1325, !noalias !1138
  unreachable

_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultNtNtNtB4_5alloc6layout6LayoutNtBJ_11LayoutErrorE6unwrapCs80wj1cxFixi_12polars_dtype.exit.i.i.i: ; preds = %.loopexit
  %i.bo = add i64 %4, 24, !dbg !1326              ; 3 uses
  %.not.i.i.i.i = icmp ugt i64 %i.bo, 9223372036854775800, !dbg !1327
  br i1 %.not.i.i.i.i, label %bb.i, label %_RNvMs_NtNtCs2mZqlW55729_12polars_utils5parma3rawINtB4_11EntryHeaderemE6layoutCs80wj1cxFixi_12polars_dtype.exit.i.i, !dbg !1328

bb.i:                                             ; preds = %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultNtNtNtB4_5alloc6layout6LayoutNtBJ_11LayoutErrorE6unwrapCs80wj1cxFixi_12polars_dtype.exit.i.i.i
  call void @_RNvNtCscgRAwXFJnXP_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @5, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @7, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @19) #19, !dbg !1329, !noalias !1139
  unreachable

_RNvMs_NtNtCs2mZqlW55729_12polars_utils5parma3rawINtB4_11EntryHeaderemE6layoutCs80wj1cxFixi_12polars_dtype.exit.i.i: ; preds = %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultNtNtNtB4_5alloc6layout6LayoutNtBJ_11LayoutErrorE6unwrapCs80wj1cxFixi_12polars_dtype.exit.i.i.i
  call void @_RNvCs9MrPpZx4smZ_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #20, !dbg !1330, !noalias !1138
  %i.bp = call noundef align 8 ptr @_RNvCs9MrPpZx4smZ_7___rustc12___rust_alloc(i64 noundef %i.bo, i64 noundef 8) #20, !dbg !1331, !noalias !1138 ; 11 uses
  %i.bq = icmp eq ptr %i.bp, null, !dbg !1332
  br i1 %i.bq, label %bb.j, label %_RNvMs_NtNtCs2mZqlW55729_12polars_utils5parma3rawINtB4_11EntryHeaderemE3newCs80wj1cxFixi_12polars_dtype.exit.i, !dbg !1332, !prof !127

bb.j:                                             ; preds = %_RNvMs_NtNtCs2mZqlW55729_12polars_utils5parma3rawINtB4_11EntryHeaderemE6layoutCs80wj1cxFixi_12polars_dtype.exit.i.i
  call void @_RNvNtCsgZ49sUHp3tW_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef %i.bo) #19, !dbg !1333, !noalias !1138
  unreachable, !dbg !1333

_RNvMs_NtNtCs2mZqlW55729_12polars_utils5parma3rawINtB4_11EntryHeaderemE3newCs80wj1cxFixi_12polars_dtype.exit.i: ; preds = %_RNvMs_NtNtCs2mZqlW55729_12polars_utils5parma3rawINtB4_11EntryHeaderemE6layoutCs80wj1cxFixi_12polars_dtype.exit.i.i
  %i.br = and i64 %2, -8, !dbg !1334              ; 2 uses
  store i64 %i.br, ptr %i.bp, align 8, !dbg !1335, !noalias !1138
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bp, i64 16, !dbg !1336 ; 3 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bp, i64 24, !dbg !1337 ; 3 uses
  store i64 %4, ptr %i.bs, align 8, !dbg !1338, !noalias !1140
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.bt, ptr nonnull readonly align 1 %3, i64 range(i64 0, -9223372036854775808) %4, i1 false), !dbg !1339, !noalias !1141
  %i.bu = load atomic ptr, ptr %i.s acquire, align 32, !dbg !1340, !noalias !1142 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 16, !dbg !1341 ; 2 uses
  %i.bw = load atomic i64, ptr %i.bv monotonic, align 8, !dbg !1342, !noalias !1142
  br label %bb.k, !dbg !1343

bb.k:                                             ; preds = %bb.l, %_RNvMs_NtNtCs2mZqlW55729_12polars_utils5parma3rawINtB4_11EntryHeaderemE3newCs80wj1cxFixi_12polars_dtype.exit.i
  %.sroa.06.0.i.i.i = phi i64 [ %i.bw, %_RNvMs_NtNtCs2mZqlW55729_12polars_utils5parma3rawINtB4_11EntryHeaderemE3newCs80wj1cxFixi_12polars_dtype.exit.i ], [ %i.ca, %bb.l ], !dbg !1344 ; 3 uses
  %.not.i.i25.i = icmp eq i64 %.sroa.06.0.i.i.i, 0, !dbg !1345
  br i1 %.not.i.i25.i, label %bb.m, label %bb.l, !dbg !1346

bb.l:                                             ; preds = %bb.k
  %i.bx = add i64 %.sroa.06.0.i.i.i, -1, !dbg !1345
  %i.by = cmpxchg weak ptr %i.bv, i64 %.sroa.06.0.i.i.i, i64 %i.bx monotonic monotonic, align 8, !dbg !1347, !noalias !1142 ; 2 uses
  %i.bz = extractvalue { i64, i1 } %i.by, 1, !dbg !1347
  %i.ca = extractvalue { i64, i1 } %i.by, 0, !dbg !1347
  br i1 %i.bz, label %_RNvMs2_NtNtCs2mZqlW55729_12polars_utils5parma3rawINtB5_8RawTableemE20start_insert_attemptCs80wj1cxFixi_12polars_dtype.exit.i, label %bb.k, !dbg !1348

bb.m:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !dbg !1349, !noalias !1142
  call void @_RNvMs5_NtNtNtCsh8eZTKRCwoO_3std4sync6poison5mutexINtB5_5MutexINtNtNtCs2mZqlW55729_12polars_utils5parma3raw14TableLockStateemEE4lockCs80wj1cxFixi_12polars_dtype(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.p, ptr noundef nonnull align 128 %1), !dbg !1350, !noalias !1142
  call void @llvm.experimental.noalias.scope.decl(metadata !1145), !dbg !1351
  %i.cb = load i64, ptr %i.p, align 8, !dbg !1352, !range !134, !alias.scope !1145, !noalias !1146, !noundef !91
  %i.cc = trunc nuw i64 %i.cb to i1, !dbg !1353
  br i1 %i.cc, label %bb.n, label %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultINtNtNtNtCsh8eZTKRCwoO_3std4sync6poison5mutex10MutexGuardINtNtNtCs2mZqlW55729_12polars_utils5parma3raw14TableLockStateemEEINtBM_11PoisonErrorBH_EE6unwrapCs80wj1cxFixi_12polars_dtype.exit8.i.i, !dbg !1353, !prof !127

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !dbg !1354, !noalias !1147
  %i.cd = getelementptr inbounds nuw i8, ptr %i.p, i64 8, !dbg !1354
  %i.ce = load ptr, ptr %i.cd, align 8, !dbg !1354, !alias.scope !1145, !noalias !1146, !nonnull !91, !align !121, !noundef !91
  %i.cf = getelementptr inbounds nuw i8, ptr %i.p, i64 16, !dbg !1354
  %i.cg = load i8, ptr %i.cf, align 8, !dbg !1354, !range !135, !alias.scope !1145, !noalias !1146, !noundef !91
  store ptr %i.ce, ptr %i.m, align 8, !dbg !1354, !noalias !1147
  %i.ch = getelementptr inbounds nuw i8, ptr %i.m, i64 8, !dbg !1354
  store i8 %i.cg, ptr %i.ch, align 8, !dbg !1354, !noalias !1147
  invoke void @_RNvNtCscgRAwXFJnXP_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @5, i64 noundef 43, ptr noundef nonnull %i.m, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @4, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @14) #19
          to label %bb.p unwind label %bb.o, !dbg !1355, !noalias !1148

bb.o:                                             ; preds = %bb.n
  %i.ci = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtCsh8eZTKRCwoO_3std4sync6poison11PoisonErrorINtNtBJ_5mutex10MutexGuardINtNtNtCs2mZqlW55729_12polars_utils5parma3raw14TableLockStateemEEEECs80wj1cxFixi_12polars_dtype(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.m) #21
          to label %common.resume.i unwind label %bb.q, !dbg !1356, !noalias !1148

bb.p:                                             ; preds = %bb.n
  unreachable

bb.q:                                             ; preds = %bb.o
  %i.cj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #22, !dbg !1357, !noalias !1148
  unreachable, !dbg !1357

common.resume.i:                                  ; preds = %bb.cz, %_RNvMNtNtCsh8eZTKRCwoO_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i57.i, %bb.cm, %bb.ch, %bb.cf, %bb.ce, %bb.bp, %bb.aq, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6result6ResultINtNtNtNtCsh8eZTKRCwoO_3std4sync6poison6rwlock16RwLockWriteGuarduEINtB17_11PoisonErrorB12_EEECs80wj1cxFixi_12polars_dtype.exit24.i.i.i, %bb.o
  %common.resume.op.i = phi { ptr, i32 } [ %i.mb, %bb.bp ], [ %i.hh, %bb.aq ], [ %i.ci, %bb.o ], [ %.pn.i.i.i, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6result6ResultINtNtNtNtCsh8eZTKRCwoO_3std4sync6poison6rwlock16RwLockWriteGuarduEINtB17_11PoisonErrorB12_EEECs80wj1cxFixi_12polars_dtype.exit24.i.i.i ], [ %i.mb, %bb.ch ], [ %i.mb, %bb.cf ], [ %i.mb, %bb.ce ], [ %i.og, %bb.cm ], [ %i.pe, %bb.cz ], [ %i.pe, %_RNvMNtNtCsh8eZTKRCwoO_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i57.i ]
  resume { ptr, i32 } %common.resume.op.i, !dbg !1358

_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultINtNtNtNtCsh8eZTKRCwoO_3std4sync6poison5mutex10MutexGuardINtNtNtCs2mZqlW55729_12polars_utils5parma3raw14TableLockStateemEEINtBM_11PoisonErrorBH_EE6unwrapCs80wj1cxFixi_12polars_dtype.exit8.i.i: ; preds = %bb.m
  %i.ck = getelementptr inbounds nuw i8, ptr %i.p, i64 8, !dbg !1359
  %i.cl = load ptr, ptr %i.ck, align 8, !dbg !1359, !alias.scope !1145, !noalias !1146, !nonnull !91, !align !121, !noundef !91
  %i.cm = getelementptr inbounds nuw i8, ptr %i.p, i64 16, !dbg !1359
  %i.cn = load i8, ptr %i.cm, align 8, !dbg !1359, !range !135, !alias.scope !1145, !noalias !1146, !noundef !91
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !dbg !1360, !noalias !1142
  %i.co = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.o, i64 8 ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.o, i64 16 ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 3 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.ct = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  br label %.outer, !dbg !1361

.outer:                                           ; preds = %bb.at, %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultINtNtNtNtCsh8eZTKRCwoO_3std4sync6poison5mutex10MutexGuardINtNtNtCs2mZqlW55729_12polars_utils5parma3raw14TableLockStateemEEINtBM_11PoisonErrorBH_EE6unwrapCs80wj1cxFixi_12polars_dtype.exit8.i.i
  %.sroa.8.0.i.i.ph = phi i8 [ %i.hk, %bb.at ], [ %i.cn, %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultINtNtNtNtCsh8eZTKRCwoO_3std4sync6poison5mutex10MutexGuardINtNtNtCs2mZqlW55729_12polars_utils5parma3raw14TableLockStateemEEINtBM_11PoisonErrorBH_EE6unwrapCs80wj1cxFixi_12polars_dtype.exit8.i.i ] ; 3 uses
  %.sroa.0.026.i.i.ph = phi ptr [ %i.hj, %bb.at ], [ %i.cl, %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultINtNtNtNtCsh8eZTKRCwoO_3std4sync6poison5mutex10MutexGuardINtNtNtCs2mZqlW55729_12polars_utils5parma3raw14TableLockStateemEEINtBM_11PoisonErrorBH_EE6unwrapCs80wj1cxFixi_12polars_dtype.exit8.i.i ] ; 8 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %.sroa.0.026.i.i.ph, i64 8 ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %.sroa.0.026.i.i.ph, i64 24 ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %.sroa.0.026.i.i.ph, i64 16
  br label %bb.r, !dbg !1362

bb.r:                                             ; preds = %.outer, %_RNvMs2_NtNtCs2mZqlW55729_12polars_utils5parma3rawINtB5_8RawTableemE7reallocCs80wj1cxFixi_12polars_dtype.exit.i.i
  %i.cx = load atomic ptr, ptr %i.s acquire, align 32, !dbg !1363, !noalias !1142 ; 4 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 16, !dbg !1364 ; 2 uses
  %i.cz = load atomic i64, ptr %i.cy monotonic, align 8, !dbg !1365, !noalias !1142
  br label %bb.s, !dbg !1362

bb.s:                                             ; preds = %bb.t, %bb.r
  %.sroa.06.0.i13.i.i = phi i64 [ %i.cz, %bb.r ], [ %i.dd, %bb.t ], !dbg !1366 ; 3 uses
  %.not.i14.i.i = icmp eq i64 %.sroa.06.0.i13.i.i, 0, !dbg !1367
  br i1 %.not.i14.i.i, label %bb.z, label %bb.t, !dbg !1368

bb.t:                                             ; preds = %bb.s
  %i.da = add i64 %.sroa.06.0.i13.i.i, -1, !dbg !1367
  %i.db = cmpxchg weak ptr %i.cy, i64 %.sroa.06.0.i13.i.i, i64 %i.da monotonic monotonic, align 8, !dbg !1369, !noalias !1142 ; 2 uses
  %i.dc = extractvalue { i64, i1 } %i.db, 1, !dbg !1369
  %i.dd = extractvalue { i64, i1 } %i.db, 0, !dbg !1369
  br i1 %i.dc, label %bb.u, label %bb.s, !dbg !1370

bb.u:                                             ; preds = %bb.t
  %i.de = getelementptr inbounds nuw i8, ptr %.sroa.0.026.i.i.ph, i64 4, !dbg !1371
  %i.df = trunc nuw i8 %.sroa.8.0.i.i.ph to i1, !dbg !1372
  br i1 %i.df, label %_RNvMNtNtCsh8eZTKRCwoO_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i, label %bb.v, !dbg !1372

bb.v:                                             ; preds = %bb.u
  %i.dg = load atomic i64, ptr @_RNvNtNtCsh8eZTKRCwoO_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8, !dbg !1373, !noalias !1142
  %i.dh = and i64 %i.dg, 9223372036854775807, !dbg !1374
  %i.di = icmp eq i64 %i.dh, 0, !dbg !1374
  br i1 %i.di, label %_RNvMNtNtCsh8eZTKRCwoO_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i, label %bb.w, !dbg !1374, !prof !150

bb.w:                                             ; preds = %bb.v
  %i.dj = call noundef zeroext i1 @_RNvNtNtCsh8eZTKRCwoO_3std9panicking11panic_count17is_zero_slow_path() #23, !dbg !1375, !noalias !1142
  br i1 %i.dj, label %_RNvMNtNtCsh8eZTKRCwoO_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i, label %bb.x, !dbg !1376

bb.x:                                             ; preds = %bb.w
  store atomic i8 1, ptr %i.de monotonic, align 1, !dbg !1377, !noalias !1142
  br label %_RNvMNtNtCsh8eZTKRCwoO_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i, !dbg !1378

_RNvMNtNtCsh8eZTKRCwoO_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i: ; preds = %bb.x, %bb.w, %bb.v, %bb.u
  %i.dk = atomicrmw xchg ptr %.sroa.0.026.i.i.ph, i32 0 release, align 4, !dbg !1379, !noalias !1142
  %i.dl = icmp eq i32 %i.dk, 2, !dbg !1380
  br i1 %i.dl, label %bb.y, label %_RNvMs2_NtNtCs2mZqlW55729_12polars_utils5parma3rawINtB5_8RawTableemE20start_insert_attemptCs80wj1cxFixi_12polars_dtype.exit.i, !dbg !1380, !prof !127

bb.y:                                             ; preds = %_RNvMNtNtCsh8eZTKRCwoO_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i
  call void @_RNvMNtNtNtNtCsh8eZTKRCwoO_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %.sroa.0.026.i.i.ph), !dbg !1381, !noalias !1142
  br label %_RNvMs2_NtNtCs2mZqlW55729_12polars_utils5parma3rawINtB5_8RawTableemE20start_insert_attemptCs80wj1cxFixi_12polars_dtype.exit.i, !dbg !1381

bb.z:                                             ; preds = %bb.s
  %i.dm = getelementptr inbounds nuw i8, ptr %i.cx, i64 24, !dbg !1382
  %i.dn = load atomic i64, ptr %i.dm acquire, align 8, !dbg !1383, !noalias !1142
  %i.do = icmp eq i64 %i.dn, 0, !dbg !1384
  br i1 %i.do, label %bb.aa, label %bb.ao, !dbg !1384

bb.aa:                                            ; preds = %bb.z
  %i.dp = load atomic ptr, ptr %i.s monotonic, align 32, !dbg !1385, !noalias !1142 ; 5 uses
  %i.dq = load i64, ptr %i.dp, align 8, !dbg !1386, !noalias !1142, !noundef !91
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dp, i64 8, !dbg !1387
  %i.ds = load atomic i64, ptr %i.dr acquire, align 8, !dbg !1388, !noalias !1142
  %i.dt = mul i64 %i.dq, 3, !dbg !1389
  %i.du = lshr i64 %i.dt, 2, !dbg !1389
  %i.dv = sub i64 %i.du, %i.ds, !dbg !1390
  %i.dw = shl i64 %i.dv, 1, !dbg !1391            ; 2 uses
end_hunk_0
begin_hunk_1_@_RINvMs2_NtNtCs2mZqlW55729_12polars_utils5parma3rawINtB6_8RawTableemE22try_get_or_insert_withNtCsgjwxzEoLG5s_12polars_error11PolarsErrorNCNvMNtNtCs80wj1cxFixi_12polars_dtype11categorical7mappingNtB2e_18CategoricalMapping20insert_cat_with_hash0NCB2b_s_0EB2i_:bb.a
  %i.fn = and i64 %i.fm, 4, !dbg !1444
  %i.fo = icmp eq i64 %i.fn, 0, !dbg !1444
  br i1 %i.fo, label %bb.ak, label %bb.ai, !dbg !1444

bb.ak:                                            ; preds = %bb.aj
  %i.fp = load i64, ptr %i.eg, align 8, !dbg !1445, !noalias !1142, !noundef !91 ; 2 uses
  %i.fq = lshr i64 %i.fp, 3, !dbg !1446
  %i.fr = add nsw i64 %i.fq, -1, !dbg !1446       ; 2 uses
  %i.fs = lshr i64 %i.fm, 3, !dbg !1447           ; 2 uses
  %i.ft = and i64 %i.fr, %i.fs, !dbg !1448        ; 2 uses
  %i.fu = getelementptr inbounds nuw [8 x i8], ptr %i.ek, i64 %i.ft, !dbg !1449
  %i.fv = load i64, ptr %i.fu, align 8, !dbg !1450, !noalias !1142, !noundef !91 ; 3 uses
  %i.fw = add i64 %i.fv, 72340172838076673, !dbg !1451
  %i.fx = and i64 %i.fv, -9187201950435737472, !dbg !1452
  %i.fy = and i64 %i.fx, %i.fw, !dbg !1452        ; 2 uses
  %i.fz = icmp eq i64 %i.fy, 0, !dbg !1453
  br i1 %i.fz, label %.lr.ph.i.i.i.i, label %.loopexit.i.i.i, !dbg !1453

.lr.ph.i.i.i.i:                                   ; preds = %bb.ak, %.lr.ph.i.i.i.i
  %.sroa.0.010.i.i.i.i = phi i64 [ %i.gb, %.lr.ph.i.i.i.i ], [ %i.fs, %bb.ak ]
  %.sroa.02.09.i.i.i.i = phi i64 [ %i.ga, %.lr.ph.i.i.i.i ], [ 0, %bb.ak ]
  %i.ga = add i64 %.sroa.02.09.i.i.i.i, 1, !dbg !1454 ; 2 uses
  %i.gb = add i64 %i.ga, %.sroa.0.010.i.i.i.i, !dbg !1455 ; 2 uses
  %i.gc = and i64 %i.gb, %i.fr, !dbg !1448        ; 2 uses
  %i.gd = getelementptr inbounds nuw [8 x i8], ptr %i.ek, i64 %i.gc, !dbg !1449
  %i.ge = load i64, ptr %i.gd, align 8, !dbg !1450, !noalias !1142, !noundef !91 ; 3 uses
  %i.gf = add i64 %i.ge, 72340172838076673, !dbg !1451
  %i.gg = and i64 %i.ge, -9187201950435737472, !dbg !1452
  %i.gh = and i64 %i.gg, %i.gf, !dbg !1452        ; 2 uses
  %i.gi = icmp eq i64 %i.gh, 0, !dbg !1453
  br i1 %i.gi, label %.lr.ph.i.i.i.i, label %.loopexit.i.i.i, !dbg !1453

.loopexit.i.i.i:                                  ; preds = %.lr.ph.i.i.i.i, %bb.ak
  %.lcssa8.i.i.i.i = phi i64 [ %i.ft, %bb.ak ], [ %i.gc, %.lr.ph.i.i.i.i ] ; 2 uses
  %.lcssa5.i.i.i.i = phi i64 [ %i.fv, %bb.ak ], [ %i.ge, %.lr.ph.i.i.i.i ], !dbg !1450
  %.lcssa.i.i.i.i = phi i64 [ %i.fy, %bb.ak ], [ %i.gh, %.lr.ph.i.i.i.i ], !dbg !1452
  %i.gj = getelementptr inbounds nuw [8 x i8], ptr %i.ek, i64 %.lcssa8.i.i.i.i
  %i.gk = getelementptr i8, ptr %i.eg, i64 %i.fp, !dbg !1456
  %i.gl = getelementptr i8, ptr %i.gk, i64 32, !dbg !1456
  %i.gm = call range(i64 7, 65) i64 @llvm.cttz.i64(i64 %.lcssa.i.i.i.i, i1 true), !dbg !1457 ; 2 uses
  %i.gn = lshr i64 %i.gm, 3, !dbg !1458
  %i.go = lshr i64 %i.fm, 57, !dbg !1459
  %i.gp = or disjoint i64 %i.go, 128, !dbg !1460
  %i.gq = and i64 %i.gm, 56, !dbg !1461
  %i.gr = shl nuw i64 %i.gp, %i.gq, !dbg !1460
  %i.gs = xor i64 %i.gr, %.lcssa5.i.i.i.i, !dbg !1462
  store i64 %i.gs, ptr %i.gj, align 8, !dbg !1462, !noalias !1142
  %.idx.i.i.i.i = shl i64 %.lcssa8.i.i.i.i, 6, !dbg !1463
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gl, i64 %.idx.i.i.i.i, !dbg !1463
  %i.gu = getelementptr inbounds nuw [8 x i8], ptr %i.gt, i64 %i.gn, !dbg !1463
  store ptr %i.fj, ptr %i.gu, align 8, !dbg !1464, !noalias !1142
  %i.gv = add i64 %.sroa.0.032.i.i.i, 1, !dbg !1465
  br label %bb.ai, !dbg !1466

bb.al:                                            ; preds = %bb.ah, %._crit_edge.i.i.i
  %i.gw = load ptr, ptr %i.cw, align 8, !dbg !1467, !alias.scope !1168, !noalias !1142, !nonnull !91, !noundef !91
  %i.gx = getelementptr inbounds nuw [8 x i8], ptr %i.gw, i64 %i.ff, !dbg !1468
  store ptr %i.dp, ptr %i.gx, align 8, !dbg !1469, !noalias !1142
  %i.gy = add i64 %i.ff, 1, !dbg !1470
  store i64 %i.gy, ptr %i.cv, align 8, !dbg !1470, !alias.scope !1168, !noalias !1142
  store atomic ptr %i.eg, ptr %i.s release, align 32, !dbg !1471, !noalias !1142
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !dbg !1472, !noalias !1142
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.k, ptr noundef nonnull align 8 dereferenceable(24) %i.l, i64 24, i1 false), !dbg !1472, !noalias !1142
  invoke void @_RNvXsi_NtNtNtCsh8eZTKRCwoO_3std4sync6poison6rwlockINtB5_16RwLockWriteGuarduENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs80wj1cxFixi_12polars_dtype(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.ct)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6result6ResultINtNtNtNtCsh8eZTKRCwoO_3std4sync6poison6rwlock16RwLockWriteGuarduEINtB17_11PoisonErrorB12_EEECs80wj1cxFixi_12polars_dtype.exit.i.i.i unwind label %.thread.i.i.i, !dbg !1473, !noalias !1142

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6result6ResultINtNtNtNtCsh8eZTKRCwoO_3std4sync6poison6rwlock16RwLockWriteGuarduEINtB17_11PoisonErrorB12_EEECs80wj1cxFixi_12polars_dtype.exit.i.i.i: ; preds = %bb.al
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !dbg !1474, !noalias !1142
  invoke void @_RNvMNtNtNtCsh8eZTKRCwoO_3std4sync6poison7condvarNtB2_7Condvar10notify_all(ptr noundef nonnull align 4 %i.co)
          to label %_RNvMs2_NtNtCs2mZqlW55729_12polars_utils5parma3rawINtB5_8RawTableemE7reallocCs80wj1cxFixi_12polars_dtype.exit.i.i unwind label %.thread.i.i.i, !dbg !1475, !noalias !1142

bb.am:                                            ; preds = %bb.ah
  %lpad.thr_comm.split-lp.i.i.i = landingpad { ptr, i32 }
          cleanup
  %i.gz = getelementptr inbounds nuw i8, ptr %i.l, i64 8, !dbg !1476
  invoke void @_RNvXsi_NtNtNtCsh8eZTKRCwoO_3std4sync6poison6rwlockINtB5_16RwLockWriteGuarduENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs80wj1cxFixi_12polars_dtype(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.gz)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6result6ResultINtNtNtNtCsh8eZTKRCwoO_3std4sync6poison6rwlock16RwLockWriteGuarduEINtB17_11PoisonErrorB12_EEECs80wj1cxFixi_12polars_dtype.exit24.i.i.i unwind label %bb.an, !dbg !1476, !noalias !1142

bb.an:                                            ; preds = %bb.am, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6result6ResultINtNtNtNtCsh8eZTKRCwoO_3std4sync6poison6rwlock16RwLockWriteGuarduEINtB17_11PoisonErrorB12_EEECs80wj1cxFixi_12polars_dtype.exit24.i.i.i
  %i.ha = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #22, !dbg !1477, !noalias !1142
  unreachable, !dbg !1477

_RNvMs2_NtNtCs2mZqlW55729_12polars_utils5parma3rawINtB5_8RawTableemE7reallocCs80wj1cxFixi_12polars_dtype.exit.i.i: ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6result6ResultINtNtNtNtCsh8eZTKRCwoO_3std4sync6poison6rwlock16RwLockWriteGuarduEINtB17_11PoisonErrorB12_EEECs80wj1cxFixi_12polars_dtype.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !dbg !1438, !noalias !1142
  br label %bb.r, !dbg !1478

bb.ao:                                            ; preds = %bb.z
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !dbg !1479, !noalias !1142
  %i.hb = trunc nuw i8 %.sroa.8.0.i.i.ph to i1, !dbg !1480
  call void @_RINvMNtNtNtCsh8eZTKRCwoO_3std4sync6poison7condvarNtB3_7Condvar4waitINtNtNtCs2mZqlW55729_12polars_utils5parma3raw14TableLockStateemEECs80wj1cxFixi_12polars_dtype(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.o, ptr noundef nonnull align 4 %i.co, ptr noundef nonnull align 8 %.sroa.0.026.i.i.ph, i1 noundef zeroext %i.hb), !dbg !1481, !noalias !1142
  call void @llvm.experimental.noalias.scope.decl(metadata !1175), !dbg !1482
  %i.hc = load i64, ptr %i.o, align 8, !dbg !1483, !range !134, !alias.scope !1175, !noalias !1176, !noundef !91
  %i.hd = trunc nuw i64 %i.hc to i1, !dbg !1484
  br i1 %i.hd, label %bb.ap, label %bb.at, !dbg !1484, !prof !127

bb.ap:                                            ; preds = %bb.ao
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !dbg !1485, !noalias !1177
  %i.he = load ptr, ptr %i.cp, align 8, !dbg !1485, !alias.scope !1175, !noalias !1176, !nonnull !91, !align !121, !noundef !91
  %i.hf = load i8, ptr %i.cq, align 8, !dbg !1485, !range !135, !alias.scope !1175, !noalias !1176, !noundef !91
  store ptr %i.he, ptr %i.n, align 8, !dbg !1485, !noalias !1177
  %i.hg = getelementptr inbounds nuw i8, ptr %i.n, i64 8, !dbg !1485
  store i8 %i.hf, ptr %i.hg, align 8, !dbg !1485, !noalias !1177
  invoke void @_RNvNtCscgRAwXFJnXP_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @5, i64 noundef 43, ptr noundef nonnull %i.n, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @4, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @15) #19
          to label %bb.ar unwind label %bb.aq, !dbg !1486, !noalias !1178

bb.aq:                                            ; preds = %bb.ap
  %i.hh = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtCsh8eZTKRCwoO_3std4sync6poison11PoisonErrorINtNtBJ_5mutex10MutexGuardINtNtNtCs2mZqlW55729_12polars_utils5parma3raw14TableLockStateemEEEECs80wj1cxFixi_12polars_dtype(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.n) #21
          to label %common.resume.i unwind label %bb.as, !dbg !1487, !noalias !1178

bb.ar:                                            ; preds = %bb.ap
  unreachable

bb.as:                                            ; preds = %bb.aq
  %i.hi = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #22, !dbg !1488, !noalias !1178
  unreachable, !dbg !1488

bb.at:                                            ; preds = %bb.ao
  %i.hj = load ptr, ptr %i.cp, align 8, !dbg !1489, !alias.scope !1175, !noalias !1176, !nonnull !91, !align !121, !noundef !91
  %i.hk = load i8, ptr %i.cq, align 8, !dbg !1489, !range !135, !alias.scope !1175, !noalias !1176, !noundef !91
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !dbg !1490, !noalias !1142
  br label %.outer, !dbg !1491

_RNvMs2_NtNtCs2mZqlW55729_12polars_utils5parma3rawINtB5_8RawTableemE20start_insert_attemptCs80wj1cxFixi_12polars_dtype.exit.i: ; preds = %bb.l, %bb.y, %_RNvMNtNtCsh8eZTKRCwoO_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i
  %.sroa.0.0.i26.i = phi ptr [ %i.cx, %bb.y ], [ %i.cx, %_RNvMNtNtCsh8eZTKRCwoO_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i ], [ %i.bu, %bb.l ], !dbg !1492 ; 7 uses
  %.not.i = icmp eq ptr %.sroa.0.0.i26.i, %i.t, !dbg !1493 ; 2 uses
  %.sroa.5.0.i = select i1 %.not.i, i64 %.sroa.7.0.i, i64 0, !dbg !1493
  %.sroa.0.0.i18 = select i1 %.not.i, i64 %.sroa.0.0.i, i64 %i.u, !dbg !1493
  %i.hl = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i26.i, i64 32, !dbg !1494
  %i.hm = load i64, ptr %.sroa.0.0.i26.i, align 8, !dbg !1495, !noalias !1142, !noundef !91 ; 3 uses
  %i.hn = lshr i64 %i.hm, 3, !dbg !1495           ; 2 uses
  %i.ho = getelementptr i8, ptr %.sroa.0.0.i26.i, i64 %i.hm, !dbg !1496
  %i.hp = getelementptr i8, ptr %i.ho, i64 32, !dbg !1496
  %i.hq = add nsw i64 %i.hn, -1, !dbg !1497
  %i.hr = icmp ne i64 %i.hn, 0
  call void @llvm.assume(i1 %i.hr)
  %i.hs = or disjoint i64 %i.ab, 128
  %i.ht = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  %i.hu = load i64, ptr %i.ht, align 8, !alias.scope !1137, !noalias !1180 ; 2 uses
  %i.hv = load ptr, ptr %i.bm, align 8, !alias.scope !1137, !noalias !1180, !nonnull !91
  %i.hw = getelementptr inbounds nuw i8, ptr %1, i64 60 ; 2 uses
  %i.hx = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.hy = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  %i.hz = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 2 uses
  %i.ia = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  %i.ib = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  br label %.outer.i, !dbg !1498

.outer.i:                                         ; preds = %._crit_edge.i20, %_RNvMs2_NtNtCs2mZqlW55729_12polars_utils5parma3rawINtB5_8RawTableemE20start_insert_attemptCs80wj1cxFixi_12polars_dtype.exit.i
  %.sroa.5.1.ph.i = phi i64 [ %i.jc, %._crit_edge.i20 ], [ %.sroa.5.0.i, %_RNvMs2_NtNtCs2mZqlW55729_12polars_utils5parma3rawINtB5_8RawTableemE20start_insert_attemptCs80wj1cxFixi_12polars_dtype.exit.i ]
  %.sroa.0.1.ph.i = phi i64 [ %i.jd, %._crit_edge.i20 ], [ %.sroa.0.0.i18, %_RNvMs2_NtNtCs2mZqlW55729_12polars_utils5parma3rawINtB5_8RawTableemE20start_insert_attemptCs80wj1cxFixi_12polars_dtype.exit.i ] ; 2 uses
  %i.ic = and i64 %.sroa.0.1.ph.i, %i.hq          ; 2 uses
  %i.id = getelementptr inbounds nuw [8 x i8], ptr %i.hl, i64 %i.ic ; 3 uses
  %i.ie = load atomic i64, ptr %i.id monotonic, align 8, !dbg !1499, !noalias !1142 ; 5 uses
  %i.if = xor i64 %i.ie, %i.ac, !dbg !1500
  %i.ig = add i64 %i.if, -72340172838076673, !dbg !1501
  %i.ih = xor i64 %i.ie, -1, !dbg !1502
  %i.ii = and i64 %i.ig, %i.ih, !dbg !1503
  %i.ij = add i64 %i.ie, 72340172838076673, !dbg !1504
  %i.ik = and i64 %i.ij, %i.ie, !dbg !1505        ; 2 uses
  %i.il = or disjoint i64 %i.ii, %i.ik, !dbg !1506
  %i.im = and i64 %i.il, -9187201950435737472, !dbg !1506 ; 2 uses
  %i.in = icmp eq i64 %i.im, 0, !dbg !1507
  br i1 %i.in, label %._crit_edge.i20, label %.lr.ph.lr.ph.i, !dbg !1507

.lr.ph.lr.ph.i:                                   ; preds = %.outer.i
  %i.io = shl nuw i64 %i.ic, 3
  br label %.lr.ph.i19, !dbg !1507

.loopexit.i:                                      ; preds = %bb.av
  %i.ip = load atomic i64, ptr %i.id monotonic, align 8, !dbg !1499, !noalias !1142 ; 5 uses
  %i.iq = xor i64 %i.ip, %i.ac, !dbg !1500
  %i.ir = add i64 %i.iq, -72340172838076673, !dbg !1501
  %i.is = xor i64 %i.ip, -1, !dbg !1502
  %i.it = and i64 %i.ir, %i.is, !dbg !1503
  %i.iu = add i64 %i.ip, 72340172838076673, !dbg !1504
  %i.iv = and i64 %i.iu, %i.ip, !dbg !1505        ; 2 uses
  %i.iw = or disjoint i64 %i.it, %i.iv, !dbg !1506
  %i.ix = and i64 %i.iw, -9187201950435737472, !dbg !1506 ; 2 uses
  %i.iy = icmp eq i64 %i.ix, 0, !dbg !1507
  br i1 %i.iy, label %._crit_edge.i20, label %.lr.ph.i19, !dbg !1507

.lr.ph.i19:                                       ; preds = %.loopexit.i, %.lr.ph.lr.ph.i
  %i.iz = phi i64 [ %i.im, %.lr.ph.lr.ph.i ], [ %i.ix, %.loopexit.i ]
  %i.ja = phi i64 [ %i.ik, %.lr.ph.lr.ph.i ], [ %i.iv, %.loopexit.i ]
  %i.jb = phi i64 [ %i.ie, %.lr.ph.lr.ph.i ], [ %i.ip, %.loopexit.i ] ; 2 uses
  br label %bb.au, !dbg !1507

._crit_edge.i20:                                  ; preds = %.loopexit.i, %_RNCNvMNtNtCs80wj1cxFixi_12polars_dtype11categorical7mappingNtB4_18CategoricalMapping20insert_cat_with_hash0B8_.exit.thread.i, %.outer.i
  %i.jc = add i64 %.sroa.5.1.ph.i, 1, !dbg !1508  ; 2 uses
  %i.jd = add i64 %.sroa.0.1.ph.i, %i.jc, !dbg !1509
  br label %.outer.i, !dbg !1498

bb.au:                                            ; preds = %_RNCNvMNtNtCs80wj1cxFixi_12polars_dtype11categorical7mappingNtB4_18CategoricalMapping20insert_cat_with_hash0B8_.exit.thread.i, %.lr.ph.i19
  %.sroa.019.097.i = phi i64 [ %i.iz, %.lr.ph.i19 ], [ %i.nv, %_RNCNvMNtNtCs80wj1cxFixi_12polars_dtype11categorical7mappingNtB4_18CategoricalMapping20insert_cat_with_hash0B8_.exit.thread.i ] ; 3 uses
  %i.je = call range(i64 7, 65) i64 @llvm.cttz.i64(i64 %.sroa.019.097.i, i1 true), !dbg !1510 ; 2 uses
  %i.jf = lshr i64 %i.je, 3, !dbg !1511
  %i.jg = and i64 %i.je, 56, !dbg !1512           ; 2 uses
  %i.jh = shl nuw i64 128, %i.jg, !dbg !1513
  %i.ji = and i64 %i.jh, %i.ja, !dbg !1513
  %i.jj = icmp eq i64 %i.ji, 0, !dbg !1513
  br i1 %i.jj, label %bb.aw, label %bb.av, !dbg !1513

bb.av:                                            ; preds = %bb.au
  %i.jk = shl nuw i64 %i.hs, %i.jg, !dbg !1514
  %i.jl = xor i64 %i.jk, %i.jb, !dbg !1515
  %i.jm = cmpxchg ptr %i.id, i64 %i.jb, i64 %i.jl monotonic monotonic, align 8, !dbg !1516, !noalias !1142
  %i.jn = extractvalue { i64, i1 } %i.jm, 1, !dbg !1516
  br i1 %i.jn, label %bb.aw, label %.loopexit.i, !dbg !1517

bb.aw:                                            ; preds = %bb.av, %bb.au
  %i.jo = or disjoint i64 %i.jf, %i.io, !dbg !1518 ; 2 uses
  %i.jp = icmp ult i64 %i.jo, %i.hm, !dbg !1519
  call void @llvm.assume(i1 %i.jp), !dbg !1520
  %i.jq = getelementptr inbounds nuw [8 x i8], ptr %i.hp, i64 %i.jo, !dbg !1521 ; 3 uses
  %i.jr = load atomic ptr, ptr %i.jq acquire, align 8, !dbg !1522, !noalias !1142 ; 2 uses
  %i.js = icmp eq ptr %i.jr, null, !dbg !1523
  br i1 %i.js, label %bb.ax, label %bb.ci, !dbg !1523

bb.ax:                                            ; preds = %bb.aw
  %i.jt = cmpxchg ptr %i.jq, ptr null, ptr %i.bp release acquire, align 8, !dbg !1524, !noalias !1142 ; 2 uses
  %.sroa.18.0.in.i.i = extractvalue { ptr, i1 } %i.jt, 1, !dbg !1525
  %.sroa.01.0.i.i = extractvalue { ptr, i1 } %i.jt, 0, !dbg !1525
  br i1 %.sroa.18.0.in.i.i, label %bb.ay, label %bb.ci, !dbg !1526

bb.ay:                                            ; preds = %bb.ax
  %i.ju = getelementptr inbounds nuw i8, ptr %1, i64 56, !dbg !1527
  %i.jv = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i26.i, i64 24, !dbg !1528
  %i.jw = atomicrmw sub ptr %i.jv, i64 1 release, align 8, !dbg !1529, !noalias !1142
  %i.jx = icmp eq i64 %i.jw, 1, !dbg !1530
  br i1 %i.jx, label %bb.az, label %_RNvMNtNtCs2mZqlW55729_12polars_utils5parma3rawINtB2_11AllocHeaderemE20finish_claim_attemptCs80wj1cxFixi_12polars_dtype.exit.i, !dbg !1530

bb.az:                                            ; preds = %bb.ay
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !dbg !1531, !noalias !1142
  call void @_RNvMs5_NtNtNtCsh8eZTKRCwoO_3std4sync6poison5mutexINtB5_5MutexINtNtNtCs2mZqlW55729_12polars_utils5parma3raw14TableLockStateemEE4lockCs80wj1cxFixi_12polars_dtype(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.j, ptr noundef nonnull align 128 %1), !dbg !1532, !noalias !1142
  call void @llvm.experimental.noalias.scope.decl(metadata !1183), !dbg !1533
  %i.jy = load i64, ptr %i.j, align 8, !dbg !1534, !range !134, !alias.scope !1183, !noalias !1142, !noundef !91
  %i.jz = icmp eq i64 %i.jy, 0, !dbg !1534
  %i.ka = getelementptr inbounds nuw i8, ptr %i.j, i64 8, !dbg !1534 ; 2 uses
  br i1 %i.jz, label %bb.ba, label %bb.be, !dbg !1534

bb.ba:                                            ; preds = %bb.az
  %.val.i.i.i = load ptr, ptr %i.ka, align 8, !dbg !1534, !alias.scope !1183, !noalias !1142, !nonnull !91, !align !121, !noundef !91 ; 3 uses
  %i.kb = getelementptr inbounds nuw i8, ptr %i.j, i64 16, !dbg !1534
  %.val1.i.i.i = load i8, ptr %i.kb, align 8, !dbg !1534, !range !135, !alias.scope !1183, !noalias !1142, !noundef !91
  %i.kc = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 4, !dbg !1535
  %i.kd = trunc nuw i8 %.val1.i.i.i to i1, !dbg !1536
  br i1 %i.kd, label %_RNvMNtNtCsh8eZTKRCwoO_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i, label %bb.bb, !dbg !1536

bb.bb:                                            ; preds = %bb.ba
  %i.ke = load atomic i64, ptr @_RNvNtNtCsh8eZTKRCwoO_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8, !dbg !1537, !noalias !1184
  %i.kf = and i64 %i.ke, 9223372036854775807, !dbg !1538
  %i.kg = icmp eq i64 %i.kf, 0, !dbg !1538
  br i1 %i.kg, label %_RNvMNtNtCsh8eZTKRCwoO_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i, label %bb.bc, !dbg !1538, !prof !150

bb.bc:                                            ; preds = %bb.bb
  %i.kh = call noundef zeroext i1 @_RNvNtNtCsh8eZTKRCwoO_3std9panicking11panic_count17is_zero_slow_path() #23, !dbg !1539, !noalias !1184
  br i1 %i.kh, label %_RNvMNtNtCsh8eZTKRCwoO_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i, label %bb.bd, !dbg !1540

bb.bd:                                            ; preds = %bb.bc
  store atomic i8 1, ptr %i.kc monotonic, align 4, !dbg !1541, !noalias !1184
  br label %_RNvMNtNtCsh8eZTKRCwoO_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i, !dbg !1542

_RNvMNtNtCsh8eZTKRCwoO_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i: ; preds = %bb.bd, %bb.bc, %bb.bb, %bb.ba
  %i.ki = atomicrmw xchg ptr %.val.i.i.i, i32 0 release, align 4, !dbg !1543, !noalias !1184
  %i.kj = icmp eq i32 %i.ki, 2, !dbg !1544
  br i1 %i.kj, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtNtCsh8eZTKRCwoO_3std4sync6poison5mutex10MutexGuardINtNtNtCs2mZqlW55729_12polars_utils5parma3raw14TableLockStateemEEECs80wj1cxFixi_12polars_dtype.exit.sink.split.i.i.i, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6result6ResultINtNtNtNtCsh8eZTKRCwoO_3std4sync6poison5mutex10MutexGuardINtNtNtCs2mZqlW55729_12polars_utils5parma3raw14TableLockStateemEEINtB17_11PoisonErrorB12_EEECs80wj1cxFixi_12polars_dtype.exit.i.i, !dbg !1544, !prof !127

bb.be:                                            ; preds = %bb.az
  call void @llvm.experimental.noalias.scope.decl(metadata !1185), !dbg !1534
  %.val.i.i.i.i = load ptr, ptr %i.ka, align 8, !dbg !1545, !alias.scope !1186, !noalias !1142, !nonnull !91, !align !121, !noundef !91 ; 3 uses
  %i.kk = getelementptr inbounds nuw i8, ptr %i.j, i64 16, !dbg !1545
  %.val1.i.i.i.i = load i8, ptr %i.kk, align 8, !dbg !1545, !range !135, !alias.scope !1186, !noalias !1142, !noundef !91
  %i.kl = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i, i64 4, !dbg !1546
  %i.km = trunc nuw i8 %.val1.i.i.i.i to i1, !dbg !1547
  br i1 %i.km, label %_RNvMNtNtCsh8eZTKRCwoO_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i.i, label %bb.bf, !dbg !1547

bb.bf:                                            ; preds = %bb.be
  %i.kn = load atomic i64, ptr @_RNvNtNtCsh8eZTKRCwoO_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8, !dbg !1548, !noalias !1187
  %i.ko = and i64 %i.kn, 9223372036854775807, !dbg !1549
  %i.kp = icmp eq i64 %i.ko, 0, !dbg !1549
  br i1 %i.kp, label %_RNvMNtNtCsh8eZTKRCwoO_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i.i, label %bb.bg, !dbg !1549, !prof !150

bb.bg:                                            ; preds = %bb.bf
  %i.kq = call noundef zeroext i1 @_RNvNtNtCsh8eZTKRCwoO_3std9panicking11panic_count17is_zero_slow_path() #23, !dbg !1550, !noalias !1187
  br i1 %i.kq, label %_RNvMNtNtCsh8eZTKRCwoO_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i.i, label %bb.bh, !dbg !1551

bb.bh:                                            ; preds = %bb.bg
  store atomic i8 1, ptr %i.kl monotonic, align 4, !dbg !1552, !noalias !1187
  br label %_RNvMNtNtCsh8eZTKRCwoO_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i.i, !dbg !1553

_RNvMNtNtCsh8eZTKRCwoO_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i.i: ; preds = %bb.bh, %bb.bg, %bb.bf, %bb.be
  %i.kr = atomicrmw xchg ptr %.val.i.i.i.i, i32 0 release, align 4, !dbg !1554, !noalias !1187
  %i.ks = icmp eq i32 %i.kr, 2, !dbg !1555
  br i1 %i.ks, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtNtCsh8eZTKRCwoO_3std4sync6poison5mutex10MutexGuardINtNtNtCs2mZqlW55729_12polars_utils5parma3raw14TableLockStateemEEECs80wj1cxFixi_12polars_dtype.exit.sink.split.i.i.i, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6result6ResultINtNtNtNtCsh8eZTKRCwoO_3std4sync6poison5mutex10MutexGuardINtNtNtCs2mZqlW55729_12polars_utils5parma3raw14TableLockStateemEEINtB17_11PoisonErrorB12_EEECs80wj1cxFixi_12polars_dtype.exit.i.i, !dbg !1555, !prof !127

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtNtCsh8eZTKRCwoO_3std4sync6poison5mutex10MutexGuardINtNtNtCs2mZqlW55729_12polars_utils5parma3raw14TableLockStateemEEECs80wj1cxFixi_12polars_dtype.exit.sink.split.i.i.i: ; preds = %_RNvMNtNtCsh8eZTKRCwoO_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i.i, %_RNvMNtNtCsh8eZTKRCwoO_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i
  %.val.i.sink.i.i.i = phi ptr [ %.val.i.i.i, %_RNvMNtNtCsh8eZTKRCwoO_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i ], [ %.val.i.i.i.i, %_RNvMNtNtCsh8eZTKRCwoO_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i.i ]
  call void @_RNvMNtNtNtNtCsh8eZTKRCwoO_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %.val.i.sink.i.i.i), !dbg !1534, !noalias !1184
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6result6ResultINtNtNtNtCsh8eZTKRCwoO_3std4sync6poison5mutex10MutexGuardINtNtNtCs2mZqlW55729_12polars_utils5parma3raw14TableLockStateemEEINtB17_11PoisonErrorB12_EEECs80wj1cxFixi_12polars_dtype.exit.i.i, !dbg !1534

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6result6ResultINtNtNtNtCsh8eZTKRCwoO_3std4sync6poison5mutex10MutexGuardINtNtNtCs2mZqlW55729_12polars_utils5parma3raw14TableLockStateemEEINtB17_11PoisonErrorB12_EEECs80wj1cxFixi_12polars_dtype.exit.i.i: ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtNtCsh8eZTKRCwoO_3std4sync6poison5mutex10MutexGuardINtNtNtCs2mZqlW55729_12polars_utils5parma3raw14TableLockStateemEEECs80wj1cxFixi_12polars_dtype.exit.sink.split.i.i.i, %_RNvMNtNtCsh8eZTKRCwoO_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i.i, %_RNvMNtNtCsh8eZTKRCwoO_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !dbg !1556, !noalias !1142
  call void @_RNvMNtNtNtCsh8eZTKRCwoO_3std4sync6poison7condvarNtB2_7Condvar10notify_all(ptr noundef nonnull align 4 %i.ju), !dbg !1557, !noalias !1142
  br label %_RNvMNtNtCs2mZqlW55729_12polars_utils5parma3rawINtB2_11AllocHeaderemE20finish_claim_attemptCs80wj1cxFixi_12polars_dtype.exit.i, !dbg !1557

_RNvMNtNtCs2mZqlW55729_12polars_utils5parma3rawINtB2_11AllocHeaderemE20finish_claim_attemptCs80wj1cxFixi_12polars_dtype.exit.i: ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6result6ResultINtNtNtNtCsh8eZTKRCwoO_3std4sync6poison5mutex10MutexGuardINtNtNtCs2mZqlW55729_12polars_utils5parma3raw14TableLockStateemEEINtB17_11PoisonErrorB12_EEECs80wj1cxFixi_12polars_dtype.exit.i.i, %bb.ay
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !dbg !1558, !noalias !1188
  %i.kt = load i64, ptr %i.bs, align 8, !dbg !1559, !noalias !1189, !noundef !91 ; 2 uses
  %i.ku = getelementptr inbounds nuw i8, ptr %i.bp, i64 8, !dbg !1560
  %i.kv = getelementptr inbounds nuw i8, ptr %6, i64 616, !dbg !1561 ; 2 uses
  %i.kw = atomicrmw add ptr %i.kv, i64 1 monotonic, align 8, !dbg !1562, !noalias !1205
  %i.kx = add i64 %i.kw, 1, !dbg !1563
  %i.ky = getelementptr inbounds nuw i8, ptr %6, i64 608, !dbg !1564
  %i.kz = load i64, ptr %i.ky, align 32, !dbg !1564, !noalias !1205, !noundef !91
  %.not29.i.i = icmp ugt i64 %i.kx, %i.kz, !dbg !1563
  br i1 %.not29.i.i, label %.thread32.i.i, label %bb.bi, !dbg !1563

bb.bi:                                            ; preds = %_RNvMNtNtCs2mZqlW55729_12polars_utils5parma3rawINtB2_11AllocHeaderemE20finish_claim_attemptCs80wj1cxFixi_12polars_dtype.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !dbg !1565, !noalias !1205
  store i64 589684135938649225, ptr %i.g, align 8, !dbg !1566, !noalias !1205
  %i.la = invoke noundef i64 @_RINvYNtNtCsk79RHlfmHDk_8foldhash7quality10FixedStateNtNtCscgRAwXFJnXP_4core4hash11BuildHasher8hash_oneReECs80wj1cxFixi_12polars_dtype(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.g, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.bt, i64 noundef %i.kt)
          to label %.noexc.i.i37.i unwind label %bb.bl, !dbg !1567, !noalias !1188

.noexc.i.i37.i:                                   ; preds = %bb.bi
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !1568, !noalias !1205
  %i.lb = getelementptr inbounds nuw i8, ptr %6, i64 128, !dbg !1569 ; 2 uses
  %i.lc = getelementptr inbounds nuw i8, ptr %6, i64 592, !dbg !1570
  %i.ld = atomicrmw add ptr %i.lc, i64 1 monotonic, align 8, !dbg !1571, !noalias !1217 ; 4 uses
  %i.le = icmp sgt i64 %i.ld, -1, !dbg !1572
  br i1 %i.le, label %bb.bk, label %bb.bj, !dbg !1572, !prof !150

bb.bj:                                            ; preds = %.noexc.i.i37.i
  invoke void @_RNvMNtNtCsaIrsFcbE0XP_6boxcar3vec3rawINtB2_3VecTReyEE19next_index_overflowCs80wj1cxFixi_12polars_dtype(ptr noundef nonnull align 8 %i.lb) #19
          to label %.noexc1.i.i.i unwind label %bb.bl, !dbg !1573, !noalias !1188

.noexc1.i.i.i:                                    ; preds = %bb.bj
  unreachable, !dbg !1574

.thread32.i.i:                                    ; preds = %_RNvMNtNtCs2mZqlW55729_12polars_utils5parma3rawINtB2_11AllocHeaderemE20finish_claim_attemptCs80wj1cxFixi_12polars_dtype.exit.i
  %i.lf = atomicrmw sub ptr %i.kv, i64 1 monotonic, align 8, !dbg !1575, !noalias !1205 ; 0 uses
  store i64 2, ptr %i.i, align 8, !dbg !1576, !noalias !1188
  %.sroa.420.0..sroa_idx34.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 8, !dbg !1576
  store ptr inttoptr (i64 -9223372036854775808 to ptr), ptr %.sroa.420.0..sroa_idx34.i.i, align 8, !dbg !1576, !noalias !1188
  %.sroa.521.0..sroa_idx35.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 16, !dbg !1576
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.521.0..sroa_idx35.i.i, ptr noundef nonnull align 8 dereferenceable(56) getelementptr inbounds nuw (i8, ptr @3, i64 16), i64 56, i1 false), !dbg !1576, !noalias !1188
  br label %bb.bq, !dbg !1577

bb.bk:                                            ; preds = %.noexc.i.i37.i
  %i.lg = icmp ne i64 %i.ld, 0, !dbg !1578
  call void @llvm.assume(i1 %i.lg), !dbg !1579
  %i.lh = invoke noundef nonnull align 8 ptr @_RNvMs2_NtCsaIrsFcbE0XP_6boxcar7bucketsINtB5_7BucketsINtNtNtB7_3vec3raw5EntryTReyEEKj3a_E12get_or_allocCs80wj1cxFixi_12polars_dtype(ptr noundef nonnull align 8 %i.lb, i64 noundef range(i64 1, -9223372036854775808) %i.ld)
          to label %bb.bn unwind label %bb.bl, !dbg !1580, !noalias !1188 ; 4 uses

bb.bl:                                            ; preds = %bb.bk, %bb.bj, %bb.bi
  %i.li = landingpad { ptr, i32 }
          catch ptr null, !dbg !1574
  %i.lj = extractvalue { ptr, i32 } %i.li, 0, !dbg !1574
  %i.lk = invoke { ptr, ptr } @_RNvNvNtCsh8eZTKRCwoO_3std9panicking12catch_unwind7cleanup(ptr noundef %i.lj)
          to label %.thread.i.i unwind label %bb.bm, !dbg !1581, !noalias !1188 ; 2 uses

bb.bm:                                            ; preds = %bb.bl
  %i.ll = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer, !dbg !1574 ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking19panic_cannot_unwind() #22, !dbg !1582, !noalias !1188
  unreachable, !dbg !1582

.thread.i.i:                                      ; preds = %bb.bl
  %i.lm = extractvalue { ptr, ptr } %i.lk, 0, !dbg !1581
  %i.ln = extractvalue { ptr, ptr } %i.lk, 1, !dbg !1581 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ln) ]
  %i.lo = getelementptr inbounds nuw i8, ptr %i.i, i64 8, !dbg !1583
  store ptr %i.lm, ptr %i.lo, align 8, !dbg !1583, !noalias !1188
  %i.lp = getelementptr inbounds nuw i8, ptr %i.i, i64 16, !dbg !1583
  store ptr %i.ln, ptr %i.lp, align 8, !dbg !1583, !noalias !1188
  store i64 19, ptr %i.i, align 8, !dbg !1583, !noalias !1188
  br label %bb.bq, !dbg !1577

bb.bn:                                            ; preds = %bb.bk
  store ptr %i.bt, ptr %i.lh, align 8, !dbg !1584, !noalias !1226
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.lh, i64 8, !dbg !1584
  store i64 %i.kt, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i, align 8, !dbg !1584, !noalias !1226
  %.sroa.5.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.lh, i64 16, !dbg !1584
  store i64 %i.la, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i.i.i, align 8, !dbg !1584, !noalias !1226
  %i.lq = getelementptr inbounds nuw i8, ptr %i.lh, i64 24, !dbg !1585
  store atomic i8 1, ptr %i.lq release, align 8, !dbg !1586, !noalias !1234
  %i.lr = getelementptr inbounds nuw i8, ptr %6, i64 600, !dbg !1587
  %i.ls = atomicrmw add ptr %i.lr, i64 1 release, align 8, !dbg !1588, !noalias !1235 ; 0 uses
  %i.lt = trunc i64 %i.ld to i32, !dbg !1589
  %i.lu = add i32 %i.lt, -32, !dbg !1589
  store i32 %i.lu, ptr %i.ku, align 8, !dbg !1590, !noalias !1189
  store i64 18, ptr %i.i, align 8, !dbg !1576, !noalias !1188
  %.sroa.420.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 8, !dbg !1576
  store ptr inttoptr (i64 -9223372036854775808 to ptr), ptr %.sroa.420.0..sroa_idx.i.i, align 8, !dbg !1576, !noalias !1188
  %.sroa.521.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 16, !dbg !1576
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.521.0..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(56) getelementptr inbounds nuw (i8, ptr @3, i64 16), i64 56, i1 false), !dbg !1576, !noalias !1188
  %i.lv = or disjoint i64 %i.br, 1, !dbg !1591
  %i.lw = inttoptr i64 %i.lv to ptr, !dbg !1592
  %i.lx = atomicrmw xchg ptr %i.bp, ptr %i.lw release, align 8, !dbg !1593, !noalias !1188
  br label %bb.bo, !dbg !1594

bb.bo:                                            ; preds = %bb.bq, %bb.bn
  %.sroa.0.0.i29.i = phi ptr [ %i.mi, %bb.bq ], [ %i.lx, %bb.bn ], !dbg !1595
  %i.ly = ptrtoint ptr %.sroa.0.0.i29.i to i64, !dbg !1596
  %i.lz = and i64 %i.ly, 2, !dbg !1597
  %i.ma = icmp eq i64 %i.lz, 0, !dbg !1597
  br i1 %i.ma, label %bb.bs, label %bb.br, !dbg !1597

bb.bp:                                            ; preds = %bb.cc, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6result6ResultINtNtNtNtCsh8eZTKRCwoO_3std4sync6poison5mutex10MutexGuarduEINtB17_11PoisonErrorB12_EEECs80wj1cxFixi_12polars_dtype.exit.i.i, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtNtCsh8eZTKRCwoO_3std4sync6poison5mutex10MutexGuarduEECs80wj1cxFixi_12polars_dtype.exit.sink.split.i.i.i, %bb.ca, %bb.bw, %bb.br
  %.sroa.01.0.i30.i = phi i1 [ false, %bb.cc ], [ true, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6result6ResultINtNtNtNtCsh8eZTKRCwoO_3std4sync6poison5mutex10MutexGuarduEINtB17_11PoisonErrorB12_EEECs80wj1cxFixi_12polars_dtype.exit.i.i ], [ true, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtNtCsh8eZTKRCwoO_3std4sync6poison5mutex10MutexGuarduEECs80wj1cxFixi_12polars_dtype.exit.sink.split.i.i.i ], [ true, %bb.br ], [ true, %bb.bw ], [ true, %bb.ca ], !dbg !1598
  %i.mb = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.mc = load i64, ptr %i.i, align 8, !dbg !1599, !range !1237, !noalias !1188, !noundef !91
  switch i64 %i.mc, label %bb.cf [
    i64 19, label %bb.ce
    i64 18, label %common.resume.i
  ], !dbg !1599

bb.bq:                                            ; preds = %.thread.i.i, %.thread32.i.i
  %i.md = getelementptr inbounds nuw i8, ptr %1, i64 40, !dbg !1600
  %i.me = atomicrmw xchg ptr %i.md, ptr %i.bp acq_rel, align 8, !dbg !1601, !noalias !1188 ; 2 uses
  %i.mf = ptrtoint ptr %i.me to i64, !dbg !1602
  %.not.i.i = and i64 %i.mf, 4, !dbg !1603
  %i.mg = xor i64 %.not.i.i, 4, !dbg !1603
  %i.mh = getelementptr i8, ptr %i.me, i64 %i.mg, !dbg !1604
  %i.mi = atomicrmw xchg ptr %i.bp, ptr %i.mh release, align 8, !dbg !1605, !noalias !1188
  store atomic ptr inttoptr (i64 -1 to ptr), ptr %i.jq monotonic, align 8, !dbg !1606, !noalias !1188
  %i.mj = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i26.i, i64 8, !dbg !1607
  %i.mk = atomicrmw add ptr %i.mj, i64 1 release, align 8, !dbg !1608, !noalias !1188 ; 0 uses
  br label %bb.bo, !dbg !1594

bb.br:                                            ; preds = %bb.bo
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !dbg !1609, !noalias !1188
  invoke void @_RNvMs5_NtNtNtCsh8eZTKRCwoO_3std4sync6poison5mutexINtB5_5MutexuE4lockCs80wj1cxFixi_12polars_dtype(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.h, ptr noundef nonnull align 4 %i.hx)
          to label %bb.bt unwind label %bb.bp, !dbg !1610, !noalias !1188

bb.bs:                                            ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6result6ResultINtNtNtNtCsh8eZTKRCwoO_3std4sync6poison5mutex10MutexGuarduEINtB17_11PoisonErrorB12_EEECs80wj1cxFixi_12polars_dtype.exit.i.i, %bb.bo
  %i.ml = load i64, ptr %i.i, align 8, !dbg !1611, !range !1237, !noalias !1188, !noundef !91 ; 2 uses
  switch i64 %i.ml, label %bb.dr [
    i64 19, label %bb.cc
    i64 18, label %_RINvMs2_NtNtCs2mZqlW55729_12polars_utils5parma3rawINtB6_8RawTableemE23try_find_or_insert_implNtCsgjwxzEoLG5s_12polars_error11PolarsErrorNCNvMNtNtCs80wj1cxFixi_12polars_dtype11categorical7mappingNtB2f_18CategoricalMapping20insert_cat_with_hashs_0NCB2c_0EB2j_.exit.thread32
  ], !dbg !1612

_RINvMs2_NtNtCs2mZqlW55729_12polars_utils5parma3rawINtB6_8RawTableemE23try_find_or_insert_implNtCsgjwxzEoLG5s_12polars_error11PolarsErrorNCNvMNtNtCs80wj1cxFixi_12polars_dtype11categorical7mappingNtB2f_18CategoricalMapping20insert_cat_with_hashs_0NCB2c_0EB2j_.exit.thread32: ; preds = %bb.bs
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !dbg !1599, !noalias !1188
  br label %_RINvMs2_NtNtCs2mZqlW55729_12polars_utils5parma3rawINtB6_8RawTableemE23try_find_or_insert_implNtCsgjwxzEoLG5s_12polars_error11PolarsErrorNCNvMNtNtCs80wj1cxFixi_12polars_dtype11categorical7mappingNtB2f_18CategoricalMapping20insert_cat_with_hashs_0NCB2c_0EB2j_.exit.thread, !dbg !1613

bb.bt:                                            ; preds = %bb.br
  call void @llvm.experimental.noalias.scope.decl(metadata !1241), !dbg !1614
  %i.mm = load i64, ptr %i.h, align 8, !dbg !1615, !range !134, !alias.scope !1241, !noalias !1188, !noundef !91
  %i.mn = icmp eq i64 %i.mm, 0, !dbg !1615
  %i.mo = getelementptr inbounds nuw i8, ptr %i.h, i64 8, !dbg !1615 ; 2 uses
  br i1 %i.mn, label %bb.bu, label %bb.by, !dbg !1615

bb.bu:                                            ; preds = %bb.bt
  %.val.i.i34.i = load ptr, ptr %i.mo, align 8, !dbg !1615, !alias.scope !1241, !noalias !1188, !nonnull !91, !align !172, !noundef !91 ; 3 uses
  %i.mp = getelementptr inbounds nuw i8, ptr %i.h, i64 16, !dbg !1615
  %.val1.i.i35.i = load i8, ptr %i.mp, align 8, !dbg !1615, !range !135, !alias.scope !1241, !noalias !1188, !noundef !91
  %i.mq = getelementptr inbounds nuw i8, ptr %.val.i.i34.i, i64 4, !dbg !1616
  %i.mr = trunc nuw i8 %.val1.i.i35.i to i1, !dbg !1617
  br i1 %i.mr, label %_RNvMNtNtCsh8eZTKRCwoO_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i36.i, label %bb.bv, !dbg !1617

bb.bv:                                            ; preds = %bb.bu
  %i.ms = load atomic i64, ptr @_RNvNtNtCsh8eZTKRCwoO_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8, !dbg !1618, !noalias !1242
  %i.mt = and i64 %i.ms, 9223372036854775807, !dbg !1619
  %i.mu = icmp eq i64 %i.mt, 0, !dbg !1619
  br i1 %i.mu, label %_RNvMNtNtCsh8eZTKRCwoO_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i36.i, label %bb.bw, !dbg !1619, !prof !150

bb.bw:                                            ; preds = %bb.bv
  %i.mv = invoke noundef zeroext i1 @_RNvNtNtCsh8eZTKRCwoO_3std9panicking11panic_count17is_zero_slow_path() #23
          to label %.noexc.i.i unwind label %bb.bp, !dbg !1620, !noalias !1188

.noexc.i.i:                                       ; preds = %bb.bw
  br i1 %i.mv, label %_RNvMNtNtCsh8eZTKRCwoO_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i36.i, label %bb.bx, !dbg !1621

bb.bx:                                            ; preds = %.noexc.i.i
  store atomic i8 1, ptr %i.mq monotonic, align 4, !dbg !1622, !noalias !1242
  br label %_RNvMNtNtCsh8eZTKRCwoO_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i36.i, !dbg !1623

_RNvMNtNtCsh8eZTKRCwoO_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i36.i: ; preds = %bb.bx, %.noexc.i.i, %bb.bv, %bb.bu
  %i.mw = atomicrmw xchg ptr %.val.i.i34.i, i32 0 release, align 4, !dbg !1624, !noalias !1242
  %i.mx = icmp eq i32 %i.mw, 2, !dbg !1625
  br i1 %i.mx, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtNtCsh8eZTKRCwoO_3std4sync6poison5mutex10MutexGuarduEECs80wj1cxFixi_12polars_dtype.exit.sink.split.i.i.i, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6result6ResultINtNtNtNtCsh8eZTKRCwoO_3std4sync6poison5mutex10MutexGuarduEINtB17_11PoisonErrorB12_EEECs80wj1cxFixi_12polars_dtype.exit.i.i, !dbg !1625, !prof !127

bb.by:                                            ; preds = %bb.bt
  call void @llvm.experimental.noalias.scope.decl(metadata !1243), !dbg !1615
  %.val.i.i13.i.i = load ptr, ptr %i.mo, align 8, !dbg !1626, !alias.scope !1244, !noalias !1188, !nonnull !91, !align !172, !noundef !91 ; 3 uses
  %i.my = getelementptr inbounds nuw i8, ptr %i.h, i64 16, !dbg !1626
  %.val1.i.i.i31.i = load i8, ptr %i.my, align 8, !dbg !1626, !range !135, !alias.scope !1244, !noalias !1188, !noundef !91
  %i.mz = getelementptr inbounds nuw i8, ptr %.val.i.i13.i.i, i64 4, !dbg !1627
  %i.na = trunc nuw i8 %.val1.i.i.i31.i to i1, !dbg !1628
  br i1 %i.na, label %_RNvMNtNtCsh8eZTKRCwoO_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i32.i, label %bb.bz, !dbg !1628

bb.bz:                                            ; preds = %bb.by
  %i.nb = load atomic i64, ptr @_RNvNtNtCsh8eZTKRCwoO_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8, !dbg !1629, !noalias !1245
  %i.nc = and i64 %i.nb, 9223372036854775807, !dbg !1630
  %i.nd = icmp eq i64 %i.nc, 0, !dbg !1630
  br i1 %i.nd, label %_RNvMNtNtCsh8eZTKRCwoO_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i32.i, label %bb.ca, !dbg !1630, !prof !150

bb.ca:                                            ; preds = %bb.bz
  %i.ne = invoke noundef zeroext i1 @_RNvNtNtCsh8eZTKRCwoO_3std9panicking11panic_count17is_zero_slow_path() #23
          to label %.noexc14.i.i unwind label %bb.bp, !dbg !1631, !noalias !1188

.noexc14.i.i:                                     ; preds = %bb.ca
  br i1 %i.ne, label %_RNvMNtNtCsh8eZTKRCwoO_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i32.i, label %bb.cb, !dbg !1632

bb.cb:                                            ; preds = %.noexc14.i.i
  store atomic i8 1, ptr %i.mz monotonic, align 4, !dbg !1633, !noalias !1245
  br label %_RNvMNtNtCsh8eZTKRCwoO_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i32.i, !dbg !1634

_RNvMNtNtCsh8eZTKRCwoO_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i32.i: ; preds = %bb.cb, %.noexc14.i.i, %bb.bz, %bb.by
  %i.nf = atomicrmw xchg ptr %.val.i.i13.i.i, i32 0 release, align 4, !dbg !1635, !noalias !1245
  %i.ng = icmp eq i32 %i.nf, 2, !dbg !1636
  br i1 %i.ng, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtNtCsh8eZTKRCwoO_3std4sync6poison5mutex10MutexGuarduEECs80wj1cxFixi_12polars_dtype.exit.sink.split.i.i.i, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6result6ResultINtNtNtNtCsh8eZTKRCwoO_3std4sync6poison5mutex10MutexGuarduEINtB17_11PoisonErrorB12_EEECs80wj1cxFixi_12polars_dtype.exit.i.i, !dbg !1636, !prof !127

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtNtCsh8eZTKRCwoO_3std4sync6poison5mutex10MutexGuarduEECs80wj1cxFixi_12polars_dtype.exit.sink.split.i.i.i: ; preds = %_RNvMNtNtCsh8eZTKRCwoO_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i32.i, %_RNvMNtNtCsh8eZTKRCwoO_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i36.i
  %.val.i.sink.i.i33.i = phi ptr [ %.val.i.i34.i, %_RNvMNtNtCsh8eZTKRCwoO_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i36.i ], [ %.val.i.i13.i.i, %_RNvMNtNtCsh8eZTKRCwoO_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i32.i ]
  invoke void @_RNvMNtNtNtNtCsh8eZTKRCwoO_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %.val.i.sink.i.i33.i)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6result6ResultINtNtNtNtCsh8eZTKRCwoO_3std4sync6poison5mutex10MutexGuarduEINtB17_11PoisonErrorB12_EEECs80wj1cxFixi_12polars_dtype.exit.i.i unwind label %bb.bp, !dbg !1615, !noalias !1188

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6result6ResultINtNtNtNtCsh8eZTKRCwoO_3std4sync6poison5mutex10MutexGuarduEINtB17_11PoisonErrorB12_EEECs80wj1cxFixi_12polars_dtype.exit.i.i: ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtNtCsh8eZTKRCwoO_3std4sync6poison5mutex10MutexGuarduEECs80wj1cxFixi_12polars_dtype.exit.sink.split.i.i.i, %_RNvMNtNtCsh8eZTKRCwoO_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i32.i, %_RNvMNtNtCsh8eZTKRCwoO_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i36.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !dbg !1637, !noalias !1188
  invoke void @_RNvMNtNtNtCsh8eZTKRCwoO_3std4sync6poison7condvarNtB2_7Condvar10notify_all(ptr noundef nonnull align 4 %i.hw)
          to label %bb.bs unwind label %bb.bp, !dbg !1638, !noalias !1188

bb.cc:                                            ; preds = %bb.bs
  %i.nh = getelementptr inbounds nuw i8, ptr %i.i, i64 8, !dbg !1639
  %i.ni = load ptr, ptr %i.nh, align 8, !dbg !1639, !noalias !1188, !nonnull !91, !noundef !91
  %i.nj = getelementptr inbounds nuw i8, ptr %i.i, i64 16, !dbg !1639
  %i.nk = load ptr, ptr %i.nj, align 8, !dbg !1639, !noalias !1188, !nonnull !91, !align !121, !noundef !91
  invoke void @_RNvNtCsh8eZTKRCwoO_3std5panic13resume_unwind(ptr noundef nonnull %i.ni, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.nk) #19
          to label %bb.cd unwind label %bb.bp, !dbg !1640, !noalias !1188

bb.cd:                                            ; preds = %bb.cc
  unreachable

bb.ce:                                            ; preds = %bb.bp
  br i1 %.sroa.01.0.i30.i, label %bb.ch, label %common.resume.i, !dbg !1599

bb.cf:                                            ; preds = %bb.bp
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtCsgjwxzEoLG5s_12polars_error11PolarsErrorECs80wj1cxFixi_12polars_dtype(ptr noalias noundef align 8 dereferenceable(72) %i.i) #21
          to label %common.resume.i unwind label %bb.cg, !dbg !1599, !noalias !1188

bb.cg:                                            ; preds = %bb.ch, %bb.cf
  %i.nl = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #22, !dbg !1641, !noalias !1188
  unreachable, !dbg !1641

bb.ch:                                            ; preds = %bb.ce
  %i.nm = getelementptr inbounds nuw i8, ptr %i.i, i64 8, !dbg !1599
  %.val.i.i = load ptr, ptr %i.nm, align 8, !dbg !1599, !noalias !1188
  %i.nn = getelementptr inbounds nuw i8, ptr %i.i, i64 16, !dbg !1599
  %.val12.i.i = load ptr, ptr %i.nn, align 8, !dbg !1599, !noalias !1188, !nonnull !91, !align !121, !noundef !91
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EECs80wj1cxFixi_12polars_dtype(ptr %.val.i.i, ptr nonnull %.val12.i.i) #21
          to label %common.resume.i unwind label %bb.cg, !dbg !1599, !noalias !1188

bb.ci:                                            ; preds = %bb.ax, %bb.aw
  %.sroa.010.0.i = phi ptr [ %i.jr, %bb.aw ], [ %.sroa.01.0.i.i, %bb.ax ], !dbg !1642 ; 8 uses
  %i.no = icmp eq ptr %.sroa.010.0.i, inttoptr (i64 -1 to ptr), !dbg !1643
  br i1 %i.no, label %_RNCNvMNtNtCs80wj1cxFixi_12polars_dtype11categorical7mappingNtB4_18CategoricalMapping20insert_cat_with_hash0B8_.exit.thread.i, label %_RNvMs_NtNtCs2mZqlW55729_12polars_utils5parma3rawINtB4_11EntryHeaderemE7key_ptrCs80wj1cxFixi_12polars_dtype.exit.i21, !dbg !1643

_RNvMs_NtNtCs2mZqlW55729_12polars_utils5parma3rawINtB4_11EntryHeaderemE7key_ptrCs80wj1cxFixi_12polars_dtype.exit.i21: ; preds = %bb.ci
  %i.np = getelementptr inbounds nuw i8, ptr %.sroa.010.0.i, i64 16, !dbg !1644
  %i.nq = load i64, ptr %i.np, align 8, !dbg !1645, !noalias !1142, !noundef !91
  %i.nr = icmp eq i64 %i.nq, %i.hu, !dbg !1646
  br i1 %i.nr, label %_RNCNvMNtNtCs80wj1cxFixi_12polars_dtype11categorical7mappingNtB4_18CategoricalMapping20insert_cat_with_hash0B8_.exit.i, label %_RNCNvMNtNtCs80wj1cxFixi_12polars_dtype11categorical7mappingNtB4_18CategoricalMapping20insert_cat_with_hash0B8_.exit.thread.i, !dbg !1646

_RNCNvMNtNtCs80wj1cxFixi_12polars_dtype11categorical7mappingNtB4_18CategoricalMapping20insert_cat_with_hash0B8_.exit.i: ; preds = %_RNvMs_NtNtCs2mZqlW55729_12polars_utils5parma3rawINtB4_11EntryHeaderemE7key_ptrCs80wj1cxFixi_12polars_dtype.exit.i21
  %i.ns = getelementptr inbounds nuw i8, ptr %.sroa.010.0.i, i64 24, !dbg !1647
  %bcmp.i.i = call i32 @bcmp(ptr nonnull readonly %i.ns, ptr nonnull %i.hv, i64 %i.hu), !dbg !1648, !noalias !1142
  %i.nt = icmp eq i32 %bcmp.i.i, 0, !dbg !1648
  br i1 %i.nt, label %bb.cj, label %_RNCNvMNtNtCs80wj1cxFixi_12polars_dtype11categorical7mappingNtB4_18CategoricalMapping20insert_cat_with_hash0B8_.exit.thread.i, !dbg !1649

_RNCNvMNtNtCs80wj1cxFixi_12polars_dtype11categorical7mappingNtB4_18CategoricalMapping20insert_cat_with_hash0B8_.exit.thread.i: ; preds = %_RNvMs_NtNtCs2mZqlW55729_12polars_utils5parma3rawINtB4_11EntryHeaderemE13wait_for_initCs80wj1cxFixi_12polars_dtype.exit.i, %_RNCNvMNtNtCs80wj1cxFixi_12polars_dtype11categorical7mappingNtB4_18CategoricalMapping20insert_cat_with_hash0B8_.exit.i, %_RNvMs_NtNtCs2mZqlW55729_12polars_utils5parma3rawINtB4_11EntryHeaderemE7key_ptrCs80wj1cxFixi_12polars_dtype.exit.i21, %bb.ci
  %i.nu = add i64 %.sroa.019.097.i, -128, !dbg !1650
  %i.nv = and i64 %i.nu, %.sroa.019.097.i, !dbg !1651 ; 2 uses
  %i.nw = icmp eq i64 %i.nv, 0, !dbg !1507
  br i1 %i.nw, label %._crit_edge.i20, label %bb.au, !dbg !1507

bb.cj:                                            ; preds = %_RNCNvMNtNtCs80wj1cxFixi_12polars_dtype11categorical7mappingNtB4_18CategoricalMapping20insert_cat_with_hash0B8_.exit.i
  %i.nx = load atomic ptr, ptr %.sroa.010.0.i acquire, align 8, !dbg !1652, !noalias !1142 ; 3 uses
  %i.ny = ptrtoint ptr %i.nx to i64, !dbg !1653   ; 3 uses
  %i.nz = and i64 %i.ny, 5, !dbg !1654
  %i.oa = icmp eq i64 %i.nz, 0, !dbg !1654
  br i1 %i.oa, label %bb.ck, label %_RNvMs_NtNtCs2mZqlW55729_12polars_utils5parma3rawINtB4_11EntryHeaderemE13wait_for_initCs80wj1cxFixi_12polars_dtype.exit.i, !dbg !1654

bb.ck:                                            ; preds = %bb.cj
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !1655, !noalias !1142
  call void @_RNvMs5_NtNtNtCsh8eZTKRCwoO_3std4sync6poison5mutexINtB5_5MutexuE4lockCs80wj1cxFixi_12polars_dtype(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.f, ptr noundef nonnull align 4 %i.hx), !dbg !1656, !noalias !1142
  call void @llvm.experimental.noalias.scope.decl(metadata !1257), !dbg !1657
  %i.ob = load i64, ptr %i.f, align 8, !dbg !1658, !range !134, !alias.scope !1257, !noalias !1258, !noundef !91
  %i.oc = trunc nuw i64 %i.ob to i1, !dbg !1659
  br i1 %i.oc, label %bb.cl, label %bb.cp, !dbg !1659, !prof !127

bb.cl:                                            ; preds = %bb.ck
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !1660, !noalias !1259
  %i.od = load ptr, ptr %i.hy, align 8, !dbg !1660, !alias.scope !1257, !noalias !1258, !nonnull !91, !align !172, !noundef !91
  %i.oe = load i8, ptr %i.hz, align 8, !dbg !1660, !range !135, !alias.scope !1257, !noalias !1258, !noundef !91
  store ptr %i.od, ptr %i.c, align 8, !dbg !1660, !noalias !1259
  %i.of = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !1660
  store i8 %i.oe, ptr %i.of, align 8, !dbg !1660, !noalias !1259
  invoke void @_RNvNtCscgRAwXFJnXP_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @5, i64 noundef 43, ptr noundef nonnull %i.c, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @6, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @16) #19
          to label %bb.cn unwind label %bb.cm, !dbg !1661, !noalias !1260

bb.cm:                                            ; preds = %bb.cl
  %i.og = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtCsh8eZTKRCwoO_3std4sync6poison11PoisonErrorINtNtBJ_5mutex10MutexGuarduEEECs80wj1cxFixi_12polars_dtype(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.c) #21
          to label %common.resume.i unwind label %bb.co, !dbg !1662, !noalias !1260

bb.cn:                                            ; preds = %bb.cl
  unreachable

bb.co:                                            ; preds = %bb.cm
  %i.oh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #22, !dbg !1663, !noalias !1260
  unreachable, !dbg !1663

bb.cp:                                            ; preds = %bb.ck
  %i.oi = load ptr, ptr %i.hy, align 8, !dbg !1664, !alias.scope !1257, !noalias !1258, !nonnull !91, !align !172, !noundef !91 ; 2 uses
  %i.oj = load i8, ptr %i.hz, align 8, !dbg !1664, !range !135, !alias.scope !1257, !noalias !1258, !noundef !91 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !1665, !noalias !1142
  %.not.i39.i = and i64 %i.ny, 2, !dbg !1666
  %i.ok = xor i64 %.not.i39.i, 2, !dbg !1666
  %i.ol = getelementptr i8, ptr %i.nx, i64 %i.ok, !dbg !1667
  %i.om = cmpxchg ptr %.sroa.010.0.i, ptr %i.nx, ptr %i.ol monotonic acquire, align 8, !dbg !1668, !noalias !1142
  %.sroa.01.0.i.i.i = extractvalue { ptr, i1 } %i.om, 0, !dbg !1669
  %i.on = ptrtoint ptr %.sroa.01.0.i.i.i to i64, !dbg !1670 ; 2 uses
  %i.oo = and i64 %i.on, 5, !dbg !1671
  %i.op = icmp eq i64 %i.oo, 0, !dbg !1671
  br i1 %i.op, label %.lr.ph.i.i, label %._crit_edge.i.i, !dbg !1671

.lr.ph.i.i:                                       ; preds = %bb.cp, %bb.dc
  %.sroa.0.022.i.i = phi ptr [ %i.po, %bb.dc ], [ %i.oi, %bb.cp ]
  %.sroa.7.021.i.i = phi i8 [ %i.pp, %bb.dc ], [ %i.oj, %bb.cp ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !1672, !noalias !1142
  %i.oq = trunc nuw i8 %.sroa.7.021.i.i to i1, !dbg !1673
  call void @_RINvMNtNtNtCsh8eZTKRCwoO_3std4sync6poison7condvarNtB3_7Condvar4waituECs80wj1cxFixi_12polars_dtype(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.e, ptr noundef nonnull align 4 %i.hw, ptr noundef nonnull align 4 %.sroa.0.022.i.i, i1 noundef zeroext %i.oq), !dbg !1674, !noalias !1142
  call void @llvm.experimental.noalias.scope.decl(metadata !1261), !dbg !1675
  %i.or = load i64, ptr %i.e, align 8, !dbg !1676, !range !134, !alias.scope !1261, !noalias !1262, !noundef !91
  %i.os = trunc nuw i64 %i.or to i1, !dbg !1677
  br i1 %i.os, label %bb.cu, label %bb.dc, !dbg !1677, !prof !127

._crit_edge.i.i:                                  ; preds = %bb.dc, %bb.cp
  %.sroa.7.0.lcssa.i.i = phi i8 [ %i.oj, %bb.cp ], [ %i.pp, %bb.dc ], !dbg !1678
  %.sroa.0.0.lcssa.i.i = phi ptr [ %i.oi, %bb.cp ], [ %i.po, %bb.dc ], !dbg !1678 ; 3 uses
  %.lcssa.i.i = phi i64 [ %i.on, %bb.cp ], [ %i.pr, %bb.dc ], !dbg !1670 ; 2 uses
  %i.ot = getelementptr inbounds nuw i8, ptr %.sroa.0.0.lcssa.i.i, i64 4, !dbg !1679
  %i.ou = trunc nuw i8 %.sroa.7.0.lcssa.i.i to i1, !dbg !1680
  br i1 %i.ou, label %_RNvMNtNtCsh8eZTKRCwoO_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i40.i, label %bb.cq, !dbg !1680

bb.cq:                                            ; preds = %._crit_edge.i.i
  %i.ov = load atomic i64, ptr @_RNvNtNtCsh8eZTKRCwoO_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8, !dbg !1681, !noalias !1142
  %i.ow = and i64 %i.ov, 9223372036854775807, !dbg !1682
  %i.ox = icmp eq i64 %i.ow, 0, !dbg !1682
  br i1 %i.ox, label %_RNvMNtNtCsh8eZTKRCwoO_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i40.i, label %bb.cr, !dbg !1682, !prof !150

bb.cr:                                            ; preds = %bb.cq
  %i.oy = call noundef zeroext i1 @_RNvNtNtCsh8eZTKRCwoO_3std9panicking11panic_count17is_zero_slow_path() #23, !dbg !1683, !noalias !1142
  br i1 %i.oy, label %_RNvMNtNtCsh8eZTKRCwoO_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i40.i, label %bb.cs, !dbg !1684

bb.cs:                                            ; preds = %bb.cr
  store atomic i8 1, ptr %i.ot monotonic, align 1, !dbg !1685, !noalias !1142
  br label %_RNvMNtNtCsh8eZTKRCwoO_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i40.i, !dbg !1686

_RNvMNtNtCsh8eZTKRCwoO_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i40.i: ; preds = %bb.cs, %bb.cr, %bb.cq, %._crit_edge.i.i
  %i.oz = atomicrmw xchg ptr %.sroa.0.0.lcssa.i.i, i32 0 release, align 4, !dbg !1687, !noalias !1142
  %i.pa = icmp eq i32 %i.oz, 2, !dbg !1688
  br i1 %i.pa, label %bb.ct, label %_RNvMs_NtNtCs2mZqlW55729_12polars_utils5parma3rawINtB4_11EntryHeaderemE13wait_for_initCs80wj1cxFixi_12polars_dtype.exit.i, !dbg !1688, !prof !127

bb.ct:                                            ; preds = %_RNvMNtNtCsh8eZTKRCwoO_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i40.i
  call void @_RNvMNtNtNtNtCsh8eZTKRCwoO_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %.sroa.0.0.lcssa.i.i), !dbg !1689, !noalias !1142
  br label %_RNvMs_NtNtCs2mZqlW55729_12polars_utils5parma3rawINtB4_11EntryHeaderemE13wait_for_initCs80wj1cxFixi_12polars_dtype.exit.i, !dbg !1689

bb.cu:                                            ; preds = %.lr.ph.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !1690, !noalias !1263
  %i.pb = load ptr, ptr %i.ia, align 8, !dbg !1690, !alias.scope !1261, !noalias !1262, !nonnull !91, !align !172, !noundef !91
  %i.pc = load i8, ptr %i.ib, align 8, !dbg !1690, !range !135, !alias.scope !1261, !noalias !1262, !noundef !91
  store ptr %i.pb, ptr %i.d, align 8, !dbg !1690, !noalias !1263
  %i.pd = getelementptr inbounds nuw i8, ptr %i.d, i64 8, !dbg !1690 ; 2 uses
  store i8 %i.pc, ptr %i.pd, align 8, !dbg !1690, !noalias !1263
  invoke void @_RNvNtCscgRAwXFJnXP_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @5, i64 noundef 43, ptr noundef nonnull %i.d, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @6, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @17) #19
          to label %bb.da unwind label %bb.cv, !dbg !1691, !noalias !1264

bb.cv:                                            ; preds = %bb.cu
  %i.pe = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1265), !dbg !1692
  %.val.i56.i = load ptr, ptr %i.d, align 8, !dbg !1693, !alias.scope !1265, !noalias !1264, !nonnull !91, !align !172, !noundef !91 ; 3 uses
  %.val1.i.i = load i8, ptr %i.pd, align 8, !dbg !1693, !range !135, !alias.scope !1265, !noalias !1264, !noundef !91
  %i.pf = getelementptr inbounds nuw i8, ptr %.val.i56.i, i64 4, !dbg !1694
  %i.pg = trunc nuw i8 %.val1.i.i to i1, !dbg !1695
  br i1 %i.pg, label %_RNvMNtNtCsh8eZTKRCwoO_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i57.i, label %bb.cw, !dbg !1695

bb.cw:                                            ; preds = %bb.cv
  %i.ph = load atomic i64, ptr @_RNvNtNtCsh8eZTKRCwoO_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8, !dbg !1696, !noalias !1266
  %i.pi = and i64 %i.ph, 9223372036854775807, !dbg !1697
  %i.pj = icmp eq i64 %i.pi, 0, !dbg !1697
  br i1 %i.pj, label %_RNvMNtNtCsh8eZTKRCwoO_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i57.i, label %bb.cx, !dbg !1697, !prof !150

bb.cx:                                            ; preds = %bb.cw
  %i.pk = invoke noundef zeroext i1 @_RNvNtNtCsh8eZTKRCwoO_3std9panicking11panic_count17is_zero_slow_path() #23
          to label %.noexc.i unwind label %bb.db, !dbg !1698, !noalias !1142

.noexc.i:                                         ; preds = %bb.cx
  br i1 %i.pk, label %_RNvMNtNtCsh8eZTKRCwoO_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i57.i, label %bb.cy, !dbg !1699

bb.cy:                                            ; preds = %.noexc.i
  store atomic i8 1, ptr %i.pf monotonic, align 4, !dbg !1700, !noalias !1266
  br label %_RNvMNtNtCsh8eZTKRCwoO_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i57.i, !dbg !1701

_RNvMNtNtCsh8eZTKRCwoO_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i57.i: ; preds = %bb.cy, %.noexc.i, %bb.cw, %bb.cv
  %i.pl = atomicrmw xchg ptr %.val.i56.i, i32 0 release, align 4, !dbg !1702, !noalias !1266
  %i.pm = icmp eq i32 %i.pl, 2, !dbg !1703
  br i1 %i.pm, label %bb.cz, label %common.resume.i, !dbg !1703, !prof !127

bb.cz:                                            ; preds = %_RNvMNtNtCsh8eZTKRCwoO_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i57.i
  invoke void @_RNvMNtNtNtNtCsh8eZTKRCwoO_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %.val.i56.i)
          to label %common.resume.i unwind label %bb.db, !dbg !1704, !noalias !1142

bb.da:                                            ; preds = %bb.cu
  unreachable

bb.db:                                            ; preds = %bb.cz, %bb.cx
  %i.pn = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #22, !dbg !1705, !noalias !1264
  unreachable, !dbg !1705

bb.dc:                                            ; preds = %.lr.ph.i.i
  %i.po = load ptr, ptr %i.ia, align 8, !dbg !1706, !alias.scope !1261, !noalias !1262, !nonnull !91, !align !172, !noundef !91 ; 2 uses
  %i.pp = load i8, ptr %i.ib, align 8, !dbg !1706, !range !135, !alias.scope !1261, !noalias !1262, !noundef !91 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !1707, !noalias !1142
  %i.pq = load atomic ptr, ptr %.sroa.010.0.i acquire, align 8, !dbg !1708, !noalias !1142
  %i.pr = ptrtoint ptr %i.pq to i64, !dbg !1670   ; 2 uses
  %i.ps = and i64 %i.pr, 5, !dbg !1671
  %i.pt = icmp eq i64 %i.ps, 0, !dbg !1671
  br i1 %i.pt, label %.lr.ph.i.i, label %._crit_edge.i.i, !dbg !1671

_RNvMs_NtNtCs2mZqlW55729_12polars_utils5parma3rawINtB4_11EntryHeaderemE13wait_for_initCs80wj1cxFixi_12polars_dtype.exit.i: ; preds = %bb.ct, %_RNvMNtNtCsh8eZTKRCwoO_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i40.i, %bb.cj
  %.sroa.0.0.in.in.in.i.i = phi i64 [ %i.ny, %bb.cj ], [ %.lcssa.i.i, %_RNvMNtNtCsh8eZTKRCwoO_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i40.i ], [ %.lcssa.i.i, %bb.ct ]
  %.sroa.0.0.in.in.i.i = and i64 %.sroa.0.0.in.in.in.i.i, 4, !dbg !1678
  %.sroa.0.0.in.i.i = icmp eq i64 %.sroa.0.0.in.in.i.i, 0, !dbg !1678
  br i1 %.sroa.0.0.in.i.i, label %bb.dd, label %_RNCNvMNtNtCs80wj1cxFixi_12polars_dtype11categorical7mappingNtB4_18CategoricalMapping20insert_cat_with_hash0B8_.exit.thread.i, !dbg !1709

bb.dd:                                            ; preds = %_RNvMs_NtNtCs2mZqlW55729_12polars_utils5parma3rawINtB4_11EntryHeaderemE13wait_for_initCs80wj1cxFixi_12polars_dtype.exit.i
  %i.pu = load i64, ptr %i.bs, align 8, !dbg !1710, !noalias !1142, !noundef !91 ; 2 uses
  %i.pv = add i64 %i.pu, -9223372036854775793, !dbg !1711
  %.not.i.i43.i = icmp ult i64 %i.pv, -9223372036854775801, !dbg !1711
  br i1 %.not.i.i43.i, label %bb.de, label %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultNtNtNtB4_5alloc6layout6LayoutNtBJ_11LayoutErrorE6unwrapCs80wj1cxFixi_12polars_dtype.exit.i.i44.i, !dbg !1712, !prof !127

bb.de:                                            ; preds = %bb.dd
  call void @_RNvNtCscgRAwXFJnXP_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @5, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @7, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @18) #19, !dbg !1713, !noalias !1142
  unreachable

_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultNtNtNtB4_5alloc6layout6LayoutNtBJ_11LayoutErrorE6unwrapCs80wj1cxFixi_12polars_dtype.exit.i.i44.i: ; preds = %bb.dd
  %i.pw = add i64 %i.pu, 24, !dbg !1714           ; 2 uses
  %.not.i.i.i45.i = icmp ugt i64 %i.pw, 9223372036854775800, !dbg !1715
  br i1 %.not.i.i.i45.i, label %bb.df, label %_RNvMs_NtNtCs2mZqlW55729_12polars_utils5parma3rawINtB4_11EntryHeaderemE4freeCs80wj1cxFixi_12polars_dtype.exit.i, !dbg !1716

bb.df:                                            ; preds = %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultNtNtNtB4_5alloc6layout6LayoutNtBJ_11LayoutErrorE6unwrapCs80wj1cxFixi_12polars_dtype.exit.i.i44.i
  call void @_RNvNtCscgRAwXFJnXP_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @5, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @7, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @19) #19, !dbg !1717, !noalias !1267
  unreachable

_RNvMs_NtNtCs2mZqlW55729_12polars_utils5parma3rawINtB4_11EntryHeaderemE4freeCs80wj1cxFixi_12polars_dtype.exit.i: ; preds = %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultNtNtNtB4_5alloc6layout6LayoutNtBJ_11LayoutErrorE6unwrapCs80wj1cxFixi_12polars_dtype.exit.i.i44.i
  call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %i.bp, i64 noundef %i.pw, i64 noundef 8) #20, !dbg !1718, !noalias !1142
  %i.px = getelementptr inbounds nuw i8, ptr %1, i64 56, !dbg !1719
  %i.py = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i26.i, i64 16, !dbg !1720
  %i.pz = atomicrmw add ptr %i.py, i64 1 monotonic, align 8, !dbg !1721, !noalias !1142
  %i.qa = icmp eq i64 %i.pz, 0, !dbg !1722
  br i1 %i.qa, label %bb.dg, label %_RINvMs2_NtNtCs2mZqlW55729_12polars_utils5parma3rawINtB6_8RawTableemE23try_find_or_insert_implNtCsgjwxzEoLG5s_12polars_error11PolarsErrorNCNvMNtNtCs80wj1cxFixi_12polars_dtype11categorical7mappingNtB2f_18CategoricalMapping20insert_cat_with_hashs_0NCB2c_0EB2j_.exit.thread, !dbg !1722

bb.dg:                                            ; preds = %_RNvMs_NtNtCs2mZqlW55729_12polars_utils5parma3rawINtB4_11EntryHeaderemE4freeCs80wj1cxFixi_12polars_dtype.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !1723, !noalias !1142
end_hunk_1
