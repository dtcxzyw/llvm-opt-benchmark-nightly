Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qdrant-rs/original/api-06614bd479596541.api.cf22817590643bcf-cgu.043?download=true
inline.NumInlined: 237
inline.NumDeleted: 103
begin_hunk_0_@_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs8O45qwFIwQX_10serde_json5value5ValueECshMzyYDJGtjv_3api:bb.a
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #17
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCs8O45qwFIwQX_10serde_json3map3MapNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtBG_5value5ValueEECshMzyYDJGtjv_3api.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjpNT60X9mgn_9hashbrown5table9HashTablejEECshMzyYDJGtjv_3api.exit.i.i.i
  tail call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecINtCshqfBqtY9aGF_8indexmap6BucketNtNtB7_6string6StringNtNtCs8O45qwFIwQX_10serde_json5value5ValueEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCshMzyYDJGtjv_3api(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %0)
  br label %bb.g

bb.g:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs8O45qwFIwQX_10serde_json5value5ValueEECshMzyYDJGtjv_3api.exit, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECshMzyYDJGtjv_3api.exit, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCs8O45qwFIwQX_10serde_json3map3MapNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtBG_5value5ValueEECshMzyYDJGtjv_3api.exit, %bb.a, %bb.a, %bb.a
  ret void

bb.h:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCshMzyYDJGtjv_3api(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.k)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECshMzyYDJGtjv_3api.exit unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.l = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCshMzyYDJGtjv_3api(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.k)
          to label %common.resume unwind label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.m = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #17
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECshMzyYDJGtjv_3api.exit: ; preds = %bb.h
  tail call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCshMzyYDJGtjv_3api(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.k)
  br label %bb.g

