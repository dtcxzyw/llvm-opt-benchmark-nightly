Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pola-rs/original/polars_sql-4f9f54f7d5831ee1.polars_sql.cafc849952b8d473-cgu.14?download=true
inline.NumInlined: 1684
inline.NumDeleted: 390
begin_hunk_0_@_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl13datatype_expr12DataTypeExprEECshquuC4dCYVj_10polars_sql:bb.a
  resume { ptr, i32 } %i.b, !dbg !2165
}

; Function Attrs: nonlazybind optsize uwtable
define internal fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr9LazySerdeINtNtNtBJ_9anonymous4expr9SpecialEqINtNtCsgZ49sUHp3tW_5alloc4sync3ArcDNtB1A_19AnonymousColumnsUdfEL_EEEECshquuC4dCYVj_10polars_sql(ptr noalias noundef nonnull align 8 dereferenceable(72) %0) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !2168 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !dbg !2271, !range !387, !noundef !261 ; 2 uses
  %i.b = xor i64 %i.a, -9223372036854775808, !dbg !2271
  %i.c = icmp slt i64 %i.a, 0, !dbg !2271
  %i.d = select i1 %i.c, i64 %i.b, i64 2, !dbg !2271
  switch i64 %i.d, label %bb.b [
    i64 0, label %bb.c
    i64 1, label %bb.e
  ], !dbg !2271

bb.b:                                             ; preds = %bb.a
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VechEECshquuC4dCYVj_10polars_sql(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsgZ49sUHp3tW_5alloc6string6StringECshquuC4dCYVj_10polars_sql.exit unwind label %bb.f, !dbg !2272

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !2271 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2251), !dbg !2271
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2252), !dbg !2273
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2253), !dbg !2274
  %i.f = load ptr, ptr %i.e, align 8, !dbg !2275, !alias.scope !2254, !nonnull !261, !noundef !261
  %i.g = atomicrmw add ptr %i.f, i64 -1 release, align 8, !dbg !2276, !noalias !2254
  %i.h = icmp eq i64 %i.g, 1, !dbg !2277
  br i1 %i.h, label %bb.d, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr9anonymous4expr9SpecialEqINtNtCsgZ49sUHp3tW_5alloc4sync3ArcDNtBJ_19AnonymousColumnsUdfEL_EEECshquuC4dCYVj_10polars_sql.exit, !dbg !2277

bb.d:                                             ; preds = %bb.c
  fence acquire, !dbg !2278
  tail call void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcDNtNtNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr9anonymous4expr19AnonymousColumnsUdfEL_E9drop_slowBR_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.e) #38, !dbg !2279
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr9anonymous4expr9SpecialEqINtNtCsgZ49sUHp3tW_5alloc4sync3ArcDNtBJ_19AnonymousColumnsUdfEL_EEECshquuC4dCYVj_10polars_sql.exit, !dbg !2279

bb.e:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !2271
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2255), !dbg !2271
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2256), !dbg !2280
  %i.j = load ptr, ptr %i.i, align 8, !dbg !2281, !alias.scope !2257, !nonnull !261, !align !388, !noundef !261
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 32, !dbg !2281
  %i.l = load ptr, ptr %i.k, align 8, !dbg !2281, !noalias !2257, !nonnull !261, !noundef !261
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !2282
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !2283
  %i.o = load ptr, ptr %i.n, align 8, !dbg !2283, !alias.scope !2257, !noundef !261
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !2284
  %i.q = load i64, ptr %i.p, align 8, !dbg !2284, !alias.scope !2257, !noundef !261
  tail call void %i.l(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.m, ptr noundef %i.o, i64 noundef %i.q), !dbg !2281, !inline_history !2199
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr9anonymous4expr9SpecialEqINtNtCsgZ49sUHp3tW_5alloc4sync3ArcDNtBJ_19AnonymousColumnsUdfEL_EEECshquuC4dCYVj_10polars_sql.exit, !dbg !2271

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr9anonymous4expr9SpecialEqINtNtCsgZ49sUHp3tW_5alloc4sync3ArcDNtBJ_19AnonymousColumnsUdfEL_EEECshquuC4dCYVj_10polars_sql.exit: ; preds = %bb.m, %bb.l, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCshK0ivY6saku_5bytes5bytes5BytesEECshquuC4dCYVj_10polars_sql.exit3, %bb.d, %bb.c, %bb.e
  ret void, !dbg !2271

bb.f:                                             ; preds = %bb.b
  %i.r = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !2271
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2259), !dbg !2271
  %i.t = load ptr, ptr %i.s, align 8, !dbg !2285, !alias.scope !2259, !noundef !261 ; 2 uses
  %i.u = icmp eq ptr %i.t, null, !dbg !2285
  br i1 %i.u, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCshK0ivY6saku_5bytes5bytes5BytesEECshquuC4dCYVj_10polars_sql.exit, label %bb.g, !dbg !2285

bb.g:                                             ; preds = %bb.f
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2260), !dbg !2285
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2261), !dbg !2286
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 32, !dbg !2287
  %i.w = load ptr, ptr %i.v, align 8, !dbg !2287, !noalias !2262, !nonnull !261, !noundef !261
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 48, !dbg !2288
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !2289
  %i.z = load ptr, ptr %i.y, align 8, !dbg !2289, !alias.scope !2262, !noundef !261
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 40, !dbg !2290
  %i.ab = load i64, ptr %i.aa, align 8, !dbg !2290, !alias.scope !2262, !noundef !261
  invoke void %i.w(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.x, ptr noundef %i.z, i64 noundef %i.ab)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCshK0ivY6saku_5bytes5bytes5BytesEECshquuC4dCYVj_10polars_sql.exit unwind label %bb.n, !dbg !2287, !inline_history !2210

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsgZ49sUHp3tW_5alloc6string6StringECshquuC4dCYVj_10polars_sql.exit: ; preds = %bb.b
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !2271
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2263), !dbg !2271
  %i.ad = load ptr, ptr %i.ac, align 8, !dbg !2291, !alias.scope !2263, !noundef !261 ; 2 uses
  %i.ae = icmp eq ptr %i.ad, null, !dbg !2291
  br i1 %i.ae, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCshK0ivY6saku_5bytes5bytes5BytesEECshquuC4dCYVj_10polars_sql.exit3, label %bb.h, !dbg !2291

bb.h:                                             ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsgZ49sUHp3tW_5alloc6string6StringECshquuC4dCYVj_10polars_sql.exit
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2264), !dbg !2291
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2265), !dbg !2292
  %i.af = getelementptr inbounds nuw i8, ptr %i.ad, i64 32, !dbg !2293
  %i.ag = load ptr, ptr %i.af, align 8, !dbg !2293, !noalias !2266, !nonnull !261, !noundef !261
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 48, !dbg !2294
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !2295
  %i.aj = load ptr, ptr %i.ai, align 8, !dbg !2295, !alias.scope !2266, !noundef !261
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 40, !dbg !2296
  %i.al = load i64, ptr %i.ak, align 8, !dbg !2296, !alias.scope !2266, !noundef !261
  invoke void %i.ag(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.ah, ptr noundef %i.aj, i64 noundef %i.al)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCshK0ivY6saku_5bytes5bytes5BytesEECshquuC4dCYVj_10polars_sql.exit3 unwind label %bb.k, !dbg !2293, !inline_history !2210

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCshK0ivY6saku_5bytes5bytes5BytesEECshquuC4dCYVj_10polars_sql.exit: ; preds = %bb.f, %bb.g, %bb.k
  %.pn = phi { ptr, i32 } [ %i.ar, %bb.k ], [ %i.r, %bb.g ], [ %i.r, %bb.f ]
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 56, !dbg !2271 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2267), !dbg !2271
  %i.an = load ptr, ptr %i.am, align 8, !dbg !2297, !alias.scope !2267, !noundef !261 ; 2 uses
  %i.ao = icmp eq ptr %i.an, null, !dbg !2297
  br i1 %i.ao, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr9anonymous4expr9SpecialEqINtNtCsgZ49sUHp3tW_5alloc4sync3ArcDNtB15_19AnonymousColumnsUdfEL_EEEECshquuC4dCYVj_10polars_sql.exit, label %bb.i, !dbg !2297

bb.i:                                             ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCshK0ivY6saku_5bytes5bytes5BytesEECshquuC4dCYVj_10polars_sql.exit
  %i.ap = atomicrmw add ptr %i.an, i64 -1 release, align 8, !dbg !2298, !noalias !2268
  %i.aq = icmp eq i64 %i.ap, 1, !dbg !2299
  br i1 %i.aq, label %bb.j, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr9anonymous4expr9SpecialEqINtNtCsgZ49sUHp3tW_5alloc4sync3ArcDNtB15_19AnonymousColumnsUdfEL_EEEECshquuC4dCYVj_10polars_sql.exit, !dbg !2299

bb.j:                                             ; preds = %bb.i
  fence acquire, !dbg !2300
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcDNtNtNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr9anonymous4expr19AnonymousColumnsUdfEL_E9drop_slowBR_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.am) #38
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr9anonymous4expr9SpecialEqINtNtCsgZ49sUHp3tW_5alloc4sync3ArcDNtB15_19AnonymousColumnsUdfEL_EEEECshquuC4dCYVj_10polars_sql.exit unwind label %bb.n, !dbg !2301

bb.k:                                             ; preds = %bb.h
  %i.ar = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCshK0ivY6saku_5bytes5bytes5BytesEECshquuC4dCYVj_10polars_sql.exit

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCshK0ivY6saku_5bytes5bytes5BytesEECshquuC4dCYVj_10polars_sql.exit3: ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsgZ49sUHp3tW_5alloc6string6StringECshquuC4dCYVj_10polars_sql.exit, %bb.h
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 56, !dbg !2271 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2269), !dbg !2271
  %i.at = load ptr, ptr %i.as, align 8, !dbg !2302, !alias.scope !2269, !noundef !261 ; 2 uses
  %i.au = icmp eq ptr %i.at, null, !dbg !2302
  br i1 %i.au, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr9anonymous4expr9SpecialEqINtNtCsgZ49sUHp3tW_5alloc4sync3ArcDNtBJ_19AnonymousColumnsUdfEL_EEECshquuC4dCYVj_10polars_sql.exit, label %bb.l, !dbg !2302

bb.l:                                             ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCshK0ivY6saku_5bytes5bytes5BytesEECshquuC4dCYVj_10polars_sql.exit3
  %i.av = atomicrmw add ptr %i.at, i64 -1 release, align 8, !dbg !2303, !noalias !2270
  %i.aw = icmp eq i64 %i.av, 1, !dbg !2304
  br i1 %i.aw, label %bb.m, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr9anonymous4expr9SpecialEqINtNtCsgZ49sUHp3tW_5alloc4sync3ArcDNtBJ_19AnonymousColumnsUdfEL_EEECshquuC4dCYVj_10polars_sql.exit, !dbg !2304

bb.m:                                             ; preds = %bb.l
  fence acquire, !dbg !2305
  tail call void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcDNtNtNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr9anonymous4expr19AnonymousColumnsUdfEL_E9drop_slowBR_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.as) #38, !dbg !2306
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr9anonymous4expr9SpecialEqINtNtCsgZ49sUHp3tW_5alloc4sync3ArcDNtBJ_19AnonymousColumnsUdfEL_EEECshquuC4dCYVj_10polars_sql.exit, !dbg !2306

bb.n:                                             ; preds = %bb.j, %bb.g
  %i.ax = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #36, !dbg !2271
  unreachable, !dbg !2271

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr9anonymous4expr9SpecialEqINtNtCsgZ49sUHp3tW_5alloc4sync3ArcDNtB15_19AnonymousColumnsUdfEL_EEEECshquuC4dCYVj_10polars_sql.exit: ; preds = %bb.i, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCshK0ivY6saku_5bytes5bytes5BytesEECshquuC4dCYVj_10polars_sql.exit, %bb.j
  resume { ptr, i32 } %.pn, !dbg !2271
}

; Function Attrs: nonlazybind optsize uwtable
define internal fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtNtCsh8eZTKRCwoO_3std4sync6poison5mutex5MutexINtNtB4_6option6OptionINtNtCsbm5zPlkZccl_4pyo38instance2PyNtNtNtB1W_5types9traceback11PyTracebackEEEECshquuC4dCYVj_10polars_sql(ptr %.8.val) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !2307 {
bb.a:
  %i.a = icmp eq ptr %.8.val, null, !dbg !2324
  br i1 %i.a, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_4cell10UnsafeCellINtNtB4_6option6OptionINtNtCsbm5zPlkZccl_4pyo38instance2PyNtNtNtB1w_5types9traceback11PyTracebackEEEECshquuC4dCYVj_10polars_sql.exit, label %bb.b, !dbg !2324

bb.b:                                             ; preds = %bb.a
  %i.b = tail call noundef nonnull align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNtNtCsbm5zPlkZccl_4pyo38internal5state12ATTACH_COUNT0s_023___RUST_STD_INTERNAL_VAL), !dbg !2325
  %.val.i.i.i.i.i.i = load i64, ptr %i.b, align 8, !dbg !2326, !noundef !261
  %i.c = icmp sgt i64 %.val.i.i.i.i.i.i, 0, !dbg !2327
  br i1 %i.c, label %bb.d, label %bb.c, !dbg !2328, !prof !380

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvNvXsA_NtCsbm5zPlkZccl_4pyo38instanceINtB7_2PypENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4drop9drop_slow(ptr noundef nonnull %.8.val), !dbg !2329
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_4cell10UnsafeCellINtNtB4_6option6OptionINtNtCsbm5zPlkZccl_4pyo38instance2PyNtNtNtB1w_5types9traceback11PyTracebackEEEECshquuC4dCYVj_10polars_sql.exit, !dbg !2329

bb.d:                                             ; preds = %bb.b
  tail call void @_Py_DecRef(ptr noundef nonnull %.8.val) #34, !dbg !2330
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_4cell10UnsafeCellINtNtB4_6option6OptionINtNtCsbm5zPlkZccl_4pyo38instance2PyNtNtNtB1w_5types9traceback11PyTracebackEEEECshquuC4dCYVj_10polars_sql.exit, !dbg !2331

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_4cell10UnsafeCellINtNtB4_6option6OptionINtNtCsbm5zPlkZccl_4pyo38instance2PyNtNtNtB1w_5types9traceback11PyTracebackEEEECshquuC4dCYVj_10polars_sql.exit: ; preds = %bb.a, %bb.c, %bb.d
  ret void, !dbg !2332
}

; Function Attrs: nonlazybind optsize uwtable
define internal void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtCsgjwxzEoLG5s_12polars_error11PolarsErrorECshquuC4dCYVj_10polars_sql(ptr noalias noundef align 8 dereferenceable(72) %0) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !2333 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !dbg !2586, !range !392, !noundef !261
  switch i64 %i.a, label %bb.b [
    i64 0, label %bb.q
    i64 1, label %bb.s
    i64 2, label %bb.u
    i64 3, label %bb.w
    i64 4, label %bb.y
    i64 5, label %bb.aa
    i64 6, label %bb.ac
    i64 7, label %bb.ae
    i64 8, label %bb.ag
    i64 9, label %bb.ai
    i64 10, label %bb.ak
    i64 11, label %bb.am
    i64 12, label %bb.ao
    i64 13, label %bb.aq
    i64 14, label %bb.as
    i64 15, label %bb.au
    i64 16, label %bb.av
  ], !dbg !2586

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2553), !dbg !2586
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2554), !dbg !2587
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2555), !dbg !2588
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !2589
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2556), !dbg !2589
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2557), !dbg !2590
  %i.c = load i64, ptr %i.b, align 8, !dbg !2591, !range !344, !alias.scope !2558, !noundef !261
  %1 = trunc nuw i64 %i.c to i1, !dbg !2591
  br i1 %1, label %bb.c, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsgjwxzEoLG5s_12polars_error6python9PyErrWrapECshquuC4dCYVj_10polars_sql.exit, !dbg !2591

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !2591
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2559), !dbg !2591
  %i.e = load ptr, ptr %i.d, align 8, !dbg !2592, !alias.scope !2560, !noundef !261 ; 3 uses
  %i.f = icmp eq ptr %i.e, null, !dbg !2592
  br i1 %i.f, label %bb.d, label %bb.j, !dbg !2592

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40, !dbg !2592
  %.val.i.i.i.i.i.i = load ptr, ptr %i.g, align 8, !dbg !2592, !alias.scope !2560 ; 5 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 48, !dbg !2592
  %.val1.i.i.i.i.i.i = load ptr, ptr %i.h, align 8, !dbg !2592, !alias.scope !2560, !nonnull !261, !align !388, !noundef !261 ; 5 uses
  %i.i = load ptr, ptr %.val1.i.i.i.i.i.i, align 8, !dbg !2593, !invariant.load !261, !noalias !2560 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.i, null, !dbg !2593
  br i1 %.not.i.i.i.i.i.i.i, label %bb.f, label %bb.e, !dbg !2593

bb.e:                                             ; preds = %bb.d
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i.i.i.i) ]
  invoke void %i.i(ptr noundef nonnull %.val.i.i.i.i.i.i)
          to label %bb.f unwind label %bb.h, !dbg !2593, !noalias !2560

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.j = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i.i.i, i64 8, !dbg !2594
  %i.k = load i64, ptr %i.j, align 8, !dbg !2594, !range !393, !invariant.load !261, !noalias !2560 ; 2 uses
  %i.l = icmp eq i64 %i.k, 0, !dbg !2595
  br i1 %i.l, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsgjwxzEoLG5s_12polars_error6python9PyErrWrapECshquuC4dCYVj_10polars_sql.exit, label %bb.g, !dbg !2595

bb.g:                                             ; preds = %bb.f
  %i.m = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i.i.i, i64 16, !dbg !2594
  %i.n = load i64, ptr %i.m, align 8, !dbg !2596, !range !394, !invariant.load !261, !noalias !2560
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i.i.i.i) ]
  tail call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775808) %i.k, i64 noundef range(i64 1, 536870913) %i.n) #34, !dbg !2597, !noalias !2560
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsgjwxzEoLG5s_12polars_error6python9PyErrWrapECshquuC4dCYVj_10polars_sql.exit, !dbg !2598

bb.h:                                             ; preds = %bb.e
  %i.o = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i.i.i, i64 8, !dbg !2599
  %i.q = load i64, ptr %i.p, align 8, !dbg !2599, !range !393, !invariant.load !261, !noalias !2560 ; 2 uses
  %i.r = icmp eq i64 %i.q, 0, !dbg !2600
  br i1 %i.r, label %common.resume, label %bb.i, !dbg !2600

bb.i:                                             ; preds = %bb.h
  %i.s = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i.i.i, i64 16, !dbg !2599
  %i.t = load i64, ptr %i.s, align 8, !dbg !2601, !range !394, !invariant.load !261, !noalias !2560
  tail call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775808) %i.q, i64 noundef range(i64 1, 536870913) %i.t) #34, !dbg !2602, !noalias !2560
  br label %common.resume, !dbg !2603

common.resume:                                    ; preds = %bb.ax, %bb.aw, %bb.bb, %bb.ba, %bb.bf, %bb.be, %bb.h, %bb.i, %bb.n
  %common.resume.op = phi { ptr, i32 } [ %.pn.i.i.i.i.i.i.i, %bb.n ], [ %i.o, %bb.h ], [ %i.o, %bb.i ], [ %i.cf, %bb.ba ], [ %i.bz, %bb.aw ], [ %i.bz, %bb.ax ], [ %i.cf, %bb.bb ], [ %i.cm, %bb.bf ], [ %i.cm, %bb.be ]
  resume { ptr, i32 } %common.resume.op, !dbg !2586

bb.j:                                             ; preds = %bb.c
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2561), !dbg !2592
  %i.u = tail call noundef nonnull align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNtNtCsbm5zPlkZccl_4pyo38internal5state12ATTACH_COUNT0s_023___RUST_STD_INTERNAL_VAL), !dbg !2604
  %.val.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.u, align 8, !dbg !2605, !noalias !2562, !noundef !261
  %i.v = icmp sgt i64 %.val.i.i.i.i.i.i.i.i.i.i.i, 0, !dbg !2606
  br i1 %i.v, label %bb.l, label %bb.k, !dbg !2607, !prof !380

bb.k:                                             ; preds = %bb.j
  invoke void @_RNvNvXsA_NtCsbm5zPlkZccl_4pyo38instanceINtB7_2PypENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4drop9drop_slow(ptr noundef nonnull %i.e)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsbm5zPlkZccl_4pyo38instance2PyNtNtNtBL_5types10typeobject6PyTypeEECshquuC4dCYVj_10polars_sql.exit.i.i.i.i.i.i.i unwind label %bb.m, !dbg !2608, !noalias !2562

