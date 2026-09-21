Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/serde-json-rs/original/serde_json-91101fda7f3b469c.serde_json.68cc3255a7a81b66-cgu.3?download=true
inline.NumInlined: 160
inline.NumDeleted: 60
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueNtNtCs8ZPNfZ0ciAA_10serde_json5error9ErrorCodeEBF_:bb.a
  %.val = load ptr, ptr %i.e, align 8, !nonnull !5, !noundef !5
  tail call void @_RNvCsicpYtSlSgpD_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef range(i64 1, 0) %.val1, i64 noundef 1) #15
  br label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtCsbqH9stoieM8_5alloc5boxed3BoxeEECs8ZPNfZ0ciAA_10serde_json.exit

bb.d:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val2 = load ptr, ptr %i.f, align 8, !nonnull !5, !noundef !5 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.g = ptrtoint ptr %.val2 to i64               ; 2 uses
  %i.h = and i64 %i.g, 3
  switch i64 %i.h, label %default.unreachable [
    i64 2, label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs8ZPNfZ0ciAA_10serde_json.exit
    i64 3, label %bb.e
    i64 0, label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs8ZPNfZ0ciAA_10serde_json.exit
    i64 1, label %bb.f
  ], !prof !8

default.unreachable:                              ; preds = %bb.d
  unreachable

bb.e:                                             ; preds = %bb.d
  %i.i = icmp ult ptr %.val2, inttoptr (i64 188978561024 to ptr)
  %i.j = and i64 %i.g, 1095216660480
  %i.k = icmp ne i64 %i.j, 1095216660480
  tail call void @llvm.assume(i1 %i.i)
  tail call void @llvm.assume(i1 %i.k)
  br label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs8ZPNfZ0ciAA_10serde_json.exit

bb.f:                                             ; preds = %bb.d
  %i.l = getelementptr i8, ptr %.val2, i64 -1     ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.l) ]
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store ptr %i.l, ptr %i.m, align 8, !alias.scope !33
  store i8 3, ptr %i.a, align 8, !alias.scope !33
  call void @_RNvXsd_NtNtCs8Chj7Szqq0n_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.m)
  br label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs8ZPNfZ0ciAA_10serde_json.exit

_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs8ZPNfZ0ciAA_10serde_json.exit: ; preds = %bb.d, %bb.d, %bb.e, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtCsbqH9stoieM8_5alloc5boxed3BoxeEECs8ZPNfZ0ciAA_10serde_json.exit
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueNtNtCs8ZPNfZ0ciAA_10serde_json5value5ValueEBF_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i8, ptr %0, align 8, !range !34, !noundef !5
  switch i8 %i.a, label %bb.b [
    i8 0, label %bb.c
    i8 1, label %bb.c
    i8 2, label %bb.c
    i8 3, label %bb.d
    i8 4, label %bb.g
  ]

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_RNvXNtNtNtCsbqH9stoieM8_5alloc11collections5btree3mapINtB2_8BTreeMapNtNtB8_6string6StringNtNtCs8ZPNfZ0ciAA_10serde_json5value5ValueENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropB1t_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
  br label %bb.c

bb.c:                                             ; preds = %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtCsbqH9stoieM8_5alloc3vec3VecNtNtCs8ZPNfZ0ciAA_10serde_json5value5ValueEEB1c_.exit, %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueNtNtCsbqH9stoieM8_5alloc6string6StringECs8ZPNfZ0ciAA_10serde_json.exit, %bb.b, %bb.a, %bb.a, %bb.a
  ret void

bb.d:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  invoke void @_RNvXsp_NtCsbqH9stoieM8_5alloc3vecINtB5_3VechENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCs8ZPNfZ0ciAA_10serde_json(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueNtNtCsbqH9stoieM8_5alloc6string6StringECs8ZPNfZ0ciAA_10serde_json.exit unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.d = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsbqH9stoieM8_5alloc7raw_vecINtB5_6RawVechENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCs8ZPNfZ0ciAA_10serde_json(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %common.resume unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.e = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs8Chj7Szqq0n_4core9panicking16panic_in_cleanup() #14
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
  tail call void @_RNvNtCs8Chj7Szqq0n_4core9panicking16panic_in_cleanup() #14
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
  tail call void @_RNvNtCs8Chj7Szqq0n_4core9panicking16panic_in_cleanup() #14
  unreachable

_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtCsbqH9stoieM8_5alloc7raw_vec6RawVechEECs8ZPNfZ0ciAA_10serde_json.exit.i: ; preds = %bb.b
  resume { ptr, i32 } %i.a

_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtCsbqH9stoieM8_5alloc3vec3VechEECs8ZPNfZ0ciAA_10serde_json.exit: ; preds = %bb.a
  tail call void @_RNvXs1_NtCsbqH9stoieM8_5alloc7raw_vecINtB5_6RawVechENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCs8ZPNfZ0ciAA_10serde_json(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtCs8ZPNfZ0ciAA_10serde_json2de10from_traitNtNtB4_4read7StrReadINtNtB4_3map3MapNtNtCsbqH9stoieM8_5alloc6string6StringNtNtB4_5value5ValueEEB4_(ptr dead_on_unwind noalias nofree noundef writable sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  %i.e = alloca [24 x i8], align 8                ; 7 uses
  %i.f = alloca [16 x i8], align 8                ; 7 uses
  %i.g = alloca [32 x i8], align 8                ; 7 uses
  %i.h = alloca [24 x i8], align 8                ; 11 uses
  %i.i = alloca [32 x i8], align 8                ; 5 uses
  %i.j = alloca [32 x i8], align 8                ; 4 uses
  %i.k = alloca [24 x i8], align 8                ; 6 uses
  %.sroa.13.sroa.7.i.i.i = alloca [32 x i8], align 8 ; 4 uses
  %i.l = alloca [24 x i8], align 8                ; 9 uses
  %i.m = alloca [16 x i8], align 8                ; 6 uses
  %i.n = alloca [32 x i8], align 8                ; 7 uses
  %i.o = alloca [40 x i8], align 8                ; 9 uses
  %.sroa.8.i.i = alloca [16 x i8], align 8        ; 6 uses
  %i.p = alloca [24 x i8], align 8                ; 4 uses
  %i.q = alloca [24 x i8], align 8                ; 6 uses
  %i.r = alloca [56 x i8], align 8                ; 21 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 24 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.s, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  store i64 0, ptr %i.r, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  store i64 0, ptr %.sroa.5.0..sroa_idx, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 48 ; 4 uses
  store i8 -128, ptr %i.t, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !99)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !100)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !101)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !102)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !103)
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 40 ; 5 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.r, i64 32 ; 2 uses
  %i.w = load i64, ptr %i.v, align 8, !alias.scope !104, !noalias !105, !noundef !5 ; 2 uses
  %.promoted.i.i.i = load i64, ptr %i.u, align 8, !alias.scope !106, !noalias !107 ; 2 uses
  %i.x = icmp ult i64 %.promoted.i.i.i, %i.w
  br i1 %i.x, label %.lr.ph.i.i.i, label %.loopexit.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a
  %i.y = load ptr, ptr %i.s, align 8, !alias.scope !104, !noalias !105, !nonnull !5, !noundef !5
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.lr.ph.i.i.i
  %i.z = phi i64 [ %.promoted.i.i.i, %.lr.ph.i.i.i ], [ %i.ac, %bb.c ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !108)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !109)
  %i.aa = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.z
  %i.ab = load i8, ptr %i.aa, align 1, !noalias !110, !noundef !5
  switch i8 %i.ab, label %bb.d [
    i8 32, label %bb.c
    i8 10, label %bb.c
    i8 9, label %bb.c
    i8 13, label %bb.c
    i8 123, label %bb.e
  ], !prof !9

bb.c:                                             ; preds = %bb.b, %bb.b, %bb.b, %bb.b
  %i.ac = add i64 %i.z, 1                         ; 3 uses
  store i64 %i.ac, ptr %i.u, align 8, !alias.scope !111, !noalias !107
  %exitcond.not.i.i.i = icmp eq i64 %i.ac, %i.w
  br i1 %exitcond.not.i.i.i, label %.loopexit.i.i, label %bb.b

.loopexit.i.i:                                    ; preds = %bb.c, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !112
  store i64 5, ptr %i.p, align 8, !noalias !112
  %i.ad = invoke fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCs8ZPNfZ0ciAA_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorB7_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.r, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.p)
          to label %.noexc unwind label %bb.ac

.noexc:                                           ; preds = %.loopexit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !112
  br label %.thread

bb.d:                                             ; preds = %bb.b
  %i.ae = invoke fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCs8ZPNfZ0ciAA_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE17peek_invalid_typeB7_(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.r, ptr noundef nonnull %i.a)
          to label %.noexc5 unwind label %bb.ac

bb.e:                                             ; preds = %bb.b
  store i8 127, ptr %i.t, align 8, !alias.scope !113, !noalias !114
  %i.af = add i64 %i.z, 1
  store i64 %i.af, ptr %i.u, align 8, !alias.scope !115, !noalias !114
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.13.sroa.7.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !112
  store ptr %i.r, ptr %i.m, align 8, !noalias !116
  %i.ag = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store i8 1, ptr %i.ag, align 8, !noalias !116
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !116
  store ptr null, ptr %i.l, align 8, !noalias !116
  %.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  store i64 0, ptr %.sroa.5.0..sroa_idx.i.i.i, align 8, !noalias !116
  %i.ah = getelementptr inbounds nuw i8, ptr %i.f, i64 1
  %i.ai = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.sroa.14.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %.sroa.3.0..sroa_idx2.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 2 uses
  %.sroa.3.sroa.2.0..sroa.3.0..sroa_idx2.sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 2 uses
  %.sroa.3.0..sroa_idx2.i.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %.sroa.3.sroa.2.0..sroa.3.0..sroa_idx2.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  br label %bb.f

bb.f:                                             ; preds = %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs8ZPNfZ0ciAA_10serde_json5value5ValueEEB11_.exit.i.i.i, %bb.e
  call void @llvm.experimental.noalias.scope.decl(metadata !117)
  call void @llvm.experimental.noalias.scope.decl(metadata !118)
  call void @llvm.experimental.noalias.scope.decl(metadata !119)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !120
  invoke fastcc void @_RINvNvXs9_NtCs8ZPNfZ0ciAA_10serde_json2deINtB8_9MapAccesspENtNtCsdnjrqM8ey3e_10serde_core2de9MapAccess13next_key_seed12has_next_keyNtNtBa_4read7StrReadEBa_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %i.f, ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.m)
          to label %.noexc.i.i.i unwind label %.loopexit.i19.i.i, !noalias !121

.noexc.i.i.i:                                     ; preds = %bb.f
  %i.aj = load i8, ptr %i.f, align 8, !range !10, !noalias !120, !noundef !5
  %i.ak = trunc nuw i8 %i.aj to i1
  br i1 %i.ak, label %bb.g, label %bb.h

bb.g:                                             ; preds = %.noexc.i.i.i
  %i.al = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.am = load ptr, ptr %i.al, align 8, !noalias !120, !nonnull !5, !align !11, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !120
  br label %.loopexit30.i.i.i

bb.h:                                             ; preds = %.noexc.i.i.i
  %i.an = load i8, ptr %i.ah, align 1, !range !10, !noalias !120, !noundef !5
  %i.ao = trunc nuw i8 %i.an to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !120
  br i1 %i.ao, label %bb.i, label %.loopexit31.i.i.i

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !120
  %i.ap = load ptr, ptr %i.m, align 8, !alias.scope !122, !noalias !123, !nonnull !5, !align !11, !noundef !5 ; 7 uses
  invoke void @_RINvXs6_NtNtCsdnjrqM8ey3e_10serde_core2de5implsNtNtCsbqH9stoieM8_5alloc6string6StringNtB8_11Deserialize11deserializeINtNtCs8ZPNfZ0ciAA_10serde_json2de6MapKeyNtNtB1V_4read7StrReadEEB1V_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.e, ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.ap)
          to label %.noexc6.i.i.i unwind label %.loopexit.i19.i.i, !noalias !121

.noexc6.i.i.i:                                    ; preds = %bb.i
  %i.aq = load i64, ptr %i.e, align 8, !range !12, !noalias !120, !noundef !5 ; 2 uses
  %i.ar = icmp eq i64 %i.aq, -1
  %i.as = load ptr, ptr %i.ai, align 8, !noalias !124 ; 2 uses
  br i1 %i.ar, label %bb.j, label %bb.k

bb.j:                                             ; preds = %.noexc6.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !120
  br label %.loopexit30.i.i.i

bb.k:                                             ; preds = %.noexc6.i.i.i
  %.sroa.14.0.copyload.i.i.i.i.i = load i64, ptr %.sroa.14.0..sroa_idx.i.i.i.i.i, align 8, !noalias !124
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !120
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !125
  store i64 %i.aq, ptr %i.h, align 8, !noalias !125
  store ptr %i.as, ptr %.sroa.3.0..sroa_idx2.i.i.i.i.i, align 8, !noalias !125
  store i64 %.sroa.14.0.copyload.i.i.i.i.i, ptr %.sroa.3.sroa.2.0..sroa.3.0..sroa_idx2.sroa_idx.i.i.i.i.i, align 8, !noalias !125
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !125
  call void @llvm.experimental.noalias.scope.decl(metadata !126)
  call void @llvm.experimental.noalias.scope.decl(metadata !127)
  %i.at = getelementptr inbounds nuw i8, ptr %i.ap, i64 40 ; 3 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.ap, i64 32
  %i.av = load i64, ptr %i.au, align 8, !alias.scope !128, !noalias !129, !noundef !5 ; 2 uses
  %.promoted.i.i.i.i.i.i.i.i = load i64, ptr %i.at, align 8, !alias.scope !130, !noalias !131 ; 2 uses
  %i.aw = icmp ult i64 %.promoted.i.i.i.i.i.i.i.i, %i.av
  br i1 %i.aw, label %.lr.ph.i.i.i.i.i.i.i.i, label %.loopexit.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %bb.k
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ap, i64 24
  %i.ay = load ptr, ptr %i.ax, align 8, !alias.scope !128, !noalias !129, !nonnull !5, !noundef !5
  br label %bb.l

bb.l:                                             ; preds = %bb.m, %.lr.ph.i.i.i.i.i.i.i.i
  %i.az = phi i64 [ %.promoted.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i ], [ %i.bc, %bb.m ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !132)
  call void @llvm.experimental.noalias.scope.decl(metadata !133)
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ay, i64 %i.az
  %i.bb = load i8, ptr %i.ba, align 1, !noalias !134, !noundef !5
  switch i8 %i.bb, label %bb.n [
    i8 32, label %bb.m
    i8 10, label %bb.m
    i8 9, label %bb.m
    i8 13, label %bb.m
    i8 58, label %bb.o
  ], !prof !9

bb.m:                                             ; preds = %bb.l, %bb.l, %bb.l, %bb.l
  %i.bc = add i64 %i.az, 1                        ; 3 uses
  store i64 %i.bc, ptr %i.at, align 8, !alias.scope !135, !noalias !131
  %exitcond.not.i.i.i.i.i.i.i.i = icmp eq i64 %i.bc, %i.av
  br i1 %exitcond.not.i.i.i.i.i.i.i.i, label %.loopexit.i.i.i.i.i.i.i, label %bb.l

.loopexit.i.i.i.i.i.i.i:                          ; preds = %bb.k, %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !136
  store i64 3, ptr %i.c, align 8, !noalias !136
  %i.bd = invoke fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCs8ZPNfZ0ciAA_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorB7_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.ap, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.c)
          to label %.noexc.i.i.i.i.i unwind label %.loopexit.split-lp26.i.i.i, !noalias !137

.noexc.i.i.i.i.i:                                 ; preds = %.loopexit.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !136
  br label %_RINvXs9_NtCs8ZPNfZ0ciAA_10serde_json2deINtB6_9MapAccessNtNtB8_4read7StrReadENtNtCsdnjrqM8ey3e_10serde_core2de9MapAccess15next_value_seedINtNtCs8Chj7Szqq0n_4core6marker11PhantomDataNtNtB8_5value5ValueEEB8_.exit.thread.i.i.i.i.i

bb.n:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !136
  store i64 6, ptr %i.d, align 8, !noalias !136
  %i.be = invoke fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCs8ZPNfZ0ciAA_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorB7_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.ap, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.d)
          to label %.noexc7.i.i.i.i.i unwind label %.loopexit.split-lp26.i.i.i, !noalias !137

.noexc7.i.i.i.i.i:                                ; preds = %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !136
  br label %_RINvXs9_NtCs8ZPNfZ0ciAA_10serde_json2deINtB6_9MapAccessNtNtB8_4read7StrReadENtNtCsdnjrqM8ey3e_10serde_core2de9MapAccess15next_value_seedINtNtCs8Chj7Szqq0n_4core6marker11PhantomDataNtNtB8_5value5ValueEEB8_.exit.thread.i.i.i.i.i

bb.o:                                             ; preds = %bb.l
  %i.bf = add i64 %i.az, 1
  store i64 %i.bf, ptr %i.at, align 8, !alias.scope !138, !noalias !139
  invoke fastcc void @_RINvXs5_NtCs8ZPNfZ0ciAA_10serde_json2deQINtB6_12DeserializerNtNtB8_4read7StrReadENtNtCsdnjrqM8ey3e_10serde_core2de12Deserializer15deserialize_anyNtNvXNtNtB8_5value2deNtB2q_5ValueNtB1j_11Deserialize11deserialize12ValueVisitorEB8_(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(32) %i.g, ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.ap) #16
          to label %_RINvXs9_NtCs8ZPNfZ0ciAA_10serde_json2deINtB6_9MapAccessNtNtB8_4read7StrReadENtNtCsdnjrqM8ey3e_10serde_core2de9MapAccess15next_value_seedINtNtCs8Chj7Szqq0n_4core6marker11PhantomDataNtNtB8_5value5ValueEEB8_.exit.i.i.i.i.i unwind label %.loopexit25.i.i.i, !noalias !137

.loopexit25.i.i.i:                                ; preds = %bb.o
  %lpad.loopexit27.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

.loopexit.split-lp26.i.i.i:                       ; preds = %bb.n, %.loopexit.i.i.i.i.i.i.i
  %lpad.loopexit.split-lp28.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

bb.p:                                             ; preds = %.loopexit.split-lp26.i.i.i, %.loopexit25.i.i.i
  %lpad.phi29.i.i.i = phi { ptr, i32 } [ %lpad.loopexit27.i.i.i, %.loopexit25.i.i.i ], [ %lpad.loopexit.split-lp28.i.i.i, %.loopexit.split-lp26.i.i.i ]
  invoke fastcc void @_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueNtNtCsbqH9stoieM8_5alloc6string6StringECs8ZPNfZ0ciAA_10serde_json(ptr noalias nofree noundef align 8 dereferenceable(24) %i.h) #17
          to label %.body.i.i.i unwind label %bb.s, !noalias !137

_RINvXs9_NtCs8ZPNfZ0ciAA_10serde_json2deINtB6_9MapAccessNtNtB8_4read7StrReadENtNtCsdnjrqM8ey3e_10serde_core2de9MapAccess15next_value_seedINtNtCs8Chj7Szqq0n_4core6marker11PhantomDataNtNtB8_5value5ValueEEB8_.exit.i.i.i.i.i: ; preds = %bb.o
  %.pr.i.i.i.i.i = load i8, ptr %i.g, align 8, !noalias !125
  %i.bg = icmp eq i8 %.pr.i.i.i.i.i, -1
  br i1 %i.bg, label %_RINvXs9_NtCs8ZPNfZ0ciAA_10serde_json2deINtB6_9MapAccessNtNtB8_4read7StrReadENtNtCsdnjrqM8ey3e_10serde_core2de9MapAccess15next_value_seedINtNtCs8Chj7Szqq0n_4core6marker11PhantomDataNtNtB8_5value5ValueEEB8_.exit._crit_edge.i.i.i.i.i, label %bb.t

_RINvXs9_NtCs8ZPNfZ0ciAA_10serde_json2deINtB6_9MapAccessNtNtB8_4read7StrReadENtNtCsdnjrqM8ey3e_10serde_core2de9MapAccess15next_value_seedINtNtCs8Chj7Szqq0n_4core6marker11PhantomDataNtNtB8_5value5ValueEEB8_.exit._crit_edge.i.i.i.i.i: ; preds = %_RINvXs9_NtCs8ZPNfZ0ciAA_10serde_json2deINtB6_9MapAccessNtNtB8_4read7StrReadENtNtCsdnjrqM8ey3e_10serde_core2de9MapAccess15next_value_seedINtNtCs8Chj7Szqq0n_4core6marker11PhantomDataNtNtB8_5value5ValueEEB8_.exit.i.i.i.i.i
  %.phi.trans.insert.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %.pre.i.i.i.i.i = load ptr, ptr %.phi.trans.insert.i.i.i.i.i, align 8, !noalias !125
  br label %_RINvXs9_NtCs8ZPNfZ0ciAA_10serde_json2deINtB6_9MapAccessNtNtB8_4read7StrReadENtNtCsdnjrqM8ey3e_10serde_core2de9MapAccess15next_value_seedINtNtCs8Chj7Szqq0n_4core6marker11PhantomDataNtNtB8_5value5ValueEEB8_.exit.thread.i.i.i.i.i

