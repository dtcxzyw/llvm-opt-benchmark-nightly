Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/candle-rs/original/candle_datasets-6e6d6245fef4de79.candle_datasets.60f338b118604b5e-cgu.6?download=true
inline.NumInlined: 292
inline.NumDeleted: 143
begin_hunk_0_@_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCsgCecv3eZDcN_5alloc3vec13in_place_drop11InPlaceDropINtNtNtCsd5Y3rNriENo_7parquet4file17serialized_reader20SerializedFileReaderNtNtCs5Xr050g3D4S_3std2fs4FileEEECs8k3UfHgJ3Xe_15candle_datasets:bb.a

_RNvXs_NtNtCsgCecv3eZDcN_5alloc3vec13in_place_dropINtB4_11InPlaceDropINtNtNtCsd5Y3rNriENo_7parquet4file17serialized_reader20SerializedFileReaderNtNtCs5Xr050g3D4S_3std2fs4FileEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs8k3UfHgJ3Xe_15candle_datasets.exit: ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtCslNfBYP6XxvI_10native_tls5ErrorECs8k3UfHgJ3Xe_15candle_datasets(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !76)
  %i.b = load i64, ptr %0, align 8, !range !77, !alias.scope !76, !noundef !4 ; 4 uses
  %i.c = icmp ne i64 %i.b, -9223372036854775807
  tail call void @llvm.assume(i1 %i.c)
  %i.d = xor i64 %i.b, -9223372036854775808       ; 2 uses
  %i.e = icmp ult i64 %i.d, 5
  %i.f = select i1 %i.e, i64 %i.d, i64 1
  switch i64 %i.f, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCslNfBYP6XxvI_10native_tls3imp5ErrorECs8k3UfHgJ3Xe_15candle_datasets.exit [
    i64 0, label %bb.b
    i64 1, label %bb.e
  ]

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtCs4fBVJMlcrDr_7openssl5error5ErrorENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs8k3UfHgJ3Xe_15candle_datasets(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs4fBVJMlcrDr_7openssl5error10ErrorStackECs8k3UfHgJ3Xe_15candle_datasets.exit.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecNtNtCs4fBVJMlcrDr_7openssl5error5ErrorENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs8k3UfHgJ3Xe_15candle_datasets(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %common.resume.i unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #11
  unreachable

common.resume.i:                                  ; preds = %bb.k, %bb.c
  %common.resume.op.i = phi { ptr, i32 } [ %i.h, %bb.c ], [ %i.t, %bb.k ]
  resume { ptr, i32 } %common.resume.op.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs4fBVJMlcrDr_7openssl5error10ErrorStackECs8k3UfHgJ3Xe_15candle_datasets.exit.i: ; preds = %bb.b
  tail call void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecNtNtCs4fBVJMlcrDr_7openssl5error5ErrorENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs8k3UfHgJ3Xe_15candle_datasets(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g)
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCslNfBYP6XxvI_10native_tls3imp5ErrorECs8k3UfHgJ3Xe_15candle_datasets.exit

bb.e:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !78)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !79)
  %i.j = icmp eq i64 %i.b, -2
  br i1 %i.j, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCslNfBYP6XxvI_10native_tls3imp5ErrorECs8k3UfHgJ3Xe_15candle_datasets.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @llvm.experimental.noalias.scope.decl(metadata !80)
  %i.k = icmp eq i64 %i.b, -1
  br i1 %i.k, label %bb.g, label %bb.j

bb.g:                                             ; preds = %bb.f
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val.i.i.i.i = load ptr, ptr %i.l, align 8, !alias.scope !81, !nonnull !4, !noundef !4 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !81
  %i.m = ptrtoint ptr %.val.i.i.i.i to i64        ; 2 uses
  %i.n = and i64 %i.m, 3
  switch i64 %i.n, label %default.unreachable [
    i64 2, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs8k3UfHgJ3Xe_15candle_datasets.exit.i.i.i.i
    i64 3, label %bb.h
    i64 0, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs8k3UfHgJ3Xe_15candle_datasets.exit.i.i.i.i
    i64 1, label %bb.i
  ], !prof !8

default.unreachable:                              ; preds = %bb.g
  unreachable

bb.h:                                             ; preds = %bb.g
  %i.o = icmp ult ptr %.val.i.i.i.i, inttoptr (i64 188978561024 to ptr)
  %i.p = and i64 %i.m, 1095216660480
  %i.q = icmp ne i64 %i.p, 1095216660480
  tail call void @llvm.assume(i1 %i.o)
  tail call void @llvm.assume(i1 %i.q)
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs8k3UfHgJ3Xe_15candle_datasets.exit.i.i.i.i

bb.i:                                             ; preds = %bb.g
  %i.r = getelementptr i8, ptr %.val.i.i.i.i, i64 -1 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.r) ]
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store ptr %i.r, ptr %i.s, align 8, !alias.scope !82, !noalias !81
  store i8 3, ptr %i.a, align 8, !alias.scope !82, !noalias !81
  call void @_RNvXsd_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.s), !noalias !81
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs8k3UfHgJ3Xe_15candle_datasets.exit.i.i.i.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs8k3UfHgJ3Xe_15candle_datasets.exit.i.i.i.i: ; preds = %bb.i, %bb.h, %bb.g, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !81
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCslNfBYP6XxvI_10native_tls3imp5ErrorECs8k3UfHgJ3Xe_15candle_datasets.exit

bb.j:                                             ; preds = %bb.f
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtCs4fBVJMlcrDr_7openssl5error5ErrorENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs8k3UfHgJ3Xe_15candle_datasets(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %0)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs4fBVJMlcrDr_7openssl5error10ErrorStackECs8k3UfHgJ3Xe_15candle_datasets.exit.i.i.i.i unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.t = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecNtNtCs4fBVJMlcrDr_7openssl5error5ErrorENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs8k3UfHgJ3Xe_15candle_datasets(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %0)
          to label %common.resume.i unwind label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.u = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #11
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs4fBVJMlcrDr_7openssl5error10ErrorStackECs8k3UfHgJ3Xe_15candle_datasets.exit.i.i.i.i: ; preds = %bb.j
  tail call void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecNtNtCs4fBVJMlcrDr_7openssl5error5ErrorENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs8k3UfHgJ3Xe_15candle_datasets(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %0)
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCslNfBYP6XxvI_10native_tls3imp5ErrorECs8k3UfHgJ3Xe_15candle_datasets.exit

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCslNfBYP6XxvI_10native_tls3imp5ErrorECs8k3UfHgJ3Xe_15candle_datasets.exit: ; preds = %bb.a, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs4fBVJMlcrDr_7openssl5error10ErrorStackECs8k3UfHgJ3Xe_15candle_datasets.exit.i, %bb.e, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs8k3UfHgJ3Xe_15candle_datasets.exit.i.i.i.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs4fBVJMlcrDr_7openssl5error10ErrorStackECs8k3UfHgJ3Xe_15candle_datasets.exit.i.i.i.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs5Xr050g3D4S_3std4path7PathBufECs8k3UfHgJ3Xe_15candle_datasets(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs8k3UfHgJ3Xe_15candle_datasets(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs5Xr050g3D4S_3std3ffi6os_str8OsStringECs8k3UfHgJ3Xe_15candle_datasets.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs8k3UfHgJ3Xe_15candle_datasets(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc7raw_vec6RawVechEECs8k3UfHgJ3Xe_15candle_datasets.exit.i.i.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #11
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc7raw_vec6RawVechEECs8k3UfHgJ3Xe_15candle_datasets.exit.i.i.i: ; preds = %bb.b
  resume { ptr, i32 } %i.a

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs5Xr050g3D4S_3std3ffi6os_str8OsStringECs8k3UfHgJ3Xe_15candle_datasets.exit: ; preds = %bb.a
  tail call void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs8k3UfHgJ3Xe_15candle_datasets(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsaPlfBUY5LAj_10serde_json5error5ErrorECs8k3UfHgJ3Xe_15candle_datasets(ptr captures(address) %.0.val) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !89)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !90)
  %i.b = load i64, ptr %.0.val, align 8, !range !91, !alias.scope !92, !noundef !4
  switch i64 %i.b, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNtNtCsaPlfBUY5LAj_10serde_json5error9ErrorImplEECs8k3UfHgJ3Xe_15candle_datasets.exit [
    i64 0, label %bb.b
    i64 1, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %.0.val, i64 16
  %.val2.i.i.i = load i64, ptr %i.c, align 8, !alias.scope !92, !noundef !4 ; 2 uses
  %i.d = icmp eq i64 %.val2.i.i.i, 0
  br i1 %i.d, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNtNtCsaPlfBUY5LAj_10serde_json5error9ErrorImplEECs8k3UfHgJ3Xe_15candle_datasets.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %.0.val, i64 8
  %.val1.i.i.i = load ptr, ptr %i.e, align 8, !alias.scope !92, !nonnull !4, !noundef !4
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i, i64 noundef range(i64 1, 0) %.val2.i.i.i, i64 noundef 1) #12, !noalias !92
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNtNtCsaPlfBUY5LAj_10serde_json5error9ErrorImplEECs8k3UfHgJ3Xe_15candle_datasets.exit

bb.d:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %.0.val, i64 8
  %.val.i.i.i = load ptr, ptr %i.f, align 8, !alias.scope !92, !nonnull !4, !noundef !4 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !92
  %i.g = ptrtoint ptr %.val.i.i.i to i64          ; 2 uses
  %i.h = and i64 %i.g, 3
  switch i64 %i.h, label %default.unreachable [
    i64 2, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs8k3UfHgJ3Xe_15candle_datasets.exit.i.i.i
    i64 3, label %bb.e
    i64 0, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs8k3UfHgJ3Xe_15candle_datasets.exit.i.i.i
    i64 1, label %bb.f
  ], !prof !8

default.unreachable:                              ; preds = %bb.d
  unreachable

bb.e:                                             ; preds = %bb.d
  %i.i = icmp ult ptr %.val.i.i.i, inttoptr (i64 188978561024 to ptr)
  %i.j = and i64 %i.g, 1095216660480
  %i.k = icmp ne i64 %i.j, 1095216660480
  tail call void @llvm.assume(i1 %i.i)
  tail call void @llvm.assume(i1 %i.k)
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs8k3UfHgJ3Xe_15candle_datasets.exit.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.l = getelementptr i8, ptr %.val.i.i.i, i64 -1 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.l) ]
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store ptr %i.l, ptr %i.m, align 8, !alias.scope !93, !noalias !92
  store i8 3, ptr %i.a, align 8, !alias.scope !93, !noalias !92
  invoke void @_RNvXsd_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.m)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs8k3UfHgJ3Xe_15candle_datasets.exit.i.i.i unwind label %bb.g

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs8k3UfHgJ3Xe_15candle_datasets.exit.i.i.i: ; preds = %bb.f, %bb.e, %bb.d, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !92
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNtNtCsaPlfBUY5LAj_10serde_json5error9ErrorImplEECs8k3UfHgJ3Xe_15candle_datasets.exit

