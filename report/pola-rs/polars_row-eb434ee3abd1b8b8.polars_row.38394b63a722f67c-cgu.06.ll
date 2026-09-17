Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pola-rs/original/polars_row-eb434ee3abd1b8b8.polars_row.38394b63a722f67c-cgu.06?download=true
inline.NumInlined: 465
inline.NumDeleted: 212
begin_hunk_0_@_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs8774dFTUdNv_12polars_arrow5array15fixed_size_list18FixedSizeListArrayECs4PheDXcg4wa_10polars_row:bb.a
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapEECs4PheDXcg4wa_10polars_row.exit5, !dbg !1281

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapEECs4PheDXcg4wa_10polars_row.exit5: ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EECs4PheDXcg4wa_10polars_row.exit, %bb.j
  ret void, !dbg !1267

bb.k:                                             ; preds = %bb.i, %bb.b
  %i.x = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #22, !dbg !1267
  unreachable, !dbg !1267

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapEECs4PheDXcg4wa_10polars_row.exit: ; preds = %.body, %bb.i
  resume { ptr, i32 } %.pn, !dbg !1267
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs8774dFTUdNv_12polars_arrow5array7struct_11StructArrayECs4PheDXcg4wa_10polars_row(ptr noalias noundef align 8 dereferenceable(96) %0) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !1283 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !1299
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs8774dFTUdNv_12polars_arrow9datatypes13ArrowDataTypeECs4PheDXcg4wa_10polars_row(ptr noalias noundef align 8 dereferenceable(32) %i.a)
          to label %bb.c unwind label %bb.b, !dbg !1299

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecINtNtBL_5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EEECs4PheDXcg4wa_10polars_row(ptr noalias noundef align 8 dereferenceable(24) %0) #25
          to label %.body unwind label %bb.j, !dbg !1299

