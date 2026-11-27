Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/serde-json-rs/original/serde_json-91101fda7f3b469c.serde_json.68cc3255a7a81b66-cgu.1?download=true
inline.NumInlined: 150
inline.NumDeleted: 101
begin_hunk_0_@_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueNtNtCs8ZPNfZ0ciAA_10serde_json5error5ErrorEBF_:bb.a
  %i.n = landingpad { ptr, i32 }
          cleanup
  call void @_RNvCsicpYtSlSgpD_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef 40, i64 noundef 8) #20
  resume { ptr, i32 } %i.n

_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtCsbqH9stoieM8_5alloc5boxed3BoxNtNtCs8ZPNfZ0ciAA_10serde_json5error9ErrorImplEEB1e_.exit: ; preds = %bb.a, %bb.b, %bb.c, %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs8ZPNfZ0ciAA_10serde_json.exit.i.i.i
  call void @_RNvCsicpYtSlSgpD_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef 40, i64 noundef 8) #20
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueNtNtCs8ZPNfZ0ciAA_10serde_json5value5ValueEBF_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i8, ptr %0, align 8, !range !9, !noundef !5
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
  tail call void @_RNvNtCs8Chj7Szqq0n_4core9panicking16panic_in_cleanup() #19
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
  tail call void @_RNvNtCs8Chj7Szqq0n_4core9panicking16panic_in_cleanup() #19
  unreachable

_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtCsbqH9stoieM8_5alloc3vec3VecNtNtCs8ZPNfZ0ciAA_10serde_json5value5ValueEEB1c_.exit: ; preds = %bb.g
  tail call void @_RNvXs1_NtCsbqH9stoieM8_5alloc7raw_vecINtB5_6RawVecNtNtCs8ZPNfZ0ciAA_10serde_json5value5ValueENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f)
  br label %bb.c
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueNtNtCsbqH9stoieM8_5alloc6string6StringECs8ZPNfZ0ciAA_10serde_json(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #2 personality ptr @rust_eh_personality {
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
  tail call void @_RNvNtCs8Chj7Szqq0n_4core9panicking16panic_in_cleanup() #19
  unreachable

_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtCsbqH9stoieM8_5alloc7raw_vec6RawVechEECs8ZPNfZ0ciAA_10serde_json.exit.i: ; preds = %bb.b
  resume { ptr, i32 } %i.a

_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtCsbqH9stoieM8_5alloc3vec3VechEECs8ZPNfZ0ciAA_10serde_json.exit: ; preds = %bb.a
  tail call void @_RNvXs1_NtCsbqH9stoieM8_5alloc7raw_vecINtB5_6RawVechENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCs8ZPNfZ0ciAA_10serde_json(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs8ZPNfZ0ciAA_10serde_json(ptr %.0.val) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %i.b = ptrtoint ptr %.0.val to i64              ; 2 uses
  %i.c = and i64 %i.b, 3
  switch i64 %i.c, label %default.unreachable [
    i64 2, label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueNtNtNtNtB4_2io5error4repr4ReprECs8ZPNfZ0ciAA_10serde_json.exit
    i64 3, label %bb.b
    i64 0, label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueNtNtNtNtB4_2io5error4repr4ReprECs8ZPNfZ0ciAA_10serde_json.exit
    i64 1, label %bb.c
  ], !prof !8

default.unreachable:                              ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.d = icmp ult ptr %.0.val, inttoptr (i64 188978561024 to ptr)
  %i.e = and i64 %i.b, 1095216660480
  %i.f = icmp ne i64 %i.e, 1095216660480
  tail call void @llvm.assume(i1 %i.d)
  tail call void @llvm.assume(i1 %i.f)
  br label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueNtNtNtNtB4_2io5error4repr4ReprECs8ZPNfZ0ciAA_10serde_json.exit

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr i8, ptr %.0.val, i64 -1    ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.g) ]
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store ptr %i.g, ptr %i.h, align 8, !alias.scope !65
  store i8 3, ptr %i.a, align 8, !alias.scope !65
  call void @_RNvXsd_NtNtCs8Chj7Szqq0n_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.h)
  br label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueNtNtNtNtB4_2io5error4repr4ReprECs8ZPNfZ0ciAA_10serde_json.exit

_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueNtNtNtNtB4_2io5error4repr4ReprECs8ZPNfZ0ciAA_10serde_json.exit: ; preds = %bb.a, %bb.a, %bb.b, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden noundef align 8 ptr @_RINvXs2_NtNtCs8ZPNfZ0ciAA_10serde_json5value2deNtB8_5ValueNtNtCsdnjrqM8ey3e_10serde_core2de12Deserializer16deserialize_unitNtNtBW_5impls11UnitVisitorEBa_(ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(32) %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = load i8, ptr %0, align 8, !range !9, !noundef !5
  %i.c = icmp eq i8 %i.b, 0
  br i1 %i.c, label %bb.d, label %bb.b, !prof !10

bb.b:                                             ; preds = %bb.a
  %i.d = invoke fastcc noundef nonnull align 8 ptr @_RINvMsm_NtNtCs8ZPNfZ0ciAA_10serde_json5value2deNtB8_5Value12invalid_typeNtNtBa_5error5ErrorEBa_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %0, ptr noundef nonnull %i.a)
          to label %bb.d unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueNtNtCs8ZPNfZ0ciAA_10serde_json5value5ValueEBF_(ptr noalias nofree noundef align 8 dereferenceable(32) %0) #18
          to label %bb.f unwind label %bb.e

bb.d:                                             ; preds = %bb.a, %bb.b
  %.sroa.0.0 = phi ptr [ %i.d, %bb.b ], [ null, %bb.a ]
  call fastcc void @_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueNtNtCs8ZPNfZ0ciAA_10serde_json5value5ValueEBF_(ptr noalias nofree noundef align 8 dereferenceable(32) %0)
  ret ptr %.sroa.0.0

bb.e:                                             ; preds = %bb.c
  %i.f = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs8Chj7Szqq0n_4core9panicking16panic_in_cleanup() #19
  unreachable

bb.f:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.e
}

; Function Attrs: nonlazybind uwtable
define hidden noundef align 8 ptr @_RINvXsc_NtNtCs8ZPNfZ0ciAA_10serde_json5value2deRNtB8_5ValueNtNtCsdnjrqM8ey3e_10serde_core2de12Deserializer16deserialize_unitNtNtBX_5impls11UnitVisitorEBa_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = load i8, ptr %0, align 8, !range !9, !noundef !5
  %i.c = icmp eq i8 %i.b, 0
  br i1 %i.c, label %bb.c, label %bb.b, !prof !10