bb.g:                                             ; preds = %bb.f
  %i.n = landingpad { ptr, i32 }
          cleanup
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef 40, i64 noundef 8) #12
  resume { ptr, i32 } %i.n

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNtNtCsaPlfBUY5LAj_10serde_json5error9ErrorImplEECs8k3UfHgJ3Xe_15candle_datasets.exit: ; preds = %bb.a, %bb.b, %bb.c, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs8k3UfHgJ3Xe_15candle_datasets.exit.i.i.i
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef 40, i64 noundef 8) #12
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsat2oUP5WrwS_6hf_hub3api8SiblingsECs8k3UfHgJ3Xe_15candle_datasets(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs8k3UfHgJ3Xe_15candle_datasets(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECs8k3UfHgJ3Xe_15candle_datasets.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs8k3UfHgJ3Xe_15candle_datasets(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc7raw_vec6RawVechEECs8k3UfHgJ3Xe_15candle_datasets.exit.i.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #11
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc7raw_vec6RawVechEECs8k3UfHgJ3Xe_15candle_datasets.exit.i.i: ; preds = %bb.b
  resume { ptr, i32 } %i.a

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECs8k3UfHgJ3Xe_15candle_datasets.exit: ; preds = %bb.a
  tail call void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs8k3UfHgJ3Xe_15candle_datasets(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECs8k3UfHgJ3Xe_15candle_datasets(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs8k3UfHgJ3Xe_15candle_datasets(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECs8k3UfHgJ3Xe_15candle_datasets.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs8k3UfHgJ3Xe_15candle_datasets(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc7raw_vec6RawVechEECs8k3UfHgJ3Xe_15candle_datasets.exit.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #11
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc7raw_vec6RawVechEECs8k3UfHgJ3Xe_15candle_datasets.exit.i: ; preds = %bb.b
  resume { ptr, i32 } %i.a

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECs8k3UfHgJ3Xe_15candle_datasets.exit: ; preds = %bb.a
  tail call void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs8k3UfHgJ3Xe_15candle_datasets(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core5error5ErrorECs8k3UfHgJ3Xe_15candle_datasets(ptr noalias nofree noundef nonnull align 8 dereferenceable(80) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = alloca [16 x i8], align 8                ; 4 uses
  %i.c = alloca [16 x i8], align 8                ; 4 uses
  %i.d = load i64, ptr %0, align 8, !range !115, !noundef !4 ; 3 uses
  %i.e = icmp ne i64 %i.d, -9223372036854775793
  tail call void @llvm.assume(i1 %i.e)
  %i.f = xor i64 %i.d, -9223372036854775808
  %i.g = icmp slt i64 %i.d, 0
  %i.h = select i1 %i.g, i64 %i.f, i64 15
  switch i64 %i.h, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SendNtB1w_4SyncEL_EECs8k3UfHgJ3Xe_15candle_datasets.exit [
    i64 3, label %bb.b
    i64 4, label %bb.e
    i64 5, label %bb.h
    i64 6, label %bb.k
    i64 7, label %bb.n
    i64 8, label %bb.q
    i64 9, label %bb.t
    i64 10, label %bb.w
    i64 11, label %bb.z
    i64 14, label %bb.ac
    i64 15, label %bb.af
    i64 17, label %bb.ai
    i64 19, label %bb.al
    i64 26, label %bb.ar
    i64 27, label %bb.au
    i64 28, label %bb.ba
    i64 30, label %bb.bd
    i64 31, label %bb.bg
    i64 33, label %bb.bo
    i64 34, label %bb.br
    i64 35, label %bb.bu
    i64 37, label %bb.cj
    i64 38, label %bb.cp
    i64 39, label %bb.cv
    i64 40, label %bb.cw
    i64 41, label %bb.cx
    i64 42, label %bb.cy
  ]

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SendNtB1w_4SyncEL_EECs8k3UfHgJ3Xe_15candle_datasets.exit: ; preds = %bb.ec, %bb.eb, %bb.cm, %bb.cl, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecjEECs8k3UfHgJ3Xe_15candle_datasets.exit.i62, %bb.cf, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs8k3UfHgJ3Xe_15candle_datasets.exit.i64, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECs8k3UfHgJ3Xe_15candle_datasets.exit4.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECs8k3UfHgJ3Xe_15candle_datasets.exit.i, %bb.bv, %bb.bu, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECs8k3UfHgJ3Xe_15candle_datasets.exit.i.i, %bb.bk, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs8k3UfHgJ3Xe_15candle_datasets.exit.i, %bb.bg, %bb.ax, %bb.aw, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNtNtCs5Xr050g3D4S_3std9backtrace9BacktraceEECs8k3UfHgJ3Xe_15candle_datasets.exit, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs5Xr050g3D4S_3std4path7PathBufECs8k3UfHgJ3Xe_15candle_datasets.exit, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECs8k3UfHgJ3Xe_15candle_datasets.exit113, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core5shape5ShapeECs8k3UfHgJ3Xe_15candle_datasets.exit110, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core5shape5ShapeECs8k3UfHgJ3Xe_15candle_datasets.exit107, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core5shape5ShapeECs8k3UfHgJ3Xe_15candle_datasets.exit104, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core5shape5ShapeECs8k3UfHgJ3Xe_15candle_datasets.exit101, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core5shape5ShapeECs8k3UfHgJ3Xe_15candle_datasets.exit98, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecjEECs8k3UfHgJ3Xe_15candle_datasets.exit90, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECs8k3UfHgJ3Xe_15candle_datasets.exit88, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs8k3UfHgJ3Xe_15candle_datasets.exit, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string13FromUtf8ErrorECs8k3UfHgJ3Xe_15candle_datasets.exit, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECs8k3UfHgJ3Xe_15candle_datasets.exit58, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core19dummy_metal_backend10MetalErrorECs8k3UfHgJ3Xe_15candle_datasets.exit, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECs8k3UfHgJ3Xe_15candle_datasets.exit55, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNtNtCsltEA4u8Pgfu_11candle_core5error24MatMulUnexpectedStridingEECs8k3UfHgJ3Xe_15candle_datasets.exit, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core5shape5ShapeECs8k3UfHgJ3Xe_15candle_datasets.exit42, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecjEECs8k3UfHgJ3Xe_15candle_datasets.exit, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core5shape5ShapeECs8k3UfHgJ3Xe_15candle_datasets.exit39, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core5shape5ShapeECs8k3UfHgJ3Xe_15candle_datasets.exit26, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core5shape5ShapeECs8k3UfHgJ3Xe_15candle_datasets.exit21, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core5shape5ShapeECs8k3UfHgJ3Xe_15candle_datasets.exit, %bb.a
  ret void

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecjENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs8k3UfHgJ3Xe_15candle_datasets(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core5shape5ShapeECs8k3UfHgJ3Xe_15candle_datasets.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecjENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs8k3UfHgJ3Xe_15candle_datasets(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %common.resume unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #11
  unreachable

common.resume:                                    ; preds = %bb.eg, %bb.ed, %bb.ee, %bb.dx, %bb.dv, %bb.ds, %bb.dp, %bb.dm, %bb.dj, %.body, %.body93, %.body29, %.body34, %.body45, %.body50, %.body69, %.body78, %.body74, %.body83, %bb.dc, %bb.cz, %bb.cn, %bb.co, %bb.bx, %bb.ca, %bb.ch, %bb.bp, %bb.bm, %bb.be, %bb.bb, %bb.ay, %bb.az, %bb.as, %bb.ad, %bb.aa, %bb.x, %bb.o, %bb.i, %bb.c, %bb.ek, %bb.aq
  %common.resume.op = phi { ptr, i32 } [ %i.hu, %bb.ek ], [ %i.j, %bb.c ], [ %i.p, %bb.i ], [ %i.v, %bb.o ], [ %i.ae, %bb.x ], [ %i.ah, %bb.aa ], [ %eh.lpad-body.i, %bb.aq ], [ %i.ak, %bb.ad ], [ %i.ay, %bb.as ], [ %i.bi, %bb.ay ], [ %i.bp, %bb.bb ], [ %i.bs, %bb.be ], [ %i.cj, %bb.bm ], [ %i.cm, %bb.bp ], [ %i.ds, %bb.ch ], [ %i.ec, %bb.cn ], [ %i.fk, %bb.cz ], [ %i.fp, %bb.dc ], [ %i.fh, %.body83 ], [ %i.ga, %bb.dj ], [ %i.gf, %bb.dm ], [ %i.gk, %bb.dp ], [ %i.gp, %bb.ds ], [ %i.gu, %bb.dv ], [ %i.gy, %bb.dx ], [ %i.hi, %bb.ed ], [ %i.bi, %bb.az ], [ %i.dh, %bb.ca ], [ %i.de, %bb.bx ], [ %i.ec, %bb.co ], [ %eh.lpad-body, %.body ], [ %.pn, %.body93 ], [ %eh.lpad-body30, %.body29 ], [ %eh.lpad-body35, %.body34 ], [ %eh.lpad-body46, %.body45 ], [ %eh.lpad-body51, %.body50 ], [ %i.eq, %.body69 ], [ %i.ey, %.body74 ], [ %i.fd, %.body78 ], [ %i.hi, %bb.ee ], [ %i.hp, %bb.eg ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core5shape5ShapeECs8k3UfHgJ3Xe_15candle_datasets.exit: ; preds = %bb.b
  tail call void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecjENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs8k3UfHgJ3Xe_15candle_datasets(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.i)
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SendNtB1w_4SyncEL_EECs8k3UfHgJ3Xe_15candle_datasets.exit

bb.e:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecjENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs8k3UfHgJ3Xe_15candle_datasets(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.l)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecjEECs8k3UfHgJ3Xe_15candle_datasets.exit.i unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.m = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecjENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs8k3UfHgJ3Xe_15candle_datasets(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.l)
          to label %.body unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #11
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecjEECs8k3UfHgJ3Xe_15candle_datasets.exit.i: ; preds = %bb.e
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecjENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs8k3UfHgJ3Xe_15candle_datasets(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.l)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core5shape5ShapeECs8k3UfHgJ3Xe_15candle_datasets.exit18 unwind label %bb.db

bb.h:                                             ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecjENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs8k3UfHgJ3Xe_15candle_datasets(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.o)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core5shape5ShapeECs8k3UfHgJ3Xe_15candle_datasets.exit21 unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.p = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecjENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs8k3UfHgJ3Xe_15candle_datasets(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.o)
          to label %common.resume unwind label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.q = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #11
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core5shape5ShapeECs8k3UfHgJ3Xe_15candle_datasets.exit21: ; preds = %bb.h
  tail call void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecjENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs8k3UfHgJ3Xe_15candle_datasets(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.o)
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SendNtB1w_4SyncEL_EECs8k3UfHgJ3Xe_15candle_datasets.exit

bb.k:                                             ; preds = %bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs8k3UfHgJ3Xe_15candle_datasets(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.r)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECs8k3UfHgJ3Xe_15candle_datasets.exit.i unwind label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.s = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs8k3UfHgJ3Xe_15candle_datasets(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.r)
          to label %.body22 unwind label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.t = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #11
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECs8k3UfHgJ3Xe_15candle_datasets.exit.i: ; preds = %bb.k
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs8k3UfHgJ3Xe_15candle_datasets(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.r)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECs8k3UfHgJ3Xe_15candle_datasets.exit unwind label %bb.df
end_hunk_0
begin_hunk_1_@_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCsat2oUP5WrwS_6hf_hub3api4sync8ApiErrorECs8k3UfHgJ3Xe_15candle_datasets:bb.a
  ]

bb.k:                                             ; preds = %bb.j
  %i.w = getelementptr inbounds nuw i8, ptr %.val1, i64 16 ; 3 uses
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs8k3UfHgJ3Xe_15candle_datasets(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.w)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECs8k3UfHgJ3Xe_15candle_datasets.exit19.i.invoke.i unwind label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.x = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs8k3UfHgJ3Xe_15candle_datasets(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.w)
          to label %bb.dq unwind label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.y = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #11
  unreachable

bb.n:                                             ; preds = %bb.j
  %i.z = getelementptr inbounds nuw i8, ptr %.val1, i64 16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !188)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !189)
  %i.aa = load i8, ptr %i.z, align 8, !range !190, !alias.scope !191, !noundef !4
  %switch.i.i.i.i.i = icmp samesign ult i8 %i.aa, 11
  br i1 %switch.i.i.i.i.i, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNtNtCs6xQOTQz36RB_4ureq5error5ErrorEECs8k3UfHgJ3Xe_15candle_datasets.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ab = getelementptr inbounds nuw i8, ptr %.val1, i64 32
  %.val1.i.i.i.i.i = load i64, ptr %i.ab, align 8, !alias.scope !191, !noundef !4 ; 2 uses
  %i.ac = icmp eq i64 %.val1.i.i.i.i.i, 0
  br i1 %i.ac, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNtNtCs6xQOTQz36RB_4ureq5error5ErrorEECs8k3UfHgJ3Xe_15candle_datasets.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ad = getelementptr inbounds nuw i8, ptr %.val1, i64 24
  %.val.i.i.i.i.i = load ptr, ptr %i.ad, align 8, !alias.scope !191, !nonnull !4, !noundef !4
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i.i, i64 noundef range(i64 1, 0) %.val1.i.i.i.i.i, i64 noundef 1) #12, !noalias !192
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNtNtCs6xQOTQz36RB_4ureq5error5ErrorEECs8k3UfHgJ3Xe_15candle_datasets.exit

bb.q:                                             ; preds = %bb.j
  %i.ae = getelementptr inbounds nuw i8, ptr %.val1, i64 16 ; 3 uses
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs8k3UfHgJ3Xe_15candle_datasets(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ae)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECs8k3UfHgJ3Xe_15candle_datasets.exit19.i.invoke.i unwind label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.af = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs8k3UfHgJ3Xe_15candle_datasets(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ae)
          to label %bb.dq unwind label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ag = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #11
  unreachable

bb.t:                                             ; preds = %bb.j
  %i.ah = getelementptr inbounds nuw i8, ptr %.val1, i64 16 ; 3 uses
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs8k3UfHgJ3Xe_15candle_datasets(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ah)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECs8k3UfHgJ3Xe_15candle_datasets.exit19.i.invoke.i unwind label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ai = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs8k3UfHgJ3Xe_15candle_datasets(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ah)
          to label %bb.dq unwind label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.aj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #11
  unreachable

bb.w:                                             ; preds = %bb.f
  %i.ak = getelementptr inbounds nuw i8, ptr %.val1, i64 8
  %.val3.i.i = load ptr, ptr %i.ak, align 8, !alias.scope !183, !nonnull !4, !noundef !4 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !183
  %i.al = ptrtoint ptr %.val3.i.i to i64          ; 2 uses
  %i.am = and i64 %i.al, 3
  switch i64 %i.am, label %default.unreachable [
    i64 2, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs8k3UfHgJ3Xe_15candle_datasets.exit.i.i
    i64 3, label %bb.x
    i64 0, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs8k3UfHgJ3Xe_15candle_datasets.exit.i.i
    i64 1, label %bb.y
  ], !prof !8

default.unreachable:                              ; preds = %bb.dr, %bb.dc, %bb.aj, %bb.w
  unreachable

bb.x:                                             ; preds = %bb.w
  %i.an = icmp ult ptr %.val3.i.i, inttoptr (i64 188978561024 to ptr)
  %i.ao = and i64 %i.al, 1095216660480
  %i.ap = icmp ne i64 %i.ao, 1095216660480
  tail call void @llvm.assume(i1 %i.an)
  tail call void @llvm.assume(i1 %i.ap)
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs8k3UfHgJ3Xe_15candle_datasets.exit.i.i

bb.y:                                             ; preds = %bb.w
  %i.aq = getelementptr i8, ptr %.val3.i.i, i64 -1 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.aq) ]
  %i.ar = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  store ptr %i.aq, ptr %i.ar, align 8, !alias.scope !193, !noalias !183
  store i8 3, ptr %i.d, align 8, !alias.scope !193, !noalias !183
  invoke void @_RNvXsd_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ar)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs8k3UfHgJ3Xe_15candle_datasets.exit.i.i unwind label %bb.dp

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs8k3UfHgJ3Xe_15candle_datasets.exit.i.i: ; preds = %bb.y, %bb.x, %bb.w, %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !183
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNtNtCs6xQOTQz36RB_4ureq5error5ErrorEECs8k3UfHgJ3Xe_15candle_datasets.exit

bb.z:                                             ; preds = %bb.f
  %i.as = getelementptr inbounds nuw i8, ptr %.val1, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !194)
  %i.at = load i64, ptr %i.as, align 8, !range !195, !alias.scope !196, !noundef !4
  switch i64 %i.at, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNtNtCs6xQOTQz36RB_4ureq5error5ErrorEECs8k3UfHgJ3Xe_15candle_datasets.exit [
    i64 0, label %bb.aa
    i64 1, label %bb.ad
    i64 2, label %bb.ag
    i64 3, label %bb.aj
  ]

bb.aa:                                            ; preds = %bb.z
  %i.au = getelementptr inbounds nuw i8, ptr %.val1, i64 16 ; 3 uses
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs8k3UfHgJ3Xe_15candle_datasets(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.au)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECs8k3UfHgJ3Xe_15candle_datasets.exit19.i.invoke.i unwind label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.av = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs8k3UfHgJ3Xe_15candle_datasets(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.au)
          to label %bb.dq unwind label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.aw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #11
  unreachable

bb.ad:                                            ; preds = %bb.z
  %i.ax = getelementptr inbounds nuw i8, ptr %.val1, i64 16 ; 3 uses
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs8k3UfHgJ3Xe_15candle_datasets(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ax)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECs8k3UfHgJ3Xe_15candle_datasets.exit19.i.invoke.i unwind label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.ay = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs8k3UfHgJ3Xe_15candle_datasets(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ax)
          to label %bb.dq unwind label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.az = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #11
  unreachable

bb.ag:                                            ; preds = %bb.z
  %i.ba = getelementptr inbounds nuw i8, ptr %.val1, i64 16 ; 3 uses
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs8k3UfHgJ3Xe_15candle_datasets(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ba)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECs8k3UfHgJ3Xe_15candle_datasets.exit19.i.invoke.i unwind label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.bb = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs8k3UfHgJ3Xe_15candle_datasets(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ba)
          to label %bb.dq unwind label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.bc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #11
  unreachable

bb.aj:                                            ; preds = %bb.z
  %i.bd = getelementptr inbounds nuw i8, ptr %.val1, i64 16
  %.val.i.i.i = load ptr, ptr %i.bd, align 8, !alias.scope !196, !nonnull !4, !noundef !4 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !196
  %i.be = ptrtoint ptr %.val.i.i.i to i64         ; 2 uses
  %i.bf = and i64 %i.be, 3
  switch i64 %i.bf, label %default.unreachable [
    i64 2, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs8k3UfHgJ3Xe_15candle_datasets.exit.i.i.i
    i64 3, label %bb.ak
    i64 0, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs8k3UfHgJ3Xe_15candle_datasets.exit.i.i.i
    i64 1, label %bb.al
  ], !prof !8

bb.ak:                                            ; preds = %bb.aj
  %i.bg = icmp ult ptr %.val.i.i.i, inttoptr (i64 188978561024 to ptr)
  %i.bh = and i64 %i.be, 1095216660480
  %i.bi = icmp ne i64 %i.bh, 1095216660480
  tail call void @llvm.assume(i1 %i.bg)
  tail call void @llvm.assume(i1 %i.bi)
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs8k3UfHgJ3Xe_15candle_datasets.exit.i.i.i

bb.al:                                            ; preds = %bb.aj
  %i.bj = getelementptr i8, ptr %.val.i.i.i, i64 -1 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bj) ]
  %i.bk = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  store ptr %i.bj, ptr %i.bk, align 8, !alias.scope !197, !noalias !196
  store i8 3, ptr %i.c, align 8, !alias.scope !197, !noalias !196
  invoke void @_RNvXsd_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.bk)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs8k3UfHgJ3Xe_15candle_datasets.exit.i.i.i unwind label %bb.dp

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs8k3UfHgJ3Xe_15candle_datasets.exit.i.i.i: ; preds = %bb.al, %bb.ak, %bb.aj, %bb.aj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !196
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNtNtCs6xQOTQz36RB_4ureq5error5ErrorEECs8k3UfHgJ3Xe_15candle_datasets.exit

bb.am:                                            ; preds = %bb.f
  tail call void @llvm.experimental.noalias.scope.decl(metadata !198)
  switch i8 %i.n, label %bb.an [
    i8 0, label %bb.ao
    i8 1, label %bb.ar
    i8 2, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNtNtCs6xQOTQz36RB_4ureq5error5ErrorEECs8k3UfHgJ3Xe_15candle_datasets.exit
    i8 3, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNtNtCs6xQOTQz36RB_4ureq5error5ErrorEECs8k3UfHgJ3Xe_15candle_datasets.exit
    i8 4, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNtNtCs6xQOTQz36RB_4ureq5error5ErrorEECs8k3UfHgJ3Xe_15candle_datasets.exit
    i8 5, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNtNtCs6xQOTQz36RB_4ureq5error5ErrorEECs8k3UfHgJ3Xe_15candle_datasets.exit
    i8 6, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNtNtCs6xQOTQz36RB_4ureq5error5ErrorEECs8k3UfHgJ3Xe_15candle_datasets.exit
    i8 7, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNtNtCs6xQOTQz36RB_4ureq5error5ErrorEECs8k3UfHgJ3Xe_15candle_datasets.exit
    i8 8, label %bb.au
    i8 9, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNtNtCs6xQOTQz36RB_4ureq5error5ErrorEECs8k3UfHgJ3Xe_15candle_datasets.exit
    i8 10, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNtNtCs6xQOTQz36RB_4ureq5error5ErrorEECs8k3UfHgJ3Xe_15candle_datasets.exit
    i8 11, label %bb.ay
    i8 12, label %bb.ce
    i8 13, label %bb.cv
    i8 14, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNtNtCs6xQOTQz36RB_4ureq5error5ErrorEECs8k3UfHgJ3Xe_15candle_datasets.exit
    i8 15, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNtNtCs6xQOTQz36RB_4ureq5error5ErrorEECs8k3UfHgJ3Xe_15candle_datasets.exit
    i8 16, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNtNtCs6xQOTQz36RB_4ureq5error5ErrorEECs8k3UfHgJ3Xe_15candle_datasets.exit
    i8 17, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNtNtCs6xQOTQz36RB_4ureq5error5ErrorEECs8k3UfHgJ3Xe_15candle_datasets.exit
    i8 18, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNtNtCs6xQOTQz36RB_4ureq5error5ErrorEECs8k3UfHgJ3Xe_15candle_datasets.exit
    i8 19, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNtNtCs6xQOTQz36RB_4ureq5error5ErrorEECs8k3UfHgJ3Xe_15candle_datasets.exit
    i8 20, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNtNtCs6xQOTQz36RB_4ureq5error5ErrorEECs8k3UfHgJ3Xe_15candle_datasets.exit
  ]

bb.an:                                            ; preds = %bb.am
  %i.bl = getelementptr inbounds nuw i8, ptr %.val1, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !199)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !200)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !201)
  %i.bm = load ptr, ptr %i.bl, align 8, !alias.scope !202, !nonnull !4, !noundef !4
  %i.bn = atomicrmw add ptr %i.bm, i64 -1 release, align 8, !noalias !203
  %i.bo = icmp eq i64 %i.bn, 1
  br i1 %i.bo, label %.invoke.i, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNtNtCs6xQOTQz36RB_4ureq5error5ErrorEECs8k3UfHgJ3Xe_15candle_datasets.exit