bb.l:                                             ; preds = %bb.j
  tail call void @_Py_DecRef(ptr noundef nonnull %i.e) #34, !dbg !2609, !noalias !2562
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsbm5zPlkZccl_4pyo38instance2PyNtNtNtBL_5types10typeobject6PyTypeEECshquuC4dCYVj_10polars_sql.exit.i.i.i.i.i.i.i, !dbg !2610

bb.m:                                             ; preds = %bb.k
  %i.w = landingpad { ptr, i32 }
          cleanup
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 40, !dbg !2611
  %.val3.i.i.i.i.i.i.i = load ptr, ptr %i.x, align 8, !dbg !2611, !alias.scope !2562, !nonnull !261, !noundef !261
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsbm5zPlkZccl_4pyo38instance2PyNtNtBL_10exceptions15PyBaseExceptionEECshquuC4dCYVj_10polars_sql(ptr nonnull %.val3.i.i.i.i.i.i.i) #37
          to label %bb.n unwind label %bb.p, !dbg !2611, !noalias !2562

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsbm5zPlkZccl_4pyo38instance2PyNtNtNtBL_5types10typeobject6PyTypeEECshquuC4dCYVj_10polars_sql.exit.i.i.i.i.i.i.i: ; preds = %bb.l, %bb.k
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 40, !dbg !2611
  %.val2.i.i.i.i.i.i.i = load ptr, ptr %i.y, align 8, !dbg !2611, !alias.scope !2562, !nonnull !261, !noundef !261
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsbm5zPlkZccl_4pyo38instance2PyNtNtBL_10exceptions15PyBaseExceptionEECshquuC4dCYVj_10polars_sql(ptr nonnull %.val2.i.i.i.i.i.i.i)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsbm5zPlkZccl_4pyo33err9err_state20PyErrStateNormalizedECshquuC4dCYVj_10polars_sql.exit.i.i.i.i.i.i unwind label %bb.o, !dbg !2611, !noalias !2562

bb.n:                                             ; preds = %bb.o, %bb.m
  %.pn.i.i.i.i.i.i.i = phi { ptr, i32 } [ %i.aa, %bb.o ], [ %i.w, %bb.m ]
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 56, !dbg !2611
  %.val5.i.i.i.i.i.i.i = load ptr, ptr %i.z, align 8, !dbg !2611, !alias.scope !2562, !noundef !261
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtNtCsh8eZTKRCwoO_3std4sync6poison5mutex5MutexINtNtB4_6option6OptionINtNtCsbm5zPlkZccl_4pyo38instance2PyNtNtNtB1W_5types9traceback11PyTracebackEEEECshquuC4dCYVj_10polars_sql(ptr %.val5.i.i.i.i.i.i.i) #37
          to label %common.resume unwind label %bb.p, !dbg !2611, !noalias !2562

bb.o:                                             ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsbm5zPlkZccl_4pyo38instance2PyNtNtNtBL_5types10typeobject6PyTypeEECshquuC4dCYVj_10polars_sql.exit.i.i.i.i.i.i.i
  %i.aa = landingpad { ptr, i32 }
          cleanup
  br label %bb.n

bb.p:                                             ; preds = %bb.n, %bb.m
  %i.ab = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #36, !dbg !2611, !noalias !2562
  unreachable, !dbg !2611

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsbm5zPlkZccl_4pyo33err9err_state20PyErrStateNormalizedECshquuC4dCYVj_10polars_sql.exit.i.i.i.i.i.i: ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsbm5zPlkZccl_4pyo38instance2PyNtNtNtBL_5types10typeobject6PyTypeEECshquuC4dCYVj_10polars_sql.exit.i.i.i.i.i.i.i
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 56, !dbg !2611
  %.val4.i.i.i.i.i.i.i = load ptr, ptr %i.ac, align 8, !dbg !2611, !alias.scope !2562, !noundef !261
  tail call fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtNtCsh8eZTKRCwoO_3std4sync6poison5mutex5MutexINtNtB4_6option6OptionINtNtCsbm5zPlkZccl_4pyo38instance2PyNtNtNtB1W_5types9traceback11PyTracebackEEEECshquuC4dCYVj_10polars_sql(ptr %.val4.i.i.i.i.i.i.i), !dbg !2611, !noalias !2562
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsgjwxzEoLG5s_12polars_error6python9PyErrWrapECshquuC4dCYVj_10polars_sql.exit, !dbg !2592

bb.q:                                             ; preds = %bb.a
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !2586 ; 2 uses
  %i.ae = load i64, ptr %i.ad, align 8, !dbg !2612, !range !283, !alias.scope !2563, !noundef !261
  %i.af = icmp eq i64 %i.ae, -9223372036854775808, !dbg !2612
  br i1 %i.af, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsgjwxzEoLG5s_12polars_error6python9PyErrWrapECshquuC4dCYVj_10polars_sql.exit, label %bb.r, !dbg !2612

bb.r:                                             ; preds = %bb.q
  tail call fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VechEECshquuC4dCYVj_10polars_sql(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ad), !dbg !2613
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsgjwxzEoLG5s_12polars_error6python9PyErrWrapECshquuC4dCYVj_10polars_sql.exit, !dbg !2612

bb.s:                                             ; preds = %bb.a
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !2586 ; 2 uses
  %i.ah = load i64, ptr %i.ag, align 8, !dbg !2614, !range !283, !alias.scope !2564, !noundef !261
  %i.ai = icmp eq i64 %i.ah, -9223372036854775808, !dbg !2614
  br i1 %i.ai, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsgjwxzEoLG5s_12polars_error6python9PyErrWrapECshquuC4dCYVj_10polars_sql.exit, label %bb.t, !dbg !2614

bb.t:                                             ; preds = %bb.s
  tail call fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VechEECshquuC4dCYVj_10polars_sql(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ag), !dbg !2615
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsgjwxzEoLG5s_12polars_error6python9PyErrWrapECshquuC4dCYVj_10polars_sql.exit, !dbg !2614

bb.u:                                             ; preds = %bb.a
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !2586 ; 2 uses
  %i.ak = load i64, ptr %i.aj, align 8, !dbg !2616, !range !283, !alias.scope !2565, !noundef !261
  %i.al = icmp eq i64 %i.ak, -9223372036854775808, !dbg !2616
  br i1 %i.al, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsgjwxzEoLG5s_12polars_error6python9PyErrWrapECshquuC4dCYVj_10polars_sql.exit, label %bb.v, !dbg !2616

bb.v:                                             ; preds = %bb.u
  tail call fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VechEECshquuC4dCYVj_10polars_sql(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.aj), !dbg !2617
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsgjwxzEoLG5s_12polars_error6python9PyErrWrapECshquuC4dCYVj_10polars_sql.exit, !dbg !2616

bb.w:                                             ; preds = %bb.a
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !2586 ; 2 uses
  %i.an = load i64, ptr %i.am, align 8, !dbg !2618, !range !283, !alias.scope !2566, !noundef !261
  %i.ao = icmp eq i64 %i.an, -9223372036854775808, !dbg !2618
  br i1 %i.ao, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsgjwxzEoLG5s_12polars_error6python9PyErrWrapECshquuC4dCYVj_10polars_sql.exit, label %bb.x, !dbg !2618

bb.x:                                             ; preds = %bb.w
  tail call fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VechEECshquuC4dCYVj_10polars_sql(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.am), !dbg !2619
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsgjwxzEoLG5s_12polars_error6python9PyErrWrapECshquuC4dCYVj_10polars_sql.exit, !dbg !2618

bb.y:                                             ; preds = %bb.a
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !2586 ; 2 uses
  %i.aq = load i64, ptr %i.ap, align 8, !dbg !2620, !range !283, !alias.scope !2567, !noundef !261
  %i.ar = icmp eq i64 %i.aq, -9223372036854775808, !dbg !2620
  br i1 %i.ar, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsgjwxzEoLG5s_12polars_error6python9PyErrWrapECshquuC4dCYVj_10polars_sql.exit, label %bb.z, !dbg !2620

bb.z:                                             ; preds = %bb.y
  tail call fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VechEECshquuC4dCYVj_10polars_sql(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ap), !dbg !2621
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsgjwxzEoLG5s_12polars_error6python9PyErrWrapECshquuC4dCYVj_10polars_sql.exit, !dbg !2620

bb.aa:                                            ; preds = %bb.a
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !2586 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2568), !dbg !2586
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2569), !dbg !2622
  %i.at = load ptr, ptr %i.as, align 8, !dbg !2623, !alias.scope !2570, !nonnull !261, !noundef !261
  %i.au = atomicrmw add ptr %i.at, i64 -1 release, align 8, !dbg !2624, !noalias !2570
  %i.av = icmp eq i64 %i.au, 1, !dbg !2625
  br i1 %i.av, label %bb.ab, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorEECshquuC4dCYVj_10polars_sql.exit, !dbg !2625

bb.ab:                                            ; preds = %bb.aa
  fence acquire, !dbg !2626
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorE9drop_slowCsacIJNrSLJky_9quick_xml(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.as) #38
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorEECshquuC4dCYVj_10polars_sql.exit unwind label %bb.aw, !dbg !2627

bb.ac:                                            ; preds = %bb.a
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !2586 ; 2 uses
  %i.ax = load i64, ptr %i.aw, align 8, !dbg !2628, !range !283, !alias.scope !2571, !noundef !261
  %i.ay = icmp eq i64 %i.ax, -9223372036854775808, !dbg !2628
  br i1 %i.ay, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsgjwxzEoLG5s_12polars_error6python9PyErrWrapECshquuC4dCYVj_10polars_sql.exit, label %bb.ad, !dbg !2628

bb.ad:                                            ; preds = %bb.ac
  tail call fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VechEECshquuC4dCYVj_10polars_sql(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.aw), !dbg !2629
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsgjwxzEoLG5s_12polars_error6python9PyErrWrapECshquuC4dCYVj_10polars_sql.exit, !dbg !2628

bb.ae:                                            ; preds = %bb.a
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !2586 ; 2 uses
  %i.ba = load i64, ptr %i.az, align 8, !dbg !2630, !range !283, !alias.scope !2572, !noundef !261
  %i.bb = icmp eq i64 %i.ba, -9223372036854775808, !dbg !2630
  br i1 %i.bb, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsgjwxzEoLG5s_12polars_error6python9PyErrWrapECshquuC4dCYVj_10polars_sql.exit, label %bb.af, !dbg !2630

bb.af:                                            ; preds = %bb.ae
  tail call fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VechEECshquuC4dCYVj_10polars_sql(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.az), !dbg !2631
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsgjwxzEoLG5s_12polars_error6python9PyErrWrapECshquuC4dCYVj_10polars_sql.exit, !dbg !2630

bb.ag:                                            ; preds = %bb.a
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !2586 ; 2 uses
  %i.bd = load i64, ptr %i.bc, align 8, !dbg !2632, !range !283, !alias.scope !2573, !noundef !261
  %i.be = icmp eq i64 %i.bd, -9223372036854775808, !dbg !2632
  br i1 %i.be, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsgjwxzEoLG5s_12polars_error6python9PyErrWrapECshquuC4dCYVj_10polars_sql.exit, label %bb.ah, !dbg !2632

bb.ah:                                            ; preds = %bb.ag
  tail call fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VechEECshquuC4dCYVj_10polars_sql(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bc), !dbg !2633
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsgjwxzEoLG5s_12polars_error6python9PyErrWrapECshquuC4dCYVj_10polars_sql.exit, !dbg !2632

end_hunk_0
begin_hunk_1_@_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsfcROwRM8ZtH_11polars_plan5plans3lit19DynListLiteralValueECshquuC4dCYVj_10polars_sql:bb.a
    i64 2, label %bb.n
    i64 3, label %bb.b
  ], !dbg !5400

default.unreachable20:                            ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !5400
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5394), !dbg !5400
  %i.c = load ptr, ptr %i.b, align 8, !dbg !5401, !alias.scope !5394, !nonnull !261, !noundef !261 ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !5401
  %i.e = load i64, ptr %i.d, align 8, !dbg !5401, !alias.scope !5394, !noundef !261 ; 7 uses
  %i.f = icmp eq i64 %i.e, 0, !dbg !5402
  br i1 %i.f, label %_RNvXs8_NtCsgZ49sUHp3tW_5alloc5boxedINtB5_3BoxSINtNtCscgRAwXFJnXP_4core6option6OptionNtNtNtCsfcROwRM8ZtH_11polars_plan5plans3lit19DynListLiteralValueEENtNtNtBN_3ops4drop4Drop4dropCshquuC4dCYVj_10polars_sql.exit, label %.lr.ph, !dbg !5402

.lr.ph:                                           ; preds = %bb.b, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCsfcROwRM8ZtH_11polars_plan5plans3lit19DynListLiteralValueEECshquuC4dCYVj_10polars_sql.exit.i
  %.sroa.0.0.i9 = phi i64 [ %i.h, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCsfcROwRM8ZtH_11polars_plan5plans3lit19DynListLiteralValueEECshquuC4dCYVj_10polars_sql.exit.i ], [ 0, %bb.b ] ; 2 uses
  %i.g = getelementptr inbounds nuw [24 x i8], ptr %i.c, i64 %.sroa.0.0.i9, !dbg !5402 ; 2 uses
  %i.h = add nuw i64 %.sroa.0.0.i9, 1, !dbg !5402 ; 4 uses
  %i.i = load i64, ptr %i.g, align 8, !dbg !5403, !range !5395, !alias.scope !5396, !noalias !5394, !noundef !261
  %i.j = icmp eq i64 %i.i, 4, !dbg !5403
  br i1 %i.j, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCsfcROwRM8ZtH_11polars_plan5plans3lit19DynListLiteralValueEECshquuC4dCYVj_10polars_sql.exit.i, label %bb.c, !dbg !5403

bb.c:                                             ; preds = %.lr.ph
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsfcROwRM8ZtH_11polars_plan5plans3lit19DynListLiteralValueECshquuC4dCYVj_10polars_sql(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCsfcROwRM8ZtH_11polars_plan5plans3lit19DynListLiteralValueEECshquuC4dCYVj_10polars_sql.exit.i unwind label %bb.d, !dbg !5403, !noalias !5394, !inline_history !5317

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCsfcROwRM8ZtH_11polars_plan5plans3lit19DynListLiteralValueEECshquuC4dCYVj_10polars_sql.exit.i: ; preds = %bb.c, %.lr.ph
  %i.k = icmp eq i64 %i.h, %i.e, !dbg !5402
  br i1 %i.k, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxSINtNtB4_6option6OptionNtNtNtCsfcROwRM8ZtH_11polars_plan5plans3lit19DynListLiteralValueEEECshquuC4dCYVj_10polars_sql.exit, label %.lr.ph, !dbg !5402

bb.d:                                             ; preds = %bb.c
  %i.l = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.m = icmp eq i64 %i.h, %i.e, !dbg !5402
  br i1 %i.m, label %common.resume, label %.lr.ph11, !dbg !5402

.lr.ph11:                                         ; preds = %bb.d, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCsfcROwRM8ZtH_11polars_plan5plans3lit19DynListLiteralValueEECshquuC4dCYVj_10polars_sql.exit8.i
  %.sroa.0.1.i10 = phi i64 [ %i.o, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCsfcROwRM8ZtH_11polars_plan5plans3lit19DynListLiteralValueEECshquuC4dCYVj_10polars_sql.exit8.i ], [ %i.h, %bb.d ] ; 2 uses
  %i.n = getelementptr inbounds nuw [24 x i8], ptr %i.c, i64 %.sroa.0.1.i10, !dbg !5402 ; 2 uses
  %i.o = add i64 %.sroa.0.1.i10, 1, !dbg !5402    ; 2 uses
  %i.p = load i64, ptr %i.n, align 8, !dbg !5404, !range !5395, !alias.scope !5397, !noalias !5394, !noundef !261
  %i.q = icmp eq i64 %i.p, 4, !dbg !5404
  br i1 %i.q, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCsfcROwRM8ZtH_11polars_plan5plans3lit19DynListLiteralValueEECshquuC4dCYVj_10polars_sql.exit8.i, label %bb.e, !dbg !5404

bb.e:                                             ; preds = %.lr.ph11
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsfcROwRM8ZtH_11polars_plan5plans3lit19DynListLiteralValueECshquuC4dCYVj_10polars_sql(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.n)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCsfcROwRM8ZtH_11polars_plan5plans3lit19DynListLiteralValueEECshquuC4dCYVj_10polars_sql.exit8.i unwind label %bb.f, !dbg !5404, !noalias !5394, !inline_history !5317

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCsfcROwRM8ZtH_11polars_plan5plans3lit19DynListLiteralValueEECshquuC4dCYVj_10polars_sql.exit8.i: ; preds = %bb.e, %.lr.ph11
  %i.r = icmp eq i64 %i.o, %i.e, !dbg !5402
  br i1 %i.r, label %common.resume, label %.lr.ph11, !dbg !5402

bb.f:                                             ; preds = %bb.e
  %i.s = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #36, !dbg !5402, !noalias !5394, !inline_history !5321
  unreachable, !dbg !5402

common.resume:                                    ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCsfcROwRM8ZtH_11polars_plan5plans3lit19DynListLiteralValueEECshquuC4dCYVj_10polars_sql.exit8.i, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrEECshquuC4dCYVj_10polars_sql.exit9.i.i, %bb.d, %bb.i
  %.sink25 = phi i64 [ %.val1, %bb.i ], [ %i.e, %bb.d ], [ %.val1, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrEECshquuC4dCYVj_10polars_sql.exit9.i.i ], [ %i.e, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCsfcROwRM8ZtH_11polars_plan5plans3lit19DynListLiteralValueEECshquuC4dCYVj_10polars_sql.exit8.i ]
  %.sink = phi ptr [ %.val, %bb.i ], [ %i.c, %bb.d ], [ %.val, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrEECshquuC4dCYVj_10polars_sql.exit9.i.i ], [ %i.c, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCsfcROwRM8ZtH_11polars_plan5plans3lit19DynListLiteralValueEECshquuC4dCYVj_10polars_sql.exit8.i ]
  %common.resume.op = phi { ptr, i32 } [ %i.ad, %bb.i ], [ %i.l, %bb.d ], [ %i.ad, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrEECshquuC4dCYVj_10polars_sql.exit9.i.i ], [ %i.l, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCsfcROwRM8ZtH_11polars_plan5plans3lit19DynListLiteralValueEECshquuC4dCYVj_10polars_sql.exit8.i ]
  %i.t = mul nuw nsw i64 %.sink25, 24, !dbg !5400
  tail call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %.sink, i64 noundef range(i64 1, -9223372036854775808) %i.t, i64 noundef 8) #34, !dbg !5400
  resume { ptr, i32 } %common.resume.op, !dbg !5400

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxSINtNtB4_6option6OptionNtNtNtCsfcROwRM8ZtH_11polars_plan5plans3lit19DynListLiteralValueEEECshquuC4dCYVj_10polars_sql.exit: ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCsfcROwRM8ZtH_11polars_plan5plans3lit19DynListLiteralValueEECshquuC4dCYVj_10polars_sql.exit.i
  %i.u = mul nuw nsw i64 %i.e, 24, !dbg !5405
  tail call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %i.c, i64 noundef range(i64 1, -9223372036854775808) %i.u, i64 noundef 8) #34, !dbg !5406, !noalias !5394
  br label %_RNvXs8_NtCsgZ49sUHp3tW_5alloc5boxedINtB5_3BoxSINtNtCscgRAwXFJnXP_4core6option6OptionNtNtNtCsfcROwRM8ZtH_11polars_plan5plans3lit19DynListLiteralValueEENtNtNtBN_3ops4drop4Drop4dropCshquuC4dCYVj_10polars_sql.exit, !dbg !5407

bb.g:                                             ; preds = %bb.a
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !5400
  %.val = load ptr, ptr %i.v, align 8, !dbg !5400, !nonnull !261, !noundef !261 ; 5 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !5400
  %.val1 = load i64, ptr %i.w, align 8, !dbg !5400, !noundef !261 ; 7 uses
  %i.x = icmp eq i64 %.val1, 0, !dbg !5408
  br i1 %i.x, label %_RNvXs8_NtCsgZ49sUHp3tW_5alloc5boxedINtB5_3BoxSINtNtCscgRAwXFJnXP_4core6option6OptionNtNtNtCsfcROwRM8ZtH_11polars_plan5plans3lit19DynListLiteralValueEENtNtNtBN_3ops4drop4Drop4dropCshquuC4dCYVj_10polars_sql.exit, label %.lr.ph.i.i, !dbg !5408

