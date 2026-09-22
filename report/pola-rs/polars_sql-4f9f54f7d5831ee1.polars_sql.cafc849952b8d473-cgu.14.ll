Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pola-rs/original/polars_sql-4f9f54f7d5831ee1.polars_sql.cafc849952b8d473-cgu.14?download=true
inline.NumInlined: 1684
inline.NumDeleted: 390
begin_hunk_0_@_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr9LazySerdeINtNtNtBJ_9anonymous4expr9SpecialEqINtNtCsgZ49sUHp3tW_5alloc4sync3ArcDNtB1A_19AnonymousColumnsUdfEL_EEEECshquuC4dCYVj_10polars_sql:bb.a
  tail call void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcDNtNtNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr9anonymous4expr19AnonymousColumnsUdfEL_E9drop_slowBR_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.e) #38, !dbg !2282
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr9anonymous4expr9SpecialEqINtNtCsgZ49sUHp3tW_5alloc4sync3ArcDNtBJ_19AnonymousColumnsUdfEL_EEECshquuC4dCYVj_10polars_sql.exit, !dbg !2282

bb.e:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !2274
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2258), !dbg !2274
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2259), !dbg !2283
  %i.j = load ptr, ptr %i.i, align 8, !dbg !2284, !alias.scope !2260, !nonnull !261, !align !388, !noundef !261
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 32, !dbg !2284
  %i.l = load ptr, ptr %i.k, align 8, !dbg !2284, !noalias !2260, !nonnull !261, !noundef !261
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !2285
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !2286
  %i.o = load ptr, ptr %i.n, align 8, !dbg !2286, !alias.scope !2260, !noundef !261
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !2287
  %i.q = load i64, ptr %i.p, align 8, !dbg !2287, !alias.scope !2260, !noundef !261
  tail call void %i.l(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.m, ptr noundef %i.o, i64 noundef %i.q), !dbg !2284, !inline_history !2202
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr9anonymous4expr9SpecialEqINtNtCsgZ49sUHp3tW_5alloc4sync3ArcDNtBJ_19AnonymousColumnsUdfEL_EEECshquuC4dCYVj_10polars_sql.exit, !dbg !2274

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr9anonymous4expr9SpecialEqINtNtCsgZ49sUHp3tW_5alloc4sync3ArcDNtBJ_19AnonymousColumnsUdfEL_EEECshquuC4dCYVj_10polars_sql.exit: ; preds = %bb.m, %bb.l, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCshK0ivY6saku_5bytes5bytes5BytesEECshquuC4dCYVj_10polars_sql.exit3, %bb.d, %bb.c, %bb.e
  ret void, !dbg !2274

bb.f:                                             ; preds = %bb.b
  %i.r = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !2274
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2262), !dbg !2274
  %i.t = load ptr, ptr %i.s, align 8, !dbg !2288, !alias.scope !2262, !noundef !261 ; 2 uses
  %i.u = icmp eq ptr %i.t, null, !dbg !2288
  br i1 %i.u, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCshK0ivY6saku_5bytes5bytes5BytesEECshquuC4dCYVj_10polars_sql.exit, label %bb.g, !dbg !2288

bb.g:                                             ; preds = %bb.f
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2263), !dbg !2288
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2264), !dbg !2289
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 32, !dbg !2290
  %i.w = load ptr, ptr %i.v, align 8, !dbg !2290, !noalias !2265, !nonnull !261, !noundef !261
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 48, !dbg !2291
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !2292
  %i.z = load ptr, ptr %i.y, align 8, !dbg !2292, !alias.scope !2265, !noundef !261
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 40, !dbg !2293
  %i.ab = load i64, ptr %i.aa, align 8, !dbg !2293, !alias.scope !2265, !noundef !261
  invoke void %i.w(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.x, ptr noundef %i.z, i64 noundef %i.ab)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCshK0ivY6saku_5bytes5bytes5BytesEECshquuC4dCYVj_10polars_sql.exit unwind label %bb.n, !dbg !2290, !inline_history !2213

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsgZ49sUHp3tW_5alloc6string6StringECshquuC4dCYVj_10polars_sql.exit: ; preds = %bb.b
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !2274
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2266), !dbg !2274
  %i.ad = load ptr, ptr %i.ac, align 8, !dbg !2294, !alias.scope !2266, !noundef !261 ; 2 uses
  %i.ae = icmp eq ptr %i.ad, null, !dbg !2294
  br i1 %i.ae, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCshK0ivY6saku_5bytes5bytes5BytesEECshquuC4dCYVj_10polars_sql.exit3, label %bb.h, !dbg !2294

bb.h:                                             ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsgZ49sUHp3tW_5alloc6string6StringECshquuC4dCYVj_10polars_sql.exit
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2267), !dbg !2294
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2268), !dbg !2295
  %i.af = getelementptr inbounds nuw i8, ptr %i.ad, i64 32, !dbg !2296
  %i.ag = load ptr, ptr %i.af, align 8, !dbg !2296, !noalias !2269, !nonnull !261, !noundef !261
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 48, !dbg !2297
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !2298
  %i.aj = load ptr, ptr %i.ai, align 8, !dbg !2298, !alias.scope !2269, !noundef !261
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 40, !dbg !2299
  %i.al = load i64, ptr %i.ak, align 8, !dbg !2299, !alias.scope !2269, !noundef !261
  invoke void %i.ag(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.ah, ptr noundef %i.aj, i64 noundef %i.al)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCshK0ivY6saku_5bytes5bytes5BytesEECshquuC4dCYVj_10polars_sql.exit3 unwind label %bb.k, !dbg !2296, !inline_history !2213

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCshK0ivY6saku_5bytes5bytes5BytesEECshquuC4dCYVj_10polars_sql.exit: ; preds = %bb.f, %bb.g, %bb.k
  %.pn = phi { ptr, i32 } [ %i.ar, %bb.k ], [ %i.r, %bb.g ], [ %i.r, %bb.f ]
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 56, !dbg !2274 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2270), !dbg !2274
  %i.an = load ptr, ptr %i.am, align 8, !dbg !2300, !alias.scope !2270, !noundef !261 ; 2 uses
  %i.ao = icmp eq ptr %i.an, null, !dbg !2300
  br i1 %i.ao, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr9anonymous4expr9SpecialEqINtNtCsgZ49sUHp3tW_5alloc4sync3ArcDNtB15_19AnonymousColumnsUdfEL_EEEECshquuC4dCYVj_10polars_sql.exit, label %bb.i, !dbg !2300

bb.i:                                             ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCshK0ivY6saku_5bytes5bytes5BytesEECshquuC4dCYVj_10polars_sql.exit
  %i.ap = atomicrmw sub ptr %i.an, i64 1 release, align 8, !dbg !2301, !noalias !2271
  %i.aq = icmp eq i64 %i.ap, 1, !dbg !2302
  br i1 %i.aq, label %bb.j, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr9anonymous4expr9SpecialEqINtNtCsgZ49sUHp3tW_5alloc4sync3ArcDNtB15_19AnonymousColumnsUdfEL_EEEECshquuC4dCYVj_10polars_sql.exit, !dbg !2302

bb.j:                                             ; preds = %bb.i
  fence acquire, !dbg !2303
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcDNtNtNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr9anonymous4expr19AnonymousColumnsUdfEL_E9drop_slowBR_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.am) #38
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr9anonymous4expr9SpecialEqINtNtCsgZ49sUHp3tW_5alloc4sync3ArcDNtB15_19AnonymousColumnsUdfEL_EEEECshquuC4dCYVj_10polars_sql.exit unwind label %bb.n, !dbg !2304

bb.k:                                             ; preds = %bb.h
  %i.ar = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCshK0ivY6saku_5bytes5bytes5BytesEECshquuC4dCYVj_10polars_sql.exit

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCshK0ivY6saku_5bytes5bytes5BytesEECshquuC4dCYVj_10polars_sql.exit3: ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsgZ49sUHp3tW_5alloc6string6StringECshquuC4dCYVj_10polars_sql.exit, %bb.h
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 56, !dbg !2274 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2272), !dbg !2274
  %i.at = load ptr, ptr %i.as, align 8, !dbg !2305, !alias.scope !2272, !noundef !261 ; 2 uses
  %i.au = icmp eq ptr %i.at, null, !dbg !2305
  br i1 %i.au, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr9anonymous4expr9SpecialEqINtNtCsgZ49sUHp3tW_5alloc4sync3ArcDNtBJ_19AnonymousColumnsUdfEL_EEECshquuC4dCYVj_10polars_sql.exit, label %bb.l, !dbg !2305

bb.l:                                             ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCshK0ivY6saku_5bytes5bytes5BytesEECshquuC4dCYVj_10polars_sql.exit3
  %i.av = atomicrmw sub ptr %i.at, i64 1 release, align 8, !dbg !2306, !noalias !2273
  %i.aw = icmp eq i64 %i.av, 1, !dbg !2307
  br i1 %i.aw, label %bb.m, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr9anonymous4expr9SpecialEqINtNtCsgZ49sUHp3tW_5alloc4sync3ArcDNtBJ_19AnonymousColumnsUdfEL_EEECshquuC4dCYVj_10polars_sql.exit, !dbg !2307

bb.m:                                             ; preds = %bb.l
  fence acquire, !dbg !2308
  tail call void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcDNtNtNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr9anonymous4expr19AnonymousColumnsUdfEL_E9drop_slowBR_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.as) #38, !dbg !2309
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr9anonymous4expr9SpecialEqINtNtCsgZ49sUHp3tW_5alloc4sync3ArcDNtBJ_19AnonymousColumnsUdfEL_EEECshquuC4dCYVj_10polars_sql.exit, !dbg !2309

bb.n:                                             ; preds = %bb.j, %bb.g
  %i.ax = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #36, !dbg !2274
  unreachable, !dbg !2274

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr9anonymous4expr9SpecialEqINtNtCsgZ49sUHp3tW_5alloc4sync3ArcDNtB15_19AnonymousColumnsUdfEL_EEEECshquuC4dCYVj_10polars_sql.exit: ; preds = %bb.i, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCshK0ivY6saku_5bytes5bytes5BytesEECshquuC4dCYVj_10polars_sql.exit, %bb.j
  resume { ptr, i32 } %.pn, !dbg !2274
}

; Function Attrs: nonlazybind optsize uwtable
define internal fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtNtCsh8eZTKRCwoO_3std4sync6poison5mutex5MutexINtNtB4_6option6OptionINtNtCsbm5zPlkZccl_4pyo38instance2PyNtNtNtB1W_5types9traceback11PyTracebackEEEECshquuC4dCYVj_10polars_sql(ptr %.8.val) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !2310 {
bb.a:
  %i.a = icmp eq ptr %.8.val, null, !dbg !2327
  br i1 %i.a, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_4cell10UnsafeCellINtNtB4_6option6OptionINtNtCsbm5zPlkZccl_4pyo38instance2PyNtNtNtB1w_5types9traceback11PyTracebackEEEECshquuC4dCYVj_10polars_sql.exit, label %bb.b, !dbg !2327

bb.b:                                             ; preds = %bb.a
  %i.b = tail call noundef nonnull align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNtNtCsbm5zPlkZccl_4pyo38internal5state12ATTACH_COUNT0s_023___RUST_STD_INTERNAL_VAL), !dbg !2328
  %.val.i.i.i.i.i.i = load i64, ptr %i.b, align 8, !dbg !2329, !noundef !261
  %i.c = icmp sgt i64 %.val.i.i.i.i.i.i, 0, !dbg !2330
  br i1 %i.c, label %bb.d, label %bb.c, !dbg !2331, !prof !380

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvNvXsA_NtCsbm5zPlkZccl_4pyo38instanceINtB7_2PypENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4drop9drop_slow(ptr noundef nonnull %.8.val), !dbg !2332
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_4cell10UnsafeCellINtNtB4_6option6OptionINtNtCsbm5zPlkZccl_4pyo38instance2PyNtNtNtB1w_5types9traceback11PyTracebackEEEECshquuC4dCYVj_10polars_sql.exit, !dbg !2332

bb.d:                                             ; preds = %bb.b
  tail call void @_Py_DecRef(ptr noundef nonnull %.8.val) #34, !dbg !2333
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_4cell10UnsafeCellINtNtB4_6option6OptionINtNtCsbm5zPlkZccl_4pyo38instance2PyNtNtNtB1w_5types9traceback11PyTracebackEEEECshquuC4dCYVj_10polars_sql.exit, !dbg !2334

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_4cell10UnsafeCellINtNtB4_6option6OptionINtNtCsbm5zPlkZccl_4pyo38instance2PyNtNtNtB1w_5types9traceback11PyTracebackEEEECshquuC4dCYVj_10polars_sql.exit: ; preds = %bb.a, %bb.c, %bb.d
  ret void, !dbg !2335
}

; Function Attrs: nonlazybind optsize uwtable
define internal void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtCsgjwxzEoLG5s_12polars_error11PolarsErrorECshquuC4dCYVj_10polars_sql(ptr noalias noundef align 8 dereferenceable(72) %0) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !2336 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !dbg !2589, !range !392, !noundef !261
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
  ], !dbg !2589

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2556), !dbg !2589
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2557), !dbg !2590
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2558), !dbg !2591
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !2592
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2559), !dbg !2592
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2560), !dbg !2593
  %i.c = load i64, ptr %i.b, align 8, !dbg !2594, !range !344, !alias.scope !2561, !noundef !261
  %i.d = icmp eq i64 %i.c, 0, !dbg !2594
  br i1 %i.d, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsgjwxzEoLG5s_12polars_error6python9PyErrWrapECshquuC4dCYVj_10polars_sql.exit, label %bb.c, !dbg !2594

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !2594
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2562), !dbg !2594
  %i.f = load ptr, ptr %i.e, align 8, !dbg !2595, !alias.scope !2563, !noundef !261 ; 3 uses
  %i.g = icmp eq ptr %i.f, null, !dbg !2595
  br i1 %i.g, label %bb.d, label %bb.j, !dbg !2595

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 40, !dbg !2595
  %.val.i.i.i.i.i.i = load ptr, ptr %i.h, align 8, !dbg !2595, !alias.scope !2563 ; 5 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 48, !dbg !2595
  %.val1.i.i.i.i.i.i = load ptr, ptr %i.i, align 8, !dbg !2595, !alias.scope !2563, !nonnull !261, !align !388, !noundef !261 ; 5 uses
  %i.j = load ptr, ptr %.val1.i.i.i.i.i.i, align 8, !dbg !2596, !invariant.load !261, !noalias !2563 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.j, null, !dbg !2596
  br i1 %.not.i.i.i.i.i.i.i, label %bb.f, label %bb.e, !dbg !2596

bb.e:                                             ; preds = %bb.d
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i.i.i.i) ]
  invoke void %i.j(ptr noundef nonnull %.val.i.i.i.i.i.i)
          to label %bb.f unwind label %bb.h, !dbg !2596, !noalias !2563

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i.i.i, i64 8, !dbg !2597
  %i.l = load i64, ptr %i.k, align 8, !dbg !2597, !range !393, !invariant.load !261, !noalias !2563 ; 2 uses
  %i.m = icmp eq i64 %i.l, 0, !dbg !2598
  br i1 %i.m, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsgjwxzEoLG5s_12polars_error6python9PyErrWrapECshquuC4dCYVj_10polars_sql.exit, label %bb.g, !dbg !2598

bb.g:                                             ; preds = %bb.f
  %i.n = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i.i.i, i64 16, !dbg !2597
  %i.o = load i64, ptr %i.n, align 8, !dbg !2599, !range !394, !invariant.load !261, !noalias !2563
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i.i.i.i) ]
  tail call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775808) %i.l, i64 noundef range(i64 1, 536870913) %i.o) #34, !dbg !2600, !noalias !2563
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsgjwxzEoLG5s_12polars_error6python9PyErrWrapECshquuC4dCYVj_10polars_sql.exit, !dbg !2601

bb.h:                                             ; preds = %bb.e
  %i.p = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i.i.i, i64 8, !dbg !2602
  %i.r = load i64, ptr %i.q, align 8, !dbg !2602, !range !393, !invariant.load !261, !noalias !2563 ; 2 uses
  %i.s = icmp eq i64 %i.r, 0, !dbg !2603
  br i1 %i.s, label %common.resume, label %bb.i, !dbg !2603