_RINvXs9_NtCs8ZPNfZ0ciAA_10serde_json2deINtB6_9MapAccessNtNtB8_4read7StrReadENtNtCsdnjrqM8ey3e_10serde_core2de9MapAccess15next_value_seedINtNtCs8Chj7Szqq0n_4core6marker11PhantomDataNtNtB8_5value5ValueEEB8_.exit.thread.i.i.i.i.i: ; preds = %_RINvXs9_NtCs8ZPNfZ0ciAA_10serde_json2deINtB6_9MapAccessNtNtB8_4read7StrReadENtNtCsdnjrqM8ey3e_10serde_core2de9MapAccess15next_value_seedINtNtCs8Chj7Szqq0n_4core6marker11PhantomDataNtNtB8_5value5ValueEEB8_.exit._crit_edge.i.i.i.i.i, %.noexc7.i.i.i.i.i, %.noexc.i.i.i.i.i
  %i.bh = phi ptr [ %.pre.i.i.i.i.i, %_RINvXs9_NtCs8ZPNfZ0ciAA_10serde_json2deINtB6_9MapAccessNtNtB8_4read7StrReadENtNtCsdnjrqM8ey3e_10serde_core2de9MapAccess15next_value_seedINtNtCs8Chj7Szqq0n_4core6marker11PhantomDataNtNtB8_5value5ValueEEB8_.exit._crit_edge.i.i.i.i.i ], [ %i.bd, %.noexc.i.i.i.i.i ], [ %i.be, %.noexc7.i.i.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !125
  invoke void @_RNvXsp_NtCsbqH9stoieM8_5alloc3vecINtB5_3VechENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCs8ZPNfZ0ciAA_10serde_json(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueNtNtCsbqH9stoieM8_5alloc6string6StringECs8ZPNfZ0ciAA_10serde_json.exit.i.i.i.i.i unwind label %bb.q, !noalias !137

bb.q:                                             ; preds = %_RINvXs9_NtCs8ZPNfZ0ciAA_10serde_json2deINtB6_9MapAccessNtNtB8_4read7StrReadENtNtCsdnjrqM8ey3e_10serde_core2de9MapAccess15next_value_seedINtNtCs8Chj7Szqq0n_4core6marker11PhantomDataNtNtB8_5value5ValueEEB8_.exit.thread.i.i.i.i.i
  %i.bi = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsbqH9stoieM8_5alloc7raw_vecINtB5_6RawVechENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCs8ZPNfZ0ciAA_10serde_json(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %.body.i.i.i unwind label %bb.r, !noalias !137

bb.r:                                             ; preds = %bb.q
  %i.bj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs8Chj7Szqq0n_4core9panicking16panic_in_cleanup() #14, !noalias !137
  unreachable

_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueNtNtCsbqH9stoieM8_5alloc6string6StringECs8ZPNfZ0ciAA_10serde_json.exit.i.i.i.i.i: ; preds = %_RINvXs9_NtCs8ZPNfZ0ciAA_10serde_json2deINtB6_9MapAccessNtNtB8_4read7StrReadENtNtCsdnjrqM8ey3e_10serde_core2de9MapAccess15next_value_seedINtNtCs8Chj7Szqq0n_4core6marker11PhantomDataNtNtB8_5value5ValueEEB8_.exit.thread.i.i.i.i.i
  invoke void @_RNvXs1_NtCsbqH9stoieM8_5alloc7raw_vecINtB5_6RawVechENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCs8ZPNfZ0ciAA_10serde_json(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %.noexc7.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !121

.noexc7.i.i.i:                                    ; preds = %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueNtNtCsbqH9stoieM8_5alloc6string6StringECs8ZPNfZ0ciAA_10serde_json.exit.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !125
  br label %.loopexit30.i.i.i

bb.s:                                             ; preds = %bb.p
  %i.bk = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs8Chj7Szqq0n_4core9panicking16panic_in_cleanup() #14, !noalias !137
  unreachable

.loopexit.i19.i.i:                                ; preds = %bb.w, %bb.u, %bb.i, %bb.f
  %lpad.loopexit.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i

.loopexit.split-lp.i.i.i:                         ; preds = %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueNtNtCsbqH9stoieM8_5alloc6string6StringECs8ZPNfZ0ciAA_10serde_json.exit.i.i.i.i.i
  %lpad.loopexit.split-lp.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i

.body.i.i.i:                                      ; preds = %.loopexit.split-lp.i.i.i, %.loopexit.i19.i.i, %bb.q, %bb.p
  %eh.lpad-body.i.i.i = phi { ptr, i32 } [ %lpad.phi29.i.i.i, %bb.p ], [ %i.bi, %bb.q ], [ %lpad.loopexit.i.i.i, %.loopexit.i19.i.i ], [ %lpad.loopexit.split-lp.i.i.i, %.loopexit.split-lp.i.i.i ]
  invoke void @_RNvXNtNtNtCsbqH9stoieM8_5alloc11collections5btree3mapINtB2_8BTreeMapNtNtB8_6string6StringNtNtCs8ZPNfZ0ciAA_10serde_json5value5ValueENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropB1t_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.l)
          to label %.body unwind label %bb.x, !noalias !121

bb.t:                                             ; preds = %_RINvXs9_NtCs8ZPNfZ0ciAA_10serde_json2deINtB6_9MapAccessNtNtB8_4read7StrReadENtNtCsdnjrqM8ey3e_10serde_core2de9MapAccess15next_value_seedINtNtCs8Chj7Szqq0n_4core6marker11PhantomDataNtNtB8_5value5ValueEEB8_.exit.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.13.sroa.7.i.i.i, ptr noundef nonnull align 8 dereferenceable(32) %i.g, i64 32, i1 false), !noalias !116
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !125
  %.sroa.010.0.copyload.i.i.i = load i64, ptr %i.h, align 8, !noalias !125 ; 2 uses
  %.sroa.4.0.copyload.i.i.i = load ptr, ptr %.sroa.3.0..sroa_idx2.i.i.i.i.i, align 8, !noalias !125 ; 2 uses
  %i.bl = load i64, ptr %.sroa.3.sroa.2.0..sroa.3.0..sroa_idx2.sroa_idx.i.i.i.i.i, align 8, !noalias !125
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !125
  switch i64 %.sroa.010.0.copyload.i.i.i, label %bb.u [
    i64 -2, label %.loopexit30.i.i.i
    i64 -1, label %.loopexit31.i.i.i
  ]

.loopexit30.i.i.i:                                ; preds = %bb.t, %.noexc7.i.i.i, %bb.j, %bb.g
  %.sroa.9.014.i.i.i = phi ptr [ %i.am, %bb.g ], [ %i.as, %bb.j ], [ %i.bh, %.noexc7.i.i.i ], [ %.sroa.4.0.copyload.i.i.i, %bb.t ] ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.9.014.i.i.i) ]
  invoke void @_RNvXNtNtNtCsbqH9stoieM8_5alloc11collections5btree3mapINtB2_8BTreeMapNtNtB8_6string6StringNtNtCs8ZPNfZ0ciAA_10serde_json5value5ValueENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropB1t_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.l)
          to label %_RINvXNvXs8_NtCs8ZPNfZ0ciAA_10serde_json3mapINtB9_3MapNtNtCsbqH9stoieM8_5alloc6string6StringNtNtBb_5value5ValueENtNtCsdnjrqM8ey3e_10serde_core2de11Deserialize11deserializeNtB3_7VisitorNtB1N_7Visitor9visit_mapINtNtBb_2de9MapAccessNtNtBb_4read7StrReadEEBb_.exit.i.i unwind label %bb.ac

bb.u:                                             ; preds = %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !116
  store i64 %.sroa.010.0.copyload.i.i.i, ptr %i.k, align 8, !noalias !116
  store ptr %.sroa.4.0.copyload.i.i.i, ptr %.sroa.3.0..sroa_idx2.i.i.i, align 8, !noalias !116
  store i64 %i.bl, ptr %.sroa.3.sroa.2.0..sroa.3.0..sroa_idx2.sroa_idx.i.i.i, align 8, !noalias !116
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !116
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.j, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.13.sroa.7.i.i.i, i64 32, i1 false), !noalias !116
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !116
  invoke void @_RNvMsi_NtNtNtCsbqH9stoieM8_5alloc11collections5btree3mapINtB5_8BTreeMapNtNtBb_6string6StringNtNtCs8ZPNfZ0ciAA_10serde_json5value5ValueE6insertB1w_(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.i, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.l, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.k, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.j)
          to label %bb.v unwind label %.loopexit.i19.i.i, !noalias !121

.loopexit31.i.i.i:                                ; preds = %bb.t, %bb.h
  %.sroa.623.8.copyload.i.i = load ptr, ptr %i.l, align 8, !noalias !140
  %.sroa.8.8..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.8.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.8.8..sroa_idx.i.i, i64 16, i1 false), !noalias !140
  br label %_RINvXNvXs8_NtCs8ZPNfZ0ciAA_10serde_json3mapINtB9_3MapNtNtCsbqH9stoieM8_5alloc6string6StringNtNtBb_5value5ValueENtNtCsdnjrqM8ey3e_10serde_core2de11Deserialize11deserializeNtB3_7VisitorNtB1N_7Visitor9visit_mapINtNtBb_2de9MapAccessNtNtBb_4read7StrReadEEBb_.exit.i.i

bb.v:                                             ; preds = %bb.u
  %i.bm = load i8, ptr %i.i, align 8, !range !6, !alias.scope !141, !noalias !116, !noundef !5
  %i.bn = icmp eq i8 %i.bm, -1
  br i1 %i.bn, label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs8ZPNfZ0ciAA_10serde_json5value5ValueEEB11_.exit.i.i.i, label %bb.w

bb.w:                                             ; preds = %bb.v
  invoke fastcc void @_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueNtNtCs8ZPNfZ0ciAA_10serde_json5value5ValueEBF_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.i)
          to label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs8ZPNfZ0ciAA_10serde_json5value5ValueEEB11_.exit.i.i.i unwind label %.loopexit.i19.i.i, !noalias !121

_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs8ZPNfZ0ciAA_10serde_json5value5ValueEEB11_.exit.i.i.i: ; preds = %bb.w, %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !116
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !116
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !116
  br label %bb.f

bb.x:                                             ; preds = %.body.i.i.i
  %i.bo = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs8Chj7Szqq0n_4core9panicking16panic_in_cleanup() #14, !noalias !121
  unreachable

_RINvXNvXs8_NtCs8ZPNfZ0ciAA_10serde_json3mapINtB9_3MapNtNtCsbqH9stoieM8_5alloc6string6StringNtNtBb_5value5ValueENtNtCsdnjrqM8ey3e_10serde_core2de11Deserialize11deserializeNtB3_7VisitorNtB1N_7Visitor9visit_mapINtNtBb_2de9MapAccessNtNtBb_4read7StrReadEEBb_.exit.i.i: ; preds = %.loopexit30.i.i.i, %.loopexit31.i.i.i
  %.sroa.022.0.i.i = phi i64 [ 0, %.loopexit31.i.i.i ], [ 1, %.loopexit30.i.i.i ]
  %.sroa.623.0.i.i = phi ptr [ %.sroa.623.8.copyload.i.i, %.loopexit31.i.i.i ], [ %.sroa.9.014.i.i.i, %.loopexit30.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !116
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.13.sroa.7.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !112
  %i.bp = load i8, ptr %i.t, align 8, !alias.scope !113, !noalias !114, !noundef !5
  %i.bq = add i8 %i.bp, 1
  store i8 %i.bq, ptr %i.t, align 8, !alias.scope !113, !noalias !114
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !112
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !112
  store i64 %.sroa.022.0.i.i, ptr %i.n, align 8, !noalias !112
  %.sroa.623.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store ptr %.sroa.623.0.i.i, ptr %.sroa.623.0..sroa_idx.i.i, align 8, !noalias !112
  %.sroa.8.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.8.0..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.8.i.i, i64 16, i1 false), !noalias !112
  %i.br = invoke fastcc noundef align 8 ptr @_RNvMs3_NtCs8ZPNfZ0ciAA_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE7end_mapB7_(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.r)
          to label %bb.z unwind label %bb.y, !noalias !114 ; 5 uses

bb.y:                                             ; preds = %_RINvXNvXs8_NtCs8ZPNfZ0ciAA_10serde_json3mapINtB9_3MapNtNtCsbqH9stoieM8_5alloc6string6StringNtNtBb_5value5ValueENtNtCsdnjrqM8ey3e_10serde_core2de11Deserialize11deserializeNtB3_7VisitorNtB1N_7Visitor9visit_mapINtNtBb_2de9MapAccessNtNtBb_4read7StrReadEEBb_.exit.i.i
  %i.bs = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtCs8ZPNfZ0ciAA_10serde_json3map3MapNtNtCsbqH9stoieM8_5alloc6string6StringNtNtB12_5value5ValueENtNtB12_5error5ErrorEEB12_(ptr noalias nofree noundef align 8 dereferenceable(32) %i.n) #17
          to label %.body unwind label %bb.ab, !noalias !114

bb.z:                                             ; preds = %_RINvXNvXs8_NtCs8ZPNfZ0ciAA_10serde_json3mapINtB9_3MapNtNtCsbqH9stoieM8_5alloc6string6StringNtNtBb_5value5ValueENtNtCsdnjrqM8ey3e_10serde_core2de11Deserialize11deserializeNtB3_7VisitorNtB1N_7Visitor9visit_mapINtNtBb_2de9MapAccessNtNtBb_4read7StrReadEEBb_.exit.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.o, ptr noundef nonnull align 8 dereferenceable(32) %i.n, i64 32, i1 false), !noalias !112
  %i.bt = getelementptr inbounds nuw i8, ptr %i.o, i64 32
  store ptr %i.br, ptr %i.bt, align 8, !noalias !112
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !112
  %i.bu = load i64, ptr %i.o, align 8, !range !4, !noalias !112, !noundef !5
  %i.bv = trunc nuw i64 %i.bu to i1
  br i1 %i.bv, label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtCs8ZPNfZ0ciAA_10serde_json3map3MapNtNtCsbqH9stoieM8_5alloc6string6StringNtNtBG_5value5ValueEEBG_.exit.i.i, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %.not.i.i = icmp eq ptr %i.br, null
  %i.bw = getelementptr inbounds nuw i8, ptr %i.o, i64 8 ; 2 uses
  br i1 %.not.i.i, label %bb.ad, label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtCs8ZPNfZ0ciAA_10serde_json3map3MapNtNtCsbqH9stoieM8_5alloc6string6StringNtNtBG_5value5ValueEEBG_.exit.thread.thread.i.i, !prof !142

_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtCs8ZPNfZ0ciAA_10serde_json3map3MapNtNtCsbqH9stoieM8_5alloc6string6StringNtNtBG_5value5ValueEEBG_.exit.i.i: ; preds = %bb.z
  %i.bx = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.by = load ptr, ptr %i.bx, align 8, !noalias !112, !nonnull !5, !align !11, !noundef !5 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8.i.i)
  %.not37.i.i = icmp eq ptr %i.br, null
  br i1 %.not37.i.i, label %.noexc5.sink.split, label %.split.i.i

_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtCs8ZPNfZ0ciAA_10serde_json3map3MapNtNtCsbqH9stoieM8_5alloc6string6StringNtNtBG_5value5ValueEEBG_.exit.thread.thread.i.i: ; preds = %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8.i.i)
  invoke void @_RNvXNtNtNtCsbqH9stoieM8_5alloc11collections5btree3mapINtB2_8BTreeMapNtNtB8_6string6StringNtNtCs8ZPNfZ0ciAA_10serde_json5value5ValueENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropB1t_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bw)
          to label %.noexc5.sink.split unwind label %bb.ac

bb.ab:                                            ; preds = %bb.y
  %i.bz = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs8Chj7Szqq0n_4core9panicking16panic_in_cleanup() #14, !noalias !114
  unreachable

.split.i.i:                                       ; preds = %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtCs8ZPNfZ0ciAA_10serde_json3map3MapNtNtCsbqH9stoieM8_5alloc6string6StringNtNtBG_5value5ValueEEBG_.exit.i.i
  invoke fastcc void @_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueNtNtCs8ZPNfZ0ciAA_10serde_json5error5ErrorEBF_(ptr nonnull %i.br)
          to label %.noexc5.sink.split unwind label %bb.ac

.noexc5.sink.split:                               ; preds = %.split.i.i, %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtCs8ZPNfZ0ciAA_10serde_json3map3MapNtNtCsbqH9stoieM8_5alloc6string6StringNtNtBG_5value5ValueEEBG_.exit.thread.thread.i.i, %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtCs8ZPNfZ0ciAA_10serde_json3map3MapNtNtCsbqH9stoieM8_5alloc6string6StringNtNtBG_5value5ValueEEBG_.exit.i.i
  %.sroa.7.1.i.i.ph = phi ptr [ %i.by, %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtCs8ZPNfZ0ciAA_10serde_json3map3MapNtNtCsbqH9stoieM8_5alloc6string6StringNtNtBG_5value5ValueEEBG_.exit.i.i ], [ %i.br, %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtCs8ZPNfZ0ciAA_10serde_json3map3MapNtNtCsbqH9stoieM8_5alloc6string6StringNtNtBG_5value5ValueEEBG_.exit.thread.thread.i.i ], [ %i.by, %.split.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !112
  br label %.noexc5

.noexc5:                                          ; preds = %.noexc5.sink.split, %bb.d
  %.sroa.7.1.i.i = phi ptr [ %i.ae, %bb.d ], [ %.sroa.7.1.i.i.ph, %.noexc5.sink.split ]
  %i.ca = invoke noundef nonnull align 8 ptr @_RINvMs0_NtCs8ZPNfZ0ciAA_10serde_json5errorNtB6_5Error12fix_positionNCNvMs3_NtB8_2deINtB1b_12DeserializerNtNtB8_4read7StrReadE12fix_position0EB8_(ptr noalias noundef nonnull align 8 %.sroa.7.1.i.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.r)
          to label %.thread unwind label %bb.ac

.body:                                            ; preds = %bb.ag, %bb.ac, %bb.y, %.body.i.i.i
  %.pn = phi { ptr, i32 } [ %i.bs, %bb.y ], [ %i.cb, %bb.ac ], [ %eh.lpad-body.i.i.i, %.body.i.i.i ], [ %i.cm, %bb.ag ]
  invoke fastcc void @_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtCs8ZPNfZ0ciAA_10serde_json2de12DeserializerNtNtBG_4read7StrReadEEBG_(ptr noalias nofree noundef align 8 dereferenceable(56) %i.r) #17
          to label %common.resume unwind label %bb.am

bb.ac:                                            ; preds = %bb.ah, %.noexc5, %.split.i.i, %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtCs8ZPNfZ0ciAA_10serde_json3map3MapNtNtCsbqH9stoieM8_5alloc6string6StringNtNtBG_5value5ValueEEBG_.exit.thread.thread.i.i, %.loopexit30.i.i.i, %bb.d, %.loopexit.i.i
  %i.cb = landingpad { ptr, i32 }
          cleanup
  br label %.body

.thread:                                          ; preds = %.noexc, %.noexc5
  %.sink60.i.ph = phi ptr [ %i.ca, %.noexc5 ], [ %i.ad, %.noexc ]
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sink60.i.ph, ptr %i.cc, align 8, !alias.scope !114, !noalias !113
  store i64 1, ptr %0, align 8, !alias.scope !114, !noalias !113
  br label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtCs8ZPNfZ0ciAA_10serde_json3map3MapNtNtCsbqH9stoieM8_5alloc6string6StringNtNtBG_5value5ValueEEBG_.exit14

bb.ad:                                            ; preds = %bb.aa
  %.sroa.08.0.copyload.i.i = load ptr, ptr %i.bw, align 8, !noalias !112
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %.sroa.411.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.411.0..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.0..sroa_idx.i.i, i64 16, i1 false), !noalias !113
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !112
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  store ptr %.sroa.08.0.copyload.i.i, ptr %i.cd, align 8, !alias.scope !114, !noalias !113
  store i64 0, ptr %0, align 8, !alias.scope !114, !noalias !113
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.q, ptr noundef nonnull align 8 dereferenceable(24) %i.cd, i64 24, i1 false)
  call void @llvm.experimental.noalias.scope.decl(metadata !143)
  call void @llvm.experimental.noalias.scope.decl(metadata !144)
  %i.ce = load i64, ptr %i.v, align 8, !alias.scope !145, !noalias !146, !noundef !5 ; 2 uses
  %.promoted.i.i = load i64, ptr %i.u, align 8, !alias.scope !147, !noalias !148 ; 2 uses
  %i.cf = icmp ult i64 %.promoted.i.i, %i.ce
  br i1 %i.cf, label %.lr.ph.i.i, label %.loopexit

.lr.ph.i.i:                                       ; preds = %bb.ad
  %i.cg = load ptr, ptr %i.s, align 8, !alias.scope !145, !noalias !146, !nonnull !5, !noundef !5
  br label %bb.ae

bb.ae:                                            ; preds = %bb.af, %.lr.ph.i.i
  %i.ch = phi i64 [ %.promoted.i.i, %.lr.ph.i.i ], [ %i.ck, %bb.af ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !149)
  call void @llvm.experimental.noalias.scope.decl(metadata !150)
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cg, i64 %i.ch
  %i.cj = load i8, ptr %i.ci, align 1, !noalias !151, !noundef !5
  switch i8 %i.cj, label %_RNvMs3_NtCs8ZPNfZ0ciAA_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE16parse_whitespaceB7_.exit.i [
    i8 32, label %bb.af
    i8 10, label %bb.af
    i8 9, label %bb.af
    i8 13, label %bb.af
  ]

bb.af:                                            ; preds = %bb.ae, %bb.ae, %bb.ae, %bb.ae
  %i.ck = add i64 %i.ch, 1                        ; 3 uses
  store i64 %i.ck, ptr %i.u, align 8, !alias.scope !152, !noalias !148
  %exitcond.not.i.i = icmp eq i64 %i.ck, %i.ce
  br i1 %exitcond.not.i.i, label %.loopexit, label %bb.ae

_RNvMs3_NtCs8ZPNfZ0ciAA_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE16parse_whitespaceB7_.exit.i: ; preds = %bb.ae
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !143
  store i64 22, ptr %i.b, align 8, !noalias !143
  %i.cl = invoke fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCs8ZPNfZ0ciAA_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorB7_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.r, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.b)
          to label %bb.ah unwind label %bb.ag

bb.ag:                                            ; preds = %_RNvMs3_NtCs8ZPNfZ0ciAA_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE16parse_whitespaceB7_.exit.i
  %i.cm = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXNtNtNtCsbqH9stoieM8_5alloc11collections5btree3mapINtB2_8BTreeMapNtNtB8_6string6StringNtNtCs8ZPNfZ0ciAA_10serde_json5value5ValueENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropB1t_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.q)
          to label %.body unwind label %bb.am

bb.ah:                                            ; preds = %_RNvMs3_NtCs8ZPNfZ0ciAA_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE16parse_whitespaceB7_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !143
  store ptr %i.cl, ptr %i.cd, align 8
  store i64 1, ptr %0, align 8
  invoke void @_RNvXNtNtNtCsbqH9stoieM8_5alloc11collections5btree3mapINtB2_8BTreeMapNtNtB8_6string6StringNtNtCs8ZPNfZ0ciAA_10serde_json5value5ValueENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropB1t_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.q)
          to label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtCs8ZPNfZ0ciAA_10serde_json3map3MapNtNtCsbqH9stoieM8_5alloc6string6StringNtNtBG_5value5ValueEEBG_.exit14 unwind label %bb.ac

.loopexit:                                        ; preds = %bb.af, %bb.ad
  store i64 0, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  invoke void @_RNvXsp_NtCsbqH9stoieM8_5alloc3vecINtB5_3VechENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCs8ZPNfZ0ciAA_10serde_json(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.r)
          to label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtCs8ZPNfZ0ciAA_10serde_json2de12DeserializerNtNtBG_4read7StrReadEEBG_.exit16 unwind label %bb.ai

bb.ai:                                            ; preds = %.loopexit
  %i.cn = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsbqH9stoieM8_5alloc7raw_vecINtB5_6RawVechENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCs8ZPNfZ0ciAA_10serde_json(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.r)
          to label %common.resume unwind label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.co = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs8Chj7Szqq0n_4core9panicking16panic_in_cleanup() #14
  unreachable