.lr.ph.i.i:                                       ; preds = %bb.g, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrEECshquuC4dCYVj_10polars_sql.exit.i.i
  %.sroa.0.010.i.i = phi i64 [ %i.z, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrEECshquuC4dCYVj_10polars_sql.exit.i.i ], [ 0, %bb.g ] ; 2 uses
  %i.y = getelementptr inbounds nuw [24 x i8], ptr %.val, i64 %.sroa.0.010.i.i, !dbg !5408 ; 2 uses
  %i.z = add nuw i64 %.sroa.0.010.i.i, 1, !dbg !5408 ; 4 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.y, i64 23, !dbg !5409
  %i.ab = load i8, ptr %i.aa, align 1, !dbg !5409, !range !399, !alias.scope !5398, !noundef !261
  %cond.i.i.i = icmp eq i8 %i.ab, -40, !dbg !5409
  br i1 %cond.i.i.i, label %bb.h, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrEECshquuC4dCYVj_10polars_sql.exit.i.i, !dbg !5409, !prof !400

bb.h:                                             ; preds = %.lr.ph.i.i
  invoke void @_RNvNvXs2_NtCs7VARH73bmU_11compact_str4reprNtB7_4ReprNtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4drop13outlined_drop(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.y)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrEECshquuC4dCYVj_10polars_sql.exit.i.i unwind label %bb.i, !dbg !5410

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrEECshquuC4dCYVj_10polars_sql.exit.i.i: ; preds = %bb.h, %.lr.ph.i.i
  %i.ac = icmp eq i64 %i.z, %.val1, !dbg !5408
  br i1 %i.ac, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeSINtNtB4_6option6OptionNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrEECshquuC4dCYVj_10polars_sql.exit.i, label %.lr.ph.i.i, !dbg !5408

bb.i:                                             ; preds = %bb.h
  %i.ad = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ae = icmp eq i64 %i.z, %.val1, !dbg !5408
  br i1 %i.ae, label %common.resume, label %.lr.ph13.i.i, !dbg !5408

.lr.ph13.i.i:                                     ; preds = %bb.i, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrEECshquuC4dCYVj_10polars_sql.exit9.i.i
  %.sroa.0.111.i.i = phi i64 [ %i.ag, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrEECshquuC4dCYVj_10polars_sql.exit9.i.i ], [ %i.z, %bb.i ] ; 2 uses
  %i.af = getelementptr inbounds nuw [24 x i8], ptr %.val, i64 %.sroa.0.111.i.i, !dbg !5408 ; 2 uses
  %i.ag = add i64 %.sroa.0.111.i.i, 1, !dbg !5408 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.af, i64 23, !dbg !5411
  %i.ai = load i8, ptr %i.ah, align 1, !dbg !5411, !range !399, !alias.scope !5399, !noundef !261
  %cond.i7.i.i = icmp eq i8 %i.ai, -40, !dbg !5411
  br i1 %cond.i7.i.i, label %bb.j, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrEECshquuC4dCYVj_10polars_sql.exit9.i.i, !dbg !5411, !prof !400

bb.j:                                             ; preds = %.lr.ph13.i.i
  invoke void @_RNvNvXs2_NtCs7VARH73bmU_11compact_str4reprNtB7_4ReprNtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4drop13outlined_drop(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.af)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrEECshquuC4dCYVj_10polars_sql.exit9.i.i unwind label %bb.k, !dbg !5412

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrEECshquuC4dCYVj_10polars_sql.exit9.i.i: ; preds = %bb.j, %.lr.ph13.i.i
  %i.aj = icmp eq i64 %i.ag, %.val1, !dbg !5408
  br i1 %i.aj, label %common.resume, label %.lr.ph13.i.i, !dbg !5408

bb.k:                                             ; preds = %bb.j
  %i.ak = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #36, !dbg !5408
  unreachable, !dbg !5408

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeSINtNtB4_6option6OptionNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrEECshquuC4dCYVj_10polars_sql.exit.i: ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrEECshquuC4dCYVj_10polars_sql.exit.i.i
  %i.al = mul nuw nsw i64 %.val1, 24, !dbg !5413
  tail call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef range(i64 1, -9223372036854775808) %i.al, i64 noundef 8) #34, !dbg !5414
  br label %_RNvXs8_NtCsgZ49sUHp3tW_5alloc5boxedINtB5_3BoxSINtNtCscgRAwXFJnXP_4core6option6OptionNtNtNtCsfcROwRM8ZtH_11polars_plan5plans3lit19DynListLiteralValueEENtNtNtBN_3ops4drop4Drop4dropCshquuC4dCYVj_10polars_sql.exit, !dbg !5415

bb.l:                                             ; preds = %bb.a
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !5400
  %.val3 = load i64, ptr %i.am, align 8, !dbg !5400, !noundef !261 ; 2 uses
  %i.an = icmp eq i64 %.val3, 0, !dbg !5416
  br i1 %i.an, label %_RNvXs8_NtCsgZ49sUHp3tW_5alloc5boxedINtB5_3BoxSINtNtCscgRAwXFJnXP_4core6option6OptionNtNtNtCsfcROwRM8ZtH_11polars_plan5plans3lit19DynListLiteralValueEENtNtNtBN_3ops4drop4Drop4dropCshquuC4dCYVj_10polars_sql.exit, label %bb.m, !dbg !5416

bb.m:                                             ; preds = %bb.l
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !5400
  %.val2 = load ptr, ptr %i.ao, align 8, !dbg !5400, !nonnull !261, !noundef !261
  %i.ap = shl nuw nsw i64 %.val3, 5, !dbg !5417
  tail call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %.val2, i64 noundef range(i64 1, -9223372036854775808) %i.ap, i64 noundef 16) #34, !dbg !5418
  br label %_RNvXs8_NtCsgZ49sUHp3tW_5alloc5boxedINtB5_3BoxSINtNtCscgRAwXFJnXP_4core6option6OptionNtNtNtCsfcROwRM8ZtH_11polars_plan5plans3lit19DynListLiteralValueEENtNtNtBN_3ops4drop4Drop4dropCshquuC4dCYVj_10polars_sql.exit, !dbg !5419

bb.n:                                             ; preds = %bb.a
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !5400
  %.val5 = load i64, ptr %i.aq, align 8, !dbg !5400, !noundef !261 ; 2 uses
  %i.ar = icmp eq i64 %.val5, 0, !dbg !5420
  br i1 %i.ar, label %_RNvXs8_NtCsgZ49sUHp3tW_5alloc5boxedINtB5_3BoxSINtNtCscgRAwXFJnXP_4core6option6OptionNtNtNtCsfcROwRM8ZtH_11polars_plan5plans3lit19DynListLiteralValueEENtNtNtBN_3ops4drop4Drop4dropCshquuC4dCYVj_10polars_sql.exit, label %bb.o, !dbg !5420

bb.o:                                             ; preds = %bb.n
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !5400
  %.val4 = load ptr, ptr %i.as, align 8, !dbg !5400, !nonnull !261, !noundef !261
  %i.at = shl nuw nsw i64 %.val5, 4, !dbg !5421
  tail call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %.val4, i64 noundef range(i64 1, -9223372036854775808) %i.at, i64 noundef 8) #34, !dbg !5422
  br label %_RNvXs8_NtCsgZ49sUHp3tW_5alloc5boxedINtB5_3BoxSINtNtCscgRAwXFJnXP_4core6option6OptionNtNtNtCsfcROwRM8ZtH_11polars_plan5plans3lit19DynListLiteralValueEENtNtNtBN_3ops4drop4Drop4dropCshquuC4dCYVj_10polars_sql.exit, !dbg !5423

_RNvXs8_NtCsgZ49sUHp3tW_5alloc5boxedINtB5_3BoxSINtNtCscgRAwXFJnXP_4core6option6OptionNtNtNtCsfcROwRM8ZtH_11polars_plan5plans3lit19DynListLiteralValueEENtNtNtBN_3ops4drop4Drop4dropCshquuC4dCYVj_10polars_sql.exit: ; preds = %bb.b, %bb.o, %bb.n, %bb.m, %bb.l, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeSINtNtB4_6option6OptionNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrEECshquuC4dCYVj_10polars_sql.exit.i, %bb.g, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxSINtNtB4_6option6OptionNtNtNtCsfcROwRM8ZtH_11polars_plan5plans3lit19DynListLiteralValueEEECshquuC4dCYVj_10polars_sql.exit
  ret void, !dbg !5400
}

; Function Attrs: nonlazybind optsize uwtable
define internal fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl13function_expr3cat19CategoricalFunctionECshquuC4dCYVj_10polars_sql(ptr noalias noundef nonnull align 16 dereferenceable(64) %0) unnamed_addr #0 !dbg !5424 {
bb.a:
  %i.a = load i8, ptr %0, align 16, !dbg !5427, !range !414, !noundef !261
  switch i8 %i.a, label %bb.b [
    i8 3, label %bb.c
    i8 4, label %bb.d
    i8 6, label %bb.e
  ], !dbg !5427

bb.b:                                             ; preds = %bb.e, %bb.d, %bb.c, %bb.a
  ret void, !dbg !5427

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !5427
  tail call fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VechEECshquuC4dCYVj_10polars_sql(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b), !dbg !5428
  br label %bb.b, !dbg !5427

bb.d:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !5427
  tail call fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VechEECshquuC4dCYVj_10polars_sql(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c), !dbg !5429
  br label %bb.b, !dbg !5427

bb.e:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !5427
  tail call fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl13datatype_expr12DataTypeExprECshquuC4dCYVj_10polars_sql(ptr noalias noundef align 16 dereferenceable(48) %i.d), !dbg !5427
  br label %bb.b, !dbg !5427
}

; Function Attrs: nonlazybind optsize uwtable
define internal fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl13function_expr5array13ArrayFunctionECshquuC4dCYVj_10polars_sql(ptr noalias noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 !dbg !5430 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !dbg !5478, !range !415, !noundef !261 ; 2 uses
  %i.b = icmp samesign ugt i64 %i.a, 1, !dbg !5478
  br i1 %i.b, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsfcROwRM8ZtH_11polars_plan8callback12PlanCallbackjNtNtCsgZ49sUHp3tW_5alloc6string6StringEEECshquuC4dCYVj_10polars_sql.exit, label %bb.b, !dbg !5478

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5470), !dbg !5478
  %1 = trunc nuw i64 %i.a to i1, !dbg !5479
  br i1 %1, label %bb.c, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsfcROwRM8ZtH_11polars_plan8callback12PlanCallbackjNtNtCsgZ49sUHp3tW_5alloc6string6StringEEECshquuC4dCYVj_10polars_sql.exit, !dbg !5479

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !5479 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5471), !dbg !5479
  %i.d = load ptr, ptr %i.c, align 8, !dbg !5480, !alias.scope !5472, !noundef !261 ; 2 uses
  %i.e = icmp eq ptr %i.d, null, !dbg !5480
  br i1 %i.e, label %bb.d, label %bb.f, !dbg !5480

bb.d:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !5480 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5473), !dbg !5480
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5474), !dbg !5481
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5475), !dbg !5482
  %i.g = load ptr, ptr %i.f, align 8, !dbg !5483, !alias.scope !5476, !nonnull !261, !noundef !261
  %i.h = atomicrmw add ptr %i.g, i64 -1 release, align 8, !dbg !5484, !noalias !5476
  %i.i = icmp eq i64 %i.h, 1, !dbg !5485
  br i1 %i.i, label %bb.e, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsfcROwRM8ZtH_11polars_plan8callback12PlanCallbackjNtNtCsgZ49sUHp3tW_5alloc6string6StringEEECshquuC4dCYVj_10polars_sql.exit, !dbg !5485

bb.e:                                             ; preds = %bb.d
  fence acquire, !dbg !5486
  tail call void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtCs2mZqlW55729_12polars_utils15python_function12PythonObjectE9drop_slowCslpwjCj2YNBy_9polars_io(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.f) #38, !dbg !5487
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsfcROwRM8ZtH_11polars_plan8callback12PlanCallbackjNtNtCsgZ49sUHp3tW_5alloc6string6StringEEECshquuC4dCYVj_10polars_sql.exit, !dbg !5487

bb.f:                                             ; preds = %bb.c
  %i.j = atomicrmw add ptr %i.d, i64 -1 release, align 8, !dbg !5488, !noalias !5477
  %i.k = icmp eq i64 %i.j, 1, !dbg !5489
  br i1 %i.k, label %bb.g, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsfcROwRM8ZtH_11polars_plan8callback12PlanCallbackjNtNtCsgZ49sUHp3tW_5alloc6string6StringEEECshquuC4dCYVj_10polars_sql.exit, !dbg !5489

bb.g:                                             ; preds = %bb.f
  fence acquire, !dbg !5490
  tail call void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcDINtNtNtCscgRAwXFJnXP_4core3ops8function2FnTjEEp6OutputINtNtBO_6result6ResultNtNtB7_6string6StringNtCsgjwxzEoLG5s_12polars_error11PolarsErrorENtNtBO_6marker4SendNtB30_4SyncEL_E9drop_slowCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.c) #38, !dbg !5491
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsfcROwRM8ZtH_11polars_plan8callback12PlanCallbackjNtNtCsgZ49sUHp3tW_5alloc6string6StringEEECshquuC4dCYVj_10polars_sql.exit, !dbg !5491

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsfcROwRM8ZtH_11polars_plan8callback12PlanCallbackjNtNtCsgZ49sUHp3tW_5alloc6string6StringEEECshquuC4dCYVj_10polars_sql.exit: ; preds = %bb.g, %bb.f, %bb.e, %bb.d, %bb.b, %bb.a
  ret void, !dbg !5478
}

; Function Attrs: nonlazybind optsize uwtable
define internal fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl13function_expr5range13RangeFunctionECshquuC4dCYVj_10polars_sql(ptr noalias noundef nonnull align 16 dereferenceable(80) %0) unnamed_addr #0 !dbg !5492 {
bb.a:
  %i.a = load i8, ptr %0, align 16, !dbg !5511, !range !416, !noundef !261
  switch i8 %i.a, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes8temporal9time_zone8TimeZoneEECshquuC4dCYVj_10polars_sql.exit [
    i8 0, label %bb.b
    i8 1, label %bb.c
    i8 6, label %bb.d
    i8 7, label %bb.f
  ], !dbg !5511

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes8temporal9time_zone8TimeZoneEECshquuC4dCYVj_10polars_sql.exit: ; preds = %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b, %bb.a
  ret void, !dbg !5511

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !5511
  tail call fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl13datatype_expr12DataTypeExprECshquuC4dCYVj_10polars_sql(ptr noalias noundef align 16 dereferenceable(48) %i.b), !dbg !5511
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes8temporal9time_zone8TimeZoneEECshquuC4dCYVj_10polars_sql.exit, !dbg !5511

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !5511
  tail call fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl13datatype_expr12DataTypeExprECshquuC4dCYVj_10polars_sql(ptr noalias noundef align 16 dereferenceable(48) %i.c), !dbg !5511
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes8temporal9time_zone8TimeZoneEECshquuC4dCYVj_10polars_sql.exit, !dbg !5511

bb.d:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 31, !dbg !5512
  %i.e = load i8, ptr %i.d, align 1, !dbg !5512, !range !399, !alias.scope !5509, !noundef !261
  %cond.i = icmp eq i8 %i.e, -40, !dbg !5512
  br i1 %cond.i, label %bb.e, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes8temporal9time_zone8TimeZoneEECshquuC4dCYVj_10polars_sql.exit, !dbg !5512, !prof !400

bb.e:                                             ; preds = %bb.d
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !5511
  tail call void @_RNvNvXs2_NtCs7VARH73bmU_11compact_str4reprNtB7_4ReprNtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4drop13outlined_drop(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f), !dbg !5513
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes8temporal9time_zone8TimeZoneEECshquuC4dCYVj_10polars_sql.exit, !dbg !5513

bb.f:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 31, !dbg !5514
  %i.h = load i8, ptr %i.g, align 1, !dbg !5514, !range !399, !alias.scope !5510, !noundef !261
  %cond.i1 = icmp eq i8 %i.h, -40, !dbg !5514
  br i1 %cond.i1, label %bb.g, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes8temporal9time_zone8TimeZoneEECshquuC4dCYVj_10polars_sql.exit, !dbg !5514, !prof !400

bb.g:                                             ; preds = %bb.f
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !5511
  tail call void @_RNvNvXs2_NtCs7VARH73bmU_11compact_str4reprNtB7_4ReprNtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4drop13outlined_drop(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.i), !dbg !5515
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes8temporal9time_zone8TimeZoneEECshquuC4dCYVj_10polars_sql.exit, !dbg !5515
}

; Function Attrs: nonlazybind optsize uwtable
define internal fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl13function_expr7rolling15RollingFunctionECshquuC4dCYVj_10polars_sql(ptr noalias noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 !dbg !5516 {
bb.a:
  %i.a = load i8, ptr %0, align 8, !dbg !5558, !range !417, !noundef !261
  %switch = icmp samesign ult i8 %i.a, 11, !dbg !5558
  br i1 %switch, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsfcROwRM8ZtH_11polars_plan8callback12PlanCallbackNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesB1z_EECshquuC4dCYVj_10polars_sql.exit, label %bb.b, !dbg !5558

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !5558 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5552), !dbg !5558
  %i.c = load ptr, ptr %i.b, align 8, !dbg !5559, !alias.scope !5552, !noundef !261 ; 2 uses
  %i.d = icmp eq ptr %i.c, null, !dbg !5559
  br i1 %i.d, label %bb.c, label %bb.e, !dbg !5559

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !5559 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5553), !dbg !5559
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5554), !dbg !5560
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5555), !dbg !5561
  %i.f = load ptr, ptr %i.e, align 8, !dbg !5562, !alias.scope !5556, !nonnull !261, !noundef !261
  %i.g = atomicrmw add ptr %i.f, i64 -1 release, align 8, !dbg !5563, !noalias !5556
  %i.h = icmp eq i64 %i.g, 1, !dbg !5564
  br i1 %i.h, label %bb.d, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsfcROwRM8ZtH_11polars_plan8callback12PlanCallbackNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesB1z_EECshquuC4dCYVj_10polars_sql.exit, !dbg !5564

bb.d:                                             ; preds = %bb.c
  fence acquire, !dbg !5565
  tail call void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtCs2mZqlW55729_12polars_utils15python_function12PythonObjectE9drop_slowCslpwjCj2YNBy_9polars_io(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.e) #38, !dbg !5566
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsfcROwRM8ZtH_11polars_plan8callback12PlanCallbackNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesB1z_EECshquuC4dCYVj_10polars_sql.exit, !dbg !5566

bb.e:                                             ; preds = %bb.b
  %i.i = atomicrmw add ptr %i.c, i64 -1 release, align 8, !dbg !5567, !noalias !5557
  %i.j = icmp eq i64 %i.i, 1, !dbg !5568
  br i1 %i.j, label %bb.f, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsfcROwRM8ZtH_11polars_plan8callback12PlanCallbackNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesB1z_EECshquuC4dCYVj_10polars_sql.exit, !dbg !5568

bb.f:                                             ; preds = %bb.e
  fence acquire, !dbg !5569
  tail call void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcDINtNtNtCscgRAwXFJnXP_4core3ops8function2FnTNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEEp6OutputINtNtBO_6result6ResultB1o_NtCsgjwxzEoLG5s_12polars_error11PolarsErrorENtNtBO_6marker4SendNtB3r_4SyncEL_E9drop_slowCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.b) #38, !dbg !5570
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsfcROwRM8ZtH_11polars_plan8callback12PlanCallbackNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesB1z_EECshquuC4dCYVj_10polars_sql.exit, !dbg !5570

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsfcROwRM8ZtH_11polars_plan8callback12PlanCallbackNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesB1z_EECshquuC4dCYVj_10polars_sql.exit: ; preds = %bb.f, %bb.e, %bb.d, %bb.c, %bb.a
  ret void, !dbg !5558
}

