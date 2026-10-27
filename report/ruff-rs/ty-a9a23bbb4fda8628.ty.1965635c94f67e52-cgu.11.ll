Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruff-rs/original/ty-a9a23bbb4fda8628.ty.1965635c94f67e52-cgu.11?download=true
inline.NumInlined: 580
inline.NumDeleted: 299
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_RINvMNtCsdXn3xun2LFY_7argfile8argumentNtB3_8Argument5parseNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringECs2bbjMbSOFjy_2ty:bb.a
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2bbjMbSOFjy_2ty(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringECs2bbjMbSOFjy_2ty.exit unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.y = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2bbjMbSOFjy_2ty(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %common.resume unwind label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.z = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #28
  unreachable

common.resume:                                    ; preds = %bb.b, %bb.k
  %common.resume.op = phi { ptr, i32 } [ %i.y, %bb.k ], [ %i.l, %bb.b ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringECs2bbjMbSOFjy_2ty.exit: ; preds = %bb.j
  call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2bbjMbSOFjy_2ty(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
  br label %bb.f

bb.m:                                             ; preds = %bb.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.v, ptr nonnull align 1 %i.m, i64 %i.n, i1 false)
  br label %bb.j

bb.n:                                             ; preds = %bb.h
  unreachable

bb.o:                                             ; preds = %bb.b
  %i.aa = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #28
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden noundef align 8 ptr @_RINvMs1_NtCsgQfI1edjipl_9hashbrown3mapINtB6_7HashMapNtNtCs4NRVxsYgnAr_4core3any6TypeIdINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtBQ_3AnyNtNtBS_6marker4SendNtB26_4SyncEL_EINtNtBS_4hash18BuildHasherDefaultNtNtNtCsj06xRw2G0SJ_18tracing_subscriber8registry10extensions8IdHasherEE7get_mutBO_ECs2bbjMbSOFjy_2ty(ptr noalias noundef align 8 captures(address, read_provenance) dereferenceable(32) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load i64, ptr %i.a, align 8, !noundef !3
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.e = tail call noundef i64 @_RINvYINtNtCs4NRVxsYgnAr_4core4hash18BuildHasherDefaultNtNtNtCsj06xRw2G0SJ_18tracing_subscriber8registry10extensions8IdHasherENtB6_11BuildHasher8hash_oneRNtNtB8_3any6TypeIdECs2bbjMbSOFjy_2ty(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.d, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %1) ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !38)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !39)
  %i.f = lshr i64 %i.e, 57
  %i.g = trunc nuw nsw i64 %i.f to i8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = load i64, ptr %i.h, align 8, !alias.scope !40, !noundef !3 ; 2 uses
  %i.j = load ptr, ptr %0, align 8, !alias.scope !40, !nonnull !3, !noundef !3 ; 2 uses
  %i.k = insertelement <16 x i8> poison, i8 %i.g, i64 0
  %i.l = shufflevector <16 x i8> %i.k, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.c

bb.c:                                             ; preds = %bb.e, %bb.b
  %.sroa.9.0.i.i = phi i64 [ 0, %bb.b ], [ %i.ac, %bb.e ]
  %.pn.i.i = phi i64 [ %i.e, %bb.b ], [ %i.ad, %bb.e ]
  %.sroa.01.0.i.i = and i64 %.pn.i.i, %i.i        ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 %.sroa.01.0.i.i
  %.sroa.0.0.copyload.i26.i = load <16 x i8>, ptr %i.m, align 1, !noalias !41 ; 2 uses
  %i.n = icmp eq <16 x i8> %.sroa.0.0.copyload.i26.i, %i.l
  %i.o = bitcast <16 x i1> %i.n to i16            ; 2 uses
  %.not.i.not32.i = icmp eq i16 %i.o, 0
  br i1 %.not.i.not32.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.c, %bb.d
  %.sroa.06.0.i33.i = phi i16 [ %i.ab, %bb.d ], [ %i.o, %bb.c ] ; 3 uses
  %i.p = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.06.0.i33.i, i1 true)
  %i.q = zext nneg i16 %i.p to i64
  %i.r = add i64 %.sroa.01.0.i.i, %i.q
  %i.s = and i64 %i.r, %i.i
  %i.t = sub nsw i64 0, %i.s
  %i.u = getelementptr inbounds [32 x i8], ptr %i.j, i64 %i.t ; 2 uses
  %i.v = getelementptr inbounds i8, ptr %i.u, i64 -32
  %i.w = tail call noundef zeroext i1 @_RNvXCsgQfI1edjipl_9hashbrownNtNtCs4NRVxsYgnAr_4core3any6TypeIdINtB2_10EquivalentBq_E10equivalentCs2bbjMbSOFjy_2ty(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.v), !noalias !42
  br i1 %i.w, label %_RINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB6_8RawTableTNtNtCs4NRVxsYgnAr_4core3any6TypeIdINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtBS_3AnyNtNtBU_6marker4SendNtB28_4SyncEL_EEE4findNCINvNtB8_3map14equivalent_keyBQ_BQ_B1o_E0ECs2bbjMbSOFjy_2ty.exit, label %bb.d, !prof !7

._crit_edge.i:                                    ; preds = %bb.d, %bb.c
  %i.x = icmp eq <16 x i8> %.sroa.0.0.copyload.i26.i, splat (i8 -1)
  %i.y = bitcast <16 x i1> %i.x to i16
  %i.z = icmp eq i16 %i.y, 0
  br i1 %i.z, label %bb.e, label %_RINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB6_8RawTableTNtNtCs4NRVxsYgnAr_4core3any6TypeIdINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtBS_3AnyNtNtBU_6marker4SendNtB28_4SyncEL_EEE4findNCINvNtB8_3map14equivalent_keyBQ_BQ_B1o_E0ECs2bbjMbSOFjy_2ty.exit, !prof !6

bb.d:                                             ; preds = %.lr.ph.i
  %i.aa = add i16 %.sroa.06.0.i33.i, -1
  %i.ab = and i16 %i.aa, %.sroa.06.0.i33.i        ; 2 uses
  %.not.i.not.i = icmp eq i16 %i.ab, 0
  br i1 %.not.i.not.i, label %._crit_edge.i, label %.lr.ph.i

bb.e:                                             ; preds = %._crit_edge.i
  %i.ac = add i64 %.sroa.9.0.i.i, 16              ; 2 uses
  %i.ad = add i64 %.sroa.01.0.i.i, %i.ac
  br label %bb.c

_RINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB6_8RawTableTNtNtCs4NRVxsYgnAr_4core3any6TypeIdINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtBS_3AnyNtNtBU_6marker4SendNtB28_4SyncEL_EEE4findNCINvNtB8_3map14equivalent_keyBQ_BQ_B1o_E0ECs2bbjMbSOFjy_2ty.exit: ; preds = %._crit_edge.i, %.lr.ph.i
  %i.ae = phi ptr [ %i.u, %.lr.ph.i ], [ null, %._crit_edge.i ] ; 2 uses
  %.not = icmp eq ptr %i.ae, null
  %i.af = getelementptr inbounds i8, ptr %i.ae, i64 -16
  %.sroa.0.1 = select i1 %.not, ptr null, ptr %i.af
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %_RINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB6_8RawTableTNtNtCs4NRVxsYgnAr_4core3any6TypeIdINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtBS_3AnyNtNtBU_6marker4SendNtB28_4SyncEL_EEE4findNCINvNtB8_3map14equivalent_keyBQ_BQ_B1o_E0ECs2bbjMbSOFjy_2ty.exit
  %.sroa.0.0 = phi ptr [ %.sroa.0.1, %_RINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB6_8RawTableTNtNtCs4NRVxsYgnAr_4core3any6TypeIdINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtBS_3AnyNtNtBU_6marker4SendNtB28_4SyncEL_EEE4findNCINvNtB8_3map14equivalent_keyBQ_BQ_B1o_E0ECs2bbjMbSOFjy_2ty.exit ], [ null, %bb.a ]
  ret ptr %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RINvMs1_NtCsgQfI1edjipl_9hashbrown3mapINtB6_7HashMapNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufuNtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherE12contains_keyNtBQ_10SystemPathECs2bbjMbSOFjy_2ty(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load i64, ptr %i.a, align 8, !noundef !3
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %_RINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB6_8RawTableTNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufuEE4findNCINvNtB8_3map14equivalent_keyNtBS_10SystemPathBQ_uE0ECs2bbjMbSOFjy_2ty.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.e = tail call noundef i64 @_RINvYNtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherNtNtCs4NRVxsYgnAr_4core4hash11BuildHasher8hash_oneRNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path10SystemPathECs2bbjMbSOFjy_2ty(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.d, ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2) ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !52)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !53)
  %i.f = lshr i64 %i.e, 57
  %i.g = trunc nuw nsw i64 %i.f to i8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = load i64, ptr %i.h, align 8, !alias.scope !54, !noundef !3 ; 2 uses
  %i.j = load ptr, ptr %0, align 8, !alias.scope !54, !nonnull !3, !noundef !3 ; 2 uses
  %i.k = insertelement <16 x i8> poison, i8 %i.g, i64 0
  %i.l = shufflevector <16 x i8> %i.k, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.c

