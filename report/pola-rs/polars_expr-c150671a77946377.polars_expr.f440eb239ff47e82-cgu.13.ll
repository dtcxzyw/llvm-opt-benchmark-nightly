Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pola-rs/original/polars_expr-c150671a77946377.polars_expr.f440eb239ff47e82-cgu.13?download=true
inline.NumInlined: 10113
inline.NumDeleted: 4526
loop-unroll.NumCompletelyUnrolled: 12
loop-unroll.NumRuntimeUnrolled: 65
loop-unroll.NumUnrolled: 77
begin_hunk_0_@_RINvMs0_NtNtNtNtCsh8eZTKRCwoO_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCscgRAwXFJnXP_4core4cell7RefCellNtNtCs4BcJZGCY6Ba_10rayon_core11thread_pool10ThreadPoolEuE16get_or_init_slowNvNvNtCs1LHh8CLbVkQ_11polars_core7runtime9NOOP_POOL27___rust_std_internal_init_fnECskY9G75ZWc4U_11polars_expr:bb.a
  store i8 1, ptr %i.j, align 8, !dbg !6250
  store i64 1, ptr %i.i, align 8, !dbg !6251
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !6252, !noalias !6219
  call void @_RINvMs4_NtCs4BcJZGCY6Ba_10rayon_core8registryNtB6_8Registry3newNtB6_12DefaultSpawnECskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.b, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(96) %i.c), !dbg !6252, !noalias !6223
  %i.p = load i64, ptr %i.b, align 8, !dbg !6253, !range !2355, !noalias !6219, !noundef !2226 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !6254
  %i.r = load ptr, ptr %i.q, align 8, !dbg !6254, !noalias !6219 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !6255, !noalias !6219
  %.not.i.i.i = icmp eq i64 %i.p, 3, !dbg !6256
  br i1 %.not.i.i.i, label %bb.k, label %bb.f, !dbg !6257, !prof !2357

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !6258
  store i64 %i.p, ptr %i.a, align 8, !dbg !6258
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !6258 ; 2 uses
  store ptr %i.r, ptr %i.s, align 8, !dbg !6258
  invoke void @_RNvNtCscgRAwXFJnXP_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @387, i64 noundef 34, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @185, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @389) #55
          to label %bb.i unwind label %bb.g, !dbg !6259

bb.g:                                             ; preds = %bb.f
  %i.t = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val.i.i.i.i = load i64, ptr %i.a, align 8, !dbg !6260, !range !2358, !alias.scope !6224, !noundef !2226
  %switch.i.i.i.i.i = icmp samesign ult i64 %.val.i.i.i.i, 2, !dbg !6261
  br i1 %switch.i.i.i.i.i, label %common.resume, label %bb.h, !dbg !6261

bb.h:                                             ; preds = %bb.g
  %.val1.i.i.i.i = load ptr, ptr %i.s, align 8, !dbg !6260, !alias.scope !6224, !nonnull !2226, !noundef !2226
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorECskY9G75ZWc4U_11polars_expr(ptr nonnull %.val1.i.i.i.i)
          to label %common.resume unwind label %bb.j, !dbg !6261

bb.i:                                             ; preds = %bb.f
  unreachable

bb.j:                                             ; preds = %bb.h
  %i.u = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #53, !dbg !6262
  unreachable, !dbg !6262

common.resume:                                    ; preds = %bb.n, %bb.o, %bb.g, %bb.h
  %common.resume.op = phi { ptr, i32 } [ %i.t, %bb.g ], [ %i.t, %bb.h ], [ %i.z, %bb.o ], [ %i.z, %bb.n ]
  resume { ptr, i32 } %common.resume.op, !dbg !6263

bb.k:                                             ; preds = %bb.e
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.r) ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !6264
  %.pre = load i8, ptr %i.e, align 8, !dbg !6265, !range !2328
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !6244
  %i.v = load i64, ptr %0, align 8, !dbg !6245
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !6245 ; 2 uses
  %i.x = load ptr, ptr %i.w, align 8, !dbg !6245
  store i64 %i.v, ptr %i.d, align 8, !dbg !6245
  %i.y = getelementptr inbounds nuw i8, ptr %i.d, i64 8, !dbg !6245 ; 6 uses
  store ptr %i.x, ptr %i.y, align 8, !dbg !6245
  store i64 0, ptr %0, align 8, !dbg !6246
  store ptr %i.r, ptr %i.w, align 8, !dbg !6246
  store i8 1, ptr %i.e, align 8, !dbg !6247
  switch i8 %.pre, label %default.unreachable7 [
    i8 0, label %bb.l
    i8 1, label %bb.m
    i8 2, label %bb.s
  ], !dbg !6248, !prof !6225

bb.l:                                             ; preds = %.thread, %bb.k
  call void @_RNvNtNtNtNtCsh8eZTKRCwoO_3std3sys12thread_local11destructors10linux_like8register(ptr noundef nonnull align 8 %0, ptr noundef nonnull @_RINvNtNtNtNtCsh8eZTKRCwoO_3std3sys12thread_local6native4lazy7destroyINtNtCscgRAwXFJnXP_4core4cell7RefCellNtNtCs4BcJZGCY6Ba_10rayon_core11thread_pool10ThreadPoolEECskY9G75ZWc4U_11polars_expr), !dbg !6266
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_4cell7RefCellNtNtCs4BcJZGCY6Ba_10rayon_core11thread_pool10ThreadPoolEECskY9G75ZWc4U_11polars_expr.exit, !dbg !6267

bb.m:                                             ; preds = %bb.k
  invoke void @_RNvXs_NtCs4BcJZGCY6Ba_10rayon_core11thread_poolNtB4_10ThreadPoolNtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.y)
          to label %bb.p unwind label %bb.n, !dbg !6268

bb.n:                                             ; preds = %bb.m
  %i.z = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !6227), !dbg !6268
  call void @llvm.experimental.noalias.scope.decl(metadata !6228), !dbg !6269
  %i.aa = load ptr, ptr %i.y, align 8, !dbg !6270, !alias.scope !6229, !nonnull !2226, !noundef !2226
  %i.ab = atomicrmw add ptr %i.aa, i64 -1 release, align 8, !dbg !6271, !noalias !6230
  %i.ac = icmp eq i64 %i.ab, 1, !dbg !6272
  br i1 %i.ac, label %bb.o, label %common.resume, !dbg !6272

bb.o:                                             ; preds = %bb.n
  fence acquire, !dbg !6273
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtCs4BcJZGCY6Ba_10rayon_core8registry8RegistryE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.y) #51
          to label %common.resume unwind label %bb.r, !dbg !6274

bb.p:                                             ; preds = %bb.m
  call void @llvm.experimental.noalias.scope.decl(metadata !6231), !dbg !6268
  call void @llvm.experimental.noalias.scope.decl(metadata !6232), !dbg !6275
  %i.ad = load ptr, ptr %i.y, align 8, !dbg !6276, !alias.scope !6233, !nonnull !2226, !noundef !2226
  %i.ae = atomicrmw add ptr %i.ad, i64 -1 release, align 8, !dbg !6277, !noalias !6234
  %i.af = icmp eq i64 %i.ae, 1, !dbg !6278
  br i1 %i.af, label %bb.q, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_4cell7RefCellNtNtCs4BcJZGCY6Ba_10rayon_core11thread_pool10ThreadPoolEECskY9G75ZWc4U_11polars_expr.exit, !dbg !6278

bb.q:                                             ; preds = %bb.p
  fence acquire, !dbg !6279
  call void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtCs4BcJZGCY6Ba_10rayon_core8registry8RegistryE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.y) #51, !dbg !6280
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_4cell7RefCellNtNtCs4BcJZGCY6Ba_10rayon_core11thread_pool10ThreadPoolEECskY9G75ZWc4U_11polars_expr.exit, !dbg !6280

bb.r:                                             ; preds = %bb.o
  %i.ag = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #53, !dbg !6268
  unreachable, !dbg !6268

bb.s:                                             ; preds = %bb.k
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @6, i64 noundef 40, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @8) #54, !dbg !6281
  unreachable, !dbg !6281

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_4cell7RefCellNtNtCs4BcJZGCY6Ba_10rayon_core11thread_pool10ThreadPoolEECskY9G75ZWc4U_11polars_expr.exit: ; preds = %bb.q, %bb.p, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !6282
  br label %bb.t, !dbg !6283

bb.t:                                             ; preds = %bb.a, %bb.c, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_4cell7RefCellNtNtCs4BcJZGCY6Ba_10rayon_core11thread_pool10ThreadPoolEECskY9G75ZWc4U_11polars_expr.exit
  %.sroa.02.0 = phi ptr [ %0, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_4cell7RefCellNtNtCs4BcJZGCY6Ba_10rayon_core11thread_pool10ThreadPoolEECskY9G75ZWc4U_11polars_expr.exit ], [ null, %bb.c ], [ %0, %bb.a ], !dbg !6263
  ret ptr %.sroa.02.0, !dbg !6284
}

; Function Attrs: cold nonlazybind uwtable
define hidden noundef ptr @_RINvMs0_NtNtNtNtCsh8eZTKRCwoO_3std3sys12thread_local6native4lazyINtB6_7StorageNtNtCs7mBf7xsg8h_15crossbeam_epoch9collector11LocalHandleuE16get_or_init_slowNvNvNtB1i_7default6HANDLE27___rust_std_internal_init_fnECskY9G75ZWc4U_11polars_expr(ptr noundef nonnull align 8 %0, ptr noalias nofree noundef align 8 captures(address_is_null) dereferenceable_or_null(16) %1) unnamed_addr #1 !dbg !6285 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !6338 ; 4 uses
  %i.b = load i8, ptr %i.a, align 8, !dbg !6339, !range !2328, !noundef !2226
  switch i8 %i.b, label %default.unreachable6 [
    i8 0, label %bb.b
    i8 1, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs7mBf7xsg8h_15crossbeam_epoch9collector11LocalHandleECskY9G75ZWc4U_11polars_expr.exit
    i8 2, label %bb.c
  ], !dbg !6340

default.unreachable6:                             ; preds = %bb.e, %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %.not = icmp eq ptr %1, null, !dbg !6341
  br i1 %.not, label %bb.e, label %bb.d, !dbg !6342

bb.c:                                             ; preds = %bb.a
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs7mBf7xsg8h_15crossbeam_epoch9collector11LocalHandleECskY9G75ZWc4U_11polars_expr.exit, !dbg !6343

bb.d:                                             ; preds = %bb.b
  %i.c = load i64, ptr %1, align 8, !dbg !6344, !range !2367, !noundef !2226
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !6344
  %i.e = load ptr, ptr %i.d, align 8, !dbg !6344
  store i64 0, ptr %1, align 8, !dbg !6345
  %i.f = trunc nuw i64 %i.c to i1, !dbg !6346
  br i1 %i.f, label %.thread, label %bb.e, !dbg !6346

.thread:                                          ; preds = %bb.d
  store ptr %i.e, ptr %0, align 8, !dbg !6347
  store i8 1, ptr %i.a, align 8, !dbg !6348
  br label %bb.f, !dbg !6349

bb.e:                                             ; preds = %bb.d, %bb.b
  %i.g = tail call noundef nonnull align 8 ptr @_RNvNtCs7mBf7xsg8h_15crossbeam_epoch7default9collector(), !dbg !6350
  %i.h = tail call noundef ptr @_RNvMs1_NtCs7mBf7xsg8h_15crossbeam_epoch9collectorNtB5_9Collector8register(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.g), !dbg !6351
  %.pre = load i8, ptr %i.a, align 8, !dbg !6352, !range !2328
  %i.i = load ptr, ptr %0, align 8, !dbg !6353    ; 3 uses
  store ptr %i.h, ptr %0, align 8, !dbg !6347
  store i8 1, ptr %i.a, align 8, !dbg !6348
  switch i8 %.pre, label %default.unreachable6 [
    i8 0, label %bb.f
    i8 1, label %bb.g
    i8 2, label %bb.i
  ], !dbg !6349, !prof !2341

bb.f:                                             ; preds = %.thread, %bb.e
  tail call void @_RNvNtNtNtNtCsh8eZTKRCwoO_3std3sys12thread_local11destructors10linux_like8register(ptr noundef nonnull align 8 %0, ptr noundef nonnull @_RINvNtNtNtNtCsh8eZTKRCwoO_3std3sys12thread_local6native4lazy7destroyNtNtCs7mBf7xsg8h_15crossbeam_epoch9collector11LocalHandleECskY9G75ZWc4U_11polars_expr), !dbg !6354
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs7mBf7xsg8h_15crossbeam_epoch9collector11LocalHandleECskY9G75ZWc4U_11polars_expr.exit, !dbg !6355

bb.g:                                             ; preds = %bb.e
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 2072, !dbg !6356
  %i.k = load i64, ptr %i.j, align 8, !dbg !6357, !noundef !2226
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 2080, !dbg !6358 ; 2 uses
  %i.m = load i64, ptr %i.l, align 8, !dbg !6359, !noundef !2226 ; 2 uses
  %i.n = add i64 %i.m, -1, !dbg !6360
  store i64 %i.n, ptr %i.l, align 8, !dbg !6361
  %i.o = icmp eq i64 %i.k, 0, !dbg !6362
  %i.p = icmp eq i64 %i.m, 1
  %or.cond.i.i.i = and i1 %i.o, %i.p, !dbg !6362
  br i1 %or.cond.i.i.i, label %bb.h, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs7mBf7xsg8h_15crossbeam_epoch9collector11LocalHandleECskY9G75ZWc4U_11polars_expr.exit, !dbg !6362, !prof !2376

bb.h:                                             ; preds = %bb.g
  tail call void @_RNvMs6_NtCs7mBf7xsg8h_15crossbeam_epoch8internalNtB5_5Local8finalize(ptr noundef nonnull align 128 %i.i), !dbg !6363
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs7mBf7xsg8h_15crossbeam_epoch9collector11LocalHandleECskY9G75ZWc4U_11polars_expr.exit, !dbg !6363

bb.i:                                             ; preds = %bb.e
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @6, i64 noundef 40, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @8) #54, !dbg !6364
  unreachable, !dbg !6364

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs7mBf7xsg8h_15crossbeam_epoch9collector11LocalHandleECskY9G75ZWc4U_11polars_expr.exit: ; preds = %bb.f, %bb.g, %bb.h, %bb.a, %bb.c
  %.sroa.02.0 = phi ptr [ %0, %bb.a ], [ null, %bb.c ], [ %0, %bb.h ], [ %0, %bb.g ], [ %0, %bb.f ], !dbg !6365
  ret ptr %.sroa.02.0, !dbg !6366
}

; Function Attrs: cold nonlazybind uwtable
define hidden noundef nonnull ptr @_RINvMs0_NtNtNtNtCsh8eZTKRCwoO_3std3sys12thread_local6native4lazyINtB6_7StoragejzE16get_or_init_slowNvNvNtNtNtCsfHnWouPsIOz_14regex_automata4util4pool5inner9THREAD_ID27___rust_std_internal_init_fnECskY9G75ZWc4U_11polars_expr(ptr nofree noundef nonnull returned align 8 captures(ret: address, provenance) %0, ptr noalias nofree noundef align 8 captures(address_is_null) dereferenceable_or_null(16) %1) unnamed_addr #1 !dbg !6367 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !6408 ; 2 uses
  %i.b = load i8, ptr %i.a, align 8, !dbg !6409, !range !2229, !noundef !2226
  %.not8.not = icmp eq i8 %i.b, 0, !dbg !6410
  br i1 %.not8.not, label %bb.b, label %bb.g, !dbg !6410

bb.b:                                             ; preds = %bb.a
  %.not = icmp eq ptr %1, null, !dbg !6411
  br i1 %.not, label %bb.d, label %bb.c, !dbg !6412

bb.c:                                             ; preds = %bb.b
  %i.c = load i64, ptr %1, align 8, !dbg !6413, !range !2367, !noundef !2226
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !6413
  %i.e = load i64, ptr %i.d, align 8, !dbg !6413
  store i64 0, ptr %1, align 8, !dbg !6414
  %i.f = trunc nuw i64 %i.c to i1, !dbg !6415
  br i1 %i.f, label %bb.f, label %bb.d, !dbg !6415

bb.d:                                             ; preds = %bb.b, %bb.c
  %i.g = atomicrmw add ptr @_RNvNtNtNtCsfHnWouPsIOz_14regex_automata4util4pool5inner7COUNTER, i64 1 monotonic, align 8, !dbg !6416 ; 2 uses
  %i.h = icmp eq i64 %i.g, 0, !dbg !6417
  br i1 %i.h, label %bb.e, label %bb.f, !dbg !6417, !prof !2279

bb.e:                                             ; preds = %bb.d
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking9panic_fmt(ptr noundef nonnull @390, ptr noundef nonnull inttoptr (i64 87 to ptr), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @391) #54, !dbg !6418
  unreachable, !dbg !6418

bb.f:                                             ; preds = %bb.c, %bb.d
  %.sroa.03.0 = phi i64 [ %i.e, %bb.c ], [ %i.g, %bb.d ], !dbg !6419
  store i64 %.sroa.03.0, ptr %0, align 8, !dbg !6420
  store i8 1, ptr %i.a, align 8, !dbg !6421
  br label %bb.g, !dbg !6422

bb.g:                                             ; preds = %bb.f, %bb.a
  ret ptr %0, !dbg !6423
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RINvMs2_NtNtNtCs8774dFTUdNv_12polars_arrow5array7binview7mutableINtB6_22MutableBinaryViewArrayShE4pushINtNtCsgZ49sUHp3tW_5alloc3vec3VechEECskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 dereferenceable(160) %0, ptr noalias noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !6424 {
bb.a:
  %i.a = alloca [16 x i8], align 4                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 9 uses
  %i.c = alloca [24 x i8], align 8                ; 2 uses
  %i.d = load i64, ptr %1, align 8, !dbg !6532, !range !2389, !noundef !2226
  %.not = icmp eq i64 %i.d, -9223372036854775808, !dbg !6532
  br i1 %.not, label %bb.p, label %bb.b, !dbg !6533

bb.b:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !dbg !6534
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6516), !dbg !6535
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 72, !dbg !6536 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !dbg !6536, !range !2389, !alias.scope !6516, !noundef !2226 ; 2 uses
  %.not.i = icmp eq i64 %i.f, -9223372036854775808, !dbg !6536
  br i1 %.not.i, label %bb.f, label %bb.c, !dbg !6537

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 96, !dbg !6538 ; 4 uses
  %i.h = load i64, ptr %i.g, align 8, !dbg !6538, !alias.scope !6517, !noundef !2226 ; 2 uses
  %i.i = and i64 %i.h, 7, !dbg !6539
  %i.j = icmp eq i64 %i.i, 0, !dbg !6539
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.l = load i64, ptr %i.k, align 8, !dbg !6540, !alias.scope !6517 ; 4 uses
  br i1 %i.j, label %bb.d, label %_RNvMs0_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutableNtB5_13MutableBitmap4push.exit.i, !dbg !6538

bb.d:                                             ; preds = %bb.c
  %i.m = icmp eq i64 %i.l, %i.f, !dbg !6541
  br i1 %i.m, label %bb.e, label %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechE8push_mutCskY9G75ZWc4U_11polars_expr.exit.i.i, !dbg !6541

bb.e:                                             ; preds = %bb.d
  invoke void @_RNvMs3_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVechE8grow_oneB7_(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.e)
          to label %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechE8push_mutCskY9G75ZWc4U_11polars_expr.exit.i.i unwind label %bb.n, !dbg !6542, !noalias !6518

_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechE8push_mutCskY9G75ZWc4U_11polars_expr.exit.i.i: ; preds = %bb.e, %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 80, !dbg !6543
  %i.o = load ptr, ptr %i.n, align 8, !dbg !6543, !alias.scope !6519, !nonnull !2226, !noundef !2226
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.l, !dbg !6544
  store i8 0, ptr %i.p, align 1, !dbg !6545, !noalias !6518
  %i.q = add i64 %i.l, 1, !dbg !6546              ; 2 uses
  store i64 %i.q, ptr %i.k, align 8, !dbg !6546, !alias.scope !6519
  %.pre.i = load i64, ptr %i.g, align 8, !dbg !6547, !alias.scope !6517
  br label %_RNvMs0_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutableNtB5_13MutableBitmap4push.exit.i, !dbg !6548

_RNvMs0_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutableNtB5_13MutableBitmap4push.exit.i: ; preds = %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechE8push_mutCskY9G75ZWc4U_11polars_expr.exit.i.i, %bb.c
  %i.r = phi i64 [ %.pre.i, %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechE8push_mutCskY9G75ZWc4U_11polars_expr.exit.i.i ], [ %i.h, %bb.c ], !dbg !6547
  %i.s = phi i64 [ %i.q, %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechE8push_mutCskY9G75ZWc4U_11polars_expr.exit.i.i ], [ %i.l, %bb.c ], !dbg !6549 ; 2 uses
  %.not.i.i = icmp ne i64 %i.s, 0, !dbg !6550
  tail call void @llvm.assume(i1 %.not.i.i), !dbg !6550
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 80, !dbg !6551
  %i.u = load ptr, ptr %i.t, align 8, !dbg !6551, !alias.scope !6517, !nonnull !2226, !noundef !2226
  %i.v = getelementptr i8, ptr %i.u, i64 %i.s, !dbg !6552
  %i.w = getelementptr i8, ptr %i.v, i64 -1, !dbg !6552 ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.w) ], !dbg !6553
  %i.x = load i8, ptr %i.w, align 1, !dbg !6554, !noalias !6518, !noundef !2226
  %i.y = trunc i64 %i.r to i8, !dbg !6555
  %i.z = and i8 %i.y, 7, !dbg !6555
  %i.aa = shl nuw i8 1, %i.z, !dbg !6555
  %i.ab = or i8 %i.x, %i.aa, !dbg !6556
  store i8 %i.ab, ptr %i.w, align 1, !dbg !6557, !noalias !6518
  %i.ac = load i64, ptr %i.g, align 8, !dbg !6558, !alias.scope !6517, !noundef !2226
  %i.ad = add i64 %i.ac, 1, !dbg !6558
  store i64 %i.ad, ptr %i.g, align 8, !dbg !6558, !alias.scope !6517
  br label %bb.f, !dbg !6559

bb.f:                                             ; preds = %_RNvMs0_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutableNtB5_13MutableBitmap4push.exit.i, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !6560, !noalias !6520
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !dbg !6560
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6521), !dbg !6561
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6522), !dbg !6561
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !6562, !noalias !6520
  %i.ae = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !6562
  %.val.i.i = load ptr, ptr %i.ae, align 8, !dbg !6562, !alias.scope !6522, !noalias !6520, !nonnull !2226, !noundef !2226
  %i.af = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !6562
  %.val1.i.i = load i64, ptr %i.af, align 8, !dbg !6562, !alias.scope !6522, !noalias !6520, !noundef !2226 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 144, !dbg !6563 ; 2 uses
  %i.ah = load i64, ptr %i.ag, align 8, !dbg !6563, !alias.scope !6523, !noundef !2226
  %i.ai = add i64 %i.ah, %.val1.i.i, !dbg !6563
  store i64 %i.ai, ptr %i.ag, align 8, !dbg !6563, !alias.scope !6523
  invoke void @_RNvMs2_NtNtNtCs8774dFTUdNv_12polars_arrow5array7binview7mutableINtB5_22MutableBinaryViewArrayShE22push_value_into_bufferCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull sret([16 x i8]) align 4 captures(address) dereferenceable(16) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(160) %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.val.i.i, i64 noundef %.val1.i.i)
          to label %bb.h unwind label %bb.g, !dbg !6564, !noalias !6524

bb.g:                                             ; preds = %bb.i, %bb.f
  %i.aj = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VechEECskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b) #52
          to label %.body.thread.i unwind label %bb.m, !dbg !6565, !noalias !6518

bb.h:                                             ; preds = %bb.f
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !6566 ; 2 uses
  %i.al = load i64, ptr %i.ak, align 8, !dbg !6566, !alias.scope !6525, !noundef !2226 ; 3 uses
  %i.am = load i64, ptr %0, align 8, !dbg !6567, !range !2408, !alias.scope !6525, !noundef !2226
  %i.an = icmp eq i64 %i.al, %i.am, !dbg !6568
  br i1 %i.an, label %bb.i, label %bb.j, !dbg !6568

bb.i:                                             ; preds = %bb.h
  invoke void @_RNvMs3_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecNtNtNtNtCs8774dFTUdNv_12polars_arrow5array7binview4view4ViewE8grow_oneBU_(ptr noalias noundef nonnull align 8 dereferenceable(160) %0)
          to label %bb.j unwind label %bb.g, !dbg !6569, !noalias !6524

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !6570
  %i.ap = load ptr, ptr %i.ao, align 8, !dbg !6570, !alias.scope !6525, !nonnull !2226, !noundef !2226
  %i.aq = getelementptr inbounds nuw [16 x i8], ptr %i.ap, i64 %i.al, !dbg !6571
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.aq, ptr noundef nonnull readonly align 4 dereferenceable(16) %i.a, i64 16, i1 false), !dbg !6572, !noalias !6524
  %i.ar = add i64 %i.al, 1, !dbg !6573
  store i64 %i.ar, ptr %i.ak, align 8, !dbg !6573, !alias.scope !6525
  invoke void @_RNvXso_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %_RINvMs2_NtNtNtCs8774dFTUdNv_12polars_arrow5array7binview7mutableINtB6_22MutableBinaryViewArrayShE10push_valueINtNtCsgZ49sUHp3tW_5alloc3vec3VechEECskY9G75ZWc4U_11polars_expr.exit unwind label %bb.k, !dbg !6574, !noalias !6518

bb.k:                                             ; preds = %bb.j
  %i.as = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %.body.thread.i unwind label %bb.l, !dbg !6575, !noalias !6518

bb.l:                                             ; preds = %bb.k
  %i.at = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #53, !dbg !6574, !noalias !6518
  unreachable, !dbg !6574

bb.m:                                             ; preds = %bb.g
  %i.au = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #53, !dbg !6576, !noalias !6518
  unreachable, !dbg !6576

.body.thread.i:                                   ; preds = %bb.n, %bb.k, %bb.g
  %eh.lpad-body5.i = phi { ptr, i32 } [ %i.as, %bb.k ], [ %i.av, %bb.n ], [ %i.aj, %bb.g ]
  resume { ptr, i32 } %eh.lpad-body5.i, !dbg !6577

bb.n:                                             ; preds = %bb.e
  %i.av = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VechEECskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c) #52
          to label %.body.thread.i unwind label %bb.o, !dbg !6578

bb.o:                                             ; preds = %bb.n
  %i.aw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #53, !dbg !6577
  unreachable, !dbg !6577

_RINvMs2_NtNtNtCs8774dFTUdNv_12polars_arrow5array7binview7mutableINtB6_22MutableBinaryViewArrayShE10push_valueINtNtCsgZ49sUHp3tW_5alloc3vec3VechEECskY9G75ZWc4U_11polars_expr.exit: ; preds = %bb.j
  call void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b), !dbg !6579, !noalias !6518
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !6580, !noalias !6520
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !6581, !noalias !6520
  br label %bb.r, !dbg !6535

bb.p:                                             ; preds = %bb.a
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !6582 ; 2 uses
  %i.ay = load i64, ptr %i.ax, align 8, !dbg !6582, !alias.scope !6528, !noundef !2226 ; 3 uses
  %i.az = load i64, ptr %0, align 8, !dbg !6583, !range !2408, !alias.scope !6528, !noundef !2226
  %i.ba = icmp eq i64 %i.ay, %i.az, !dbg !6584
  br i1 %i.ba, label %bb.q, label %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecNtNtNtNtCs8774dFTUdNv_12polars_arrow5array7binview4view4ViewE8push_mutCskY9G75ZWc4U_11polars_expr.exit, !dbg !6584

bb.q:                                             ; preds = %bb.p
  tail call void @_RNvMs3_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecNtNtNtNtCs8774dFTUdNv_12polars_arrow5array7binview4view4ViewE8grow_oneBU_(ptr noalias noundef nonnull align 8 dereferenceable(24) %0), !dbg !6585, !noalias !6529
  br label %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecNtNtNtNtCs8774dFTUdNv_12polars_arrow5array7binview4view4ViewE8push_mutCskY9G75ZWc4U_11polars_expr.exit, !dbg !6585

_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecNtNtNtNtCs8774dFTUdNv_12polars_arrow5array7binview4view4ViewE8push_mutCskY9G75ZWc4U_11polars_expr.exit: ; preds = %bb.p, %bb.q
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !6586
  %i.bc = load ptr, ptr %i.bb, align 8, !dbg !6586, !alias.scope !6528, !nonnull !2226, !noundef !2226
  %i.bd = getelementptr inbounds nuw [16 x i8], ptr %i.bc, i64 %i.ay, !dbg !6587
  %i.be = add i64 %i.ay, 1, !dbg !6588
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.bd, i8 0, i64 16, i1 false), !dbg !6589
  store i64 %i.be, ptr %i.ax, align 8, !dbg !6588, !alias.scope !6528
end_hunk_0
begin_hunk_1_@_RNvXs1_NtNtCskY9G75ZWc4U_11polars_expr11expressions11aggregationNtB5_15AggMinMaxByExprNtB7_12PhysicalExpr23evaluate_on_groups_impl:bb.a
          cleanup
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEECskY9G75ZWc4U_11polars_expr.exit

bb.aj:                                            ; preds = %bb.af
  %i.et = load i64, ptr %i.w, align 8, !dbg !115478, !range !2705, !noundef !2226
  %.not123 = icmp eq i64 %i.et, 18, !dbg !115478
  br i1 %.not123, label %bb.al, label %bb.ak, !dbg !115479

bb.ak:                                            ; preds = %bb.aj
  %i.eu = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !115480
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(72) %i.eu, ptr noundef nonnull align 8 dereferenceable(72) %i.w, i64 72, i1 false), !dbg !115481
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !dbg !115482
  store i128 4, ptr %0, align 16, !dbg !115480
  br label %bb.br, !dbg !115483

bb.al:                                            ; preds = %bb.aj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !dbg !115482
  %i.ev = load i64, ptr %i.z, align 8, !dbg !115484, !range !2546, !noundef !2226
  %.not124 = icmp eq i64 %i.ev, -9223372036854775807, !dbg !115484 ; 5 uses
  %i.ew = load ptr, ptr %i.ek, align 8, !dbg !115485, !nonnull !2226, !align !2450 ; 5 uses
  %.sroa.083.0 = select i1 %.not124, ptr %i.ew, ptr %i.z, !dbg !115485
  %i.ex = load i64, ptr %.sroa.083.0, align 8, !dbg !115486, !range !2389, !noundef !2226
  %i.ey = icmp eq i64 %i.ex, -9223372036854775808, !dbg !115486
  br i1 %i.ey, label %bb.am, label %bb.bv, !dbg !115487

bb.am:                                            ; preds = %bb.al
  %.sroa.gep213 = getelementptr inbounds nuw i8, ptr %i.ew, i64 8, !dbg !115488
  %.sroa.083.0.sroa.sel215 = select i1 %.not124, ptr %.sroa.gep213, ptr %i.ek, !dbg !115488
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !dbg !115489
  %i.ez = load i8, ptr %i.aa, align 16, !dbg !115490, !range !2545, !noundef !2226
  %.not125 = icmp eq i8 %i.ez, 31, !dbg !115490
  br i1 %.not125, label %bb.ao, label %bb.an, !dbg !115491

bb.an:                                            ; preds = %bb.am
  %i.fa = invoke noundef nonnull align 8 ptr @_RNvMNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6scalarNtB2_12ScalarColumn22as_materialized_series(ptr noundef nonnull align 16 %i.aa)
          to label %bb.ap unwind label %bb.ai, !dbg !115492

bb.ao:                                            ; preds = %bb.am
  %i.fb = getelementptr inbounds nuw i8, ptr %i.aa, i64 8, !dbg !115493
  br label %bb.ap, !dbg !115494

bb.ap:                                            ; preds = %bb.an, %bb.ao
  %.sroa.027.0 = phi ptr [ %i.fb, %bb.ao ], [ %i.fa, %bb.an ], !dbg !115495
  invoke void @_RNvMs1_NtCs1LHh8CLbVkQ_11polars_core6seriesNtB5_6Series16to_physical_repr(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.v, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %.sroa.027.0)
          to label %bb.aq unwind label %bb.ai, !dbg !115496

