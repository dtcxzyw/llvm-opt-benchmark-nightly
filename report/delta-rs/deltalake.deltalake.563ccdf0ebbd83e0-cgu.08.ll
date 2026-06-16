inline.NumInlined: 4980
inline.NumDeleted: 1569
begin_hunk_0_@_RINvMs5_NtCsfYVtenZkBsn_12arrow_schema5fieldNtB6_5Field9with_nameNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake:bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %1, ptr noundef nonnull readonly align 8 dereferenceable(24) %2, i64 24, i1 false), !alias.scope !139
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull align 8 dereferenceable(112) %1, i64 112, i1 false)
  ret void

bb.f:                                             ; preds = %.body.i
  %i.d = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #47
  unreachable

bb.g:                                             ; preds = %.body.i
  resume { ptr, i32 } %eh.lpad-body.i
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs5_NtCsfYVtenZkBsn_12arrow_schema6schemaNtB6_6Schema3newINtNtCs6Po7BT7Nknu_5alloc3vec3VecINtNtB12_4sync3ArcNtNtB8_5field5FieldEEECs7p2uQeJxui2_9deltalake(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([64 x i8]) align 8 captures(none) dereferenceable(64) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 7 uses
  %i.b = alloca [24 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.c = invoke { i64, i64 } @_RINvMs2_NtNtCs2pqxYH9ZEk8_3std6thread5localINtB6_8LocalKeyINtNtCsbvkFyIu7lgC_4core4cell4CellTyyEEE4withNCNvMNtNtBa_4hash6randomNtB1I_11RandomState3new0B21_ECs7p2uQeJxui2_9deltalake(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) @3)
          to label %bb.b unwind label %bb.f       ; 2 uses

bb.b:                                             ; preds = %bb.a
  %i.d = extractvalue { i64, i64 } %i.c, 0
  %i.e = extractvalue { i64, i64 } %i.c, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) @5, i64 32, i1 false)
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store i64 %i.d, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store i64 %i.e, ptr %.sroa.5.0..sroa_idx, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !141)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !144)
  %i.f = invoke { ptr, i64 } @_RNvXs4_NtCsfYVtenZkBsn_12arrow_schema6fieldsNtB5_6FieldsINtNtCsbvkFyIu7lgC_4core7convert4FromINtNtCs6Po7BT7Nknu_5alloc3vec3VecINtNtB1y_4sync3ArcNtNtB7_5field5FieldEEE4from(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.b)
          to label %bb.e unwind label %bb.c, !noalias !146 ; 2 uses

bb.c:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringBP_EENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.a)
          to label %.body unwind label %bb.d, !noalias !147

bb.d:                                             ; preds = %bb.c
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #47, !noalias !147
  unreachable

bb.e:                                             ; preds = %bb.b
  %i.i = extractvalue { ptr, i64 } %i.f, 0
  %i.j = extractvalue { ptr, i64 } %i.f, 1
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.k, ptr noundef nonnull align 8 dereferenceable(48) %i.a, i64 48, i1 false), !alias.scope !146, !noalias !149
  store ptr %i.i, ptr %0, align 8, !alias.scope !141, !noalias !150
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.j, ptr %i.l, align 8, !alias.scope !141, !noalias !150
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void

.body:                                            ; preds = %bb.c, %bb.f
  %eh.lpad-body6 = phi { ptr, i32 } [ %i.m, %bb.f ], [ %i.g, %bb.c ]
  resume { ptr, i32 } %eh.lpad-body6

bb.f:                                             ; preds = %bb.a
  %i.m = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecINtNtBL_4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEEECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(24) %i.b) #50
          to label %.body unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #47
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs5_NtCsfYVtenZkBsn_12arrow_schema6schemaNtB6_6Schema3newINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtB8_5field5FieldEECs7p2uQeJxui2_9deltalake(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([64 x i8]) align 8 captures(none) dereferenceable(64) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 7 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.c = invoke { i64, i64 } @_RINvMs2_NtNtCs2pqxYH9ZEk8_3std6thread5localINtB6_8LocalKeyINtNtCsbvkFyIu7lgC_4core4cell4CellTyyEEE4withNCNvMNtNtBa_4hash6randomNtB1I_11RandomState3new0B21_ECs7p2uQeJxui2_9deltalake(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) @3)
          to label %bb.b unwind label %bb.f       ; 2 uses

bb.b:                                             ; preds = %bb.a
  %i.d = extractvalue { i64, i64 } %i.c, 0
  %i.e = extractvalue { i64, i64 } %i.c, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) @5, i64 32, i1 false)
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store i64 %i.d, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store i64 %i.e, ptr %.sroa.5.0..sroa_idx, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !151)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !154)
  %i.f = invoke { ptr, i64 } @_RNvXs3_NtCsfYVtenZkBsn_12arrow_schema6fieldsNtB5_6FieldsINtNtCsbvkFyIu7lgC_4core7convert4FromINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtB7_5field5FieldEE4from(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1)
          to label %bb.e unwind label %bb.c       ; 2 uses

bb.c:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringBP_EENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.a)
          to label %.body unwind label %bb.d, !noalias !156

bb.d:                                             ; preds = %bb.c
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #47, !noalias !156
  unreachable

bb.e:                                             ; preds = %bb.b
  %i.i = extractvalue { ptr, i64 } %i.f, 0
  %i.j = extractvalue { ptr, i64 } %i.f, 1
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.k, ptr noundef nonnull align 8 dereferenceable(48) %i.a, i64 48, i1 false), !alias.scope !158, !noalias !159
  store ptr %i.i, ptr %0, align 8, !alias.scope !151, !noalias !160
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.j, ptr %i.l, align 8, !alias.scope !151, !noalias !160
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void

.body:                                            ; preds = %bb.c, %bb.f
  %eh.lpad-body6 = phi { ptr, i32 } [ %i.m, %bb.f ], [ %i.g, %bb.c ]
  resume { ptr, i32 } %eh.lpad-body6

bb.f:                                             ; preds = %bb.a
  %i.m = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(24) %i.b) #50
          to label %.body unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #47
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, i64 } @_RINvMs8_NtNtNtCs6Po7BT7Nknu_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker5OwnedNtNtBc_6string6StringNtNtCseqDwI8vvjGQ_10serde_json5value5ValueNtB1a_4LeafE8new_leafNtNtBc_5alloc6GlobalECs7p2uQeJxui2_9deltalake() unnamed_addr #1 {
bb.a:
  %i.a = tail call noundef nonnull align 8 ptr @_RNvMs_NtCs6Po7BT7Nknu_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node8LeafNodeNtNtB6_6string6StringNtNtCseqDwI8vvjGQ_10serde_json5value5ValueEE13new_uninit_inCs7p2uQeJxui2_9deltalake() ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 352
  store ptr null, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 626
  store i16 0, ptr %i.c, align 2
  %i.d = insertvalue { ptr, i64 } poison, ptr %i.a, 0
  %i.e = insertvalue { ptr, i64 } %i.d, i64 0, 1
  ret { ptr, i64 } %i.e
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, i64 } @_RINvMs8_NtNtNtCs6Po7BT7Nknu_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker5OwnedjINtNtBc_4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldENtB1a_4LeafE8new_leafNtNtBc_5alloc6GlobalECs7p2uQeJxui2_9deltalake() unnamed_addr #1 {
bb.a:
  %i.a = tail call noundef nonnull align 8 ptr @_RNvMs_NtCs6Po7BT7Nknu_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node8LeafNodejINtNtB6_4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEEE13new_uninit_inCs7p2uQeJxui2_9deltalake() ; 3 uses
  store ptr null, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 186
  store i16 0, ptr %i.b, align 2
  %i.c = insertvalue { ptr, i64 } poison, ptr %i.a, 0
  %i.d = insertvalue { ptr, i64 } %i.c, i64 0, 1
  ret { ptr, i64 } %i.d
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMsN_NtNtNtCs6Po7BT7Nknu_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutNtNtBc_6string6StringNtNtCseqDwI8vvjGQ_10serde_json5value5ValueNtB1n_4LeafENtB1n_4EdgeE16insert_recursingNtNtBc_5alloc6GlobalNCNvMs6_NtNtB8_3map5entryINtB3M_11VacantEntryB1D_B1Y_E12insert_entry0ECs7p2uQeJxui2_9deltalake(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %3, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %4, ptr noalias noundef nonnull readonly captures(none) %5) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 5 uses
  %i.c = alloca [56 x i8], align 8                ; 7 uses
  %.sroa.0.i.sroa.4 = alloca [48 x i8], align 8   ; 5 uses
  %i.d = alloca [32 x i8], align 8                ; 4 uses
  %i.e = alloca [24 x i8], align 8                ; 4 uses
  %i.f = alloca [32 x i8], align 8                ; 6 uses
  %i.g = alloca [32 x i8], align 8                ; 5 uses
  %i.h = alloca [24 x i8], align 8                ; 6 uses
  %.sroa.458 = alloca [48 x i8], align 8          ; 6 uses
  %i.i = alloca [32 x i8], align 8                ; 6 uses
  %i.j = alloca [88 x i8], align 8                ; 12 uses
  %i.k = alloca [32 x i8], align 8                ; 5 uses
  %i.l = alloca [24 x i8], align 8                ; 10 uses
  %.sroa.749 = alloca [48 x i8], align 8          ; 5 uses
  %i.m = alloca [32 x i8], align 8                ; 5 uses
  %i.n = alloca [24 x i8], align 8                ; 5 uses
  %.sroa.7 = alloca [48 x i8], align 8            ; 5 uses
  %.sroa.7279 = alloca [48 x i8], align 8         ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.n, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.m, ptr noundef nonnull align 8 dereferenceable(32) %3, i64 32, i1 false)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !161)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.458)
  %i.o = load ptr, ptr %1, align 8, !alias.scope !161, !noalias !164, !nonnull !17, !noundef !17 ; 13 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 626 ; 4 uses
  %i.q = load i16, ptr %i.p, align 2, !noalias !168, !noundef !17 ; 2 uses
  %i.r = icmp ugt i16 %i.q, 10
  br i1 %i.r, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.t = load i64, ptr %i.s, align 8, !alias.scope !161, !noalias !164, !noundef !17 ; 6 uses
  %i.u = icmp ult i64 %i.t, 5
  br i1 %i.u, label %bb.i, label %bb.f

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !169)
  %i.v = zext nneg i16 %i.q to i64                ; 2 uses
  %6 = add nuw nsw i64 %i.v, 1                    ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.o, i64 360 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.y = load i64, ptr %i.x, align 8, !alias.scope !172, !noalias !173, !noundef !17 ; 6 uses
  %i.z = add i64 %i.y, 1                          ; 3 uses
  %.not.i.i = icmp ugt i64 %6, %i.z
  %i.aa = getelementptr inbounds nuw [24 x i8], ptr %i.w, i64 %i.y ; 3 uses
  br i1 %.not.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aa, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.i, ptr noundef nonnull align 8 dereferenceable(32) %3, i64 32, i1 false)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !177)
  br label %.thread

bb.e:                                             ; preds = %bb.c
  %i.ab = getelementptr inbounds nuw [24 x i8], ptr %i.w, i64 %i.z
  %i.ac = sub nsw i64 %i.v, %i.y                  ; 2 uses
  %i.ad = mul nsw i64 %i.ac, 24
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ab, ptr nonnull align 8 %i.aa, i64 %i.ad, i1 false), !alias.scope !180, !noalias !183
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aa, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.i, ptr noundef nonnull align 8 dereferenceable(32) %3, i64 32, i1 false)
  %i.ae = getelementptr inbounds nuw [32 x i8], ptr %i.o, i64 %i.y
  %i.af = getelementptr inbounds nuw [32 x i8], ptr %i.o, i64 %i.z
  %i.ag = shl nsw i64 %i.ac, 5
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.af, ptr nonnull align 8 %i.ae, i64 %i.ag, i1 false), !alias.scope !185, !noalias !187
  br label %.thread