bb.b:                                             ; preds = %bb.a
  %i.d = call fastcc noundef nonnull align 8 ptr @_RINvMsm_NtNtCs8ZPNfZ0ciAA_10serde_json5value2deNtB8_5Value12invalid_typeNtNtBa_5error5ErrorEBa_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %0, ptr noundef nonnull %i.a)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.0.0 = phi ptr [ %i.d, %bb.b ], [ null, %bb.a ]
  ret ptr %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define noundef align 8 ptr @_RNvMs0_NtCs8ZPNfZ0ciAA_10serde_json5valueNtB5_5Value11pointer_mut(ptr noalias nofree noundef align 8 dereferenceable(32) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 9 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [32 x i8], align 8                ; 6 uses
  %i.d = alloca [4 x i8], align 4                 ; 4 uses
  %i.e = alloca [80 x i8], align 8                ; 13 uses
  %i.f = icmp eq i64 %2, 0
  br i1 %i.f, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i32 47, ptr %i.d, align 4
  %i.g = call noundef zeroext i1 @_RNvMNtCs8Chj7Szqq0n_4core5sliceSh11starts_withCs8ZPNfZ0ciAA_10serde_json(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.d, i64 noundef 1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br i1 %i.g, label %bb.y, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a, %_RINvXs_NtNtNtCs8Chj7Szqq0n_4core4iter8adapters4skipINtB5_4SkipINtNtNtBb_3str4iter5SplitcEENtNtNtB9_6traits8iterator8Iterator8try_foldQNtNtCs8ZPNfZ0ciAA_10serde_json5value5ValueNCINvNtB7_3map12map_try_foldReNtNtCsbqH9stoieM8_5alloc6string6StringB27_INtNtBb_6option6OptionB27_ENCNvMs0_B2a_B28_11pointer_mut0NCB4r_s_0E0B3Y_EB2c_.exit
  %.sroa.0.0 = phi ptr [ %0, %bb.a ], [ %.sroa.0.0.i, %_RINvXs_NtNtNtCs8Chj7Szqq0n_4core4iter8adapters4skipINtB5_4SkipINtNtNtBb_3str4iter5SplitcEENtNtNtB9_6traits8iterator8Iterator8try_foldQNtNtCs8ZPNfZ0ciAA_10serde_json5value5ValueNCINvNtB7_3map12map_try_foldReNtNtCsbqH9stoieM8_5alloc6string6StringB27_INtNtBb_6option6OptionB27_ENCNvMs0_B2a_B28_11pointer_mut0NCB4r_s_0E0B3Y_EB2c_.exit ], [ null, %bb.b ]
  ret ptr %.sroa.0.0

bb.d:                                             ; preds = %bb.y
  call void @llvm.experimental.noalias.scope.decl(metadata !92)
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 6 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %.val.i.i.i.i = load ptr, ptr %.sroa.4.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx, align 8, !alias.scope !93, !nonnull !5 ; 3 uses
  %.val1.i.i.i.i = load i64, ptr %.sroa.4.sroa.5.sroa.4.0..sroa.4.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx.sroa_idx, align 8, !alias.scope !93 ; 2 uses
  %i.m = load i64, ptr %.sroa.4.sroa.5.sroa.6.0..sroa.4.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx.sroa_idx, align 8, !alias.scope !93 ; 6 uses
  %.not.i.i.i.i.i = icmp ugt i64 %i.m, %.val1.i.i.i.i
  %i.n = load i8, ptr %.sroa.4.sroa.5.sroa.9.0..sroa.4.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx.sroa_idx, align 8, !alias.scope !93 ; 2 uses
  %i.o = zext nneg i8 %i.n to i64                 ; 4 uses
  %i.p = icmp ult i8 %i.n, 5
  %i.q = getelementptr i8, ptr %.sroa.4.sroa.5.sroa.7.0..sroa.4.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx.sroa_idx, i64 %i.o
  %i.r = getelementptr i8, ptr %i.q, i64 -1
  %i.s = load i8, ptr %.sroa.4.sroa.6.0..sroa.4.0..sroa_idx.sroa_idx, align 8, !range !11, !alias.scope !93
  %i.t = trunc nuw i8 %i.s to i1
  %.pre2.i.i.i.i.i = load i64, ptr %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx, align 8, !alias.scope !93 ; 2 uses
  %.pre.i = load i8, ptr %.sroa.4.sroa.7.0..sroa.4.0..sroa_idx.sroa_idx, align 1, !range !11, !alias.scope !94
  br label %bb.e

bb.e:                                             ; preds = %_RNCINvNtNtNtCs8Chj7Szqq0n_4core4iter8adapters3map12map_try_foldReNtNtCsbqH9stoieM8_5alloc6string6StringQNtNtCs8ZPNfZ0ciAA_10serde_json5value5ValueINtNtBa_6option6OptionB1D_ENCNvMs0_B1G_B1E_11pointer_mut0NCB2N_s_0E0B1I_.exit.i.i, %bb.d
  %i.u = phi i8 [ %.pre.i, %bb.d ], [ %i.at, %_RNCINvNtNtNtCs8Chj7Szqq0n_4core4iter8adapters3map12map_try_foldReNtNtCsbqH9stoieM8_5alloc6string6StringQNtNtCs8ZPNfZ0ciAA_10serde_json5value5ValueINtNtBa_6option6OptionB1D_ENCNvMs0_B1G_B1E_11pointer_mut0NCB2N_s_0E0B1I_.exit.i.i ]
  %.sroa.01.0.i.i = phi ptr [ %0, %bb.d ], [ %.sroa.0.1.i.i10.i.i, %_RNCINvNtNtNtCs8Chj7Szqq0n_4core4iter8adapters3map12map_try_foldReNtNtCsbqH9stoieM8_5alloc6string6StringQNtNtCs8ZPNfZ0ciAA_10serde_json5value5ValueINtNtBa_6option6OptionB1D_ENCNvMs0_B1G_B1E_11pointer_mut0NCB2N_s_0E0B1I_.exit.i.i ] ; 7 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !95)
  call void @llvm.experimental.noalias.scope.decl(metadata !96)
  %i.v = trunc nuw i8 %i.u to i1
  br i1 %i.v, label %_RINvXs_NtNtNtCs8Chj7Szqq0n_4core4iter8adapters4skipINtB5_4SkipINtNtNtBb_3str4iter5SplitcEENtNtNtB9_6traits8iterator8Iterator8try_foldQNtNtCs8ZPNfZ0ciAA_10serde_json5value5ValueNCINvNtB7_3map12map_try_foldReNtNtCsbqH9stoieM8_5alloc6string6StringB27_INtNtBb_6option6OptionB27_ENCNvMs0_B2a_B28_11pointer_mut0NCB4r_s_0E0B3Y_EB2c_.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @llvm.experimental.noalias.scope.decl(metadata !97)
  %.promoted.i.i.i.i.i = load i64, ptr %.sroa.4.sroa.5.sroa.5.0..sroa.4.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx.sroa_idx, align 8, !alias.scope !98 ; 2 uses
  %i.w = icmp ult i64 %i.m, %.promoted.i.i.i.i.i
  %or.cond27.i.i.i.i.i = or i1 %.not.i.i.i.i.i, %i.w
  br i1 %or.cond27.i.i.i.i.i, label %_RNvMsf_NtNtCs8Chj7Szqq0n_4core3str4iterINtB5_13SplitInternalcE7get_endCs8ZPNfZ0ciAA_10serde_json.exit.i.i.i.i, label %.lr.ph.split.preheader.i.i.i.i.i

.lr.ph.split.preheader.i.i.i.i.i:                 ; preds = %bb.f
  call void @llvm.assume(i1 %i.p)
  %.pre.i.i.i.i.i = load i8, ptr %i.r, align 1, !alias.scope !98 ; 2 uses
  br label %.lr.ph.split.i.i.i.i.i

.lr.ph.split.i.i.i.i.i:                           ; preds = %bb.i, %.lr.ph.split.preheader.i.i.i.i.i
  %i.x = phi i64 [ %i.al, %bb.i ], [ %.promoted.i.i.i.i.i, %.lr.ph.split.preheader.i.i.i.i.i ] ; 4 uses
  %i.y = sub nuw i64 %i.m, %i.x                   ; 4 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i, i64 %i.x ; 2 uses
  %i.aa = icmp samesign ult i64 %i.y, 16
  br i1 %i.aa, label %.preheader.i.i.i.i.i.i, label %bb.g

.preheader.i.i.i.i.i.i:                           ; preds = %.lr.ph.split.i.i.i.i.i
  %.not.i.i.i.i.i.i = icmp eq i64 %i.m, %i.x
  br i1 %.not.i.i.i.i.i.i, label %.loopexit15.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

bb.g:                                             ; preds = %.lr.ph.split.i.i.i.i.i
  %i.ab = call { i64, i64 } @_RNvNtNtCs8Chj7Szqq0n_4core5slice6memchr14memchr_aligned(i8 noundef %.pre.i.i.i.i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.z, i64 noundef range(i64 0, -9223372036854775808) %i.y), !noalias !99 ; 2 uses
  %i.ac = extractvalue { i64, i64 } %i.ab, 0
  %i.ad = extractvalue { i64, i64 } %i.ab, 1
  %i.ae = trunc nuw i64 %i.ac to i1
  br i1 %i.ae, label %.loopexit.i.i.i.i.i, label %.loopexit15.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.preheader.i.i.i.i.i.i, %bb.h
  %.sroa.04.011.i.i.i.i.i.i = phi i64 [ %i.ai, %bb.h ], [ 0, %.preheader.i.i.i.i.i.i ] ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.z, i64 %.sroa.04.011.i.i.i.i.i.i
  %i.ag = load i8, ptr %i.af, align 1, !alias.scope !100, !noalias !99, !noundef !5
  %i.ah = icmp eq i8 %i.ag, %.pre.i.i.i.i.i
  br i1 %i.ah, label %.loopexit.i.i.i.i.i, label %bb.h

bb.h:                                             ; preds = %.lr.ph.i.i.i.i.i.i
  %i.ai = add nuw nsw i64 %.sroa.04.011.i.i.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i.i.i.i = icmp eq i64 %i.ai, %i.y
  br i1 %exitcond.not.i.i.i.i.i.i, label %.loopexit15.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

.loopexit.i.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.i.i.i, %bb.g
  %.sroa.5.0.i.i.i.i.i.i = phi i64 [ %i.ad, %bb.g ], [ %.sroa.04.011.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i ] ; 2 uses
  %i.aj = icmp ult i64 %.sroa.5.0.i.i.i.i.i.i, %i.y
  call void @llvm.assume(i1 %i.aj)
  %i.ak = add i64 %i.x, 1
  %i.al = add i64 %i.ak, %.sroa.5.0.i.i.i.i.i.i   ; 7 uses
  store i64 %i.al, ptr %.sroa.4.sroa.5.sroa.5.0..sroa.4.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx.sroa_idx, align 8, !alias.scope !98
  %.not11.i.i.i.i.i = icmp ult i64 %i.al, %i.o
  %.not12.i.i.i.i.i = icmp ugt i64 %i.al, %.val1.i.i.i.i
  %or.cond.i.i.i.i.i = or i1 %.not11.i.i.i.i.i, %.not12.i.i.i.i.i
  br i1 %or.cond.i.i.i.i.i, label %bb.i, label %bb.j

.loopexit15.i.i.i.i.i:                            ; preds = %bb.g, %.preheader.i.i.i.i.i.i, %bb.h
  store i64 %i.m, ptr %.sroa.4.sroa.5.sroa.5.0..sroa.4.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx.sroa_idx, align 8, !alias.scope !98
  br label %_RNvMsf_NtNtCs8Chj7Szqq0n_4core3str4iterINtB5_13SplitInternalcE7get_endCs8ZPNfZ0ciAA_10serde_json.exit.i.i.i.i

bb.i:                                             ; preds = %bb.j, %.loopexit.i.i.i.i.i
  %i.am = icmp ult i64 %i.m, %i.al
  br i1 %i.am, label %_RNvMsf_NtNtCs8Chj7Szqq0n_4core3str4iterINtB5_13SplitInternalcE7get_endCs8ZPNfZ0ciAA_10serde_json.exit.i.i.i.i, label %.lr.ph.split.i.i.i.i.i

bb.j:                                             ; preds = %.loopexit.i.i.i.i.i
  %i.an = sub nuw i64 %i.al, %i.o                 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i, i64 %i.an
  %bcmp.i.i.i.i.i = call i32 @bcmp(ptr nonnull %i.ao, ptr nonnull %.sroa.4.sroa.5.sroa.7.0..sroa.4.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx.sroa_idx, i64 %i.o), !noalias !101
  %i.ap = icmp eq i32 %bcmp.i.i.i.i.i, 0
  br i1 %i.ap, label %_RNvXs_NtNtCs8Chj7Szqq0n_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i.i.i.i, label %bb.i

_RNvXs_NtNtCs8Chj7Szqq0n_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i.i.i.i: ; preds = %bb.j
  %i.aq = load i64, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !94, !noundef !5 ; 2 uses
  %i.ar = sub nuw i64 %i.an, %i.aq
  store i64 %i.al, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !94
  br label %select.unfold.i.i

_RNvMsf_NtNtCs8Chj7Szqq0n_4core3str4iterINtB5_13SplitInternalcE7get_endCs8ZPNfZ0ciAA_10serde_json.exit.i.i.i.i: ; preds = %bb.i, %.loopexit15.i.i.i.i.i, %bb.f
  store i8 1, ptr %.sroa.4.sroa.7.0..sroa.4.0..sroa_idx.sroa_idx, align 1, !alias.scope !102
  %.pre.i2.i.i.i.i = load i64, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !102 ; 3 uses
  %.not.i3.i.i.i.i = icmp ne i64 %.pre2.i.i.i.i.i, %.pre.i2.i.i.i.i
  %or.cond.not.i.i.i.i.i = select i1 %i.t, i1 true, i1 %.not.i3.i.i.i.i
  %i.as = sub nuw i64 %.pre2.i.i.i.i.i, %.pre.i2.i.i.i.i
  br i1 %or.cond.not.i.i.i.i.i, label %select.unfold.i.i, label %_RINvXs_NtNtNtCs8Chj7Szqq0n_4core4iter8adapters4skipINtB5_4SkipINtNtNtBb_3str4iter5SplitcEENtNtNtB9_6traits8iterator8Iterator8try_foldQNtNtCs8ZPNfZ0ciAA_10serde_json5value5ValueNCINvNtB7_3map12map_try_foldReNtNtCsbqH9stoieM8_5alloc6string6StringB27_INtNtBb_6option6OptionB27_ENCNvMs0_B2a_B28_11pointer_mut0NCB4r_s_0E0B3Y_EB2c_.exit

select.unfold.i.i:                                ; preds = %_RNvMsf_NtNtCs8Chj7Szqq0n_4core3str4iterINtB5_13SplitInternalcE7get_endCs8ZPNfZ0ciAA_10serde_json.exit.i.i.i.i, %_RNvXs_NtNtCs8Chj7Szqq0n_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i.i.i.i
  %i.at = phi i8 [ 0, %_RNvXs_NtNtCs8Chj7Szqq0n_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i.i.i.i ], [ 1, %_RNvMsf_NtNtCs8Chj7Szqq0n_4core3str4iterINtB5_13SplitInternalcE7get_endCs8ZPNfZ0ciAA_10serde_json.exit.i.i.i.i ]
  %.sroa.4.1.i.i.i.i = phi i64 [ %i.ar, %_RNvXs_NtNtCs8Chj7Szqq0n_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i.i.i.i ], [ %i.as, %_RNvMsf_NtNtCs8Chj7Szqq0n_4core3str4iterINtB5_13SplitInternalcE7get_endCs8ZPNfZ0ciAA_10serde_json.exit.i.i.i.i ]
  %.pn.i.i = phi i64 [ %i.aq, %_RNvXs_NtNtCs8Chj7Szqq0n_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i.i.i.i ], [ %.pre.i2.i.i.i.i, %_RNvMsf_NtNtCs8Chj7Szqq0n_4core3str4iterINtB5_13SplitInternalcE7get_endCs8ZPNfZ0ciAA_10serde_json.exit.i.i.i.i ]
  %.sroa.0.1.i.i.i.i = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i, i64 %.pn.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !103)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !104
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !104
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !105
  call fastcc void @_RINvMs3_NtCsbqH9stoieM8_5alloc3stre7replaceReECs8ZPNfZ0ciAA_10serde_json(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.0.1.i.i.i.i, i64 noundef %.sroa.4.1.i.i.i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @10, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @11) #21
  %i.au = load ptr, ptr %i.h, align 8, !noalias !105, !nonnull !5, !noundef !5
  %i.av = load i64, ptr %i.i, align 8, !noalias !105, !noundef !5
  invoke fastcc void @_RINvMs3_NtCsbqH9stoieM8_5alloc3stre7replaceReECs8ZPNfZ0ciAA_10serde_json(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.au, i64 noundef %i.av, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @12, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @13)
          to label %bb.l unwind label %bb.k

bb.k:                                             ; preds = %select.unfold.i.i
  %i.aw = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueNtNtCsbqH9stoieM8_5alloc6string6StringECs8ZPNfZ0ciAA_10serde_json(ptr noalias nofree noundef align 8 dereferenceable(24) %i.a) #18
          to label %common.resume.i.i.i unwind label %bb.o, !noalias !106

bb.l:                                             ; preds = %select.unfold.i.i
  invoke void @_RNvXsp_NtCsbqH9stoieM8_5alloc3vecINtB5_3VechENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCs8ZPNfZ0ciAA_10serde_json(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RNCNvMs0_NtCs8ZPNfZ0ciAA_10serde_json5valueNtB7_5Value11pointer_mut0B9_.exit.i.i.i unwind label %bb.m, !noalias !106

bb.m:                                             ; preds = %bb.l
  %i.ax = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsbqH9stoieM8_5alloc7raw_vecINtB5_6RawVechENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCs8ZPNfZ0ciAA_10serde_json(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %common.resume.i.i.i unwind label %bb.n, !noalias !106

bb.n:                                             ; preds = %bb.m
  %i.ay = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs8Chj7Szqq0n_4core9panicking16panic_in_cleanup() #19, !noalias !106
  unreachable

common.resume.i.i.i:                              ; preds = %bb.v, %bb.r, %bb.m, %bb.k
  %common.resume.op.i.i.i = phi { ptr, i32 } [ %i.aw, %bb.k ], [ %i.ax, %bb.m ], [ %i.bq, %bb.v ], [ %i.bg, %bb.r ]
  resume { ptr, i32 } %common.resume.op.i.i.i

bb.o:                                             ; preds = %bb.k
  %i.az = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs8Chj7Szqq0n_4core9panicking16panic_in_cleanup() #19, !noalias !106
  unreachable

_RNCNvMs0_NtCs8ZPNfZ0ciAA_10serde_json5valueNtB7_5Value11pointer_mut0B9_.exit.i.i.i: ; preds = %bb.l
  call void @_RNvXs1_NtCsbqH9stoieM8_5alloc7raw_vecINtB5_6RawVechENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCs8ZPNfZ0ciAA_10serde_json(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a), !noalias !106
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !105
  store ptr %.sroa.01.0.i.i, ptr %i.c, align 8, !noalias !104
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.j, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false), !noalias !104
  call void @llvm.experimental.noalias.scope.decl(metadata !107)
  call void @llvm.experimental.noalias.scope.decl(metadata !108)
  %i.ba = load i8, ptr %.sroa.01.0.i.i, align 8, !range !9, !alias.scope !109, !noalias !92, !noundef !5
  switch i8 %i.ba, label %bb.u [
    i8 4, label %bb.p
    i8 5, label %bb.q
  ]

bb.p:                                             ; preds = %_RNCNvMs0_NtCs8ZPNfZ0ciAA_10serde_json5valueNtB7_5Value11pointer_mut0B9_.exit.i.i.i
  %i.bb = load ptr, ptr %i.k, align 8, !alias.scope !108, !noalias !104, !nonnull !5, !noundef !5
  %i.bc = load i64, ptr %i.l, align 8, !alias.scope !108, !noalias !104, !noundef !5
  %i.bd = invoke fastcc { i64, i64 } @_RNvNtCs8ZPNfZ0ciAA_10serde_json5value11parse_index(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.bb, i64 noundef %i.bc)
          to label %bb.s unwind label %bb.r, !noalias !110 ; 2 uses

bb.q:                                             ; preds = %_RNCNvMs0_NtCs8ZPNfZ0ciAA_10serde_json5valueNtB7_5Value11pointer_mut0B9_.exit.i.i.i
  %i.be = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i, i64 8
  %i.bf = invoke noundef align 8 ptr @_RINvMsi_NtNtNtCsbqH9stoieM8_5alloc11collections5btree3mapINtB6_8BTreeMapNtNtBc_6string6StringNtNtCs8ZPNfZ0ciAA_10serde_json5value5ValueE7get_mutB18_EB1x_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.be, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.j)
          to label %bb.u unwind label %bb.r, !noalias !92

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.bg = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueNtNtCsbqH9stoieM8_5alloc6string6StringECs8ZPNfZ0ciAA_10serde_json(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.j) #18
          to label %common.resume.i.i.i unwind label %bb.x, !noalias !92

