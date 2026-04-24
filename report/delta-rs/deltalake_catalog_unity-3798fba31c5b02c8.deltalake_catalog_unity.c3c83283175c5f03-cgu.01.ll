inline.NumInlined: 739
inline.NumDeleted: 400
begin_hunk_0_@_RINvXsD_NtNtNtCs6sYutav3ODB_5serde7private2de7contentINtB6_22ContentRefDeserializerNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorENtNtCs1gOyXocuPRE_10serde_core2de12Deserializer18deserialize_structNtNvXNvNtCsgO8S5jLFugx_23deltalake_catalog_unity6modelss0_1__NtB3c_12ErrorDetailsNtB22_11Deserialize11deserialize9___VisitorEB3e_:bb.a
          to label %common.resume unwind label %bb.e, !noalias !486

common.resume:                                    ; preds = %.body316.i.i, %bb.hc, %bb.hj, %bb.hm, %bb.g, %.body.i, %bb.bd, %bb.bk, %bb.cc, %.body226.i.i, %bb.cl, %bb.co
  %common.resume.op = phi { ptr, i32 } [ %i.ff, %bb.co ], [ %i.dv, %bb.bd ], [ %i.ep, %bb.cc ], [ %.pn135.i.i, %.body.i ], [ %i.av, %bb.g ], [ %.pn135.i.i, %bb.bk ], [ %.pn153.i.i, %.body226.i.i ], [ %.pn145.i.i, %bb.cl ], [ %.pn191.i.i, %.body316.i.i ], [ %i.ml, %bb.hc ], [ %.pn191.i.i, %bb.hj ], [ %i.mv, %bb.hm ]
  resume { ptr, i32 } %common.resume.op

_RNvXs9_NtCsgO8S5jLFugx_23deltalake_catalog_unity6modelsNtB5_12ErrorDetailsNtNtCsbvkFyIu7lgC_4core7default7Default7default.exit.i.i: ; preds = %bb.c
end_hunk_0
begin_hunk_1_@_RINvXsD_NtNtNtCs6sYutav3ODB_5serde7private2de7contentINtB6_22ContentRefDeserializerNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorENtNtCs1gOyXocuPRE_10serde_core2de12Deserializer18deserialize_structNtNvXNvNtCsgO8S5jLFugx_23deltalake_catalog_unity6modelss0_1__NtB3c_12ErrorDetailsNtB22_11Deserialize11deserialize9___VisitorEB3e_:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !noalias !485
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae), !noalias !485
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj), !noalias !480
  %i.bd = icmp eq i64 %i.as, 0
  br i1 %i.bd, label %bb.n, label %bb.h

bb.h:                                             ; preds = %_RNvXs9_NtCsgO8S5jLFugx_23deltalake_catalog_unity6modelsNtB5_12ErrorDetailsNtNtCsbvkFyIu7lgC_4core7default7Default7default.exit.i.i
  %i.be = getelementptr inbounds nuw i8, ptr %i.aq, i64 32 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab), !noalias !487
  invoke void @_RINvXs6_NtNtCs1gOyXocuPRE_10serde_core2de5implsNtNtCs6Po7BT7Nknu_5alloc6string6StringNtB8_11Deserialize11deserializeINtNtNtNtCs6sYutav3ODB_5serde7private2de7content22ContentRefDeserializerNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorEECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.ab, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.aq)
          to label %.noexc.i.i unwind label %bb.i, !noalias !496

.noexc.i.i:                                       ; preds = %bb.h
  %i.bf = load i64, ptr %i.ab, align 8, !range !3, !noalias !487, !noundef !4 ; 2 uses
end_hunk_1
begin_hunk_2_@_RINvXsD_NtNtNtCs6sYutav3ODB_5serde7private2de7contentINtB6_22ContentRefDeserializerNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorENtNtCs1gOyXocuPRE_10serde_core2de12Deserializer18deserialize_structNtNvXNvNtCsgO8S5jLFugx_23deltalake_catalog_unity6modelss0_1__NtB3c_12ErrorDetailsNtB22_11Deserialize11deserialize9___VisitorEB3e_:bb.a
  %i.bi = load ptr, ptr %i.bh, align 8, !noalias !497 ; 2 uses
  br i1 %i.bg, label %bb.j, label %bb.m