bb.c:                                             ; preds = %bb.e, %bb.b
  %.sroa.9.0.i.i = phi i64 [ 0, %bb.b ], [ %i.ac, %bb.e ]
  %.pn.i.i = phi i64 [ %i.e, %bb.b ], [ %i.ad, %bb.e ]
  %.sroa.01.0.i.i = and i64 %.pn.i.i, %i.i        ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 %.sroa.01.0.i.i
  %.sroa.0.0.copyload.i26.i = load <16 x i8>, ptr %i.m, align 1, !noalias !55 ; 2 uses
  %i.n = icmp eq <16 x i8> %.sroa.0.0.copyload.i26.i, %i.l
  %i.o = bitcast <16 x i1> %i.n to i16            ; 2 uses
  %.not.i.not32.i = icmp eq i16 %i.o, 0
  br i1 %.not.i.not32.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.c, %bb.d
  %.sroa.06.0.i33.i = phi i16 [ %i.ab, %bb.d ], [ %i.o, %bb.c ] ; 3 uses
  %i.p = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.06.0.i33.i, i1 true)
  %i.q = zext nneg i16 %i.p to i64
  %i.r = add i64 %.sroa.01.0.i.i, %i.q
  %i.s = and i64 %i.r, %i.i
  %i.t = sub nsw i64 0, %i.s
  %i.u = getelementptr inbounds [24 x i8], ptr %i.j, i64 %i.t
  %i.v = getelementptr inbounds i8, ptr %i.u, i64 -24
  %i.w = tail call noundef zeroext i1 @_RNvXCsgQfI1edjipl_9hashbrownNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path10SystemPathINtB2_10EquivalentNtBs_13SystemPathBufE10equivalentCs2bbjMbSOFjy_2ty(ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.v), !noalias !56
  br i1 %i.w, label %_RINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB6_8RawTableTNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufuEE4findNCINvNtB8_3map14equivalent_keyNtBS_10SystemPathBQ_uE0ECs2bbjMbSOFjy_2ty.exit, label %bb.d, !prof !7