bb.f:                                             ; preds = %bb.b
  switch i64 %i.t, label %bb.g [
    i64 5, label %bb.i
    i64 6, label %bb.h
  ]

bb.g:                                             ; preds = %bb.f
  %i.ah = add i64 %i.t, -7
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.f, %bb.b
  %.sroa.07.0.i = phi i1 [ true, %bb.h ], [ true, %bb.g ], [ false, %bb.b ], [ false, %bb.f ] ; 2 uses
  %.sroa.58.0.i = phi i64 [ 0, %bb.h ], [ %i.ah, %bb.g ], [ %i.t, %bb.b ], [ %i.t, %bb.f ] ; 9 uses
  %.sroa.011.0.i = phi i64 [ 5, %bb.h ], [ 6, %bb.g ], [ 4, %bb.b ], [ %i.t, %bb.f ] ; 5 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.aj = load i64, ptr %i.ai, align 8, !alias.scope !161, !noalias !164, !noundef !17 ; 4 uses
  %i.ak = invoke noundef nonnull align 8 ptr @_RNvMs_NtCs6Po7BT7Nknu_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node8LeafNodeNtNtB6_6string6StringNtNtCseqDwI8vvjGQ_10serde_json5value5ValueEE13new_uninit_inCs7p2uQeJxui2_9deltalake()
          to label %.noexc.i unwind label %bb.o, !noalias !168 ; 8 uses

.noexc.i:                                         ; preds = %bb.i
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 352
  store ptr null, ptr %i.al, align 8, !noalias !188
  %i.am = getelementptr inbounds nuw i8, ptr %i.ak, i64 626 ; 2 uses
  store i16 0, ptr %i.am, align 2, !noalias !188
  tail call void @llvm.experimental.noalias.scope.decl(metadata !192)
  %i.an = load i16, ptr %i.p, align 2, !noalias !195, !noundef !17
  %i.ao = zext i16 %i.an to i64
  %i.ap = xor i64 %.sroa.011.0.i, -1
  %i.aq = add nsw i64 %i.ao, %i.ap                ; 5 uses
  %i.ar = trunc i64 %i.aq to i16
  store i16 %i.ar, ptr %i.am, align 2, !alias.scope !192, !noalias !197
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !195
  %i.as = getelementptr inbounds nuw i8, ptr %i.o, i64 360 ; 2 uses
  %i.at = getelementptr inbounds nuw [24 x i8], ptr %i.as, i64 %.sroa.011.0.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.h, ptr noundef nonnull align 8 dereferenceable(24) %i.at, i64 24, i1 false), !noalias !195
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !195
  %i.au = getelementptr inbounds nuw [32 x i8], ptr %i.o, i64 %.sroa.011.0.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.g, ptr noundef nonnull align 8 dereferenceable(32) %i.au, i64 32, i1 false), !noalias !195
  %i.av = icmp ult i64 %i.aq, 12
  br i1 %i.av, label %bb.p, label %bb.j, !prof !198

bb.j:                                             ; preds = %.noexc.i
  invoke void @_RNvNtNtCsbvkFyIu7lgC_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.aq, i64 noundef 11, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @50) #49
          to label %bb.l unwind label %bb.k, !noalias !195

bb.k:                                             ; preds = %bb.j
  %i.aw = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCseqDwI8vvjGQ_10serde_json5value5ValueECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(32) %i.g) #50
          to label %bb.n unwind label %bb.m, !noalias !195

bb.l:                                             ; preds = %bb.j
  unreachable

bb.m:                                             ; preds = %bb.n, %bb.k
  %i.ax = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #47, !noalias !195
  unreachable

bb.n:                                             ; preds = %bb.k
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.h) #50
          to label %.thread.i.i unwind label %bb.m, !noalias !195

.thread.i.i:                                      ; preds = %bb.n
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ak, i64 noundef 632, i64 noundef 8) #48, !noalias !188
  br label %bb.t

bb.o:                                             ; preds = %bb.i
  %i.ay = landingpad { ptr, i32 }
          cleanup
  br label %bb.t

bb.p:                                             ; preds = %.noexc.i
  %i.az = add nuw nsw i64 %.sroa.011.0.i, 1       ; 2 uses
  %i.ba = getelementptr inbounds nuw [24 x i8], ptr %i.as, i64 %i.az
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ak, i64 360
  %i.bc = mul nuw nsw i64 %i.aq, 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.bb, ptr nonnull readonly align 8 %i.ba, i64 %i.bc, i1 false), !alias.scope !199, !noalias !197
  %i.bd = getelementptr inbounds nuw [32 x i8], ptr %i.o, i64 %i.az
  %i.be = shl nuw nsw i64 %i.aq, 5
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 dereferenceable(632) %i.ak, ptr nonnull readonly align 8 %i.bd, i64 %i.be, i1 false), !alias.scope !203, !noalias !197
  %i.bf = trunc nuw nsw i64 %.sroa.011.0.i to i16
  store i16 %i.bf, ptr %i.p, align 2, !noalias !195
  %.sroa.057.0.copyload = load i64, ptr %i.h, align 8, !noalias !168 ; 3 uses
  %.sroa.458.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.458, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.458.0..sroa_idx, i64 16, i1 false), !noalias !168
  %.sroa.458.24..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.458, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.458.24..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %i.g, i64 32, i1 false), !noalias !168
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !195
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !195
  %spec.select.i = select i1 %.sroa.07.0.i, ptr %i.ak, ptr %i.o ; 8 uses
  %spec.select28.i = select i1 %.sroa.07.0.i, i64 0, i64 %i.aj ; 3 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %spec.select.i, i64 626 ; 2 uses
  %i.bh = load i16, ptr %i.bg, align 2, !noalias !207, !noundef !17 ; 2 uses
  %i.bi = zext i16 %i.bh to i64                   ; 2 uses
  %7 = add i16 %i.bh, 1
  %i.bj = getelementptr inbounds nuw i8, ptr %spec.select.i, i64 360 ; 2 uses
  %.not.i14.not.i = icmp ult i64 %.sroa.58.0.i, %i.bi
  %i.bk = getelementptr inbounds nuw [24 x i8], ptr %i.bj, i64 %.sroa.58.0.i ; 3 uses
  br i1 %.not.i14.not.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bk, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.f, ptr noundef nonnull align 8 dereferenceable(32) %3, i64 32, i1 false)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !213)
  br label %bb.v

bb.r:                                             ; preds = %bb.p
  %i.bl = add nuw nsw i64 %.sroa.58.0.i, 1        ; 2 uses
  %i.bm = getelementptr inbounds nuw [24 x i8], ptr %i.bj, i64 %i.bl
  %i.bn = sub nuw nsw i64 %i.bi, %.sroa.58.0.i    ; 2 uses
  %i.bo = mul nuw nsw i64 %i.bn, 24
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.bm, ptr nonnull align 8 %i.bk, i64 %i.bo, i1 false), !alias.scope !216, !noalias !219
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bk, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.f, ptr noundef nonnull align 8 dereferenceable(32) %3, i64 32, i1 false)
  %i.bp = getelementptr inbounds nuw [32 x i8], ptr %spec.select.i, i64 %.sroa.58.0.i
  %i.bq = getelementptr inbounds nuw [32 x i8], ptr %spec.select.i, i64 %i.bl
  %i.br = shl nuw nsw i64 %i.bn, 5
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.bq, ptr nonnull align 8 %i.bp, i64 %i.br, i1 false), !alias.scope !221, !noalias !223
  br label %bb.v

bb.s:                                             ; preds = %bb.u, %bb.t
  %i.bs = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #47, !noalias !224
  unreachable

.thread:                                          ; preds = %bb.d, %bb.e
  %i.bt = getelementptr inbounds nuw [32 x i8], ptr %i.o, i64 %i.y
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bt, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.i, i64 32, i1 false), !alias.scope !225, !noalias !226
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  %8 = trunc nuw nsw i64 %6 to i16
  store i16 %8, ptr %i.p, align 2, !noalias !226
  %i.bu = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bv = load i64, ptr %i.bu, align 8, !alias.scope !172, !noalias !173, !noundef !17
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.458)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  br label %bb.x

bb.t:                                             ; preds = %bb.o, %.thread.i.i
  %.pn.ph.i = phi { ptr, i32 } [ %i.aw, %.thread.i.i ], [ %i.ay, %bb.o ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCseqDwI8vvjGQ_10serde_json5value5ValueECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.m) #50
          to label %bb.u unwind label %bb.s, !noalias !227

bb.u:                                             ; preds = %bb.t
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.n) #50
          to label %.critedge20 unwind label %bb.s, !noalias !224

bb.v:                                             ; preds = %bb.q, %bb.r
  %i.bw = getelementptr inbounds nuw [32 x i8], ptr %spec.select.i, i64 %.sroa.58.0.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bw, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.f, i64 32, i1 false), !alias.scope !228, !noalias !207
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  store i16 %7, ptr %i.bg, align 2, !noalias !207
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.7, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.458, i64 48, i1 false), !noalias !229
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.458)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  %.not = icmp eq i64 %.sroa.057.0.copyload, -9223372036854775808
  br i1 %.not, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7279)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.7279, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.7, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7)
  %i.bx = getelementptr inbounds nuw i8, ptr %i.o, i64 352
  %i.by = load ptr, ptr %i.bx, align 8, !noalias !230, !noundef !17 ; 2 uses
  %.not.i180 = icmp eq ptr %i.by, null
  br i1 %.not.i180, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.w
  %i.bz = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %.sroa.0.i.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.ca = icmp eq i64 %i.aj, 0
  %.sroa.7279.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %.sroa.7279.24..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.7279, i64 16 ; 5 uses
  br label %bb.an

bb.x:                                             ; preds = %.thread, %bb.v
  %.sink.i68 = phi i64 [ %i.y, %.thread ], [ %.sroa.58.0.i, %bb.v ]
  %.sink46.i67 = phi i64 [ %i.bv, %.thread ], [ %spec.select28.i, %bb.v ]
  %.sink47.i66 = phi ptr [ %i.o, %.thread ], [ %spec.select.i, %bb.v ]
  store ptr %.sink47.i66, ptr %0, align 8
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sink46.i67, ptr %i.cb, align 8
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sink.i68, ptr %i.cc, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7)
  br label %bb.bx

._crit_edge:                                      ; preds = %bb.bw, %bb.w
  %.sroa.0.0 = phi i64 [ %.sroa.057.0.copyload, %bb.w ], [ %.sroa.0.i.sroa.0.0.copyload, %bb.bw ]
  %.lcssa172 = phi i64 [ 0, %bb.w ], [ %i.dg, %bb.bw ] ; 2 uses
  %.lcssa164 = phi ptr [ %i.ak, %bb.w ], [ %i.gb, %bb.bw ] ; 4 uses
  %.lcssa156 = phi i64 [ %i.aj, %bb.w ], [ %i.dg, %bb.bw ]
  %.lcssa = phi ptr [ %i.o, %bb.w ], [ %i.db, %bb.bw ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  %.sroa.02.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.02.sroa.4.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.7279, i64 48, i1 false)
  store i64 %.sroa.0.0, ptr %i.j, align 8
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 56
  store ptr %.lcssa, ptr %.sroa.43.0..sroa_idx, align 8
  %.sroa.54.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 64
  store i64 %.lcssa156, ptr %.sroa.54.0..sroa_idx, align 8
  %.sroa.65.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 72
  store ptr %.lcssa164, ptr %.sroa.65.0..sroa_idx, align 8
  %.sroa.76.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 80
  store i64 %.lcssa172, ptr %.sroa.76.0..sroa_idx, align 8
  %.val = load ptr, ptr %4, align 8, !nonnull !17, !noundef !17 ; 3 uses
  %i.cd = load ptr, ptr %.val, align 8, !noalias !233, !noundef !17 ; 4 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %.val, i64 8 ; 2 uses
  %.not.i23 = icmp eq ptr %i.cd, null
  br i1 %.not.i23, label %bb.y, label %bb.aa, !prof !28