.body193.i.i:                                     ; preds = %bb.bp, %.body187.i.i, %bb.i
  %.sroa.0104.0.i.i = phi i8 [ %.sroa.0104.2.i.i, %.body187.i.i ], [ %.sroa.0104.1.i.i, %bb.i ], [ %.sroa.0104.2.i.i, %bb.bp ]
  %.pn145.i.i = phi { ptr, i32 } [ %.pn143.i.i, %.body187.i.i ], [ %i.bj, %bb.i ], [ %i.ec, %bb.bp ]
  %6 = trunc nuw i8 %.sroa.0104.0.i.i to i1
  br i1 %6, label %bb.ch, label %bb.ci

bb.i:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i192.i.i, %bb.h
  %.sroa.0104.1.i.i = phi i8 [ %.sroa.0104.2.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i192.i.i ], [ 1, %bb.h ]
  %i.bj = landingpad { ptr, i32 }
          cleanup
  br label %.body193.i.i

bb.j:                                             ; preds = %.noexc.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !noalias !487
end_hunk_2
begin_hunk_3_@_RINvXsD_NtNtNtCs6sYutav3ODB_5serde7private2de7contentINtB6_22ContentRefDeserializerNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorENtNtCs1gOyXocuPRE_10serde_core2de12Deserializer18deserialize_structNtNvXNvNtCsgO8S5jLFugx_23deltalake_catalog_unity6modelss0_1__NtB3c_12ErrorDetailsNtB22_11Deserialize11deserialize9___VisitorEB3e_:bb.a
bb.o:                                             ; preds = %bb.n, %bb.m
  %.sroa.14.0.i = phi i64 [ 0, %bb.n ], [ 1, %bb.m ] ; 6 uses
  %.sroa.0.0.i = phi ptr [ %i.aq, %bb.n ], [ %i.be, %bb.m ] ; 7 uses
  %.sroa.0104.2.i.i = phi i8 [ 0, %bb.n ], [ 1, %bb.m ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai), !noalias !480
  %.not = icmp eq ptr %.sroa.0.0.i, %i.at         ; 3 uses
  br i1 %.not, label %.thread.i, label %bb.p
end_hunk_3
begin_hunk_4_@_RINvXsD_NtNtNtCs6sYutav3ODB_5serde7private2de7contentINtB6_22ContentRefDeserializerNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorENtNtCs1gOyXocuPRE_10serde_core2de12Deserializer18deserialize_structNtNvXNvNtCsgO8S5jLFugx_23deltalake_catalog_unity6modelss0_1__NtB3c_12ErrorDetailsNtB22_11Deserialize11deserialize9___VisitorEB3e_:bb.a
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringB1B_EECsgO8S5jLFugx_23deltalake_catalog_unity.exit178.i.i

.thread81.i:                                      ; preds = %bb.w, %.thread65.i.a
  %.sroa.094.6.i75.i = phi i1 [ false, %.thread65.i.a ], [ true, %bb.w ]
  %.sroa.14.273.i = phi i64 [ %.sroa.14.156.i, %.thread65.i.a ], [ %i.bx, %bb.w ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ag, ptr noundef nonnull align 8 dereferenceable(48) %i.bb, i64 48, i1 false), !noalias !480
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af), !noalias !480
  br label %.thread103.i
end_hunk_4
begin_hunk_5_@_RINvXsD_NtNtNtCs6sYutav3ODB_5serde7private2de7contentINtB6_22ContentRefDeserializerNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorENtNtCs1gOyXocuPRE_10serde_core2de12Deserializer18deserialize_structNtNvXNvNtCsgO8S5jLFugx_23deltalake_catalog_unity6modelss0_1__NtB3c_12ErrorDetailsNtB22_11Deserialize11deserialize9___VisitorEB3e_:bb.a
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit29.i