bb.i:                                             ; preds = %bb.h
  %i.t = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i.i.i, i64 16, !dbg !2602
  %i.u = load i64, ptr %i.t, align 8, !dbg !2604, !range !394, !invariant.load !261, !noalias !2563
  tail call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775808) %i.r, i64 noundef range(i64 1, 536870913) %i.u) #34, !dbg !2605, !noalias !2563
  br label %common.resume, !dbg !2606

common.resume:                                    ; preds = %bb.ax, %bb.aw, %bb.bb, %bb.ba, %bb.bf, %bb.be, %bb.h, %bb.i, %bb.n
  %common.resume.op = phi { ptr, i32 } [ %.pn.i.i.i.i.i.i.i, %bb.n ], [ %i.p, %bb.h ], [ %i.p, %bb.i ], [ %i.cg, %bb.ba ], [ %i.ca, %bb.aw ], [ %i.ca, %bb.ax ], [ %i.cg, %bb.bb ], [ %i.cn, %bb.bf ], [ %i.cn, %bb.be ]
  resume { ptr, i32 } %common.resume.op, !dbg !2589

bb.j:                                             ; preds = %bb.c
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2564), !dbg !2595
  %i.v = tail call noundef nonnull align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNtNtCsbm5zPlkZccl_4pyo38internal5state12ATTACH_COUNT0s_023___RUST_STD_INTERNAL_VAL), !dbg !2607
  %.val.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.v, align 8, !dbg !2608, !noalias !2565, !noundef !261
  %i.w = icmp sgt i64 %.val.i.i.i.i.i.i.i.i.i.i.i, 0, !dbg !2609
  br i1 %i.w, label %bb.l, label %bb.k, !dbg !2610, !prof !380

bb.k:                                             ; preds = %bb.j
  invoke void @_RNvNvXsA_NtCsbm5zPlkZccl_4pyo38instanceINtB7_2PypENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4drop9drop_slow(ptr noundef nonnull %i.f)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsbm5zPlkZccl_4pyo38instance2PyNtNtNtBL_5types10typeobject6PyTypeEECshquuC4dCYVj_10polars_sql.exit.i.i.i.i.i.i.i unwind label %bb.m, !dbg !2611, !noalias !2565

bb.l:                                             ; preds = %bb.j
  tail call void @_Py_DecRef(ptr noundef nonnull %i.f) #34, !dbg !2612, !noalias !2565
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsbm5zPlkZccl_4pyo38instance2PyNtNtNtBL_5types10typeobject6PyTypeEECshquuC4dCYVj_10polars_sql.exit.i.i.i.i.i.i.i, !dbg !2613

bb.m:                                             ; preds = %bb.k
  %i.x = landingpad { ptr, i32 }
          cleanup
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 40, !dbg !2614
  %.val3.i.i.i.i.i.i.i = load ptr, ptr %i.y, align 8, !dbg !2614, !alias.scope !2565, !nonnull !261, !noundef !261
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsbm5zPlkZccl_4pyo38instance2PyNtNtBL_10exceptions15PyBaseExceptionEECshquuC4dCYVj_10polars_sql(ptr nonnull %.val3.i.i.i.i.i.i.i) #37
          to label %bb.n unwind label %bb.p, !dbg !2614, !noalias !2565

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsbm5zPlkZccl_4pyo38instance2PyNtNtNtBL_5types10typeobject6PyTypeEECshquuC4dCYVj_10polars_sql.exit.i.i.i.i.i.i.i: ; preds = %bb.l, %bb.k
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 40, !dbg !2614
  %.val2.i.i.i.i.i.i.i = load ptr, ptr %i.z, align 8, !dbg !2614, !alias.scope !2565, !nonnull !261, !noundef !261
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsbm5zPlkZccl_4pyo38instance2PyNtNtBL_10exceptions15PyBaseExceptionEECshquuC4dCYVj_10polars_sql(ptr nonnull %.val2.i.i.i.i.i.i.i)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsbm5zPlkZccl_4pyo33err9err_state20PyErrStateNormalizedECshquuC4dCYVj_10polars_sql.exit.i.i.i.i.i.i unwind label %bb.o, !dbg !2614, !noalias !2565

bb.n:                                             ; preds = %bb.o, %bb.m
  %.pn.i.i.i.i.i.i.i = phi { ptr, i32 } [ %i.ab, %bb.o ], [ %i.x, %bb.m ]
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 56, !dbg !2614
  %.val5.i.i.i.i.i.i.i = load ptr, ptr %i.aa, align 8, !dbg !2614, !alias.scope !2565, !noundef !261
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtNtCsh8eZTKRCwoO_3std4sync6poison5mutex5MutexINtNtB4_6option6OptionINtNtCsbm5zPlkZccl_4pyo38instance2PyNtNtNtB1W_5types9traceback11PyTracebackEEEECshquuC4dCYVj_10polars_sql(ptr %.val5.i.i.i.i.i.i.i) #37
          to label %common.resume unwind label %bb.p, !dbg !2614, !noalias !2565

bb.o:                                             ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsbm5zPlkZccl_4pyo38instance2PyNtNtNtBL_5types10typeobject6PyTypeEECshquuC4dCYVj_10polars_sql.exit.i.i.i.i.i.i.i
  %i.ab = landingpad { ptr, i32 }
          cleanup
  br label %bb.n

bb.p:                                             ; preds = %bb.n, %bb.m
  %i.ac = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #36, !dbg !2614, !noalias !2565
  unreachable, !dbg !2614

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsbm5zPlkZccl_4pyo33err9err_state20PyErrStateNormalizedECshquuC4dCYVj_10polars_sql.exit.i.i.i.i.i.i: ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsbm5zPlkZccl_4pyo38instance2PyNtNtNtBL_5types10typeobject6PyTypeEECshquuC4dCYVj_10polars_sql.exit.i.i.i.i.i.i.i
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 56, !dbg !2614
  %.val4.i.i.i.i.i.i.i = load ptr, ptr %i.ad, align 8, !dbg !2614, !alias.scope !2565, !noundef !261
  tail call fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtNtCsh8eZTKRCwoO_3std4sync6poison5mutex5MutexINtNtB4_6option6OptionINtNtCsbm5zPlkZccl_4pyo38instance2PyNtNtNtB1W_5types9traceback11PyTracebackEEEECshquuC4dCYVj_10polars_sql(ptr %.val4.i.i.i.i.i.i.i), !dbg !2614, !noalias !2565
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsgjwxzEoLG5s_12polars_error6python9PyErrWrapECshquuC4dCYVj_10polars_sql.exit, !dbg !2595

bb.q:                                             ; preds = %bb.a
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !2589 ; 2 uses
  %i.af = load i64, ptr %i.ae, align 8, !dbg !2615, !range !283, !alias.scope !2566, !noundef !261
  %i.ag = icmp eq i64 %i.af, -9223372036854775808, !dbg !2615
  br i1 %i.ag, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsgjwxzEoLG5s_12polars_error6python9PyErrWrapECshquuC4dCYVj_10polars_sql.exit, label %bb.r, !dbg !2615

bb.r:                                             ; preds = %bb.q
  tail call fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VechEECshquuC4dCYVj_10polars_sql(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ae), !dbg !2616
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsgjwxzEoLG5s_12polars_error6python9PyErrWrapECshquuC4dCYVj_10polars_sql.exit, !dbg !2615

bb.s:                                             ; preds = %bb.a
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !2589 ; 2 uses
  %i.ai = load i64, ptr %i.ah, align 8, !dbg !2617, !range !283, !alias.scope !2567, !noundef !261
  %i.aj = icmp eq i64 %i.ai, -9223372036854775808, !dbg !2617
  br i1 %i.aj, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsgjwxzEoLG5s_12polars_error6python9PyErrWrapECshquuC4dCYVj_10polars_sql.exit, label %bb.t, !dbg !2617

bb.t:                                             ; preds = %bb.s
  tail call fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VechEECshquuC4dCYVj_10polars_sql(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ah), !dbg !2618
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsgjwxzEoLG5s_12polars_error6python9PyErrWrapECshquuC4dCYVj_10polars_sql.exit, !dbg !2617

bb.u:                                             ; preds = %bb.a
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !2589 ; 2 uses
  %i.al = load i64, ptr %i.ak, align 8, !dbg !2619, !range !283, !alias.scope !2568, !noundef !261
  %i.am = icmp eq i64 %i.al, -9223372036854775808, !dbg !2619
  br i1 %i.am, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsgjwxzEoLG5s_12polars_error6python9PyErrWrapECshquuC4dCYVj_10polars_sql.exit, label %bb.v, !dbg !2619

bb.v:                                             ; preds = %bb.u
  tail call fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VechEECshquuC4dCYVj_10polars_sql(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ak), !dbg !2620
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsgjwxzEoLG5s_12polars_error6python9PyErrWrapECshquuC4dCYVj_10polars_sql.exit, !dbg !2619

bb.w:                                             ; preds = %bb.a
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !2589 ; 2 uses
  %i.ao = load i64, ptr %i.an, align 8, !dbg !2621, !range !283, !alias.scope !2569, !noundef !261
  %i.ap = icmp eq i64 %i.ao, -9223372036854775808, !dbg !2621
  br i1 %i.ap, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsgjwxzEoLG5s_12polars_error6python9PyErrWrapECshquuC4dCYVj_10polars_sql.exit, label %bb.x, !dbg !2621

bb.x:                                             ; preds = %bb.w
  tail call fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VechEECshquuC4dCYVj_10polars_sql(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.an), !dbg !2622
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsgjwxzEoLG5s_12polars_error6python9PyErrWrapECshquuC4dCYVj_10polars_sql.exit, !dbg !2621

bb.y:                                             ; preds = %bb.a
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !2589 ; 2 uses
  %i.ar = load i64, ptr %i.aq, align 8, !dbg !2623, !range !283, !alias.scope !2570, !noundef !261
  %i.as = icmp eq i64 %i.ar, -9223372036854775808, !dbg !2623
  br i1 %i.as, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsgjwxzEoLG5s_12polars_error6python9PyErrWrapECshquuC4dCYVj_10polars_sql.exit, label %bb.z, !dbg !2623

bb.z:                                             ; preds = %bb.y
  tail call fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VechEECshquuC4dCYVj_10polars_sql(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.aq), !dbg !2624
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsgjwxzEoLG5s_12polars_error6python9PyErrWrapECshquuC4dCYVj_10polars_sql.exit, !dbg !2623

bb.aa:                                            ; preds = %bb.a
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !2589 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2571), !dbg !2589
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2572), !dbg !2625
  %i.au = load ptr, ptr %i.at, align 8, !dbg !2626, !alias.scope !2573, !nonnull !261, !noundef !261
  %i.av = atomicrmw sub ptr %i.au, i64 1 release, align 8, !dbg !2627, !noalias !2573
  %i.aw = icmp eq i64 %i.av, 1, !dbg !2628
  br i1 %i.aw, label %bb.ab, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorEECshquuC4dCYVj_10polars_sql.exit, !dbg !2628

bb.ab:                                            ; preds = %bb.aa
  fence acquire, !dbg !2629
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorE9drop_slowCsacIJNrSLJky_9quick_xml(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.at) #38
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorEECshquuC4dCYVj_10polars_sql.exit unwind label %bb.aw, !dbg !2630

bb.ac:                                            ; preds = %bb.a
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !2589 ; 2 uses
  %i.ay = load i64, ptr %i.ax, align 8, !dbg !2631, !range !283, !alias.scope !2574, !noundef !261
  %i.az = icmp eq i64 %i.ay, -9223372036854775808, !dbg !2631
  br i1 %i.az, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsgjwxzEoLG5s_12polars_error6python9PyErrWrapECshquuC4dCYVj_10polars_sql.exit, label %bb.ad, !dbg !2631

bb.ad:                                            ; preds = %bb.ac
  tail call fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VechEECshquuC4dCYVj_10polars_sql(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ax), !dbg !2632
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsgjwxzEoLG5s_12polars_error6python9PyErrWrapECshquuC4dCYVj_10polars_sql.exit, !dbg !2631

bb.ae:                                            ; preds = %bb.a
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !2589 ; 2 uses
  %i.bb = load i64, ptr %i.ba, align 8, !dbg !2633, !range !283, !alias.scope !2575, !noundef !261
  %i.bc = icmp eq i64 %i.bb, -9223372036854775808, !dbg !2633
  br i1 %i.bc, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsgjwxzEoLG5s_12polars_error6python9PyErrWrapECshquuC4dCYVj_10polars_sql.exit, label %bb.af, !dbg !2633

bb.af:                                            ; preds = %bb.ae
  tail call fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VechEECshquuC4dCYVj_10polars_sql(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ba), !dbg !2634
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsgjwxzEoLG5s_12polars_error6python9PyErrWrapECshquuC4dCYVj_10polars_sql.exit, !dbg !2633

bb.ag:                                            ; preds = %bb.a
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !2589 ; 2 uses
  %i.be = load i64, ptr %i.bd, align 8, !dbg !2635, !range !283, !alias.scope !2576, !noundef !261
  %i.bf = icmp eq i64 %i.be, -9223372036854775808, !dbg !2635
  br i1 %i.bf, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsgjwxzEoLG5s_12polars_error6python9PyErrWrapECshquuC4dCYVj_10polars_sql.exit, label %bb.ah, !dbg !2635

bb.ah:                                            ; preds = %bb.ag
  tail call fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VechEECshquuC4dCYVj_10polars_sql(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bd), !dbg !2636
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsgjwxzEoLG5s_12polars_error6python9PyErrWrapECshquuC4dCYVj_10polars_sql.exit, !dbg !2635

bb.ai:                                            ; preds = %bb.a
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !2589 ; 2 uses
  %i.bh = load i64, ptr %i.bg, align 8, !dbg !2637, !range !283, !alias.scope !2577, !noundef !261
  %i.bi = icmp eq i64 %i.bh, -9223372036854775808, !dbg !2637
  br i1 %i.bi, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsgjwxzEoLG5s_12polars_error6python9PyErrWrapECshquuC4dCYVj_10polars_sql.exit, label %bb.aj, !dbg !2637

bb.aj:                                            ; preds = %bb.ai
  tail call fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VechEECshquuC4dCYVj_10polars_sql(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bg), !dbg !2638
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsgjwxzEoLG5s_12polars_error6python9PyErrWrapECshquuC4dCYVj_10polars_sql.exit, !dbg !2637

bb.ak:                                            ; preds = %bb.a
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !2589 ; 2 uses
  %i.bk = load i64, ptr %i.bj, align 8, !dbg !2639, !range !283, !alias.scope !2578, !noundef !261
  %i.bl = icmp eq i64 %i.bk, -9223372036854775808, !dbg !2639
  br i1 %i.bl, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsgjwxzEoLG5s_12polars_error6python9PyErrWrapECshquuC4dCYVj_10polars_sql.exit, label %bb.al, !dbg !2639

bb.al:                                            ; preds = %bb.ak
  tail call fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VechEECshquuC4dCYVj_10polars_sql(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bj), !dbg !2640
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsgjwxzEoLG5s_12polars_error6python9PyErrWrapECshquuC4dCYVj_10polars_sql.exit, !dbg !2639

bb.am:                                            ; preds = %bb.a
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !2589 ; 2 uses
  %i.bn = load i64, ptr %i.bm, align 8, !dbg !2641, !range !283, !alias.scope !2579, !noundef !261
  %i.bo = icmp eq i64 %i.bn, -9223372036854775808, !dbg !2641
  br i1 %i.bo, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsgjwxzEoLG5s_12polars_error6python9PyErrWrapECshquuC4dCYVj_10polars_sql.exit, label %bb.an, !dbg !2641

bb.an:                                            ; preds = %bb.am
  tail call fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VechEECshquuC4dCYVj_10polars_sql(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bm), !dbg !2642
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsgjwxzEoLG5s_12polars_error6python9PyErrWrapECshquuC4dCYVj_10polars_sql.exit, !dbg !2641