bb.y:                                             ; preds = %._crit_edge
  invoke void @_RNvNtCsbvkFyIu7lgC_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @37) #49
          to label %bb.z unwind label %bb.ak, !noalias !233

bb.z:                                             ; preds = %bb.y
  unreachable

bb.aa:                                            ; preds = %._crit_edge
  tail call void @llvm.experimental.noalias.scope.decl(metadata !236)
  %i.cf = load i64, ptr %i.ce, align 8, !alias.scope !236, !noalias !233, !noundef !17 ; 2 uses
  %i.cg = invoke noundef nonnull align 8 ptr @_RNvMs_NtCs6Po7BT7Nknu_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node12InternalNodeNtNtB6_6string6StringNtNtCseqDwI8vvjGQ_10serde_json5value5ValueEE13new_uninit_inCs7p2uQeJxui2_9deltalake()
          to label %.noexc.i.i unwind label %bb.ae, !noalias !239 ; 9 uses

.noexc.i.i:                                       ; preds = %bb.aa
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 352
  store ptr null, ptr %i.ch, align 8, !noalias !239
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cg, i64 626 ; 3 uses
  store i16 0, ptr %i.ci, align 2, !noalias !239
  %i.cj = getelementptr inbounds nuw i8, ptr %i.cg, i64 632 ; 2 uses
  store ptr %i.cd, ptr %i.cj, align 8, !noalias !239
  %i.ck = add i64 %i.cf, 1                        ; 2 uses
  %.not.i.i.i.i.i = icmp eq i64 %i.ck, 0
  br i1 %.not.i.i.i.i.i, label %bb.ab, label %bb.af, !prof !28

bb.ab:                                            ; preds = %.noexc.i.i
  invoke void @_RNvNtCsbvkFyIu7lgC_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @8) #49
          to label %bb.ac unwind label %bb.ad, !noalias !239

bb.ac:                                            ; preds = %bb.ab
  unreachable

bb.ad:                                            ; preds = %bb.ab
  %i.cl = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.cg, i64 noundef 728, i64 noundef 8) #48, !noalias !239
  br label %.body.i.i

bb.ae:                                            ; preds = %bb.aa
  %i.cm = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  br label %.body.i.i

.body.i.i:                                        ; preds = %bb.ae, %bb.ad
  tail call void @llvm.trap()
  unreachable

bb.af:                                            ; preds = %.noexc.i.i
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cd, i64 352
  store ptr %i.cg, ptr %i.cn, align 8, !noalias !240
  %i.co = getelementptr inbounds nuw i8, ptr %i.cd, i64 624
  store i16 0, ptr %i.co, align 8, !noalias !245
  store ptr %i.cg, ptr %.val, align 8, !alias.scope !236, !noalias !233
  store i64 %i.ck, ptr %i.ce, align 8, !alias.scope !236, !noalias !233
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !233
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr noundef nonnull align 8 dereferenceable(88) %i.j, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !233
  %i.cp = getelementptr inbounds nuw i8, ptr %.sroa.7279, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.d, ptr noundef nonnull align 8 dereferenceable(32) %i.cp, i64 32, i1 false)
  %i.cq = icmp eq i64 %.lcssa172, %i.cf
  br i1 %i.cq, label %bb.ag, label %.invoke.i.i, !prof !246

.invoke.i.i:                                      ; preds = %bb.ag, %bb.af
  %i.cr = phi ptr [ @54, %bb.af ], [ @52, %bb.ag ]
  %i.cs = phi i64 [ 48, %bb.af ], [ 32, %bb.ag ]
  %i.ct = phi ptr [ @55, %bb.af ], [ @56, %bb.ag ]
  invoke void @_RNvNtCsbvkFyIu7lgC_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.cr, i64 noundef %i.cs, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ct) #49
          to label %.cont.i.i unwind label %bb.ah, !noalias !247

.cont.i.i:                                        ; preds = %.invoke.i.i
  unreachable

bb.ag:                                            ; preds = %bb.af
  %i.cu = load i16, ptr %i.ci, align 2, !noalias !247, !noundef !17 ; 3 uses
  %i.cv = icmp ult i16 %i.cu, 11
  br i1 %i.cv, label %bb.by, label %.invoke.i.i, !prof !246

bb.ah:                                            ; preds = %.invoke.i.i
  %i.cw = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCseqDwI8vvjGQ_10serde_json5value5ValueECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.d) #50
          to label %bb.aj unwind label %bb.ai, !noalias !251

bb.ai:                                            ; preds = %bb.aj, %bb.ah
  %i.cx = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #47, !noalias !233
  unreachable

bb.aj:                                            ; preds = %bb.ah
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e) #50
          to label %.critedge20 unwind label %bb.ai, !noalias !233

bb.ak:                                            ; preds = %bb.y
  %i.cy = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(88) %i.j) #50
          to label %bb.am unwind label %bb.al

bb.al:                                            ; preds = %bb.am, %bb.ak
  %i.cz = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #47
  unreachable

bb.am:                                            ; preds = %bb.ak
  %i.da = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCseqDwI8vvjGQ_10serde_json5value5ValueECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(32) %i.da) #50
          to label %.critedge20 unwind label %bb.al

bb.an:                                            ; preds = %.lr.ph, %bb.bw
  %.sroa.0.1 = phi i64 [ %.sroa.057.0.copyload, %.lr.ph ], [ %.sroa.0.i.sroa.0.0.copyload, %bb.bw ]
  %i.db = phi ptr [ %i.by, %.lr.ph ], [ %i.kb, %bb.bw ] ; 26 uses
  %i.dc = phi ptr [ %i.o, %.lr.ph ], [ %i.db, %bb.bw ]
  %i.dd = phi i64 [ %i.aj, %.lr.ph ], [ %i.dg, %bb.bw ]
  %i.de = phi ptr [ %i.ak, %.lr.ph ], [ %i.gb, %bb.bw ] ; 2 uses
  %i.df = phi i1 [ %i.ca, %.lr.ph ], [ true, %bb.bw ]
  %i.dg = add i64 %i.dd, 1                        ; 4 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dc, i64 624
  %i.di = load i16, ptr %i.dh, align 8, !noalias !230 ; 4 uses
  %i.dj = zext i16 %i.di to i64                   ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.749)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  store i64 %.sroa.0.1, ptr %i.l, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7279.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7279, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.k, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.7279.24..sroa_idx, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.sroa.4)
  br i1 %i.df, label %bb.ap, label %bb.ao, !prof !246

bb.ao:                                            ; preds = %bb.an
  invoke void @_RNvNtCsbvkFyIu7lgC_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @9, i64 noundef 53, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @10) #49
          to label %bb.aq unwind label %.loopexit.split-lp, !noalias !252

bb.ap:                                            ; preds = %bb.an
  %i.dk = getelementptr inbounds nuw i8, ptr %i.db, i64 626 ; 4 uses
  %i.dl = load i16, ptr %i.dk, align 2, !noalias !252, !noundef !17 ; 5 uses
  %i.dm = icmp ult i16 %i.dl, 11
  br i1 %i.dm, label %bb.as, label %bb.ar

.loopexit80.a:                                    ; preds = %bb.az
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.bu

.loopexit.split-lp:                               ; preds = %bb.ao
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.bu

bb.aq:                                            ; preds = %bb.ao
  unreachable

bb.ar:                                            ; preds = %bb.ap
  %i.dn = icmp ult i16 %i.di, 5
  br i1 %i.dn, label %bb.az, label %bb.aw

bb.as:                                            ; preds = %bb.ap
  %i.do = zext nneg i16 %i.dl to i64              ; 5 uses
  %i.dp = add nuw nsw i16 %i.dl, 1
  %i.dq = getelementptr inbounds nuw i8, ptr %i.db, i64 360 ; 2 uses
  %i.dr = add nuw nsw i64 %i.dj, 1                ; 7 uses
  %9 = icmp ugt i16 %i.dl, %i.di
  %i.ds = getelementptr inbounds nuw [24 x i8], ptr %i.dq, i64 %i.dj ; 3 uses
  br i1 %9, label %bb.au, label %bb.at

bb.at:                                            ; preds = %bb.as
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ds, ptr noundef nonnull align 8 dereferenceable(24) %i.l, i64 24, i1 false), !noalias !258
  %i.dt = getelementptr inbounds nuw [32 x i8], ptr %i.db, i64 %i.dj
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.dt, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.7279.24..sroa_idx, i64 32, i1 false)
  br label %bb.av

bb.au:                                            ; preds = %bb.as
  %i.du = getelementptr inbounds nuw [24 x i8], ptr %i.dq, i64 %i.dr
  %i.dv = sub nsw i64 %i.do, %i.dj                ; 2 uses
  %i.dw = mul nsw i64 %i.dv, 24
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.du, ptr nonnull align 8 %i.ds, i64 %i.dw, i1 false), !alias.scope !259, !noalias !262
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ds, ptr noundef nonnull align 8 dereferenceable(24) %i.l, i64 24, i1 false), !noalias !258
  %i.dx = getelementptr inbounds nuw [32 x i8], ptr %i.db, i64 %i.dj
  %i.dy = getelementptr inbounds nuw [32 x i8], ptr %i.db, i64 %i.dr
  %i.dz = shl nsw i64 %i.dv, 5
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.dy, ptr nonnull align 8 %i.dx, i64 %i.dz, i1 false), !alias.scope !268, !noalias !271
  %i.ea = getelementptr inbounds nuw [32 x i8], ptr %i.db, i64 %i.dj
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ea, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.7279.24..sroa_idx, i64 32, i1 false)
  %i.eb = getelementptr inbounds nuw i8, ptr %i.db, i64 632 ; 2 uses
  %i.ec = getelementptr inbounds nuw [8 x i8], ptr %i.eb, i64 %i.dr
  %i.ed = getelementptr inbounds nuw [8 x i8], ptr %i.eb, i64 %i.dj
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 16
  %i.ef = sub nsw i64 %i.do, %i.dj
  %i.eg = shl nsw i64 %i.ef, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ee, ptr nonnull align 8 %i.ec, i64 %i.eg, i1 false), !alias.scope !273, !noalias !276
  br label %bb.av

bb.av:                                            ; preds = %bb.at, %bb.au
  %i.eh = getelementptr inbounds nuw i8, ptr %i.db, i64 632
  %i.ei = add nuw nsw i64 %i.do, 2                ; 2 uses
  %i.ej = getelementptr inbounds nuw [8 x i8], ptr %i.eh, i64 %i.dr
  store ptr %i.de, ptr %i.ej, align 8, !alias.scope !273, !noalias !276
  store i16 %i.dp, ptr %i.dk, align 2, !noalias !276
  %i.ek = icmp samesign ult i64 %i.dr, %i.ei
  br i1 %i.ek, label %.lr.ph.i.i.i.preheader, label %.thread73

.lr.ph.i.i.i.preheader:                           ; preds = %bb.av
  %i.el = add nuw nsw i64 %i.do, 1
  %i.em = sub nsw i64 %i.el, %i.dj
  %i.en = sub nsw i64 %i.do, %i.dj
  %xtraiter517 = and i64 %i.em, 3                 ; 2 uses
  %lcmp.mod518.not = icmp eq i64 %xtraiter517, 0
  br i1 %lcmp.mod518.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol.preheader

.lr.ph.i.i.i.prol.preheader:                      ; preds = %.lr.ph.i.i.i.preheader
  %i.eo = getelementptr inbounds nuw i8, ptr %i.db, i64 632
  br label %.lr.ph.i.i.i.prol