bb.ao:                                            ; preds = %bb.am
  %i.bp = getelementptr inbounds nuw i8, ptr %.val1, i64 8 ; 3 uses
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtCs32ONoPd6L90_6rustls5enums11ContentTypeENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs8k3UfHgJ3Xe_15candle_datasets(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bp)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCs32ONoPd6L90_6rustls5enums11ContentTypeEECs8k3UfHgJ3Xe_15candle_datasets.exit.i.i.i unwind label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.bq = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecNtNtCs32ONoPd6L90_6rustls5enums11ContentTypeENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs8k3UfHgJ3Xe_15candle_datasets(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bp)
          to label %bb.dq unwind label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.br = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #11
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCs32ONoPd6L90_6rustls5enums11ContentTypeEECs8k3UfHgJ3Xe_15candle_datasets.exit.i.i.i: ; preds = %bb.ao
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecNtNtCs32ONoPd6L90_6rustls5enums11ContentTypeENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs8k3UfHgJ3Xe_15candle_datasets(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bp)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNtNtCs6xQOTQz36RB_4ureq5error5ErrorEECs8k3UfHgJ3Xe_15candle_datasets.exit unwind label %bb.dp

bb.ar:                                            ; preds = %bb.am
  %i.bs = getelementptr inbounds nuw i8, ptr %.val1, i64 8 ; 3 uses
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtCs32ONoPd6L90_6rustls5enums13HandshakeTypeENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs8k3UfHgJ3Xe_15candle_datasets(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bs)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCs32ONoPd6L90_6rustls5enums13HandshakeTypeEECs8k3UfHgJ3Xe_15candle_datasets.exit.i.i.i unwind label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.bt = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecNtNtCs32ONoPd6L90_6rustls5enums13HandshakeTypeENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs8k3UfHgJ3Xe_15candle_datasets(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bs)
          to label %bb.dq unwind label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.bu = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #11
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCs32ONoPd6L90_6rustls5enums13HandshakeTypeEECs8k3UfHgJ3Xe_15candle_datasets.exit.i.i.i: ; preds = %bb.ar
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecNtNtCs32ONoPd6L90_6rustls5enums13HandshakeTypeENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs8k3UfHgJ3Xe_15candle_datasets(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bs)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNtNtCs6xQOTQz36RB_4ureq5error5ErrorEECs8k3UfHgJ3Xe_15candle_datasets.exit unwind label %bb.dp

bb.au:                                            ; preds = %bb.am
  %i.bv = getelementptr inbounds nuw i8, ptr %.val1, i64 8 ; 4 uses
  %i.bw = load i64, ptr %i.bv, align 8, !range !204, !alias.scope !205, !noundef !4 ; 2 uses
  %switch.i.i.i.i = icmp slt i64 %i.bw, -9223372036854775787
  %i.bx = icmp eq i64 %i.bw, -1
  %or.cond.i.i.i.i = or i1 %switch.i.i.i.i, %i.bx
  br i1 %or.cond.i.i.i.i, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNtNtCs6xQOTQz36RB_4ureq5error5ErrorEECs8k3UfHgJ3Xe_15candle_datasets.exit, label %bb.av

bb.av:                                            ; preds = %bb.au
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtNtCs32ONoPd6L90_6rustls4msgs9handshake16EchConfigPayloadENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs8k3UfHgJ3Xe_15candle_datasets(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bv)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtNtCs32ONoPd6L90_6rustls4msgs9handshake16EchConfigPayloadEECs8k3UfHgJ3Xe_15candle_datasets.exit.i.i.i.i.i unwind label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.by = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecNtNtNtCs32ONoPd6L90_6rustls4msgs9handshake16EchConfigPayloadENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs8k3UfHgJ3Xe_15candle_datasets(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bv)
          to label %bb.dq unwind label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.bz = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #11
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtNtCs32ONoPd6L90_6rustls4msgs9handshake16EchConfigPayloadEECs8k3UfHgJ3Xe_15candle_datasets.exit.i.i.i.i.i: ; preds = %bb.av
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecNtNtNtCs32ONoPd6L90_6rustls4msgs9handshake16EchConfigPayloadENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs8k3UfHgJ3Xe_15candle_datasets(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bv)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNtNtCs6xQOTQz36RB_4ureq5error5ErrorEECs8k3UfHgJ3Xe_15candle_datasets.exit unwind label %bb.dp

bb.ay:                                            ; preds = %bb.am
  %i.ca = getelementptr inbounds nuw i8, ptr %.val1, i64 8 ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !206)
  %i.cb = load i64, ptr %i.ca, align 8, !range !207, !alias.scope !208, !noundef !4 ; 3 uses
  %i.cc = icmp ne i64 %i.cb, -9223372036854775792
  tail call void @llvm.assume(i1 %i.cc)
  %i.cd = xor i64 %i.cb, -9223372036854775808
  %i.ce = icmp slt i64 %i.cb, 0
  %i.cf = select i1 %i.ce, i64 %i.cd, i64 16
  switch i64 %i.cf, label %bb.az [
    i64 0, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNtNtCs6xQOTQz36RB_4ureq5error5ErrorEECs8k3UfHgJ3Xe_15candle_datasets.exit
    i64 1, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNtNtCs6xQOTQz36RB_4ureq5error5ErrorEECs8k3UfHgJ3Xe_15candle_datasets.exit
    i64 2, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNtNtCs6xQOTQz36RB_4ureq5error5ErrorEECs8k3UfHgJ3Xe_15candle_datasets.exit
    i64 3, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNtNtCs6xQOTQz36RB_4ureq5error5ErrorEECs8k3UfHgJ3Xe_15candle_datasets.exit
    i64 4, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNtNtCs6xQOTQz36RB_4ureq5error5ErrorEECs8k3UfHgJ3Xe_15candle_datasets.exit
    i64 5, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNtNtCs6xQOTQz36RB_4ureq5error5ErrorEECs8k3UfHgJ3Xe_15candle_datasets.exit
    i64 6, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNtNtCs6xQOTQz36RB_4ureq5error5ErrorEECs8k3UfHgJ3Xe_15candle_datasets.exit
    i64 7, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNtNtCs6xQOTQz36RB_4ureq5error5ErrorEECs8k3UfHgJ3Xe_15candle_datasets.exit
    i64 8, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNtNtCs6xQOTQz36RB_4ureq5error5ErrorEECs8k3UfHgJ3Xe_15candle_datasets.exit
    i64 9, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNtNtCs6xQOTQz36RB_4ureq5error5ErrorEECs8k3UfHgJ3Xe_15candle_datasets.exit
    i64 10, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNtNtCs6xQOTQz36RB_4ureq5error5ErrorEECs8k3UfHgJ3Xe_15candle_datasets.exit
    i64 11, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNtNtCs6xQOTQz36RB_4ureq5error5ErrorEECs8k3UfHgJ3Xe_15candle_datasets.exit
    i64 12, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNtNtCs6xQOTQz36RB_4ureq5error5ErrorEECs8k3UfHgJ3Xe_15candle_datasets.exit
    i64 13, label %bb.ba
    i64 14, label %bb.be
    i64 15, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNtNtCs6xQOTQz36RB_4ureq5error5ErrorEECs8k3UfHgJ3Xe_15candle_datasets.exit
    i64 16, label %bb.bi
    i64 17, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNtNtCs6xQOTQz36RB_4ureq5error5ErrorEECs8k3UfHgJ3Xe_15candle_datasets.exit
    i64 18, label %bb.bn
    i64 19, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNtNtCs6xQOTQz36RB_4ureq5error5ErrorEECs8k3UfHgJ3Xe_15candle_datasets.exit
    i64 20, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNtNtCs6xQOTQz36RB_4ureq5error5ErrorEECs8k3UfHgJ3Xe_15candle_datasets.exit
  ]

bb.az:                                            ; preds = %bb.ay
  %i.cg = getelementptr inbounds nuw i8, ptr %.val1, i64 16 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !209)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !210)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !211)
  %i.ch = load ptr, ptr %i.cg, align 8, !alias.scope !212, !nonnull !4, !noundef !4
  %i.ci = atomicrmw add ptr %i.ch, i64 -1 release, align 8, !noalias !213
  %i.cj = icmp eq i64 %i.ci, 1
  br i1 %i.cj, label %.invoke.i, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNtNtCs6xQOTQz36RB_4ureq5error5ErrorEECs8k3UfHgJ3Xe_15candle_datasets.exit

bb.ba:                                            ; preds = %bb.ay
  %i.ck = getelementptr inbounds nuw i8, ptr %.val1, i64 16 ; 3 uses
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs8k3UfHgJ3Xe_15candle_datasets(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ck)
          to label %bb.bc unwind label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.cl = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs8k3UfHgJ3Xe_15candle_datasets(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ck)
          to label %.body.i.i.i.i unwind label %bb.bd

bb.bc:                                            ; preds = %bb.ba
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs8k3UfHgJ3Xe_15candle_datasets(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ck)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECs8k3UfHgJ3Xe_15candle_datasets.exit.i.i.i.i unwind label %bb.br

bb.bd:                                            ; preds = %bb.bb
  %i.cm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #11
  unreachable

bb.be:                                            ; preds = %bb.ay
  %i.cn = getelementptr inbounds nuw i8, ptr %.val1, i64 16 ; 3 uses
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs8k3UfHgJ3Xe_15candle_datasets(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.cn)
          to label %bb.bg unwind label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.co = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs8k3UfHgJ3Xe_15candle_datasets(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.cn)
          to label %.body3.i.i.i.i unwind label %bb.bh

bb.bg:                                            ; preds = %bb.be
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs8k3UfHgJ3Xe_15candle_datasets(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.cn)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECs8k3UfHgJ3Xe_15candle_datasets.exit5.i.i.i.i unwind label %bb.bv

bb.bh:                                            ; preds = %bb.bf
  %i.cp = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #11
  unreachable

bb.bi:                                            ; preds = %bb.ay
  %i.cq = getelementptr inbounds nuw i8, ptr %.val1, i64 32
  %i.cr = load i8, ptr %i.cq, align 8, !range !214, !alias.scope !215, !noundef !4
  %i.cs = icmp eq i8 %i.cr, 0
end_hunk_1
begin_hunk_2_@_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCsat2oUP5WrwS_6hf_hub3api4sync8ApiErrorECs8k3UfHgJ3Xe_15candle_datasets:bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i) ]
  invoke void %i.fq(ptr noundef nonnull %.val.i.i)
          to label %bb.dl unwind label %bb.dn

bb.dl:                                            ; preds = %bb.dk, %bb.dj
  %i.fr = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 8
  %i.fs = load i64, ptr %i.fr, align 8, !range !5, !invariant.load !4 ; 2 uses
  %i.ft = icmp eq i64 %i.fs, 0
  br i1 %i.ft, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNtNtCs6xQOTQz36RB_4ureq5error5ErrorEECs8k3UfHgJ3Xe_15candle_datasets.exit, label %bb.dm