.thread103.i:                                     ; preds = %bb.aa, %.thread81.i
  %.sroa.089.8.i97.i = phi i1 [ false, %.thread81.i ], [ true, %bb.aa ]
  %.sroa.14.34095.i = phi i64 [ %.sroa.14.273.i, %.thread81.i ], [ %i.cg, %bb.aa ]
  %.sroa.094.6.i7488.i = phi i1 [ %.sroa.094.6.i75.i, %.thread81.i ], [ true, %bb.aa ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.af, ptr noundef nonnull align 8 dereferenceable(24) %i.bc, i64 24, i1 false), !noalias !480
  br label %_RINvXs4_NtCs1gOyXocuPRE_10serde_core2deQINtNtNtNtCs6sYutav3ODB_5serde7private2de7content18SeqRefDeserializerNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorENtB6_9SeqAccess12next_elementNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit172.thread.i.i

end_hunk_5
begin_hunk_6_@_RINvXsD_NtNtNtCs6sYutav3ODB_5serde7private2de7contentINtB6_22ContentRefDeserializerNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorENtNtCs1gOyXocuPRE_10serde_core2de12Deserializer18deserialize_structNtNvXNvNtCsgO8S5jLFugx_23deltalake_catalog_unity6modelss0_1__NtB3c_12ErrorDetailsNtB22_11Deserialize11deserialize9___VisitorEB3e_:bb.a
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit29.i unwind label %bb.ac, !noalias !472

_RINvXs4_NtCs1gOyXocuPRE_10serde_core2deQINtNtNtNtCs6sYutav3ODB_5serde7private2de7content18SeqRefDeserializerNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorENtB6_9SeqAccess12next_elementNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit172.thread.i.i: ; preds = %_RINvXs4_NtCs1gOyXocuPRE_10serde_core2deQINtNtNtNtCs6sYutav3ODB_5serde7private2de7content18SeqRefDeserializerNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorENtB6_9SeqAccess12next_elementNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit172.i.i, %bb.ae, %.thread103.i
  %.sroa.084.10.i113.i = phi i1 [ true, %bb.ae ], [ true, %_RINvXs4_NtCs1gOyXocuPRE_10serde_core2deQINtNtNtNtCs6sYutav3ODB_5serde7private2de7content18SeqRefDeserializerNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorENtB6_9SeqAccess12next_elementNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit172.i.i ], [ false, %.thread103.i ] ; 2 uses
  %.sroa.094.6.i7487112.i = phi i1 [ true, %bb.ae ], [ true, %_RINvXs4_NtCs1gOyXocuPRE_10serde_core2deQINtNtNtNtCs6sYutav3ODB_5serde7private2de7content18SeqRefDeserializerNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorENtB6_9SeqAccess12next_elementNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit172.i.i ], [ %.sroa.094.6.i7488.i, %.thread103.i ] ; 2 uses
  %.sroa.089.8.i96110.i = phi i1 [ true, %bb.ae ], [ true, %_RINvXs4_NtCs1gOyXocuPRE_10serde_core2deQINtNtNtNtCs6sYutav3ODB_5serde7private2de7content18SeqRefDeserializerNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorENtB6_9SeqAccess12next_elementNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit172.i.i ], [ %.sroa.089.8.i97.i, %.thread103.i ] ; 2 uses
  %.sroa.14.5.i = phi i64 [ %i.cp, %bb.ae ], [ %i.cy, %_RINvXs4_NtCs1gOyXocuPRE_10serde_core2deQINtNtNtNtCs6sYutav3ODB_5serde7private2de7content18SeqRefDeserializerNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorENtB6_9SeqAccess12next_elementNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit172.i.i ], [ %.sroa.14.34095.i, %.thread103.i ] ; 2 uses
  %.sroa.0.5.i = phi ptr [ %i.at, %bb.ae ], [ %i.cx, %_RINvXs4_NtCs1gOyXocuPRE_10serde_core2deQINtNtNtNtCs6sYutav3ODB_5serde7private2de7content18SeqRefDeserializerNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorENtB6_9SeqAccess12next_elementNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit172.i.i ], [ %i.at, %.thread103.i ] ; 2 uses
  %.sroa.10250.1326.i.i = phi i64 [ undef, %bb.ae ], [ %.sroa.10250.0.copyload.i.i, %_RINvXs4_NtCs1gOyXocuPRE_10serde_core2deQINtNtNtNtCs6sYutav3ODB_5serde7private2de7content18SeqRefDeserializerNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorENtB6_9SeqAccess12next_elementNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit172.i.i ], [ undef, %.thread103.i ]
  %.sroa.0248.1325.i.i = phi i64 [ -9223372036854775808, %bb.ae ], [ %i.cz, %_RINvXs4_NtCs1gOyXocuPRE_10serde_core2deQINtNtNtNtCs6sYutav3ODB_5serde7private2de7content18SeqRefDeserializerNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorENtB6_9SeqAccess12next_elementNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit172.i.i ], [ -9223372036854775808, %.thread103.i ] ; 2 uses
