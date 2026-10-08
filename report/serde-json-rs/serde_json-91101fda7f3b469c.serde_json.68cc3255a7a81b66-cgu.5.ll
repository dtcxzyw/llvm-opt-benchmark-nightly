Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/serde-json-rs/original/serde_json-91101fda7f3b469c.serde_json.68cc3255a7a81b66-cgu.5?download=true
inline.NumInlined: 94
inline.NumDeleted: 56
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_RNvXs3_NtNtCs8ZPNfZ0ciAA_10serde_json5value3serNtB5_21SerializeTupleVariantNtNtCsdnjrqM8ey3e_10serde_core3ser21SerializeTupleVariant3end:bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.f, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false)
  store i8 4, ptr %i.a, align 8
  invoke void @_RNvMsi_NtNtNtCsbqH9stoieM8_5alloc11collections5btree3mapINtB5_8BTreeMapNtNtBb_6string6StringNtNtCs8ZPNfZ0ciAA_10serde_json5value5ValueE6insertB1w_(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.c, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.a)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.d, %bb.a
  %i.g = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXNtNtNtCsbqH9stoieM8_5alloc11collections5btree3mapINtB2_8BTreeMapNtNtB8_6string6StringNtNtCs8ZPNfZ0ciAA_10serde_json5value5ValueENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropB1t_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtCs8ZPNfZ0ciAA_10serde_json3map3MapNtNtCsbqH9stoieM8_5alloc6string6StringNtNtBG_5value5ValueEEBG_.exit unwind label %bb.e

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.h = load i8, ptr %i.c, align 8, !range !7, !alias.scope !82, !noundef !5
  %i.i = icmp eq i8 %i.h, -1
  br i1 %i.i, label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs8ZPNfZ0ciAA_10serde_json5value5ValueEEB11_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  invoke fastcc void @_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueNtNtCs8ZPNfZ0ciAA_10serde_json5value5ValueEBF_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.c)
          to label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs8ZPNfZ0ciAA_10serde_json5value5ValueEEB11_.exit unwind label %bb.b

_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs8ZPNfZ0ciAA_10serde_json5value5ValueEEB11_.exit: ; preds = %bb.c, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4)
  %.sroa.4.8..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.4, i64 7
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %.sroa.4.8..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false)
  store i8 5, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(31) %.sroa.4.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(31) %.sroa.4, i64 31, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  ret void

bb.e:                                             ; preds = %bb.b
  %i.j = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs8Chj7Szqq0n_4core9panicking16panic_in_cleanup() #16
  unreachable