._crit_edge.i:                                    ; preds = %bb.d, %bb.c
  %i.x = icmp eq <16 x i8> %.sroa.0.0.copyload.i26.i, splat (i8 -1)
  %i.y = bitcast <16 x i1> %i.x to i16
  %i.z = icmp eq i16 %i.y, 0
  br i1 %i.z, label %bb.e, label %_RINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB6_8RawTableTNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufuEE4findNCINvNtB8_3map14equivalent_keyNtBS_10SystemPathBQ_uE0ECs2bbjMbSOFjy_2ty.exit, !prof !6

bb.d:                                             ; preds = %.lr.ph.i
  %i.aa = add i16 %.sroa.06.0.i33.i, -1
  %i.ab = and i16 %i.aa, %.sroa.06.0.i33.i        ; 2 uses
  %.not.i.not.i = icmp eq i16 %i.ab, 0
  br i1 %.not.i.not.i, label %._crit_edge.i, label %.lr.ph.i

bb.e:                                             ; preds = %._crit_edge.i
  %i.ac = add i64 %.sroa.9.0.i.i, 16              ; 2 uses
  %i.ad = add i64 %.sroa.01.0.i.i, %i.ac
  br label %bb.c

_RINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB6_8RawTableTNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufuEE4findNCINvNtB8_3map14equivalent_keyNtBS_10SystemPathBQ_uE0ECs2bbjMbSOFjy_2ty.exit: ; preds = %._crit_edge.i, %.lr.ph.i, %bb.a
  %.sroa.0.0 = phi i1 [ false, %bb.a ], [ true, %.lr.ph.i ], [ false, %._crit_edge.i ]
  ret i1 %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull align 16 ptr @_RINvMs5_NvCs4o81Y09oZk1_10ty_project1__NtB8_7Project8settingsNtNtB8_2db15ProjectDatabaseECs2bbjMbSOFjy_2ty(i32 noundef range(i32 1, 0) %0, i32 noundef %1, ptr noundef nonnull align 8 %2) unnamed_addr #0 {
bb.a:
  %i.a = tail call { ptr, ptr } @_RNvYNtNtCs4o81Y09oZk1_10ty_project2db15ProjectDatabaseNtNtCs45bxiIjzMqg_5salsa5zalsa13ZalsaDatabase6zalsasCs2bbjMbSOFjy_2ty(ptr noundef nonnull align 8 %2) ; 2 uses
  %i.b = extractvalue { ptr, ptr } %i.a, 0        ; 2 uses
  %i.c = extractvalue { ptr, ptr } %i.a, 1
  %i.d = tail call noundef nonnull align 8 ptr @_RNvMs0_NvCs4o81Y09oZk1_10ty_project1__NtB7_7Project11ingredient_(ptr noundef nonnull align 8 %i.b)
  %i.e = tail call noundef nonnull align 8 ptr @_RNvMs0_NtCs45bxiIjzMqg_5salsa5inputINtB5_14IngredientImplNtCs4o81Y09oZk1_10ty_project7ProjectE5fieldCs2bbjMbSOFjy_2ty(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.d, ptr noundef nonnull align 8 %i.b, ptr noundef nonnull align 8 %i.c, i32 noundef %0, i32 noundef %1, i64 noundef 3)
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 280
  %i.g = load ptr, ptr %i.f, align 8, !nonnull !3, !noundef !3
  ret ptr %i.g
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RINvNtCs3pBv9WGWlWf_12tracing_core10dispatcher11get_defaultbNCINvMNtCs4o81Y09oZk1_10ty_project2dbNtB12_15ProjectDatabase3newNtNtNtCs56aZGHL6Dc6_7ruff_db6system2os8OsSystemNtNtCsfDzkztWVnn_18ty_module_resolver8strategy16FallibleStrategyEs1_0ECs2bbjMbSOFjy_2ty(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load atomic i64, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher12SCOPED_COUNT acquire, align 8
  %i.b = icmp eq i64 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.c = load atomic i64, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher11GLOBAL_INIT seq_cst, align 8
  %i.d = icmp eq i64 %i.c, 2                      ; 3 uses
  %1 = load ptr, ptr %0, align 8, !noalias !69, !nonnull !3, !align !8, !noundef !3
  %_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher15GLOBAL_DISPATCH.val = load i64, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher15GLOBAL_DISPATCH, align 8, !range !4
  %_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher4NONE.val = load i64, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher4NONE, align 8, !range !4
  %2 = select i1 %i.d, i64 %_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher15GLOBAL_DISPATCH.val, i64 %_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher4NONE.val
  %i.e = trunc nuw i64 %2 to i1
  %.val = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher15GLOBAL_DISPATCH, i64 8), align 8, !nonnull !3
  %.val11 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher4NONE, i64 8), align 8, !nonnull !3
  %3 = select i1 %i.d, ptr %.val, ptr %.val11     ; 2 uses
  %.val12 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher15GLOBAL_DISPATCH, i64 16), align 8, !nonnull !3, !align !8
  %.val13 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher4NONE, i64 16), align 8, !nonnull !3, !align !8
  %4 = select i1 %i.d, ptr %.val12, ptr %.val13   ; 2 uses
  br i1 %i.e, label %bb.c, label %_RNCINvMNtCs4o81Y09oZk1_10ty_project2dbNtB5_15ProjectDatabase3newNtNtNtCs56aZGHL6Dc6_7ruff_db6system2os8OsSystemNtNtCsfDzkztWVnn_18ty_module_resolver8strategy16FallibleStrategyEs1_0Cs2bbjMbSOFjy_2ty.exit

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.g = load i64, ptr %i.f, align 8, !range !9, !invariant.load !3, !noalias !69
  %i.h = add nsw i64 %i.g, -1
  %i.i = and i64 %i.h, -16
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 %i.i
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  br label %_RNCINvMNtCs4o81Y09oZk1_10ty_project2dbNtB5_15ProjectDatabase3newNtNtNtCs56aZGHL6Dc6_7ruff_db6system2os8OsSystemNtNtCsfDzkztWVnn_18ty_module_resolver8strategy16FallibleStrategyEs1_0Cs2bbjMbSOFjy_2ty.exit