bb.ao:                                            ; preds = %bb.a
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !2589 ; 2 uses
end_hunk_0
begin_hunk_1_@_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeECshquuC4dCYVj_10polars_sql:bb.a
          to label %bb.t unwind label %bb.s, !dbg !2768

bb.l:                                             ; preds = %bb.g
  %i.r = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !2768 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2756), !dbg !2768
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2757), !dbg !2783
  %i.t = load ptr, ptr %i.s, align 16, !dbg !2784, !alias.scope !2758, !nonnull !261, !noundef !261
  %i.u = atomicrmw sub ptr %i.t, i64 1 release, align 8, !dbg !2785, !noalias !2758
  %i.v = icmp eq i64 %i.u, 1, !dbg !2786
  br i1 %i.v, label %bb.m, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtCs80wj1cxFixi_12polars_dtype11categorical7mapping18CategoricalMappingEECshquuC4dCYVj_10polars_sql.exit, !dbg !2786

bb.m:                                             ; preds = %bb.l
  fence acquire, !dbg !2787
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtCs80wj1cxFixi_12polars_dtype11categorical7mapping18CategoricalMappingE9drop_slowBM_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.s) #38
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtCs80wj1cxFixi_12polars_dtype11categorical7mapping18CategoricalMappingEECshquuC4dCYVj_10polars_sql.exit unwind label %bb.o, !dbg !2788

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtCs80wj1cxFixi_12polars_dtype11categorical10CategoriesEECshquuC4dCYVj_10polars_sql.exit: ; preds = %bb.f, %bb.g
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !2768 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2759), !dbg !2768
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2760), !dbg !2789
  %i.x = load ptr, ptr %i.w, align 16, !dbg !2790, !alias.scope !2761, !nonnull !261, !noundef !261
  %i.y = atomicrmw sub ptr %i.x, i64 1 release, align 8, !dbg !2791, !noalias !2761
  %i.z = icmp eq i64 %i.y, 1, !dbg !2792
  br i1 %i.z, label %bb.n, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes8temporal9time_zone8TimeZoneEECshquuC4dCYVj_10polars_sql.exit, !dbg !2792

bb.n:                                             ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtCs80wj1cxFixi_12polars_dtype11categorical10CategoriesEECshquuC4dCYVj_10polars_sql.exit
  fence acquire, !dbg !2793
  tail call void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtCs80wj1cxFixi_12polars_dtype11categorical7mapping18CategoricalMappingE9drop_slowBM_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.w) #38, !dbg !2794
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes8temporal9time_zone8TimeZoneEECshquuC4dCYVj_10polars_sql.exit, !dbg !2794

bb.o:                                             ; preds = %bb.q, %bb.m, %bb.s
  %i.aa = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #36, !dbg !2768
  unreachable, !dbg !2768

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtCs80wj1cxFixi_12polars_dtype11categorical7mapping18CategoricalMappingEECshquuC4dCYVj_10polars_sql.exit: ; preds = %bb.p, %bb.q, %bb.l, %bb.m, %bb.s
  %.pn = phi { ptr, i32 } [ %i.ak, %bb.s ], [ %i.r, %bb.l ], [ %i.r, %bb.m ], [ %i.ab, %bb.q ], [ %i.ab, %bb.p ]
  resume { ptr, i32 } %.pn, !dbg !2768

bb.p:                                             ; preds = %bb.i
  %i.ab = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !2768 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2762), !dbg !2768
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2763), !dbg !2795
  %i.ad = load ptr, ptr %i.ac, align 16, !dbg !2796, !alias.scope !2764, !nonnull !261, !noundef !261
  %i.ae = atomicrmw sub ptr %i.ad, i64 1 release, align 8, !dbg !2797, !noalias !2764
  %i.af = icmp eq i64 %i.ae, 1, !dbg !2798
  br i1 %i.af, label %bb.q, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtCs80wj1cxFixi_12polars_dtype11categorical7mapping18CategoricalMappingEECshquuC4dCYVj_10polars_sql.exit, !dbg !2798

bb.q:                                             ; preds = %bb.p
  fence acquire, !dbg !2799
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtCs80wj1cxFixi_12polars_dtype11categorical7mapping18CategoricalMappingE9drop_slowBM_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.ac) #38
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtCs80wj1cxFixi_12polars_dtype11categorical7mapping18CategoricalMappingEECshquuC4dCYVj_10polars_sql.exit unwind label %bb.o, !dbg !2800

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtCs80wj1cxFixi_12polars_dtype11categorical16FrozenCategoriesEECshquuC4dCYVj_10polars_sql.exit: ; preds = %bb.h, %bb.i
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !2768 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2765), !dbg !2768
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2766), !dbg !2801
  %i.ah = load ptr, ptr %i.ag, align 16, !dbg !2802, !alias.scope !2767, !nonnull !261, !noundef !261
  %i.ai = atomicrmw sub ptr %i.ah, i64 1 release, align 8, !dbg !2803, !noalias !2767
  %i.aj = icmp eq i64 %i.ai, 1, !dbg !2804
  br i1 %i.aj, label %bb.r, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes8temporal9time_zone8TimeZoneEECshquuC4dCYVj_10polars_sql.exit, !dbg !2804

bb.r:                                             ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtCs80wj1cxFixi_12polars_dtype11categorical16FrozenCategoriesEECshquuC4dCYVj_10polars_sql.exit
  fence acquire, !dbg !2805
  tail call void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtCs80wj1cxFixi_12polars_dtype11categorical7mapping18CategoricalMappingE9drop_slowBM_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.ag) #38, !dbg !2806
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes8temporal9time_zone8TimeZoneEECshquuC4dCYVj_10polars_sql.exit, !dbg !2806

bb.s:                                             ; preds = %bb.k
  %i.ak = landingpad { ptr, i32 }
          cleanup
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !2768
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeEECshquuC4dCYVj_10polars_sql(ptr noalias noundef align 8 dereferenceable(8) %i.al) #37
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtCs80wj1cxFixi_12polars_dtype11categorical7mapping18CategoricalMappingEECshquuC4dCYVj_10polars_sql.exit unwind label %bb.o, !dbg !2768

bb.t:                                             ; preds = %bb.k
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !2768
  tail call fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeEECshquuC4dCYVj_10polars_sql(ptr noalias noundef align 8 dereferenceable(8) %i.am), !dbg !2768
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes8temporal9time_zone8TimeZoneEECshquuC4dCYVj_10polars_sql.exit, !dbg !2768
}

; Function Attrs: nonlazybind optsize uwtable
define internal fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9any_value8AnyValueECshquuC4dCYVj_10polars_sql(ptr noalias noundef nonnull align 16 dereferenceable(48) %0) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !2807 {
bb.a:
  %i.a = load i8, ptr %0, align 16, !dbg !2952, !range !401, !noundef !261
  switch i8 %i.a, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes8temporal9time_zone8TimeZoneEEECshquuC4dCYVj_10polars_sql.exit [
    i8 18, label %bb.b
    i8 22, label %bb.e
    i8 24, label %bb.g
    i8 25, label %bb.i
    i8 26, label %bb.k
    i8 28, label %bb.m
    i8 30, label %bb.s
    i8 31, label %bb.y
    i8 33, label %bb.aa
  ], !dbg !2952

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes8temporal9time_zone8TimeZoneEEECshquuC4dCYVj_10polars_sql.exit: ; preds = %bb.z, %bb.y, %bb.p, %bb.o, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b, %bb.aa, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxTINtNtBL_3vec3VecNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9any_value8AnyValueEIB1h_NtNtB1A_5field5FieldEEEECshquuC4dCYVj_10polars_sql.exit, %bb.a
  ret void, !dbg !2952

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !2952 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2935), !dbg !2952
  %i.c = load ptr, ptr %i.b, align 16, !dbg !2953, !alias.scope !2935, !noundef !261 ; 2 uses
  %i.d = icmp eq ptr %i.c, null, !dbg !2953
  br i1 %i.d, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes8temporal9time_zone8TimeZoneEEECshquuC4dCYVj_10polars_sql.exit, label %bb.c, !dbg !2953

bb.c:                                             ; preds = %bb.b
  %i.e = atomicrmw sub ptr %i.c, i64 1 release, align 8, !dbg !2954, !noalias !2936
  %i.f = icmp eq i64 %i.e, 1, !dbg !2955
  br i1 %i.f, label %bb.d, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes8temporal9time_zone8TimeZoneEEECshquuC4dCYVj_10polars_sql.exit, !dbg !2955

bb.d:                                             ; preds = %bb.c
  fence acquire, !dbg !2956
  tail call void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes8temporal9time_zone8TimeZoneE9drop_slowBO_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.b) #38, !dbg !2957
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes8temporal9time_zone8TimeZoneEEECshquuC4dCYVj_10polars_sql.exit, !dbg !2957

bb.e:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !2952 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2937), !dbg !2952
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2938), !dbg !2958
  %i.h = load ptr, ptr %i.g, align 8, !dbg !2959, !alias.scope !2939, !nonnull !261, !noundef !261
  %i.i = atomicrmw sub ptr %i.h, i64 1 release, align 8, !dbg !2960, !noalias !2939
  %i.j = icmp eq i64 %i.i, 1, !dbg !2961
  br i1 %i.j, label %bb.f, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes8temporal9time_zone8TimeZoneEEECshquuC4dCYVj_10polars_sql.exit, !dbg !2961

bb.f:                                             ; preds = %bb.e
  fence acquire, !dbg !2962
  tail call void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtCs80wj1cxFixi_12polars_dtype11categorical7mapping18CategoricalMappingE9drop_slowBM_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.g) #38, !dbg !2963
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes8temporal9time_zone8TimeZoneEEECshquuC4dCYVj_10polars_sql.exit, !dbg !2963

bb.g:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !2952 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2940), !dbg !2952
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2941), !dbg !2964
  %i.l = load ptr, ptr %i.k, align 8, !dbg !2965, !alias.scope !2942, !nonnull !261, !noundef !261
  %i.m = atomicrmw sub ptr %i.l, i64 1 release, align 8, !dbg !2966, !noalias !2942
  %i.n = icmp eq i64 %i.m, 1, !dbg !2967
  br i1 %i.n, label %bb.h, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes8temporal9time_zone8TimeZoneEEECshquuC4dCYVj_10polars_sql.exit, !dbg !2967

bb.h:                                             ; preds = %bb.g
  fence acquire, !dbg !2968
  tail call void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtCs80wj1cxFixi_12polars_dtype11categorical7mapping18CategoricalMappingE9drop_slowBM_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.k) #38, !dbg !2969
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes8temporal9time_zone8TimeZoneEEECshquuC4dCYVj_10polars_sql.exit, !dbg !2969

bb.i:                                             ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !2952 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2943), !dbg !2952
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2944), !dbg !2970
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2945), !dbg !2971
  %i.p = load ptr, ptr %i.o, align 8, !dbg !2972, !alias.scope !2946, !nonnull !261, !noundef !261
  %i.q = atomicrmw sub ptr %i.p, i64 1 release, align 8, !dbg !2973, !noalias !2946
  %i.r = icmp eq i64 %i.q, 1, !dbg !2974
  br i1 %i.r, label %bb.j, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes8temporal9time_zone8TimeZoneEEECshquuC4dCYVj_10polars_sql.exit, !dbg !2974

bb.j:                                             ; preds = %bb.i
  fence acquire, !dbg !2975
  tail call void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcDNtNtNtCs1LHh8CLbVkQ_11polars_core6series12series_trait11SeriesTraitEL_E9drop_slowBN_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.o) #38, !dbg !2976
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes8temporal9time_zone8TimeZoneEEECshquuC4dCYVj_10polars_sql.exit, !dbg !2976

bb.k:                                             ; preds = %bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !2952 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2947), !dbg !2952
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2948), !dbg !2977
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2949), !dbg !2978
  %i.t = load ptr, ptr %i.s, align 16, !dbg !2979, !alias.scope !2950, !nonnull !261, !noundef !261
  %i.u = atomicrmw sub ptr %i.t, i64 1 release, align 8, !dbg !2980, !noalias !2950
  %i.v = icmp eq i64 %i.u, 1, !dbg !2981
  br i1 %i.v, label %bb.l, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes8temporal9time_zone8TimeZoneEEECshquuC4dCYVj_10polars_sql.exit, !dbg !2981

bb.l:                                             ; preds = %bb.k
  fence acquire, !dbg !2982
  tail call void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcDNtNtNtCs1LHh8CLbVkQ_11polars_core6series12series_trait11SeriesTraitEL_E9drop_slowBN_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.s) #38, !dbg !2983
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes8temporal9time_zone8TimeZoneEEECshquuC4dCYVj_10polars_sql.exit, !dbg !2983

bb.m:                                             ; preds = %bb.a
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !2952
  %.val = load ptr, ptr %i.w, align 8, !dbg !2952 ; 5 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !2952
  %.val1 = load ptr, ptr %i.x, align 16, !dbg !2952, !nonnull !261, !align !388, !noundef !261 ; 5 uses
  %i.y = load ptr, ptr %.val1, align 8, !dbg !2984, !invariant.load !261 ; 2 uses
  %.not.i.i = icmp eq ptr %i.y, null, !dbg !2984
  br i1 %.not.i.i, label %bb.o, label %bb.n, !dbg !2984

bb.n:                                             ; preds = %bb.m
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  invoke void %i.y(ptr noundef nonnull %.val)
          to label %bb.o unwind label %bb.q, !dbg !2984

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.z = getelementptr inbounds nuw i8, ptr %.val1, i64 8, !dbg !2985
  %i.aa = load i64, ptr %i.z, align 8, !dbg !2985, !range !393, !invariant.load !261 ; 2 uses
  %i.ab = icmp eq i64 %i.aa, 0, !dbg !2986
  br i1 %i.ab, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes8temporal9time_zone8TimeZoneEEECshquuC4dCYVj_10polars_sql.exit, label %bb.p, !dbg !2986

bb.p:                                             ; preds = %bb.o
  %i.ac = getelementptr inbounds nuw i8, ptr %.val1, i64 16, !dbg !2985
  %i.ad = load i64, ptr %i.ac, align 8, !dbg !2987, !range !394, !invariant.load !261
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  tail call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef range(i64 1, -9223372036854775808) %i.aa, i64 noundef range(i64 1, 536870913) %i.ad) #34, !dbg !2988
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes8temporal9time_zone8TimeZoneEEECshquuC4dCYVj_10polars_sql.exit, !dbg !2989

bb.q:                                             ; preds = %bb.n
  %i.ae = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.val1, i64 8, !dbg !2990
  %i.ag = load i64, ptr %i.af, align 8, !dbg !2990, !range !393, !invariant.load !261 ; 2 uses
  %i.ah = icmp eq i64 %i.ag, 0, !dbg !2991
  br i1 %i.ah, label %common.resume, label %bb.r, !dbg !2991

bb.r:                                             ; preds = %bb.q
  %i.ai = getelementptr inbounds nuw i8, ptr %.val1, i64 16, !dbg !2990
  %i.aj = load i64, ptr %i.ai, align 8, !dbg !2992, !range !394, !invariant.load !261
  tail call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef range(i64 1, -9223372036854775808) %i.ag, i64 noundef range(i64 1, 536870913) %i.aj) #34, !dbg !2993
  br label %common.resume, !dbg !2994

common.resume:                                    ; preds = %bb.q, %bb.r, %bb.x
  %common.resume.op = phi { ptr, i32 } [ %eh.lpad-body.i, %bb.x ], [ %i.ae, %bb.r ], [ %i.ae, %bb.q ]
  resume { ptr, i32 } %common.resume.op, !dbg !2952

bb.s:                                             ; preds = %bb.a
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !2952
  %.val2 = load ptr, ptr %i.ak, align 8, !dbg !2952, !nonnull !261, !noundef !261 ; 5 uses
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9any_value8AnyValueEECshquuC4dCYVj_10polars_sql(ptr noalias noundef nonnull align 8 dereferenceable(48) %.val2)
          to label %bb.u unwind label %bb.t, !dbg !2995