.lr.ph.i.i.i.prol:                                ; preds = %.lr.ph.i.i.i.prol, %.lr.ph.i.i.i.prol.preheader
  %.sroa.0.06.i.i.i.prol = phi i64 [ %i.ep, %.lr.ph.i.i.i.prol ], [ %i.dr, %.lr.ph.i.i.i.prol.preheader ] ; 4 uses
  %prol.iter519 = phi i64 [ %prol.iter519.next, %.lr.ph.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.prol.preheader ]
  %i.ep = add nuw nsw i64 %.sroa.0.06.i.i.i.prol, 1 ; 2 uses
  %i.eq = icmp samesign ult i64 %.sroa.0.06.i.i.i.prol, 12
  tail call void @llvm.assume(i1 %i.eq)
  %i.er = getelementptr inbounds nuw [8 x i8], ptr %i.eo, i64 %.sroa.0.06.i.i.i.prol
  %i.es = load ptr, ptr %i.er, align 8, !noalias !276, !nonnull !17, !noundef !17 ; 2 uses
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 352
  store ptr %i.db, ptr %i.et, align 8, !noalias !276
  %i.eu = trunc nuw nsw i64 %.sroa.0.06.i.i.i.prol to i16
  %i.ev = getelementptr inbounds nuw i8, ptr %i.es, i64 624
  store i16 %i.eu, ptr %i.ev, align 8, !noalias !276
  %prol.iter519.next = add i64 %prol.iter519, 1   ; 2 uses
  %prol.iter519.cmp.not = icmp eq i64 %prol.iter519.next, %xtraiter517
  br i1 %prol.iter519.cmp.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol, !llvm.loop !277

.lr.ph.i.i.i.prol.loopexit:                       ; preds = %.lr.ph.i.i.i.prol, %.lr.ph.i.i.i.preheader
  %.sroa.0.06.i.i.i.unr = phi i64 [ %i.dr, %.lr.ph.i.i.i.preheader ], [ %i.ep, %.lr.ph.i.i.i.prol ]
  %i.ew = icmp ult i64 %i.en, 3
  br i1 %i.ew, label %.thread73, label %.lr.ph.i.i.i.preheader.new

.lr.ph.i.i.i.preheader.new:                       ; preds = %.lr.ph.i.i.i.prol.loopexit
  %i.ex = getelementptr inbounds nuw i8, ptr %i.db, i64 632
  %i.ey = getelementptr inbounds nuw i8, ptr %i.db, i64 632
  %i.ez = getelementptr inbounds nuw i8, ptr %i.db, i64 632
  %i.fa = getelementptr inbounds nuw i8, ptr %i.db, i64 632
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i, %.lr.ph.i.i.i.preheader.new
  %.sroa.0.06.i.i.i = phi i64 [ %.sroa.0.06.i.i.i.unr, %.lr.ph.i.i.i.preheader.new ], [ %i.ft, %.lr.ph.i.i.i ] ; 7 uses
  %i.fb = add nuw nsw i64 %.sroa.0.06.i.i.i, 1    ; 2 uses
  %i.fc = getelementptr inbounds nuw [8 x i8], ptr %i.ex, i64 %.sroa.0.06.i.i.i
  %i.fd = load ptr, ptr %i.fc, align 8, !noalias !276, !nonnull !17, !noundef !17 ; 2 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fd, i64 352
  store ptr %i.db, ptr %i.fe, align 8, !noalias !276
  %i.ff = trunc nuw nsw i64 %.sroa.0.06.i.i.i to i16
  %i.fg = getelementptr inbounds nuw i8, ptr %i.fd, i64 624
  store i16 %i.ff, ptr %i.fg, align 8, !noalias !276
  %i.fh = add nuw nsw i64 %.sroa.0.06.i.i.i, 2    ; 2 uses
  %i.fi = getelementptr inbounds nuw [8 x i8], ptr %i.ey, i64 %i.fb
  %i.fj = load ptr, ptr %i.fi, align 8, !noalias !276, !nonnull !17, !noundef !17 ; 2 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fj, i64 352
  store ptr %i.db, ptr %i.fk, align 8, !noalias !276
  %i.fl = trunc nuw nsw i64 %i.fb to i16
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fj, i64 624
  store i16 %i.fl, ptr %i.fm, align 8, !noalias !276
  %i.fn = add nuw nsw i64 %.sroa.0.06.i.i.i, 3    ; 2 uses
  %i.fo = getelementptr inbounds nuw [8 x i8], ptr %i.ez, i64 %i.fh
  %i.fp = load ptr, ptr %i.fo, align 8, !noalias !276, !nonnull !17, !noundef !17 ; 2 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fp, i64 352
  store ptr %i.db, ptr %i.fq, align 8, !noalias !276
  %i.fr = trunc nuw nsw i64 %i.fh to i16
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fp, i64 624
  store i16 %i.fr, ptr %i.fs, align 8, !noalias !276
  %i.ft = add nuw nsw i64 %.sroa.0.06.i.i.i, 4    ; 2 uses
  %i.fu = icmp ult i64 %.sroa.0.06.i.i.i, 9
  tail call void @llvm.assume(i1 %i.fu)
  %i.fv = getelementptr inbounds nuw [8 x i8], ptr %i.fa, i64 %i.fn
  %i.fw = load ptr, ptr %i.fv, align 8, !noalias !276, !nonnull !17, !noundef !17 ; 2 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fw, i64 352
  store ptr %i.db, ptr %i.fx, align 8, !noalias !276
  %i.fy = trunc nuw nsw i64 %i.fn to i16
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fw, i64 624
  store i16 %i.fy, ptr %i.fz, align 8, !noalias !276
  %exitcond.not.i.i.i.3 = icmp eq i64 %i.ft, %i.ei
  br i1 %exitcond.not.i.i.i.3, label %.thread73, label %.lr.ph.i.i.i

bb.aw:                                            ; preds = %bb.ar
  switch i16 %i.di, label %bb.ax [
    i16 5, label %bb.az
    i16 6, label %bb.ay
  ]

bb.ax:                                            ; preds = %bb.aw
  %i.ga = add nsw i64 %i.dj, -7
  br label %bb.az

bb.ay:                                            ; preds = %bb.aw
  br label %bb.az

bb.az:                                            ; preds = %bb.ay, %bb.ax, %bb.aw, %bb.ar
  %.sroa.06.0.i = phi i64 [ 5, %bb.ay ], [ 6, %bb.ax ], [ 4, %bb.ar ], [ 5, %bb.aw ] ; 7 uses
  %.sroa.5.0.i = phi i64 [ 0, %bb.ay ], [ %i.ga, %bb.ax ], [ %i.dj, %bb.ar ], [ 5, %bb.aw ] ; 9 uses
  %.sroa.03.0.i = phi i1 [ true, %bb.ay ], [ true, %bb.ax ], [ false, %bb.ar ], [ false, %bb.aw ]
  %i.gb = invoke noundef nonnull align 8 ptr @_RNvMs_NtCs6Po7BT7Nknu_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node12InternalNodeNtNtB6_6string6StringNtNtCseqDwI8vvjGQ_10serde_json5value5ValueEE13new_uninit_inCs7p2uQeJxui2_9deltalake()
          to label %.noexc.i29 unwind label %.loopexit80.a, !noalias !252 ; 10 uses

.noexc.i29:                                       ; preds = %bb.az
  %i.gc = getelementptr inbounds nuw i8, ptr %i.gb, i64 352
  store ptr null, ptr %i.gc, align 8, !noalias !279
  %i.gd = getelementptr inbounds nuw i8, ptr %i.gb, i64 626 ; 3 uses
  store i16 0, ptr %i.gd, align 2, !noalias !279
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !279
  tail call void @llvm.experimental.noalias.scope.decl(metadata !283)
  %i.ge = load i16, ptr %i.dk, align 2, !noalias !286, !noundef !17
  %i.gf = zext i16 %i.ge to i64
  %i.gg = xor i64 %.sroa.06.0.i, -1
  %i.gh = add nsw i64 %i.gf, %i.gg                ; 5 uses
  %i.gi = trunc i64 %i.gh to i16
  store i16 %i.gi, ptr %i.gd, align 2, !alias.scope !283, !noalias !288
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !286
  %i.gj = getelementptr inbounds nuw i8, ptr %i.db, i64 360 ; 2 uses
  %i.gk = getelementptr inbounds nuw [24 x i8], ptr %i.gj, i64 %.sroa.06.0.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %i.gk, i64 24, i1 false), !noalias !286
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !286
  %i.gl = getelementptr inbounds nuw [32 x i8], ptr %i.db, i64 %.sroa.06.0.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %i.gl, i64 32, i1 false), !noalias !286
  %i.gm = icmp ult i64 %i.gh, 12
  br i1 %i.gm, label %bb.bf, label %bb.ba, !prof !198

bb.ba:                                            ; preds = %.noexc.i29
  invoke void @_RNvNtNtCsbvkFyIu7lgC_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.gh, i64 noundef 11, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @50) #49
          to label %bb.bc unwind label %bb.bb, !noalias !286

bb.bb:                                            ; preds = %bb.ba
  %i.gn = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCseqDwI8vvjGQ_10serde_json5value5ValueECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(32) %i.a) #50
          to label %bb.be unwind label %bb.bd, !noalias !286

bb.bc:                                            ; preds = %bb.ba
  unreachable

bb.bd:                                            ; preds = %bb.be, %bb.bb
  %i.go = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #47, !noalias !286
  unreachable

bb.be:                                            ; preds = %bb.bb
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b) #50
          to label %bb.bo unwind label %bb.bd, !noalias !286

bb.bf:                                            ; preds = %.noexc.i29
  %i.gp = add nuw nsw i64 %.sroa.06.0.i, 1        ; 2 uses
  %i.gq = getelementptr inbounds nuw [24 x i8], ptr %i.gj, i64 %i.gp
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gb, i64 360
  %i.gs = mul nuw nsw i64 %i.gh, 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.gr, ptr nonnull readonly align 8 %i.gq, i64 %i.gs, i1 false), !alias.scope !289, !noalias !288
  %i.gt = getelementptr inbounds nuw [32 x i8], ptr %i.db, i64 %i.gp
  %i.gu = shl nuw nsw i64 %i.gh, 5
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 dereferenceable(632) %i.gb, ptr nonnull readonly align 8 %i.gt, i64 %i.gu, i1 false), !alias.scope !293, !noalias !288
  %i.gv = trunc nuw nsw i64 %.sroa.06.0.i to i16
  store i16 %i.gv, ptr %i.dk, align 2, !noalias !286
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false), !noalias !297
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bz, ptr noundef nonnull align 8 dereferenceable(32) %i.a, i64 32, i1 false), !noalias !297
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !286
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !286
  %i.gw = load i16, ptr %i.gd, align 2, !noalias !279, !noundef !17 ; 2 uses
  %i.gx = zext i16 %i.gw to i64                   ; 3 uses
end_hunk_0
begin_hunk_1_@_RINvMsN_NtNtNtCs6Po7BT7Nknu_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutNtNtBc_6string6StringNtNtCseqDwI8vvjGQ_10serde_json5value5ValueNtB1n_4LeafENtB1n_4EdgeE16insert_recursingNtNtBc_5alloc6GlobalNCNvMs6_NtNtB8_3map5entryINtB3M_11VacantEntryB1D_B1Y_E12insert_entry0ECs7p2uQeJxui2_9deltalake:bb.a
  %i.hz = getelementptr inbounds nuw [32 x i8], ptr %spec.select.i31, i64 %.sroa.5.0.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.hz, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.7279.24..sroa_idx, i64 32, i1 false)
  br label %bb.bs