bb.dm:                                            ; preds = %bb.dl
  %i.fu = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 16
  %i.fv = load i64, ptr %i.fu, align 8, !range !6, !invariant.load !4
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i) ]
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef range(i64 1, 0) %i.fs, i64 noundef range(i64 1, 536870913) %i.fv) #12
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNtNtCs6xQOTQz36RB_4ureq5error5ErrorEECs8k3UfHgJ3Xe_15candle_datasets.exit

bb.dn:                                            ; preds = %bb.dk
  %i.fw = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 8
  %i.fy = load i64, ptr %i.fx, align 8, !range !5, !invariant.load !4 ; 2 uses
  %i.fz = icmp eq i64 %i.fy, 0
  br i1 %i.fz, label %bb.dq, label %bb.do

bb.do:                                            ; preds = %bb.dn
  %i.ga = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 16
  %i.gb = load i64, ptr %i.ga, align 8, !range !6, !invariant.load !4
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef range(i64 1, 0) %i.fy, i64 noundef range(i64 1, 536870913) %i.gb) #12
  br label %bb.dq

bb.dp:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECs8k3UfHgJ3Xe_15candle_datasets.exit19.i.invoke.i, %bb.df, %bb.de, %bb.cy, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCsjt5G1tH9gEt_16rustls_pki_types6alg_id19AlgorithmIdentifierEECs8k3UfHgJ3Xe_15candle_datasets.exit.i9.i.i.invoke.i, %.invoke.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCs32ONoPd6L90_6rustls5error18ExtendedKeyPurposeEECs8k3UfHgJ3Xe_15candle_datasets.exit.i.i.i.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtBG_6string6StringEECs8k3UfHgJ3Xe_15candle_datasets.exit.i.i.i.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtNtCs32ONoPd6L90_6rustls4msgs9handshake16EchConfigPayloadEECs8k3UfHgJ3Xe_15candle_datasets.exit.i.i.i.i.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCs32ONoPd6L90_6rustls5enums13HandshakeTypeEECs8k3UfHgJ3Xe_15candle_datasets.exit.i.i.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCs32ONoPd6L90_6rustls5enums11ContentTypeEECs8k3UfHgJ3Xe_15candle_datasets.exit.i.i.i, %bb.al, %bb.y
  %i.gc = landingpad { ptr, i32 }
          cleanup
  br label %bb.dq

bb.dq:                                            ; preds = %bb.dp, %bb.do, %bb.dn, %bb.dh, %bb.da, %bb.cw, %bb.ct, %.body3.i1.i.i.i, %bb.cp, %.body.i6.i.i.i, %bb.cc, %.body8.i.i.i.i, %bb.bz, %.body6.i.i.i.i, %bb.bw, %.body3.i.i.i.i, %bb.bs, %.body.i.i.i.i, %bb.aw, %bb.as, %bb.ap, %bb.ah, %bb.ae, %bb.ab, %bb.u, %bb.r, %bb.l, %bb.h
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.gc, %bb.dp ], [ %i.fl, %bb.dh ], [ %i.s, %bb.h ], [ %i.ai, %bb.u ], [ %i.bb, %bb.ah ], [ %i.ev, %bb.cw ], [ %i.ez, %bb.da ], [ %i.af, %bb.r ], [ %i.x, %bb.l ], [ %i.ay, %bb.ae ], [ %i.av, %bb.ab ], [ %i.es, %bb.ct ], [ %i.bq, %bb.ap ], [ %i.bt, %bb.as ], [ %i.by, %bb.aw ], [ %i.dt, %bb.cc ], [ %i.do, %bb.bz ], [ %i.df, %bb.bs ], [ %eh.lpad-body9.i.i.i.i, %.body8.i.i.i.i ], [ %i.dl, %bb.bw ], [ %eh.lpad-body.i.i.i.i, %.body.i.i.i.i ], [ %eh.lpad-body4.i.i.i.i, %.body3.i.i.i.i ], [ %eh.lpad-body7.i.i.i.i, %.body6.i.i.i.i ], [ %eh.lpad-body4.i2.i.i.i, %.body3.i1.i.i.i ], [ %i.el, %bb.cp ], [ %eh.lpad-body.i7.i.i.i, %.body.i6.i.i.i ], [ %i.fw, %bb.do ], [ %i.fw, %bb.dn ]
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1, i64 noundef 64, i64 noundef 8) #12
  br label %common.resume

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNtNtCs6xQOTQz36RB_4ureq5error5ErrorEECs8k3UfHgJ3Xe_15candle_datasets.exit: ; preds = %bb.f, %bb.j, %bb.n, %bb.o, %bb.p, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs8k3UfHgJ3Xe_15candle_datasets.exit.i.i, %bb.z, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs8k3UfHgJ3Xe_15candle_datasets.exit.i.i.i, %bb.am, %bb.am, %bb.am, %bb.am, %bb.am, %bb.am, %bb.am, %bb.am, %bb.am, %bb.am, %bb.am, %bb.am, %bb.am, %bb.am, %bb.am, %bb.an, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCs32ONoPd6L90_6rustls5enums11ContentTypeEECs8k3UfHgJ3Xe_15candle_datasets.exit.i.i.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCs32ONoPd6L90_6rustls5enums13HandshakeTypeEECs8k3UfHgJ3Xe_15candle_datasets.exit.i.i.i, %bb.au, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtNtCs32ONoPd6L90_6rustls4msgs9handshake16EchConfigPayloadEECs8k3UfHgJ3Xe_15candle_datasets.exit.i.i.i.i.i, %bb.ay, %bb.ay, %bb.ay, %bb.ay, %bb.ay, %bb.ay, %bb.ay, %bb.ay, %bb.ay, %bb.ay, %bb.ay, %bb.ay, %bb.ay, %bb.ay, %bb.ay, %bb.ay, %bb.ay, %bb.az, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtBG_6string6StringEECs8k3UfHgJ3Xe_15candle_datasets.exit.i.i.i.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCs32ONoPd6L90_6rustls5error18ExtendedKeyPurposeEECs8k3UfHgJ3Xe_15candle_datasets.exit.i.i.i.i, %bb.ce, %bb.cn, %.invoke.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCsjt5G1tH9gEt_16rustls_pki_types6alg_id19AlgorithmIdentifierEECs8k3UfHgJ3Xe_15candle_datasets.exit.i9.i.i.invoke.i, %bb.cy, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs8k3UfHgJ3Xe_15candle_datasets.exit16.i.i, %bb.df, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECs8k3UfHgJ3Xe_15candle_datasets.exit19.i.invoke.i, %bb.dl, %bb.dm
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1, i64 noundef 64, i64 noundef 8) #12
  br label %bb.e

bb.dr:                                            ; preds = %bb.a
  %i.gd = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.gd, align 8, !nonnull !4, !noundef !4 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.ge = ptrtoint ptr %.val to i64               ; 2 uses
  %i.gf = and i64 %i.ge, 3
  switch i64 %i.gf, label %default.unreachable [
    i64 2, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs8k3UfHgJ3Xe_15candle_datasets.exit
    i64 3, label %bb.ds
    i64 0, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs8k3UfHgJ3Xe_15candle_datasets.exit
    i64 1, label %bb.dt
  ], !prof !8

bb.ds:                                            ; preds = %bb.dr
  %i.gg = icmp ult ptr %.val, inttoptr (i64 188978561024 to ptr)
  %i.gh = and i64 %i.ge, 1095216660480
  %i.gi = icmp ne i64 %i.gh, 1095216660480
  tail call void @llvm.assume(i1 %i.gg)
  tail call void @llvm.assume(i1 %i.gi)
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs8k3UfHgJ3Xe_15candle_datasets.exit

bb.dt:                                            ; preds = %bb.dr
  %i.gj = getelementptr i8, ptr %.val, i64 -1     ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.gj) ]
  %i.gk = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store ptr %i.gj, ptr %i.gk, align 8, !alias.scope !229
  store i8 3, ptr %i.a, align 8, !alias.scope !229
  call void @_RNvXsd_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.gk)
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs8k3UfHgJ3Xe_15candle_datasets.exit

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs8k3UfHgJ3Xe_15candle_datasets.exit: ; preds = %bb.dr, %bb.dr, %bb.ds, %bb.dt
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.e

bb.du:                                            ; preds = %bb.a
  %i.gl = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !230)
  %i.gm = load ptr, ptr %i.gl, align 8, !alias.scope !230, !nonnull !4, !noundef !4 ; 3 uses
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCsat2oUP5WrwS_6hf_hub3api4sync8ApiErrorECs8k3UfHgJ3Xe_15candle_datasets(ptr noalias nofree noundef align 8 dereferenceable(40) %i.gm)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNtNtNtCsat2oUP5WrwS_6hf_hub3api4sync8ApiErrorEECs8k3UfHgJ3Xe_15candle_datasets.exit unwind label %bb.dv, !noalias !230, !inline_history !181

bb.dv:                                            ; preds = %bb.du
  %i.gn = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.gm, i64 noundef 40, i64 noundef 8) #12, !noalias !230
  br label %common.resume

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNtNtNtCsat2oUP5WrwS_6hf_hub3api4sync8ApiErrorEECs8k3UfHgJ3Xe_15candle_datasets.exit: ; preds = %bb.du
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.gm, i64 noundef 40, i64 noundef 8) #12, !noalias !230
  br label %bb.e

bb.dw:                                            ; preds = %bb.a
  tail call fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtCslNfBYP6XxvI_10native_tls5ErrorECs8k3UfHgJ3Xe_15candle_datasets(ptr noalias nofree noundef align 8 dereferenceable(40) %0)
  br label %bb.e
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB6_8IntoIterNtNtCsat2oUP5WrwS_6hf_hub3api8SiblingsENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8try_foldINtNtB8_13in_place_drop11InPlaceDropINtNtNtCsd5Y3rNriENo_7parquet4file17serialized_reader20SerializedFileReaderNtNtCs5Xr050g3D4S_3std2fs4FileEENCINvNtNtB1G_8adapters6filter15filter_try_foldBX_B2E_INtNtNtB1I_3ops12control_flow11ControlFlowINtNtB1I_6result6ResultB2E_zEB2E_ENCNvNtCs8k3UfHgJ3Xe_15candle_datasets3hub8from_hub0NCINvNtB54_3map12map_try_foldBX_IB6v_B3e_NtB76_5ErrorEB2E_B5O_NCB74_s_0NCINvXB54_INtB54_12GenericShuntINtB7W_3MapINtB52_6FilterBI_B72_EB8R_EIB6v_zB8w_EEB1A_8try_foldB2E_NCINvNtB8_16in_place_collect24write_in_place_with_dropB3e_E0B6u_E0E0E0B5O_EB78_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %1, ptr noundef %2, ptr noundef %3, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %4) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = alloca [16 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 9 uses
  %i.d = alloca [40 x i8], align 8                ; 7 uses
  %i.e = alloca [16 x i8], align 8                ; 6 uses
  %.sroa.6.i.i = alloca [24 x i8], align 8        ; 5 uses
  %i.f = alloca [16 x i8], align 8                ; 7 uses
  %i.g = alloca [40 x i8], align 8                ; 9 uses
  %i.h = alloca [24 x i8], align 8                ; 5 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.k = load ptr, ptr %i.i, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.l = load ptr, ptr %i.j, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %.not37 = icmp eq ptr %i.l, %i.k
  br i1 %.not37, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 6 uses
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 24
  %.val2 = load ptr, ptr %i.o, align 8            ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %i.r = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %i.s = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.sroa.6.16..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 3 uses
  %.sroa.9.16..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.au
  %i.w = phi ptr [ %i.k, %.lr.ph ], [ %i.cm, %bb.au ]
  %i.x = phi ptr [ %i.l, %.lr.ph ], [ %i.cl, %bb.au ] ; 2 uses
  %.sroa.4.038 = phi ptr [ %3, %.lr.ph ], [ %.sroa.810.013, %bb.au ] ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.h, ptr noundef nonnull align 8 dereferenceable(24) %i.x, i64 24, i1 false)
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 24 ; 2 uses
  store ptr %i.y, ptr %i.j, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  store ptr %2, ptr %i.g, align 8
  store ptr %.sroa.4.038, ptr %i.m, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.n, ptr noundef nonnull align 8 dereferenceable(24) %i.h, i64 24, i1 false)
  call void @llvm.experimental.noalias.scope.decl(metadata !257)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store ptr %2, ptr %i.f, align 8, !noalias !258
  store ptr %.sroa.4.038, ptr %i.p, align 8, !noalias !258
  %.val.i = load ptr, ptr %i.q, align 8, !alias.scope !257, !nonnull !4, !noundef !4
  %.val4.i = load i64, ptr %i.r, align 8, !alias.scope !257, !noundef !4
  %i.z = invoke noundef zeroext i1 @_RNvMNtCsf3Ta7LF998c_4core5sliceSh9ends_withCs8k3UfHgJ3Xe_15candle_datasets(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.val.i, i64 noundef %.val4.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @0, i64 noundef 8)
          to label %_RNCNvNtCs8k3UfHgJ3Xe_15candle_datasets3hub8from_hub0B5_.exit.i unwind label %bb.aq, !noalias !258

_RNCNvNtCs8k3UfHgJ3Xe_15candle_datasets3hub8from_hub0B5_.exit.i: ; preds = %bb.b
  br i1 %i.z, label %bb.c, label %bb.an

bb.c:                                             ; preds = %_RNCNvNtCs8k3UfHgJ3Xe_15candle_datasets3hub8from_hub0B5_.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !259
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %i.n, i64 24, i1 false), !noalias !260
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !259
  store ptr %2, ptr %i.e, align 8, !noalias !259
  store ptr %.sroa.4.038, ptr %i.s, align 8, !noalias !259
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !259
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val2) ]
  %.val.i.i = load ptr, ptr %.val2, align 8, !noalias !259, !nonnull !4, !align !9, !noundef !4
  call void @llvm.experimental.noalias.scope.decl(metadata !261)
  %i.aa = load ptr, ptr %i.t, align 8, !alias.scope !261, !noalias !259, !nonnull !4, !noundef !4
  %i.ab = load i64, ptr %i.u, align 8, !alias.scope !261, !noalias !259, !noundef !4
  invoke void @_RNvNtCs8k3UfHgJ3Xe_15candle_datasets3hub18sibling_to_parquet(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.d, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.aa, i64 noundef %i.ab, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(312) %.val.i.i)
          to label %bb.e unwind label %bb.d, !noalias !262

bb.d:                                             ; preds = %bb.c
  %i.ac = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsat2oUP5WrwS_6hf_hub3api8SiblingsECs8k3UfHgJ3Xe_15candle_datasets(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c) #13
          to label %bb.al unwind label %bb.h, !noalias !263