_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtCs8ZPNfZ0ciAA_10serde_json3map3MapNtNtCsbqH9stoieM8_5alloc6string6StringNtNtBG_5value5ValueEEBG_.exit: ; preds = %bb.b
  resume { ptr, i32 } %i.g
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs4_NtNtCs8ZPNfZ0ciAA_10serde_json5value3serNtB5_12SerializeMapNtNtCsdnjrqM8ey3e_10serde_core3ser12SerializeMap3end(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) initializes((0, 32)) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(48) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.4 = alloca [31 x i8], align 1            ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4)
  %.sroa.4.8..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.4, i64 7
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %.sroa.4.8..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  store i8 5, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(31) %.sroa.4.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(31) %.sroa.4, i64 31, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4)
  %i.b = load i64, ptr %1, align 8, !range !11, !alias.scope !85, !noundef !5
  %i.c = icmp eq i64 %i.b, -1
  br i1 %i.c, label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsbqH9stoieM8_5alloc6string6StringEECs8ZPNfZ0ciAA_10serde_json.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvXsp_NtCsbqH9stoieM8_5alloc3vecINtB5_3VechENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCs8ZPNfZ0ciAA_10serde_json(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
          to label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueNtNtCsbqH9stoieM8_5alloc6string6StringECs8ZPNfZ0ciAA_10serde_json.exit.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsbqH9stoieM8_5alloc7raw_vecINtB5_6RawVechENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCs8ZPNfZ0ciAA_10serde_json(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
          to label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtCsbqH9stoieM8_5alloc7raw_vec6RawVechEECs8ZPNfZ0ciAA_10serde_json.exit.i.i.i unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs8Chj7Szqq0n_4core9panicking16panic_in_cleanup() #16
  unreachable

_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtCsbqH9stoieM8_5alloc7raw_vec6RawVechEECs8ZPNfZ0ciAA_10serde_json.exit.i.i.i: ; preds = %bb.c
  resume { ptr, i32 } %i.d

_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueNtNtCsbqH9stoieM8_5alloc6string6StringECs8ZPNfZ0ciAA_10serde_json.exit.i: ; preds = %bb.b
  tail call void @_RNvXs1_NtCsbqH9stoieM8_5alloc7raw_vecINtB5_6RawVechENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCs8ZPNfZ0ciAA_10serde_json(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  br label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsbqH9stoieM8_5alloc6string6StringEECs8ZPNfZ0ciAA_10serde_json.exit

_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsbqH9stoieM8_5alloc6string6StringEECs8ZPNfZ0ciAA_10serde_json.exit: ; preds = %bb.a, %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueNtNtCsbqH9stoieM8_5alloc6string6StringECs8ZPNfZ0ciAA_10serde_json.exit.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs5_NtNtCs8ZPNfZ0ciAA_10serde_json5value3serNtB5_16MapKeySerializerNtNtCsdnjrqM8ey3e_10serde_core3ser10Serializer12serialize_i8(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, i8 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [40 x i8], align 1                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !90)
  %i.c = icmp slt i8 %1, 0
  %.sroa.07.0.i = tail call i8 @llvm.abs.i8(i8 %1, i1 false) ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !91)
  %i.d = icmp ugt i8 %.sroa.07.0.i, 9
  %.sroa.0.0.i.i.sroa.gep3 = getelementptr inbounds nuw i8, ptr %i.b, i64 3 ; 2 uses
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %.sroa.0.0.i.i.sroa.gep = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  %i.e = zext i8 %.sroa.07.0.i to i32             ; 2 uses
  %i.f = mul nuw nsw i32 %i.e, 5243
  %i.g = lshr i32 %i.f, 19                        ; 2 uses
  %i.h = trunc nuw nsw i32 %i.g to i8
  %.neg.i.i = mul nuw nsw i32 %i.g, -100
  %i.i = add nsw i32 %.neg.i.i, %i.e              ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 2
  %i.k = shl nuw nsw i32 %i.i, 1
  %i.l = zext nneg i32 %i.k to i64
  %i.m = icmp ult i32 %i.i, 100
  tail call void @llvm.assume(i1 %i.m)
  %i.n = getelementptr inbounds nuw i8, ptr @_RNvCsgnlcHz8PRH9_4itoa13DECIMAL_PAIRS, i64 %i.l ; 2 uses
  %i.o = load i8, ptr %i.n, align 1, !noalias !92, !noundef !5
  store i8 %i.o, ptr %i.j, align 1, !alias.scope !92
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 1
  %i.q = load i8, ptr %i.p, align 1, !noalias !92, !noundef !5
  store i8 %i.q, ptr %.sroa.0.0.i.i.sroa.gep3, align 1, !alias.scope !92
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.sroa.06.0.i.i = phi i8 [ %i.h, %bb.b ], [ %.sroa.07.0.i, %bb.a ] ; 2 uses
  %.sroa.0.0.i.i.sroa.phi = phi ptr [ %.sroa.0.0.i.i.sroa.gep, %bb.b ], [ %.sroa.0.0.i.i.sroa.gep3, %bb.a ]
  %.sroa.0.0.i.i = phi i64 [ 1, %bb.b ], [ 3, %bb.a ] ; 2 uses
  %i.r = icmp ne i8 %.sroa.06.0.i.i, 0
  %i.s = icmp eq i8 %1, 0
  %or.cond.i.i = or i1 %i.s, %i.r
  br i1 %or.cond.i.i, label %bb.d, label %_RNvXsr_CsgnlcHz8PRH9_4itoahNtB5_8Unsigned3fmt.exit.i

bb.d:                                             ; preds = %bb.c
  %i.t = add nsw i64 %.sroa.0.0.i.i, -1
  %i.u = add nuw nsw i8 %.sroa.06.0.i.i, 48
  store i8 %i.u, ptr %.sroa.0.0.i.i.sroa.phi, align 1, !alias.scope !92
  br label %_RNvXsr_CsgnlcHz8PRH9_4itoahNtB5_8Unsigned3fmt.exit.i

_RNvXsr_CsgnlcHz8PRH9_4itoahNtB5_8Unsigned3fmt.exit.i: ; preds = %bb.d, %bb.c
  %.sroa.0.1.i.i = phi i64 [ %i.t, %bb.d ], [ %.sroa.0.0.i.i, %bb.c ] ; 3 uses
  %i.v = add nuw nsw i64 %.sroa.0.1.i.i, 1
  br i1 %i.c, label %bb.e, label %_RNvXs6_CsgnlcHz8PRH9_4itoaaNtNtB5_7private6Sealed5write.exit

bb.e:                                             ; preds = %_RNvXsr_CsgnlcHz8PRH9_4itoahNtB5_8Unsigned3fmt.exit.i
  %i.w = getelementptr inbounds nuw i8, ptr %i.b, i64 %.sroa.0.1.i.i
  store i8 45, ptr %i.w, align 1, !alias.scope !90
  br label %_RNvXs6_CsgnlcHz8PRH9_4itoaaNtNtB5_7private6Sealed5write.exit

_RNvXs6_CsgnlcHz8PRH9_4itoaaNtNtB5_7private6Sealed5write.exit: ; preds = %_RNvXsr_CsgnlcHz8PRH9_4itoahNtB5_8Unsigned3fmt.exit.i, %bb.e
  %.sroa.0.0.i = phi i64 [ %.sroa.0.1.i.i, %bb.e ], [ %i.v, %_RNvXsr_CsgnlcHz8PRH9_4itoahNtB5_8Unsigned3fmt.exit.i ] ; 3 uses
  %i.x = sub nuw nsw i64 4, %.sroa.0.0.i          ; 4 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.b, i64 %.sroa.0.0.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMs5_NtCsbqH9stoieM8_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs8ZPNfZ0ciAA_10serde_json(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef %i.x, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
  %i.z = load i64, ptr %i.a, align 8, !range !8, !noundef !5
  %i.aa = trunc nuw i64 %i.z to i1
  %i.ab = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.ac = load i64, ptr %i.ab, align 8, !range !9, !noundef !5 ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.aa, label %bb.f, label %bb.g, !prof !10

bb.f:                                             ; preds = %_RNvXs6_CsgnlcHz8PRH9_4itoaaNtNtB5_7private6Sealed5write.exit
  %i.ae = load i64, ptr %i.ad, align 8
  tail call void @_RNvNtCsbqH9stoieM8_5alloc7raw_vec12handle_error(i64 noundef %i.ac, i64 %i.ae) #18
  unreachable

bb.g:                                             ; preds = %_RNvXs6_CsgnlcHz8PRH9_4itoaaNtNtB5_7private6Sealed5write.exit
  %i.af = load ptr, ptr %i.ad, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.ag = icmp samesign ule i64 %i.x, %i.ac
  tail call void @llvm.assume(i1 %i.ag)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %.not = icmp eq i64 %.sroa.0.0.i, 4
  br i1 %.not, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.i, %bb.g
  store i64 %i.ac, ptr %0, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.af, ptr %.sroa.42.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.x, ptr %.sroa.5.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void

bb.i:                                             ; preds = %bb.g
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.af, ptr nonnull align 1 %i.y, i64 %i.x, i1 false)
  br label %bb.h
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs5_NtNtCs8ZPNfZ0ciAA_10serde_json5value3serNtB5_16MapKeySerializerNtNtCsdnjrqM8ey3e_10serde_core3ser10Serializer12serialize_u8(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, i8 noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [40 x i8], align 1                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !95)
  %i.c = icmp ugt i8 %1, 9
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %.sroa.0.0.i.sroa.gep4 = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  %i.d = zext i8 %1 to i32                        ; 2 uses
  %i.e = mul nuw nsw i32 %i.d, 5243
  %i.f = lshr i32 %i.e, 19                        ; 2 uses
  %i.g = trunc nuw nsw i32 %i.f to i8
  %.neg.i = mul nsw i32 %i.f, -100
  %i.h = add nsw i32 %.neg.i, %i.d                ; 2 uses
  %i.i = shl nuw nsw i32 %i.h, 1
  %i.j = zext nneg i32 %i.i to i64
  %i.k = icmp ult i32 %i.h, 100
  tail call void @llvm.assume(i1 %i.k)
  %i.l = getelementptr inbounds nuw i8, ptr @_RNvCsgnlcHz8PRH9_4itoa13DECIMAL_PAIRS, i64 %i.j ; 2 uses
  %i.m = load i8, ptr %i.l, align 1, !noalias !95, !noundef !5
  store i8 %i.m, ptr %.sroa.0.0.i.sroa.gep4, align 1, !alias.scope !95
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 2
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 1
  %i.p = load i8, ptr %i.o, align 1, !noalias !95, !noundef !5
  store i8 %i.p, ptr %i.n, align 1, !alias.scope !95
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.sroa.06.0.i = phi i8 [ %i.g, %bb.b ], [ %1, %bb.a ] ; 2 uses
  %.sroa.0.0.i = phi i64 [ 1, %bb.b ], [ 3, %bb.a ] ; 3 uses
  %i.q = icmp ne i8 %.sroa.06.0.i, 0
  %i.r = icmp eq i8 %1, 0
  %or.cond.i = or i1 %i.r, %i.q
  br i1 %or.cond.i, label %bb.d, label %_RNvXsr_CsgnlcHz8PRH9_4itoahNtB5_8Unsigned3fmt.exit

bb.d:                                             ; preds = %bb.c
  %2 = getelementptr inbounds nuw i8, ptr %i.b, i64 %.sroa.0.0.i
  %i.s = add nsw i64 %.sroa.0.0.i, -1
  %i.t = getelementptr i8, ptr %2, i64 -1
  %i.u = add nuw nsw i8 %.sroa.06.0.i, 48
  store i8 %i.u, ptr %i.t, align 1, !alias.scope !95
  br label %_RNvXsr_CsgnlcHz8PRH9_4itoahNtB5_8Unsigned3fmt.exit

_RNvXsr_CsgnlcHz8PRH9_4itoahNtB5_8Unsigned3fmt.exit: ; preds = %bb.c, %bb.d
  %.sroa.0.1.i = phi i64 [ %i.s, %bb.d ], [ %.sroa.0.0.i, %bb.c ] ; 3 uses
  %i.v = xor i64 %.sroa.0.1.i, 3                  ; 4 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.b, i64 %.sroa.0.1.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMs5_NtCsbqH9stoieM8_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs8ZPNfZ0ciAA_10serde_json(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef %i.v, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
  %i.x = load i64, ptr %i.a, align 8, !range !8, !noundef !5
  %i.y = trunc nuw i64 %i.x to i1
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.aa = load i64, ptr %i.z, align 8, !range !9, !noundef !5 ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.y, label %bb.e, label %bb.f, !prof !10

bb.e:                                             ; preds = %_RNvXsr_CsgnlcHz8PRH9_4itoahNtB5_8Unsigned3fmt.exit
  %i.ac = load i64, ptr %i.ab, align 8
  tail call void @_RNvNtCsbqH9stoieM8_5alloc7raw_vec12handle_error(i64 noundef %i.aa, i64 %i.ac) #18
  unreachable

bb.f:                                             ; preds = %_RNvXsr_CsgnlcHz8PRH9_4itoahNtB5_8Unsigned3fmt.exit
  %i.ad = load ptr, ptr %i.ab, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.ae = icmp samesign ule i64 %i.v, %i.aa
  tail call void @llvm.assume(i1 %i.ae)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %.not = icmp eq i64 %.sroa.0.1.i, 3
  br i1 %.not, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.h, %bb.f
  store i64 %i.aa, ptr %0, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ad, ptr %.sroa.42.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.v, ptr %.sroa.5.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void

bb.h:                                             ; preds = %bb.f
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ad, ptr nonnull align 1 %i.w, i64 %i.v, i1 false)
  br label %bb.g
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs5_NtNtCs8ZPNfZ0ciAA_10serde_json5value3serNtB5_16MapKeySerializerNtNtCsdnjrqM8ey3e_10serde_core3ser10Serializer13serialize_f32(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, float noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 1                ; 6 uses
  %i.d = tail call float @llvm.fabs.f32(float %1)
  %i.e = fcmp ueq float %i.d, +inf
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 19, ptr %i.a, align 8
  %i.f = call noundef nonnull align 8 ptr @_RNvMs0_NtCs8ZPNfZ0ciAA_10serde_json5errorNtB5_5Error6syntax(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.a, i64 noundef 0, i64 noundef 0)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.f, ptr %i.g, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.h = call noundef ptr @_RNvXNtCshejLTejVTJS_4zmij7privatefNtB2_6Sealed20write_to_zmij_buffer(float noundef %1, ptr noundef nonnull dereferenceable(24) %i.c) ; 2 uses
  %i.i = ptrtoint ptr %i.h to i64
  %i.j = ptrtoint ptr %i.c to i64
  %i.k = sub i64 %i.i, %i.j                       ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvMs5_NtCsbqH9stoieM8_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs8ZPNfZ0ciAA_10serde_json(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, i64 noundef %i.k, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
  %i.l = load i64, ptr %i.b, align 8, !range !8, !noundef !5
  %i.m = trunc nuw i64 %i.l to i1
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.o = load i64, ptr %i.n, align 8, !range !9, !noundef !5 ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  br i1 %i.m, label %bb.e, label %bb.f, !prof !10

bb.d:                                             ; preds = %bb.g, %bb.b
  ret void

bb.e:                                             ; preds = %bb.c
  %i.q = load i64, ptr %i.p, align 8
  call void @_RNvNtCsbqH9stoieM8_5alloc7raw_vec12handle_error(i64 noundef %i.o, i64 %i.q) #18
  unreachable

bb.f:                                             ; preds = %bb.c
  %i.r = load ptr, ptr %i.p, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.s = icmp ule i64 %i.k, %i.o
  call void @llvm.assume(i1 %i.s)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %.not = icmp eq ptr %i.h, %i.c
  br i1 %.not, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.h, %bb.f
  store i64 %i.o, ptr %0, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.r, ptr %.sroa.42.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.k, ptr %.sroa.5.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.d

bb.h:                                             ; preds = %bb.f
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.r, ptr nonnull align 1 %i.c, i64 %i.k, i1 false)
  br label %bb.g
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs5_NtNtCs8ZPNfZ0ciAA_10serde_json5value3serNtB5_16MapKeySerializerNtNtCsdnjrqM8ey3e_10serde_core3ser10Serializer13serialize_f64(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, double noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 1                ; 6 uses
  %i.d = tail call double @llvm.fabs.f64(double %1)
  %i.e = fcmp ueq double %i.d, +inf
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 19, ptr %i.a, align 8
  %i.f = call noundef nonnull align 8 ptr @_RNvMs0_NtCs8ZPNfZ0ciAA_10serde_json5errorNtB5_5Error6syntax(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.a, i64 noundef 0, i64 noundef 0)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.f, ptr %i.g, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.h = call noundef ptr @_RNvXs_NtCshejLTejVTJS_4zmij7privatedNtB4_6Sealed20write_to_zmij_buffer(double noundef %1, ptr noundef nonnull dereferenceable(24) %i.c) ; 2 uses
  %i.i = ptrtoint ptr %i.h to i64
  %i.j = ptrtoint ptr %i.c to i64
  %i.k = sub i64 %i.i, %i.j                       ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvMs5_NtCsbqH9stoieM8_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs8ZPNfZ0ciAA_10serde_json(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, i64 noundef %i.k, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
  %i.l = load i64, ptr %i.b, align 8, !range !8, !noundef !5
  %i.m = trunc nuw i64 %i.l to i1
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.o = load i64, ptr %i.n, align 8, !range !9, !noundef !5 ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  br i1 %i.m, label %bb.e, label %bb.f, !prof !10

bb.d:                                             ; preds = %bb.g, %bb.b
  ret void

bb.e:                                             ; preds = %bb.c
  %i.q = load i64, ptr %i.p, align 8
  call void @_RNvNtCsbqH9stoieM8_5alloc7raw_vec12handle_error(i64 noundef %i.o, i64 %i.q) #18
  unreachable

bb.f:                                             ; preds = %bb.c
  %i.r = load ptr, ptr %i.p, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.s = icmp ule i64 %i.k, %i.o
  call void @llvm.assume(i1 %i.s)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %.not = icmp eq ptr %i.h, %i.c
  br i1 %.not, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.h, %bb.f
  store i64 %i.o, ptr %0, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.r, ptr %.sroa.42.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.k, ptr %.sroa.5.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.d

bb.h:                                             ; preds = %bb.f
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.r, ptr nonnull align 1 %i.c, i64 %i.k, i1 false)
  br label %bb.g
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs5_NtNtCs8ZPNfZ0ciAA_10serde_json5value3serNtB5_16MapKeySerializerNtNtCsdnjrqM8ey3e_10serde_core3ser10Serializer13serialize_i16(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, i16 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [40 x i8], align 1                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.c = icmp slt i16 %1, 0
  %.sroa.07.0.i = tail call i16 @llvm.abs.i16(i16 %1, i1 false)
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  %i.e = call noundef i64 @_RNvXss_CsgnlcHz8PRH9_4itoatNtB5_8Unsigned3fmt(i16 noundef %.sroa.07.0.i, ptr noalias nofree noundef nonnull dereferenceable(5) %i.d) ; 5 uses
  %i.f = add i64 %i.e, 1
  br i1 %i.c, label %bb.b, label %_RNvXsa_CsgnlcHz8PRH9_4itoasNtNtB5_7private6Sealed5write.exit

bb.b:                                             ; preds = %bb.a
  %i.g = icmp ult i64 %i.e, 6
  br i1 %i.g, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.e
  store i8 45, ptr %i.h, align 1, !alias.scope !98
  br label %_RNvXsa_CsgnlcHz8PRH9_4itoasNtNtB5_7private6Sealed5write.exit

bb.d:                                             ; preds = %bb.b
  call void @_RNvNtCs8Chj7Szqq0n_4core9panicking18panic_bounds_check(i64 noundef %i.e, i64 noundef 6, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @20) #19
  unreachable

_RNvXsa_CsgnlcHz8PRH9_4itoasNtNtB5_7private6Sealed5write.exit: ; preds = %bb.a, %bb.c
  %.sroa.0.0.i = phi i64 [ %i.e, %bb.c ], [ %i.f, %bb.a ] ; 3 uses
  %i.i = sub nuw i64 6, %.sroa.0.0.i              ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 %.sroa.0.0.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMs5_NtCsbqH9stoieM8_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs8ZPNfZ0ciAA_10serde_json(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef %i.i, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
  %i.k = load i64, ptr %i.a, align 8, !range !8, !noundef !5
  %i.l = trunc nuw i64 %i.k to i1
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.n = load i64, ptr %i.m, align 8, !range !9, !noundef !5 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.l, label %bb.e, label %bb.f, !prof !10

bb.e:                                             ; preds = %_RNvXsa_CsgnlcHz8PRH9_4itoasNtNtB5_7private6Sealed5write.exit
  %i.p = load i64, ptr %i.o, align 8
  call void @_RNvNtCsbqH9stoieM8_5alloc7raw_vec12handle_error(i64 noundef %i.n, i64 %i.p) #18
  unreachable

bb.f:                                             ; preds = %_RNvXsa_CsgnlcHz8PRH9_4itoasNtNtB5_7private6Sealed5write.exit
  %i.q = load ptr, ptr %i.o, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.r = icmp samesign ule i64 %i.i, %i.n
  call void @llvm.assume(i1 %i.r)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %.not = icmp eq i64 %.sroa.0.0.i, 6
  br i1 %.not, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.h, %bb.f
  store i64 %i.n, ptr %0, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.q, ptr %.sroa.42.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.i, ptr %.sroa.5.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void

bb.h:                                             ; preds = %bb.f
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.q, ptr nonnull align 1 %i.j, i64 %i.i, i1 false)
  br label %bb.g
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs5_NtNtCs8ZPNfZ0ciAA_10serde_json5value3serNtB5_16MapKeySerializerNtNtCsdnjrqM8ey3e_10serde_core3ser10Serializer13serialize_i32(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, i32 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [40 x i8], align 1                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.c = icmp slt i32 %1, 0
  %.sroa.07.0.i = tail call i32 @llvm.abs.i32(i32 %1, i1 false)
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  %i.e = call noundef i64 @_RNvXst_CsgnlcHz8PRH9_4itoamNtB5_8Unsigned3fmt(i32 noundef %.sroa.07.0.i, ptr noalias nofree noundef nonnull dereferenceable(10) %i.d) ; 5 uses
  %i.f = add i64 %i.e, 1
  br i1 %i.c, label %bb.b, label %_RNvXse_CsgnlcHz8PRH9_4itoalNtNtB5_7private6Sealed5write.exit

bb.b:                                             ; preds = %bb.a
  %i.g = icmp ult i64 %i.e, 11
  br i1 %i.g, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.e
  store i8 45, ptr %i.h, align 1, !alias.scope !101
  br label %_RNvXse_CsgnlcHz8PRH9_4itoalNtNtB5_7private6Sealed5write.exit

bb.d:                                             ; preds = %bb.b
  call void @_RNvNtCs8Chj7Szqq0n_4core9panicking18panic_bounds_check(i64 noundef %i.e, i64 noundef 11, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @21) #19
  unreachable

_RNvXse_CsgnlcHz8PRH9_4itoalNtNtB5_7private6Sealed5write.exit: ; preds = %bb.a, %bb.c
  %.sroa.0.0.i = phi i64 [ %i.e, %bb.c ], [ %i.f, %bb.a ] ; 3 uses
  %i.i = sub nuw i64 11, %.sroa.0.0.i             ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 %.sroa.0.0.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMs5_NtCsbqH9stoieM8_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs8ZPNfZ0ciAA_10serde_json(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef %i.i, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
  %i.k = load i64, ptr %i.a, align 8, !range !8, !noundef !5
  %i.l = trunc nuw i64 %i.k to i1
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.n = load i64, ptr %i.m, align 8, !range !9, !noundef !5 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.l, label %bb.e, label %bb.f, !prof !10

bb.e:                                             ; preds = %_RNvXse_CsgnlcHz8PRH9_4itoalNtNtB5_7private6Sealed5write.exit
  %i.p = load i64, ptr %i.o, align 8
  call void @_RNvNtCsbqH9stoieM8_5alloc7raw_vec12handle_error(i64 noundef %i.n, i64 %i.p) #18
  unreachable

bb.f:                                             ; preds = %_RNvXse_CsgnlcHz8PRH9_4itoalNtNtB5_7private6Sealed5write.exit
  %i.q = load ptr, ptr %i.o, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.r = icmp samesign ule i64 %i.i, %i.n
  call void @llvm.assume(i1 %i.r)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %.not = icmp eq i64 %.sroa.0.0.i, 11
  br i1 %.not, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.h, %bb.f
  store i64 %i.n, ptr %0, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.q, ptr %.sroa.42.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.i, ptr %.sroa.5.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void

bb.h:                                             ; preds = %bb.f
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.q, ptr nonnull align 1 %i.j, i64 %i.i, i1 false)
  br label %bb.g
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs5_NtNtCs8ZPNfZ0ciAA_10serde_json5value3serNtB5_16MapKeySerializerNtNtCsdnjrqM8ey3e_10serde_core3ser10Serializer13serialize_i64(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, i64 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [40 x i8], align 1                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.c = icmp slt i64 %1, 0
  %.sroa.07.0.i = tail call i64 @llvm.abs.i64(i64 %1, i1 false)
  %i.d = call noundef i64 @_RNvXsu_CsgnlcHz8PRH9_4itoayNtB5_8Unsigned3fmt(i64 noundef %.sroa.07.0.i, ptr noalias nofree noundef nonnull dereferenceable(20) %i.b) ; 3 uses
  br i1 %i.c, label %bb.b, label %_RNvXsi_CsgnlcHz8PRH9_4itoaxNtNtB5_7private6Sealed5write.exit

bb.b:                                             ; preds = %bb.a
  %i.e = add i64 %i.d, -1                         ; 3 uses
  %i.f = icmp ult i64 %i.e, 20
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %2 = getelementptr i8, ptr %i.b, i64 %i.d
  %i.g = getelementptr i8, ptr %2, i64 -1
  store i8 45, ptr %i.g, align 1, !alias.scope !104
  br label %_RNvXsi_CsgnlcHz8PRH9_4itoaxNtNtB5_7private6Sealed5write.exit

bb.d:                                             ; preds = %bb.b
  call void @_RNvNtCs8Chj7Szqq0n_4core9panicking18panic_bounds_check(i64 noundef %i.e, i64 noundef 20, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @22) #19
  unreachable

_RNvXsi_CsgnlcHz8PRH9_4itoaxNtNtB5_7private6Sealed5write.exit: ; preds = %bb.a, %bb.c
  %.sroa.0.0.i = phi i64 [ %i.e, %bb.c ], [ %i.d, %bb.a ] ; 3 uses
  %i.h = sub nuw i64 20, %.sroa.0.0.i             ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 %.sroa.0.0.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMs5_NtCsbqH9stoieM8_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs8ZPNfZ0ciAA_10serde_json(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef %i.h, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
  %i.j = load i64, ptr %i.a, align 8, !range !8, !noundef !5
  %i.k = trunc nuw i64 %i.j to i1
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.m = load i64, ptr %i.l, align 8, !range !9, !noundef !5 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.k, label %bb.e, label %bb.f, !prof !10

bb.e:                                             ; preds = %_RNvXsi_CsgnlcHz8PRH9_4itoaxNtNtB5_7private6Sealed5write.exit
  %i.o = load i64, ptr %i.n, align 8
  call void @_RNvNtCsbqH9stoieM8_5alloc7raw_vec12handle_error(i64 noundef %i.m, i64 %i.o) #18
  unreachable

bb.f:                                             ; preds = %_RNvXsi_CsgnlcHz8PRH9_4itoaxNtNtB5_7private6Sealed5write.exit
  %i.p = load ptr, ptr %i.n, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.q = icmp samesign ule i64 %i.h, %i.m
  call void @llvm.assume(i1 %i.q)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %.not = icmp eq i64 %.sroa.0.0.i, 20
  br i1 %.not, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.h, %bb.f
  store i64 %i.m, ptr %0, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.p, ptr %.sroa.42.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.h, ptr %.sroa.5.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void

bb.h:                                             ; preds = %bb.f
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.p, ptr nonnull align 1 %i.i, i64 %i.h, i1 false)
  br label %bb.g
}

; Function Attrs: cold nonlazybind uwtable
define noundef nonnull align 8 ptr @_RNvXs5_NtNtCs8ZPNfZ0ciAA_10serde_json5value3serNtB5_16MapKeySerializerNtNtCsdnjrqM8ey3e_10serde_core3ser10Serializer13serialize_map(i64 noundef range(i64 0, 2) %0, i64 %1) unnamed_addr #3 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 17, ptr %i.a, align 8
  %i.b = call noundef nonnull align 8 ptr @_RNvMs0_NtCs8ZPNfZ0ciAA_10serde_json5errorNtB5_5Error6syntax(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.a, i64 noundef 0, i64 noundef 0)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret ptr %i.b
}

; Function Attrs: cold nonlazybind uwtable
define noundef nonnull align 8 ptr @_RNvXs5_NtNtCs8ZPNfZ0ciAA_10serde_json5value3serNtB5_16MapKeySerializerNtNtCsdnjrqM8ey3e_10serde_core3ser10Serializer13serialize_seq(i64 noundef range(i64 0, 2) %0, i64 %1) unnamed_addr #3 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 17, ptr %i.a, align 8
  %i.b = call noundef nonnull align 8 ptr @_RNvMs0_NtCs8ZPNfZ0ciAA_10serde_json5errorNtB5_5Error6syntax(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.a, i64 noundef 0, i64 noundef 0)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret ptr %i.b
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs5_NtNtCs8ZPNfZ0ciAA_10serde_json5value3serNtB5_16MapKeySerializerNtNtCsdnjrqM8ey3e_10serde_core3ser10Serializer13serialize_u16(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, i16 noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [40 x i8], align 1                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.c = call noundef i64 @_RNvXss_CsgnlcHz8PRH9_4itoatNtB5_8Unsigned3fmt(i16 noundef %1, ptr noalias nofree noundef nonnull dereferenceable(5) %i.b) ; 3 uses
  %i.d = sub nuw i64 5, %i.c                      ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMs5_NtCsbqH9stoieM8_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs8ZPNfZ0ciAA_10serde_json(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef %i.d, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
  %i.f = load i64, ptr %i.a, align 8, !range !8, !noundef !5
  %i.g = trunc nuw i64 %i.f to i1
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.i = load i64, ptr %i.h, align 8, !range !9, !noundef !5 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.g, label %bb.b, label %bb.c, !prof !10

bb.b:                                             ; preds = %bb.a
  %i.k = load i64, ptr %i.j, align 8
  call void @_RNvNtCsbqH9stoieM8_5alloc7raw_vec12handle_error(i64 noundef %i.i, i64 %i.k) #18
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.l = load ptr, ptr %i.j, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.m = icmp samesign ule i64 %i.d, %i.i
  call void @llvm.assume(i1 %i.m)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %.not = icmp eq i64 %i.c, 5
  br i1 %.not, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.e, %bb.c
  store i64 %i.i, ptr %0, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.l, ptr %.sroa.42.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.d, ptr %.sroa.5.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void

bb.e:                                             ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.l, ptr nonnull align 1 %i.e, i64 %i.d, i1 false)
  br label %bb.d
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs5_NtNtCs8ZPNfZ0ciAA_10serde_json5value3serNtB5_16MapKeySerializerNtNtCsdnjrqM8ey3e_10serde_core3ser10Serializer13serialize_u32(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, i32 noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [40 x i8], align 1                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.c = call noundef i64 @_RNvXst_CsgnlcHz8PRH9_4itoamNtB5_8Unsigned3fmt(i32 noundef %1, ptr noalias nofree noundef nonnull dereferenceable(10) %i.b) ; 3 uses
  %i.d = sub nuw i64 10, %i.c                     ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMs5_NtCsbqH9stoieM8_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs8ZPNfZ0ciAA_10serde_json(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef %i.d, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
  %i.f = load i64, ptr %i.a, align 8, !range !8, !noundef !5
  %i.g = trunc nuw i64 %i.f to i1
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.i = load i64, ptr %i.h, align 8, !range !9, !noundef !5 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.g, label %bb.b, label %bb.c, !prof !10

bb.b:                                             ; preds = %bb.a
  %i.k = load i64, ptr %i.j, align 8
  call void @_RNvNtCsbqH9stoieM8_5alloc7raw_vec12handle_error(i64 noundef %i.i, i64 %i.k) #18
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.l = load ptr, ptr %i.j, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.m = icmp samesign ule i64 %i.d, %i.i
  call void @llvm.assume(i1 %i.m)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %.not = icmp eq i64 %i.c, 10
  br i1 %.not, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.e, %bb.c
  store i64 %i.i, ptr %0, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.l, ptr %.sroa.42.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.d, ptr %.sroa.5.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void

bb.e:                                             ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.l, ptr nonnull align 1 %i.e, i64 %i.d, i1 false)
  br label %bb.d
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs5_NtNtCs8ZPNfZ0ciAA_10serde_json5value3serNtB5_16MapKeySerializerNtNtCsdnjrqM8ey3e_10serde_core3ser10Serializer13serialize_u64(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, i64 noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [40 x i8], align 1                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.c = call noundef i64 @_RNvXsu_CsgnlcHz8PRH9_4itoayNtB5_8Unsigned3fmt(i64 noundef %1, ptr noalias nofree noundef nonnull dereferenceable(20) %i.b) ; 3 uses
  %i.d = sub nuw i64 20, %i.c                     ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMs5_NtCsbqH9stoieM8_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs8ZPNfZ0ciAA_10serde_json(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef %i.d, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
  %i.f = load i64, ptr %i.a, align 8, !range !8, !noundef !5
  %i.g = trunc nuw i64 %i.f to i1
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.i = load i64, ptr %i.h, align 8, !range !9, !noundef !5 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.g, label %bb.b, label %bb.c, !prof !10

bb.b:                                             ; preds = %bb.a
  %i.k = load i64, ptr %i.j, align 8
  call void @_RNvNtCsbqH9stoieM8_5alloc7raw_vec12handle_error(i64 noundef %i.i, i64 %i.k) #18
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.l = load ptr, ptr %i.j, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.m = icmp samesign ule i64 %i.d, %i.i
  call void @llvm.assume(i1 %i.m)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %.not = icmp eq i64 %i.c, 20
  br i1 %.not, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.e, %bb.c
  store i64 %i.i, ptr %0, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.l, ptr %.sroa.42.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.d, ptr %.sroa.5.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void

bb.e:                                             ; preds = %bb.c
end_hunk_0
begin_hunk_1_@_RNvXs_NtNtCs8ZPNfZ0ciAA_10serde_json5value3serNtB4_10SerializerNtNtCsdnjrqM8ey3e_10serde_core3ser10Serializer24serialize_struct_variant
define void @_RNvXs_NtNtCs8ZPNfZ0ciAA_10serde_json5value3serNtB4_10SerializerNtNtCsdnjrqM8ey3e_10serde_core3ser10Serializer24serialize_struct_variant(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) %0, ptr noalias nofree noundef nonnull readonly captures(none) %1, i64 noundef %2, i32 noundef %3, ptr noalias nofree noundef nonnull readonly captures(none) %4, i64 noundef %5, i64 noundef %6) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMs5_NtCsbqH9stoieM8_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs8ZPNfZ0ciAA_10serde_json(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef %5, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
  %i.b = load i64, ptr %i.a, align 8, !range !8, !noundef !5
  %i.c = trunc nuw i64 %i.b to i1
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.e = load i64, ptr %i.d, align 8, !range !9, !noundef !5 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.c, label %bb.b, label %bb.c, !prof !10

bb.b:                                             ; preds = %bb.a
  %i.g = load i64, ptr %i.f, align 8
  tail call void @_RNvNtCsbqH9stoieM8_5alloc7raw_vec12handle_error(i64 noundef %i.e, i64 %i.g) #18
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.h = load ptr, ptr %i.f, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.i = icmp ule i64 %5, %i.e
  tail call void @llvm.assume(i1 %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %.not = icmp eq i64 %5, 0
  br i1 %.not, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.e, %bb.c
  store i64 %i.e, ptr %0, align 8
  %.sroa.44.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.h, ptr %.sroa.44.0..sroa_idx, align 8
  %.sroa.55.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %5, ptr %.sroa.55.0..sroa_idx, align 8
  %.sroa.66.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr null, ptr %.sroa.66.0..sroa_idx, align 8
  %.sroa.66.sroa.5.0..sroa.66.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 0, ptr %.sroa.66.sroa.5.0..sroa.66.0..sroa_idx.sroa_idx, align 8
  ret void

bb.e:                                             ; preds = %bb.c
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.h, ptr nonnull align 1 %4, i64 %5, i1 false)
  br label %bb.d
}

; Function Attrs: nonlazybind uwtable
define noundef align 8 ptr @_RNvXs_NtNtCs8ZPNfZ0ciAA_10serde_json5value5indexeNtB4_5Index10index_into(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %2) unnamed_addr #0 {
bb.a:
  %i.a = load i8, ptr %2, align 8, !range !4, !noundef !5
  %i.b = icmp eq i8 %i.a, 5
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.d = tail call noundef align 8 ptr @_RINvMsi_NtNtNtCsbqH9stoieM8_5alloc11collections5btree3mapINtB6_8BTreeMapNtNtBc_6string6StringNtNtCs8ZPNfZ0ciAA_10serde_json5value5ValueE3geteEB1x_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.c, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef %1)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.0.0 = phi ptr [ %i.d, %bb.b ], [ null, %bb.a ]
  ret ptr %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define noundef align 8 ptr @_RNvXs_NtNtCs8ZPNfZ0ciAA_10serde_json5value5indexeNtB4_5Index14index_into_mut(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef %1, ptr noalias nofree noundef align 8 dereferenceable(32) %2) unnamed_addr #0 {
bb.a:
  %i.a = load i8, ptr %2, align 8, !range !4, !noundef !5
  %i.b = icmp eq i8 %i.a, 5
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.d = tail call noundef align 8 ptr @_RINvMsi_NtNtNtCsbqH9stoieM8_5alloc11collections5btree3mapINtB6_8BTreeMapNtNtBc_6string6StringNtNtCs8ZPNfZ0ciAA_10serde_json5value5ValueE7get_muteEB1x_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef %1)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.0.0 = phi ptr [ %i.d, %bb.b ], [ null, %bb.a ]
  ret ptr %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define noundef nonnull align 8 ptr @_RNvXs_NtNtCs8ZPNfZ0ciAA_10serde_json5value5indexeNtB4_5Index15index_or_insert(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef %1, ptr noalias nofree noundef align 8 dereferenceable(32) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [32 x i8], align 8                ; 6 uses
  %i.c = alloca [8 x i8], align 8                 ; 3 uses
  %i.d = alloca [32 x i8], align 8                ; 4 uses
  %i.e = alloca [24 x i8], align 8                ; 6 uses
  %i.f = alloca [56 x i8], align 8                ; 4 uses
  %i.g = alloca [16 x i8], align 8                ; 3 uses
  store ptr %0, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store i64 %1, ptr %i.h, align 8
  %i.i = load i8, ptr %2, align 8, !range !4, !noundef !5
  switch i8 %i.i, label %bb.e [
    i8 0, label %bb.b
    i8 5, label %bb.d
  ], !prof !127

bb.b:                                             ; preds = %bb.a
  invoke fastcc void @_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueNtNtCs8ZPNfZ0ciAA_10serde_json5value5ValueEBF_(ptr noalias nofree noundef align 8 dereferenceable(32) %2)
          to label %.thread unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = landingpad { ptr, i32 }
          cleanup
  store i8 5, ptr %2, align 8
  %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr null, ptr %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx, align 8
  %.sroa.5.sroa.6.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 24
  store i64 0, ptr %.sroa.5.sroa.6.0..sroa.5.0..sroa_idx.sroa_idx, align 8
  resume { ptr, i32 } %i.j

.thread:                                          ; preds = %bb.b
  store i8 5, ptr %2, align 8
  %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx2.sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr null, ptr %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx2.sroa_idx, align 8
  %.sroa.5.sroa.6.0..sroa.5.0..sroa_idx2.sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 24
  store i64 0, ptr %.sroa.5.sroa.6.0..sroa.5.0..sroa_idx2.sroa_idx, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMs5_NtCsbqH9stoieM8_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs8ZPNfZ0ciAA_10serde_json(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef %1, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
  %i.k = load i64, ptr %i.a, align 8, !range !8, !noundef !5
  %i.l = trunc nuw i64 %i.k to i1
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.n = load i64, ptr %i.m, align 8, !range !9, !noundef !5 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.l, label %bb.f, label %bb.g, !prof !10

bb.e:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %2, ptr %i.c, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.g, ptr %i.b, align 8
  %.sroa.414.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @_RNvXs1g_NtCs8Chj7Szqq0n_4core3fmtReNtB6_5Debug3fmtCs8ZPNfZ0ciAA_10serde_json, ptr %.sroa.414.0..sroa_idx, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.c, ptr %i.p, align 8
  %.sroa.420.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store ptr @_RNvXs2_NtNtCs8ZPNfZ0ciAA_10serde_json5value5indexNtB5_4TypeNtNtCs8Chj7Szqq0n_4core3fmt7Display3fmt, ptr %.sroa.420.0..sroa_idx, align 8
  call void @_RNvNtCs8Chj7Szqq0n_4core9panicking9panic_fmt(ptr noundef nonnull @18, ptr noundef nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @19) #19
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.q = load i64, ptr %i.o, align 8
  tail call void @_RNvNtCsbqH9stoieM8_5alloc7raw_vec12handle_error(i64 noundef %i.n, i64 %i.q) #18
  unreachable

bb.g:                                             ; preds = %bb.d
  %i.r = load ptr, ptr %i.o, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.s = icmp ule i64 %1, %i.n
  tail call void @llvm.assume(i1 %i.s)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.i, %bb.g
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.n, ptr %i.e, align 8
  %.sroa.416.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr %i.r, ptr %.sroa.416.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store i64 %1, ptr %.sroa.6.0..sroa_idx, align 8
  call void @_RINvMNtCs8ZPNfZ0ciAA_10serde_json3mapINtB3_3MapNtNtCsbqH9stoieM8_5alloc6string6StringNtNtB5_5value5ValueE5entryBJ_EB5_(ptr noalias nofree noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.f, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.t, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i8 0, ptr %i.d, align 8
  %i.u = call noundef nonnull align 8 ptr @_RNvMsd_NtCs8ZPNfZ0ciAA_10serde_json3mapNtB5_5Entry9or_insert(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %i.f, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  ret ptr %i.u

bb.i:                                             ; preds = %bb.g
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.r, ptr nonnull align 1 %0, i64 %1, i1 false)
  br label %bb.h
}

; Function Attrs: nonlazybind uwtable
define hidden noundef i64 @_RNvXs_NvNtNtNtNtCs8Chj7Szqq0n_4core4iter6traits8iterator8Iterator10advance_byINtNtNtBe_3str4iter5SplitcENtB4_13SpecAdvanceBy15spec_advance_byCs8ZPNfZ0ciAA_10serde_json(ptr noalias nofree noundef align 8 captures(none) dereferenceable(72) %0, i64 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %_RINvYINtNtNtCs8Chj7Szqq0n_4core3str4iter5SplitcENtNtNtNtBa_4iter6traits8iterator8Iterator8try_foldINtNtNtBa_3num7nonzero7NonZerojENCNvXs_NvBK_10advance_byB3_NtB2b_13SpecAdvanceBy15spec_advance_by0INtNtBa_6option6OptionB1y_EECs8ZPNfZ0ciAA_10serde_json.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !143)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 65 ; 4 uses
  %.promoted.i = load i8, ptr %i.a, align 1, !alias.scope !144 ; 3 uses
  %.promoted16.i = load i64, ptr %0, align 8, !alias.scope !143 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val.i.i.i = load ptr, ptr %i.b, align 8, !alias.scope !143, !nonnull !5 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val1.i.i.i = load i64, ptr %i.c, align 8, !alias.scope !143 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.f = load i64, ptr %i.e, align 8, !alias.scope !143 ; 7 uses
  %.not.i.i.i.i = icmp ugt i64 %i.f, %.val1.i.i.i
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.i = load i8, ptr %i.h, align 8, !alias.scope !143 ; 2 uses
  %i.j = zext nneg i8 %i.i to i64                 ; 4 uses
  %2 = add i8 %i.i, -1
  %i.k = icmp ult i8 %2, 4
  %i.l = getelementptr i8, ptr %i.g, i64 %i.j
  %i.m = getelementptr i8, ptr %i.l, i64 -1
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.o = load i8, ptr %i.n, align 8, !range !145, !alias.scope !143
  %i.p = trunc nuw i8 %i.o to i1                  ; 2 uses
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.pre2.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i, align 8, !alias.scope !143 ; 2 uses
  %.not.i.i.i.fr.i = freeze i1 %.not.i.i.i.i
  br i1 %.not.i.i.i.fr.i, label %.split.us.i, label %.split.preheader.i

.split.preheader.i:                               ; preds = %bb.b
  %.promoted19.i = load i64, ptr %i.d, align 8, !alias.scope !143
  br label %.split.i

.split.us.i:                                      ; preds = %bb.b
  %.not.i3.i.i.us.i = icmp ne i64 %.pre2.i.i.i.i, %.promoted16.i
  %or.cond.not.i.i.i.us.i = select i1 %i.p, i1 true, i1 %.not.i3.i.i.us.i
  %or.cond.not.i.i.i.us.fr.i = freeze i1 %or.cond.not.i.i.i.us.i
  br i1 %or.cond.not.i.i.i.us.fr.i, label %.split.us.split.us.preheader.i, label %.split.us.split.i

.split.us.split.us.preheader.i:                   ; preds = %.split.us.i
  %i.q = trunc nuw i8 %.promoted.i to i1
  br i1 %i.q, label %_RINvYINtNtNtCs8Chj7Szqq0n_4core3str4iter5SplitcENtNtNtNtBa_4iter6traits8iterator8Iterator8try_foldINtNtNtBa_3num7nonzero7NonZerojENCNvXs_NvBK_10advance_byB3_NtB2b_13SpecAdvanceBy15spec_advance_by0INtNtBa_6option6OptionB1y_EECs8ZPNfZ0ciAA_10serde_json.exit, label %_RNvMsf_NtNtCs8Chj7Szqq0n_4core3str4iterINtB5_13SplitInternalcE7get_endCs8ZPNfZ0ciAA_10serde_json.exit.i.i.us.us.peel.i

_RNvMsf_NtNtCs8Chj7Szqq0n_4core3str4iterINtB5_13SplitInternalcE7get_endCs8ZPNfZ0ciAA_10serde_json.exit.i.i.us.us.peel.i: ; preds = %.split.us.split.us.preheader.i
  store i8 1, ptr %i.a, align 1, !alias.scope !146
  %i.r = add i64 %1, -1                           ; 2 uses
  %i.s = icmp eq i64 %i.r, 0
  br i1 %i.s, label %_RINvYINtNtNtCs8Chj7Szqq0n_4core3str4iter5SplitcENtNtNtNtBa_4iter6traits8iterator8Iterator8try_foldINtNtNtBa_3num7nonzero7NonZerojENCNvXs_NvBK_10advance_byB3_NtB2b_13SpecAdvanceBy15spec_advance_by0INtNtBa_6option6OptionB1y_EECs8ZPNfZ0ciAA_10serde_json.exit, label %.split23.us.loopexit.loopexit.i

.split.us.split.i:                                ; preds = %.split.us.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !147)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !148)
  %i.t = trunc nuw i8 %.promoted.i to i1
  br i1 %i.t, label %_RINvYINtNtNtCs8Chj7Szqq0n_4core3str4iter5SplitcENtNtNtNtBa_4iter6traits8iterator8Iterator8try_foldINtNtNtBa_3num7nonzero7NonZerojENCNvXs_NvBK_10advance_byB3_NtB2b_13SpecAdvanceBy15spec_advance_by0INtNtBa_6option6OptionB1y_EECs8ZPNfZ0ciAA_10serde_json.exit, label %_RNvMsf_NtNtCs8Chj7Szqq0n_4core3str4iterINtB5_13SplitInternalcE7get_endCs8ZPNfZ0ciAA_10serde_json.exit.i.i.us.i

_RNvMsf_NtNtCs8Chj7Szqq0n_4core3str4iterINtB5_13SplitInternalcE7get_endCs8ZPNfZ0ciAA_10serde_json.exit.i.i.us.i: ; preds = %.split.us.split.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !149)
  store i8 1, ptr %i.a, align 1, !alias.scope !150
  br label %_RINvYINtNtNtCs8Chj7Szqq0n_4core3str4iter5SplitcENtNtNtNtBa_4iter6traits8iterator8Iterator8try_foldINtNtNtBa_3num7nonzero7NonZerojENCNvXs_NvBK_10advance_byB3_NtB2b_13SpecAdvanceBy15spec_advance_by0INtNtBa_6option6OptionB1y_EECs8ZPNfZ0ciAA_10serde_json.exit

.split.i:                                         ; preds = %select.unfold.i, %.split.preheader.i
  %i.u = phi i64 [ %i.as, %select.unfold.i ], [ %.promoted19.i, %.split.preheader.i ] ; 3 uses
  %.lcssa18.i = phi i64 [ %.lcssa17.i, %select.unfold.i ], [ %.promoted16.i, %.split.preheader.i ] ; 2 uses
  %i.v = phi i8 [ %i.at, %select.unfold.i ], [ %.promoted.i, %.split.preheader.i ]
  %.sroa.01.0.i = phi i64 [ %i.au, %select.unfold.i ], [ %1, %.split.preheader.i ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !147)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !148)
  %i.w = trunc nuw i8 %i.v to i1
  br i1 %i.w, label %_RINvYINtNtNtCs8Chj7Szqq0n_4core3str4iter5SplitcENtNtNtNtBa_4iter6traits8iterator8Iterator8try_foldINtNtNtBa_3num7nonzero7NonZerojENCNvXs_NvBK_10advance_byB3_NtB2b_13SpecAdvanceBy15spec_advance_by0INtNtBa_6option6OptionB1y_EECs8ZPNfZ0ciAA_10serde_json.exit, label %bb.c

bb.c:                                             ; preds = %.split.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !149)
  %i.x = icmp ult i64 %i.f, %i.u
  br i1 %i.x, label %_RNvMsf_NtNtCs8Chj7Szqq0n_4core3str4iterINtB5_13SplitInternalcE7get_endCs8ZPNfZ0ciAA_10serde_json.exit.i.i.i, label %.lr.ph.split.preheader.i.i.i.i

.lr.ph.split.preheader.i.i.i.i:                   ; preds = %bb.c
  tail call void @llvm.assume(i1 %i.k)
  %.pre.i.i.i.i = load i8, ptr %i.m, align 1, !alias.scope !151, !noalias !152 ; 2 uses
  br label %.lr.ph.split.i.i.i.i

.lr.ph.split.i.i.i.i:                             ; preds = %bb.f, %.lr.ph.split.preheader.i.i.i.i
  %i.y = phi i64 [ %i.am, %bb.f ], [ %i.u, %.lr.ph.split.preheader.i.i.i.i ] ; 4 uses
  %i.z = sub nuw i64 %i.f, %i.y                   ; 4 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 %i.y ; 2 uses
  %i.ab = icmp samesign ult i64 %i.z, 16
  br i1 %i.ab, label %.preheader.i.i.i.i.i, label %bb.d

.preheader.i.i.i.i.i:                             ; preds = %.lr.ph.split.i.i.i.i
  %.not.i.i.i.i.i = icmp eq i64 %i.f, %i.y
  br i1 %.not.i.i.i.i.i, label %.loopexit15.i.i.i.i, label %.lr.ph.i.i.i.i.i

bb.d:                                             ; preds = %.lr.ph.split.i.i.i.i
  %i.ac = tail call { i64, i64 } @_RNvNtNtCs8Chj7Szqq0n_4core5slice6memchr14memchr_aligned(i8 noundef %.pre.i.i.i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.aa, i64 noundef range(i64 0, -9223372036854775808) %i.z), !noalias !153 ; 2 uses
  %i.ad = extractvalue { i64, i64 } %i.ac, 0
  %i.ae = extractvalue { i64, i64 } %i.ac, 1
  %i.af = trunc nuw i64 %i.ad to i1
  br i1 %i.af, label %.loopexit.i.i.i.i, label %.loopexit15.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.preheader.i.i.i.i.i, %bb.e
  %.sroa.04.011.i.i.i.i.i = phi i64 [ %i.aj, %bb.e ], [ 0, %.preheader.i.i.i.i.i ] ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.aa, i64 %.sroa.04.011.i.i.i.i.i
  %i.ah = load i8, ptr %i.ag, align 1, !alias.scope !154, !noalias !153, !noundef !5
  %i.ai = icmp eq i8 %i.ah, %.pre.i.i.i.i
  br i1 %i.ai, label %.loopexit.i.i.i.i, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.aj = add nuw nsw i64 %.sroa.04.011.i.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i.i.i = icmp eq i64 %i.aj, %i.z
  br i1 %exitcond.not.i.i.i.i.i, label %.loopexit15.i.i.i.i, label %.lr.ph.i.i.i.i.i

.loopexit.i.i.i.i:                                ; preds = %.lr.ph.i.i.i.i.i, %bb.d
  %.sroa.5.0.i.i.i.i.i = phi i64 [ %i.ae, %bb.d ], [ %.sroa.04.011.i.i.i.i.i, %.lr.ph.i.i.i.i.i ] ; 2 uses
  %i.ak = icmp ult i64 %.sroa.5.0.i.i.i.i.i, %i.z
  tail call void @llvm.assume(i1 %i.ak)
  %i.al = add i64 %i.y, 1
  %i.am = add i64 %i.al, %.sroa.5.0.i.i.i.i.i     ; 10 uses
  store i64 %i.am, ptr %i.d, align 8, !alias.scope !151, !noalias !152
  %.not11.i.i.i.i = icmp ult i64 %i.am, %i.j
  %.not12.i.i.i.i = icmp ugt i64 %i.am, %.val1.i.i.i
  %or.cond.i.i.i.i = or i1 %.not11.i.i.i.i, %.not12.i.i.i.i
  br i1 %or.cond.i.i.i.i, label %bb.f, label %bb.g

.loopexit15.i.i.i.i:                              ; preds = %bb.d, %.preheader.i.i.i.i.i, %bb.e
  store i64 %i.f, ptr %i.d, align 8, !alias.scope !151, !noalias !152
  br label %_RNvMsf_NtNtCs8Chj7Szqq0n_4core3str4iterINtB5_13SplitInternalcE7get_endCs8ZPNfZ0ciAA_10serde_json.exit.i.i.i

bb.f:                                             ; preds = %bb.g, %.loopexit.i.i.i.i
  %i.an = icmp ult i64 %i.f, %i.am
  br i1 %i.an, label %_RNvMsf_NtNtCs8Chj7Szqq0n_4core3str4iterINtB5_13SplitInternalcE7get_endCs8ZPNfZ0ciAA_10serde_json.exit.i.i.i, label %.lr.ph.split.i.i.i.i

bb.g:                                             ; preds = %.loopexit.i.i.i.i
  %i.ao = sub nuw i64 %i.am, %i.j
  %i.ap = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 %i.ao
  %bcmp.i.i.i.i = tail call i32 @bcmp(ptr nonnull %i.ap, ptr nonnull %i.g, i64 %i.j), !noalias !152
  %i.aq = icmp eq i32 %bcmp.i.i.i.i, 0
  br i1 %i.aq, label %_RNvXs_NtNtCs8Chj7Szqq0n_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i.i.i, label %bb.f

_RNvXs_NtNtCs8Chj7Szqq0n_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i.i.i: ; preds = %bb.g
  store i64 %i.am, ptr %0, align 8, !alias.scope !144
  br label %select.unfold.i

_RNvMsf_NtNtCs8Chj7Szqq0n_4core3str4iterINtB5_13SplitInternalcE7get_endCs8ZPNfZ0ciAA_10serde_json.exit.i.i.i: ; preds = %bb.f, %.loopexit15.i.i.i.i, %bb.c
  %i.ar = phi i64 [ %i.u, %bb.c ], [ %i.f, %.loopexit15.i.i.i.i ], [ %i.am, %bb.f ]
  store i8 1, ptr %i.a, align 1, !alias.scope !150
  %.not.i3.i.i.i = icmp ne i64 %.pre2.i.i.i.i, %.lcssa18.i
  %or.cond.not.i.i.i.i = select i1 %i.p, i1 true, i1 %.not.i3.i.i.i
  br i1 %or.cond.not.i.i.i.i, label %select.unfold.i, label %_RINvYINtNtNtCs8Chj7Szqq0n_4core3str4iter5SplitcENtNtNtNtBa_4iter6traits8iterator8Iterator8try_foldINtNtNtBa_3num7nonzero7NonZerojENCNvXs_NvBK_10advance_byB3_NtB2b_13SpecAdvanceBy15spec_advance_by0INtNtBa_6option6OptionB1y_EECs8ZPNfZ0ciAA_10serde_json.exit

select.unfold.i:                                  ; preds = %_RNvMsf_NtNtCs8Chj7Szqq0n_4core3str4iterINtB5_13SplitInternalcE7get_endCs8ZPNfZ0ciAA_10serde_json.exit.i.i.i, %_RNvXs_NtNtCs8Chj7Szqq0n_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i.i.i
  %i.as = phi i64 [ %i.ar, %_RNvMsf_NtNtCs8Chj7Szqq0n_4core3str4iterINtB5_13SplitInternalcE7get_endCs8ZPNfZ0ciAA_10serde_json.exit.i.i.i ], [ %i.am, %_RNvXs_NtNtCs8Chj7Szqq0n_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i.i.i ]
  %.lcssa17.i = phi i64 [ %.lcssa18.i, %_RNvMsf_NtNtCs8Chj7Szqq0n_4core3str4iterINtB5_13SplitInternalcE7get_endCs8ZPNfZ0ciAA_10serde_json.exit.i.i.i ], [ %i.am, %_RNvXs_NtNtCs8Chj7Szqq0n_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i.i.i ]
  %i.at = phi i8 [ 1, %_RNvMsf_NtNtCs8Chj7Szqq0n_4core3str4iterINtB5_13SplitInternalcE7get_endCs8ZPNfZ0ciAA_10serde_json.exit.i.i.i ], [ 0, %_RNvXs_NtNtCs8Chj7Szqq0n_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i.i.i ]
  %i.au = add i64 %.sroa.01.0.i, -1               ; 2 uses
  %i.av = icmp eq i64 %i.au, 0
  br i1 %i.av, label %_RINvYINtNtNtCs8Chj7Szqq0n_4core3str4iter5SplitcENtNtNtNtBa_4iter6traits8iterator8Iterator8try_foldINtNtNtBa_3num7nonzero7NonZerojENCNvXs_NvBK_10advance_byB3_NtB2b_13SpecAdvanceBy15spec_advance_by0INtNtBa_6option6OptionB1y_EECs8ZPNfZ0ciAA_10serde_json.exit, label %.split.i

.split23.us.loopexit.loopexit.i:                  ; preds = %_RNvMsf_NtNtCs8Chj7Szqq0n_4core3str4iterINtB5_13SplitInternalcE7get_endCs8ZPNfZ0ciAA_10serde_json.exit.i.i.us.us.peel.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !147)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !148)
  br label %_RINvYINtNtNtCs8Chj7Szqq0n_4core3str4iter5SplitcENtNtNtNtBa_4iter6traits8iterator8Iterator8try_foldINtNtNtBa_3num7nonzero7NonZerojENCNvXs_NvBK_10advance_byB3_NtB2b_13SpecAdvanceBy15spec_advance_by0INtNtBa_6option6OptionB1y_EECs8ZPNfZ0ciAA_10serde_json.exit

_RINvYINtNtNtCs8Chj7Szqq0n_4core3str4iter5SplitcENtNtNtNtBa_4iter6traits8iterator8Iterator8try_foldINtNtNtBa_3num7nonzero7NonZerojENCNvXs_NvBK_10advance_byB3_NtB2b_13SpecAdvanceBy15spec_advance_by0INtNtBa_6option6OptionB1y_EECs8ZPNfZ0ciAA_10serde_json.exit: ; preds = %select.unfold.i, %_RNvMsf_NtNtCs8Chj7Szqq0n_4core3str4iterINtB5_13SplitInternalcE7get_endCs8ZPNfZ0ciAA_10serde_json.exit.i.i.i, %.split.i, %.split23.us.loopexit.loopexit.i, %_RNvMsf_NtNtCs8Chj7Szqq0n_4core3str4iterINtB5_13SplitInternalcE7get_endCs8ZPNfZ0ciAA_10serde_json.exit.i.i.us.i, %.split.us.split.i, %_RNvMsf_NtNtCs8Chj7Szqq0n_4core3str4iterINtB5_13SplitInternalcE7get_endCs8ZPNfZ0ciAA_10serde_json.exit.i.i.us.us.peel.i, %.split.us.split.us.preheader.i, %bb.a
  %.sroa.0.1 = phi i64 [ 0, %bb.a ], [ %1, %.split.us.split.i ], [ %1, %_RNvMsf_NtNtCs8Chj7Szqq0n_4core3str4iterINtB5_13SplitInternalcE7get_endCs8ZPNfZ0ciAA_10serde_json.exit.i.i.us.i ], [ %i.r, %.split23.us.loopexit.loopexit.i ], [ %1, %.split.us.split.us.preheader.i ], [ 0, %_RNvMsf_NtNtCs8Chj7Szqq0n_4core3str4iterINtB5_13SplitInternalcE7get_endCs8ZPNfZ0ciAA_10serde_json.exit.i.i.us.us.peel.i ], [ %.sroa.01.0.i, %_RNvMsf_NtNtCs8Chj7Szqq0n_4core3str4iterINtB5_13SplitInternalcE7get_endCs8ZPNfZ0ciAA_10serde_json.exit.i.i.i ], [ 0, %select.unfold.i ], [ %.sroa.01.0.i, %.split.i ]
  ret i64 %.sroa.0.1
}