bb.br:                                            ; preds = %bb.bp
  %i.ia = getelementptr inbounds nuw [24 x i8], ptr %i.hw, i64 %i.hx
  %i.ib = sub nuw nsw i64 %i.hu, %.sroa.5.0.i     ; 3 uses
  %i.ic = mul nuw nsw i64 %i.ib, 24
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ia, ptr nonnull align 8 %i.hy, i64 %i.ic, i1 false), !alias.scope !314, !noalias !317
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.hy, ptr noundef nonnull align 8 dereferenceable(24) %i.l, i64 24, i1 false), !noalias !258
  %i.id = getelementptr inbounds nuw [32 x i8], ptr %spec.select.i31, i64 %.sroa.5.0.i ; 2 uses
  %i.ie = getelementptr inbounds nuw [32 x i8], ptr %spec.select.i31, i64 %i.hx
  %i.if = shl nuw nsw i64 %i.ib, 5
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ie, ptr nonnull align 8 %i.id, i64 %i.if, i1 false), !alias.scope !319, !noalias !322
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.id, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.7279.24..sroa_idx, i64 32, i1 false)
  %i.ig = getelementptr inbounds nuw i8, ptr %spec.select.i31, i64 632 ; 2 uses
  %i.ih = getelementptr inbounds nuw [8 x i8], ptr %i.ig, i64 %i.hx
  %i.ii = getelementptr inbounds nuw [8 x i8], ptr %i.ig, i64 %.sroa.5.0.i
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ii, i64 16
  %i.ik = shl nuw nsw i64 %i.ib, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ij, ptr nonnull align 8 %i.ih, i64 %i.ik, i1 false), !alias.scope !324, !noalias !309
  br label %bb.bs

bb.bs:                                            ; preds = %bb.br, %bb.bq
  %i.il = getelementptr inbounds nuw i8, ptr %spec.select.i31, i64 632 ; 6 uses
  %i.im = add nuw nsw i64 %i.hu, 2                ; 2 uses
  %i.in = getelementptr inbounds nuw [8 x i8], ptr %i.il, i64 %i.hx
  store ptr %i.de, ptr %i.in, align 8, !alias.scope !324, !noalias !309
  store i16 %i.hv, ptr %i.hs, align 2, !noalias !309
  %i.io = icmp samesign ult i64 %i.hx, %i.im
  br i1 %i.io, label %.lr.ph.i.i11.i.preheader, label %.loopexit

.lr.ph.i.i11.i.preheader:                         ; preds = %bb.bs
  %i.ip = add nuw nsw i64 %i.hu, 1
  %i.iq = sub nsw i64 %i.ip, %.sroa.5.0.i
  %i.ir = sub nsw i64 %i.hu, %.sroa.5.0.i
  %xtraiter = and i64 %i.iq, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i11.i.prol.loopexit, label %.lr.ph.i.i11.i.prol

.lr.ph.i.i11.i.prol:                              ; preds = %.lr.ph.i.i11.i.preheader, %.lr.ph.i.i11.i.prol
  %.sroa.0.06.i.i12.i.prol = phi i64 [ %i.is, %.lr.ph.i.i11.i.prol ], [ %i.hx, %.lr.ph.i.i11.i.preheader ] ; 4 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i11.i.prol ], [ 0, %.lr.ph.i.i11.i.preheader ]
  %i.is = add nuw nsw i64 %.sroa.0.06.i.i12.i.prol, 1 ; 2 uses
  %i.it = icmp samesign ult i64 %.sroa.0.06.i.i12.i.prol, 12
  tail call void @llvm.assume(i1 %i.it)
  %i.iu = getelementptr inbounds nuw [8 x i8], ptr %i.il, i64 %.sroa.0.06.i.i12.i.prol
  %i.iv = load ptr, ptr %i.iu, align 8, !noalias !309, !nonnull !17, !noundef !17 ; 2 uses
  %i.iw = getelementptr inbounds nuw i8, ptr %i.iv, i64 352
  store ptr %spec.select.i31, ptr %i.iw, align 8, !noalias !309
  %i.ix = trunc nuw nsw i64 %.sroa.0.06.i.i12.i.prol to i16
  %i.iy = getelementptr inbounds nuw i8, ptr %i.iv, i64 624
  store i16 %i.ix, ptr %i.iy, align 8, !noalias !309
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i11.i.prol.loopexit, label %.lr.ph.i.i11.i.prol, !llvm.loop !327

.lr.ph.i.i11.i.prol.loopexit:                     ; preds = %.lr.ph.i.i11.i.prol, %.lr.ph.i.i11.i.preheader
  %.sroa.0.06.i.i12.i.unr = phi i64 [ %i.hx, %.lr.ph.i.i11.i.preheader ], [ %i.is, %.lr.ph.i.i11.i.prol ]
  %i.iz = icmp ult i64 %i.ir, 3
  br i1 %i.iz, label %.loopexit, label %.lr.ph.i.i11.i

.lr.ph.i.i11.i:                                   ; preds = %.lr.ph.i.i11.i.prol.loopexit, %.lr.ph.i.i11.i
  %.sroa.0.06.i.i12.i = phi i64 [ %i.js, %.lr.ph.i.i11.i ], [ %.sroa.0.06.i.i12.i.unr, %.lr.ph.i.i11.i.prol.loopexit ] ; 7 uses
  %i.ja = add nuw nsw i64 %.sroa.0.06.i.i12.i, 1  ; 2 uses
  %i.jb = getelementptr inbounds nuw [8 x i8], ptr %i.il, i64 %.sroa.0.06.i.i12.i
  %i.jc = load ptr, ptr %i.jb, align 8, !noalias !309, !nonnull !17, !noundef !17 ; 2 uses
  %i.jd = getelementptr inbounds nuw i8, ptr %i.jc, i64 352
  store ptr %spec.select.i31, ptr %i.jd, align 8, !noalias !309
  %i.je = trunc nuw nsw i64 %.sroa.0.06.i.i12.i to i16
  %i.jf = getelementptr inbounds nuw i8, ptr %i.jc, i64 624
  store i16 %i.je, ptr %i.jf, align 8, !noalias !309
  %i.jg = add nuw nsw i64 %.sroa.0.06.i.i12.i, 2  ; 2 uses
  %i.jh = getelementptr inbounds nuw [8 x i8], ptr %i.il, i64 %i.ja
  %i.ji = load ptr, ptr %i.jh, align 8, !noalias !309, !nonnull !17, !noundef !17 ; 2 uses
  %i.jj = getelementptr inbounds nuw i8, ptr %i.ji, i64 352
  store ptr %spec.select.i31, ptr %i.jj, align 8, !noalias !309
  %i.jk = trunc nuw nsw i64 %i.ja to i16
  %i.jl = getelementptr inbounds nuw i8, ptr %i.ji, i64 624
  store i16 %i.jk, ptr %i.jl, align 8, !noalias !309
  %i.jm = add nuw nsw i64 %.sroa.0.06.i.i12.i, 3  ; 2 uses
  %i.jn = getelementptr inbounds nuw [8 x i8], ptr %i.il, i64 %i.jg
  %i.jo = load ptr, ptr %i.jn, align 8, !noalias !309, !nonnull !17, !noundef !17 ; 2 uses
  %i.jp = getelementptr inbounds nuw i8, ptr %i.jo, i64 352
  store ptr %spec.select.i31, ptr %i.jp, align 8, !noalias !309
  %i.jq = trunc nuw nsw i64 %i.jg to i16
  %i.jr = getelementptr inbounds nuw i8, ptr %i.jo, i64 624
  store i16 %i.jq, ptr %i.jr, align 8, !noalias !309
  %i.js = add nuw nsw i64 %.sroa.0.06.i.i12.i, 4  ; 2 uses
  %i.jt = icmp ult i64 %.sroa.0.06.i.i12.i, 9
  tail call void @llvm.assume(i1 %i.jt)
  %i.ju = getelementptr inbounds nuw [8 x i8], ptr %i.il, i64 %i.jm
  %i.jv = load ptr, ptr %i.ju, align 8, !noalias !309, !nonnull !17, !noundef !17 ; 2 uses
  %i.jw = getelementptr inbounds nuw i8, ptr %i.jv, i64 352
  store ptr %spec.select.i31, ptr %i.jw, align 8, !noalias !309
  %i.jx = trunc nuw nsw i64 %i.jm to i16
  %i.jy = getelementptr inbounds nuw i8, ptr %i.jv, i64 624
  store i16 %i.jx, ptr %i.jy, align 8, !noalias !309
  %exitcond.not.i.i13.i.3 = icmp eq i64 %i.js, %i.im
  br i1 %exitcond.not.i.i13.i.3, label %.loopexit, label %.lr.ph.i.i11.i

bb.bt:                                            ; preds = %bb.bv, %bb.bu
  %i.jz = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #47, !noalias !328
  unreachable

bb.bu:                                            ; preds = %.loopexit80.a, %.loopexit.split-lp, %bb.bo
  %.pn.ph.i27 = phi { ptr, i32 } [ %.pn.i.i, %bb.bo ], [ %lpad.loopexit, %.loopexit80.a ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCseqDwI8vvjGQ_10serde_json5value5ValueECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.k) #50
          to label %bb.bv unwind label %bb.bt, !noalias !329

bb.bv:                                            ; preds = %bb.bu
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.l) #50
          to label %.critedge20 unwind label %bb.bt, !noalias !328

.thread73:                                        ; preds = %.lr.ph.i.i.i.prol.loopexit, %.lr.ph.i.i.i, %bb.av
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.sroa.4)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  br label %.loopexit81

.loopexit:                                        ; preds = %.lr.ph.i.i11.i.prol.loopexit, %.lr.ph.i.i11.i, %bb.bs
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.749, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.0.i.sroa.4, i64 48, i1 false), !noalias !330
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.sroa.4)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  %.not16 = icmp eq i64 %.sroa.0.i.sroa.0.0.copyload, -9223372036854775808
  br i1 %.not16, label %.loopexit81, label %bb.bw

bb.bw:                                            ; preds = %.loopexit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.7279, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.749, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.749)
  %i.ka = getelementptr inbounds nuw i8, ptr %i.db, i64 352
  %i.kb = load ptr, ptr %i.ka, align 8, !noalias !230, !noundef !17 ; 2 uses
  %.not.i = icmp eq ptr %i.kb, null
  br i1 %.not.i, label %._crit_edge, label %bb.an

.loopexit81:                                      ; preds = %.loopexit, %.thread73
  store ptr %spec.select.i, ptr %0, align 8
  %i.kc = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %spec.select28.i, ptr %i.kc, align 8
  %i.kd = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.58.0.i, ptr %i.kd, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.749)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7279)
  br label %bb.bx

bb.bx:                                            ; preds = %.loopexit81, %bb.x, %bb.by
  ret void

bb.by:                                            ; preds = %bb.ag
  %i.ke = zext nneg i16 %i.cu to i64              ; 3 uses
  %i.kf = add nuw nsw i16 %i.cu, 1
  store i16 %i.kf, ptr %i.ci, align 2, !noalias !247
  %i.kg = getelementptr inbounds nuw i8, ptr %i.cg, i64 360
  %i.kh = getelementptr inbounds nuw [24 x i8], ptr %i.kg, i64 %i.ke
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.kh, ptr noundef nonnull align 8 dereferenceable(88) %i.j, i64 24, i1 false)
  %i.ki = getelementptr inbounds nuw [32 x i8], ptr %i.cg, i64 %i.ke
  %i.kj = getelementptr inbounds nuw i8, ptr %.sroa.7279, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ki, ptr noundef nonnull align 8 dereferenceable(32) %i.kj, i64 32, i1 false)
  %i.kk = add nuw nsw i64 %i.ke, 1                ; 2 uses
  %i.kl = getelementptr inbounds nuw [8 x i8], ptr %i.cj, i64 %i.kk
  store ptr %.lcssa164, ptr %i.kl, align 8, !noalias !247
  %i.km = getelementptr inbounds nuw i8, ptr %.lcssa164, i64 352
  store ptr %i.cg, ptr %i.km, align 8, !noalias !247
  %i.kn = trunc nuw nsw i64 %i.kk to i16
  %i.ko = getelementptr inbounds nuw i8, ptr %.lcssa164, i64 624
  store i16 %i.kn, ptr %i.ko, align 8, !noalias !247
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !233
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !233
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  store ptr %spec.select.i, ptr %0, align 8
  %i.kp = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %spec.select28.i, ptr %i.kp, align 8
  %i.kq = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.58.0.i, ptr %i.kq, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7279)
  br label %bb.bx