bb.t:                                             ; preds = %bb.s
  %i.al = landingpad { ptr, i32 }
          cleanup
  %i.am = getelementptr inbounds nuw i8, ptr %.val2, i64 24, !dbg !2995
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5field5FieldEECshquuC4dCYVj_10polars_sql(ptr noalias noundef align 8 dereferenceable(24) %i.am) #37
          to label %bb.x unwind label %bb.v, !dbg !2995

bb.u:                                             ; preds = %bb.s
  %i.an = getelementptr inbounds nuw i8, ptr %.val2, i64 24, !dbg !2995
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5field5FieldEECshquuC4dCYVj_10polars_sql(ptr noalias noundef align 8 dereferenceable(24) %i.an)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxTINtNtBL_3vec3VecNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9any_value8AnyValueEIB1h_NtNtB1A_5field5FieldEEEECshquuC4dCYVj_10polars_sql.exit unwind label %bb.w, !dbg !2995

bb.v:                                             ; preds = %bb.t
  %i.ao = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #36, !dbg !2995
  unreachable, !dbg !2995

bb.w:                                             ; preds = %bb.u
  %i.ap = landingpad { ptr, i32 }
          cleanup
  br label %bb.x, !dbg !2996

bb.x:                                             ; preds = %bb.w, %bb.t
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.ap, %bb.w ], [ %i.al, %bb.t ]
  tail call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %.val2, i64 noundef 48, i64 noundef 8) #34, !dbg !2997
  br label %common.resume, !dbg !2996

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxTINtNtBL_3vec3VecNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9any_value8AnyValueEIB1h_NtNtB1A_5field5FieldEEEECshquuC4dCYVj_10polars_sql.exit: ; preds = %bb.u
  tail call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %.val2, i64 noundef 48, i64 noundef 8) #34, !dbg !2998
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes8temporal9time_zone8TimeZoneEEECshquuC4dCYVj_10polars_sql.exit, !dbg !2952

bb.y:                                             ; preds = %bb.a
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 31, !dbg !2999
  %i.ar = load i8, ptr %i.aq, align 1, !dbg !2999, !range !320, !alias.scope !2951, !noundef !261
  %i.as = icmp eq i8 %i.ar, -40, !dbg !3000
  br i1 %i.as, label %bb.z, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes8temporal9time_zone8TimeZoneEEECshquuC4dCYVj_10polars_sql.exit, !dbg !3000, !prof !280

bb.z:                                             ; preds = %bb.y
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !2952
  tail call void @_RNvNvXs2_NtCs7VARH73bmU_11compact_str4reprNtB7_4ReprNtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4drop13outlined_drop(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.at), !dbg !3001
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes8temporal9time_zone8TimeZoneEEECshquuC4dCYVj_10polars_sql.exit, !dbg !3001

bb.aa:                                            ; preds = %bb.a
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !2952
  tail call fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VechEECshquuC4dCYVj_10polars_sql(ptr noalias noundef align 8 dereferenceable(24) %i.au), !dbg !2952
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes8temporal9time_zone8TimeZoneEEECshquuC4dCYVj_10polars_sql.exit, !dbg !2952
}

; Function Attrs: nonlazybind optsize uwtable
define internal fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9extension21ExtensionTypeInstanceECshquuC4dCYVj_10polars_sql(ptr %.0.val, ptr nofree readonly captures(none) %.8.val) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !3002 {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  %i.a = load ptr, ptr %.8.val, align 8, !dbg !3030, !invariant.load !261 ; 2 uses
  %.not.i = icmp eq ptr %i.a, null, !dbg !3030
  br i1 %.not.i, label %bb.c, label %bb.b, !dbg !3030

bb.b:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  invoke void %i.a(ptr noundef nonnull %.0.val)
          to label %bb.c unwind label %bb.e, !dbg !3030

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %.8.val, i64 8, !dbg !3031
  %i.c = load i64, ptr %i.b, align 8, !dbg !3031, !range !393, !invariant.load !261 ; 2 uses
  %i.d = icmp eq i64 %i.c, 0, !dbg !3032
  br i1 %i.d, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9extension17ExtensionTypeImplEL_EECshquuC4dCYVj_10polars_sql.exit, label %bb.d, !dbg !3032

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %.8.val, i64 16, !dbg !3031
  %i.f = load i64, ptr %i.e, align 8, !dbg !3033, !range !394, !invariant.load !261
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  tail call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef range(i64 1, -9223372036854775808) %i.c, i64 noundef range(i64 1, 536870913) %i.f) #34, !dbg !3034
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9extension17ExtensionTypeImplEL_EECshquuC4dCYVj_10polars_sql.exit, !dbg !3035

bb.e:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          cleanup
  %i.h = getelementptr inbounds nuw i8, ptr %.8.val, i64 8, !dbg !3036
  %i.i = load i64, ptr %i.h, align 8, !dbg !3036, !range !393, !invariant.load !261 ; 2 uses
  %i.j = icmp eq i64 %i.i, 0, !dbg !3037
  br i1 %i.j, label %_RNvXs8_NtCsgZ49sUHp3tW_5alloc5boxedINtB5_3BoxDNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9extension17ExtensionTypeImplEL_ENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCshquuC4dCYVj_10polars_sql.exit4.i, label %bb.f, !dbg !3037

bb.f:                                             ; preds = %bb.e
  %i.k = getelementptr inbounds nuw i8, ptr %.8.val, i64 16, !dbg !3036
  %i.l = load i64, ptr %i.k, align 8, !dbg !3038, !range !394, !invariant.load !261
  tail call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef range(i64 1, -9223372036854775808) %i.i, i64 noundef range(i64 1, 536870913) %i.l) #34, !dbg !3039
  br label %_RNvXs8_NtCsgZ49sUHp3tW_5alloc5boxedINtB5_3BoxDNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9extension17ExtensionTypeImplEL_ENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCshquuC4dCYVj_10polars_sql.exit4.i, !dbg !3040

_RNvXs8_NtCsgZ49sUHp3tW_5alloc5boxedINtB5_3BoxDNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9extension17ExtensionTypeImplEL_ENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCshquuC4dCYVj_10polars_sql.exit4.i: ; preds = %bb.f, %bb.e
  resume { ptr, i32 } %i.g, !dbg !3030

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9extension17ExtensionTypeImplEL_EECshquuC4dCYVj_10polars_sql.exit: ; preds = %bb.c, %bb.d
  ret void, !dbg !3041
}

; Function Attrs: nonlazybind optsize uwtable
define internal fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl13datatype_expr12DataTypeExprECshquuC4dCYVj_10polars_sql(ptr noalias noundef nonnull align 16 dereferenceable(48) %0) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !3042 {
bb.a:
  %i.a = load i8, ptr %0, align 16, !dbg !3079, !range !402, !noundef !261 ; 2 uses
  %i.b = icmp samesign ugt i8 %i.a, 30, !dbg !3079
  %i.c = zext nneg i8 %i.a to i64, !dbg !3079
  %i.d = add nsw i64 %i.c, -30, !dbg !3079
  %i.e = select i1 %i.b, i64 %i.d, i64 0, !dbg !3079
  switch i64 %i.e, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl13datatype_expr18StructDataTypeExprECshquuC4dCYVj_10polars_sql.exit2 [
    i64 0, label %bb.b
    i64 1, label %bb.c
    i64 2, label %bb.e
    i64 3, label %bb.f
    i64 4, label %bb.g
    i64 5, label %bb.h
    i64 6, label %bb.i
    i64 7, label %bb.j
  ], !dbg !3079

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl13datatype_expr18StructDataTypeExprECshquuC4dCYVj_10polars_sql.exit2: ; preds = %bb.n, %bb.m, %bb.j, %bb.i, %bb.h, %bb.f, %bb.e, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprEECshquuC4dCYVj_10polars_sql.exit, %bb.b, %bb.a
  ret void, !dbg !3079

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeECshquuC4dCYVj_10polars_sql(ptr noalias noundef align 16 dereferenceable(48) %0), !dbg !3079
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl13datatype_expr18StructDataTypeExprECshquuC4dCYVj_10polars_sql.exit2, !dbg !3079

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !3079
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3076), !dbg !3079
  %i.g = load ptr, ptr %i.f, align 8, !dbg !3080, !alias.scope !3076, !nonnull !261, !noundef !261 ; 3 uses
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprECshquuC4dCYVj_10polars_sql(ptr noalias noundef align 16 dereferenceable(144) %i.g)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprEECshquuC4dCYVj_10polars_sql.exit unwind label %bb.d, !dbg !3080, !noalias !3076, !inline_history !3047

common.resume:                                    ; preds = %bb.l, %bb.k, %bb.d
  %common.resume.op = phi { ptr, i32 } [ %i.h, %bb.d ], [ %i.o, %bb.k ], [ %i.o, %bb.l ]
  resume { ptr, i32 } %common.resume.op, !dbg !3079

bb.d:                                             ; preds = %bb.c
  %i.h = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %i.g, i64 noundef 144, i64 noundef 16) #34, !dbg !3081, !noalias !3076
  br label %common.resume, !dbg !3080

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprEECshquuC4dCYVj_10polars_sql.exit: ; preds = %bb.c
  tail call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %i.g, i64 noundef 144, i64 noundef 16) #34, !dbg !3082, !noalias !3076
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl13datatype_expr18StructDataTypeExprECshquuC4dCYVj_10polars_sql.exit2, !dbg !3079

bb.e:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !3079
  tail call fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl13datatype_expr12DataTypeExprEECshquuC4dCYVj_10polars_sql(ptr noalias noundef align 8 dereferenceable(8) %i.i), !dbg !3079
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl13datatype_expr18StructDataTypeExprECshquuC4dCYVj_10polars_sql.exit2, !dbg !3079

bb.f:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !3079
  tail call fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl13datatype_expr12DataTypeExprEECshquuC4dCYVj_10polars_sql(ptr noalias noundef align 8 dereferenceable(8) %i.j), !dbg !3079
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl13datatype_expr18StructDataTypeExprECshquuC4dCYVj_10polars_sql.exit2, !dbg !3079

bb.g:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !3079
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl13datatype_expr12DataTypeExprEECshquuC4dCYVj_10polars_sql(ptr noalias noundef align 8 dereferenceable(8) %i.k)
          to label %bb.m unwind label %bb.k, !dbg !3079

bb.h:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !3079
  tail call fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl13datatype_expr12DataTypeExprEECshquuC4dCYVj_10polars_sql(ptr noalias noundef align 8 dereferenceable(8) %i.l), !dbg !3079
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl13datatype_expr18StructDataTypeExprECshquuC4dCYVj_10polars_sql.exit2, !dbg !3079

bb.i:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !3079
  tail call fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl13datatype_expr12DataTypeExprEECshquuC4dCYVj_10polars_sql(ptr noalias noundef align 8 dereferenceable(8) %i.m), !dbg !3079
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl13datatype_expr18StructDataTypeExprECshquuC4dCYVj_10polars_sql.exit2, !dbg !3079

bb.j:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !3079
  tail call fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecTNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl13datatype_expr12DataTypeExprEEECshquuC4dCYVj_10polars_sql(ptr noalias noundef align 8 dereferenceable(24) %i.n), !dbg !3079
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl13datatype_expr18StructDataTypeExprECshquuC4dCYVj_10polars_sql.exit2, !dbg !3079

bb.k:                                             ; preds = %bb.g
  %i.o = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 39, !dbg !3083
  %i.q = load i8, ptr %i.p, align 1, !dbg !3083, !range !399, !alias.scope !3077, !noundef !261
  %cond.i = icmp eq i8 %i.q, -40, !dbg !3083
  br i1 %cond.i, label %bb.l, label %common.resume, !dbg !3083, !prof !400

bb.l:                                             ; preds = %bb.k
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !3079
  invoke void @_RNvNvXs2_NtCs7VARH73bmU_11compact_str4reprNtB7_4ReprNtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4drop13outlined_drop(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.r)
          to label %common.resume unwind label %bb.o, !dbg !3084

bb.m:                                             ; preds = %bb.g
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 39, !dbg !3085
  %i.t = load i8, ptr %i.s, align 1, !dbg !3085, !range !399, !alias.scope !3078, !noundef !261
  %cond.i1 = icmp eq i8 %i.t, -40, !dbg !3085
  br i1 %cond.i1, label %bb.n, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl13datatype_expr18StructDataTypeExprECshquuC4dCYVj_10polars_sql.exit2, !dbg !3085, !prof !400

bb.n:                                             ; preds = %bb.m
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !3079
  tail call void @_RNvNvXs2_NtCs7VARH73bmU_11compact_str4reprNtB7_4ReprNtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4drop13outlined_drop(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.u), !dbg !3086
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl13datatype_expr18StructDataTypeExprECshquuC4dCYVj_10polars_sql.exit2, !dbg !3086

bb.o:                                             ; preds = %bb.l
  %i.v = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #36, !dbg !3079
  unreachable, !dbg !3079
}