; Function Attrs: nonlazybind optsize uwtable
define internal fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl13function_expr7strings14StringFunctionECshquuC4dCYVj_10polars_sql(ptr noalias noundef nonnull align 16 dereferenceable(96) %0) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !5571 {
bb.a:
  %i.a = load i8, ptr %0, align 16, !dbg !5708, !range !418, !noundef !261
  switch i8 %i.a, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECshquuC4dCYVj_10polars_sql.exit2 [
    i8 0, label %bb.b
    i8 1, label %bb.d
    i8 2, label %bb.f
    i8 8, label %bb.h
    i8 10, label %bb.i
    i8 14, label %bb.k
    i8 36, label %bb.l
  ], !dbg !5708

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECshquuC4dCYVj_10polars_sql.exit2: ; preds = %bb.x, %bb.w, %bb.t, %bb.s, %bb.o, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECshquuC4dCYVj_10polars_sql.exit, %bb.j, %bb.i, %bb.g, %bb.f, %bb.e, %bb.d, %bb.k, %bb.a
  ret void, !dbg !5708

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 47, !dbg !5709
  %i.c = load i8, ptr %i.b, align 1, !dbg !5709, !range !320, !alias.scope !5694, !noundef !261
  %i.d = icmp eq i8 %i.c, -40, !dbg !5710
  br i1 %i.d, label %bb.c, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECshquuC4dCYVj_10polars_sql.exit, !dbg !5710, !prof !280

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !5708
  invoke void @_RNvNvXs2_NtCs7VARH73bmU_11compact_str4reprNtB7_4ReprNtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4drop13outlined_drop(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECshquuC4dCYVj_10polars_sql.exit unwind label %bb.m, !dbg !5711

bb.d:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 31, !dbg !5712
  %i.g = load i8, ptr %i.f, align 1, !dbg !5712, !range !320, !alias.scope !5695, !noundef !261
  %i.h = icmp eq i8 %i.g, -40, !dbg !5713
  br i1 %i.h, label %bb.e, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECshquuC4dCYVj_10polars_sql.exit2, !dbg !5713, !prof !280

bb.e:                                             ; preds = %bb.d
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !5708
  tail call void @_RNvNvXs2_NtCs7VARH73bmU_11compact_str4reprNtB7_4ReprNtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4drop13outlined_drop(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.i), !dbg !5714
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECshquuC4dCYVj_10polars_sql.exit2, !dbg !5714

bb.f:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 31, !dbg !5715
  %i.k = load i8, ptr %i.j, align 1, !dbg !5715, !range !320, !alias.scope !5696, !noundef !261
  %i.l = icmp eq i8 %i.k, -40, !dbg !5716
  br i1 %i.l, label %bb.g, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECshquuC4dCYVj_10polars_sql.exit2, !dbg !5716, !prof !280

bb.g:                                             ; preds = %bb.f
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !5708
  tail call void @_RNvNvXs2_NtCs7VARH73bmU_11compact_str4reprNtB7_4ReprNtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4drop13outlined_drop(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.m), !dbg !5717
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECshquuC4dCYVj_10polars_sql.exit2, !dbg !5717

bb.h:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !5708
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeECshquuC4dCYVj_10polars_sql(ptr noalias noundef align 16 dereferenceable(48) %i.n)
          to label %bb.s unwind label %bb.q, !dbg !5708

bb.i:                                             ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !5708 ; 2 uses
  %i.p = load i8, ptr %i.o, align 16, !dbg !5718, !range !407, !alias.scope !5697, !noundef !261
  %i.q = icmp eq i8 %i.p, 31, !dbg !5718
  br i1 %i.q, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECshquuC4dCYVj_10polars_sql.exit2, label %bb.j, !dbg !5718

bb.j:                                             ; preds = %bb.i
  tail call fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeECshquuC4dCYVj_10polars_sql(ptr noalias noundef nonnull align 16 dereferenceable(48) %i.o), !dbg !5718
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECshquuC4dCYVj_10polars_sql.exit2, !dbg !5718

bb.k:                                             ; preds = %bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !5708
  tail call fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl13datatype_expr12DataTypeExprECshquuC4dCYVj_10polars_sql(ptr noalias noundef align 16 dereferenceable(48) %i.r), !dbg !5708
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECshquuC4dCYVj_10polars_sql.exit2, !dbg !5708

bb.l:                                             ; preds = %bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !5708
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl13datatype_expr12DataTypeExprECshquuC4dCYVj_10polars_sql(ptr noalias noundef align 16 dereferenceable(48) %i.s)
end_hunk_1
begin_hunk_2_@_RNvMsa_NtNtCs1LHh8CLbVkQ_11polars_core9datatypes9any_valueNtB5_8AnyValue10eq_missing:bb.a
_RNvXsb_NtNtCs1LHh8CLbVkQ_11polars_core9datatypes9any_valueNtB5_8AnyValueNtNtCscgRAwXFJnXP_4core3cmp9PartialEq2eq.exit65.a: ; preds = %bb.v
  call fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9any_value8AnyValueECshquuC4dCYVj_10polars_sql(ptr noalias noundef align 16 dereferenceable(48) %i.p), !dbg !23298
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !dbg !23298
  br label %_RNvXs7_NtNtCscgRAwXFJnXP_4core3cmp5implsReNtB7_9PartialEq2eqCshquuC4dCYVj_10polars_sql.exit, !dbg !23299

bb.y:                                             ; preds = %bb.w
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !dbg !23300
  %i.cn = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !23301
  %i.co = load i64, ptr %i.cn, align 8, !dbg !23301, !noundef !261
  %i.cp = getelementptr inbounds nuw i8, ptr %1, i64 1, !dbg !23302
  %i.cq = load i8, ptr %i.cp, align 1, !dbg !23302, !range !430, !noundef !261
  %i.cr = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !23303
  %i.cs = load ptr, ptr %i.cr, align 16, !dbg !23303, !noundef !261 ; 2 uses
  %.not25 = icmp eq ptr %i.cs, null, !dbg !23303
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 16
  %spec.select73 = select i1 %.not25, ptr null, ptr %i.ct, !dbg !23304
  %i.cu = getelementptr inbounds nuw i8, ptr %i.o, i64 8, !dbg !23300
  store i64 %i.co, ptr %i.cu, align 8, !dbg !23300
  %i.cv = getelementptr inbounds nuw i8, ptr %i.o, i64 1, !dbg !23300
  store i8 %i.cq, ptr %i.cv, align 1, !dbg !23300
  %i.cw = getelementptr inbounds nuw i8, ptr %i.o, i64 16, !dbg !23300
  store ptr %spec.select73, ptr %i.cw, align 16, !dbg !23300
  store i8 17, ptr %i.o, align 16, !dbg !23300
  %i.cx = invoke fastcc noundef zeroext i1 @_RNvMsa_NtNtCs1LHh8CLbVkQ_11polars_core9datatypes9any_valueNtB5_8AnyValue10eq_missing(ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(48) %0, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(48) %i.o) #40
          to label %_RNvXsb_NtNtCs1LHh8CLbVkQ_11polars_core9datatypes9any_valueNtB5_8AnyValueNtNtCscgRAwXFJnXP_4core3cmp9PartialEq2eq.exit66.a unwind label %bb.aa, !dbg !23305

bb.z:                                             ; preds = %bb.w
  %i.cy = icmp eq i8 %i.w, 22, !dbg !23242
  br i1 %i.cy, label %bb.ab, label %bb.ac, !dbg !23242

bb.aa:                                            ; preds = %bb.y
  %i.cz = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9any_value8AnyValueECshquuC4dCYVj_10polars_sql(ptr noalias noundef align 16 dereferenceable(48) %i.o) #37
          to label %bb.j unwind label %bb.i, !dbg !23306

_RNvXsb_NtNtCs1LHh8CLbVkQ_11polars_core9datatypes9any_valueNtB5_8AnyValueNtNtCscgRAwXFJnXP_4core3cmp9PartialEq2eq.exit66.a: ; preds = %bb.y
  call fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9any_value8AnyValueECshquuC4dCYVj_10polars_sql(ptr noalias noundef align 16 dereferenceable(48) %i.o), !dbg !23306
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !dbg !23306
  br label %_RNvXs7_NtNtCscgRAwXFJnXP_4core3cmp5implsReNtB7_9PartialEq2eqCshquuC4dCYVj_10polars_sql.exit, !dbg !23307

bb.ab:                                            ; preds = %bb.z
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !23308
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !dbg !23309
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 4, !dbg !23310
  %i.dc = load i32, ptr %i.db, align 4, !dbg !23310, !noundef !261
  %i.dd = getelementptr inbounds nuw i8, ptr %i.n, i64 4, !dbg !23309
  store i32 %i.dc, ptr %i.dd, align 4, !dbg !23309
  %i.de = getelementptr inbounds nuw i8, ptr %i.n, i64 8, !dbg !23309
  store ptr %i.da, ptr %i.de, align 8, !dbg !23309
  store i8 21, ptr %i.n, align 16, !dbg !23309
  %i.df = invoke fastcc noundef zeroext i1 @_RNvMsa_NtNtCs1LHh8CLbVkQ_11polars_core9datatypes9any_valueNtB5_8AnyValue10eq_missing(ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(48) %i.n, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(48) %1) #40
          to label %_RNvXsb_NtNtCs1LHh8CLbVkQ_11polars_core9datatypes9any_valueNtB5_8AnyValueNtNtCscgRAwXFJnXP_4core3cmp9PartialEq2eq.exit67.a unwind label %bb.ad, !dbg !23311

bb.ac:                                            ; preds = %bb.z
  %i.dg = icmp eq i8 %i.x, 22, !dbg !23242
  br i1 %i.dg, label %bb.ae, label %bb.af, !dbg !23242

bb.ad:                                            ; preds = %bb.ab
  %i.dh = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9any_value8AnyValueECshquuC4dCYVj_10polars_sql(ptr noalias noundef align 16 dereferenceable(48) %i.n) #37
          to label %bb.j unwind label %bb.i, !dbg !23312

_RNvXsb_NtNtCs1LHh8CLbVkQ_11polars_core9datatypes9any_valueNtB5_8AnyValueNtNtCscgRAwXFJnXP_4core3cmp9PartialEq2eq.exit67.a: ; preds = %bb.ab
  call fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9any_value8AnyValueECshquuC4dCYVj_10polars_sql(ptr noalias noundef align 16 dereferenceable(48) %i.n), !dbg !23312
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !dbg !23312
  br label %_RNvXs7_NtNtCscgRAwXFJnXP_4core3cmp5implsReNtB7_9PartialEq2eqCshquuC4dCYVj_10polars_sql.exit, !dbg !23312

bb.ae:                                            ; preds = %bb.ac
  %i.di = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !23313
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !dbg !23314
  %i.dj = getelementptr inbounds nuw i8, ptr %1, i64 4, !dbg !23315
  %i.dk = load i32, ptr %i.dj, align 4, !dbg !23315, !noundef !261
  %i.dl = getelementptr inbounds nuw i8, ptr %i.m, i64 4, !dbg !23314
  store i32 %i.dk, ptr %i.dl, align 4, !dbg !23314
  %i.dm = getelementptr inbounds nuw i8, ptr %i.m, i64 8, !dbg !23314
  store ptr %i.di, ptr %i.dm, align 8, !dbg !23314
  store i8 21, ptr %i.m, align 16, !dbg !23314
  %i.dn = invoke fastcc noundef zeroext i1 @_RNvMsa_NtNtCs1LHh8CLbVkQ_11polars_core9datatypes9any_valueNtB5_8AnyValue10eq_missing(ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(48) %0, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(48) %i.m) #40
          to label %_RNvXsb_NtNtCs1LHh8CLbVkQ_11polars_core9datatypes9any_valueNtB5_8AnyValueNtNtCscgRAwXFJnXP_4core3cmp9PartialEq2eq.exit68.a unwind label %bb.ag, !dbg !23316

bb.af:                                            ; preds = %bb.ac
  %i.do = icmp eq i8 %i.w, 24, !dbg !23242
  br i1 %i.do, label %bb.ah, label %bb.ai, !dbg !23242

bb.ag:                                            ; preds = %bb.ae
  %i.dp = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9any_value8AnyValueECshquuC4dCYVj_10polars_sql(ptr noalias noundef align 16 dereferenceable(48) %i.m) #37
          to label %bb.j unwind label %bb.i, !dbg !23317

_RNvXsb_NtNtCs1LHh8CLbVkQ_11polars_core9datatypes9any_valueNtB5_8AnyValueNtNtCscgRAwXFJnXP_4core3cmp9PartialEq2eq.exit68.a: ; preds = %bb.ae
  call fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9any_value8AnyValueECshquuC4dCYVj_10polars_sql(ptr noalias noundef align 16 dereferenceable(48) %i.m), !dbg !23317
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !dbg !23317
  br label %_RNvXs7_NtNtCscgRAwXFJnXP_4core3cmp5implsReNtB7_9PartialEq2eqCshquuC4dCYVj_10polars_sql.exit, !dbg !23317

bb.ah:                                            ; preds = %bb.af
  %i.dq = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !23318
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !dbg !23319
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 4, !dbg !23320
  %i.ds = load i32, ptr %i.dr, align 4, !dbg !23320, !noundef !261
  %i.dt = getelementptr inbounds nuw i8, ptr %i.l, i64 4, !dbg !23319
  store i32 %i.ds, ptr %i.dt, align 4, !dbg !23319
  %i.du = getelementptr inbounds nuw i8, ptr %i.l, i64 8, !dbg !23319
  store ptr %i.dq, ptr %i.du, align 8, !dbg !23319
  store i8 23, ptr %i.l, align 16, !dbg !23319
  %i.dv = invoke fastcc noundef zeroext i1 @_RNvMsa_NtNtCs1LHh8CLbVkQ_11polars_core9datatypes9any_valueNtB5_8AnyValue10eq_missing(ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(48) %i.l, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(48) %1) #40
          to label %_RNvXsb_NtNtCs1LHh8CLbVkQ_11polars_core9datatypes9any_valueNtB5_8AnyValueNtNtCscgRAwXFJnXP_4core3cmp9PartialEq2eq.exit69 unwind label %bb.aj, !dbg !23321

bb.ai:                                            ; preds = %bb.af
  switch i8 %i.x, label %bb.ak [
    i8 0, label %bb.al
    i8 24, label %bb.am
  ], !dbg !23242

bb.aj:                                            ; preds = %bb.ah
  %i.dw = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9any_value8AnyValueECshquuC4dCYVj_10polars_sql(ptr noalias noundef align 16 dereferenceable(48) %i.l) #37
          to label %bb.j unwind label %bb.i, !dbg !23322

_RNvXsb_NtNtCs1LHh8CLbVkQ_11polars_core9datatypes9any_valueNtB5_8AnyValueNtNtCscgRAwXFJnXP_4core3cmp9PartialEq2eq.exit69: ; preds = %bb.ah
  call fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9any_value8AnyValueECshquuC4dCYVj_10polars_sql(ptr noalias noundef align 16 dereferenceable(48) %i.l), !dbg !23322
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !dbg !23322
  br label %_RNvXs7_NtNtCscgRAwXFJnXP_4core3cmp5implsReNtB7_9PartialEq2eqCshquuC4dCYVj_10polars_sql.exit, !dbg !23322

bb.ak:                                            ; preds = %bb.ai
  %i.dx = icmp eq i8 %i.w, 0, !dbg !23242
  br i1 %i.dx, label %_RNvXs7_NtNtCscgRAwXFJnXP_4core3cmp5implsReNtB7_9PartialEq2eqCshquuC4dCYVj_10polars_sql.exit, label %bb.ap, !dbg !23242

bb.al:                                            ; preds = %bb.ai
  %i.dy = icmp eq i8 %i.w, 0, !dbg !23242
  br i1 %i.dy, label %_RNvXs7_NtNtCscgRAwXFJnXP_4core3cmp5implsReNtB7_9PartialEq2eqCshquuC4dCYVj_10polars_sql.exit, label %bb.an, !dbg !23242

bb.am:                                            ; preds = %bb.ai
  %i.dz = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !23323
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !dbg !23324
  %i.ea = getelementptr inbounds nuw i8, ptr %1, i64 4, !dbg !23325
  %i.eb = load i32, ptr %i.ea, align 4, !dbg !23325, !noundef !261
  %i.ec = getelementptr inbounds nuw i8, ptr %i.k, i64 4, !dbg !23324
  store i32 %i.eb, ptr %i.ec, align 4, !dbg !23324
  %i.ed = getelementptr inbounds nuw i8, ptr %i.k, i64 8, !dbg !23324
  store ptr %i.dz, ptr %i.ed, align 8, !dbg !23324
  store i8 23, ptr %i.k, align 16, !dbg !23324
  %i.ee = invoke fastcc noundef zeroext i1 @_RNvMsa_NtNtCs1LHh8CLbVkQ_11polars_core9datatypes9any_valueNtB5_8AnyValue10eq_missing(ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(48) %0, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(48) %i.k) #40
          to label %_RNvXsb_NtNtCs1LHh8CLbVkQ_11polars_core9datatypes9any_valueNtB5_8AnyValueNtNtCscgRAwXFJnXP_4core3cmp9PartialEq2eq.exit70 unwind label %bb.ao, !dbg !23326

bb.an:                                            ; preds = %bb.ap, %bb.al
  br label %_RNvXs7_NtNtCscgRAwXFJnXP_4core3cmp5implsReNtB7_9PartialEq2eqCshquuC4dCYVj_10polars_sql.exit, !dbg !23327

bb.ao:                                            ; preds = %bb.am
  %i.ef = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9any_value8AnyValueECshquuC4dCYVj_10polars_sql(ptr noalias noundef align 16 dereferenceable(48) %i.k) #37
          to label %bb.j unwind label %bb.i, !dbg !23328

_RNvXsb_NtNtCs1LHh8CLbVkQ_11polars_core9datatypes9any_valueNtB5_8AnyValueNtNtCscgRAwXFJnXP_4core3cmp9PartialEq2eq.exit70: ; preds = %bb.am
  call fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9any_value8AnyValueECshquuC4dCYVj_10polars_sql(ptr noalias noundef align 16 dereferenceable(48) %i.k), !dbg !23328
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !dbg !23328
  br label %_RNvXs7_NtNtCscgRAwXFJnXP_4core3cmp5implsReNtB7_9PartialEq2eqCshquuC4dCYVj_10polars_sql.exit, !dbg !23328

bb.ap:                                            ; preds = %bb.ak
  switch i8 %i.x, label %bb.aq [
    i8 0, label %bb.an
    i8 1, label %bb.ar
    i8 2, label %bb.as
    i8 3, label %bb.at
    i8 4, label %bb.au
    i8 5, label %bb.av
    i8 6, label %bb.aw
    i8 7, label %bb.ax
    i8 8, label %bb.ay
    i8 9, label %bb.az
    i8 10, label %bb.ba
    i8 11, label %bb.bb
    i8 12, label %bb.bc
    i8 13, label %bb.bd
    i8 14, label %bb.be
    i8 15, label %bb.bf
    i8 16, label %bb.bg
    i8 17, label %bb.bh
    i8 19, label %bb.bi
    i8 20, label %bb.bj
    i8 21, label %bb.bk
    i8 23, label %bb.bl
    i8 25, label %bb.bm
    i8 26, label %bb.bn
    i8 27, label %bb.bo
    i8 29, label %bb.bp
    i8 30, label %bb.bq
    i8 32, label %bb.br
    i8 34, label %bb.bs
  ], !dbg !23242

bb.aq:                                            ; preds = %bb.bs, %bb.br, %bb.bq, %bb.bp, %bb.bo, %bb.bn, %bb.bm, %bb.bl, %bb.bk, %bb.bj, %bb.bi, %bb.bh, %bb.bg, %bb.bf, %bb.be, %bb.bd, %bb.bc, %bb.bb, %bb.ba, %bb.az, %bb.ay, %bb.ax, %bb.aw, %bb.av, %bb.au, %bb.at, %bb.as, %bb.ar, %bb.ap
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !23329
  call fastcc void @_RNvMs8_NtNtCs1LHh8CLbVkQ_11polars_core9datatypes9any_valueNtB5_8AnyValue7to_i128(ptr noalias noundef align 16 captures(none) dereferenceable(32) %i.b, ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(48) %0), !dbg !23330
  %i.eg = load i128, ptr %i.b, align 16, !dbg !23330, !range !23125, !noundef !261
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !23330
  %2 = trunc nuw i128 %i.eg to i1, !dbg !23329
  br i1 %2, label %bb.du, label %bb.ea, !dbg !23329

bb.ar:                                            ; preds = %bb.ap
  %i.eh = icmp eq i8 %i.w, 1, !dbg !23242
  br i1 %i.eh, label %bb.bt, label %bb.aq, !dbg !23242

bb.as:                                            ; preds = %bb.ap
  %i.ei = icmp eq i8 %i.w, 2, !dbg !23242
  br i1 %i.ei, label %bb.bu, label %bb.aq, !dbg !23242

bb.at:                                            ; preds = %bb.ap
  %i.ej = icmp eq i8 %i.w, 3, !dbg !23242
  br i1 %i.ej, label %bb.bw, label %bb.aq, !dbg !23242

bb.au:                                            ; preds = %bb.ap
  %i.ek = icmp eq i8 %i.w, 4, !dbg !23242
  br i1 %i.ek, label %bb.bx, label %bb.aq, !dbg !23242

bb.av:                                            ; preds = %bb.ap
  %i.el = icmp eq i8 %i.w, 5, !dbg !23242
  br i1 %i.el, label %bb.by, label %bb.aq, !dbg !23242

bb.aw:                                            ; preds = %bb.ap
  %i.em = icmp eq i8 %i.w, 6, !dbg !23242
  br i1 %i.em, label %bb.bz, label %bb.aq, !dbg !23242

bb.ax:                                            ; preds = %bb.ap
  %i.en = icmp eq i8 %i.w, 7, !dbg !23242
  br i1 %i.en, label %bb.ca, label %bb.aq, !dbg !23242

bb.ay:                                            ; preds = %bb.ap
  %i.eo = icmp eq i8 %i.w, 8, !dbg !23242
  br i1 %i.eo, label %bb.cb, label %bb.aq, !dbg !23242

bb.az:                                            ; preds = %bb.ap
  %i.ep = icmp eq i8 %i.w, 9, !dbg !23242
  br i1 %i.ep, label %bb.cc, label %bb.aq, !dbg !23242

bb.ba:                                            ; preds = %bb.ap
  %i.eq = icmp eq i8 %i.w, 10, !dbg !23242
  br i1 %i.eq, label %bb.cd, label %bb.aq, !dbg !23242

bb.bb:                                            ; preds = %bb.ap
  %i.er = icmp eq i8 %i.w, 11, !dbg !23242
  br i1 %i.er, label %bb.ce, label %bb.aq, !dbg !23242

bb.bc:                                            ; preds = %bb.ap
  %i.es = icmp eq i8 %i.w, 12, !dbg !23242
  br i1 %i.es, label %bb.cf, label %bb.aq, !dbg !23242

bb.bd:                                            ; preds = %bb.ap
  %i.et = icmp eq i8 %i.w, 13, !dbg !23242
  br i1 %i.et, label %bb.cg, label %bb.aq, !dbg !23242

bb.be:                                            ; preds = %bb.ap
  %i.eu = icmp eq i8 %i.w, 14, !dbg !23242
  br i1 %i.eu, label %bb.cj, label %bb.aq, !dbg !23242

bb.bf:                                            ; preds = %bb.ap
  %i.ev = icmp eq i8 %i.w, 15, !dbg !23242
  br i1 %i.ev, label %bb.cm, label %bb.aq, !dbg !23242

bb.bg:                                            ; preds = %bb.ap
  %i.ew = icmp eq i8 %i.w, 16, !dbg !23242
  br i1 %i.ew, label %bb.cp, label %bb.aq, !dbg !23242

bb.bh:                                            ; preds = %bb.ap
  %i.ex = icmp eq i8 %i.w, 17, !dbg !23242
  br i1 %i.ex, label %bb.cq, label %bb.aq, !dbg !23242

bb.bi:                                            ; preds = %bb.ap
  %i.ey = icmp eq i8 %i.w, 19, !dbg !23242
  br i1 %i.ey, label %bb.cu, label %bb.aq, !dbg !23242

bb.bj:                                            ; preds = %bb.ap
  %i.ez = icmp eq i8 %i.w, 20, !dbg !23242
  br i1 %i.ez, label %bb.cw, label %bb.aq, !dbg !23242

bb.bk:                                            ; preds = %bb.ap
  %i.fa = icmp eq i8 %i.w, 21, !dbg !23242
  br i1 %i.fa, label %bb.cx, label %bb.aq, !dbg !23242

bb.bl:                                            ; preds = %bb.ap
  %i.fb = icmp eq i8 %i.w, 23, !dbg !23242
  br i1 %i.fb, label %bb.da, label %bb.aq, !dbg !23242

bb.bm:                                            ; preds = %bb.ap
  %i.fc = icmp eq i8 %i.w, 25, !dbg !23242
  br i1 %i.fc, label %bb.dd, label %bb.aq, !dbg !23242

bb.bn:                                            ; preds = %bb.ap
  %i.fd = icmp eq i8 %i.w, 26, !dbg !23242
  br i1 %i.fd, label %bb.de, label %bb.aq, !dbg !23242

bb.bo:                                            ; preds = %bb.ap
  %i.fe = icmp eq i8 %i.w, 27, !dbg !23242
  br i1 %i.fe, label %bb.dm, label %bb.aq, !dbg !23242

bb.bp:                                            ; preds = %bb.ap
  switch i8 %i.w, label %bb.aq [
    i8 29, label %bb.dn
    i8 30, label %bb.do
  ], !dbg !23242

bb.bq:                                            ; preds = %bb.ap
  switch i8 %i.w, label %bb.aq [
    i8 29, label %bb.dp
    i8 30, label %bb.dq
  ], !dbg !23242

bb.br:                                            ; preds = %bb.ap
  %i.ff = icmp eq i8 %i.w, 32, !dbg !23242
  br i1 %i.ff, label %bb.dr, label %bb.aq, !dbg !23242

bb.bs:                                            ; preds = %bb.ap
  %i.fg = icmp eq i8 %i.w, 34, !dbg !23242
  br i1 %i.fg, label %bb.dt, label %bb.aq, !dbg !23242

bb.bt:                                            ; preds = %bb.ar
  %i.fh = getelementptr inbounds nuw i8, ptr %0, i64 1, !dbg !23331
  %i.fi = load i8, ptr %i.fh, align 1, !dbg !23331, !range !343, !noundef !261
  %i.fj = getelementptr inbounds nuw i8, ptr %1, i64 1, !dbg !23332
  %i.fk = load i8, ptr %i.fj, align 1, !dbg !23332, !range !343, !noundef !261
  %i.fl = icmp eq i8 %i.fi, %i.fk, !dbg !23331
  br label %_RNvXs7_NtNtCscgRAwXFJnXP_4core3cmp5implsReNtB7_9PartialEq2eqCshquuC4dCYVj_10polars_sql.exit, !dbg !23333

bb.bu:                                            ; preds = %bb.as
  %i.fm = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !23334
  %.val31.a = load i64, ptr %i.fm, align 16, !dbg !23334, !noundef !261 ; 2 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !23334
  %.val33.a = load i64, ptr %i.fn, align 16, !dbg !23334, !noundef !261
  %i.fo = icmp eq i64 %.val31.a, %.val33.a, !dbg !23335
  br i1 %i.fo, label %bb.bv, label %_RNvXs7_NtNtCscgRAwXFJnXP_4core3cmp5implsReNtB7_9PartialEq2eqCshquuC4dCYVj_10polars_sql.exit, !dbg !23335

bb.bv:                                            ; preds = %bb.bu
  %i.fp = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !23336
  %.val32.a = load ptr, ptr %i.fp, align 8, !dbg !23334, !nonnull !261, !noundef !261
  %i.fq = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !23337
  %.val30 = load ptr, ptr %i.fq, align 8, !dbg !23334, !nonnull !261, !noundef !261
  %bcmp.i.i = tail call i32 @bcmp(ptr nonnull readonly %.val30, ptr nonnull readonly %.val32.a, i64 %.val31.a), !dbg !23338, !alias.scope !23127
  %i.fr = icmp eq i32 %bcmp.i.i, 0, !dbg !23338
  br label %_RNvXs7_NtNtCscgRAwXFJnXP_4core3cmp5implsReNtB7_9PartialEq2eqCshquuC4dCYVj_10polars_sql.exit, !dbg !23339

bb.bw:                                            ; preds = %bb.at
  %i.fs = getelementptr inbounds nuw i8, ptr %0, i64 1, !dbg !23340
  %i.ft = load i8, ptr %i.fs, align 1, !dbg !23340, !noundef !261
  %i.fu = getelementptr inbounds nuw i8, ptr %1, i64 1, !dbg !23341
  %i.fv = load i8, ptr %i.fu, align 1, !dbg !23341, !noundef !261
  %i.fw = icmp eq i8 %i.ft, %i.fv, !dbg !23340
  br label %_RNvXs7_NtNtCscgRAwXFJnXP_4core3cmp5implsReNtB7_9PartialEq2eqCshquuC4dCYVj_10polars_sql.exit, !dbg !23342

bb.bx:                                            ; preds = %bb.au
  %i.fx = getelementptr inbounds nuw i8, ptr %0, i64 2, !dbg !23343
  %i.fy = load i16, ptr %i.fx, align 2, !dbg !23343, !noundef !261
  %i.fz = getelementptr inbounds nuw i8, ptr %1, i64 2, !dbg !23344
  %i.ga = load i16, ptr %i.fz, align 2, !dbg !23344, !noundef !261
  %i.gb = icmp eq i16 %i.fy, %i.ga, !dbg !23343
  br label %_RNvXs7_NtNtCscgRAwXFJnXP_4core3cmp5implsReNtB7_9PartialEq2eqCshquuC4dCYVj_10polars_sql.exit, !dbg !23345

bb.by:                                            ; preds = %bb.av
  %i.gc = getelementptr inbounds nuw i8, ptr %0, i64 4, !dbg !23346
  %i.gd = load i32, ptr %i.gc, align 4, !dbg !23346, !noundef !261
  %i.ge = getelementptr inbounds nuw i8, ptr %1, i64 4, !dbg !23347
  %i.gf = load i32, ptr %i.ge, align 4, !dbg !23347, !noundef !261
  %i.gg = icmp eq i32 %i.gd, %i.gf, !dbg !23346
  br label %_RNvXs7_NtNtCscgRAwXFJnXP_4core3cmp5implsReNtB7_9PartialEq2eqCshquuC4dCYVj_10polars_sql.exit, !dbg !23348

bb.bz:                                            ; preds = %bb.aw
  %i.gh = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !23349
  %i.gi = load i64, ptr %i.gh, align 8, !dbg !23349, !noundef !261
  %i.gj = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !23350
  %i.gk = load i64, ptr %i.gj, align 8, !dbg !23350, !noundef !261
  %i.gl = icmp eq i64 %i.gi, %i.gk, !dbg !23349
  br label %_RNvXs7_NtNtCscgRAwXFJnXP_4core3cmp5implsReNtB7_9PartialEq2eqCshquuC4dCYVj_10polars_sql.exit, !dbg !23351

bb.ca:                                            ; preds = %bb.ax
  %i.gm = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !23352
  %i.gn = load i128, ptr %i.gm, align 16, !dbg !23352, !noundef !261
  %i.go = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !23353
  %i.gp = load i128, ptr %i.go, align 16, !dbg !23353, !noundef !261
  %i.gq = icmp eq i128 %i.gn, %i.gp, !dbg !23352
  br label %_RNvXs7_NtNtCscgRAwXFJnXP_4core3cmp5implsReNtB7_9PartialEq2eqCshquuC4dCYVj_10polars_sql.exit, !dbg !23354

bb.cb:                                            ; preds = %bb.ay
  %i.gr = getelementptr inbounds nuw i8, ptr %0, i64 1, !dbg !23355
  %i.gs = load i8, ptr %i.gr, align 1, !dbg !23355, !noundef !261
  %i.gt = getelementptr inbounds nuw i8, ptr %1, i64 1, !dbg !23356
  %i.gu = load i8, ptr %i.gt, align 1, !dbg !23356, !noundef !261
  %i.gv = icmp eq i8 %i.gs, %i.gu, !dbg !23355
  br label %_RNvXs7_NtNtCscgRAwXFJnXP_4core3cmp5implsReNtB7_9PartialEq2eqCshquuC4dCYVj_10polars_sql.exit, !dbg !23357

bb.cc:                                            ; preds = %bb.az
  %i.gw = getelementptr inbounds nuw i8, ptr %0, i64 2, !dbg !23358
  %i.gx = load i16, ptr %i.gw, align 2, !dbg !23358, !noundef !261
  %i.gy = getelementptr inbounds nuw i8, ptr %1, i64 2, !dbg !23359
  %i.gz = load i16, ptr %i.gy, align 2, !dbg !23359, !noundef !261
  %i.ha = icmp eq i16 %i.gx, %i.gz, !dbg !23358
  br label %_RNvXs7_NtNtCscgRAwXFJnXP_4core3cmp5implsReNtB7_9PartialEq2eqCshquuC4dCYVj_10polars_sql.exit, !dbg !23360

bb.cd:                                            ; preds = %bb.ba
  %i.hb = getelementptr inbounds nuw i8, ptr %0, i64 4, !dbg !23361
end_hunk_2
begin_hunk_3_@_RNvMsa_NtNtCs1LHh8CLbVkQ_11polars_core9datatypes9any_valueNtB5_8AnyValue10eq_missing:bb.a

bb.dd:                                            ; preds = %bb.bm
  %i.ku = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !23431
  %i.kv = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !23432
  %i.kw = tail call noundef zeroext i1 @_RNvXs_NtCs1LHh8CLbVkQ_11polars_core7testingNtNtB6_6series6SeriesNtNtCscgRAwXFJnXP_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.ku, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.kv), !dbg !23433
  br label %_RNvXs7_NtNtCscgRAwXFJnXP_4core3cmp5implsReNtB7_9PartialEq2eqCshquuC4dCYVj_10polars_sql.exit, !dbg !23433

bb.de:                                            ; preds = %bb.bn
  %i.kx = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !23434
  %i.ky = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !23435
  %i.kz = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !23436
  %i.la = load i64, ptr %i.kz, align 8, !dbg !23436, !noundef !261 ; 3 uses
  %i.lb = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !23437
  %i.lc = load i64, ptr %i.lb, align 8, !dbg !23437, !noundef !261
  %.not = icmp eq i64 %i.la, %i.lc, !dbg !23436
  br i1 %.not, label %.preheader, label %_RNvXs7_NtNtCscgRAwXFJnXP_4core3cmp5implsReNtB7_9PartialEq2eqCshquuC4dCYVj_10polars_sql.exit, !dbg !23200

.preheader:                                       ; preds = %bb.de
  %.not78 = icmp eq i64 %i.la, 0, !dbg !23438
  br i1 %.not78, label %_RNvXs7_NtNtCscgRAwXFJnXP_4core3cmp5implsReNtB7_9PartialEq2eqCshquuC4dCYVj_10polars_sql.exit, label %.lr.ph, !dbg !23206

.lr.ph:                                           ; preds = %.preheader
  %.val42.a = load ptr, ptr %i.kx, align 16, !nonnull !261, !noundef !261
  %i.ld = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val43.a = load ptr, ptr %i.ld, align 8, !nonnull !261, !align !388, !noundef !261 ; 2 uses
  %i.le = getelementptr inbounds nuw i8, ptr %.val43.a, i64 16
  %i.lf = load i64, ptr %i.le, align 8, !range !394, !invariant.load !261
  %i.lg = add nsw i64 %i.lf, -1
  %i.lh = and i64 %i.lg, -16
  %i.li = getelementptr inbounds nuw i8, ptr %.val42.a, i64 %i.lh
  %i.lj = getelementptr inbounds nuw i8, ptr %i.li, i64 16
  %i.lk = getelementptr inbounds nuw i8, ptr %.val43.a, i64 584
  %i.ll = load ptr, ptr %i.lk, align 8, !invariant.load !261, !nonnull !261
  %.val40 = load ptr, ptr %i.ky, align 16, !nonnull !261
  %i.lm = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.val41 = load ptr, ptr %i.lm, align 8, !nonnull !261, !align !388 ; 2 uses
  %i.ln = getelementptr inbounds nuw i8, ptr %.val41, i64 16
  %i.lo = getelementptr inbounds nuw i8, ptr %.val41, i64 584
  br label %bb.dh, !dbg !23206

bb.df:                                            ; preds = %bb.dj, %bb.dg
  %.pn = phi { ptr, i32 } [ %i.lp, %bb.dg ], [ %i.ly, %bb.dj ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9any_value8AnyValueECshquuC4dCYVj_10polars_sql(ptr noalias noundef align 16 dereferenceable(48) %i.f) #37
          to label %bb.j unwind label %bb.i, !dbg !23439

bb.dg:                                            ; preds = %bb.dk, %bb.dh
  %i.lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.df

bb.dh:                                            ; preds = %.lr.ph, %bb.dl
  %.sroa.0.177 = phi i1 [ true, %.lr.ph ], [ %i.lz, %bb.dl ]
  %.sroa.013.076 = phi i64 [ 0, %.lr.ph ], [ %i.lq, %bb.dl ] ; 3 uses
  %i.lq = add nuw i64 %.sroa.013.076, 1, !dbg !23440 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !23441
  call void %i.ll(ptr noalias noundef nonnull sret([48 x i8]) align 16 captures(address) dereferenceable(48) %i.f, ptr noundef nonnull %i.lj, i64 noundef %.sroa.013.076) #40, !dbg !23442
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !23443
  %i.lr = load i64, ptr %i.ln, align 8, !dbg !23444, !range !394, !invariant.load !261
  %i.ls = add nsw i64 %i.lr, -1, !dbg !23444
  %i.lt = and i64 %i.ls, -16, !dbg !23444
  %i.lu = getelementptr inbounds nuw i8, ptr %.val40, i64 %i.lt, !dbg !23444
  %i.lv = getelementptr inbounds nuw i8, ptr %i.lu, i64 16, !dbg !23444
  %i.lw = load ptr, ptr %i.lo, align 8, !dbg !23445, !invariant.load !261, !nonnull !261
  invoke void %i.lw(ptr noalias noundef nonnull sret([48 x i8]) align 16 captures(address) dereferenceable(48) %i.e, ptr noundef nonnull %i.lv, i64 noundef %.sroa.013.076)
          to label %bb.di unwind label %bb.dg, !dbg !23446

bb.di:                                            ; preds = %bb.dh
  %i.lx = invoke fastcc noundef zeroext i1 @_RNvMsa_NtNtCs1LHh8CLbVkQ_11polars_core9datatypes9any_valueNtB5_8AnyValue10eq_missing(ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(48) %i.f, ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(48) %i.e)
          to label %bb.dk unwind label %bb.dj, !dbg !23447

bb.dj:                                            ; preds = %bb.di
  %i.ly = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9any_value8AnyValueECshquuC4dCYVj_10polars_sql(ptr noalias noundef align 16 dereferenceable(48) %i.e) #37
          to label %bb.df unwind label %bb.i, !dbg !23448

bb.dk:                                            ; preds = %bb.di
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9any_value8AnyValueECshquuC4dCYVj_10polars_sql(ptr noalias noundef align 16 dereferenceable(48) %i.e)
          to label %bb.dl unwind label %bb.dg, !dbg !23448

bb.dl:                                            ; preds = %bb.dk
  %i.lz = select i1 %i.lx, i1 %.sroa.0.177, i1 false, !dbg !23449 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !23448
  call fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9any_value8AnyValueECshquuC4dCYVj_10polars_sql(ptr noalias noundef align 16 dereferenceable(48) %i.f), !dbg !23439
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !23439
  %exitcond.not = icmp eq i64 %i.lq, %i.la, !dbg !23438
  br i1 %exitcond.not, label %_RNvXs7_NtNtCscgRAwXFJnXP_4core3cmp5implsReNtB7_9PartialEq2eqCshquuC4dCYVj_10polars_sql.exit, label %bb.dh, !dbg !23206

bb.dm:                                            ; preds = %bb.bo
  %i.ma = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !23450
  %i.mb = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !23451
  %i.mc = tail call noundef zeroext i1 @_RNvXNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array6objectRDNtB2_16PolarsObjectSafeEL_NtNtCscgRAwXFJnXP_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.ma, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.mb), !dbg !23452
  br label %_RNvXs7_NtNtCscgRAwXFJnXP_4core3cmp5implsReNtB7_9PartialEq2eqCshquuC4dCYVj_10polars_sql.exit, !dbg !23452

bb.dn:                                            ; preds = %bb.bp
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !dbg !23453
  %i.md = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !23454
  %i.me = load i64, ptr %i.md, align 8, !dbg !23454, !noundef !261
  %i.mf = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !23455
  %i.mg = load ptr, ptr %i.mf, align 16, !dbg !23455, !nonnull !261, !align !388, !noundef !261
  call void @_RNvNvMsa_NtNtCs1LHh8CLbVkQ_11polars_core9datatypes9any_valueNtB7_8AnyValue10eq_missing17struct_value_iter(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.h, i64 noundef %i.me, ptr noundef nonnull align 8 %i.mg), !dbg !23453
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !dbg !23456
  %i.mh = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !23457
  %i.mi = load i64, ptr %i.mh, align 8, !dbg !23457, !noundef !261
  %i.mj = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !23458
  %i.mk = load ptr, ptr %i.mj, align 16, !dbg !23458, !nonnull !261, !align !388, !noundef !261
  call void @_RNvNvMsa_NtNtCs1LHh8CLbVkQ_11polars_core9datatypes9any_valueNtB7_8AnyValue10eq_missing17struct_value_iter(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.g, i64 noundef %i.mi, ptr noundef nonnull align 8 %i.mk), !dbg !23456
  %i.ml = call noundef zeroext i1 @_RINvNvMsa_NtNtCs1LHh8CLbVkQ_11polars_core9datatypes9any_valueNtB8_8AnyValue10eq_missing17struct_eq_missingINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB1P_5slice4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvB2_17struct_value_iter0EB1G_ECshquuC4dCYVj_10polars_sql(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.h, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.g, i1 noundef zeroext true), !dbg !23459
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !23460
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !dbg !23460
  br label %_RNvXs7_NtNtCscgRAwXFJnXP_4core3cmp5implsReNtB7_9PartialEq2eqCshquuC4dCYVj_10polars_sql.exit, !dbg !23461

bb.do:                                            ; preds = %bb.bp
  %i.mm = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !23462
  %i.mn = load ptr, ptr %i.mm, align 8, !dbg !23462, !nonnull !261, !noundef !261 ; 2 uses
  %i.mo = getelementptr i8, ptr %i.mn, i64 8, !dbg !23463
  %.val50.a = load ptr, ptr %i.mo, align 8, !dbg !23463, !nonnull !261, !noundef !261 ; 2 uses
  %i.mp = getelementptr i8, ptr %i.mn, i64 16, !dbg !23463
  %.val51.a = load i64, ptr %i.mp, align 8, !dbg !23463, !noundef !261
  %i.mq = getelementptr inbounds nuw [48 x i8], ptr %.val50.a, i64 %.val51.a, !dbg !23464
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !dbg !23465
  %i.mr = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !23466
  %i.ms = load i64, ptr %i.mr, align 8, !dbg !23466, !noundef !261
  %i.mt = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !23467
  %i.mu = load ptr, ptr %i.mt, align 16, !dbg !23467, !nonnull !261, !align !388, !noundef !261
  call void @_RNvNvMsa_NtNtCs1LHh8CLbVkQ_11polars_core9datatypes9any_valueNtB7_8AnyValue10eq_missing17struct_value_iter(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.j, i64 noundef %i.ms, ptr noundef nonnull align 8 %i.mu), !dbg !23465
  %i.mv = call noundef zeroext i1 @_RINvNvMsa_NtNtCs1LHh8CLbVkQ_11polars_core9datatypes9any_valueNtB8_8AnyValue10eq_missing17struct_eq_missingINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB1P_5slice4iter4IterBX_ENCNvB2_23struct_owned_value_iter0EIB1H_IB2v_INtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvB2_17struct_value_iter0EECshquuC4dCYVj_10polars_sql(ptr noundef nonnull %.val50.a, ptr noundef nonnull %i.mq, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.j, i1 noundef zeroext true), !dbg !23468
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !dbg !23469
  br label %_RNvXs7_NtNtCscgRAwXFJnXP_4core3cmp5implsReNtB7_9PartialEq2eqCshquuC4dCYVj_10polars_sql.exit, !dbg !23470

bb.dp:                                            ; preds = %bb.bq
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !dbg !23471
  %i.mw = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !23472
  %i.mx = load i64, ptr %i.mw, align 8, !dbg !23472, !noundef !261
  %i.my = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !23473
  %i.mz = load ptr, ptr %i.my, align 16, !dbg !23473, !nonnull !261, !align !388, !noundef !261
  call void @_RNvNvMsa_NtNtCs1LHh8CLbVkQ_11polars_core9datatypes9any_valueNtB7_8AnyValue10eq_missing17struct_value_iter(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.i, i64 noundef %i.mx, ptr noundef nonnull align 8 %i.mz), !dbg !23471
  %i.na = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !23474
  %i.nb = load ptr, ptr %i.na, align 8, !dbg !23474, !nonnull !261, !noundef !261 ; 2 uses
  %i.nc = getelementptr i8, ptr %i.nb, i64 8, !dbg !23475
  %.val48 = load ptr, ptr %i.nc, align 8, !dbg !23475, !nonnull !261, !noundef !261 ; 2 uses
  %i.nd = getelementptr i8, ptr %i.nb, i64 16, !dbg !23475
  %.val49 = load i64, ptr %i.nd, align 8, !dbg !23475, !noundef !261
  %i.ne = getelementptr inbounds nuw [48 x i8], ptr %.val48, i64 %.val49, !dbg !23476
  %i.nf = call noundef zeroext i1 @_RINvNvMsa_NtNtCs1LHh8CLbVkQ_11polars_core9datatypes9any_valueNtB8_8AnyValue10eq_missing17struct_eq_missingINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB1P_5slice4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvB2_17struct_value_iter0EIB1H_IB2v_BX_ENCNvB2_23struct_owned_value_iter0EECshquuC4dCYVj_10polars_sql(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.i, ptr noundef nonnull %.val48, ptr noundef nonnull %i.ne, i1 noundef zeroext true), !dbg !23477
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !dbg !23478
  br label %_RNvXs7_NtNtCscgRAwXFJnXP_4core3cmp5implsReNtB7_9PartialEq2eqCshquuC4dCYVj_10polars_sql.exit, !dbg !23479

bb.dq:                                            ; preds = %bb.bq
  %i.ng = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !23480
  %i.nh = load ptr, ptr %i.ng, align 8, !dbg !23480, !nonnull !261, !noundef !261 ; 2 uses
  %i.ni = getelementptr i8, ptr %i.nh, i64 8, !dbg !23481
  %.val46 = load ptr, ptr %i.ni, align 8, !dbg !23481, !nonnull !261, !noundef !261 ; 2 uses
  %i.nj = getelementptr i8, ptr %i.nh, i64 16, !dbg !23481
  %.val47 = load i64, ptr %i.nj, align 8, !dbg !23481, !noundef !261
  %i.nk = getelementptr inbounds nuw [48 x i8], ptr %.val46, i64 %.val47, !dbg !23482
  %i.nl = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !23483
  %i.nm = load ptr, ptr %i.nl, align 8, !dbg !23483, !nonnull !261, !noundef !261 ; 2 uses
  %i.nn = getelementptr i8, ptr %i.nm, i64 8, !dbg !23484
  %.val44 = load ptr, ptr %i.nn, align 8, !dbg !23484, !nonnull !261, !noundef !261 ; 2 uses
  %i.no = getelementptr i8, ptr %i.nm, i64 16, !dbg !23484
  %.val45 = load i64, ptr %i.no, align 8, !dbg !23484, !noundef !261
  %i.np = getelementptr inbounds nuw [48 x i8], ptr %.val44, i64 %.val45, !dbg !23485
  %i.nq = tail call noundef zeroext i1 @_RINvNvMsa_NtNtCs1LHh8CLbVkQ_11polars_core9datatypes9any_valueNtB8_8AnyValue10eq_missing17struct_eq_missingINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB1P_5slice4iter4IterBX_ENCNvB2_23struct_owned_value_iter0EB1G_ECshquuC4dCYVj_10polars_sql(ptr noundef nonnull %.val46, ptr noundef nonnull %i.nk, ptr noundef nonnull %.val44, ptr noundef nonnull %i.np, i1 noundef zeroext true), !dbg !23486
  br label %_RNvXs7_NtNtCscgRAwXFJnXP_4core3cmp5implsReNtB7_9PartialEq2eqCshquuC4dCYVj_10polars_sql.exit, !dbg !23487

bb.dr:                                            ; preds = %bb.br
  %i.nr = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !23488
  %.val53.a = load i64, ptr %i.nr, align 16, !dbg !23488, !noundef !261 ; 2 uses
  %i.ns = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !23488
  %.val55 = load i64, ptr %i.ns, align 16, !dbg !23488, !noundef !261
  %i.nt = icmp eq i64 %.val53.a, %.val55, !dbg !23489
  br i1 %i.nt, label %bb.ds, label %_RNvXs7_NtNtCscgRAwXFJnXP_4core3cmp5implsReNtB7_9PartialEq2eqCshquuC4dCYVj_10polars_sql.exit, !dbg !23489

bb.ds:                                            ; preds = %bb.dr
  %i.nu = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !23490
  %.val54 = load ptr, ptr %i.nu, align 8, !dbg !23488, !nonnull !261, !noundef !261
  %i.nv = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !23491
  %.val52 = load ptr, ptr %i.nv, align 8, !dbg !23488, !nonnull !261, !noundef !261
  %bcmp.i.i.i = tail call i32 @bcmp(ptr nonnull readonly %.val52, ptr nonnull readonly %.val54, i64 range(i64 0, -9223372036854775808) %.val53.a), !dbg !23492, !alias.scope !23226
  %i.nw = icmp eq i32 %bcmp.i.i.i, 0, !dbg !23492
  br label %_RNvXs7_NtNtCscgRAwXFJnXP_4core3cmp5implsReNtB7_9PartialEq2eqCshquuC4dCYVj_10polars_sql.exit, !dbg !23493

bb.dt:                                            ; preds = %bb.bs
  %i.nx = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !23494
  %i.ny = load i128, ptr %i.nx, align 16, !dbg !23494, !noundef !261
  %i.nz = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !23495
  %i.oa = load i64, ptr %i.nz, align 16, !dbg !23495, !noundef !261
  %i.ob = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !23496
  %i.oc = load i128, ptr %i.ob, align 16, !dbg !23496, !noundef !261
  %i.od = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !23497
  %i.oe = load i64, ptr %i.od, align 16, !dbg !23497, !noundef !261
  %i.of = tail call fastcc noundef zeroext i1 @_RNvNtCslFlrwjHoTci_14polars_compute7decimal9dec128_eq(i128 noundef %i.ny, i64 noundef %i.oa, i128 noundef %i.oc, i64 noundef %i.oe) #40, !dbg !23498
  br label %_RNvXs7_NtNtCscgRAwXFJnXP_4core3cmp5implsReNtB7_9PartialEq2eqCshquuC4dCYVj_10polars_sql.exit, !dbg !23499

bb.du:                                            ; preds = %bb.aq
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !23500
  call fastcc void @_RNvMs8_NtNtCs1LHh8CLbVkQ_11polars_core9datatypes9any_valueNtB5_8AnyValue7to_i128(ptr noalias noundef align 16 captures(none) dereferenceable(32) %i.a, ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(48) %1), !dbg !23501
  %i.og = load i128, ptr %i.a, align 16, !dbg !23501, !range !23125, !noundef !261
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !23501
  %3 = trunc nuw i128 %i.og to i1, !dbg !23500
  br i1 %3, label %bb.dv, label %bb.ea, !dbg !23500

bb.dv:                                            ; preds = %bb.du
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !23227
  call fastcc void @_RNvMs8_NtNtCs1LHh8CLbVkQ_11polars_core9datatypes9any_valueNtB5_8AnyValue7to_i128(ptr noalias noundef align 16 captures(none) dereferenceable(32) %i.d, ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(48) %0), !dbg !23502
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !23503
  call fastcc void @_RNvMs8_NtNtCs1LHh8CLbVkQ_11polars_core9datatypes9any_valueNtB5_8AnyValue7to_i128(ptr noalias noundef align 16 captures(none) dereferenceable(32) %i.c, ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(48) %1), !dbg !23504
  %i.oh = load i128, ptr %i.d, align 16, !dbg !23505, !range !23125, !noundef !261
  %i.oi = getelementptr inbounds nuw i8, ptr %i.d, i64 16, !dbg !23505
  %i.oj = trunc nuw i128 %i.oh to i1, !dbg !23506
  %i.ok = load i128, ptr %i.c, align 16, !dbg !23505, !range !23125, !noundef !261
  %i.ol = trunc nuw i128 %i.ok to i1, !dbg !23506 ; 2 uses
  br i1 %i.oj, label %bb.dw, label %bb.dx, !dbg !23506

bb.dw:                                            ; preds = %bb.dv
  br i1 %i.ol, label %bb.dz, label %bb.dy, !dbg !23506

bb.dx:                                            ; preds = %bb.dv
  %i.om = xor i1 %i.ol, true, !dbg !23506
  br label %bb.dy, !dbg !23506

bb.dy:                                            ; preds = %bb.dw, %bb.dz, %bb.dx
  %.sroa.0.2 = phi i1 [ %i.oq, %bb.dz ], [ %i.om, %bb.dx ], [ false, %bb.dw ], !dbg !23507
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !23508
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !23508
  br label %_RNvXs7_NtNtCscgRAwXFJnXP_4core3cmp5implsReNtB7_9PartialEq2eqCshquuC4dCYVj_10polars_sql.exit, !dbg !23508

bb.dz:                                            ; preds = %bb.dw
  %i.on = getelementptr inbounds nuw i8, ptr %i.c, i64 16, !dbg !23505
  %i.oo = load i128, ptr %i.oi, align 16, !dbg !23509, !noundef !261
  %i.op = load i128, ptr %i.on, align 16, !dbg !23510, !noundef !261
  %i.oq = icmp eq i128 %i.oo, %i.op, !dbg !23509
  br label %bb.dy, !dbg !23511

bb.ea:                                            ; preds = %bb.du, %bb.aq
  %i.or = tail call { i64, double } @_RNvMs8_NtNtCs1LHh8CLbVkQ_11polars_core9datatypes9any_valueNtB5_8AnyValue6to_f64(ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(48) %0), !dbg !23512
  %i.os = extractvalue { i64, double } %i.or, 0, !dbg !23512
  %i.ot = icmp eq i64 %i.os, 1, !dbg !23513
  br i1 %i.ot, label %bb.eb, label %_RNvXs7_NtNtCscgRAwXFJnXP_4core3cmp5implsReNtB7_9PartialEq2eqCshquuC4dCYVj_10polars_sql.exit, !dbg !23513

bb.eb:                                            ; preds = %bb.ea
  %i.ou = tail call { i64, double } @_RNvMs8_NtNtCs1LHh8CLbVkQ_11polars_core9datatypes9any_valueNtB5_8AnyValue6to_f64(ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(48) %1), !dbg !23514
  %i.ov = extractvalue { i64, double } %i.ou, 0, !dbg !23514
  %i.ow = icmp eq i64 %i.ov, 1, !dbg !23515
  br i1 %i.ow, label %bb.ec, label %_RNvXs7_NtNtCscgRAwXFJnXP_4core3cmp5implsReNtB7_9PartialEq2eqCshquuC4dCYVj_10polars_sql.exit, !dbg !23515

bb.ec:                                            ; preds = %bb.eb
  %i.ox = tail call { i64, double } @_RNvMs8_NtNtCs1LHh8CLbVkQ_11polars_core9datatypes9any_valueNtB5_8AnyValue6to_f64(ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(48) %0), !dbg !23516 ; 2 uses
  %i.oy = extractvalue { i64, double } %i.ox, 0, !dbg !23516
  %i.oz = extractvalue { i64, double } %i.ox, 1, !dbg !23516 ; 2 uses
  %i.pa = trunc nuw i64 %i.oy to i1, !dbg !23517
  br i1 %i.pa, label %bb.ed, label %bb.ee, !dbg !23517, !prof !476

bb.ed:                                            ; preds = %bb.ec
  %i.pb = tail call { i64, double } @_RNvMs8_NtNtCs1LHh8CLbVkQ_11polars_core9datatypes9any_valueNtB5_8AnyValue6to_f64(ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(48) %1), !dbg !23518 ; 2 uses
  %i.pc = extractvalue { i64, double } %i.pb, 0, !dbg !23518
  %i.pd = extractvalue { i64, double } %i.pb, 1, !dbg !23518 ; 2 uses
  %i.pe = trunc nuw i64 %i.pc to i1, !dbg !23519
  br i1 %i.pe, label %bb.ef, label %bb.eg, !dbg !23519, !prof !476

bb.ee:                                            ; preds = %bb.ec
  tail call void @_RNvNtCscgRAwXFJnXP_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @12) #39, !dbg !23520
  unreachable, !dbg !23520