common.resume:                                    ; preds = %.body, %bb.ak, %bb.ai
  %common.resume.op = phi { ptr, i32 } [ %i.cp, %bb.ak ], [ %i.cn, %bb.ai ], [ %.pn, %.body ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtCs8ZPNfZ0ciAA_10serde_json2de12DeserializerNtNtBG_4read7StrReadEEBG_.exit16: ; preds = %.loopexit, %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtCs8ZPNfZ0ciAA_10serde_json3map3MapNtNtCsbqH9stoieM8_5alloc6string6StringNtNtBG_5value5ValueEEBG_.exit14
  call void @_RNvXs1_NtCsbqH9stoieM8_5alloc7raw_vecINtB5_6RawVechENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCs8ZPNfZ0ciAA_10serde_json(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.r)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  ret void

_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtCs8ZPNfZ0ciAA_10serde_json3map3MapNtNtCsbqH9stoieM8_5alloc6string6StringNtNtBG_5value5ValueEEBG_.exit14: ; preds = %bb.ah, %.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  invoke void @_RNvXsp_NtCsbqH9stoieM8_5alloc3vecINtB5_3VechENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCs8ZPNfZ0ciAA_10serde_json(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.r)
          to label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtCs8ZPNfZ0ciAA_10serde_json2de12DeserializerNtNtBG_4read7StrReadEEBG_.exit16 unwind label %bb.ak

bb.ak:                                            ; preds = %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtCs8ZPNfZ0ciAA_10serde_json3map3MapNtNtCsbqH9stoieM8_5alloc6string6StringNtNtBG_5value5ValueEEBG_.exit14
  %i.cp = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsbqH9stoieM8_5alloc7raw_vecINtB5_6RawVechENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCs8ZPNfZ0ciAA_10serde_json(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.r)
          to label %common.resume unwind label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.cq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs8Chj7Szqq0n_4core9panicking16panic_in_cleanup() #14
  unreachable

bb.am:                                            ; preds = %bb.ag, %.body
  %i.cr = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs8Chj7Szqq0n_4core9panicking16panic_in_cleanup() #14
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtCs8ZPNfZ0ciAA_10serde_json2de10from_traitNtNtB4_4read7StrReadNtNtB4_5value5ValueEB4_(ptr dead_on_unwind noalias nofree noundef writable sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [32 x i8], align 8                ; 6 uses
  %i.c = alloca [56 x i8], align 8                ; 17 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 24 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  store i64 0, ptr %i.c, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 0, ptr %.sroa.5.0..sroa_idx, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  store i8 -128, ptr %i.e, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  invoke fastcc void @_RINvXs5_NtCs8ZPNfZ0ciAA_10serde_json2deQINtB6_12DeserializerNtNtB8_4read7StrReadENtNtCsdnjrqM8ey3e_10serde_core2de12Deserializer15deserialize_anyNtNvXNtNtB8_5value2deNtB2q_5ValueNtB1j_11Deserialize11deserialize12ValueVisitorEB8_(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.c) #16
          to label %_RINvXNtNtCs8ZPNfZ0ciAA_10serde_json5value2deNtB5_5ValueNtNtCsdnjrqM8ey3e_10serde_core2de11Deserialize11deserializeQINtNtB7_2de12DeserializerNtNtB7_4read7StrReadEEB7_.exit unwind label %bb.c, !inline_history !153

bb.b:                                             ; preds = %bb.g, %bb.c
  %.pn = phi { ptr, i32 } [ %i.f, %bb.c ], [ %i.s, %bb.g ]
  invoke fastcc void @_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtCs8ZPNfZ0ciAA_10serde_json2de12DeserializerNtNtBG_4read7StrReadEEBG_(ptr noalias nofree noundef align 8 dereferenceable(56) %i.c) #17
          to label %common.resume unwind label %bb.n

bb.c:                                             ; preds = %bb.a, %bb.h
  %i.f = landingpad { ptr, i32 }
          cleanup
  br label %bb.b

_RINvXNtNtCs8ZPNfZ0ciAA_10serde_json5value2deNtB5_5ValueNtNtCsdnjrqM8ey3e_10serde_core2de11Deserialize11deserializeQINtNtB7_2de12DeserializerNtNtB7_4read7StrReadEEB7_.exit: ; preds = %bb.a
  %i.g = load i8, ptr %0, align 8, !range !6, !noundef !5
  %i.h = icmp eq i8 %i.g, -1
  br i1 %i.h, label %bb.k, label %bb.d

bb.d:                                             ; preds = %_RINvXNtNtCs8ZPNfZ0ciAA_10serde_json5value2deNtB5_5ValueNtNtCsdnjrqM8ey3e_10serde_core2de11Deserialize11deserializeQINtNtB7_2de12DeserializerNtNtB7_4read7StrReadEEB7_.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %0, i64 32, i1 false)
  call void @llvm.experimental.noalias.scope.decl(metadata !167)
  call void @llvm.experimental.noalias.scope.decl(metadata !168)
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 40 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.k = load i64, ptr %i.j, align 8, !alias.scope !169, !noalias !170, !noundef !5 ; 2 uses
  %.promoted.i.i = load i64, ptr %i.i, align 8, !alias.scope !171, !noalias !172 ; 2 uses
  %i.l = icmp ult i64 %.promoted.i.i, %i.k
  br i1 %i.l, label %.lr.ph.i.i, label %.loopexit

.lr.ph.i.i:                                       ; preds = %bb.d
  %i.m = load ptr, ptr %i.d, align 8, !alias.scope !169, !noalias !170, !nonnull !5, !noundef !5
  br label %bb.e

bb.e:                                             ; preds = %bb.f, %.lr.ph.i.i
  %i.n = phi i64 [ %.promoted.i.i, %.lr.ph.i.i ], [ %i.q, %bb.f ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !173)
  call void @llvm.experimental.noalias.scope.decl(metadata !174)
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.n
  %i.p = load i8, ptr %i.o, align 1, !noalias !175, !noundef !5
  switch i8 %i.p, label %_RNvMs3_NtCs8ZPNfZ0ciAA_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE16parse_whitespaceB7_.exit.i [
    i8 32, label %bb.f
    i8 10, label %bb.f
    i8 9, label %bb.f
    i8 13, label %bb.f
  ]

bb.f:                                             ; preds = %bb.e, %bb.e, %bb.e, %bb.e
  %i.q = add i64 %i.n, 1                          ; 3 uses
  store i64 %i.q, ptr %i.i, align 8, !alias.scope !176, !noalias !172
  %exitcond.not.i.i = icmp eq i64 %i.q, %i.k
  br i1 %exitcond.not.i.i, label %.loopexit, label %bb.e

_RNvMs3_NtCs8ZPNfZ0ciAA_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE16parse_whitespaceB7_.exit.i: ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !167
  store i64 22, ptr %i.a, align 8, !noalias !167
  %i.r = invoke fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCs8ZPNfZ0ciAA_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorB7_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.c, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.a)
          to label %bb.h unwind label %bb.g

bb.g:                                             ; preds = %_RNvMs3_NtCs8ZPNfZ0ciAA_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE16parse_whitespaceB7_.exit.i
  %i.s = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueNtNtCs8ZPNfZ0ciAA_10serde_json5value5ValueEBF_(ptr noalias nofree noundef align 8 dereferenceable(32) %i.b) #17
          to label %bb.b unwind label %bb.n

bb.h:                                             ; preds = %_RNvMs3_NtCs8ZPNfZ0ciAA_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE16parse_whitespaceB7_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !167
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.r, ptr %i.t, align 8
  store i8 -1, ptr %0, align 8
  invoke fastcc void @_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueNtNtCs8ZPNfZ0ciAA_10serde_json5value5ValueEBF_(ptr noalias nofree noundef align 8 dereferenceable(32) %i.b)
          to label %bb.k unwind label %bb.c

.loopexit:                                        ; preds = %bb.f, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  invoke void @_RNvXsp_NtCsbqH9stoieM8_5alloc3vecINtB5_3VechENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCs8ZPNfZ0ciAA_10serde_json(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.c)
          to label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtCs8ZPNfZ0ciAA_10serde_json2de12DeserializerNtNtBG_4read7StrReadEEBG_.exit6 unwind label %bb.i

bb.i:                                             ; preds = %.loopexit
  %i.u = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsbqH9stoieM8_5alloc7raw_vecINtB5_6RawVechENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCs8ZPNfZ0ciAA_10serde_json(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.c)
          to label %common.resume unwind label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.v = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs8Chj7Szqq0n_4core9panicking16panic_in_cleanup() #14
  unreachable

common.resume:                                    ; preds = %bb.b, %bb.l, %bb.i
  %common.resume.op = phi { ptr, i32 } [ %i.w, %bb.l ], [ %i.u, %bb.i ], [ %.pn, %bb.b ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtCs8ZPNfZ0ciAA_10serde_json2de12DeserializerNtNtBG_4read7StrReadEEBG_.exit6: ; preds = %.loopexit, %bb.k
  call void @_RNvXs1_NtCsbqH9stoieM8_5alloc7raw_vecINtB5_6RawVechENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCs8ZPNfZ0ciAA_10serde_json(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void

bb.k:                                             ; preds = %_RINvXNtNtCs8ZPNfZ0ciAA_10serde_json5value2deNtB5_5ValueNtNtCsdnjrqM8ey3e_10serde_core2de11Deserialize11deserializeQINtNtB7_2de12DeserializerNtNtB7_4read7StrReadEEB7_.exit, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  invoke void @_RNvXsp_NtCsbqH9stoieM8_5alloc3vecINtB5_3VechENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCs8ZPNfZ0ciAA_10serde_json(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.c)
          to label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtCs8ZPNfZ0ciAA_10serde_json2de12DeserializerNtNtBG_4read7StrReadEEBG_.exit6 unwind label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.w = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsbqH9stoieM8_5alloc7raw_vecINtB5_6RawVechENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCs8ZPNfZ0ciAA_10serde_json(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.c)
          to label %common.resume unwind label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.x = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs8Chj7Szqq0n_4core9panicking16panic_in_cleanup() #14
  unreachable

bb.n:                                             ; preds = %bb.g, %bb.b
  %i.y = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs8Chj7Szqq0n_4core9panicking16panic_in_cleanup() #14
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNvXs9_NtCs8ZPNfZ0ciAA_10serde_json2deINtB8_9MapAccesspENtNtCsdnjrqM8ey3e_10serde_core2de9MapAccess13next_key_seed12has_next_keyNtNtBa_4read7StrReadEBa_(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(16) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  %i.e = alloca [24 x i8], align 8                ; 4 uses
  %i.f = alloca [24 x i8], align 8                ; 4 uses
  %i.g = load ptr, ptr %1, align 8, !nonnull !5, !align !11, !noundef !5 ; 9 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !201)
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 40 ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %i.j = load i64, ptr %i.i, align 8, !alias.scope !202, !noalias !203, !noundef !5 ; 4 uses
  %.promoted.i = load i64, ptr %i.h, align 8, !alias.scope !201, !noalias !204 ; 2 uses
  %i.k = icmp ult i64 %.promoted.i, %i.j
  br i1 %i.k, label %.lr.ph.i, label %.loopexit22

.lr.ph.i:                                         ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %i.m = load ptr, ptr %i.l, align 8, !alias.scope !202, !noalias !203, !nonnull !5, !noundef !5 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.lr.ph.i
  %i.n = phi i64 [ %.promoted.i, %.lr.ph.i ], [ %i.q, %bb.c ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !205)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !206)
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.n
  %i.p = load i8, ptr %i.o, align 1, !noalias !207, !noundef !5 ; 3 uses
  switch i8 %i.p, label %bb.e [
    i8 32, label %bb.c
    i8 10, label %bb.c
    i8 9, label %bb.c
    i8 13, label %bb.c
    i8 125, label %bb.d
  ]

bb.c:                                             ; preds = %bb.b, %bb.b, %bb.b, %bb.b
  %i.q = add i64 %i.n, 1                          ; 3 uses
  store i64 %i.q, ptr %i.h, align 8, !alias.scope !208, !noalias !204
  %exitcond.not.i = icmp eq i64 %i.q, %i.j
  br i1 %exitcond.not.i, label %.loopexit22, label %bb.b

.loopexit22:                                      ; preds = %bb.c, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store i64 3, ptr %i.f, align 8
  %i.r = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCs8ZPNfZ0ciAA_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorB7_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.g, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.r, ptr %i.s, align 8
  br label %bb.p

bb.d:                                             ; preds = %bb.b
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 0, ptr %i.t, align 1
  br label %bb.p

bb.e:                                             ; preds = %bb.b
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.v = load i8, ptr %i.u, align 8, !range !10, !noundef !5
  %i.w = trunc nuw i8 %i.v to i1
  br i1 %i.w, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.x = icmp eq i8 %i.p, 44
  br i1 %i.x, label %bb.h, label %bb.j, !prof !13

bb.g:                                             ; preds = %bb.e
  store i8 0, ptr %i.u, align 8
  %i.y = icmp eq i8 %i.p, 34
  br i1 %i.y, label %bb.n, label %bb.o, !prof !13

bb.h:                                             ; preds = %bb.f
  %i.z = add i64 %i.n, 1                          ; 3 uses
  store i64 %i.z, ptr %i.h, align 8, !alias.scope !209
  tail call void @llvm.experimental.noalias.scope.decl(metadata !210)
  %i.aa = icmp ult i64 %i.z, %i.j
  br i1 %i.aa, label %.lr.ph.i7, label %.loopexit

.lr.ph.i7:                                        ; preds = %bb.h, %bb.i
  %i.ab = phi i64 [ %i.ae, %bb.i ], [ %i.z, %bb.h ] ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.ab
  %i.ad = load i8, ptr %i.ac, align 1, !noalias !211, !noundef !5
  switch i8 %i.ad, label %bb.k [
    i8 32, label %bb.i
    i8 10, label %bb.i
    i8 9, label %bb.i
    i8 13, label %bb.i
    i8 34, label %bb.l
    i8 125, label %bb.m
  ], !prof !14

bb.i:                                             ; preds = %.lr.ph.i7, %.lr.ph.i7, %.lr.ph.i7, %.lr.ph.i7
  %i.ae = add i64 %i.ab, 1                        ; 3 uses
  store i64 %i.ae, ptr %i.h, align 8, !alias.scope !212, !noalias !213
  %exitcond.not.i8 = icmp eq i64 %i.ae, %i.j
  br i1 %exitcond.not.i8, label %.loopexit, label %.lr.ph.i7

bb.j:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 8, ptr %i.a, align 8
  %i.af = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCs8ZPNfZ0ciAA_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorB7_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.g, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.af, ptr %i.ag, align 8
  br label %bb.p

.loopexit:                                        ; preds = %bb.i, %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 5, ptr %i.b, align 8
  %i.ah = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCs8ZPNfZ0ciAA_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorB7_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.g, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ah, ptr %i.ai, align 8
  br label %bb.p

bb.k:                                             ; preds = %.lr.ph.i7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i64 17, ptr %i.c, align 8
  %i.aj = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCs8ZPNfZ0ciAA_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorB7_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.g, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.aj, ptr %i.ak, align 8
  br label %bb.p

bb.l:                                             ; preds = %.lr.ph.i7
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 1, ptr %i.al, align 1
  br label %bb.p

bb.m:                                             ; preds = %.lr.ph.i7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i64 21, ptr %i.d, align 8
  %i.am = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCs8ZPNfZ0ciAA_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorB7_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.g, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.am, ptr %i.an, align 8
  br label %bb.p

bb.n:                                             ; preds = %bb.g
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 1, ptr %i.ao, align 1
  br label %bb.p

bb.o:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store i64 17, ptr %i.e, align 8
  %i.ap = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCs8ZPNfZ0ciAA_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorB7_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.g, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ap, ptr %i.aq, align 8
  br label %bb.p

bb.p:                                             ; preds = %.loopexit, %bb.k, %bb.l, %bb.m, %bb.n, %bb.o, %bb.j, %.loopexit22, %bb.d
  %.sink = phi i8 [ 1, %.loopexit ], [ 1, %bb.k ], [ 0, %bb.l ], [ 1, %bb.m ], [ 0, %bb.n ], [ 1, %bb.o ], [ 1, %bb.j ], [ 1, %.loopexit22 ], [ 0, %bb.d ]
  store i8 %.sink, ptr %0, align 8
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RINvXs5_NtCs8ZPNfZ0ciAA_10serde_json2deQINtB6_12DeserializerNtNtB8_4read7StrReadENtNtCsdnjrqM8ey3e_10serde_core2de12Deserializer15deserialize_anyNtNvXNtNtB8_5value2deNtB2q_5ValueNtB1j_11Deserialize11deserialize12ValueVisitorEB8_(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  %i.e = alloca [24 x i8], align 8                ; 4 uses
  %i.f = alloca [24 x i8], align 8                ; 4 uses
  %i.g = alloca [32 x i8], align 8                ; 8 uses
  %i.h = alloca [32 x i8], align 8                ; 6 uses
  %i.i = alloca [24 x i8], align 8                ; 4 uses
  %i.j = alloca [24 x i8], align 8                ; 4 uses
  %i.k = alloca [24 x i8], align 8                ; 4 uses
  %i.l = alloca [24 x i8], align 8                ; 4 uses
  %i.m = alloca [32 x i8], align 8                ; 8 uses
  %i.n = alloca [24 x i8], align 8                ; 13 uses
  %i.o = alloca [32 x i8], align 8                ; 6 uses
  %i.p = alloca [24 x i8], align 8                ; 4 uses
  %i.q = alloca [24 x i8], align 8                ; 4 uses
  %i.r = alloca [24 x i8], align 8                ; 4 uses
  %i.s = alloca [24 x i8], align 8                ; 4 uses
  %i.t = alloca [24 x i8], align 8                ; 4 uses
  %i.u = alloca [24 x i8], align 8                ; 4 uses
  %i.v = alloca [24 x i8], align 8                ; 4 uses
  %i.w = alloca [32 x i8], align 8                ; 4 uses
  %i.x = alloca [40 x i8], align 8                ; 7 uses
  %i.y = alloca [32 x i8], align 8                ; 12 uses
  %i.z = alloca [24 x i8], align 8                ; 4 uses
  %i.aa = alloca [32 x i8], align 8               ; 9 uses
  %i.ab = alloca [40 x i8], align 8               ; 14 uses
  %.sroa.8 = alloca [16 x i8], align 8            ; 7 uses
  %i.ac = alloca [24 x i8], align 8               ; 4 uses
  %i.ad = alloca [24 x i8], align 8               ; 7 uses
  %i.ae = alloca [16 x i8], align 8               ; 6 uses
  %i.af = alloca [16 x i8], align 8               ; 6 uses
  %.sroa.25 = alloca [6 x i8], align 2            ; 6 uses
  %i.ag = alloca [24 x i8], align 8               ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !377)
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 28 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 3 uses
  %i.aj = load i64, ptr %i.ai, align 8, !alias.scope !378, !noalias !379, !noundef !5 ; 10 uses
  %.promoted.i = load i64, ptr %i.ah, align 8, !alias.scope !377, !noalias !380 ; 2 uses
  %i.ak = icmp ult i64 %.promoted.i, %i.aj
  br i1 %i.ak, label %.lr.ph.i, label %.loopexit184

.lr.ph.i:                                         ; preds = %bb.a
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 4 uses
  %i.am = load ptr, ptr %i.al, align 8, !alias.scope !378, !noalias !379, !nonnull !5, !noundef !5 ; 11 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.lr.ph.i
  %i.an = phi i64 [ %.promoted.i, %.lr.ph.i ], [ %i.aq, %bb.c ] ; 19 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !381)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !382)
  %i.ao = getelementptr inbounds nuw i8, ptr %i.am, i64 %i.an
  %i.ap = load i8, ptr %i.ao, align 1, !noalias !383, !noundef !5 ; 3 uses
  switch i8 %i.ap, label %_RNvMs3_NtCs8ZPNfZ0ciAA_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE16parse_whitespaceB7_.exit [
    i8 32, label %bb.c
    i8 10, label %bb.c
    i8 9, label %bb.c
    i8 13, label %bb.c
  ]

bb.c:                                             ; preds = %bb.b, %bb.b, %bb.b, %bb.b
  %i.aq = add i64 %i.an, 1                        ; 3 uses
  store i64 %i.aq, ptr %i.ah, align 8, !alias.scope !384, !noalias !380
  %exitcond.not.i = icmp eq i64 %i.aq, %i.aj
  br i1 %exitcond.not.i, label %.loopexit184, label %bb.b

_RNvMs3_NtCs8ZPNfZ0ciAA_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE16parse_whitespaceB7_.exit: ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.25)
  switch i8 %i.ap, label %bb.d [
    i8 110, label %bb.e
    i8 116, label %bb.l
    i8 102, label %bb.s
    i8 45, label %bb.ab
    i8 34, label %bb.ac
    i8 91, label %bb.ad
    i8 123, label %bb.ae
  ]

.loopexit184:                                     ; preds = %bb.c, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag)
  store i64 5, ptr %i.ag, align 8
  %i.ar = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCs8ZPNfZ0ciAA_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorB7_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.ag)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag)
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ar, ptr %i.as, align 8
  store i8 -1, ptr %0, align 8
  br label %bb.cv

bb.d:                                             ; preds = %_RNvMs3_NtCs8ZPNfZ0ciAA_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE16parse_whitespaceB7_.exit
  %i.at = add i8 %i.ap, -48
  %or.cond8 = icmp ult i8 %i.at, 10
  br i1 %or.cond8, label %bb.cm, label %bb.cl, !prof !15

bb.e:                                             ; preds = %_RNvMs3_NtCs8ZPNfZ0ciAA_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE16parse_whitespaceB7_.exit
  %i.au = add i64 %i.an, 1                        ; 4 uses
  store i64 %i.au, ptr %i.ah, align 8, !alias.scope !385
  tail call void @llvm.experimental.noalias.scope.decl(metadata !386)
  %umax.i = tail call i64 @llvm.umax.i64(i64 %i.au, i64 %i.aj) ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !387)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !388)
  %exitcond.not.i40.not = icmp ult i64 %i.au, %i.aj
  br i1 %exitcond.not.i40.not, label %bb.f, label %_RNvXs8_NtCs8ZPNfZ0ciAA_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i

bb.f:                                             ; preds = %bb.e
  %i.av = getelementptr inbounds nuw i8, ptr %i.am, i64 %i.au
  %i.aw = load i8, ptr %i.av, align 1, !noalias !389, !noundef !5
  %i.ax = add i64 %i.an, 2                        ; 3 uses
  store i64 %i.ax, ptr %i.ah, align 8, !alias.scope !390, !noalias !391
  %.not.i = icmp eq i8 %i.aw, 117
  br i1 %.not.i, label %bb.g, label %bb.k, !prof !16

bb.g:                                             ; preds = %bb.f
  tail call void @llvm.experimental.noalias.scope.decl(metadata !392)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !393)
  %exitcond.not.i40.1 = icmp eq i64 %i.ax, %umax.i
  br i1 %exitcond.not.i40.1, label %_RNvXs8_NtCs8ZPNfZ0ciAA_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ay = getelementptr inbounds nuw i8, ptr %i.am, i64 %i.ax
  %i.az = load i8, ptr %i.ay, align 1, !noalias !394, !noundef !5
  %i.ba = add i64 %i.an, 3                        ; 3 uses
  store i64 %i.ba, ptr %i.ah, align 8, !alias.scope !395, !noalias !391
  %.not.i.1 = icmp eq i8 %i.az, 108
  br i1 %.not.i.1, label %bb.i, label %bb.k, !prof !16