bb.aq:                                            ; preds = %bb.ap
  %i.fc = load ptr, ptr %i.v, align 8, !dbg !115497, !noundef !2226
  %.not126 = icmp eq ptr %i.fc, null, !dbg !115497 ; 2 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %i.v, i64 8, !dbg !115498 ; 4 uses
  %i.fe = load ptr, ptr %i.fd, align 8, !dbg !115498, !nonnull !2226, !align !2450 ; 2 uses
  %.sroa.088.0 = select i1 %.not126, ptr %i.fe, ptr %i.v, !dbg !115498
  %i.ff = load ptr, ptr %.sroa.088.0, align 8, !dbg !115499, !nonnull !2226, !noundef !2226
  %.sroa.gep216 = getelementptr inbounds nuw i8, ptr %i.fe, i64 8, !dbg !115499
  %.sroa.088.0.sroa.sel = select i1 %.not126, ptr %.sroa.gep216, ptr %i.fd, !dbg !115499
  %i.fg = load ptr, ptr %.sroa.088.0.sroa.sel, align 8, !dbg !115499, !nonnull !2226, !align !2450, !noundef !2226 ; 2 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fg, i64 16, !dbg !115500
  %i.fi = load i64, ptr %i.fh, align 8, !dbg !115500, !range !2567, !invariant.load !2226
  %i.fj = add nsw i64 %i.fi, -1, !dbg !115500
  %i.fk = and i64 %i.fj, -16, !dbg !115500
  %i.fl = getelementptr inbounds nuw i8, ptr %i.ff, i64 %i.fk, !dbg !115500
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fl, i64 16, !dbg !115500
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fg, i64 304, !dbg !115204
  %i.fo = load ptr, ptr %i.fn, align 8, !dbg !115204, !invariant.load !2226, !nonnull !2226
  %i.fp = invoke noundef nonnull align 16 ptr %i.fo(ptr noundef nonnull %i.fm)
          to label %bb.av unwind label %bb.au, !dbg !115501 ; 2 uses

bb.ar:                                            ; preds = %bb.bi, %bb.au
  %.sroa.065.6 = phi i8 [ %.sroa.065.7, %bb.au ], [ %.sroa.065.8, %bb.bi ], !dbg !115446 ; 3 uses
  %.pn = phi { ptr, i32 } [ %i.fu, %bb.au ], [ %i.hp, %bb.bi ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !115215), !dbg !115502
  %i.fq = load ptr, ptr %i.v, align 8, !dbg !115503, !alias.scope !115215, !noundef !2226 ; 2 uses
  %i.fr = icmp eq ptr %i.fq, null, !dbg !115503
  br i1 %i.fr, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEECskY9G75ZWc4U_11polars_expr.exit, label %bb.as, !dbg !115503

bb.as:                                            ; preds = %bb.ar
  %i.fs = atomicrmw add ptr %i.fq, i64 -1 release, align 8, !dbg !115504, !noalias !115216
  %i.ft = icmp eq i64 %i.fs, 1, !dbg !115505
  br i1 %i.ft, label %bb.at, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEECskY9G75ZWc4U_11polars_expr.exit, !dbg !115505

bb.at:                                            ; preds = %bb.as
  fence acquire, !dbg !115506
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcDNtNtNtCs1LHh8CLbVkQ_11polars_core6series12series_trait11SeriesTraitEL_E9drop_slowBN_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.v) #51
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEECskY9G75ZWc4U_11polars_expr.exit unwind label %bb.bu, !dbg !115507

bb.au:                                            ; preds = %bb.bn, %bb.bg, %bb.ba, %bb.ay, %bb.aq
  %.sroa.065.7 = phi i8 [ %.sroa.065.9, %bb.bn ], [ 1, %bb.bg ], [ 1, %bb.ba ], [ 1, %bb.ay ], [ 1, %bb.aq ], !dbg !115444
  %i.fu = landingpad { ptr, i32 }
          cleanup
  br label %bb.ar

bb.av:                                            ; preds = %bb.aq
  %i.fv = load i8, ptr %i.fp, align 16, !dbg !115508, !range !2619, !noundef !2226
  switch i8 %i.fv, label %bb.bb [
    i8 11, label %bb.ax
    i8 12, label %bb.ax
    i8 13, label %bb.ax
    i8 30, label %bb.aw
    i8 1, label %bb.ax
    i8 2, label %bb.ax
    i8 3, label %bb.ax
    i8 4, label %bb.ax
    i8 5, label %bb.ax
    i8 6, label %bb.ax
    i8 7, label %bb.ax
    i8 8, label %bb.ax
    i8 9, label %bb.ax
    i8 10, label %bb.ax
  ], !dbg !115509

bb.aw:                                            ; preds = %bb.av
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fp, i64 16, !dbg !115508
  %i.fx = load i128, ptr %i.fw, align 16, !dbg !115508, !range !2618, !noundef !2226
  %switch149 = icmp samesign ult i128 %i.fx, 2, !dbg !115510
  br i1 %switch149, label %bb.ax, label %bb.bb, !dbg !115510

bb.ax:                                            ; preds = %bb.aw, %bb.av, %bb.av, %bb.av, %bb.av, %bb.av, %bb.av, %bb.av, %bb.av, %bb.av, %bb.av, %bb.av, %bb.av, %bb.av
  %i.fy = load i8, ptr %i.aa, align 16, !dbg !115511, !range !2545, !noundef !2226 ; 2 uses
  %.not127 = icmp eq i8 %i.fy, 31, !dbg !115511
  br i1 %.not127, label %bb.ay, label %bb.az, !dbg !115512

bb.ay:                                            ; preds = %bb.ax
  %i.fz = getelementptr inbounds nuw i8, ptr %i.aa, i64 8, !dbg !115513
  %i.ga = load ptr, ptr %i.fz, align 8, !dbg !115513, !nonnull !2226, !noundef !2226
  %i.gb = getelementptr inbounds nuw i8, ptr %i.aa, i64 16, !dbg !115513
  %i.gc = load ptr, ptr %i.gb, align 16, !dbg !115513, !nonnull !2226, !align !2450, !noundef !2226 ; 2 uses
  %i.gd = getelementptr inbounds nuw i8, ptr %i.gc, i64 16, !dbg !115514
  %i.ge = load i64, ptr %i.gd, align 8, !dbg !115514, !range !2567, !invariant.load !2226
  %i.gf = add nsw i64 %i.ge, -1, !dbg !115514
  %i.gg = and i64 %i.gf, -16, !dbg !115514
  %i.gh = getelementptr inbounds nuw i8, ptr %i.ga, i64 %i.gg, !dbg !115514
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gh, i64 16, !dbg !115514
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gc, i64 304, !dbg !115515
  %i.gk = load ptr, ptr %i.gj, align 8, !dbg !115515, !invariant.load !2226, !nonnull !2226
  %i.gl = invoke noundef nonnull align 16 ptr %i.gk(ptr noundef nonnull %i.gi)
          to label %thread-pre-split unwind label %bb.au, !dbg !115516

thread-pre-split:                                 ; preds = %bb.ay
  %.pr = load i8, ptr %i.gl, align 16, !dbg !115517
  br label %bb.az, !dbg !115517

bb.az:                                            ; preds = %thread-pre-split, %bb.ax
  %i.gm = phi i8 [ %.pr, %thread-pre-split ], [ %i.fy, %bb.ax ], !dbg !115517
  %i.gn = icmp eq i8 %i.gm, 26, !dbg !115518
  br i1 %i.gn, label %bb.bb, label %bb.ba, !dbg !115518

bb.ba:                                            ; preds = %bb.az
  %.sroa.083.0.sroa.sel212.v.sroa.sel.v.sroa.sel.v = select i1 %.not124, ptr %i.ew, ptr %i.z, !dbg !115519
  %.sroa.083.0.sroa.sel212.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %.sroa.083.0.sroa.sel212.v.sroa.sel.v.sroa.sel.v, i64 32, !dbg !115519
  %i.go = load i8, ptr %.sroa.083.0.sroa.sel212.v.sroa.sel.v.sroa.sel, align 8, !dbg !115519, !range !2229, !noundef !2226
  %.sroa.083.0.sroa.sel209.v.sroa.sel.v.sroa.sel.v = select i1 %.not124, ptr %i.ew, ptr %i.z, !dbg !115520
  %.sroa.083.0.sroa.sel209.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %.sroa.083.0.sroa.sel209.v.sroa.sel.v.sroa.sel.v, i64 33, !dbg !115520
  %i.gp = load i8, ptr %.sroa.083.0.sroa.sel209.v.sroa.sel.v.sroa.sel, align 1, !dbg !115520, !range !2229, !noundef !2226
  %i.gq = load ptr, ptr %i.v, align 8, !dbg !115521, !noundef !2226
  %.not128 = icmp eq ptr %i.gq, null, !dbg !115521 ; 2 uses
  %i.gr = load ptr, ptr %i.fd, align 8, !dbg !115522, !nonnull !2226, !align !2450 ; 2 uses
  %.sroa.089.0 = select i1 %.not128, ptr %i.gr, ptr %i.v, !dbg !115522
  %i.gs = load ptr, ptr %.sroa.089.0, align 8, !dbg !115523, !nonnull !2226, !noundef !2226
  %.sroa.gep218 = getelementptr inbounds nuw i8, ptr %i.gr, i64 8, !dbg !115523
  %.sroa.089.0.sroa.sel = select i1 %.not128, ptr %.sroa.gep218, ptr %i.fd, !dbg !115523
  %i.gt = load ptr, ptr %.sroa.089.0.sroa.sel, align 8, !dbg !115523, !nonnull !2226, !align !2450, !noundef !2226 ; 2 uses
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gt, i64 16, !dbg !115524
  %i.gv = load i64, ptr %i.gu, align 8, !dbg !115524, !range !2567, !invariant.load !2226
  %i.gw = add nsw i64 %i.gv, -1, !dbg !115524
  %i.gx = and i64 %i.gw, -16, !dbg !115524
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gs, i64 %i.gx, !dbg !115524
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gy, i64 16, !dbg !115524
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gt, i64 312, !dbg !115233
  %i.hb = load ptr, ptr %i.ha, align 8, !dbg !115233, !invariant.load !2226, !nonnull !2226
  %i.hc = invoke noundef nonnull align 8 ptr %i.hb(ptr noundef nonnull %i.gz)
          to label %bb.be unwind label %bb.au, !dbg !115525

bb.bb:                                            ; preds = %bb.aw, %bb.be, %bb.bf, %bb.az, %bb.av
  call void @llvm.experimental.noalias.scope.decl(metadata !115243), !dbg !115502
  %i.hd = load ptr, ptr %i.v, align 8, !dbg !115526, !alias.scope !115243, !noundef !2226 ; 2 uses
  %i.he = icmp eq ptr %i.hd, null, !dbg !115526
  br i1 %i.he, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEECskY9G75ZWc4U_11polars_expr.exit154, label %bb.bc, !dbg !115526

bb.bc:                                            ; preds = %bb.bb
  %i.hf = atomicrmw add ptr %i.hd, i64 -1 release, align 8, !dbg !115527, !noalias !115244
  %i.hg = icmp eq i64 %i.hf, 1, !dbg !115528
  br i1 %i.hg, label %bb.bd, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEECskY9G75ZWc4U_11polars_expr.exit154, !dbg !115528

bb.bd:                                            ; preds = %bb.bc
  fence acquire, !dbg !115529
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcDNtNtNtCs1LHh8CLbVkQ_11polars_core6series12series_trait11SeriesTraitEL_E9drop_slowBN_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.v) #51
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEECskY9G75ZWc4U_11polars_expr.exit154 unwind label %bb.ai, !dbg !115530

bb.be:                                            ; preds = %bb.ba
  %.sroa.083.0.sroa.sel.v.sroa.sel.v.sroa.sel.v = select i1 %.not124, ptr %i.ew, ptr %i.z, !dbg !115531
  %.sroa.083.0.sroa.sel.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %.sroa.083.0.sroa.sel.v.sroa.sel.v.sroa.sel.v, i64 24, !dbg !115531
  %i.hh = load i64, ptr %.sroa.083.0.sroa.sel.v.sroa.sel.v.sroa.sel, align 8, !dbg !115531, !noundef !2226 ; 2 uses
  %i.hi = icmp ult i64 %i.hh, 1152921504606846976, !dbg !115532
  call void @llvm.assume(i1 %i.hi), !dbg !115533
  %switch = icmp samesign ult i64 %i.hh, 2, !dbg !115534
  br i1 %switch, label %bb.bb, label %bb.bf, !dbg !115534

bb.bf:                                            ; preds = %bb.be
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hc, i64 16, !dbg !115535
  %i.hk = load i64, ptr %i.hj, align 8, !dbg !115535, !noundef !2226
  %.not = icmp ne i8 %i.go, 0, !dbg !115536
  %.not.a = icmp ne i8 %i.gp, 0, !dbg !115536
  %brmerge.not129 = and i1 %.not, %.not.a, !dbg !115536
  %i.hl = icmp eq i64 %i.hk, 1
  %or.cond = and i1 %brmerge.not129, %i.hl, !dbg !115536
  br i1 %or.cond, label %bb.bg, label %bb.bb, !dbg !115536

bb.bg:                                            ; preds = %bb.bf
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !dbg !115537
  %i.hm = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !115538
  %i.hn = load i8, ptr %i.hm, align 8, !dbg !115538, !range !2229, !noundef !2226
  %i.ho = trunc nuw i8 %i.hn to i1, !dbg !115538
  invoke void @_RNvNtNtNtCs1LHh8CLbVkQ_11polars_core5frame8group_by12aggregations25rolling_numeric_minmax_by(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(address) dereferenceable(56) %i.u, ptr noundef nonnull align 16 %i.aa, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %.sroa.083.0.sroa.sel215, i1 noundef zeroext %i.ho)
          to label %bb.bh unwind label %bb.au, !dbg !115539

bb.bh:                                            ; preds = %bb.bg
  invoke void @_RNvMNtNtCs1LHh8CLbVkQ_11polars_core5frame6columnNtB2_6Column4take(ptr noalias noundef nonnull sret([160 x i8]) align 16 captures(none) dereferenceable(160) %i.m, ptr noundef nonnull align 16 %i.ae, ptr noundef nonnull align 8 %i.u)
          to label %bb.bj unwind label %bb.bi, !dbg !115540

bb.bi:                                            ; preds = %bb.bl, %bb.bh
  %.sroa.065.8 = phi i8 [ 0, %bb.bl ], [ 1, %bb.bh ], !dbg !115446
  %i.hp = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtBL_9datatypes10UInt32TypeEECskY9G75ZWc4U_11polars_expr(ptr noalias noundef align 8 dereferenceable(56) %i.u) #52
          to label %bb.ar unwind label %bb.bu, !dbg !115541

bb.bj:                                            ; preds = %bb.bh
  %i.hq = load i8, ptr %i.m, align 16, !dbg !115542, !range !2571, !noundef !2226 ; 2 uses
  %i.hr = icmp eq i8 %i.hq, 32, !dbg !115542
  br i1 %i.hr, label %bb.bk, label %bb.bl, !dbg !115543

bb.bk:                                            ; preds = %bb.bj
  %i.hs = getelementptr inbounds nuw i8, ptr %i.m, i64 8, !dbg !115544
  %i.ht = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !115545
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(72) %i.ht, ptr noundef nonnull align 8 dereferenceable(72) %i.hs, i64 72, i1 false), !dbg !115546
  store i128 4, ptr %0, align 16, !dbg !115545
  br label %bb.bn, !dbg !115547

bb.bl:                                            ; preds = %bb.bj
  %.sroa.591.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 1, !dbg !115548
  %.sroa.692.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 80, !dbg !115548
  %.sroa.834.0..sroa_idx35 = getelementptr inbounds nuw i8, ptr %i.t, i64 80, !dbg !115252
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(80) %.sroa.834.0..sroa_idx35, ptr noundef nonnull align 16 dereferenceable(80) %.sroa.692.0..sroa_idx, i64 80, i1 false), !dbg !115548
  store i8 %i.hq, ptr %i.t, align 16, !dbg !115252
  %.sroa.631.0..sroa_idx32 = getelementptr inbounds nuw i8, ptr %i.t, i64 1, !dbg !115252
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(79) %.sroa.631.0..sroa_idx32, ptr noundef nonnull align 1 dereferenceable(79) %.sroa.591.0..sroa_idx, i64 79, i1 false), !dbg !115252
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !dbg !115549
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !dbg !115550
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.r, ptr noundef nonnull align 8 dereferenceable(24) %i.af, i64 24, i1 false), !dbg !115550
  invoke fastcc void @_RNvMNtNtCs1LHh8CLbVkQ_11polars_core5frame6columnNtB2_6Column9with_name(ptr noalias noundef align 16 captures(none) dereferenceable(160) %i.s, ptr noalias noundef align 16 captures(address) dereferenceable(160) %i.t, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.r)
          to label %bb.bm unwind label %bb.bi, !dbg !115551

bb.bm:                                            ; preds = %bb.bl
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !dbg !115552
  %.sroa.438.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !115553
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(160) %.sroa.438.0..sroa_idx, ptr noundef nonnull align 16 dereferenceable(160) %i.s, i64 160, i1 false), !dbg !115554
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !dbg !115555
  store i128 1, ptr %0, align 16, !dbg !115553
  %.sroa.539.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 176, !dbg !115553
  store i64 -9223372036854775807, ptr %.sroa.539.0..sroa_idx, align 16, !dbg !115553
  %.sroa.539.sroa.4.0..sroa.539.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 184, !dbg !115553
  store ptr %3, ptr %.sroa.539.sroa.4.0..sroa.539.0..sroa_idx.sroa_idx, align 8, !dbg !115553
  %.sroa.640.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 256, !dbg !115553
  store i8 1, ptr %.sroa.640.0..sroa_idx, align 16, !dbg !115553
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 257, !dbg !115553
  store i8 0, ptr %.sroa.7.0..sroa_idx, align 1, !dbg !115553
  br label %bb.bn, !dbg !115556

bb.bn:                                            ; preds = %bb.bm, %bb.bk
  %.sroa.065.9 = phi i8 [ 1, %bb.bk ], [ 0, %bb.bm ], !dbg !115446 ; 3 uses
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtBL_9datatypes10UInt32TypeEECskY9G75ZWc4U_11polars_expr(ptr noalias noundef align 8 dereferenceable(56) %i.u)
          to label %bb.bo unwind label %bb.au, !dbg !115541

bb.bo:                                            ; preds = %bb.bn
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !dbg !115541
  call void @llvm.experimental.noalias.scope.decl(metadata !115256), !dbg !115502
  %i.hu = load ptr, ptr %i.v, align 8, !dbg !115557, !alias.scope !115256, !noundef !2226 ; 2 uses
  %i.hv = icmp eq ptr %i.hu, null, !dbg !115557
  br i1 %i.hv, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEECskY9G75ZWc4U_11polars_expr.exit156, label %bb.bp, !dbg !115557

bb.bp:                                            ; preds = %bb.bo
  %i.hw = atomicrmw add ptr %i.hu, i64 -1 release, align 8, !dbg !115558, !noalias !115257
  %i.hx = icmp eq i64 %i.hw, 1, !dbg !115559
  br i1 %i.hx, label %bb.bq, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEECskY9G75ZWc4U_11polars_expr.exit156, !dbg !115559

bb.bq:                                            ; preds = %bb.bp
  fence acquire, !dbg !115560
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcDNtNtNtCs1LHh8CLbVkQ_11polars_core6series12series_trait11SeriesTraitEL_E9drop_slowBN_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.v) #51
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEECskY9G75ZWc4U_11polars_expr.exit156 unwind label %bb.ai, !dbg !115561

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEECskY9G75ZWc4U_11polars_expr.exit156: ; preds = %bb.bp, %bb.bo, %bb.bq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !dbg !115502
  br label %bb.br, !dbg !115483

bb.br:                                            ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEECskY9G75ZWc4U_11polars_expr.exit156, %bb.ak
  %.sroa.065.10 = phi i8 [ 1, %bb.ak ], [ %.sroa.065.9, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEECskY9G75ZWc4U_11polars_expr.exit156 ], !dbg !115444 ; 7 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !115258), !dbg !115469
  %i.hy = load i64, ptr %i.z, align 8, !dbg !115562, !range !2546, !alias.scope !115258, !noundef !2226
  %i.hz = icmp eq i64 %i.hy, -9223372036854775807, !dbg !115562
  br i1 %i.hz, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowNtNtNtNtCs1LHh8CLbVkQ_11polars_core5frame8group_by8position14GroupPositionsEECskY9G75ZWc4U_11polars_expr.exit158, label %bb.bs, !dbg !115562

bb.bs:                                            ; preds = %bb.br
  call void @llvm.experimental.noalias.scope.decl(metadata !115259), !dbg !115562
  %i.ia = getelementptr inbounds nuw i8, ptr %i.z, i64 56, !dbg !115563 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !115260), !dbg !115563
  call void @llvm.experimental.noalias.scope.decl(metadata !115261), !dbg !115564
  %i.ib = load ptr, ptr %i.ia, align 8, !dbg !115565, !alias.scope !115262, !nonnull !2226, !noundef !2226
  %i.ic = atomicrmw add ptr %i.ib, i64 -1 release, align 8, !dbg !115566, !noalias !115262
  %i.id = icmp eq i64 %i.ic, 1, !dbg !115567
  br i1 %i.id, label %bb.bt, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowNtNtNtNtCs1LHh8CLbVkQ_11polars_core5frame8group_by8position14GroupPositionsEECskY9G75ZWc4U_11polars_expr.exit158, !dbg !115567

bb.bt:                                            ; preds = %bb.bs
  fence acquire, !dbg !115568
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtNtCs1LHh8CLbVkQ_11polars_core5frame8group_by8position10GroupsTypeE9drop_slowBO_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.ia) #51
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowNtNtNtNtCs1LHh8CLbVkQ_11polars_core5frame8group_by8position14GroupPositionsEECskY9G75ZWc4U_11polars_expr.exit158 unwind label %bb.di, !dbg !115569

bb.bu:                                            ; preds = %bb.eb, %bb.at, %bb.ah, %bb.ad, %bb.ed, %bb.ec, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowNtNtNtNtCs1LHh8CLbVkQ_11polars_core5frame8group_by8position14GroupPositionsEECskY9G75ZWc4U_11polars_expr.exit, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowNtNtNtNtCs1LHh8CLbVkQ_11polars_core5frame8group_by8position14GroupPositionsEECskY9G75ZWc4U_11polars_expr.exit151, %.body169, %.body, %bb.bi
  %i.ie = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #53, !dbg !115570
  unreachable, !dbg !115570

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEECskY9G75ZWc4U_11polars_expr.exit154: ; preds = %bb.bc, %bb.bb, %bb.bd
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !dbg !115502
  br label %bb.bv, !dbg !115571

bb.bv:                                            ; preds = %bb.al, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEECskY9G75ZWc4U_11polars_expr.exit154
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !dbg !115572
  %i.if = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !115573
  %i.ig = load i8, ptr %i.if, align 8, !dbg !115573, !range !2229, !noundef !2226
  %i.ih = trunc nuw i8 %i.ig to i1, !dbg !115573
  %i.ii = load i64, ptr %i.z, align 8, !dbg !115574, !range !2546, !noundef !2226
  %.not131 = icmp eq i64 %i.ii, -9223372036854775807, !dbg !115574
  %i.ij = load ptr, ptr %i.ek, align 8, !dbg !115575, !nonnull !2226, !align !2450
  %.sroa.093.0 = select i1 %.not131, ptr %i.ij, ptr %i.z, !dbg !115575 ; 2 uses
  br i1 %i.ih, label %bb.bx, label %bb.bw, !dbg !115573

bb.bw:                                            ; preds = %bb.bv
  invoke void @_RNvMNtNtCs1LHh8CLbVkQ_11polars_core5frame6columnNtB2_6Column11agg_arg_min(ptr noalias noundef nonnull sret([160 x i8]) align 16 captures(address) dereferenceable(160) %i.q, ptr noundef nonnull align 16 %i.aa, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %.sroa.093.0)
          to label %bb.by unwind label %bb.ai, !dbg !115576

bb.bx:                                            ; preds = %bb.bv
  invoke void @_RNvMNtNtCs1LHh8CLbVkQ_11polars_core5frame6columnNtB2_6Column11agg_arg_max(ptr noalias noundef nonnull sret([160 x i8]) align 16 captures(address) dereferenceable(160) %i.q, ptr noundef nonnull align 16 %i.aa, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %.sroa.093.0)
          to label %bb.by unwind label %bb.ai, !dbg !115577

bb.by:                                            ; preds = %bb.bx, %bb.bw
  %i.ik = load i8, ptr %i.q, align 16, !dbg !115578, !range !2545, !noundef !2226
  %.not132 = icmp eq i8 %i.ik, 31, !dbg !115578
  br i1 %.not132, label %bb.ca, label %bb.bz, !dbg !115579

bb.bz:                                            ; preds = %bb.by
  %i.il = invoke noundef nonnull align 8 ptr @_RNvMNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6scalarNtB2_12ScalarColumn22as_materialized_series(ptr noundef nonnull align 16 %i.q)
          to label %bb.cb unwind label %bb.cc, !dbg !115580

bb.ca:                                            ; preds = %bb.by
  %i.im = getelementptr inbounds nuw i8, ptr %i.q, i64 8, !dbg !115581
  br label %bb.cb, !dbg !115582

bb.cb:                                            ; preds = %bb.bz, %bb.ca
  %.sroa.045.0 = phi ptr [ %i.im, %bb.ca ], [ %i.il, %bb.bz ], !dbg !115583 ; 2 uses
  %i.in = load ptr, ptr %.sroa.045.0, align 8, !dbg !115584, !nonnull !2226, !noundef !2226
  %i.io = getelementptr inbounds nuw i8, ptr %.sroa.045.0, i64 8, !dbg !115584
  %i.ip = load ptr, ptr %i.io, align 8, !dbg !115584, !nonnull !2226, !align !2450, !noundef !2226 ; 2 uses
  %i.iq = getelementptr inbounds nuw i8, ptr %i.ip, i64 16, !dbg !115585
  %i.ir = load i64, ptr %i.iq, align 8, !dbg !115585, !range !2567, !invariant.load !2226
  %i.is = add nsw i64 %i.ir, -1, !dbg !115585
  %i.it = and i64 %i.is, -16, !dbg !115585
  %i.iu = getelementptr inbounds nuw i8, ptr %i.in, i64 %i.it, !dbg !115585
  %i.iv = getelementptr inbounds nuw i8, ptr %i.iu, i64 16, !dbg !115585
  %i.iw = invoke noundef nonnull align 8 ptr @_RNvXs5_NtCs1LHh8CLbVkQ_11polars_core6seriesDNtNtB5_12series_trait11SeriesTraitEL_INtNtCscgRAwXFJnXP_4core7convert5AsRefINtNtB7_13chunked_array12ChunkedArrayNtNtB7_9datatypes10UInt32TypeEE6as_refCskY9G75ZWc4U_11polars_expr(ptr noundef nonnull %i.iv, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(896) %i.ip)
          to label %bb.cd unwind label %bb.cc, !dbg !115586 ; 3 uses

.body:                                            ; preds = %bb.co, %bb.cr, %bb.cs, %bb.cg, %bb.cj, %bb.ck, %bb.cc, %.body169
  %.sroa.065.11 = phi i8 [ %.sroa.065.13.lpad-body, %.body169 ], [ 1, %bb.cg ], [ %.sroa.065.12, %bb.cc ], [ 1, %bb.ck ], [ 1, %bb.cj ], [ 1, %bb.cs ], [ 1, %bb.cr ], [ 1, %bb.co ], !dbg !115587
  %.pn134 = phi { ptr, i32 } [ %eh.lpad-body170, %.body169 ], [ %i.jm, %bb.cg ], [ %i.ix, %bb.cc ], [ %i.jp, %bb.ck ], [ %i.jp, %bb.cj ], [ %i.ka, %bb.cs ], [ %i.ka, %bb.cr ], [ %i.jx, %bb.co ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnECskY9G75ZWc4U_11polars_expr(ptr noalias noundef align 16 dereferenceable(160) %i.q) #52
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEECskY9G75ZWc4U_11polars_expr.exit unwind label %bb.bu, !dbg !115588

bb.cc:                                            ; preds = %bb.cq, %bb.ci, %bb.db, %bb.cb, %bb.bz
  %.sroa.065.12 = phi i8 [ 0, %bb.db ], [ 1, %bb.ci ], [ 1, %bb.cq ], [ 1, %bb.cb ], [ 1, %bb.bz ], !dbg !115446
  %i.ix = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.cd:                                            ; preds = %bb.cb
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !dbg !115589
  %i.iy = load i64, ptr %i.ad, align 8, !dbg !115590, !range !2546, !noundef !2226
  %.not133 = icmp eq i64 %i.iy, -9223372036854775807, !dbg !115590 ; 2 uses
  %i.iz = load ptr, ptr %i.eh, align 8, !dbg !115591, !nonnull !2226, !align !2450 ; 2 uses
  %.sroa.095.0 = select i1 %.not133, ptr %i.iz, ptr %i.ad, !dbg !115591 ; 2 uses
  %i.ja = load i64, ptr %.sroa.095.0, align 8, !dbg !115592, !range !2389, !noundef !2226
  %i.jb = icmp eq i64 %i.ja, -9223372036854775808, !dbg !115592
  %i.jc = getelementptr inbounds nuw i8, ptr %i.iw, i64 8, !dbg !115593
  %i.jd = load ptr, ptr %i.jc, align 8, !dbg !115593, !nonnull !2226, !noundef !2226 ; 4 uses
  %i.je = getelementptr inbounds nuw i8, ptr %i.iw, i64 16, !dbg !115594
  %i.jf = load i64, ptr %i.je, align 8, !dbg !115594, !noundef !2226 ; 2 uses
  %i.jg = getelementptr inbounds nuw i8, ptr %i.iw, i64 32, !dbg !115595
  %i.jh = load i64, ptr %i.jg, align 8, !dbg !115595, !noundef !2226 ; 2 uses
  br i1 %i.jb, label %bb.ce, label %bb.cm, !dbg !115596

bb.ce:                                            ; preds = %bb.cd
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !dbg !115597
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !dbg !115597, !noalias !115291
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 64, !dbg !115598
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !dbg !115598, !noalias !115291
end_hunk_1
begin_hunk_2_@_RNvXs1_NtNtNtCscgRAwXFJnXP_4core3ops8function5implsQNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops5arity28broadcast_binary_elementwiseNtNtBZ_9datatypes10Int128TypeNtB2l_10UInt32TypeB2j_NCINvNtNtCskY9G75ZWc4U_11polars_expr8dispatch3pow21pow_on_chunked_arraysB2j_B2M_Es_0E0INtB7_5FnMutTINtNtBb_6option6OptionmEEE8call_mutB3h_:bb.a
  br i1 %i.f, label %_RNvXs2q_NtCslmKYcnV0hjo_10num_traits3pownINtB6_3PowmE3pow.exit.i.i, label %.preheader21.i.i.i.i.preheader, !dbg !115779

.preheader21.i.i.i.i.preheader:                   ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %.val, i64 16, !dbg !115777
  %i.h = load i128, ptr %i.g, align 16, !dbg !115780, !alias.scope !115772, !noalias !115771, !noundef !2226
  br label %.preheader21.i.i.i.i, !dbg !115781

.preheader21.i.i.i.i:                             ; preds = %.preheader21.i.i.i.i.preheader, %bb.d
  %.sroa.015.1.i.i.i.i = phi i128 [ %.sroa.015.2.i.i.i.i, %bb.d ], [ 1, %.preheader21.i.i.i.i.preheader ], !dbg !115782 ; 2 uses
  %.sroa.07.0.i.i.i.i = phi i32 [ %i.l, %bb.d ], [ %3, %.preheader21.i.i.i.i.preheader ] ; 3 uses
  %.sroa.0.0.i.i.i.i = phi i128 [ %i.m, %bb.d ], [ %i.h, %.preheader21.i.i.i.i.preheader ] ; 3 uses
  %i.i = and i32 %.sroa.07.0.i.i.i.i, 1, !dbg !115781
  %.not.i.i.i.i = icmp eq i32 %i.i, 0, !dbg !115781
  br i1 %.not.i.i.i.i, label %bb.d, label %bb.c, !dbg !115781

bb.c:                                             ; preds = %.preheader21.i.i.i.i
  %i.j = mul i128 %.sroa.0.0.i.i.i.i, %.sroa.015.1.i.i.i.i, !dbg !115783 ; 2 uses
  %i.k = icmp eq i32 %.sroa.07.0.i.i.i.i, 1, !dbg !115784
  br i1 %i.k, label %_RNvXs2q_NtCslmKYcnV0hjo_10num_traits3pownINtB6_3PowmE3pow.exit.i.i, label %bb.d, !dbg !115784

bb.d:                                             ; preds = %bb.c, %.preheader21.i.i.i.i
  %.sroa.015.2.i.i.i.i = phi i128 [ %i.j, %bb.c ], [ %.sroa.015.1.i.i.i.i, %.preheader21.i.i.i.i ], !dbg !115782
  %i.l = lshr i32 %.sroa.07.0.i.i.i.i, 1, !dbg !115785
  %i.m = mul i128 %.sroa.0.0.i.i.i.i, %.sroa.0.0.i.i.i.i, !dbg !115786
  br label %.preheader21.i.i.i.i, !dbg !115787

_RNvXs2q_NtCslmKYcnV0hjo_10num_traits3pownINtB6_3PowmE3pow.exit.i.i: ; preds = %bb.c, %bb.b
  %.sroa.015.0.i.i.i.i = phi i128 [ 1, %bb.b ], [ %i.j, %bb.c ], !dbg !115788
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !115789
  store i128 %.sroa.015.0.i.i.i.i, ptr %i.n, align 16, !dbg !115789, !alias.scope !115774
  br label %_RNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops5arity28broadcast_binary_elementwiseNtNtBa_9datatypes10Int128TypeNtB1w_10UInt32TypeB1u_NCINvNtNtCskY9G75ZWc4U_11polars_expr8dispatch3pow21pow_on_chunked_arraysB1u_B1X_Es_0E0B2s_.exit, !dbg !115790

_RNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops5arity28broadcast_binary_elementwiseNtNtBa_9datatypes10Int128TypeNtB1w_10UInt32TypeB1u_NCINvNtNtCskY9G75ZWc4U_11polars_expr8dispatch3pow21pow_on_chunked_arraysB1u_B1X_Es_0E0B2s_.exit: ; preds = %bb.a, %_RNvXs2q_NtCslmKYcnV0hjo_10num_traits3pownINtB6_3PowmE3pow.exit.i.i
  %storemerge.i.i = phi i128 [ 1, %_RNvXs2q_NtCslmKYcnV0hjo_10num_traits3pownINtB6_3PowmE3pow.exit.i.i ], [ 0, %bb.a ], !dbg !115791
  store i128 %storemerge.i.i, ptr %0, align 16, !dbg !115791, !alias.scope !115774
  ret void, !dbg !115792
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(read, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable
define hidden void @_RNvXs1_NtNtNtCscgRAwXFJnXP_4core3ops8function5implsQNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops5arity28broadcast_binary_elementwiseNtNtBZ_9datatypes10Int128TypeNtB2l_10UInt32TypeB2j_NCINvNtNtCskY9G75ZWc4U_11polars_expr8dispatch3pow21pow_on_chunked_arraysB2j_B2M_Es_0Es_0INtB7_5FnMutTINtNtBb_6option6OptionnEEE8call_mutB3h_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 16 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %1, i128 noundef range(i128 0, 2) %2, i128 %3) unnamed_addr #13 personality ptr @rust_eh_personality !dbg !115793 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !dbg !115812, !nonnull !2226, !align !2450, !noundef !2226
  %i.b = getelementptr i8, ptr %i.a, i64 8, !dbg !115813
  %.val = load ptr, ptr %i.b, align 8, !dbg !115813, !nonnull !2226, !align !2881, !noundef !2226 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !115809), !dbg !115813
  %i.c = load i32, ptr %.val, align 4, !dbg !115814, !range !2809, !noalias !115809, !noundef !2226
  %i.d = trunc nuw i32 %i.c to i1, !dbg !115815
  %i.e = trunc nuw i128 %2 to i1
  %or.cond = select i1 %i.d, i1 %i.e, i1 false, !dbg !115815
  br i1 %or.cond, label %bb.b, label %_RNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops5arity28broadcast_binary_elementwiseNtNtBa_9datatypes10Int128TypeNtB1w_10UInt32TypeB1u_NCINvNtNtCskY9G75ZWc4U_11polars_expr8dispatch3pow21pow_on_chunked_arraysB1u_B1X_Es_0Es_0B2s_.exit, !dbg !115815

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %.val, i64 4, !dbg !115814
  %i.g = load i32, ptr %i.f, align 4, !dbg !115816, !alias.scope !115810, !noalias !115809, !noundef !2226 ; 2 uses
  %i.h = icmp eq i32 %i.g, 0, !dbg !115817
  br i1 %i.h, label %_RNvXs2q_NtCslmKYcnV0hjo_10num_traits3pownINtB6_3PowmE3pow.exit.i.i, label %.preheader21.i.i.i.i, !dbg !115817