.critedge20:                                      ; preds = %bb.bv, %bb.am, %bb.aj, %bb.u
  %.pn.pn = phi { ptr, i32 } [ %.pn.ph.i, %bb.u ], [ %.pn.ph.i27, %bb.bv ], [ %i.cy, %bb.am ], [ %i.cw, %bb.aj ]
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMsN_NtNtNtCs6Po7BT7Nknu_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutjINtNtBc_4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldENtB1n_4LeafENtB1n_4EdgeE16insert_recursingNtNtBc_5alloc6GlobalNCNvMs6_NtNtB8_3map5entryINtB3M_11VacantEntryjB1E_E12insert_entry0ECs7p2uQeJxui2_9deltalake(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1, i64 noundef %2, ptr noundef nonnull %3, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %4, ptr noalias noundef nonnull readonly captures(none) %5) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [16 x i8], align 8                ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 6 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [8 x i8], align 8                 ; 4 uses
  %i.f = alloca [8 x i8], align 8                 ; 6 uses
  %i.g = alloca [48 x i8], align 8                ; 8 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !331)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store ptr %3, ptr %i.f, align 8, !noalias !334
  %i.h = load ptr, ptr %1, align 8, !alias.scope !331, !noalias !336, !nonnull !17, !noundef !17 ; 11 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 186 ; 4 uses
  %i.j = load i16, ptr %i.i, align 2, !noalias !334, !noundef !17 ; 2 uses
  %i.k = icmp ugt i16 %i.j, 10
  br i1 %i.k, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.m = load i64, ptr %i.l, align 8, !alias.scope !331, !noalias !336, !noundef !17 ; 6 uses
  %i.n = icmp ult i64 %i.m, 5
  br i1 %i.n, label %bb.h, label %bb.e

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !337)
  %i.o = zext nneg i16 %i.j to i64                ; 2 uses
  %6 = add nuw nsw i64 %i.o, 1                    ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.r = load i64, ptr %i.q, align 8, !alias.scope !340, !noalias !341, !noundef !17 ; 7 uses
  %i.s = add i64 %i.r, 1                          ; 3 uses
  %.not.i.i = icmp ugt i64 %6, %i.s
  br i1 %.not.i.i, label %bb.d, label %bb.u

bb.d:                                             ; preds = %bb.c
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.r
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.s
  %i.v = sub nsw i64 %i.o, %i.r
  %i.w = shl nsw i64 %i.v, 3                      ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.u, ptr nonnull align 8 %i.t, i64 %i.w, i1 false), !alias.scope !343, !noalias !346
  %i.x = getelementptr inbounds nuw i8, ptr %i.h, i64 96 ; 2 uses
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %i.r
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %i.s
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.z, ptr nonnull align 8 %i.y, i64 %i.w, i1 false), !alias.scope !347, !noalias !346
  br label %bb.u

bb.e:                                             ; preds = %bb.b
  switch i64 %i.m, label %bb.f [
    i64 5, label %bb.h
    i64 6, label %bb.g
  ]

bb.f:                                             ; preds = %bb.e
  %i.aa = add i64 %i.m, -7
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.e, %bb.b
  %.sroa.07.0.i = phi i1 [ true, %bb.g ], [ true, %bb.f ], [ false, %bb.b ], [ false, %bb.e ] ; 2 uses
  %.sroa.58.0.i = phi i64 [ 0, %bb.g ], [ %i.aa, %bb.f ], [ %i.m, %bb.b ], [ %i.m, %bb.e ] ; 9 uses
  %.sroa.011.0.i = phi i64 [ 5, %bb.g ], [ 6, %bb.f ], [ 4, %bb.b ], [ %i.m, %bb.e ] ; 5 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ac = load i64, ptr %i.ab, align 8, !alias.scope !331, !noalias !336, !noundef !17 ; 4 uses
  %i.ad = invoke noundef nonnull align 8 ptr @_RNvMs_NtCs6Po7BT7Nknu_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node8LeafNodejINtNtB6_4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEEE13new_uninit_inCs7p2uQeJxui2_9deltalake()
          to label %.noexc.i unwind label %bb.n, !noalias !334 ; 8 uses

.noexc.i:                                         ; preds = %bb.h
  store ptr null, ptr %i.ad, align 8, !noalias !350
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 186 ; 2 uses
  store i16 0, ptr %i.ae, align 2, !noalias !350
  tail call void @llvm.experimental.noalias.scope.decl(metadata !354)
  %i.af = load i16, ptr %i.i, align 2, !noalias !357, !noundef !17
  %i.ag = zext i16 %i.af to i64
  %i.ah = xor i64 %.sroa.011.0.i, -1
  %i.ai = add nsw i64 %i.ag, %i.ah                ; 4 uses
  %i.aj = trunc i64 %i.ai to i16
  store i16 %i.aj, ptr %i.ae, align 2, !alias.scope !354, !noalias !350
  %i.ak = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 2 uses
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %.sroa.011.0.i
  %i.am = load i64, ptr %i.al, align 8, !noalias !357, !noundef !17 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !357
  %i.an = getelementptr inbounds nuw i8, ptr %i.h, i64 96 ; 2 uses
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %.sroa.011.0.i
  %i.ap = load ptr, ptr %i.ao, align 8, !noalias !357, !nonnull !17, !noundef !17 ; 4 uses
  store ptr %i.ap, ptr %i.e, align 8, !noalias !357
  %i.aq = icmp ult i64 %i.ai, 12
  br i1 %i.aq, label %bb.o, label %bb.i, !prof !198

bb.i:                                             ; preds = %.noexc.i
  invoke void @_RNvNtNtCsbvkFyIu7lgC_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.ai, i64 noundef 11, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @50) #49
          to label %bb.l unwind label %bb.j, !noalias !357

bb.j:                                             ; preds = %bb.i
  %i.ar = landingpad { ptr, i32 }
          cleanup
  %i.as = atomicrmw sub ptr %i.ap, i64 1 release, align 8, !noalias !358
  %i.at = icmp eq i64 %i.as, 1
  br i1 %i.at, label %bb.k, label %.thread.i.i

bb.k:                                             ; preds = %bb.j
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.e) #46
          to label %.thread.i.i unwind label %bb.m, !noalias !357

bb.l:                                             ; preds = %bb.i
  unreachable

bb.m:                                             ; preds = %bb.k
  %i.au = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #47, !noalias !357
  unreachable

.thread.i.i:                                      ; preds = %bb.k, %bb.j
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ad, i64 noundef 192, i64 noundef 8) #48, !noalias !350
  %.pre.i = load ptr, ptr %i.f, align 8, !alias.scope !363, !noalias !334
  br label %bb.r

bb.n:                                             ; preds = %bb.h
  %i.av = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

bb.o:                                             ; preds = %.noexc.i
  %i.aw = add nuw nsw i64 %.sroa.011.0.i, 1       ; 2 uses
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %i.aw
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.az = shl nuw nsw i64 %i.ai, 3                ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.ay, ptr nonnull readonly align 8 %i.ax, i64 %i.az, i1 false), !alias.scope !368, !noalias !350
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %i.aw
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ad, i64 96
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.bb, ptr nonnull readonly align 8 %i.ba, i64 %i.az, i1 false), !alias.scope !372, !noalias !350
  %i.bc = trunc nuw nsw i64 %.sroa.011.0.i to i16
  store i16 %i.bc, ptr %i.i, align 2, !noalias !357
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !357
  %spec.select.i = select i1 %.sroa.07.0.i, ptr %i.ad, ptr %i.h ; 6 uses
  %spec.select29.i = select i1 %.sroa.07.0.i, i64 0, i64 %i.ac ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %spec.select.i, i64 186 ; 2 uses
  %i.be = load i16, ptr %i.bd, align 2, !noalias !376, !noundef !17 ; 2 uses
  %i.bf = zext i16 %i.be to i64                   ; 2 uses
  %7 = add i16 %i.be, 1
  %i.bg = getelementptr inbounds nuw i8, ptr %spec.select.i, i64 8 ; 3 uses
  %.not.i14.not.i = icmp ult i64 %.sroa.58.0.i, %i.bf
  br i1 %.not.i14.not.i, label %bb.p, label %bb.t

bb.p:                                             ; preds = %bb.o
  %i.bh = add nuw nsw i64 %.sroa.58.0.i, 1        ; 2 uses
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %i.bg, i64 %.sroa.58.0.i
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.bg, i64 %i.bh
  %i.bk = sub nuw nsw i64 %i.bf, %.sroa.58.0.i
  %i.bl = shl nuw nsw i64 %i.bk, 3                ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.bj, ptr nonnull align 8 %i.bi, i64 %i.bl, i1 false), !alias.scope !380, !noalias !376
  %i.bm = getelementptr inbounds nuw i8, ptr %spec.select.i, i64 96 ; 2 uses
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.bm, i64 %.sroa.58.0.i
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %i.bm, i64 %i.bh
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.bo, ptr nonnull align 8 %i.bn, i64 %i.bl, i1 false), !alias.scope !383, !noalias !376
  br label %bb.t

bb.q:                                             ; preds = %bb.s
  %i.bp = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #47, !noalias !334
  unreachable

bb.r:                                             ; preds = %bb.n, %.thread.i.i
  %i.bq = phi ptr [ %.pre.i, %.thread.i.i ], [ %3, %bb.n ]
  %.pn.ph.i = phi { ptr, i32 } [ %i.ar, %.thread.i.i ], [ %i.av, %bb.n ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !386)
  call void @llvm.experimental.noalias.scope.decl(metadata !387)
  %i.br = atomicrmw sub ptr %i.bq, i64 1 release, align 8, !noalias !388
  %i.bs = icmp eq i64 %i.br, 1
  br i1 %i.bs, label %bb.s, label %.body

bb.s:                                             ; preds = %bb.r
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.f) #46
          to label %.body unwind label %bb.q, !noalias !334

bb.t:                                             ; preds = %bb.p, %bb.o
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %i.bg, i64 %.sroa.58.0.i
  store i64 %2, ptr %i.bt, align 8, !alias.scope !380, !noalias !376
  %i.bu = getelementptr inbounds nuw i8, ptr %spec.select.i, i64 96
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %i.bu, i64 %.sroa.58.0.i
  store ptr %3, ptr %i.bv, align 8, !alias.scope !383, !noalias !376
  store i16 %7, ptr %i.bd, align 2, !noalias !376
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %i.bw = load ptr, ptr %i.h, align 8, !noalias !389, !noundef !17 ; 2 uses
  %.not.i189 = icmp eq ptr %i.bw, null
  br i1 %.not.i189, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.t
  %i.bx = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.by = icmp eq i64 %i.ac, 0
  br label %bb.ak

bb.u:                                             ; preds = %bb.c, %bb.d
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.r
  store i64 %2, ptr %i.bz, align 8, !alias.scope !343, !noalias !346
  %i.ca = getelementptr inbounds nuw i8, ptr %i.h, i64 96
  %8 = getelementptr inbounds nuw [8 x i8], ptr %i.ca, i64 %i.r
  store ptr %3, ptr %8, align 8, !alias.scope !347, !noalias !346
  %9 = trunc nuw nsw i64 %6 to i16
  store i16 %9, ptr %i.i, align 2, !noalias !346
  %i.cb = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.cc = load i64, ptr %i.cb, align 8, !alias.scope !340, !noalias !341, !noundef !17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.bu