bb.i:                                             ; preds = %bb.h
  tail call void @llvm.experimental.noalias.scope.decl(metadata !396)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !397)
  %exitcond.not.i40.2 = icmp eq i64 %i.ba, %umax.i
  br i1 %exitcond.not.i40.2, label %_RNvXs8_NtCs8ZPNfZ0ciAA_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bb = getelementptr inbounds nuw i8, ptr %i.am, i64 %i.ba
  %i.bc = load i8, ptr %i.bb, align 1, !noalias !398, !noundef !5
  %i.bd = add i64 %i.an, 4
  store i64 %i.bd, ptr %i.ah, align 8, !alias.scope !399, !noalias !391
  %.not.i.2 = icmp eq i8 %i.bc, 108
  br i1 %.not.i.2, label %.thread, label %bb.k, !prof !16

_RNvXs8_NtCs8ZPNfZ0ciAA_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i: ; preds = %bb.i, %bb.g, %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !400
  store i64 5, ptr %i.u, align 8, !noalias !400
  %i.be = call noundef nonnull align 8 ptr @_RNvMs3_NtCs8ZPNfZ0ciAA_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE5errorB7_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.u), !noalias !401
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !400
  br label %bb.af

bb.k:                                             ; preds = %bb.j, %bb.h, %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !400
  store i64 9, ptr %i.t, align 8, !noalias !400
  %i.bf = call noundef nonnull align 8 ptr @_RNvMs3_NtCs8ZPNfZ0ciAA_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE5errorB7_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.t), !noalias !401
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !400
  br label %bb.af

bb.l:                                             ; preds = %_RNvMs3_NtCs8ZPNfZ0ciAA_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE16parse_whitespaceB7_.exit
  %i.bg = add i64 %i.an, 1                        ; 4 uses
  store i64 %i.bg, ptr %i.ah, align 8, !alias.scope !402
  tail call void @llvm.experimental.noalias.scope.decl(metadata !403)
  %umax.i43 = tail call i64 @llvm.umax.i64(i64 %i.bg, i64 %i.aj) ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !404)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !405)
  %exitcond.not.i45.not = icmp ult i64 %i.bg, %i.aj
  br i1 %exitcond.not.i45.not, label %bb.m, label %_RNvXs8_NtCs8ZPNfZ0ciAA_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i49

bb.m:                                             ; preds = %bb.l
  %i.bh = getelementptr inbounds nuw i8, ptr %i.am, i64 %i.bg
  %i.bi = load i8, ptr %i.bh, align 1, !noalias !406, !noundef !5
  %i.bj = add i64 %i.an, 2                        ; 3 uses
  store i64 %i.bj, ptr %i.ah, align 8, !alias.scope !407, !noalias !408
  %.not.i46 = icmp eq i8 %i.bi, 114
  br i1 %.not.i46, label %bb.n, label %bb.r, !prof !16

bb.n:                                             ; preds = %bb.m
  tail call void @llvm.experimental.noalias.scope.decl(metadata !409)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !410)
  %exitcond.not.i45.1 = icmp eq i64 %i.bj, %umax.i43
  br i1 %exitcond.not.i45.1, label %_RNvXs8_NtCs8ZPNfZ0ciAA_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i49, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bk = getelementptr inbounds nuw i8, ptr %i.am, i64 %i.bj
  %i.bl = load i8, ptr %i.bk, align 1, !noalias !411, !noundef !5
  %i.bm = add i64 %i.an, 3                        ; 3 uses
  store i64 %i.bm, ptr %i.ah, align 8, !alias.scope !412, !noalias !408
  %.not.i46.1 = icmp eq i8 %i.bl, 117
  br i1 %.not.i46.1, label %bb.p, label %bb.r, !prof !16

bb.p:                                             ; preds = %bb.o
  tail call void @llvm.experimental.noalias.scope.decl(metadata !413)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !414)
  %exitcond.not.i45.2 = icmp eq i64 %i.bm, %umax.i43
  br i1 %exitcond.not.i45.2, label %_RNvXs8_NtCs8ZPNfZ0ciAA_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i49, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bn = getelementptr inbounds nuw i8, ptr %i.am, i64 %i.bm
  %i.bo = load i8, ptr %i.bn, align 1, !noalias !415, !noundef !5
  %i.bp = add i64 %i.an, 4
  store i64 %i.bp, ptr %i.ah, align 8, !alias.scope !416, !noalias !408
  %.not.i46.2 = icmp eq i8 %i.bo, 101
  br i1 %.not.i46.2, label %.thread, label %bb.r, !prof !16

_RNvXs8_NtCs8ZPNfZ0ciAA_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i49: ; preds = %bb.p, %bb.n, %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !417
  store i64 5, ptr %i.s, align 8, !noalias !417
  %i.bq = call noundef nonnull align 8 ptr @_RNvMs3_NtCs8ZPNfZ0ciAA_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE5errorB7_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.s), !noalias !418
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !417
  br label %bb.ai

bb.r:                                             ; preds = %bb.q, %bb.o, %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !417
  store i64 9, ptr %i.r, align 8, !noalias !417
  %i.br = call noundef nonnull align 8 ptr @_RNvMs3_NtCs8ZPNfZ0ciAA_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE5errorB7_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.r), !noalias !418
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !417
  br label %bb.ai

bb.s:                                             ; preds = %_RNvMs3_NtCs8ZPNfZ0ciAA_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE16parse_whitespaceB7_.exit
  %i.bs = add i64 %i.an, 1                        ; 4 uses
  store i64 %i.bs, ptr %i.ah, align 8, !alias.scope !419
  tail call void @llvm.experimental.noalias.scope.decl(metadata !420)
  %umax.i52 = tail call i64 @llvm.umax.i64(i64 %i.bs, i64 %i.aj) ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !421)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !422)
  %exitcond.not.i54.not = icmp ult i64 %i.bs, %i.aj
  br i1 %exitcond.not.i54.not, label %bb.t, label %_RNvXs8_NtCs8ZPNfZ0ciAA_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i58

bb.t:                                             ; preds = %bb.s
  %i.bt = getelementptr inbounds nuw i8, ptr %i.am, i64 %i.bs
  %i.bu = load i8, ptr %i.bt, align 1, !noalias !423, !noundef !5
  %i.bv = add i64 %i.an, 2                        ; 3 uses
  store i64 %i.bv, ptr %i.ah, align 8, !alias.scope !424, !noalias !425
  %.not.i55 = icmp eq i8 %i.bu, 97
  br i1 %.not.i55, label %bb.u, label %bb.aa, !prof !16

bb.u:                                             ; preds = %bb.t
  tail call void @llvm.experimental.noalias.scope.decl(metadata !426)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !427)
  %exitcond.not.i54.1 = icmp eq i64 %i.bv, %umax.i52
  br i1 %exitcond.not.i54.1, label %_RNvXs8_NtCs8ZPNfZ0ciAA_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i58, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bw = getelementptr inbounds nuw i8, ptr %i.am, i64 %i.bv
  %i.bx = load i8, ptr %i.bw, align 1, !noalias !428, !noundef !5
  %i.by = add i64 %i.an, 3                        ; 3 uses
  store i64 %i.by, ptr %i.ah, align 8, !alias.scope !429, !noalias !425
  %.not.i55.1 = icmp eq i8 %i.bx, 108
  br i1 %.not.i55.1, label %bb.w, label %bb.aa, !prof !16

bb.w:                                             ; preds = %bb.v
  tail call void @llvm.experimental.noalias.scope.decl(metadata !430)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !431)
  %exitcond.not.i54.2 = icmp eq i64 %i.by, %umax.i52
  br i1 %exitcond.not.i54.2, label %_RNvXs8_NtCs8ZPNfZ0ciAA_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i58, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.bz = getelementptr inbounds nuw i8, ptr %i.am, i64 %i.by
  %i.ca = load i8, ptr %i.bz, align 1, !noalias !432, !noundef !5
  %i.cb = add i64 %i.an, 4                        ; 3 uses
  store i64 %i.cb, ptr %i.ah, align 8, !alias.scope !433, !noalias !425
  %.not.i55.2 = icmp eq i8 %i.ca, 115
  br i1 %.not.i55.2, label %bb.y, label %bb.aa, !prof !16

bb.y:                                             ; preds = %bb.x
  tail call void @llvm.experimental.noalias.scope.decl(metadata !434)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !435)
  %exitcond.not.i54.3 = icmp eq i64 %i.cb, %umax.i52
  br i1 %exitcond.not.i54.3, label %_RNvXs8_NtCs8ZPNfZ0ciAA_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i58, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.cc = getelementptr inbounds nuw i8, ptr %i.am, i64 %i.cb
  %i.cd = load i8, ptr %i.cc, align 1, !noalias !436, !noundef !5
  %i.ce = add i64 %i.an, 5
  store i64 %i.ce, ptr %i.ah, align 8, !alias.scope !437, !noalias !425
  %.not.i55.3 = icmp eq i8 %i.cd, 101
  br i1 %.not.i55.3, label %.thread, label %bb.aa, !prof !16

_RNvXs8_NtCs8ZPNfZ0ciAA_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i58: ; preds = %bb.y, %bb.w, %bb.u, %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !438
  store i64 5, ptr %i.q, align 8, !noalias !438
  %i.cf = call noundef nonnull align 8 ptr @_RNvMs3_NtCs8ZPNfZ0ciAA_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE5errorB7_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.q), !noalias !439
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !438
  br label %bb.aj

bb.aa:                                            ; preds = %bb.z, %bb.x, %bb.v, %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !438
  store i64 9, ptr %i.p, align 8, !noalias !438
  %i.cg = call noundef nonnull align 8 ptr @_RNvMs3_NtCs8ZPNfZ0ciAA_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE5errorB7_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.p), !noalias !439
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !438
  br label %bb.aj

bb.ab:                                            ; preds = %_RNvMs3_NtCs8ZPNfZ0ciAA_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE16parse_whitespaceB7_.exit
  %i.ch = add i64 %i.an, 1
  store i64 %i.ch, ptr %i.ah, align 8, !alias.scope !440
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af)
  call fastcc void @_RNvMs3_NtCs8ZPNfZ0ciAA_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE13parse_integerB7_(ptr noalias nofree noundef align 8 captures(address) dereferenceable(16) %i.af, ptr noalias nofree noundef align 8 dereferenceable(56) %1, i1 noundef zeroext false)
  %i.ci = load i64, ptr %i.af, align 8, !range !17, !noundef !5 ; 2 uses
  %i.cj = icmp eq i64 %i.ci, -1
  %i.ck = getelementptr inbounds nuw i8, ptr %i.af, i64 8 ; 2 uses
  br i1 %i.cj, label %bb.ak, label %bb.al

bb.ac:                                            ; preds = %_RNvMs3_NtCs8ZPNfZ0ciAA_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE16parse_whitespaceB7_.exit
  %i.cl = add i64 %i.an, 1
  store i64 %i.cl, ptr %i.ah, align 8, !alias.scope !441
  %i.cm = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i64 0, ptr %i.cm, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad)
  call void @_RNvXs8_NtCs8ZPNfZ0ciAA_10serde_json4readNtB5_7StrReadNtB5_4Read9parse_str(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.ad, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.al, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  %i.cn = load i64, ptr %i.ad, align 8, !range !18, !noundef !5 ; 2 uses
  %i.co = icmp eq i64 %i.cn, 2
  %i.cp = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.cq = load ptr, ptr %i.cp, align 8            ; 3 uses
  br i1 %i.co, label %bb.aq, label %bb.ar

bb.ad:                                            ; preds = %_RNvMs3_NtCs8ZPNfZ0ciAA_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE16parse_whitespaceB7_.exit
  %i.cr = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 4 uses
  %i.cs = load i8, ptr %i.cr, align 8, !noundef !5
  %i.ct = add i8 %i.cs, -1                        ; 2 uses
  store i8 %i.ct, ptr %i.cr, align 8
  %i.cu = icmp eq i8 %i.ct, 0
  br i1 %i.cu, label %bb.ay, label %bb.az, !prof !19

bb.ae:                                            ; preds = %_RNvMs3_NtCs8ZPNfZ0ciAA_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE16parse_whitespaceB7_.exit
  %i.cv = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 4 uses
  %i.cw = load i8, ptr %i.cv, align 8, !noundef !5
  %i.cx = add i8 %i.cw, -1                        ; 2 uses
  store i8 %i.cx, ptr %i.cv, align 8
  %i.cy = icmp eq i8 %i.cx, 0
  br i1 %i.cy, label %bb.cd, label %bb.ce, !prof !19

bb.af:                                            ; preds = %bb.k, %_RNvXs8_NtCs8ZPNfZ0ciAA_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i
  %.sroa.0.1.i.ph = phi ptr [ %i.be, %_RNvXs8_NtCs8ZPNfZ0ciAA_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i ], [ %i.bf, %bb.k ]
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.0.1.i.ph, ptr %i.cz, align 8
  store i8 -1, ptr %0, align 8
  br label %bb.ah

bb.ag:                                            ; preds = %.thread176, %.thread173
  %.sroa.25278.0 = phi i64 [ %.sroa.25278.4, %.thread176 ], [ %.sroa.25278.3, %.thread173 ] ; 2 uses
  %.sroa.23.0 = phi i8 [ %.sroa.23.2, %.thread176 ], [ %.sroa.23.1, %.thread173 ]
  %.sroa.0.0 = phi i8 [ %.sroa.0.4, %.thread176 ], [ %.sroa.0.3, %.thread173 ] ; 2 uses
  %i.da = phi <2 x i64> [ %i.hu, %.thread176 ], [ %i.hb, %.thread173 ]
  %i.db = icmp eq i8 %.sroa.0.0, -1
  br i1 %i.db, label %._crit_edge, label %.thread, !prof !442

._crit_edge:                                      ; preds = %bb.ag
  %i.dc = inttoptr i64 %.sroa.25278.0 to ptr
  br label %bb.cn

bb.ah:                                            ; preds = %bb.co, %bb.cd, %bb.ay, %bb.aq, %bb.ak, %bb.aj, %bb.ai, %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.25)
  br label %bb.cv

bb.ai:                                            ; preds = %bb.r, %_RNvXs8_NtCs8ZPNfZ0ciAA_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i49
  %.sroa.0.1.i48.ph = phi ptr [ %i.bq, %_RNvXs8_NtCs8ZPNfZ0ciAA_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i49 ], [ %i.br, %bb.r ]
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.0.1.i48.ph, ptr %i.dd, align 8
  store i8 -1, ptr %0, align 8
  br label %bb.ah

bb.aj:                                            ; preds = %bb.aa, %_RNvXs8_NtCs8ZPNfZ0ciAA_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i58
  %.sroa.0.1.i57.ph = phi ptr [ %i.cf, %_RNvXs8_NtCs8ZPNfZ0ciAA_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i58 ], [ %i.cg, %bb.aa ]
  %i.de = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.0.1.i57.ph, ptr %i.de, align 8
  store i8 -1, ptr %0, align 8
  br label %bb.ah

bb.ak:                                            ; preds = %bb.ab
  %i.df = load ptr, ptr %i.ck, align 8, !nonnull !5, !align !11, !noundef !5
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.df, ptr %i.dg, align 8
  store i8 -1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af)
  br label %bb.ah

bb.al:                                            ; preds = %bb.ab
  %.sroa.2.0.copyload = load i64, ptr %i.ck, align 8 ; 3 uses
  %i.dh = insertelement <2 x i64> <i64 poison, i64 undef>, i64 %.sroa.2.0.copyload, i64 0 ; 3 uses
  switch i64 %i.ci, label %default.unreachable376 [
    i64 0, label %bb.am
    i64 1, label %_RINvMs2_NtCs8ZPNfZ0ciAA_10serde_json2deNtB6_12ParserNumber5visitNtNvXNtNtB8_5value2deNtB17_5ValueNtNtCsdnjrqM8ey3e_10serde_core2de11Deserialize11deserialize12ValueVisitorEB8_.exit
    i64 2, label %bb.ap
  ]

default.unreachable376:                           ; preds = %bb.cp, %bb.al
  unreachable

bb.am:                                            ; preds = %bb.al
  %i.di = bitcast i64 %.sroa.2.0.copyload to double
  %i.dj = tail call double @llvm.fabs.f64(double %i.di)
  %i.dk = fcmp ueq double %i.dj, +inf
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !443
  br i1 %i.dk, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx4.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %.sroa.5.sroa.4.0.copyload9.i.i = load i64, ptr %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx4.sroa_idx.i.i, align 8, !alias.scope !444, !noalias !445
  %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx4.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.dl = load <2 x i64>, ptr %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx4.sroa_idx.i.i, align 8, !alias.scope !444, !noalias !445
  br label %_RINvXNvXNtNtCs8ZPNfZ0ciAA_10serde_json5value2deNtB8_5ValueNtNtCsdnjrqM8ey3e_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_f64NtNtBa_5error5ErrorEBa_.exit.i

bb.ao:                                            ; preds = %bb.am
  store i8 0, ptr %i.o, align 8, !noalias !443
  tail call void @llvm.experimental.noalias.scope.decl(metadata !446)
  call fastcc void @_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueNtNtCs8ZPNfZ0ciAA_10serde_json5value5ValueEBF_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.o), !noalias !447
  br label %_RINvXNvXNtNtCs8ZPNfZ0ciAA_10serde_json5value2deNtB8_5ValueNtNtCsdnjrqM8ey3e_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_f64NtNtBa_5error5ErrorEBa_.exit.i

_RINvXNvXNtNtCs8ZPNfZ0ciAA_10serde_json5value2deNtB8_5ValueNtNtCsdnjrqM8ey3e_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_f64NtNtBa_5error5ErrorEBa_.exit.i: ; preds = %bb.ao, %bb.an
  %.sroa.5.sroa.4.0.i.i = phi i64 [ %.sroa.5.sroa.4.0.copyload9.i.i, %bb.an ], [ 2, %bb.ao ]
  %.sroa.0.0.i.i = phi i8 [ 0, %bb.an ], [ 2, %bb.ao ]
  %i.dm = phi <2 x i64> [ %i.dl, %bb.an ], [ %i.dh, %bb.ao ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !443
  br label %_RINvMs2_NtCs8ZPNfZ0ciAA_10serde_json2deNtB6_12ParserNumber5visitNtNvXNtNtB8_5value2deNtB17_5ValueNtNtCsdnjrqM8ey3e_10serde_core2de11Deserialize11deserialize12ValueVisitorEB8_.exit

bb.ap:                                            ; preds = %bb.al
  %.lobit.i.i = lshr i64 %.sroa.2.0.copyload, 63
  br label %_RINvMs2_NtCs8ZPNfZ0ciAA_10serde_json2deNtB6_12ParserNumber5visitNtNvXNtNtB8_5value2deNtB17_5ValueNtNtCsdnjrqM8ey3e_10serde_core2de11Deserialize11deserialize12ValueVisitorEB8_.exit

_RINvMs2_NtCs8ZPNfZ0ciAA_10serde_json2deNtB6_12ParserNumber5visitNtNvXNtNtB8_5value2deNtB17_5ValueNtNtCsdnjrqM8ey3e_10serde_core2de11Deserialize11deserialize12ValueVisitorEB8_.exit: ; preds = %bb.al, %_RINvXNvXNtNtCs8ZPNfZ0ciAA_10serde_json5value2deNtB8_5ValueNtNtCsdnjrqM8ey3e_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_f64NtNtBa_5error5ErrorEBa_.exit.i, %bb.ap
  %.sroa.25278.1 = phi i64 [ %.sroa.5.sroa.4.0.i.i, %_RINvXNvXNtNtCs8ZPNfZ0ciAA_10serde_json5value2deNtB8_5ValueNtNtCsdnjrqM8ey3e_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_f64NtNtBa_5error5ErrorEBa_.exit.i ], [ %.lobit.i.i, %bb.ap ], [ 0, %bb.al ]
  %.sroa.0.1 = phi i8 [ %.sroa.0.0.i.i, %_RINvXNvXNtNtCs8ZPNfZ0ciAA_10serde_json5value2deNtB8_5ValueNtNtCsdnjrqM8ey3e_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_f64NtNtBa_5error5ErrorEBa_.exit.i ], [ 2, %bb.ap ], [ 2, %bb.al ]
  %i.dn = phi <2 x i64> [ %i.dm, %_RINvXNvXNtNtCs8ZPNfZ0ciAA_10serde_json5value2deNtB8_5ValueNtNtCsdnjrqM8ey3e_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_f64NtNtBa_5error5ErrorEBa_.exit.i ], [ %i.dh, %bb.ap ], [ %i.dh, %bb.al ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af)
  br label %.thread

bb.aq:                                            ; preds = %bb.ac
  %i.do = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.cq, ptr %i.do, align 8
  store i8 -1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad)
  br label %bb.ah

bb.ar:                                            ; preds = %bb.ac
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  %.sroa.4.0.copyload = load i64, ptr %.sroa.4.0..sroa_idx, align 8 ; 8 uses
  %i.dp = trunc nuw i64 %i.cn to i1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.cq) ]
  br i1 %i.dp, label %bb.as, label %bb.av

bb.as:                                            ; preds = %bb.ar
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !448
  call void @_RNvMs5_NtCsbqH9stoieM8_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs8ZPNfZ0ciAA_10serde_json(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, i64 noundef %.sroa.4.0.copyload, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1), !noalias !448
  %i.dq = load i64, ptr %i.b, align 8, !range !4, !noalias !448, !noundef !5
  %i.dr = trunc nuw i64 %i.dq to i1
  %i.ds = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.dt = load i64, ptr %i.ds, align 8, !range !449, !noalias !448, !noundef !5 ; 4 uses
  %i.du = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  br i1 %i.dr, label %bb.at, label %bb.au, !prof !19

bb.at:                                            ; preds = %bb.as
  %i.dv = load i64, ptr %i.du, align 8, !noalias !448
  call void @_RNvNtCsbqH9stoieM8_5alloc7raw_vec12handle_error(i64 noundef %i.dt, i64 %i.dv) #18, !noalias !448
  unreachable

bb.au:                                            ; preds = %bb.as
  %i.dw = load ptr, ptr %i.du, align 8, !noalias !448, !nonnull !5, !noundef !5 ; 2 uses
  %i.dx = icmp ule i64 %.sroa.4.0.copyload, %i.dt
  call void @llvm.assume(i1 %i.dx)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !448
  %.not.i269 = icmp eq i64 %.sroa.4.0.copyload, 0
  br i1 %.not.i269, label %_RINvXNvXNtNtCs8ZPNfZ0ciAA_10serde_json5value2deNtB8_5ValueNtNtCsdnjrqM8ey3e_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_strNtNtBa_5error5ErrorEBa_.exit, label %_RINvXNvXNtNtCs8ZPNfZ0ciAA_10serde_json5value2deNtB8_5ValueNtNtCsdnjrqM8ey3e_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_strNtNtBa_5error5ErrorEBa_.exit.sink.split