bb.s:                                             ; preds = %bb.p
  %i.bh = extractvalue { i64, i64 } %i.bd, 0
  %i.bi = extractvalue { i64, i64 } %i.bd, 1      ; 2 uses
  %i.bj = trunc nuw i64 %i.bh to i1
  %i.bk = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i, i64 24
  %i.bl = load i64, ptr %i.bk, align 8, !alias.scope !109, !noalias !92
  %i.bm = icmp ult i64 %i.bi, %i.bl
  %or.cond.i.i.i.i = select i1 %i.bj, i1 %i.bm, i1 false
  br i1 %or.cond.i.i.i.i, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.bn = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i, i64 16
  %i.bo = load ptr, ptr %i.bn, align 8, !alias.scope !109, !noalias !92, !nonnull !5, !noundef !5
  %i.bp = getelementptr inbounds nuw [32 x i8], ptr %i.bo, i64 %i.bi
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s, %bb.q, %_RNCNvMs0_NtCs8ZPNfZ0ciAA_10serde_json5valueNtB7_5Value11pointer_mut0B9_.exit.i.i.i
  %.sroa.0.1.i.i10.i.i = phi ptr [ %i.bf, %bb.q ], [ null, %_RNCNvMs0_NtCs8ZPNfZ0ciAA_10serde_json5valueNtB7_5Value11pointer_mut0B9_.exit.i.i.i ], [ %i.bp, %bb.t ], [ null, %bb.s ] ; 2 uses
  invoke void @_RNvXsp_NtCsbqH9stoieM8_5alloc3vecINtB5_3VechENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCs8ZPNfZ0ciAA_10serde_json(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %_RNCINvNtNtNtCs8Chj7Szqq0n_4core4iter8adapters3map12map_try_foldReNtNtCsbqH9stoieM8_5alloc6string6StringQNtNtCs8ZPNfZ0ciAA_10serde_json5value5ValueINtNtBa_6option6OptionB1D_ENCNvMs0_B1G_B1E_11pointer_mut0NCB2N_s_0E0B1I_.exit.i.i unwind label %bb.v, !noalias !92

bb.v:                                             ; preds = %bb.u
  %i.bq = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsbqH9stoieM8_5alloc7raw_vecINtB5_6RawVechENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCs8ZPNfZ0ciAA_10serde_json(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %common.resume.i.i.i unwind label %bb.w, !noalias !92

bb.w:                                             ; preds = %bb.v
  %i.br = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs8Chj7Szqq0n_4core9panicking16panic_in_cleanup() #19, !noalias !92
  unreachable

bb.x:                                             ; preds = %bb.r
  %i.bs = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs8Chj7Szqq0n_4core9panicking16panic_in_cleanup() #19, !noalias !92
  unreachable

_RNCINvNtNtNtCs8Chj7Szqq0n_4core4iter8adapters3map12map_try_foldReNtNtCsbqH9stoieM8_5alloc6string6StringQNtNtCs8ZPNfZ0ciAA_10serde_json5value5ValueINtNtBa_6option6OptionB1D_ENCNvMs0_B1G_B1E_11pointer_mut0NCB2N_s_0E0B1I_.exit.i.i: ; preds = %bb.u
  call void @_RNvXs1_NtCsbqH9stoieM8_5alloc7raw_vecINtB5_6RawVechENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCs8ZPNfZ0ciAA_10serde_json(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.j), !noalias !92
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !104
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !104
  %i.bt = icmp eq ptr %.sroa.0.1.i.i10.i.i, null
  br i1 %i.bt, label %_RINvXs_NtNtNtCs8Chj7Szqq0n_4core4iter8adapters4skipINtB5_4SkipINtNtNtBb_3str4iter5SplitcEENtNtNtB9_6traits8iterator8Iterator8try_foldQNtNtCs8ZPNfZ0ciAA_10serde_json5value5ValueNCINvNtB7_3map12map_try_foldReNtNtCsbqH9stoieM8_5alloc6string6StringB27_INtNtBb_6option6OptionB27_ENCNvMs0_B2a_B28_11pointer_mut0NCB4r_s_0E0B3Y_EB2c_.exit, label %bb.e

bb.y:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 5 uses
  store i64 0, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  store i64 %2, ptr %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx, align 8
  %.sroa.4.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 24 ; 2 uses
  store ptr %1, ptr %.sroa.4.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx, align 8
  %.sroa.4.sroa.5.sroa.4.0..sroa.4.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 32 ; 2 uses
  store i64 %2, ptr %.sroa.4.sroa.5.sroa.4.0..sroa.4.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx.sroa_idx, align 8
  %.sroa.4.sroa.5.sroa.5.0..sroa.4.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 40 ; 4 uses
  store i64 0, ptr %.sroa.4.sroa.5.sroa.5.0..sroa.4.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx.sroa_idx, align 8
  %.sroa.4.sroa.5.sroa.6.0..sroa.4.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 48 ; 2 uses
  store i64 %2, ptr %.sroa.4.sroa.5.sroa.6.0..sroa.4.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx.sroa_idx, align 8
  %.sroa.4.sroa.5.sroa.7.0..sroa.4.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 56 ; 3 uses
  store i64 201863462959, ptr %.sroa.4.sroa.5.sroa.7.0..sroa.4.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx.sroa_idx, align 8
  %.sroa.4.sroa.5.sroa.9.0..sroa.4.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 64 ; 2 uses
  store i8 1, ptr %.sroa.4.sroa.5.sroa.9.0..sroa.4.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx.sroa_idx, align 8
  %.sroa.4.sroa.6.0..sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 72 ; 2 uses
  %.sroa.4.sroa.7.0..sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 73 ; 2 uses
  store i16 1, ptr %.sroa.4.sroa.6.0..sroa.4.0..sroa_idx.sroa_idx, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !93)
  store i64 0, ptr %i.e, align 8, !alias.scope !93
  %i.bu = call fastcc ptr @_RNvYINtNtNtCs8Chj7Szqq0n_4core3str4iter5SplitcENtNtNtNtB9_4iter6traits8iterator8Iterator3nthCs8ZPNfZ0ciAA_10serde_json(ptr noalias nofree noundef align 8 dereferenceable(72) %.sroa.4.0..sroa_idx, i64 noundef 0) #21
  %.not3.i = icmp eq ptr %i.bu, null
  br i1 %.not3.i, label %_RINvXs_NtNtNtCs8Chj7Szqq0n_4core4iter8adapters4skipINtB5_4SkipINtNtNtBb_3str4iter5SplitcEENtNtNtB9_6traits8iterator8Iterator8try_foldQNtNtCs8ZPNfZ0ciAA_10serde_json5value5ValueNCINvNtB7_3map12map_try_foldReNtNtCsbqH9stoieM8_5alloc6string6StringB27_INtNtBb_6option6OptionB27_ENCNvMs0_B2a_B28_11pointer_mut0NCB4r_s_0E0B3Y_EB2c_.exit, label %bb.d

_RINvXs_NtNtNtCs8Chj7Szqq0n_4core4iter8adapters4skipINtB5_4SkipINtNtNtBb_3str4iter5SplitcEENtNtNtB9_6traits8iterator8Iterator8try_foldQNtNtCs8ZPNfZ0ciAA_10serde_json5value5ValueNCINvNtB7_3map12map_try_foldReNtNtCsbqH9stoieM8_5alloc6string6StringB27_INtNtBb_6option6OptionB27_ENCNvMs0_B2a_B28_11pointer_mut0NCB4r_s_0E0B3Y_EB2c_.exit: ; preds = %bb.e, %_RNvMsf_NtNtCs8Chj7Szqq0n_4core3str4iterINtB5_13SplitInternalcE7get_endCs8ZPNfZ0ciAA_10serde_json.exit.i.i.i.i, %_RNCINvNtNtNtCs8Chj7Szqq0n_4core4iter8adapters3map12map_try_foldReNtNtCsbqH9stoieM8_5alloc6string6StringQNtNtCs8ZPNfZ0ciAA_10serde_json5value5ValueINtNtBa_6option6OptionB1D_ENCNvMs0_B1G_B1E_11pointer_mut0NCB2N_s_0E0B1I_.exit.i.i, %bb.y
  %.sroa.0.0.i = phi ptr [ %0, %bb.y ], [ %.sroa.01.0.i.i, %_RNvMsf_NtNtCs8Chj7Szqq0n_4core3str4iterINtB5_13SplitInternalcE7get_endCs8ZPNfZ0ciAA_10serde_json.exit.i.i.i.i ], [ null, %_RNCINvNtNtNtCs8Chj7Szqq0n_4core4iter8adapters3map12map_try_foldReNtNtCsbqH9stoieM8_5alloc6string6StringQNtNtCs8ZPNfZ0ciAA_10serde_json5value5ValueINtNtBa_6option6OptionB1D_ENCNvMs0_B1G_B1E_11pointer_mut0NCB2N_s_0E0B1I_.exit.i.i ], [ %.sroa.01.0.i.i, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.c
}

; Function Attrs: nonlazybind uwtable
define noundef align 8 ptr @_RNvMs0_NtCs8ZPNfZ0ciAA_10serde_json5valueNtB5_5Value7pointer(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 9 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [32 x i8], align 8                ; 6 uses
  %i.d = alloca [4 x i8], align 4                 ; 4 uses
  %i.e = alloca [80 x i8], align 8                ; 13 uses
  %i.f = icmp eq i64 %2, 0
  br i1 %i.f, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i32 47, ptr %i.d, align 4
  %i.g = call noundef zeroext i1 @_RNvMNtCs8Chj7Szqq0n_4core5sliceSh11starts_withCs8ZPNfZ0ciAA_10serde_json(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.d, i64 noundef 1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br i1 %i.g, label %bb.y, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a, %_RINvXs_NtNtNtCs8Chj7Szqq0n_4core4iter8adapters4skipINtB5_4SkipINtNtNtBb_3str4iter5SplitcEENtNtNtB9_6traits8iterator8Iterator8try_foldRNtNtCs8ZPNfZ0ciAA_10serde_json5value5ValueNCINvNtB7_3map12map_try_foldReNtNtCsbqH9stoieM8_5alloc6string6StringB27_INtNtBb_6option6OptionB27_ENCNvMs0_B2a_B28_7pointer0NCB4r_s_0E0B3Y_EB2c_.exit
  %.sroa.0.0 = phi ptr [ %0, %bb.a ], [ %.sroa.0.0.i, %_RINvXs_NtNtNtCs8Chj7Szqq0n_4core4iter8adapters4skipINtB5_4SkipINtNtNtBb_3str4iter5SplitcEENtNtNtB9_6traits8iterator8Iterator8try_foldRNtNtCs8ZPNfZ0ciAA_10serde_json5value5ValueNCINvNtB7_3map12map_try_foldReNtNtCsbqH9stoieM8_5alloc6string6StringB27_INtNtBb_6option6OptionB27_ENCNvMs0_B2a_B28_7pointer0NCB4r_s_0E0B3Y_EB2c_.exit ], [ null, %bb.b ]
  ret ptr %.sroa.0.0

bb.d:                                             ; preds = %bb.y
  call void @llvm.experimental.noalias.scope.decl(metadata !137)
  %.promoted.i.i = load i8, ptr %.sroa.4.sroa.7.0..sroa.4.0..sroa_idx.sroa_idx, align 1, !alias.scope !138
  %.promoted20.i.i = load i64, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !139
  %.val.i.i.i.i = load ptr, ptr %.sroa.4.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx, align 8, !alias.scope !139, !nonnull !5 ; 3 uses
  %.val1.i.i.i.i = load i64, ptr %.sroa.4.sroa.5.sroa.4.0..sroa.4.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx.sroa_idx, align 8, !alias.scope !139 ; 2 uses
  %i.h = load i64, ptr %.sroa.4.sroa.5.sroa.6.0..sroa.4.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx.sroa_idx, align 8, !alias.scope !139 ; 7 uses
  %.not.i.i.i.i.i = icmp ugt i64 %i.h, %.val1.i.i.i.i
  %i.i = load i8, ptr %.sroa.4.sroa.5.sroa.9.0..sroa.4.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx.sroa_idx, align 8, !alias.scope !139 ; 2 uses
  %i.j = zext nneg i8 %i.i to i64                 ; 4 uses
  %i.k = icmp ult i8 %i.i, 5
  %i.l = getelementptr i8, ptr %.sroa.4.sroa.5.sroa.7.0..sroa.4.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx.sroa_idx, i64 %i.j
  %i.m = getelementptr i8, ptr %i.l, i64 -1
  %i.n = load i8, ptr %.sroa.4.sroa.6.0..sroa.4.0..sroa_idx.sroa_idx, align 8, !range !11, !alias.scope !139
  %i.o = trunc nuw i8 %i.n to i1
  %.pre2.i.i.i.i.i = load i64, ptr %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx, align 8, !alias.scope !139 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.r = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 6 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.t = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %.promoted23.i.i = load i64, ptr %.sroa.4.sroa.5.sroa.5.0..sroa.4.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx.sroa_idx, align 8, !alias.scope !139
  br label %bb.e

bb.e:                                             ; preds = %_RNCINvNtNtNtCs8Chj7Szqq0n_4core4iter8adapters3map12map_try_foldReNtNtCsbqH9stoieM8_5alloc6string6StringRNtNtCs8ZPNfZ0ciAA_10serde_json5value5ValueINtNtBa_6option6OptionB1D_ENCNvMs0_B1G_B1E_7pointer0NCB2N_s_0E0B1I_.exit.i.i, %bb.d
  %i.u = phi i64 [ %.promoted23.i.i, %bb.d ], [ %i.as, %_RNCINvNtNtNtCs8Chj7Szqq0n_4core4iter8adapters3map12map_try_foldReNtNtCsbqH9stoieM8_5alloc6string6StringRNtNtCs8ZPNfZ0ciAA_10serde_json5value5ValueINtNtBa_6option6OptionB1D_ENCNvMs0_B1G_B1E_7pointer0NCB2N_s_0E0B1I_.exit.i.i ] ; 3 uses
  %.lcssa1622.i.i = phi i64 [ %.promoted20.i.i, %bb.d ], [ %.lcssa1621.i.i, %_RNCINvNtNtNtCs8Chj7Szqq0n_4core4iter8adapters3map12map_try_foldReNtNtCsbqH9stoieM8_5alloc6string6StringRNtNtCs8ZPNfZ0ciAA_10serde_json5value5ValueINtNtBa_6option6OptionB1D_ENCNvMs0_B1G_B1E_7pointer0NCB2N_s_0E0B1I_.exit.i.i ] ; 4 uses
  %i.v = phi i8 [ %.promoted.i.i, %bb.d ], [ %i.at, %_RNCINvNtNtNtCs8Chj7Szqq0n_4core4iter8adapters3map12map_try_foldReNtNtCsbqH9stoieM8_5alloc6string6StringRNtNtCs8ZPNfZ0ciAA_10serde_json5value5ValueINtNtBa_6option6OptionB1D_ENCNvMs0_B1G_B1E_7pointer0NCB2N_s_0E0B1I_.exit.i.i ]
  %.sroa.01.0.i.i = phi ptr [ %0, %bb.d ], [ %.sroa.0.1.i.i10.i.i, %_RNCINvNtNtNtCs8Chj7Szqq0n_4core4iter8adapters3map12map_try_foldReNtNtCsbqH9stoieM8_5alloc6string6StringRNtNtCs8ZPNfZ0ciAA_10serde_json5value5ValueINtNtBa_6option6OptionB1D_ENCNvMs0_B1G_B1E_7pointer0NCB2N_s_0E0B1I_.exit.i.i ] ; 7 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !140)
  call void @llvm.experimental.noalias.scope.decl(metadata !141)
  %i.w = trunc nuw i8 %i.v to i1
  br i1 %i.w, label %_RINvXs_NtNtNtCs8Chj7Szqq0n_4core4iter8adapters4skipINtB5_4SkipINtNtNtBb_3str4iter5SplitcEENtNtNtB9_6traits8iterator8Iterator8try_foldRNtNtCs8ZPNfZ0ciAA_10serde_json5value5ValueNCINvNtB7_3map12map_try_foldReNtNtCsbqH9stoieM8_5alloc6string6StringB27_INtNtBb_6option6OptionB27_ENCNvMs0_B2a_B28_7pointer0NCB4r_s_0E0B3Y_EB2c_.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @llvm.experimental.noalias.scope.decl(metadata !142)
  %i.x = icmp ult i64 %i.h, %i.u
  %or.cond27.i.i.i.i.i = or i1 %.not.i.i.i.i.i, %i.x
  br i1 %or.cond27.i.i.i.i.i, label %_RNvMsf_NtNtCs8Chj7Szqq0n_4core3str4iterINtB5_13SplitInternalcE7get_endCs8ZPNfZ0ciAA_10serde_json.exit.i.i.i.i, label %.lr.ph.split.preheader.i.i.i.i.i

.lr.ph.split.preheader.i.i.i.i.i:                 ; preds = %bb.f
  call void @llvm.assume(i1 %i.k)
  %.pre.i.i.i.i.i = load i8, ptr %i.m, align 1, !alias.scope !143 ; 2 uses
  br label %.lr.ph.split.i.i.i.i.i

.lr.ph.split.i.i.i.i.i:                           ; preds = %bb.i, %.lr.ph.split.preheader.i.i.i.i.i
  %i.y = phi i64 [ %i.am, %bb.i ], [ %i.u, %.lr.ph.split.preheader.i.i.i.i.i ] ; 4 uses
  %i.z = sub nuw i64 %i.h, %i.y                   ; 4 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i, i64 %i.y ; 2 uses
  %i.ab = icmp samesign ult i64 %i.z, 16
  br i1 %i.ab, label %.preheader.i.i.i.i.i.i, label %bb.g

.preheader.i.i.i.i.i.i:                           ; preds = %.lr.ph.split.i.i.i.i.i
  %.not.i.i.i.i.i.i = icmp eq i64 %i.h, %i.y
  br i1 %.not.i.i.i.i.i.i, label %.loopexit15.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

bb.g:                                             ; preds = %.lr.ph.split.i.i.i.i.i
  %i.ac = call { i64, i64 } @_RNvNtNtCs8Chj7Szqq0n_4core5slice6memchr14memchr_aligned(i8 noundef %.pre.i.i.i.i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.aa, i64 noundef range(i64 0, -9223372036854775808) %i.z), !noalias !144 ; 2 uses
  %i.ad = extractvalue { i64, i64 } %i.ac, 0
  %i.ae = extractvalue { i64, i64 } %i.ac, 1
  %i.af = trunc nuw i64 %i.ad to i1
  br i1 %i.af, label %.loopexit.i.i.i.i.i, label %.loopexit15.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.preheader.i.i.i.i.i.i, %bb.h
  %.sroa.04.011.i.i.i.i.i.i = phi i64 [ %i.aj, %bb.h ], [ 0, %.preheader.i.i.i.i.i.i ] ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.aa, i64 %.sroa.04.011.i.i.i.i.i.i
  %i.ah = load i8, ptr %i.ag, align 1, !alias.scope !145, !noalias !144, !noundef !5
  %i.ai = icmp eq i8 %i.ah, %.pre.i.i.i.i.i
  br i1 %i.ai, label %.loopexit.i.i.i.i.i, label %bb.h

bb.h:                                             ; preds = %.lr.ph.i.i.i.i.i.i
  %i.aj = add nuw nsw i64 %.sroa.04.011.i.i.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i.i.i.i = icmp eq i64 %i.aj, %i.z
  br i1 %exitcond.not.i.i.i.i.i.i, label %.loopexit15.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

.loopexit.i.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.i.i.i, %bb.g
  %.sroa.5.0.i.i.i.i.i.i = phi i64 [ %i.ae, %bb.g ], [ %.sroa.04.011.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i ] ; 2 uses
  %i.ak = icmp ult i64 %.sroa.5.0.i.i.i.i.i.i, %i.z
  call void @llvm.assume(i1 %i.ak)
  %i.al = add i64 %i.y, 1
  %i.am = add i64 %i.al, %.sroa.5.0.i.i.i.i.i.i   ; 10 uses
  store i64 %i.am, ptr %.sroa.4.sroa.5.sroa.5.0..sroa.4.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx.sroa_idx, align 8, !alias.scope !143
  %.not11.i.i.i.i.i = icmp ult i64 %i.am, %i.j
  %.not12.i.i.i.i.i = icmp ugt i64 %i.am, %.val1.i.i.i.i
  %or.cond.i.i.i.i.i = or i1 %.not11.i.i.i.i.i, %.not12.i.i.i.i.i
  br i1 %or.cond.i.i.i.i.i, label %bb.i, label %bb.j

.loopexit15.i.i.i.i.i:                            ; preds = %bb.g, %.preheader.i.i.i.i.i.i, %bb.h
  store i64 %i.h, ptr %.sroa.4.sroa.5.sroa.5.0..sroa.4.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx.sroa_idx, align 8, !alias.scope !143
  br label %_RNvMsf_NtNtCs8Chj7Szqq0n_4core3str4iterINtB5_13SplitInternalcE7get_endCs8ZPNfZ0ciAA_10serde_json.exit.i.i.i.i

bb.i:                                             ; preds = %bb.j, %.loopexit.i.i.i.i.i
  %i.an = icmp ult i64 %i.h, %i.am
  br i1 %i.an, label %_RNvMsf_NtNtCs8Chj7Szqq0n_4core3str4iterINtB5_13SplitInternalcE7get_endCs8ZPNfZ0ciAA_10serde_json.exit.i.i.i.i, label %.lr.ph.split.i.i.i.i.i

bb.j:                                             ; preds = %.loopexit.i.i.i.i.i
  %i.ao = sub nuw i64 %i.am, %i.j                 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i, i64 %i.ao
  %bcmp.i.i.i.i.i = call i32 @bcmp(ptr nonnull %i.ap, ptr nonnull %.sroa.4.sroa.5.sroa.7.0..sroa.4.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx.sroa_idx, i64 %i.j), !noalias !146
  %i.aq = icmp eq i32 %bcmp.i.i.i.i.i, 0
  br i1 %i.aq, label %_RNvXs_NtNtCs8Chj7Szqq0n_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i.i.i.i, label %bb.i

_RNvXs_NtNtCs8Chj7Szqq0n_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i.i.i.i: ; preds = %bb.j
  store i64 %i.am, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !138
  br label %select.unfold.i.i

_RNvMsf_NtNtCs8Chj7Szqq0n_4core3str4iterINtB5_13SplitInternalcE7get_endCs8ZPNfZ0ciAA_10serde_json.exit.i.i.i.i: ; preds = %bb.i, %.loopexit15.i.i.i.i.i, %bb.f
  %i.ar = phi i64 [ %i.u, %bb.f ], [ %i.h, %.loopexit15.i.i.i.i.i ], [ %i.am, %bb.i ]
  store i8 1, ptr %.sroa.4.sroa.7.0..sroa.4.0..sroa_idx.sroa_idx, align 1, !alias.scope !147
  %.not.i3.i.i.i.i = icmp ne i64 %.pre2.i.i.i.i.i, %.lcssa1622.i.i
  %or.cond.not.i.i.i.i.i = select i1 %i.o, i1 true, i1 %.not.i3.i.i.i.i
  br i1 %or.cond.not.i.i.i.i.i, label %select.unfold.i.i, label %_RINvXs_NtNtNtCs8Chj7Szqq0n_4core4iter8adapters4skipINtB5_4SkipINtNtNtBb_3str4iter5SplitcEENtNtNtB9_6traits8iterator8Iterator8try_foldRNtNtCs8ZPNfZ0ciAA_10serde_json5value5ValueNCINvNtB7_3map12map_try_foldReNtNtCsbqH9stoieM8_5alloc6string6StringB27_INtNtBb_6option6OptionB27_ENCNvMs0_B2a_B28_7pointer0NCB4r_s_0E0B3Y_EB2c_.exit

select.unfold.i.i:                                ; preds = %_RNvMsf_NtNtCs8Chj7Szqq0n_4core3str4iterINtB5_13SplitInternalcE7get_endCs8ZPNfZ0ciAA_10serde_json.exit.i.i.i.i, %_RNvXs_NtNtCs8Chj7Szqq0n_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i.i.i.i
  %i.as = phi i64 [ %i.am, %_RNvXs_NtNtCs8Chj7Szqq0n_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i.i.i.i ], [ %i.ar, %_RNvMsf_NtNtCs8Chj7Szqq0n_4core3str4iterINtB5_13SplitInternalcE7get_endCs8ZPNfZ0ciAA_10serde_json.exit.i.i.i.i ]
  %.lcssa1621.i.i = phi i64 [ %i.am, %_RNvXs_NtNtCs8Chj7Szqq0n_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i.i.i.i ], [ %.lcssa1622.i.i, %_RNvMsf_NtNtCs8Chj7Szqq0n_4core3str4iterINtB5_13SplitInternalcE7get_endCs8ZPNfZ0ciAA_10serde_json.exit.i.i.i.i ]
  %i.at = phi i8 [ 0, %_RNvXs_NtNtCs8Chj7Szqq0n_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i.i.i.i ], [ 1, %_RNvMsf_NtNtCs8Chj7Szqq0n_4core3str4iterINtB5_13SplitInternalcE7get_endCs8ZPNfZ0ciAA_10serde_json.exit.i.i.i.i ]
  %.pn26.i.i = phi i64 [ %i.ao, %_RNvXs_NtNtCs8Chj7Szqq0n_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i.i.i.i ], [ %.pre2.i.i.i.i.i, %_RNvMsf_NtNtCs8Chj7Szqq0n_4core3str4iterINtB5_13SplitInternalcE7get_endCs8ZPNfZ0ciAA_10serde_json.exit.i.i.i.i ]
  %.sroa.4.1.i.i.i.i = sub nuw i64 %.pn26.i.i, %.lcssa1622.i.i
  %.sroa.0.1.i.i.i.i = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i, i64 %.lcssa1622.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !148)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !149
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !149
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !150
  call fastcc void @_RINvMs3_NtCsbqH9stoieM8_5alloc3stre7replaceReECs8ZPNfZ0ciAA_10serde_json(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.0.1.i.i.i.i, i64 noundef %.sroa.4.1.i.i.i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @10, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @11) #21
  %i.au = load ptr, ptr %i.p, align 8, !noalias !150, !nonnull !5, !noundef !5
  %i.av = load i64, ptr %i.q, align 8, !noalias !150, !noundef !5
  invoke fastcc void @_RINvMs3_NtCsbqH9stoieM8_5alloc3stre7replaceReECs8ZPNfZ0ciAA_10serde_json(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.au, i64 noundef %i.av, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @12, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @13)
          to label %bb.l unwind label %bb.k

bb.k:                                             ; preds = %select.unfold.i.i
  %i.aw = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueNtNtCsbqH9stoieM8_5alloc6string6StringECs8ZPNfZ0ciAA_10serde_json(ptr noalias nofree noundef align 8 dereferenceable(24) %i.a) #18
          to label %common.resume.i.i.i unwind label %bb.o, !noalias !151

bb.l:                                             ; preds = %select.unfold.i.i
  invoke void @_RNvXsp_NtCsbqH9stoieM8_5alloc3vecINtB5_3VechENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCs8ZPNfZ0ciAA_10serde_json(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RNCNvMs0_NtCs8ZPNfZ0ciAA_10serde_json5valueNtB7_5Value7pointer0B9_.exit.i.i.i unwind label %bb.m, !noalias !151

bb.m:                                             ; preds = %bb.l
  %i.ax = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsbqH9stoieM8_5alloc7raw_vecINtB5_6RawVechENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCs8ZPNfZ0ciAA_10serde_json(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %common.resume.i.i.i unwind label %bb.n, !noalias !151

bb.n:                                             ; preds = %bb.m
  %i.ay = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs8Chj7Szqq0n_4core9panicking16panic_in_cleanup() #19, !noalias !151
  unreachable

common.resume.i.i.i:                              ; preds = %bb.v, %bb.r, %bb.m, %bb.k
  %common.resume.op.i.i.i = phi { ptr, i32 } [ %i.aw, %bb.k ], [ %i.ax, %bb.m ], [ %i.bq, %bb.v ], [ %i.bg, %bb.r ]
  resume { ptr, i32 } %common.resume.op.i.i.i

bb.o:                                             ; preds = %bb.k
  %i.az = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs8Chj7Szqq0n_4core9panicking16panic_in_cleanup() #19, !noalias !151
  unreachable

_RNCNvMs0_NtCs8ZPNfZ0ciAA_10serde_json5valueNtB7_5Value7pointer0B9_.exit.i.i.i: ; preds = %bb.l
  call void @_RNvXs1_NtCsbqH9stoieM8_5alloc7raw_vecINtB5_6RawVechENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCs8ZPNfZ0ciAA_10serde_json(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a), !noalias !151
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !150
  store ptr %.sroa.01.0.i.i, ptr %i.c, align 8, !noalias !149
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.r, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false), !noalias !149
  call void @llvm.experimental.noalias.scope.decl(metadata !152)
  call void @llvm.experimental.noalias.scope.decl(metadata !153)
  %i.ba = load i8, ptr %.sroa.01.0.i.i, align 8, !range !9, !alias.scope !154, !noalias !137, !noundef !5
  switch i8 %i.ba, label %bb.u [
    i8 4, label %bb.p
    i8 5, label %bb.q
  ]

bb.p:                                             ; preds = %_RNCNvMs0_NtCs8ZPNfZ0ciAA_10serde_json5valueNtB7_5Value7pointer0B9_.exit.i.i.i
  %i.bb = load ptr, ptr %i.s, align 8, !alias.scope !153, !noalias !149, !nonnull !5, !noundef !5
  %i.bc = load i64, ptr %i.t, align 8, !alias.scope !153, !noalias !149, !noundef !5
  %i.bd = invoke fastcc { i64, i64 } @_RNvNtCs8ZPNfZ0ciAA_10serde_json5value11parse_index(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.bb, i64 noundef %i.bc)
          to label %bb.s unwind label %bb.r, !noalias !155 ; 2 uses

bb.q:                                             ; preds = %_RNCNvMs0_NtCs8ZPNfZ0ciAA_10serde_json5valueNtB7_5Value7pointer0B9_.exit.i.i.i
  %i.be = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i, i64 8
  %i.bf = invoke noundef align 8 ptr @_RINvMsi_NtNtNtCsbqH9stoieM8_5alloc11collections5btree3mapINtB6_8BTreeMapNtNtBc_6string6StringNtNtCs8ZPNfZ0ciAA_10serde_json5value5ValueE3getB18_EB1x_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.be, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.r)
          to label %bb.u unwind label %bb.r, !noalias !137

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.bg = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueNtNtCsbqH9stoieM8_5alloc6string6StringECs8ZPNfZ0ciAA_10serde_json(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.r) #18
          to label %common.resume.i.i.i unwind label %bb.x, !noalias !137

bb.s:                                             ; preds = %bb.p
  %i.bh = extractvalue { i64, i64 } %i.bd, 0
  %i.bi = extractvalue { i64, i64 } %i.bd, 1      ; 2 uses
  %i.bj = trunc nuw i64 %i.bh to i1
  %i.bk = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i, i64 24
  %i.bl = load i64, ptr %i.bk, align 8, !alias.scope !154, !noalias !137
  %i.bm = icmp ult i64 %i.bi, %i.bl
  %or.cond.i.i.i.i = select i1 %i.bj, i1 %i.bm, i1 false
  br i1 %or.cond.i.i.i.i, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.bn = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i, i64 16
  %i.bo = load ptr, ptr %i.bn, align 8, !alias.scope !154, !noalias !137, !nonnull !5, !noundef !5
  %i.bp = getelementptr inbounds nuw [32 x i8], ptr %i.bo, i64 %i.bi
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s, %bb.q, %_RNCNvMs0_NtCs8ZPNfZ0ciAA_10serde_json5valueNtB7_5Value7pointer0B9_.exit.i.i.i
  %.sroa.0.1.i.i10.i.i = phi ptr [ %i.bf, %bb.q ], [ null, %_RNCNvMs0_NtCs8ZPNfZ0ciAA_10serde_json5valueNtB7_5Value7pointer0B9_.exit.i.i.i ], [ %i.bp, %bb.t ], [ null, %bb.s ] ; 2 uses
  invoke void @_RNvXsp_NtCsbqH9stoieM8_5alloc3vecINtB5_3VechENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCs8ZPNfZ0ciAA_10serde_json(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.r)
          to label %_RNCINvNtNtNtCs8Chj7Szqq0n_4core4iter8adapters3map12map_try_foldReNtNtCsbqH9stoieM8_5alloc6string6StringRNtNtCs8ZPNfZ0ciAA_10serde_json5value5ValueINtNtBa_6option6OptionB1D_ENCNvMs0_B1G_B1E_7pointer0NCB2N_s_0E0B1I_.exit.i.i unwind label %bb.v, !noalias !137

bb.v:                                             ; preds = %bb.u
  %i.bq = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsbqH9stoieM8_5alloc7raw_vecINtB5_6RawVechENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCs8ZPNfZ0ciAA_10serde_json(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.r)
          to label %common.resume.i.i.i unwind label %bb.w, !noalias !137

bb.w:                                             ; preds = %bb.v
  %i.br = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs8Chj7Szqq0n_4core9panicking16panic_in_cleanup() #19, !noalias !137
  unreachable

bb.x:                                             ; preds = %bb.r
  %i.bs = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs8Chj7Szqq0n_4core9panicking16panic_in_cleanup() #19, !noalias !137
  unreachable

_RNCINvNtNtNtCs8Chj7Szqq0n_4core4iter8adapters3map12map_try_foldReNtNtCsbqH9stoieM8_5alloc6string6StringRNtNtCs8ZPNfZ0ciAA_10serde_json5value5ValueINtNtBa_6option6OptionB1D_ENCNvMs0_B1G_B1E_7pointer0NCB2N_s_0E0B1I_.exit.i.i: ; preds = %bb.u
  call void @_RNvXs1_NtCsbqH9stoieM8_5alloc7raw_vecINtB5_6RawVechENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCs8ZPNfZ0ciAA_10serde_json(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.r), !noalias !137
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !149
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !149
  %i.bt = icmp eq ptr %.sroa.0.1.i.i10.i.i, null
  br i1 %i.bt, label %_RINvXs_NtNtNtCs8Chj7Szqq0n_4core4iter8adapters4skipINtB5_4SkipINtNtNtBb_3str4iter5SplitcEENtNtNtB9_6traits8iterator8Iterator8try_foldRNtNtCs8ZPNfZ0ciAA_10serde_json5value5ValueNCINvNtB7_3map12map_try_foldReNtNtCsbqH9stoieM8_5alloc6string6StringB27_INtNtBb_6option6OptionB27_ENCNvMs0_B2a_B28_7pointer0NCB4r_s_0E0B3Y_EB2c_.exit, label %bb.e

bb.y:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 4 uses
  store i64 0, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  store i64 %2, ptr %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx, align 8
  %.sroa.4.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 24 ; 2 uses
  store ptr %1, ptr %.sroa.4.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx, align 8
  %.sroa.4.sroa.5.sroa.4.0..sroa.4.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 32 ; 2 uses
  store i64 %2, ptr %.sroa.4.sroa.5.sroa.4.0..sroa.4.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx.sroa_idx, align 8
  %.sroa.4.sroa.5.sroa.5.0..sroa.4.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 40 ; 4 uses
  store i64 0, ptr %.sroa.4.sroa.5.sroa.5.0..sroa.4.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx.sroa_idx, align 8
  %.sroa.4.sroa.5.sroa.6.0..sroa.4.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 48 ; 2 uses
  store i64 %2, ptr %.sroa.4.sroa.5.sroa.6.0..sroa.4.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx.sroa_idx, align 8
  %.sroa.4.sroa.5.sroa.7.0..sroa.4.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 56 ; 3 uses
  store i64 201863462959, ptr %.sroa.4.sroa.5.sroa.7.0..sroa.4.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx.sroa_idx, align 8
  %.sroa.4.sroa.5.sroa.9.0..sroa.4.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 64 ; 2 uses
  store i8 1, ptr %.sroa.4.sroa.5.sroa.9.0..sroa.4.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx.sroa_idx, align 8
  %.sroa.4.sroa.6.0..sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 72 ; 2 uses
  %.sroa.4.sroa.7.0..sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 73 ; 2 uses
  store i16 1, ptr %.sroa.4.sroa.6.0..sroa.4.0..sroa_idx.sroa_idx, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !156)
  store i64 0, ptr %i.e, align 8, !alias.scope !156
  %i.bu = call fastcc ptr @_RNvYINtNtNtCs8Chj7Szqq0n_4core3str4iter5SplitcENtNtNtNtB9_4iter6traits8iterator8Iterator3nthCs8ZPNfZ0ciAA_10serde_json(ptr noalias nofree noundef align 8 dereferenceable(72) %.sroa.4.0..sroa_idx, i64 noundef 0) #21
  %.not3.i = icmp eq ptr %i.bu, null
  br i1 %.not3.i, label %_RINvXs_NtNtNtCs8Chj7Szqq0n_4core4iter8adapters4skipINtB5_4SkipINtNtNtBb_3str4iter5SplitcEENtNtNtB9_6traits8iterator8Iterator8try_foldRNtNtCs8ZPNfZ0ciAA_10serde_json5value5ValueNCINvNtB7_3map12map_try_foldReNtNtCsbqH9stoieM8_5alloc6string6StringB27_INtNtBb_6option6OptionB27_ENCNvMs0_B2a_B28_7pointer0NCB4r_s_0E0B3Y_EB2c_.exit, label %bb.d