; Function Attrs: nonlazybind optsize uwtable
define internal fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl13function_expr12FunctionExprECshquuC4dCYVj_10polars_sql(ptr noalias noundef nonnull align 16 dereferenceable(112) %0) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !3087 {
bb.a:
  %i.a = load i8, ptr %0, align 16, !dbg !3271, !range !403, !noundef !261
  switch i8 %i.a, label %bb.b [
    i8 0, label %bb.c
    i8 1, label %bb.d
    i8 2, label %bb.f
    i8 3, label %bb.g
    i8 4, label %bb.i
    i8 5, label %bb.l
    i8 6, label %bb.m
    i8 7, label %bb.n
    i8 8, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl13function_expr6binary14BinaryFunctionECshquuC4dCYVj_10polars_sql.exit
    i8 9, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl13function_expr6binary14BinaryFunctionECshquuC4dCYVj_10polars_sql.exit
    i8 10, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl13function_expr6binary14BinaryFunctionECshquuC4dCYVj_10polars_sql.exit
    i8 11, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl13function_expr6binary14BinaryFunctionECshquuC4dCYVj_10polars_sql.exit
    i8 12, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl13function_expr6binary14BinaryFunctionECshquuC4dCYVj_10polars_sql.exit
    i8 13, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl13function_expr6binary14BinaryFunctionECshquuC4dCYVj_10polars_sql.exit
    i8 14, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl13function_expr6binary14BinaryFunctionECshquuC4dCYVj_10polars_sql.exit
    i8 15, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl13function_expr6binary14BinaryFunctionECshquuC4dCYVj_10polars_sql.exit
    i8 16, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl13function_expr6binary14BinaryFunctionECshquuC4dCYVj_10polars_sql.exit
    i8 17, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl13function_expr6binary14BinaryFunctionECshquuC4dCYVj_10polars_sql.exit
    i8 18, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl13function_expr6binary14BinaryFunctionECshquuC4dCYVj_10polars_sql.exit
    i8 19, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl13function_expr6binary14BinaryFunctionECshquuC4dCYVj_10polars_sql.exit
    i8 20, label %bb.o
    i8 21, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl13function_expr6binary14BinaryFunctionECshquuC4dCYVj_10polars_sql.exit
    i8 22, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl13function_expr6binary14BinaryFunctionECshquuC4dCYVj_10polars_sql.exit
    i8 23, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl13function_expr6binary14BinaryFunctionECshquuC4dCYVj_10polars_sql.exit
    i8 24, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl13function_expr6binary14BinaryFunctionECshquuC4dCYVj_10polars_sql.exit
    i8 25, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl13function_expr6binary14BinaryFunctionECshquuC4dCYVj_10polars_sql.exit
    i8 26, label %bb.p
    i8 27, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl13function_expr6binary14BinaryFunctionECshquuC4dCYVj_10polars_sql.exit
    i8 28, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl13function_expr6binary14BinaryFunctionECshquuC4dCYVj_10polars_sql.exit
    i8 29, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl13function_expr6binary14BinaryFunctionECshquuC4dCYVj_10polars_sql.exit
    i8 30, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl13function_expr6binary14BinaryFunctionECshquuC4dCYVj_10polars_sql.exit
    i8 31, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl13function_expr6binary14BinaryFunctionECshquuC4dCYVj_10polars_sql.exit
    i8 32, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl13function_expr6binary14BinaryFunctionECshquuC4dCYVj_10polars_sql.exit
    i8 33, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl13function_expr6binary14BinaryFunctionECshquuC4dCYVj_10polars_sql.exit
    i8 34, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl13function_expr6binary14BinaryFunctionECshquuC4dCYVj_10polars_sql.exit
    i8 35, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl13function_expr6binary14BinaryFunctionECshquuC4dCYVj_10polars_sql.exit
    i8 36, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl13function_expr6binary14BinaryFunctionECshquuC4dCYVj_10polars_sql.exit
    i8 37, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl13function_expr6binary14BinaryFunctionECshquuC4dCYVj_10polars_sql.exit
    i8 38, label %bb.q
    i8 39, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl13function_expr6binary14BinaryFunctionECshquuC4dCYVj_10polars_sql.exit
    i8 40, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl13function_expr6binary14BinaryFunctionECshquuC4dCYVj_10polars_sql.exit
    i8 41, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl13function_expr6binary14BinaryFunctionECshquuC4dCYVj_10polars_sql.exit
    i8 42, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl13function_expr6binary14BinaryFunctionECshquuC4dCYVj_10polars_sql.exit
    i8 43, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl13function_expr6binary14BinaryFunctionECshquuC4dCYVj_10polars_sql.exit
    i8 44, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl13function_expr6binary14BinaryFunctionECshquuC4dCYVj_10polars_sql.exit
    i8 45, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl13function_expr6binary14BinaryFunctionECshquuC4dCYVj_10polars_sql.exit
    i8 46, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl13function_expr6binary14BinaryFunctionECshquuC4dCYVj_10polars_sql.exit
    i8 47, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl13function_expr6binary14BinaryFunctionECshquuC4dCYVj_10polars_sql.exit
    i8 48, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl13function_expr6binary14BinaryFunctionECshquuC4dCYVj_10polars_sql.exit
    i8 49, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl13function_expr6binary14BinaryFunctionECshquuC4dCYVj_10polars_sql.exit
    i8 50, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl13function_expr6binary14BinaryFunctionECshquuC4dCYVj_10polars_sql.exit
    i8 51, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl13function_expr6binary14BinaryFunctionECshquuC4dCYVj_10polars_sql.exit
    i8 52, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl13function_expr6binary14BinaryFunctionECshquuC4dCYVj_10polars_sql.exit
    i8 53, label %bb.r
    i8 54, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl13function_expr6binary14BinaryFunctionECshquuC4dCYVj_10polars_sql.exit
    i8 55, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl13function_expr6binary14BinaryFunctionECshquuC4dCYVj_10polars_sql.exit
    i8 56, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl13function_expr6binary14BinaryFunctionECshquuC4dCYVj_10polars_sql.exit
    i8 57, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl13function_expr6binary14BinaryFunctionECshquuC4dCYVj_10polars_sql.exit
    i8 58, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl13function_expr6binary14BinaryFunctionECshquuC4dCYVj_10polars_sql.exit
    i8 59, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl13function_expr6binary14BinaryFunctionECshquuC4dCYVj_10polars_sql.exit
    i8 60, label %bb.s
    i8 61, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl13function_expr6binary14BinaryFunctionECshquuC4dCYVj_10polars_sql.exit
    i8 62, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl13function_expr6binary14BinaryFunctionECshquuC4dCYVj_10polars_sql.exit
end_hunk_1
begin_hunk_2_@_RNvXs5_NtNtCsfcROwRM8ZtH_11polars_plan3dsl13datatype_exprNtB5_12DataTypeExprNtNtCscgRAwXFJnXP_4core5clone5Clone5clone:bb.a

bb.e:                                             ; preds = %bb.d
  %i.r = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %i.p, i64 noundef 144, i64 noundef 16) #34, !dbg !27641, !noalias !27615
  br label %common.resume, !dbg !27642

_RNvXsd_NtCsgZ49sUHp3tW_5alloc5boxedINtB5_3BoxNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneCshquuC4dCYVj_10polars_sql.exit: ; preds = %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(144) %i.p, ptr noundef nonnull align 16 dereferenceable(144) %i.f, i64 144, i1 false), !dbg !27643, !noalias !27615
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !27644, !noalias !27615
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !27645
  store ptr %i.p, ptr %i.s, align 8, !dbg !27645
  store i8 31, ptr %0, align 16, !dbg !27645
  br label %bb.t, !dbg !27633

bb.f:                                             ; preds = %bb.a
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !27646
  tail call void @llvm.experimental.noalias.scope.decl(metadata !27616), !dbg !27647
  %i.u = tail call noundef nonnull align 16 ptr @_RNvMs_NtCsgZ49sUHp3tW_5alloc5boxedINtB4_3BoxNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl13datatype_expr12DataTypeExprE13new_uninit_inCshquuC4dCYVj_10polars_sql(), !dbg !27648, !noalias !27616, !inline_history !27514 ; 3 uses
  %i.v = load ptr, ptr %i.t, align 8, !dbg !27649, !alias.scope !27616, !nonnull !261, !noundef !261
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !27650, !noalias !27617
  invoke fastcc void @_RNvXs5_NtNtCsfcROwRM8ZtH_11polars_plan3dsl13datatype_exprNtB5_12DataTypeExprNtNtCscgRAwXFJnXP_4core5clone5Clone5clone(ptr noalias noundef align 16 captures(none) dereferenceable(48) %i.e, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(48) %i.v) #40
          to label %_RNvXsd_NtCsgZ49sUHp3tW_5alloc5boxedINtB5_3BoxNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl13datatype_expr12DataTypeExprENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneCshquuC4dCYVj_10polars_sql.exit unwind label %bb.g, !dbg !27651, !inline_history !27524

bb.g:                                             ; preds = %bb.f
  %i.w = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %i.u, i64 noundef 48, i64 noundef 16) #34, !dbg !27652, !noalias !27616
  br label %common.resume, !dbg !27653

_RNvXsd_NtCsgZ49sUHp3tW_5alloc5boxedINtB5_3BoxNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl13datatype_expr12DataTypeExprENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneCshquuC4dCYVj_10polars_sql.exit: ; preds = %bb.f
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %i.u, ptr noundef nonnull align 16 dereferenceable(48) %i.e, i64 48, i1 false), !dbg !27654, !noalias !27617
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !27655, !noalias !27617
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !27656
  %i.y = load i8, ptr %i.x, align 16, !dbg !27656, !range !430, !noundef !261
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !27657
  store ptr %i.u, ptr %i.z, align 8, !dbg !27657
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !27657
  store i8 %i.y, ptr %i.aa, align 16, !dbg !27657
  store i8 32, ptr %0, align 16, !dbg !27657
  br label %bb.t, !dbg !27633

bb.h:                                             ; preds = %bb.a
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !27658
  tail call void @llvm.experimental.noalias.scope.decl(metadata !27619), !dbg !27659
  %i.ac = tail call noundef nonnull align 16 ptr @_RNvMs_NtCsgZ49sUHp3tW_5alloc5boxedINtB4_3BoxNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl13datatype_expr12DataTypeExprE13new_uninit_inCshquuC4dCYVj_10polars_sql(), !dbg !27660, !noalias !27619, !inline_history !27514 ; 3 uses
  %i.ad = load ptr, ptr %i.ab, align 8, !dbg !27661, !alias.scope !27619, !nonnull !261, !noundef !261
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !27662, !noalias !27620
  invoke fastcc void @_RNvXs5_NtNtCsfcROwRM8ZtH_11polars_plan3dsl13datatype_exprNtB5_12DataTypeExprNtNtCscgRAwXFJnXP_4core5clone5Clone5clone(ptr noalias noundef align 16 captures(none) dereferenceable(48) %i.d, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(48) %i.ad) #40
          to label %bb.v unwind label %bb.i, !dbg !27663, !inline_history !27524

bb.i:                                             ; preds = %bb.h
  %i.ae = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ac, i64 noundef 48, i64 noundef 16) #34, !dbg !27664, !noalias !27619
  br label %common.resume, !dbg !27665

bb.j:                                             ; preds = %bb.a
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !27666
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !27667 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !dbg !27668
  tail call void @llvm.experimental.noalias.scope.decl(metadata !27621), !dbg !27668
  %i.ah = tail call noundef nonnull align 16 ptr @_RNvMs_NtCsgZ49sUHp3tW_5alloc5boxedINtB4_3BoxNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl13datatype_expr12DataTypeExprE13new_uninit_inCshquuC4dCYVj_10polars_sql(), !dbg !27669, !noalias !27621, !inline_history !27514 ; 4 uses
  %i.ai = load ptr, ptr %i.af, align 8, !dbg !27670, !alias.scope !27621, !nonnull !261, !noundef !261
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !27671, !noalias !27622
  invoke fastcc void @_RNvXs5_NtNtCsfcROwRM8ZtH_11polars_plan3dsl13datatype_exprNtB5_12DataTypeExprNtNtCscgRAwXFJnXP_4core5clone5Clone5clone(ptr noalias noundef align 16 captures(none) dereferenceable(48) %i.c, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(48) %i.ai) #40
          to label %_RNvXsd_NtCsgZ49sUHp3tW_5alloc5boxedINtB5_3BoxNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl13datatype_expr12DataTypeExprENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneCshquuC4dCYVj_10polars_sql.exit8 unwind label %bb.k, !dbg !27672, !inline_history !27524

bb.k:                                             ; preds = %bb.j
  %i.aj = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ah, i64 noundef 48, i64 noundef 16) #34, !dbg !27673, !noalias !27621
  br label %common.resume, !dbg !27674

_RNvXsd_NtCsgZ49sUHp3tW_5alloc5boxedINtB5_3BoxNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl13datatype_expr12DataTypeExprENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneCshquuC4dCYVj_10polars_sql.exit8: ; preds = %bb.j
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %i.ah, ptr noundef nonnull align 16 dereferenceable(48) %i.c, i64 48, i1 false), !dbg !27675, !noalias !27622
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !27676, !noalias !27622
  store ptr %i.ah, ptr %i.i, align 8, !dbg !27668
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !dbg !27677
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !dbg !27678
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 39, !dbg !27678
  %i.al = load i8, ptr %i.ak, align 1, !dbg !27678, !range !399, !alias.scope !27624, !noalias !27625, !noundef !261
  switch i8 %i.al, label %bb.m [
    i8 -38, label %.noexc
    i8 -40, label %bb.l
  ], !dbg !27678

bb.l:                                             ; preds = %_RNvXsd_NtCsgZ49sUHp3tW_5alloc5boxedINtB5_3BoxNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl13datatype_expr12DataTypeExprENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneCshquuC4dCYVj_10polars_sql.exit8
  invoke void @_RNvNvXs1_NtCs7VARH73bmU_11compact_str4reprNtB7_4ReprNtNtCscgRAwXFJnXP_4core5clone5Clone5clone10clone_heap(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.g, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ag) #38
          to label %.noexc unwind label %bb.w, !dbg !27679

bb.m:                                             ; preds = %_RNvXsd_NtCsgZ49sUHp3tW_5alloc5boxedINtB5_3BoxNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl13datatype_expr12DataTypeExprENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneCshquuC4dCYVj_10polars_sql.exit8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.g, ptr noundef nonnull readonly align 16 dereferenceable(24) %i.ag, i64 24, i1 false), !dbg !27680, !noalias !27625
  br label %.noexc, !dbg !27681

bb.n:                                             ; preds = %bb.a
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !27682
  tail call void @llvm.experimental.noalias.scope.decl(metadata !27626), !dbg !27683
  %i.an = tail call noundef nonnull align 16 ptr @_RNvMs_NtCsgZ49sUHp3tW_5alloc5boxedINtB4_3BoxNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl13datatype_expr12DataTypeExprE13new_uninit_inCshquuC4dCYVj_10polars_sql(), !dbg !27684, !noalias !27626, !inline_history !27514 ; 3 uses
  %i.ao = load ptr, ptr %i.am, align 8, !dbg !27685, !alias.scope !27626, !nonnull !261, !noundef !261
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !27686, !noalias !27627
  invoke fastcc void @_RNvXs5_NtNtCsfcROwRM8ZtH_11polars_plan3dsl13datatype_exprNtB5_12DataTypeExprNtNtCscgRAwXFJnXP_4core5clone5Clone5clone(ptr noalias noundef align 16 captures(none) dereferenceable(48) %i.b, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(48) %i.ao) #40
          to label %_RNvXsd_NtCsgZ49sUHp3tW_5alloc5boxedINtB5_3BoxNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl13datatype_expr12DataTypeExprENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneCshquuC4dCYVj_10polars_sql.exit10 unwind label %bb.o, !dbg !27687, !inline_history !27524

bb.o:                                             ; preds = %bb.n
  %i.ap = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %i.an, i64 noundef 48, i64 noundef 16) #34, !dbg !27688, !noalias !27626
  br label %common.resume, !dbg !27689

_RNvXsd_NtCsgZ49sUHp3tW_5alloc5boxedINtB5_3BoxNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl13datatype_expr12DataTypeExprENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneCshquuC4dCYVj_10polars_sql.exit10: ; preds = %bb.n
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %i.an, ptr noundef nonnull align 16 dereferenceable(48) %i.b, i64 48, i1 false), !dbg !27690, !noalias !27627
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !27691, !noalias !27627
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !27692
  store ptr %i.an, ptr %i.aq, align 8, !dbg !27692
  store i8 35, ptr %0, align 16, !dbg !27692
  br label %bb.t, !dbg !27633

bb.p:                                             ; preds = %bb.a
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !27693
  tail call void @llvm.experimental.noalias.scope.decl(metadata !27628), !dbg !27694
  %i.as = tail call noundef nonnull align 16 ptr @_RNvMs_NtCsgZ49sUHp3tW_5alloc5boxedINtB4_3BoxNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl13datatype_expr12DataTypeExprE13new_uninit_inCshquuC4dCYVj_10polars_sql(), !dbg !27695, !noalias !27628, !inline_history !27514 ; 3 uses
  %i.at = load ptr, ptr %i.ar, align 8, !dbg !27696, !alias.scope !27628, !nonnull !261, !noundef !261
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !27697, !noalias !27629
  invoke fastcc void @_RNvXs5_NtNtCsfcROwRM8ZtH_11polars_plan3dsl13datatype_exprNtB5_12DataTypeExprNtNtCscgRAwXFJnXP_4core5clone5Clone5clone(ptr noalias noundef align 16 captures(none) dereferenceable(48) %i.a, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(48) %i.at) #40
          to label %_RNvXsd_NtCsgZ49sUHp3tW_5alloc5boxedINtB5_3BoxNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl13datatype_expr12DataTypeExprENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneCshquuC4dCYVj_10polars_sql.exit12 unwind label %bb.q, !dbg !27698, !inline_history !27524

bb.q:                                             ; preds = %bb.p
  %i.au = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %i.as, i64 noundef 48, i64 noundef 16) #34, !dbg !27699, !noalias !27628
  br label %common.resume, !dbg !27700

_RNvXsd_NtCsgZ49sUHp3tW_5alloc5boxedINtB5_3BoxNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl13datatype_expr12DataTypeExprENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneCshquuC4dCYVj_10polars_sql.exit12: ; preds = %bb.p
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %i.as, ptr noundef nonnull align 16 dereferenceable(48) %i.a, i64 48, i1 false), !dbg !27701, !noalias !27629
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !27702, !noalias !27629
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !27703
  %i.aw = load i64, ptr %i.av, align 16, !dbg !27703, !noundef !261
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !27704
  store ptr %i.as, ptr %i.ax, align 8, !dbg !27704
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !27704
  store i64 %i.aw, ptr %i.ay, align 16, !dbg !27704
  store i8 36, ptr %0, align 16, !dbg !27704
  br label %bb.t, !dbg !27633

bb.r:                                             ; preds = %bb.a
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !27705
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !27706
  tail call void @_RNvXsa_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecTNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl13datatype_expr12DataTypeExprEENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneCshquuC4dCYVj_10polars_sql(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.ba, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.az), !dbg !27707
  store i8 37, ptr %0, align 16, !dbg !27706
  br label %bb.t, !dbg !27633

bb.s:                                             ; preds = %bb.a
  store i8 38, ptr %0, align 16, !dbg !27630
  br label %bb.t, !dbg !27630