bb.ef:                                            ; preds = %bb.ed
  %i.pf = fcmp uno double %i.oz, 0.000000e+00, !dbg !23521
  br i1 %i.pf, label %bb.ei, label %bb.eh, !dbg !23522

bb.eg:                                            ; preds = %bb.ed
  tail call void @_RNvNtCscgRAwXFJnXP_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @13) #39, !dbg !23523
  unreachable, !dbg !23523

bb.eh:                                            ; preds = %bb.ef
  %i.pg = fcmp oeq double %i.oz, %i.pd, !dbg !23524
  br label %_RNvXs7_NtNtCscgRAwXFJnXP_4core3cmp5implsReNtB7_9PartialEq2eqCshquuC4dCYVj_10polars_sql.exit, !dbg !23525

bb.ei:                                            ; preds = %bb.ef
  %i.ph = fcmp uno double %i.pd, 0.000000e+00, !dbg !23526
  br label %_RNvXs7_NtNtCscgRAwXFJnXP_4core3cmp5implsReNtB7_9PartialEq2eqCshquuC4dCYVj_10polars_sql.exit, !dbg !23525
}

; Function Attrs: inlinehint nonlazybind optsize uwtable
define internal fastcc noundef zeroext i1 @_RNvNtCslFlrwjHoTci_14polars_compute7decimal9dec128_eq(i128 noundef %0, i64 noundef %1, i128 noundef %2, i64 noundef %3) unnamed_addr #5 !dbg !23527 {
bb.a:
  %i.a = icmp ult i64 %1, %3, !dbg !23549
  br i1 %i.a, label %bb.c, label %bb.b, !dbg !23549