_RINvXs_NtNtNtCs8Chj7Szqq0n_4core4iter8adapters4skipINtB5_4SkipINtNtNtBb_3str4iter5SplitcEENtNtNtB9_6traits8iterator8Iterator8try_foldRNtNtCs8ZPNfZ0ciAA_10serde_json5value5ValueNCINvNtB7_3map12map_try_foldReNtNtCsbqH9stoieM8_5alloc6string6StringB27_INtNtBb_6option6OptionB27_ENCNvMs0_B2a_B28_7pointer0NCB4r_s_0E0B3Y_EB2c_.exit: ; preds = %bb.e, %_RNvMsf_NtNtCs8Chj7Szqq0n_4core3str4iterINtB5_13SplitInternalcE7get_endCs8ZPNfZ0ciAA_10serde_json.exit.i.i.i.i, %_RNCINvNtNtNtCs8Chj7Szqq0n_4core4iter8adapters3map12map_try_foldReNtNtCsbqH9stoieM8_5alloc6string6StringRNtNtCs8ZPNfZ0ciAA_10serde_json5value5ValueINtNtBa_6option6OptionB1D_ENCNvMs0_B1G_B1E_7pointer0NCB2N_s_0E0B1I_.exit.i.i, %bb.y
  %.sroa.0.0.i = phi ptr [ %0, %bb.y ], [ %.sroa.01.0.i.i, %_RNvMsf_NtNtCs8Chj7Szqq0n_4core3str4iterINtB5_13SplitInternalcE7get_endCs8ZPNfZ0ciAA_10serde_json.exit.i.i.i.i ], [ null, %_RNCINvNtNtNtCs8Chj7Szqq0n_4core4iter8adapters3map12map_try_foldReNtNtCsbqH9stoieM8_5alloc6string6StringRNtNtCs8ZPNfZ0ciAA_10serde_json5value5ValueINtNtBa_6option6OptionB1D_ENCNvMs0_B1G_B1E_7pointer0NCB2N_s_0E0B1I_.exit.i.i ], [ %.sroa.01.0.i.i, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.c
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define void @_RNvMsm_NtNtCs8ZPNfZ0ciAA_10serde_json5value2deNtB7_5Value10unexpected(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %1) unnamed_addr #3 {
bb.a:
  %i.a = load i8, ptr %1, align 8, !range !9, !noundef !5
  switch i8 %i.a, label %default.unreachable1 [
    i8 0, label %2
    i8 1, label %bb.b
    i8 2, label %bb.c
    i8 3, label %bb.g
    i8 4, label %bb.h
    i8 5, label %bb.i
  ], !prof !160

default.unreachable1:                             ; preds = %bb.c, %bb.a
  unreachable

2:                                                ; preds = %bb.a
  store i8 7, ptr %0, align 8
  br label %_RNvMs9_NtCs8ZPNfZ0ciAA_10serde_json6numberNtB5_6Number10unexpected.exit.a

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.c = load i8, ptr %i.b, align 1, !range !11, !noundef !5
  %3 = zext nneg i8 %i.c to i16
  %4 = shl nuw nsw i16 %3, 8
  store i16 %4, ptr %0, align 8
  br label %_RNvMs9_NtCs8ZPNfZ0ciAA_10serde_json6numberNtB5_6Number10unexpected.exit.a

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !161)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !162)
  %i.e = load i64, ptr %i.d, align 8, !range !163, !alias.scope !162, !noundef !5
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  switch i64 %i.e, label %default.unreachable1 [
    i64 0, label %bb.d
    i64 1, label %bb.e
    i64 2, label %bb.f
  ]