; Function Attrs: nonlazybind uwtable
define noundef align 8 ptr @_RNvXse_NtNtCs8ZPNfZ0ciAA_10serde_json5value2deNtB5_22VariantRefDeserializerNtNtCsdnjrqM8ey3e_10serde_core2de13VariantAccess12unit_variant(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(32) %0) unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call noundef align 8 ptr @_RINvXsc_NtNtCs8ZPNfZ0ciAA_10serde_json5value2deRNtB8_5ValueNtNtCsdnjrqM8ey3e_10serde_core2de12Deserializer16deserialize_unitNtNtBX_5impls11UnitVisitorEBa_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %0)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.02.0 = phi ptr [ %i.a, %bb.b ], [ null, %bb.a ]
  ret ptr %.sroa.02.0
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXsl_NtNtCs8ZPNfZ0ciAA_10serde_json5value2deNtB5_13KeyClassifierNtNtCsdnjrqM8ey3e_10serde_core2de7Visitor9expecting(ptr noalias nofree noundef nonnull readonly captures(none) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvMsa_NtCs8Chj7Szqq0n_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @23, i64 noundef 12)
  ret i1 %i.a
}

; Function Attrs: nonlazybind uwtable
declare noundef ptr @_RNvXs_NtCshejLTejVTJS_4zmij7privatedNtB4_6Sealed20write_to_zmij_buffer(double noundef, ptr noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef ptr @_RNvXNtCshejLTejVTJS_4zmij7privatefNtB2_6Sealed20write_to_zmij_buffer(float noundef, ptr noundef) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare noundef range(i32 0, 10) i32 @rust_eh_personality(i32 noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef) unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #6

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsbqH9stoieM8_5alloc3vecINtB5_3VecNtNtCs8ZPNfZ0ciAA_10serde_json5value5ValueENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropBJ_(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: cold minsize noinline noreturn nounwind nonlazybind optsize uwtable
declare void @_RNvNtCs8Chj7Szqq0n_4core9panicking16panic_in_cleanup() unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #6

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsbqH9stoieM8_5alloc3vecINtB5_3VechENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCs8ZPNfZ0ciAA_10serde_json(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsbqH9stoieM8_5alloc7raw_vecINtB5_6RawVecNtNtCs8ZPNfZ0ciAA_10serde_json5value5ValueENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropBQ_(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsbqH9stoieM8_5alloc7raw_vecINtB5_6RawVechENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCs8ZPNfZ0ciAA_10serde_json(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
end_hunk_1