bb.t:                                             ; preds = %.noexc, %bb.v, %_RNvXsd_NtCsgZ49sUHp3tW_5alloc5boxedINtB5_3BoxNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl13datatype_expr12DataTypeExprENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneCshquuC4dCYVj_10polars_sql.exit, %bb.s, %bb.r, %_RNvXsd_NtCsgZ49sUHp3tW_5alloc5boxedINtB5_3BoxNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl13datatype_expr12DataTypeExprENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneCshquuC4dCYVj_10polars_sql.exit12, %_RNvXsd_NtCsgZ49sUHp3tW_5alloc5boxedINtB5_3BoxNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl13datatype_expr12DataTypeExprENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneCshquuC4dCYVj_10polars_sql.exit10, %_RNvXsd_NtCsgZ49sUHp3tW_5alloc5boxedINtB5_3BoxNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneCshquuC4dCYVj_10polars_sql.exit, %bb.c
  ret void, !dbg !27708

bb.u:                                             ; preds = %bb.w
  %i.bb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #36, !dbg !27630
  unreachable, !dbg !27630

bb.v:                                             ; preds = %bb.h
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !27709
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %i.ac, ptr noundef nonnull align 16 dereferenceable(48) %i.d, i64 48, i1 false), !dbg !27710, !noalias !27620
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !27711, !noalias !27620
  %.val = load i8, ptr %i.bc, align 16, !dbg !27712, !range !343, !noundef !261
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !27713
  store ptr %i.ac, ptr %i.bd, align 8, !dbg !27713
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !27713
  store i8 %.val, ptr %i.be, align 16, !dbg !27713
  store i8 33, ptr %0, align 16, !dbg !27713
  br label %bb.t, !dbg !27633

bb.w:                                             ; preds = %bb.l
  %i.bf = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl13datatype_expr12DataTypeExprEECshquuC4dCYVj_10polars_sql(ptr noalias noundef align 8 dereferenceable(8) %i.i) #37
          to label %common.resume unwind label %bb.u, !dbg !27714

.noexc:                                           ; preds = %bb.m, %bb.l, %_RNvXsd_NtCsgZ49sUHp3tW_5alloc5boxedINtB5_3BoxNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl13datatype_expr12DataTypeExprENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneCshquuC4dCYVj_10polars_sql.exit8
  %.sink = phi ptr [ %i.ag, %_RNvXsd_NtCsgZ49sUHp3tW_5alloc5boxedINtB5_3BoxNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl13datatype_expr12DataTypeExprENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneCshquuC4dCYVj_10polars_sql.exit8 ], [ %i.g, %bb.l ], [ %i.g, %bb.m ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.h, ptr noundef nonnull align 8 dereferenceable(24) %.sink, i64 24, i1 false), !dbg !27678
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !27715
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !27716
  store ptr %i.ah, ptr %i.bg, align 8, !dbg !27716
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !27716
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.bh, ptr noundef nonnull align 8 dereferenceable(24) %i.h, i64 24, i1 false), !dbg !27716
  store i8 34, ptr %0, align 16, !dbg !27716
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !dbg !27714
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !dbg !27714
  br label %bb.t, !dbg !27633
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind optsize willreturn memory(read, inaccessiblemem: readwrite, target_mem: none) uwtable
define internal fastcc noundef zeroext i1 @_RNvXs7_NtNtCscgRAwXFJnXP_4core3cmp5implsRNtNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes8temporal9time_zone8TimeZoneNtB7_9PartialEq2eqCshquuC4dCYVj_10polars_sql(ptr nofree readonly captures(none) %.0.val, ptr nofree readonly captures(none) %.0.val1) unnamed_addr #15 personality ptr @rust_eh_personality !dbg !27717 {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val1) ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !27752), !dbg !27757
  tail call void @llvm.experimental.noalias.scope.decl(metadata !27753), !dbg !27757
  %i.a = getelementptr inbounds nuw i8, ptr %.0.val, i64 23, !dbg !27758
  %i.b = load i8, ptr %i.a, align 1, !dbg !27758, !range !320, !alias.scope !27754, !noalias !27755, !noundef !261 ; 2 uses
  %i.c = icmp ugt i8 %i.b, -41, !dbg !27759
  br i1 %i.c, label %bb.c, label %bb.b, !dbg !27759

bb.b:                                             ; preds = %bb.a
  %i.d = add i8 %i.b, 64, !dbg !27760
  %i.e = tail call i8 @llvm.umin.i8(i8 %i.d, i8 24), !dbg !27761
  %.sroa.0.0.i.i.i = zext nneg i8 %i.e to i64, !dbg !27761
  br label %_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr8as_slice.exit.i, !dbg !27762

bb.c:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %.0.val, align 8, !dbg !27763, !alias.scope !27754, !noalias !27755, !noundef !261
  %i.g = getelementptr inbounds nuw i8, ptr %.0.val, i64 8, !dbg !27764
  %i.h = load i64, ptr %i.g, align 8, !dbg !27764, !alias.scope !27754, !noalias !27755, !noundef !261
  br label %_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr8as_slice.exit.i, !dbg !27765

_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr8as_slice.exit.i: ; preds = %bb.c, %bb.b
  %.sroa.01.0.i.i = phi i64 [ %i.h, %bb.c ], [ %.sroa.0.0.i.i.i, %bb.b ], !dbg !27766 ; 2 uses
  %.sroa.0.0.i1.i = phi ptr [ %i.f, %bb.c ], [ %.0.val, %bb.b ], !dbg !27767
  %i.i = getelementptr inbounds nuw i8, ptr %.0.val1, i64 23, !dbg !27768
  %i.j = load i8, ptr %i.i, align 1, !dbg !27768, !range !320, !alias.scope !27756, !noalias !27752, !noundef !261 ; 2 uses
  %i.k = icmp ugt i8 %i.j, -41, !dbg !27769
  br i1 %i.k, label %bb.e, label %bb.d, !dbg !27769

bb.d:                                             ; preds = %_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr8as_slice.exit.i
  %i.l = add i8 %i.j, 64, !dbg !27770
  %i.m = tail call i8 @llvm.umin.i8(i8 %i.l, i8 24), !dbg !27771
  %.sroa.0.0.i.i2.i = zext nneg i8 %i.m to i64, !dbg !27771
  br label %_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr8as_slice.exit5.i, !dbg !27772

bb.e:                                             ; preds = %_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr8as_slice.exit.i
  %i.n = load ptr, ptr %.0.val1, align 8, !dbg !27773, !alias.scope !27756, !noalias !27752, !noundef !261
  %i.o = getelementptr inbounds nuw i8, ptr %.0.val1, i64 8, !dbg !27774
  %i.p = load i64, ptr %i.o, align 8, !dbg !27774, !alias.scope !27756, !noalias !27752, !noundef !261
  br label %_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr8as_slice.exit5.i, !dbg !27775

_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr8as_slice.exit5.i: ; preds = %bb.e, %bb.d
  %.sroa.01.0.i3.i = phi i64 [ %i.p, %bb.e ], [ %.sroa.0.0.i.i2.i, %bb.d ], !dbg !27776
  %.sroa.0.0.i4.i = phi ptr [ %i.n, %bb.e ], [ %.0.val1, %bb.d ], !dbg !27777
  %i.q = icmp eq i64 %.sroa.01.0.i.i, %.sroa.01.0.i3.i, !dbg !27778
  br i1 %i.q, label %bb.f, label %_RNvXs5_NtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes8temporal9time_zoneNtB5_8TimeZoneNtNtCscgRAwXFJnXP_4core3cmp9PartialEq2eq.exit, !dbg !27778

bb.f:                                             ; preds = %_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr8as_slice.exit5.i
  %bcmp.i.i = tail call i32 @bcmp(ptr %.sroa.0.0.i1.i, ptr %.sroa.0.0.i4.i, i64 %.sroa.01.0.i.i), !dbg !27779
  %i.r = icmp eq i32 %bcmp.i.i, 0, !dbg !27779
  br label %_RNvXs5_NtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes8temporal9time_zoneNtB5_8TimeZoneNtNtCscgRAwXFJnXP_4core3cmp9PartialEq2eq.exit, !dbg !27780

_RNvXs5_NtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes8temporal9time_zoneNtB5_8TimeZoneNtNtCscgRAwXFJnXP_4core3cmp9PartialEq2eq.exit: ; preds = %_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr8as_slice.exit5.i, %bb.f
  %.sroa.0.0.i.i = phi i1 [ %i.r, %bb.f ], [ false, %_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr8as_slice.exit5.i ], !dbg !27781
  ret i1 %.sroa.0.0.i.i, !dbg !27782
}

; Function Attrs: inlinehint nonlazybind optsize uwtable
define internal fastcc noundef zeroext i1 @_RNvXs7_NtNtCsfcROwRM8ZtH_11polars_plan3dsl13datatype_exprNtB5_12DataTypeExprNtNtCscgRAwXFJnXP_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(48) %0, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(48) %1) unnamed_addr #5 personality ptr @rust_eh_personality !dbg !27783 {
bb.a:
  %i.a = load i8, ptr %0, align 16, !dbg !27920, !range !402, !noundef !261 ; 2 uses
  %i.b = icmp samesign ugt i8 %i.a, 30, !dbg !27920
  %i.c = zext nneg i8 %i.a to i64, !dbg !27920
  %i.d = add nsw i64 %i.c, -30, !dbg !27920
  %i.e = select i1 %i.b, i64 %i.d, i64 0, !dbg !27920 ; 2 uses
  %i.f = load i8, ptr %1, align 16, !dbg !27921, !range !402, !noundef !261 ; 2 uses
  %i.g = icmp samesign ult i8 %i.f, 31, !dbg !27921 ; 2 uses
  %i.h = zext nneg i8 %i.f to i64, !dbg !27921
  %i.i = add nsw i64 %i.h, -30, !dbg !27921
  %i.j = select i1 %i.g, i64 0, i64 %i.i, !dbg !27921
  %i.k = icmp eq i64 %i.e, %i.j, !dbg !27922
  br i1 %i.k, label %.lr.ph, label %.loopexit, !dbg !27922

.lr.ph:                                           ; preds = %bb.a, %tailrecurse
  %i.l = phi i1 [ %i.x, %tailrecurse ], [ %i.g, %bb.a ]
  %i.m = phi i64 [ %i.v, %tailrecurse ], [ %i.e, %bb.a ]
  %.tr733 = phi ptr [ %i.q, %tailrecurse ], [ %1, %bb.a ] ; 15 uses
  %.tr32 = phi ptr [ %i.o, %tailrecurse ], [ %0, %bb.a ] ; 15 uses
  switch i64 %i.m, label %bb.b [
    i64 0, label %bb.c
    i64 1, label %bb.e
    i64 2, label %bb.f
    i64 3, label %bb.j
    i64 4, label %bb.l
    i64 5, label %tailrecurse
    i64 6, label %bb.v
    i64 7, label %bb.x
    i64 8, label %.loopexit
  ], !dbg !27922

.loopexit:                                        ; preds = %tailrecurse, %.lr.ph, %bb.u, %bb.t, %_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr8as_slice.exit6.i, %bb.m, %bb.a, %bb.h, %bb.x, %bb.v, %bb.l, %bb.j, %bb.f, %bb.c, %bb.y, %bb.w, %bb.k, %bb.i, %bb.e, %bb.d
  %.sroa.0.0.shrunk = phi i1 [ %i.ac, %bb.d ], [ false, %bb.v ], [ %i.ah, %bb.e ], [ false, %bb.x ], [ false, %bb.f ], [ %i.as, %bb.i ], [ %i.cz, %bb.y ], [ %i.ba, %bb.k ], [ %i.ar, %bb.h ], [ %i.cc, %bb.t ], [ false, %bb.j ], [ true, %bb.c ], [ %i.cp, %bb.w ], [ false, %bb.l ], [ false, %bb.a ], [ false, %_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr8as_slice.exit6.i ], [ false, %bb.m ], [ %i.cf, %bb.u ], [ false, %tailrecurse ], [ true, %.lr.ph ]
  ret i1 %.sroa.0.0.shrunk, !dbg !27923

bb.b:                                             ; preds = %.lr.ph
  unreachable, !dbg !27924

bb.c:                                             ; preds = %.lr.ph
  br i1 %i.l, label %bb.d, label %.loopexit, !dbg !27922

tailrecurse:                                      ; preds = %.lr.ph
  %i.n = getelementptr inbounds nuw i8, ptr %.tr32, i64 8, !dbg !27925
  %i.o = load ptr, ptr %i.n, align 8, !dbg !27925, !nonnull !261, !noundef !261 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.tr733, i64 8, !dbg !27926
  %i.q = load ptr, ptr %i.p, align 8, !dbg !27926, !nonnull !261, !noundef !261 ; 2 uses
  %i.r = load i8, ptr %i.o, align 16, !dbg !27920, !range !402, !noundef !261 ; 2 uses
  %i.s = icmp samesign ugt i8 %i.r, 30, !dbg !27920
  %i.t = zext nneg i8 %i.r to i64, !dbg !27920
  %i.u = add nsw i64 %i.t, -30, !dbg !27920
  %i.v = select i1 %i.s, i64 %i.u, i64 0, !dbg !27920 ; 2 uses
  %i.w = load i8, ptr %i.q, align 16, !dbg !27921, !range !402, !noundef !261 ; 2 uses
  %i.x = icmp samesign ult i8 %i.w, 31, !dbg !27921 ; 2 uses
  %i.y = zext nneg i8 %i.w to i64, !dbg !27921
  %i.z = add nsw i64 %i.y, -30, !dbg !27921
  %i.aa = select i1 %i.x, i64 0, i64 %i.z, !dbg !27921
  %i.ab = icmp eq i64 %i.v, %i.aa, !dbg !27922
  br i1 %i.ab, label %.lr.ph, label %.loopexit, !dbg !27922

bb.d:                                             ; preds = %bb.c
  %i.ac = tail call noundef zeroext i1 @_RNvXs2_NtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtypeNtB5_8DataTypeNtNtCscgRAwXFJnXP_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(48) %.tr32, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(48) %.tr733), !dbg !27927
  br label %.loopexit, !dbg !27927

bb.e:                                             ; preds = %.lr.ph
  %i.ad = getelementptr inbounds nuw i8, ptr %.tr32, i64 8, !dbg !27928
  %i.ae = load ptr, ptr %i.ad, align 8, !dbg !27928, !nonnull !261, !noundef !261
  %i.af = getelementptr inbounds nuw i8, ptr %.tr733, i64 8, !dbg !27929
  %i.ag = load ptr, ptr %i.af, align 8, !dbg !27929, !nonnull !261, !noundef !261
  %i.ah = tail call fastcc noundef zeroext i1 @_RNvXse_NtNtCsfcROwRM8ZtH_11polars_plan3dsl4exprNtB5_4ExprNtNtCscgRAwXFJnXP_4core3cmp9PartialEq2eq(ptr noundef nonnull align 16 %i.ae, ptr noundef nonnull align 16 %i.ag) #40, !dbg !27930
  br label %.loopexit, !dbg !27931

bb.f:                                             ; preds = %.lr.ph
  %i.ai = getelementptr inbounds nuw i8, ptr %.tr32, i64 8, !dbg !27932
  %i.aj = load ptr, ptr %i.ai, align 8, !dbg !27932, !nonnull !261, !noundef !261
  %i.ak = getelementptr inbounds nuw i8, ptr %.tr733, i64 8, !dbg !27933
  %i.al = load ptr, ptr %i.ak, align 8, !dbg !27933, !nonnull !261, !noundef !261
  %i.am = tail call fastcc noundef zeroext i1 @_RNvXs7_NtNtCsfcROwRM8ZtH_11polars_plan3dsl13datatype_exprNtB5_12DataTypeExprNtNtCscgRAwXFJnXP_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(48) %i.aj, ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(48) %i.al) #40, !dbg !27934
  br i1 %i.am, label %bb.g, label %.loopexit, !dbg !27874