.preheader21.i.i.i.i:                             ; preds = %bb.b, %bb.d
  %.sroa.015.1.i.i.i.i = phi i128 [ %.sroa.015.2.i.i.i.i, %bb.d ], [ 1, %bb.b ], !dbg !115818 ; 2 uses
  %.sroa.07.0.i.i.i.i = phi i32 [ %i.l, %bb.d ], [ %i.g, %bb.b ] ; 3 uses
  %.sroa.0.0.i.i.i.i = phi i128 [ %i.m, %bb.d ], [ %3, %bb.b ] ; 3 uses
  %i.i = and i32 %.sroa.07.0.i.i.i.i, 1, !dbg !115819
  %.not.i.i.i.i = icmp eq i32 %i.i, 0, !dbg !115819
  br i1 %.not.i.i.i.i, label %bb.d, label %bb.c, !dbg !115819

bb.c:                                             ; preds = %.preheader21.i.i.i.i
  %i.j = mul i128 %.sroa.0.0.i.i.i.i, %.sroa.015.1.i.i.i.i, !dbg !115820 ; 2 uses
  %i.k = icmp eq i32 %.sroa.07.0.i.i.i.i, 1, !dbg !115821
  br i1 %i.k, label %_RNvXs2q_NtCslmKYcnV0hjo_10num_traits3pownINtB6_3PowmE3pow.exit.i.i, label %bb.d, !dbg !115821

bb.d:                                             ; preds = %bb.c, %.preheader21.i.i.i.i
  %.sroa.015.2.i.i.i.i = phi i128 [ %i.j, %bb.c ], [ %.sroa.015.1.i.i.i.i, %.preheader21.i.i.i.i ], !dbg !115818
  %i.l = lshr i32 %.sroa.07.0.i.i.i.i, 1, !dbg !115822
  %i.m = mul i128 %.sroa.0.0.i.i.i.i, %.sroa.0.0.i.i.i.i, !dbg !115823
  br label %.preheader21.i.i.i.i, !dbg !115824

_RNvXs2q_NtCslmKYcnV0hjo_10num_traits3pownINtB6_3PowmE3pow.exit.i.i: ; preds = %bb.c, %bb.b
  %.sroa.015.0.i.i.i.i = phi i128 [ 1, %bb.b ], [ %i.j, %bb.c ], !dbg !115825
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !115826
  store i128 %.sroa.015.0.i.i.i.i, ptr %i.n, align 16, !dbg !115826, !alias.scope !115811
  br label %_RNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops5arity28broadcast_binary_elementwiseNtNtBa_9datatypes10Int128TypeNtB1w_10UInt32TypeB1u_NCINvNtNtCskY9G75ZWc4U_11polars_expr8dispatch3pow21pow_on_chunked_arraysB1u_B1X_Es_0Es_0B2s_.exit, !dbg !115827

_RNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops5arity28broadcast_binary_elementwiseNtNtBa_9datatypes10Int128TypeNtB1w_10UInt32TypeB1u_NCINvNtNtCskY9G75ZWc4U_11polars_expr8dispatch3pow21pow_on_chunked_arraysB1u_B1X_Es_0Es_0B2s_.exit: ; preds = %bb.a, %_RNvXs2q_NtCslmKYcnV0hjo_10num_traits3pownINtB6_3PowmE3pow.exit.i.i
  %storemerge.i.i = phi i128 [ 1, %_RNvXs2q_NtCslmKYcnV0hjo_10num_traits3pownINtB6_3PowmE3pow.exit.i.i ], [ 0, %bb.a ], !dbg !115828
  store i128 %storemerge.i.i, ptr %0, align 16, !dbg !115828, !alias.scope !115811
  ret void, !dbg !115829
}

; Function Attrs: nonlazybind uwtable
define hidden { i32, i32 } @_RNvXs1_NtNtNtCscgRAwXFJnXP_4core3ops8function5implsQNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops5arity28broadcast_binary_elementwiseNtNtBZ_9datatypes10StringTypeB2j_NtB2l_10UInt32TypeNCNvYINtBX_12ChunkedArrayB2j_ENtNtNtNtCsePnBjWcsLF5_10polars_ops13chunked_array7strings9namespace19StringNameSpaceImpl12find_chunked0E0INtB7_5FnMutTINtNtBb_6option6OptionReEEE8call_mutCskY9G75ZWc4U_11polars_expr(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef readonly captures(address, read_provenance) %1, i64 %2) unnamed_addr #2 personality ptr @rust_eh_personality !dbg !115830 {
bb.a:
  %i.a = alloca [104 x i8], align 8               ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 5 uses
  %i.c = load ptr, ptr %0, align 8, !dbg !115855, !nonnull !2226, !align !2450, !noundef !2226
  %i.d = getelementptr i8, ptr %i.c, i64 8, !dbg !115856
  %.val = load ptr, ptr %i.d, align 8, !dbg !115856, !nonnull !2226, !align !2450, !noundef !2226 ; 2 uses
  %i.e = load ptr, ptr %.val, align 8, !dbg !115857, !noalias !115852, !noundef !2226 ; 2 uses
  %.not.i = icmp eq ptr %i.e, null, !dbg !115857
  %.not15.i.i = icmp eq ptr %1, null
  %or.cond.i = or i1 %.not15.i.i, %.not.i, !dbg !115858
  br i1 %or.cond.i, label %_RNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops5arity28broadcast_binary_elementwiseNtNtBa_9datatypes10StringTypeB1u_NtB1w_10UInt32TypeNCNvYINtB8_12ChunkedArrayB1u_ENtNtNtNtCsePnBjWcsLF5_10polars_ops13chunked_array7strings9namespace19StringNameSpaceImpl12find_chunked0E0CskY9G75ZWc4U_11polars_expr.exit, label %bb.b, !dbg !115858

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %.val, i64 8, !dbg !115859
  %i.g = load i64, ptr %i.f, align 8, !dbg !115859, !alias.scope !115853, !noalias !115852, !noundef !2226
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !115860, !noalias !115854
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !115860, !noalias !115854
  call void @_RNvMsu_NtNtCscgRAwXFJnXP_4core3str7patternNtB5_11StrSearcher3new(ptr noalias noundef nonnull sret([104 x i8]) align 8 captures(none) dereferenceable(104) %i.a, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.e, i64 noundef %i.g, ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2), !dbg !115861
  call fastcc void @_RNvXsv_NtNtCscgRAwXFJnXP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.b, ptr noalias noundef align 8 dereferenceable(104) %i.a), !dbg !115862
  %i.h = load i64, ptr %i.b, align 8, !dbg !115863, !range !2367, !noalias !115854, !noundef !2226 ; 2 uses
  %i.i = trunc nuw i64 %i.h to i1, !dbg !115864
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !115864
  %i.k = load i64, ptr %i.j, align 8, !dbg !115864, !noalias !115854
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !115865, !noalias !115854
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !115865, !noalias !115854
  %i.l = trunc i64 %i.k to i32, !dbg !115866
  %.sroa.5.2.i.i = select i1 %i.i, i32 %i.l, i32 undef, !dbg !115866
  %i.m = trunc nuw nsw i64 %i.h to i32, !dbg !115866
  br label %_RNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops5arity28broadcast_binary_elementwiseNtNtBa_9datatypes10StringTypeB1u_NtB1w_10UInt32TypeNCNvYINtB8_12ChunkedArrayB1u_ENtNtNtNtCsePnBjWcsLF5_10polars_ops13chunked_array7strings9namespace19StringNameSpaceImpl12find_chunked0E0CskY9G75ZWc4U_11polars_expr.exit, !dbg !115867

_RNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops5arity28broadcast_binary_elementwiseNtNtBa_9datatypes10StringTypeB1u_NtB1w_10UInt32TypeNCNvYINtB8_12ChunkedArrayB1u_ENtNtNtNtCsePnBjWcsLF5_10polars_ops13chunked_array7strings9namespace19StringNameSpaceImpl12find_chunked0E0CskY9G75ZWc4U_11polars_expr.exit: ; preds = %bb.a, %bb.b
  %.sroa.5.1.i.i = phi i32 [ %.sroa.5.2.i.i, %bb.b ], [ undef, %bb.a ], !dbg !115868
  %.sroa.07.1.i.i = phi i32 [ %i.m, %bb.b ], [ 0, %bb.a ], !dbg !115868
  %i.n = insertvalue { i32, i32 } poison, i32 %.sroa.07.1.i.i, 0, !dbg !115867
  %i.o = insertvalue { i32, i32 } %i.n, i32 %.sroa.5.1.i.i, 1, !dbg !115867
  ret { i32, i32 } %i.o, !dbg !115869
}

; Function Attrs: nonlazybind uwtable
define hidden { i32, i32 } @_RNvXs1_NtNtNtCscgRAwXFJnXP_4core3ops8function5implsQNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops5arity28broadcast_binary_elementwiseNtNtBZ_9datatypes10StringTypeB2j_NtB2l_10UInt32TypeNCNvYINtBX_12ChunkedArrayB2j_ENtNtNtNtCsePnBjWcsLF5_10polars_ops13chunked_array7strings9namespace19StringNameSpaceImpl12find_chunked0Es_0INtB7_5FnMutTINtNtBb_6option6OptionReEEE8call_mutCskY9G75ZWc4U_11polars_expr(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef readonly captures(address, read_provenance) %1, i64 %2) unnamed_addr #2 personality ptr @rust_eh_personality !dbg !115870 {
bb.a:
  %i.a = alloca [104 x i8], align 8               ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 5 uses
  %i.c = load ptr, ptr %0, align 8, !dbg !115895, !nonnull !2226, !align !2450, !noundef !2226
  %i.d = getelementptr i8, ptr %i.c, i64 8, !dbg !115896
  %.val = load ptr, ptr %i.d, align 8, !dbg !115896, !nonnull !2226, !align !2450, !noundef !2226 ; 2 uses
  %i.e = load ptr, ptr %.val, align 8, !dbg !115897, !noalias !115892, !noundef !2226 ; 2 uses
  %.not.i = icmp eq ptr %i.e, null, !dbg !115897
  %.not.i.i = icmp eq ptr %1, null
  %or.cond.i = or i1 %.not.i.i, %.not.i, !dbg !115898
  br i1 %or.cond.i, label %_RNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops5arity28broadcast_binary_elementwiseNtNtBa_9datatypes10StringTypeB1u_NtB1w_10UInt32TypeNCNvYINtB8_12ChunkedArrayB1u_ENtNtNtNtCsePnBjWcsLF5_10polars_ops13chunked_array7strings9namespace19StringNameSpaceImpl12find_chunked0Es_0CskY9G75ZWc4U_11polars_expr.exit, label %bb.b, !dbg !115898

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %.val, i64 8, !dbg !115899
  %i.g = load i64, ptr %i.f, align 8, !dbg !115899, !alias.scope !115893, !noalias !115892, !noundef !2226
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !115900, !noalias !115894
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !115900, !noalias !115894
  call void @_RNvMsu_NtNtCscgRAwXFJnXP_4core3str7patternNtB5_11StrSearcher3new(ptr noalias noundef nonnull sret([104 x i8]) align 8 captures(none) dereferenceable(104) %i.a, ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.e, i64 noundef %i.g), !dbg !115901
  call fastcc void @_RNvXsv_NtNtCscgRAwXFJnXP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.b, ptr noalias noundef align 8 dereferenceable(104) %i.a), !dbg !115902
  %i.h = load i64, ptr %i.b, align 8, !dbg !115903, !range !2367, !noalias !115894, !noundef !2226 ; 2 uses
  %i.i = trunc nuw i64 %i.h to i1, !dbg !115904
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !115904
  %i.k = load i64, ptr %i.j, align 8, !dbg !115904, !noalias !115894
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !115905, !noalias !115894
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !115905, !noalias !115894
  %i.l = trunc i64 %i.k to i32, !dbg !115906
  %.sroa.5.2.i.i = select i1 %i.i, i32 %i.l, i32 undef, !dbg !115906
  %i.m = trunc nuw nsw i64 %i.h to i32, !dbg !115906
  br label %_RNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops5arity28broadcast_binary_elementwiseNtNtBa_9datatypes10StringTypeB1u_NtB1w_10UInt32TypeNCNvYINtB8_12ChunkedArrayB1u_ENtNtNtNtCsePnBjWcsLF5_10polars_ops13chunked_array7strings9namespace19StringNameSpaceImpl12find_chunked0Es_0CskY9G75ZWc4U_11polars_expr.exit, !dbg !115907

_RNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops5arity28broadcast_binary_elementwiseNtNtBa_9datatypes10StringTypeB1u_NtB1w_10UInt32TypeNCNvYINtB8_12ChunkedArrayB1u_ENtNtNtNtCsePnBjWcsLF5_10polars_ops13chunked_array7strings9namespace19StringNameSpaceImpl12find_chunked0Es_0CskY9G75ZWc4U_11polars_expr.exit: ; preds = %bb.a, %bb.b
  %.sroa.5.1.i.i = phi i32 [ %.sroa.5.2.i.i, %bb.b ], [ undef, %bb.a ], !dbg !115908
  %.sroa.07.1.i.i = phi i32 [ %i.m, %bb.b ], [ 0, %bb.a ], !dbg !115908
  %i.n = insertvalue { i32, i32 } poison, i32 %.sroa.07.1.i.i, 0, !dbg !115907
  %i.o = insertvalue { i32, i32 } %i.n, i32 %.sroa.5.1.i.i, 1, !dbg !115907
  ret { i32, i32 } %i.o, !dbg !115909
}

; Function Attrs: nonlazybind uwtable
define hidden { i32, i32 } @_RNvXs1_NtNtNtCscgRAwXFJnXP_4core3ops8function5implsQNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops5arity28broadcast_binary_elementwiseNtNtBZ_9datatypes10StringTypeB2j_NtB2l_10UInt32TypeNCNvYINtBX_12ChunkedArrayB2j_ENtNtNtNtCsePnBjWcsLF5_10polars_ops13chunked_array7strings9namespace19StringNameSpaceImpl18count_matches_many0E0INtB7_5FnMutTINtNtBb_6option6OptionReEEE8call_mutCskY9G75ZWc4U_11polars_expr(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef readonly captures(address, read_provenance) %1, i64 %2) unnamed_addr #2 personality ptr @rust_eh_personality !dbg !115910 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [104 x i8], align 8               ; 5 uses
  %i.c = load ptr, ptr %0, align 8, !dbg !115948, !nonnull !2226, !align !2450, !noundef !2226
  %i.d = getelementptr i8, ptr %i.c, i64 8, !dbg !115949
  %.val = load ptr, ptr %i.d, align 8, !dbg !115949, !nonnull !2226, !align !2450, !noundef !2226 ; 2 uses
  %i.e = load ptr, ptr %.val, align 8, !dbg !115950, !noalias !115943, !noundef !2226 ; 2 uses
  %.not.i = icmp eq ptr %i.e, null, !dbg !115950
  br i1 %.not.i, label %.thread.i, label %bb.b, !dbg !115951

.thread.i:                                        ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !115952, !noalias !115944
  br label %_RNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops5arity28broadcast_binary_elementwiseNtNtBa_9datatypes10StringTypeB1u_NtB1w_10UInt32TypeNCNvYINtB8_12ChunkedArrayB1u_ENtNtNtNtCsePnBjWcsLF5_10polars_ops13chunked_array7strings9namespace19StringNameSpaceImpl18count_matches_many0E0CskY9G75ZWc4U_11polars_expr.exit, !dbg !115953

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %.val, i64 8, !dbg !115954
  %i.g = load i64, ptr %i.f, align 8, !dbg !115954, !alias.scope !115945, !noalias !115943, !noundef !2226
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !115952, !noalias !115946
  %.not11.i.i = icmp eq ptr %1, null
  br i1 %.not11.i.i, label %_RNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops5arity28broadcast_binary_elementwiseNtNtBa_9datatypes10StringTypeB1u_NtB1w_10UInt32TypeNCNvYINtB8_12ChunkedArrayB1u_ENtNtNtNtCsePnBjWcsLF5_10polars_ops13chunked_array7strings9namespace19StringNameSpaceImpl18count_matches_many0E0CskY9G75ZWc4U_11polars_expr.exit, label %bb.c, !dbg !115953

bb.c:                                             ; preds = %bb.b
  call void @_RNvMsu_NtNtCscgRAwXFJnXP_4core3str7patternNtB5_11StrSearcher3new(ptr noalias noundef nonnull sret([104 x i8]) align 8 captures(none) dereferenceable(104) %i.b, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.e, i64 noundef %i.g, ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2), !dbg !115955
  br label %bb.d, !dbg !115956

bb.d:                                             ; preds = %bb.d, %bb.c
  %.sroa.0.0.i.i.i = phi i32 [ 0, %bb.c ], [ %i.i, %bb.d ], !dbg !115957 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !115958, !noalias !115947
  call fastcc void @_RNvXsv_NtNtCscgRAwXFJnXP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(104) %i.b) #50, !dbg !115959
  %i.h = load i64, ptr %i.a, align 8, !dbg !115960, !range !2367, !noalias !115947, !noundef !2226
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !115961, !noalias !115947
  %not..i.i.i = icmp eq i64 %i.h, 0, !dbg !115962
  %i.i = add i32 %.sroa.0.0.i.i.i, 1, !dbg !115963
  br i1 %not..i.i.i, label %_RNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops5arity28broadcast_binary_elementwiseNtNtBa_9datatypes10StringTypeB1u_NtB1w_10UInt32TypeNCNvYINtB8_12ChunkedArrayB1u_ENtNtNtNtCsePnBjWcsLF5_10polars_ops13chunked_array7strings9namespace19StringNameSpaceImpl18count_matches_many0E0CskY9G75ZWc4U_11polars_expr.exit, label %bb.d, !dbg !115964

_RNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops5arity28broadcast_binary_elementwiseNtNtBa_9datatypes10StringTypeB1u_NtB1w_10UInt32TypeNCNvYINtB8_12ChunkedArrayB1u_ENtNtNtNtCsePnBjWcsLF5_10polars_ops13chunked_array7strings9namespace19StringNameSpaceImpl18count_matches_many0E0CskY9G75ZWc4U_11polars_expr.exit: ; preds = %bb.d, %.thread.i, %bb.b
  %.sroa.4.1.i.i = phi i32 [ undef, %bb.b ], [ undef, %.thread.i ], [ %.sroa.0.0.i.i.i, %bb.d ], !dbg !115965
  %.sroa.07.1.i.i = phi i32 [ 0, %bb.b ], [ 0, %.thread.i ], [ 1, %bb.d ], !dbg !115965
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !115966, !noalias !115946
  %i.j = insertvalue { i32, i32 } poison, i32 %.sroa.07.1.i.i, 0, !dbg !115967
  %i.k = insertvalue { i32, i32 } %i.j, i32 %.sroa.4.1.i.i, 1, !dbg !115967
  ret { i32, i32 } %i.k, !dbg !115968
}

; Function Attrs: nonlazybind uwtable
define hidden { i32, i32 } @_RNvXs1_NtNtNtCscgRAwXFJnXP_4core3ops8function5implsQNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops5arity28broadcast_binary_elementwiseNtNtBZ_9datatypes10StringTypeB2j_NtB2l_10UInt32TypeNCNvYINtBX_12ChunkedArrayB2j_ENtNtNtNtCsePnBjWcsLF5_10polars_ops13chunked_array7strings9namespace19StringNameSpaceImpl18count_matches_many0Es_0INtB7_5FnMutTINtNtBb_6option6OptionReEEE8call_mutCskY9G75ZWc4U_11polars_expr(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef readonly captures(address, read_provenance) %1, i64 %2) unnamed_addr #2 personality ptr @rust_eh_personality !dbg !115969 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [104 x i8], align 8               ; 5 uses
  %i.c = load ptr, ptr %0, align 8, !dbg !116007, !nonnull !2226, !align !2450, !noundef !2226
  %i.d = getelementptr i8, ptr %i.c, i64 8, !dbg !116008
  %.val = load ptr, ptr %i.d, align 8, !dbg !116008, !nonnull !2226, !align !2450, !noundef !2226 ; 2 uses
  %i.e = load ptr, ptr %.val, align 8, !dbg !116009, !noalias !116002, !noundef !2226 ; 2 uses
  %.not.i = icmp eq ptr %i.e, null, !dbg !116009
  br i1 %.not.i, label %.thread.i, label %bb.b, !dbg !116010

.thread.i:                                        ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !116011, !noalias !116003
  br label %_RNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops5arity28broadcast_binary_elementwiseNtNtBa_9datatypes10StringTypeB1u_NtB1w_10UInt32TypeNCNvYINtB8_12ChunkedArrayB1u_ENtNtNtNtCsePnBjWcsLF5_10polars_ops13chunked_array7strings9namespace19StringNameSpaceImpl18count_matches_many0Es_0CskY9G75ZWc4U_11polars_expr.exit, !dbg !116012

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %.val, i64 8, !dbg !116013
  %i.g = load i64, ptr %i.f, align 8, !dbg !116013, !alias.scope !116004, !noalias !116002, !noundef !2226
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !116011, !noalias !116005
  %.not.i.i = icmp eq ptr %1, null, !dbg !116014
  br i1 %.not.i.i, label %_RNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops5arity28broadcast_binary_elementwiseNtNtBa_9datatypes10StringTypeB1u_NtB1w_10UInt32TypeNCNvYINtB8_12ChunkedArrayB1u_ENtNtNtNtCsePnBjWcsLF5_10polars_ops13chunked_array7strings9namespace19StringNameSpaceImpl18count_matches_many0Es_0CskY9G75ZWc4U_11polars_expr.exit, label %bb.c, !dbg !116012

bb.c:                                             ; preds = %bb.b
  call void @_RNvMsu_NtNtCscgRAwXFJnXP_4core3str7patternNtB5_11StrSearcher3new(ptr noalias noundef nonnull sret([104 x i8]) align 8 captures(none) dereferenceable(104) %i.b, ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.e, i64 noundef %i.g), !dbg !116015
  br label %bb.d, !dbg !116016

bb.d:                                             ; preds = %bb.d, %bb.c
  %.sroa.0.0.i.i.i = phi i32 [ 0, %bb.c ], [ %i.i, %bb.d ], !dbg !116017 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !116018, !noalias !116006
  call fastcc void @_RNvXsv_NtNtCscgRAwXFJnXP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(104) %i.b) #50, !dbg !116019
  %i.h = load i64, ptr %i.a, align 8, !dbg !116020, !range !2367, !noalias !116006, !noundef !2226
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !116021, !noalias !116006
  %not..i.i.i = icmp eq i64 %i.h, 0, !dbg !116022
  %i.i = add i32 %.sroa.0.0.i.i.i, 1, !dbg !116023
  br i1 %not..i.i.i, label %_RNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops5arity28broadcast_binary_elementwiseNtNtBa_9datatypes10StringTypeB1u_NtB1w_10UInt32TypeNCNvYINtB8_12ChunkedArrayB1u_ENtNtNtNtCsePnBjWcsLF5_10polars_ops13chunked_array7strings9namespace19StringNameSpaceImpl18count_matches_many0Es_0CskY9G75ZWc4U_11polars_expr.exit, label %bb.d, !dbg !116024

_RNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops5arity28broadcast_binary_elementwiseNtNtBa_9datatypes10StringTypeB1u_NtB1w_10UInt32TypeNCNvYINtB8_12ChunkedArrayB1u_ENtNtNtNtCsePnBjWcsLF5_10polars_ops13chunked_array7strings9namespace19StringNameSpaceImpl18count_matches_many0Es_0CskY9G75ZWc4U_11polars_expr.exit: ; preds = %bb.d, %.thread.i, %bb.b
  %.sroa.4.1.i.i = phi i32 [ undef, %bb.b ], [ undef, %.thread.i ], [ %.sroa.0.0.i.i.i, %bb.d ], !dbg !116025
  %.sroa.07.1.i.i = phi i32 [ 0, %bb.b ], [ 0, %.thread.i ], [ 1, %bb.d ], !dbg !116025
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !116026, !noalias !116005
  %i.j = insertvalue { i32, i32 } poison, i32 %.sroa.07.1.i.i, 0, !dbg !116027
  %i.k = insertvalue { i32, i32 } %i.j, i32 %.sroa.4.1.i.i, 1, !dbg !116027
  ret { i32, i32 } %i.k, !dbg !116028
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden { i16, i16 } @_RNvXs1_NtNtNtCscgRAwXFJnXP_4core3ops8function5implsQNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops5arity28broadcast_binary_elementwiseNtNtBZ_9datatypes10UInt16TypeNtB2l_10UInt32TypeB2j_NCINvNtNtCskY9G75ZWc4U_11polars_expr8dispatch3pow21pow_on_chunked_arraysB2j_B2M_Es_0E0INtB7_5FnMutTINtNtBb_6option6OptionmEEE8call_mutB3h_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, i32 noundef range(i32 0, 2) %1, i32 %2) unnamed_addr #21 personality ptr @rust_eh_personality !dbg !116029 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !dbg !116044, !nonnull !2226, !align !2450, !noundef !2226
  %i.b = getelementptr i8, ptr %i.a, i64 8, !dbg !116045
  %.val = load ptr, ptr %i.b, align 8, !dbg !116045, !nonnull !2226, !align !2858, !noundef !2226 ; 2 uses
  %i.c = load i16, ptr %.val, align 2, !dbg !116046, !range !2805, !noundef !2226
  %i.d = trunc nuw i16 %i.c to i1, !dbg !116047
  %i.e = trunc nuw i32 %1 to i1
  %or.cond = select i1 %i.d, i1 %i.e, i1 false, !dbg !116047
  br i1 %or.cond, label %bb.b, label %_RNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops5arity28broadcast_binary_elementwiseNtNtBa_9datatypes10UInt16TypeNtB1w_10UInt32TypeB1u_NCINvNtNtCskY9G75ZWc4U_11polars_expr8dispatch3pow21pow_on_chunked_arraysB1u_B1X_Es_0E0B2s_.exit, !dbg !116047

bb.b:                                             ; preds = %bb.a
  %i.f = icmp eq i32 %2, 0, !dbg !116048
  br i1 %i.f, label %_RNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops5arity28broadcast_binary_elementwiseNtNtBa_9datatypes10UInt16TypeNtB1w_10UInt32TypeB1u_NCINvNtNtCskY9G75ZWc4U_11polars_expr8dispatch3pow21pow_on_chunked_arraysB1u_B1X_Es_0E0B2s_.exit, label %.preheader21.i.i.i.i.preheader, !dbg !116048

.preheader21.i.i.i.i.preheader:                   ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %.val, i64 2, !dbg !116046
  %i.h = load i16, ptr %i.g, align 2, !dbg !116049, !alias.scope !116042, !noundef !2226
  br label %.preheader21.i.i.i.i, !dbg !116050

.preheader21.i.i.i.i:                             ; preds = %.preheader21.i.i.i.i.preheader, %bb.d
  %.sroa.015.1.i.i.i.i = phi i16 [ %.sroa.015.2.i.i.i.i, %bb.d ], [ 1, %.preheader21.i.i.i.i.preheader ], !dbg !116051 ; 2 uses
  %.sroa.07.0.i.i.i.i = phi i32 [ %i.l, %bb.d ], [ %2, %.preheader21.i.i.i.i.preheader ] ; 3 uses
  %.sroa.0.0.i.i.i.i = phi i16 [ %i.m, %bb.d ], [ %i.h, %.preheader21.i.i.i.i.preheader ] ; 3 uses
  %i.i = and i32 %.sroa.07.0.i.i.i.i, 1, !dbg !116050
  %.not.i.i.i.i = icmp eq i32 %i.i, 0, !dbg !116050
  br i1 %.not.i.i.i.i, label %bb.d, label %bb.c, !dbg !116050