bb.k:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtCs8O45qwFIwQX_10serde_json5value5ValueENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCshMzyYDJGtjv_3api(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.n)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs8O45qwFIwQX_10serde_json5value5ValueEECshMzyYDJGtjv_3api.exit unwind label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.o = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtCs8O45qwFIwQX_10serde_json5value5ValueENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCshMzyYDJGtjv_3api(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.n)
          to label %common.resume unwind label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.p = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #17
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs8O45qwFIwQX_10serde_json5value5ValueEECshMzyYDJGtjv_3api.exit: ; preds = %bb.k
  tail call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtCs8O45qwFIwQX_10serde_json5value5ValueENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCshMzyYDJGtjv_3api(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.n)
  br label %bb.g
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECshMzyYDJGtjv_3api(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCshMzyYDJGtjv_3api(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECshMzyYDJGtjv_3api.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCshMzyYDJGtjv_3api(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVechEECshMzyYDJGtjv_3api.exit.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #17
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVechEECshMzyYDJGtjv_3api.exit.i: ; preds = %bb.b
  resume { ptr, i32 } %i.a

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECshMzyYDJGtjv_3api.exit: ; preds = %bb.a
  tail call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCshMzyYDJGtjv_3api(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs9_NtCshqfBqtY9aGF_8indexmap3mapINtB6_8IndexMapNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtCs8O45qwFIwQX_10serde_json5value5ValueEINtNtNtNtCskKLDkoKarTP_4core4iter6traits7collect12FromIteratorTBO_B1q_EE9from_iterINtNtB2e_8adapters12GenericShuntINtNtB3u_3map3MapINtNtNtNtCsG258MDvU3F_3std11collections4hash3map8IntoIterBO_NtNtNtCshMzyYDJGtjv_3api4grpc6qdrant5ValueENCNvNtNtB5i_11conversions4json13proto_to_json0EINtNtB2g_6result6ResultzNtNtCsgOCJwUSa4vG_5tonic6status6StatusEEEB5i_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([72 x i8]) align 8 captures(none) dereferenceable(72) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(72) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [72 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [72 x i8], align 8                ; 6 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %i.e = alloca [32 x i8], align 8                ; 6 uses
  %i.f = alloca [72 x i8], align 8                ; 17 uses
  %i.g = alloca [24 x i8], align 8                ; 4 uses
  %i.h = alloca [72 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.h, ptr noundef nonnull readonly align 8 dereferenceable(72) %1, i64 72, i1 false), !alias.scope !24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  invoke void @_RNvXNtNtCskKLDkoKarTP_4core4iter8adaptersINtB2_12GenericShuntINtNtB2_3map3MapINtNtNtNtCsG258MDvU3F_3std11collections4hash3map8IntoIterNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant5ValueENCNvNtNtB2Q_11conversions4json13proto_to_json0EINtNtB6_6result6ResultzNtNtCsgOCJwUSa4vG_5tonic6status6StatusEENtNtNtB4_6traits8iterator8Iterator9size_hintB2Q_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.g, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.h)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.e, %bb.c, %bb.a
  %i.i = landingpad { ptr, i32 }
          cleanup
  br label %.thread

bb.c:                                             ; preds = %bb.a
  %i.j = load i64, ptr %i.g, align 8, !noundef !4 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %i.k = invoke { i64, i64 } @_RINvMs2_NtNtCsG258MDvU3F_3std6thread5localINtB6_8LocalKeyINtNtCskKLDkoKarTP_4core4cell4CellTyyEEE4withNCNvMNtNtBa_4hash6randomNtB1H_11RandomState3new0B20_ECshMzyYDJGtjv_3api(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) @4)
          to label %_RNvXs3_NtNtCsG258MDvU3F_3std4hash6randomNtB5_11RandomStateNtNtCskKLDkoKarTP_4core7default7Default7default.exit unwind label %bb.b ; 2 uses

_RNvXs3_NtNtCsG258MDvU3F_3std4hash6randomNtB5_11RandomStateNtNtCskKLDkoKarTP_4core7default7Default7default.exit: ; preds = %bb.c
  %i.l = extractvalue { i64, i64 } %i.k, 0
  %i.m = extractvalue { i64, i64 } %i.k, 1
  call void @llvm.experimental.noalias.scope.decl(metadata !28)
  %i.n = icmp eq i64 %i.j, 0
  br i1 %i.n, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_RNvXs3_NtNtCsG258MDvU3F_3std4hash6randomNtB5_11RandomStateNtNtCskKLDkoKarTP_4core7default7Default7default.exit
  store i64 0, ptr %i.f, align 8, !alias.scope !28
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.42.0..sroa_idx.i, align 8, !alias.scope !28
  %.sroa.53.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store i64 0, ptr %.sroa.53.0..sroa_idx.i, align 8, !alias.scope !28
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(32) @3, i64 32, i1 false)
  br label %_RNvMs1_NtCshqfBqtY9aGF_8indexmap3mapINtB5_8IndexMapNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtCs8O45qwFIwQX_10serde_json5value5ValueE24with_capacity_and_hasherCshMzyYDJGtjv_3api.exit

bb.e:                                             ; preds = %_RNvXs3_NtNtCsG258MDvU3F_3std4hash6randomNtB5_11RandomStateNtNtCskKLDkoKarTP_4core7default7Default7default.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !31
  invoke void @_RNvMs6_NtCsjpNT60X9mgn_9hashbrown3rawINtB5_8RawTablejE16with_capacity_inCshMzyYDJGtjv_3api(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.e, i64 noundef range(i64 1, 0) %i.j)
          to label %.noexc unwind label %bb.b

.noexc:                                           ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !31
  invoke void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCshMzyYDJGtjv_3api(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, i64 noundef range(i64 1, 0) %i.j, i1 noundef zeroext false, i64 noundef 8, i64 noundef 104)
          to label %bb.g unwind label %bb.f, !noalias !31

bb.f:                                             ; preds = %bb.h, %.noexc
  %i.o = landingpad { ptr, i32 }
          cleanup
  %i.p = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  invoke void @_RINvMsa_NtCsjpNT60X9mgn_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tablejNtNtNtB8_5alloc5inner6GlobalECshMzyYDJGtjv_3api(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.e, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.p, i64 noundef 8, i64 noundef 16)
          to label %.thread unwind label %bb.j, !noalias !31

bb.g:                                             ; preds = %.noexc
  %i.q = load i64, ptr %i.d, align 8, !range !34, !noalias !31, !noundef !4
  %i.r = trunc nuw i64 %i.q to i1
  %i.s = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.t = load i64, ptr %i.s, align 8, !range !35, !noalias !31, !noundef !4 ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  br i1 %i.r, label %bb.h, label %_RNvMs_NtCshqfBqtY9aGF_8indexmap5innerINtB4_4CoreNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtCs8O45qwFIwQX_10serde_json5value5ValueE13with_capacityCshMzyYDJGtjv_3api.exit.i, !prof !36

bb.h:                                             ; preds = %bb.g
  %i.v = load i64, ptr %i.u, align 8, !noalias !31
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %i.t, i64 %i.v) #19
          to label %bb.i unwind label %bb.f, !noalias !31

bb.i:                                             ; preds = %bb.h
  unreachable

bb.j:                                             ; preds = %bb.f
  %i.w = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #17, !noalias !31
  unreachable

_RNvMs_NtCshqfBqtY9aGF_8indexmap5innerINtB4_4CoreNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtCs8O45qwFIwQX_10serde_json5value5ValueE13with_capacityCshMzyYDJGtjv_3api.exit.i: ; preds = %bb.g
  %i.x = load ptr, ptr %i.u, align 8, !noalias !31, !nonnull !4, !noundef !4
  %i.y = icmp ule i64 %i.j, %i.t
  call void @llvm.assume(i1 %i.y)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !31
  %.sroa.6.0..sroa_idx4.i = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6.0..sroa_idx4.i, ptr noundef nonnull align 8 dereferenceable(32) %i.e, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !31
  store i64 %i.t, ptr %i.f, align 8, !alias.scope !28
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %i.x, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !28
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store i64 0, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !28
  br label %_RNvMs1_NtCshqfBqtY9aGF_8indexmap3mapINtB5_8IndexMapNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtCs8O45qwFIwQX_10serde_json5value5ValueE24with_capacity_and_hasherCshMzyYDJGtjv_3api.exit

_RNvMs1_NtCshqfBqtY9aGF_8indexmap3mapINtB5_8IndexMapNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtCs8O45qwFIwQX_10serde_json5value5ValueE24with_capacity_and_hasherCshMzyYDJGtjv_3api.exit: ; preds = %_RNvMs_NtCshqfBqtY9aGF_8indexmap5innerINtB4_4CoreNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtCs8O45qwFIwQX_10serde_json5value5ValueE13with_capacityCshMzyYDJGtjv_3api.exit.i, %bb.d
  %i.z = getelementptr inbounds nuw i8, ptr %i.f, i64 56
  store i64 %i.l, ptr %i.z, align 8, !alias.scope !28
  %i.aa = getelementptr inbounds nuw i8, ptr %i.f, i64 64
  store i64 %i.m, ptr %i.aa, align 8, !alias.scope !28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !37
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.c, ptr noundef nonnull align 8 dereferenceable(72) %i.h, i64 72, i1 false)
  call void @llvm.experimental.noalias.scope.decl(metadata !41)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !37
  invoke void @_RNvXNtNtCskKLDkoKarTP_4core4iter8adaptersINtB2_12GenericShuntINtNtB2_3map3MapINtNtNtNtCsG258MDvU3F_3std11collections4hash3map8IntoIterNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant5ValueENCNvNtNtB2Q_11conversions4json13proto_to_json0EINtNtB6_6result6ResultzNtNtCsgOCJwUSa4vG_5tonic6status6StatusEENtNtNtB4_6traits8iterator8Iterator9size_hintB2Q_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.c)
          to label %bb.k unwind label %bb.o, !noalias !37