bb.c:                                             ; preds = %bb.a
  invoke void @_RNvXso_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecINtNtB7_5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs4PheDXcg4wa_10polars_row(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.e unwind label %bb.d, !dbg !1300

bb.d:                                             ; preds = %bb.c
  %i.c = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecINtNtB7_5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs4PheDXcg4wa_10polars_row(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %.body unwind label %bb.f, !dbg !1301

bb.e:                                             ; preds = %bb.c
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecINtNtB7_5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs4PheDXcg4wa_10polars_row(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecINtNtBL_5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EEECs4PheDXcg4wa_10polars_row.exit unwind label %bb.h, !dbg !1302

bb.f:                                             ; preds = %bb.d
  %i.d = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #22, !dbg !1300
  unreachable, !dbg !1300

.body:                                            ; preds = %bb.h, %bb.d, %bb.b
  %.pn = phi { ptr, i32 } [ %i.b, %bb.b ], [ %i.h, %bb.h ], [ %i.c, %bb.d ]
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 64, !dbg !1299 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !dbg !1303, !alias.scope !1297, !noundef !275
  %i.g = icmp eq ptr %i.f, null, !dbg !1303
  br i1 %i.g, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapEECs4PheDXcg4wa_10polars_row.exit, label %bb.g, !dbg !1303

bb.g:                                             ; preds = %.body
  invoke void @_RNvXse_NtCsknLZRuU4977_13polars_buffer7storageINtB5_13SharedStoragehENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs4PheDXcg4wa_10polars_row(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.e)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapEECs4PheDXcg4wa_10polars_row.exit unwind label %bb.j, !dbg !1304

bb.h:                                             ; preds = %bb.e
  %i.h = landingpad { ptr, i32 }
          cleanup
  br label %.body

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecINtNtBL_5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EEECs4PheDXcg4wa_10polars_row.exit: ; preds = %bb.e
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 64, !dbg !1299 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !dbg !1305, !alias.scope !1298, !noundef !275
  %i.k = icmp eq ptr %i.j, null, !dbg !1305
  br i1 %i.k, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapEECs4PheDXcg4wa_10polars_row.exit2, label %bb.i, !dbg !1305

bb.i:                                             ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecINtNtBL_5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EEECs4PheDXcg4wa_10polars_row.exit
  tail call void @_RNvXse_NtCsknLZRuU4977_13polars_buffer7storageINtB5_13SharedStoragehENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs4PheDXcg4wa_10polars_row(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.i), !dbg !1306
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapEECs4PheDXcg4wa_10polars_row.exit2, !dbg !1305

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapEECs4PheDXcg4wa_10polars_row.exit2: ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecINtNtBL_5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EEECs4PheDXcg4wa_10polars_row.exit, %bb.i
  ret void, !dbg !1299

bb.j:                                             ; preds = %bb.g, %bb.b
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #22, !dbg !1299
  unreachable, !dbg !1299

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapEECs4PheDXcg4wa_10polars_row.exit: ; preds = %.body, %bb.g
  resume { ptr, i32 } %.pn, !dbg !1299
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldECs4PheDXcg4wa_10polars_row(ptr noalias noundef nonnull align 8 dereferenceable(72) %0) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !1307 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 55, !dbg !1358
  %i.b = load i8, ptr %i.a, align 1, !dbg !1358, !range !325, !alias.scope !1352, !noundef !275
  %i.c = icmp eq i8 %i.b, -40, !dbg !1359
  br i1 %i.c, label %bb.b, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECs4PheDXcg4wa_10polars_row.exit, !dbg !1359, !prof !326

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !1360
  invoke void @_RNvNvXs2_NtCs7VARH73bmU_11compact_str4reprNtB7_4ReprNtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4drop13outlined_drop(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECs4PheDXcg4wa_10polars_row.exit unwind label %bb.c, !dbg !1361

bb.c:                                             ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs8774dFTUdNv_12polars_arrow9datatypes13ArrowDataTypeECs4PheDXcg4wa_10polars_row(ptr noalias noundef align 8 dereferenceable(32) %0) #25
          to label %bb.d unwind label %bb.k, !dbg !1360

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECs4PheDXcg4wa_10polars_row.exit: ; preds = %bb.a, %bb.b
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs8774dFTUdNv_12polars_arrow9datatypes13ArrowDataTypeECs4PheDXcg4wa_10polars_row(ptr noalias noundef align 8 dereferenceable(32) %0)
          to label %bb.h unwind label %bb.g, !dbg !1360

bb.d:                                             ; preds = %bb.g, %bb.c
  %.pn = phi { ptr, i32 } [ %i.k, %bb.g ], [ %i.e, %bb.c ]
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 56, !dbg !1360 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1353), !dbg !1360
  %i.g = load ptr, ptr %i.f, align 8, !dbg !1362, !alias.scope !1353, !noundef !275 ; 2 uses
  %i.h = icmp eq ptr %i.g, null, !dbg !1362
  br i1 %i.h, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtNtNtB17_11collections5btree3map8BTreeMapNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB2j_EEEECs4PheDXcg4wa_10polars_row.exit, label %bb.e, !dbg !1362

bb.e:                                             ; preds = %bb.d
  %i.i = atomicrmw sub ptr %i.g, i64 1 release, align 8, !dbg !1363, !noalias !1354
  %i.j = icmp eq i64 %i.i, 1, !dbg !1364
  br i1 %i.j, label %bb.f, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtNtNtB17_11collections5btree3map8BTreeMapNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB2j_EEEECs4PheDXcg4wa_10polars_row.exit, !dbg !1364

bb.f:                                             ; preds = %bb.e
  fence acquire, !dbg !1365
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcINtNtNtNtB7_11collections5btree3map8BTreeMapNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB1o_EE9drop_slowCs8774dFTUdNv_12polars_arrow(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.f) #26
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtNtNtB17_11collections5btree3map8BTreeMapNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB2j_EEEECs4PheDXcg4wa_10polars_row.exit unwind label %bb.k, !dbg !1366

bb.g:                                             ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECs4PheDXcg4wa_10polars_row.exit
  %i.k = landingpad { ptr, i32 }
          cleanup
  br label %bb.d

bb.h:                                             ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECs4PheDXcg4wa_10polars_row.exit
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 56, !dbg !1360 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1356), !dbg !1360
  %i.m = load ptr, ptr %i.l, align 8, !dbg !1367, !alias.scope !1356, !noundef !275 ; 2 uses
  %i.n = icmp eq ptr %i.m, null, !dbg !1367
  br i1 %i.n, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtNtNtB17_11collections5btree3map8BTreeMapNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB2j_EEEECs4PheDXcg4wa_10polars_row.exit3, label %bb.i, !dbg !1367

bb.i:                                             ; preds = %bb.h
  %i.o = atomicrmw sub ptr %i.m, i64 1 release, align 8, !dbg !1368, !noalias !1357
  %i.p = icmp eq i64 %i.o, 1, !dbg !1369
  br i1 %i.p, label %bb.j, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtNtNtB17_11collections5btree3map8BTreeMapNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB2j_EEEECs4PheDXcg4wa_10polars_row.exit3, !dbg !1369

bb.j:                                             ; preds = %bb.i
  fence acquire, !dbg !1370
  tail call void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcINtNtNtNtB7_11collections5btree3map8BTreeMapNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB1o_EE9drop_slowCs8774dFTUdNv_12polars_arrow(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.l) #26, !dbg !1371
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtNtNtB17_11collections5btree3map8BTreeMapNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB2j_EEEECs4PheDXcg4wa_10polars_row.exit3, !dbg !1371

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtNtNtB17_11collections5btree3map8BTreeMapNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB2j_EEEECs4PheDXcg4wa_10polars_row.exit3: ; preds = %bb.h, %bb.i, %bb.j
  ret void, !dbg !1360

bb.k:                                             ; preds = %bb.f, %bb.c
  %i.q = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #22, !dbg !1360
  unreachable, !dbg !1360

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtNtNtB17_11collections5btree3map8BTreeMapNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB2j_EEEECs4PheDXcg4wa_10polars_row.exit: ; preds = %bb.e, %bb.d, %bb.f
  resume { ptr, i32 } %.pn, !dbg !1360
}

; Function Attrs: nonlazybind uwtable
define { i64, i64 } @_RNvNtCs4PheDXcg4wa_10polars_row6encode10fixed_size(ptr noalias noundef readonly align 8 captures(none) dereferenceable(32) %0, i8 noundef %1, ptr noalias nofree noundef readonly align 8 captures(address_is_null) dereferenceable_or_null(24) %2) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !1372 {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 5 uses
  %.not = icmp eq ptr %2, null, !dbg !1466
  br i1 %.not, label %bb.c, label %bb.b, !dbg !1467

bb.b:                                             ; preds = %bb.a
  %i.b = load i64, ptr %2, align 8, !dbg !1466, !range !333, !noundef !275 ; 3 uses
  %i.c = icmp eq i64 %i.b, -9223372036854775808, !dbg !1467
  br i1 %i.c, label %bb.d, label %bb.e, !dbg !1467

bb.c:                                             ; preds = %bb.a
  %i.d = load i8, ptr %0, align 8, !dbg !1468, !range !318, !noundef !275
  switch i8 %i.d, label %.loopexit [
    i8 0, label %_RNvXs3_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldEIBX_INtNtBb_6option6OptionNtNtCs4PheDXcg4wa_10polars_row3row18RowEncodingContextEEEINtB5_7ZipImplBW_B2h_E4nextB2L_.exit.thread
    i8 1, label %bb.f
    i8 2, label %bb.g
    i8 3, label %bb.h
    i8 4, label %bb.i
    i8 5, label %bb.j
    i8 6, label %bb.s
    i8 7, label %bb.g
    i8 8, label %bb.h
    i8 9, label %bb.i
    i8 10, label %bb.j
    i8 11, label %bb.s
    i8 12, label %bb.h
    i8 13, label %bb.i
    i8 14, label %bb.j
    i8 28, label %bb.l
    i8 30, label %bb.t
  ], !dbg !1469

bb.d:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 16, !dbg !1470
  %i.f = load i8, ptr %i.e, align 8, !dbg !1470, !range !334, !noundef !275
  %i.g = and i8 %1, 4
  %3 = or disjoint i8 %i.f, %i.g, !dbg !1470
  %or.cond.not.not = icmp eq i8 %3, 0, !dbg !1470
  br i1 %or.cond.not.not, label %_RNvXs3_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldEIBX_INtNtBb_6option6OptionNtNtCs4PheDXcg4wa_10polars_row3row18RowEncodingContextEEEINtB5_7ZipImplBW_B2h_E4nextB2L_.exit.thread, label %bb.e, !dbg !1470

bb.e:                                             ; preds = %bb.d, %bb.b
  %i.h = load i8, ptr %0, align 8, !dbg !1468, !range !318, !noundef !275
  switch i8 %i.h, label %.loopexit [
    i8 0, label %_RNvXs3_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldEIBX_INtNtBb_6option6OptionNtNtCs4PheDXcg4wa_10polars_row3row18RowEncodingContextEEEINtB5_7ZipImplBW_B2h_E4nextB2L_.exit.thread
    i8 1, label %bb.f
    i8 2, label %bb.g
    i8 3, label %bb.h
    i8 4, label %bb.i
    i8 5, label %bb.j
    i8 6, label %bb.k
    i8 7, label %bb.g
    i8 8, label %bb.h
    i8 9, label %bb.i
    i8 10, label %bb.j
    i8 11, label %bb.s
    i8 12, label %bb.h
    i8 13, label %bb.i
    i8 14, label %bb.j
    i8 28, label %bb.l
    i8 30, label %bb.m
  ], !dbg !1469

_RNvXs3_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldEIBX_INtNtBb_6option6OptionNtNtCs4PheDXcg4wa_10polars_row3row18RowEncodingContextEEEINtB5_7ZipImplBW_B2h_E4nextB2L_.exit.thread: ; preds = %bb.t, %._crit_edge.loopexit, %bb.p, %_RNvXs3_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldEIBX_INtNtBb_6option6OptionNtNtCs4PheDXcg4wa_10polars_row3row18RowEncodingContextEEEINtB5_7ZipImplBW_B2h_E4nextB2L_.exit.thread.loopexit, %bb.f, %bb.g, %bb.h, %bb.i, %bb.j, %bb.n, %bb.s, %bb.u, %bb.e, %bb.c, %bb.d, %.loopexit
  %.sroa.7.0 = phi i64 [ undef, %.loopexit ], [ undef, %bb.d ], [ %i.aj, %_RNvXs3_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldEIBX_INtNtBb_6option6OptionNtNtCs4PheDXcg4wa_10polars_row3row18RowEncodingContextEEEINtB5_7ZipImplBW_B2h_E4nextB2L_.exit.thread.loopexit ], [ 1, %bb.f ], [ 2, %bb.g ], [ 3, %bb.h ], [ 5, %bb.i ], [ 9, %bb.j ], [ %i.t, %bb.n ], [ 0, %bb.c ], [ 0, %bb.e ], [ 17, %bb.s ], [ %i.ax, %bb.u ], [ 1, %bb.p ], [ 1, %bb.t ], [ %i.bb, %._crit_edge.loopexit ], !dbg !1471
  %.sroa.05.0 = phi i64 [ 0, %.loopexit ], [ 0, %bb.d ], [ 1, %_RNvXs3_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldEIBX_INtNtBb_6option6OptionNtNtCs4PheDXcg4wa_10polars_row3row18RowEncodingContextEEEINtB5_7ZipImplBW_B2h_E4nextB2L_.exit.thread.loopexit ], [ 1, %bb.f ], [ 1, %bb.g ], [ 1, %bb.h ], [ 1, %bb.i ], [ 1, %bb.j ], [ 1, %bb.n ], [ 1, %bb.c ], [ 1, %bb.e ], [ 1, %bb.s ], [ 1, %bb.u ], [ 1, %bb.p ], [ 1, %bb.t ], [ 1, %._crit_edge.loopexit ], !dbg !1471
  %i.i = insertvalue { i64, i64 } poison, i64 %.sroa.05.0, 0, !dbg !1472
  %i.j = insertvalue { i64, i64 } %i.i, i64 %.sroa.7.0, 1, !dbg !1472
  ret { i64, i64 } %i.j, !dbg !1472

bb.f:                                             ; preds = %bb.e, %bb.c
  br label %_RNvXs3_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldEIBX_INtNtBb_6option6OptionNtNtCs4PheDXcg4wa_10polars_row3row18RowEncodingContextEEEINtB5_7ZipImplBW_B2h_E4nextB2L_.exit.thread, !dbg !1473

bb.g:                                             ; preds = %bb.c, %bb.e, %bb.e, %bb.c
  br label %_RNvXs3_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldEIBX_INtNtBb_6option6OptionNtNtCs4PheDXcg4wa_10polars_row3row18RowEncodingContextEEEINtB5_7ZipImplBW_B2h_E4nextB2L_.exit.thread, !dbg !1474

bb.h:                                             ; preds = %bb.c, %bb.e, %bb.c, %bb.e, %bb.e, %bb.c
  br label %_RNvXs3_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldEIBX_INtNtBb_6option6OptionNtNtCs4PheDXcg4wa_10polars_row3row18RowEncodingContextEEEINtB5_7ZipImplBW_B2h_E4nextB2L_.exit.thread, !dbg !1475

bb.i:                                             ; preds = %bb.c, %bb.e, %bb.c, %bb.e, %bb.e, %bb.c
  br label %_RNvXs3_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldEIBX_INtNtBb_6option6OptionNtNtCs4PheDXcg4wa_10polars_row3row18RowEncodingContextEEEINtB5_7ZipImplBW_B2h_E4nextB2L_.exit.thread, !dbg !1476

bb.j:                                             ; preds = %bb.c, %bb.e, %bb.c, %bb.e, %bb.e, %bb.c
  br label %_RNvXs3_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldEIBX_INtNtBb_6option6OptionNtNtCs4PheDXcg4wa_10polars_row3row18RowEncodingContextEEEINtB5_7ZipImplBW_B2h_E4nextB2L_.exit.thread, !dbg !1477

bb.k:                                             ; preds = %bb.e
  %i.k = icmp eq i64 %i.b, -9223372036854775807, !dbg !1478
  br i1 %i.k, label %bb.n, label %bb.o, !dbg !1478, !prof !335

bb.l:                                             ; preds = %bb.e, %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !1479
  %i.m = load ptr, ptr %i.l, align 8, !dbg !1479, !nonnull !275, !noundef !275
  %i.n = tail call { i64, i64 } @_RNvNtCs4PheDXcg4wa_10polars_row6encode10fixed_size(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.m, i8 noundef %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(24) %2), !dbg !1426 ; 2 uses
  %i.o = extractvalue { i64, i64 } %i.n, 0, !dbg !1426
  %i.p = trunc nuw i64 %i.o to i1, !dbg !1480
  br i1 %i.p, label %bb.u, label %.loopexit, !dbg !1480

bb.m:                                             ; preds = %bb.e
  %i.q = icmp sgt i64 %i.b, -1, !dbg !1481
  br i1 %i.q, label %bb.p, label %bb.q, !dbg !1482, !prof !335

bb.n:                                             ; preds = %bb.k
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 8, !dbg !1483
  %i.s = load i64, ptr %i.r, align 8, !dbg !1483, !noundef !275
  %i.t = tail call noundef i64 @_RNvNtNtCs4PheDXcg4wa_10polars_row5fixed7decimal18len_from_precision(i64 noundef %i.s), !dbg !1484
  br label %_RNvXs3_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldEIBX_INtNtBb_6option6OptionNtNtCs4PheDXcg4wa_10polars_row3row18RowEncodingContextEEEINtB5_7ZipImplBW_B2h_E4nextB2L_.exit.thread, !dbg !1485

bb.o:                                             ; preds = %bb.k
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @8, i64 noundef 40, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @16) #27, !dbg !1486
  unreachable, !dbg !1486

bb.p:                                             ; preds = %bb.m
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !1487
  %i.v = load ptr, ptr %i.u, align 8, !dbg !1487, !nonnull !275, !noundef !275 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !1488
  %i.x = load i64, ptr %i.w, align 8, !dbg !1488, !noundef !275
  %i.y = getelementptr inbounds nuw [72 x i8], ptr %i.v, i64 %i.x, !dbg !1489
  %i.z = getelementptr i8, ptr %2, i64 8, !dbg !1490
  %.val = load ptr, ptr %i.z, align 8, !dbg !1490, !nonnull !275, !noundef !275 ; 2 uses
  %i.aa = getelementptr i8, ptr %2, i64 16, !dbg !1490
  %.val37 = load i64, ptr %i.aa, align 8, !dbg !1490, !noundef !275
  %i.ab = getelementptr inbounds nuw [24 x i8], ptr %.val, i64 %.val37, !dbg !1491
  call void @_RNvXs3_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldEIBX_INtNtBb_6option6OptionNtNtCs4PheDXcg4wa_10polars_row3row18RowEncodingContextEEEINtB5_7ZipImplBW_B2h_E3newB2L_(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.a, ptr noundef nonnull %i.v, ptr noundef nonnull %i.y, ptr noundef nonnull %.val, ptr noundef nonnull %i.ab), !dbg !1492
  %.sroa.0.0.copyload = load ptr, ptr %i.a, align 8, !dbg !1427 ; 2 uses
  %.sroa.538.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !1427
  %.sroa.538.0.copyload = load ptr, ptr %.sroa.538.0..sroa_idx, align 8, !dbg !1427 ; 2 uses
  %.sroa.639.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32, !dbg !1427
  %.sroa.639.0.copyload = load i64, ptr %.sroa.639.0..sroa_idx, align 8, !dbg !1427 ; 2 uses
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 40, !dbg !1427
  %.sroa.8.0.copyload = load i64, ptr %.sroa.8.0..sroa_idx, align 8, !dbg !1427 ; 2 uses
  %i.ac = icmp ult i64 %.sroa.639.0.copyload, %.sroa.8.0.copyload, !dbg !1493
  br i1 %i.ac, label %_RNvXs3_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldEIBX_INtNtBb_6option6OptionNtNtCs4PheDXcg4wa_10polars_row3row18RowEncodingContextEEEINtB5_7ZipImplBW_B2h_E4nextB2L_.exit.lr.ph, label %_RNvXs3_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldEIBX_INtNtBb_6option6OptionNtNtCs4PheDXcg4wa_10polars_row3row18RowEncodingContextEEEINtB5_7ZipImplBW_B2h_E4nextB2L_.exit.thread, !dbg !1493

_RNvXs3_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldEIBX_INtNtBb_6option6OptionNtNtCs4PheDXcg4wa_10polars_row3row18RowEncodingContextEEEINtB5_7ZipImplBW_B2h_E4nextB2L_.exit.lr.ph: ; preds = %bb.p
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.538.0.copyload) ]
  br label %_RNvXs3_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldEIBX_INtNtBb_6option6OptionNtNtCs4PheDXcg4wa_10polars_row3row18RowEncodingContextEEEINtB5_7ZipImplBW_B2h_E4nextB2L_.exit, !dbg !1493