bb.b:                                             ; preds = %bb.a
  %i.b = icmp ugt i64 %1, %3, !dbg !23550
  br i1 %i.b, label %bb.d, label %bb.h, !dbg !23550

bb.c:                                             ; preds = %bb.a
  %i.c = sub nuw i64 %3, %1, !dbg !23551          ; 3 uses
  %i.d = icmp ult i64 %i.c, 39, !dbg !23552
  br i1 %i.d, label %bb.i, label %bb.j, !dbg !23552

bb.d:                                             ; preds = %bb.b
  %i.e = sub nuw i64 %1, %3, !dbg !23553          ; 3 uses
  %i.f = icmp ult i64 %i.e, 39, !dbg !23554
  br i1 %i.f, label %bb.e, label %bb.f, !dbg !23554

bb.e:                                             ; preds = %bb.d
  %i.g = getelementptr inbounds nuw [16 x i8], ptr @14, i64 %i.e, !dbg !23554
  %i.h = load i128, ptr %i.g, align 16, !dbg !23554, !noundef !261
  %i.i = tail call { i128, i1 } @llvm.smul.with.overflow.i128(i128 %2, i128 %i.h), !dbg !23555 ; 2 uses
  %i.j = extractvalue { i128, i1 } %i.i, 1, !dbg !23555
  br i1 %i.j, label %bb.l, label %bb.g, !dbg !23556, !prof !280

bb.f:                                             ; preds = %bb.d
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %i.e, i64 noundef 39, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @16) #39, !dbg !23554
  unreachable, !dbg !23554

bb.g:                                             ; preds = %bb.e
  %i.k = extractvalue { i128, i1 } %i.i, 0, !dbg !23555
  br label %bb.h, !dbg !23557

bb.h:                                             ; preds = %bb.b, %bb.g, %bb.k
  %.sroa.02.0 = phi i128 [ %2, %bb.k ], [ %i.k, %bb.g ], [ %2, %bb.b ]
  %.sroa.0.0 = phi i128 [ %i.q, %bb.k ], [ %0, %bb.g ], [ %0, %bb.b ]
  %i.l = icmp eq i128 %.sroa.0.0, %.sroa.02.0, !dbg !23558
  br label %bb.l, !dbg !23559

bb.i:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw [16 x i8], ptr @14, i64 %i.c, !dbg !23552
  %i.n = load i128, ptr %i.m, align 16, !dbg !23552, !noundef !261
  %i.o = tail call { i128, i1 } @llvm.smul.with.overflow.i128(i128 %0, i128 %i.n), !dbg !23560 ; 2 uses
  %i.p = extractvalue { i128, i1 } %i.o, 1, !dbg !23560
  br i1 %i.p, label %bb.l, label %bb.k, !dbg !23561, !prof !280

bb.j:                                             ; preds = %bb.c
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %i.c, i64 noundef 39, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @16) #39, !dbg !23552
  unreachable, !dbg !23552

bb.k:                                             ; preds = %bb.i
  %i.q = extractvalue { i128, i1 } %i.o, 0, !dbg !23560
  br label %bb.h, !dbg !23562

bb.l:                                             ; preds = %bb.i, %bb.e, %bb.h
  %.sroa.04.0 = phi i1 [ false, %bb.e ], [ %i.l, %bb.h ], [ false, %bb.i ], !dbg !23563
  ret i1 %.sroa.04.0, !dbg !23559
}