_RNCINvMNtCs4o81Y09oZk1_10ty_project2dbNtB5_15ProjectDatabase3newNtNtNtCs56aZGHL6Dc6_7ruff_db6system2os8OsSystemNtNtCsfDzkztWVnn_18ty_module_resolver8strategy16FallibleStrategyEs1_0Cs2bbjMbSOFjy_2ty.exit: ; preds = %bb.b, %bb.c
  %.sroa.0.0.i = phi ptr [ %i.k, %bb.c ], [ %3, %bb.b ]
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.m = load ptr, ptr %i.l, align 8, !invariant.load !3, !noalias !69, !nonnull !3
  %i.n = tail call noundef zeroext i1 %i.m(ptr noundef nonnull %.sroa.0.0.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %1), !noalias !69, !inline_history !59
  br label %_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCs3pBv9WGWlWf_12tracing_core10dispatcher5StateE8try_withNCINvBW_11get_defaultbNCINvMNtCs4o81Y09oZk1_10ty_project2dbNtB2k_15ProjectDatabase3newNtNtNtCs56aZGHL6Dc6_7ruff_db6system2os8OsSystemNtNtCsfDzkztWVnn_18ty_module_resolver8strategy16FallibleStrategyEs1_0E0bECs2bbjMbSOFjy_2ty.exit

bb.d:                                             ; preds = %bb.a
  %i.o = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher13CURRENT_STATE0023___RUST_STD_INTERNAL_VAL) ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 40
  %i.q = load i8, ptr %i.p, align 8, !range !10, !noundef !3
  switch i8 %i.q, label %default.unreachable [
    i8 0, label %_RNvYNCNKNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher13CURRENT_STATE00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1c_6option6OptionQIB1R_NtB8_5StateEEEE9call_onceCs2bbjMbSOFjy_2ty.exit.i
    i8 1, label %_RNvYNCNKNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher13CURRENT_STATE00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1c_6option6OptionQIB1R_NtB8_5StateEEEE9call_onceCs2bbjMbSOFjy_2ty.exit.thread2.i
    i8 2, label %_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCs3pBv9WGWlWf_12tracing_core10dispatcher5StateE8try_withNCINvBW_11get_defaultbNCINvMNtCs4o81Y09oZk1_10ty_project2dbNtB2k_15ProjectDatabase3newNtNtNtCs56aZGHL6Dc6_7ruff_db6system2os8OsSystemNtNtCsfDzkztWVnn_18ty_module_resolver8strategy16FallibleStrategyEs1_0E0bECs2bbjMbSOFjy_2ty.exit.thread
  ], !prof !70

default.unreachable:                              ; preds = %bb.d
  unreachable

_RNvYNCNKNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher13CURRENT_STATE00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1c_6option6OptionQIB1R_NtB8_5StateEEEE9call_onceCs2bbjMbSOFjy_2ty.exit.i: ; preds = %bb.d
  %i.r = tail call noundef ptr @_RNvMNtNtNtNtCs2AWtUsOyxgP_3std3sys12thread_local6native5eagerINtB2_7StorageNtNtCs3pBv9WGWlWf_12tracing_core10dispatcher5StateE10initializeCs2bbjMbSOFjy_2ty(ptr noundef nonnull align 8 %i.o) ; 2 uses
  %i.s = icmp eq ptr %i.r, null
  br i1 %i.s, label %_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCs3pBv9WGWlWf_12tracing_core10dispatcher5StateE8try_withNCINvBW_11get_defaultbNCINvMNtCs4o81Y09oZk1_10ty_project2dbNtB2k_15ProjectDatabase3newNtNtNtCs56aZGHL6Dc6_7ruff_db6system2os8OsSystemNtNtCsfDzkztWVnn_18ty_module_resolver8strategy16FallibleStrategyEs1_0E0bECs2bbjMbSOFjy_2ty.exit.thread, label %_RNvYNCNKNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher13CURRENT_STATE00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1c_6option6OptionQIB1R_NtB8_5StateEEEE9call_onceCs2bbjMbSOFjy_2ty.exit.thread2.i

_RNvYNCNKNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher13CURRENT_STATE00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1c_6option6OptionQIB1R_NtB8_5StateEEEE9call_onceCs2bbjMbSOFjy_2ty.exit.thread2.i: ; preds = %_RNvYNCNKNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher13CURRENT_STATE00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1c_6option6OptionQIB1R_NtB8_5StateEEEE9call_onceCs2bbjMbSOFjy_2ty.exit.i, %bb.d
  %.sroa.0.0.i.i4.i = phi ptr [ %i.r, %_RNvYNCNKNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher13CURRENT_STATE00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1c_6option6OptionQIB1R_NtB8_5StateEEEE9call_onceCs2bbjMbSOFjy_2ty.exit.i ], [ %i.o, %bb.d ] ; 8 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i4.i, i64 32 ; 4 uses
  %i.u = load i8, ptr %i.t, align 1, !range !11, !noundef !3
  %i.v = trunc nuw i8 %i.u to i1
  store i8 0, ptr %i.t, align 1
  br i1 %i.v, label %bb.g, label %bb.e

bb.e:                                             ; preds = %_RNvYNCNKNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher13CURRENT_STATE00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1c_6option6OptionQIB1R_NtB8_5StateEEEE9call_onceCs2bbjMbSOFjy_2ty.exit.thread2.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !71)
  %i.w = load ptr, ptr %0, align 8, !noalias !71, !nonnull !3, !align !8, !noundef !3
  %i.x = load i64, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher4NONE, align 8, !range !4, !alias.scope !71, !noundef !3
  %i.y = trunc nuw i64 %i.x to i1
  %i.z = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher4NONE, i64 8), align 8, !alias.scope !71, !nonnull !3, !noundef !3 ; 2 uses
  %i.aa = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher4NONE, i64 16), align 8, !alias.scope !71, !nonnull !3, !align !8, !noundef !3 ; 2 uses
  br i1 %i.y, label %bb.f, label %_RNCINvMNtCs4o81Y09oZk1_10ty_project2dbNtB5_15ProjectDatabase3newNtNtNtCs56aZGHL6Dc6_7ruff_db6system2os8OsSystemNtNtCsfDzkztWVnn_18ty_module_resolver8strategy16FallibleStrategyEs1_0Cs2bbjMbSOFjy_2ty.exit.i.i

bb.f:                                             ; preds = %bb.e
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %i.ac = load i64, ptr %i.ab, align 8, !range !9, !invariant.load !3, !noalias !71
  %i.ad = add nsw i64 %i.ac, -1
  %i.ae = and i64 %i.ad, -16
  %i.af = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.ae
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  br label %_RNCINvMNtCs4o81Y09oZk1_10ty_project2dbNtB5_15ProjectDatabase3newNtNtNtCs56aZGHL6Dc6_7ruff_db6system2os8OsSystemNtNtCsfDzkztWVnn_18ty_module_resolver8strategy16FallibleStrategyEs1_0Cs2bbjMbSOFjy_2ty.exit.i.i

_RNCINvMNtCs4o81Y09oZk1_10ty_project2dbNtB5_15ProjectDatabase3newNtNtNtCs56aZGHL6Dc6_7ruff_db6system2os8OsSystemNtNtCsfDzkztWVnn_18ty_module_resolver8strategy16FallibleStrategyEs1_0Cs2bbjMbSOFjy_2ty.exit.i.i: ; preds = %bb.f, %bb.e
  %.sroa.0.0.i.i6.i = phi ptr [ %i.ag, %bb.f ], [ %i.z, %bb.e ]
  %i.ah = getelementptr inbounds nuw i8, ptr %i.aa, i64 40
  %i.ai = load ptr, ptr %i.ah, align 8, !invariant.load !3, !noalias !71, !nonnull !3
  %i.aj = tail call noundef zeroext i1 %i.ai(ptr noundef nonnull %.sroa.0.0.i.i6.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.w), !noalias !71, !inline_history !62
  br label %_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCs3pBv9WGWlWf_12tracing_core10dispatcher5StateE8try_withNCINvBW_11get_defaultbNCINvMNtCs4o81Y09oZk1_10ty_project2dbNtB2k_15ProjectDatabase3newNtNtNtCs56aZGHL6Dc6_7ruff_db6system2os8OsSystemNtNtCsfDzkztWVnn_18ty_module_resolver8strategy16FallibleStrategyEs1_0E0bECs2bbjMbSOFjy_2ty.exit

bb.g:                                             ; preds = %_RNvYNCNKNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher13CURRENT_STATE00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1c_6option6OptionQIB1R_NtB8_5StateEEEE9call_onceCs2bbjMbSOFjy_2ty.exit.thread2.i
  %i.ak = load i64, ptr %.sroa.0.0.i.i4.i, align 8, !noundef !3 ; 2 uses
  %i.al = icmp ult i64 %i.ak, 9223372036854775807
  br i1 %i.al, label %bb.j, label %bb.h, !prof !7