bb.q:                                             ; preds = %bb.m
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @8, i64 noundef 40, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @17) #27, !dbg !1494
  unreachable, !dbg !1494

_RNvXs3_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldEIBX_INtNtBb_6option6OptionNtNtCs4PheDXcg4wa_10polars_row3row18RowEncodingContextEEEINtB5_7ZipImplBW_B2h_E4nextB2L_.exit: ; preds = %_RNvXs3_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldEIBX_INtNtBb_6option6OptionNtNtCs4PheDXcg4wa_10polars_row3row18RowEncodingContextEEEINtB5_7ZipImplBW_B2h_E4nextB2L_.exit.lr.ph, %bb.r
  %.sroa.021.048 = phi i64 [ 0, %_RNvXs3_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldEIBX_INtNtBb_6option6OptionNtNtCs4PheDXcg4wa_10polars_row3row18RowEncodingContextEEEINtB5_7ZipImplBW_B2h_E4nextB2L_.exit.lr.ph ], [ %i.am, %bb.r ]
  %.sroa.639.047 = phi i64 [ %.sroa.639.0.copyload, %_RNvXs3_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldEIBX_INtNtBb_6option6OptionNtNtCs4PheDXcg4wa_10polars_row3row18RowEncodingContextEEEINtB5_7ZipImplBW_B2h_E4nextB2L_.exit.lr.ph ], [ %i.ak, %bb.r ] ; 3 uses
  %i.ad = getelementptr inbounds nuw [72 x i8], ptr %.sroa.0.0.copyload, i64 %.sroa.639.047, !dbg !1495
  %i.ae = getelementptr inbounds nuw [24 x i8], ptr %.sroa.538.0.copyload, i64 %.sroa.639.047, !dbg !1496 ; 2 uses
  %i.af = load i64, ptr %i.ae, align 8, !dbg !1497, !range !363, !noundef !275
  %.not35 = icmp eq i64 %i.af, -9223372036854775806, !dbg !1497
  %. = select i1 %.not35, ptr null, ptr %i.ae, !dbg !1498
  %i.ag = tail call { i64, i64 } @_RNvNtCs4PheDXcg4wa_10polars_row6encode10fixed_size(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.ad, i8 noundef %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(24) %.), !dbg !1441 ; 2 uses
  %i.ah = extractvalue { i64, i64 } %i.ag, 0, !dbg !1441
  %i.ai = trunc nuw i64 %i.ah to i1, !dbg !1499
  br i1 %i.ai, label %bb.r, label %.loopexit, !dbg !1499

_RNvXs3_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldEIBX_INtNtBb_6option6OptionNtNtCs4PheDXcg4wa_10polars_row3row18RowEncodingContextEEEINtB5_7ZipImplBW_B2h_E4nextB2L_.exit.thread.loopexit: ; preds = %bb.r
  %i.aj = add i64 %i.am, 1, !dbg !1500
  br label %_RNvXs3_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldEIBX_INtNtBb_6option6OptionNtNtCs4PheDXcg4wa_10polars_row3row18RowEncodingContextEEEINtB5_7ZipImplBW_B2h_E4nextB2L_.exit.thread, !dbg !1500

bb.r:                                             ; preds = %_RNvXs3_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldEIBX_INtNtBb_6option6OptionNtNtCs4PheDXcg4wa_10polars_row3row18RowEncodingContextEEEINtB5_7ZipImplBW_B2h_E4nextB2L_.exit
  %i.ak = add i64 %.sroa.639.047, 1, !dbg !1501   ; 2 uses
  %i.al = extractvalue { i64, i64 } %i.ag, 1, !dbg !1441
  %i.am = add i64 %i.al, %.sroa.021.048, !dbg !1502 ; 2 uses
  %exitcond.not = icmp eq i64 %i.ak, %.sroa.8.0.copyload, !dbg !1493
  br i1 %exitcond.not, label %_RNvXs3_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldEIBX_INtNtBb_6option6OptionNtNtCs4PheDXcg4wa_10polars_row3row18RowEncodingContextEEEINtB5_7ZipImplBW_B2h_E4nextB2L_.exit.thread.loopexit, label %_RNvXs3_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldEIBX_INtNtBb_6option6OptionNtNtCs4PheDXcg4wa_10polars_row3row18RowEncodingContextEEEINtB5_7ZipImplBW_B2h_E4nextB2L_.exit, !dbg !1493