bb.d:                                             ; preds = %bb.c
  %i.h = load i64, ptr %i.f, align 8, !alias.scope !162, !noundef !5
  store i64 %i.h, ptr %i.g, align 8, !alias.scope !161
  br label %_RNvMs9_NtCs8ZPNfZ0ciAA_10serde_json6numberNtB5_6Number10unexpected.exit

bb.e:                                             ; preds = %bb.c
  %i.i = load i64, ptr %i.f, align 8, !alias.scope !162, !noundef !5
  store i64 %i.i, ptr %i.g, align 8, !alias.scope !161
  br label %_RNvMs9_NtCs8ZPNfZ0ciAA_10serde_json6numberNtB5_6Number10unexpected.exit

bb.f:                                             ; preds = %bb.c
  %i.j = load double, ptr %i.f, align 8, !alias.scope !162, !noundef !5
  store double %i.j, ptr %i.g, align 8, !alias.scope !161
  br label %_RNvMs9_NtCs8ZPNfZ0ciAA_10serde_json6numberNtB5_6Number10unexpected.exit

_RNvMs9_NtCs8ZPNfZ0ciAA_10serde_json6numberNtB5_6Number10unexpected.exit: ; preds = %bb.d, %bb.e, %bb.f
  %.sink.i = phi i8 [ 3, %bb.f ], [ 2, %bb.e ], [ 1, %bb.d ]
  store i8 %.sink.i, ptr %0, align 8, !alias.scope !161
  br label %_RNvMs9_NtCs8ZPNfZ0ciAA_10serde_json6numberNtB5_6Number10unexpected.exit.a

bb.g:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !nonnull !5, !noundef !5
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.n = load i64, ptr %i.m, align 8, !noundef !5
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.l, ptr %i.o, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.n, ptr %i.p, align 8
  store i8 5, ptr %0, align 8
  br label %_RNvMs9_NtCs8ZPNfZ0ciAA_10serde_json6numberNtB5_6Number10unexpected.exit.a

bb.h:                                             ; preds = %bb.a
  store i8 10, ptr %0, align 8
  br label %_RNvMs9_NtCs8ZPNfZ0ciAA_10serde_json6numberNtB5_6Number10unexpected.exit.a

bb.i:                                             ; preds = %bb.a
  store i8 11, ptr %0, align 8
  br label %_RNvMs9_NtCs8ZPNfZ0ciAA_10serde_json6numberNtB5_6Number10unexpected.exit.a