bb.c:                                             ; preds = %.preheader21.i.i.i.i
  %i.j = mul i16 %.sroa.0.0.i.i.i.i, %.sroa.015.1.i.i.i.i, !dbg !116052 ; 2 uses
  %i.k = icmp eq i32 %.sroa.07.0.i.i.i.i, 1, !dbg !116053
  br i1 %i.k, label %_RNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops5arity28broadcast_binary_elementwiseNtNtBa_9datatypes10UInt16TypeNtB1w_10UInt32TypeB1u_NCINvNtNtCskY9G75ZWc4U_11polars_expr8dispatch3pow21pow_on_chunked_arraysB1u_B1X_Es_0E0B2s_.exit, label %bb.d, !dbg !116053

bb.d:                                             ; preds = %bb.c, %.preheader21.i.i.i.i
  %.sroa.015.2.i.i.i.i = phi i16 [ %i.j, %bb.c ], [ %.sroa.015.1.i.i.i.i, %.preheader21.i.i.i.i ], !dbg !116051
  %i.l = lshr i32 %.sroa.07.0.i.i.i.i, 1, !dbg !116054
  %i.m = mul i16 %.sroa.0.0.i.i.i.i, %.sroa.0.0.i.i.i.i, !dbg !116055
  br label %.preheader21.i.i.i.i, !dbg !116056

_RNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops5arity28broadcast_binary_elementwiseNtNtBa_9datatypes10UInt16TypeNtB1w_10UInt32TypeB1u_NCINvNtNtCskY9G75ZWc4U_11polars_expr8dispatch3pow21pow_on_chunked_arraysB1u_B1X_Es_0E0B2s_.exit: ; preds = %bb.c, %bb.a, %bb.b
  %.sroa.4.0.i.i = phi i16 [ undef, %bb.a ], [ 1, %bb.b ], [ %i.j, %bb.c ]
  %.sroa.05.1.i.i = phi i16 [ 0, %bb.a ], [ 1, %bb.b ], [ 1, %bb.c ], !dbg !116057
  %i.n = insertvalue { i16, i16 } poison, i16 %.sroa.05.1.i.i, 0, !dbg !116058
  %i.o = insertvalue { i16, i16 } %i.n, i16 %.sroa.4.0.i.i, 1, !dbg !116058
  ret { i16, i16 } %i.o, !dbg !116059
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden { i16, i16 } @_RNvXs1_NtNtNtCscgRAwXFJnXP_4core3ops8function5implsQNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops5arity28broadcast_binary_elementwiseNtNtBZ_9datatypes10UInt16TypeNtB2l_10UInt32TypeB2j_NCINvNtNtCskY9G75ZWc4U_11polars_expr8dispatch3pow21pow_on_chunked_arraysB2j_B2M_Es_0Es_0INtB7_5FnMutTINtNtBb_6option6OptiontEEE8call_mutB3h_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, i16 noundef range(i16 0, 2) %1, i16 %2) unnamed_addr #21 personality ptr @rust_eh_personality !dbg !116060 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !dbg !116073, !nonnull !2226, !align !2450, !noundef !2226
  %i.b = getelementptr i8, ptr %i.a, i64 8, !dbg !116074
  %.val = load ptr, ptr %i.b, align 8, !dbg !116074, !nonnull !2226, !align !2881, !noundef !2226 ; 2 uses
  %i.c = load i32, ptr %.val, align 4, !dbg !116075, !range !2809, !noundef !2226
  %i.d = trunc nuw i32 %i.c to i1, !dbg !116076
  %i.e = trunc nuw i16 %1 to i1
  %or.cond = select i1 %i.d, i1 %i.e, i1 false, !dbg !116076
  br i1 %or.cond, label %bb.b, label %_RNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops5arity28broadcast_binary_elementwiseNtNtBa_9datatypes10UInt16TypeNtB1w_10UInt32TypeB1u_NCINvNtNtCskY9G75ZWc4U_11polars_expr8dispatch3pow21pow_on_chunked_arraysB1u_B1X_Es_0Es_0B2s_.exit, !dbg !116076

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %.val, i64 4, !dbg !116075
  %i.g = load i32, ptr %i.f, align 4, !dbg !116077, !alias.scope !116072, !noundef !2226 ; 2 uses
  %i.h = icmp eq i32 %i.g, 0, !dbg !116078
  br i1 %i.h, label %_RNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops5arity28broadcast_binary_elementwiseNtNtBa_9datatypes10UInt16TypeNtB1w_10UInt32TypeB1u_NCINvNtNtCskY9G75ZWc4U_11polars_expr8dispatch3pow21pow_on_chunked_arraysB1u_B1X_Es_0Es_0B2s_.exit, label %.preheader21.i.i.i.i, !dbg !116078

.preheader21.i.i.i.i:                             ; preds = %bb.b, %bb.d
  %.sroa.015.1.i.i.i.i = phi i16 [ %.sroa.015.2.i.i.i.i, %bb.d ], [ 1, %bb.b ], !dbg !116079 ; 2 uses
  %.sroa.07.0.i.i.i.i = phi i32 [ %i.l, %bb.d ], [ %i.g, %bb.b ] ; 3 uses
  %.sroa.0.0.i.i.i.i = phi i16 [ %i.m, %bb.d ], [ %2, %bb.b ] ; 3 uses
  %i.i = and i32 %.sroa.07.0.i.i.i.i, 1, !dbg !116080
  %.not.i.i.i.i = icmp eq i32 %i.i, 0, !dbg !116080
  br i1 %.not.i.i.i.i, label %bb.d, label %bb.c, !dbg !116080

bb.c:                                             ; preds = %.preheader21.i.i.i.i
  %i.j = mul i16 %.sroa.0.0.i.i.i.i, %.sroa.015.1.i.i.i.i, !dbg !116081 ; 2 uses
  %i.k = icmp eq i32 %.sroa.07.0.i.i.i.i, 1, !dbg !116082
  br i1 %i.k, label %_RNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops5arity28broadcast_binary_elementwiseNtNtBa_9datatypes10UInt16TypeNtB1w_10UInt32TypeB1u_NCINvNtNtCskY9G75ZWc4U_11polars_expr8dispatch3pow21pow_on_chunked_arraysB1u_B1X_Es_0Es_0B2s_.exit, label %bb.d, !dbg !116082

bb.d:                                             ; preds = %bb.c, %.preheader21.i.i.i.i
  %.sroa.015.2.i.i.i.i = phi i16 [ %i.j, %bb.c ], [ %.sroa.015.1.i.i.i.i, %.preheader21.i.i.i.i ], !dbg !116079
  %i.l = lshr i32 %.sroa.07.0.i.i.i.i, 1, !dbg !116083
  %i.m = mul i16 %.sroa.0.0.i.i.i.i, %.sroa.0.0.i.i.i.i, !dbg !116084
  br label %.preheader21.i.i.i.i, !dbg !116085

_RNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops5arity28broadcast_binary_elementwiseNtNtBa_9datatypes10UInt16TypeNtB1w_10UInt32TypeB1u_NCINvNtNtCskY9G75ZWc4U_11polars_expr8dispatch3pow21pow_on_chunked_arraysB1u_B1X_Es_0Es_0B2s_.exit: ; preds = %bb.c, %bb.a, %bb.b
  %.sroa.4.0.i.i = phi i16 [ undef, %bb.a ], [ 1, %bb.b ], [ %i.j, %bb.c ]
  %.sroa.05.1.i.i = phi i16 [ 0, %bb.a ], [ 1, %bb.b ], [ 1, %bb.c ], !dbg !116086
  %i.n = insertvalue { i16, i16 } poison, i16 %.sroa.05.1.i.i, 0, !dbg !116087
  %i.o = insertvalue { i16, i16 } %i.n, i16 %.sroa.4.0.i.i, 1, !dbg !116087
  ret { i16, i16 } %i.o, !dbg !116088
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden { i32, i32 } @_RNvXs1_NtNtNtCscgRAwXFJnXP_4core3ops8function5implsQNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops5arity28broadcast_binary_elementwiseNtNtBZ_9datatypes10UInt32TypeB2j_B2j_NCINvNtNtCskY9G75ZWc4U_11polars_expr8dispatch3pow21pow_on_chunked_arraysB2j_B2j_Es_0E0INtB7_5FnMutTINtNtBb_6option6OptionmEEE8call_mutB33_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, i32 noundef range(i32 0, 2) %1, i32 %2) unnamed_addr #21 personality ptr @rust_eh_personality !dbg !116089 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !dbg !116102, !nonnull !2226, !align !2450, !noundef !2226
  %i.b = getelementptr i8, ptr %i.a, i64 8, !dbg !116103
  %.val = load ptr, ptr %i.b, align 8, !dbg !116103, !nonnull !2226, !align !2881, !noundef !2226 ; 2 uses
  %i.c = load i32, ptr %.val, align 4, !dbg !116104, !range !2809, !noundef !2226
  %i.d = trunc nuw i32 %i.c to i1, !dbg !116105
  %.not = xor i1 %i.d, true, !dbg !116105
  %i.e = icmp eq i32 %1, 0
  %or.cond = or i1 %.not, %i.e, !dbg !116105
  br i1 %or.cond, label %_RNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops5arity28broadcast_binary_elementwiseNtNtBa_9datatypes10UInt32TypeB1u_B1u_NCINvNtNtCskY9G75ZWc4U_11polars_expr8dispatch3pow21pow_on_chunked_arraysB1u_B1u_Es_0E0B2e_.exit, label %bb.b, !dbg !116105

bb.b:                                             ; preds = %bb.a
  %i.f = icmp eq i32 %2, 0, !dbg !116106
  br i1 %i.f, label %_RNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops5arity28broadcast_binary_elementwiseNtNtBa_9datatypes10UInt32TypeB1u_B1u_NCINvNtNtCskY9G75ZWc4U_11polars_expr8dispatch3pow21pow_on_chunked_arraysB1u_B1u_Es_0E0B2e_.exit, label %.preheader21.i.i.i.i.preheader, !dbg !116106

.preheader21.i.i.i.i.preheader:                   ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %.val, i64 4, !dbg !116104
  %i.h = load i32, ptr %i.g, align 4, !dbg !116107, !alias.scope !116101, !noundef !2226
  br label %.preheader21.i.i.i.i, !dbg !116108

.preheader21.i.i.i.i:                             ; preds = %.preheader21.i.i.i.i.preheader, %bb.d
  %.sroa.015.1.i.i.i.i = phi i32 [ %.sroa.015.2.i.i.i.i, %bb.d ], [ 1, %.preheader21.i.i.i.i.preheader ], !dbg !116109 ; 2 uses
  %.sroa.07.0.i.i.i.i = phi i32 [ %i.l, %bb.d ], [ %2, %.preheader21.i.i.i.i.preheader ] ; 3 uses
  %.sroa.0.0.i.i.i.i = phi i32 [ %i.m, %bb.d ], [ %i.h, %.preheader21.i.i.i.i.preheader ] ; 3 uses
  %i.i = and i32 %.sroa.07.0.i.i.i.i, 1, !dbg !116108
  %.not.i.i.i.i = icmp eq i32 %i.i, 0, !dbg !116108
  br i1 %.not.i.i.i.i, label %bb.d, label %bb.c, !dbg !116108

bb.c:                                             ; preds = %.preheader21.i.i.i.i
  %i.j = mul i32 %.sroa.0.0.i.i.i.i, %.sroa.015.1.i.i.i.i, !dbg !116110 ; 2 uses
  %i.k = icmp eq i32 %.sroa.07.0.i.i.i.i, 1, !dbg !116111
  br i1 %i.k, label %_RNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops5arity28broadcast_binary_elementwiseNtNtBa_9datatypes10UInt32TypeB1u_B1u_NCINvNtNtCskY9G75ZWc4U_11polars_expr8dispatch3pow21pow_on_chunked_arraysB1u_B1u_Es_0E0B2e_.exit, label %bb.d, !dbg !116111

bb.d:                                             ; preds = %bb.c, %.preheader21.i.i.i.i
  %.sroa.015.2.i.i.i.i = phi i32 [ %i.j, %bb.c ], [ %.sroa.015.1.i.i.i.i, %.preheader21.i.i.i.i ], !dbg !116109
  %i.l = lshr i32 %.sroa.07.0.i.i.i.i, 1, !dbg !116112
  %i.m = mul i32 %.sroa.0.0.i.i.i.i, %.sroa.0.0.i.i.i.i, !dbg !116113
  br label %.preheader21.i.i.i.i, !dbg !116114

_RNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops5arity28broadcast_binary_elementwiseNtNtBa_9datatypes10UInt32TypeB1u_B1u_NCINvNtNtCskY9G75ZWc4U_11polars_expr8dispatch3pow21pow_on_chunked_arraysB1u_B1u_Es_0E0B2e_.exit: ; preds = %bb.c, %bb.a, %bb.b
  %.sroa.4.0.i.i = phi i32 [ undef, %bb.a ], [ 1, %bb.b ], [ %i.j, %bb.c ]
  %.sroa.05.1.i.i = phi i32 [ 0, %bb.a ], [ 1, %bb.b ], [ 1, %bb.c ], !dbg !116115
  %i.n = insertvalue { i32, i32 } poison, i32 %.sroa.05.1.i.i, 0, !dbg !116116
  %i.o = insertvalue { i32, i32 } %i.n, i32 %.sroa.4.0.i.i, 1, !dbg !116116
  ret { i32, i32 } %i.o, !dbg !116117
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden { i32, i32 } @_RNvXs1_NtNtNtCscgRAwXFJnXP_4core3ops8function5implsQNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops5arity28broadcast_binary_elementwiseNtNtBZ_9datatypes10UInt32TypeB2j_B2j_NCINvNtNtCskY9G75ZWc4U_11polars_expr8dispatch3pow21pow_on_chunked_arraysB2j_B2j_Es_0Es_0INtB7_5FnMutTINtNtBb_6option6OptionmEEE8call_mutB33_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, i32 noundef range(i32 0, 2) %1, i32 %2) unnamed_addr #21 personality ptr @rust_eh_personality !dbg !116118 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !dbg !116131, !nonnull !2226, !align !2450, !noundef !2226
  %i.b = getelementptr i8, ptr %i.a, i64 8, !dbg !116132
  %.val = load ptr, ptr %i.b, align 8, !dbg !116132, !nonnull !2226, !align !2881, !noundef !2226 ; 2 uses
  %i.c = load i32, ptr %.val, align 4, !dbg !116133, !range !2809, !noundef !2226
  %i.d = trunc nuw i32 %i.c to i1, !dbg !116134
  %.not = xor i1 %i.d, true, !dbg !116134
  %i.e = icmp eq i32 %1, 0
  %or.cond = or i1 %.not, %i.e, !dbg !116134
  br i1 %or.cond, label %_RNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops5arity28broadcast_binary_elementwiseNtNtBa_9datatypes10UInt32TypeB1u_B1u_NCINvNtNtCskY9G75ZWc4U_11polars_expr8dispatch3pow21pow_on_chunked_arraysB1u_B1u_Es_0Es_0B2e_.exit, label %bb.b, !dbg !116134

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %.val, i64 4, !dbg !116133
  %i.g = load i32, ptr %i.f, align 4, !dbg !116135, !alias.scope !116130, !noundef !2226 ; 2 uses
  %i.h = icmp eq i32 %i.g, 0, !dbg !116136
  br i1 %i.h, label %_RNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops5arity28broadcast_binary_elementwiseNtNtBa_9datatypes10UInt32TypeB1u_B1u_NCINvNtNtCskY9G75ZWc4U_11polars_expr8dispatch3pow21pow_on_chunked_arraysB1u_B1u_Es_0Es_0B2e_.exit, label %.preheader21.i.i.i.i, !dbg !116136

.preheader21.i.i.i.i:                             ; preds = %bb.b, %bb.d
  %.sroa.015.1.i.i.i.i = phi i32 [ %.sroa.015.2.i.i.i.i, %bb.d ], [ 1, %bb.b ], !dbg !116137 ; 2 uses
  %.sroa.07.0.i.i.i.i = phi i32 [ %i.l, %bb.d ], [ %i.g, %bb.b ] ; 3 uses
  %.sroa.0.0.i.i.i.i = phi i32 [ %i.m, %bb.d ], [ %2, %bb.b ] ; 3 uses
  %i.i = and i32 %.sroa.07.0.i.i.i.i, 1, !dbg !116138
  %.not.i.i.i.i = icmp eq i32 %i.i, 0, !dbg !116138
  br i1 %.not.i.i.i.i, label %bb.d, label %bb.c, !dbg !116138

bb.c:                                             ; preds = %.preheader21.i.i.i.i
  %i.j = mul i32 %.sroa.0.0.i.i.i.i, %.sroa.015.1.i.i.i.i, !dbg !116139 ; 2 uses
  %i.k = icmp eq i32 %.sroa.07.0.i.i.i.i, 1, !dbg !116140
  br i1 %i.k, label %_RNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops5arity28broadcast_binary_elementwiseNtNtBa_9datatypes10UInt32TypeB1u_B1u_NCINvNtNtCskY9G75ZWc4U_11polars_expr8dispatch3pow21pow_on_chunked_arraysB1u_B1u_Es_0Es_0B2e_.exit, label %bb.d, !dbg !116140

bb.d:                                             ; preds = %bb.c, %.preheader21.i.i.i.i
  %.sroa.015.2.i.i.i.i = phi i32 [ %i.j, %bb.c ], [ %.sroa.015.1.i.i.i.i, %.preheader21.i.i.i.i ], !dbg !116137
  %i.l = lshr i32 %.sroa.07.0.i.i.i.i, 1, !dbg !116141
  %i.m = mul i32 %.sroa.0.0.i.i.i.i, %.sroa.0.0.i.i.i.i, !dbg !116142
  br label %.preheader21.i.i.i.i, !dbg !116143

_RNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops5arity28broadcast_binary_elementwiseNtNtBa_9datatypes10UInt32TypeB1u_B1u_NCINvNtNtCskY9G75ZWc4U_11polars_expr8dispatch3pow21pow_on_chunked_arraysB1u_B1u_Es_0Es_0B2e_.exit: ; preds = %bb.c, %bb.a, %bb.b
  %.sroa.4.0.i.i = phi i32 [ undef, %bb.a ], [ 1, %bb.b ], [ %i.j, %bb.c ]
  %.sroa.05.1.i.i = phi i32 [ 0, %bb.a ], [ 1, %bb.b ], [ 1, %bb.c ], !dbg !116144
  %i.n = insertvalue { i32, i32 } poison, i32 %.sroa.05.1.i.i, 0, !dbg !116145
  %i.o = insertvalue { i32, i32 } %i.n, i32 %.sroa.4.0.i.i, 1, !dbg !116145
  ret { i32, i32 } %i.o, !dbg !116146
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden { i64, i64 } @_RNvXs1_NtNtNtCscgRAwXFJnXP_4core3ops8function5implsQNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops5arity28broadcast_binary_elementwiseNtNtBZ_9datatypes10UInt64TypeNtB2l_10UInt32TypeB2j_NCINvNtNtCskY9G75ZWc4U_11polars_expr8dispatch3pow21pow_on_chunked_arraysB2j_B2M_Es_0E0INtB7_5FnMutTINtNtBb_6option6OptionmEEE8call_mutB3h_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, i32 noundef range(i32 0, 2) %1, i32 %2) unnamed_addr #21 personality ptr @rust_eh_personality !dbg !116147 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !dbg !116162, !nonnull !2226, !align !2450, !noundef !2226
  %i.b = getelementptr i8, ptr %i.a, i64 8, !dbg !116163
  %.val = load ptr, ptr %i.b, align 8, !dbg !116163, !nonnull !2226, !align !2450, !noundef !2226 ; 2 uses
  %i.c = load i64, ptr %.val, align 8, !dbg !116164, !range !2367, !noundef !2226
  %i.d = trunc nuw i64 %i.c to i1, !dbg !116165
  %i.e = trunc nuw i32 %1 to i1
  %or.cond = select i1 %i.d, i1 %i.e, i1 false, !dbg !116165
  br i1 %or.cond, label %bb.b, label %_RNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops5arity28broadcast_binary_elementwiseNtNtBa_9datatypes10UInt64TypeNtB1w_10UInt32TypeB1u_NCINvNtNtCskY9G75ZWc4U_11polars_expr8dispatch3pow21pow_on_chunked_arraysB1u_B1X_Es_0E0B2s_.exit, !dbg !116165

bb.b:                                             ; preds = %bb.a
  %i.f = icmp eq i32 %2, 0, !dbg !116166
  br i1 %i.f, label %_RNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops5arity28broadcast_binary_elementwiseNtNtBa_9datatypes10UInt64TypeNtB1w_10UInt32TypeB1u_NCINvNtNtCskY9G75ZWc4U_11polars_expr8dispatch3pow21pow_on_chunked_arraysB1u_B1X_Es_0E0B2s_.exit, label %.preheader21.i.i.i.i.preheader, !dbg !116166

.preheader21.i.i.i.i.preheader:                   ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %.val, i64 8, !dbg !116164
  %i.h = load i64, ptr %i.g, align 8, !dbg !116167, !alias.scope !116160, !noundef !2226
  br label %.preheader21.i.i.i.i, !dbg !116168

.preheader21.i.i.i.i:                             ; preds = %.preheader21.i.i.i.i.preheader, %bb.d
  %.sroa.015.1.i.i.i.i = phi i64 [ %.sroa.015.2.i.i.i.i, %bb.d ], [ 1, %.preheader21.i.i.i.i.preheader ], !dbg !116169 ; 2 uses
  %.sroa.07.0.i.i.i.i = phi i32 [ %i.l, %bb.d ], [ %2, %.preheader21.i.i.i.i.preheader ] ; 3 uses
  %.sroa.0.0.i.i.i.i = phi i64 [ %i.m, %bb.d ], [ %i.h, %.preheader21.i.i.i.i.preheader ] ; 3 uses
  %i.i = and i32 %.sroa.07.0.i.i.i.i, 1, !dbg !116168
  %.not.i.i.i.i = icmp eq i32 %i.i, 0, !dbg !116168
  br i1 %.not.i.i.i.i, label %bb.d, label %bb.c, !dbg !116168

bb.c:                                             ; preds = %.preheader21.i.i.i.i
  %i.j = mul i64 %.sroa.0.0.i.i.i.i, %.sroa.015.1.i.i.i.i, !dbg !116170 ; 2 uses
  %i.k = icmp eq i32 %.sroa.07.0.i.i.i.i, 1, !dbg !116171
  br i1 %i.k, label %_RNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops5arity28broadcast_binary_elementwiseNtNtBa_9datatypes10UInt64TypeNtB1w_10UInt32TypeB1u_NCINvNtNtCskY9G75ZWc4U_11polars_expr8dispatch3pow21pow_on_chunked_arraysB1u_B1X_Es_0E0B2s_.exit, label %bb.d, !dbg !116171

bb.d:                                             ; preds = %bb.c, %.preheader21.i.i.i.i
  %.sroa.015.2.i.i.i.i = phi i64 [ %i.j, %bb.c ], [ %.sroa.015.1.i.i.i.i, %.preheader21.i.i.i.i ], !dbg !116169
  %i.l = lshr i32 %.sroa.07.0.i.i.i.i, 1, !dbg !116172
  %i.m = mul i64 %.sroa.0.0.i.i.i.i, %.sroa.0.0.i.i.i.i, !dbg !116173
  br label %.preheader21.i.i.i.i, !dbg !116174

_RNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops5arity28broadcast_binary_elementwiseNtNtBa_9datatypes10UInt64TypeNtB1w_10UInt32TypeB1u_NCINvNtNtCskY9G75ZWc4U_11polars_expr8dispatch3pow21pow_on_chunked_arraysB1u_B1X_Es_0E0B2s_.exit: ; preds = %bb.c, %bb.a, %bb.b
  %.sroa.4.0.i.i = phi i64 [ undef, %bb.a ], [ 1, %bb.b ], [ %i.j, %bb.c ]
  %.sroa.05.1.i.i = phi i64 [ 0, %bb.a ], [ 1, %bb.b ], [ 1, %bb.c ], !dbg !116175
  %i.n = insertvalue { i64, i64 } poison, i64 %.sroa.05.1.i.i, 0, !dbg !116176
  %i.o = insertvalue { i64, i64 } %i.n, i64 %.sroa.4.0.i.i, 1, !dbg !116176
  ret { i64, i64 } %i.o, !dbg !116177
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden { i64, i64 } @_RNvXs1_NtNtNtCscgRAwXFJnXP_4core3ops8function5implsQNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops5arity28broadcast_binary_elementwiseNtNtBZ_9datatypes10UInt64TypeNtB2l_10UInt32TypeB2j_NCINvNtNtCskY9G75ZWc4U_11polars_expr8dispatch3pow21pow_on_chunked_arraysB2j_B2M_Es_0Es_0INtB7_5FnMutTINtNtBb_6option6OptionyEEE8call_mutB3h_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, i64 noundef range(i64 0, 2) %1, i64 %2) unnamed_addr #21 personality ptr @rust_eh_personality !dbg !116178 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !dbg !116191, !nonnull !2226, !align !2450, !noundef !2226
  %i.b = getelementptr i8, ptr %i.a, i64 8, !dbg !116192
  %.val = load ptr, ptr %i.b, align 8, !dbg !116192, !nonnull !2226, !align !2881, !noundef !2226 ; 2 uses
  %i.c = load i32, ptr %.val, align 4, !dbg !116193, !range !2809, !noundef !2226
  %i.d = trunc nuw i32 %i.c to i1, !dbg !116194
  %i.e = trunc nuw i64 %1 to i1
  %or.cond = select i1 %i.d, i1 %i.e, i1 false, !dbg !116194
  br i1 %or.cond, label %bb.b, label %_RNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops5arity28broadcast_binary_elementwiseNtNtBa_9datatypes10UInt64TypeNtB1w_10UInt32TypeB1u_NCINvNtNtCskY9G75ZWc4U_11polars_expr8dispatch3pow21pow_on_chunked_arraysB1u_B1X_Es_0Es_0B2s_.exit, !dbg !116194

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %.val, i64 4, !dbg !116193
  %i.g = load i32, ptr %i.f, align 4, !dbg !116195, !alias.scope !116190, !noundef !2226 ; 2 uses
  %i.h = icmp eq i32 %i.g, 0, !dbg !116196
  br i1 %i.h, label %_RNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops5arity28broadcast_binary_elementwiseNtNtBa_9datatypes10UInt64TypeNtB1w_10UInt32TypeB1u_NCINvNtNtCskY9G75ZWc4U_11polars_expr8dispatch3pow21pow_on_chunked_arraysB1u_B1X_Es_0Es_0B2s_.exit, label %.preheader21.i.i.i.i, !dbg !116196

.preheader21.i.i.i.i:                             ; preds = %bb.b, %bb.d
  %.sroa.015.1.i.i.i.i = phi i64 [ %.sroa.015.2.i.i.i.i, %bb.d ], [ 1, %bb.b ], !dbg !116197 ; 2 uses
  %.sroa.07.0.i.i.i.i = phi i32 [ %i.l, %bb.d ], [ %i.g, %bb.b ] ; 3 uses
  %.sroa.0.0.i.i.i.i = phi i64 [ %i.m, %bb.d ], [ %2, %bb.b ] ; 3 uses
  %i.i = and i32 %.sroa.07.0.i.i.i.i, 1, !dbg !116198
  %.not.i.i.i.i = icmp eq i32 %i.i, 0, !dbg !116198
  br i1 %.not.i.i.i.i, label %bb.d, label %bb.c, !dbg !116198

bb.c:                                             ; preds = %.preheader21.i.i.i.i
  %i.j = mul i64 %.sroa.0.0.i.i.i.i, %.sroa.015.1.i.i.i.i, !dbg !116199 ; 2 uses
  %i.k = icmp eq i32 %.sroa.07.0.i.i.i.i, 1, !dbg !116200
  br i1 %i.k, label %_RNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops5arity28broadcast_binary_elementwiseNtNtBa_9datatypes10UInt64TypeNtB1w_10UInt32TypeB1u_NCINvNtNtCskY9G75ZWc4U_11polars_expr8dispatch3pow21pow_on_chunked_arraysB1u_B1X_Es_0Es_0B2s_.exit, label %bb.d, !dbg !116200

bb.d:                                             ; preds = %bb.c, %.preheader21.i.i.i.i
  %.sroa.015.2.i.i.i.i = phi i64 [ %i.j, %bb.c ], [ %.sroa.015.1.i.i.i.i, %.preheader21.i.i.i.i ], !dbg !116197
  %i.l = lshr i32 %.sroa.07.0.i.i.i.i, 1, !dbg !116201
  %i.m = mul i64 %.sroa.0.0.i.i.i.i, %.sroa.0.0.i.i.i.i, !dbg !116202
  br label %.preheader21.i.i.i.i, !dbg !116203

_RNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops5arity28broadcast_binary_elementwiseNtNtBa_9datatypes10UInt64TypeNtB1w_10UInt32TypeB1u_NCINvNtNtCskY9G75ZWc4U_11polars_expr8dispatch3pow21pow_on_chunked_arraysB1u_B1X_Es_0Es_0B2s_.exit: ; preds = %bb.c, %bb.a, %bb.b
  %.sroa.4.0.i.i = phi i64 [ undef, %bb.a ], [ 1, %bb.b ], [ %i.j, %bb.c ]
  %.sroa.05.1.i.i = phi i64 [ 0, %bb.a ], [ 1, %bb.b ], [ 1, %bb.c ], !dbg !116204
  %i.n = insertvalue { i64, i64 } poison, i64 %.sroa.05.1.i.i, 0, !dbg !116205
  %i.o = insertvalue { i64, i64 } %i.n, i64 %.sroa.4.0.i.i, 1, !dbg !116205
  ret { i64, i64 } %i.o, !dbg !116206
}

; Function Attrs: nonlazybind uwtable
define hidden { i16, i16 } @_RNvXs1_NtNtNtCscgRAwXFJnXP_4core3ops8function5implsQNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops5arity28broadcast_binary_elementwiseNtNtBZ_9datatypes11Float16TypeB2j_B2j_NCINvNtNtCskY9G75ZWc4U_11polars_expr8dispatch12trigonometry17arctan2_on_floatsB2j_E0E0INtB7_5FnMutTINtNtBb_6option6OptionNtNtCs2mZqlW55729_12polars_utils7float164pf16EEE8call_mutB34_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, i16 noundef range(i16 0, 2) %1, i16 %2) unnamed_addr #2 personality ptr @rust_eh_personality !dbg !116207 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !dbg !116213, !nonnull !2226, !align !2450, !noundef !2226
  %i.b = getelementptr i8, ptr %i.a, i64 8, !dbg !116214
  %.val = load ptr, ptr %i.b, align 8, !dbg !116214, !nonnull !2226, !align !2858, !noundef !2226 ; 2 uses
  %i.c = load i16, ptr %.val, align 2, !dbg !116215, !range !2805, !noundef !2226
  %i.d = trunc nuw i16 %i.c to i1, !dbg !116216
  br i1 %i.d, label %bb.b, label %_RNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops5arity28broadcast_binary_elementwiseNtNtBa_9datatypes11Float16TypeB1u_B1u_NCINvNtNtCskY9G75ZWc4U_11polars_expr8dispatch12trigonometry17arctan2_on_floatsB1u_E0E0B2f_.exit, !dbg !116216

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %.val, i64 2, !dbg !116215
  %.val.i = load i16, ptr %i.e, align 2, !dbg !116217, !noundef !2226
  br label %_RNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops5arity28broadcast_binary_elementwiseNtNtBa_9datatypes11Float16TypeB1u_B1u_NCINvNtNtCskY9G75ZWc4U_11polars_expr8dispatch12trigonometry17arctan2_on_floatsB1u_E0E0B2f_.exit, !dbg !116218

_RNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops5arity28broadcast_binary_elementwiseNtNtBa_9datatypes11Float16TypeB1u_B1u_NCINvNtNtCskY9G75ZWc4U_11polars_expr8dispatch12trigonometry17arctan2_on_floatsB1u_E0E0B2f_.exit: ; preds = %bb.a, %bb.b
  %.sroa.5.0.i = phi i16 [ %.val.i, %bb.b ], [ undef, %bb.a ], !dbg !116219
  %.sroa.01.0.i = phi i16 [ 1, %bb.b ], [ 0, %bb.a ], !dbg !116220
  %i.f = tail call fastcc { i16, i16 } @_RNCINvNtNtCskY9G75ZWc4U_11polars_expr8dispatch12trigonometry17arctan2_on_floatsNtNtCs1LHh8CLbVkQ_11polars_core9datatypes11Float16TypeE0B8_(i16 noundef %.sroa.01.0.i, i16 %.sroa.5.0.i, i16 noundef range(i16 0, 2) %1, i16 %2), !dbg !116221
  ret { i16, i16 } %i.f, !dbg !116222
}

; Function Attrs: nonlazybind uwtable
define hidden { i16, i16 } @_RNvXs1_NtNtNtCscgRAwXFJnXP_4core3ops8function5implsQNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops5arity28broadcast_binary_elementwiseNtNtBZ_9datatypes11Float16TypeB2j_B2j_NCINvNtNtCskY9G75ZWc4U_11polars_expr8dispatch12trigonometry17arctan2_on_floatsB2j_E0Es_0INtB7_5FnMutTINtNtBb_6option6OptionNtNtCs2mZqlW55729_12polars_utils7float164pf16EEE8call_mutB34_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, i16 noundef range(i16 0, 2) %1, i16 %2) unnamed_addr #2 personality ptr @rust_eh_personality !dbg !116223 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !dbg !116229, !nonnull !2226, !align !2450, !noundef !2226
  %i.b = getelementptr i8, ptr %i.a, i64 8, !dbg !116230
  %.val = load ptr, ptr %i.b, align 8, !dbg !116230, !nonnull !2226, !align !2858, !noundef !2226 ; 2 uses
  %i.c = load i16, ptr %.val, align 2, !dbg !116231, !range !2805, !noundef !2226
  %i.d = trunc nuw i16 %i.c to i1, !dbg !116232
  br i1 %i.d, label %bb.b, label %_RNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops5arity28broadcast_binary_elementwiseNtNtBa_9datatypes11Float16TypeB1u_B1u_NCINvNtNtCskY9G75ZWc4U_11polars_expr8dispatch12trigonometry17arctan2_on_floatsB1u_E0Es_0B2f_.exit, !dbg !116232

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %.val, i64 2, !dbg !116231
  %.val.i = load i16, ptr %i.e, align 2, !dbg !116233, !noundef !2226
  br label %_RNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops5arity28broadcast_binary_elementwiseNtNtBa_9datatypes11Float16TypeB1u_B1u_NCINvNtNtCskY9G75ZWc4U_11polars_expr8dispatch12trigonometry17arctan2_on_floatsB1u_E0Es_0B2f_.exit, !dbg !116234

_RNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops5arity28broadcast_binary_elementwiseNtNtBa_9datatypes11Float16TypeB1u_B1u_NCINvNtNtCskY9G75ZWc4U_11polars_expr8dispatch12trigonometry17arctan2_on_floatsB1u_E0Es_0B2f_.exit: ; preds = %bb.a, %bb.b
  %.sroa.5.0.i = phi i16 [ %.val.i, %bb.b ], [ undef, %bb.a ], !dbg !116235
  %.sroa.01.0.i = phi i16 [ 1, %bb.b ], [ 0, %bb.a ], !dbg !116236
  %i.f = tail call fastcc { i16, i16 } @_RNCINvNtNtCskY9G75ZWc4U_11polars_expr8dispatch12trigonometry17arctan2_on_floatsNtNtCs1LHh8CLbVkQ_11polars_core9datatypes11Float16TypeE0B8_(i16 noundef range(i16 0, 2) %1, i16 %2, i16 noundef %.sroa.01.0.i, i16 %.sroa.5.0.i), !dbg !116237
  ret { i16, i16 } %i.f, !dbg !116238
}

; Function Attrs: nonlazybind uwtable
define hidden { i16, i16 } @_RNvXs1_NtNtNtCscgRAwXFJnXP_4core3ops8function5implsQNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops5arity28broadcast_binary_elementwiseNtNtBZ_9datatypes11Float16TypeB2j_B2j_NCINvNtNtCskY9G75ZWc4U_11polars_expr8dispatch3pow21pow_on_chunked_arraysB2j_B2j_Es_0E0INtB7_5FnMutTINtNtBb_6option6OptionNtNtCs2mZqlW55729_12polars_utils7float164pf16EEE8call_mutB34_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, i16 noundef range(i16 0, 2) %1, i16 %2) unnamed_addr #2 personality ptr @rust_eh_personality !dbg !116239 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !dbg !116246, !nonnull !2226, !align !2450, !noundef !2226
  %i.b = getelementptr i8, ptr %i.a, i64 8, !dbg !116247
  %.val = load ptr, ptr %i.b, align 8, !dbg !116247, !nonnull !2226, !align !2858, !noundef !2226 ; 2 uses
  %i.c = load i16, ptr %.val, align 2, !dbg !116248, !range !2805, !noundef !2226
  %.not.i = icmp eq i16 %i.c, 0, !dbg !116249
  %3 = icmp eq i16 %1, 0
  %or.cond.i = or i1 %3, %.not.i, !dbg !116249
  br i1 %or.cond.i, label %_RNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops5arity28broadcast_binary_elementwiseNtNtBa_9datatypes11Float16TypeB1u_B1u_NCINvNtNtCskY9G75ZWc4U_11polars_expr8dispatch3pow21pow_on_chunked_arraysB1u_B1u_Es_0E0B2f_.exit, label %bb.b, !dbg !116249

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %.val, i64 2, !dbg !116248
  %.val.i = load i16, ptr %i.d, align 2, !dbg !116250, !noundef !2226
  %i.e = tail call fastcc noundef i16 @_RNvXs7_NtCs2mZqlW55729_12polars_utils7float16NtB5_4pf16INtNtCslmKYcnV0hjo_10num_traits3pow3PowBH_E3pow(i16 noundef %.val.i, i16 noundef %2) #50, !dbg !116251
  br label %_RNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops5arity28broadcast_binary_elementwiseNtNtBa_9datatypes11Float16TypeB1u_B1u_NCINvNtNtCskY9G75ZWc4U_11polars_expr8dispatch3pow21pow_on_chunked_arraysB1u_B1u_Es_0E0B2f_.exit, !dbg !116252

_RNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops5arity28broadcast_binary_elementwiseNtNtBa_9datatypes11Float16TypeB1u_B1u_NCINvNtNtCskY9G75ZWc4U_11polars_expr8dispatch3pow21pow_on_chunked_arraysB1u_B1u_Es_0E0B2f_.exit: ; preds = %bb.a, %bb.b
  %.sroa.4.0.i.i = phi i16 [ %i.e, %bb.b ], [ undef, %bb.a ]
  %.sroa.05.1.i.i = phi i16 [ 1, %bb.b ], [ 0, %bb.a ], !dbg !116253
  %i.f = insertvalue { i16, i16 } poison, i16 %.sroa.05.1.i.i, 0, !dbg !116252
  %i.g = insertvalue { i16, i16 } %i.f, i16 %.sroa.4.0.i.i, 1, !dbg !116252
  ret { i16, i16 } %i.g, !dbg !116254
}

; Function Attrs: nonlazybind uwtable
define hidden { i16, i16 } @_RNvXs1_NtNtNtCscgRAwXFJnXP_4core3ops8function5implsQNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops5arity28broadcast_binary_elementwiseNtNtBZ_9datatypes11Float16TypeB2j_B2j_NCINvNtNtCskY9G75ZWc4U_11polars_expr8dispatch3pow21pow_on_chunked_arraysB2j_B2j_Es_0Es_0INtB7_5FnMutTINtNtBb_6option6OptionNtNtCs2mZqlW55729_12polars_utils7float164pf16EEE8call_mutB34_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, i16 noundef range(i16 0, 2) %1, i16 %2) unnamed_addr #2 personality ptr @rust_eh_personality !dbg !116255 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !dbg !116262, !nonnull !2226, !align !2450, !noundef !2226
  %i.b = getelementptr i8, ptr %i.a, i64 8, !dbg !116263
  %.val = load ptr, ptr %i.b, align 8, !dbg !116263, !nonnull !2226, !align !2858, !noundef !2226 ; 2 uses
  %i.c = load i16, ptr %.val, align 2, !dbg !116264, !range !2805, !noundef !2226
  %.not.i = icmp eq i16 %i.c, 0, !dbg !116265
  %3 = icmp eq i16 %1, 0
  %or.cond.i = or i1 %3, %.not.i, !dbg !116265
  br i1 %or.cond.i, label %_RNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops5arity28broadcast_binary_elementwiseNtNtBa_9datatypes11Float16TypeB1u_B1u_NCINvNtNtCskY9G75ZWc4U_11polars_expr8dispatch3pow21pow_on_chunked_arraysB1u_B1u_Es_0Es_0B2f_.exit, label %bb.b, !dbg !116265

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %.val, i64 2, !dbg !116264
  %.val.i = load i16, ptr %i.d, align 2, !dbg !116266, !noundef !2226
  %i.e = tail call fastcc noundef i16 @_RNvXs7_NtCs2mZqlW55729_12polars_utils7float16NtB5_4pf16INtNtCslmKYcnV0hjo_10num_traits3pow3PowBH_E3pow(i16 noundef %2, i16 noundef %.val.i) #50, !dbg !116267
  br label %_RNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops5arity28broadcast_binary_elementwiseNtNtBa_9datatypes11Float16TypeB1u_B1u_NCINvNtNtCskY9G75ZWc4U_11polars_expr8dispatch3pow21pow_on_chunked_arraysB1u_B1u_Es_0Es_0B2f_.exit, !dbg !116268

_RNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops5arity28broadcast_binary_elementwiseNtNtBa_9datatypes11Float16TypeB1u_B1u_NCINvNtNtCskY9G75ZWc4U_11polars_expr8dispatch3pow21pow_on_chunked_arraysB1u_B1u_Es_0Es_0B2f_.exit: ; preds = %bb.a, %bb.b
  %.sroa.4.0.i.i = phi i16 [ %i.e, %bb.b ], [ undef, %bb.a ]
  %.sroa.05.1.i.i = phi i16 [ 1, %bb.b ], [ 0, %bb.a ], !dbg !116269
  %i.f = insertvalue { i16, i16 } poison, i16 %.sroa.05.1.i.i, 0, !dbg !116268
  %i.g = insertvalue { i16, i16 } %i.f, i16 %.sroa.4.0.i.i, 1, !dbg !116268
  ret { i16, i16 } %i.g, !dbg !116270
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, inaccessiblemem: none, errnomem: readwrite, target_mem: none) uwtable
define hidden { i32, float } @_RNvXs1_NtNtNtCscgRAwXFJnXP_4core3ops8function5implsQNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops5arity28broadcast_binary_elementwiseNtNtBZ_9datatypes11Float32TypeB2j_B2j_NCINvNtNtCskY9G75ZWc4U_11polars_expr8dispatch12trigonometry17arctan2_on_floatsB2j_E0E0INtB7_5FnMutTINtNtBb_6option6OptionfEEE8call_mutB34_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, i32 noundef range(i32 0, 2) %1, float %2) unnamed_addr #22 personality ptr @rust_eh_personality !dbg !116271 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !dbg !116284, !nonnull !2226, !align !2450, !noundef !2226
  %i.b = getelementptr i8, ptr %i.a, i64 8, !dbg !116285
  %.val = load ptr, ptr %i.b, align 8, !dbg !116285, !nonnull !2226, !align !2881, !noundef !2226 ; 2 uses
  %i.c = load i32, ptr %.val, align 4, !dbg !116286, !range !2809, !noundef !2226
  %.not.i = icmp eq i32 %i.c, 0, !dbg !116287
  %3 = icmp eq i32 %1, 0
  %or.cond.i = or i1 %3, %.not.i, !dbg !116287
  br i1 %or.cond.i, label %_RNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops5arity28broadcast_binary_elementwiseNtNtBa_9datatypes11Float32TypeB1u_B1u_NCINvNtNtCskY9G75ZWc4U_11polars_expr8dispatch12trigonometry17arctan2_on_floatsB1u_E0E0B2f_.exit, label %bb.b, !dbg !116287

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %.val, i64 4, !dbg !116286
  %i.e = load float, ptr %i.d, align 4, !dbg !116288, !alias.scope !116283, !noundef !2226
  %i.f = tail call noundef float @atan2f(float noundef %i.e, float noundef %2) #56, !dbg !116289
  br label %_RNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops5arity28broadcast_binary_elementwiseNtNtBa_9datatypes11Float32TypeB1u_B1u_NCINvNtNtCskY9G75ZWc4U_11polars_expr8dispatch12trigonometry17arctan2_on_floatsB1u_E0E0B2f_.exit, !dbg !116290

_RNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops5arity28broadcast_binary_elementwiseNtNtBa_9datatypes11Float32TypeB1u_B1u_NCINvNtNtCskY9G75ZWc4U_11polars_expr8dispatch12trigonometry17arctan2_on_floatsB1u_E0E0B2f_.exit: ; preds = %bb.a, %bb.b
  %.sroa.4.0.i.i = phi float [ %i.f, %bb.b ], [ undef, %bb.a ]
  %.sroa.05.1.i.i = phi i32 [ 1, %bb.b ], [ 0, %bb.a ], !dbg !116291
  %i.g = insertvalue { i32, float } poison, i32 %.sroa.05.1.i.i, 0, !dbg !116290
  %i.h = insertvalue { i32, float } %i.g, float %.sroa.4.0.i.i, 1, !dbg !116290
  ret { i32, float } %i.h, !dbg !116292
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, inaccessiblemem: none, errnomem: readwrite, target_mem: none) uwtable
define hidden { i32, float } @_RNvXs1_NtNtNtCscgRAwXFJnXP_4core3ops8function5implsQNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops5arity28broadcast_binary_elementwiseNtNtBZ_9datatypes11Float32TypeB2j_B2j_NCINvNtNtCskY9G75ZWc4U_11polars_expr8dispatch12trigonometry17arctan2_on_floatsB2j_E0Es_0INtB7_5FnMutTINtNtBb_6option6OptionfEEE8call_mutB34_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, i32 noundef range(i32 0, 2) %1, float %2) unnamed_addr #22 personality ptr @rust_eh_personality !dbg !116293 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !dbg !116306, !nonnull !2226, !align !2450, !noundef !2226
  %i.b = getelementptr i8, ptr %i.a, i64 8, !dbg !116307
  %.val = load ptr, ptr %i.b, align 8, !dbg !116307, !nonnull !2226, !align !2881, !noundef !2226 ; 2 uses
  %i.c = load i32, ptr %.val, align 4, !dbg !116308, !range !2809, !noundef !2226
  %.not.i = icmp eq i32 %i.c, 0, !dbg !116309
  %3 = icmp eq i32 %1, 0
  %or.cond.i = or i1 %3, %.not.i, !dbg !116309
  br i1 %or.cond.i, label %_RNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops5arity28broadcast_binary_elementwiseNtNtBa_9datatypes11Float32TypeB1u_B1u_NCINvNtNtCskY9G75ZWc4U_11polars_expr8dispatch12trigonometry17arctan2_on_floatsB1u_E0Es_0B2f_.exit, label %bb.b, !dbg !116309

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %.val, i64 4, !dbg !116308
  %i.e = load float, ptr %i.d, align 4, !dbg !116310, !alias.scope !116305, !noundef !2226
  %i.f = tail call noundef float @atan2f(float noundef %2, float noundef %i.e) #56, !dbg !116311
  br label %_RNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops5arity28broadcast_binary_elementwiseNtNtBa_9datatypes11Float32TypeB1u_B1u_NCINvNtNtCskY9G75ZWc4U_11polars_expr8dispatch12trigonometry17arctan2_on_floatsB1u_E0Es_0B2f_.exit, !dbg !116312

_RNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops5arity28broadcast_binary_elementwiseNtNtBa_9datatypes11Float32TypeB1u_B1u_NCINvNtNtCskY9G75ZWc4U_11polars_expr8dispatch12trigonometry17arctan2_on_floatsB1u_E0Es_0B2f_.exit: ; preds = %bb.a, %bb.b
  %.sroa.4.0.i.i = phi float [ %i.f, %bb.b ], [ undef, %bb.a ]
  %.sroa.05.1.i.i = phi i32 [ 1, %bb.b ], [ 0, %bb.a ], !dbg !116313
  %i.g = insertvalue { i32, float } poison, i32 %.sroa.05.1.i.i, 0, !dbg !116312
  %i.h = insertvalue { i32, float } %i.g, float %.sroa.4.0.i.i, 1, !dbg !116312
  ret { i32, float } %i.h, !dbg !116314
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden { i32, float } @_RNvXs1_NtNtNtCscgRAwXFJnXP_4core3ops8function5implsQNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops5arity28broadcast_binary_elementwiseNtNtBZ_9datatypes11Float32TypeB2j_B2j_NCINvNtNtCskY9G75ZWc4U_11polars_expr8dispatch3pow21pow_on_chunked_arraysB2j_B2j_Es_0E0INtB7_5FnMutTINtNtBb_6option6OptionfEEE8call_mutB34_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, i32 noundef range(i32 0, 2) %1, float %2) unnamed_addr #23 personality ptr @rust_eh_personality !dbg !116315 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !dbg !116327, !nonnull !2226, !align !2450, !noundef !2226
  %i.b = getelementptr i8, ptr %i.a, i64 8, !dbg !116328
  %.val = load ptr, ptr %i.b, align 8, !dbg !116328, !nonnull !2226, !align !2881, !noundef !2226 ; 2 uses
  %i.c = load i32, ptr %.val, align 4, !dbg !116329, !range !2809, !noundef !2226
  %i.d = trunc nuw i32 %i.c to i1, !dbg !116330
  br i1 %i.d, label %bb.b, label %_RNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops5arity28broadcast_binary_elementwiseNtNtBa_9datatypes11Float32TypeB1u_B1u_NCINvNtNtCskY9G75ZWc4U_11polars_expr8dispatch3pow21pow_on_chunked_arraysB1u_B1u_Es_0E0B2f_.exit, !dbg !116330

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %.val, i64 4, !dbg !116329
  %i.f = load float, ptr %i.e, align 4, !dbg !116331, !alias.scope !116326, !noundef !2226
  %i.g = tail call float @llvm.pow.f32(float %i.f, float %2), !dbg !116332
  br label %_RNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops5arity28broadcast_binary_elementwiseNtNtBa_9datatypes11Float32TypeB1u_B1u_NCINvNtNtCskY9G75ZWc4U_11polars_expr8dispatch3pow21pow_on_chunked_arraysB1u_B1u_Es_0E0B2f_.exit, !dbg !116332

_RNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops5arity28broadcast_binary_elementwiseNtNtBa_9datatypes11Float32TypeB1u_B1u_NCINvNtNtCskY9G75ZWc4U_11polars_expr8dispatch3pow21pow_on_chunked_arraysB1u_B1u_Es_0E0B2f_.exit: ; preds = %bb.a, %bb.b
  %.sroa.01.04.i = phi i32 [ 0, %bb.a ], [ %1, %bb.b ]
  %i.h = phi float [ undef, %bb.a ], [ %i.g, %bb.b ], !dbg !116332
  %i.i = insertvalue { i32, float } poison, i32 %.sroa.01.04.i, 0, !dbg !116333
  %i.j = insertvalue { i32, float } %i.i, float %i.h, 1, !dbg !116333
  ret { i32, float } %i.j, !dbg !116334
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden { i32, float } @_RNvXs1_NtNtNtCscgRAwXFJnXP_4core3ops8function5implsQNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops5arity28broadcast_binary_elementwiseNtNtBZ_9datatypes11Float32TypeB2j_B2j_NCINvNtNtCskY9G75ZWc4U_11polars_expr8dispatch3pow21pow_on_chunked_arraysB2j_B2j_Es_0Es_0INtB7_5FnMutTINtNtBb_6option6OptionfEEE8call_mutB34_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, i32 noundef range(i32 0, 2) %1, float %2) unnamed_addr #23 personality ptr @rust_eh_personality !dbg !116335 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !dbg !116347, !nonnull !2226, !align !2450, !noundef !2226
  %i.b = getelementptr i8, ptr %i.a, i64 8, !dbg !116348
  %.val = load ptr, ptr %i.b, align 8, !dbg !116348, !nonnull !2226, !align !2881, !noundef !2226 ; 2 uses
  %i.c = load i32, ptr %.val, align 4, !dbg !116349, !range !2809, !noundef !2226
  %i.d = trunc nuw i32 %i.c to i1, !dbg !116350
  br i1 %i.d, label %bb.b, label %_RNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops5arity28broadcast_binary_elementwiseNtNtBa_9datatypes11Float32TypeB1u_B1u_NCINvNtNtCskY9G75ZWc4U_11polars_expr8dispatch3pow21pow_on_chunked_arraysB1u_B1u_Es_0Es_0B2f_.exit, !dbg !116350

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %.val, i64 4, !dbg !116349
  %i.f = load float, ptr %i.e, align 4, !dbg !116351, !alias.scope !116346, !noundef !2226
  %i.g = tail call float @llvm.pow.f32(float %2, float %i.f), !dbg !116352
  br label %_RNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops5arity28broadcast_binary_elementwiseNtNtBa_9datatypes11Float32TypeB1u_B1u_NCINvNtNtCskY9G75ZWc4U_11polars_expr8dispatch3pow21pow_on_chunked_arraysB1u_B1u_Es_0Es_0B2f_.exit, !dbg !116352

_RNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops5arity28broadcast_binary_elementwiseNtNtBa_9datatypes11Float32TypeB1u_B1u_NCINvNtNtCskY9G75ZWc4U_11polars_expr8dispatch3pow21pow_on_chunked_arraysB1u_B1u_Es_0Es_0B2f_.exit: ; preds = %bb.a, %bb.b
  %.sroa.01.04.i = phi i32 [ 0, %bb.a ], [ %1, %bb.b ]
  %i.h = phi float [ undef, %bb.a ], [ %i.g, %bb.b ], !dbg !116352
  %i.i = insertvalue { i32, float } poison, i32 %.sroa.01.04.i, 0, !dbg !116353
  %i.j = insertvalue { i32, float } %i.i, float %i.h, 1, !dbg !116353
  ret { i32, float } %i.j, !dbg !116354
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, inaccessiblemem: none, errnomem: readwrite, target_mem: none) uwtable
define hidden { i64, double } @_RNvXs1_NtNtNtCscgRAwXFJnXP_4core3ops8function5implsQNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops5arity28broadcast_binary_elementwiseNtNtBZ_9datatypes11Float64TypeB2j_B2j_NCINvNtNtCskY9G75ZWc4U_11polars_expr8dispatch12trigonometry17arctan2_on_floatsB2j_E0E0INtB7_5FnMutTINtNtBb_6option6OptiondEEE8call_mutB34_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, i64 noundef range(i64 0, 2) %1, double %2) unnamed_addr #22 personality ptr @rust_eh_personality !dbg !116355 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !dbg !116368, !nonnull !2226, !align !2450, !noundef !2226
  %i.b = getelementptr i8, ptr %i.a, i64 8, !dbg !116369
  %.val = load ptr, ptr %i.b, align 8, !dbg !116369, !nonnull !2226, !align !2450, !noundef !2226 ; 2 uses
  %i.c = load i64, ptr %.val, align 8, !dbg !116370, !range !2367, !noundef !2226
  %.not.i = icmp eq i64 %i.c, 0, !dbg !116371
  %3 = icmp eq i64 %1, 0
  %or.cond.i = or i1 %3, %.not.i, !dbg !116371
  br i1 %or.cond.i, label %_RNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops5arity28broadcast_binary_elementwiseNtNtBa_9datatypes11Float64TypeB1u_B1u_NCINvNtNtCskY9G75ZWc4U_11polars_expr8dispatch12trigonometry17arctan2_on_floatsB1u_E0E0B2f_.exit, label %bb.b, !dbg !116371

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %.val, i64 8, !dbg !116370
  %i.e = load double, ptr %i.d, align 8, !dbg !116372, !alias.scope !116367, !noundef !2226
  %i.f = tail call noundef double @atan2(double noundef %i.e, double noundef %2) #56, !dbg !116373
  br label %_RNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops5arity28broadcast_binary_elementwiseNtNtBa_9datatypes11Float64TypeB1u_B1u_NCINvNtNtCskY9G75ZWc4U_11polars_expr8dispatch12trigonometry17arctan2_on_floatsB1u_E0E0B2f_.exit, !dbg !116374

_RNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops5arity28broadcast_binary_elementwiseNtNtBa_9datatypes11Float64TypeB1u_B1u_NCINvNtNtCskY9G75ZWc4U_11polars_expr8dispatch12trigonometry17arctan2_on_floatsB1u_E0E0B2f_.exit: ; preds = %bb.a, %bb.b
  %.sroa.4.0.i.i = phi double [ %i.f, %bb.b ], [ undef, %bb.a ]
  %.sroa.05.1.i.i = phi i64 [ 1, %bb.b ], [ 0, %bb.a ], !dbg !116375
  %i.g = insertvalue { i64, double } poison, i64 %.sroa.05.1.i.i, 0, !dbg !116374
  %i.h = insertvalue { i64, double } %i.g, double %.sroa.4.0.i.i, 1, !dbg !116374
  ret { i64, double } %i.h, !dbg !116376
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, inaccessiblemem: none, errnomem: readwrite, target_mem: none) uwtable
define hidden { i64, double } @_RNvXs1_NtNtNtCscgRAwXFJnXP_4core3ops8function5implsQNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops5arity28broadcast_binary_elementwiseNtNtBZ_9datatypes11Float64TypeB2j_B2j_NCINvNtNtCskY9G75ZWc4U_11polars_expr8dispatch12trigonometry17arctan2_on_floatsB2j_E0Es_0INtB7_5FnMutTINtNtBb_6option6OptiondEEE8call_mutB34_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, i64 noundef range(i64 0, 2) %1, double %2) unnamed_addr #22 personality ptr @rust_eh_personality !dbg !116377 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !dbg !116390, !nonnull !2226, !align !2450, !noundef !2226
  %i.b = getelementptr i8, ptr %i.a, i64 8, !dbg !116391
  %.val = load ptr, ptr %i.b, align 8, !dbg !116391, !nonnull !2226, !align !2450, !noundef !2226 ; 2 uses
  %i.c = load i64, ptr %.val, align 8, !dbg !116392, !range !2367, !noundef !2226
  %.not.i = icmp eq i64 %i.c, 0, !dbg !116393
  %3 = icmp eq i64 %1, 0
  %or.cond.i = or i1 %3, %.not.i, !dbg !116393
  br i1 %or.cond.i, label %_RNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops5arity28broadcast_binary_elementwiseNtNtBa_9datatypes11Float64TypeB1u_B1u_NCINvNtNtCskY9G75ZWc4U_11polars_expr8dispatch12trigonometry17arctan2_on_floatsB1u_E0Es_0B2f_.exit, label %bb.b, !dbg !116393

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %.val, i64 8, !dbg !116392
  %i.e = load double, ptr %i.d, align 8, !dbg !116394, !alias.scope !116389, !noundef !2226
  %i.f = tail call noundef double @atan2(double noundef %2, double noundef %i.e) #56, !dbg !116395
  br label %_RNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops5arity28broadcast_binary_elementwiseNtNtBa_9datatypes11Float64TypeB1u_B1u_NCINvNtNtCskY9G75ZWc4U_11polars_expr8dispatch12trigonometry17arctan2_on_floatsB1u_E0Es_0B2f_.exit, !dbg !116396

_RNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops5arity28broadcast_binary_elementwiseNtNtBa_9datatypes11Float64TypeB1u_B1u_NCINvNtNtCskY9G75ZWc4U_11polars_expr8dispatch12trigonometry17arctan2_on_floatsB1u_E0Es_0B2f_.exit: ; preds = %bb.a, %bb.b
  %.sroa.4.0.i.i = phi double [ %i.f, %bb.b ], [ undef, %bb.a ]
  %.sroa.05.1.i.i = phi i64 [ 1, %bb.b ], [ 0, %bb.a ], !dbg !116397
  %i.g = insertvalue { i64, double } poison, i64 %.sroa.05.1.i.i, 0, !dbg !116396
  %i.h = insertvalue { i64, double } %i.g, double %.sroa.4.0.i.i, 1, !dbg !116396
  ret { i64, double } %i.h, !dbg !116398
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden { i64, double } @_RNvXs1_NtNtNtCscgRAwXFJnXP_4core3ops8function5implsQNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops5arity28broadcast_binary_elementwiseNtNtBZ_9datatypes11Float64TypeB2j_B2j_NCINvNtNtCskY9G75ZWc4U_11polars_expr8dispatch3pow21pow_on_chunked_arraysB2j_B2j_Es_0E0INtB7_5FnMutTINtNtBb_6option6OptiondEEE8call_mutB34_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, i64 noundef range(i64 0, 2) %1, double %2) unnamed_addr #23 personality ptr @rust_eh_personality !dbg !116399 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !dbg !116411, !nonnull !2226, !align !2450, !noundef !2226
  %i.b = getelementptr i8, ptr %i.a, i64 8, !dbg !116412
  %.val = load ptr, ptr %i.b, align 8, !dbg !116412, !nonnull !2226, !align !2450, !noundef !2226 ; 2 uses
  %i.c = load i64, ptr %.val, align 8, !dbg !116413, !range !2367, !noundef !2226
  %i.d = trunc nuw i64 %i.c to i1, !dbg !116414
  br i1 %i.d, label %bb.b, label %_RNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops5arity28broadcast_binary_elementwiseNtNtBa_9datatypes11Float64TypeB1u_B1u_NCINvNtNtCskY9G75ZWc4U_11polars_expr8dispatch3pow21pow_on_chunked_arraysB1u_B1u_Es_0E0B2f_.exit, !dbg !116414

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %.val, i64 8, !dbg !116413
  %i.f = load double, ptr %i.e, align 8, !dbg !116415, !alias.scope !116410, !noundef !2226
  %i.g = tail call double @llvm.pow.f64(double %i.f, double %2), !dbg !116416
  br label %_RNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops5arity28broadcast_binary_elementwiseNtNtBa_9datatypes11Float64TypeB1u_B1u_NCINvNtNtCskY9G75ZWc4U_11polars_expr8dispatch3pow21pow_on_chunked_arraysB1u_B1u_Es_0E0B2f_.exit, !dbg !116416

_RNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops5arity28broadcast_binary_elementwiseNtNtBa_9datatypes11Float64TypeB1u_B1u_NCINvNtNtCskY9G75ZWc4U_11polars_expr8dispatch3pow21pow_on_chunked_arraysB1u_B1u_Es_0E0B2f_.exit: ; preds = %bb.a, %bb.b
  %.sroa.01.04.i = phi i64 [ 0, %bb.a ], [ %1, %bb.b ]
  %i.h = phi double [ undef, %bb.a ], [ %i.g, %bb.b ], !dbg !116416
  %i.i = insertvalue { i64, double } poison, i64 %.sroa.01.04.i, 0, !dbg !116417
  %i.j = insertvalue { i64, double } %i.i, double %i.h, 1, !dbg !116417
  ret { i64, double } %i.j, !dbg !116418
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden { i64, double } @_RNvXs1_NtNtNtCscgRAwXFJnXP_4core3ops8function5implsQNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops5arity28broadcast_binary_elementwiseNtNtBZ_9datatypes11Float64TypeB2j_B2j_NCINvNtNtCskY9G75ZWc4U_11polars_expr8dispatch3pow21pow_on_chunked_arraysB2j_B2j_Es_0Es_0INtB7_5FnMutTINtNtBb_6option6OptiondEEE8call_mutB34_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, i64 noundef range(i64 0, 2) %1, double %2) unnamed_addr #23 personality ptr @rust_eh_personality !dbg !116419 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !dbg !116431, !nonnull !2226, !align !2450, !noundef !2226
  %i.b = getelementptr i8, ptr %i.a, i64 8, !dbg !116432
  %.val = load ptr, ptr %i.b, align 8, !dbg !116432, !nonnull !2226, !align !2450, !noundef !2226 ; 2 uses
  %i.c = load i64, ptr %.val, align 8, !dbg !116433, !range !2367, !noundef !2226
  %i.d = trunc nuw i64 %i.c to i1, !dbg !116434
  br i1 %i.d, label %bb.b, label %_RNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops5arity28broadcast_binary_elementwiseNtNtBa_9datatypes11Float64TypeB1u_B1u_NCINvNtNtCskY9G75ZWc4U_11polars_expr8dispatch3pow21pow_on_chunked_arraysB1u_B1u_Es_0Es_0B2f_.exit, !dbg !116434

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %.val, i64 8, !dbg !116433
  %i.f = load double, ptr %i.e, align 8, !dbg !116435, !alias.scope !116430, !noundef !2226
  %i.g = tail call double @llvm.pow.f64(double %2, double %i.f), !dbg !116436
  br label %_RNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops5arity28broadcast_binary_elementwiseNtNtBa_9datatypes11Float64TypeB1u_B1u_NCINvNtNtCskY9G75ZWc4U_11polars_expr8dispatch3pow21pow_on_chunked_arraysB1u_B1u_Es_0Es_0B2f_.exit, !dbg !116436

_RNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops5arity28broadcast_binary_elementwiseNtNtBa_9datatypes11Float64TypeB1u_B1u_NCINvNtNtCskY9G75ZWc4U_11polars_expr8dispatch3pow21pow_on_chunked_arraysB1u_B1u_Es_0Es_0B2f_.exit: ; preds = %bb.a, %bb.b
  %.sroa.01.04.i = phi i64 [ 0, %bb.a ], [ %1, %bb.b ]
  %i.h = phi double [ undef, %bb.a ], [ %i.g, %bb.b ], !dbg !116436
  %i.i = insertvalue { i64, double } poison, i64 %.sroa.01.04.i, 0, !dbg !116437
  %i.j = insertvalue { i64, double } %i.i, double %i.h, 1, !dbg !116437
  ret { i64, double } %i.j, !dbg !116438
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(read, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable
define hidden void @_RNvXs1_NtNtNtCscgRAwXFJnXP_4core3ops8function5implsQNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops5arity28broadcast_binary_elementwiseNtNtBZ_9datatypes11UInt128TypeNtB2l_10UInt32TypeB2j_NCINvNtNtCskY9G75ZWc4U_11polars_expr8dispatch3pow21pow_on_chunked_arraysB2j_B2N_Es_0E0INtB7_5FnMutTINtNtBb_6option6OptionmEEE8call_mutB3i_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 16 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %1, i32 noundef range(i32 0, 2) %2, i32 %3) unnamed_addr #13 personality ptr @rust_eh_personality !dbg !116439 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !dbg !116460, !nonnull !2226, !align !2450, !noundef !2226
  %i.b = getelementptr i8, ptr %i.a, i64 8, !dbg !116461
  %.val = load ptr, ptr %i.b, align 8, !dbg !116461, !nonnull !2226, !align !3118, !noundef !2226 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !116456), !dbg !116461
  %i.c = load i128, ptr %.val, align 16, !dbg !116462, !range !2708, !noalias !116456, !noundef !2226
  %i.d = trunc nuw i128 %i.c to i1, !dbg !116463
  %i.e = trunc nuw i32 %2 to i1
  %or.cond = select i1 %i.d, i1 %i.e, i1 false, !dbg !116463
  br i1 %or.cond, label %bb.b, label %_RNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops5arity28broadcast_binary_elementwiseNtNtBa_9datatypes11UInt128TypeNtB1w_10UInt32TypeB1u_NCINvNtNtCskY9G75ZWc4U_11polars_expr8dispatch3pow21pow_on_chunked_arraysB1u_B1Y_Es_0E0B2t_.exit, !dbg !116463

bb.b:                                             ; preds = %bb.a
  %i.f = icmp eq i32 %3, 0, !dbg !116464
  br i1 %i.f, label %_RNvXs2a_NtCslmKYcnV0hjo_10num_traits3powoINtB6_3PowmE3pow.exit.i.i, label %.preheader21.i.i.i.i.preheader, !dbg !116464

.preheader21.i.i.i.i.preheader:                   ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %.val, i64 16, !dbg !116462
  %i.h = load i128, ptr %i.g, align 16, !dbg !116465, !alias.scope !116457, !noalias !116456, !noundef !2226
  br label %.preheader21.i.i.i.i, !dbg !116466

.preheader21.i.i.i.i:                             ; preds = %.preheader21.i.i.i.i.preheader, %bb.d
  %.sroa.015.1.i.i.i.i = phi i128 [ %.sroa.015.2.i.i.i.i, %bb.d ], [ 1, %.preheader21.i.i.i.i.preheader ], !dbg !116467 ; 2 uses
  %.sroa.07.0.i.i.i.i = phi i32 [ %i.l, %bb.d ], [ %3, %.preheader21.i.i.i.i.preheader ] ; 3 uses
  %.sroa.0.0.i.i.i.i = phi i128 [ %i.m, %bb.d ], [ %i.h, %.preheader21.i.i.i.i.preheader ] ; 3 uses
  %i.i = and i32 %.sroa.07.0.i.i.i.i, 1, !dbg !116466
  %.not.i.i.i.i = icmp eq i32 %i.i, 0, !dbg !116466
  br i1 %.not.i.i.i.i, label %bb.d, label %bb.c, !dbg !116466

bb.c:                                             ; preds = %.preheader21.i.i.i.i
  %i.j = mul i128 %.sroa.0.0.i.i.i.i, %.sroa.015.1.i.i.i.i, !dbg !116468 ; 2 uses
  %i.k = icmp eq i32 %.sroa.07.0.i.i.i.i, 1, !dbg !116469
  br i1 %i.k, label %_RNvXs2a_NtCslmKYcnV0hjo_10num_traits3powoINtB6_3PowmE3pow.exit.i.i, label %bb.d, !dbg !116469

bb.d:                                             ; preds = %bb.c, %.preheader21.i.i.i.i
  %.sroa.015.2.i.i.i.i = phi i128 [ %i.j, %bb.c ], [ %.sroa.015.1.i.i.i.i, %.preheader21.i.i.i.i ], !dbg !116467
  %i.l = lshr i32 %.sroa.07.0.i.i.i.i, 1, !dbg !116470
  %i.m = mul i128 %.sroa.0.0.i.i.i.i, %.sroa.0.0.i.i.i.i, !dbg !116471
  br label %.preheader21.i.i.i.i, !dbg !116472

_RNvXs2a_NtCslmKYcnV0hjo_10num_traits3powoINtB6_3PowmE3pow.exit.i.i: ; preds = %bb.c, %bb.b
  %.sroa.015.0.i.i.i.i = phi i128 [ 1, %bb.b ], [ %i.j, %bb.c ], !dbg !116473
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !116474
  store i128 %.sroa.015.0.i.i.i.i, ptr %i.n, align 16, !dbg !116474, !alias.scope !116459
  br label %_RNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops5arity28broadcast_binary_elementwiseNtNtBa_9datatypes11UInt128TypeNtB1w_10UInt32TypeB1u_NCINvNtNtCskY9G75ZWc4U_11polars_expr8dispatch3pow21pow_on_chunked_arraysB1u_B1Y_Es_0E0B2t_.exit, !dbg !116475

_RNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops5arity28broadcast_binary_elementwiseNtNtBa_9datatypes11UInt128TypeNtB1w_10UInt32TypeB1u_NCINvNtNtCskY9G75ZWc4U_11polars_expr8dispatch3pow21pow_on_chunked_arraysB1u_B1Y_Es_0E0B2t_.exit: ; preds = %bb.a, %_RNvXs2a_NtCslmKYcnV0hjo_10num_traits3powoINtB6_3PowmE3pow.exit.i.i
  %storemerge.i.i = phi i128 [ 1, %_RNvXs2a_NtCslmKYcnV0hjo_10num_traits3powoINtB6_3PowmE3pow.exit.i.i ], [ 0, %bb.a ], !dbg !116476
  store i128 %storemerge.i.i, ptr %0, align 16, !dbg !116476, !alias.scope !116459
  ret void, !dbg !116477
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(read, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable
define hidden void @_RNvXs1_NtNtNtCscgRAwXFJnXP_4core3ops8function5implsQNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops5arity28broadcast_binary_elementwiseNtNtBZ_9datatypes11UInt128TypeNtB2l_10UInt32TypeB2j_NCINvNtNtCskY9G75ZWc4U_11polars_expr8dispatch3pow21pow_on_chunked_arraysB2j_B2N_Es_0Es_0INtB7_5FnMutTINtNtBb_6option6OptionoEEE8call_mutB3i_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 16 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %1, i128 noundef range(i128 0, 2) %2, i128 %3) unnamed_addr #13 personality ptr @rust_eh_personality !dbg !116478 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !dbg !116497, !nonnull !2226, !align !2450, !noundef !2226
  %i.b = getelementptr i8, ptr %i.a, i64 8, !dbg !116498
  %.val = load ptr, ptr %i.b, align 8, !dbg !116498, !nonnull !2226, !align !2881, !noundef !2226 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !116494), !dbg !116498
  %i.c = load i32, ptr %.val, align 4, !dbg !116499, !range !2809, !noalias !116494, !noundef !2226
  %i.d = trunc nuw i32 %i.c to i1, !dbg !116500
  %i.e = trunc nuw i128 %2 to i1
  %or.cond = select i1 %i.d, i1 %i.e, i1 false, !dbg !116500
  br i1 %or.cond, label %bb.b, label %_RNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops5arity28broadcast_binary_elementwiseNtNtBa_9datatypes11UInt128TypeNtB1w_10UInt32TypeB1u_NCINvNtNtCskY9G75ZWc4U_11polars_expr8dispatch3pow21pow_on_chunked_arraysB1u_B1Y_Es_0Es_0B2t_.exit, !dbg !116500

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %.val, i64 4, !dbg !116499
  %i.g = load i32, ptr %i.f, align 4, !dbg !116501, !alias.scope !116495, !noalias !116494, !noundef !2226 ; 2 uses
  %i.h = icmp eq i32 %i.g, 0, !dbg !116502
  br i1 %i.h, label %_RNvXs2a_NtCslmKYcnV0hjo_10num_traits3powoINtB6_3PowmE3pow.exit.i.i, label %.preheader21.i.i.i.i, !dbg !116502

.preheader21.i.i.i.i:                             ; preds = %bb.b, %bb.d
  %.sroa.015.1.i.i.i.i = phi i128 [ %.sroa.015.2.i.i.i.i, %bb.d ], [ 1, %bb.b ], !dbg !116503 ; 2 uses
  %.sroa.07.0.i.i.i.i = phi i32 [ %i.l, %bb.d ], [ %i.g, %bb.b ] ; 3 uses
  %.sroa.0.0.i.i.i.i = phi i128 [ %i.m, %bb.d ], [ %3, %bb.b ] ; 3 uses
  %i.i = and i32 %.sroa.07.0.i.i.i.i, 1, !dbg !116504
  %.not.i.i.i.i = icmp eq i32 %i.i, 0, !dbg !116504
  br i1 %.not.i.i.i.i, label %bb.d, label %bb.c, !dbg !116504

bb.c:                                             ; preds = %.preheader21.i.i.i.i
  %i.j = mul i128 %.sroa.0.0.i.i.i.i, %.sroa.015.1.i.i.i.i, !dbg !116505 ; 2 uses
  %i.k = icmp eq i32 %.sroa.07.0.i.i.i.i, 1, !dbg !116506
  br i1 %i.k, label %_RNvXs2a_NtCslmKYcnV0hjo_10num_traits3powoINtB6_3PowmE3pow.exit.i.i, label %bb.d, !dbg !116506

bb.d:                                             ; preds = %bb.c, %.preheader21.i.i.i.i
  %.sroa.015.2.i.i.i.i = phi i128 [ %i.j, %bb.c ], [ %.sroa.015.1.i.i.i.i, %.preheader21.i.i.i.i ], !dbg !116503
  %i.l = lshr i32 %.sroa.07.0.i.i.i.i, 1, !dbg !116507
  %i.m = mul i128 %.sroa.0.0.i.i.i.i, %.sroa.0.0.i.i.i.i, !dbg !116508
  br label %.preheader21.i.i.i.i, !dbg !116509

_RNvXs2a_NtCslmKYcnV0hjo_10num_traits3powoINtB6_3PowmE3pow.exit.i.i: ; preds = %bb.c, %bb.b
  %.sroa.015.0.i.i.i.i = phi i128 [ 1, %bb.b ], [ %i.j, %bb.c ], !dbg !116510
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !116511
  store i128 %.sroa.015.0.i.i.i.i, ptr %i.n, align 16, !dbg !116511, !alias.scope !116496
  br label %_RNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops5arity28broadcast_binary_elementwiseNtNtBa_9datatypes11UInt128TypeNtB1w_10UInt32TypeB1u_NCINvNtNtCskY9G75ZWc4U_11polars_expr8dispatch3pow21pow_on_chunked_arraysB1u_B1Y_Es_0Es_0B2t_.exit, !dbg !116512

_RNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops5arity28broadcast_binary_elementwiseNtNtBa_9datatypes11UInt128TypeNtB1w_10UInt32TypeB1u_NCINvNtNtCskY9G75ZWc4U_11polars_expr8dispatch3pow21pow_on_chunked_arraysB1u_B1Y_Es_0Es_0B2t_.exit: ; preds = %bb.a, %_RNvXs2a_NtCslmKYcnV0hjo_10num_traits3powoINtB6_3PowmE3pow.exit.i.i
  %storemerge.i.i = phi i128 [ 1, %_RNvXs2a_NtCslmKYcnV0hjo_10num_traits3powoINtB6_3PowmE3pow.exit.i.i ], [ 0, %bb.a ], !dbg !116513
  store i128 %storemerge.i.i, ptr %0, align 16, !dbg !116513, !alias.scope !116496
  ret void, !dbg !116514
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden { i1, i8 } @_RNvXs1_NtNtNtCscgRAwXFJnXP_4core3ops8function5implsQNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops5arity28broadcast_binary_elementwiseNtNtBZ_9datatypes8Int8TypeNtB2l_10UInt32TypeB2j_NCINvNtNtCskY9G75ZWc4U_11polars_expr8dispatch3pow21pow_on_chunked_arraysB2j_B2J_Es_0E0INtB7_5FnMutTINtNtBb_6option6OptionmEEE8call_mutB3e_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, i32 noundef range(i32 0, 2) %1, i32 %2) unnamed_addr #21 personality ptr @rust_eh_personality !dbg !116515 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !dbg !116530, !nonnull !2226, !align !2450, !noundef !2226
  %i.b = getelementptr i8, ptr %i.a, i64 8, !dbg !116531
  %.val = load ptr, ptr %i.b, align 8, !dbg !116531, !nonnull !2226, !noundef !2226 ; 2 uses
  %i.c = load i8, ptr %.val, align 1, !dbg !116532, !range !2229, !noundef !2226
  %i.d = trunc nuw i8 %i.c to i1, !dbg !116532
  %i.e = trunc nuw i32 %1 to i1
  %or.cond = select i1 %i.d, i1 %i.e, i1 false, !dbg !116533
  br i1 %or.cond, label %bb.b, label %_RNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops5arity28broadcast_binary_elementwiseNtNtBa_9datatypes8Int8TypeNtB1w_10UInt32TypeB1u_NCINvNtNtCskY9G75ZWc4U_11polars_expr8dispatch3pow21pow_on_chunked_arraysB1u_B1U_Es_0E0B2p_.exit, !dbg !116533

bb.b:                                             ; preds = %bb.a
  %i.f = icmp eq i32 %2, 0, !dbg !116534
  br i1 %i.f, label %_RNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops5arity28broadcast_binary_elementwiseNtNtBa_9datatypes8Int8TypeNtB1w_10UInt32TypeB1u_NCINvNtNtCskY9G75ZWc4U_11polars_expr8dispatch3pow21pow_on_chunked_arraysB1u_B1U_Es_0E0B2p_.exit, label %.preheader21.i.i.i.i.preheader, !dbg !116534

.preheader21.i.i.i.i.preheader:                   ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %.val, i64 1, !dbg !116532
  %i.h = load i8, ptr %i.g, align 1, !dbg !116535, !alias.scope !116528, !noundef !2226
  br label %.preheader21.i.i.i.i, !dbg !116536

.preheader21.i.i.i.i:                             ; preds = %.preheader21.i.i.i.i.preheader, %bb.d
  %.sroa.015.1.i.i.i.i = phi i8 [ %.sroa.015.2.i.i.i.i, %bb.d ], [ 1, %.preheader21.i.i.i.i.preheader ], !dbg !116537 ; 2 uses
  %.sroa.07.0.i.i.i.i = phi i32 [ %i.l, %bb.d ], [ %2, %.preheader21.i.i.i.i.preheader ] ; 3 uses
  %.sroa.0.0.i.i.i.i = phi i8 [ %i.m, %bb.d ], [ %i.h, %.preheader21.i.i.i.i.preheader ] ; 3 uses
  %i.i = and i32 %.sroa.07.0.i.i.i.i, 1, !dbg !116536
  %.not.i.i.i.i = icmp eq i32 %i.i, 0, !dbg !116536
  br i1 %.not.i.i.i.i, label %bb.d, label %bb.c, !dbg !116536

bb.c:                                             ; preds = %.preheader21.i.i.i.i
  %i.j = mul i8 %.sroa.0.0.i.i.i.i, %.sroa.015.1.i.i.i.i, !dbg !116538 ; 2 uses
  %i.k = icmp eq i32 %.sroa.07.0.i.i.i.i, 1, !dbg !116539
  br i1 %i.k, label %_RNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops5arity28broadcast_binary_elementwiseNtNtBa_9datatypes8Int8TypeNtB1w_10UInt32TypeB1u_NCINvNtNtCskY9G75ZWc4U_11polars_expr8dispatch3pow21pow_on_chunked_arraysB1u_B1U_Es_0E0B2p_.exit, label %bb.d, !dbg !116539