bb.g:                                             ; preds = %bb.f
  %i.an = getelementptr inbounds nuw i8, ptr %.tr32, i64 16, !dbg !27924
  %i.ao = load i8, ptr %i.an, align 16, !dbg !27924, !range !430, !noundef !261 ; 2 uses
  %.not = icmp eq i8 %i.ao, 2, !dbg !27924
  %i.ap = getelementptr inbounds nuw i8, ptr %.tr733, i64 16, !dbg !27924
  %i.aq = load i8, ptr %i.ap, align 16, !dbg !27924, !range !430, !noundef !261 ; 2 uses
  br i1 %.not, label %bb.i, label %bb.h, !dbg !27935

bb.h:                                             ; preds = %bb.g
  %i.ar = icmp eq i8 %i.ao, %i.aq
  br label %.loopexit, !dbg !27935

bb.i:                                             ; preds = %bb.g
  %i.as = icmp eq i8 %i.aq, 2, !dbg !27924
  br label %.loopexit, !dbg !27935

bb.j:                                             ; preds = %.lr.ph
  %i.at = getelementptr inbounds nuw i8, ptr %.tr32, i64 8, !dbg !27936
  %i.au = load ptr, ptr %i.at, align 8, !dbg !27936, !nonnull !261, !noundef !261
  %i.av = getelementptr inbounds nuw i8, ptr %.tr733, i64 8, !dbg !27937
  %i.aw = load ptr, ptr %i.av, align 8, !dbg !27937, !nonnull !261, !noundef !261
  %i.ax = tail call fastcc noundef zeroext i1 @_RNvXs7_NtNtCsfcROwRM8ZtH_11polars_plan3dsl13datatype_exprNtB5_12DataTypeExprNtNtCscgRAwXFJnXP_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(48) %i.au, ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(48) %i.aw) #40, !dbg !27938
  br i1 %i.ax, label %bb.k, label %.loopexit, !dbg !27877

bb.k:                                             ; preds = %bb.j
  %i.ay = getelementptr inbounds nuw i8, ptr %.tr733, i64 16, !dbg !27939
  %i.az = getelementptr inbounds nuw i8, ptr %.tr32, i64 16, !dbg !27939
  %.val5 = load i8, ptr %i.az, align 8, !dbg !27940, !range !343, !noundef !261
  %.val6 = load i8, ptr %i.ay, align 8, !dbg !27940, !range !343, !noundef !261
  %i.ba = icmp eq i8 %.val5, %.val6, !dbg !27941
  br label %.loopexit, !dbg !27940

bb.l:                                             ; preds = %.lr.ph
  %i.bb = getelementptr inbounds nuw i8, ptr %.tr32, i64 8, !dbg !27942
  %i.bc = load ptr, ptr %i.bb, align 8, !dbg !27942, !nonnull !261, !noundef !261
  %i.bd = getelementptr inbounds nuw i8, ptr %.tr733, i64 8, !dbg !27943
  %i.be = load ptr, ptr %i.bd, align 8, !dbg !27943, !nonnull !261, !noundef !261
  %i.bf = tail call fastcc noundef zeroext i1 @_RNvXs7_NtNtCsfcROwRM8ZtH_11polars_plan3dsl13datatype_exprNtB5_12DataTypeExprNtNtCscgRAwXFJnXP_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(48) %i.bc, ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(48) %i.be) #40, !dbg !27944
  br i1 %i.bf, label %bb.m, label %.loopexit, !dbg !27882

bb.m:                                             ; preds = %bb.l
  %i.bg = getelementptr inbounds nuw i8, ptr %.tr733, i64 16, !dbg !27945 ; 3 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %.tr32, i64 16, !dbg !27945 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !27884), !dbg !27946
  tail call void @llvm.experimental.noalias.scope.decl(metadata !27886), !dbg !27946
  %i.bi = getelementptr inbounds nuw i8, ptr %.tr32, i64 39, !dbg !27947
  %i.bj = load i8, ptr %i.bi, align 1, !dbg !27947, !range !399, !alias.scope !27884, !noalias !27886, !noundef !261 ; 3 uses
  %i.bk = icmp ne i8 %i.bj, -38, !dbg !27947      ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %.tr733, i64 39, !dbg !27948
  %i.bm = load i8, ptr %i.bl, align 1, !dbg !27948, !range !399, !alias.scope !27886, !noalias !27884, !noundef !261 ; 3 uses
  %i.bn = icmp eq i8 %i.bm, -38, !dbg !27948      ; 3 uses
  %not..i = xor i1 %i.bn, true, !dbg !27948
  %i.bo = xor i1 %i.bk, %i.bn, !dbg !27949
  br i1 %i.bo, label %bb.n, label %.loopexit, !dbg !27949

bb.n:                                             ; preds = %bb.m
  br i1 %i.bk, label %bb.o, label %bb.u, !dbg !27949

bb.o:                                             ; preds = %bb.n
  tail call void @llvm.assume(i1 %not..i), !dbg !27949
  %i.bp = icmp ugt i8 %i.bj, -41, !dbg !27950
  br i1 %i.bp, label %bb.q, label %bb.p, !dbg !27950

bb.p:                                             ; preds = %bb.o
end_hunk_2
begin_hunk_3_@_RNvXsk_NtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtypeNtB5_8DataTypeNtNtCscgRAwXFJnXP_4core5clone5Clone5clone:bb.a
  br label %bb.aj, !dbg !33940

bb.x:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !33947
  tail call void @llvm.experimental.noalias.scope.decl(metadata !33893), !dbg !33948
  %i.l = tail call noundef nonnull align 16 ptr @_RNvMs_NtCsgZ49sUHp3tW_5alloc5boxedINtB4_3BoxNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeE13new_uninit_inCshquuC4dCYVj_10polars_sql(), !dbg !33949, !noalias !33893, !inline_history !33823 ; 3 uses
  %i.m = load ptr, ptr %i.k, align 16, !dbg !33950, !alias.scope !33893, !nonnull !261, !noundef !261
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !33951, !noalias !33894
  invoke fastcc void @_RNvXsk_NtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtypeNtB5_8DataTypeNtNtCscgRAwXFJnXP_4core5clone5Clone5clone(ptr noalias noundef align 16 captures(none) dereferenceable(48) %i.c, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(48) %i.m) #40
          to label %_RNvXsd_NtCsgZ49sUHp3tW_5alloc5boxedINtB5_3BoxNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneCshquuC4dCYVj_10polars_sql.exit unwind label %bb.y, !dbg !33952, !inline_history !33833

common.resume.sink.split:                         ; preds = %bb.y, %bb.aa
  %.sink = phi ptr [ %i.t, %bb.aa ], [ %i.l, %bb.y ]
  %common.resume.op.ph = phi { ptr, i32 } [ %i.v, %bb.aa ], [ %i.n, %bb.y ]
  tail call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %.sink, i64 noundef 48, i64 noundef 16) #34, !dbg !33953, !noalias !261
  br label %common.resume, !dbg !33895

common.resume:                                    ; preds = %common.resume.sink.split, %.body
  %common.resume.op = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %common.resume.op.ph, %common.resume.sink.split ]
  resume { ptr, i32 } %common.resume.op, !dbg !33895

bb.y:                                             ; preds = %bb.x
  %i.n = landingpad { ptr, i32 }
          cleanup
  br label %common.resume.sink.split, !dbg !33954

_RNvXsd_NtCsgZ49sUHp3tW_5alloc5boxedINtB5_3BoxNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneCshquuC4dCYVj_10polars_sql.exit: ; preds = %bb.x
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %i.l, ptr noundef nonnull align 16 dereferenceable(48) %i.c, i64 48, i1 false), !dbg !33955, !noalias !33894
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !33956, !noalias !33894
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !33957
  %i.p = load i64, ptr %i.o, align 8, !dbg !33957, !noundef !261
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !33958
  store ptr %i.l, ptr %i.q, align 16, !dbg !33958
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !33958
  store i64 %i.p, ptr %i.r, align 8, !dbg !33958
  store i8 22, ptr %0, align 16, !dbg !33958
  br label %bb.aj, !dbg !33942

bb.z:                                             ; preds = %bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !33959
  tail call void @llvm.experimental.noalias.scope.decl(metadata !33902), !dbg !33960
  %i.t = tail call noundef nonnull align 16 ptr @_RNvMs_NtCsgZ49sUHp3tW_5alloc5boxedINtB4_3BoxNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeE13new_uninit_inCshquuC4dCYVj_10polars_sql(), !dbg !33961, !noalias !33902, !inline_history !33823 ; 3 uses
  %i.u = load ptr, ptr %i.s, align 8, !dbg !33962, !alias.scope !33902, !nonnull !261, !noundef !261
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !33963, !noalias !33903
  invoke fastcc void @_RNvXsk_NtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtypeNtB5_8DataTypeNtNtCscgRAwXFJnXP_4core5clone5Clone5clone(ptr noalias noundef align 16 captures(none) dereferenceable(48) %i.b, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(48) %i.u) #40
          to label %_RNvXsd_NtCsgZ49sUHp3tW_5alloc5boxedINtB5_3BoxNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneCshquuC4dCYVj_10polars_sql.exit17 unwind label %bb.aa, !dbg !33964, !inline_history !33833

bb.aa:                                            ; preds = %bb.z
  %i.v = landingpad { ptr, i32 }
          cleanup
  br label %common.resume.sink.split, !dbg !33965

_RNvXsd_NtCsgZ49sUHp3tW_5alloc5boxedINtB5_3BoxNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneCshquuC4dCYVj_10polars_sql.exit17: ; preds = %bb.z
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %i.t, ptr noundef nonnull align 16 dereferenceable(48) %i.b, i64 48, i1 false), !dbg !33966, !noalias !33903
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !33967, !noalias !33903
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !33968
  store ptr %i.t, ptr %i.w, align 8, !dbg !33968
  store i8 23, ptr %0, align 16, !dbg !33968
  br label %bb.aj, !dbg !33942

bb.ab:                                            ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %0, ptr noundef nonnull align 16 dereferenceable(48) %1, i64 48, i1 false), !dbg !33969
  br label %bb.aj, !dbg !33942

bb.ac:                                            ; preds = %bb.a
  store i8 25, ptr %0, align 16, !dbg !33940
  br label %bb.aj, !dbg !33940

bb.ad:                                            ; preds = %bb.a
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !33970
  %i.y = load ptr, ptr %i.x, align 8, !dbg !33970, !nonnull !261, !noundef !261 ; 2 uses
  %i.z = atomicrmw add ptr %i.y, i64 1 monotonic, align 8, !dbg !33971
  %i.aa = icmp slt i64 %i.z, 0, !dbg !33972
  br i1 %i.aa, label %bb.ap, label %bb.ao, !dbg !33972

bb.ae:                                            ; preds = %bb.a
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !33973
  %i.ac = load ptr, ptr %i.ab, align 8, !dbg !33973, !nonnull !261, !noundef !261 ; 2 uses
  %i.ad = atomicrmw add ptr %i.ac, i64 1 monotonic, align 8, !dbg !33974
  %i.ae = icmp slt i64 %i.ad, 0, !dbg !33975
  br i1 %i.ae, label %bb.at, label %bb.as, !dbg !33975

bb.af:                                            ; preds = %bb.a
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !33976
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !33977
  tail call void @_RNvXsa_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5field5FieldENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneCshquuC4dCYVj_10polars_sql(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.ag, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.af), !dbg !33978
  store i8 28, ptr %0, align 16, !dbg !33977
  br label %bb.aj, !dbg !33942

bb.ag:                                            ; preds = %bb.a
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !33979
  %i.ai = tail call { ptr, ptr } @_RNvXNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9extensionNtB2_21ExtensionTypeInstanceNtNtCscgRAwXFJnXP_4core5clone5Clone5clone(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.ah), !dbg !33980 ; 2 uses
  %i.aj = extractvalue { ptr, ptr } %i.ai, 0, !dbg !33980 ; 3 uses
  %i.ak = extractvalue { ptr, ptr } %i.ai, 1, !dbg !33980 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !33917), !dbg !33981
  %i.al = invoke noundef nonnull align 16 ptr @_RNvMs_NtCsgZ49sUHp3tW_5alloc5boxedINtB4_3BoxNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeE13new_uninit_inCshquuC4dCYVj_10polars_sql()
          to label %.noexc unwind label %bb.aw, !dbg !33982, !inline_history !33823 ; 3 uses

.noexc:                                           ; preds = %bb.ag
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 24, !dbg !33983
  %i.an = load ptr, ptr %i.am, align 8, !dbg !33984, !alias.scope !33917, !nonnull !261, !noundef !261
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !33985, !noalias !33918
  invoke fastcc void @_RNvXsk_NtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtypeNtB5_8DataTypeNtNtCscgRAwXFJnXP_4core5clone5Clone5clone(ptr noalias noundef align 16 captures(none) dereferenceable(48) %i.a, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(48) %i.an) #40
          to label %bb.ax unwind label %bb.ah, !dbg !33986, !inline_history !33833

bb.ah:                                            ; preds = %.noexc
  %i.ao = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %i.al, i64 noundef 48, i64 noundef 16) #34, !dbg !33987, !noalias !33917
  br label %.body, !dbg !33988

bb.ai:                                            ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %0, ptr noundef nonnull align 16 dereferenceable(48) %1, i64 48, i1 false), !dbg !33989
  br label %bb.aj, !dbg !33942

bb.aj:                                            ; preds = %bb.ax, %bb.au, %bb.aq, %bb.ak, %bb.ai, %bb.af, %bb.ac, %bb.ab, %_RNvXsd_NtCsgZ49sUHp3tW_5alloc5boxedINtB5_3BoxNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneCshquuC4dCYVj_10polars_sql.exit17, %_RNvXsd_NtCsgZ49sUHp3tW_5alloc5boxedINtB5_3BoxNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneCshquuC4dCYVj_10polars_sql.exit, %bb.w, %bb.v, %bb.t, %bb.s, %bb.r, %bb.q, %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  ret void, !dbg !33990

bb.ak:                                            ; preds = %bb.u, %bb.an
  %.sroa.4.0 = phi i8 [ %.sroa.48.0.copyload, %bb.an ], [ %i.j, %bb.u ], !dbg !33991
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 1, !dbg !33992
  store i8 %i.g, ptr %i.ap, align 1, !dbg !33992
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !33992
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(23) %i.aq, ptr noundef nonnull align 8 dereferenceable(23) %i.d, i64 23, i1 false), !dbg !33992
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 31, !dbg !33992
  store i8 %.sroa.4.0, ptr %.sroa.4.0..sroa_idx, align 1, !dbg !33992
  store i8 19, ptr %0, align 16, !dbg !33992
  br label %bb.aj, !dbg !33942

bb.al:                                            ; preds = %bb.u
  call void @_RNvNvXs1_NtCs7VARH73bmU_11compact_str4reprNtB7_4ReprNtNtCscgRAwXFJnXP_4core5clone5Clone5clone10clone_heap(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.h) #38, !dbg !33993
  br label %bb.an, !dbg !33993

bb.am:                                            ; preds = %bb.u
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %i.h, i64 24, i1 false), !dbg !33994
  br label %bb.an, !dbg !33995

bb.an:                                            ; preds = %bb.am, %bb.al
  %.sroa.48.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 23, !dbg !33996
  %.sroa.48.0.copyload = load i8, ptr %.sroa.48.0..sroa_idx, align 1, !dbg !33996
  br label %bb.ak, !dbg !33997

bb.ao:                                            ; preds = %bb.ad
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !33998
  %i.as = load ptr, ptr %i.ar, align 16, !dbg !33998, !nonnull !261, !noundef !261 ; 2 uses
  %i.at = atomicrmw add ptr %i.as, i64 1 monotonic, align 8, !dbg !33999
  %i.au = icmp slt i64 %i.at, 0, !dbg !34000
  br i1 %i.au, label %bb.ar, label %bb.aq, !dbg !34000

bb.ap:                                            ; preds = %bb.ad
  tail call void @llvm.trap(), !dbg !34001
  unreachable, !dbg !34001

bb.aq:                                            ; preds = %bb.ao
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !34002
  store ptr %i.y, ptr %i.av, align 8, !dbg !34002
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !34002
  store ptr %i.as, ptr %i.aw, align 16, !dbg !34002
  store i8 26, ptr %0, align 16, !dbg !34002
  br label %bb.aj, !dbg !33942