bb.e:                                             ; preds = %bb.c
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs8k3UfHgJ3Xe_15candle_datasets(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsat2oUP5WrwS_6hf_hub3api8SiblingsECs8k3UfHgJ3Xe_15candle_datasets.exit.i.i.i unwind label %bb.f, !noalias !263

bb.f:                                             ; preds = %bb.e
  %i.ad = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs8k3UfHgJ3Xe_15candle_datasets(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %bb.al unwind label %bb.g, !noalias !263

bb.g:                                             ; preds = %bb.f
  %i.ae = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #11, !noalias !263
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsat2oUP5WrwS_6hf_hub3api8SiblingsECs8k3UfHgJ3Xe_15candle_datasets.exit.i.i.i: ; preds = %bb.e
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs8k3UfHgJ3Xe_15candle_datasets(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %_RNCNvNtCs8k3UfHgJ3Xe_15candle_datasets3hub8from_hubs_0B5_.exit.i.i unwind label %bb.i, !noalias !259

bb.h:                                             ; preds = %bb.d
  %i.af = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #11, !noalias !263
  unreachable

bb.i:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsat2oUP5WrwS_6hf_hub3api8SiblingsECs8k3UfHgJ3Xe_15candle_datasets.exit.i.i.i
  %i.ag = landingpad { ptr, i32 }
          cleanup
  br label %bb.al

_RNCNvNtCs8k3UfHgJ3Xe_15candle_datasets3hub8from_hubs_0B5_.exit.i.i: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsat2oUP5WrwS_6hf_hub3api8SiblingsECs8k3UfHgJ3Xe_15candle_datasets.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !259
  %.sroa.4.16.copyload.i.i = load i64, ptr %i.d, align 8, !noalias !259 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6.16..sroa_idx.i.i, i64 24, i1 false), !noalias !259
  %.sroa.9.16.copyload.i.i = load i64, ptr %.sroa.9.16..sroa_idx.i.i, align 8, !noalias !259 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !259
  store ptr %2, ptr %i.b, align 8, !noalias !264
  store ptr %.sroa.4.038, ptr %i.v, align 8, !noalias !264
  %.not.i.i.i.i = icmp eq i64 %.sroa.4.16.copyload.i.i, -3
  br i1 %.not.i.i.i.i, label %_RNCINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters6filter15filter_try_foldNtNtCsat2oUP5WrwS_6hf_hub3api8SiblingsINtNtNtCsgCecv3eZDcN_5alloc3vec13in_place_drop11InPlaceDropINtNtNtCsd5Y3rNriENo_7parquet4file17serialized_reader20SerializedFileReaderNtNtCs5Xr050g3D4S_3std2fs4FileEEINtNtNtBa_3ops12control_flow11ControlFlowINtNtBa_6result6ResultB1H_zEB1H_ENCNvNtCs8k3UfHgJ3Xe_15candle_datasets3hub8from_hub0NCINvNtB6_3map12map_try_foldB15_IB53_B2E_NtB5D_5ErrorEB1H_B4n_NCB5B_s_0NCINvXB6_INtB6_12GenericShuntINtB6t_3MapINtB4_6FilterINtNtB1M_9into_iter8IntoIterB15_EB5z_EB7o_EIB53_zB73_EENtNtNtB8_6traits8iterator8Iterator8try_foldB1H_NCINvNtB1M_16in_place_collect24write_in_place_with_dropB2E_E0B52_E0E0E0B5F_.exit, label %bb.j

bb.j:                                             ; preds = %_RNCNvNtCs8k3UfHgJ3Xe_15candle_datasets3hub8from_hubs_0B5_.exit.i.i
  %i.ah = getelementptr inbounds nuw i8, ptr %4, i64 16
  %.val.le = load ptr, ptr %i.ah, align 8, !nonnull !4, !noundef !4 ; 16 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !265)
  %i.ai = load i64, ptr %.val.le, align 8, !range !266, !alias.scope !265, !noalias !264, !noundef !4 ; 3 uses
  %i.aj = icmp eq i64 %i.ai, -3
  br i1 %i.aj, label %bb.at, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @llvm.experimental.noalias.scope.decl(metadata !267)
  call void @llvm.experimental.noalias.scope.decl(metadata !268)
  %i.ak = and i64 %i.ai, -2
  %i.al = icmp eq i64 %i.ak, -9223372036854775794
  %i.am = add nsw i64 %i.ai, 9223372036854775795
  %i.an = select i1 %i.al, i64 %i.am, i64 0
  switch i64 %i.an, label %bb.l [
    i64 0, label %bb.ae
    i64 1, label %bb.af
  ]

bb.l:                                             ; preds = %bb.k
  %i.ao = getelementptr inbounds nuw i8, ptr %.val.le, i64 8
  call void @llvm.experimental.noalias.scope.decl(metadata !269)
  %i.ap = load i64, ptr %i.ao, align 8, !range !270, !alias.scope !271, !noalias !264, !noundef !4
  switch i64 %i.ap, label %bb.at [
    i64 0, label %bb.m
    i64 1, label %bb.p
    i64 2, label %bb.s
    i64 3, label %bb.v
    i64 5, label %bb.y
  ]

bb.m:                                             ; preds = %bb.l
  %i.aq = getelementptr inbounds nuw i8, ptr %.val.le, i64 16 ; 3 uses
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs8k3UfHgJ3Xe_15candle_datasets(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.aq)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECs8k3UfHgJ3Xe_15candle_datasets.exit7.i.i.i.i.invoke.i.i.i unwind label %bb.n, !noalias !264

bb.n:                                             ; preds = %bb.m
  %i.ar = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs8k3UfHgJ3Xe_15candle_datasets(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.aq)
          to label %bb.aj unwind label %bb.o, !noalias !264

bb.o:                                             ; preds = %bb.n
  %i.as = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #11, !noalias !264
  unreachable

bb.p:                                             ; preds = %bb.l
  %i.at = getelementptr inbounds nuw i8, ptr %.val.le, i64 16 ; 3 uses
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs8k3UfHgJ3Xe_15candle_datasets(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.at)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECs8k3UfHgJ3Xe_15candle_datasets.exit7.i.i.i.i.invoke.i.i.i unwind label %bb.q, !noalias !264

bb.q:                                             ; preds = %bb.p
  %i.au = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs8k3UfHgJ3Xe_15candle_datasets(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.at)
          to label %bb.aj unwind label %bb.r, !noalias !264

bb.r:                                             ; preds = %bb.q
  %i.av = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #11, !noalias !264
  unreachable

bb.s:                                             ; preds = %bb.l
  %i.aw = getelementptr inbounds nuw i8, ptr %.val.le, i64 16 ; 3 uses
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs8k3UfHgJ3Xe_15candle_datasets(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.aw)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECs8k3UfHgJ3Xe_15candle_datasets.exit7.i.i.i.i.invoke.i.i.i unwind label %bb.t, !noalias !264

bb.t:                                             ; preds = %bb.s
  %i.ax = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs8k3UfHgJ3Xe_15candle_datasets(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.aw)
          to label %bb.aj unwind label %bb.u, !noalias !264

bb.u:                                             ; preds = %bb.t
  %i.ay = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #11, !noalias !264
  unreachable

bb.v:                                             ; preds = %bb.l
  %i.az = getelementptr inbounds nuw i8, ptr %.val.le, i64 16 ; 3 uses
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs8k3UfHgJ3Xe_15candle_datasets(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.az)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECs8k3UfHgJ3Xe_15candle_datasets.exit7.i.i.i.i.invoke.i.i.i unwind label %bb.w, !noalias !264

bb.w:                                             ; preds = %bb.v
  %i.ba = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs8k3UfHgJ3Xe_15candle_datasets(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.az)
          to label %bb.aj unwind label %bb.x, !noalias !264

bb.x:                                             ; preds = %bb.w
  %i.bb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #11, !noalias !264
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECs8k3UfHgJ3Xe_15candle_datasets.exit7.i.i.i.i.invoke.i.i.i: ; preds = %bb.v, %bb.s, %bb.p, %bb.m
  %i.bc = phi ptr [ %i.aw, %bb.s ], [ %i.at, %bb.p ], [ %i.aq, %bb.m ], [ %i.az, %bb.v ]
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs8k3UfHgJ3Xe_15candle_datasets(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bc)
          to label %bb.at unwind label %bb.ai, !noalias !264

bb.y:                                             ; preds = %bb.l
  %i.bd = getelementptr inbounds nuw i8, ptr %.val.le, i64 16
  %.val.i.i.i.i.i.i.i = load ptr, ptr %i.bd, align 8, !alias.scope !271, !noalias !264 ; 5 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.val.le, i64 24
  %.val1.i.i.i.i.i.i.i = load ptr, ptr %i.be, align 8, !alias.scope !271, !noalias !264, !nonnull !4, !align !9, !noundef !4 ; 5 uses
  %i.bf = load ptr, ptr %.val1.i.i.i.i.i.i.i, align 8, !invariant.load !4, !noalias !272 ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.bf, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i.i.i.i.i) ]
  invoke void %i.bf(ptr noundef nonnull %.val.i.i.i.i.i.i.i)
          to label %bb.aa unwind label %bb.ac, !noalias !272

bb.aa:                                            ; preds = %bb.z, %bb.y
  %i.bg = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i.i.i.i, i64 8
  %i.bh = load i64, ptr %i.bg, align 8, !range !5, !invariant.load !4, !noalias !272 ; 2 uses
  %i.bi = icmp eq i64 %i.bh, 0
  br i1 %i.bi, label %bb.at, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.bj = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i.i.i.i, i64 16
  %i.bk = load i64, ptr %i.bj, align 8, !range !6, !invariant.load !4, !noalias !272
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i.i.i.i.i) ]
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i.i.i.i, i64 noundef range(i64 1, 0) %i.bh, i64 noundef range(i64 1, 536870913) %i.bk) #12, !noalias !272
  br label %bb.at

bb.ac:                                            ; preds = %bb.z
  %i.bl = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i.i.i.i, i64 8
  %i.bn = load i64, ptr %i.bm, align 8, !range !5, !invariant.load !4, !noalias !272 ; 2 uses
  %i.bo = icmp eq i64 %i.bn, 0
  br i1 %i.bo, label %bb.aj, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.bp = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i.i.i.i, i64 16
  %i.bq = load i64, ptr %i.bp, align 8, !range !6, !invariant.load !4, !noalias !272
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i.i.i.i, i64 noundef range(i64 1, 0) %i.bn, i64 noundef range(i64 1, 536870913) %i.bq) #12, !noalias !272
  br label %bb.aj

bb.ae:                                            ; preds = %bb.k
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCsat2oUP5WrwS_6hf_hub3api4sync8ApiErrorECs8k3UfHgJ3Xe_15candle_datasets(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %.val.le)
          to label %bb.at unwind label %bb.ai, !noalias !264

bb.af:                                            ; preds = %bb.k
  %i.br = getelementptr inbounds nuw i8, ptr %.val.le, i64 8
  %.val.i.i.i.i.i.i = load ptr, ptr %i.br, align 8, !alias.scope !273, !noalias !264, !nonnull !4, !noundef !4 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !274
  %i.bs = ptrtoint ptr %.val.i.i.i.i.i.i to i64   ; 2 uses
  %i.bt = and i64 %i.bs, 3
  switch i64 %i.bt, label %default.unreachable [
    i64 2, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs8k3UfHgJ3Xe_15candle_datasets.exit.i.i.i.i.i.i
    i64 3, label %bb.ag
    i64 0, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs8k3UfHgJ3Xe_15candle_datasets.exit.i.i.i.i.i.i
    i64 1, label %bb.ah
  ], !prof !8

default.unreachable:                              ; preds = %bb.af
  unreachable

bb.ag:                                            ; preds = %bb.af
  %i.bu = icmp ult ptr %.val.i.i.i.i.i.i, inttoptr (i64 188978561024 to ptr)
  %i.bv = and i64 %i.bs, 1095216660480
  %i.bw = icmp ne i64 %i.bv, 1095216660480
  call void @llvm.assume(i1 %i.bu)
  call void @llvm.assume(i1 %i.bw)
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs8k3UfHgJ3Xe_15candle_datasets.exit.i.i.i.i.i.i

bb.ah:                                            ; preds = %bb.af
  %i.bx = getelementptr i8, ptr %.val.i.i.i.i.i.i, i64 -1 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bx) ]
  %i.by = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store ptr %i.bx, ptr %i.by, align 8, !alias.scope !275, !noalias !274
  store i8 3, ptr %i.a, align 8, !alias.scope !275, !noalias !274
  invoke void @_RNvXsd_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.by)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs8k3UfHgJ3Xe_15candle_datasets.exit.i.i.i.i.i.i unwind label %bb.ai, !noalias !264

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs8k3UfHgJ3Xe_15candle_datasets.exit.i.i.i.i.i.i: ; preds = %bb.ah, %bb.ag, %bb.af, %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !274
  br label %bb.at

bb.ai:                                            ; preds = %bb.ah, %bb.ae, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECs8k3UfHgJ3Xe_15candle_datasets.exit7.i.i.i.i.invoke.i.i.i
  %i.bz = landingpad { ptr, i32 }
          cleanup
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ad, %bb.ac, %bb.w, %bb.t, %bb.q, %bb.n
  %eh.lpad-body.i.i.i = phi { ptr, i32 } [ %i.bz, %bb.ai ], [ %i.ba, %bb.w ], [ %i.ar, %bb.n ], [ %i.au, %bb.q ], [ %i.ax, %bb.t ], [ %i.bl, %bb.ad ], [ %i.bl, %bb.ac ]
  store i64 %.sroa.4.16.copyload.i.i, ptr %.val.le, align 8, !noalias !264
  %.sroa.510.0..8.val.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %.val.le, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.510.0..8.val.sroa_idx.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6.i.i, i64 24, i1 false), !noalias !276
  %.sroa.612.0..8.val.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %.val.le, i64 32
  store i64 %.sroa.9.16.copyload.i.i, ptr %.sroa.612.0..8.val.sroa_idx.i.i.i, align 8, !noalias !264
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCsgCecv3eZDcN_5alloc3vec13in_place_drop11InPlaceDropINtNtNtCsd5Y3rNriENo_7parquet4file17serialized_reader20SerializedFileReaderNtNtCs5Xr050g3D4S_3std2fs4FileEEECs8k3UfHgJ3Xe_15candle_datasets(ptr noalias nofree noundef align 8 dereferenceable(16) %i.b) #13
          to label %.body.thread6.i unwind label %bb.ak, !noalias !264

bb.ak:                                            ; preds = %bb.aj
  %i.ca = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #11, !noalias !264
  unreachable

bb.al:                                            ; preds = %bb.i, %bb.f, %bb.d
  %eh.lpad-body.ph.i.i = phi { ptr, i32 } [ %i.ag, %bb.i ], [ %i.ad, %bb.f ], [ %i.ac, %bb.d ]
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCsgCecv3eZDcN_5alloc3vec13in_place_drop11InPlaceDropINtNtNtCsd5Y3rNriENo_7parquet4file17serialized_reader20SerializedFileReaderNtNtCs5Xr050g3D4S_3std2fs4FileEEECs8k3UfHgJ3Xe_15candle_datasets(ptr noalias nofree noundef align 8 dereferenceable(16) %i.e) #13
          to label %.body.thread6.i unwind label %bb.am, !noalias !259