bb.h:                                             ; preds = %bb.g
  invoke void @_RNvNtCs4NRVxsYgnAr_4core4cell30panic_already_mutably_borrowed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @14) #27
          to label %.noexc.i.i unwind label %bb.i

.noexc.i.i:                                       ; preds = %bb.h
  unreachable

bb.i:                                             ; preds = %bb.h
  %i.am = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

bb.j:                                             ; preds = %bb.g
  %i.an = add nuw nsw i64 %i.ak, 1
  store i64 %i.an, ptr %.sroa.0.0.i.i4.i, align 8
  %i.ao = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i4.i, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !72)
  %i.ap = load i64, ptr %i.ao, align 8, !range !12, !alias.scope !72, !noundef !3 ; 2 uses
  %.not.i.i.i.i = icmp eq i64 %i.ap, 2
  br i1 %.not.i.i.i.i, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.aq = load atomic i64, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher11GLOBAL_INIT seq_cst, align 8, !noalias !72
  %i.ar = icmp eq i64 %i.aq, 2
  %_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher15GLOBAL_DISPATCH._RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher4NONE.i.i.i.i = select i1 %i.ar, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher15GLOBAL_DISPATCH, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher4NONE ; 2 uses
  %.pre.i.i = load i64, ptr %_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher15GLOBAL_DISPATCH._RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher4NONE.i.i.i.i, align 8, !range !4, !alias.scope !73
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.as = phi i64 [ %i.ap, %bb.j ], [ %.pre.i.i, %bb.k ]
  %.sroa.0.0.i.i.i.i = phi ptr [ %i.ao, %bb.j ], [ %_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher15GLOBAL_DISPATCH._RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher4NONE.i.i.i.i, %bb.k ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !73)
  %i.at = load ptr, ptr %0, align 8, !noalias !73, !nonnull !3, !align !8, !noundef !3
  %i.au = trunc nuw i64 %i.as to i1
  %i.av = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i, i64 8
  %i.aw = load ptr, ptr %i.av, align 8, !alias.scope !73, !nonnull !3, !noundef !3 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i, i64 16
  %i.ay = load ptr, ptr %i.ax, align 8, !alias.scope !73, !nonnull !3, !align !8, !noundef !3 ; 2 uses
  br i1 %i.au, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  %i.ba = load i64, ptr %i.az, align 8, !range !9, !invariant.load !3, !noalias !73
  %i.bb = add nsw i64 %i.ba, -1
  %i.bc = and i64 %i.bb, -16
  %i.bd = getelementptr inbounds nuw i8, ptr %i.aw, i64 %i.bc
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 16
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %.sroa.0.0.i9.i.i = phi ptr [ %i.be, %bb.m ], [ %i.aw, %bb.l ]
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ay, i64 40
  %i.bg = load ptr, ptr %i.bf, align 8, !invariant.load !3, !noalias !73, !nonnull !3
  %i.bh = invoke noundef zeroext i1 %i.bg(ptr noundef nonnull %.sroa.0.0.i9.i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.at)
          to label %bb.p unwind label %bb.o, !inline_history !59

bb.o:                                             ; preds = %bb.n
  %i.bi = landingpad { ptr, i32 }
          cleanup
  %i.bj = load i64, ptr %.sroa.0.0.i.i4.i, align 8, !noundef !3
  %i.bk = add i64 %i.bj, -1
  store i64 %i.bk, ptr %.sroa.0.0.i.i4.i, align 8
  br label %bb.q

bb.p:                                             ; preds = %bb.n
  %i.bl = load i64, ptr %.sroa.0.0.i.i4.i, align 8, !noundef !3
  %i.bm = add i64 %i.bl, -1
  store i64 %i.bm, ptr %.sroa.0.0.i.i4.i, align 8
  store i8 1, ptr %i.t, align 8
  br label %_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCs3pBv9WGWlWf_12tracing_core10dispatcher5StateE8try_withNCINvBW_11get_defaultbNCINvMNtCs4o81Y09oZk1_10ty_project2dbNtB2k_15ProjectDatabase3newNtNtNtCs56aZGHL6Dc6_7ruff_db6system2os8OsSystemNtNtCsfDzkztWVnn_18ty_module_resolver8strategy16FallibleStrategyEs1_0E0bECs2bbjMbSOFjy_2ty.exit

bb.q:                                             ; preds = %bb.o, %bb.i
  %.pn.i.i = phi { ptr, i32 } [ %i.am, %bb.i ], [ %i.bi, %bb.o ]
  store i8 1, ptr %i.t, align 8
  resume { ptr, i32 } %.pn.i.i