bb.ar:                                            ; preds = %bb.ao
  tail call void @llvm.trap(), !dbg !34003
  unreachable, !dbg !34003

bb.as:                                            ; preds = %bb.ae
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !34004
  %i.ay = load ptr, ptr %i.ax, align 16, !dbg !34004, !nonnull !261, !noundef !261 ; 2 uses
  %i.az = atomicrmw add ptr %i.ay, i64 1 monotonic, align 8, !dbg !34005
  %i.ba = icmp slt i64 %i.az, 0, !dbg !34006
  br i1 %i.ba, label %bb.av, label %bb.au, !dbg !34006

bb.at:                                            ; preds = %bb.ae
  tail call void @llvm.trap(), !dbg !34007
  unreachable, !dbg !34007

bb.au:                                            ; preds = %bb.as
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !34008
  store ptr %i.ac, ptr %i.bb, align 8, !dbg !34008
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !34008
  store ptr %i.ay, ptr %i.bc, align 16, !dbg !34008
  store i8 27, ptr %0, align 16, !dbg !34008
  br label %bb.aj, !dbg !33942

bb.av:                                            ; preds = %bb.as
  tail call void @llvm.trap(), !dbg !34009
  unreachable, !dbg !34009

bb.aw:                                            ; preds = %bb.ag
  %i.bd = landingpad { ptr, i32 }
          cleanup
  br label %.body, !dbg !34010

.body:                                            ; preds = %bb.ah, %bb.aw
  %eh.lpad-body = phi { ptr, i32 } [ %i.bd, %bb.aw ], [ %i.ao, %bb.ah ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ak) ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9extension21ExtensionTypeInstanceECshquuC4dCYVj_10polars_sql(ptr %i.aj, ptr nonnull %i.ak) #37
          to label %common.resume unwind label %bb.ay, !dbg !34010

bb.ax:                                            ; preds = %.noexc
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %i.al, ptr noundef nonnull align 16 dereferenceable(48) %i.a, i64 48, i1 false), !dbg !34011, !noalias !33918
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !34012, !noalias !33918
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.aj) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ak) ]
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !34013
  store ptr %i.aj, ptr %i.be, align 8, !dbg !34013
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !34013
  store ptr %i.ak, ptr %i.bf, align 16, !dbg !34013
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !34013
  store ptr %i.al, ptr %i.bg, align 8, !dbg !34013
  store i8 29, ptr %0, align 16, !dbg !34013
  br label %bb.aj, !dbg !33942

bb.ay:                                            ; preds = %.body
  %i.bh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #36, !dbg !33940
  unreachable, !dbg !33940
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind optsize willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc noundef zeroext i1 @_RNvXsk_NtNtCsfcROwRM8ZtH_11polars_plan3dsl7optionsNtB5_15StrptimeOptionsNtNtCscgRAwXFJnXP_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1) unnamed_addr #12 personality ptr @rust_eh_personality !dbg !34014 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !34049
  %i.b = load i8, ptr %i.a, align 8, !dbg !34049, !range !343, !noundef !261
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24, !dbg !34049
  %i.d = load i8, ptr %i.c, align 8, !dbg !34049, !range !343, !noundef !261
  %i.e = icmp eq i8 %i.b, %i.d, !dbg !34049
  br i1 %i.e, label %bb.b, label %_RNvXsl_NtCs2mZqlW55729_12polars_utils6pl_strNtB5_10PlSmallStrNtNtCscgRAwXFJnXP_4core3cmp9PartialEq2eqCshquuC4dCYVj_10polars_sql.exit, !dbg !34049

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 25, !dbg !34050
  %i.g = load i8, ptr %i.f, align 1, !dbg !34050, !range !343, !noundef !261
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 25, !dbg !34050
  %i.i = load i8, ptr %i.h, align 1, !dbg !34050, !range !343, !noundef !261
  %i.j = icmp eq i8 %i.g, %i.i, !dbg !34050
  br i1 %i.j, label %bb.c, label %_RNvXsl_NtCs2mZqlW55729_12polars_utils6pl_strNtB5_10PlSmallStrNtNtCscgRAwXFJnXP_4core3cmp9PartialEq2eqCshquuC4dCYVj_10polars_sql.exit, !dbg !34050

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 26, !dbg !34051
  %i.l = load i8, ptr %i.k, align 2, !dbg !34051, !range !343, !noundef !261
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 26, !dbg !34051
  %i.n = load i8, ptr %i.m, align 2, !dbg !34051, !range !343, !noundef !261
  %i.o = icmp eq i8 %i.l, %i.n, !dbg !34051
  br i1 %i.o, label %bb.d, label %_RNvXsl_NtCs2mZqlW55729_12polars_utils6pl_strNtB5_10PlSmallStrNtNtCscgRAwXFJnXP_4core3cmp9PartialEq2eqCshquuC4dCYVj_10polars_sql.exit, !dbg !34051

bb.d:                                             ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 23, !dbg !34052
  %i.q = load i8, ptr %i.p, align 1, !dbg !34052, !range !399, !noundef !261 ; 3 uses
  %.not = icmp eq i8 %i.q, -38, !dbg !34052       ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 23, !dbg !34052
  %i.s = load i8, ptr %i.r, align 1, !dbg !34052, !range !399, !noundef !261 ; 3 uses
  %i.t = icmp eq i8 %i.s, -38, !dbg !34052        ; 2 uses
  %brmerge = or i1 %.not, %i.t, !dbg !34053
  %.mux = and i1 %.not, %i.t, !dbg !34053
  br i1 %brmerge, label %_RNvXsl_NtCs2mZqlW55729_12polars_utils6pl_strNtB5_10PlSmallStrNtNtCscgRAwXFJnXP_4core3cmp9PartialEq2eqCshquuC4dCYVj_10polars_sql.exit, label %bb.e, !dbg !34053

_RNvXsl_NtCs2mZqlW55729_12polars_utils6pl_strNtB5_10PlSmallStrNtNtCscgRAwXFJnXP_4core3cmp9PartialEq2eqCshquuC4dCYVj_10polars_sql.exit: ; preds = %bb.d, %bb.j, %_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr8as_slice.exit6, %bb.a, %bb.b, %bb.c
  %.sroa.0.0.shrunk = phi i1 [ %.mux, %bb.d ], [ false, %bb.a ], [ false, %_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr8as_slice.exit6 ], [ false, %bb.c ], [ false, %bb.b ], [ %i.ah, %bb.j ]
  ret i1 %.sroa.0.0.shrunk, !dbg !34054

bb.e:                                             ; preds = %bb.d
  %i.u = icmp ugt i8 %i.q, -41, !dbg !34055
  br i1 %i.u, label %bb.g, label %bb.f, !dbg !34055

bb.f:                                             ; preds = %bb.e
  %i.v = add i8 %i.q, 64, !dbg !34056
  %i.w = tail call i8 @llvm.umin.i8(i8 %i.v, i8 24), !dbg !34057
  %.sroa.0.0.i.i = zext nneg i8 %i.w to i64, !dbg !34057
  br label %_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr8as_slice.exit, !dbg !34058

bb.g:                                             ; preds = %bb.e
  %i.x = load ptr, ptr %0, align 8, !dbg !34059, !alias.scope !34046, !noalias !34047, !noundef !261
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !34060
  %i.z = load i64, ptr %i.y, align 8, !dbg !34060, !alias.scope !34046, !noalias !34047, !noundef !261
  br label %_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr8as_slice.exit, !dbg !34061

_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr8as_slice.exit: ; preds = %bb.f, %bb.g
  %.sroa.01.0.i = phi i64 [ %i.z, %bb.g ], [ %.sroa.0.0.i.i, %bb.f ], !dbg !34062 ; 2 uses
  %.sroa.0.0.i2 = phi ptr [ %i.x, %bb.g ], [ %0, %bb.f ], !dbg !34063
  %i.aa = icmp ugt i8 %i.s, -41, !dbg !34064
  br i1 %i.aa, label %bb.i, label %bb.h, !dbg !34064

bb.h:                                             ; preds = %_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr8as_slice.exit
  %i.ab = add i8 %i.s, 64, !dbg !34065
  %i.ac = tail call i8 @llvm.umin.i8(i8 %i.ab, i8 24), !dbg !34066
  %.sroa.0.0.i.i3 = zext nneg i8 %i.ac to i64, !dbg !34066
  br label %_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr8as_slice.exit6, !dbg !34067

bb.i:                                             ; preds = %_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr8as_slice.exit
  %i.ad = load ptr, ptr %1, align 8, !dbg !34068, !alias.scope !34048, !noundef !261
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !34069
  %i.af = load i64, ptr %i.ae, align 8, !dbg !34069, !alias.scope !34048, !noundef !261
  br label %_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr8as_slice.exit6, !dbg !34070

_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr8as_slice.exit6: ; preds = %bb.h, %bb.i
  %.sroa.01.0.i4 = phi i64 [ %i.af, %bb.i ], [ %.sroa.0.0.i.i3, %bb.h ], !dbg !34071
  %.sroa.0.0.i5 = phi ptr [ %i.ad, %bb.i ], [ %1, %bb.h ], !dbg !34072
  %i.ag = icmp eq i64 %.sroa.01.0.i, %.sroa.01.0.i4, !dbg !34073
  br i1 %i.ag, label %bb.j, label %_RNvXsl_NtCs2mZqlW55729_12polars_utils6pl_strNtB5_10PlSmallStrNtNtCscgRAwXFJnXP_4core3cmp9PartialEq2eqCshquuC4dCYVj_10polars_sql.exit, !dbg !34073

bb.j:                                             ; preds = %_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr8as_slice.exit6
  %bcmp.i = tail call i32 @bcmp(ptr %.sroa.0.0.i2, ptr %.sroa.0.0.i5, i64 %.sroa.01.0.i), !dbg !34074
  %i.ah = icmp eq i32 %bcmp.i, 0, !dbg !34074
  br label %_RNvXsl_NtCs2mZqlW55729_12polars_utils6pl_strNtB5_10PlSmallStrNtNtCscgRAwXFJnXP_4core3cmp9PartialEq2eqCshquuC4dCYVj_10polars_sql.exit, !dbg !34075
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind optsize willreturn memory(argmem: read) uwtable
define internal fastcc noundef zeroext i1 @_RNvXsl_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3opsNtB5_16FillNullStrategyNtNtCscgRAwXFJnXP_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 4 captures(none) dereferenceable(12) %0, ptr noalias noundef nonnull readonly align 4 captures(none) dereferenceable(12) %1) unnamed_addr #14 !dbg !34076 {
bb.a:
  %i.a = load i32, ptr %0, align 4, !dbg !34096, !range !34087, !noundef !261 ; 2 uses
  %i.b = load i32, ptr %1, align 4, !dbg !34097, !range !34087, !noundef !261
  %i.c = icmp eq i32 %i.a, %i.b, !dbg !34098
  br i1 %i.c, label %bb.c, label %bb.b, !dbg !34098

bb.b:                                             ; preds = %bb.i, %bb.f, %bb.c, %bb.a, %bb.j, %bb.k, %bb.g, %bb.h
  %.sroa.0.0 = phi i1 [ false, %bb.a ], [ %i.v, %bb.h ], [ true, %bb.c ], [ %i.r, %bb.g ], [ %i.aa, %bb.k ], [ false, %bb.f ], [ %i.w, %bb.j ], [ false, %bb.i ], !dbg !34099
  ret i1 %.sroa.0.0, !dbg !34100

bb.c:                                             ; preds = %bb.a
  switch i32 %i.a, label %bb.b [
    i32 0, label %bb.d
    i32 1, label %bb.e
  ], !dbg !34098

bb.d:                                             ; preds = %bb.c
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 4, !dbg !34101
  %i.e = load i32, ptr %i.d, align 4, !dbg !34101, !range !518, !noundef !261
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !34101
  %i.g = trunc nuw i32 %i.e to i1, !dbg !34102
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 4, !dbg !34101
  %i.i = load i32, ptr %i.h, align 4, !dbg !34101, !range !518, !noundef !261
  %i.j = trunc nuw i32 %i.i to i1, !dbg !34102    ; 2 uses
  br i1 %i.g, label %bb.f, label %bb.g, !dbg !34102

bb.e:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 4, !dbg !34103
  %i.l = load i32, ptr %i.k, align 4, !dbg !34103, !range !518, !noundef !261
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !34103
  %i.n = trunc nuw i32 %i.l to i1, !dbg !34104
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 4, !dbg !34103
  %i.p = load i32, ptr %i.o, align 4, !dbg !34103, !range !518, !noundef !261
  %i.q = trunc nuw i32 %i.p to i1, !dbg !34104    ; 2 uses
  br i1 %i.n, label %bb.i, label %bb.j, !dbg !34104

bb.f:                                             ; preds = %bb.d
  br i1 %i.j, label %bb.h, label %bb.b, !dbg !34102

bb.g:                                             ; preds = %bb.d
  %i.r = xor i1 %i.j, true, !dbg !34102
  br label %bb.b, !dbg !34102

bb.h:                                             ; preds = %bb.f
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !34101
  %i.t = load i32, ptr %i.f, align 4, !dbg !34105, !noundef !261
  %i.u = load i32, ptr %i.s, align 4, !dbg !34106, !noundef !261
  %i.v = icmp eq i32 %i.t, %i.u, !dbg !34105
  br label %bb.b, !dbg !34107

bb.i:                                             ; preds = %bb.e
  br i1 %i.q, label %bb.k, label %bb.b, !dbg !34104

bb.j:                                             ; preds = %bb.e
  %i.w = xor i1 %i.q, true, !dbg !34104
  br label %bb.b, !dbg !34104

bb.k:                                             ; preds = %bb.i
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !34103
  %i.y = load i32, ptr %i.m, align 4, !dbg !34108, !noundef !261
  %i.z = load i32, ptr %i.x, align 4, !dbg !34109, !noundef !261
  %i.aa = icmp eq i32 %i.y, %i.z, !dbg !34108
  br label %bb.b, !dbg !34110
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind optsize willreturn memory(argmem: read) uwtable
define internal fastcc noundef zeroext i1 @_RNvXsu_NtNtCsfcROwRM8ZtH_11polars_plan5plans7optionsNtB5_15FunctionOptionsNtNtCscgRAwXFJnXP_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 2 captures(none) dereferenceable(6) %0, ptr noalias noundef nonnull readonly align 2 captures(none) dereferenceable(6) %1) unnamed_addr #14 !dbg !34111 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4, !dbg !34144
  %i.b = load i8, ptr %i.a, align 2, !dbg !34144, !range !343, !noundef !261
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 4, !dbg !34144
  %i.d = load i8, ptr %i.c, align 2, !dbg !34144, !range !343, !noundef !261
  %i.e = icmp eq i8 %i.b, %i.d, !dbg !34144
  br i1 %i.e, label %bb.b, label %bb.d, !dbg !34127

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 2, !dbg !34145
  %i.g = load i16, ptr %i.f, align 2, !dbg !34145, !noundef !261
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 2, !dbg !34145
  %i.i = load i16, ptr %i.h, align 2, !dbg !34145, !noundef !261
  %i.j = icmp eq i16 %i.g, %i.i, !dbg !34145
  br i1 %i.j, label %bb.c, label %bb.d, !dbg !34130

bb.c:                                             ; preds = %bb.b
  %i.k = load i8, ptr %0, align 2, !dbg !34146, !range !430, !noundef !261 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 1, !dbg !34146
  %.not = icmp eq i8 %i.k, 2, !dbg !34146
  %i.m = load i8, ptr %1, align 2, !dbg !34146, !range !430, !noundef !261 ; 2 uses
  br i1 %.not, label %bb.f, label %bb.e, !dbg !34147

bb.d:                                             ; preds = %bb.g, %bb.e, %bb.a, %bb.b, %bb.h, %bb.f
  %.sroa.0.0.shrunk = phi i1 [ %i.s, %bb.h ], [ true, %bb.g ], [ false, %bb.e ], [ false, %bb.a ], [ %i.p, %bb.f ], [ false, %bb.b ]
  ret i1 %.sroa.0.0.shrunk, !dbg !34148

bb.e:                                             ; preds = %bb.c
end_hunk_3