end_hunk_2
begin_hunk_3_@llvm.vector.reduce.umin.v2i64
!115761 = distinct !DILocation(line: 775, column: 40, scope: !115758, inlinedAt: !115759)
!115762 = distinct !DILocation(line: 34, column: 62, scope: !1939, inlinedAt: !115761)
!115763 = distinct !DILocation(line: 39, column: 17, scope: !1364, inlinedAt: !115762)
!115764 = distinct !{!115764, i1 true, !"_RNvXst_NtNtCscgRAwXFJnXP_4core5clone5implsnNtB7_5Clone5clone"}
!115765 = distinct !{!115765, !115764, !"_RNvXst_NtNtCscgRAwXFJnXP_4core5clone5implsnNtB7_5Clone5clone: argument 0"}
!115766 = distinct !DISubprogram(name: "clone", linkageName: "_RNvXst_NtNtCscgRAwXFJnXP_4core5clone5implsnNtB7_5Clone5clone", scope: !115773, file: !2875, line: 614, type: !2227, scopeLine: 614, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2226)
!115767 = distinct !DILexicalBlock(scope: !115757, file: !2281, line: 2278, column: 13)
!115768 = distinct !DILocation(line: 2278, column: 31, scope: !115767, inlinedAt: !115760)
!115769 = distinct !{!115769, i1 true, !"_RNCINvNtNtCskY9G75ZWc4U_11polars_expr8dispatch3pow21pow_on_chunked_arraysNtNtCs1LHh8CLbVkQ_11polars_core9datatypes10Int128TypeNtB1b_10UInt32TypeEs_0B8_"}
!115770 = distinct !{!115770, !115769, !"_RNCINvNtNtCskY9G75ZWc4U_11polars_expr8dispatch3pow21pow_on_chunked_arraysNtNtCs1LHh8CLbVkQ_11polars_core9datatypes10Int128TypeNtB1b_10UInt32TypeEs_0B8_: argument 0"}
!115771 = !{!115756}
!115772 = !{!115765}
!115773 = !DINamespace(name: "{impl#31}", scope: !2877)
!115774 = !{!115770, !115756}
!115775 = !DILocation(line: 298, column: 13, scope: !115754)
!115776 = !DILocation(line: 298, column: 21, scope: !115754)
!115777 = !DILocation(line: 2277, column: 15, scope: !115757, inlinedAt: !115760)
!115778 = !DILocation(line: 2277, column: 9, scope: !115757, inlinedAt: !115760)
!115779 = !DILocation(line: 3086, column: 16, scope: !1363, inlinedAt: !115763)
!115780 = !DILocation(line: 615, column: 25, scope: !115766, inlinedAt: !115768)
!115781 = !DILocation(line: 3112, column: 24, scope: !1366, inlinedAt: !115763)
!115782 = !DILocation(line: 0, scope: !1365, inlinedAt: !115763)
!115783 = !DILocation(line: 3113, column: 31, scope: !1366, inlinedAt: !115763)
!115784 = !DILocation(line: 3115, column: 28, scope: !1366, inlinedAt: !115763)
!115785 = !DILocation(line: 3119, column: 21, scope: !1366, inlinedAt: !115763)
!115786 = !DILocation(line: 3120, column: 28, scope: !1366, inlinedAt: !115763)
!115787 = !DILocation(line: 3111, column: 17, scope: !1366, inlinedAt: !115763)
!115788 = !DILocation(line: 0, scope: !1363, inlinedAt: !115763)
!115789 = !DILocation(line: 34, column: 57, scope: !1939, inlinedAt: !115761)
!115790 = !DILocation(line: 34, column: 79, scope: !1939, inlinedAt: !115761)
!115791 = !DILocation(line: 34, scope: !1939, inlinedAt: !115761)
!115792 = !DILocation(line: 299, column: 10, scope: !115754)
!115793 = distinct !DISubprogram(name: "call_mut<(core::option::Option<i128>), polars_core::chunked_array::ops::arity::broadcast_binary_elementwise::{closure_env#1}<polars_core::datatypes::Int128Type, polars_core::datatypes::UInt32Type, polars_core::datatypes::Int128Type, polars_expr::dispatch::pow::pow_on_chunked_arrays::{closure_env#1}<polars_core::datatypes::Int128Type, polars_core::datatypes::UInt32Type>>>", linkageName: "_RNvXs1_NtNtNtCscgRAwXFJnXP_4core3ops8function5implsQNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops5arity28broadcast_binary_elementwiseNtNtBZ_9datatypes10Int128TypeNtB2l_10UInt32TypeB2j_NCINvNtNtCskY9G75ZWc4U_11polars_expr8dispatch3pow21pow_on_chunked_arraysB2j_B2M_Es_0Es_0INtB7_5FnMutTINtNtBb_6option6OptionnEEE8call_mutB3h_", scope: !2859, file: !2331, line: 297, type: !2227, scopeLine: 297, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2226)
!115794 = distinct !{!115794, i1 true, !"_RNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops5arity28broadcast_binary_elementwiseNtNtBa_9datatypes10Int128TypeNtB1w_10UInt32TypeB1u_NCINvNtNtCskY9G75ZWc4U_11polars_expr8dispatch3pow21pow_on_chunked_arraysB1u_B1X_Es_0Es_0B2s_"}
!115795 = distinct !{!115795, !115794, !"_RNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops5arity28broadcast_binary_elementwiseNtNtBa_9datatypes10Int128TypeNtB1w_10UInt32TypeB1u_NCINvNtNtCskY9G75ZWc4U_11polars_expr8dispatch3pow21pow_on_chunked_arraysB1u_B1X_Es_0Es_0B2s_: argument 0"}
!115796 = distinct !DISubprogram(name: "clone<u32>", linkageName: "_RNvXs4_NtCscgRAwXFJnXP_4core6optionINtB5_6OptionmENtNtB7_5clone5Clone5cloneCskY9G75ZWc4U_11polars_expr", scope: !2982, file: !2281, line: 2276, type: !2227, scopeLine: 2276, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2226)
!115797 = distinct !DISubprogram(name: "{closure#1}<polars_core::datatypes::Int128Type, polars_core::datatypes::UInt32Type, polars_core::datatypes::Int128Type, polars_expr::dispatch::pow::pow_on_chunked_arrays::{closure_env#1}<polars_core::datatypes::Int128Type, polars_core::datatypes::UInt32Type>>", linkageName: "_RNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops5arity28broadcast_binary_elementwiseNtNtBa_9datatypes10Int128TypeNtB1w_10UInt32TypeB1u_NCINvNtNtCskY9G75ZWc4U_11polars_expr8dispatch3pow21pow_on_chunked_arraysB1u_B1X_Es_0Es_0B2s_", scope: !2983, file: !2651, line: 779, type: !2242, scopeLine: 779, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2226)
!115798 = distinct !DILocation(line: 298, column: 21, scope: !115793)
!115799 = distinct !DILocation(line: 779, column: 48, scope: !115797, inlinedAt: !115798)
!115800 = distinct !{!115800, i1 true, !"_RNvXsd_NtNtCscgRAwXFJnXP_4core5clone5implsmNtB7_5Clone5clone"}
!115801 = distinct !{!115801, !115800, !"_RNvXsd_NtNtCscgRAwXFJnXP_4core5clone5implsmNtB7_5Clone5clone: argument 0"}
!115802 = distinct !DILexicalBlock(scope: !115796, file: !2281, line: 2278, column: 13)
!115803 = distinct !DILocation(line: 2278, column: 31, scope: !115802, inlinedAt: !115799)
!115804 = distinct !DILocation(line: 779, column: 40, scope: !115797, inlinedAt: !115798)
!115805 = distinct !DILocation(line: 34, column: 62, scope: !1939, inlinedAt: !115804)
!115806 = distinct !DILocation(line: 39, column: 17, scope: !1364, inlinedAt: !115805)
!115807 = distinct !{!115807, i1 true, !"_RNCINvNtNtCskY9G75ZWc4U_11polars_expr8dispatch3pow21pow_on_chunked_arraysNtNtCs1LHh8CLbVkQ_11polars_core9datatypes10Int128TypeNtB1b_10UInt32TypeEs_0B8_"}
!115808 = distinct !{!115808, !115807, !"_RNCINvNtNtCskY9G75ZWc4U_11polars_expr8dispatch3pow21pow_on_chunked_arraysNtNtCs1LHh8CLbVkQ_11polars_core9datatypes10Int128TypeNtB1b_10UInt32TypeEs_0B8_: argument 0"}
!115809 = !{!115795}
!115810 = !{!115801}
!115811 = !{!115808, !115795}
!115812 = !DILocation(line: 298, column: 13, scope: !115793)
!115813 = !DILocation(line: 298, column: 21, scope: !115793)
!115814 = !DILocation(line: 2277, column: 15, scope: !115796, inlinedAt: !115799)
!115815 = !DILocation(line: 2277, column: 9, scope: !115796, inlinedAt: !115799)
!115816 = !DILocation(line: 615, column: 25, scope: !1940, inlinedAt: !115803)
!115817 = !DILocation(line: 3086, column: 16, scope: !1363, inlinedAt: !115806)
!115818 = !DILocation(line: 0, scope: !1365, inlinedAt: !115806)
!115819 = !DILocation(line: 3112, column: 24, scope: !1366, inlinedAt: !115806)
!115820 = !DILocation(line: 3113, column: 31, scope: !1366, inlinedAt: !115806)
!115821 = !DILocation(line: 3115, column: 28, scope: !1366, inlinedAt: !115806)
!115822 = !DILocation(line: 3119, column: 21, scope: !1366, inlinedAt: !115806)
!115823 = !DILocation(line: 3120, column: 28, scope: !1366, inlinedAt: !115806)
!115824 = !DILocation(line: 3111, column: 17, scope: !1366, inlinedAt: !115806)
!115825 = !DILocation(line: 0, scope: !1363, inlinedAt: !115806)
!115826 = !DILocation(line: 34, column: 57, scope: !1939, inlinedAt: !115804)
!115827 = !DILocation(line: 34, column: 79, scope: !1939, inlinedAt: !115804)
!115828 = !DILocation(line: 34, scope: !1939, inlinedAt: !115804)
!115829 = !DILocation(line: 299, column: 10, scope: !115793)
!115830 = distinct !DISubprogram(name: "call_mut<(core::option::Option<&str>), polars_core::chunked_array::ops::arity::broadcast_binary_elementwise::{closure_env#0}<polars_core::datatypes::StringType, polars_core::datatypes::StringType, polars_core::datatypes::UInt32Type, polars_ops::chunked_array::strings::namespace::StringNameSpaceImpl::find_chunked::{closure_env#0}<polars_core::chunked_array::ChunkedArray<polars_core::datatypes::StringType>>>>", linkageName: "_RNvXs1_NtNtNtCscgRAwXFJnXP_4core3ops8function5implsQNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops5arity28broadcast_binary_elementwiseNtNtBZ_9datatypes10StringTypeB2j_NtB2l_10UInt32TypeNCNvYINtBX_12ChunkedArrayB2j_ENtNtNtNtCsePnBjWcsLF5_10polars_ops13chunked_array7strings9namespace19StringNameSpaceImpl12find_chunked0E0INtB7_5FnMutTINtNtBb_6option6OptionReEEE8call_mutCskY9G75ZWc4U_11polars_expr", scope: !2859, file: !2331, line: 297, type: !2227, scopeLine: 297, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2226)
!115831 = distinct !{!115831, i1 true, !"_RNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops5arity28broadcast_binary_elementwiseNtNtBa_9datatypes10StringTypeB1u_NtB1w_10UInt32TypeNCNvYINtB8_12ChunkedArrayB1u_ENtNtNtNtCsePnBjWcsLF5_10polars_ops13chunked_array7strings9namespace19StringNameSpaceImpl12find_chunked0E0CskY9G75ZWc4U_11polars_expr"}
!115832 = distinct !{!115832, !115831, !"_RNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops5arity28broadcast_binary_elementwiseNtNtBa_9datatypes10StringTypeB1u_NtB1w_10UInt32TypeNCNvYINtB8_12ChunkedArrayB1u_ENtNtNtNtCsePnBjWcsLF5_10polars_ops13chunked_array7strings9namespace19StringNameSpaceImpl12find_chunked0E0CskY9G75ZWc4U_11polars_expr: argument 0"}
!115833 = distinct !DISubprogram(name: "clone<&str>", linkageName: "_RNvXs4_NtCscgRAwXFJnXP_4core6optionINtB5_6OptionReENtNtB7_5clone5Clone5cloneCskY9G75ZWc4U_11polars_expr", scope: !2982, file: !2281, line: 2276, type: !2227, scopeLine: 2276, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2226)
!115834 = distinct !DISubprogram(name: "{closure#0}<polars_core::datatypes::StringType, polars_core::datatypes::StringType, polars_core::datatypes::UInt32Type, polars_ops::chunked_array::strings::namespace::StringNameSpaceImpl::find_chunked::{closure_env#0}<polars_core::chunked_array::ChunkedArray<polars_core::datatypes::StringType>>>", linkageName: "_RNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops5arity28broadcast_binary_elementwiseNtNtBa_9datatypes10StringTypeB1u_NtB1w_10UInt32TypeNCNvYINtB8_12ChunkedArrayB1u_ENtNtNtNtCsePnBjWcsLF5_10polars_ops13chunked_array7strings9namespace19StringNameSpaceImpl12find_chunked0E0CskY9G75ZWc4U_11polars_expr", scope: !2983, file: !2651, line: 775, type: !2242, scopeLine: 775, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2226)
!115835 = distinct !DILocation(line: 298, column: 21, scope: !115830)
!115836 = distinct !DILocation(line: 775, column: 45, scope: !115834, inlinedAt: !115835)
!115837 = distinct !DILexicalBlock(scope: !115833, file: !2281, line: 2278, column: 13)
!115838 = distinct !DILocation(line: 2278, column: 31, scope: !115837, inlinedAt: !115836)
!115839 = distinct !{!115839, i1 true, !"_RNvXs4_NtNtCscgRAwXFJnXP_4core5clone5implsReNtB7_5Clone5cloneCskY9G75ZWc4U_11polars_expr"}
!115840 = distinct !{!115840, !115839, !"_RNvXs4_NtNtCscgRAwXFJnXP_4core5clone5implsReNtB7_5Clone5cloneCskY9G75ZWc4U_11polars_expr: argument 0"}
!115841 = distinct !{!115841, i1 true, !"_RNCNvYINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtB9_9datatypes10StringTypeENtNtNtNtCsePnBjWcsLF5_10polars_ops13chunked_array7strings9namespace19StringNameSpaceImpl12find_chunked0CskY9G75ZWc4U_11polars_expr"}
!115842 = distinct !{!115842, !115841, !"_RNCNvYINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtB9_9datatypes10StringTypeENtNtNtNtCsePnBjWcsLF5_10polars_ops13chunked_array7strings9namespace19StringNameSpaceImpl12find_chunked0CskY9G75ZWc4U_11polars_expr: argument 1"}
!115843 = distinct !{!115843, !115841, !"_RNCNvYINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtB9_9datatypes10StringTypeENtNtNtNtCsePnBjWcsLF5_10polars_ops13chunked_array7strings9namespace19StringNameSpaceImpl12find_chunked0CskY9G75ZWc4U_11polars_expr: argument 0"}
!115844 = distinct !{!115844, i1 true, !"_RINvMNtCscgRAwXFJnXP_4core3stre4findReECskY9G75ZWc4U_11polars_expr"}
!115845 = distinct !{!115845, !115844, !"_RINvMNtCscgRAwXFJnXP_4core3stre4findReECskY9G75ZWc4U_11polars_expr: argument 1"}
!115846 = distinct !{!115846, !115844, !"_RINvMNtCscgRAwXFJnXP_4core3stre4findReECskY9G75ZWc4U_11polars_expr: argument 0"}
!115847 = distinct !DILocation(line: 775, column: 40, scope: !115834, inlinedAt: !115835)
!115848 = distinct !DILocation(line: 256, column: 61, scope: !1942, inlinedAt: !115847)
!115849 = distinct !DILocation(line: 1478, column: 13, scope: !1941, inlinedAt: !115848)
!115850 = distinct !DILocation(line: 1478, column: 46, scope: !1941, inlinedAt: !115848)
!115851 = distinct !DILocation(line: 256, column: 72, scope: !1942, inlinedAt: !115847)
!115852 = !{!115832}
!115853 = !{!115840}
!115854 = !{!115846, !115845, !115843, !115842, !115832}
!115855 = !DILocation(line: 298, column: 13, scope: !115830)
!115856 = !DILocation(line: 298, column: 21, scope: !115830)
!115857 = !DILocation(line: 2277, column: 15, scope: !115833, inlinedAt: !115836)
!115858 = !DILocation(line: 2277, column: 9, scope: !115833, inlinedAt: !115836)
!115859 = !DILocation(line: 683, column: 13, scope: !1483, inlinedAt: !115838)
!115860 = !DILocation(line: 1478, column: 9, scope: !1941, inlinedAt: !115848)
!115861 = !DILocation(line: 976, column: 9, scope: !1943, inlinedAt: !115849)
!115862 = !DILocation(line: 1478, column: 33, scope: !1941, inlinedAt: !115848)
!115863 = !DILocation(line: 1164, column: 15, scope: !1944, inlinedAt: !115850)
!115864 = !DILocation(line: 1164, column: 9, scope: !1944, inlinedAt: !115850)
!115865 = !DILocation(line: 1478, column: 60, scope: !1941, inlinedAt: !115848)
!115866 = !DILocation(line: 1164, column: 9, scope: !1945, inlinedAt: !115851)
!115867 = !DILocation(line: 256, column: 93, scope: !1942, inlinedAt: !115847)
!115868 = !DILocation(line: 256, scope: !1942, inlinedAt: !115847)
!115869 = !DILocation(line: 299, column: 10, scope: !115830)
!115870 = distinct !DISubprogram(name: "call_mut<(core::option::Option<&str>), polars_core::chunked_array::ops::arity::broadcast_binary_elementwise::{closure_env#1}<polars_core::datatypes::StringType, polars_core::datatypes::StringType, polars_core::datatypes::UInt32Type, polars_ops::chunked_array::strings::namespace::StringNameSpaceImpl::find_chunked::{closure_env#0}<polars_core::chunked_array::ChunkedArray<polars_core::datatypes::StringType>>>>", linkageName: "_RNvXs1_NtNtNtCscgRAwXFJnXP_4core3ops8function5implsQNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops5arity28broadcast_binary_elementwiseNtNtBZ_9datatypes10StringTypeB2j_NtB2l_10UInt32TypeNCNvYINtBX_12ChunkedArrayB2j_ENtNtNtNtCsePnBjWcsLF5_10polars_ops13chunked_array7strings9namespace19StringNameSpaceImpl12find_chunked0Es_0INtB7_5FnMutTINtNtBb_6option6OptionReEEE8call_mutCskY9G75ZWc4U_11polars_expr", scope: !2859, file: !2331, line: 297, type: !2227, scopeLine: 297, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2226)
!115871 = distinct !{!115871, i1 true, !"_RNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops5arity28broadcast_binary_elementwiseNtNtBa_9datatypes10StringTypeB1u_NtB1w_10UInt32TypeNCNvYINtB8_12ChunkedArrayB1u_ENtNtNtNtCsePnBjWcsLF5_10polars_ops13chunked_array7strings9namespace19StringNameSpaceImpl12find_chunked0Es_0CskY9G75ZWc4U_11polars_expr"}
!115872 = distinct !{!115872, !115871, !"_RNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops5arity28broadcast_binary_elementwiseNtNtBa_9datatypes10StringTypeB1u_NtB1w_10UInt32TypeNCNvYINtB8_12ChunkedArrayB1u_ENtNtNtNtCsePnBjWcsLF5_10polars_ops13chunked_array7strings9namespace19StringNameSpaceImpl12find_chunked0Es_0CskY9G75ZWc4U_11polars_expr: argument 0"}
!115873 = distinct !DISubprogram(name: "clone<&str>", linkageName: "_RNvXs4_NtCscgRAwXFJnXP_4core6optionINtB5_6OptionReENtNtB7_5clone5Clone5cloneCskY9G75ZWc4U_11polars_expr", scope: !2982, file: !2281, line: 2276, type: !2227, scopeLine: 2276, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2226)
!115874 = distinct !DISubprogram(name: "{closure#1}<polars_core::datatypes::StringType, polars_core::datatypes::StringType, polars_core::datatypes::UInt32Type, polars_ops::chunked_array::strings::namespace::StringNameSpaceImpl::find_chunked::{closure_env#0}<polars_core::chunked_array::ChunkedArray<polars_core::datatypes::StringType>>>", linkageName: "_RNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops5arity28broadcast_binary_elementwiseNtNtBa_9datatypes10StringTypeB1u_NtB1w_10UInt32TypeNCNvYINtB8_12ChunkedArrayB1u_ENtNtNtNtCsePnBjWcsLF5_10polars_ops13chunked_array7strings9namespace19StringNameSpaceImpl12find_chunked0Es_0CskY9G75ZWc4U_11polars_expr", scope: !2983, file: !2651, line: 779, type: !2242, scopeLine: 779, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2226)
!115875 = distinct !DILocation(line: 298, column: 21, scope: !115870)
!115876 = distinct !DILocation(line: 779, column: 48, scope: !115874, inlinedAt: !115875)
!115877 = distinct !DILexicalBlock(scope: !115873, file: !2281, line: 2278, column: 13)
!115878 = distinct !DILocation(line: 2278, column: 31, scope: !115877, inlinedAt: !115876)
!115879 = distinct !{!115879, i1 true, !"_RNvXs4_NtNtCscgRAwXFJnXP_4core5clone5implsReNtB7_5Clone5cloneCskY9G75ZWc4U_11polars_expr"}
!115880 = distinct !{!115880, !115879, !"_RNvXs4_NtNtCscgRAwXFJnXP_4core5clone5implsReNtB7_5Clone5cloneCskY9G75ZWc4U_11polars_expr: argument 0"}
!115881 = distinct !{!115881, i1 true, !"_RNCNvYINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtB9_9datatypes10StringTypeENtNtNtNtCsePnBjWcsLF5_10polars_ops13chunked_array7strings9namespace19StringNameSpaceImpl12find_chunked0CskY9G75ZWc4U_11polars_expr"}
!115882 = distinct !{!115882, !115881, !"_RNCNvYINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtB9_9datatypes10StringTypeENtNtNtNtCsePnBjWcsLF5_10polars_ops13chunked_array7strings9namespace19StringNameSpaceImpl12find_chunked0CskY9G75ZWc4U_11polars_expr: argument 1"}
!115883 = distinct !{!115883, !115881, !"_RNCNvYINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtB9_9datatypes10StringTypeENtNtNtNtCsePnBjWcsLF5_10polars_ops13chunked_array7strings9namespace19StringNameSpaceImpl12find_chunked0CskY9G75ZWc4U_11polars_expr: argument 0"}
!115884 = distinct !{!115884, i1 true, !"_RINvMNtCscgRAwXFJnXP_4core3stre4findReECskY9G75ZWc4U_11polars_expr"}
!115885 = distinct !{!115885, !115884, !"_RINvMNtCscgRAwXFJnXP_4core3stre4findReECskY9G75ZWc4U_11polars_expr: argument 1"}
!115886 = distinct !{!115886, !115884, !"_RINvMNtCscgRAwXFJnXP_4core3stre4findReECskY9G75ZWc4U_11polars_expr: argument 0"}
!115887 = distinct !DILocation(line: 779, column: 40, scope: !115874, inlinedAt: !115875)
!115888 = distinct !DILocation(line: 256, column: 61, scope: !1942, inlinedAt: !115887)
!115889 = distinct !DILocation(line: 1478, column: 13, scope: !1941, inlinedAt: !115888)
!115890 = distinct !DILocation(line: 1478, column: 46, scope: !1941, inlinedAt: !115888)
!115891 = distinct !DILocation(line: 256, column: 72, scope: !1942, inlinedAt: !115887)
!115892 = !{!115872}
!115893 = !{!115880}
!115894 = !{!115886, !115885, !115883, !115882, !115872}
!115895 = !DILocation(line: 298, column: 13, scope: !115870)
!115896 = !DILocation(line: 298, column: 21, scope: !115870)
!115897 = !DILocation(line: 2277, column: 15, scope: !115873, inlinedAt: !115876)
!115898 = !DILocation(line: 2277, column: 9, scope: !115873, inlinedAt: !115876)
!115899 = !DILocation(line: 683, column: 13, scope: !1483, inlinedAt: !115878)
!115900 = !DILocation(line: 1478, column: 9, scope: !1941, inlinedAt: !115888)
!115901 = !DILocation(line: 976, column: 9, scope: !1943, inlinedAt: !115889)
!115902 = !DILocation(line: 1478, column: 33, scope: !1941, inlinedAt: !115888)
!115903 = !DILocation(line: 1164, column: 15, scope: !1944, inlinedAt: !115890)
!115904 = !DILocation(line: 1164, column: 9, scope: !1944, inlinedAt: !115890)
!115905 = !DILocation(line: 1478, column: 60, scope: !1941, inlinedAt: !115888)
!115906 = !DILocation(line: 1164, column: 9, scope: !1945, inlinedAt: !115891)
!115907 = !DILocation(line: 256, column: 93, scope: !1942, inlinedAt: !115887)
!115908 = !DILocation(line: 256, scope: !1942, inlinedAt: !115887)
!115909 = !DILocation(line: 299, column: 10, scope: !115870)
!115910 = distinct !DISubprogram(name: "call_mut<(core::option::Option<&str>), polars_core::chunked_array::ops::arity::broadcast_binary_elementwise::{closure_env#0}<polars_core::datatypes::StringType, polars_core::datatypes::StringType, polars_core::datatypes::UInt32Type, polars_ops::chunked_array::strings::namespace::StringNameSpaceImpl::count_matches_many::{closure_env#0}<polars_core::chunked_array::ChunkedArray<polars_core::datatypes::StringType>>>>", linkageName: "_RNvXs1_NtNtNtCscgRAwXFJnXP_4core3ops8function5implsQNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops5arity28broadcast_binary_elementwiseNtNtBZ_9datatypes10StringTypeB2j_NtB2l_10UInt32TypeNCNvYINtBX_12ChunkedArrayB2j_ENtNtNtNtCsePnBjWcsLF5_10polars_ops13chunked_array7strings9namespace19StringNameSpaceImpl18count_matches_many0E0INtB7_5FnMutTINtNtBb_6option6OptionReEEE8call_mutCskY9G75ZWc4U_11polars_expr", scope: !2859, file: !2331, line: 297, type: !2227, scopeLine: 297, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2226)
!115911 = distinct !{!115911, i1 true, !"_RNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops5arity28broadcast_binary_elementwiseNtNtBa_9datatypes10StringTypeB1u_NtB1w_10UInt32TypeNCNvYINtB8_12ChunkedArrayB1u_ENtNtNtNtCsePnBjWcsLF5_10polars_ops13chunked_array7strings9namespace19StringNameSpaceImpl18count_matches_many0E0CskY9G75ZWc4U_11polars_expr"}
!115912 = distinct !{!115912, !115911, !"_RNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops5arity28broadcast_binary_elementwiseNtNtBa_9datatypes10StringTypeB1u_NtB1w_10UInt32TypeNCNvYINtB8_12ChunkedArrayB1u_ENtNtNtNtCsePnBjWcsLF5_10polars_ops13chunked_array7strings9namespace19StringNameSpaceImpl18count_matches_many0E0CskY9G75ZWc4U_11polars_expr: argument 0"}
!115913 = distinct !DISubprogram(name: "clone<&str>", linkageName: "_RNvXs4_NtCscgRAwXFJnXP_4core6optionINtB5_6OptionReENtNtB7_5clone5Clone5cloneCskY9G75ZWc4U_11polars_expr", scope: !2982, file: !2281, line: 2276, type: !2227, scopeLine: 2276, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2226)
!115914 = distinct !DISubprogram(name: "{closure#0}<polars_core::datatypes::StringType, polars_core::datatypes::StringType, polars_core::datatypes::UInt32Type, polars_ops::chunked_array::strings::namespace::StringNameSpaceImpl::count_matches_many::{closure_env#0}<polars_core::chunked_array::ChunkedArray<polars_core::datatypes::StringType>>>", linkageName: "_RNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops5arity28broadcast_binary_elementwiseNtNtBa_9datatypes10StringTypeB1u_NtB1w_10UInt32TypeNCNvYINtB8_12ChunkedArrayB1u_ENtNtNtNtCsePnBjWcsLF5_10polars_ops13chunked_array7strings9namespace19StringNameSpaceImpl18count_matches_many0E0CskY9G75ZWc4U_11polars_expr", scope: !2983, file: !2651, line: 775, type: !2242, scopeLine: 775, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2226)
!115915 = distinct !DILocation(line: 298, column: 21, scope: !115910)
!115916 = distinct !DILocation(line: 775, column: 45, scope: !115914, inlinedAt: !115915)
!115917 = distinct !{!115917, i1 true, !"_RNCNvYINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtB9_9datatypes10StringTypeENtNtNtNtCsePnBjWcsLF5_10polars_ops13chunked_array7strings9namespace19StringNameSpaceImpl18count_matches_many0CskY9G75ZWc4U_11polars_expr"}
!115918 = distinct !{!115918, !115917, !"_RNCNvYINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtB9_9datatypes10StringTypeENtNtNtNtCsePnBjWcsLF5_10polars_ops13chunked_array7strings9namespace19StringNameSpaceImpl18count_matches_many0CskY9G75ZWc4U_11polars_expr: argument 1:thread"}
!115919 = distinct !{!115919, !115917, !"_RNCNvYINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtB9_9datatypes10StringTypeENtNtNtNtCsePnBjWcsLF5_10polars_ops13chunked_array7strings9namespace19StringNameSpaceImpl18count_matches_many0CskY9G75ZWc4U_11polars_expr: argument 0:thread"}
!115920 = distinct !DILocation(line: 775, column: 40, scope: !115914, inlinedAt: !115915)
!115921 = distinct !DILocation(line: 618, column: 22, scope: !1946, inlinedAt: !115920)
!115922 = distinct !DILexicalBlock(scope: !115913, file: !2281, line: 2278, column: 13)
!115923 = distinct !DILocation(line: 2278, column: 31, scope: !115922, inlinedAt: !115916)
!115924 = distinct !{!115924, i1 true, !"_RNvXs4_NtNtCscgRAwXFJnXP_4core5clone5implsReNtB7_5Clone5cloneCskY9G75ZWc4U_11polars_expr"}
!115925 = distinct !{!115925, !115924, !"_RNvXs4_NtNtCscgRAwXFJnXP_4core5clone5implsReNtB7_5Clone5cloneCskY9G75ZWc4U_11polars_expr: argument 0"}
!115926 = distinct !{!115926, i1 true, !"_RNCNvYINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtB9_9datatypes10StringTypeENtNtNtNtCsePnBjWcsLF5_10polars_ops13chunked_array7strings9namespace19StringNameSpaceImpl18count_matches_many0CskY9G75ZWc4U_11polars_expr"}
!115927 = distinct !{!115927, !115926, !"_RNCNvYINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtB9_9datatypes10StringTypeENtNtNtNtCsePnBjWcsLF5_10polars_ops13chunked_array7strings9namespace19StringNameSpaceImpl18count_matches_many0CskY9G75ZWc4U_11polars_expr: argument 1"}
!115928 = distinct !{!115928, !115926, !"_RNCNvYINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtB9_9datatypes10StringTypeENtNtNtNtCsePnBjWcsLF5_10polars_ops13chunked_array7strings9namespace19StringNameSpaceImpl18count_matches_many0CskY9G75ZWc4U_11polars_expr: argument 0"}
!115929 = distinct !DILocation(line: 618, column: 25, scope: !1946, inlinedAt: !115920)
!115930 = distinct !DILocation(line: 2026, column: 37, scope: !1949, inlinedAt: !115929)
!115931 = distinct !DILocation(line: 618, column: 37, scope: !1946, inlinedAt: !115920)
!115932 = distinct !DILocation(line: 229, column: 14, scope: !1952, inlinedAt: !115931)
!115933 = distinct !{!115933, i1 true, !"_RINvYINtNtNtCscgRAwXFJnXP_4core3str4iter7MatchesReENtNtNtNtBa_4iter6traits8iterator8Iterator4foldjNCNvYB3_BN_5count0ECskY9G75ZWc4U_11polars_expr"}
!115934 = distinct !{!115934, !115933, !"_RINvYINtNtNtCscgRAwXFJnXP_4core3str4iter7MatchesReENtNtNtNtBa_4iter6traits8iterator8Iterator4foldjNCNvYB3_BN_5count0ECskY9G75ZWc4U_11polars_expr: argument 0"}
!115935 = distinct !{!115935, i1 true, !"_RNvXs1C_NtNtCscgRAwXFJnXP_4core3str4iterINtB6_7MatchesReENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr"}
!115936 = distinct !{!115936, !115935, !"_RNvXs1C_NtNtCscgRAwXFJnXP_4core3str4iterINtB6_7MatchesReENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr: argument 0"}
!115937 = distinct !{!115937, i1 true, !"_RNvMsr_NtNtCscgRAwXFJnXP_4core3str4iterINtB5_15MatchesInternalReE4nextCskY9G75ZWc4U_11polars_expr"}
!115938 = distinct !{!115938, !115937, !"_RNvMsr_NtNtCscgRAwXFJnXP_4core3str4iterINtB5_15MatchesInternalReE4nextCskY9G75ZWc4U_11polars_expr: argument 0"}
!115939 = distinct !DILocation(line: 2686, column: 34, scope: !1955, inlinedAt: !115932)
!115940 = distinct !DILocation(line: 512, column: 24, scope: !1954, inlinedAt: !115939)
!115941 = distinct !DILocation(line: 1116, column: 29, scope: !1953, inlinedAt: !115940)
!115942 = distinct !DILocation(line: 2687, column: 21, scope: !1955, inlinedAt: !115932)
!115943 = !{!115912}
!115944 = !{!115919, !115918, !115912}
!115945 = !{!115925}
!115946 = !{!115928, !115927, !115912}
!115947 = !{!115938, !115936, !115934, !115928, !115927, !115912}
!115948 = !DILocation(line: 298, column: 13, scope: !115910)
!115949 = !DILocation(line: 298, column: 21, scope: !115910)
!115950 = !DILocation(line: 2277, column: 15, scope: !115913, inlinedAt: !115916)
!115951 = !DILocation(line: 2277, column: 9, scope: !115913, inlinedAt: !115916)
!115952 = !DILocation(line: 618, column: 22, scope: !1946, inlinedAt: !115920)
!115953 = !DILocation(line: 2778, column: 9, scope: !1947, inlinedAt: !115921)
!115954 = !DILocation(line: 683, column: 13, scope: !1483, inlinedAt: !115923)
!115955 = !DILocation(line: 976, column: 9, scope: !1948, inlinedAt: !115930)
!115956 = !DILocation(line: 2686, column: 9, scope: !1951, inlinedAt: !115932)
!115957 = !DILocation(line: 0, scope: !1950, inlinedAt: !115932)
!115958 = !DILocation(line: 1116, column: 9, scope: !1953, inlinedAt: !115940)
!115959 = !DILocation(line: 1116, column: 16, scope: !1953, inlinedAt: !115940)
!115960 = !DILocation(line: 1164, column: 15, scope: !1956, inlinedAt: !115941)
!115961 = !DILocation(line: 1119, column: 10, scope: !1953, inlinedAt: !115940)
!115962 = !DILocation(line: 1164, column: 9, scope: !1956, inlinedAt: !115941)
!115963 = !DILocation(line: 232, column: 24, scope: !1957, inlinedAt: !115942)
!115964 = !DILocation(line: 2686, column: 19, scope: !1955, inlinedAt: !115932)
!115965 = !DILocation(line: 618, scope: !1946, inlinedAt: !115920)
!115966 = !DILocation(line: 618, column: 43, scope: !1946, inlinedAt: !115920)
!115967 = !DILocation(line: 619, column: 14, scope: !1946, inlinedAt: !115920)
!115968 = !DILocation(line: 299, column: 10, scope: !115910)
!115969 = distinct !DISubprogram(name: "call_mut<(core::option::Option<&str>), polars_core::chunked_array::ops::arity::broadcast_binary_elementwise::{closure_env#1}<polars_core::datatypes::StringType, polars_core::datatypes::StringType, polars_core::datatypes::UInt32Type, polars_ops::chunked_array::strings::namespace::StringNameSpaceImpl::count_matches_many::{closure_env#0}<polars_core::chunked_array::ChunkedArray<polars_core::datatypes::StringType>>>>", linkageName: "_RNvXs1_NtNtNtCscgRAwXFJnXP_4core3ops8function5implsQNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops5arity28broadcast_binary_elementwiseNtNtBZ_9datatypes10StringTypeB2j_NtB2l_10UInt32TypeNCNvYINtBX_12ChunkedArrayB2j_ENtNtNtNtCsePnBjWcsLF5_10polars_ops13chunked_array7strings9namespace19StringNameSpaceImpl18count_matches_many0Es_0INtB7_5FnMutTINtNtBb_6option6OptionReEEE8call_mutCskY9G75ZWc4U_11polars_expr", scope: !2859, file: !2331, line: 297, type: !2227, scopeLine: 297, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2226)
!115970 = distinct !{!115970, i1 true, !"_RNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops5arity28broadcast_binary_elementwiseNtNtBa_9datatypes10StringTypeB1u_NtB1w_10UInt32TypeNCNvYINtB8_12ChunkedArrayB1u_ENtNtNtNtCsePnBjWcsLF5_10polars_ops13chunked_array7strings9namespace19StringNameSpaceImpl18count_matches_many0Es_0CskY9G75ZWc4U_11polars_expr"}
!115971 = distinct !{!115971, !115970, !"_RNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops5arity28broadcast_binary_elementwiseNtNtBa_9datatypes10StringTypeB1u_NtB1w_10UInt32TypeNCNvYINtB8_12ChunkedArrayB1u_ENtNtNtNtCsePnBjWcsLF5_10polars_ops13chunked_array7strings9namespace19StringNameSpaceImpl18count_matches_many0Es_0CskY9G75ZWc4U_11polars_expr: argument 0"}
!115972 = distinct !DISubprogram(name: "clone<&str>", linkageName: "_RNvXs4_NtCscgRAwXFJnXP_4core6optionINtB5_6OptionReENtNtB7_5clone5Clone5cloneCskY9G75ZWc4U_11polars_expr", scope: !2982, file: !2281, line: 2276, type: !2227, scopeLine: 2276, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2226)
!115973 = distinct !DISubprogram(name: "{closure#1}<polars_core::datatypes::StringType, polars_core::datatypes::StringType, polars_core::datatypes::UInt32Type, polars_ops::chunked_array::strings::namespace::StringNameSpaceImpl::count_matches_many::{closure_env#0}<polars_core::chunked_array::ChunkedArray<polars_core::datatypes::StringType>>>", linkageName: "_RNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops5arity28broadcast_binary_elementwiseNtNtBa_9datatypes10StringTypeB1u_NtB1w_10UInt32TypeNCNvYINtB8_12ChunkedArrayB1u_ENtNtNtNtCsePnBjWcsLF5_10polars_ops13chunked_array7strings9namespace19StringNameSpaceImpl18count_matches_many0Es_0CskY9G75ZWc4U_11polars_expr", scope: !2983, file: !2651, line: 779, type: !2242, scopeLine: 779, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2226)
!115974 = distinct !DILocation(line: 298, column: 21, scope: !115969)
!115975 = distinct !DILocation(line: 779, column: 48, scope: !115973, inlinedAt: !115974)
!115976 = distinct !{!115976, i1 true, !"_RNCNvYINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtB9_9datatypes10StringTypeENtNtNtNtCsePnBjWcsLF5_10polars_ops13chunked_array7strings9namespace19StringNameSpaceImpl18count_matches_many0CskY9G75ZWc4U_11polars_expr"}
!115977 = distinct !{!115977, !115976, !"_RNCNvYINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtB9_9datatypes10StringTypeENtNtNtNtCsePnBjWcsLF5_10polars_ops13chunked_array7strings9namespace19StringNameSpaceImpl18count_matches_many0CskY9G75ZWc4U_11polars_expr: argument 1:thread"}
!115978 = distinct !{!115978, !115976, !"_RNCNvYINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtB9_9datatypes10StringTypeENtNtNtNtCsePnBjWcsLF5_10polars_ops13chunked_array7strings9namespace19StringNameSpaceImpl18count_matches_many0CskY9G75ZWc4U_11polars_expr: argument 0:thread"}
!115979 = distinct !DILocation(line: 779, column: 40, scope: !115973, inlinedAt: !115974)
!115980 = distinct !DILocation(line: 618, column: 22, scope: !1946, inlinedAt: !115979)
!115981 = distinct !DILexicalBlock(scope: !115972, file: !2281, line: 2278, column: 13)
!115982 = distinct !DILocation(line: 2278, column: 31, scope: !115981, inlinedAt: !115975)
!115983 = distinct !{!115983, i1 true, !"_RNvXs4_NtNtCscgRAwXFJnXP_4core5clone5implsReNtB7_5Clone5cloneCskY9G75ZWc4U_11polars_expr"}
!115984 = distinct !{!115984, !115983, !"_RNvXs4_NtNtCscgRAwXFJnXP_4core5clone5implsReNtB7_5Clone5cloneCskY9G75ZWc4U_11polars_expr: argument 0"}
!115985 = distinct !{!115985, i1 true, !"_RNCNvYINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtB9_9datatypes10StringTypeENtNtNtNtCsePnBjWcsLF5_10polars_ops13chunked_array7strings9namespace19StringNameSpaceImpl18count_matches_many0CskY9G75ZWc4U_11polars_expr"}
!115986 = distinct !{!115986, !115985, !"_RNCNvYINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtB9_9datatypes10StringTypeENtNtNtNtCsePnBjWcsLF5_10polars_ops13chunked_array7strings9namespace19StringNameSpaceImpl18count_matches_many0CskY9G75ZWc4U_11polars_expr: argument 1"}
!115987 = distinct !{!115987, !115985, !"_RNCNvYINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtB9_9datatypes10StringTypeENtNtNtNtCsePnBjWcsLF5_10polars_ops13chunked_array7strings9namespace19StringNameSpaceImpl18count_matches_many0CskY9G75ZWc4U_11polars_expr: argument 0"}
!115988 = distinct !DILocation(line: 618, column: 25, scope: !1946, inlinedAt: !115979)
!115989 = distinct !DILocation(line: 2026, column: 37, scope: !1949, inlinedAt: !115988)
!115990 = distinct !DILocation(line: 618, column: 37, scope: !1946, inlinedAt: !115979)
!115991 = distinct !DILocation(line: 229, column: 14, scope: !1952, inlinedAt: !115990)
!115992 = distinct !{!115992, i1 true, !"_RINvYINtNtNtCscgRAwXFJnXP_4core3str4iter7MatchesReENtNtNtNtBa_4iter6traits8iterator8Iterator4foldjNCNvYB3_BN_5count0ECskY9G75ZWc4U_11polars_expr"}
!115993 = distinct !{!115993, !115992, !"_RINvYINtNtNtCscgRAwXFJnXP_4core3str4iter7MatchesReENtNtNtNtBa_4iter6traits8iterator8Iterator4foldjNCNvYB3_BN_5count0ECskY9G75ZWc4U_11polars_expr: argument 0"}
!115994 = distinct !{!115994, i1 true, !"_RNvXs1C_NtNtCscgRAwXFJnXP_4core3str4iterINtB6_7MatchesReENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr"}
!115995 = distinct !{!115995, !115994, !"_RNvXs1C_NtNtCscgRAwXFJnXP_4core3str4iterINtB6_7MatchesReENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr: argument 0"}
!115996 = distinct !{!115996, i1 true, !"_RNvMsr_NtNtCscgRAwXFJnXP_4core3str4iterINtB5_15MatchesInternalReE4nextCskY9G75ZWc4U_11polars_expr"}
!115997 = distinct !{!115997, !115996, !"_RNvMsr_NtNtCscgRAwXFJnXP_4core3str4iterINtB5_15MatchesInternalReE4nextCskY9G75ZWc4U_11polars_expr: argument 0"}
!115998 = distinct !DILocation(line: 2686, column: 34, scope: !1955, inlinedAt: !115991)
!115999 = distinct !DILocation(line: 512, column: 24, scope: !1954, inlinedAt: !115998)
!116000 = distinct !DILocation(line: 1116, column: 29, scope: !1953, inlinedAt: !115999)
!116001 = distinct !DILocation(line: 2687, column: 21, scope: !1955, inlinedAt: !115991)
!116002 = !{!115971}
!116003 = !{!115978, !115977, !115971}
!116004 = !{!115984}
!116005 = !{!115987, !115986, !115971}
!116006 = !{!115997, !115995, !115993, !115987, !115986, !115971}
!116007 = !DILocation(line: 298, column: 13, scope: !115969)
!116008 = !DILocation(line: 298, column: 21, scope: !115969)
!116009 = !DILocation(line: 2277, column: 15, scope: !115972, inlinedAt: !115975)
!116010 = !DILocation(line: 2277, column: 9, scope: !115972, inlinedAt: !115975)
!116011 = !DILocation(line: 618, column: 22, scope: !1946, inlinedAt: !115979)
!116012 = !DILocation(line: 2778, column: 9, scope: !1947, inlinedAt: !115980)
!116013 = !DILocation(line: 683, column: 13, scope: !1483, inlinedAt: !115982)
!116014 = !DILocation(line: 2778, column: 15, scope: !1947, inlinedAt: !115980)
!116015 = !DILocation(line: 976, column: 9, scope: !1948, inlinedAt: !115989)
!116016 = !DILocation(line: 2686, column: 9, scope: !1951, inlinedAt: !115991)
!116017 = !DILocation(line: 0, scope: !1950, inlinedAt: !115991)
!116018 = !DILocation(line: 1116, column: 9, scope: !1953, inlinedAt: !115999)
!116019 = !DILocation(line: 1116, column: 16, scope: !1953, inlinedAt: !115999)
!116020 = !DILocation(line: 1164, column: 15, scope: !1956, inlinedAt: !116000)
!116021 = !DILocation(line: 1119, column: 10, scope: !1953, inlinedAt: !115999)
!116022 = !DILocation(line: 1164, column: 9, scope: !1956, inlinedAt: !116000)
!116023 = !DILocation(line: 232, column: 24, scope: !1957, inlinedAt: !116001)
!116024 = !DILocation(line: 2686, column: 19, scope: !1955, inlinedAt: !115991)
!116025 = !DILocation(line: 618, scope: !1946, inlinedAt: !115979)
!116026 = !DILocation(line: 618, column: 43, scope: !1946, inlinedAt: !115979)
!116027 = !DILocation(line: 619, column: 14, scope: !1946, inlinedAt: !115979)
!116028 = !DILocation(line: 299, column: 10, scope: !115969)
!116029 = distinct !DISubprogram(name: "call_mut<(core::option::Option<u32>), polars_core::chunked_array::ops::arity::broadcast_binary_elementwise::{closure_env#0}<polars_core::datatypes::UInt16Type, polars_core::datatypes::UInt32Type, polars_core::datatypes::UInt16Type, polars_expr::dispatch::pow::pow_on_chunked_arrays::{closure_env#1}<polars_core::datatypes::UInt16Type, polars_core::datatypes::UInt32Type>>>", linkageName: "_RNvXs1_NtNtNtCscgRAwXFJnXP_4core3ops8function5implsQNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops5arity28broadcast_binary_elementwiseNtNtBZ_9datatypes10UInt16TypeNtB2l_10UInt32TypeB2j_NCINvNtNtCskY9G75ZWc4U_11polars_expr8dispatch3pow21pow_on_chunked_arraysB2j_B2M_Es_0E0INtB7_5FnMutTINtNtBb_6option6OptionmEEE8call_mutB3h_", scope: !2859, file: !2331, line: 297, type: !2227, scopeLine: 297, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2226)
!116030 = distinct !DISubprogram(name: "clone<u16>", linkageName: "_RNvXs4_NtCscgRAwXFJnXP_4core6optionINtB5_6OptiontENtNtB7_5clone5Clone5cloneCskY9G75ZWc4U_11polars_expr", scope: !2982, file: !2281, line: 2276, type: !2227, scopeLine: 2276, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2226)
!116031 = distinct !DISubprogram(name: "{closure#0}<polars_core::datatypes::UInt16Type, polars_core::datatypes::UInt32Type, polars_core::datatypes::UInt16Type, polars_expr::dispatch::pow::pow_on_chunked_arrays::{closure_env#1}<polars_core::datatypes::UInt16Type, polars_core::datatypes::UInt32Type>>", linkageName: "_RNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops5arity28broadcast_binary_elementwiseNtNtBa_9datatypes10UInt16TypeNtB1w_10UInt32TypeB1u_NCINvNtNtCskY9G75ZWc4U_11polars_expr8dispatch3pow21pow_on_chunked_arraysB1u_B1X_Es_0E0B2s_", scope: !2983, file: !2651, line: 775, type: !2242, scopeLine: 775, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2226)
!116032 = distinct !DILocation(line: 298, column: 21, scope: !116029)
!116033 = distinct !DILocation(line: 775, column: 45, scope: !116031, inlinedAt: !116032)
!116034 = distinct !DILocation(line: 775, column: 40, scope: !116031, inlinedAt: !116032)
!116035 = distinct !DILocation(line: 34, column: 62, scope: !1958, inlinedAt: !116034)
!116036 = distinct !DILocation(line: 39, column: 17, scope: !1376, inlinedAt: !116035)
!116037 = distinct !{!116037, i1 true, !"_RNvXsb_NtNtCscgRAwXFJnXP_4core5clone5implstNtB7_5Clone5clone"}
!116038 = distinct !{!116038, !116037, !"_RNvXsb_NtNtCscgRAwXFJnXP_4core5clone5implstNtB7_5Clone5clone: argument 0"}
!116039 = distinct !DISubprogram(name: "clone", linkageName: "_RNvXsb_NtNtCscgRAwXFJnXP_4core5clone5implstNtB7_5Clone5clone", scope: !116043, file: !2875, line: 614, type: !2227, scopeLine: 614, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2226)
!116040 = distinct !DILexicalBlock(scope: !116030, file: !2281, line: 2278, column: 13)
!116041 = distinct !DILocation(line: 2278, column: 31, scope: !116040, inlinedAt: !116033)
!116042 = !{!116038}
!116043 = !DINamespace(name: "{impl#13}", scope: !2877)
!116044 = !DILocation(line: 298, column: 13, scope: !116029)
!116045 = !DILocation(line: 298, column: 21, scope: !116029)
!116046 = !DILocation(line: 2277, column: 15, scope: !116030, inlinedAt: !116033)
!116047 = !DILocation(line: 2277, column: 9, scope: !116030, inlinedAt: !116033)
!116048 = !DILocation(line: 3546, column: 16, scope: !1375, inlinedAt: !116036)
!116049 = !DILocation(line: 615, column: 25, scope: !116039, inlinedAt: !116041)
!116050 = !DILocation(line: 3572, column: 24, scope: !1378, inlinedAt: !116036)
!116051 = !DILocation(line: 0, scope: !1377, inlinedAt: !116036)
!116052 = !DILocation(line: 3573, column: 31, scope: !1378, inlinedAt: !116036)
!116053 = !DILocation(line: 3575, column: 28, scope: !1378, inlinedAt: !116036)
!116054 = !DILocation(line: 3579, column: 21, scope: !1378, inlinedAt: !116036)
!116055 = !DILocation(line: 3580, column: 28, scope: !1378, inlinedAt: !116036)
!116056 = !DILocation(line: 3571, column: 17, scope: !1378, inlinedAt: !116036)
!116057 = !DILocation(line: 34, scope: !1958, inlinedAt: !116034)
!116058 = !DILocation(line: 34, column: 79, scope: !1958, inlinedAt: !116034)
!116059 = !DILocation(line: 299, column: 10, scope: !116029)
!116060 = distinct !DISubprogram(name: "call_mut<(core::option::Option<u16>), polars_core::chunked_array::ops::arity::broadcast_binary_elementwise::{closure_env#1}<polars_core::datatypes::UInt16Type, polars_core::datatypes::UInt32Type, polars_core::datatypes::UInt16Type, polars_expr::dispatch::pow::pow_on_chunked_arrays::{closure_env#1}<polars_core::datatypes::UInt16Type, polars_core::datatypes::UInt32Type>>>", linkageName: "_RNvXs1_NtNtNtCscgRAwXFJnXP_4core3ops8function5implsQNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops5arity28broadcast_binary_elementwiseNtNtBZ_9datatypes10UInt16TypeNtB2l_10UInt32TypeB2j_NCINvNtNtCskY9G75ZWc4U_11polars_expr8dispatch3pow21pow_on_chunked_arraysB2j_B2M_Es_0Es_0INtB7_5FnMutTINtNtBb_6option6OptiontEEE8call_mutB3h_", scope: !2859, file: !2331, line: 297, type: !2227, scopeLine: 297, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2226)
!116061 = distinct !DISubprogram(name: "clone<u32>", linkageName: "_RNvXs4_NtCscgRAwXFJnXP_4core6optionINtB5_6OptionmENtNtB7_5clone5Clone5cloneCskY9G75ZWc4U_11polars_expr", scope: !2982, file: !2281, line: 2276, type: !2227, scopeLine: 2276, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2226)
!116062 = distinct !DISubprogram(name: "{closure#1}<polars_core::datatypes::UInt16Type, polars_core::datatypes::UInt32Type, polars_core::datatypes::UInt16Type, polars_expr::dispatch::pow::pow_on_chunked_arrays::{closure_env#1}<polars_core::datatypes::UInt16Type, polars_core::datatypes::UInt32Type>>", linkageName: "_RNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops5arity28broadcast_binary_elementwiseNtNtBa_9datatypes10UInt16TypeNtB1w_10UInt32TypeB1u_NCINvNtNtCskY9G75ZWc4U_11polars_expr8dispatch3pow21pow_on_chunked_arraysB1u_B1X_Es_0Es_0B2s_", scope: !2983, file: !2651, line: 779, type: !2242, scopeLine: 779, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2226)
!116063 = distinct !DILocation(line: 298, column: 21, scope: !116060)
!116064 = distinct !DILocation(line: 779, column: 48, scope: !116062, inlinedAt: !116063)
!116065 = distinct !{!116065, i1 true, !"_RNvXsd_NtNtCscgRAwXFJnXP_4core5clone5implsmNtB7_5Clone5clone"}
!116066 = distinct !{!116066, !116065, !"_RNvXsd_NtNtCscgRAwXFJnXP_4core5clone5implsmNtB7_5Clone5clone: argument 0"}
!116067 = distinct !DILexicalBlock(scope: !116061, file: !2281, line: 2278, column: 13)
!116068 = distinct !DILocation(line: 2278, column: 31, scope: !116067, inlinedAt: !116064)
!116069 = distinct !DILocation(line: 779, column: 40, scope: !116062, inlinedAt: !116063)
!116070 = distinct !DILocation(line: 34, column: 62, scope: !1958, inlinedAt: !116069)
!116071 = distinct !DILocation(line: 39, column: 17, scope: !1376, inlinedAt: !116070)
!116072 = !{!116066}
!116073 = !DILocation(line: 298, column: 13, scope: !116060)
!116074 = !DILocation(line: 298, column: 21, scope: !116060)
!116075 = !DILocation(line: 2277, column: 15, scope: !116061, inlinedAt: !116064)
!116076 = !DILocation(line: 2277, column: 9, scope: !116061, inlinedAt: !116064)
!116077 = !DILocation(line: 615, column: 25, scope: !1940, inlinedAt: !116068)
!116078 = !DILocation(line: 3546, column: 16, scope: !1375, inlinedAt: !116071)
!116079 = !DILocation(line: 0, scope: !1377, inlinedAt: !116071)
!116080 = !DILocation(line: 3572, column: 24, scope: !1378, inlinedAt: !116071)
!116081 = !DILocation(line: 3573, column: 31, scope: !1378, inlinedAt: !116071)
!116082 = !DILocation(line: 3575, column: 28, scope: !1378, inlinedAt: !116071)
!116083 = !DILocation(line: 3579, column: 21, scope: !1378, inlinedAt: !116071)
!116084 = !DILocation(line: 3580, column: 28, scope: !1378, inlinedAt: !116071)
!116085 = !DILocation(line: 3571, column: 17, scope: !1378, inlinedAt: !116071)
!116086 = !DILocation(line: 34, scope: !1958, inlinedAt: !116069)
!116087 = !DILocation(line: 34, column: 79, scope: !1958, inlinedAt: !116069)
!116088 = !DILocation(line: 299, column: 10, scope: !116060)
!116089 = distinct !DISubprogram(name: "call_mut<(core::option::Option<u32>), polars_core::chunked_array::ops::arity::broadcast_binary_elementwise::{closure_env#0}<polars_core::datatypes::UInt32Type, polars_core::datatypes::UInt32Type, polars_core::datatypes::UInt32Type, polars_expr::dispatch::pow::pow_on_chunked_arrays::{closure_env#1}<polars_core::datatypes::UInt32Type, polars_core::datatypes::UInt32Type>>>", linkageName: "_RNvXs1_NtNtNtCscgRAwXFJnXP_4core3ops8function5implsQNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops5arity28broadcast_binary_elementwiseNtNtBZ_9datatypes10UInt32TypeB2j_B2j_NCINvNtNtCskY9G75ZWc4U_11polars_expr8dispatch3pow21pow_on_chunked_arraysB2j_B2j_Es_0E0INtB7_5FnMutTINtNtBb_6option6OptionmEEE8call_mutB33_", scope: !2859, file: !2331, line: 297, type: !2227, scopeLine: 297, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2226)
!116090 = distinct !DISubprogram(name: "clone<u32>", linkageName: "_RNvXs4_NtCscgRAwXFJnXP_4core6optionINtB5_6OptionmENtNtB7_5clone5Clone5cloneCskY9G75ZWc4U_11polars_expr", scope: !2982, file: !2281, line: 2276, type: !2227, scopeLine: 2276, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2226)
!116091 = distinct !DISubprogram(name: "{closure#0}<polars_core::datatypes::UInt32Type, polars_core::datatypes::UInt32Type, polars_core::datatypes::UInt32Type, polars_expr::dispatch::pow::pow_on_chunked_arrays::{closure_env#1}<polars_core::datatypes::UInt32Type, polars_core::datatypes::UInt32Type>>", linkageName: "_RNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops5arity28broadcast_binary_elementwiseNtNtBa_9datatypes10UInt32TypeB1u_B1u_NCINvNtNtCskY9G75ZWc4U_11polars_expr8dispatch3pow21pow_on_chunked_arraysB1u_B1u_Es_0E0B2e_", scope: !2983, file: !2651, line: 775, type: !2242, scopeLine: 775, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2226)
!116092 = distinct !DILocation(line: 298, column: 21, scope: !116089)
!116093 = distinct !DILocation(line: 775, column: 45, scope: !116091, inlinedAt: !116092)
!116094 = distinct !DILocation(line: 775, column: 40, scope: !116091, inlinedAt: !116092)
!116095 = distinct !DILocation(line: 34, column: 62, scope: !1959, inlinedAt: !116094)
!116096 = distinct !DILocation(line: 39, column: 17, scope: !1355, inlinedAt: !116095)
!116097 = distinct !{!116097, i1 true, !"_RNvXsd_NtNtCscgRAwXFJnXP_4core5clone5implsmNtB7_5Clone5clone"}
!116098 = distinct !{!116098, !116097, !"_RNvXsd_NtNtCscgRAwXFJnXP_4core5clone5implsmNtB7_5Clone5clone: argument 0"}
!116099 = distinct !DILexicalBlock(scope: !116090, file: !2281, line: 2278, column: 13)
!116100 = distinct !DILocation(line: 2278, column: 31, scope: !116099, inlinedAt: !116093)
!116101 = !{!116098}
!116102 = !DILocation(line: 298, column: 13, scope: !116089)
!116103 = !DILocation(line: 298, column: 21, scope: !116089)
!116104 = !DILocation(line: 2277, column: 15, scope: !116090, inlinedAt: !116093)
!116105 = !DILocation(line: 2277, column: 9, scope: !116090, inlinedAt: !116093)
!116106 = !DILocation(line: 3546, column: 16, scope: !1354, inlinedAt: !116096)
!116107 = !DILocation(line: 615, column: 25, scope: !1940, inlinedAt: !116100)
!116108 = !DILocation(line: 3572, column: 24, scope: !1357, inlinedAt: !116096)
!116109 = !DILocation(line: 0, scope: !1356, inlinedAt: !116096)
!116110 = !DILocation(line: 3573, column: 31, scope: !1357, inlinedAt: !116096)
!116111 = !DILocation(line: 3575, column: 28, scope: !1357, inlinedAt: !116096)
!116112 = !DILocation(line: 3579, column: 21, scope: !1357, inlinedAt: !116096)
!116113 = !DILocation(line: 3580, column: 28, scope: !1357, inlinedAt: !116096)
!116114 = !DILocation(line: 3571, column: 17, scope: !1357, inlinedAt: !116096)
!116115 = !DILocation(line: 34, scope: !1959, inlinedAt: !116094)
!116116 = !DILocation(line: 34, column: 79, scope: !1959, inlinedAt: !116094)
!116117 = !DILocation(line: 299, column: 10, scope: !116089)
!116118 = distinct !DISubprogram(name: "call_mut<(core::option::Option<u32>), polars_core::chunked_array::ops::arity::broadcast_binary_elementwise::{closure_env#1}<polars_core::datatypes::UInt32Type, polars_core::datatypes::UInt32Type, polars_core::datatypes::UInt32Type, polars_expr::dispatch::pow::pow_on_chunked_arrays::{closure_env#1}<polars_core::datatypes::UInt32Type, polars_core::datatypes::UInt32Type>>>", linkageName: "_RNvXs1_NtNtNtCscgRAwXFJnXP_4core3ops8function5implsQNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops5arity28broadcast_binary_elementwiseNtNtBZ_9datatypes10UInt32TypeB2j_B2j_NCINvNtNtCskY9G75ZWc4U_11polars_expr8dispatch3pow21pow_on_chunked_arraysB2j_B2j_Es_0Es_0INtB7_5FnMutTINtNtBb_6option6OptionmEEE8call_mutB33_", scope: !2859, file: !2331, line: 297, type: !2227, scopeLine: 297, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2226)
!116119 = distinct !DISubprogram(name: "clone<u32>", linkageName: "_RNvXs4_NtCscgRAwXFJnXP_4core6optionINtB5_6OptionmENtNtB7_5clone5Clone5cloneCskY9G75ZWc4U_11polars_expr", scope: !2982, file: !2281, line: 2276, type: !2227, scopeLine: 2276, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2226)
!116120 = distinct !DISubprogram(name: "{closure#1}<polars_core::datatypes::UInt32Type, polars_core::datatypes::UInt32Type, polars_core::datatypes::UInt32Type, polars_expr::dispatch::pow::pow_on_chunked_arrays::{closure_env#1}<polars_core::datatypes::UInt32Type, polars_core::datatypes::UInt32Type>>", linkageName: "_RNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops5arity28broadcast_binary_elementwiseNtNtBa_9datatypes10UInt32TypeB1u_B1u_NCINvNtNtCskY9G75ZWc4U_11polars_expr8dispatch3pow21pow_on_chunked_arraysB1u_B1u_Es_0Es_0B2e_", scope: !2983, file: !2651, line: 779, type: !2242, scopeLine: 779, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2226)
!116121 = distinct !DILocation(line: 298, column: 21, scope: !116118)
!116122 = distinct !DILocation(line: 779, column: 48, scope: !116120, inlinedAt: !116121)
!116123 = distinct !{!116123, i1 true, !"_RNvXsd_NtNtCscgRAwXFJnXP_4core5clone5implsmNtB7_5Clone5clone"}
!116124 = distinct !{!116124, !116123, !"_RNvXsd_NtNtCscgRAwXFJnXP_4core5clone5implsmNtB7_5Clone5clone: argument 0"}
!116125 = distinct !DILexicalBlock(scope: !116119, file: !2281, line: 2278, column: 13)
!116126 = distinct !DILocation(line: 2278, column: 31, scope: !116125, inlinedAt: !116122)
!116127 = distinct !DILocation(line: 779, column: 40, scope: !116120, inlinedAt: !116121)
!116128 = distinct !DILocation(line: 34, column: 62, scope: !1959, inlinedAt: !116127)
!116129 = distinct !DILocation(line: 39, column: 17, scope: !1355, inlinedAt: !116128)
!116130 = !{!116124}
!116131 = !DILocation(line: 298, column: 13, scope: !116118)
!116132 = !DILocation(line: 298, column: 21, scope: !116118)
!116133 = !DILocation(line: 2277, column: 15, scope: !116119, inlinedAt: !116122)
!116134 = !DILocation(line: 2277, column: 9, scope: !116119, inlinedAt: !116122)
!116135 = !DILocation(line: 615, column: 25, scope: !1940, inlinedAt: !116126)
!116136 = !DILocation(line: 3546, column: 16, scope: !1354, inlinedAt: !116129)
!116137 = !DILocation(line: 0, scope: !1356, inlinedAt: !116129)
!116138 = !DILocation(line: 3572, column: 24, scope: !1357, inlinedAt: !116129)
!116139 = !DILocation(line: 3573, column: 31, scope: !1357, inlinedAt: !116129)
!116140 = !DILocation(line: 3575, column: 28, scope: !1357, inlinedAt: !116129)
!116141 = !DILocation(line: 3579, column: 21, scope: !1357, inlinedAt: !116129)
!116142 = !DILocation(line: 3580, column: 28, scope: !1357, inlinedAt: !116129)
!116143 = !DILocation(line: 3571, column: 17, scope: !1357, inlinedAt: !116129)
!116144 = !DILocation(line: 34, scope: !1959, inlinedAt: !116127)
!116145 = !DILocation(line: 34, column: 79, scope: !1959, inlinedAt: !116127)
!116146 = !DILocation(line: 299, column: 10, scope: !116118)
!116147 = distinct !DISubprogram(name: "call_mut<(core::option::Option<u32>), polars_core::chunked_array::ops::arity::broadcast_binary_elementwise::{closure_env#0}<polars_core::datatypes::UInt64Type, polars_core::datatypes::UInt32Type, polars_core::datatypes::UInt64Type, polars_expr::dispatch::pow::pow_on_chunked_arrays::{closure_env#1}<polars_core::datatypes::UInt64Type, polars_core::datatypes::UInt32Type>>>", linkageName: "_RNvXs1_NtNtNtCscgRAwXFJnXP_4core3ops8function5implsQNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops5arity28broadcast_binary_elementwiseNtNtBZ_9datatypes10UInt64TypeNtB2l_10UInt32TypeB2j_NCINvNtNtCskY9G75ZWc4U_11polars_expr8dispatch3pow21pow_on_chunked_arraysB2j_B2M_Es_0E0INtB7_5FnMutTINtNtBb_6option6OptionmEEE8call_mutB3h_", scope: !2859, file: !2331, line: 297, type: !2227, scopeLine: 297, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2226)
!116148 = distinct !DISubprogram(name: "clone<u64>", linkageName: "_RNvXs4_NtCscgRAwXFJnXP_4core6optionINtB5_6OptionyENtNtB7_5clone5Clone5cloneCskY9G75ZWc4U_11polars_expr", scope: !2982, file: !2281, line: 2276, type: !2227, scopeLine: 2276, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2226)
!116149 = distinct !DISubprogram(name: "{closure#0}<polars_core::datatypes::UInt64Type, polars_core::datatypes::UInt32Type, polars_core::datatypes::UInt64Type, polars_expr::dispatch::pow::pow_on_chunked_arrays::{closure_env#1}<polars_core::datatypes::UInt64Type, polars_core::datatypes::UInt32Type>>", linkageName: "_RNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops5arity28broadcast_binary_elementwiseNtNtBa_9datatypes10UInt64TypeNtB1w_10UInt32TypeB1u_NCINvNtNtCskY9G75ZWc4U_11polars_expr8dispatch3pow21pow_on_chunked_arraysB1u_B1X_Es_0E0B2s_", scope: !2983, file: !2651, line: 775, type: !2242, scopeLine: 775, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2226)
!116150 = distinct !DILocation(line: 298, column: 21, scope: !116147)
!116151 = distinct !DILocation(line: 775, column: 45, scope: !116149, inlinedAt: !116150)
!116152 = distinct !DILocation(line: 775, column: 40, scope: !116149, inlinedAt: !116150)
!116153 = distinct !DILocation(line: 34, column: 62, scope: !1960, inlinedAt: !116152)
!116154 = distinct !DILocation(line: 39, column: 17, scope: !1384, inlinedAt: !116153)
!116155 = distinct !{!116155, i1 true, !"_RNvXsf_NtNtCscgRAwXFJnXP_4core5clone5implsyNtB7_5Clone5clone"}
!116156 = distinct !{!116156, !116155, !"_RNvXsf_NtNtCscgRAwXFJnXP_4core5clone5implsyNtB7_5Clone5clone: argument 0"}
!116157 = distinct !DISubprogram(name: "clone", linkageName: "_RNvXsf_NtNtCscgRAwXFJnXP_4core5clone5implsyNtB7_5Clone5clone", scope: !116161, file: !2875, line: 614, type: !2227, scopeLine: 614, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2226)
!116158 = distinct !DILexicalBlock(scope: !116148, file: !2281, line: 2278, column: 13)
!116159 = distinct !DILocation(line: 2278, column: 31, scope: !116158, inlinedAt: !116151)
!116160 = !{!116156}
!116161 = !DINamespace(name: "{impl#17}", scope: !2877)
!116162 = !DILocation(line: 298, column: 13, scope: !116147)
!116163 = !DILocation(line: 298, column: 21, scope: !116147)
!116164 = !DILocation(line: 2277, column: 15, scope: !116148, inlinedAt: !116151)
!116165 = !DILocation(line: 2277, column: 9, scope: !116148, inlinedAt: !116151)
!116166 = !DILocation(line: 3546, column: 16, scope: !1383, inlinedAt: !116154)
!116167 = !DILocation(line: 615, column: 25, scope: !116157, inlinedAt: !116159)
!116168 = !DILocation(line: 3572, column: 24, scope: !1386, inlinedAt: !116154)
!116169 = !DILocation(line: 0, scope: !1385, inlinedAt: !116154)
!116170 = !DILocation(line: 3573, column: 31, scope: !1386, inlinedAt: !116154)
!116171 = !DILocation(line: 3575, column: 28, scope: !1386, inlinedAt: !116154)
!116172 = !DILocation(line: 3579, column: 21, scope: !1386, inlinedAt: !116154)
!116173 = !DILocation(line: 3580, column: 28, scope: !1386, inlinedAt: !116154)
!116174 = !DILocation(line: 3571, column: 17, scope: !1386, inlinedAt: !116154)
!116175 = !DILocation(line: 34, scope: !1960, inlinedAt: !116152)
!116176 = !DILocation(line: 34, column: 79, scope: !1960, inlinedAt: !116152)
!116177 = !DILocation(line: 299, column: 10, scope: !116147)
!116178 = distinct !DISubprogram(name: "call_mut<(core::option::Option<u64>), polars_core::chunked_array::ops::arity::broadcast_binary_elementwise::{closure_env#1}<polars_core::datatypes::UInt64Type, polars_core::datatypes::UInt32Type, polars_core::datatypes::UInt64Type, polars_expr::dispatch::pow::pow_on_chunked_arrays::{closure_env#1}<polars_core::datatypes::UInt64Type, polars_core::datatypes::UInt32Type>>>", linkageName: "_RNvXs1_NtNtNtCscgRAwXFJnXP_4core3ops8function5implsQNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops5arity28broadcast_binary_elementwiseNtNtBZ_9datatypes10UInt64TypeNtB2l_10UInt32TypeB2j_NCINvNtNtCskY9G75ZWc4U_11polars_expr8dispatch3pow21pow_on_chunked_arraysB2j_B2M_Es_0Es_0INtB7_5FnMutTINtNtBb_6option6OptionyEEE8call_mutB3h_", scope: !2859, file: !2331, line: 297, type: !2227, scopeLine: 297, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2226)
!116179 = distinct !DISubprogram(name: "clone<u32>", linkageName: "_RNvXs4_NtCscgRAwXFJnXP_4core6optionINtB5_6OptionmENtNtB7_5clone5Clone5cloneCskY9G75ZWc4U_11polars_expr", scope: !2982, file: !2281, line: 2276, type: !2227, scopeLine: 2276, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2226)
!116180 = distinct !DISubprogram(name: "{closure#1}<polars_core::datatypes::UInt64Type, polars_core::datatypes::UInt32Type, polars_core::datatypes::UInt64Type, polars_expr::dispatch::pow::pow_on_chunked_arrays::{closure_env#1}<polars_core::datatypes::UInt64Type, polars_core::datatypes::UInt32Type>>", linkageName: "_RNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops5arity28broadcast_binary_elementwiseNtNtBa_9datatypes10UInt64TypeNtB1w_10UInt32TypeB1u_NCINvNtNtCskY9G75ZWc4U_11polars_expr8dispatch3pow21pow_on_chunked_arraysB1u_B1X_Es_0Es_0B2s_", scope: !2983, file: !2651, line: 779, type: !2242, scopeLine: 779, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2226)
!116181 = distinct !DILocation(line: 298, column: 21, scope: !116178)
!116182 = distinct !DILocation(line: 779, column: 48, scope: !116180, inlinedAt: !116181)
!116183 = distinct !{!116183, i1 true, !"_RNvXsd_NtNtCscgRAwXFJnXP_4core5clone5implsmNtB7_5Clone5clone"}
!116184 = distinct !{!116184, !116183, !"_RNvXsd_NtNtCscgRAwXFJnXP_4core5clone5implsmNtB7_5Clone5clone: argument 0"}
!116185 = distinct !DILexicalBlock(scope: !116179, file: !2281, line: 2278, column: 13)
!116186 = distinct !DILocation(line: 2278, column: 31, scope: !116185, inlinedAt: !116182)
!116187 = distinct !DILocation(line: 779, column: 40, scope: !116180, inlinedAt: !116181)
!116188 = distinct !DILocation(line: 34, column: 62, scope: !1960, inlinedAt: !116187)
!116189 = distinct !DILocation(line: 39, column: 17, scope: !1384, inlinedAt: !116188)
!116190 = !{!116184}
!116191 = !DILocation(line: 298, column: 13, scope: !116178)
!116192 = !DILocation(line: 298, column: 21, scope: !116178)
!116193 = !DILocation(line: 2277, column: 15, scope: !116179, inlinedAt: !116182)
!116194 = !DILocation(line: 2277, column: 9, scope: !116179, inlinedAt: !116182)
!116195 = !DILocation(line: 615, column: 25, scope: !1940, inlinedAt: !116186)
!116196 = !DILocation(line: 3546, column: 16, scope: !1383, inlinedAt: !116189)
!116197 = !DILocation(line: 0, scope: !1385, inlinedAt: !116189)
!116198 = !DILocation(line: 3572, column: 24, scope: !1386, inlinedAt: !116189)
!116199 = !DILocation(line: 3573, column: 31, scope: !1386, inlinedAt: !116189)
!116200 = !DILocation(line: 3575, column: 28, scope: !1386, inlinedAt: !116189)
!116201 = !DILocation(line: 3579, column: 21, scope: !1386, inlinedAt: !116189)
!116202 = !DILocation(line: 3580, column: 28, scope: !1386, inlinedAt: !116189)
!116203 = !DILocation(line: 3571, column: 17, scope: !1386, inlinedAt: !116189)
!116204 = !DILocation(line: 34, scope: !1960, inlinedAt: !116187)
!116205 = !DILocation(line: 34, column: 79, scope: !1960, inlinedAt: !116187)
!116206 = !DILocation(line: 299, column: 10, scope: !116178)
!116207 = distinct !DISubprogram(name: "call_mut<(core::option::Option<polars_utils::float16::pf16>), polars_core::chunked_array::ops::arity::broadcast_binary_elementwise::{closure_env#0}<polars_core::datatypes::Float16Type, polars_core::datatypes::Float16Type, polars_core::datatypes::Float16Type, polars_expr::dispatch::trigonometry::arctan2_on_floats::{closure_env#0}<polars_core::datatypes::Float16Type>>>", linkageName: "_RNvXs1_NtNtNtCscgRAwXFJnXP_4core3ops8function5implsQNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops5arity28broadcast_binary_elementwiseNtNtBZ_9datatypes11Float16TypeB2j_B2j_NCINvNtNtCskY9G75ZWc4U_11polars_expr8dispatch12trigonometry17arctan2_on_floatsB2j_E0E0INtB7_5FnMutTINtNtBb_6option6OptionNtNtCs2mZqlW55729_12polars_utils7float164pf16EEE8call_mutB34_", scope: !2859, file: !2331, line: 297, type: !2227, scopeLine: 297, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2226)
!116208 = distinct !DISubprogram(name: "clone<polars_utils::float16::pf16>", linkageName: "_RNvXs4_NtCscgRAwXFJnXP_4core6optionINtB5_6OptionNtNtCs2mZqlW55729_12polars_utils7float164pf16ENtNtB7_5clone5Clone5cloneCskY9G75ZWc4U_11polars_expr", scope: !2982, file: !2281, line: 2276, type: !2227, scopeLine: 2276, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2226)
!116209 = distinct !DISubprogram(name: "{closure#0}<polars_core::datatypes::Float16Type, polars_core::datatypes::Float16Type, polars_core::datatypes::Float16Type, polars_expr::dispatch::trigonometry::arctan2_on_floats::{closure_env#0}<polars_core::datatypes::Float16Type>>", linkageName: "_RNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops5arity28broadcast_binary_elementwiseNtNtBa_9datatypes11Float16TypeB1u_B1u_NCINvNtNtCskY9G75ZWc4U_11polars_expr8dispatch12trigonometry17arctan2_on_floatsB1u_E0E0B2f_", scope: !2983, file: !2651, line: 775, type: !2242, scopeLine: 775, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2226)
!116210 = distinct !DILocation(line: 298, column: 21, scope: !116207)
!116211 = distinct !DILocation(line: 775, column: 45, scope: !116209, inlinedAt: !116210)
!116212 = distinct !DILexicalBlock(scope: !116208, file: !2281, line: 2278, column: 13)
!116213 = !DILocation(line: 298, column: 13, scope: !116207)
!116214 = !DILocation(line: 298, column: 21, scope: !116207)
!116215 = !DILocation(line: 2277, column: 15, scope: !116208, inlinedAt: !116211)
!116216 = !DILocation(line: 2277, column: 9, scope: !116208, inlinedAt: !116211)
!116217 = !DILocation(line: 2278, column: 31, scope: !116212, inlinedAt: !116211)
!116218 = !DILocation(line: 2278, column: 38, scope: !116208, inlinedAt: !116211)
!116219 = !DILocation(line: 775, scope: !116209, inlinedAt: !116210)
!116220 = !DILocation(line: 0, scope: !116208, inlinedAt: !116211)
!116221 = !DILocation(line: 775, column: 40, scope: !116209, inlinedAt: !116210)
!116222 = !DILocation(line: 299, column: 10, scope: !116207)
end_hunk_3