.loopexit:                                        ; preds = %_RNvXs3_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldEIBX_INtNtBb_6option6OptionNtNtCs4PheDXcg4wa_10polars_row3row18RowEncodingContextEEEINtB5_7ZipImplBW_B2h_E4nextB2L_.exit, %.lr.ph, %bb.l, %bb.c, %bb.e
  br label %_RNvXs3_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldEIBX_INtNtBb_6option6OptionNtNtCs4PheDXcg4wa_10polars_row3row18RowEncodingContextEEEINtB5_7ZipImplBW_B2h_E4nextB2L_.exit.thread, !dbg !1503

bb.s:                                             ; preds = %bb.c, %bb.e, %bb.c
  br label %_RNvXs3_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldEIBX_INtNtBb_6option6OptionNtNtCs4PheDXcg4wa_10polars_row3row18RowEncodingContextEEEINtB5_7ZipImplBW_B2h_E4nextB2L_.exit.thread, !dbg !1504

bb.t:                                             ; preds = %bb.c
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !1505
  %i.ao = load ptr, ptr %i.an, align 8, !dbg !1505, !nonnull !275, !noundef !275 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !1506
  %i.aq = load i64, ptr %i.ap, align 8, !dbg !1506, !noundef !275 ; 2 uses
  %.idx = mul nuw nsw i64 %i.aq, 72, !dbg !1507
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ao, i64 %.idx, !dbg !1507
  %i.as = icmp eq i64 %i.aq, 0, !dbg !1508
  br i1 %i.as, label %_RNvXs3_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldEIBX_INtNtBb_6option6OptionNtNtCs4PheDXcg4wa_10polars_row3row18RowEncodingContextEEEINtB5_7ZipImplBW_B2h_E4nextB2L_.exit.thread, label %.lr.ph, !dbg !1460

bb.u:                                             ; preds = %bb.l
  %i.at = extractvalue { i64, i64 } %i.n, 1, !dbg !1426
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !1509
  %i.av = load i64, ptr %i.au, align 8, !dbg !1509, !noundef !275
  %i.aw = mul i64 %i.av, %i.at, !dbg !1510
  %i.ax = add i64 %i.aw, 1, !dbg !1511
  br label %_RNvXs3_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldEIBX_INtNtBb_6option6OptionNtNtCs4PheDXcg4wa_10polars_row3row18RowEncodingContextEEEINtB5_7ZipImplBW_B2h_E4nextB2L_.exit.thread, !dbg !1512

.lr.ph:                                           ; preds = %bb.t, %bb.v
  %.sroa.012.050 = phi i64 [ %i.be, %bb.v ], [ 0, %bb.t ]
  %.sroa.014.049 = phi ptr [ %i.bd, %bb.v ], [ %i.ao, %bb.t ] ; 2 uses
  %i.ay = tail call { i64, i64 } @_RNvNtCs4PheDXcg4wa_10polars_row6encode10fixed_size(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %.sroa.014.049, i8 noundef %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(24) null), !dbg !1464 ; 2 uses
  %i.az = extractvalue { i64, i64 } %i.ay, 0, !dbg !1464
  %i.ba = trunc nuw i64 %i.az to i1, !dbg !1513
  br i1 %i.ba, label %bb.v, label %.loopexit, !dbg !1513

._crit_edge.loopexit:                             ; preds = %bb.v
  %i.bb = add i64 %i.be, 1, !dbg !1514
  br label %_RNvXs3_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldEIBX_INtNtBb_6option6OptionNtNtCs4PheDXcg4wa_10polars_row3row18RowEncodingContextEEEINtB5_7ZipImplBW_B2h_E4nextB2L_.exit.thread, !dbg !1514

bb.v:                                             ; preds = %.lr.ph
  %i.bc = extractvalue { i64, i64 } %i.ay, 1, !dbg !1464
  %i.bd = getelementptr inbounds nuw i8, ptr %.sroa.014.049, i64 72, !dbg !1515 ; 2 uses
  %i.be = add i64 %i.bc, %.sroa.012.050, !dbg !1516 ; 2 uses
  %i.bf = icmp eq ptr %i.bd, %i.ar, !dbg !1508
  br i1 %i.bf, label %._crit_edge.loopexit, label %.lr.ph, !dbg !1460
}

; Function Attrs: nonlazybind uwtable
define void @_RNvNtCs4PheDXcg4wa_10polars_row6encode11get_encoder(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull %1, ptr noalias noundef readonly align 8 captures(none) dereferenceable(192) %2, i8 noundef %3, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(24) %4, ptr noalias noundef align 8 dereferenceable(32) %5, ptr noalias noundef align 8 dereferenceable(8) %6) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !1517 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = alloca [32 x i8], align 8                ; 5 uses
  %i.c = alloca [24 x i8], align 8                ; 7 uses
  %i.d = alloca [32 x i8], align 8                ; 5 uses
  %i.e = alloca [80 x i8], align 8                ; 8 uses
  %i.f = alloca [24 x i8], align 8                ; 6 uses
  %i.g = alloca [80 x i8], align 8                ; 8 uses
  %i.h = alloca [24 x i8], align 8                ; 6 uses
  %i.i = alloca [1 x i8], align 1                 ; 7 uses
  %i.j = alloca [80 x i8], align 8                ; 8 uses
  %i.k = alloca [24 x i8], align 8                ; 6 uses
  %i.l = alloca [80 x i8], align 8                ; 8 uses
  %i.m = alloca [24 x i8], align 8                ; 6 uses
  %i.n = alloca [1 x i8], align 1                 ; 7 uses
  %i.o = alloca [24 x i8], align 8                ; 4 uses
  %i.p = alloca [32 x i8], align 8                ; 5 uses
  %i.q = alloca [32 x i8], align 8                ; 5 uses
  %i.r = alloca [80 x i8], align 8                ; 8 uses
  %i.s = alloca [88 x i8], align 8                ; 5 uses
  %i.t = alloca [32 x i8], align 8                ; 7 uses
  %i.u = alloca [80 x i8], align 8                ; 8 uses
  %i.v = alloca [88 x i8], align 8                ; 5 uses
  %i.w = alloca [32 x i8], align 8                ; 7 uses
  %i.x = alloca [1 x i8], align 1                 ; 7 uses
  %i.y = alloca [80 x i8], align 8                ; 8 uses
  %i.z = alloca [88 x i8], align 8                ; 5 uses
  %i.aa = alloca [32 x i8], align 8               ; 7 uses
end_hunk_0
begin_hunk_1_@_RNvNtCs4PheDXcg4wa_10polars_row6encode15encode_validity:bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.015.030, i64 8, !dbg !5200 ; 2 uses
  %i.m = icmp eq i64 %.sroa.14.031, 0, !dbg !5201
  br i1 %i.m, label %bb.f, label %_RNvXs1_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutjENtNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iterator10BitmapIterEINtB5_7ZipImplBW_B1r_E4nextCs4PheDXcg4wa_10polars_row.exit, !dbg !5201

bb.f:                                             ; preds = %.lr.ph
  %i.n = icmp eq i64 %.sroa.16.032, 0, !dbg !5202
  br i1 %i.n, label %_RNvXs1_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutjENtNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iterator10BitmapIterEINtB5_7ZipImplBW_B1r_E4nextCs4PheDXcg4wa_10polars_row.exit.thread, label %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs4PheDXcg4wa_10polars_row.exit.i.i, !dbg !5202

_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs4PheDXcg4wa_10polars_row.exit.i.i: ; preds = %bb.f
  %.sroa.0.0.i.i.i = call noundef range(i64 1, 65) i64 @llvm.umin.i64(i64 range(i64 1, 0) %.sroa.16.032, i64 64), !dbg !5203 ; 2 uses
  %i.o = sub nuw i64 %.sroa.16.032, %.sroa.0.0.i.i.i, !dbg !5204
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.7.029) ]
  %.sroa.02.0.copyload.i.i = load i64, ptr %.sroa.7.029, align 1, !dbg !5205, !noalias !5183
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.7.029, i64 8, !dbg !5206
  br label %_RNvXs1_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutjENtNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iterator10BitmapIterEINtB5_7ZipImplBW_B1r_E4nextCs4PheDXcg4wa_10polars_row.exit, !dbg !5207