_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCs3pBv9WGWlWf_12tracing_core10dispatcher5StateE8try_withNCINvBW_11get_defaultbNCINvMNtCs4o81Y09oZk1_10ty_project2dbNtB2k_15ProjectDatabase3newNtNtNtCs56aZGHL6Dc6_7ruff_db6system2os8OsSystemNtNtCsfDzkztWVnn_18ty_module_resolver8strategy16FallibleStrategyEs1_0E0bECs2bbjMbSOFjy_2ty.exit: ; preds = %bb.p, %_RNCINvMNtCs4o81Y09oZk1_10ty_project2dbNtB5_15ProjectDatabase3newNtNtNtCs56aZGHL6Dc6_7ruff_db6system2os8OsSystemNtNtCsfDzkztWVnn_18ty_module_resolver8strategy16FallibleStrategyEs1_0Cs2bbjMbSOFjy_2ty.exit.i.i, %_RNCINvMNtCs4o81Y09oZk1_10ty_project2dbNtB5_15ProjectDatabase3newNtNtNtCs56aZGHL6Dc6_7ruff_db6system2os8OsSystemNtNtCsfDzkztWVnn_18ty_module_resolver8strategy16FallibleStrategyEs1_0Cs2bbjMbSOFjy_2ty.exit9, %_RNCINvMNtCs4o81Y09oZk1_10ty_project2dbNtB5_15ProjectDatabase3newNtNtNtCs56aZGHL6Dc6_7ruff_db6system2os8OsSystemNtNtCsfDzkztWVnn_18ty_module_resolver8strategy16FallibleStrategyEs1_0Cs2bbjMbSOFjy_2ty.exit
  %.sroa.0.0 = phi i1 [ %i.n, %_RNCINvMNtCs4o81Y09oZk1_10ty_project2dbNtB5_15ProjectDatabase3newNtNtNtCs56aZGHL6Dc6_7ruff_db6system2os8OsSystemNtNtCsfDzkztWVnn_18ty_module_resolver8strategy16FallibleStrategyEs1_0Cs2bbjMbSOFjy_2ty.exit ], [ %i.ca, %_RNCINvMNtCs4o81Y09oZk1_10ty_project2dbNtB5_15ProjectDatabase3newNtNtNtCs56aZGHL6Dc6_7ruff_db6system2os8OsSystemNtNtCsfDzkztWVnn_18ty_module_resolver8strategy16FallibleStrategyEs1_0Cs2bbjMbSOFjy_2ty.exit9 ], [ %i.bh, %bb.p ], [ %i.aj, %_RNCINvMNtCs4o81Y09oZk1_10ty_project2dbNtB5_15ProjectDatabase3newNtNtNtCs56aZGHL6Dc6_7ruff_db6system2os8OsSystemNtNtCsfDzkztWVnn_18ty_module_resolver8strategy16FallibleStrategyEs1_0Cs2bbjMbSOFjy_2ty.exit.i.i ]
  ret i1 %.sroa.0.0

_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCs3pBv9WGWlWf_12tracing_core10dispatcher5StateE8try_withNCINvBW_11get_defaultbNCINvMNtCs4o81Y09oZk1_10ty_project2dbNtB2k_15ProjectDatabase3newNtNtNtCs56aZGHL6Dc6_7ruff_db6system2os8OsSystemNtNtCsfDzkztWVnn_18ty_module_resolver8strategy16FallibleStrategyEs1_0E0bECs2bbjMbSOFjy_2ty.exit.thread: ; preds = %bb.d, %_RNvYNCNKNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher13CURRENT_STATE00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1c_6option6OptionQIB1R_NtB8_5StateEEEE9call_onceCs2bbjMbSOFjy_2ty.exit.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !74)
  %i.bn = load ptr, ptr %0, align 8, !noalias !74, !nonnull !3, !align !8, !noundef !3
  %i.bo = load i64, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher4NONE, align 8, !range !4, !alias.scope !74, !noundef !3
  %i.bp = trunc nuw i64 %i.bo to i1
  %i.bq = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher4NONE, i64 8), align 8, !alias.scope !74, !nonnull !3, !noundef !3 ; 2 uses
  %i.br = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher4NONE, i64 16), align 8, !alias.scope !74, !nonnull !3, !align !8, !noundef !3 ; 2 uses
  br i1 %i.bp, label %bb.r, label %_RNCINvMNtCs4o81Y09oZk1_10ty_project2dbNtB5_15ProjectDatabase3newNtNtNtCs56aZGHL6Dc6_7ruff_db6system2os8OsSystemNtNtCsfDzkztWVnn_18ty_module_resolver8strategy16FallibleStrategyEs1_0Cs2bbjMbSOFjy_2ty.exit9

bb.r:                                             ; preds = %_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCs3pBv9WGWlWf_12tracing_core10dispatcher5StateE8try_withNCINvBW_11get_defaultbNCINvMNtCs4o81Y09oZk1_10ty_project2dbNtB2k_15ProjectDatabase3newNtNtNtCs56aZGHL6Dc6_7ruff_db6system2os8OsSystemNtNtCsfDzkztWVnn_18ty_module_resolver8strategy16FallibleStrategyEs1_0E0bECs2bbjMbSOFjy_2ty.exit.thread
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 16
  %i.bt = load i64, ptr %i.bs, align 8, !range !9, !invariant.load !3, !noalias !74
  %i.bu = add nsw i64 %i.bt, -1
  %i.bv = and i64 %i.bu, -16
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bq, i64 %i.bv
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 16
  br label %_RNCINvMNtCs4o81Y09oZk1_10ty_project2dbNtB5_15ProjectDatabase3newNtNtNtCs56aZGHL6Dc6_7ruff_db6system2os8OsSystemNtNtCsfDzkztWVnn_18ty_module_resolver8strategy16FallibleStrategyEs1_0Cs2bbjMbSOFjy_2ty.exit9