bb.k:                                             ; preds = %_RNvMs1_NtCshqfBqtY9aGF_8indexmap3mapINtB5_8IndexMapNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtCs8O45qwFIwQX_10serde_json5value5ValueE24with_capacity_and_hasherCshMzyYDJGtjv_3api.exit
  %i.ab = load i64, ptr %i.b, align 8, !noalias !37, !noundef !4 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !37
  %i.ac = getelementptr inbounds nuw i8, ptr %i.f, i64 48
  %i.ad = load i64, ptr %i.ac, align 8, !alias.scope !41, !noalias !42, !noundef !4
  %i.ae = icmp eq i64 %i.ad, 0
  %i.af = lshr i64 %i.ab, 1
  %spec.select.i = select i1 %i.ae, i64 0, i64 %i.af
  %.sroa.0.0.i = sub nuw i64 %i.ab, %spec.select.i
  invoke void @_RNvMs_NtCshqfBqtY9aGF_8indexmap5innerINtB4_4CoreNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtCs8O45qwFIwQX_10serde_json5value5ValueE7reserveCshMzyYDJGtjv_3api(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.f, i64 noundef %.sroa.0.0.i)
          to label %bb.l unwind label %bb.o, !noalias !42

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !37
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.a, ptr noundef nonnull align 8 dereferenceable(72) %i.c, i64 72, i1 false), !noalias !37
  invoke void @_RINvXNtNtCskKLDkoKarTP_4core4iter8adaptersINtB3_12GenericShuntINtNtB3_3map3MapINtNtNtNtCsG258MDvU3F_3std11collections4hash3map8IntoIterNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant5ValueENCNvNtNtB2R_11conversions4json13proto_to_json0EINtNtB7_6result6ResultzNtNtCsgOCJwUSa4vG_5tonic6status6StatusEENtNtNtB5_6traits8iterator8Iterator8try_folduNCINvMNtNtB7_3ops9try_traitINtB62_17NeverShortCircuituE10wrap_mut_2uTB29_NtNtCs8O45qwFIwQX_10serde_json5value5ValueENCINvNvB5e_8for_each4callB72_NCINvXsb_NtCshqfBqtY9aGF_8indexmap3mapINtB8q_8IndexMapB29_B77_EINtNtB5i_7collect6ExtendB72_E6extendBE_E0E0E0B6n_EB2R_(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.f)
          to label %_RINvXNtNtCskKLDkoKarTP_4core4iter8adaptersINtB3_12GenericShuntINtNtB3_3map3MapINtNtNtNtCsG258MDvU3F_3std11collections4hash3map8IntoIterNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant5ValueENCNvNtNtB2R_11conversions4json13proto_to_json0EINtNtB7_6result6ResultzNtNtCsgOCJwUSa4vG_5tonic6status6StatusEENtNtNtB5_6traits8iterator8Iterator4folduNCINvNvB5e_8for_each4callTB29_NtNtCs8O45qwFIwQX_10serde_json5value5ValueENCINvXsb_NtCshqfBqtY9aGF_8indexmap3mapINtB7c_8IndexMapB29_B6m_EINtNtB5i_7collect6ExtendB6h_E6extendBE_E0E0EB2R_.exit.i.i unwind label %bb.m, !noalias !42

bb.m:                                             ; preds = %bb.l
  %i.ag = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXsC_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_11RawIntoIterTNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant5ValueEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropB1B_(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.a)
          to label %.body4 unwind label %bb.n, !noalias !42

bb.n:                                             ; preds = %bb.m
  %i.ah = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #17, !noalias !42
  unreachable

_RINvXNtNtCskKLDkoKarTP_4core4iter8adaptersINtB3_12GenericShuntINtNtB3_3map3MapINtNtNtNtCsG258MDvU3F_3std11collections4hash3map8IntoIterNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant5ValueENCNvNtNtB2R_11conversions4json13proto_to_json0EINtNtB7_6result6ResultzNtNtCsgOCJwUSa4vG_5tonic6status6StatusEENtNtNtB5_6traits8iterator8Iterator4folduNCINvNvB5e_8for_each4callTB29_NtNtCs8O45qwFIwQX_10serde_json5value5ValueENCINvXsb_NtCshqfBqtY9aGF_8indexmap3mapINtB7c_8IndexMapB29_B6m_EINtNtB5i_7collect6ExtendB6h_E6extendBE_E0E0EB2R_.exit.i.i: ; preds = %bb.l
  invoke void @_RNvXsC_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_11RawIntoIterTNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant5ValueEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropB1B_(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.a)
          to label %bb.r unwind label %bb.q

bb.o:                                             ; preds = %bb.k, %_RNvMs1_NtCshqfBqtY9aGF_8indexmap3mapINtB5_8IndexMapNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtCs8O45qwFIwQX_10serde_json5value5ValueE24with_capacity_and_hasherCshMzyYDJGtjv_3api.exit
  %lpad.thr_comm.i = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXsC_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_11RawIntoIterTNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant5ValueEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropB1B_(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.c)
          to label %.body4 unwind label %bb.p, !noalias !42

bb.p:                                             ; preds = %bb.o
  %i.ai = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #17, !noalias !42
  unreachable

bb.q:                                             ; preds = %_RINvXNtNtCskKLDkoKarTP_4core4iter8adaptersINtB3_12GenericShuntINtNtB3_3map3MapINtNtNtNtCsG258MDvU3F_3std11collections4hash3map8IntoIterNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant5ValueENCNvNtNtB2R_11conversions4json13proto_to_json0EINtNtB7_6result6ResultzNtNtCsgOCJwUSa4vG_5tonic6status6StatusEENtNtNtB5_6traits8iterator8Iterator4folduNCINvNvB5e_8for_each4callTB29_NtNtCs8O45qwFIwQX_10serde_json5value5ValueENCINvXsb_NtCshqfBqtY9aGF_8indexmap3mapINtB7c_8IndexMapB29_B6m_EINtNtB5i_7collect6ExtendB6h_E6extendBE_E0E0EB2R_.exit.i.i
  %i.aj = landingpad { ptr, i32 }
          cleanup
  br label %.body4