end_hunk_6
begin_hunk_7_@_RINvXsD_NtNtNtCs6sYutav3ODB_5serde7private2de7contentINtB6_22ContentRefDeserializerNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorENtNtCs1gOyXocuPRE_10serde_core2de12Deserializer18deserialize_structNtNvXNvNtCsgO8S5jLFugx_23deltalake_catalog_unity6modelss0_1__NtB3c_12ErrorDetailsNtB22_11Deserialize11deserialize9___VisitorEB3e_:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah), !noalias !480
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai), !noalias !480
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj), !noalias !480
  %7 = trunc nuw i8 %.sroa.0104.2.i.i to i1
  br i1 %7, label %bb.ak, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit23.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit23.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i19.i, %_RINvXs4_NtCs1gOyXocuPRE_10serde_core2deQINtNtNtNtCs6sYutav3ODB_5serde7private2de7content18SeqRefDeserializerNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorENtB6_9SeqAccess12next_elementNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit172.thread.i.i
  br i1 %.not, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit17.i, label %bb.ao
end_hunk_7
begin_hunk_8_@_RINvXsD_NtNtNtCs6sYutav3ODB_5serde7private2de7contentINtB6_22ContentRefDeserializerNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorENtNtCs1gOyXocuPRE_10serde_core2de12Deserializer18deserialize_structNtNvXNvNtCsgO8S5jLFugx_23deltalake_catalog_unity6modelss0_1__NtB3c_12ErrorDetailsNtB22_11Deserialize11deserialize9___VisitorEB3e_:bb.a
  br i1 %.not, label %.body14.i, label %bb.bf

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit17.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i13.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit23.i
  br i1 %.sroa.094.6.i7487112.i, label %bb.as, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit11.i

bb.ao:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit23.i
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.az)
end_hunk_8
begin_hunk_9_@_RINvXsD_NtNtNtCs6sYutav3ODB_5serde7private2de7contentINtB6_22ContentRefDeserializerNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorENtNtCs1gOyXocuPRE_10serde_core2de12Deserializer18deserialize_structNtNvXNvNtCsgO8S5jLFugx_23deltalake_catalog_unity6modelss0_1__NtB3c_12ErrorDetailsNtB22_11Deserialize11deserialize9___VisitorEB3e_:bb.a
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.az)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit17.i unwind label %bb.ar, !noalias !472

.body14.i:                                        ; preds = %bb.bf, %bb.ar, %bb.ap, %.body20.i
  %.pn.i.i = phi { ptr, i32 } [ %eh.lpad-body21.i, %.body20.i ], [ %eh.lpad-body21.i, %bb.bf ], [ %i.dn, %bb.ar ], [ %i.dl, %bb.ap ] ; 2 uses
  br i1 %.sroa.094.6.i7487112.i, label %bb.bh, label %.body8.i.a