bb.am:                                            ; preds = %bb.al
  %i.cb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #11, !noalias !259
  unreachable

bb.an:                                            ; preds = %_RNCNvNtCs8k3UfHgJ3Xe_15candle_datasets3hub8from_hub0B5_.exit.i
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs8k3UfHgJ3Xe_15candle_datasets(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.n)
          to label %_RNCINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters6filter15filter_try_foldNtNtCsat2oUP5WrwS_6hf_hub3api8SiblingsINtNtNtCsgCecv3eZDcN_5alloc3vec13in_place_drop11InPlaceDropINtNtNtCsd5Y3rNriENo_7parquet4file17serialized_reader20SerializedFileReaderNtNtCs5Xr050g3D4S_3std2fs4FileEEINtNtNtBa_3ops12control_flow11ControlFlowINtNtBa_6result6ResultB1H_zEB1H_ENCNvNtCs8k3UfHgJ3Xe_15candle_datasets3hub8from_hub0NCINvNtB6_3map12map_try_foldB15_IB53_B2E_NtB5D_5ErrorEB1H_B4n_NCB5B_s_0NCINvXB6_INtB6_12GenericShuntINtB6t_3MapINtB4_6FilterINtNtB1M_9into_iter8IntoIterB15_EB5z_EB7o_EIB53_zB73_EENtNtNtB8_6traits8iterator8Iterator8try_foldB1H_NCINvNtB1M_16in_place_collect24write_in_place_with_dropB2E_E0B52_E0E0E0B5F_.exit.thread unwind label %bb.ao, !noalias !260

bb.ao:                                            ; preds = %bb.an
  %i.cc = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs8k3UfHgJ3Xe_15candle_datasets(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.n)
          to label %.body.thread6.i unwind label %bb.ap, !noalias !260

bb.ap:                                            ; preds = %bb.ao
  %i.cd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #11, !noalias !260
  unreachable

_RNCINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters6filter15filter_try_foldNtNtCsat2oUP5WrwS_6hf_hub3api8SiblingsINtNtNtCsgCecv3eZDcN_5alloc3vec13in_place_drop11InPlaceDropINtNtNtCsd5Y3rNriENo_7parquet4file17serialized_reader20SerializedFileReaderNtNtCs5Xr050g3D4S_3std2fs4FileEEINtNtNtBa_3ops12control_flow11ControlFlowINtNtBa_6result6ResultB1H_zEB1H_ENCNvNtCs8k3UfHgJ3Xe_15candle_datasets3hub8from_hub0NCINvNtB6_3map12map_try_foldB15_IB53_B2E_NtB5D_5ErrorEB1H_B4n_NCB5B_s_0NCINvXB6_INtB6_12GenericShuntINtB6t_3MapINtB4_6FilterINtNtB1M_9into_iter8IntoIterB15_EB5z_EB7o_EIB53_zB73_EENtNtNtB8_6traits8iterator8Iterator8try_foldB1H_NCINvNtB1M_16in_place_collect24write_in_place_with_dropB2E_E0B52_E0E0E0B5F_.exit.thread: ; preds = %bb.an
  call void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs8k3UfHgJ3Xe_15candle_datasets(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.n), !noalias !260
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %bb.au

bb.aq:                                            ; preds = %bb.b
  %i.ce = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsat2oUP5WrwS_6hf_hub3api8SiblingsECs8k3UfHgJ3Xe_15candle_datasets(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.n) #13
          to label %.body.i unwind label %bb.ar, !noalias !260

bb.ar:                                            ; preds = %.body.i, %bb.aq
  %i.cf = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #11, !noalias !260
  unreachable

.body.thread6.i:                                  ; preds = %.body.i, %bb.ao, %bb.al, %bb.aj
  %.pn9.i = phi { ptr, i32 } [ %i.ce, %.body.i ], [ %eh.lpad-body.i.i.i, %bb.aj ], [ %eh.lpad-body.ph.i.i, %bb.al ], [ %i.cc, %bb.ao ]
  resume { ptr, i32 } %.pn9.i

.body.i:                                          ; preds = %bb.aq
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCsgCecv3eZDcN_5alloc3vec13in_place_drop11InPlaceDropINtNtNtCsd5Y3rNriENo_7parquet4file17serialized_reader20SerializedFileReaderNtNtCs5Xr050g3D4S_3std2fs4FileEEECs8k3UfHgJ3Xe_15candle_datasets(ptr noalias nofree noundef align 8 dereferenceable(16) %i.f) #13
          to label %.body.thread6.i unwind label %bb.ar, !noalias !260

_RNCINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters6filter15filter_try_foldNtNtCsat2oUP5WrwS_6hf_hub3api8SiblingsINtNtNtCsgCecv3eZDcN_5alloc3vec13in_place_drop11InPlaceDropINtNtNtCsd5Y3rNriENo_7parquet4file17serialized_reader20SerializedFileReaderNtNtCs5Xr050g3D4S_3std2fs4FileEEINtNtNtBa_3ops12control_flow11ControlFlowINtNtBa_6result6ResultB1H_zEB1H_ENCNvNtCs8k3UfHgJ3Xe_15candle_datasets3hub8from_hub0NCINvNtB6_3map12map_try_foldB15_IB53_B2E_NtB5D_5ErrorEB1H_B4n_NCB5B_s_0NCINvXB6_INtB6_12GenericShuntINtB6t_3MapINtB4_6FilterINtNtB1M_9into_iter8IntoIterB15_EB5z_EB7o_EIB53_zB73_EENtNtNtB8_6traits8iterator8Iterator8try_foldB1H_NCINvNtB1M_16in_place_collect24write_in_place_with_dropB2E_E0B52_E0E0E0B5F_.exit: ; preds = %_RNCNvNtCs8k3UfHgJ3Xe_15candle_datasets3hub8from_hubs_0B5_.exit.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4.038, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6.16..sroa_idx.i.i, i64 24, i1 false), !noalias !259
  %i.cg = getelementptr inbounds nuw i8, ptr %.sroa.4.038, i64 24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !259
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !259
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !259
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  %.pre = load ptr, ptr %i.i, align 8
  %.pre45 = load ptr, ptr %i.j, align 8
  br label %bb.au

._crit_edge:                                      ; preds = %bb.au, %bb.a
  %.sroa.4.0.lcssa = phi ptr [ %3, %bb.a ], [ %.sroa.810.013, %bb.au ]
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %2, ptr %i.ch, align 8, !alias.scope !277
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.4.0.lcssa, ptr %i.ci, align 8, !alias.scope !277
  store i64 0, ptr %0, align 8, !alias.scope !277
  br label %bb.as

bb.as:                                            ; preds = %._crit_edge, %bb.at
  ret void

bb.at:                                            ; preds = %bb.j, %bb.l, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECs8k3UfHgJ3Xe_15candle_datasets.exit7.i.i.i.i.invoke.i.i.i, %bb.aa, %bb.ab, %bb.ae, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs8k3UfHgJ3Xe_15candle_datasets.exit.i.i.i.i.i.i
  store i64 %.sroa.4.16.copyload.i.i, ptr %.val.le, align 8, !noalias !264
  %.sroa.510.0..8.val.sroa_idx11.i.i.i = getelementptr inbounds nuw i8, ptr %.val.le, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.510.0..8.val.sroa_idx11.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6.16..sroa_idx.i.i, i64 24, i1 false), !noalias !259
  %.sroa.612.0..8.val.sroa_idx13.i.i.i = getelementptr inbounds nuw i8, ptr %.val.le, i64 32
  store i64 %.sroa.9.16.copyload.i.i, ptr %.sroa.612.0..8.val.sroa_idx13.i.i.i, align 8, !noalias !264
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !259
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !259
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !259
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %2, ptr %i.cj, align 8, !alias.scope !278
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.4.038, ptr %i.ck, align 8, !alias.scope !278
  store i64 1, ptr %0, align 8, !alias.scope !278
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br label %bb.as