bb.av:                                            ; preds = %bb.ar
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !450
  call void @_RNvMs5_NtCsbqH9stoieM8_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs8ZPNfZ0ciAA_10serde_json(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef %.sroa.4.0.copyload, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1), !noalias !450
  %i.dy = load i64, ptr %i.a, align 8, !range !4, !noalias !450, !noundef !5
  %i.dz = trunc nuw i64 %i.dy to i1
  %i.ea = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.eb = load i64, ptr %i.ea, align 8, !range !449, !noalias !450, !noundef !5 ; 4 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.dz, label %bb.aw, label %bb.ax, !prof !19

bb.aw:                                            ; preds = %bb.av
  %i.ed = load i64, ptr %i.ec, align 8, !noalias !450
  call void @_RNvNtCsbqH9stoieM8_5alloc7raw_vec12handle_error(i64 noundef %i.eb, i64 %i.ed) #18, !noalias !450
  unreachable

bb.ax:                                            ; preds = %bb.av
  %i.ee = load ptr, ptr %i.ec, align 8, !noalias !450, !nonnull !5, !noundef !5 ; 2 uses
  %i.ef = icmp ule i64 %.sroa.4.0.copyload, %i.eb
  call void @llvm.assume(i1 %i.ef)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !450
  %.not.i.i = icmp eq i64 %.sroa.4.0.copyload, 0
  br i1 %.not.i.i, label %_RINvXNvXNtNtCs8ZPNfZ0ciAA_10serde_json5value2deNtB8_5ValueNtNtCsdnjrqM8ey3e_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_strNtNtBa_5error5ErrorEBa_.exit, label %_RINvXNvXNtNtCs8ZPNfZ0ciAA_10serde_json5value2deNtB8_5ValueNtNtCsdnjrqM8ey3e_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_strNtNtBa_5error5ErrorEBa_.exit.sink.split

_RINvXNvXNtNtCs8ZPNfZ0ciAA_10serde_json5value2deNtB8_5ValueNtNtCsdnjrqM8ey3e_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_strNtNtBa_5error5ErrorEBa_.exit.sink.split: ; preds = %bb.ax, %bb.au
  %.sink = phi ptr [ %i.dw, %bb.au ], [ %i.ee, %bb.ax ] ; 2 uses
  %.sroa.25278.2.ph = phi i64 [ %i.dt, %bb.au ], [ %i.eb, %bb.ax ]
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.sink, ptr nonnull readonly align 1 %i.cq, i64 %.sroa.4.0.copyload, i1 false), !noalias !5
  br label %_RINvXNvXNtNtCs8ZPNfZ0ciAA_10serde_json5value2deNtB8_5ValueNtNtCsdnjrqM8ey3e_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_strNtNtBa_5error5ErrorEBa_.exit

_RINvXNvXNtNtCs8ZPNfZ0ciAA_10serde_json5value2deNtB8_5ValueNtNtCsdnjrqM8ey3e_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_strNtNtBa_5error5ErrorEBa_.exit: ; preds = %_RINvXNvXNtNtCs8ZPNfZ0ciAA_10serde_json5value2deNtB8_5ValueNtNtCsdnjrqM8ey3e_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_strNtNtBa_5error5ErrorEBa_.exit.sink.split, %bb.ax, %bb.au
  %.sroa.39.2.in = phi ptr [ %i.ee, %bb.ax ], [ %i.dw, %bb.au ], [ %.sink, %_RINvXNvXNtNtCs8ZPNfZ0ciAA_10serde_json5value2deNtB8_5ValueNtNtCsdnjrqM8ey3e_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_strNtNtBa_5error5ErrorEBa_.exit.sink.split ]
  %.sroa.25278.2 = phi i64 [ %i.eb, %bb.ax ], [ %i.dt, %bb.au ], [ %.sroa.25278.2.ph, %_RINvXNvXNtNtCs8ZPNfZ0ciAA_10serde_json5value2deNtB8_5ValueNtNtCsdnjrqM8ey3e_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_strNtNtBa_5error5ErrorEBa_.exit.sink.split ]
  %.sroa.39.2 = ptrtoint ptr %.sroa.39.2.in to i64
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad)
  %i.eg = insertelement <2 x i64> poison, i64 %.sroa.39.2, i64 0
  %i.eh = insertelement <2 x i64> %i.eg, i64 %.sroa.4.0.copyload, i64 1
  br label %.thread

bb.ay:                                            ; preds = %bb.ad
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac)
  store i64 24, ptr %i.ac, align 8
  %i.ei = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCs8ZPNfZ0ciAA_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorB7_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.ac)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac)
  %i.ej = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ei, ptr %i.ej, align 8
  store i8 -1, ptr %0, align 8
  br label %bb.ah

bb.az:                                            ; preds = %bb.ad
  %i.ek = add i64 %i.an, 1                        ; 3 uses
  store i64 %i.ek, ptr %i.ah, align 8, !alias.scope !451
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !452
  store i64 0, ptr %i.n, align 8, !noalias !452
  %i.el = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 3 uses
  store ptr inttoptr (i64 8 to ptr), ptr %i.el, align 8, !noalias !452
  %i.em = getelementptr inbounds nuw i8, ptr %i.n, i64 16 ; 3 uses
  store i64 0, ptr %i.em, align 8, !noalias !452
  %i.en = icmp ult i64 %i.ek, %i.aj
  br i1 %i.en, label %.lr.ph.i.i92.lr.ph, label %.loopexit22.i

.lr.ph.i.i92.lr.ph:                               ; preds = %bb.az
  %.sroa.4123.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 1
  %.sroa.5124.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 2 uses
  %.sroa.6125.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %.sroa.3.0..sroa_idx2.i = getelementptr inbounds nuw i8, ptr %i.m, i64 1
  %.sroa.3.i.sroa.4.0..sroa.3.0..sroa_idx2.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %.sroa.3.i.sroa.5.0..sroa.3.0..sroa_idx2.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  br label %.lr.ph.i.i92

.lr.ph.i.i92:                                     ; preds = %.lr.ph.i.i92.lr.ph, %bb.br
  %.promoted.i.i91197 = phi i64 [ %i.ek, %.lr.ph.i.i92.lr.ph ], [ %.promoted.i.i91, %bb.br ]
  %i.eo = phi i64 [ %i.aj, %.lr.ph.i.i92.lr.ph ], [ %i.fs, %bb.br ] ; 4 uses
  %.sroa.5.0196 = phi i1 [ true, %.lr.ph.i.i92.lr.ph ], [ false, %bb.br ]
  call void @llvm.experimental.noalias.scope.decl(metadata !453)
  %i.ep = load ptr, ptr %i.al, align 8, !alias.scope !454, !noalias !455, !nonnull !5, !noundef !5 ; 2 uses
  br label %bb.ba

bb.ba:                                            ; preds = %bb.bb, %.lr.ph.i.i92
  %i.eq = phi i64 [ %.promoted.i.i91197, %.lr.ph.i.i92 ], [ %i.et, %bb.bb ] ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !456)
  call void @llvm.experimental.noalias.scope.decl(metadata !457)
  %i.er = getelementptr inbounds nuw i8, ptr %i.ep, i64 %i.eq
  %i.es = load i8, ptr %i.er, align 1, !noalias !458, !noundef !5 ; 2 uses
  switch i8 %i.es, label %bb.bc [
    i8 32, label %bb.bb
    i8 10, label %bb.bb
    i8 9, label %bb.bb
    i8 13, label %bb.bb
    i8 93, label %bb.bq
  ]

bb.bb:                                            ; preds = %bb.ba, %bb.ba, %bb.ba, %bb.ba
  %i.et = add i64 %i.eq, 1                        ; 3 uses
  store i64 %i.et, ptr %i.ah, align 8, !alias.scope !459, !noalias !460
  %exitcond.not.i.i93 = icmp eq i64 %i.et, %i.eo
  br i1 %exitcond.not.i.i93, label %.loopexit22.i, label %bb.ba

.loopexit22.i:                                    ; preds = %bb.br, %bb.bb, %bb.az
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !461
  store i64 2, ptr %i.f, align 8, !noalias !461
  %i.eu = invoke fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCs8ZPNfZ0ciAA_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorB7_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.f)
          to label %.noexc95 unwind label %.loopexit.split-lp

.noexc95:                                         ; preds = %.loopexit22.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !461
  br label %bb.bj

bb.bc:                                            ; preds = %bb.ba
  br i1 %.sroa.5.0196, label %.loopexit, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.ev = icmp eq i8 %i.es, 44
  br i1 %i.ev, label %bb.be, label %bb.bg, !prof !13

bb.be:                                            ; preds = %bb.bd
  %i.ew = add i64 %i.eq, 1                        ; 3 uses
  store i64 %i.ew, ptr %i.ah, align 8, !alias.scope !462, !noalias !461
  call void @llvm.experimental.noalias.scope.decl(metadata !463)
  %i.ex = icmp ult i64 %i.ew, %i.eo
  br i1 %i.ex, label %.lr.ph.i7.i, label %.loopexit.i94

.lr.ph.i7.i:                                      ; preds = %bb.be, %bb.bf
  %i.ey = phi i64 [ %i.fb, %bb.bf ], [ %i.ew, %bb.be ] ; 2 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ep, i64 %i.ey
  %i.fa = load i8, ptr %i.ez, align 1, !noalias !464, !noundef !5
  switch i8 %i.fa, label %.loopexit [
    i8 32, label %bb.bf
    i8 10, label %bb.bf
    i8 9, label %bb.bf
    i8 13, label %bb.bf
    i8 93, label %bb.bh
  ], !prof !465

bb.bf:                                            ; preds = %.lr.ph.i7.i, %.lr.ph.i7.i, %.lr.ph.i7.i, %.lr.ph.i7.i
  %i.fb = add i64 %i.ey, 1                        ; 3 uses
  store i64 %i.fb, ptr %i.ah, align 8, !alias.scope !466, !noalias !467
  %exitcond.not.i8.i = icmp eq i64 %i.fb, %i.eo
  br i1 %exitcond.not.i8.i, label %.loopexit.i94, label %.lr.ph.i7.i

bb.bg:                                            ; preds = %bb.bd
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !461
  store i64 7, ptr %i.c, align 8, !noalias !461
  %i.fc = invoke fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCs8ZPNfZ0ciAA_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorB7_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.c)
          to label %.noexc96 unwind label %.loopexit.split-lp

.noexc96:                                         ; preds = %bb.bg
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !461
  br label %bb.bj

.loopexit.i94:                                    ; preds = %bb.be, %bb.bf
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !461
  store i64 5, ptr %i.d, align 8, !noalias !461
  %i.fd = invoke fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCs8ZPNfZ0ciAA_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorB7_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.d)
          to label %.noexc97 unwind label %.loopexit.split-lp

.noexc97:                                         ; preds = %.loopexit.i94
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !461
  br label %bb.bj

bb.bh:                                            ; preds = %.lr.ph.i7.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !461
  store i64 21, ptr %i.e, align 8, !noalias !461
  %i.fe = invoke fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCs8ZPNfZ0ciAA_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorB7_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.e)
          to label %.noexc98 unwind label %.loopexit.split-lp

.noexc98:                                         ; preds = %bb.bh
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !461
  br label %bb.bj

.loopexit:                                        ; preds = %.lr.ph.i7.i, %bb.bc
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !468
  invoke fastcc void @_RINvXs5_NtCs8ZPNfZ0ciAA_10serde_json2deQINtB6_12DeserializerNtNtB8_4read7StrReadENtNtCsdnjrqM8ey3e_10serde_core2de12Deserializer15deserialize_anyNtNvXNtNtB8_5value2deNtB2q_5ValueNtB1j_11Deserialize11deserialize12ValueVisitorEB8_(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(32) %i.g, ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %1) #16
          to label %.noexc89 unwind label %.loopexit183, !inline_history !332

.noexc89:                                         ; preds = %.loopexit
  %i.ff = load i8, ptr %i.g, align 8, !range !6, !noalias !468, !noundef !5 ; 2 uses
  %i.fg = icmp eq i8 %i.ff, -1
  br i1 %i.fg, label %bb.bi, label %bb.bm

bb.bi:                                            ; preds = %.noexc89
  %i.fh = load ptr, ptr %.sroa.5124.0..sroa_idx, align 8, !noalias !468, !nonnull !5, !align !11, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !468
  br label %bb.bj

.loopexit183:                                     ; preds = %.loopexit
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp:                               ; preds = %.loopexit22.i, %bb.bg, %.loopexit.i94, %bb.bh
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %.loopexit183, %.loopexit.split-lp, %bb.bo
  %eh.lpad-body = phi { ptr, i32 } [ %i.fn, %bb.bo ], [ %lpad.loopexit, %.loopexit183 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtCsbqH9stoieM8_5alloc3vec3VecNtNtCs8ZPNfZ0ciAA_10serde_json5value5ValueEEB1c_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.n) #17
          to label %common.resume unwind label %bb.bs, !noalias !469, !inline_history !333

bb.bj:                                            ; preds = %.noexc95, %.noexc96, %.noexc98, %.noexc97, %bb.bi
  %.sroa.10.0.ph = phi ptr [ %i.fh, %bb.bi ], [ %i.eu, %.noexc95 ], [ %i.fc, %.noexc96 ], [ %i.fe, %.noexc98 ], [ %i.fd, %.noexc97 ]
  invoke void @_RNvXsp_NtCsbqH9stoieM8_5alloc3vecINtB5_3VecNtNtCs8ZPNfZ0ciAA_10serde_json5value5ValueENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropBJ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.n)
          to label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtCsbqH9stoieM8_5alloc3vec3VecNtNtCs8ZPNfZ0ciAA_10serde_json5value5ValueEEB1c_.exit unwind label %bb.bk, !noalias !469

bb.bk:                                            ; preds = %bb.bj
  %i.fi = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsbqH9stoieM8_5alloc7raw_vecINtB5_6RawVecNtNtCs8ZPNfZ0ciAA_10serde_json5value5ValueENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.n)
          to label %common.resume unwind label %bb.bl, !noalias !469

bb.bl:                                            ; preds = %bb.bk
  %i.fj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs8Chj7Szqq0n_4core9panicking16panic_in_cleanup() #14, !noalias !469
  unreachable

common.resume:                                    ; preds = %bb.cf, %bb.bz, %.body, %bb.bk
  %common.resume.op = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %i.fi, %bb.bk ], [ %i.hl, %bb.cf ], [ %i.go, %bb.bz ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtCsbqH9stoieM8_5alloc3vec3VecNtNtCs8ZPNfZ0ciAA_10serde_json5value5ValueEEB1c_.exit: ; preds = %bb.bj
  call void @_RNvXs1_NtCsbqH9stoieM8_5alloc7raw_vecINtB5_6RawVecNtNtCs8ZPNfZ0ciAA_10serde_json5value5ValueENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.n), !noalias !469
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !452
  %.pre = load i64, ptr %i.ai, align 8, !alias.scope !470, !noalias !471
  %.promoted.i.i.pre = load i64, ptr %i.ah, align 8, !alias.scope !472, !noalias !473
  br label %_RINvXNvXNtNtCs8ZPNfZ0ciAA_10serde_json5value2deNtB8_5ValueNtNtCsdnjrqM8ey3e_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_seqINtNtBa_2de9SeqAccessNtNtBa_4read7StrReadEEBa_.exit

bb.bm:                                            ; preds = %.noexc89
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !452
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.3.0..sroa_idx2.i, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.4123.0..sroa_idx, i64 7, i1 false)
  %.sroa.5124.0.copyload = load ptr, ptr %.sroa.5124.0..sroa_idx, align 8, !noalias !468
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.3.i.sroa.5.0..sroa.3.0..sroa_idx2.i.sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6125.0..sroa_idx, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !468
  store i8 %i.ff, ptr %i.m, align 8, !noalias !452
  store ptr %.sroa.5124.0.copyload, ptr %.sroa.3.i.sroa.4.0..sroa.3.0..sroa_idx2.i.sroa_idx, align 8, !noalias !452
  %i.fk = load i64, ptr %i.em, align 8, !alias.scope !474, !noalias !475, !noundef !5 ; 3 uses
  %i.fl = load i64, ptr %i.n, align 8, !range !476, !alias.scope !474, !noalias !475, !noundef !5
  %i.fm = icmp eq i64 %i.fk, %i.fl
  br i1 %i.fm, label %bb.bn, label %bb.br

bb.bn:                                            ; preds = %bb.bm
  invoke void @_RNvMs4_NtCsbqH9stoieM8_5alloc7raw_vecINtB5_6RawVecNtNtCs8ZPNfZ0ciAA_10serde_json5value5ValueE8grow_oneBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.n)
          to label %bb.br unwind label %bb.bo, !noalias !475

bb.bo:                                            ; preds = %bb.bn
  %i.fn = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueNtNtCs8ZPNfZ0ciAA_10serde_json5value5ValueEBF_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.m) #17
          to label %.body unwind label %bb.bp, !noalias !469

bb.bp:                                            ; preds = %bb.bo
  %i.fo = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs8Chj7Szqq0n_4core9panicking16panic_in_cleanup() #14, !noalias !469
  unreachable

bb.bq:                                            ; preds = %bb.ba
  %.sroa.0112.0.copyload = load ptr, ptr %i.n, align 8, !noalias !452
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.8, ptr noundef nonnull align 8 dereferenceable(16) %i.el, i64 16, i1 false), !noalias !477
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !452
  br label %_RINvXNvXNtNtCs8ZPNfZ0ciAA_10serde_json5value2deNtB8_5ValueNtNtCsdnjrqM8ey3e_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_seqINtNtBa_2de9SeqAccessNtNtBa_4read7StrReadEEBa_.exit

bb.br:                                            ; preds = %bb.bn, %bb.bm
  %i.fp = load ptr, ptr %i.el, align 8, !alias.scope !474, !noalias !475, !nonnull !5, !noundef !5
  %i.fq = getelementptr inbounds nuw [32 x i8], ptr %i.fp, i64 %i.fk
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.fq, ptr noundef nonnull align 8 dereferenceable(32) %i.m, i64 32, i1 false), !noalias !469
  %i.fr = add i64 %i.fk, 1
  store i64 %i.fr, ptr %i.em, align 8, !alias.scope !474, !noalias !475
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !452
  %i.fs = load i64, ptr %i.ai, align 8, !alias.scope !478, !noalias !455, !noundef !5 ; 2 uses
  %.promoted.i.i91 = load i64, ptr %i.ah, align 8, !alias.scope !479, !noalias !460 ; 2 uses
  %i.ft = icmp ult i64 %.promoted.i.i91, %i.fs
  br i1 %i.ft, label %.lr.ph.i.i92, label %.loopexit22.i

bb.bs:                                            ; preds = %.body
  %i.fu = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs8Chj7Szqq0n_4core9panicking16panic_in_cleanup() #14, !noalias !469, !inline_history !333
  unreachable

_RINvXNvXNtNtCs8ZPNfZ0ciAA_10serde_json5value2deNtB8_5ValueNtNtCsdnjrqM8ey3e_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_seqINtNtBa_2de9SeqAccessNtNtBa_4read7StrReadEEBa_.exit: ; preds = %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtCsbqH9stoieM8_5alloc3vec3VecNtNtCs8ZPNfZ0ciAA_10serde_json5value5ValueEEB1c_.exit, %bb.bq
  %.promoted.i.i = phi i64 [ %.promoted.i.i.pre, %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtCsbqH9stoieM8_5alloc3vec3VecNtNtCs8ZPNfZ0ciAA_10serde_json5value5ValueEEB1c_.exit ], [ %i.eq, %bb.bq ] ; 2 uses
  %i.fv = phi i64 [ %.pre, %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtCsbqH9stoieM8_5alloc3vec3VecNtNtCs8ZPNfZ0ciAA_10serde_json5value5ValueEEB1c_.exit ], [ %i.eo, %bb.bq ] ; 4 uses
  %.sroa.7.0 = phi ptr [ %.sroa.10.0.ph, %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtCsbqH9stoieM8_5alloc3vec3VecNtNtCs8ZPNfZ0ciAA_10serde_json5value5ValueEEB1c_.exit ], [ %.sroa.0112.0.copyload, %bb.bq ]
  %.sroa.0105.0 = phi i8 [ -1, %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtCsbqH9stoieM8_5alloc3vec3VecNtNtCs8ZPNfZ0ciAA_10serde_json5value5ValueEEB1c_.exit ], [ 4, %bb.bq ]
  %i.fw = load i8, ptr %i.cr, align 8, !noundef !5
  %i.fx = add i8 %i.fw, 1
  store i8 %i.fx, ptr %i.cr, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa)
  store i8 %.sroa.0105.0, ptr %i.aa, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  store ptr %.sroa.7.0, ptr %.sroa.7.0..sroa_idx, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.8.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.8, i64 16, i1 false)
  call void @llvm.experimental.noalias.scope.decl(metadata !480)
  call void @llvm.experimental.noalias.scope.decl(metadata !481)
  %i.fy = icmp ult i64 %.promoted.i.i, %i.fv
  br i1 %i.fy, label %.lr.ph.i.i, label %.loopexit.i63

.lr.ph.i.i:                                       ; preds = %_RINvXNvXNtNtCs8ZPNfZ0ciAA_10serde_json5value2deNtB8_5ValueNtNtCsdnjrqM8ey3e_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_seqINtNtBa_2de9SeqAccessNtNtBa_4read7StrReadEEBa_.exit
  %i.fz = load ptr, ptr %i.al, align 8, !alias.scope !470, !noalias !471, !nonnull !5, !noundef !5 ; 2 uses
  br label %bb.bt

bb.bt:                                            ; preds = %bb.bu, %.lr.ph.i.i
  %i.ga = phi i64 [ %.promoted.i.i, %.lr.ph.i.i ], [ %i.gd, %bb.bu ] ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !482)
  call void @llvm.experimental.noalias.scope.decl(metadata !483)
  %i.gb = getelementptr inbounds nuw i8, ptr %i.fz, i64 %i.ga
  %i.gc = load i8, ptr %i.gb, align 1, !noalias !484, !noundef !5
  switch i8 %i.gc, label %bb.bv [
    i8 32, label %bb.bu
    i8 10, label %bb.bu
    i8 9, label %bb.bu
    i8 13, label %bb.bu
    i8 93, label %_RNvMs3_NtCs8ZPNfZ0ciAA_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE7end_seqB7_.exit.thread
    i8 44, label %bb.bw
  ], !prof !14

bb.bu:                                            ; preds = %bb.bt, %bb.bt, %bb.bt, %bb.bt
  %i.gd = add i64 %i.ga, 1                        ; 3 uses
  store i64 %i.gd, ptr %i.ah, align 8, !alias.scope !485, !noalias !473
  %exitcond.not.i.i = icmp eq i64 %i.gd, %i.fv
  br i1 %exitcond.not.i.i, label %.loopexit.i63, label %bb.bt

.loopexit.i63:                                    ; preds = %bb.bu, %_RINvXNvXNtNtCs8ZPNfZ0ciAA_10serde_json5value2deNtB8_5ValueNtNtCsdnjrqM8ey3e_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_seqINtNtBa_2de9SeqAccessNtNtBa_4read7StrReadEEBa_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !480
  store i64 2, ptr %i.i, align 8, !noalias !480
  %i.ge = invoke fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCs8ZPNfZ0ciAA_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorB7_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.i)
          to label %.noexc unwind label %bb.bz