bb.ar:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i13.i
  %i.dn = landingpad { ptr, i32 }
          cleanup
  br label %.body14.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit11.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i7.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit17.i
  br i1 %.sroa.089.8.i96110.i, label %bb.aw, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringB1B_EECsgO8S5jLFugx_23deltalake_catalog_unity.exit174.i.i

bb.as:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit17.i
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ba)
end_hunk_9
begin_hunk_10_@_RINvXsD_NtNtNtCs6sYutav3ODB_5serde7private2de7contentINtB6_22ContentRefDeserializerNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorENtNtCs1gOyXocuPRE_10serde_core2de12Deserializer18deserialize_structNtNvXNvNtCsgO8S5jLFugx_23deltalake_catalog_unity6modelss0_1__NtB3c_12ErrorDetailsNtB22_11Deserialize11deserialize9___VisitorEB3e_:bb.a
  %i.do = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ba)
          to label %.body8.i.a unwind label %bb.au, !noalias !496

bb.au:                                            ; preds = %bb.at
  %i.dp = landingpad { ptr, i32 }
end_hunk_10
begin_hunk_11_@_RINvXsD_NtNtNtCs6sYutav3ODB_5serde7private2de7contentINtB6_22ContentRefDeserializerNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorENtNtCs1gOyXocuPRE_10serde_core2de12Deserializer18deserialize_structNtNvXNvNtCsgO8S5jLFugx_23deltalake_catalog_unity6modelss0_1__NtB3c_12ErrorDetailsNtB22_11Deserialize11deserialize9___VisitorEB3e_:bb.a
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ba)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit11.i unwind label %bb.av, !noalias !472

.body8.i.a:                                       ; preds = %bb.bh, %bb.av, %bb.at, %.body14.i
  %.pn131.i.i = phi { ptr, i32 } [ %.pn.i.i, %.body14.i ], [ %.pn.i.i, %bb.bh ], [ %i.dq, %bb.av ], [ %i.do, %bb.at ] ; 2 uses
  br i1 %.sroa.089.8.i96110.i, label %bb.bi, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringB1B_EECsgO8S5jLFugx_23deltalake_catalog_unity.exit176.i.i

bb.av:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i7.i
  %i.dq = landingpad { ptr, i32 }
          cleanup
  br label %.body8.i.a

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringB1B_EECsgO8S5jLFugx_23deltalake_catalog_unity.exit174.i.i: ; preds = %bb.aw, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit11.i
  br i1 %.sroa.084.10.i113.i, label %bb.ay, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit5.i

bb.aw:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit11.i
  invoke void @_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringBP_EENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.bb)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringB1B_EECsgO8S5jLFugx_23deltalake_catalog_unity.exit174.i.i unwind label %bb.ax, !noalias !496

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringB1B_EECsgO8S5jLFugx_23deltalake_catalog_unity.exit176.i.i: ; preds = %bb.bi, %bb.ax, %.body8.i.a
  %.pn133.i.i = phi { ptr, i32 } [ %i.dr, %bb.ax ], [ %.pn131.i.i, %.body8.i.a ], [ %.pn131.i.i, %bb.bi ] ; 2 uses
  br i1 %.sroa.084.10.i113.i, label %bb.bj, label %.body.i

bb.ax:                                            ; preds = %bb.aw
  %i.dr = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringB1B_EECsgO8S5jLFugx_23deltalake_catalog_unity.exit176.i.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit5.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringB1B_EECsgO8S5jLFugx_23deltalake_catalog_unity.exit174.i.i
  br i1 %.not129.not.i.i, label %_RINvXs0_NvXNvNtCsgO8S5jLFugx_23deltalake_catalog_unity6modelss0_1__NtBb_12ErrorDetailsNtNtCs1gOyXocuPRE_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB1o_7Visitor9visit_seqQINtNtNtNtCs6sYutav3ODB_5serde7private2de7content18SeqRefDeserializerNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorEEBd_.exit.i, label %bb.bc
