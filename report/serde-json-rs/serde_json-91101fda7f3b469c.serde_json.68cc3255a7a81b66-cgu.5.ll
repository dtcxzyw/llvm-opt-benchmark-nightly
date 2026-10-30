Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/serde-json-rs/original/serde_json-91101fda7f3b469c.serde_json.68cc3255a7a81b66-cgu.5?download=true
inline.NumInlined: 94
inline.NumDeleted: 56
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueNtNtCs8ZPNfZ0ciAA_10serde_json5value5ValueEBF_:bb.a
          to label %common.resume unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.e = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs8Chj7Szqq0n_4core9panicking16panic_in_cleanup() #16
  unreachable

common.resume:                                    ; preds = %bb.h, %bb.e
  %common.resume.op = phi { ptr, i32 } [ %i.d, %bb.e ], [ %i.g, %bb.h ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueNtNtCsbqH9stoieM8_5alloc6string6StringECs8ZPNfZ0ciAA_10serde_json.exit: ; preds = %bb.d
  tail call void @_RNvXs1_NtCsbqH9stoieM8_5alloc7raw_vecINtB5_6RawVechENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCs8ZPNfZ0ciAA_10serde_json(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c)
  br label %bb.c

bb.g:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  invoke void @_RNvXsp_NtCsbqH9stoieM8_5alloc3vecINtB5_3VecNtNtCs8ZPNfZ0ciAA_10serde_json5value5ValueENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropBJ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtCsbqH9stoieM8_5alloc3vec3VecNtNtCs8ZPNfZ0ciAA_10serde_json5value5ValueEEB1c_.exit unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.g = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsbqH9stoieM8_5alloc7raw_vecINtB5_6RawVecNtNtCs8ZPNfZ0ciAA_10serde_json5value5ValueENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %common.resume unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs8Chj7Szqq0n_4core9panicking16panic_in_cleanup() #16
  unreachable

_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtCsbqH9stoieM8_5alloc3vec3VecNtNtCs8ZPNfZ0ciAA_10serde_json5value5ValueEEB1c_.exit: ; preds = %bb.g
  tail call void @_RNvXs1_NtCsbqH9stoieM8_5alloc7raw_vecINtB5_6RawVecNtNtCs8ZPNfZ0ciAA_10serde_json5value5ValueENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f)
  br label %bb.c
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueNtNtCsbqH9stoieM8_5alloc6string6StringECs8ZPNfZ0ciAA_10serde_json(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXsp_NtCsbqH9stoieM8_5alloc3vecINtB5_3VechENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCs8ZPNfZ0ciAA_10serde_json(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtCsbqH9stoieM8_5alloc3vec3VechEECs8ZPNfZ0ciAA_10serde_json.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsbqH9stoieM8_5alloc7raw_vecINtB5_6RawVechENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCs8ZPNfZ0ciAA_10serde_json(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtCsbqH9stoieM8_5alloc7raw_vec6RawVechEECs8ZPNfZ0ciAA_10serde_json.exit.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs8Chj7Szqq0n_4core9panicking16panic_in_cleanup() #16
  unreachable

_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtCsbqH9stoieM8_5alloc7raw_vec6RawVechEECs8ZPNfZ0ciAA_10serde_json.exit.i: ; preds = %bb.b
  resume { ptr, i32 } %i.a

_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtCsbqH9stoieM8_5alloc3vec3VechEECs8ZPNfZ0ciAA_10serde_json.exit: ; preds = %bb.a
  tail call void @_RNvXs1_NtCsbqH9stoieM8_5alloc7raw_vecINtB5_6RawVechENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCs8ZPNfZ0ciAA_10serde_json(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXNvXNtNtCs8ZPNfZ0ciAA_10serde_json5value2deNtB8_5ValueNtNtCsdnjrqM8ey3e_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_mapINtNtBa_2de9MapAccessNtNtBa_4read7StrReadEEBa_(ptr dead_on_unwind noalias nofree noundef writable sret([32 x i8]) align 8 captures(address) dereferenceable(32) %0, ptr noalias nofree noundef align 8 dereferenceable(56) %1, i1 noundef zeroext %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 7 uses
  %i.b = alloca [24 x i8], align 8                ; 11 uses
  %i.c = alloca [24 x i8], align 8                ; 7 uses
  %.sroa.4 = alloca [31 x i8], align 1            ; 4 uses
  %i.d = alloca [32 x i8], align 8                ; 5 uses
  %i.e = alloca [32 x i8], align 8                ; 4 uses
  %i.f = alloca [24 x i8], align 8                ; 6 uses
  %.sroa.13.sroa.7 = alloca [32 x i8], align 8    ; 2 uses
  %i.g = alloca [32 x i8], align 8                ; 2 uses
  %i.h = alloca [24 x i8], align 8                ; 10 uses
  %i.i = alloca [32 x i8], align 8                ; 6 uses
  %i.j = alloca [24 x i8], align 8                ; 10 uses
  %i.k = alloca [24 x i8], align 8                ; 3 uses
  %i.l = alloca [16 x i8], align 8                ; 6 uses
  store ptr %1, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.n = zext i1 %2 to i8
  store i8 %i.n, ptr %i.m, align 8
  call void @_RINvXs9_NtCs8ZPNfZ0ciAA_10serde_json2deINtB6_9MapAccessNtNtB8_4read7StrReadENtNtCsdnjrqM8ey3e_10serde_core2de9MapAccess13next_key_seedNtNtNtB8_5value2de13KeyClassifierEB8_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.k, ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.l)
  %i.o = load i64, ptr %i.k, align 8, !range !22, !noundef !5 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 2 uses
  switch i64 %i.o, label %bb.c [
    i64 -2, label %bb.b
    i64 -1, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  %i.q = load ptr, ptr %i.p, align 8, !nonnull !5, !align !6, !noundef !5
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.q, ptr %i.r, align 8
  store i8 -1, ptr %0, align 8
  br label %bb.y

bb.c:                                             ; preds = %bb.a
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %i.p, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  store ptr null, ptr %i.j, align 8
  %.sroa.519.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  store i64 0, ptr %.sroa.519.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  store i64 %i.o, ptr %i.h, align 8
  invoke void @_RINvXs9_NtCs8ZPNfZ0ciAA_10serde_json2deINtB6_9MapAccessNtNtB8_4read7StrReadENtNtCsdnjrqM8ey3e_10serde_core2de9MapAccess15next_value_seedINtNtCs8Chj7Szqq0n_4core6marker11PhantomDataNtNtB8_5value5ValueEEB8_(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.l)
          to label %_RINvYINtNtCs8ZPNfZ0ciAA_10serde_json2de9MapAccessNtNtB8_4read7StrReadENtNtCsdnjrqM8ey3e_10serde_core2de9MapAccess10next_valueNtNtB8_5value5ValueEB8_.exit unwind label %bb.e

bb.d:                                             ; preds = %bb.a
  store i8 5, ptr %0, align 8
  %.sroa.410.sroa.3.0..sroa.410.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr null, ptr %.sroa.410.sroa.3.0..sroa.410.0..sroa_idx.sroa_idx, align 8
  %.sroa.410.sroa.5.0..sroa.410.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 0, ptr %.sroa.410.sroa.5.0..sroa.410.0..sroa_idx.sroa_idx, align 8
  br label %bb.y

bb.e:                                             ; preds = %bb.c
  %i.s = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueNtNtCsbqH9stoieM8_5alloc6string6StringECs8ZPNfZ0ciAA_10serde_json(ptr noalias nofree noundef align 8 dereferenceable(24) %i.h) #17
          to label %.body unwind label %bb.aa

_RINvYINtNtCs8ZPNfZ0ciAA_10serde_json2de9MapAccessNtNtB8_4read7StrReadENtNtCsdnjrqM8ey3e_10serde_core2de9MapAccess10next_valueNtNtB8_5value5ValueEB8_.exit: ; preds = %bb.c
  %i.t = load i8, ptr %0, align 8, !range !7, !noundef !5
  %i.u = icmp eq i8 %i.t, -1
  br i1 %i.u, label %bb.f, label %bb.i

bb.f:                                             ; preds = %_RINvYINtNtCs8ZPNfZ0ciAA_10serde_json2de9MapAccessNtNtB8_4read7StrReadENtNtCsdnjrqM8ey3e_10serde_core2de9MapAccess10next_valueNtNtB8_5value5ValueEB8_.exit
  invoke void @_RNvXsp_NtCsbqH9stoieM8_5alloc3vecINtB5_3VechENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCs8ZPNfZ0ciAA_10serde_json(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtCsbqH9stoieM8_5alloc3vec3VechEECs8ZPNfZ0ciAA_10serde_json.exit.i unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.v = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsbqH9stoieM8_5alloc7raw_vecINtB5_6RawVechENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCs8ZPNfZ0ciAA_10serde_json(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %.body unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.w = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs8Chj7Szqq0n_4core9panicking16panic_in_cleanup() #16
  unreachable

_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtCsbqH9stoieM8_5alloc3vec3VechEECs8ZPNfZ0ciAA_10serde_json.exit.i: ; preds = %bb.f
  invoke void @_RNvXs1_NtCsbqH9stoieM8_5alloc7raw_vecINtB5_6RawVechENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCs8ZPNfZ0ciAA_10serde_json(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueNtNtCsbqH9stoieM8_5alloc6string6StringECs8ZPNfZ0ciAA_10serde_json.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.i:                                             ; preds = %_RINvYINtNtCs8ZPNfZ0ciAA_10serde_json2de9MapAccessNtNtB8_4read7StrReadENtNtCsdnjrqM8ey3e_10serde_core2de9MapAccess10next_valueNtNtB8_5value5ValueEB8_.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.g, ptr noundef nonnull align 8 dereferenceable(32) %0, i64 32, i1 false)
  invoke void @_RNvMsi_NtNtNtCsbqH9stoieM8_5alloc11collections5btree3mapINtB5_8BTreeMapNtNtBb_6string6StringNtNtCs8ZPNfZ0ciAA_10serde_json5value5ValueE6insertB1w_(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.i, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.j, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.h, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.g)
          to label %bb.j unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.body:                                            ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.o, %bb.r, %bb.g, %bb.e
  %.pn = phi { ptr, i32 } [ %i.s, %bb.e ], [ %i.v, %bb.g ], [ %i.ac, %bb.o ], [ %i.ah, %bb.r ], [ %lpad.loopexit.split-lp58, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  invoke void @_RNvXNtNtNtCsbqH9stoieM8_5alloc11collections5btree3mapINtB2_8BTreeMapNtNtB8_6string6StringNtNtCs8ZPNfZ0ciAA_10serde_json5value5ValueENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropB1t_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtCs8ZPNfZ0ciAA_10serde_json3map3MapNtNtCsbqH9stoieM8_5alloc6string6StringNtNtBG_5value5ValueEEBG_.exit unwind label %bb.aa

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.x, %bb.l, %bb.v, %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueNtNtCsbqH9stoieM8_5alloc6string6StringECs8ZPNfZ0ciAA_10serde_json.exit.i.i, %bb.k, %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtCsbqH9stoieM8_5alloc3vec3VechEECs8ZPNfZ0ciAA_10serde_json.exit.i, %bb.i
  %lpad.loopexit.split-lp58 = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  %i.x = load i8, ptr %i.i, align 8, !range !7, !alias.scope !23, !noundef !5
  %i.y = icmp eq i8 %i.x, -1
  br i1 %i.y, label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs8ZPNfZ0ciAA_10serde_json5value5ValueEEB11_.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  invoke fastcc void @_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueNtNtCs8ZPNfZ0ciAA_10serde_json5value5ValueEBF_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.i)
          to label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs8ZPNfZ0ciAA_10serde_json5value5ValueEEB11_.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs8ZPNfZ0ciAA_10serde_json5value5ValueEEB11_.exit: ; preds = %bb.j, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  %i.z = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  %.sroa.3.0..sroa_idx2.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %.sroa.531.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.36.0..sroa_idx7 = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.sroa.36.sroa.2.0..sroa.36.0..sroa_idx7.sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  br label %bb.l

bb.l:                                             ; preds = %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs8ZPNfZ0ciAA_10serde_json5value5ValueEEB11_.exit28, %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs8ZPNfZ0ciAA_10serde_json5value5ValueEEB11_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !24
  invoke void @_RINvXs9_NtCs8ZPNfZ0ciAA_10serde_json2deINtB6_9MapAccessNtNtB8_4read7StrReadENtNtCsdnjrqM8ey3e_10serde_core2de9MapAccess13next_key_seedINtNtCs8Chj7Szqq0n_4core6marker11PhantomDataNtNtCsbqH9stoieM8_5alloc6string6StringEEB8_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.l)
          to label %.noexc23 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc23:                                         ; preds = %bb.l
  %i.aa = load i64, ptr %i.c, align 8, !range !22, !noalias !25, !noundef !5 ; 2 uses
  switch i64 %i.aa, label %bb.n [
    i64 -2, label %bb.m
    i64 -1, label %.thread40
  ]

.thread40:                                        ; preds = %.noexc23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !24
  br label %.loopexit45

bb.m:                                             ; preds = %.noexc23
  %i.ab = load ptr, ptr %i.z, align 8, !noalias !25, !nonnull !5, !align !6, !noundef !5
  br label %.thread

bb.n:                                             ; preds = %.noexc23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !25
  store i64 %i.aa, ptr %i.b, align 8, !noalias !25
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.3.0..sroa_idx2.i.i, ptr noundef nonnull align 8 dereferenceable(16) %i.z, i64 16, i1 false), !noalias !25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !25
  invoke void @_RINvXs9_NtCs8ZPNfZ0ciAA_10serde_json2deINtB6_9MapAccessNtNtB8_4read7StrReadENtNtCsdnjrqM8ey3e_10serde_core2de9MapAccess15next_value_seedINtNtCs8Chj7Szqq0n_4core6marker11PhantomDataNtNtB8_5value5ValueEEB8_(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.l)
          to label %bb.p unwind label %bb.o, !noalias !26

bb.o:                                             ; preds = %bb.n
  %i.ac = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueNtNtCsbqH9stoieM8_5alloc6string6StringECs8ZPNfZ0ciAA_10serde_json(ptr noalias nofree noundef align 8 dereferenceable(24) %i.b) #17
          to label %.body unwind label %bb.t, !noalias !26

bb.p:                                             ; preds = %bb.n
  %i.ad = load i8, ptr %i.a, align 8, !range !7, !noalias !25, !noundef !5
  %i.ae = icmp eq i8 %i.ad, -1
  br i1 %i.ae, label %bb.q, label %bb.u

bb.q:                                             ; preds = %bb.p
  %i.af = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.ag = load ptr, ptr %i.af, align 8, !noalias !25, !nonnull !5, !align !6, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !25
  invoke void @_RNvXsp_NtCsbqH9stoieM8_5alloc3vecINtB5_3VechENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCs8ZPNfZ0ciAA_10serde_json(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueNtNtCsbqH9stoieM8_5alloc6string6StringECs8ZPNfZ0ciAA_10serde_json.exit.i.i unwind label %bb.r, !noalias !26

bb.r:                                             ; preds = %bb.q
  %i.ah = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsbqH9stoieM8_5alloc7raw_vecINtB5_6RawVechENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCs8ZPNfZ0ciAA_10serde_json(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %.body unwind label %bb.s, !noalias !26

bb.s:                                             ; preds = %bb.r
  %i.ai = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs8Chj7Szqq0n_4core9panicking16panic_in_cleanup() #16, !noalias !26
  unreachable

_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueNtNtCsbqH9stoieM8_5alloc6string6StringECs8ZPNfZ0ciAA_10serde_json.exit.i.i: ; preds = %bb.q
  invoke void @_RNvXs1_NtCsbqH9stoieM8_5alloc7raw_vecINtB5_6RawVechENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCs8ZPNfZ0ciAA_10serde_json(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %.noexc26 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc26:                                         ; preds = %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueNtNtCsbqH9stoieM8_5alloc6string6StringECs8ZPNfZ0ciAA_10serde_json.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !25
  br label %.thread

bb.t:                                             ; preds = %bb.o
  %i.aj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs8Chj7Szqq0n_4core9panicking16panic_in_cleanup() #16, !noalias !26
  unreachable

.thread:                                          ; preds = %.noexc26, %bb.m
  %.sroa.9.0.ph = phi ptr [ %i.ab, %bb.m ], [ %i.ag, %.noexc26 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !24
  br label %.loopexit44

bb.u:                                             ; preds = %bb.p
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.13.sroa.7, ptr noundef nonnull align 8 dereferenceable(32) %i.a, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !25
  %.sroa.029.0.copyload = load i64, ptr %i.b, align 8, !noalias !25 ; 2 uses
  %.sroa.430.0.copyload = load ptr, ptr %.sroa.3.0..sroa_idx2.i.i, align 8, !noalias !25 ; 2 uses
  %i.ak = load i64, ptr %.sroa.531.0..sroa_idx, align 8, !noalias !25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !24
  switch i64 %.sroa.029.0.copyload, label %bb.v [
    i64 -2, label %.loopexit44
    i64 -1, label %.loopexit45
  ]

.loopexit44:                                      ; preds = %bb.u, %.thread
  %.sroa.9.034 = phi ptr [ %.sroa.9.0.ph, %.thread ], [ %.sroa.430.0.copyload, %bb.u ]
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.9.034, ptr %i.al, align 8
  store i8 -1, ptr %0, align 8
  br label %bb.z

bb.v:                                             ; preds = %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store i64 %.sroa.029.0.copyload, ptr %i.f, align 8
  store ptr %.sroa.430.0.copyload, ptr %.sroa.36.0..sroa_idx7, align 8
  store i64 %i.ak, ptr %.sroa.36.sroa.2.0..sroa.36.0..sroa_idx7.sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.e, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.13.sroa.7, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  invoke void @_RNvMsi_NtNtNtCsbqH9stoieM8_5alloc11collections5btree3mapINtB5_8BTreeMapNtNtBb_6string6StringNtNtCs8ZPNfZ0ciAA_10serde_json5value5ValueE6insertB1w_(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.d, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.j, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.f, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.e)
          to label %bb.w unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.loopexit45:                                      ; preds = %bb.u, %.thread40
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4)
  %.sroa.4.8..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.4, i64 7
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %.sroa.4.8..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.j, i64 24, i1 false)
  store i8 5, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(31) %.sroa.4.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(31) %.sroa.4, i64 31, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  br label %bb.y

bb.w:                                             ; preds = %bb.v
  %i.am = load i8, ptr %i.d, align 8, !range !7, !alias.scope !27, !noundef !5
  %i.an = icmp eq i8 %i.am, -1
  br i1 %i.an, label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs8ZPNfZ0ciAA_10serde_json5value5ValueEEB11_.exit28, label %bb.x

bb.x:                                             ; preds = %bb.w
  invoke fastcc void @_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueNtNtCs8ZPNfZ0ciAA_10serde_json5value5ValueEBF_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.d)
          to label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs8ZPNfZ0ciAA_10serde_json5value5ValueEEB11_.exit28 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs8ZPNfZ0ciAA_10serde_json5value5ValueEEB11_.exit28: ; preds = %bb.w, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.l

bb.y:                                             ; preds = %bb.b, %bb.z, %bb.d, %.loopexit45
  ret void

bb.z:                                             ; preds = %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueNtNtCsbqH9stoieM8_5alloc6string6StringECs8ZPNfZ0ciAA_10serde_json.exit, %.loopexit44
  call void @_RNvXNtNtNtCsbqH9stoieM8_5alloc11collections5btree3mapINtB2_8BTreeMapNtNtB8_6string6StringNtNtCs8ZPNfZ0ciAA_10serde_json5value5ValueENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropB1t_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  br label %bb.y

_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueNtNtCsbqH9stoieM8_5alloc6string6StringECs8ZPNfZ0ciAA_10serde_json.exit: ; preds = %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtCsbqH9stoieM8_5alloc3vec3VechEECs8ZPNfZ0ciAA_10serde_json.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  br label %bb.z

bb.aa:                                            ; preds = %.body, %bb.e
  %i.ao = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs8Chj7Szqq0n_4core9panicking16panic_in_cleanup() #16
  unreachable

_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtCs8ZPNfZ0ciAA_10serde_json3map3MapNtNtCsbqH9stoieM8_5alloc6string6StringNtNtBG_5value5ValueEEBG_.exit: ; preds = %.body
  resume { ptr, i32 } %.pn
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define hidden void @_RINvXs0_NtNtNtCs8Chj7Szqq0n_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterhENCNvNtCsbqH9stoieM8_5alloc3str13replace_ascii0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB2a_8for_each4callhNCINvMsk_NtB1v_3vecINtB3n_3VechE14extend_trustedBN_E0E0ECs8ZPNfZ0ciAA_10serde_json(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !5, !noundef !5 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !5, !noundef !5 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !nonnull !5, !noundef !5 ; 3 uses
  %.sroa.0.0.copyload = load ptr, ptr %1, align 8 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8 ; 3 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 8 ; 3 uses
  %i.h = icmp eq ptr %i.a, %i.c
  br i1 %i.h, label %_RINvXs2J_NtNtCs8Chj7Szqq0n_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRhhuNCNvNtCsbqH9stoieM8_5alloc3str13replace_ascii0NCINvNvBS_8for_each4callhNCINvMsk_NtB2l_3vecINtB3x_3VechE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECs8ZPNfZ0ciAA_10serde_json.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.j = ptrtoint ptr %i.a to i64                 ; 2 uses
  %i.k = sub i64 %i.i, %i.j                       ; 3 uses
  %xtraiter = and i64 %i.k, 1
  %i.l = add i64 %i.i, -1
  %i.m = icmp eq i64 %i.l, %i.j
  br i1 %i.m, label %.epil.preheader, label %.new

.new:                                             ; preds = %bb.b
  %unroll_iter = and i64 %i.k, -2
  br label %bb.c

bb.c:                                             ; preds = %bb.g, %.new
  %i.n = phi i64 [ %.sroa.5.0.copyload, %.new ], [ %i.aa, %bb.g ] ; 3 uses
  %.sroa.01.0.i = phi i64 [ 0, %.new ], [ %i.ab, %bb.g ] ; 3 uses
  %niter = phi i64 [ 0, %.new ], [ %niter.next.1, %bb.g ]
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.01.0.i
  %.val15.i = load i8, ptr %i.o, align 1, !noalias !36, !noundef !5 ; 2 uses
  %i.p = load i8, ptr %i.e, align 1, !noalias !37, !noundef !5
  %i.q = icmp eq i8 %.val15.i, %i.p
  br i1 %i.q, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.r = load i8, ptr %i.g, align 1, !noalias !37, !noundef !5
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sroa.0.0.i.i.i = phi i8 [ %i.r, %bb.d ], [ %.val15.i, %bb.c ]
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.7.0.copyload, i64 %i.n
  store i8 %.sroa.0.0.i.i.i, ptr %i.s, align 1, !noalias !38
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.01.0.i
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 1
  %.val15.i.1 = load i8, ptr %i.u, align 1, !noalias !36, !noundef !5 ; 2 uses
  %i.v = load i8, ptr %i.e, align 1, !noalias !37, !noundef !5
  %i.w = icmp eq i8 %.val15.i.1, %i.v
  br i1 %i.w, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.x = load i8, ptr %i.g, align 1, !noalias !37, !noundef !5
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.sroa.0.0.i.i.i.1 = phi i8 [ %i.x, %bb.f ], [ %.val15.i.1, %bb.e ]
  %i.y = getelementptr i8, ptr %.sroa.7.0.copyload, i64 %i.n
  %i.z = getelementptr i8, ptr %i.y, i64 1
  store i8 %.sroa.0.0.i.i.i.1, ptr %i.z, align 1, !noalias !38
  %i.aa = add i64 %i.n, 2                         ; 3 uses
  %i.ab = add nuw i64 %.sroa.01.0.i, 2            ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_RINvXs2J_NtNtCs8Chj7Szqq0n_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRhhuNCNvNtCsbqH9stoieM8_5alloc3str13replace_ascii0NCINvNvBS_8for_each4callhNCINvMsk_NtB2l_3vecINtB3x_3VechE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECs8ZPNfZ0ciAA_10serde_json.exit.loopexit.unr-lcssa, label %bb.c

_RINvXs2J_NtNtCs8Chj7Szqq0n_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRhhuNCNvNtCsbqH9stoieM8_5alloc3str13replace_ascii0NCINvNvBS_8for_each4callhNCINvMsk_NtB2l_3vecINtB3x_3VechE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECs8ZPNfZ0ciAA_10serde_json.exit.loopexit.unr-lcssa: ; preds = %bb.g
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_RINvXs2J_NtNtCs8Chj7Szqq0n_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRhhuNCNvNtCsbqH9stoieM8_5alloc3str13replace_ascii0NCINvNvBS_8for_each4callhNCINvMsk_NtB2l_3vecINtB3x_3VechE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECs8ZPNfZ0ciAA_10serde_json.exit, label %.epil.preheader

.epil.preheader:                                  ; preds = %_RINvXs2J_NtNtCs8Chj7Szqq0n_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRhhuNCNvNtCsbqH9stoieM8_5alloc3str13replace_ascii0NCINvNvBS_8for_each4callhNCINvMsk_NtB2l_3vecINtB3x_3VechE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECs8ZPNfZ0ciAA_10serde_json.exit.loopexit.unr-lcssa, %bb.b
  %.epil.init = phi i64 [ %.sroa.5.0.copyload, %bb.b ], [ %i.aa, %_RINvXs2J_NtNtCs8Chj7Szqq0n_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRhhuNCNvNtCsbqH9stoieM8_5alloc3str13replace_ascii0NCINvNvBS_8for_each4callhNCINvMsk_NtB2l_3vecINtB3x_3VechE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECs8ZPNfZ0ciAA_10serde_json.exit.loopexit.unr-lcssa ] ; 2 uses
  %.sroa.01.0.i.epil.init = phi i64 [ 0, %bb.b ], [ %i.ab, %_RINvXs2J_NtNtCs8Chj7Szqq0n_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRhhuNCNvNtCsbqH9stoieM8_5alloc3str13replace_ascii0NCINvNvBS_8for_each4callhNCINvMsk_NtB2l_3vecINtB3x_3VechE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECs8ZPNfZ0ciAA_10serde_json.exit.loopexit.unr-lcssa ]
  %lcmp.mod4 = trunc i64 %i.k to i1
  tail call void @llvm.assume(i1 %lcmp.mod4)
  %i.ac = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.01.0.i.epil.init
  %.val15.i.epil = load i8, ptr %i.ac, align 1, !noalias !36, !noundef !5 ; 2 uses
  %i.ad = load i8, ptr %i.e, align 1, !noalias !37, !noundef !5
  %i.ae = icmp eq i8 %.val15.i.epil, %i.ad
  br i1 %i.ae, label %bb.h, label %_RINvXs2J_NtNtCs8Chj7Szqq0n_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRhhuNCNvNtCsbqH9stoieM8_5alloc3str13replace_ascii0NCINvNvBS_8for_each4callhNCINvMsk_NtB2l_3vecINtB3x_3VechE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECs8ZPNfZ0ciAA_10serde_json.exit.loopexit.epilog-lcssa

bb.h:                                             ; preds = %.epil.preheader
  %i.af = load i8, ptr %i.g, align 1, !noalias !37, !noundef !5
  br label %_RINvXs2J_NtNtCs8Chj7Szqq0n_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRhhuNCNvNtCsbqH9stoieM8_5alloc3str13replace_ascii0NCINvNvBS_8for_each4callhNCINvMsk_NtB2l_3vecINtB3x_3VechE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECs8ZPNfZ0ciAA_10serde_json.exit.loopexit.epilog-lcssa

_RINvXs2J_NtNtCs8Chj7Szqq0n_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRhhuNCNvNtCsbqH9stoieM8_5alloc3str13replace_ascii0NCINvNvBS_8for_each4callhNCINvMsk_NtB2l_3vecINtB3x_3VechE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECs8ZPNfZ0ciAA_10serde_json.exit.loopexit.epilog-lcssa: ; preds = %bb.h, %.epil.preheader
  %.sroa.0.0.i.i.i.epil = phi i8 [ %i.af, %bb.h ], [ %.val15.i.epil, %.epil.preheader ]
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.7.0.copyload, i64 %.epil.init
  store i8 %.sroa.0.0.i.i.i.epil, ptr %i.ag, align 1, !noalias !38
  %i.ah = add i64 %.epil.init, 1
  br label %_RINvXs2J_NtNtCs8Chj7Szqq0n_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRhhuNCNvNtCsbqH9stoieM8_5alloc3str13replace_ascii0NCINvNvBS_8for_each4callhNCINvMsk_NtB2l_3vecINtB3x_3VechE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECs8ZPNfZ0ciAA_10serde_json.exit

_RINvXs2J_NtNtCs8Chj7Szqq0n_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRhhuNCNvNtCsbqH9stoieM8_5alloc3str13replace_ascii0NCINvNvBS_8for_each4callhNCINvMsk_NtB2l_3vecINtB3x_3VechE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECs8ZPNfZ0ciAA_10serde_json.exit: ; preds = %_RINvXs2J_NtNtCs8Chj7Szqq0n_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRhhuNCNvNtCsbqH9stoieM8_5alloc3str13replace_ascii0NCINvNvBS_8for_each4callhNCINvMsk_NtB2l_3vecINtB3x_3VechE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECs8ZPNfZ0ciAA_10serde_json.exit.loopexit.epilog-lcssa, %_RINvXs2J_NtNtCs8Chj7Szqq0n_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRhhuNCNvNtCsbqH9stoieM8_5alloc3str13replace_ascii0NCINvNvBS_8for_each4callhNCINvMsk_NtB2l_3vecINtB3x_3VechE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECs8ZPNfZ0ciAA_10serde_json.exit.loopexit.unr-lcssa, %bb.a
  %storemerge = phi i64 [ %.sroa.5.0.copyload, %bb.a ], [ %i.aa, %_RINvXs2J_NtNtCs8Chj7Szqq0n_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRhhuNCNvNtCsbqH9stoieM8_5alloc3str13replace_ascii0NCINvNvBS_8for_each4callhNCINvMsk_NtB2l_3vecINtB3x_3VechE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECs8ZPNfZ0ciAA_10serde_json.exit.loopexit.unr-lcssa ], [ %i.ah, %_RINvXs2J_NtNtCs8Chj7Szqq0n_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRhhuNCNvNtCsbqH9stoieM8_5alloc3str13replace_ascii0NCINvNvBS_8for_each4callhNCINvMsk_NtB2l_3vecINtB3x_3VechE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECs8ZPNfZ0ciAA_10serde_json.exit.loopexit.epilog-lcssa ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.0.0.copyload, align 8, !noalias !36
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(write, argmem: readwrite, target_mem: none) uwtable
define hidden void @_RINvXs0_NtNtNtCs8Chj7Szqq0n_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterhENCNvXs_NtNtCs8ZPNfZ0ciAA_10serde_json5value3serNtB1w_10SerializerNtNtCsdnjrqM8ey3e_10serde_core3ser10Serializer15serialize_bytes0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB3v_8for_each4callNtB1y_5ValueNCINvMsk_NtCsbqH9stoieM8_5alloc3vecINtB4T_3VecB4y_E14extend_trustedBN_E0E0EB1A_(ptr noundef nonnull %0, ptr noundef %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.0.0.copyload = load ptr, ptr %2, align 8 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8 ; 3 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 8 ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ]
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %_RINvXs2J_NtNtCs8Chj7Szqq0n_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRhNtNtCs8ZPNfZ0ciAA_10serde_json5value5ValueuNCNvXs_NtB2f_3serNtB31_10SerializerNtNtCsdnjrqM8ey3e_10serde_core3ser10Serializer15serialize_bytes0NCINvNvBS_8for_each4callB2d_NCINvMsk_NtCsbqH9stoieM8_5alloc3vecINtB56_3VecB2d_E14extend_trustedINtB1I_3MapBF_B2U_EE0E0E0EB2h_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.c = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.d = sub nuw i64 %i.b, %i.c                   ; 3 uses
  %xtraiter = and i64 %i.d, 1
  %i.e = add i64 %i.b, -1
  %i.f = icmp eq i64 %i.e, %i.c
  br i1 %i.f, label %.epil.preheader, label %.new

.new:                                             ; preds = %bb.b
  %unroll_iter = and i64 %i.d, -2
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.new
  %i.g = phi i64 [ %.sroa.5.0.copyload, %.new ], [ %i.p, %bb.c ] ; 3 uses
  %.sroa.01.0.i = phi i64 [ 0, %.new ], [ %i.q, %bb.c ] ; 3 uses
  %niter = phi i64 [ 0, %.new ], [ %niter.next.1, %bb.c ]
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.01.0.i
  %.val15.i = load i8, ptr %i.h, align 1, !noalias !47, !noundef !5
  %i.i = zext i8 %.val15.i to i64
  %i.j = getelementptr inbounds nuw [32 x i8], ptr %.sroa.7.0.copyload, i64 %i.g ; 3 uses
  store i8 2, ptr %i.j, align 8, !noalias !48
  %.sroa.54.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store i64 0, ptr %.sroa.54.0..sroa_idx.i.i, align 8, !noalias !48
  %.sroa.65.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  store i64 %i.i, ptr %.sroa.65.0..sroa_idx.i.i, align 8, !noalias !48
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.01.0.i
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 1
  %.val15.i.1 = load i8, ptr %i.l, align 1, !noalias !47, !noundef !5
  %i.m = zext i8 %.val15.i.1 to i64
  %i.n = getelementptr [32 x i8], ptr %.sroa.7.0.copyload, i64 %i.g ; 3 uses
  %i.o = getelementptr i8, ptr %i.n, i64 32
  store i8 2, ptr %i.o, align 8, !noalias !48
  %.sroa.54.0..sroa_idx.i.i.1 = getelementptr i8, ptr %i.n, i64 40
  store i64 0, ptr %.sroa.54.0..sroa_idx.i.i.1, align 8, !noalias !48
  %.sroa.65.0..sroa_idx.i.i.1 = getelementptr i8, ptr %i.n, i64 48
end_hunk_0
begin_hunk_1_@_RNvXs_NtNtCs8ZPNfZ0ciAA_10serde_json5value5indexeNtB4_5Index15index_or_insert:bb.a
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !145)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 65 ; 4 uses
  %.promoted.i = load i8, ptr %i.a, align 1, !alias.scope !146 ; 3 uses
  %.promoted16.i = load i64, ptr %0, align 8, !alias.scope !145 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val.i.i.i = load ptr, ptr %i.b, align 8, !alias.scope !145, !nonnull !5 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val1.i.i.i = load i64, ptr %i.c, align 8, !alias.scope !145 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.f = load i64, ptr %i.e, align 8, !alias.scope !145 ; 7 uses
  %.not.i.i.i.i = icmp ugt i64 %i.f, %.val1.i.i.i
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.i = load i8, ptr %i.h, align 8, !alias.scope !145 ; 2 uses
  %i.j = zext nneg i8 %i.i to i64                 ; 4 uses
  %i.k = icmp ult i8 %i.i, 5
  %i.l = getelementptr i8, ptr %i.g, i64 %i.j
  %i.m = getelementptr i8, ptr %i.l, i64 -1
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.o = load i8, ptr %i.n, align 8, !range !147, !alias.scope !145
  %i.p = trunc nuw i8 %i.o to i1                  ; 2 uses
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.pre2.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i, align 8, !alias.scope !145 ; 2 uses
  %.not.i.i.i.fr.i = freeze i1 %.not.i.i.i.i
  br i1 %.not.i.i.i.fr.i, label %.split.us.i, label %.split.preheader.i

.split.preheader.i:                               ; preds = %bb.b
  %.promoted19.i = load i64, ptr %i.d, align 8, !alias.scope !145
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
  store i8 1, ptr %i.a, align 1, !alias.scope !148
  %i.r = add i64 %1, -1                           ; 2 uses
  %i.s = icmp eq i64 %i.r, 0
  br i1 %i.s, label %_RINvYINtNtNtCs8Chj7Szqq0n_4core3str4iter5SplitcENtNtNtNtBa_4iter6traits8iterator8Iterator8try_foldINtNtNtBa_3num7nonzero7NonZerojENCNvXs_NvBK_10advance_byB3_NtB2b_13SpecAdvanceBy15spec_advance_by0INtNtBa_6option6OptionB1y_EECs8ZPNfZ0ciAA_10serde_json.exit, label %.split23.us.loopexit.loopexit.i

.split.us.split.i:                                ; preds = %.split.us.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !149)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !150)
  %i.t = trunc nuw i8 %.promoted.i to i1
  br i1 %i.t, label %_RINvYINtNtNtCs8Chj7Szqq0n_4core3str4iter5SplitcENtNtNtNtBa_4iter6traits8iterator8Iterator8try_foldINtNtNtBa_3num7nonzero7NonZerojENCNvXs_NvBK_10advance_byB3_NtB2b_13SpecAdvanceBy15spec_advance_by0INtNtBa_6option6OptionB1y_EECs8ZPNfZ0ciAA_10serde_json.exit, label %_RNvMsf_NtNtCs8Chj7Szqq0n_4core3str4iterINtB5_13SplitInternalcE7get_endCs8ZPNfZ0ciAA_10serde_json.exit.i.i.us.i

_RNvMsf_NtNtCs8Chj7Szqq0n_4core3str4iterINtB5_13SplitInternalcE7get_endCs8ZPNfZ0ciAA_10serde_json.exit.i.i.us.i: ; preds = %.split.us.split.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !151)
  store i8 1, ptr %i.a, align 1, !alias.scope !152
  br label %_RINvYINtNtNtCs8Chj7Szqq0n_4core3str4iter5SplitcENtNtNtNtBa_4iter6traits8iterator8Iterator8try_foldINtNtNtBa_3num7nonzero7NonZerojENCNvXs_NvBK_10advance_byB3_NtB2b_13SpecAdvanceBy15spec_advance_by0INtNtBa_6option6OptionB1y_EECs8ZPNfZ0ciAA_10serde_json.exit

.split.i:                                         ; preds = %select.unfold.i, %.split.preheader.i
  %i.u = phi i64 [ %i.ao, %select.unfold.i ], [ %.promoted19.i, %.split.preheader.i ] ; 3 uses
  %.lcssa18.i = phi i64 [ %.lcssa17.i, %select.unfold.i ], [ %.promoted16.i, %.split.preheader.i ] ; 2 uses
  %i.v = phi i8 [ %i.ap, %select.unfold.i ], [ %.promoted.i, %.split.preheader.i ]
  %.sroa.01.0.i = phi i64 [ %i.aq, %select.unfold.i ], [ %1, %.split.preheader.i ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !149)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !150)
  %i.w = trunc nuw i8 %i.v to i1
  br i1 %i.w, label %_RINvYINtNtNtCs8Chj7Szqq0n_4core3str4iter5SplitcENtNtNtNtBa_4iter6traits8iterator8Iterator8try_foldINtNtNtBa_3num7nonzero7NonZerojENCNvXs_NvBK_10advance_byB3_NtB2b_13SpecAdvanceBy15spec_advance_by0INtNtBa_6option6OptionB1y_EECs8ZPNfZ0ciAA_10serde_json.exit, label %bb.c

bb.c:                                             ; preds = %.split.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !151)
  %i.x = icmp ult i64 %i.f, %i.u
  br i1 %i.x, label %_RNvMsf_NtNtCs8Chj7Szqq0n_4core3str4iterINtB5_13SplitInternalcE7get_endCs8ZPNfZ0ciAA_10serde_json.exit.i.i.i, label %.lr.ph.split.preheader.i.i.i.i

.lr.ph.split.preheader.i.i.i.i:                   ; preds = %bb.c
  tail call void @llvm.assume(i1 %i.k)
  %.pre.i.i.i.i = load i8, ptr %i.m, align 1, !alias.scope !153 ; 2 uses
  br label %.lr.ph.split.i.i.i.i

.lr.ph.split.i.i.i.i:                             ; preds = %bb.e, %.lr.ph.split.preheader.i.i.i.i
  %i.y = phi i64 [ %i.ai, %bb.e ], [ %i.u, %.lr.ph.split.preheader.i.i.i.i ] ; 4 uses
  %i.z = sub nuw i64 %i.f, %i.y                   ; 4 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 %i.y ; 2 uses
  %i.ab = icmp samesign ult i64 %i.z, 16
  br i1 %i.ab, label %.preheader.i.i.i.i.i, label %bb.d

.preheader.i.i.i.i.i:                             ; preds = %.lr.ph.split.i.i.i.i
  %.not.i.i.i.i.i = icmp eq i64 %i.f, %i.y
  br i1 %.not.i.i.i.i.i, label %.loopexit15.i.i.i.i, label %.lr.ph.i.i.i.i.i

bb.d:                                             ; preds = %.lr.ph.split.i.i.i.i
  %i.ac = tail call { i64, i64 } @_RNvNtNtCs8Chj7Szqq0n_4core5slice6memchr14memchr_aligned(i8 noundef %.pre.i.i.i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.aa, i64 noundef range(i64 0, -9223372036854775808) %i.z), !noalias !154 ; 2 uses
  %i.ad = extractvalue { i64, i64 } %i.ac, 0
  %i.ae = extractvalue { i64, i64 } %i.ac, 1
  %i.af = trunc nuw i64 %i.ad to i1
  br i1 %i.af, label %.loopexit.i.i.i.i, label %.loopexit15.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.preheader.i.i.i.i.i, %5
  %.sroa.04.011.i.i.i.i.i = phi i64 [ %6, %5 ], [ 0, %.preheader.i.i.i.i.i ] ; 3 uses
  %2 = getelementptr inbounds nuw i8, ptr %i.aa, i64 %.sroa.04.011.i.i.i.i.i
  %3 = load i8, ptr %2, align 1, !alias.scope !155, !noalias !154, !noundef !5
  %4 = icmp eq i8 %3, %.pre.i.i.i.i
  br i1 %4, label %.loopexit.i.i.i.i, label %5

5:                                                ; preds = %.lr.ph.i.i.i.i.i
  %6 = add nuw nsw i64 %.sroa.04.011.i.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i.i.i = icmp eq i64 %6, %i.z
  br i1 %exitcond.not.i.i.i.i.i, label %.loopexit15.i.i.i.i, label %.lr.ph.i.i.i.i.i

.loopexit.i.i.i.i:                                ; preds = %.lr.ph.i.i.i.i.i, %bb.d
  %.sroa.5.0.i.i.i.i.i = phi i64 [ %i.ae, %bb.d ], [ %.sroa.04.011.i.i.i.i.i, %.lr.ph.i.i.i.i.i ] ; 2 uses
  %i.ag = icmp ult i64 %.sroa.5.0.i.i.i.i.i, %i.z
  tail call void @llvm.assume(i1 %i.ag)
  %i.ah = add i64 %i.y, 1
  %i.ai = add i64 %i.ah, %.sroa.5.0.i.i.i.i.i     ; 10 uses
  store i64 %i.ai, ptr %i.d, align 8, !alias.scope !153
  %.not11.i.i.i.i = icmp ult i64 %i.ai, %i.j
  %.not12.i.i.i.i = icmp ugt i64 %i.ai, %.val1.i.i.i
  %or.cond.i.i.i.i = or i1 %.not11.i.i.i.i, %.not12.i.i.i.i
  br i1 %or.cond.i.i.i.i, label %bb.e, label %bb.f

.loopexit15.i.i.i.i:                              ; preds = %bb.d, %.preheader.i.i.i.i.i, %5
  store i64 %i.f, ptr %i.d, align 8, !alias.scope !153
  br label %_RNvMsf_NtNtCs8Chj7Szqq0n_4core3str4iterINtB5_13SplitInternalcE7get_endCs8ZPNfZ0ciAA_10serde_json.exit.i.i.i

bb.e:                                             ; preds = %bb.f, %.loopexit.i.i.i.i
  %i.aj = icmp ult i64 %i.f, %i.ai
  br i1 %i.aj, label %_RNvMsf_NtNtCs8Chj7Szqq0n_4core3str4iterINtB5_13SplitInternalcE7get_endCs8ZPNfZ0ciAA_10serde_json.exit.i.i.i, label %.lr.ph.split.i.i.i.i

bb.f:                                             ; preds = %.loopexit.i.i.i.i
  %i.ak = sub nuw i64 %i.ai, %i.j
  %i.al = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 %i.ak
  %bcmp.i.i.i.i = tail call i32 @bcmp(ptr nonnull %i.al, ptr nonnull %i.g, i64 %i.j), !noalias !156
  %i.am = icmp eq i32 %bcmp.i.i.i.i, 0
  br i1 %i.am, label %_RNvXs_NtNtCs8Chj7Szqq0n_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i.i.i, label %bb.e

_RNvXs_NtNtCs8Chj7Szqq0n_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i.i.i: ; preds = %bb.f
  store i64 %i.ai, ptr %0, align 8, !alias.scope !146
  br label %select.unfold.i

_RNvMsf_NtNtCs8Chj7Szqq0n_4core3str4iterINtB5_13SplitInternalcE7get_endCs8ZPNfZ0ciAA_10serde_json.exit.i.i.i: ; preds = %bb.e, %.loopexit15.i.i.i.i, %bb.c
  %i.an = phi i64 [ %i.u, %bb.c ], [ %i.f, %.loopexit15.i.i.i.i ], [ %i.ai, %bb.e ]
  store i8 1, ptr %i.a, align 1, !alias.scope !152
  %.not.i3.i.i.i = icmp ne i64 %.pre2.i.i.i.i, %.lcssa18.i
  %or.cond.not.i.i.i.i = select i1 %i.p, i1 true, i1 %.not.i3.i.i.i
  br i1 %or.cond.not.i.i.i.i, label %select.unfold.i, label %_RINvYINtNtNtCs8Chj7Szqq0n_4core3str4iter5SplitcENtNtNtNtBa_4iter6traits8iterator8Iterator8try_foldINtNtNtBa_3num7nonzero7NonZerojENCNvXs_NvBK_10advance_byB3_NtB2b_13SpecAdvanceBy15spec_advance_by0INtNtBa_6option6OptionB1y_EECs8ZPNfZ0ciAA_10serde_json.exit

select.unfold.i:                                  ; preds = %_RNvMsf_NtNtCs8Chj7Szqq0n_4core3str4iterINtB5_13SplitInternalcE7get_endCs8ZPNfZ0ciAA_10serde_json.exit.i.i.i, %_RNvXs_NtNtCs8Chj7Szqq0n_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i.i.i
  %i.ao = phi i64 [ %i.an, %_RNvMsf_NtNtCs8Chj7Szqq0n_4core3str4iterINtB5_13SplitInternalcE7get_endCs8ZPNfZ0ciAA_10serde_json.exit.i.i.i ], [ %i.ai, %_RNvXs_NtNtCs8Chj7Szqq0n_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i.i.i ]
  %.lcssa17.i = phi i64 [ %.lcssa18.i, %_RNvMsf_NtNtCs8Chj7Szqq0n_4core3str4iterINtB5_13SplitInternalcE7get_endCs8ZPNfZ0ciAA_10serde_json.exit.i.i.i ], [ %i.ai, %_RNvXs_NtNtCs8Chj7Szqq0n_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i.i.i ]
  %i.ap = phi i8 [ 1, %_RNvMsf_NtNtCs8Chj7Szqq0n_4core3str4iterINtB5_13SplitInternalcE7get_endCs8ZPNfZ0ciAA_10serde_json.exit.i.i.i ], [ 0, %_RNvXs_NtNtCs8Chj7Szqq0n_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i.i.i ]
  %i.aq = add i64 %.sroa.01.0.i, -1               ; 2 uses
  %i.ar = icmp eq i64 %i.aq, 0
  br i1 %i.ar, label %_RINvYINtNtNtCs8Chj7Szqq0n_4core3str4iter5SplitcENtNtNtNtBa_4iter6traits8iterator8Iterator8try_foldINtNtNtBa_3num7nonzero7NonZerojENCNvXs_NvBK_10advance_byB3_NtB2b_13SpecAdvanceBy15spec_advance_by0INtNtBa_6option6OptionB1y_EECs8ZPNfZ0ciAA_10serde_json.exit, label %.split.i

.split23.us.loopexit.loopexit.i:                  ; preds = %_RNvMsf_NtNtCs8Chj7Szqq0n_4core3str4iterINtB5_13SplitInternalcE7get_endCs8ZPNfZ0ciAA_10serde_json.exit.i.i.us.us.peel.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !149)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !150)
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
declare hidden void @_RNvXNtNtNtCsbqH9stoieM8_5alloc11collections5btree3mapINtB2_8BTreeMapNtNtB8_6string6StringNtNtCs8ZPNfZ0ciAA_10serde_json5value5ValueENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropB1t_(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvXs9_NtCs8ZPNfZ0ciAA_10serde_json2deINtB6_9MapAccessNtNtB8_4read7StrReadENtNtCsdnjrqM8ey3e_10serde_core2de9MapAccess13next_key_seedNtNtNtB8_5value2de13KeyClassifierEB8_(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #6

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMsi_NtNtNtCsbqH9stoieM8_5alloc11collections5btree3mapINtB5_8BTreeMapNtNtBb_6string6StringNtNtCs8ZPNfZ0ciAA_10serde_json5value5ValueE6insertB1w_(ptr dead_on_unwind noalias nofree noundef writable sret([32 x i8]) align 8 captures(none) dereferenceable(32), ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(32)) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #8

; Function Attrs: nonlazybind uwtable
declare void @_RNvXs8_NtCs8ZPNfZ0ciAA_10serde_json4readNtB5_7StrReadNtB5_4Read9parse_str(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs5_NtCsbqH9stoieM8_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs8ZPNfZ0ciAA_10serde_json(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), i64 noundef, i1 noundef zeroext, i64 noundef range(i64 1, -9223372036854775807), i64 noundef) unnamed_addr #0

; Function Attrs: cold minsize noreturn nonlazybind optsize uwtable
declare void @_RNvNtCsbqH9stoieM8_5alloc7raw_vec12handle_error(i64 noundef range(i64 0, -9223372036854775807), i64) unnamed_addr #9

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvXs9_NtCs8ZPNfZ0ciAA_10serde_json2deINtB6_9MapAccessNtNtB8_4read7StrReadENtNtCsdnjrqM8ey3e_10serde_core2de9MapAccess15next_value_seedINtNtCs8Chj7Szqq0n_4core6marker11PhantomDataNtNtB8_5value5ValueEEB8_(ptr dead_on_unwind noalias nofree noundef writable sret([32 x i8]) align 8 captures(address) dereferenceable(32), ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvXs9_NtCs8ZPNfZ0ciAA_10serde_json2deINtB6_9MapAccessNtNtB8_4read7StrReadENtNtCsdnjrqM8ey3e_10serde_core2de9MapAccess13next_key_seedINtNtCs8Chj7Szqq0n_4core6marker11PhantomDataNtNtCsbqH9stoieM8_5alloc6string6StringEEB8_(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare { i64, i64 } @_RNvNtNtCs8Chj7Szqq0n_4core5slice6memchr14memchr_aligned(i8 noundef, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #0

; Function Attrs: cold minsize noinline noreturn nonlazybind optsize uwtable
declare void @_RNvNtCs8Chj7Szqq0n_4core9panicking18panic_bounds_check(i64 noundef, i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #10

; Function Attrs: cold nonlazybind uwtable
declare noundef nonnull align 8 ptr @_RNvMs0_NtCs8ZPNfZ0ciAA_10serde_json5errorNtB5_5Error6syntax(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24), i64 noundef, i64 noundef) unnamed_addr #3

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtRjNtB6_7Display3fmtCs8ZPNfZ0ciAA_10serde_json(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsi_NtNtNtCs8Chj7Szqq0n_4core3fmt3num3impjNtB9_7Display3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCs8Chj7Szqq0n_4core9panicking9panic_fmt(ptr noundef nonnull, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #11

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMsa_NtCs8Chj7Szqq0n_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #12

; Function Attrs: nonlazybind uwtable
declare noundef i64 @_RNvXss_CsgnlcHz8PRH9_4itoatNtB5_8Unsigned3fmt(i16 noundef, ptr noalias nofree noundef dereferenceable(5)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef i64 @_RNvXst_CsgnlcHz8PRH9_4itoamNtB5_8Unsigned3fmt(i32 noundef, ptr noalias nofree noundef dereferenceable(10)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef i64 @_RNvXsu_CsgnlcHz8PRH9_4itoayNtB5_8Unsigned3fmt(i64 noundef, ptr noalias nofree noundef dereferenceable(20)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef i64 @_RNvXs2_CsgnlcHz8PRH9_4itoaoNtB5_8Unsigned3fmt(i128 noundef, ptr noalias nofree noundef dereferenceable(39)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef align 8 ptr @_RINvXs2_NtNtCs8ZPNfZ0ciAA_10serde_json5value2deNtB8_5ValueNtNtCsdnjrqM8ey3e_10serde_core2de12Deserializer16deserialize_unitNtNtBW_5impls11UnitVisitorEBa_(ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs_NtNtCsbqH9stoieM8_5alloc3vec21spec_from_iter_nestedINtB6_3VecNtNtCs8ZPNfZ0ciAA_10serde_json5value5ValueEINtB4_18SpecFromIterNestedB13_INtNtNtNtCs8Chj7Szqq0n_4core4iter8adapters3map3MapINtNtNtB2n_5slice4iter4IterhENCNvXs_NtB15_3serNtB3C_10SerializerNtNtCsdnjrqM8ey3e_10serde_core3ser10Serializer15serialize_bytes0EE9from_iterB17_(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noundef nonnull, ptr noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef align 8 ptr @_RINvMsi_NtNtNtCsbqH9stoieM8_5alloc11collections5btree3mapINtB6_8BTreeMapNtNtBc_6string6StringNtNtCs8ZPNfZ0ciAA_10serde_json5value5ValueE3geteEB1x_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef align 8 ptr @_RINvMsi_NtNtNtCsbqH9stoieM8_5alloc11collections5btree3mapINtB6_8BTreeMapNtNtBc_6string6StringNtNtCs8ZPNfZ0ciAA_10serde_json5value5ValueE7get_muteEB1x_(ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMNtCs8ZPNfZ0ciAA_10serde_json3mapINtB3_3MapNtNtCsbqH9stoieM8_5alloc6string6StringNtNtB5_5value5ValueE5entryBJ_EB5_(ptr dead_on_unwind noalias nofree noundef writable sret([56 x i8]) align 8 captures(none) dereferenceable(56), ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef nonnull align 8 ptr @_RNvMsd_NtCs8ZPNfZ0ciAA_10serde_json3mapNtB5_5Entry9or_insert(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(56), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCs8Chj7Szqq0n_4core3fmtReNtB6_5Debug3fmtCs8ZPNfZ0ciAA_10serde_json(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef align 8 ptr @_RINvXsc_NtNtCs8ZPNfZ0ciAA_10serde_json5value2deRNtB8_5ValueNtNtCsdnjrqM8ey3e_10serde_core2de12Deserializer16deserialize_unitNtNtBX_5impls11UnitVisitorEBa_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind nonlazybind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #13

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #14

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.abs.i8(i8, i1 immarg) #15

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.abs.i16(i16, i1 immarg) #15
end_hunk_1