_RNCINvMNtCs4o81Y09oZk1_10ty_project2dbNtB5_15ProjectDatabase3newNtNtNtCs56aZGHL6Dc6_7ruff_db6system2os8OsSystemNtNtCsfDzkztWVnn_18ty_module_resolver8strategy16FallibleStrategyEs1_0Cs2bbjMbSOFjy_2ty.exit9: ; preds = %_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCs3pBv9WGWlWf_12tracing_core10dispatcher5StateE8try_withNCINvBW_11get_defaultbNCINvMNtCs4o81Y09oZk1_10ty_project2dbNtB2k_15ProjectDatabase3newNtNtNtCs56aZGHL6Dc6_7ruff_db6system2os8OsSystemNtNtCsfDzkztWVnn_18ty_module_resolver8strategy16FallibleStrategyEs1_0E0bECs2bbjMbSOFjy_2ty.exit.thread, %bb.r
  %.sroa.0.0.i8 = phi ptr [ %i.bx, %bb.r ], [ %i.bq, %_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCs3pBv9WGWlWf_12tracing_core10dispatcher5StateE8try_withNCINvBW_11get_defaultbNCINvMNtCs4o81Y09oZk1_10ty_project2dbNtB2k_15ProjectDatabase3newNtNtNtCs56aZGHL6Dc6_7ruff_db6system2os8OsSystemNtNtCsfDzkztWVnn_18ty_module_resolver8strategy16FallibleStrategyEs1_0E0bECs2bbjMbSOFjy_2ty.exit.thread ]
  %i.by = getelementptr inbounds nuw i8, ptr %i.br, i64 40
  %i.bz = load ptr, ptr %i.by, align 8, !invariant.load !3, !noalias !74, !nonnull !3
  %i.ca = tail call noundef zeroext i1 %i.bz(ptr noundef nonnull %.sroa.0.0.i8, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.bn), !noalias !74, !inline_history !59
  br label %_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCs3pBv9WGWlWf_12tracing_core10dispatcher5StateE8try_withNCINvBW_11get_defaultbNCINvMNtCs4o81Y09oZk1_10ty_project2dbNtB2k_15ProjectDatabase3newNtNtNtCs56aZGHL6Dc6_7ruff_db6system2os8OsSystemNtNtCsfDzkztWVnn_18ty_module_resolver8strategy16FallibleStrategyEs1_0E0bECs2bbjMbSOFjy_2ty.exit
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCs1hjZZAukk1a_12thread_local11ThreadLocalINtNtB4_4cell7RefCellINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCs3pBv9WGWlWf_12tracing_core8metadata11LevelFilterEEEECs2bbjMbSOFjy_2ty(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(512) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !77)
  br label %bb.b

bb.b:                                             ; preds = %.backedge.i, %bb.a
  %.sroa.0.0.idx12.i = phi i64 [ 0, %bb.a ], [ %.sroa.0.0.add.i, %.backedge.i ] ; 2 uses
  %.sroa.7.011.i = phi i64 [ 0, %bb.a ], [ %i.a, %.backedge.i ] ; 2 uses
  %.sroa.0.0.ptr.i = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.0.0.idx12.i
  %.sroa.0.0.add.i = add nuw nsw i64 %.sroa.0.0.idx12.i, 8 ; 2 uses
  %i.a = add nuw nsw i64 %.sroa.7.011.i, 1
  %i.b = load ptr, ptr %.sroa.0.0.ptr.i, align 8, !alias.scope !77, !noundef !3 ; 2 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %.backedge.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = shl nuw i64 1, %.sroa.7.011.i
  tail call fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxSINtCs1hjZZAukk1a_12thread_local5EntryINtNtB4_4cell7RefCellINtNtBG_3vec3VecNtNtCs3pBv9WGWlWf_12tracing_core8metadata11LevelFilterEEEEECs2bbjMbSOFjy_2ty(ptr nonnull %i.b, i64 %i.d), !noalias !77
  br label %.backedge.i

.backedge.i:                                      ; preds = %bb.c, %bb.b
  %i.e = icmp eq i64 %.sroa.0.0.add.i, 504
  br i1 %i.e, label %_RNvXs1_Cs1hjZZAukk1a_12thread_localINtB5_11ThreadLocalINtNtCs4NRVxsYgnAr_4core4cell7RefCellINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCs3pBv9WGWlWf_12tracing_core8metadata11LevelFilterEEENtNtNtBV_3ops4drop4Drop4dropCs2bbjMbSOFjy_2ty.exit, label %bb.b

_RNvXs1_Cs1hjZZAukk1a_12thread_localINtB5_11ThreadLocalINtNtCs4NRVxsYgnAr_4core4cell7RefCellINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCs3pBv9WGWlWf_12tracing_core8metadata11LevelFilterEEENtNtNtBV_3ops4drop4Drop4dropCs2bbjMbSOFjy_2ty.exit: ; preds = %.backedge.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCs1hjZZAukk1a_12thread_local5EntryINtNtB4_4cell7RefCellINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCs3pBv9WGWlWf_12tracing_core8metadata11LevelFilterEEEECs2bbjMbSOFjy_2ty(ptr noalias noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load i8, ptr %i.a, align 8, !range !11, !alias.scope !80, !noundef !3
end_hunk_0