.body4:                                           ; preds = %bb.m, %bb.o, %bb.q
  %eh.lpad-body5 = phi { ptr, i32 } [ %i.aj, %bb.q ], [ %lpad.thr_comm.i, %bb.o ], [ %i.ag, %bb.m ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCshqfBqtY9aGF_8indexmap3map8IndexMapNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtCs8O45qwFIwQX_10serde_json5value5ValueEECshMzyYDJGtjv_3api(ptr noalias nofree noundef align 8 dereferenceable(72) %i.f) #18
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtB4_4iter8adapters12GenericShuntINtNtBE_3map3MapINtNtNtNtCsG258MDvU3F_3std11collections4hash3map8IntoIterNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant5ValueENCNvNtNtB36_11conversions4json13proto_to_json0EINtNtB4_6result6ResultzNtNtCsgOCJwUSa4vG_5tonic6status6StatusEEEB36_.exit unwind label %bb.s

bb.r:                                             ; preds = %_RINvXNtNtCskKLDkoKarTP_4core4iter8adaptersINtB3_12GenericShuntINtNtB3_3map3MapINtNtNtNtCsG258MDvU3F_3std11collections4hash3map8IntoIterNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant5ValueENCNvNtNtB2R_11conversions4json13proto_to_json0EINtNtB7_6result6ResultzNtNtCsgOCJwUSa4vG_5tonic6status6StatusEENtNtNtB5_6traits8iterator8Iterator4folduNCINvNvB5e_8for_each4callTB29_NtNtCs8O45qwFIwQX_10serde_json5value5ValueENCINvXsb_NtCshqfBqtY9aGF_8indexmap3mapINtB7c_8IndexMapB29_B6m_EINtNtB5i_7collect6ExtendB6h_E6extendBE_E0E0EB2R_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !37
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !37
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %i.f, i64 72, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  ret void

bb.s:                                             ; preds = %.thread, %.body4
  %i.ak = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #17
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtB4_4iter8adapters12GenericShuntINtNtBE_3map3MapINtNtNtNtCsG258MDvU3F_3std11collections4hash3map8IntoIterNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant5ValueENCNvNtNtB36_11conversions4json13proto_to_json0EINtNtB4_6result6ResultzNtNtCsgOCJwUSa4vG_5tonic6status6StatusEEEB36_.exit: ; preds = %.thread, %.body4
  %.pn9 = phi { ptr, i32 } [ %eh.lpad-body5, %.body4 ], [ %eh.lpad-body, %.thread ]
  resume { ptr, i32 } %.pn9

.thread:                                          ; preds = %bb.f, %bb.b
  %eh.lpad-body = phi { ptr, i32 } [ %i.i, %bb.b ], [ %i.o, %bb.f ]
  invoke void @_RNvXsC_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_11RawIntoIterTNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant5ValueEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropB1B_(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.h)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtB4_4iter8adapters12GenericShuntINtNtBE_3map3MapINtNtNtNtCsG258MDvU3F_3std11collections4hash3map8IntoIterNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant5ValueENCNvNtNtB36_11conversions4json13proto_to_json0EINtNtB4_6result6ResultzNtNtCsgOCJwUSa4vG_5tonic6status6StatusEEEB36_.exit unwind label %bb.s
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs9_NtCshqfBqtY9aGF_8indexmap3mapINtB6_8IndexMapNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtCs8O45qwFIwQX_10serde_json5value5ValueEINtNtNtNtCskKLDkoKarTP_4core4iter6traits7collect12FromIteratorTBO_B1q_EE9from_iterINtNtB2e_8adapters12GenericShuntINtNtB3u_3map3MapINtNtNtNtCsG258MDvU3F_3std11collections4hash3map8IntoIterBO_NtNtNtCshMzyYDJGtjv_3api4grpc6qdrant5ValueENCNvNtNtB5i_11conversions4json17proto_to_payloads0EINtNtB2g_6result6ResultzNtNtCsgOCJwUSa4vG_5tonic6status6StatusEEEB5i_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([72 x i8]) align 8 captures(none) dereferenceable(72) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(72) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [72 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [72 x i8], align 8                ; 6 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %i.e = alloca [32 x i8], align 8                ; 6 uses
  %i.f = alloca [72 x i8], align 8                ; 17 uses
  %i.g = alloca [24 x i8], align 8                ; 4 uses
  %i.h = alloca [72 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.h, ptr noundef nonnull readonly align 8 dereferenceable(72) %1, i64 72, i1 false), !alias.scope !43
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  invoke void @_RNvXNtNtCskKLDkoKarTP_4core4iter8adaptersINtB2_12GenericShuntINtNtB2_3map3MapINtNtNtNtCsG258MDvU3F_3std11collections4hash3map8IntoIterNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant5ValueENCNvNtNtB2Q_11conversions4json17proto_to_payloads0EINtNtB6_6result6ResultzNtNtCsgOCJwUSa4vG_5tonic6status6StatusEENtNtNtB4_6traits8iterator8Iterator9size_hintB2Q_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.g, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.h)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.e, %bb.c, %bb.a
  %i.i = landingpad { ptr, i32 }
          cleanup
  br label %.thread

bb.c:                                             ; preds = %bb.a
  %i.j = load i64, ptr %i.g, align 8, !noundef !4 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %i.k = invoke { i64, i64 } @_RINvMs2_NtNtCsG258MDvU3F_3std6thread5localINtB6_8LocalKeyINtNtCskKLDkoKarTP_4core4cell4CellTyyEEE4withNCNvMNtNtBa_4hash6randomNtB1H_11RandomState3new0B20_ECshMzyYDJGtjv_3api(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) @4)
          to label %_RNvXs3_NtNtCsG258MDvU3F_3std4hash6randomNtB5_11RandomStateNtNtCskKLDkoKarTP_4core7default7Default7default.exit unwind label %bb.b ; 2 uses

_RNvXs3_NtNtCsG258MDvU3F_3std4hash6randomNtB5_11RandomStateNtNtCskKLDkoKarTP_4core7default7Default7default.exit: ; preds = %bb.c
  %i.l = extractvalue { i64, i64 } %i.k, 0
  %i.m = extractvalue { i64, i64 } %i.k, 1
  call void @llvm.experimental.noalias.scope.decl(metadata !47)
  %i.n = icmp eq i64 %i.j, 0
  br i1 %i.n, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_RNvXs3_NtNtCsG258MDvU3F_3std4hash6randomNtB5_11RandomStateNtNtCskKLDkoKarTP_4core7default7Default7default.exit
  store i64 0, ptr %i.f, align 8, !alias.scope !47
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.42.0..sroa_idx.i, align 8, !alias.scope !47
  %.sroa.53.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store i64 0, ptr %.sroa.53.0..sroa_idx.i, align 8, !alias.scope !47
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(32) @3, i64 32, i1 false)
  br label %_RNvMs1_NtCshqfBqtY9aGF_8indexmap3mapINtB5_8IndexMapNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtCs8O45qwFIwQX_10serde_json5value5ValueE24with_capacity_and_hasherCshMzyYDJGtjv_3api.exit