bb.au:                                            ; preds = %_RNCINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters6filter15filter_try_foldNtNtCsat2oUP5WrwS_6hf_hub3api8SiblingsINtNtNtCsgCecv3eZDcN_5alloc3vec13in_place_drop11InPlaceDropINtNtNtCsd5Y3rNriENo_7parquet4file17serialized_reader20SerializedFileReaderNtNtCs5Xr050g3D4S_3std2fs4FileEEINtNtNtBa_3ops12control_flow11ControlFlowINtNtBa_6result6ResultB1H_zEB1H_ENCNvNtCs8k3UfHgJ3Xe_15candle_datasets3hub8from_hub0NCINvNtB6_3map12map_try_foldB15_IB53_B2E_NtB5D_5ErrorEB1H_B4n_NCB5B_s_0NCINvXB6_INtB6_12GenericShuntINtB6t_3MapINtB4_6FilterINtNtB1M_9into_iter8IntoIterB15_EB5z_EB7o_EIB53_zB73_EENtNtNtB8_6traits8iterator8Iterator8try_foldB1H_NCINvNtB1M_16in_place_collect24write_in_place_with_dropB2E_E0B52_E0E0E0B5F_.exit, %_RNCINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters6filter15filter_try_foldNtNtCsat2oUP5WrwS_6hf_hub3api8SiblingsINtNtNtCsgCecv3eZDcN_5alloc3vec13in_place_drop11InPlaceDropINtNtNtCsd5Y3rNriENo_7parquet4file17serialized_reader20SerializedFileReaderNtNtCs5Xr050g3D4S_3std2fs4FileEEINtNtNtBa_3ops12control_flow11ControlFlowINtNtBa_6result6ResultB1H_zEB1H_ENCNvNtCs8k3UfHgJ3Xe_15candle_datasets3hub8from_hub0NCINvNtB6_3map12map_try_foldB15_IB53_B2E_NtB5D_5ErrorEB1H_B4n_NCB5B_s_0NCINvXB6_INtB6_12GenericShuntINtB6t_3MapINtB4_6FilterINtNtB1M_9into_iter8IntoIterB15_EB5z_EB7o_EIB53_zB73_EENtNtNtB8_6traits8iterator8Iterator8try_foldB1H_NCINvNtB1M_16in_place_collect24write_in_place_with_dropB2E_E0B52_E0E0E0B5F_.exit.thread
  %i.cl = phi ptr [ %i.y, %_RNCINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters6filter15filter_try_foldNtNtCsat2oUP5WrwS_6hf_hub3api8SiblingsINtNtNtCsgCecv3eZDcN_5alloc3vec13in_place_drop11InPlaceDropINtNtNtCsd5Y3rNriENo_7parquet4file17serialized_reader20SerializedFileReaderNtNtCs5Xr050g3D4S_3std2fs4FileEEINtNtNtBa_3ops12control_flow11ControlFlowINtNtBa_6result6ResultB1H_zEB1H_ENCNvNtCs8k3UfHgJ3Xe_15candle_datasets3hub8from_hub0NCINvNtB6_3map12map_try_foldB15_IB53_B2E_NtB5D_5ErrorEB1H_B4n_NCB5B_s_0NCINvXB6_INtB6_12GenericShuntINtB6t_3MapINtB4_6FilterINtNtB1M_9into_iter8IntoIterB15_EB5z_EB7o_EIB53_zB73_EENtNtNtB8_6traits8iterator8Iterator8try_foldB1H_NCINvNtB1M_16in_place_collect24write_in_place_with_dropB2E_E0B52_E0E0E0B5F_.exit.thread ], [ %.pre45, %_RNCINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters6filter15filter_try_foldNtNtCsat2oUP5WrwS_6hf_hub3api8SiblingsINtNtNtCsgCecv3eZDcN_5alloc3vec13in_place_drop11InPlaceDropINtNtNtCsd5Y3rNriENo_7parquet4file17serialized_reader20SerializedFileReaderNtNtCs5Xr050g3D4S_3std2fs4FileEEINtNtNtBa_3ops12control_flow11ControlFlowINtNtBa_6result6ResultB1H_zEB1H_ENCNvNtCs8k3UfHgJ3Xe_15candle_datasets3hub8from_hub0NCINvNtB6_3map12map_try_foldB15_IB53_B2E_NtB5D_5ErrorEB1H_B4n_NCB5B_s_0NCINvXB6_INtB6_12GenericShuntINtB6t_3MapINtB4_6FilterINtNtB1M_9into_iter8IntoIterB15_EB5z_EB7o_EIB53_zB73_EENtNtNtB8_6traits8iterator8Iterator8try_foldB1H_NCINvNtB1M_16in_place_collect24write_in_place_with_dropB2E_E0B52_E0E0E0B5F_.exit ] ; 2 uses
  %i.cm = phi ptr [ %i.w, %_RNCINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters6filter15filter_try_foldNtNtCsat2oUP5WrwS_6hf_hub3api8SiblingsINtNtNtCsgCecv3eZDcN_5alloc3vec13in_place_drop11InPlaceDropINtNtNtCsd5Y3rNriENo_7parquet4file17serialized_reader20SerializedFileReaderNtNtCs5Xr050g3D4S_3std2fs4FileEEINtNtNtBa_3ops12control_flow11ControlFlowINtNtBa_6result6ResultB1H_zEB1H_ENCNvNtCs8k3UfHgJ3Xe_15candle_datasets3hub8from_hub0NCINvNtB6_3map12map_try_foldB15_IB53_B2E_NtB5D_5ErrorEB1H_B4n_NCB5B_s_0NCINvXB6_INtB6_12GenericShuntINtB6t_3MapINtB4_6FilterINtNtB1M_9into_iter8IntoIterB15_EB5z_EB7o_EIB53_zB73_EENtNtNtB8_6traits8iterator8Iterator8try_foldB1H_NCINvNtB1M_16in_place_collect24write_in_place_with_dropB2E_E0B52_E0E0E0B5F_.exit.thread ], [ %.pre, %_RNCINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters6filter15filter_try_foldNtNtCsat2oUP5WrwS_6hf_hub3api8SiblingsINtNtNtCsgCecv3eZDcN_5alloc3vec13in_place_drop11InPlaceDropINtNtNtCsd5Y3rNriENo_7parquet4file17serialized_reader20SerializedFileReaderNtNtCs5Xr050g3D4S_3std2fs4FileEEINtNtNtBa_3ops12control_flow11ControlFlowINtNtBa_6result6ResultB1H_zEB1H_ENCNvNtCs8k3UfHgJ3Xe_15candle_datasets3hub8from_hub0NCINvNtB6_3map12map_try_foldB15_IB53_B2E_NtB5D_5ErrorEB1H_B4n_NCB5B_s_0NCINvXB6_INtB6_12GenericShuntINtB6t_3MapINtB4_6FilterINtNtB1M_9into_iter8IntoIterB15_EB5z_EB7o_EIB53_zB73_EENtNtNtB8_6traits8iterator8Iterator8try_foldB1H_NCINvNtB1M_16in_place_collect24write_in_place_with_dropB2E_E0B52_E0E0E0B5F_.exit ] ; 2 uses
  %.sroa.810.013 = phi ptr [ %.sroa.4.038, %_RNCINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters6filter15filter_try_foldNtNtCsat2oUP5WrwS_6hf_hub3api8SiblingsINtNtNtCsgCecv3eZDcN_5alloc3vec13in_place_drop11InPlaceDropINtNtNtCsd5Y3rNriENo_7parquet4file17serialized_reader20SerializedFileReaderNtNtCs5Xr050g3D4S_3std2fs4FileEEINtNtNtBa_3ops12control_flow11ControlFlowINtNtBa_6result6ResultB1H_zEB1H_ENCNvNtCs8k3UfHgJ3Xe_15candle_datasets3hub8from_hub0NCINvNtB6_3map12map_try_foldB15_IB53_B2E_NtB5D_5ErrorEB1H_B4n_NCB5B_s_0NCINvXB6_INtB6_12GenericShuntINtB6t_3MapINtB4_6FilterINtNtB1M_9into_iter8IntoIterB15_EB5z_EB7o_EIB53_zB73_EENtNtNtB8_6traits8iterator8Iterator8try_foldB1H_NCINvNtB1M_16in_place_collect24write_in_place_with_dropB2E_E0B52_E0E0E0B5F_.exit.thread ], [ %i.cg, %_RNCINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters6filter15filter_try_foldNtNtCsat2oUP5WrwS_6hf_hub3api8SiblingsINtNtNtCsgCecv3eZDcN_5alloc3vec13in_place_drop11InPlaceDropINtNtNtCsd5Y3rNriENo_7parquet4file17serialized_reader20SerializedFileReaderNtNtCs5Xr050g3D4S_3std2fs4FileEEINtNtNtBa_3ops12control_flow11ControlFlowINtNtBa_6result6ResultB1H_zEB1H_ENCNvNtCs8k3UfHgJ3Xe_15candle_datasets3hub8from_hub0NCINvNtB6_3map12map_try_foldB15_IB53_B2E_NtB5D_5ErrorEB1H_B4n_NCB5B_s_0NCINvXB6_INtB6_12GenericShuntINtB6t_3MapINtB4_6FilterINtNtB1M_9into_iter8IntoIterB15_EB5z_EB7o_EIB53_zB73_EENtNtNtB8_6traits8iterator8Iterator8try_foldB1H_NCINvNtB1M_16in_place_collect24write_in_place_with_dropB2E_E0B52_E0E0E0B5F_.exit ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  %.not = icmp eq ptr %i.cl, %i.cm
  br i1 %.not, label %._crit_edge, label %bb.b
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB6_8IntoItertENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4folduNCINvNtNtB15_8adapters3map8map_foldtmuNCNvXs0_NtNtCs8k3UfHgJ3Xe_15candle_datasets3nlp11tinystoriesNtB2K_17DatasetRandomIterBZ_4next0NCINvNvBZ_8for_each4callmNCINvMsk_B8_INtB8_3VecmE14extend_trustedINtB25_3MapBI_B2C_EE0E0E0EB2O_(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %0, ptr noalias nofree noundef align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !4, !noundef !4 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.promoted = load ptr, ptr %i.d, align 8        ; 8 uses
  %.not.not10 = icmp eq ptr %.promoted, %i.c
  br i1 %.not.not10, label %bb.b, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %.promoted18 = ptrtoaddr ptr %.promoted to i64
  %i.e = ptrtoaddr ptr %i.c to i64
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !alias.scope !290, !noundef !4 ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %.promoted11 = load i64, ptr %i.h, align 8, !alias.scope !290 ; 5 uses
  %i.i = add i64 %i.e, -2
  %i.j = sub i64 %i.i, %.promoted18               ; 4 uses
  %i.k = lshr i64 %i.j, 1
  %i.l = add nuw i64 %i.k, 1                      ; 2 uses
  %min.iters.check = icmp ult i64 %i.j, 62
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph
  %i.m = shl i64 %.promoted11, 2                  ; 2 uses
  %i.n = getelementptr nuw i8, ptr %i.g, i64 %i.m
  %i.o = shl i64 %i.j, 1
  %i.p = and i64 %i.o, -4
  %i.q = getelementptr i8, ptr %i.g, i64 %i.m
  %i.r = getelementptr i8, ptr %i.q, i64 %i.p
  %i.s = getelementptr i8, ptr %i.r, i64 4
  %i.t = and i64 %i.j, -2
  %i.u = getelementptr i8, ptr %.promoted, i64 %i.t
  %i.v = getelementptr i8, ptr %i.u, i64 2
  %bound0 = icmp ult ptr %i.n, %i.v
  %bound1 = icmp ult ptr %.promoted, %i.s
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.l, -8                       ; 4 uses
  %i.w = add i64 %.promoted11, %n.vec             ; 2 uses
  %i.x = shl i64 %n.vec, 1
  %i.y = getelementptr i8, ptr %.promoted, i64 %i.x
  %i.z = getelementptr [4 x i8], ptr %i.g, i64 %.promoted11
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.aa = shl i64 %index, 1
  %next.gep = getelementptr i8, ptr %.promoted, i64 %i.aa ; 2 uses
  %i.ab = getelementptr i8, ptr %next.gep, i64 8
  %wide.load = load <4 x i16>, ptr %next.gep, align 2, !alias.scope !291
  %wide.load19 = load <4 x i16>, ptr %i.ab, align 2, !alias.scope !291
  tail call void @llvm.experimental.noalias.scope.decl(metadata !292)
  %i.ac = zext <4 x i16> %wide.load to <4 x i32>
  %i.ad = zext <4 x i16> %wide.load19 to <4 x i32>
  tail call void @llvm.experimental.noalias.scope.decl(metadata !293)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !294)
  %i.ae = getelementptr [4 x i8], ptr %i.z, i64 %index ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  store <4 x i32> %i.ac, ptr %i.ae, align 4, !alias.scope !295, !noalias !296
  store <4 x i32> %i.ad, ptr %i.af, align 4, !alias.scope !295, !noalias !296
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ag = icmp eq i64 %index.next, %n.vec
end_hunk_2
begin_hunk_3_@_RINvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB6_8IntoItertENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4folduNCINvNtNtB15_8adapters3map8map_foldtmuNCNvXs0_NtNtCs8k3UfHgJ3Xe_15candle_datasets3nlp11tinystoriesNtB2K_17DatasetRandomIterBZ_4next0NCINvNvBZ_8for_each4callmNCINvMsk_B8_INtB8_3VecmE14extend_trustedINtB25_3MapBI_B2C_EE0E0E0EB2O_:bb.a

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs0_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsat2oUP5WrwS_6hf_hub3api8SiblingsE32forget_allocation_drop_remainingCs8k3UfHgJ3Xe_15candle_datasets(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) initializes((0, 8), (16, 24)) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.val = load ptr, ptr %i.b, align 8, !nonnull !4, !noundef !4 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %.val1 = load ptr, ptr %i.c, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.d = ptrtoint ptr %.val1 to i64
  %i.e = ptrtoint ptr %.val to i64
  %i.f = sub nuw i64 %i.d, %i.e
  %i.g = udiv exact i64 %i.f, 24                  ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.h, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 0, ptr %i.a, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.i, align 8
  store ptr inttoptr (i64 8 to ptr), ptr %0, align 8
  call void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecNtNtCsat2oUP5WrwS_6hf_hub3api8SiblingsENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs8k3UfHgJ3Xe_15candle_datasets(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store ptr inttoptr (i64 8 to ptr), ptr %i.b, align 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.c, align 8
  %i.j = icmp eq ptr %.val1, %.val
  br i1 %i.j, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueSNtNtCsat2oUP5WrwS_6hf_hub3api8SiblingsECs8k3UfHgJ3Xe_15candle_datasets.exit, label %.lr.ph

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsat2oUP5WrwS_6hf_hub3api8SiblingsECs8k3UfHgJ3Xe_15candle_datasets.exit.i: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECs8k3UfHgJ3Xe_15candle_datasets.exit.i.i
  %i.k = icmp eq i64 %i.m, %i.g
  br i1 %i.k, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueSNtNtCsat2oUP5WrwS_6hf_hub3api8SiblingsECs8k3UfHgJ3Xe_15candle_datasets.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsat2oUP5WrwS_6hf_hub3api8SiblingsECs8k3UfHgJ3Xe_15candle_datasets.exit.i
  %.sroa.0.0.i14 = phi i64 [ %i.m, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsat2oUP5WrwS_6hf_hub3api8SiblingsECs8k3UfHgJ3Xe_15candle_datasets.exit.i ], [ 0, %bb.a ] ; 2 uses
  %i.l = getelementptr inbounds nuw [24 x i8], ptr %.val, i64 %.sroa.0.0.i14 ; 3 uses
  %i.m = add nuw nsw i64 %.sroa.0.0.i14, 1        ; 4 uses
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs8k3UfHgJ3Xe_15candle_datasets(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.l)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECs8k3UfHgJ3Xe_15candle_datasets.exit.i.i unwind label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.n = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs8k3UfHgJ3Xe_15candle_datasets(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.l)
          to label %.body.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.o = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #11
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECs8k3UfHgJ3Xe_15candle_datasets.exit.i.i: ; preds = %.lr.ph
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs8k3UfHgJ3Xe_15candle_datasets(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.l)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsat2oUP5WrwS_6hf_hub3api8SiblingsECs8k3UfHgJ3Xe_15candle_datasets.exit.i unwind label %bb.e

bb.d:                                             ; preds = %.lr.ph16
  %i.p = add nuw nsw i64 %.sroa.0.1.i15, 1        ; 2 uses
  %i.q = icmp eq i64 %i.p, %i.g
  br i1 %i.q, label %._crit_edge, label %.lr.ph16

bb.e:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECs8k3UfHgJ3Xe_15candle_datasets.exit.i.i
  %i.r = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.e, %bb.b
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.r, %bb.e ], [ %i.n, %bb.b ]
  %i.s = icmp eq i64 %i.m, %i.g
  br i1 %i.s, label %._crit_edge, label %.lr.ph16

.lr.ph16:                                         ; preds = %.body.i, %bb.d
  %.sroa.0.1.i15 = phi i64 [ %i.p, %bb.d ], [ %i.m, %.body.i ] ; 2 uses
  %i.t = getelementptr inbounds nuw [24 x i8], ptr %.val, i64 %.sroa.0.1.i15
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsat2oUP5WrwS_6hf_hub3api8SiblingsECs8k3UfHgJ3Xe_15candle_datasets(ptr noalias nofree noundef align 8 dereferenceable(24) %i.t) #13
          to label %bb.d unwind label %bb.f

._crit_edge:                                      ; preds = %bb.d, %.body.i
  resume { ptr, i32 } %eh.lpad-body.i

bb.f:                                             ; preds = %.lr.ph16
  %i.u = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #11
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueSNtNtCsat2oUP5WrwS_6hf_hub3api8SiblingsECs8k3UfHgJ3Xe_15candle_datasets.exit: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsat2oUP5WrwS_6hf_hub3api8SiblingsECs8k3UfHgJ3Xe_15candle_datasets.exit.i, %bb.a
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs_NtNtCs8k3UfHgJ3Xe_15candle_datasets3nlp11tinystoriesNtB4_17DatasetRandomIter3new(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([88 x i8]) align 8 captures(none) dereferenceable(88) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(48) %1, i1 noundef zeroext %2, i64 noundef %3, i8 noundef range(i8 0, 3) %4) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 3 uses
  %i.b = alloca [32 x i8], align 8                ; 3 uses
  %i.c = alloca [8 x i8], align 8                 ; 8 uses
  %i.d = alloca [32 x i8], align 8                ; 7 uses
  %i.e = alloca [24 x i8], align 8                ; 7 uses
  %i.f = alloca [8 x i8], align 8                 ; 8 uses
  %i.g = alloca [24 x i8], align 8                ; 8 uses
  %.sroa.0.0.idx = select i1 %2, i64 0, i64 24
  %.sroa.0.0 = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.0.0.idx ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %i.h = getelementptr inbounds nuw i8, ptr %.sroa.0.0, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !nonnull !4, !noundef !4 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.0.0, i64 16
  %i.k = load i64, ptr %i.j, align 8, !noundef !4 ; 2 uses
  %i.l = getelementptr inbounds nuw [16 x i8], ptr %i.i, i64 %i.k
  call void @_RNvXs_NtNtCsgCecv3eZDcN_5alloc3vec21spec_from_iter_nestedINtB6_3VecRNtCs94aVKmQQwYh_7memmap24MmapEINtB4_18SpecFromIterNestedB13_INtNtNtCsf3Ta7LF998c_4core5slice4iter4IterB14_EE9from_iterCs8k3UfHgJ3Xe_15candle_datasets(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.g, ptr noundef nonnull %i.i, ptr noundef nonnull %i.l)
  %i.m = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 2 uses
  %i.p = load i64, ptr %i.o, align 8, !noundef !4 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %i.q = invoke noundef nonnull ptr @_RNvNtNtCsVG4f6i5f9f_4rand4rngs6thread3rng()
          to label %bb.c unwind label %bb.b       ; 2 uses

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCsVG4f6i5f9f_4rand4rngs6thread9ThreadRngECs8k3UfHgJ3Xe_15candle_datasets.exit: ; preds = %bb.e, %bb.f, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCsVG4f6i5f9f_4rand4rngs6thread9ThreadRngECs8k3UfHgJ3Xe_15candle_datasets.exit14, %bb.b
  %.pn8 = phi { ptr, i32 } [ %i.r, %bb.b ], [ %.pn, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCsVG4f6i5f9f_4rand4rngs6thread9ThreadRngECs8k3UfHgJ3Xe_15candle_datasets.exit14 ], [ %i.t, %bb.f ], [ %i.t, %bb.e ]
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecRNtCs94aVKmQQwYh_7memmap24MmapEECs8k3UfHgJ3Xe_15candle_datasets(ptr noalias nofree noundef align 8 dereferenceable(24) %i.g) #13
          to label %bb.y unwind label %bb.j

bb.b:                                             ; preds = %bb.m, %bb.i, %bb.o, %bb.k, %bb.a
  %i.r = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCsVG4f6i5f9f_4rand4rngs6thread9ThreadRngECs8k3UfHgJ3Xe_15candle_datasets.exit

bb.c:                                             ; preds = %bb.a
  store ptr %i.q, ptr %i.f, align 8
  %i.s = icmp ult i64 %i.p, 2
  br i1 %i.s, label %bb.h, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  invoke void @_RINvXs0_NtNtCsVG4f6i5f9f_4rand3seq5sliceSRNtCs94aVKmQQwYh_7memmap24MmapNtB6_11SliceRandom15partial_shuffleNtNtNtBa_4rngs6thread9ThreadRngECs8k3UfHgJ3Xe_15candle_datasets(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.b, ptr noalias nofree noundef nonnull align 8 %i.n, i64 noundef %i.p, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.f, i64 noundef %i.p)
          to label %bb.g unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.t = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !325)
  call void @llvm.experimental.noalias.scope.decl(metadata !326)
  call void @llvm.experimental.noalias.scope.decl(metadata !327)
  %i.u = load ptr, ptr %i.f, align 8, !alias.scope !328, !nonnull !4, !noundef !4 ; 2 uses
  %i.v = load i64, ptr %i.u, align 8, !noalias !328, !noundef !4
  %i.w = add i64 %i.v, -1                         ; 2 uses
  store i64 %i.w, ptr %i.u, align 8, !noalias !328
  %i.x = icmp eq i64 %i.w, 0
  br i1 %i.x, label %bb.f, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCsVG4f6i5f9f_4rand4rngs6thread9ThreadRngECs8k3UfHgJ3Xe_15candle_datasets.exit