; Function Attrs: nonlazybind optsize uwtable
define noundef zeroext i1 @_RNvXNtCscgRAwXFJnXP_4core3fmtQNtB2_9FormatterNtB2_5Write9write_fmtCshquuC4dCYVj_10polars_sql(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noundef nonnull %1, ptr noundef nonnull %2) unnamed_addr #0 !dbg !181 {
_RNvXsb_NtCscgRAwXFJnXP_4core3fmtNtB5_9FormatterNtB5_5Write9write_fmt.exit:
  %i.a = load ptr, ptr %0, align 8, !dbg !23565, !nonnull !261, !align !388, !noundef !261 ; 2 uses
  %i.b = getelementptr i8, ptr %i.a, i64 8, !dbg !23566
  %.val1 = load ptr, ptr %i.b, align 8, !dbg !23566, !nonnull !261, !noundef !261
  %.val = load ptr, ptr %i.a, align 8, !dbg !23566, !nonnull !261, !noundef !261
  %i.c = tail call noundef zeroext i1 @_RNvNtCscgRAwXFJnXP_4core3fmt5write(ptr noundef nonnull %.val, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %.val1, ptr noundef nonnull %1, ptr noundef nonnull %2), !dbg !23567
  ret i1 %i.c, !dbg !23568
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind optsize willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define noundef zeroext i1 @_RNvXNtNtCsfcROwRM8ZtH_11polars_plan3dsl4exprINtB2_9LazySerdeINtNtNtB2_9anonymous4expr9SpecialEqINtNtCsgZ49sUHp3tW_5alloc4sync3ArcDNtBZ_19AnonymousColumnsUdfEL_EEENtNtCscgRAwXFJnXP_4core3cmp9PartialEq2eqCshquuC4dCYVj_10polars_sql(ptr nofree noundef nonnull readonly align 8 captures(none) %0, ptr nofree noundef nonnull readonly align 8 captures(none) %1) unnamed_addr #8 !dbg !23569 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !dbg !23635, !range !387, !noundef !261 ; 2 uses
  %i.b = xor i64 %i.a, -9223372036854775808, !dbg !23635
  %i.c = icmp slt i64 %i.a, 0, !dbg !23635
  %i.d = select i1 %i.c, i64 %i.b, i64 2, !dbg !23635 ; 2 uses
  %i.e = load i64, ptr %1, align 8, !dbg !23636, !range !387, !noundef !261 ; 2 uses
  %i.f = xor i64 %i.e, -9223372036854775808, !dbg !23636
  %i.g = icmp slt i64 %i.e, 0, !dbg !23636
  %i.h = select i1 %i.g, i64 %i.f, i64 2, !dbg !23636
  %.not = icmp eq i64 %i.d, %i.h, !dbg !23636
  br i1 %.not, label %bb.b, label %bb.g, !dbg !23636

bb.b:                                             ; preds = %bb.a
  switch i64 %i.d, label %bb.c [
    i64 0, label %bb.d
    i64 1, label %bb.e
    i64 2, label %bb.f
  ], !dbg !23636

bb.c:                                             ; preds = %bb.b
  unreachable, !dbg !23637

bb.d:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !23638
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !23639
  %.val = load ptr, ptr %i.i, align 8, !dbg !23640, !nonnull !261, !noundef !261
  %.val3 = load ptr, ptr %i.j, align 8, !dbg !23640, !nonnull !261, !noundef !261
  %i.k = icmp eq ptr %.val, %.val3, !dbg !23641
  br label %bb.g, !dbg !23640

bb.e:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !23642
  %i.m = load ptr, ptr %i.l, align 8, !dbg !23642, !noundef !261
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !23643
  %i.o = load ptr, ptr %i.n, align 8, !dbg !23643, !noundef !261
  %i.p = icmp eq ptr %i.m, %i.o, !dbg !23644
  br i1 %i.p, label %bb.h, label %bb.g, !dbg !23607

bb.f:                                             ; preds = %bb.b
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !23645
  %i.r = load i64, ptr %i.q, align 8, !dbg !23645, !noundef !261 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !23646
  %i.t = load i64, ptr %i.s, align 8, !dbg !23646, !noundef !261
  %i.u = icmp eq i64 %i.r, %i.t, !dbg !23647
  br i1 %i.u, label %bb.i, label %bb.g, !dbg !23647

end_hunk_3
begin_hunk_4_@_RNvXsk_NtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtypeNtB5_8DataTypeNtNtCscgRAwXFJnXP_4core5clone5Clone5clone:bb.a
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9extension21ExtensionTypeInstanceECshquuC4dCYVj_10polars_sql(ptr %i.aj, ptr nonnull %i.ak) #37
          to label %common.resume unwind label %bb.ay, !dbg !33944

bb.ax:                                            ; preds = %.noexc
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %i.al, ptr noundef nonnull align 16 dereferenceable(48) %i.a, i64 48, i1 false), !dbg !33945, !noalias !33852
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !33946, !noalias !33852
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.aj) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ak) ]
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !33947
  store ptr %i.aj, ptr %i.be, align 8, !dbg !33947
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !33947
  store ptr %i.ak, ptr %i.bf, align 16, !dbg !33947
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !33947
  store ptr %i.al, ptr %i.bg, align 8, !dbg !33947
  store i8 29, ptr %0, align 16, !dbg !33947
  br label %bb.aj, !dbg !33876

bb.ay:                                            ; preds = %.body
  %i.bh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #36, !dbg !33874
  unreachable, !dbg !33874
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind optsize willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc noundef zeroext i1 @_RNvXsk_NtNtCsfcROwRM8ZtH_11polars_plan3dsl7optionsNtB5_15StrptimeOptionsNtNtCscgRAwXFJnXP_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1) unnamed_addr #12 personality ptr @rust_eh_personality !dbg !33948 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !33983
  %i.b = load i8, ptr %i.a, align 8, !dbg !33983, !range !343, !noundef !261
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24, !dbg !33983
  %i.d = load i8, ptr %i.c, align 8, !dbg !33983, !range !343, !noundef !261
  %i.e = icmp eq i8 %i.b, %i.d, !dbg !33983
  br i1 %i.e, label %bb.b, label %_RNvXsl_NtCs2mZqlW55729_12polars_utils6pl_strNtB5_10PlSmallStrNtNtCscgRAwXFJnXP_4core3cmp9PartialEq2eqCshquuC4dCYVj_10polars_sql.exit, !dbg !33983

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 25, !dbg !33984
  %i.g = load i8, ptr %i.f, align 1, !dbg !33984, !range !343, !noundef !261
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 25, !dbg !33984
  %i.i = load i8, ptr %i.h, align 1, !dbg !33984, !range !343, !noundef !261
  %i.j = icmp eq i8 %i.g, %i.i, !dbg !33984
  br i1 %i.j, label %bb.c, label %_RNvXsl_NtCs2mZqlW55729_12polars_utils6pl_strNtB5_10PlSmallStrNtNtCscgRAwXFJnXP_4core3cmp9PartialEq2eqCshquuC4dCYVj_10polars_sql.exit, !dbg !33984

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 26, !dbg !33985
  %i.l = load i8, ptr %i.k, align 2, !dbg !33985, !range !343, !noundef !261
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 26, !dbg !33985
  %i.n = load i8, ptr %i.m, align 2, !dbg !33985, !range !343, !noundef !261
  %i.o = icmp eq i8 %i.l, %i.n, !dbg !33985
  br i1 %i.o, label %bb.d, label %_RNvXsl_NtCs2mZqlW55729_12polars_utils6pl_strNtB5_10PlSmallStrNtNtCscgRAwXFJnXP_4core3cmp9PartialEq2eqCshquuC4dCYVj_10polars_sql.exit, !dbg !33985

bb.d:                                             ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 23, !dbg !33986
  %i.q = load i8, ptr %i.p, align 1, !dbg !33986, !range !399, !noundef !261 ; 3 uses
  %.not = icmp eq i8 %i.q, -38, !dbg !33986       ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 23, !dbg !33986
  %i.s = load i8, ptr %i.r, align 1, !dbg !33986, !range !399, !noundef !261 ; 3 uses
  %i.t = icmp eq i8 %i.s, -38, !dbg !33986        ; 2 uses
  %brmerge = or i1 %.not, %i.t, !dbg !33987
  %.mux = and i1 %.not, %i.t, !dbg !33987
  br i1 %brmerge, label %_RNvXsl_NtCs2mZqlW55729_12polars_utils6pl_strNtB5_10PlSmallStrNtNtCscgRAwXFJnXP_4core3cmp9PartialEq2eqCshquuC4dCYVj_10polars_sql.exit, label %bb.e, !dbg !33987

_RNvXsl_NtCs2mZqlW55729_12polars_utils6pl_strNtB5_10PlSmallStrNtNtCscgRAwXFJnXP_4core3cmp9PartialEq2eqCshquuC4dCYVj_10polars_sql.exit: ; preds = %bb.d, %bb.j, %_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr8as_slice.exit6, %bb.a, %bb.b, %bb.c
  %.sroa.0.0.shrunk = phi i1 [ %.mux, %bb.d ], [ false, %bb.a ], [ false, %_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr8as_slice.exit6 ], [ false, %bb.c ], [ false, %bb.b ], [ %i.ah, %bb.j ]
  ret i1 %.sroa.0.0.shrunk, !dbg !33988

bb.e:                                             ; preds = %bb.d
  %i.u = icmp ugt i8 %i.q, -41, !dbg !33989
  br i1 %i.u, label %bb.g, label %bb.f, !dbg !33989

bb.f:                                             ; preds = %bb.e
  %i.v = add i8 %i.q, 64, !dbg !33990
  %i.w = tail call i8 @llvm.umin.i8(i8 %i.v, i8 24), !dbg !33991
  %.sroa.0.0.i.i = zext nneg i8 %i.w to i64, !dbg !33991
  br label %_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr8as_slice.exit, !dbg !33992

bb.g:                                             ; preds = %bb.e
  %i.x = load ptr, ptr %0, align 8, !dbg !33993, !alias.scope !33980, !noalias !33981, !noundef !261
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !33994
  %i.z = load i64, ptr %i.y, align 8, !dbg !33994, !alias.scope !33980, !noalias !33981, !noundef !261
  br label %_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr8as_slice.exit, !dbg !33995

_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr8as_slice.exit: ; preds = %bb.f, %bb.g
  %.sroa.01.0.i = phi i64 [ %i.z, %bb.g ], [ %.sroa.0.0.i.i, %bb.f ], !dbg !33996 ; 2 uses
  %.sroa.0.0.i2 = phi ptr [ %i.x, %bb.g ], [ %0, %bb.f ], !dbg !33997
  %i.aa = icmp ugt i8 %i.s, -41, !dbg !33998
  br i1 %i.aa, label %bb.i, label %bb.h, !dbg !33998

bb.h:                                             ; preds = %_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr8as_slice.exit
  %i.ab = add i8 %i.s, 64, !dbg !33999
  %i.ac = tail call i8 @llvm.umin.i8(i8 %i.ab, i8 24), !dbg !34000
  %.sroa.0.0.i.i3 = zext nneg i8 %i.ac to i64, !dbg !34000
  br label %_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr8as_slice.exit6, !dbg !34001

bb.i:                                             ; preds = %_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr8as_slice.exit
  %i.ad = load ptr, ptr %1, align 8, !dbg !34002, !alias.scope !33982, !noundef !261
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !34003
  %i.af = load i64, ptr %i.ae, align 8, !dbg !34003, !alias.scope !33982, !noundef !261
  br label %_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr8as_slice.exit6, !dbg !34004

_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr8as_slice.exit6: ; preds = %bb.h, %bb.i
  %.sroa.01.0.i4 = phi i64 [ %i.af, %bb.i ], [ %.sroa.0.0.i.i3, %bb.h ], !dbg !34005
  %.sroa.0.0.i5 = phi ptr [ %i.ad, %bb.i ], [ %1, %bb.h ], !dbg !34006
  %i.ag = icmp eq i64 %.sroa.01.0.i, %.sroa.01.0.i4, !dbg !34007
  br i1 %i.ag, label %bb.j, label %_RNvXsl_NtCs2mZqlW55729_12polars_utils6pl_strNtB5_10PlSmallStrNtNtCscgRAwXFJnXP_4core3cmp9PartialEq2eqCshquuC4dCYVj_10polars_sql.exit, !dbg !34007

bb.j:                                             ; preds = %_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr8as_slice.exit6
  %bcmp.i = tail call i32 @bcmp(ptr %.sroa.0.0.i2, ptr %.sroa.0.0.i5, i64 %.sroa.01.0.i), !dbg !34008
  %i.ah = icmp eq i32 %bcmp.i, 0, !dbg !34008
  br label %_RNvXsl_NtCs2mZqlW55729_12polars_utils6pl_strNtB5_10PlSmallStrNtNtCscgRAwXFJnXP_4core3cmp9PartialEq2eqCshquuC4dCYVj_10polars_sql.exit, !dbg !34009
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind optsize willreturn memory(argmem: read) uwtable
define internal fastcc noundef zeroext i1 @_RNvXsl_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3opsNtB5_16FillNullStrategyNtNtCscgRAwXFJnXP_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 4 captures(none) dereferenceable(12) %0, ptr noalias noundef nonnull readonly align 4 captures(none) dereferenceable(12) %1) unnamed_addr #14 !dbg !34010 {
bb.a:
  %i.a = load i32, ptr %0, align 4, !dbg !34030, !range !34021, !noundef !261 ; 2 uses
  %i.b = load i32, ptr %1, align 4, !dbg !34031, !range !34021, !noundef !261
  %i.c = icmp eq i32 %i.a, %i.b, !dbg !34032
  br i1 %i.c, label %bb.c, label %bb.b, !dbg !34032

bb.b:                                             ; preds = %bb.i, %bb.f, %bb.c, %bb.a, %bb.j, %bb.k, %bb.g, %bb.h
  %.sroa.0.0 = phi i1 [ false, %bb.a ], [ %i.v, %bb.h ], [ true, %bb.c ], [ %i.r, %bb.g ], [ %i.aa, %bb.k ], [ false, %bb.f ], [ %i.w, %bb.j ], [ false, %bb.i ], !dbg !34033
  ret i1 %.sroa.0.0, !dbg !34034

bb.c:                                             ; preds = %bb.a
  switch i32 %i.a, label %bb.b [
    i32 0, label %bb.d
    i32 1, label %bb.e
  ], !dbg !34032

bb.d:                                             ; preds = %bb.c
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 4, !dbg !34035
  %i.e = load i32, ptr %i.d, align 4, !dbg !34035, !range !518, !noundef !261
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !34035
  %i.g = trunc nuw i32 %i.e to i1, !dbg !34036
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 4, !dbg !34035
  %i.i = load i32, ptr %i.h, align 4, !dbg !34035, !range !518, !noundef !261
  %i.j = trunc nuw i32 %i.i to i1, !dbg !34036    ; 2 uses
  br i1 %i.g, label %bb.f, label %bb.g, !dbg !34036

bb.e:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 4, !dbg !34037
  %i.l = load i32, ptr %i.k, align 4, !dbg !34037, !range !518, !noundef !261
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !34037
  %i.n = trunc nuw i32 %i.l to i1, !dbg !34038
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 4, !dbg !34037
  %i.p = load i32, ptr %i.o, align 4, !dbg !34037, !range !518, !noundef !261
  %i.q = trunc nuw i32 %i.p to i1, !dbg !34038    ; 2 uses
  br i1 %i.n, label %bb.i, label %bb.j, !dbg !34038

bb.f:                                             ; preds = %bb.d
  br i1 %i.j, label %bb.h, label %bb.b, !dbg !34036

bb.g:                                             ; preds = %bb.d
  %i.r = xor i1 %i.j, true, !dbg !34036
  br label %bb.b, !dbg !34036

bb.h:                                             ; preds = %bb.f
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !34035
  %i.t = load i32, ptr %i.f, align 4, !dbg !34039, !noundef !261
  %i.u = load i32, ptr %i.s, align 4, !dbg !34040, !noundef !261
  %i.v = icmp eq i32 %i.t, %i.u, !dbg !34039
  br label %bb.b, !dbg !34041

bb.i:                                             ; preds = %bb.e
  br i1 %i.q, label %bb.k, label %bb.b, !dbg !34038

bb.j:                                             ; preds = %bb.e
  %i.w = xor i1 %i.q, true, !dbg !34038
  br label %bb.b, !dbg !34038

bb.k:                                             ; preds = %bb.i
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !34037
  %i.y = load i32, ptr %i.m, align 4, !dbg !34042, !noundef !261
  %i.z = load i32, ptr %i.x, align 4, !dbg !34043, !noundef !261
  %i.aa = icmp eq i32 %i.y, %i.z, !dbg !34042
  br label %bb.b, !dbg !34044
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind optsize willreturn memory(argmem: read) uwtable
define internal fastcc noundef zeroext i1 @_RNvXsu_NtNtCsfcROwRM8ZtH_11polars_plan5plans7optionsNtB5_15FunctionOptionsNtNtCscgRAwXFJnXP_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 2 captures(none) dereferenceable(6) %0, ptr noalias noundef nonnull readonly align 2 captures(none) dereferenceable(6) %1) unnamed_addr #14 !dbg !34045 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4, !dbg !34078
  %i.b = load i8, ptr %i.a, align 2, !dbg !34078, !range !343, !noundef !261
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 4, !dbg !34078
  %i.d = load i8, ptr %i.c, align 2, !dbg !34078, !range !343, !noundef !261
  %i.e = icmp eq i8 %i.b, %i.d, !dbg !34078
  br i1 %i.e, label %bb.b, label %bb.d, !dbg !34061

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 2, !dbg !34079
  %i.g = load i16, ptr %i.f, align 2, !dbg !34079, !noundef !261
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 2, !dbg !34079
  %i.i = load i16, ptr %i.h, align 2, !dbg !34079, !noundef !261
  %i.j = icmp eq i16 %i.g, %i.i, !dbg !34079
  br i1 %i.j, label %bb.c, label %bb.d, !dbg !34064

bb.c:                                             ; preds = %bb.b
  %i.k = load i8, ptr %0, align 2, !dbg !34080, !range !430, !noundef !261 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 1, !dbg !34080
  %.not = icmp eq i8 %i.k, 2, !dbg !34080
  %i.m = load i8, ptr %1, align 2, !dbg !34080, !range !430, !noundef !261 ; 4 uses
  br i1 %.not, label %bb.f, label %bb.e, !dbg !34081

bb.d:                                             ; preds = %bb.g, %bb.e, %bb.a, %bb.b, %bb.h, %bb.f
  %.sroa.0.0.shrunk = phi i1 [ %i.s, %bb.h ], [ true, %bb.g ], [ false, %bb.e ], [ false, %bb.a ], [ %i.p, %bb.f ], [ false, %bb.b ]
  ret i1 %.sroa.0.0.shrunk, !dbg !34082

bb.e:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 1, !dbg !34080
  %i.o = icmp eq i8 %i.m, 2, !dbg !34080
  %2 = xor i8 %i.m, %i.k
  %3 = trunc i8 %2 to i1
  %or.cond4 = or i1 %i.o, %3, !dbg !34081
  br i1 %or.cond4, label %bb.d, label %bb.g, !dbg !34081

bb.f:                                             ; preds = %bb.c
  %i.p = icmp eq i8 %i.m, 2, !dbg !34080
  br label %bb.d, !dbg !34081

bb.g:                                             ; preds = %bb.e
  %4 = and i8 %i.m, %i.k, !dbg !34083
  %or.cond = trunc nuw i8 %4 to i1, !dbg !34083
  br i1 %or.cond, label %bb.h, label %bb.d, !dbg !34083

bb.h:                                             ; preds = %bb.g
  %i.q = load i8, ptr %i.l, align 1, !dbg !34084, !noundef !261
  %i.r = load i8, ptr %i.n, align 1, !dbg !34084, !noundef !261
  %i.s = icmp eq i8 %i.q, %i.r, !dbg !34084
  br label %bb.d, !dbg !34083
}

; Function Attrs: inlinehint nonlazybind optsize uwtable
define internal fastcc noundef zeroext i1 @_RNvXsy_NtNtCsfcROwRM8ZtH_11polars_plan5plans3litNtB5_12LiteralValueNtNtCscgRAwXFJnXP_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(96) %0, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(96) %1) unnamed_addr #5 !dbg !34085 {
bb.a:
  %i.a = load i8, ptr %0, align 16, !dbg !34110, !range !401, !noundef !261 ; 3 uses
  %i.b = icmp ne i8 %i.a, 32, !dbg !34110
  tail call void @llvm.assume(i1 %i.b), !dbg !34110
  %i.c = add nsw i8 %i.a, -31, !dbg !34110
  %i.d = icmp samesign ugt i8 %i.a, 30, !dbg !34110
  %narrow = select i1 %i.d, i8 %i.c, i8 1, !dbg !34110 ; 2 uses
  %i.e = load i8, ptr %1, align 16, !dbg !34111, !range !401, !noundef !261 ; 3 uses
  %i.f = icmp ne i8 %i.e, 32, !dbg !34111
  tail call void @llvm.assume(i1 %i.f), !dbg !34111
  %i.g = add nsw i8 %i.e, -31, !dbg !34111
  %i.h = icmp samesign ugt i8 %i.e, 30, !dbg !34111
  %narrow2 = select i1 %i.h, i8 %i.g, i8 1, !dbg !34111
  %i.i = icmp eq i8 %narrow, %narrow2, !dbg !34112
  br i1 %i.i, label %bb.b, label %bb.c, !dbg !34112