bb.e:                                             ; preds = %_RNvXs3_NtNtCsG258MDvU3F_3std4hash6randomNtB5_11RandomStateNtNtCskKLDkoKarTP_4core7default7Default7default.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !50
  invoke void @_RNvMs6_NtCsjpNT60X9mgn_9hashbrown3rawINtB5_8RawTablejE16with_capacity_inCshMzyYDJGtjv_3api(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.e, i64 noundef range(i64 1, 0) %i.j)
          to label %.noexc unwind label %bb.b

.noexc:                                           ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !50
  invoke void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCshMzyYDJGtjv_3api(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, i64 noundef range(i64 1, 0) %i.j, i1 noundef zeroext false, i64 noundef 8, i64 noundef 104)
          to label %bb.g unwind label %bb.f, !noalias !50

bb.f:                                             ; preds = %bb.h, %.noexc
  %i.o = landingpad { ptr, i32 }
          cleanup
  %i.p = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  invoke void @_RINvMsa_NtCsjpNT60X9mgn_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tablejNtNtNtB8_5alloc5inner6GlobalECshMzyYDJGtjv_3api(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.e, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.p, i64 noundef 8, i64 noundef 16)
          to label %.thread unwind label %bb.j, !noalias !50

bb.g:                                             ; preds = %.noexc
  %i.q = load i64, ptr %i.d, align 8, !range !34, !noalias !50, !noundef !4
  %i.r = trunc nuw i64 %i.q to i1
  %i.s = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.t = load i64, ptr %i.s, align 8, !range !35, !noalias !50, !noundef !4 ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  br i1 %i.r, label %bb.h, label %_RNvMs_NtCshqfBqtY9aGF_8indexmap5innerINtB4_4CoreNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtCs8O45qwFIwQX_10serde_json5value5ValueE13with_capacityCshMzyYDJGtjv_3api.exit.i, !prof !36

bb.h:                                             ; preds = %bb.g
  %i.v = load i64, ptr %i.u, align 8, !noalias !50
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %i.t, i64 %i.v) #19
          to label %bb.i unwind label %bb.f, !noalias !50

bb.i:                                             ; preds = %bb.h
  unreachable

bb.j:                                             ; preds = %bb.f
  %i.w = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #17, !noalias !50
  unreachable

_RNvMs_NtCshqfBqtY9aGF_8indexmap5innerINtB4_4CoreNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtCs8O45qwFIwQX_10serde_json5value5ValueE13with_capacityCshMzyYDJGtjv_3api.exit.i: ; preds = %bb.g
  %i.x = load ptr, ptr %i.u, align 8, !noalias !50, !nonnull !4, !noundef !4
  %i.y = icmp ule i64 %i.j, %i.t
  call void @llvm.assume(i1 %i.y)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !50
  %.sroa.6.0..sroa_idx4.i = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6.0..sroa_idx4.i, ptr noundef nonnull align 8 dereferenceable(32) %i.e, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !50
  store i64 %i.t, ptr %i.f, align 8, !alias.scope !47
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %i.x, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !47
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store i64 0, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !47
  br label %_RNvMs1_NtCshqfBqtY9aGF_8indexmap3mapINtB5_8IndexMapNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtCs8O45qwFIwQX_10serde_json5value5ValueE24with_capacity_and_hasherCshMzyYDJGtjv_3api.exit

_RNvMs1_NtCshqfBqtY9aGF_8indexmap3mapINtB5_8IndexMapNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtCs8O45qwFIwQX_10serde_json5value5ValueE24with_capacity_and_hasherCshMzyYDJGtjv_3api.exit: ; preds = %_RNvMs_NtCshqfBqtY9aGF_8indexmap5innerINtB4_4CoreNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtCs8O45qwFIwQX_10serde_json5value5ValueE13with_capacityCshMzyYDJGtjv_3api.exit.i, %bb.d
  %i.z = getelementptr inbounds nuw i8, ptr %i.f, i64 56
  store i64 %i.l, ptr %i.z, align 8, !alias.scope !47
  %i.aa = getelementptr inbounds nuw i8, ptr %i.f, i64 64
  store i64 %i.m, ptr %i.aa, align 8, !alias.scope !47
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !53
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.c, ptr noundef nonnull align 8 dereferenceable(72) %i.h, i64 72, i1 false)
  call void @llvm.experimental.noalias.scope.decl(metadata !57)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !53
  invoke void @_RNvXNtNtCskKLDkoKarTP_4core4iter8adaptersINtB2_12GenericShuntINtNtB2_3map3MapINtNtNtNtCsG258MDvU3F_3std11collections4hash3map8IntoIterNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant5ValueENCNvNtNtB2Q_11conversions4json17proto_to_payloads0EINtNtB6_6result6ResultzNtNtCsgOCJwUSa4vG_5tonic6status6StatusEENtNtNtB4_6traits8iterator8Iterator9size_hintB2Q_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.c)
          to label %bb.k unwind label %bb.o, !noalias !53