end_hunk_11
begin_hunk_12_@_RINvXsD_NtNtNtCs6sYutav3ODB_5serde7private2de7contentINtB6_22ContentRefDeserializerNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorENtNtCs1gOyXocuPRE_10serde_core2de12Deserializer18deserialize_structNtNvXNvNtCsgO8S5jLFugx_23deltalake_catalog_unity6modelss0_1__NtB3c_12ErrorDetailsNtB22_11Deserialize11deserialize9___VisitorEB3e_:bb.a
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bc)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit5.i unwind label %bb.bb, !noalias !472

.body.i:                                          ; preds = %bb.bj, %bb.bb, %bb.az, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringB1B_EECsgO8S5jLFugx_23deltalake_catalog_unity.exit176.i.i
  %.pn135.i.i = phi { ptr, i32 } [ %.pn133.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringB1B_EECsgO8S5jLFugx_23deltalake_catalog_unity.exit176.i.i ], [ %.pn133.i.i, %bb.bj ], [ %i.du, %bb.bb ], [ %i.ds, %bb.az ] ; 2 uses
  br i1 %.not129.not.i.i, label %common.resume, label %bb.bk

bb.bb:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i
end_hunk_12
begin_hunk_13_@_RINvXsD_NtNtNtCs6sYutav3ODB_5serde7private2de7contentINtB6_22ContentRefDeserializerNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorENtNtCs1gOyXocuPRE_10serde_core2de12Deserializer18deserialize_structNtNvXNvNtCsgO8S5jLFugx_23deltalake_catalog_unity6modelss0_1__NtB3c_12ErrorDetailsNtB22_11Deserialize11deserialize9___VisitorEB3e_:bb.a
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #18, !noalias !496
  unreachable

bb.bh:                                            ; preds = %.body14.i
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef align 8 dereferenceable(24) %i.ba) #19
          to label %.body8.i.a unwind label %bb.bg, !noalias !496

bb.bi:                                            ; preds = %.body8.i.a
  invoke void @_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringBP_EENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.bb)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringB1B_EECsgO8S5jLFugx_23deltalake_catalog_unity.exit176.i.i unwind label %bb.bg, !noalias !496

bb.bj:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringB1B_EECsgO8S5jLFugx_23deltalake_catalog_unity.exit176.i.i
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef align 8 dereferenceable(24) %i.bc) #19
          to label %.body.i unwind label %bb.bg, !noalias !496

end_hunk_13
begin_hunk_14_@_RINvXsD_NtNtNtCs6sYutav3ODB_5serde7private2de7contentINtB6_22ContentRefDeserializerNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorENtNtCs1gOyXocuPRE_10serde_core2de12Deserializer18deserialize_structNtNvXNvNtCsgO8S5jLFugx_23deltalake_catalog_unity6modelss0_1__NtB3c_12ErrorDetailsNtB22_11Deserialize11deserialize9___VisitorEB3e_:bb.a

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit196.i.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i192.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj), !noalias !480
  %8 = trunc nuw i8 %.sroa.0104.2.i.i to i1
  br i1 %8, label %bb.br, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i

bb.br:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit196.i.i
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ak)
end_hunk_14
begin_hunk_15_@_RINvXsD_NtNtNtCs6sYutav3ODB_5serde7private2de7contentINtB6_22ContentRefDeserializerNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorENtNtCs1gOyXocuPRE_10serde_core2de12Deserializer18deserialize_structNtNvXNvNtCsgO8S5jLFugx_23deltalake_catalog_unity6modelss0_1__NtB3c_12ErrorDetailsNtB22_11Deserialize11deserialize9___VisitorEB3e_:bb.a
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef align 8 dereferenceable(24) %i.bc) #19
          to label %.body226.i.i unwind label %bb.bg, !noalias !496

bb.ch:                                            ; preds = %.body193.i.i
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef align 8 dereferenceable(24) %i.ak) #19
          to label %bb.ci unwind label %bb.bg, !noalias !496

bb.ci:                                            ; preds = %bb.ch, %.body193.i.i
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef align 8 dereferenceable(24) %i.az) #19
          to label %bb.cj unwind label %bb.bg, !noalias !496

end_hunk_15