_RNvMs9_NtCs8ZPNfZ0ciAA_10serde_json6numberNtB5_6Number10unexpected.exit.a: ; preds = %bb.i, %bb.h, %bb.g, %_RNvMs9_NtCs8ZPNfZ0ciAA_10serde_json6numberNtB5_6Number10unexpected.exit, %bb.b, %2
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc { i64, i64 } @_RNvNtCs8ZPNfZ0ciAA_10serde_json5value11parse_index(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef %1) unnamed_addr #2 {
bb.a:
  %i.a = alloca [4 x i8], align 4                 ; 4 uses
  %i.b = alloca [4 x i8], align 4                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i32 43, ptr %i.b, align 4
  %i.c = call noundef zeroext i1 @_RNvMNtCs8Chj7Szqq0n_4core5sliceSh11starts_withCs8ZPNfZ0ciAA_10serde_json(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.b, i64 noundef 1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br i1 %i.c, label %_RNvMsv_NtCs8Chj7Szqq0n_4core3numj27from_ascii_bytes_radix_impl.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i32 48, ptr %i.a, align 4
  %i.d = call noundef zeroext i1 @_RNvMNtCs8Chj7Szqq0n_4core5sliceSh11starts_withCs8ZPNfZ0ciAA_10serde_json(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.a, i64 noundef 1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.e = icmp ne i64 %1, 1
  %or.cond.not = and i1 %i.e, %i.d
  br i1 %or.cond.not, label %_RNvMsv_NtCs8Chj7Szqq0n_4core3numj27from_ascii_bytes_radix_impl.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  switch i64 %1, label %thread-pre-split.i [
    i64 0, label %_RNvMsv_NtCs8Chj7Szqq0n_4core3numj27from_ascii_bytes_radix_impl.exit
    i64 1, label %bb.d
  ]

bb.d:                                             ; preds = %bb.c
  %i.f = load i8, ptr %0, align 1, !alias.scope !166, !noundef !5 ; 2 uses
  switch i8 %i.f, label %bb.e [
    i8 43, label %_RNvMsv_NtCs8Chj7Szqq0n_4core3numj27from_ascii_bytes_radix_impl.exit
    i8 45, label %_RNvMsv_NtCs8Chj7Szqq0n_4core3numj27from_ascii_bytes_radix_impl.exit
  ]

thread-pre-split.i:                               ; preds = %bb.c
  %.pr.i = load i8, ptr %0, align 1, !alias.scope !166
  br label %bb.e

bb.e:                                             ; preds = %thread-pre-split.i, %bb.d
  %i.g = phi i8 [ %.pr.i, %thread-pre-split.i ], [ %i.f, %bb.d ]
  %cond.i = icmp eq i8 %i.g, 43                   ; 2 uses
  %i.h = sext i1 %cond.i to i64
  %.sroa.15.0.i = add nsw i64 %1, %i.h            ; 4 uses
  %.sroa.0.0.idx.i = zext i1 %cond.i to i64
  %.sroa.0.0.i = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.0.0.idx.i ; 2 uses
  %i.i = icmp samesign ult i64 %.sroa.15.0.i, 17
  br i1 %i.i, label %.preheader.i, label %.preheader56.i.preheader

.preheader.i:                                     ; preds = %bb.e
  %.not5366.i = icmp eq i64 %.sroa.15.0.i, 0
  br i1 %.not5366.i, label %_RNvMsv_NtCs8Chj7Szqq0n_4core3numj27from_ascii_bytes_radix_impl.exit, label %.lr.ph.i

.preheader56.i:                                   ; preds = %bb.f
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i25, i64 1
  %i.k = add nsw i64 %.sroa.15.1.i24, -1          ; 2 uses
  %.not52.i.not = icmp eq i64 %i.k, 0
  br i1 %.not52.i.not, label %_RNvMsv_NtCs8Chj7Szqq0n_4core3numj27from_ascii_bytes_radix_impl.exit, label %.preheader56.i.preheader

.preheader56.i.preheader:                         ; preds = %bb.e, %.preheader56.i
  %.sroa.0.1.i25 = phi ptr [ %i.j, %.preheader56.i ], [ %.sroa.0.0.i, %bb.e ] ; 2 uses
  %.sroa.15.1.i24 = phi i64 [ %i.k, %.preheader56.i ], [ %.sroa.15.0.i, %bb.e ]
  %.sroa.042.0.i23 = phi i64 [ %i.t, %.preheader56.i ], [ 0, %bb.e ]
  %i.l = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %.sroa.042.0.i23, i64 10) ; 2 uses
  %i.m = extractvalue { i64, i1 } %i.l, 1
  br i1 %i.m, label %_RNvMsv_NtCs8Chj7Szqq0n_4core3numj27from_ascii_bytes_radix_impl.exit, label %bb.f, !prof !7

bb.f:                                             ; preds = %.preheader56.i.preheader
  %i.n = extractvalue { i64, i1 } %i.l, 0         ; 2 uses
  %i.o = load i8, ptr %.sroa.0.1.i25, align 1, !alias.scope !166, !noundef !5
  %i.p = zext i8 %i.o to i32
  %i.q = add nsw i32 %i.p, -48                    ; 2 uses
  %i.r = icmp ugt i32 %i.q, 9
  %i.s = zext nneg i32 %i.q to i64
  %i.t = add i64 %i.n, %i.s                       ; 3 uses
  %i.u = icmp ult i64 %i.t, %i.n
  %or.cond = select i1 %i.r, i1 true, i1 %i.u, !prof !167
  br i1 %or.cond, label %_RNvMsv_NtCs8Chj7Szqq0n_4core3numj27from_ascii_bytes_radix_impl.exit, label %.preheader56.i, !prof !167

.lr.ph.i:                                         ; preds = %.preheader.i, %bb.g
  %.sroa.0.269.i = phi ptr [ %i.ab, %bb.g ], [ %.sroa.0.0.i, %.preheader.i ] ; 2 uses
  %.sroa.15.268.i = phi i64 [ %i.aa, %bb.g ], [ %.sroa.15.0.i, %.preheader.i ]
  %.sroa.042.267.i = phi i64 [ %i.ad, %bb.g ], [ 0, %.preheader.i ]
  %i.v = load i8, ptr %.sroa.0.269.i, align 1, !alias.scope !166, !noundef !5
  %i.w = zext i8 %i.v to i32
  %i.x = add nsw i32 %i.w, -48                    ; 2 uses
  %i.y = icmp ugt i32 %i.x, 9
  br i1 %i.y, label %_RNvMsv_NtCs8Chj7Szqq0n_4core3numj27from_ascii_bytes_radix_impl.exit, label %bb.g

bb.g:                                             ; preds = %.lr.ph.i
  %i.z = mul i64 %.sroa.042.267.i, 10
  %i.aa = add nsw i64 %.sroa.15.268.i, -1         ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.0.269.i, i64 1
  %i.ac = zext nneg i32 %i.x to i64
  %i.ad = add i64 %i.z, %i.ac                     ; 2 uses
  %.not53.i = icmp eq i64 %i.aa, 0
  br i1 %.not53.i, label %_RNvMsv_NtCs8Chj7Szqq0n_4core3numj27from_ascii_bytes_radix_impl.exit, label %.lr.ph.i

_RNvMsv_NtCs8Chj7Szqq0n_4core3numj27from_ascii_bytes_radix_impl.exit: ; preds = %.preheader56.i, %bb.f, %.preheader56.i.preheader, %bb.g, %.lr.ph.i, %.preheader.i, %bb.d, %bb.d, %bb.c, %bb.a, %bb.b
  %.sroa.4.1 = phi i64 [ undef, %bb.a ], [ undef, %bb.b ], [ 0, %.preheader.i ], [ undef, %bb.d ], [ undef, %bb.c ], [ undef, %bb.d ], [ %i.ad, %bb.g ], [ undef, %.lr.ph.i ], [ undef, %bb.f ], [ undef, %.preheader56.i.preheader ], [ %i.t, %.preheader56.i ]
  %.sroa.0.1 = phi i64 [ 0, %bb.a ], [ 0, %bb.b ], [ 1, %.preheader.i ], [ 0, %bb.d ], [ %1, %bb.c ], [ 0, %bb.d ], [ 1, %bb.g ], [ 0, %.lr.ph.i ], [ 0, %bb.f ], [ 0, %.preheader56.i.preheader ], [ 1, %.preheader56.i ]
  %i.ae = insertvalue { i64, i64 } poison, i64 %.sroa.0.1, 0
  %i.af = insertvalue { i64, i64 } %i.ae, i64 %.sroa.4.1, 1
  ret { i64, i64 } %i.af
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXNtCs8ZPNfZ0ciAA_10serde_json5valueNtB2_5ValueNtNtCs8Chj7Szqq0n_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #2 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [16 x i8], align 8                ; 5 uses
  %i.e = alloca [8 x i8], align 8                 ; 4 uses
  %i.f = load i8, ptr %0, align 8, !range !9, !noundef !5
  switch i8 %i.f, label %default.unreachable31 [
    i8 0, label %bb.b
    i8 1, label %bb.c
    i8 2, label %bb.d
    i8 3, label %bb.e
    i8 4, label %bb.f
    i8 5, label %bb.g
  ]

default.unreachable31:                            ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.g = tail call noundef zeroext i1 @_RNvMsa_NtCs8Chj7Szqq0n_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @15, i64 noundef 4)
  br label %bb.h

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 1
  store ptr %i.h, ptr %i.e, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %i.e, ptr %i.d, align 8
  %.sroa.47.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtRbNtB6_7Display3fmtCs8ZPNfZ0ciAA_10serde_json, ptr %.sroa.47.0..sroa_idx, align 8
  %i.i = load ptr, ptr %1, align 8, !nonnull !5, !noundef !5
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !nonnull !5, !align !12, !noundef !5
  %i.l = call noundef zeroext i1 @_RNvNtCs8Chj7Szqq0n_4core3fmt5write(ptr noundef nonnull %i.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.k, ptr noundef nonnull @16, ptr noundef nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.h

bb.d:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.n = tail call noundef zeroext i1 @_RNvXs3_NtCs8ZPNfZ0ciAA_10serde_json6numberNtB5_6NumberNtNtCs8Chj7Szqq0n_4core3fmt5Debug3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.m, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  br label %bb.h

bb.e:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.o, ptr %i.c, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.c, ptr %i.b, align 8
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @_RNvXs1g_NtCs8Chj7Szqq0n_4core3fmtRNtNtCsbqH9stoieM8_5alloc6string6StringNtB6_5Debug3fmtCs8ZPNfZ0ciAA_10serde_json, ptr %.sroa.43.0..sroa_idx, align 8
  %i.p = load ptr, ptr %1, align 8, !nonnull !5, !noundef !5
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !nonnull !5, !align !12, !noundef !5
  %i.s = call noundef zeroext i1 @_RNvNtCs8Chj7Szqq0n_4core3fmt5write(ptr noundef nonnull %i.p, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.r, ptr noundef nonnull @17, ptr noundef nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.h

bb.f:                                             ; preds = %bb.a
  %i.t = tail call noundef zeroext i1 @_RNvMsa_NtCs8Chj7Szqq0n_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @18, i64 noundef 6)
  br i1 %i.t, label %bb.h, label %bb.i

bb.g:                                             ; preds = %bb.a
  %i.u = tail call noundef zeroext i1 @_RNvMsa_NtCs8Chj7Szqq0n_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @19, i64 noundef 7)
  br i1 %i.u, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.j, %bb.i, %bb.e, %bb.c, %bb.d, %bb.b
  %.sroa.0.0.shrunk = phi i1 [ %i.g, %bb.b ], [ %i.l, %bb.c ], [ %i.n, %bb.d ], [ %i.s, %bb.e ], [ %i.ad, %bb.j ], [ %i.ab, %bb.i ], [ true, %bb.f ], [ true, %bb.g ]
  ret i1 %.sroa.0.0.shrunk

bb.i:                                             ; preds = %bb.f
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.w = load ptr, ptr %i.v, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.y = load i64, ptr %i.x, align 8, !noundef !5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !171
  call void @_RNvMsa_NtCs8Chj7Szqq0n_4core3fmtNtB5_9Formatter10debug_list(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1), !noalias !172
  %i.z = getelementptr inbounds nuw [32 x i8], ptr %i.w, i64 %i.y
  %i.aa = call noundef nonnull align 8 ptr @_RINvMs6_NtNtCs8Chj7Szqq0n_4core3fmt8buildersNtB6_9DebugList7entriesRNtNtCs8ZPNfZ0ciAA_10serde_json5value5ValueINtNtNtBa_5slice4iter4IterB14_EEB18_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull readonly align 8 %i.w, ptr noundef nonnull readonly %i.z)
  %i.ab = call noundef zeroext i1 @_RNvMs6_NtNtCs8Chj7Szqq0n_4core3fmt8buildersNtB5_9DebugList6finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.aa)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !171
  br label %bb.h

bb.j:                                             ; preds = %bb.g
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ad = tail call noundef zeroext i1 @_RNvXs1x_NtNtNtCsbqH9stoieM8_5alloc11collections5btree3mapINtB6_8BTreeMapNtNtBc_6string6StringNtNtCs8ZPNfZ0ciAA_10serde_json5value5ValueENtNtCs8Chj7Szqq0n_4core3fmt5Debug3fmtB1x_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ac, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  br label %bb.h
}

end_hunk_0
begin_hunk_1_@_RNvXs_NtCs8ZPNfZ0ciAA_10serde_json5valueNtB4_5ValueNtNtCs8Chj7Szqq0n_4core3fmt7Display3fmt:bb.a

bb.au:                                            ; preds = %_RINvNtCs8ZPNfZ0ciAA_10serde_json3ser16to_writer_prettyQNtNvXs_NtB4_5valueNtBY_5ValueNtNtCs8Chj7Szqq0n_4core3fmt7Display3fmt15WriterFormatterB19_EB4_.exit.thread, %_RINvNtCs8ZPNfZ0ciAA_10serde_json3ser16to_writer_prettyQNtNvXs_NtB4_5valueNtBY_5ValueNtNtCs8Chj7Szqq0n_4core3fmt7Display3fmt15WriterFormatterB19_EB4_.exit
  %.sroa.0.0.i.i941 = phi ptr [ %.sroa.0.0.i.i9.ph, %_RINvNtCs8ZPNfZ0ciAA_10serde_json3ser16to_writer_prettyQNtNvXs_NtB4_5valueNtBY_5ValueNtNtCs8Chj7Szqq0n_4core3fmt7Display3fmt15WriterFormatterB19_EB4_.exit.thread ], [ %.sroa.0.0.i.i9, %_RINvNtCs8ZPNfZ0ciAA_10serde_json3ser16to_writer_prettyQNtNvXs_NtB4_5valueNtBY_5ValueNtNtCs8Chj7Szqq0n_4core3fmt7Display3fmt15WriterFormatterB19_EB4_.exit ]
  call fastcc void @_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueNtNtCs8ZPNfZ0ciAA_10serde_json5error5ErrorEBF_(ptr nonnull %.sroa.0.0.i.i941)
  br label %bb.at
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs_NtNtCs8ZPNfZ0ciAA_10serde_json5value2deNtB6_5ValueNtNtNtCs8Chj7Szqq0n_4core3str6traits7FromStr8from_str(ptr dead_on_unwind noalias nofree noundef writable sret([32 x i8]) align 8 captures(address) dereferenceable(32) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #2 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %1, ptr %i.a, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %2, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 0, ptr %.sroa.5.0..sroa_idx, align 8
  call void @_RINvNtCs8ZPNfZ0ciAA_10serde_json2de10from_traitNtNtB4_4read7StrReadNtNtB4_5value5ValueEB4_(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs_NtNtCs8ZPNfZ0ciAA_10serde_json5value4fromNtB6_5ValueINtNtCs8Chj7Szqq0n_4core7convert4FromdE4from(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) initializes((0, 1), (8, 24)) %0, double noundef %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 5 uses
  %i.b = tail call double @llvm.fabs.f64(double %1)
  %i.c = fcmp ueq double %i.b, +inf
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 0, ptr %i.a, align 8
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.a, i64 32, i1 false), !alias.scope !258
  br label %_RINvMNtCs8Chj7Szqq0n_4core6optionINtB3_6OptionNtNtCs8ZPNfZ0ciAA_10serde_json6number6NumberE6map_orNtNtBM_5value5ValueNcNtB1y_6Number0EBM_.exit

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !259)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !260)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !261)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !262)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !263)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 2, ptr %i.d, align 8, !alias.scope !264
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store double %1, ptr %.sroa.6.0..sroa_idx, align 8, !alias.scope !264
  store i8 2, ptr %0, align 8, !alias.scope !265
  call fastcc void @_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueNtNtCs8ZPNfZ0ciAA_10serde_json5value5ValueEBF_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.a), !noalias !266
  br label %_RINvMNtCs8Chj7Szqq0n_4core6optionINtB3_6OptionNtNtCs8ZPNfZ0ciAA_10serde_json6number6NumberE6map_orNtNtBM_5value5ValueNcNtB1y_6Number0EBM_.exit