bb.k:                                             ; preds = %_RNvMs1_NtCshqfBqtY9aGF_8indexmap3mapINtB5_8IndexMapNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtCs8O45qwFIwQX_10serde_json5value5ValueE24with_capacity_and_hasherCshMzyYDJGtjv_3api.exit
  %i.ab = load i64, ptr %i.b, align 8, !noalias !53, !noundef !4 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !53
  %i.ac = getelementptr inbounds nuw i8, ptr %i.f, i64 48
  %i.ad = load i64, ptr %i.ac, align 8, !alias.scope !57, !noalias !58, !noundef !4
  %i.ae = icmp eq i64 %i.ad, 0
  %i.af = lshr i64 %i.ab, 1
  %spec.select.i = select i1 %i.ae, i64 0, i64 %i.af
  %.sroa.0.0.i = sub nuw i64 %i.ab, %spec.select.i
  invoke void @_RNvMs_NtCshqfBqtY9aGF_8indexmap5innerINtB4_4CoreNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtCs8O45qwFIwQX_10serde_json5value5ValueE7reserveCshMzyYDJGtjv_3api(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.f, i64 noundef %.sroa.0.0.i)
          to label %bb.l unwind label %bb.o, !noalias !58

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !53
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.a, ptr noundef nonnull align 8 dereferenceable(72) %i.c, i64 72, i1 false), !noalias !53
  invoke void @_RINvXNtNtCskKLDkoKarTP_4core4iter8adaptersINtB3_12GenericShuntINtNtB3_3map3MapINtNtNtNtCsG258MDvU3F_3std11collections4hash3map8IntoIterNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant5ValueENCNvNtNtB2R_11conversions4json17proto_to_payloads0EINtNtB7_6result6ResultzNtNtCsgOCJwUSa4vG_5tonic6status6StatusEENtNtNtB5_6traits8iterator8Iterator8try_folduNCINvMNtNtB7_3ops9try_traitINtB66_17NeverShortCircuituE10wrap_mut_2uTB29_NtNtCs8O45qwFIwQX_10serde_json5value5ValueENCINvNvB5i_8for_each4callB76_NCINvXsb_NtCshqfBqtY9aGF_8indexmap3mapINtB8u_8IndexMapB29_B7b_EINtNtB5m_7collect6ExtendB76_E6extendBE_E0E0E0B6r_EB2R_(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.f)
          to label %_RINvXNtNtCskKLDkoKarTP_4core4iter8adaptersINtB3_12GenericShuntINtNtB3_3map3MapINtNtNtNtCsG258MDvU3F_3std11collections4hash3map8IntoIterNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant5ValueENCNvNtNtB2R_11conversions4json17proto_to_payloads0EINtNtB7_6result6ResultzNtNtCsgOCJwUSa4vG_5tonic6status6StatusEENtNtNtB5_6traits8iterator8Iterator4folduNCINvNvB5i_8for_each4callTB29_NtNtCs8O45qwFIwQX_10serde_json5value5ValueENCINvXsb_NtCshqfBqtY9aGF_8indexmap3mapINtB7g_8IndexMapB29_B6q_EINtNtB5m_7collect6ExtendB6l_E6extendBE_E0E0EB2R_.exit.i.i unwind label %bb.m, !noalias !58

bb.m:                                             ; preds = %bb.l
  %i.ag = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXsC_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_11RawIntoIterTNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant5ValueEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropB1B_(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.a)
          to label %.body4 unwind label %bb.n, !noalias !58

bb.n:                                             ; preds = %bb.m
  %i.ah = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #17, !noalias !58
  unreachable

_RINvXNtNtCskKLDkoKarTP_4core4iter8adaptersINtB3_12GenericShuntINtNtB3_3map3MapINtNtNtNtCsG258MDvU3F_3std11collections4hash3map8IntoIterNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant5ValueENCNvNtNtB2R_11conversions4json17proto_to_payloads0EINtNtB7_6result6ResultzNtNtCsgOCJwUSa4vG_5tonic6status6StatusEENtNtNtB5_6traits8iterator8Iterator4folduNCINvNvB5i_8for_each4callTB29_NtNtCs8O45qwFIwQX_10serde_json5value5ValueENCINvXsb_NtCshqfBqtY9aGF_8indexmap3mapINtB7g_8IndexMapB29_B6q_EINtNtB5m_7collect6ExtendB6l_E6extendBE_E0E0EB2R_.exit.i.i: ; preds = %bb.l
  invoke void @_RNvXsC_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_11RawIntoIterTNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant5ValueEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropB1B_(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.a)
          to label %bb.r unwind label %bb.q

bb.o:                                             ; preds = %bb.k, %_RNvMs1_NtCshqfBqtY9aGF_8indexmap3mapINtB5_8IndexMapNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtCs8O45qwFIwQX_10serde_json5value5ValueE24with_capacity_and_hasherCshMzyYDJGtjv_3api.exit
  %lpad.thr_comm.i = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXsC_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_11RawIntoIterTNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant5ValueEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropB1B_(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.c)
          to label %.body4 unwind label %bb.p, !noalias !58

bb.p:                                             ; preds = %bb.o
  %i.ai = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #17, !noalias !58
  unreachable

bb.q:                                             ; preds = %_RINvXNtNtCskKLDkoKarTP_4core4iter8adaptersINtB3_12GenericShuntINtNtB3_3map3MapINtNtNtNtCsG258MDvU3F_3std11collections4hash3map8IntoIterNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant5ValueENCNvNtNtB2R_11conversions4json17proto_to_payloads0EINtNtB7_6result6ResultzNtNtCsgOCJwUSa4vG_5tonic6status6StatusEENtNtNtB5_6traits8iterator8Iterator4folduNCINvNvB5i_8for_each4callTB29_NtNtCs8O45qwFIwQX_10serde_json5value5ValueENCINvXsb_NtCshqfBqtY9aGF_8indexmap3mapINtB7g_8IndexMapB29_B6q_EINtNtB5m_7collect6ExtendB6l_E6extendBE_E0E0EB2R_.exit.i.i
  %i.aj = landingpad { ptr, i32 }
          cleanup
  br label %.body4