.noexc:                                           ; preds = %.loopexit.i63
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !480
  br label %_RNvMs3_NtCs8ZPNfZ0ciAA_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE7end_seqB7_.exit

bb.bv:                                            ; preds = %bb.bt
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !480
  store i64 22, ptr %i.j, align 8, !noalias !480
  %i.gf = invoke fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCs8ZPNfZ0ciAA_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorB7_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.j)
          to label %.noexc64 unwind label %bb.bz

.noexc64:                                         ; preds = %bb.bv
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !480
  br label %_RNvMs3_NtCs8ZPNfZ0ciAA_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE7end_seqB7_.exit

bb.bw:                                            ; preds = %bb.bt
  %i.gg = add i64 %i.ga, 1                        ; 3 uses
  store i64 %i.gg, ptr %i.ah, align 8, !alias.scope !486
  call void @llvm.experimental.noalias.scope.decl(metadata !487)
  %i.gh = icmp ult i64 %i.gg, %i.fv
  br i1 %i.gh, label %.lr.ph.i12.i, label %_RNvMs3_NtCs8ZPNfZ0ciAA_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE16parse_whitespaceB7_.exit16.thread.i

.lr.ph.i12.i:                                     ; preds = %bb.bw, %bb.bx
  %i.gi = phi i64 [ %i.gl, %bb.bx ], [ %i.gg, %bb.bw ] ; 2 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %i.fz, i64 %i.gi
  %i.gk = load i8, ptr %i.gj, align 1, !noalias !488, !noundef !5
  switch i8 %i.gk, label %_RNvMs3_NtCs8ZPNfZ0ciAA_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE16parse_whitespaceB7_.exit16.thread.i [
    i8 32, label %bb.bx
    i8 10, label %bb.bx
    i8 9, label %bb.bx
    i8 13, label %bb.bx
    i8 93, label %bb.by
  ]

bb.bx:                                            ; preds = %.lr.ph.i12.i, %.lr.ph.i12.i, %.lr.ph.i12.i, %.lr.ph.i12.i
  %i.gl = add i64 %i.gi, 1                        ; 3 uses
  store i64 %i.gl, ptr %i.ah, align 8, !alias.scope !489, !noalias !490
  %exitcond.not.i13.i = icmp eq i64 %i.gl, %i.fv
  br i1 %exitcond.not.i13.i, label %_RNvMs3_NtCs8ZPNfZ0ciAA_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE16parse_whitespaceB7_.exit16.thread.i, label %.lr.ph.i12.i

_RNvMs3_NtCs8ZPNfZ0ciAA_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE16parse_whitespaceB7_.exit16.thread.i: ; preds = %bb.bx, %.lr.ph.i12.i, %bb.bw
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !480
  store i64 22, ptr %i.k, align 8, !noalias !480
  %i.gm = invoke fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCs8ZPNfZ0ciAA_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorB7_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.k)
          to label %.noexc65 unwind label %bb.bz

.noexc65:                                         ; preds = %_RNvMs3_NtCs8ZPNfZ0ciAA_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE16parse_whitespaceB7_.exit16.thread.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !480
  br label %_RNvMs3_NtCs8ZPNfZ0ciAA_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE7end_seqB7_.exit

bb.by:                                            ; preds = %.lr.ph.i12.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !480
  store i64 21, ptr %i.l, align 8, !noalias !480
  %i.gn = invoke fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCs8ZPNfZ0ciAA_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorB7_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.l)
          to label %.noexc66 unwind label %bb.bz

.noexc66:                                         ; preds = %bb.by
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !480
  br label %_RNvMs3_NtCs8ZPNfZ0ciAA_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE7end_seqB7_.exit

bb.bz:                                            ; preds = %bb.by, %_RNvMs3_NtCs8ZPNfZ0ciAA_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE16parse_whitespaceB7_.exit16.thread.i, %bb.bv, %.loopexit.i63
  %i.go = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCs8ZPNfZ0ciAA_10serde_json5value5ValueNtNtB11_5error5ErrorEEB11_(ptr noalias nofree noundef align 8 dereferenceable(32) %i.aa) #17
          to label %common.resume unwind label %bb.cb

_RNvMs3_NtCs8ZPNfZ0ciAA_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE7end_seqB7_.exit: ; preds = %.noexc66, %.noexc65, %.noexc64, %.noexc
  %.sroa.0.0.i = phi ptr [ %i.gf, %.noexc64 ], [ %i.gn, %.noexc66 ], [ %i.ge, %.noexc ], [ %i.gm, %.noexc65 ] ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ab, ptr noundef nonnull align 8 dereferenceable(32) %i.aa, i64 32, i1 false)
  %i.gp = getelementptr inbounds nuw i8, ptr %i.ab, i64 32
  store ptr %.sroa.0.0.i, ptr %i.gp, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa)
  %i.gq = load i8, ptr %i.ab, align 8, !range !6, !noundef !5
  %i.gr = icmp eq i8 %i.gq, -1
  br i1 %i.gr, label %bb.cc, label %bb.ca

_RNvMs3_NtCs8ZPNfZ0ciAA_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE7end_seqB7_.exit.thread: ; preds = %bb.bt
  %i.gs = add i64 %i.ga, 1
  store i64 %i.gs, ptr %i.ah, align 8, !alias.scope !491
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ab, ptr noundef nonnull align 8 dereferenceable(32) %i.aa, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa)
  %i.gt = load i8, ptr %i.ab, align 8, !range !6, !noundef !5 ; 2 uses
  %i.gu = icmp eq i8 %i.gt, -1
  br i1 %i.gu, label %.thread241, label %.thread239

.thread241:                                       ; preds = %_RNvMs3_NtCs8ZPNfZ0ciAA_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE7end_seqB7_.exit.thread
  %i.gv = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.gw = load ptr, ptr %i.gv, align 8, !nonnull !5, !align !11, !noundef !5
  %i.gx = ptrtoint ptr %i.gw to i64
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8)
  br label %.thread173

.thread239:                                       ; preds = %_RNvMs3_NtCs8ZPNfZ0ciAA_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE7end_seqB7_.exit.thread
  %.sroa.23.0..sroa_idx272 = getelementptr inbounds nuw i8, ptr %i.ab, i64 1
  %.sroa.23.0.copyload273 = load i8, ptr %.sroa.23.0..sroa_idx272, align 1
  %.sroa.25.0..sroa_idx276 = getelementptr inbounds nuw i8, ptr %i.ab, i64 2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %.sroa.25, ptr noundef nonnull align 2 dereferenceable(6) %.sroa.25.0..sroa_idx276, i64 6, i1 false)
  %.sroa.25278.0..sroa_idx279 = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %.sroa.25278.0.copyload280 = load i64, ptr %.sroa.25278.0..sroa_idx279, align 8
  %.sroa.39.0..sroa_idx283 = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %i.gy = load <2 x i64>, ptr %.sroa.39.0..sroa_idx283, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8)
  br label %.thread173

bb.ca:                                            ; preds = %_RNvMs3_NtCs8ZPNfZ0ciAA_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE7end_seqB7_.exit
  %i.gz = ptrtoint ptr %.sroa.0.0.i to i64
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8)
  call fastcc void @_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueNtNtCs8ZPNfZ0ciAA_10serde_json5value5ValueEBF_(ptr noalias nofree noundef align 8 dereferenceable(32) %i.ab)
  br label %.thread173

bb.cb:                                            ; preds = %bb.cf, %bb.bz
  %i.ha = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs8Chj7Szqq0n_4core9panicking16panic_in_cleanup() #14
  unreachable

.thread173:                                       ; preds = %.thread241, %.thread239, %bb.ca, %bb.cc
  %.sroa.25278.3 = phi i64 [ %i.he, %bb.cc ], [ %i.gz, %bb.ca ], [ %i.gx, %.thread241 ], [ %.sroa.25278.0.copyload280, %.thread239 ]
  %.sroa.23.1 = phi i8 [ undef, %bb.cc ], [ undef, %bb.ca ], [ undef, %.thread241 ], [ %.sroa.23.0.copyload273, %.thread239 ]
  %.sroa.0.3 = phi i8 [ -1, %bb.cc ], [ -1, %bb.ca ], [ -1, %.thread241 ], [ %i.gt, %.thread239 ]
  %i.hb = phi <2 x i64> [ undef, %bb.cc ], [ undef, %bb.ca ], [ undef, %.thread241 ], [ %i.gy, %.thread239 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab)
  br label %bb.ag

bb.cc:                                            ; preds = %_RNvMs3_NtCs8ZPNfZ0ciAA_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE7end_seqB7_.exit
  %i.hc = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.hd = load ptr, ptr %i.hc, align 8, !nonnull !5, !align !11, !noundef !5
  %i.he = ptrtoint ptr %i.hd to i64
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8)
  call fastcc void @_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueNtNtCs8ZPNfZ0ciAA_10serde_json5error5ErrorEBF_(ptr nonnull %.sroa.0.0.i)
  br label %.thread173

bb.cd:                                            ; preds = %bb.ae
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z)
  store i64 24, ptr %i.z, align 8
  %i.hf = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCs8ZPNfZ0ciAA_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorB7_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.z)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z)
  %i.hg = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.hf, ptr %i.hg, align 8
  store i8 -1, ptr %0, align 8
  br label %bb.ah

bb.ce:                                            ; preds = %bb.ae
  %i.hh = add i64 %i.an, 1
  store i64 %i.hh, ptr %i.ah, align 8, !alias.scope !492
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y)
  call void @_RINvXNvXNtNtCs8ZPNfZ0ciAA_10serde_json5value2deNtB8_5ValueNtNtCsdnjrqM8ey3e_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_mapINtNtBa_2de9MapAccessNtNtBa_4read7StrReadEEBa_(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.y, ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %1, i1 noundef zeroext true)
  %i.hi = load i8, ptr %i.cv, align 8, !noundef !5
  %i.hj = add i8 %i.hi, 1
  store i8 %i.hj, ptr %i.cv, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.w, ptr noundef nonnull align 8 dereferenceable(32) %i.y, i64 32, i1 false)
  %i.hk = invoke fastcc noundef align 8 ptr @_RNvMs3_NtCs8ZPNfZ0ciAA_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE7end_mapB7_(ptr noalias nofree noundef align 8 dereferenceable(56) %1)
          to label %bb.cg unwind label %bb.cf     ; 5 uses

bb.cf:                                            ; preds = %bb.ce
  %i.hl = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCs8ZPNfZ0ciAA_10serde_json5value5ValueNtNtB11_5error5ErrorEEB11_(ptr noalias nofree noundef align 8 dereferenceable(32) %i.w) #17
          to label %common.resume unwind label %bb.cb

bb.cg:                                            ; preds = %bb.ce
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.x, ptr noundef nonnull align 8 dereferenceable(32) %i.y, i64 32, i1 false)
  %i.hm = getelementptr inbounds nuw i8, ptr %i.x, i64 32
  store ptr %i.hk, ptr %i.hm, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  %i.hn = load i8, ptr %i.x, align 8, !range !6, !noundef !5
  %i.ho = icmp eq i8 %i.hn, -1
  br i1 %i.ho, label %bb.ci, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  %.not = icmp eq ptr %i.hk, null
  br i1 %.not, label %.thread243, label %bb.cj

.thread243:                                       ; preds = %bb.ch
  %.sroa.0.0.copyload271 = load i8, ptr %i.y, align 8
  %.sroa.23.0..sroa_idx274 = getelementptr inbounds nuw i8, ptr %i.y, i64 1
  %.sroa.23.0.copyload275 = load i8, ptr %.sroa.23.0..sroa_idx274, align 1
  %.sroa.25.0..sroa_idx277 = getelementptr inbounds nuw i8, ptr %i.y, i64 2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %.sroa.25, ptr noundef nonnull align 2 dereferenceable(6) %.sroa.25.0..sroa_idx277, i64 6, i1 false)
  %.sroa.25278.0..sroa_idx281 = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %.sroa.25278.0.copyload282 = load i64, ptr %.sroa.25278.0..sroa_idx281, align 8
  %.sroa.39.0..sroa_idx285 = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.hp = load <2 x i64>, ptr %.sroa.39.0..sroa_idx285, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y)
  br label %.thread176

bb.ci:                                            ; preds = %bb.cg
  %i.hq = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.hr = load ptr, ptr %i.hq, align 8, !nonnull !5, !align !11, !noundef !5
  %i.hs = ptrtoint ptr %i.hr to i64               ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y)
  %.not179 = icmp eq ptr %i.hk, null
  br i1 %.not179, label %.thread176, label %bb.ck

bb.cj:                                            ; preds = %bb.ch
  %i.ht = ptrtoint ptr %i.hk to i64
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y)
  call fastcc void @_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueNtNtCs8ZPNfZ0ciAA_10serde_json5value5ValueEBF_(ptr noalias nofree noundef align 8 dereferenceable(32) %i.x)
  br label %.thread176

.thread176:                                       ; preds = %.thread243, %bb.cj, %bb.ck, %bb.ci
  %.sroa.25278.4 = phi i64 [ %i.hs, %bb.ci ], [ %i.hs, %bb.ck ], [ %.sroa.25278.0.copyload282, %.thread243 ], [ %i.ht, %bb.cj ]
  %.sroa.23.2 = phi i8 [ undef, %bb.ci ], [ undef, %bb.ck ], [ %.sroa.23.0.copyload275, %.thread243 ], [ undef, %bb.cj ]
  %.sroa.0.4 = phi i8 [ -1, %bb.ci ], [ -1, %bb.ck ], [ %.sroa.0.0.copyload271, %.thread243 ], [ -1, %bb.cj ]
  %i.hu = phi <2 x i64> [ undef, %bb.ci ], [ undef, %bb.ck ], [ %i.hp, %.thread243 ], [ undef, %bb.cj ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  br label %bb.ag

bb.ck:                                            ; preds = %bb.ci
  call fastcc void @_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueNtNtCs8ZPNfZ0ciAA_10serde_json5error5ErrorEBF_(ptr nonnull %i.hk)
  br label %.thread176

bb.cl:                                            ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  store i64 10, ptr %i.v, align 8
  %i.hv = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCs8ZPNfZ0ciAA_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorB7_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.v)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  br label %bb.cn

bb.cm:                                            ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae)
  call fastcc void @_RNvMs3_NtCs8ZPNfZ0ciAA_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE13parse_integerB7_(ptr noalias nofree noundef align 8 captures(address) dereferenceable(16) %i.ae, ptr noalias nofree noundef align 8 dereferenceable(56) %1, i1 noundef zeroext true)
  %i.hw = load i64, ptr %i.ae, align 8, !range !17, !noundef !5 ; 2 uses
  %i.hx = icmp eq i64 %i.hw, -1
  %i.hy = getelementptr inbounds nuw i8, ptr %i.ae, i64 8 ; 2 uses
  br i1 %i.hx, label %bb.co, label %bb.cp

bb.cn:                                            ; preds = %._crit_edge, %bb.cl
  %i.hz = phi ptr [ %i.dc, %._crit_edge ], [ %i.hv, %bb.cl ]
  %i.ia = call noundef nonnull align 8 ptr @_RINvMs0_NtCs8ZPNfZ0ciAA_10serde_json5errorNtB6_5Error12fix_positionNCNvMs3_NtB8_2deINtB1b_12DeserializerNtNtB8_4read7StrReadE12fix_position0EB8_(ptr noalias noundef nonnull align 8 %i.hz, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1)
  %i.ib = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ia, ptr %i.ib, align 8
  store i8 -1, ptr %0, align 8
  br label %bb.cu

bb.co:                                            ; preds = %bb.cm
  %i.ic = load ptr, ptr %i.hy, align 8, !nonnull !5, !align !11, !noundef !5
  %i.id = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ic, ptr %i.id, align 8
  store i8 -1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae)
  br label %bb.ah

bb.cp:                                            ; preds = %bb.cm
  %.sroa.2103.0.copyload = load i64, ptr %i.hy, align 8 ; 3 uses
  %i.ie = insertelement <2 x i64> <i64 poison, i64 undef>, i64 %.sroa.2103.0.copyload, i64 0 ; 3 uses
  switch i64 %i.hw, label %default.unreachable376 [
    i64 0, label %bb.cq
    i64 1, label %_RINvMs2_NtCs8ZPNfZ0ciAA_10serde_json2deNtB6_12ParserNumber5visitNtNvXNtNtB8_5value2deNtB17_5ValueNtNtCsdnjrqM8ey3e_10serde_core2de11Deserialize11deserialize12ValueVisitorEB8_.exit87
    i64 2, label %bb.ct
  ]

bb.cq:                                            ; preds = %bb.cp
  %i.if = bitcast i64 %.sroa.2103.0.copyload to double
  %i.ig = tail call double @llvm.fabs.f64(double %i.if)
  %i.ih = fcmp ueq double %i.ig, +inf
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !493
  br i1 %i.ih, label %bb.cr, label %bb.cs

bb.cr:                                            ; preds = %bb.cq
  %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx4.sroa_idx.i.i80 = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %.sroa.5.sroa.4.0.copyload9.i.i81 = load i64, ptr %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx4.sroa_idx.i.i80, align 8, !alias.scope !494, !noalias !495
  %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx4.sroa_idx.i.i82 = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.ii = load <2 x i64>, ptr %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx4.sroa_idx.i.i82, align 8, !alias.scope !494, !noalias !495
  br label %_RINvXNvXNtNtCs8ZPNfZ0ciAA_10serde_json5value2deNtB8_5ValueNtNtCsdnjrqM8ey3e_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_f64NtNtBa_5error5ErrorEBa_.exit.i72

bb.cs:                                            ; preds = %bb.cq
  store i8 0, ptr %i.h, align 8, !noalias !493
  tail call void @llvm.experimental.noalias.scope.decl(metadata !496)
  call fastcc void @_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueNtNtCs8ZPNfZ0ciAA_10serde_json5value5ValueEBF_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.h), !noalias !497
  br label %_RINvXNvXNtNtCs8ZPNfZ0ciAA_10serde_json5value2deNtB8_5ValueNtNtCsdnjrqM8ey3e_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_f64NtNtBa_5error5ErrorEBa_.exit.i72

_RINvXNvXNtNtCs8ZPNfZ0ciAA_10serde_json5value2deNtB8_5ValueNtNtCsdnjrqM8ey3e_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_f64NtNtBa_5error5ErrorEBa_.exit.i72: ; preds = %bb.cs, %bb.cr
  %.sroa.5.sroa.4.0.i.i74 = phi i64 [ %.sroa.5.sroa.4.0.copyload9.i.i81, %bb.cr ], [ 2, %bb.cs ]
  %.sroa.0.0.i.i76 = phi i8 [ 0, %bb.cr ], [ 2, %bb.cs ]
  %i.ij = phi <2 x i64> [ %i.ii, %bb.cr ], [ %i.ie, %bb.cs ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !493
  br label %_RINvMs2_NtCs8ZPNfZ0ciAA_10serde_json2deNtB6_12ParserNumber5visitNtNvXNtNtB8_5value2deNtB17_5ValueNtNtCsdnjrqM8ey3e_10serde_core2de11Deserialize11deserialize12ValueVisitorEB8_.exit87

bb.ct:                                            ; preds = %bb.cp
  %.lobit.i.i67 = lshr i64 %.sroa.2103.0.copyload, 63
  br label %_RINvMs2_NtCs8ZPNfZ0ciAA_10serde_json2deNtB6_12ParserNumber5visitNtNvXNtNtB8_5value2deNtB17_5ValueNtNtCsdnjrqM8ey3e_10serde_core2de11Deserialize11deserialize12ValueVisitorEB8_.exit87

_RINvMs2_NtCs8ZPNfZ0ciAA_10serde_json2deNtB6_12ParserNumber5visitNtNvXNtNtB8_5value2deNtB17_5ValueNtNtCsdnjrqM8ey3e_10serde_core2de11Deserialize11deserialize12ValueVisitorEB8_.exit87: ; preds = %bb.cp, %_RINvXNvXNtNtCs8ZPNfZ0ciAA_10serde_json5value2deNtB8_5ValueNtNtCsdnjrqM8ey3e_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_f64NtNtBa_5error5ErrorEBa_.exit.i72, %bb.ct
  %.sroa.25278.5 = phi i64 [ %.sroa.5.sroa.4.0.i.i74, %_RINvXNvXNtNtCs8ZPNfZ0ciAA_10serde_json5value2deNtB8_5ValueNtNtCsdnjrqM8ey3e_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_f64NtNtBa_5error5ErrorEBa_.exit.i72 ], [ %.lobit.i.i67, %bb.ct ], [ 0, %bb.cp ]
  %.sroa.0.5 = phi i8 [ %.sroa.0.0.i.i76, %_RINvXNvXNtNtCs8ZPNfZ0ciAA_10serde_json5value2deNtB8_5ValueNtNtCsdnjrqM8ey3e_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_f64NtNtBa_5error5ErrorEBa_.exit.i72 ], [ 2, %bb.ct ], [ 2, %bb.cp ]
  %i.ik = phi <2 x i64> [ %i.ij, %_RINvXNvXNtNtCs8ZPNfZ0ciAA_10serde_json5value2deNtB8_5ValueNtNtCsdnjrqM8ey3e_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_f64NtNtBa_5error5ErrorEBa_.exit.i72 ], [ %i.ie, %bb.ct ], [ %i.ie, %bb.cp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae)
  br label %.thread

.thread:                                          ; preds = %_RINvXNvXNtNtCs8ZPNfZ0ciAA_10serde_json5value2deNtB8_5ValueNtNtCsdnjrqM8ey3e_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_strNtNtBa_5error5ErrorEBa_.exit, %_RINvMs2_NtCs8ZPNfZ0ciAA_10serde_json2deNtB6_12ParserNumber5visitNtNvXNtNtB8_5value2deNtB17_5ValueNtNtCsdnjrqM8ey3e_10serde_core2de11Deserialize11deserialize12ValueVisitorEB8_.exit, %_RINvMs2_NtCs8ZPNfZ0ciAA_10serde_json2deNtB6_12ParserNumber5visitNtNvXNtNtB8_5value2deNtB17_5ValueNtNtCsdnjrqM8ey3e_10serde_core2de11Deserialize11deserialize12ValueVisitorEB8_.exit87, %bb.z, %bb.q, %bb.j, %bb.ag
  %.sroa.25278.6 = phi i64 [ %.sroa.25278.0, %bb.ag ], [ undef, %bb.q ], [ undef, %bb.z ], [ undef, %bb.j ], [ %.sroa.25278.2, %_RINvXNvXNtNtCs8ZPNfZ0ciAA_10serde_json5value2deNtB8_5ValueNtNtCsdnjrqM8ey3e_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_strNtNtBa_5error5ErrorEBa_.exit ], [ %.sroa.25278.1, %_RINvMs2_NtCs8ZPNfZ0ciAA_10serde_json2deNtB6_12ParserNumber5visitNtNvXNtNtB8_5value2deNtB17_5ValueNtNtCsdnjrqM8ey3e_10serde_core2de11Deserialize11deserialize12ValueVisitorEB8_.exit ], [ %.sroa.25278.5, %_RINvMs2_NtCs8ZPNfZ0ciAA_10serde_json2deNtB6_12ParserNumber5visitNtNvXNtNtB8_5value2deNtB17_5ValueNtNtCsdnjrqM8ey3e_10serde_core2de11Deserialize11deserialize12ValueVisitorEB8_.exit87 ]
  %.sroa.23.3 = phi i8 [ %.sroa.23.0, %bb.ag ], [ 1, %bb.q ], [ 0, %bb.z ], [ undef, %bb.j ], [ undef, %_RINvXNvXNtNtCs8ZPNfZ0ciAA_10serde_json5value2deNtB8_5ValueNtNtCsdnjrqM8ey3e_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_strNtNtBa_5error5ErrorEBa_.exit ], [ undef, %_RINvMs2_NtCs8ZPNfZ0ciAA_10serde_json2deNtB6_12ParserNumber5visitNtNvXNtNtB8_5value2deNtB17_5ValueNtNtCsdnjrqM8ey3e_10serde_core2de11Deserialize11deserialize12ValueVisitorEB8_.exit ], [ undef, %_RINvMs2_NtCs8ZPNfZ0ciAA_10serde_json2deNtB6_12ParserNumber5visitNtNvXNtNtB8_5value2deNtB17_5ValueNtNtCsdnjrqM8ey3e_10serde_core2de11Deserialize11deserialize12ValueVisitorEB8_.exit87 ]
  %.sroa.0.6 = phi i8 [ %.sroa.0.0, %bb.ag ], [ 1, %bb.q ], [ 1, %bb.z ], [ 0, %bb.j ], [ 3, %_RINvXNvXNtNtCs8ZPNfZ0ciAA_10serde_json5value2deNtB8_5ValueNtNtCsdnjrqM8ey3e_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_strNtNtBa_5error5ErrorEBa_.exit ], [ %.sroa.0.1, %_RINvMs2_NtCs8ZPNfZ0ciAA_10serde_json2deNtB6_12ParserNumber5visitNtNvXNtNtB8_5value2deNtB17_5ValueNtNtCsdnjrqM8ey3e_10serde_core2de11Deserialize11deserialize12ValueVisitorEB8_.exit ], [ %.sroa.0.5, %_RINvMs2_NtCs8ZPNfZ0ciAA_10serde_json2deNtB6_12ParserNumber5visitNtNvXNtNtB8_5value2deNtB17_5ValueNtNtCsdnjrqM8ey3e_10serde_core2de11Deserialize11deserialize12ValueVisitorEB8_.exit87 ]
  %i.il = phi <2 x i64> [ %i.da, %bb.ag ], [ undef, %bb.q ], [ undef, %bb.z ], [ undef, %bb.j ], [ %i.eh, %_RINvXNvXNtNtCs8ZPNfZ0ciAA_10serde_json5value2deNtB8_5ValueNtNtCsdnjrqM8ey3e_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_strNtNtBa_5error5ErrorEBa_.exit ], [ %i.dn, %_RINvMs2_NtCs8ZPNfZ0ciAA_10serde_json2deNtB6_12ParserNumber5visitNtNvXNtNtB8_5value2deNtB17_5ValueNtNtCsdnjrqM8ey3e_10serde_core2de11Deserialize11deserialize12ValueVisitorEB8_.exit ], [ %i.ik, %_RINvMs2_NtCs8ZPNfZ0ciAA_10serde_json2deNtB6_12ParserNumber5visitNtNvXNtNtB8_5value2deNtB17_5ValueNtNtCsdnjrqM8ey3e_10serde_core2de11Deserialize11deserialize12ValueVisitorEB8_.exit87 ]
  store i8 %.sroa.0.6, ptr %0, align 8
  %.sroa.23.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %.sroa.23.3, ptr %.sroa.23.0..sroa_idx, align 1
  %.sroa.25.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %.sroa.25.0..sroa_idx, ptr noundef nonnull align 2 dereferenceable(6) %.sroa.25, i64 6, i1 false)
  %.sroa.25278.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.25278.6, ptr %.sroa.25278.0..sroa_idx, align 8
  %.sroa.39.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store <2 x i64> %i.il, ptr %.sroa.39.0..sroa_idx, align 8
  br label %bb.cu