_RNvXs1_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutjENtNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iterator10BitmapIterEINtB5_7ZipImplBW_B1r_E4nextCs4PheDXcg4wa_10polars_row.exit: ; preds = %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs4PheDXcg4wa_10polars_row.exit.i.i, %.lr.ph
  %.sroa.7.1 = phi ptr [ %i.p, %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs4PheDXcg4wa_10polars_row.exit.i.i ], [ %.sroa.7.029, %.lr.ph ], !dbg !5208
  %.sroa.16.1 = phi i64 [ %i.o, %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs4PheDXcg4wa_10polars_row.exit.i.i ], [ %.sroa.16.032, %.lr.ph ], !dbg !5208
  %i.q = phi i64 [ %.sroa.0.0.i.i.i, %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs4PheDXcg4wa_10polars_row.exit.i.i ], [ %.sroa.14.031, %.lr.ph ], !dbg !5209
  %i.r = phi i64 [ %.sroa.02.0.copyload.i.i, %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs4PheDXcg4wa_10polars_row.exit.i.i ], [ %.sroa.12.027, %.lr.ph ], !dbg !5210 ; 2 uses
  %i.s = load i64, ptr %.sroa.015.030, align 8, !dbg !5211, !noundef !275 ; 4 uses
  %i.t = icmp ult i64 %i.s, %1, !dbg !5212
  br i1 %i.t, label %bb.g, label %bb.h, !dbg !5212

bb.g:                                             ; preds = %_RNvXs1_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutjENtNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iterator10BitmapIterEINtB5_7ZipImplBW_B1r_E4nextCs4PheDXcg4wa_10polars_row.exit
  %i.u = trunc i64 %i.r to i1, !dbg !5210
  %.. = select i1 %i.u, i8 1, i8 %sext, !dbg !5213
  %i.v = add i64 %i.q, -1, !dbg !5209
  %i.w = lshr i64 %i.r, 1, !dbg !5214
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 %i.s, !dbg !5212
  store i8 %.., ptr %i.x, align 1, !dbg !5212
  %i.y = add nuw nsw i64 %i.s, 1, !dbg !5215
  store i64 %i.y, ptr %.sroa.015.030, align 8, !dbg !5215
  %i.z = icmp eq ptr %i.l, %i.c, !dbg !5192
  br i1 %i.z, label %_RNvXs1_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutjENtNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iterator10BitmapIterEINtB5_7ZipImplBW_B1r_E4nextCs4PheDXcg4wa_10polars_row.exit.thread, label %.lr.ph, !dbg !5193

bb.h:                                             ; preds = %_RNvXs1_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutjENtNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iterator10BitmapIterEINtB5_7ZipImplBW_B1r_E4nextCs4PheDXcg4wa_10polars_row.exit
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %i.s, i64 noundef %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @61) #27, !dbg !5212
  unreachable, !dbg !5212
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvNtCs4PheDXcg4wa_10polars_row6encode17encode_flat_array(ptr noalias noundef nonnull %0, i64 noundef range(i64 0, -9223372036854775808) %1, ptr noundef nonnull %2, ptr nofree readonly captures(none) %.32.val, ptr nofree readonly captures(none) %.64.val, i8 noundef %3, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(24) %4, ptr noalias noundef nonnull align 8 %5, i64 noundef range(i64 0, 1152921504606846976) %6) unnamed_addr #0 !dbg !5216 {
bb.a:
  %i.a = alloca [64 x i8], align 8                ; 5 uses
  %i.b = alloca [64 x i8], align 8                ; 5 uses
  %i.c = alloca [64 x i8], align 8                ; 5 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %i.e = alloca [16 x i8], align 16               ; 4 uses
  %i.f = alloca [24 x i8], align 8                ; 6 uses
  %i.g = alloca [16 x i8], align 16               ; 4 uses
  %i.h = alloca [24 x i8], align 8                ; 6 uses
  %i.i = alloca [16 x i8], align 16               ; 4 uses
  %i.j = alloca [24 x i8], align 8                ; 6 uses
  %i.k = alloca [16 x i8], align 16               ; 4 uses
  %i.l = alloca [24 x i8], align 8                ; 6 uses
  %i.m = alloca [16 x i8], align 16               ; 4 uses
  %i.n = alloca [24 x i8], align 8                ; 6 uses
  %i.o = alloca [16 x i8], align 16               ; 4 uses
  %i.p = alloca [16 x i8], align 16               ; 4 uses
  %i.q = alloca [16 x i8], align 16               ; 4 uses
  %i.r = alloca [16 x i8], align 16               ; 4 uses
  %i.s = alloca [16 x i8], align 16               ; 4 uses
  %i.t = alloca [16 x i8], align 16               ; 4 uses
  %i.u = alloca [16 x i8], align 16               ; 4 uses
  %i.v = alloca [16 x i8], align 16               ; 4 uses
  %i.w = alloca [16 x i8], align 16               ; 4 uses
  %i.x = alloca [16 x i8], align 16               ; 4 uses
  %i.y = alloca [16 x i8], align 16               ; 4 uses
  %i.z = alloca [16 x i8], align 16               ; 4 uses
  %i.aa = alloca [16 x i8], align 16              ; 4 uses
  %i.ab = alloca [16 x i8], align 16              ; 4 uses
  %i.ac = alloca [16 x i8], align 16              ; 4 uses
  %i.ad = alloca [40 x i8], align 8               ; 4 uses
  %i.ae = alloca [16 x i8], align 16              ; 4 uses
  %i.af = alloca [16 x i8], align 16              ; 4 uses
  %i.ag = alloca [16 x i8], align 16              ; 4 uses
  %i.ah = alloca [16 x i8], align 16              ; 4 uses
  %i.ai = alloca [64 x i8], align 8               ; 4 uses
  %i.aj = alloca [64 x i8], align 8               ; 4 uses
  %i.ak = alloca [64 x i8], align 8               ; 4 uses
  %i.al = alloca [64 x i8], align 8               ; 4 uses
  %i.am = alloca [64 x i8], align 8               ; 4 uses
  %i.an = alloca [64 x i8], align 8               ; 4 uses
  %i.ao = alloca [80 x i8], align 8               ; 4 uses
  %.not = icmp eq ptr %4, null, !dbg !5827        ; 2 uses
  br i1 %.not, label %bb.c, label %bb.b, !dbg !5828

bb.b:                                             ; preds = %bb.a
  %i.ap = load i64, ptr %4, align 8, !dbg !5827, !range !333, !noundef !275
  %i.aq = icmp eq i64 %i.ap, -9223372036854775808, !dbg !5828
  br i1 %i.aq, label %bb.d, label %bb.c, !dbg !5828

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.ar = tail call noundef nonnull align 8 ptr %.64.val(ptr noundef nonnull %2) #28, !dbg !5829
  %i.as = load i8, ptr %i.ar, align 8, !dbg !5830, !range !318, !noundef !275 ; 2 uses
  switch i8 %i.as, label %bb.bq [
    i8 0, label %_RINvNtCs4PheDXcg4wa_10polars_row6encode16encode_cat_arrayhEB4_.exit
    i8 1, label %bb.u
    i8 37, label %bb.bz
    i8 41, label %bb.cd
    i8 40, label %bb.cc
    i8 39, label %bb.cb
    i8 38, label %bb.ca
    i8 32, label %bb.by
    i8 31, label %bb.bx
    i8 26, label %bb.bw
    i8 25, label %bb.bv
    i8 24, label %bb.bu
    i8 23, label %bb.bt
    i8 22, label %bb.bs
    i8 21, label %bb.br
    i8 20, label %bb.br
    i8 19, label %bb.br
    i8 18, label %bb.br
    i8 17, label %bb.br
    i8 15, label %bb.br
    i8 16, label %bb.br
    i8 6, label %bb.x
    i8 2, label %bb.y
    i8 3, label %bb.y
    i8 4, label %bb.y
    i8 5, label %bb.y
    i8 7, label %bb.y
    i8 8, label %bb.y
    i8 9, label %bb.y
    i8 10, label %bb.y
    i8 11, label %bb.y
    i8 12, label %bb.y
    i8 13, label %bb.y
    i8 14, label %bb.y
    i8 33, label %bb.y
    i8 34, label %bb.y
    i8 35, label %bb.y
    i8 36, label %bb.y
  ], !dbg !5831, !prof !5500

bb.d:                                             ; preds = %bb.b
  %i.at = getelementptr inbounds nuw i8, ptr %4, i64 8, !dbg !5832 ; 3 uses
  %i.au = tail call noundef nonnull align 8 ptr %.64.val(ptr noundef nonnull %2) #28, !dbg !5833
  %i.av = load i8, ptr %i.au, align 8, !dbg !5834, !range !318, !noundef !275
  switch i8 %i.av, label %bb.e [
    i8 7, label %bb.f
    i8 8, label %bb.g
    i8 9, label %bb.h
  ], !dbg !5835, !prof !5501

bb.e:                                             ; preds = %bb.d
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @8, i64 noundef 40, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @65) #27, !dbg !5836
  unreachable, !dbg !5836

bb.f:                                             ; preds = %bb.d
  %i.aw = tail call { ptr, ptr } %.32.val(ptr noundef nonnull %2) #28, !dbg !5837 ; 2 uses
  %i.ax = extractvalue { ptr, ptr } %i.aw, 0, !dbg !5837 ; 6 uses
  %i.ay = extractvalue { ptr, ptr } %i.aw, 1, !dbg !5837
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah), !dbg !5503
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 24, !dbg !5838
  %i.ba = load ptr, ptr %i.az, align 8, !dbg !5838, !invariant.load !275, !nonnull !275
  call void %i.ba(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.ah, ptr noundef %i.ax) #28, !dbg !5839
  %i.bb = load i128, ptr %i.ah, align 16, !dbg !5840, !noundef !275
  %i.bc = icmp eq i128 %i.bb, -29024490910866212762737827838497592929, !dbg !5841
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah), !dbg !5503
  br i1 %i.bc, label %bb.j, label %bb.i, !dbg !5842, !prof !335