_RINvMNtCs8Chj7Szqq0n_4core6optionINtB3_6OptionNtNtCs8ZPNfZ0ciAA_10serde_json6number6NumberE6map_orNtNtBM_5value5ValueNcNtB1y_6Number0EBM_.exit: ; preds = %bb.b, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc ptr @_RNvYINtNtNtCs8Chj7Szqq0n_4core3str4iter5SplitcENtNtNtNtB9_4iter6traits8iterator8Iterator3nthCs8ZPNfZ0ciAA_10serde_json(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %0, i64 noundef range(i64 0, -1) %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef i64 @_RNvXs_NvNtNtNtNtCs8Chj7Szqq0n_4core4iter6traits8iterator8Iterator10advance_byINtNtNtBe_3str4iter5SplitcENtB4_13SpecAdvanceBy15spec_advance_byCs8ZPNfZ0ciAA_10serde_json(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %0, i64 noundef range(i64 0, -1) %1)
  %.not = icmp eq i64 %i.a, 0
  br i1 %.not, label %bb.b, label %_RNvXsX_NtNtCs8Chj7Szqq0n_4core3str4iterINtB5_5SplitcENtNtNtNtB9_4iter6traits8iterator8Iterator4nextCs8ZPNfZ0ciAA_10serde_json.exit

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !278)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !279)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 65 ; 2 uses
  %i.c = load i8, ptr %i.b, align 1, !range !11, !alias.scope !280, !noundef !5
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %_RNvXsX_NtNtCs8Chj7Szqq0n_4core3str4iterINtB5_5SplitcENtNtNtNtB9_4iter6traits8iterator8Iterator4nextCs8ZPNfZ0ciAA_10serde_json.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val.i.i = load ptr, ptr %i.e, align 8, !alias.scope !280, !nonnull !5, !noundef !5 ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val1.i.i = load i64, ptr %i.f, align 8, !alias.scope !280, !noundef !5 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !281)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.i = load i64, ptr %i.h, align 8, !alias.scope !282, !noundef !5 ; 6 uses
  %.not.i.i.i = icmp ugt i64 %i.i, %.val1.i.i
  %.promoted.i.i.i = load i64, ptr %i.g, align 8, !alias.scope !282 ; 2 uses
  %i.j = icmp ult i64 %i.i, %.promoted.i.i.i
  %or.cond27.i.i.i = or i1 %.not.i.i.i, %i.j
  br i1 %or.cond27.i.i.i, label %_RNvMsf_NtNtCs8Chj7Szqq0n_4core3str4iterINtB5_13SplitInternalcE7get_endCs8ZPNfZ0ciAA_10serde_json.exit.i.i, label %.lr.ph.split.preheader.i.i.i

.lr.ph.split.preheader.i.i.i:                     ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.m = load i8, ptr %i.l, align 8, !alias.scope !282, !noundef !5 ; 2 uses
  %i.n = zext nneg i8 %i.m to i64                 ; 4 uses
  %i.o = icmp ult i8 %i.m, 5
  tail call void @llvm.assume(i1 %i.o)
  %i.p = getelementptr i8, ptr %i.k, i64 %i.n
  %i.q = getelementptr i8, ptr %i.p, i64 -1
  %.pre.i.i.i = load i8, ptr %i.q, align 1, !alias.scope !282 ; 2 uses
  br label %.lr.ph.split.i.i.i

.lr.ph.split.i.i.i:                               ; preds = %bb.f, %.lr.ph.split.preheader.i.i.i
  %i.r = phi i64 [ %i.af, %bb.f ], [ %.promoted.i.i.i, %.lr.ph.split.preheader.i.i.i ] ; 4 uses
  %i.s = sub nuw i64 %i.i, %i.r                   ; 4 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 %i.r ; 2 uses
  %i.u = icmp samesign ult i64 %i.s, 16
  br i1 %i.u, label %.preheader.i.i.i.i, label %bb.d

.preheader.i.i.i.i:                               ; preds = %.lr.ph.split.i.i.i
  %.not.i.i.i.i = icmp eq i64 %i.i, %i.r
  br i1 %.not.i.i.i.i, label %.loopexit15.i.i.i, label %.lr.ph.i.i.i.i

bb.d:                                             ; preds = %.lr.ph.split.i.i.i
  %i.v = tail call { i64, i64 } @_RNvNtNtCs8Chj7Szqq0n_4core5slice6memchr14memchr_aligned(i8 noundef %.pre.i.i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.t, i64 noundef range(i64 0, -9223372036854775808) %i.s), !noalias !283 ; 2 uses
  %i.w = extractvalue { i64, i64 } %i.v, 0
  %i.x = extractvalue { i64, i64 } %i.v, 1
  %i.y = trunc nuw i64 %i.w to i1
  br i1 %i.y, label %.loopexit.i.i.i, label %.loopexit15.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.preheader.i.i.i.i, %bb.e
  %.sroa.04.011.i.i.i.i = phi i64 [ %i.ac, %bb.e ], [ 0, %.preheader.i.i.i.i ] ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.t, i64 %.sroa.04.011.i.i.i.i
  %i.aa = load i8, ptr %i.z, align 1, !alias.scope !284, !noalias !283, !noundef !5
  %i.ab = icmp eq i8 %i.aa, %.pre.i.i.i
  br i1 %i.ab, label %.loopexit.i.i.i, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i.i.i.i
  %i.ac = add nuw nsw i64 %.sroa.04.011.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i.i = icmp eq i64 %i.ac, %i.s
  br i1 %exitcond.not.i.i.i.i, label %.loopexit15.i.i.i, label %.lr.ph.i.i.i.i

.loopexit.i.i.i:                                  ; preds = %.lr.ph.i.i.i.i, %bb.d
  %.sroa.5.0.i.i.i.i = phi i64 [ %i.x, %bb.d ], [ %.sroa.04.011.i.i.i.i, %.lr.ph.i.i.i.i ] ; 2 uses
  %i.ad = icmp ult i64 %.sroa.5.0.i.i.i.i, %i.s
  tail call void @llvm.assume(i1 %i.ad)
  %i.ae = add i64 %i.r, 1
  %i.af = add i64 %i.ae, %.sroa.5.0.i.i.i.i       ; 7 uses
  store i64 %i.af, ptr %i.g, align 8, !alias.scope !282
  %.not11.i.i.i = icmp ult i64 %i.af, %i.n
  %.not12.i.i.i = icmp ugt i64 %i.af, %.val1.i.i
  %or.cond.i.i.i = or i1 %.not11.i.i.i, %.not12.i.i.i
  br i1 %or.cond.i.i.i, label %bb.f, label %bb.g

.loopexit15.i.i.i:                                ; preds = %bb.d, %.preheader.i.i.i.i, %bb.e
  store i64 %i.i, ptr %i.g, align 8, !alias.scope !282
  br label %_RNvMsf_NtNtCs8Chj7Szqq0n_4core3str4iterINtB5_13SplitInternalcE7get_endCs8ZPNfZ0ciAA_10serde_json.exit.i.i

bb.f:                                             ; preds = %bb.g, %.loopexit.i.i.i
  %i.ag = icmp ult i64 %i.i, %i.af
  br i1 %i.ag, label %_RNvMsf_NtNtCs8Chj7Szqq0n_4core3str4iterINtB5_13SplitInternalcE7get_endCs8ZPNfZ0ciAA_10serde_json.exit.i.i, label %.lr.ph.split.i.i.i

bb.g:                                             ; preds = %.loopexit.i.i.i
  %i.ah = sub nuw i64 %i.af, %i.n
  %i.ai = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 %i.ah
  %bcmp.i.i.i = tail call i32 @bcmp(ptr nonnull %i.ai, ptr nonnull %i.k, i64 %i.n), !noalias !285
  %i.aj = icmp eq i32 %bcmp.i.i.i, 0
  br i1 %i.aj, label %_RNvXs_NtNtCs8Chj7Szqq0n_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i.i, label %bb.f

_RNvXs_NtNtCs8Chj7Szqq0n_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i.i: ; preds = %bb.g
  %i.ak = load i64, ptr %0, align 8, !alias.scope !280, !noundef !5
  %i.al = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 %i.ak
  store i64 %i.af, ptr %0, align 8, !alias.scope !280
  br label %_RNvXsX_NtNtCs8Chj7Szqq0n_4core3str4iterINtB5_5SplitcENtNtNtNtB9_4iter6traits8iterator8Iterator4nextCs8ZPNfZ0ciAA_10serde_json.exit

_RNvMsf_NtNtCs8Chj7Szqq0n_4core3str4iterINtB5_13SplitInternalcE7get_endCs8ZPNfZ0ciAA_10serde_json.exit.i.i: ; preds = %bb.f, %.loopexit15.i.i.i, %bb.c
  store i8 1, ptr %i.b, align 1, !alias.scope !286
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.an = load i8, ptr %i.am, align 8, !range !11, !alias.scope !286, !noundef !5
  %i.ao = trunc nuw i8 %i.an to i1
  %.pre.i2.i.i = load i64, ptr %0, align 8, !alias.scope !286 ; 2 uses
  %.phi.trans.insert.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.pre2.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i, align 8, !alias.scope !286
  %.not.i3.i.i = icmp ne i64 %.pre2.i.i.i, %.pre.i2.i.i
  %or.cond.not.i.i.i = select i1 %i.ao, i1 true, i1 %.not.i3.i.i
  %i.ap = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 %.pre.i2.i.i
  %.sroa.0.0.i.i.i = select i1 %or.cond.not.i.i.i, ptr %i.ap, ptr null
  br label %_RNvXsX_NtNtCs8Chj7Szqq0n_4core3str4iterINtB5_5SplitcENtNtNtNtB9_4iter6traits8iterator8Iterator4nextCs8ZPNfZ0ciAA_10serde_json.exit

_RNvXsX_NtNtCs8Chj7Szqq0n_4core3str4iterINtB5_5SplitcENtNtNtNtB9_4iter6traits8iterator8Iterator4nextCs8ZPNfZ0ciAA_10serde_json.exit: ; preds = %_RNvMsf_NtNtCs8Chj7Szqq0n_4core3str4iterINtB5_13SplitInternalcE7get_endCs8ZPNfZ0ciAA_10serde_json.exit.i.i, %_RNvXs_NtNtCs8Chj7Szqq0n_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i.i, %bb.b, %bb.a
  %.sroa.0.0 = phi ptr [ null, %bb.a ], [ null, %bb.b ], [ %i.al, %_RNvXs_NtNtCs8Chj7Szqq0n_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i.i ], [ %.sroa.0.0.i.i.i, %_RNvMsf_NtNtCs8Chj7Szqq0n_4core3str4iterINtB5_13SplitInternalcE7get_endCs8ZPNfZ0ciAA_10serde_json.exit.i.i ]
  ret ptr %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define hidden noundef ptr @_RNvYNtNvXs_NtCs8ZPNfZ0ciAA_10serde_json5valueNtB9_5ValueNtNtCs8Chj7Szqq0n_4core3fmt7Display3fmt15WriterFormatterNtNtNtBW_2io5write5Write9write_allBb_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef range(i64 0, -9223372036854775808) %2) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 6 uses
  %i.b = icmp eq i64 %2, 0
  br i1 %i.b, label %.split39._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.c = load ptr, ptr %0, align 8, !alias.scope !296, !nonnull !5, !align !12, !noundef !5 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.e = tail call noundef zeroext i1 @_RNvMsa_NtCs8Chj7Szqq0n_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef range(i64 0, -9223372036854775808) %2), !noalias !297
  br i1 %i.e, label %.lr.ph56, label %.split39._crit_edge

.lr.ph56:                                         ; preds = %.lr.ph, %bb.e
  call void @llvm.experimental.noalias.scope.decl(metadata !296)
  %i.f = call noundef nonnull ptr @_RINvMNtNtCsbqH9stoieM8_5alloc2io5errorNtNtNtCs8Chj7Szqq0n_4core2io5error5Error3newReECsigunbJSLHCW_3std(i8 noundef 42, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @14, i64 noundef 9) #22, !noalias !296 ; 11 uses
  %i.g = ptrtoint ptr %i.f to i64                 ; 4 uses
  %i.h = and i64 %i.g, 3
  switch i64 %i.h, label %default.unreachable [
    i64 2, label %bb.b
    i64 3, label %.split38
    i64 0, label %.split
    i64 1, label %_RINvNtNtNtCs8Chj7Szqq0n_4core2io5error4repr11decode_reprRNtB4_6CustomNCNvMs0_B2_NtB2_4Repr4data0ECs8ZPNfZ0ciAA_10serde_json.exit.thread20.i
  ], !prof !8

default.unreachable:                              ; preds = %.lr.ph56
  unreachable

bb.b:                                             ; preds = %.lr.ph56
  %i.i = invoke noundef nonnull align 8 ptr @_RNvNtNtNtCs8Chj7Szqq0n_4core2io5error12os_functions16get_os_functions()
          to label %.noexc unwind label %bb.f

.noexc:                                           ; preds = %bb.b
  %i.j = lshr i64 %i.g, 32
  %i.k = trunc nuw i64 %i.j to i32
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !nonnull !5, !noundef !5
  %i.n = invoke noundef zeroext i1 %i.m(i32 noundef %i.k)
          to label %_RNvMs1_NtNtCs8Chj7Szqq0n_4core2io5errorNtB5_5Error14is_interrupted.exit unwind label %bb.f, !inline_history !291

_RINvNtNtNtCs8Chj7Szqq0n_4core2io5error4repr11decode_reprRNtB4_6CustomNCNvMs0_B2_NtB2_4Repr4data0ECs8ZPNfZ0ciAA_10serde_json.exit.thread20.i: ; preds = %.lr.ph56
  %3 = getelementptr i8, ptr %i.f, i64 31
  %4 = load i8, ptr %3, align 8, !range !298, !noundef !5
  %5 = icmp eq i8 %4, 35
  br i1 %5, label %bb.d, label %.split39._crit_edge

.split38:                                         ; preds = %.lr.ph56
  %i.o = lshr i64 %i.g, 32
  %i.p = icmp ult ptr %i.f, inttoptr (i64 188978561024 to ptr)
  %switch.idx.cast.i.i.i = trunc i64 %i.o to i8
  %spec.select.i.i.i = select i1 %i.p, i8 %switch.idx.cast.i.i.i, i8 -1 ; 2 uses
  %i.q = icmp ne i8 %spec.select.i.i.i, -1
  call void @llvm.assume(i1 %i.q)
  %i.r = icmp eq i8 %spec.select.i.i.i, 35
  br i1 %i.r, label %bb.c, label %.split39._crit_edge

.split:                                           ; preds = %.lr.ph56
  %i.s = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.t = load i8, ptr %i.s, align 8, !range !298, !noundef !5
  %i.u = icmp eq i8 %i.t, 35
  br i1 %i.u, label %.thread.thread, label %.split39._crit_edge

_RNvMs1_NtNtCs8Chj7Szqq0n_4core2io5errorNtB5_5Error14is_interrupted.exit: ; preds = %.noexc
  br i1 %i.n, label %.thread.thread, label %.split39._crit_edge