bb.b:                                             ; preds = %bb.a
  switch i8 %narrow, label %bb.d [
    i8 0, label %bb.e
    i8 1, label %bb.f
    i8 2, label %bb.g
    i8 3, label %bb.h
  ], !dbg !34112

bb.c:                                             ; preds = %bb.h, %bb.j, %bb.f, %bb.a, %bb.k, %bb.i, %bb.g, %bb.e
  %.sroa.0.0.shrunk = phi i1 [ %i.l, %bb.e ], [ %i.z, %bb.i ], [ false, %bb.a ], [ %i.p, %bb.g ], [ %i.af, %bb.k ], [ false, %bb.f ], [ false, %bb.j ], [ false, %bb.h ]
  ret i1 %.sroa.0.0.shrunk, !dbg !34113

bb.d:                                             ; preds = %bb.b
  unreachable, !dbg !34110

bb.e:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !34114
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !34114
  %i.l = tail call noundef zeroext i1 @_RNvXNtNtCsfcROwRM8ZtH_11polars_plan5plans3litNtB2_15DynLiteralValueNtNtCscgRAwXFJnXP_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(32) %i.j, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(32) %i.k), !dbg !34115
  br label %bb.c, !dbg !34115

bb.f:                                             ; preds = %bb.b
  %i.m = tail call noundef zeroext i1 @_RNvXs2_NtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtypeNtB5_8DataTypeNtNtCscgRAwXFJnXP_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(48) %0, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(48) %1), !dbg !34109
  br i1 %i.m, label %bb.i, label %bb.c, !dbg !34109

bb.g:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !34116
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !34116
  %i.p = tail call noundef zeroext i1 @_RNvXs5_NtNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr9anonymous4exprINtB5_9SpecialEqNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesENtNtCscgRAwXFJnXP_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.n, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.o), !dbg !34117
  br label %bb.c, !dbg !34117

bb.h:                                             ; preds = %bb.b
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !34118
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 64, !dbg !34118
  %i.s = load i128, ptr %i.r, align 16, !dbg !34118, !noundef !261
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !34118
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 64, !dbg !34118
  %i.v = load i128, ptr %i.u, align 16, !dbg !34118, !noundef !261
  %i.w = icmp eq i128 %i.s, %i.v, !dbg !34118
  br i1 %i.w, label %bb.j, label %bb.c, !dbg !34118

bb.i:                                             ; preds = %bb.f
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 48, !dbg !34109
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 48, !dbg !34109
  %i.z = tail call fastcc noundef zeroext i1 @_RNvMsa_NtNtCs1LHh8CLbVkQ_11polars_core9datatypes9any_valueNtB5_8AnyValue10eq_missing(ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(48) %i.x, ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(48) %i.y) #40, !dbg !34119
  br label %bb.c, !dbg !34109

bb.j:                                             ; preds = %bb.h
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 80, !dbg !34118
  %i.ab = load i128, ptr %i.aa, align 16, !dbg !34118, !noundef !261
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 80, !dbg !34118
  %i.ad = load i128, ptr %i.ac, align 16, !dbg !34118, !noundef !261
  %i.ae = icmp eq i128 %i.ab, %i.ad, !dbg !34118
  br i1 %i.ae, label %bb.k, label %bb.c, !dbg !34118

bb.k:                                             ; preds = %bb.j
  %i.af = tail call noundef zeroext i1 @_RNvXs2_NtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtypeNtB5_8DataTypeNtNtCscgRAwXFJnXP_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(48) %i.q, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(48) %i.t), !dbg !34118
  br label %bb.c, !dbg !34118
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable
define internal fastcc void @_RNvYNtNtCsk79RHlfmHDk_8foldhash7quality10FoldHasherNtNtCscgRAwXFJnXP_4core4hash6Hasher11write_isizeCshquuC4dCYVj_10polars_sql(ptr noalias nofree noundef nonnull align 16 captures(none) dereferenceable(48) %0, i64 noundef range(i64 -9223372036854775808, 257) %1) unnamed_addr #6 personality ptr @rust_eh_personality !dbg !85 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !34133), !dbg !34136
  tail call void @llvm.experimental.noalias.scope.decl(metadata !34134), !dbg !34137
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !34138 ; 2 uses
  %i.b = load i8, ptr %i.a, align 16, !dbg !34138, !alias.scope !34135, !noundef !261 ; 3 uses
  %i.c = icmp ugt i8 %i.b, 64, !dbg !34138
  br i1 %i.c, label %bb.c, label %bb.b, !dbg !34138

bb.b:                                             ; preds = %bb.a
  %i.d = zext i64 %1 to i128, !dbg !34139
  %i.e = zext nneg i8 %i.b to i128, !dbg !34140
  %i.f = shl nuw i128 %i.d, %i.e, !dbg !34140
  %i.g = load i128, ptr %0, align 16, !dbg !34141, !alias.scope !34135, !noundef !261
  %i.h = or i128 %i.g, %i.f, !dbg !34141
  %i.i = add nuw i8 %i.b, 64, !dbg !34142
  br label %_RNvXs_NtCsk79RHlfmHDk_8foldhash7qualityNtB4_10FoldHasherNtNtCscgRAwXFJnXP_4core4hash6Hasher11write_usize.exit, !dbg !34143

bb.c:                                             ; preds = %bb.a
  %i.j = load i128, ptr %0, align 16, !dbg !34144, !alias.scope !34135, !noundef !261 ; 2 uses
  %i.k = trunc i128 %i.j to i64, !dbg !34144
  %i.l = lshr i128 %i.j, 64, !dbg !34145
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !34146 ; 2 uses
  %i.n = load i64, ptr %i.m, align 8, !dbg !34146, !alias.scope !34135, !noundef !261
  %i.o = xor i64 %i.n, %i.k, !dbg !34147
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !34148
  %i.q = load ptr, ptr %i.p, align 16, !dbg !34148, !alias.scope !34135, !nonnull !261, !align !388, !noundef !261
  %i.r = load i64, ptr %i.q, align 8, !dbg !34148, !noalias !34135, !noundef !261
  %i.s = zext i64 %i.o to i128, !dbg !34149
  %i.t = zext i64 %i.r to i128, !dbg !34150
  %i.u = xor i128 %i.l, %i.t, !dbg !34150
  %i.v = mul nuw i128 %i.u, %i.s, !dbg !34151     ; 2 uses
  %i.w = lshr i128 %i.v, 64, !dbg !34152
  %i.x = xor i128 %i.w, %i.v, !dbg !34153
  %i.y = trunc i128 %i.x to i64, !dbg !34153
  store i64 %i.y, ptr %i.m, align 8, !dbg !34154, !alias.scope !34135
  %i.z = zext i64 %1 to i128, !dbg !34155
  br label %_RNvXs_NtCsk79RHlfmHDk_8foldhash7qualityNtB4_10FoldHasherNtNtCscgRAwXFJnXP_4core4hash6Hasher11write_usize.exit, !dbg !34143

_RNvXs_NtCsk79RHlfmHDk_8foldhash7qualityNtB4_10FoldHasherNtNtCscgRAwXFJnXP_4core4hash6Hasher11write_usize.exit: ; preds = %bb.b, %bb.c
  %.sink = phi i128 [ %i.z, %bb.c ], [ %i.h, %bb.b ], !dbg !34156
  %storemerge.i.i = phi i8 [ 64, %bb.c ], [ %i.i, %bb.b ], !dbg !34156
  store i128 %.sink, ptr %0, align 16, !dbg !34156, !alias.scope !34135
  store i8 %storemerge.i.i, ptr %i.a, align 16, !dbg !34156, !alias.scope !34135
  ret void, !dbg !34157
}

; Function Attrs: nounwind nonlazybind optsize uwtable
declare noundef range(i32 0, 10) i32 @rust_eh_personality(i32 noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef) unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #17

; Function Attrs: nonlazybind optsize uwtable
declare { i64, i64 } @_RNvCsiMOpCev58qw_7stacker15remaining_stack() unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #17

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #17

; Function Attrs: nonlazybind optsize uwtable
declare void @_RINvCsiMOpCev58qw_7stacker4growINtNtCscgRAwXFJnXP_4core6result6ResultNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprNtCsgjwxzEoLG5s_12polars_error11PolarsErrorENCINvYB15_NtNtNtNtB1b_5plans7visitor8visitors10TreeWalker7rewriteINtNtB2O_8iterator10ExprMapperNCINvMs0_B3E_B15_8map_exprNCNCNvMs1_NtCshquuC4dCYVj_10polars_sql7contextNtB4F_10SQLContext14execute_selects3_00E0EE0EB4H_(ptr dead_on_unwind noalias noundef writable sret([144 x i8]) align 16 captures(none) dereferenceable(144), i64 noundef, ptr noalias noundef readonly align 16 captures(none) dead_on_return dereferenceable(160)) unnamed_addr #0

; Function Attrs: cold minsize noinline noreturn nounwind nonlazybind optsize uwtable
declare void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() unnamed_addr #18

; Function Attrs: nonlazybind optsize uwtable
declare void @_RINvCsiMOpCev58qw_7stacker4growINtNtCscgRAwXFJnXP_4core6result6ResultNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprNtCsgjwxzEoLG5s_12polars_error11PolarsErrorENCINvYB15_NtNtNtNtB1b_5plans7visitor8visitors10TreeWalker7rewriteINtNtB2O_8iterator10ExprMapperNCINvMs0_B3E_B15_8map_exprNCNCNvMs1_NtCshquuC4dCYVj_10polars_sql7contextNtB4F_10SQLContext16process_group_bys1_00E0EE0EB4H_(ptr dead_on_unwind noalias noundef writable sret([144 x i8]) align 16 captures(none) dereferenceable(144), i64 noundef, ptr noalias noundef readonly align 16 captures(none) dead_on_return dereferenceable(160)) unnamed_addr #0

; Function Attrs: nonlazybind optsize uwtable
declare void @_RINvCsiMOpCev58qw_7stacker4growINtNtCscgRAwXFJnXP_4core6result6ResultNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprNtCsgjwxzEoLG5s_12polars_error11PolarsErrorENCINvYB15_NtNtNtNtB1b_5plans7visitor8visitors10TreeWalker7rewriteINtNtB2O_8iterator10ExprMapperNCINvMs0_B3E_B15_8map_exprNCNvMs1_NtCshquuC4dCYVj_10polars_sql7contextNtB4D_10SQLContext15expr_or_ordinals0_0E0EE0EB4F_(ptr dead_on_unwind noalias noundef writable sret([144 x i8]) align 16 captures(none) dereferenceable(144), i64 noundef, ptr noalias noundef readonly align 16 captures(none) dead_on_return dereferenceable(160)) unnamed_addr #0

; Function Attrs: nonlazybind optsize uwtable
declare void @_RINvCsiMOpCev58qw_7stacker4growINtNtCscgRAwXFJnXP_4core6result6ResultNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprNtCsgjwxzEoLG5s_12polars_error11PolarsErrorENCINvYB15_NtNtNtNtB1b_5plans7visitor8visitors10TreeWalker7rewriteINtNtB2O_8iterator10ExprMapperNCINvMs0_B3E_B15_8map_exprNCNvNtCshquuC4dCYVj_10polars_sql7context26suffix_conflicting_columns0E0EE0EB4B_(ptr dead_on_unwind noalias noundef writable sret([144 x i8]) align 16 captures(none) dereferenceable(144), i64 noundef, ptr noalias noundef readonly align 16 captures(none) dead_on_return dereferenceable(160)) unnamed_addr #0

; Function Attrs: nonlazybind optsize uwtable
declare void @_RINvCsiMOpCev58qw_7stacker4growINtNtCscgRAwXFJnXP_4core6result6ResultNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprNtCsgjwxzEoLG5s_12polars_error11PolarsErrorENCINvYB15_NtNtNtNtB1b_5plans7visitor8visitors10TreeWalker7rewriteINtNtB2O_8iterator10ExprMapperNCNvMs1_NtCshquuC4dCYVj_10polars_sql7contextNtB4d_10SQLContext18process_subqueries0EE0EB4f_(ptr dead_on_unwind noalias noundef writable sret([144 x i8]) align 16 captures(none) dereferenceable(144), i64 noundef, ptr noalias noundef readonly align 16 captures(none) dead_on_return dereferenceable(160)) unnamed_addr #0

; Function Attrs: nonlazybind optsize uwtable
declare void @_RINvCsiMOpCev58qw_7stacker4growINtNtNtCscgRAwXFJnXP_4core3ops12control_flow11ControlFlowNtCsgjwxzEoLG5s_12polars_error11PolarsErrorENCINvXs1b_NtNtCsaRr8xKSRVhT_9sqlparser3ast5valueNtB2g_17NormalizationFormNtNtB2i_7visitor5Visit5visitNtNtCshquuC4dCYVj_10polars_sql12sql_visitors22AmbiguousColumnVisitorE0EB3N_(ptr dead_on_unwind noalias noundef writable sret([72 x i8]) align 8 captures(none) dereferenceable(72), i64 noundef, ptr noalias noundef readonly captures(address, read_provenance) dereferenceable(1)) unnamed_addr #0

; Function Attrs: nonlazybind optsize uwtable
declare void @_RINvCsiMOpCev58qw_7stacker4growINtNtNtCscgRAwXFJnXP_4core3ops12control_flow11ControlFlowNtCsgjwxzEoLG5s_12polars_error11PolarsErrorENCINvXs1n_NtNtCsaRr8xKSRVhT_9sqlparser3ast5valueNtB2g_14TrimWhereFieldNtNtB2i_7visitor5Visit5visitNtNtCshquuC4dCYVj_10polars_sql12sql_visitors22AmbiguousColumnVisitorE0EB3K_(ptr dead_on_unwind noalias noundef writable sret([72 x i8]) align 8 captures(none) dereferenceable(72), i64 noundef, ptr noalias noundef readonly captures(address, read_provenance) dereferenceable(1)) unnamed_addr #0

; Function Attrs: nonlazybind optsize uwtable
declare void @_RINvCsiMOpCev58qw_7stacker4growINtNtNtCscgRAwXFJnXP_4core3ops12control_flow11ControlFlowNtCsgjwxzEoLG5s_12polars_error11PolarsErrorENCINvXsF_NtNtCsaRr8xKSRVhT_9sqlparser3ast5valueNtB2f_18DollarQuotedStringNtNtB2h_7visitor5Visit5visitNtNtCshquuC4dCYVj_10polars_sql12sql_visitors22AmbiguousColumnVisitorE0EB3N_(ptr dead_on_unwind noalias noundef writable sret([72 x i8]) align 8 captures(none) dereferenceable(72), i64 noundef, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48), ptr noalias noundef align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind optsize uwtable
declare void @_RINvCsiMOpCev58qw_7stacker4growINtNtNtCscgRAwXFJnXP_4core3ops12control_flow11ControlFlowNtCsgjwxzEoLG5s_12polars_error11PolarsErrorENCINvXsP_NtNtCsaRr8xKSRVhT_9sqlparser3ast5valueNtB2f_20QuoteDelimitedStringNtNtB2h_7visitor5Visit5visitNtNtCshquuC4dCYVj_10polars_sql12sql_visitors22AmbiguousColumnVisitorE0EB3P_(ptr dead_on_unwind noalias noundef writable sret([72 x i8]) align 8 captures(none) dereferenceable(72), i64 noundef, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noalias noundef align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind optsize uwtable
declare void @_RINvCsiMOpCev58qw_7stacker4growINtNtNtCscgRAwXFJnXP_4core3ops12control_flow11ControlFlowNtCsgjwxzEoLG5s_12polars_error11PolarsErrorENCINvXsZ_NtNtCsaRr8xKSRVhT_9sqlparser3ast5valueNtB2f_13DateTimeFieldNtNtB2h_7visitor5Visit5visitNtNtCshquuC4dCYVj_10polars_sql12sql_visitors22AmbiguousColumnVisitorE0EB3I_(ptr dead_on_unwind noalias noundef writable sret([72 x i8]) align 8 captures(none) dereferenceable(72), i64 noundef, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(72), ptr noalias noundef align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind optsize uwtable
declare void @_RINvCsiMOpCev58qw_7stacker4growINtNtNtCscgRAwXFJnXP_4core3ops12control_flow11ControlFlowNtCsgjwxzEoLG5s_12polars_error11PolarsErrorENCINvXsl_NtNtCsaRr8xKSRVhT_9sqlparser3ast5valueNtB2f_13ValueWithSpanNtNtB2h_7visitor5Visit5visitNtNtCshquuC4dCYVj_10polars_sql12sql_visitors22AmbiguousColumnVisitorE0EB3I_(ptr dead_on_unwind noalias noundef writable sret([72 x i8]) align 8 captures(none) dereferenceable(72), i64 noundef, ptr noalias noundef align 8 dereferenceable(32), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(80)) unnamed_addr #0

; Function Attrs: nonlazybind optsize uwtable
declare void @_RINvCsiMOpCev58qw_7stacker4growINtNtNtCscgRAwXFJnXP_4core3ops12control_flow11ControlFlowNtCsgjwxzEoLG5s_12polars_error11PolarsErrorENCINvXsv_NtNtCsaRr8xKSRVhT_9sqlparser3ast5valueNtB2f_5ValueNtNtB2h_7visitor5Visit5visitNtNtCshquuC4dCYVj_10polars_sql12sql_visitors22AmbiguousColumnVisitorE0EB3z_(ptr dead_on_unwind noalias noundef writable sret([72 x i8]) align 8 captures(none) dereferenceable(72), i64 noundef, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48), ptr noalias noundef align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind optsize uwtable
declare noundef zeroext i1 @_RINvCsiMOpCev58qw_7stacker4growINtNtNtCscgRAwXFJnXP_4core3ops12control_flow11ControlFlowuENCINvXs1b_NtNtCsaRr8xKSRVhT_9sqlparser3ast5valueNtB1A_17NormalizationFormNtNtB1C_7visitor5Visit5visitNtNtCshquuC4dCYVj_10polars_sql12sql_visitors17QualifyExpressionE0EB37_(i64 noundef, ptr noalias noundef readonly captures(address, read_provenance) dereferenceable(1)) unnamed_addr #0

; Function Attrs: nonlazybind optsize uwtable
declare noundef zeroext i1 @_RINvCsiMOpCev58qw_7stacker4growINtNtNtCscgRAwXFJnXP_4core3ops12control_flow11ControlFlowuENCINvXs1b_NtNtCsaRr8xKSRVhT_9sqlparser3ast5valueNtB1A_17NormalizationFormNtNtB1C_7visitor5Visit5visitNtNtCshquuC4dCYVj_10polars_sql12sql_visitors19FindTableIdentifierE0EB37_(i64 noundef, ptr noalias noundef readonly captures(address, read_provenance) dereferenceable(1)) unnamed_addr #0

; Function Attrs: nonlazybind optsize uwtable
declare noundef zeroext i1 @_RINvCsiMOpCev58qw_7stacker4growINtNtNtCscgRAwXFJnXP_4core3ops12control_flow11ControlFlowuENCINvXs1b_NtNtCsaRr8xKSRVhT_9sqlparser3ast5valueNtB1A_17NormalizationFormNtNtB1C_7visitor5Visit5visitNtNtCshquuC4dCYVj_10polars_sql12sql_visitors20WindowFunctionFinderE0EB37_(i64 noundef, ptr noalias noundef readonly captures(address, read_provenance) dereferenceable(1)) unnamed_addr #0

; Function Attrs: nonlazybind optsize uwtable
declare noundef zeroext i1 @_RINvCsiMOpCev58qw_7stacker4growINtNtNtCscgRAwXFJnXP_4core3ops12control_flow11ControlFlowuENCINvXs1b_NtNtCsaRr8xKSRVhT_9sqlparser3ast5valueNtB1A_17NormalizationFormNtNtB1C_7visitor5Visit5visitNtNtCshquuC4dCYVj_10polars_sql12sql_visitors24TableIdentifierCollectorE0EB37_(i64 noundef, ptr noalias noundef readonly captures(address, read_provenance) dereferenceable(1)) unnamed_addr #0

end_hunk_4