.body4:                                           ; preds = %bb.m, %bb.o, %bb.q
  %eh.lpad-body5 = phi { ptr, i32 } [ %i.aj, %bb.q ], [ %lpad.thr_comm.i, %bb.o ], [ %i.ag, %bb.m ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCshqfBqtY9aGF_8indexmap3map8IndexMapNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtCs8O45qwFIwQX_10serde_json5value5ValueEECshMzyYDJGtjv_3api(ptr noalias nofree noundef align 8 dereferenceable(72) %i.f) #18
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtB4_4iter8adapters12GenericShuntINtNtBE_3map3MapINtNtNtNtCsG258MDvU3F_3std11collections4hash3map8IntoIterNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant5ValueENCNvNtNtB36_11conversions4json17proto_to_payloads0EINtNtB4_6result6ResultzNtNtCsgOCJwUSa4vG_5tonic6status6StatusEEEB36_.exit unwind label %bb.s

bb.r:                                             ; preds = %_RINvXNtNtCskKLDkoKarTP_4core4iter8adaptersINtB3_12GenericShuntINtNtB3_3map3MapINtNtNtNtCsG258MDvU3F_3std11collections4hash3map8IntoIterNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant5ValueENCNvNtNtB2R_11conversions4json17proto_to_payloads0EINtNtB7_6result6ResultzNtNtCsgOCJwUSa4vG_5tonic6status6StatusEENtNtNtB5_6traits8iterator8Iterator4folduNCINvNvB5i_8for_each4callTB29_NtNtCs8O45qwFIwQX_10serde_json5value5ValueENCINvXsb_NtCshqfBqtY9aGF_8indexmap3mapINtB7g_8IndexMapB29_B6q_EINtNtB5m_7collect6ExtendB6l_E6extendBE_E0E0EB2R_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !53
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !53
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %i.f, i64 72, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  ret void

bb.s:                                             ; preds = %.thread, %.body4
  %i.ak = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #17
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtB4_4iter8adapters12GenericShuntINtNtBE_3map3MapINtNtNtNtCsG258MDvU3F_3std11collections4hash3map8IntoIterNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant5ValueENCNvNtNtB36_11conversions4json17proto_to_payloads0EINtNtB4_6result6ResultzNtNtCsgOCJwUSa4vG_5tonic6status6StatusEEEB36_.exit: ; preds = %.thread, %.body4
  %.pn9 = phi { ptr, i32 } [ %eh.lpad-body5, %.body4 ], [ %eh.lpad-body, %.thread ]
  resume { ptr, i32 } %.pn9

.thread:                                          ; preds = %bb.f, %bb.b
  %eh.lpad-body = phi { ptr, i32 } [ %i.i, %bb.b ], [ %i.o, %bb.f ]
  invoke void @_RNvXsC_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_11RawIntoIterTNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant5ValueEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropB1B_(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.h)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtB4_4iter8adapters12GenericShuntINtNtBE_3map3MapINtNtNtNtCsG258MDvU3F_3std11collections4hash3map8IntoIterNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant5ValueENCNvNtNtB36_11conversions4json17proto_to_payloads0EINtNtB4_6result6ResultzNtNtCsgOCJwUSa4vG_5tonic6status6StatusEEEB36_.exit unwind label %bb.s
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs2_NtCshqfBqtY9aGF_8indexmap3mapINtB5_8IndexMapNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtCs8O45qwFIwQX_10serde_json5value5ValueE11insert_fullCshMzyYDJGtjv_3api(ptr dead_on_unwind noalias nofree noundef writable sret([80 x i8]) align 8 captures(none) dereferenceable(80) %0, ptr noalias nofree noundef align 8 dereferenceable(72) %1, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24) %2, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(72) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [72 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.d = invoke noundef i64 @_RINvYNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateNtNtCskKLDkoKarTP_4core4hash11BuildHasher8hash_oneRNtNtCsexYYUdYSQU6_5alloc6string6StringECshMzyYDJGtjv_3api(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.c, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %2)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.a, ptr noundef nonnull align 8 dereferenceable(72) %3, i64 72, i1 false)
  call void @_RNvMs_NtCshqfBqtY9aGF_8indexmap5innerINtB4_4CoreNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtCs8O45qwFIwQX_10serde_json5value5ValueE11insert_fullCshMzyYDJGtjv_3api(ptr noalias nofree noundef nonnull sret([80 x i8]) align 8 captures(none) dereferenceable(80) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %1, i64 noundef %i.d, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(72) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void

bb.c:                                             ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs8O45qwFIwQX_10serde_json5value5ValueECshMzyYDJGtjv_3api(ptr noalias nofree noundef align 8 dereferenceable(72) %3) #18
          to label %bb.e unwind label %bb.d

bb.d:                                             ; preds = %bb.e, %bb.c
  %i.f = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #17
  unreachable

.critedge:                                        ; preds = %bb.e
  resume { ptr, i32 } %i.e

bb.e:                                             ; preds = %bb.c
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECshMzyYDJGtjv_3api(ptr noalias nofree noundef align 8 dereferenceable(24) %2) #18
          to label %.critedge unwind label %bb.d
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs3_NtCsjyaAxtYV86Z_8indexmap3mapINtB5_8IndexMapNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtCs8O45qwFIwQX_10serde_json5value5ValueE11insert_fullCshMzyYDJGtjv_3api(ptr dead_on_unwind noalias nofree noundef writable sret([80 x i8]) align 8 captures(none) dereferenceable(80) %0, ptr noalias nofree noundef align 8 dereferenceable(72) %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(72) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [1 x i8], align 1                 ; 4 uses
  %i.b = alloca [72 x i8], align 16               ; 12 uses
  %i.c = alloca [72 x i8], align 8                ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.val4 = load ptr, ptr %i.f, align 8, !nonnull !4, !noundef !4
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.val5 = load i64, ptr %i.g, align 8, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %.sroa.48.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.59.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %.sroa.610.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %.sroa.711.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.h = load <2 x i64>, ptr %i.e, align 8        ; 3 uses
  %i.i = shufflevector <2 x i64> %i.h, <2 x i64> poison, <2 x i32> zeroinitializer
  %i.j = xor <2 x i64> %i.i, <i64 8317987319222330741, i64 7816392313619706465>
  store <2 x i64> %i.j, ptr %i.b, align 16, !alias.scope !59
  %i.k = shufflevector <2 x i64> %i.h, <2 x i64> poison, <2 x i32> <i32 1, i32 1>
  %i.l = xor <2 x i64> %i.k, <i64 7237128888997146477, i64 8387220255154660723>
  store <2 x i64> %i.l, ptr %.sroa.59.0..sroa_idx.i.i, align 16, !alias.scope !59
  store <2 x i64> %i.h, ptr %.sroa.711.0..sroa_idx.i.i, align 16, !alias.scope !59
  %.sroa.913.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 48 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %.sroa.913.0..sroa_idx.i.i, i8 0, i64 24, i1 false), !alias.scope !59
  call fastcc void @_RNvXs3_NtNtCskKLDkoKarTP_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCshMzyYDJGtjv_3api(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.val4, i64 noundef %.val5) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !62
  store i8 -1, ptr %i.a, align 1, !noalias !62
  call fastcc void @_RNvXs3_NtNtCskKLDkoKarTP_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCshMzyYDJGtjv_3api(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.a, i64 noundef 1) #16, !noalias !71
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !62
  %.sroa.0.0.copyload.i.i.i = load i64, ptr %i.b, align 16, !alias.scope !72
  %.sroa.10.0.copyload.i.i.i = load i64, ptr %.sroa.48.0..sroa_idx.i.i, align 8, !alias.scope !72
  %.sroa.17.0.copyload.i.i.i = load i64, ptr %.sroa.59.0..sroa_idx.i.i, align 16, !alias.scope !72 ; 3 uses
  %.sroa.22.0.copyload.i.i.i = load i64, ptr %.sroa.610.0..sroa_idx.i.i, align 8, !alias.scope !72
  %i.m = load i64, ptr %.sroa.913.0..sroa_idx.i.i, align 16, !alias.scope !72, !noundef !4
  %i.n = shl i64 %i.m, 56
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.p = load i64, ptr %i.o, align 8, !alias.scope !72, !noundef !4
  %i.q = or i64 %i.n, %i.p                        ; 2 uses
  %i.r = xor i64 %i.q, %.sroa.22.0.copyload.i.i.i ; 3 uses
  %i.s = add i64 %.sroa.17.0.copyload.i.i.i, %.sroa.0.0.copyload.i.i.i ; 3 uses
  %i.t = add i64 %i.r, %.sroa.10.0.copyload.i.i.i ; 2 uses
  %i.u = tail call noundef i64 @llvm.fshl.i64(i64 %.sroa.17.0.copyload.i.i.i, i64 %.sroa.17.0.copyload.i.i.i, i64 13)
  %i.v = xor i64 %i.u, %i.s                       ; 3 uses
  %i.w = tail call noundef i64 @llvm.fshl.i64(i64 %i.r, i64 %i.r, i64 16)
  %i.x = xor i64 %i.w, %i.t                       ; 3 uses
  %i.y = tail call noundef i64 @llvm.fshl.i64(i64 %i.s, i64 %i.s, i64 32)
  %i.z = add i64 %i.t, %i.v                       ; 3 uses
  %i.aa = add i64 %i.x, %i.y                      ; 2 uses
  %i.ab = tail call noundef i64 @llvm.fshl.i64(i64 %i.v, i64 %i.v, i64 17)
  %i.ac = xor i64 %i.z, %i.ab                     ; 3 uses
  %i.ad = tail call noundef i64 @llvm.fshl.i64(i64 %i.x, i64 %i.x, i64 21)
  %i.ae = xor i64 %i.ad, %i.aa                    ; 3 uses
  %i.af = tail call noundef i64 @llvm.fshl.i64(i64 %i.z, i64 %i.z, i64 32)
  %i.ag = xor i64 %i.aa, %i.q
  %i.ah = xor i64 %i.af, 255
  %i.ai = add i64 %i.ag, %i.ac                    ; 3 uses
  %i.aj = add i64 %i.ae, %i.ah                    ; 2 uses
  %i.ak = tail call noundef i64 @llvm.fshl.i64(i64 %i.ac, i64 %i.ac, i64 13)
  %i.al = xor i64 %i.ai, %i.ak                    ; 3 uses
  %i.am = tail call noundef i64 @llvm.fshl.i64(i64 %i.ae, i64 %i.ae, i64 16)
  %i.an = xor i64 %i.am, %i.aj                    ; 3 uses
  %i.ao = tail call noundef i64 @llvm.fshl.i64(i64 %i.ai, i64 %i.ai, i64 32)
  %i.ap = add i64 %i.al, %i.aj                    ; 3 uses
  %i.aq = add i64 %i.an, %i.ao                    ; 2 uses
  %i.ar = tail call noundef i64 @llvm.fshl.i64(i64 %i.al, i64 %i.al, i64 17)
  %i.as = xor i64 %i.ap, %i.ar                    ; 3 uses
  %i.at = tail call noundef i64 @llvm.fshl.i64(i64 %i.an, i64 %i.an, i64 21)
  %i.au = xor i64 %i.at, %i.aq                    ; 3 uses
  %i.av = tail call noundef i64 @llvm.fshl.i64(i64 %i.ap, i64 %i.ap, i64 32)
  %i.aw = add i64 %i.as, %i.aq                    ; 3 uses
  %i.ax = add i64 %i.au, %i.av                    ; 2 uses
  %i.ay = tail call noundef i64 @llvm.fshl.i64(i64 %i.as, i64 %i.as, i64 13)
  %i.az = xor i64 %i.ay, %i.aw                    ; 3 uses
  %i.ba = tail call noundef i64 @llvm.fshl.i64(i64 %i.au, i64 %i.au, i64 16)
  %i.bb = xor i64 %i.ba, %i.ax                    ; 3 uses
  %i.bc = tail call noundef i64 @llvm.fshl.i64(i64 %i.aw, i64 %i.aw, i64 32)
  %i.bd = add i64 %i.az, %i.ax                    ; 3 uses
  %i.be = add i64 %i.bb, %i.bc                    ; 2 uses
  %i.bf = tail call noundef i64 @llvm.fshl.i64(i64 %i.az, i64 %i.az, i64 17)
  %i.bg = xor i64 %i.bf, %i.bd                    ; 3 uses
  %i.bh = tail call noundef i64 @llvm.fshl.i64(i64 %i.bb, i64 %i.bb, i64 21)
  %i.bi = xor i64 %i.bh, %i.be                    ; 3 uses
  %i.bj = tail call noundef i64 @llvm.fshl.i64(i64 %i.bd, i64 %i.bd, i64 32)
  %i.bk = add i64 %i.bg, %i.be
  %i.bl = add i64 %i.bi, %i.bj                    ; 2 uses
  %i.bm = tail call noundef i64 @llvm.fshl.i64(i64 %i.bg, i64 %i.bg, i64 13)
  %i.bn = xor i64 %i.bm, %i.bk                    ; 3 uses
end_hunk_0