._crit_edge:                                      ; preds = %.loopexit74, %bb.t
  %.lcssa182 = phi i64 [ 0, %bb.t ], [ %i.dh, %.loopexit74 ] ; 2 uses
  %.lcssa175 = phi ptr [ %i.ad, %bb.t ], [ %i.ga, %.loopexit74 ] ; 4 uses
  %.lcssa168 = phi i64 [ %i.am, %bb.t ], [ %i.gj, %.loopexit74 ] ; 2 uses
  %.lcssa161 = phi i64 [ %i.ac, %bb.t ], [ %i.dh, %.loopexit74 ]
  %.lcssa = phi ptr [ %i.h, %bb.t ], [ %i.db, %.loopexit74 ]
  %storemerge.lcssa = phi ptr [ %i.ap, %bb.t ], [ %i.gm, %.loopexit74 ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  store ptr %.lcssa, ptr %i.g, align 8
  %.sroa.44.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store i64 %.lcssa161, ptr %.sroa.44.0..sroa_idx, align 8
  %.sroa.55.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store ptr %.lcssa175, ptr %.sroa.55.0..sroa_idx, align 8
  %.sroa.66.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  store i64 %.lcssa182, ptr %.sroa.66.0..sroa_idx, align 8
  %.sroa.77.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  store i64 %.lcssa168, ptr %.sroa.77.0..sroa_idx, align 8
  %.sroa.88.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 40 ; 2 uses
  store ptr %storemerge.lcssa, ptr %.sroa.88.0..sroa_idx, align 8
  %.val = load ptr, ptr %4, align 8, !nonnull !17, !noundef !17 ; 3 uses
  %i.cd = load ptr, ptr %.val, align 8, !noalias !392, !noundef !17 ; 4 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %.val, i64 8 ; 2 uses
  %.not.i21 = icmp eq ptr %i.cd, null
  br i1 %.not.i21, label %bb.v, label %bb.x, !prof !28

bb.v:                                             ; preds = %._crit_edge
  invoke void @_RNvNtCsbvkFyIu7lgC_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @37) #49
          to label %bb.w unwind label %bb.ah, !noalias !392

bb.w:                                             ; preds = %bb.v
  unreachable

bb.x:                                             ; preds = %._crit_edge
  tail call void @llvm.experimental.noalias.scope.decl(metadata !395)
  %i.cf = load i64, ptr %i.ce, align 8, !alias.scope !395, !noalias !392, !noundef !17 ; 2 uses
  %i.cg = invoke noundef nonnull align 8 ptr @_RNvMs_NtCs6Po7BT7Nknu_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node12InternalNodejINtNtB6_4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEEE13new_uninit_inCs7p2uQeJxui2_9deltalake()
          to label %.noexc.i.i unwind label %bb.ab, !noalias !398 ; 9 uses

.noexc.i.i:                                       ; preds = %bb.x
  store ptr null, ptr %i.cg, align 8, !noalias !398
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 186 ; 3 uses
  store i16 0, ptr %i.ch, align 2, !noalias !398
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cg, i64 192 ; 2 uses
  store ptr %i.cd, ptr %i.ci, align 8, !noalias !398
  %i.cj = add i64 %i.cf, 1                        ; 2 uses
  %.not.i.i.i.i.i = icmp eq i64 %i.cj, 0
  br i1 %.not.i.i.i.i.i, label %bb.y, label %bb.ac, !prof !28

bb.y:                                             ; preds = %.noexc.i.i
  invoke void @_RNvNtCsbvkFyIu7lgC_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @8) #49
          to label %bb.z unwind label %bb.aa, !noalias !398

bb.z:                                             ; preds = %bb.y
  unreachable

bb.aa:                                            ; preds = %bb.y
  %i.ck = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.cg, i64 noundef 288, i64 noundef 8) #48, !noalias !398
  br label %.body.i.i

bb.ab:                                            ; preds = %bb.x
  %i.cl = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  br label %.body.i.i

.body.i.i:                                        ; preds = %bb.ab, %bb.aa
  tail call void @llvm.trap()
  unreachable

bb.ac:                                            ; preds = %.noexc.i.i
  store ptr %i.cg, ptr %i.cd, align 8, !noalias !399
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cd, i64 184
  store i16 0, ptr %i.cm, align 8, !noalias !404
  store ptr %i.cg, ptr %.val, align 8, !alias.scope !395, !noalias !392
  store i64 %i.cj, ptr %i.ce, align 8, !alias.scope !395, !noalias !392
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !392
  store ptr %storemerge.lcssa, ptr %i.d, align 8, !noalias !392
  %i.cn = icmp eq i64 %.lcssa182, %i.cf
  br i1 %i.cn, label %bb.ad, label %.invoke.i.i, !prof !246

.invoke.i.i:                                      ; preds = %bb.ad, %bb.ac
  %i.co = phi ptr [ @54, %bb.ac ], [ @52, %bb.ad ]
  %i.cp = phi i64 [ 48, %bb.ac ], [ 32, %bb.ad ]
  %i.cq = phi ptr [ @55, %bb.ac ], [ @56, %bb.ad ]
  invoke void @_RNvNtCsbvkFyIu7lgC_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.co, i64 noundef %i.cp, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.cq) #49
          to label %.cont.i.i unwind label %bb.ae, !noalias !392

.cont.i.i:                                        ; preds = %.invoke.i.i
  unreachable

bb.ad:                                            ; preds = %bb.ac
  %i.cr = load i16, ptr %i.ch, align 2, !noalias !392, !noundef !17 ; 3 uses
  %i.cs = icmp ult i16 %i.cr, 11
  br i1 %i.cs, label %bb.bv, label %.invoke.i.i, !prof !246

bb.ae:                                            ; preds = %.invoke.i.i
  %i.ct = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cu = atomicrmw sub ptr %storemerge.lcssa, i64 1 release, align 8, !noalias !405
  %i.cv = icmp eq i64 %i.cu, 1
  br i1 %i.cv, label %bb.af, label %.body

bb.af:                                            ; preds = %bb.ae
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.d) #46
          to label %.body unwind label %bb.ag, !noalias !392

bb.ag:                                            ; preds = %bb.af
  %i.cw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #47, !noalias !392
  unreachable

bb.ah:                                            ; preds = %bb.v
  %i.cx = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cy = atomicrmw sub ptr %storemerge.lcssa, i64 1 release, align 8, !noalias !410
  %i.cz = icmp eq i64 %i.cy, 1
  br i1 %i.cz, label %bb.ai, label %.body

bb.ai:                                            ; preds = %bb.ah
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(8) %.sroa.88.0..sroa_idx) #46
          to label %.body unwind label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.da = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #47
  unreachable

bb.ak:                                            ; preds = %.lr.ph, %.loopexit74
  %i.db = phi ptr [ %i.bw, %.lr.ph ], [ %i.kc, %.loopexit74 ] ; 24 uses
  %storemerge190 = phi ptr [ %i.ap, %.lr.ph ], [ %i.gm, %.loopexit74 ] ; 7 uses
  %i.dc = phi ptr [ %i.h, %.lr.ph ], [ %i.db, %.loopexit74 ]
  %i.dd = phi i64 [ %i.ac, %.lr.ph ], [ %i.dh, %.loopexit74 ]
  %i.de = phi i64 [ %i.am, %.lr.ph ], [ %i.gj, %.loopexit74 ] ; 4 uses
  %i.df = phi ptr [ %i.ad, %.lr.ph ], [ %i.ga, %.loopexit74 ] ; 2 uses
  %i.dg = phi i1 [ %i.by, %.lr.ph ], [ true, %.loopexit74 ]
  %i.dh = add i64 %i.dd, 1                        ; 4 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.dc, i64 184
  %i.dj = load i16, ptr %i.di, align 8, !noalias !389 ; 4 uses
  %i.dk = zext i16 %i.dj to i64                   ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %storemerge190, ptr %i.c, align 8, !noalias !415
  br i1 %i.dg, label %bb.am, label %bb.al, !prof !246

bb.al:                                            ; preds = %bb.ak
  invoke void @_RNvNtCsbvkFyIu7lgC_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @9, i64 noundef 53, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @10) #49
          to label %bb.an unwind label %.loopexit.split-lp, !noalias !415

bb.am:                                            ; preds = %bb.ak
  %i.dl = getelementptr inbounds nuw i8, ptr %i.db, i64 186 ; 4 uses
  %i.dm = load i16, ptr %i.dl, align 2, !noalias !415, !noundef !17 ; 5 uses
  %i.dn = icmp ult i16 %i.dm, 11
  br i1 %i.dn, label %bb.ap, label %bb.ao

.loopexit75:                                      ; preds = %bb.aw
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.bs

.loopexit.split-lp:                               ; preds = %bb.al
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.bs

bb.an:                                            ; preds = %bb.al
  unreachable

bb.ao:                                            ; preds = %bb.am
  %i.do = icmp ult i16 %i.dj, 5
  br i1 %i.do, label %bb.aw, label %bb.at

bb.ap:                                            ; preds = %bb.am
  %i.dp = zext nneg i16 %i.dm to i64              ; 5 uses
  %i.dq = add nuw nsw i16 %i.dm, 1
  %i.dr = getelementptr inbounds nuw i8, ptr %i.db, i64 8 ; 3 uses
  %i.ds = add nuw nsw i64 %i.dk, 1                ; 7 uses
  %10 = icmp ugt i16 %i.dm, %i.dj
  %i.dt = getelementptr inbounds nuw [8 x i8], ptr %i.dr, i64 %i.dk ; 2 uses
  br i1 %10, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  store i64 %i.de, ptr %i.dt, align 8, !alias.scope !419, !noalias !422
  %i.du = getelementptr inbounds nuw i8, ptr %i.db, i64 96
  %i.dv = getelementptr inbounds nuw [8 x i8], ptr %i.du, i64 %i.dk
  store ptr %storemerge190, ptr %i.dv, align 8, !alias.scope !425, !noalias !422
  br label %bb.as

bb.ar:                                            ; preds = %bb.ap
  %i.dw = getelementptr inbounds nuw [8 x i8], ptr %i.dr, i64 %i.ds
  %i.dx = sub nsw i64 %i.dp, %i.dk
  %i.dy = shl nsw i64 %i.dx, 3                    ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.dw, ptr nonnull align 8 %i.dt, i64 %i.dy, i1 false), !alias.scope !419, !noalias !422
  %i.dz = getelementptr inbounds nuw i8, ptr %i.db, i64 96 ; 2 uses
  %i.ea = getelementptr inbounds nuw [8 x i8], ptr %i.dz, i64 %i.dk
  %i.eb = getelementptr inbounds nuw [8 x i8], ptr %i.dz, i64 %i.ds
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.eb, ptr nonnull align 8 %i.ea, i64 %i.dy, i1 false), !alias.scope !425, !noalias !422
  %i.ec = getelementptr inbounds nuw [8 x i8], ptr %i.dr, i64 %i.dk
  store i64 %i.de, ptr %i.ec, align 8, !alias.scope !419, !noalias !422
  %i.ed = getelementptr inbounds nuw i8, ptr %i.db, i64 96
  %i.ee = getelementptr inbounds nuw [8 x i8], ptr %i.ed, i64 %i.dk
  store ptr %storemerge190, ptr %i.ee, align 8, !alias.scope !425, !noalias !422
  %i.ef = getelementptr inbounds nuw i8, ptr %i.db, i64 192 ; 2 uses
  %i.eg = getelementptr inbounds nuw [8 x i8], ptr %i.ef, i64 %i.ds
  %i.eh = getelementptr inbounds nuw [8 x i8], ptr %i.ef, i64 %i.dk
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 16
  %i.ej = sub nsw i64 %i.dp, %i.dk
  %i.ek = shl nsw i64 %i.ej, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ei, ptr nonnull align 8 %i.eg, i64 %i.ek, i1 false), !alias.scope !428, !noalias !422
  br label %bb.as

bb.as:                                            ; preds = %bb.aq, %bb.ar
  %i.el = getelementptr inbounds nuw i8, ptr %i.db, i64 192
  %i.em = add nuw nsw i64 %i.dp, 2                ; 2 uses
  %i.en = getelementptr inbounds nuw [8 x i8], ptr %i.el, i64 %i.ds
  store ptr %i.df, ptr %i.en, align 8, !alias.scope !428, !noalias !422
  store i16 %i.dq, ptr %i.dl, align 2, !noalias !422
  %i.eo = icmp samesign ult i64 %i.ds, %i.em
  br i1 %i.eo, label %.lr.ph.i.i.i.preheader, label %.loopexit