bb.f:                                             ; preds = %bb.e
  invoke void @_RNvMs6_NtCsgCecv3eZDcN_5alloc2rcINtB5_2RcINtNtCsf3Ta7LF998c_4core4cell10UnsafeCellINtNtNtCsVG4f6i5f9f_4rand4rngs9reseeding12ReseedingRngNtNtCscHeDkCj8TjV_11rand_chacha6chacha12ChaCha12CoreNtNtCsaVVYlBCAE9B_9rand_core2os5OsRngEEE9drop_slowB1p_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.f) #10
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCsVG4f6i5f9f_4rand4rngs6thread9ThreadRngECs8k3UfHgJ3Xe_15candle_datasets.exit unwind label %bb.j

bb.g:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %.pre = load ptr, ptr %i.f, align 8, !alias.scope !329
  br label %bb.h

bb.h:                                             ; preds = %bb.c, %bb.g
  %i.y = phi ptr [ %i.q, %bb.c ], [ %.pre, %bb.g ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !330)
  call void @llvm.experimental.noalias.scope.decl(metadata !331)
  call void @llvm.experimental.noalias.scope.decl(metadata !332)
  %i.z = load i64, ptr %i.y, align 8, !noalias !329, !noundef !4
  %i.aa = add i64 %i.z, -1                        ; 2 uses
  store i64 %i.aa, ptr %i.y, align 8, !noalias !329
  %i.ab = icmp eq i64 %i.aa, 0
  br i1 %i.ab, label %bb.i, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCsVG4f6i5f9f_4rand4rngs6thread9ThreadRngECs8k3UfHgJ3Xe_15candle_datasets.exit11

bb.i:                                             ; preds = %bb.h
  invoke void @_RNvMs6_NtCsgCecv3eZDcN_5alloc2rcINtB5_2RcINtNtCsf3Ta7LF998c_4core4cell10UnsafeCellINtNtNtCsVG4f6i5f9f_4rand4rngs9reseeding12ReseedingRngNtNtCscHeDkCj8TjV_11rand_chacha6chacha12ChaCha12CoreNtNtCsaVVYlBCAE9B_9rand_core2os5OsRngEEE9drop_slowB1p_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.f) #10
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCsVG4f6i5f9f_4rand4rngs6thread9ThreadRngECs8k3UfHgJ3Xe_15candle_datasets.exit11 unwind label %bb.b

bb.j:                                             ; preds = %bb.u, %bb.f, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCsVG4f6i5f9f_4rand4rngs6thread9ThreadRngECs8k3UfHgJ3Xe_15candle_datasets.exit14, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCsVG4f6i5f9f_4rand4rngs6thread9ThreadRngECs8k3UfHgJ3Xe_15candle_datasets.exit
  %i.ac = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #11
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCsVG4f6i5f9f_4rand4rngs6thread9ThreadRngECs8k3UfHgJ3Xe_15candle_datasets.exit11: ; preds = %bb.h, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %i.ad = icmp eq i64 %i.p, 0
  br i1 %i.ad, label %bb.k, label %bb.l, !prof !10

bb.k:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCsVG4f6i5f9f_4rand4rngs6thread9ThreadRngECs8k3UfHgJ3Xe_15candle_datasets.exit11
  invoke void @_RNvNtCsf3Ta7LF998c_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @5) #14
          to label %bb.n unwind label %bb.b

bb.l:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCsVG4f6i5f9f_4rand4rngs6thread9ThreadRngECs8k3UfHgJ3Xe_15candle_datasets.exit11
  %i.ae = add nsw i64 %i.p, -1                    ; 3 uses
  store i64 %i.ae, ptr %i.o, align 8
  %i.af = load i64, ptr %i.g, align 8, !range !5, !noundef !4
  %i.ag = icmp samesign ult i64 %i.ae, %i.af
  call void @llvm.assume(i1 %i.ag)
  %i.ah = icmp ult i64 %i.p, 1152921504606846977
  call void @llvm.assume(i1 %i.ah)
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.ae
  %i.aj = load ptr, ptr %i.ai, align 8, !nonnull !4, !align !9, !noundef !4 ; 2 uses
  %i.ak = shl i64 %3, 1                           ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.al = icmp eq i64 %i.ak, 0
  br i1 %i.al, label %bb.m, label %bb.o, !prof !10

bb.m:                                             ; preds = %bb.l
  invoke void @_RNvNtCsf3Ta7LF998c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1, i64 noundef 27, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #15
          to label %.noexc12 unwind label %bb.b

.noexc12:                                         ; preds = %bb.m
  unreachable

bb.n:                                             ; preds = %bb.k
  unreachable

bb.o:                                             ; preds = %bb.l
  %5 = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %6 = load i64, ptr %5, align 8, !noundef !4
  %i.am = sub i64 %6, %i.ak                       ; 2 uses
  %i.an = udiv i64 %i.am, %i.ak
  %i.ao = urem i64 %i.am, %i.ak
  %.not10.i.i = icmp ne i64 %i.ao, 0
  %i.ap = zext i1 %.not10.i.i to i64
  %.sroa.05.0.i.i = add nuw i64 %i.an, %i.ap
  %i.aq = add i64 %i.ak, -1
  store i64 0, ptr %i.d, align 8, !alias.scope !333
  %i.ar = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 %.sroa.05.0.i.i, ptr %i.ar, align 8, !alias.scope !333
  %i.as = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store i64 %i.aq, ptr %i.as, align 8, !alias.scope !333
  %i.at = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store i8 1, ptr %i.at, align 8, !alias.scope !333
  invoke void @_RNvXs_NtNtCsgCecv3eZDcN_5alloc3vec21spec_from_iter_nestedINtB6_3VecjEINtB4_18SpecFromIterNestedjINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters7step_by6StepByINtNtNtB1F_3ops5range5RangejEEE9from_iterCs8k3UfHgJ3Xe_15candle_datasets(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.e, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(32) %i.d)
          to label %bb.p unwind label %bb.b

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.au = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.av = load ptr, ptr %i.au, align 8, !nonnull !4, !noundef !4
  %i.aw = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.ax = load i64, ptr %i.aw, align 8, !noundef !4 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.ay = invoke noundef nonnull ptr @_RNvNtNtCsVG4f6i5f9f_4rand4rngs6thread3rng()
          to label %bb.r unwind label %bb.q       ; 2 uses

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCsVG4f6i5f9f_4rand4rngs6thread9ThreadRngECs8k3UfHgJ3Xe_15candle_datasets.exit14: ; preds = %bb.t, %bb.u, %bb.q
  %.pn = phi { ptr, i32 } [ %i.az, %bb.q ], [ %i.bb, %bb.u ], [ %i.bb, %bb.t ]
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecjEECs8k3UfHgJ3Xe_15candle_datasets(ptr noalias nofree noundef align 8 dereferenceable(24) %i.e) #13
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCsVG4f6i5f9f_4rand4rngs6thread9ThreadRngECs8k3UfHgJ3Xe_15candle_datasets.exit unwind label %bb.j

bb.q:                                             ; preds = %bb.x, %bb.p
  %i.az = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCsVG4f6i5f9f_4rand4rngs6thread9ThreadRngECs8k3UfHgJ3Xe_15candle_datasets.exit14

bb.r:                                             ; preds = %bb.p
  store ptr %i.ay, ptr %i.c, align 8
  %i.ba = icmp ult i64 %i.ax, 2
  br i1 %i.ba, label %bb.w, label %bb.s

bb.s:                                             ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  invoke void @_RINvXs0_NtNtCsVG4f6i5f9f_4rand3seq5sliceSjNtB6_11SliceRandom15partial_shuffleNtNtNtBa_4rngs6thread9ThreadRngECs8k3UfHgJ3Xe_15candle_datasets(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.a, ptr noalias nofree noundef nonnull align 8 %i.av, i64 noundef %i.ax, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.c, i64 noundef %i.ax)
          to label %bb.v unwind label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bb = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !334)
  call void @llvm.experimental.noalias.scope.decl(metadata !335)
  call void @llvm.experimental.noalias.scope.decl(metadata !336)
  %i.bc = load ptr, ptr %i.c, align 8, !alias.scope !337, !nonnull !4, !noundef !4 ; 2 uses
  %i.bd = load i64, ptr %i.bc, align 8, !noalias !337, !noundef !4
  %i.be = add i64 %i.bd, -1                       ; 2 uses
  store i64 %i.be, ptr %i.bc, align 8, !noalias !337
  %i.bf = icmp eq i64 %i.be, 0
  br i1 %i.bf, label %bb.u, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCsVG4f6i5f9f_4rand4rngs6thread9ThreadRngECs8k3UfHgJ3Xe_15candle_datasets.exit14

bb.u:                                             ; preds = %bb.t
  invoke void @_RNvMs6_NtCsgCecv3eZDcN_5alloc2rcINtB5_2RcINtNtCsf3Ta7LF998c_4core4cell10UnsafeCellINtNtNtCsVG4f6i5f9f_4rand4rngs9reseeding12ReseedingRngNtNtCscHeDkCj8TjV_11rand_chacha6chacha12ChaCha12CoreNtNtCsaVVYlBCAE9B_9rand_core2os5OsRngEEE9drop_slowB1p_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.c) #10
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCsVG4f6i5f9f_4rand4rngs6thread9ThreadRngECs8k3UfHgJ3Xe_15candle_datasets.exit14 unwind label %bb.j

bb.v:                                             ; preds = %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %.pre17 = load ptr, ptr %i.c, align 8, !alias.scope !338
  br label %bb.w

bb.w:                                             ; preds = %bb.r, %bb.v
  %i.bg = phi ptr [ %i.ay, %bb.r ], [ %.pre17, %bb.v ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !339)
  call void @llvm.experimental.noalias.scope.decl(metadata !340)
  call void @llvm.experimental.noalias.scope.decl(metadata !341)
  %i.bh = load i64, ptr %i.bg, align 8, !noalias !338, !noundef !4
  %i.bi = add i64 %i.bh, -1                       ; 2 uses
  store i64 %i.bi, ptr %i.bg, align 8, !noalias !338
  %i.bj = icmp eq i64 %i.bi, 0
  br i1 %i.bj, label %bb.x, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCsVG4f6i5f9f_4rand4rngs6thread9ThreadRngECs8k3UfHgJ3Xe_15candle_datasets.exit16

bb.x:                                             ; preds = %bb.w
  invoke void @_RNvMs6_NtCsgCecv3eZDcN_5alloc2rcINtB5_2RcINtNtCsf3Ta7LF998c_4core4cell10UnsafeCellINtNtNtCsVG4f6i5f9f_4rand4rngs9reseeding12ReseedingRngNtNtCscHeDkCj8TjV_11rand_chacha6chacha12ChaCha12CoreNtNtCsaVVYlBCAE9B_9rand_core2os5OsRngEEE9drop_slowB1p_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.c) #10
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCsVG4f6i5f9f_4rand4rngs6thread9ThreadRngECs8k3UfHgJ3Xe_15candle_datasets.exit16 unwind label %bb.q

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCsVG4f6i5f9f_4rand4rngs6thread9ThreadRngECs8k3UfHgJ3Xe_15candle_datasets.exit16: ; preds = %bb.w, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 24, i1 false)
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bk, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false)
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %i.i, ptr %i.bl, align 8
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 %i.k, ptr %i.bm, align 8
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %i.aj, ptr %i.bn, align 8
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i64 %3, ptr %i.bo, align 8
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i8 %4, ptr %i.bp, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  ret void

bb.y:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCsVG4f6i5f9f_4rand4rngs6thread9ThreadRngECs8k3UfHgJ3Xe_15candle_datasets.exit
  resume { ptr, i32 } %.pn8
}

; Function Attrs: nonlazybind uwtable
define void @_RNvNtNtCs8k3UfHgJ3Xe_15candle_datasets3nlp11tinystories9mmap_file(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([80 x i8]) align 8 captures(none) dereferenceable(80) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 10 uses
  %i.b = alloca [24 x i8], align 8                ; 7 uses
  %i.c = alloca [16 x i8], align 8                ; 7 uses
  %i.d = alloca [4 x i8], align 4                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @_RINvMs2_NtCs5Xr050g3D4S_3std2fsNtB6_4File4openRNtNtB8_4path7PathBufECs8k3UfHgJ3Xe_15candle_datasets(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.c, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1)
  %i.e = load i32, ptr %i.c, align 8, !range !342, !noundef !4
  %i.f = trunc nuw i32 %i.e to i1
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !nonnull !4, !noundef !4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  store i64 -9223372036854775774, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.h, ptr %.sroa.4.0..sroa_idx, align 8
  br label %bb.g

bb.c:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.j = load i32, ptr %i.i, align 4, !range !343, !noundef !4 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  store i32 %i.j, ptr %i.d, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 0, ptr %i.k, align 8
  store i64 0, ptr %i.a, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i8 0, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 26
  store i8 0, ptr %i.m, align 2
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 27
  store i8 0, ptr %i.n, align 1
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 28
  store i8 0, ptr %i.o, align 4
  invoke void @_RINvMs0_Cs94aVKmQQwYh_7memmap2NtB6_11MmapOptions3mapRNtNtCs5Xr050g3D4S_3std2fs4FileECs8k3UfHgJ3Xe_15candle_datasets(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.a, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.d)
          to label %bb.d unwind label %bb.h

bb.d:                                             ; preds = %bb.c
  %i.p = load i64, ptr %i.b, align 8, !range !11, !noundef !4
  %i.q = trunc nuw i64 %i.p to i1
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !noundef !4 ; 2 uses
  br i1 %i.q, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  store i64 -9223372036854775774, ptr %0, align 8
  %.sroa.47.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.s, ptr %.sroa.47.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.t = call noundef i32 @close(i32 noundef %i.j) #12 ; 0 uses
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.v = load i64, ptr %i.u, align 8, !noundef !4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.s, ptr %i.w, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.v, ptr %i.x, align 8
  store i64 -1, ptr %0, align 8
  %i.y = call noundef i32 @close(i32 noundef %i.j) #12 ; 0 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.b, %bb.e, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  ret void

bb.h:                                             ; preds = %bb.c
  %i.z = landingpad { ptr, i32 }
          cleanup
  %i.aa = call noundef i32 @close(i32 noundef %i.j) #12 ; 0 uses
  resume { ptr, i32 } %i.z
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs0_NtNtCs8k3UfHgJ3Xe_15candle_datasets3nlp11tinystoriesNtB5_17DatasetRandomIterNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4next(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([80 x i8]) align 8 captures(none) dereferenceable(80) %0, ptr noalias nofree noundef align 8 dereferenceable(88) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [32 x i8], align 8                ; 3 uses
  %i.c = alloca [32 x i8], align 8                ; 3 uses
  %i.d = alloca [80 x i8], align 8                ; 4 uses
  %i.e = alloca [80 x i8], align 8                ; 4 uses
  %i.f = alloca [80 x i8], align 8                ; 5 uses
end_hunk_3