bb.cu:                                            ; preds = %bb.cn, %.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.25)
  br label %bb.cv

bb.cv:                                            ; preds = %bb.cu, %.loopexit184, %bb.ah
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs9_NtCs8ZPNfZ0ciAA_10serde_json2deINtB6_9MapAccessNtNtB8_4read7StrReadENtNtCsdnjrqM8ey3e_10serde_core2de9MapAccess13next_key_seedINtNtCs8Chj7Szqq0n_4core6marker11PhantomDataNtNtCsbqH9stoieM8_5alloc6string6StringEEB8_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 8)) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = alloca [16 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call fastcc void @_RINvNvXs9_NtCs8ZPNfZ0ciAA_10serde_json2deINtB8_9MapAccesspENtNtCsdnjrqM8ey3e_10serde_core2de9MapAccess13next_key_seed12has_next_keyNtNtBa_4read7StrReadEBa_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %i.b, ptr noalias nofree noundef align 8 dereferenceable(16) %1)
  %i.c = load i8, ptr %i.b, align 8, !range !10, !noundef !5
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !5, !align !11, !noundef !5
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.f, ptr %i.g, align 8
  store i64 -2, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  %i.i = load i8, ptr %i.h, align 1, !range !10, !noundef !5
  %i.j = trunc nuw i8 %i.i to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br i1 %i.j, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  store i64 -1, ptr %0, align 8
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.k = load ptr, ptr %1, align 8, !nonnull !5, !align !11, !noundef !5
  call void @_RINvXs6_NtNtCsdnjrqM8ey3e_10serde_core2de5implsNtNtCsbqH9stoieM8_5alloc6string6StringNtB8_11Deserialize11deserializeINtNtCs8ZPNfZ0ciAA_10serde_json2de6MapKeyNtNtB1V_4read7StrReadEEB1V_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.k)
  %i.l = load i64, ptr %i.a, align 8, !range !12, !noundef !5
  %i.m = icmp eq i64 %i.l, -1
  br i1 %i.m, label %bb.g, label %bb.h

bb.f:                                             ; preds = %bb.h, %bb.g, %bb.d, %bb.b
  ret void

bb.g:                                             ; preds = %bb.e
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !nonnull !5, !align !11, !noundef !5
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.o, ptr %i.p, align 8
  store i64 -2, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.f

bb.h:                                             ; preds = %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.f
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs9_NtCs8ZPNfZ0ciAA_10serde_json2deINtB6_9MapAccessNtNtB8_4read7StrReadENtNtCsdnjrqM8ey3e_10serde_core2de9MapAccess13next_key_seedNtNtNtB8_5value2de13KeyClassifierEB8_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 8)) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = alloca [16 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call fastcc void @_RINvNvXs9_NtCs8ZPNfZ0ciAA_10serde_json2deINtB8_9MapAccesspENtNtCsdnjrqM8ey3e_10serde_core2de9MapAccess13next_key_seed12has_next_keyNtNtBa_4read7StrReadEBa_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %i.b, ptr noalias nofree noundef align 8 dereferenceable(16) %1)
  %i.c = load i8, ptr %i.b, align 8, !range !10, !noundef !5
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !5, !align !11, !noundef !5
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.f, ptr %i.g, align 8
  store i64 -2, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  %i.i = load i8, ptr %i.h, align 1, !range !10, !noundef !5
  %i.j = trunc nuw i8 %i.i to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br i1 %i.j, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  store i64 -1, ptr %0, align 8
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.k = load ptr, ptr %1, align 8, !nonnull !5, !align !11, !noundef !5
  call void @_RINvXsk_NtNtCs8ZPNfZ0ciAA_10serde_json5value2deNtB6_13KeyClassifierNtNtCsdnjrqM8ey3e_10serde_core2de15DeserializeSeed11deserializeINtNtBa_2de6MapKeyNtNtBa_4read7StrReadEEBa_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.k)
  %i.l = load i64, ptr %i.a, align 8, !range !12, !noundef !5
  %i.m = icmp eq i64 %i.l, -1
  br i1 %i.m, label %bb.g, label %bb.h

bb.f:                                             ; preds = %bb.h, %bb.g, %bb.d, %bb.b
  ret void

bb.g:                                             ; preds = %bb.e
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !nonnull !5, !align !11, !noundef !5
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.o, ptr %i.p, align 8
  store i64 -2, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.f

bb.h:                                             ; preds = %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.f
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs9_NtCs8ZPNfZ0ciAA_10serde_json2deINtB6_9MapAccessNtNtB8_4read7StrReadENtNtCsdnjrqM8ey3e_10serde_core2de9MapAccess15next_value_seedINtNtCs8Chj7Szqq0n_4core6marker11PhantomDataNtNtB8_5value5ValueEEB8_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = load ptr, ptr %1, align 8, !nonnull !5, !align !11, !noundef !5 ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !514)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !515)
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 40 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.f = load i64, ptr %i.e, align 8, !alias.scope !516, !noalias !517, !noundef !5 ; 2 uses
  %.promoted.i.i = load i64, ptr %i.d, align 8, !alias.scope !518, !noalias !519 ; 2 uses
  %i.g = icmp ult i64 %.promoted.i.i, %i.f
  br i1 %i.g, label %.lr.ph.i.i, label %.loopexit.i

.lr.ph.i.i:                                       ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.i = load ptr, ptr %i.h, align 8, !alias.scope !516, !noalias !517, !nonnull !5, !noundef !5
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.lr.ph.i.i
  %i.j = phi i64 [ %.promoted.i.i, %.lr.ph.i.i ], [ %i.m, %bb.c ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !520)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !521)
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.j
  %i.l = load i8, ptr %i.k, align 1, !noalias !522, !noundef !5
  switch i8 %i.l, label %bb.d [
    i8 32, label %bb.c
    i8 10, label %bb.c
    i8 9, label %bb.c
    i8 13, label %bb.c
    i8 58, label %bb.f
  ], !prof !9

bb.c:                                             ; preds = %bb.b, %bb.b, %bb.b, %bb.b
  %i.m = add i64 %i.j, 1                          ; 3 uses
  store i64 %i.m, ptr %i.d, align 8, !alias.scope !523, !noalias !519
  %exitcond.not.i.i = icmp eq i64 %i.m, %i.f
  br i1 %exitcond.not.i.i, label %.loopexit.i, label %bb.b

.loopexit.i:                                      ; preds = %bb.c, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !514
  store i64 3, ptr %i.a, align 8, !noalias !514
  %i.n = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCs8ZPNfZ0ciAA_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorB7_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.c, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !514
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !514
  store i64 6, ptr %i.b, align 8, !noalias !514
  %i.o = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCs8ZPNfZ0ciAA_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorB7_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.c, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !514
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %.loopexit.i
  %.sroa.0.0.i.ph = phi ptr [ %i.n, %.loopexit.i ], [ %i.o, %bb.d ]
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.0.0.i.ph, ptr %i.p, align 8
  store i8 -1, ptr %0, align 8
  br label %bb.g

bb.f:                                             ; preds = %bb.b
  %i.q = add i64 %i.j, 1
  store i64 %i.q, ptr %i.d, align 8, !alias.scope !524
  tail call fastcc void @_RINvXs5_NtCs8ZPNfZ0ciAA_10serde_json2deQINtB6_12DeserializerNtNtB8_4read7StrReadENtNtCsdnjrqM8ey3e_10serde_core2de12Deserializer15deserialize_anyNtNvXNtNtB8_5value2deNtB2q_5ValueNtB1j_11Deserialize11deserialize12ValueVisitorEB8_(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.c) #16, !inline_history !513
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  ret void
}

; Function Attrs: nonlazybind uwtable
define noundef nonnull align 8 ptr @_RNvMs2_NtCs8ZPNfZ0ciAA_10serde_json2deNtB5_12ParserNumber12invalid_type(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(16) %0, ptr noundef nonnull %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 5 uses
  %i.c = alloca [24 x i8], align 8                ; 5 uses
  %i.d = load i64, ptr %0, align 8, !range !18, !noundef !5
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  switch i64 %i.d, label %default.unreachable1 [
    i64 0, label %bb.b
    i64 1, label %bb.c
    i64 2, label %bb.d
  ]

default.unreachable1:                             ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.f = load double, ptr %i.e, align 8, !noundef !5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store double %i.f, ptr %i.g, align 8
  store i8 3, ptr %i.c, align 8
  %i.h = call noundef nonnull align 8 ptr @_RNvXs6_NtCs8ZPNfZ0ciAA_10serde_json5errorNtB5_5ErrorNtNtCsdnjrqM8ey3e_10serde_core2de5Error12invalid_type(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.c, ptr noundef nonnull %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.i = load i64, ptr %i.e, align 8, !noundef !5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %i.i, ptr %i.j, align 8
  store i8 1, ptr %i.b, align 8
  %i.k = call noundef nonnull align 8 ptr @_RNvXs6_NtCs8ZPNfZ0ciAA_10serde_json5errorNtB5_5ErrorNtNtCsdnjrqM8ey3e_10serde_core2de5Error12invalid_type(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.b, ptr noundef nonnull %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  %i.l = load i64, ptr %i.e, align 8, !noundef !5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.l, ptr %i.m, align 8
  store i8 2, ptr %i.a, align 8
  %i.n = call noundef nonnull align 8 ptr @_RNvXs6_NtCs8ZPNfZ0ciAA_10serde_json5errorNtB5_5ErrorNtNtCsdnjrqM8ey3e_10serde_core2de5Error12invalid_type(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.a, ptr noundef nonnull %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b
  %.sroa.0.0 = phi ptr [ %i.h, %bb.b ], [ %i.k, %bb.c ], [ %i.n, %bb.d ]
  ret ptr %.sroa.0.0
}

; Function Attrs: cold nonlazybind uwtable
define internal fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCs8ZPNfZ0ciAA_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorB7_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = invoke { i64, i64 } @_RNvXs8_NtCs8ZPNfZ0ciAA_10serde_json4readNtB5_7StrReadNtB5_4Read13peek_position(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.a)
          to label %bb.b unwind label %bb.d       ; 2 uses

bb.b:                                             ; preds = %bb.a
  %i.c = extractvalue { i64, i64 } %i.b, 0
  %i.d = extractvalue { i64, i64 } %i.b, 1
  %i.e = tail call noundef nonnull align 8 ptr @_RNvMs0_NtCs8ZPNfZ0ciAA_10serde_json5errorNtB5_5Error6syntax(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, i64 noundef %i.c, i64 noundef %i.d)
  ret ptr %i.e

bb.c:                                             ; preds = %bb.d
  resume { ptr, i32 } %i.f

bb.d:                                             ; preds = %bb.a
  %i.f = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueNtNtCs8ZPNfZ0ciAA_10serde_json5error9ErrorCodeEBF_(ptr noalias nofree noundef align 8 dereferenceable(24) %1) #17
          to label %bb.c unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs8Chj7Szqq0n_4core9panicking16panic_in_cleanup() #14
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMs3_NtCs8ZPNfZ0ciAA_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE13parse_decimalB7_(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef nonnull align 8 captures(address, read_provenance) dereferenceable(56) %1, i1 noundef zeroext %2, i64 noundef %3, i32 noundef %4) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 3 uses
  %i.f = load i64, ptr %i.e, align 8, !alias.scope !538, !noundef !5 ; 2 uses
  %i.g = add i64 %i.f, 1                          ; 3 uses
  store i64 %i.g, ptr %i.e, align 8, !alias.scope !538
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.i = load i64, ptr %i.h, align 8, !alias.scope !539, !noalias !540, !noundef !5 ; 3 uses
  %i.j = icmp ult i64 %i.g, %i.i
  br i1 %i.j, label %_RNvXs8_NtCs8ZPNfZ0ciAA_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit.lr.ph, label %.thread.thread

_RNvXs8_NtCs8ZPNfZ0ciAA_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit.lr.ph: ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.l = load ptr, ptr %i.k, align 8, !alias.scope !539, !noalias !540, !nonnull !5, !noundef !5
  %i.m = trunc i64 %i.f to i32
  %i.n = add i32 %i.m, 1                          ; 2 uses
  %i.o = trunc i64 %i.i to i32                    ; 2 uses
  %i.p = sub i32 %i.n, %i.o
  br label %_RNvXs8_NtCs8ZPNfZ0ciAA_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit

_RNvXs8_NtCs8ZPNfZ0ciAA_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit: ; preds = %_RNvXs8_NtCs8ZPNfZ0ciAA_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit.lr.ph, %bb.o
  %.sroa.0.060 = phi i64 [ %3, %_RNvXs8_NtCs8ZPNfZ0ciAA_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit.lr.ph ], [ %i.be, %bb.o ] ; 6 uses
  %.sroa.07.059 = phi i32 [ 0, %_RNvXs8_NtCs8ZPNfZ0ciAA_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit.lr.ph ], [ %i.bf, %bb.o ] ; 4 uses
  %i.q = phi i64 [ %i.g, %_RNvXs8_NtCs8ZPNfZ0ciAA_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit.lr.ph ], [ %i.bc, %bb.o ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !541)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !542)
  %i.r = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.q
  %i.s = load i8, ptr %i.r, align 1, !noalias !543, !noundef !5 ; 2 uses
  %i.t = add i8 %i.s, -48                         ; 3 uses
  %or.cond = icmp ult i8 %i.t, 10
  br i1 %or.cond, label %bb.c, label %bb.b

bb.b:                                             ; preds = %_RNvXs8_NtCs8ZPNfZ0ciAA_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit
  %i.u = icmp eq i32 %.sroa.07.059, 0
  br i1 %i.u, label %bb.d, label %_RNvXs8_NtCs8ZPNfZ0ciAA_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit28

.thread:                                          ; preds = %bb.o
  %i.v = icmp eq i32 %i.n, %i.o
  br i1 %i.v, label %.thread.thread, label %_RNvXs8_NtCs8ZPNfZ0ciAA_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit28.thread

_RNvXs8_NtCs8ZPNfZ0ciAA_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit28.thread: ; preds = %.thread
  %i.w = add i32 %i.p, %4
  br label %bb.e

bb.c:                                             ; preds = %_RNvXs8_NtCs8ZPNfZ0ciAA_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit
  %i.x = zext nneg i8 %i.t to i64
  %i.y = icmp ugt i64 %.sroa.0.060, 1844674407370955160
  br i1 %i.y, label %bb.n, label %bb.o

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i64 13, ptr %i.d, align 8
  %i.z = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCs8ZPNfZ0ciAA_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorB7_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.z, ptr %i.aa, align 8
  store i64 1, ptr %0, align 8
  br label %bb.m

.thread.thread:                                   ; preds = %bb.a, %.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i64 5, ptr %i.c, align 8
  %i.ab = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCs8ZPNfZ0ciAA_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorB7_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ab, ptr %i.ac, align 8
  store i64 1, ptr %0, align 8
  br label %bb.m

_RNvXs8_NtCs8ZPNfZ0ciAA_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit28: ; preds = %bb.b
  %i.ad = add i32 %.sroa.07.059, %4               ; 2 uses
  switch i8 %i.s, label %bb.e [
    i8 101, label %bb.l
    i8 69, label %bb.l
  ]

bb.e:                                             ; preds = %_RNvXs8_NtCs8ZPNfZ0ciAA_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit28.thread, %_RNvXs8_NtCs8ZPNfZ0ciAA_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit28
  %.sroa.0.056 = phi i64 [ %i.be, %_RNvXs8_NtCs8ZPNfZ0ciAA_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit28.thread ], [ %.sroa.0.060, %_RNvXs8_NtCs8ZPNfZ0ciAA_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit28 ]
  %i.ae = phi i32 [ %i.w, %_RNvXs8_NtCs8ZPNfZ0ciAA_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit28.thread ], [ %i.ad, %_RNvXs8_NtCs8ZPNfZ0ciAA_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit28 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !544)
  %i.af = uitofp i64 %.sroa.0.056 to double       ; 2 uses
  %.sroa.012.020.i = tail call i32 @llvm.abs.i32(i32 %i.ae, i1 false) ; 2 uses
  %i.ag = icmp ult i32 %.sroa.012.020.i, 309
  br i1 %i.ag, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.e, %bb.g
  %.sroa.0.022.i = phi i32 [ %i.ao, %bb.g ], [ %i.ae, %bb.e ] ; 2 uses
  %.sroa.04.021.i = phi double [ %i.an, %bb.g ], [ %i.af, %bb.e ] ; 3 uses
  %i.ah = fcmp oeq double %.sroa.04.021.i, 0.000000e+00
  br i1 %i.ah, label %.loopexit.i, label %bb.f

._crit_edge.i:                                    ; preds = %bb.g, %bb.e
  %.sroa.04.0.lcssa.i = phi double [ %i.af, %bb.e ], [ %i.an, %bb.g ] ; 2 uses
  %.sroa.0.0.lcssa.i = phi i32 [ %i.ae, %bb.e ], [ %i.ao, %bb.g ]
  %.sroa.012.0.lcssa.i = phi i32 [ %.sroa.012.020.i, %bb.e ], [ %.sroa.012.0.i, %bb.g ]
  %i.ai = zext nneg i32 %.sroa.012.0.lcssa.i to i64
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr @_RNvNtCs8ZPNfZ0ciAA_10serde_json2de5POW10, i64 %i.ai
  %i.ak = load double, ptr %i.aj, align 8, !noalias !545, !noundef !5 ; 2 uses
  %i.al = icmp sgt i32 %.sroa.0.0.lcssa.i, -1
  br i1 %i.al, label %bb.j, label %bb.i

bb.f:                                             ; preds = %.lr.ph.i
  %i.am = icmp sgt i32 %.sroa.0.022.i, -1
  br i1 %i.am, label %bb.h, label %bb.g, !prof !19

bb.g:                                             ; preds = %bb.f
end_hunk_0
begin_hunk_1_@_RNvMs3_NtCs8ZPNfZ0ciAA_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE23parse_any_signed_numberB7_:bb.a
.thread:                                          ; preds = %bb.j
  %i.y = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

bb.j:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 13, ptr %i.a, align 8
  %i.z = invoke fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCs8ZPNfZ0ciAA_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorB7_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.a)
          to label %.thread36 unwind label %.thread

bb.k:                                             ; preds = %bb.f
  %.sroa.02.0.copyload = load i64, ptr %i.c, align 8 ; 2 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 8 ; 2 uses
  %i.aa = icmp eq i64 %.sroa.02.0.copyload, -1
  br i1 %i.aa, label %bb.l, label %.thread40, !prof !825

.thread36:                                        ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.l

bb.l:                                             ; preds = %.thread36, %bb.k
  %.sroa.7.039 = phi ptr [ %i.z, %.thread36 ], [ %.sroa.7.0.copyload, %bb.k ]
  %i.ab = invoke noundef nonnull align 8 ptr @_RINvMs0_NtCs8ZPNfZ0ciAA_10serde_json5errorNtB6_5Error12fix_positionNCNvMs3_NtB8_2deINtB1b_12DeserializerNtNtB8_4read7StrReadE12fix_position0EB8_(ptr noalias noundef nonnull align 8 %.sroa.7.039, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1)
          to label %bb.m unwind label %bb.i

.thread40:                                        ; preds = %bb.k
  store i64 %.sroa.02.0.copyload, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.7.0.copyload, ptr %.sroa.4.0..sroa_idx, align 8
  br label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCs8ZPNfZ0ciAA_10serde_json2de12ParserNumberNtNtB11_5error5ErrorEEB11_.exit20

bb.m:                                             ; preds = %bb.l
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ab, ptr %i.ac, align 8
  store i64 -1, ptr %0, align 8
  %.val12 = load i64, ptr %i.c, align 8, !range !17
  %.not.i19 = icmp eq i64 %.val12, -1
  %or.cond41 = select i1 %i.u, i1 %.not.i19, i1 false
  br i1 %or.cond41, label %bb.n, label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCs8ZPNfZ0ciAA_10serde_json2de12ParserNumberNtNtB11_5error5ErrorEEB11_.exit20

_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCs8ZPNfZ0ciAA_10serde_json2de12ParserNumberNtNtB11_5error5ErrorEEB11_.exit20: ; preds = %bb.n, %.thread40, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.ad = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.val13 = load ptr, ptr %i.ad, align 8, !nonnull !5, !noundef !5
  tail call fastcc void @_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueNtNtCs8ZPNfZ0ciAA_10serde_json5error5ErrorEBF_(ptr nonnull %.val13)
  br label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCs8ZPNfZ0ciAA_10serde_json2de12ParserNumberNtNtB11_5error5ErrorEEB11_.exit20

bb.o:                                             ; preds = %bb.c, %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCs8ZPNfZ0ciAA_10serde_json2de12ParserNumberNtNtB11_5error5ErrorEEB11_.exit20
  ret void

_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCs8ZPNfZ0ciAA_10serde_json2de12ParserNumberNtNtB11_5error5ErrorEEB11_.exit22: ; preds = %bb.p, %bb.q, %bb.i
  %.pn33 = phi { ptr, i32 } [ %i.x, %bb.i ], [ %.pn34, %bb.q ], [ %.pn34, %bb.p ]
  resume { ptr, i32 } %.pn33

bb.p:                                             ; preds = %.thread, %bb.i
  %.pn34 = phi { ptr, i32 } [ %i.y, %.thread ], [ %i.x, %bb.i ] ; 2 uses
  %.val = load i64, ptr %i.c, align 8, !range !17, !noundef !5
  %.not.i21 = icmp eq i64 %.val, -1
  br i1 %.not.i21, label %bb.q, label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCs8ZPNfZ0ciAA_10serde_json2de12ParserNumberNtNtB11_5error5ErrorEEB11_.exit22

bb.q:                                             ; preds = %bb.p
  %i.ae = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.val11 = load ptr, ptr %i.ae, align 8, !nonnull !5, !noundef !5
  invoke fastcc void @_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueNtNtCs8ZPNfZ0ciAA_10serde_json5error5ErrorEBF_(ptr nonnull %.val11)
          to label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCs8ZPNfZ0ciAA_10serde_json2de12ParserNumberNtNtB11_5error5ErrorEEB11_.exit22 unwind label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.af = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs8Chj7Szqq0n_4core9panicking16panic_in_cleanup() #14
  unreachable
}