bb.g:                                             ; preds = %bb.d
  %i.bd = tail call { ptr, ptr } %.32.val(ptr noundef nonnull %2) #28, !dbg !5843 ; 2 uses
  %i.be = extractvalue { ptr, ptr } %i.bd, 0, !dbg !5843 ; 6 uses
  %i.bf = extractvalue { ptr, ptr } %i.bd, 1, !dbg !5843
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag), !dbg !5844
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 24, !dbg !5845
  %i.bh = load ptr, ptr %i.bg, align 8, !dbg !5845, !invariant.load !275, !nonnull !275
  call void %i.bh(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.ag, ptr noundef %i.be) #28, !dbg !5846
  %i.bi = load i128, ptr %i.ag, align 16, !dbg !5847, !noundef !275
  %i.bj = icmp eq i128 %i.bi, 73452379776673834678682242685546573824, !dbg !5848
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag), !dbg !5844
  br i1 %i.bj, label %bb.n, label %bb.m, !dbg !5849, !prof !335

bb.h:                                             ; preds = %bb.d
  %i.bk = tail call { ptr, ptr } %.32.val(ptr noundef nonnull %2) #28, !dbg !5850 ; 2 uses
  %i.bl = extractvalue { ptr, ptr } %i.bk, 0, !dbg !5850 ; 6 uses
  %i.bm = extractvalue { ptr, ptr } %i.bk, 1, !dbg !5850
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af), !dbg !5851
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 24, !dbg !5852
  %i.bo = load ptr, ptr %i.bn, align 8, !dbg !5852, !invariant.load !275, !nonnull !275
  call void %i.bo(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.af, ptr noundef %i.bl) #28, !dbg !5853
  %i.bp = load i128, ptr %i.af, align 16, !dbg !5854, !noundef !275
  %i.bq = icmp eq i128 %i.bp, 96440377763526022781236111202877151541, !dbg !5855
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af), !dbg !5851
  br i1 %i.bq, label %bb.r, label %bb.q, !dbg !5856, !prof !335

bb.i:                                             ; preds = %bb.f
  call void @_RNvNtCscgRAwXFJnXP_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @62) #27, !dbg !5857
  unreachable, !dbg !5857

bb.j:                                             ; preds = %bb.f
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ax) ]
  call void @llvm.experimental.noalias.scope.decl(metadata !5525), !dbg !5858
  %i.br = getelementptr inbounds nuw i8, ptr %4, i64 16, !dbg !5859
  %i.bs = load i8, ptr %i.br, align 8, !dbg !5859, !range !334, !alias.scope !5525, !noalias !5526, !noundef !275
  %i.bt = and i8 %3, 4
  %7 = or disjoint i8 %i.bs, %i.bt, !dbg !5859
  %or.cond.not.not.i = icmp eq i8 %7, 0, !dbg !5859
  br i1 %or.cond.not.not.i, label %bb.l, label %bb.k, !dbg !5859

bb.k:                                             ; preds = %bb.j
  call void @_RINvNtNtCs4PheDXcg4wa_10polars_row5fixed7numeric6encodehEB6_(ptr noalias noundef nonnull %0, i64 noundef range(i64 0, -9223372036854775808) %1, ptr noundef nonnull align 8 %i.ax, i8 noundef %3, ptr noalias noundef nonnull align 8 %5, i64 noundef range(i64 0, 1152921504606846976) %6), !dbg !5860, !noalias !5525
  br label %_RINvNtCs4PheDXcg4wa_10polars_row6encode16encode_cat_arrayhEB4_.exit, !dbg !5860

bb.l:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !5861, !noalias !5527
  %i.bu = getelementptr inbounds nuw i8, ptr %i.ax, i64 40, !dbg !5862
  %i.bv = load ptr, ptr %i.bu, align 8, !dbg !5862, !noalias !5527, !nonnull !275, !noundef !275 ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.ax, i64 48, !dbg !5863
  %i.bx = load i64, ptr %i.bw, align 8, !dbg !5863, !noalias !5527, !noundef !275
  %i.by = getelementptr inbounds nuw i8, ptr %i.bv, i64 %i.bx, !dbg !5864
  %i.bz = getelementptr inbounds nuw i8, ptr %i.ax, i64 56, !dbg !5865 ; 2 uses
  %i.ca = load ptr, ptr %i.bz, align 8, !dbg !5865, !noalias !5527, !noundef !275
  %.not2.i = icmp eq ptr %i.ca, null, !dbg !5865
  %..i = select i1 %.not2.i, ptr null, ptr %i.bz, !dbg !5866
  %i.cb = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !5867
  call void @_RNvMs4_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validityINtB5_11ZipValidityRhINtNtNtCscgRAwXFJnXP_4core5slice4iter4IterhENtNtB7_8iterator10BitmapIterE17new_with_validityCs4PheDXcg4wa_10polars_row(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.cb, ptr noundef nonnull %i.bv, ptr noundef nonnull %i.by, ptr noundef align 8 %..i), !dbg !5868, !noalias !5527
  store ptr %i.at, ptr %i.c, align 8, !dbg !5867, !noalias !5527
  call void @_RINvNtNtCs4PheDXcg4wa_10polars_row8variable4utf810encode_strINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validity11ZipValidityRhINtNtNtB15_5slice4iter4IterhENtNtB1P_8iterator10BitmapIterENCINvNtB6_6encode16encode_cat_arrayhE0EEB6_(ptr noalias noundef nonnull %0, i64 noundef range(i64 0, -9223372036854775808) %1, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(64) %i.c, i8 noundef %3, ptr noalias noundef nonnull align 8 %5, i64 noundef range(i64 0, 1152921504606846976) %6), !dbg !5869
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !5870, !noalias !5527
  br label %_RINvNtCs4PheDXcg4wa_10polars_row6encode16encode_cat_arrayhEB4_.exit, !dbg !5871

bb.m:                                             ; preds = %bb.g
  call void @_RNvNtCscgRAwXFJnXP_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @63) #27, !dbg !5872
  unreachable, !dbg !5872

bb.n:                                             ; preds = %bb.g
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.be) ]
  call void @llvm.experimental.noalias.scope.decl(metadata !5529), !dbg !5873
  %i.cc = getelementptr inbounds nuw i8, ptr %4, i64 16, !dbg !5874
  %i.cd = load i8, ptr %i.cc, align 8, !dbg !5874, !range !334, !alias.scope !5529, !noalias !5530, !noundef !275
  %i.ce = and i8 %3, 4
  %8 = or disjoint i8 %i.cd, %i.ce, !dbg !5874
  %or.cond.not.not.i47 = icmp eq i8 %8, 0, !dbg !5874
  br i1 %or.cond.not.not.i47, label %bb.p, label %bb.o, !dbg !5874

bb.o:                                             ; preds = %bb.n
  call void @_RINvNtNtCs4PheDXcg4wa_10polars_row5fixed7numeric6encodetEB6_(ptr noalias noundef nonnull %0, i64 noundef range(i64 0, -9223372036854775808) %1, ptr noundef nonnull align 8 %i.be, i8 noundef %3, ptr noalias noundef nonnull align 8 %5, i64 noundef range(i64 0, 1152921504606846976) %6), !dbg !5875, !noalias !5529
  br label %_RINvNtCs4PheDXcg4wa_10polars_row6encode16encode_cat_arrayhEB4_.exit, !dbg !5875

bb.p:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !5876, !noalias !5531
  %i.cf = getelementptr inbounds nuw i8, ptr %i.be, i64 40, !dbg !5877
  %i.cg = load ptr, ptr %i.cf, align 8, !dbg !5877, !noalias !5531, !nonnull !275, !noundef !275 ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.be, i64 48, !dbg !5878
  %i.ci = load i64, ptr %i.ch, align 8, !dbg !5878, !noalias !5531, !noundef !275
  %i.cj = getelementptr inbounds nuw [2 x i8], ptr %i.cg, i64 %i.ci, !dbg !5879
  %i.ck = getelementptr inbounds nuw i8, ptr %i.be, i64 56, !dbg !5880 ; 2 uses
  %i.cl = load ptr, ptr %i.ck, align 8, !dbg !5880, !noalias !5531, !noundef !275
  %.not2.i49 = icmp eq ptr %i.cl, null, !dbg !5880
  %..i50 = select i1 %.not2.i49, ptr null, ptr %i.ck, !dbg !5881
  %i.cm = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !5882
  call void @_RNvMs4_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validityINtB5_11ZipValidityRtINtNtNtCscgRAwXFJnXP_4core5slice4iter4ItertENtNtB7_8iterator10BitmapIterE17new_with_validityCs4PheDXcg4wa_10polars_row(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.cm, ptr noundef nonnull %i.cg, ptr noundef nonnull %i.cj, ptr noundef align 8 %..i50), !dbg !5883, !noalias !5531
  store ptr %i.at, ptr %i.b, align 8, !dbg !5882, !noalias !5531
  call void @_RINvNtNtCs4PheDXcg4wa_10polars_row8variable4utf810encode_strINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validity11ZipValidityRtINtNtNtB15_5slice4iter4ItertENtNtB1P_8iterator10BitmapIterENCINvNtB6_6encode16encode_cat_arraytE0EEB6_(ptr noalias noundef nonnull %0, i64 noundef range(i64 0, -9223372036854775808) %1, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(64) %i.b, i8 noundef %3, ptr noalias noundef nonnull align 8 %5, i64 noundef range(i64 0, 1152921504606846976) %6), !dbg !5884
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !5885, !noalias !5531
  br label %_RINvNtCs4PheDXcg4wa_10polars_row6encode16encode_cat_arrayhEB4_.exit, !dbg !5886