.split39._crit_edge:                              ; preds = %.split, %.split38, %_RINvNtNtNtCs8Chj7Szqq0n_4core2io5error4repr11decode_reprRNtB4_6CustomNCNvMs0_B2_NtB2_4Repr4data0ECs8ZPNfZ0ciAA_10serde_json.exit.thread20.i, %_RNvMs1_NtNtCs8Chj7Szqq0n_4core2io5errorNtB5_5Error14is_interrupted.exit, %bb.e, %.lr.ph, %bb.a
  %.sroa.07.1 = phi ptr [ null, %bb.a ], [ null, %.lr.ph ], [ null, %bb.e ], [ %i.f, %_RNvMs1_NtNtCs8Chj7Szqq0n_4core2io5errorNtB5_5Error14is_interrupted.exit ], [ %i.f, %.split38 ], [ %i.f, %.split ], [ %i.f, %_RINvNtNtNtCs8Chj7Szqq0n_4core2io5error4repr11decode_reprRNtB4_6CustomNCNvMs0_B2_NtB2_4Repr4data0ECs8ZPNfZ0ciAA_10serde_json.exit.thread20.i ]
  ret ptr %.sroa.07.1

.thread.thread:                                   ; preds = %_RNvMs1_NtNtCs8Chj7Szqq0n_4core2io5errorNtB5_5Error14is_interrupted.exit, %.split
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  br label %bb.e

bb.c:                                             ; preds = %.split38
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.v = icmp ult ptr %i.f, inttoptr (i64 188978561024 to ptr)
  %i.w = and i64 %i.g, 1095216660480
  %i.x = icmp ne i64 %i.w, 1095216660480
  call void @llvm.assume(i1 %i.v)
  call void @llvm.assume(i1 %i.x)
  br label %bb.e

bb.d:                                             ; preds = %_RINvNtNtNtCs8Chj7Szqq0n_4core2io5error4repr11decode_reprRNtB4_6CustomNCNvMs0_B2_NtB2_4Repr4data0ECs8ZPNfZ0ciAA_10serde_json.exit.thread20.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.y = getelementptr i8, ptr %i.f, i64 -1       ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.y) ]
  store ptr %i.y, ptr %i.d, align 8, !alias.scope !299
  store i8 3, ptr %i.a, align 8, !alias.scope !299
  call void @_RNvXsd_NtNtCs8Chj7Szqq0n_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.d)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %.thread.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.z = call noundef zeroext i1 @_RNvMsa_NtCs8Chj7Szqq0n_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef range(i64 0, -9223372036854775808) %2), !noalias !300
  br i1 %i.z, label %.lr.ph56, label %.split39._crit_edge

bb.f:                                             ; preds = %.noexc, %bb.b
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs8ZPNfZ0ciAA_10serde_json(ptr nonnull %i.f) #18
          to label %bb.g unwind label %bb.h

bb.g:                                             ; preds = %bb.f
  resume { ptr, i32 } %lpad.thr_comm

bb.h:                                             ; preds = %bb.f
  %i.aa = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs8Chj7Szqq0n_4core9panicking16panic_in_cleanup() #19
  unreachable
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

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #7

; Function Attrs: cold nonlazybind uwtable
declare noundef nonnull align 8 ptr @_RNvXs6_NtCs8ZPNfZ0ciAA_10serde_json5errorNtB5_5ErrorNtNtCsdnjrqM8ey3e_10serde_core2de5Error12invalid_type(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24), ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #8

; Function Attrs: cold minsize noinline noreturn nonlazybind optsize uwtable
declare void @_RNvNtCs8Chj7Szqq0n_4core9panicking18panic_bounds_check(i64 noundef, i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #9

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsbqH9stoieM8_5alloc3vecINtB5_3VecNtNtCs8ZPNfZ0ciAA_10serde_json5value5ValueENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropBJ_(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsbqH9stoieM8_5alloc3vecINtB5_3VechENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCs8ZPNfZ0ciAA_10serde_json(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsbqH9stoieM8_5alloc7raw_vecINtB5_6RawVecNtNtCs8ZPNfZ0ciAA_10serde_json5value5ValueENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropBQ_(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsbqH9stoieM8_5alloc7raw_vecINtB5_6RawVechENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCs8ZPNfZ0ciAA_10serde_json(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXNtNtNtCsbqH9stoieM8_5alloc11collections5btree3mapINtB2_8BTreeMapNtNtB8_6string6StringNtNtCs8ZPNfZ0ciAA_10serde_json5value5ValueENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropB1t_(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare void @_RNvXsd_NtNtCs8Chj7Szqq0n_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden noundef align 8 ptr @_RINvXs4_NtCs8ZPNfZ0ciAA_10serde_json6numberNtB6_6NumberNtNtCsdnjrqM8ey3e_10serde_core3ser9Serialize9serializeQINtNtB8_3ser10SerializerQNtNvXs_NtB8_5valueNtB2g_5ValueNtNtCs8Chj7Szqq0n_4core3fmt7Display3fmt15WriterFormatterEEB8_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden noundef align 8 ptr @_RINvYQINtNtCs8ZPNfZ0ciAA_10serde_json3ser10SerializerQNtNvXs_NtB9_5valueNtBX_5ValueNtNtCs8Chj7Szqq0n_4core3fmt7Display3fmt15WriterFormatterENtNtCsdnjrqM8ey3e_10serde_core3ser10Serializer11collect_seqRINtNtCsbqH9stoieM8_5alloc3vec3VecB18_EEB9_(ptr noalias nofree noundef align 8 dereferenceable(8), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, ptr } @_RNvXsk_NtNtNtCsbqH9stoieM8_5alloc11collections5btree3mapINtB5_4IterNtNtBb_6string6StringNtNtCs8ZPNfZ0ciAA_10serde_json5value5ValueENtNtNtNtCs8Chj7Szqq0n_4core4iter6traits8iterator8Iterator4nextB1s_(ptr noalias nofree noundef align 8 dereferenceable(72)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden noundef align 8 ptr @_RINvYINtNtCs8ZPNfZ0ciAA_10serde_json3ser8CompoundQNtNvXs_NtB8_5valueNtBT_5ValueNtNtCs8Chj7Szqq0n_4core3fmt7Display3fmt15WriterFormatterNtB6_16CompactFormatterENtNtCsdnjrqM8ey3e_10serde_core3ser12SerializeMap15serialize_entryNtNtCsbqH9stoieM8_5alloc6string6StringB14_EB8_(ptr noalias nofree noundef align 8 dereferenceable(16), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden noundef align 8 ptr @_RINvXs4_NtCs8ZPNfZ0ciAA_10serde_json6numberNtB6_6NumberNtNtCsdnjrqM8ey3e_10serde_core3ser9Serialize9serializeQINtNtB8_3ser10SerializerQNtNvXs_NtB8_5valueNtB2g_5ValueNtNtCs8Chj7Szqq0n_4core3fmt7Display3fmt15WriterFormatterNtB1N_15PrettyFormatterEEB8_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), ptr noalias nofree noundef align 8 dereferenceable(40)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden noundef align 8 ptr @_RINvYQINtNtCs8ZPNfZ0ciAA_10serde_json3ser10SerializerQNtNvXs_NtB9_5valueNtBX_5ValueNtNtCs8Chj7Szqq0n_4core3fmt7Display3fmt15WriterFormatterNtB7_15PrettyFormatterENtNtCsdnjrqM8ey3e_10serde_core3ser10Serializer11collect_seqRINtNtCsbqH9stoieM8_5alloc3vec3VecB18_EEB9_(ptr noalias nofree noundef align 8 dereferenceable(40), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden noundef align 8 ptr @_RINvYINtNtCs8ZPNfZ0ciAA_10serde_json3ser8CompoundQNtNvXs_NtB8_5valueNtBT_5ValueNtNtCs8Chj7Szqq0n_4core3fmt7Display3fmt15WriterFormatterNtB6_15PrettyFormatterENtNtCsdnjrqM8ey3e_10serde_core3ser12SerializeMap15serialize_entryNtNtCsbqH9stoieM8_5alloc6string6StringB14_EB8_(ptr noalias nofree noundef align 8 dereferenceable(16), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs_NtCsdnjrqM8ey3e_10serde_core2deNtNtB4_5impls11UnitVisitorNtB4_8Expected3fmtCs8ZPNfZ0ciAA_10serde_json(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden noundef align 8 ptr @_RINvMsi_NtNtNtCsbqH9stoieM8_5alloc11collections5btree3mapINtB6_8BTreeMapNtNtBc_6string6StringNtNtCs8ZPNfZ0ciAA_10serde_json5value5ValueE7get_mutB18_EB1x_(ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden noundef align 8 ptr @_RINvMsi_NtNtNtCsbqH9stoieM8_5alloc11collections5btree3mapINtB6_8BTreeMapNtNtBc_6string6StringNtNtCs8ZPNfZ0ciAA_10serde_json5value5ValueE3getB18_EB1x_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvMNtCs8Chj7Szqq0n_4core5sliceSh11starts_withCs8ZPNfZ0ciAA_10serde_json(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare noundef nonnull align 8 ptr @_RNvNtNtNtCs8Chj7Szqq0n_4core2io5error12os_functions16get_os_functions() unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs5_NtCsbqH9stoieM8_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs8ZPNfZ0ciAA_10serde_json(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), i64 noundef, i1 noundef zeroext, i64 noundef range(i64 1, -9223372036854775807), i64 noundef) unnamed_addr #2

; Function Attrs: cold minsize noreturn nonlazybind optsize uwtable
declare void @_RNvNtCsbqH9stoieM8_5alloc7raw_vec12handle_error(i64 noundef range(i64 0, -9223372036854775807), i64) unnamed_addr #10

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs_NtCsbqH9stoieM8_5alloc3vecINtB4_3VechE7reserveCs8ZPNfZ0ciAA_10serde_json(ptr noalias nofree noundef align 8 dereferenceable(24), i64 noundef) unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #8

; Function Attrs: nonlazybind uwtable
declare { i64, i64 } @_RNvNtNtCs8Chj7Szqq0n_4core5slice6memchr14memchr_aligned(i8 noundef, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #2

; Function Attrs: noinline nonlazybind uwtable
declare noundef nonnull ptr @_RINvMNtNtCsbqH9stoieM8_5alloc2io5errorNtNtNtCs8Chj7Szqq0n_4core2io5error5Error3newReECsigunbJSLHCW_3std(i8 noundef range(i8 0, 44), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #11

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMsa_NtCs8Chj7Szqq0n_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtRbNtB6_7Display3fmtCs8ZPNfZ0ciAA_10serde_json(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvNtCs8Chj7Szqq0n_4core3fmt5write(ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48), ptr noundef nonnull, ptr noundef nonnull) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs3_NtCs8ZPNfZ0ciAA_10serde_json6numberNtB5_6NumberNtNtCs8Chj7Szqq0n_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCs8Chj7Szqq0n_4core3fmtRNtNtCsbqH9stoieM8_5alloc6string6StringNtB6_5Debug3fmtCs8ZPNfZ0ciAA_10serde_json(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1x_NtNtNtCsbqH9stoieM8_5alloc11collections5btree3mapINtB6_8BTreeMapNtNtBc_6string6StringNtNtCs8ZPNfZ0ciAA_10serde_json5value5ValueENtNtCs8Chj7Szqq0n_4core3fmt5Debug3fmtB1x_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #8

; Function Attrs: cold nonlazybind uwtable
declare noundef nonnull align 8 ptr @_RNvMs0_NtCs8ZPNfZ0ciAA_10serde_json5errorNtB5_5Error2io(ptr noundef nonnull) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef ptr @_RINvNtCs8ZPNfZ0ciAA_10serde_json3ser18format_escaped_strQNtNvXs_NtB4_5valueNtB10_5ValueNtNtCs8Chj7Szqq0n_4core3fmt7Display3fmt15WriterFormatterNtB2_16CompactFormatterEB4_(ptr noalias nofree noundef align 8 dereferenceable(8), ptr noalias nofree noundef nonnull, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden noundef ptr @_RINvNtCs8ZPNfZ0ciAA_10serde_json3ser18format_escaped_strQNtNvXs_NtB4_5valueNtB10_5ValueNtNtCs8Chj7Szqq0n_4core3fmt7Display3fmt15WriterFormatterNtB2_15PrettyFormatterEB4_(ptr noalias nofree noundef align 8 dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(32), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #2

; Function Attrs: nounwind nonlazybind allockind("free") uwtable
declare void @_RNvCsicpYtSlSgpD_7___rustc14___rust_dealloc(ptr allocptr noundef nonnull captures(address), i64 noundef, i64 noundef range(i64 1, -9223372036854775807)) unnamed_addr #12

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtCs8ZPNfZ0ciAA_10serde_json2de10from_traitNtNtB4_4read7StrReadNtNtB4_5value5ValueEB4_(ptr dead_on_unwind noalias nofree noundef writable sret([32 x i8]) align 8 captures(address) dereferenceable(32), ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24)) unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #8

; Function Attrs: nonlazybind uwtable
declare void @_RNvMsa_NtCs8Chj7Szqq0n_4core3fmtNtB5_9Formatter10debug_list(ptr dead_on_unwind noalias nofree noundef writable sret([16 x i8]) align 8 captures(address) dereferenceable(16), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull align 8 ptr @_RINvMs6_NtNtCs8Chj7Szqq0n_4core3fmt8buildersNtB6_9DebugList7entriesRNtNtCs8ZPNfZ0ciAA_10serde_json5value5ValueINtNtNtBa_5slice4iter4IterB14_EEB18_(ptr noalias nofree noundef align 8 dereferenceable(16), ptr noundef nonnull, ptr noundef) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMs6_NtNtCs8Chj7Szqq0n_4core3fmt8buildersNtB5_9DebugList6finish(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare void @_RNvMsu_NtNtCs8Chj7Szqq0n_4core3str7patternNtB5_11StrSearcher3new(ptr dead_on_unwind noalias nofree noundef writable sret([104 x i8]) align 8 captures(none) dereferenceable(104), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #2

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCs8Chj7Szqq0n_4core3str16slice_error_fail(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, i64 noundef, i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #13

; Function Attrs: nonlazybind uwtable
declare hidden noundef i64 @_RNvXs_NvNtNtNtNtCs8Chj7Szqq0n_4core4iter6traits8iterator8Iterator10advance_byINtNtNtBe_3str4iter5SplitcENtB4_13SpecAdvanceBy15spec_advance_byCs8ZPNfZ0ciAA_10serde_json(ptr noalias nofree noundef align 8 dereferenceable(72), i64 noundef) unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind nonlazybind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #14

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #15

attributes #0 = { inlinehint nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #1 = { cold nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #2 = { nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #3 = { cold mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #4 = { nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { cold minsize noinline noreturn nounwind nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #8 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
end_hunk_1