; Function Attrs: cold noinline nonlazybind uwtable
define void @_RNvMs3_NtCs8ZPNfZ0ciAA_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE23parse_exponent_overflowB7_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef align 8 captures(address, read_provenance) dereferenceable(56) %1, i1 noundef zeroext %2, i1 noundef zeroext %3, i1 noundef zeroext %4) unnamed_addr #3 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %.not = xor i1 %4, true
  %brmerge = or i1 %3, %.not
  br i1 %brmerge, label %.preheader, label %bb.b, !prof !834

.preheader:                                       ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.d = load i64, ptr %i.c, align 8, !alias.scope !835, !noalias !836, !noundef !5 ; 2 uses
  %.promoted = load i64, ptr %i.b, align 8        ; 2 uses
  %i.e = icmp ult i64 %.promoted, %i.d
  br i1 %i.e, label %_RNvXs8_NtCs8ZPNfZ0ciAA_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit.lr.ph, label %_RNvXs8_NtCs8ZPNfZ0ciAA_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit.thread

_RNvXs8_NtCs8ZPNfZ0ciAA_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit.lr.ph: ; preds = %.preheader
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !alias.scope !835, !noalias !836, !nonnull !5, !noundef !5
  br label %_RNvXs8_NtCs8ZPNfZ0ciAA_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 14, ptr %i.a, align 8
  %i.h = call noundef nonnull align 8 ptr @_RNvMs3_NtCs8ZPNfZ0ciAA_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE5errorB7_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.h, ptr %i.i, align 8
  br label %bb.c

bb.c:                                             ; preds = %_RNvXs8_NtCs8ZPNfZ0ciAA_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit.thread, %bb.b
  %storemerge = phi i64 [ 1, %bb.b ], [ 0, %_RNvXs8_NtCs8ZPNfZ0ciAA_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit.thread ]
  store i64 %storemerge, ptr %0, align 8
  ret void

_RNvXs8_NtCs8ZPNfZ0ciAA_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit: ; preds = %_RNvXs8_NtCs8ZPNfZ0ciAA_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit.lr.ph, %bb.d
  %i.j = phi i64 [ %.promoted, %_RNvXs8_NtCs8ZPNfZ0ciAA_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit.lr.ph ], [ %i.p, %bb.d ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !837)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !838)
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.j
  %i.l = load i8, ptr %i.k, align 1, !noalias !839, !noundef !5
  %i.m = add i8 %i.l, -48
  %i.n = icmp ult i8 %i.m, 10
  br i1 %i.n, label %bb.d, label %_RNvXs8_NtCs8ZPNfZ0ciAA_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit.thread

_RNvXs8_NtCs8ZPNfZ0ciAA_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit.thread: ; preds = %_RNvXs8_NtCs8ZPNfZ0ciAA_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit, %bb.d, %.preheader
  %. = select i1 %2, double 0.000000e+00, double -0.000000e+00
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  store double %., ptr %i.o, align 8
  br label %bb.c

bb.d:                                             ; preds = %_RNvXs8_NtCs8ZPNfZ0ciAA_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit
  %i.p = add i64 %i.j, 1                          ; 3 uses
  store i64 %i.p, ptr %i.b, align 8, !alias.scope !840
  %exitcond.not = icmp eq i64 %i.p, %i.d
  br i1 %exitcond.not, label %_RNvXs8_NtCs8ZPNfZ0ciAA_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit.thread, label %_RNvXs8_NtCs8ZPNfZ0ciAA_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit
}

; Function Attrs: cold nonlazybind uwtable
define hidden noundef nonnull align 8 ptr @_RNvMs3_NtCs8ZPNfZ0ciAA_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE5errorB7_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = invoke { i64, i64 } @_RNvXs8_NtCs8ZPNfZ0ciAA_10serde_json4readNtB5_7StrReadNtB5_4Read8position(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.a)
          to label %bb.b unwind label %bb.d       ; 2 uses

bb.b:                                             ; preds = %bb.a
  %i.c = extractvalue { i64, i64 } %i.b, 0
  %i.d = extractvalue { i64, i64 } %i.b, 1
  %i.e = tail call noundef nonnull align 8 ptr @_RNvMs0_NtCs8ZPNfZ0ciAA_10serde_json5errorNtB5_5Error6syntax(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, i64 noundef %i.c, i64 noundef %i.d)
  ret ptr %i.e

bb.c:                                             ; preds = %bb.d
  resume { ptr, i32 } %i.f

bb.d:                                             ; preds = %bb.a
  %i.f = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueNtNtCs8ZPNfZ0ciAA_10serde_json5error9ErrorCodeEBF_(ptr noalias nofree noundef align 8 dereferenceable(24) %1) #17
          to label %bb.c unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs8Chj7Szqq0n_4core9panicking16panic_in_cleanup() #14
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef align 8 ptr @_RNvMs3_NtCs8ZPNfZ0ciAA_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE7end_mapB7_(ptr noalias nofree noundef nonnull align 8 captures(address, read_provenance) dereferenceable(56) %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !854)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.f = load i64, ptr %i.e, align 8, !alias.scope !855, !noalias !856, !noundef !5 ; 2 uses
  %.promoted.i = load i64, ptr %i.d, align 8, !alias.scope !854, !noalias !857 ; 2 uses
  %i.g = icmp ult i64 %.promoted.i, %i.f
  br i1 %i.g, label %.lr.ph.i, label %.loopexit

.lr.ph.i:                                         ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.i = load ptr, ptr %i.h, align 8, !alias.scope !855, !noalias !856, !nonnull !5, !noundef !5
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.lr.ph.i
  %i.j = phi i64 [ %.promoted.i, %.lr.ph.i ], [ %i.m, %bb.c ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !858)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !859)
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.j
  %i.l = load i8, ptr %i.k, align 1, !noalias !860, !noundef !5
  switch i8 %i.l, label %bb.d [
    i8 32, label %bb.c
    i8 10, label %bb.c
    i8 9, label %bb.c
    i8 13, label %bb.c
    i8 125, label %bb.e
    i8 44, label %bb.f
  ], !prof !14

bb.c:                                             ; preds = %bb.b, %bb.b, %bb.b, %bb.b
  %i.m = add i64 %i.j, 1                          ; 3 uses
  store i64 %i.m, ptr %i.d, align 8, !alias.scope !861, !noalias !857
  %exitcond.not.i = icmp eq i64 %i.m, %i.f
  br i1 %exitcond.not.i, label %.loopexit, label %bb.b

.loopexit:                                        ; preds = %bb.c, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 3, ptr %i.a, align 8
  %i.n = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCs8ZPNfZ0ciAA_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorB7_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %0, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.g

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 22, ptr %i.b, align 8
  %i.o = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCs8ZPNfZ0ciAA_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorB7_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %0, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.g

bb.e:                                             ; preds = %bb.b
  %i.p = add i64 %i.j, 1
  store i64 %i.p, ptr %i.d, align 8, !alias.scope !862
  br label %bb.g

bb.f:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i64 21, ptr %i.c, align 8
  %i.q = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCs8ZPNfZ0ciAA_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorB7_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %0, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.g

bb.g:                                             ; preds = %.loopexit, %bb.d, %bb.e, %bb.f
  %.sroa.0.0 = phi ptr [ %i.o, %bb.d ], [ null, %bb.e ], [ %i.q, %bb.f ], [ %i.n, %.loopexit ]
  ret ptr %.sroa.0.0
}

; Function Attrs: nounwind nonlazybind uwtable
declare noundef range(i32 0, 10) i32 @rust_eh_personality(i32 noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef) unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #5

; Function Attrs: cold minsize noinline noreturn nounwind nonlazybind optsize uwtable
declare void @_RNvNtCs8Chj7Szqq0n_4core9panicking16panic_in_cleanup() unnamed_addr #6

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsbqH9stoieM8_5alloc3vecINtB5_3VecNtNtCs8ZPNfZ0ciAA_10serde_json5value5ValueENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropBJ_(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsbqH9stoieM8_5alloc3vecINtB5_3VechENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCs8ZPNfZ0ciAA_10serde_json(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #7

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsbqH9stoieM8_5alloc7raw_vecINtB5_6RawVecNtNtCs8ZPNfZ0ciAA_10serde_json5value5ValueENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropBQ_(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsbqH9stoieM8_5alloc7raw_vecINtB5_6RawVechENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCs8ZPNfZ0ciAA_10serde_json(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXNtNtNtCsbqH9stoieM8_5alloc11collections5btree3mapINtB2_8BTreeMapNtNtB8_6string6StringNtNtCs8ZPNfZ0ciAA_10serde_json5value5ValueENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropB1t_(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvXsd_NtNtCs8Chj7Szqq0n_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #0

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #8

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs5_NtCsbqH9stoieM8_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs8ZPNfZ0ciAA_10serde_json(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), i64 noundef, i1 noundef zeroext, i64 noundef range(i64 1, -9223372036854775807), i64 noundef) unnamed_addr #0

; Function Attrs: cold minsize noreturn nonlazybind optsize uwtable
declare void @_RNvNtCsbqH9stoieM8_5alloc7raw_vec12handle_error(i64 noundef range(i64 0, -9223372036854775807), i64) unnamed_addr #9

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMsi_NtNtNtCsbqH9stoieM8_5alloc11collections5btree3mapINtB5_8BTreeMapNtNtBb_6string6StringNtNtCs8ZPNfZ0ciAA_10serde_json5value5ValueE6insertB1w_(ptr dead_on_unwind noalias nofree noundef writable sret([32 x i8]) align 8 captures(none) dereferenceable(32), ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvXs6_NtNtCsdnjrqM8ey3e_10serde_core2de5implsNtNtCsbqH9stoieM8_5alloc6string6StringNtB8_11Deserialize11deserializeINtNtCs8ZPNfZ0ciAA_10serde_json2de6MapKeyNtNtB1V_4read7StrReadEEB1V_(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias nofree noundef align 8 dereferenceable(56)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvXs8_NtCs8ZPNfZ0ciAA_10serde_json4readNtB5_7StrReadNtB5_4Read9parse_str(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvXNvXNtNtCs8ZPNfZ0ciAA_10serde_json5value2deNtB8_5ValueNtNtCsdnjrqM8ey3e_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_mapINtNtBa_2de9MapAccessNtNtBa_4read7StrReadEEBa_(ptr dead_on_unwind noalias nofree noundef writable sret([32 x i8]) align 8 captures(address) dereferenceable(32), ptr noalias nofree noundef align 8 dereferenceable(56), i1 noundef zeroext) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs_NtCsdnjrqM8ey3e_10serde_core2deNtNvXs8_NtCs8ZPNfZ0ciAA_10serde_json3mapINtBH_3MapNtNtCsbqH9stoieM8_5alloc6string6StringNtNtBJ_5value5ValueENtB4_11Deserialize11deserialize7VisitorNtB4_8Expected3fmtBJ_(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvXsk_NtNtCs8ZPNfZ0ciAA_10serde_json5value2deNtB6_13KeyClassifierNtNtCsdnjrqM8ey3e_10serde_core2de15DeserializeSeed11deserializeINtNtBa_2de6MapKeyNtNtBa_4read7StrReadEEBa_(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias nofree noundef align 8 dereferenceable(56)) unnamed_addr #0

; Function Attrs: cold nonlazybind uwtable
declare noundef nonnull align 8 ptr @_RNvXs6_NtCs8ZPNfZ0ciAA_10serde_json5errorNtB5_5ErrorNtNtCsdnjrqM8ey3e_10serde_core2de5Error12invalid_type(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24), ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare { i64, i64 } @_RNvXs8_NtCs8ZPNfZ0ciAA_10serde_json4readNtB5_7StrReadNtB5_4Read13peek_position(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: cold nonlazybind uwtable
declare noundef nonnull align 8 ptr @_RNvMs0_NtCs8ZPNfZ0ciAA_10serde_json5errorNtB5_5Error6syntax(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24), i64 noundef, i64 noundef) unnamed_addr #2

; Function Attrs: cold nonlazybind uwtable
declare hidden noundef nonnull align 8 ptr @_RINvMs0_NtCs8ZPNfZ0ciAA_10serde_json5errorNtB6_5Error12fix_positionNCNvMs3_NtB8_2deINtB1b_12DeserializerNtNtB8_4read7StrReadE12fix_position0EB8_(ptr noalias noundef nonnull align 8, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(56)) unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ssub.sat.i32(i32, i32) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.sadd.sat.i32(i32, i32) #8

; Function Attrs: nonlazybind uwtable
declare { i64, i64 } @_RNvXs8_NtCs8ZPNfZ0ciAA_10serde_json4readNtB5_7StrReadNtB5_4Read8position(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMs4_NtCsbqH9stoieM8_5alloc7raw_vecINtB5_6RawVecNtNtCs8ZPNfZ0ciAA_10serde_json5value5ValueE8grow_oneBQ_(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #10

; Function Attrs: nounwind nonlazybind allockind("free") uwtable
declare void @_RNvCsicpYtSlSgpD_7___rustc14___rust_dealloc(ptr allocptr noundef nonnull captures(address), i64 noundef, i64 noundef range(i64 1, -9223372036854775807)) unnamed_addr #11

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #8

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #13

attributes #0 = { nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #1 = { inlinehint nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #2 = { cold nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #3 = { cold noinline nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #4 = { nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { cold minsize noinline noreturn nounwind nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #8 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { cold minsize noreturn nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #10 = { noinline nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #11 = { nounwind nonlazybind allockind("free") uwtable "alloc-family"="__rust_alloc" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #13 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #14 = { cold noreturn nounwind }
attributes #15 = { nounwind }
attributes #16 = { inlinehint }
attributes #17 = { cold }
attributes #18 = { noreturn }
attributes #19 = { noinline }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 2, !"RtLibUseGOT", i32 1}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"rustc version 1.100.0-nightly (0ed41eb41 2026-09-04)"}
!4 = !{i64 0, i64 2}
!5 = !{}
!6 = !{i8 -1, i8 6}
!7 = !{i64 0, i64 25}
!8 = !{!"branch_weights", i32 1, i32 2000, i32 2000, i32 2000, i32 2000}
!9 = !{!"branch_weights", i32 1, i32 2001, i32 2001, i32 2001, i32 2001, i32 2000}
!10 = !{i8 0, i8 2}
!11 = !{i64 8}
!12 = !{i64 -1, i64 -9223372036854775808}
!13 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!14 = !{!"branch_weights", i32 1, i32 2002, i32 2002, i32 2002, i32 2002, i32 2000, i32 1}
!15 = !{!"branch_weights", i32 4000000, i32 4001}
!16 = !{!"branch_weights", i32 -2147483648, i32 0}
!17 = !{i64 -1, i64 3}
!18 = !{i64 0, i64 3}
!19 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!20 = !{!"branch_weights", i32 4001, i32 4000000}
!21 = distinct !{!21, !"_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueNtNtCs8ZPNfZ0ciAA_10serde_json5error9ErrorImplEBF_"}
!22 = distinct !{!22, !21, !"_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueNtNtCs8ZPNfZ0ciAA_10serde_json5error9ErrorImplEBF_: argument 0"}
!23 = distinct !{!23, !"_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueNtNtCs8ZPNfZ0ciAA_10serde_json5error9ErrorCodeEBF_"}
!24 = distinct !{!24, !23, !"_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueNtNtCs8ZPNfZ0ciAA_10serde_json5error9ErrorCodeEBF_: argument 0"}
!25 = distinct !{!25, !"_RINvNtNtNtCs8Chj7Szqq0n_4core2io5error4repr11decode_reprNtB4_11CustomOwnerNCNvXs1_B2_NtB2_4ReprNtNtNtB8_3ops4drop4Drop4drop0ECs8ZPNfZ0ciAA_10serde_json"}
!26 = distinct !{!26, !25, !"_RINvNtNtNtCs8Chj7Szqq0n_4core2io5error4repr11decode_reprNtB4_11CustomOwnerNCNvXs1_B2_NtB2_4ReprNtNtNtB8_3ops4drop4Drop4drop0ECs8ZPNfZ0ciAA_10serde_json: argument 0"}
!27 = !{!22}
!28 = !{!24}
!29 = !{!24, !22}
!30 = !{!26}
!31 = distinct !{!31, !"_RINvNtNtNtCs8Chj7Szqq0n_4core2io5error4repr11decode_reprNtB4_11CustomOwnerNCNvXs1_B2_NtB2_4ReprNtNtNtB8_3ops4drop4Drop4drop0ECs8ZPNfZ0ciAA_10serde_json"}
!32 = distinct !{!32, !31, !"_RINvNtNtNtCs8Chj7Szqq0n_4core2io5error4repr11decode_reprNtB4_11CustomOwnerNCNvXs1_B2_NtB2_4ReprNtNtNtB8_3ops4drop4Drop4drop0ECs8ZPNfZ0ciAA_10serde_json: argument 0"}
!33 = !{!32}
!34 = !{i8 0, i8 6}
!35 = distinct !{!35, !"_RINvXs8_NtCs8ZPNfZ0ciAA_10serde_json3mapINtB6_3MapNtNtCsbqH9stoieM8_5alloc6string6StringNtNtB8_5value5ValueENtNtCsdnjrqM8ey3e_10serde_core2de11Deserialize11deserializeQINtNtB8_2de12DeserializerNtNtB8_4read7StrReadEEB8_"}
!36 = distinct !{!36, !35, !"_RINvXs8_NtCs8ZPNfZ0ciAA_10serde_json3mapINtB6_3MapNtNtCsbqH9stoieM8_5alloc6string6StringNtNtB8_5value5ValueENtNtCsdnjrqM8ey3e_10serde_core2de11Deserialize11deserializeQINtNtB8_2de12DeserializerNtNtB8_4read7StrReadEEB8_: argument 0"}
!37 = distinct !{!37, !35, !"_RINvXs8_NtCs8ZPNfZ0ciAA_10serde_json3mapINtB6_3MapNtNtCsbqH9stoieM8_5alloc6string6StringNtNtB8_5value5ValueENtNtCsdnjrqM8ey3e_10serde_core2de11Deserialize11deserializeQINtNtB8_2de12DeserializerNtNtB8_4read7StrReadEEB8_: argument 1"}
!38 = distinct !{!38, !"_RINvXs5_NtCs8ZPNfZ0ciAA_10serde_json2deQINtB6_12DeserializerNtNtB8_4read7StrReadENtNtCsdnjrqM8ey3e_10serde_core2de12Deserializer15deserialize_mapNtNvXs8_NtB8_3mapINtB2r_3MapNtNtCsbqH9stoieM8_5alloc6string6StringNtNtB8_5value5ValueENtB1j_11Deserialize11deserialize7VisitorEB8_"}
!39 = distinct !{!39, !38, !"_RINvXs5_NtCs8ZPNfZ0ciAA_10serde_json2deQINtB6_12DeserializerNtNtB8_4read7StrReadENtNtCsdnjrqM8ey3e_10serde_core2de12Deserializer15deserialize_mapNtNvXs8_NtB8_3mapINtB2r_3MapNtNtCsbqH9stoieM8_5alloc6string6StringNtNtB8_5value5ValueENtB1j_11Deserialize11deserialize7VisitorEB8_: argument 0"}
!40 = distinct !{!40, !38, !"_RINvXs5_NtCs8ZPNfZ0ciAA_10serde_json2deQINtB6_12DeserializerNtNtB8_4read7StrReadENtNtCsdnjrqM8ey3e_10serde_core2de12Deserializer15deserialize_mapNtNvXs8_NtB8_3mapINtB2r_3MapNtNtCsbqH9stoieM8_5alloc6string6StringNtNtB8_5value5ValueENtB1j_11Deserialize11deserialize7VisitorEB8_: argument 1"}
!41 = distinct !{!41, !"_RNvMs3_NtCs8ZPNfZ0ciAA_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE16parse_whitespaceB7_"}
end_hunk_1