bb.q:                                             ; preds = %bb.h
  call void @_RNvNtCscgRAwXFJnXP_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @64) #27, !dbg !5887
  unreachable, !dbg !5887

bb.r:                                             ; preds = %bb.h
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bl) ]
  call void @llvm.experimental.noalias.scope.decl(metadata !5533), !dbg !5888
  %i.cn = getelementptr inbounds nuw i8, ptr %4, i64 16, !dbg !5889
  %i.co = load i8, ptr %i.cn, align 8, !dbg !5889, !range !334, !alias.scope !5533, !noalias !5534, !noundef !275
  %i.cp = and i8 %3, 4
  %9 = or disjoint i8 %i.co, %i.cp, !dbg !5889
  %or.cond.not.not.i50 = icmp eq i8 %9, 0, !dbg !5889
  br i1 %or.cond.not.not.i50, label %bb.t, label %bb.s, !dbg !5889

bb.s:                                             ; preds = %bb.r
  call void @_RINvNtNtCs4PheDXcg4wa_10polars_row5fixed7numeric6encodemEB6_(ptr noalias noundef nonnull %0, i64 noundef range(i64 0, -9223372036854775808) %1, ptr noundef nonnull align 8 %i.bl, i8 noundef %3, ptr noalias noundef nonnull align 8 %5, i64 noundef range(i64 0, 1152921504606846976) %6), !dbg !5890, !noalias !5533
  br label %_RINvNtCs4PheDXcg4wa_10polars_row6encode16encode_cat_arrayhEB4_.exit, !dbg !5890

bb.t:                                             ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !5891, !noalias !5535
  %i.cq = getelementptr inbounds nuw i8, ptr %i.bl, i64 40, !dbg !5892
  %i.cr = load ptr, ptr %i.cq, align 8, !dbg !5892, !noalias !5535, !nonnull !275, !noundef !275 ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.bl, i64 48, !dbg !5893
  %i.ct = load i64, ptr %i.cs, align 8, !dbg !5893, !noalias !5535, !noundef !275
  %i.cu = getelementptr inbounds nuw [4 x i8], ptr %i.cr, i64 %i.ct, !dbg !5894
  %i.cv = getelementptr inbounds nuw i8, ptr %i.bl, i64 56, !dbg !5895 ; 2 uses
  %i.cw = load ptr, ptr %i.cv, align 8, !dbg !5895, !noalias !5535, !noundef !275
  %.not2.i53 = icmp eq ptr %i.cw, null, !dbg !5895
  %..i54 = select i1 %.not2.i53, ptr null, ptr %i.cv, !dbg !5896
  %i.cx = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !5897
  call void @_RNvMs4_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validityINtB5_11ZipValidityRmINtNtNtCscgRAwXFJnXP_4core5slice4iter4ItermENtNtB7_8iterator10BitmapIterE17new_with_validityCs4PheDXcg4wa_10polars_row(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.cx, ptr noundef nonnull %i.cr, ptr noundef nonnull %i.cu, ptr noundef align 8 %..i54), !dbg !5898, !noalias !5535
  store ptr %i.at, ptr %i.a, align 8, !dbg !5897, !noalias !5535
  call void @_RINvNtNtCs4PheDXcg4wa_10polars_row8variable4utf810encode_strINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validity11ZipValidityRmINtNtNtB15_5slice4iter4ItermENtNtB1P_8iterator10BitmapIterENCINvNtB6_6encode16encode_cat_arraymE0EEB6_(ptr noalias noundef nonnull %0, i64 noundef range(i64 0, -9223372036854775808) %1, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(64) %i.a, i8 noundef %3, ptr noalias noundef nonnull align 8 %5, i64 noundef range(i64 0, 1152921504606846976) %6), !dbg !5899
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !5900, !noalias !5535
  br label %_RINvNtCs4PheDXcg4wa_10polars_row6encode16encode_cat_arrayhEB4_.exit, !dbg !5901

_RINvNtCs4PheDXcg4wa_10polars_row6encode16encode_cat_arrayhEB4_.exit: ; preds = %bb.t, %bb.s, %bb.p, %bb.o, %bb.l, %bb.k, %bb.c, %bb.cp, %bb.cn, %bb.cl, %bb.cj, %bb.ch, %bb.cf, %bb.bp, %bb.bn, %bb.bl, %bb.bj, %bb.bh, %bb.bf, %bb.bd, %bb.bb, %bb.az, %bb.ax, %bb.av, %bb.at, %bb.ar, %bb.ac, %bb.w
  ret void, !dbg !5902

bb.u:                                             ; preds = %bb.c
  %i.cy = tail call { ptr, ptr } %.32.val(ptr noundef nonnull %2) #28, !dbg !5903 ; 2 uses
  %i.cz = extractvalue { ptr, ptr } %i.cy, 0, !dbg !5903 ; 4 uses
  %i.da = extractvalue { ptr, ptr } %i.cy, 1, !dbg !5903
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae), !dbg !5904
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 24, !dbg !5905
  %i.dc = load ptr, ptr %i.db, align 8, !dbg !5905, !invariant.load !275, !nonnull !275
  call void %i.dc(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.ae, ptr noundef %i.cz) #28, !dbg !5906
  %i.dd = load i128, ptr %i.ae, align 16, !dbg !5907, !noundef !275
  %i.de = icmp eq i128 %i.dd, 114555723586533567551938201543257205922, !dbg !5908
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae), !dbg !5904
  br i1 %i.de, label %bb.w, label %bb.v, !dbg !5909, !prof !335

bb.v:                                             ; preds = %bb.u
  call void @_RNvNtCscgRAwXFJnXP_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @66) #27, !dbg !5910
  unreachable, !dbg !5910

bb.w:                                             ; preds = %bb.u
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.cz) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ao), !dbg !5911
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad), !dbg !5912
  %i.df = getelementptr inbounds nuw i8, ptr %i.cz, i64 32, !dbg !5913
  call void @_RNvMs_NtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutableNtB4_6Bitmap4iter(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.ad, ptr noundef nonnull align 8 %i.df), !dbg !5914
  %i.dg = getelementptr inbounds nuw i8, ptr %i.cz, i64 64, !dbg !5915 ; 2 uses
  %i.dh = load ptr, ptr %i.dg, align 8, !dbg !5915, !noundef !275
  %.not40 = icmp eq ptr %i.dh, null, !dbg !5915
  %. = select i1 %.not40, ptr null, ptr %i.dg, !dbg !5916
  call void @_RNvMs4_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validityINtB5_11ZipValiditybNtNtB7_8iterator10BitmapIterB1o_E17new_with_validityCs4PheDXcg4wa_10polars_row(ptr noalias noundef nonnull sret([80 x i8]) align 8 captures(none) dereferenceable(80) %i.ao, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(40) %i.ad, ptr noundef align 8 %.), !dbg !5917
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !dbg !5918
  call void @_RINvNtNtCs4PheDXcg4wa_10polars_row5fixed7boolean11encode_boolINtNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validity11ZipValiditybNtNtB12_8iterator10BitmapIterB2d_EEB6_(ptr noalias noundef nonnull %0, i64 noundef %1, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(80) %i.ao, i8 noundef %3, ptr noalias noundef nonnull align 8 %5, i64 noundef %6), !dbg !5919
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao), !dbg !5920
  br label %_RINvNtCs4PheDXcg4wa_10polars_row6encode16encode_cat_arrayhEB4_.exit, !dbg !5921

bb.x:                                             ; preds = %bb.c
  br i1 %.not, label %.thread, label %bb.z, !dbg !5922

bb.y:                                             ; preds = %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c
  switch i8 %i.as, label %bb.ad [
    i8 2, label %bb.ae
    i8 3, label %bb.af
    i8 4, label %bb.ag
    i8 5, label %bb.ah
    i8 6, label %.thread
    i8 7, label %bb.ai
    i8 8, label %bb.aj
    i8 9, label %bb.ak
    i8 10, label %bb.al
    i8 11, label %bb.am
    i8 12, label %bb.an
    i8 13, label %bb.ao
    i8 14, label %bb.ap
  ], !dbg !5923, !prof !5552

bb.z:                                             ; preds = %bb.x
  %i.di = load i64, ptr %4, align 8, !dbg !5924, !range !333, !noundef !275
  %i.dj = icmp eq i64 %i.di, -9223372036854775807, !dbg !5922
  br i1 %i.dj, label %bb.aa, label %.thread, !dbg !5922