.lr.ph.i.i.i.preheader:                           ; preds = %bb.as
  %i.ep = add nuw nsw i64 %i.dp, 1
  %i.eq = sub nsw i64 %i.ep, %i.dk
  %i.er = sub nsw i64 %i.dp, %i.dk
  %xtraiter557 = and i64 %i.eq, 3                 ; 2 uses
  %lcmp.mod558.not = icmp eq i64 %xtraiter557, 0
  br i1 %lcmp.mod558.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol.preheader

.lr.ph.i.i.i.prol.preheader:                      ; preds = %.lr.ph.i.i.i.preheader
  %i.es = getelementptr inbounds nuw i8, ptr %i.db, i64 192
  br label %.lr.ph.i.i.i.prol

.lr.ph.i.i.i.prol:                                ; preds = %.lr.ph.i.i.i.prol, %.lr.ph.i.i.i.prol.preheader
  %.sroa.0.06.i.i.i.prol = phi i64 [ %i.et, %.lr.ph.i.i.i.prol ], [ %i.ds, %.lr.ph.i.i.i.prol.preheader ] ; 4 uses
  %prol.iter559 = phi i64 [ %prol.iter559.next, %.lr.ph.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.prol.preheader ]
  %i.et = add nuw nsw i64 %.sroa.0.06.i.i.i.prol, 1 ; 2 uses
  %i.eu = icmp samesign ult i64 %.sroa.0.06.i.i.i.prol, 12
  tail call void @llvm.assume(i1 %i.eu)
  %i.ev = getelementptr inbounds nuw [8 x i8], ptr %i.es, i64 %.sroa.0.06.i.i.i.prol
  %i.ew = load ptr, ptr %i.ev, align 8, !noalias !422, !nonnull !17, !noundef !17 ; 2 uses
  store ptr %i.db, ptr %i.ew, align 8, !noalias !422
  %i.ex = trunc nuw nsw i64 %.sroa.0.06.i.i.i.prol to i16
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ew, i64 184
  store i16 %i.ex, ptr %i.ey, align 8, !noalias !422
  %prol.iter559.next = add i64 %prol.iter559, 1   ; 2 uses
  %prol.iter559.cmp.not = icmp eq i64 %prol.iter559.next, %xtraiter557
  br i1 %prol.iter559.cmp.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol, !llvm.loop !431

.lr.ph.i.i.i.prol.loopexit:                       ; preds = %.lr.ph.i.i.i.prol, %.lr.ph.i.i.i.preheader
  %.sroa.0.06.i.i.i.unr = phi i64 [ %i.ds, %.lr.ph.i.i.i.preheader ], [ %i.et, %.lr.ph.i.i.i.prol ]
  %i.ez = icmp ult i64 %i.er, 3
  br i1 %i.ez, label %.loopexit, label %.lr.ph.i.i.i.preheader.new

.lr.ph.i.i.i.preheader.new:                       ; preds = %.lr.ph.i.i.i.prol.loopexit
  %i.fa = getelementptr inbounds nuw i8, ptr %i.db, i64 192
  %i.fb = getelementptr inbounds nuw i8, ptr %i.db, i64 192
  %i.fc = getelementptr inbounds nuw i8, ptr %i.db, i64 192
  %i.fd = getelementptr inbounds nuw i8, ptr %i.db, i64 192
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i, %.lr.ph.i.i.i.preheader.new
  %.sroa.0.06.i.i.i = phi i64 [ %.sroa.0.06.i.i.i.unr, %.lr.ph.i.i.i.preheader.new ], [ %i.ft, %.lr.ph.i.i.i ] ; 7 uses
  %i.fe = add nuw nsw i64 %.sroa.0.06.i.i.i, 1    ; 2 uses
  %i.ff = getelementptr inbounds nuw [8 x i8], ptr %i.fa, i64 %.sroa.0.06.i.i.i
  %i.fg = load ptr, ptr %i.ff, align 8, !noalias !422, !nonnull !17, !noundef !17 ; 2 uses
  store ptr %i.db, ptr %i.fg, align 8, !noalias !422
  %i.fh = trunc nuw nsw i64 %.sroa.0.06.i.i.i to i16
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fg, i64 184
  store i16 %i.fh, ptr %i.fi, align 8, !noalias !422
  %i.fj = add nuw nsw i64 %.sroa.0.06.i.i.i, 2    ; 2 uses
  %i.fk = getelementptr inbounds nuw [8 x i8], ptr %i.fb, i64 %i.fe
  %i.fl = load ptr, ptr %i.fk, align 8, !noalias !422, !nonnull !17, !noundef !17 ; 2 uses
  store ptr %i.db, ptr %i.fl, align 8, !noalias !422
  %i.fm = trunc nuw nsw i64 %i.fe to i16
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fl, i64 184
  store i16 %i.fm, ptr %i.fn, align 8, !noalias !422
  %i.fo = add nuw nsw i64 %.sroa.0.06.i.i.i, 3    ; 2 uses
  %i.fp = getelementptr inbounds nuw [8 x i8], ptr %i.fc, i64 %i.fj
  %i.fq = load ptr, ptr %i.fp, align 8, !noalias !422, !nonnull !17, !noundef !17 ; 2 uses
  store ptr %i.db, ptr %i.fq, align 8, !noalias !422
  %i.fr = trunc nuw nsw i64 %i.fj to i16
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fq, i64 184
  store i16 %i.fr, ptr %i.fs, align 8, !noalias !422
  %i.ft = add nuw nsw i64 %.sroa.0.06.i.i.i, 4    ; 2 uses
  %i.fu = icmp ult i64 %.sroa.0.06.i.i.i, 9
  tail call void @llvm.assume(i1 %i.fu)
  %i.fv = getelementptr inbounds nuw [8 x i8], ptr %i.fd, i64 %i.fo
  %i.fw = load ptr, ptr %i.fv, align 8, !noalias !422, !nonnull !17, !noundef !17 ; 2 uses
  store ptr %i.db, ptr %i.fw, align 8, !noalias !422
  %i.fx = trunc nuw nsw i64 %i.fo to i16
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fw, i64 184
  store i16 %i.fx, ptr %i.fy, align 8, !noalias !422
  %exitcond.not.i.i.i.3 = icmp eq i64 %i.ft, %i.em
  br i1 %exitcond.not.i.i.i.3, label %.loopexit, label %.lr.ph.i.i.i

bb.at:                                            ; preds = %bb.ao
  switch i16 %i.dj, label %bb.au [
    i16 5, label %bb.aw
    i16 6, label %bb.av
  ]

bb.au:                                            ; preds = %bb.at
  %i.fz = add nsw i64 %i.dk, -7
  br label %bb.aw

bb.av:                                            ; preds = %bb.at
  br label %bb.aw

bb.aw:                                            ; preds = %bb.av, %bb.au, %bb.at, %bb.ao
  %.sroa.06.0.i = phi i64 [ 5, %bb.av ], [ 6, %bb.au ], [ 4, %bb.ao ], [ 5, %bb.at ] ; 7 uses
  %.sroa.5.0.i = phi i64 [ 0, %bb.av ], [ %i.fz, %bb.au ], [ %i.dk, %bb.ao ], [ 5, %bb.at ] ; 9 uses
  %.sroa.03.0.i = phi i1 [ true, %bb.av ], [ true, %bb.au ], [ false, %bb.ao ], [ false, %bb.at ]
  %i.ga = invoke noundef nonnull align 8 ptr @_RNvMs_NtCs6Po7BT7Nknu_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node12InternalNodejINtNtB6_4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEEE13new_uninit_inCs7p2uQeJxui2_9deltalake()
          to label %.noexc.i27 unwind label %.loopexit75, !noalias !415 ; 10 uses

.noexc.i27:                                       ; preds = %bb.aw
  store ptr null, ptr %i.ga, align 8, !noalias !432
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ga, i64 186 ; 3 uses
  store i16 0, ptr %i.gb, align 2, !noalias !432
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !432
  tail call void @llvm.experimental.noalias.scope.decl(metadata !436)
  %i.gc = load i16, ptr %i.dl, align 2, !noalias !439, !noundef !17
  %i.gd = zext i16 %i.gc to i64
  %i.ge = xor i64 %.sroa.06.0.i, -1
  %i.gf = add nsw i64 %i.gd, %i.ge                ; 4 uses
  %i.gg = trunc i64 %i.gf to i16
  store i16 %i.gg, ptr %i.gb, align 2, !alias.scope !436, !noalias !432
  %i.gh = getelementptr inbounds nuw i8, ptr %i.db, i64 8 ; 2 uses
  %i.gi = getelementptr inbounds nuw [8 x i8], ptr %i.gh, i64 %.sroa.06.0.i
  %i.gj = load i64, ptr %i.gi, align 8, !noalias !439, !noundef !17 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !439
  %i.gk = getelementptr inbounds nuw i8, ptr %i.db, i64 96 ; 2 uses
  %i.gl = getelementptr inbounds nuw [8 x i8], ptr %i.gk, i64 %.sroa.06.0.i
  %i.gm = load ptr, ptr %i.gl, align 8, !noalias !439, !nonnull !17, !noundef !17 ; 6 uses
  store ptr %i.gm, ptr %i.a, align 8, !noalias !439
  %i.gn = icmp ult i64 %i.gf, 12
  br i1 %i.gn, label %bb.bc, label %bb.ax, !prof !198

bb.ax:                                            ; preds = %.noexc.i27
  invoke void @_RNvNtNtCsbvkFyIu7lgC_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.gf, i64 noundef 11, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @50) #49
          to label %bb.ba unwind label %bb.ay, !noalias !439

bb.ay:                                            ; preds = %bb.ax
  %i.go = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.gp = atomicrmw sub ptr %i.gm, i64 1 release, align 8, !noalias !440
  %i.gq = icmp eq i64 %i.gp, 1
  br i1 %i.gq, label %bb.az, label %bb.bm

bb.az:                                            ; preds = %bb.ay
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.a) #46
          to label %bb.bm unwind label %bb.bb, !noalias !439

bb.ba:                                            ; preds = %bb.ax
  unreachable

bb.bb:                                            ; preds = %bb.az
  %i.gr = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #47, !noalias !439
  unreachable

bb.bc:                                            ; preds = %.noexc.i27
  %i.gs = add nuw nsw i64 %.sroa.06.0.i, 1        ; 2 uses
  %i.gt = getelementptr inbounds nuw [8 x i8], ptr %i.gh, i64 %i.gs
  %i.gu = getelementptr inbounds nuw i8, ptr %i.ga, i64 8
  %i.gv = shl nuw nsw i64 %i.gf, 3                ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.gu, ptr nonnull readonly align 8 %i.gt, i64 %i.gv, i1 false), !alias.scope !445, !noalias !432
  %i.gw = getelementptr inbounds nuw [8 x i8], ptr %i.gk, i64 %i.gs
  %i.gx = getelementptr inbounds nuw i8, ptr %i.ga, i64 96
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.gx, ptr nonnull readonly align 8 %i.gw, i64 %i.gv, i1 false), !alias.scope !449, !noalias !432
  %i.gy = trunc nuw nsw i64 %.sroa.06.0.i to i16
  store i16 %i.gy, ptr %i.dl, align 2, !noalias !439
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !439
  store i64 %i.gj, ptr %i.b, align 8, !noalias !432
  store ptr %i.gm, ptr %i.bx, align 8, !noalias !432
  %i.gz = load i16, ptr %i.gb, align 2, !noalias !432, !noundef !17 ; 2 uses
  %i.ha = zext i16 %i.gz to i64                   ; 3 uses
  %i.hb = add nuw nsw i64 %i.ha, 1                ; 3 uses
end_hunk_1