bb.aa:                                            ; preds = %bb.z
  %i.dk = tail call { ptr, ptr } %.32.val(ptr noundef nonnull %2) #28, !dbg !5925 ; 2 uses
  %i.dl = extractvalue { ptr, ptr } %i.dk, 0, !dbg !5925 ; 3 uses
  %i.dm = extractvalue { ptr, ptr } %i.dk, 1, !dbg !5925
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac), !dbg !5926
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 24, !dbg !5927
  %i.do = load ptr, ptr %i.dn, align 8, !dbg !5927, !invariant.load !275, !nonnull !275
  call void %i.do(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.ac, ptr noundef %i.dl) #28, !dbg !5928
  %i.dp = load i128, ptr %i.ac, align 16, !dbg !5929, !noundef !275
  %i.dq = icmp eq i128 %i.dp, 50271761623952610538752740460616034604, !dbg !5930
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !dbg !5926
  br i1 %i.dq, label %bb.ac, label %bb.ab, !dbg !5931, !prof !335

bb.ab:                                            ; preds = %bb.aa
  call void @_RNvNtCscgRAwXFJnXP_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @67) #27, !dbg !5932
  unreachable, !dbg !5932

bb.ac:                                            ; preds = %bb.aa
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.dl) ]
  %i.dr = getelementptr inbounds nuw i8, ptr %4, i64 8, !dbg !5933
  %i.ds = load i64, ptr %i.dr, align 8, !dbg !5933, !noundef !275
  call void @_RNvNtNtCs4PheDXcg4wa_10polars_row5fixed7decimal6encode(ptr noalias noundef nonnull %0, i64 noundef %1, ptr noundef nonnull align 8 %i.dl, i8 noundef %3, ptr noalias noundef nonnull align 8 %5, i64 noundef %6, i64 noundef %i.ds), !dbg !5934
  br label %_RINvNtCs4PheDXcg4wa_10polars_row6encode16encode_cat_arrayhEB4_.exit, !dbg !5935

bb.ad:                                            ; preds = %bb.y
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @8, i64 noundef 40, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @68) #27, !dbg !5936
  unreachable, !dbg !5936

bb.ae:                                            ; preds = %bb.y
  %i.dt = tail call { ptr, ptr } %.32.val(ptr noundef nonnull %2) #28, !dbg !5937 ; 2 uses
  %i.du = extractvalue { ptr, ptr } %i.dt, 0, !dbg !5937 ; 3 uses
  %i.dv = extractvalue { ptr, ptr } %i.dt, 1, !dbg !5937
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab), !dbg !5938
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 24, !dbg !5939
  %i.dx = load ptr, ptr %i.dw, align 8, !dbg !5939, !invariant.load !275, !nonnull !275
  call void %i.dx(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.ab, ptr noundef %i.du) #28, !dbg !5940
  %i.dy = load i128, ptr %i.ab, align 16, !dbg !5941, !noundef !275
  %i.dz = icmp eq i128 %i.dy, -119874998505990822715841381625817430553, !dbg !5942
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !dbg !5938
  br i1 %i.dz, label %bb.ar, label %bb.aq, !dbg !5943, !prof !335

bb.af:                                            ; preds = %bb.y
  %i.ea = tail call { ptr, ptr } %.32.val(ptr noundef nonnull %2) #28, !dbg !5937 ; 2 uses
  %i.eb = extractvalue { ptr, ptr } %i.ea, 0, !dbg !5937 ; 3 uses
  %i.ec = extractvalue { ptr, ptr } %i.ea, 1, !dbg !5937
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa), !dbg !5944
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 24, !dbg !5945
  %i.ee = load ptr, ptr %i.ed, align 8, !dbg !5945, !invariant.load !275, !nonnull !275
  call void %i.ee(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.aa, ptr noundef %i.eb) #28, !dbg !5946
  %i.ef = load i128, ptr %i.aa, align 16, !dbg !5947, !noundef !275
  %i.eg = icmp eq i128 %i.ef, -78793753817882566535965685524726064889, !dbg !5948
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !dbg !5944
  br i1 %i.eg, label %bb.at, label %bb.as, !dbg !5949, !prof !335

bb.ag:                                            ; preds = %bb.y
  %i.eh = tail call { ptr, ptr } %.32.val(ptr noundef nonnull %2) #28, !dbg !5937 ; 2 uses
  %i.ei = extractvalue { ptr, ptr } %i.eh, 0, !dbg !5937 ; 3 uses
  %i.ej = extractvalue { ptr, ptr } %i.eh, 1, !dbg !5937
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !dbg !5950
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 24, !dbg !5951
  %i.el = load ptr, ptr %i.ek, align 8, !dbg !5951, !invariant.load !275, !nonnull !275
  call void %i.el(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.z, ptr noundef %i.ei) #28, !dbg !5952
  %i.em = load i128, ptr %i.z, align 16, !dbg !5953, !noundef !275
  %i.en = icmp eq i128 %i.em, 81576369837030253806108284022961461463, !dbg !5954
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !dbg !5950
  br i1 %i.en, label %bb.av, label %bb.au, !dbg !5955, !prof !335

bb.ah:                                            ; preds = %bb.y
  %i.eo = tail call { ptr, ptr } %.32.val(ptr noundef nonnull %2) #28, !dbg !5937 ; 2 uses
  %i.ep = extractvalue { ptr, ptr } %i.eo, 0, !dbg !5937 ; 3 uses
  %i.eq = extractvalue { ptr, ptr } %i.eo, 1, !dbg !5937
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y), !dbg !5956
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 24, !dbg !5957
  %i.es = load ptr, ptr %i.er, align 8, !dbg !5957, !invariant.load !275, !nonnull !275
  call void %i.es(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.y, ptr noundef %i.ep) #28, !dbg !5958
  %i.et = load i128, ptr %i.y, align 16, !dbg !5959, !noundef !275
  %i.eu = icmp eq i128 %i.et, -75827333214658614684500154332302622350, !dbg !5960
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !dbg !5956
  br i1 %i.eu, label %bb.ax, label %bb.aw, !dbg !5961, !prof !335

.thread:                                          ; preds = %bb.x, %bb.z, %bb.y
  %i.ev = tail call { ptr, ptr } %.32.val(ptr noundef nonnull %2) #28, !dbg !5937 ; 2 uses
  %i.ew = extractvalue { ptr, ptr } %i.ev, 0, !dbg !5937 ; 3 uses
  %i.ex = extractvalue { ptr, ptr } %i.ev, 1, !dbg !5937
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !dbg !5962
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ex, i64 24, !dbg !5963
  %i.ez = load ptr, ptr %i.ey, align 8, !dbg !5963, !invariant.load !275, !nonnull !275
  call void %i.ez(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.x, ptr noundef %i.ew) #28, !dbg !5964
  %i.fa = load i128, ptr %i.x, align 16, !dbg !5965, !noundef !275
  %i.fb = icmp eq i128 %i.fa, 50271761623952610538752740460616034604, !dbg !5966
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !dbg !5962
  br i1 %i.fb, label %bb.az, label %bb.ay, !dbg !5967, !prof !335

bb.ai:                                            ; preds = %bb.y
  %i.fc = tail call { ptr, ptr } %.32.val(ptr noundef nonnull %2) #28, !dbg !5937 ; 2 uses
  %i.fd = extractvalue { ptr, ptr } %i.fc, 0, !dbg !5937 ; 3 uses
  %i.fe = extractvalue { ptr, ptr } %i.fc, 1, !dbg !5937
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !dbg !5968
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fe, i64 24, !dbg !5969
  %i.fg = load ptr, ptr %i.ff, align 8, !dbg !5969, !invariant.load !275, !nonnull !275
  call void %i.fg(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.w, ptr noundef %i.fd) #28, !dbg !5970
  %i.fh = load i128, ptr %i.w, align 16, !dbg !5971, !noundef !275
  %i.fi = icmp eq i128 %i.fh, -29024490910866212762737827838497592929, !dbg !5972
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !dbg !5968
  br i1 %i.fi, label %bb.bb, label %bb.ba, !dbg !5973, !prof !335

bb.aj:                                            ; preds = %bb.y
  %i.fj = tail call { ptr, ptr } %.32.val(ptr noundef nonnull %2) #28, !dbg !5937 ; 2 uses
  %i.fk = extractvalue { ptr, ptr } %i.fj, 0, !dbg !5937 ; 3 uses
  %i.fl = extractvalue { ptr, ptr } %i.fj, 1, !dbg !5937
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !dbg !5974
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fl, i64 24, !dbg !5975
  %i.fn = load ptr, ptr %i.fm, align 8, !dbg !5975, !invariant.load !275, !nonnull !275
  call void %i.fn(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.v, ptr noundef %i.fk) #28, !dbg !5976
  %i.fo = load i128, ptr %i.v, align 16, !dbg !5977, !noundef !275
  %i.fp = icmp eq i128 %i.fo, 73452379776673834678682242685546573824, !dbg !5978
end_hunk_1
