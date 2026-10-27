Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tokenizers-rs/original/tokenizers-73a819a89809b4f0.tokenizers.1fce5ff7a8803495-cgu.02?download=true
inline.NumInlined: 1144
inline.NumDeleted: 636
begin_hunk_0_@_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer5TokenEBF_:bb.a

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVechEECs2JiOgHzbbc7_10tokenizers.exit.i.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #23
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVechEECs2JiOgHzbbc7_10tokenizers.exit.i.i: ; preds = %bb.b
  resume { ptr, i32 } %i.a

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs2JiOgHzbbc7_10tokenizers.exit: ; preds = %bb.a
  tail call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs5PtHgSLqj5O_10serde_json5error5ErrorECs2JiOgHzbbc7_10tokenizers(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.val = load ptr, ptr %0, align 8, !nonnull !6, !noundef !6 ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !26)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !27)
  %i.a = load i64, ptr %.val, align 8, !range !7, !alias.scope !28, !noundef !6
  switch i64 %i.a, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxNtNtCs5PtHgSLqj5O_10serde_json5error9ErrorImplEECs2JiOgHzbbc7_10tokenizers.exit [
    i64 0, label %bb.b
    i64 1, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %.val, i64 16
  %.val1.i.i.i = load i64, ptr %i.b, align 8, !alias.scope !28, !noundef !6 ; 2 uses
  %i.c = icmp eq i64 %.val1.i.i.i, 0
  br i1 %i.c, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxNtNtCs5PtHgSLqj5O_10serde_json5error9ErrorImplEECs2JiOgHzbbc7_10tokenizers.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %.val, i64 8
  %.val.i.i.i = load ptr, ptr %i.d, align 8, !alias.scope !28, !nonnull !6, !noundef !6
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i, i64 noundef range(i64 1, 0) %.val1.i.i.i, i64 noundef 1) #25, !noalias !28
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxNtNtCs5PtHgSLqj5O_10serde_json5error9ErrorImplEECs2JiOgHzbbc7_10tokenizers.exit

bb.d:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %.val, i64 8
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.e)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxNtNtCs5PtHgSLqj5O_10serde_json5error9ErrorImplEECs2JiOgHzbbc7_10tokenizers.exit unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.f = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef 40, i64 noundef 8) #25
  resume { ptr, i32 } %i.f

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxNtNtCs5PtHgSLqj5O_10serde_json5error9ErrorImplEECs2JiOgHzbbc7_10tokenizers.exit: ; preds = %bb.a, %bb.b, %bb.c, %bb.d
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef 40, i64 noundef 8) #25
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs5PtHgSLqj5O_10serde_json5value5ValueECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i8, ptr %0, align 8, !range !29, !noundef !6
  switch i8 %i.a, label %bb.b [
    i8 0, label %bb.c
    i8 1, label %bb.c
    i8 2, label %bb.c
    i8 3, label %bb.d
    i8 4, label %bb.g
  ]

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_RNvXNtNtNtCscdodAO9FK5_5alloc11collections5btree3mapINtB2_8BTreeMapNtNtB8_6string6StringNtNtCs5PtHgSLqj5O_10serde_json5value5ValueENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
  br label %bb.c

bb.c:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCs5PtHgSLqj5O_10serde_json5value5ValueEECs2JiOgHzbbc7_10tokenizers.exit, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs2JiOgHzbbc7_10tokenizers.exit, %bb.b, %bb.a, %bb.a, %bb.a
  ret void

bb.d:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs2JiOgHzbbc7_10tokenizers.exit unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.d = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %common.resume unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.e = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #23
  unreachable

common.resume:                                    ; preds = %bb.h, %bb.e
  %common.resume.op = phi { ptr, i32 } [ %i.d, %bb.e ], [ %i.g, %bb.h ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs2JiOgHzbbc7_10tokenizers.exit: ; preds = %bb.d
  tail call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
  br label %bb.c

bb.g:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCs5PtHgSLqj5O_10serde_json5value5ValueENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCs5PtHgSLqj5O_10serde_json5value5ValueEECs2JiOgHzbbc7_10tokenizers.exit unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.g = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCs5PtHgSLqj5O_10serde_json5value5ValueENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %common.resume unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #23
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCs5PtHgSLqj5O_10serde_json5value5ValueEECs2JiOgHzbbc7_10tokenizers.exit: ; preds = %bb.g
  tail call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCs5PtHgSLqj5O_10serde_json5value5ValueENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f)
  br label %bb.c
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECs2JiOgHzbbc7_10tokenizers.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVechEECs2JiOgHzbbc7_10tokenizers.exit.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #23
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVechEECs2JiOgHzbbc7_10tokenizers.exit.i: ; preds = %bb.b
  resume { ptr, i32 } %i.a

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECs2JiOgHzbbc7_10tokenizers.exit: ; preds = %bb.a
  tail call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorECs2JiOgHzbbc7_10tokenizers(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.val = load ptr, ptr %0, align 8, !nonnull !6, !noundef !6 ; 4 uses
  %i.a = ptrtoint ptr %.val to i64                ; 2 uses
  %i.b = and i64 %i.a, 3
  switch i64 %i.b, label %default.unreachable [
    i64 2, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCs2AWtUsOyxgP_3std2io5error14repr_bitpacked4ReprECs2JiOgHzbbc7_10tokenizers.exit
    i64 3, label %bb.b
    i64 0, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCs2AWtUsOyxgP_3std2io5error14repr_bitpacked4ReprECs2JiOgHzbbc7_10tokenizers.exit
    i64 1, label %bb.c
  ], !prof !30

default.unreachable:                              ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.c = icmp ult ptr %.val, inttoptr (i64 180388626432 to ptr)
  %i.d = and i64 %i.a, 1095216660480
  %i.e = icmp ne i64 %i.d, 1095216660480
  tail call void @llvm.assume(i1 %i.c)
  tail call void @llvm.assume(i1 %i.e)
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCs2AWtUsOyxgP_3std2io5error14repr_bitpacked4ReprECs2JiOgHzbbc7_10tokenizers.exit

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr i8, ptr %.val, i64 -1      ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.f) ]
  %.val.i.i.i.i = load ptr, ptr %i.f, align 8     ; 5 uses
  %i.g = getelementptr i8, ptr %.val, i64 7
  %.val1.i.i.i.i = load ptr, ptr %i.g, align 8, !nonnull !6, !align !8, !noundef !6 ; 5 uses
  %i.h = load ptr, ptr %.val1.i.i.i.i, align 8, !invariant.load !6 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i.i.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i.i) ]
  invoke void %i.h(ptr noundef nonnull %.val.i.i.i.i)
          to label %bb.e unwind label %bb.g

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i, i64 8
  %i.j = load i64, ptr %i.i, align 8, !range !9, !invariant.load !6 ; 2 uses
  %i.k = icmp eq i64 %i.j, 0
  br i1 %i.k, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxNtNtNtCs2AWtUsOyxgP_3std2io5error6CustomEECs2JiOgHzbbc7_10tokenizers.exit.i.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i.i) ]
  %i.l = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i, i64 16
  %i.m = load i64, ptr %i.l, align 8, !range !10, !invariant.load !6
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i, i64 noundef range(i64 1, 0) %i.j, i64 noundef range(i64 1, 536870913) %i.m) #25
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxNtNtNtCs2AWtUsOyxgP_3std2io5error6CustomEECs2JiOgHzbbc7_10tokenizers.exit.i.i.i

bb.g:                                             ; preds = %bb.d
  %i.n = landingpad { ptr, i32 }
          cleanup
  %i.o = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i, i64 8
  %i.p = load i64, ptr %i.o, align 8, !range !9, !invariant.load !6 ; 2 uses
  %i.q = icmp eq i64 %i.p, 0
  br i1 %i.q, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.r = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i, i64 16
  %i.s = load i64, ptr %i.r, align 8, !range !10, !invariant.load !6
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i, i64 noundef range(i64 1, 0) %i.p, i64 noundef range(i64 1, 536870913) %i.s) #25
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.f, i64 noundef 24, i64 noundef 8) #25
  resume { ptr, i32 } %i.n

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxNtNtNtCs2AWtUsOyxgP_3std2io5error6CustomEECs2JiOgHzbbc7_10tokenizers.exit.i.i.i: ; preds = %bb.f, %bb.e
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.f, i64 noundef 24, i64 noundef 8) #25
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCs2AWtUsOyxgP_3std2io5error14repr_bitpacked4ReprECs2JiOgHzbbc7_10tokenizers.exit

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCs2AWtUsOyxgP_3std2io5error14repr_bitpacked4ReprECs2JiOgHzbbc7_10tokenizers.exit: ; preds = %bb.a, %bb.a, %bb.b, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxNtNtNtCs2AWtUsOyxgP_3std2io5error6CustomEECs2JiOgHzbbc7_10tokenizers.exit.i.i.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe5ErrorEBH_(ptr noalias noundef align 8 dereferenceable(32) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !11, !noundef !6
  switch i64 %i.a, label %bb.b [
    i64 0, label %bb.c
    i64 1, label %bb.d
    i64 4, label %bb.i
    i64 5, label %bb.l
  ]

bb.b:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs2JiOgHzbbc7_10tokenizers.exit2, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs2JiOgHzbbc7_10tokenizers.exit, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs5PtHgSLqj5O_10serde_json5error5ErrorECs2JiOgHzbbc7_10tokenizers.exit, %bb.c, %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.b)
  br label %bb.b

bb.d:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !37)
  %.val.i = load ptr, ptr %i.c, align 8, !alias.scope !37, !nonnull !6, !noundef !6 ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !38)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !39)
  %i.d = load i64, ptr %.val.i, align 8, !range !7, !alias.scope !40, !noalias !37, !noundef !6
  switch i64 %i.d, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs5PtHgSLqj5O_10serde_json5error5ErrorECs2JiOgHzbbc7_10tokenizers.exit [
    i64 0, label %bb.e
    i64 1, label %bb.g
  ]

bb.e:                                             ; preds = %bb.d
  %i.e = getelementptr inbounds nuw i8, ptr %.val.i, i64 16
  %.val1.i.i.i.i = load i64, ptr %i.e, align 8, !alias.scope !40, !noalias !37, !noundef !6 ; 2 uses
  %i.f = icmp eq i64 %.val1.i.i.i.i, 0
  br i1 %i.f, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs5PtHgSLqj5O_10serde_json5error5ErrorECs2JiOgHzbbc7_10tokenizers.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.g = getelementptr inbounds nuw i8, ptr %.val.i, i64 8
  %.val.i.i.i.i = load ptr, ptr %i.g, align 8, !alias.scope !40, !noalias !37, !nonnull !6, !noundef !6
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i, i64 noundef range(i64 1, 0) %.val1.i.i.i.i, i64 noundef 1) #25, !noalias !41
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs5PtHgSLqj5O_10serde_json5error5ErrorECs2JiOgHzbbc7_10tokenizers.exit

bb.g:                                             ; preds = %bb.d
  %i.h = getelementptr inbounds nuw i8, ptr %.val.i, i64 8
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.h)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs5PtHgSLqj5O_10serde_json5error5ErrorECs2JiOgHzbbc7_10tokenizers.exit unwind label %bb.h, !noalias !37

common.resume:                                    ; preds = %bb.m, %bb.j, %bb.h
  %common.resume.op = phi { ptr, i32 } [ %i.i, %bb.h ], [ %i.k, %bb.j ], [ %i.n, %bb.m ]
  resume { ptr, i32 } %common.resume.op

bb.h:                                             ; preds = %bb.g
  %i.i = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef 40, i64 noundef 8) #25, !noalias !37
  br label %common.resume

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs5PtHgSLqj5O_10serde_json5error5ErrorECs2JiOgHzbbc7_10tokenizers.exit: ; preds = %bb.d, %bb.e, %bb.f, %bb.g
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef 40, i64 noundef 8) #25, !noalias !37
  br label %bb.b

bb.i:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs2JiOgHzbbc7_10tokenizers.exit unwind label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.k = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %common.resume unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #23
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs2JiOgHzbbc7_10tokenizers.exit: ; preds = %bb.i
  tail call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.j)
  br label %bb.b

bb.l:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.m)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs2JiOgHzbbc7_10tokenizers.exit2 unwind label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.n = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.m)
          to label %common.resume unwind label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.o = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #23
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs2JiOgHzbbc7_10tokenizers.exit2: ; preds = %bb.l
  tail call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.m)
  br label %bb.b
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer10normalizer16NormalizedStringEBH_(ptr noalias noundef nonnull align 8 dereferenceable(80) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECs2JiOgHzbbc7_10tokenizers.exit.i unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %.body unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #23
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECs2JiOgHzbbc7_10tokenizers.exit.i: ; preds = %bb.a
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs2JiOgHzbbc7_10tokenizers.exit unwind label %bb.d

bb.d:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECs2JiOgHzbbc7_10tokenizers.exit.i
  %i.c = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.b, %bb.d
  %eh.lpad-body = phi { ptr, i32 } [ %i.c, %bb.d ], [ %i.a, %bb.b ]
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef align 8 dereferenceable(24) %i.d) #24
          to label %.body4 unwind label %bb.j

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs2JiOgHzbbc7_10tokenizers.exit: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECs2JiOgHzbbc7_10tokenizers.exit.i
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECs2JiOgHzbbc7_10tokenizers.exit.i3 unwind label %bb.e

bb.e:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs2JiOgHzbbc7_10tokenizers.exit
  %i.f = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %.body4 unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #23
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECs2JiOgHzbbc7_10tokenizers.exit.i3: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs2JiOgHzbbc7_10tokenizers.exit
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs2JiOgHzbbc7_10tokenizers.exit6 unwind label %bb.g

.body4:                                           ; preds = %bb.g, %bb.e, %.body
  %.pn = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %i.i, %bb.g ], [ %i.f, %bb.e ]
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 48
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecTjjEEECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef align 8 dereferenceable(24) %i.h) #24
          to label %common.resume unwind label %bb.j

bb.g:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECs2JiOgHzbbc7_10tokenizers.exit.i3
  %i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body4

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs2JiOgHzbbc7_10tokenizers.exit6: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECs2JiOgHzbbc7_10tokenizers.exit.i3
end_hunk_0
begin_hunk_1_@_RINvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter6traits8iteratorQINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoItercENtB6_8Iterator8try_foldjNCINvNvXs_NtNtBa_8adapters4takeINtB2e_4TakepEB1G_8try_fold5checkcjINtNtNtBc_3ops9try_trait17NeverShortCircuitjENCINvMB3b_B38_10wrap_mut_2jcNCINvNtB2g_3map8map_foldcjjNCNCNCINvMs0_NtNtCs2JiOgHzbbc7_10tokenizers9tokenizer10normalizerNtB4X_16NormalizedString7replacecE0s0_0s_0NCINvXsK_NtB8_5accumjNtB6C_3Sum3sumINtB4o_3MapIB2A_BQ_EB4K_EE0E0E0E0INtNtB3d_12control_flow11ControlFlowB38_jEEB51_:bb.a
  %i.m = icmp eq i64 %i.h, 0
  br i1 %i.m, label %_RINvXs2_NtNtNtCs4NRVxsYgnAr_4core4iter6traits8iteratorQINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoItercENtB6_15IteratorRefSpec13spec_try_foldjNCINvNvXs_NtNtBa_8adapters4takeINtB2s_4TakepENtB6_8Iterator8try_fold5checkcjINtNtNtBc_3ops9try_trait17NeverShortCircuitjENCINvMB3z_B3w_10wrap_mut_2jcNCINvNtB2u_3map8map_foldcjjNCNCNCINvMs0_NtNtCs2JiOgHzbbc7_10tokenizers9tokenizer10normalizerNtB5l_16NormalizedString7replacecE0s0_0s_0NCINvXsK_NtB8_5accumjNtB70_3Sum3sumINtB4M_3MapIB2O_BQ_EB58_EE0E0E0E0INtNtB3B_12control_flow11ControlFlowB3w_jEEB5p_.exit, label %bb.b

_RINvXs2_NtNtNtCs4NRVxsYgnAr_4core4iter6traits8iteratorQINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoItercENtB6_15IteratorRefSpec13spec_try_foldjNCINvNvXs_NtNtBa_8adapters4takeINtB2s_4TakepENtB6_8Iterator8try_fold5checkcjINtNtNtBc_3ops9try_trait17NeverShortCircuitjENCINvMB3z_B3w_10wrap_mut_2jcNCINvNtB2u_3map8map_foldcjjNCNCNCINvMs0_NtNtCs2JiOgHzbbc7_10tokenizers9tokenizer10normalizerNtB5l_16NormalizedString7replacecE0s0_0s_0NCINvXsK_NtB8_5accumjNtB70_3Sum3sumINtB4M_3MapIB2O_BQ_EB58_EE0E0E0E0INtNtB3B_12control_flow11ControlFlowB3w_jEEB5p_.exit: ; preds = %bb.b, %_RNCINvNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4takeINtB9_4TakepENtNtNtBd_6traits8iterator8Iterator8try_fold5checkcjINtNtNtBf_3ops9try_trait17NeverShortCircuitjENCINvMB1W_B1T_10wrap_mut_2jcNCINvNtBb_3map8map_foldcjjNCNCNCINvMs0_NtNtCs2JiOgHzbbc7_10tokenizers9tokenizer10normalizerNtB3H_16NormalizedString7replacecE0s0_0s_0NCINvXsK_NtB18_5accumjNtB5m_3Sum3sumINtB39_3MapIBS_QINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoItercEEB3u_EE0E0E0E0B3L_.exit.i.i
  %.pn9.i.i = phi i64 [ %.sroa.0.0.i.i, %bb.b ], [ %i.l, %_RNCINvNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4takeINtB9_4TakepENtNtNtBd_6traits8iterator8Iterator8try_fold5checkcjINtNtNtBf_3ops9try_trait17NeverShortCircuitjENCINvMB1W_B1T_10wrap_mut_2jcNCINvNtBb_3map8map_foldcjjNCNCNCINvMs0_NtNtCs2JiOgHzbbc7_10tokenizers9tokenizer10normalizerNtB3H_16NormalizedString7replacecE0s0_0s_0NCINvXsK_NtB18_5accumjNtB5m_3Sum3sumINtB39_3MapIBS_QINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoItercEEB3u_EE0E0E0E0B3L_.exit.i.i ]
  %.sroa.02.0.i.i = phi i64 [ 0, %bb.b ], [ 1, %_RNCINvNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4takeINtB9_4TakepENtNtNtBd_6traits8iterator8Iterator8try_fold5checkcjINtNtNtBf_3ops9try_trait17NeverShortCircuitjENCINvMB1W_B1T_10wrap_mut_2jcNCINvNtBb_3map8map_foldcjjNCNCNCINvMs0_NtNtCs2JiOgHzbbc7_10tokenizers9tokenizer10normalizerNtB3H_16NormalizedString7replacecE0s0_0s_0NCINvXsK_NtB18_5accumjNtB5m_3Sum3sumINtB39_3MapIBS_QINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoItercEEB3u_EE0E0E0E0B3L_.exit.i.i ]
  %i.n = insertvalue { i64, i64 } poison, i64 %.sroa.02.0.i.i, 0
  %i.o = insertvalue { i64, i64 } %i.n, i64 %.pn9.i.i, 1
  ret { i64, i64 } %i.o
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB6_8IntoIterNtNtBa_6string6StringENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator8try_foldBW_NCNvXs0_NtNtCshiFeWPMd8WI_9itertools8adaptors8coalesceINtB2x_10CoalesceByBH_INtB2x_22DedupPred2CoalescePredNtB2x_7DedupEqENtB2x_7NoCountEB1i_4next0INtNtB1q_6result6ResultBW_BW_EECs2JiOgHzbbc7_10tokenizers(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %1, ptr noalias nofree noundef align 8 captures(none) dead_on_return dereferenceable(24) %2, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %3, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %4) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 9 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [48 x i8], align 8                ; 6 uses
  %.sroa.55 = alloca [24 x i8], align 8           ; 7 uses
  %.sroa.5 = alloca [24 x i8], align 8            ; 7 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !6, !noundef !6 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %.promoted = load ptr, ptr %i.f, align 8        ; 2 uses
  %.not8 = icmp eq ptr %.promoted, %i.e
  br i1 %.not8, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 24 ; 2 uses
  %i.h = load ptr, ptr %3, align 8, !noalias !244, !nonnull !6, !noundef !6
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.l
  %i.j = phi ptr [ %.promoted, %.lr.ph ], [ %i.k, %bb.l ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.g, ptr noundef nonnull align 8 dereferenceable(24) %i.j, i64 24, i1 false)
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 24 ; 3 uses
  store ptr %i.k, ptr %i.f, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.55)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvXs6_NtNtCshiFeWPMd8WI_9itertools8adaptors8coalesceINtB5_22DedupPred2CoalescePredNtB5_7DedupEqEINtB5_17CoalescePredicateNtNtCscdodAO9FK5_5alloc6string6StringB1W_E13coalesce_pairCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.a, ptr noalias noundef nonnull %i.h, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.c, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.g), !noalias !245
  %i.l = load i64, ptr %i.a, align 8, !range !5, !noalias !244, !noundef !6
  %.not.i = icmp eq i64 %i.l, -1
  br i1 %.not.i, label %bb.l, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !244
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false), !noalias !244
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 2 uses
  %i.n = load ptr, ptr %4, align 8, !noalias !244, !nonnull !6, !align !8, !noundef !6 ; 6 uses
  %i.o = load i64, ptr %i.n, align 8, !range !246, !alias.scope !247, !noalias !244, !noundef !6
  %switch.i.i = icmp ugt i64 %i.o, -3
  br i1 %switch.i.i, label %bb.k, label %bb.d

bb.d:                                             ; preds = %bb.c
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.n)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs2JiOgHzbbc7_10tokenizers.exit.i.i.i unwind label %bb.e, !noalias !244

bb.e:                                             ; preds = %bb.d
  %i.p = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.n)
          to label %.body.i unwind label %bb.f, !noalias !244

bb.f:                                             ; preds = %bb.e
  %i.q = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #23, !noalias !244
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs2JiOgHzbbc7_10tokenizers.exit.i.i.i: ; preds = %bb.d
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.n)
          to label %bb.k unwind label %bb.g, !noalias !244

bb.g:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs2JiOgHzbbc7_10tokenizers.exit.i.i.i
  %i.r = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.g, %bb.e
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.r, %bb.g ], [ %i.p, %bb.e ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.n, ptr noundef nonnull align 8 dereferenceable(24) %i.m, i64 24, i1 false), !noalias !244
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef align 8 dereferenceable(24) %i.b) #24
          to label %bb.i unwind label %bb.h, !noalias !244

bb.h:                                             ; preds = %.body.i
  %i.s = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #23, !noalias !244
  unreachable

bb.i:                                             ; preds = %.body.i
  resume { ptr, i32 } %eh.lpad-body.i

._crit_edge:                                      ; preds = %bb.l, %bb.a
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.t, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  store i64 0, ptr %0, align 8, !alias.scope !248
  br label %bb.j

bb.j:                                             ; preds = %bb.k, %._crit_edge
  ret void

bb.k:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs2JiOgHzbbc7_10tokenizers.exit.i.i.i, %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.n, ptr noundef nonnull align 8 dereferenceable(24) %i.m, i64 24, i1 false), !noalias !244
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.55, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false), !noalias !249
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !244
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.55, i64 24, i1 false), !alias.scope !250
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.55)
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.u, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5, i64 24, i1 false)
  store i64 1, ptr %0, align 8, !alias.scope !251
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5)
  br label %bb.j

bb.l:                                             ; preds = %bb.b
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.55, ptr noundef nonnull align 8 dereferenceable(24) %i.i, i64 24, i1 false), !noalias !249
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.55, i64 24, i1 false), !alias.scope !250
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.55)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5)
  %.not = icmp eq ptr %i.k, %i.e
  br i1 %.not, label %._crit_edge, label %bb.b
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, ptr } @_RINvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB6_8IntoIterNtNtBa_6string6StringENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator8try_foldINtNtB8_13in_place_drop11InPlaceDropBW_ENCINvNtNtB1o_8adapters3map12map_try_foldBW_BW_B2m_INtNtB1q_6result6ResultB2m_zENCNvXs_NtNtCs2JiOgHzbbc7_10tokenizers8decoders5stripNtB4o_5StripNtNtB4s_9tokenizer7Decoder12decode_chain0NCINvNtB8_16in_place_collect24write_in_place_with_dropBW_E0E0B3O_EB4s_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %0, ptr noundef %1, ptr noundef %2, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %3, ptr nofree noundef readnone captures(none) %4) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 11 uses
  %i.b = alloca [24 x i8], align 8                ; 11 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [16 x i8], align 8                ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !6, !noundef !6 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.promoted = load ptr, ptr %i.g, align 8        ; 2 uses
  %.not36 = icmp eq ptr %.promoted, %i.f
  br i1 %.not36, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.val.i = load ptr, ptr %3, align 8, !noalias !257 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map12map_try_foldNtNtCscdodAO9FK5_5alloc6string6StringBZ_INtNtNtB13_3vec13in_place_drop11InPlaceDropBZ_EINtNtBa_6result6ResultB1D_zENCNvXs_NtNtCs2JiOgHzbbc7_10tokenizers8decoders5stripNtB2X_5StripNtNtB31_9tokenizer7Decoder12decode_chain0NCINvNtB1I_16in_place_collect24write_in_place_with_dropBZ_E0E0B31_.exit
  %.sroa.4.037 = phi ptr [ %2, %.lr.ph ], [ %i.bj, %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map12map_try_foldNtNtCscdodAO9FK5_5alloc6string6StringBZ_INtNtNtB13_3vec13in_place_drop11InPlaceDropBZ_EINtNtBa_6result6ResultB1D_zENCNvXs_NtNtCs2JiOgHzbbc7_10tokenizers8decoders5stripNtB2X_5StripNtNtB31_9tokenizer7Decoder12decode_chain0NCINvNtB1I_16in_place_collect24write_in_place_with_dropBZ_E0E0B31_.exit ] ; 3 uses
  %i.m = phi ptr [ %.promoted, %.lr.ph ], [ %i.n, %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map12map_try_foldNtNtCscdodAO9FK5_5alloc6string6StringBZ_INtNtNtB13_3vec13in_place_drop11InPlaceDropBZ_EINtNtBa_6result6ResultB1D_zENCNvXs_NtNtCs2JiOgHzbbc7_10tokenizers8decoders5stripNtB2X_5StripNtNtB31_9tokenizer7Decoder12decode_chain0NCINvNtB1I_16in_place_collect24write_in_place_with_dropBZ_E0E0B31_.exit ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !257
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %i.m, i64 24, i1 false)
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 24 ; 3 uses
  store ptr %i.n, ptr %i.g, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !257
  store ptr %1, ptr %i.d, align 8, !noalias !257
  store ptr %.sroa.4.037, ptr %i.h, align 8, !noalias !257
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !257
  call void @llvm.experimental.noalias.scope.decl(metadata !258)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !259
  %i.o = load ptr, ptr %i.i, align 8, !alias.scope !258, !noalias !257, !nonnull !6, !noundef !6 ; 2 uses
  %i.p = load i64, ptr %i.j, align 8, !alias.scope !258, !noalias !257, !noundef !6
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.p
  invoke void @_RNvXNtNtCscdodAO9FK5_5alloc3vec21spec_from_iter_nestedINtB4_3VeccEINtB2_18SpecFromIterNestedcNtNtNtCs4NRVxsYgnAr_4core3str4iter5CharsE9from_iterCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noundef nonnull %i.o, ptr noundef nonnull %i.q)
          to label %bb.f unwind label %bb.e, !noalias !259

.body.i.i:                                        ; preds = %bb.i, %bb.u, %bb.e
  %.pn.i.i = phi { ptr, i32 } [ %i.bc, %bb.u ], [ %i.t, %bb.e ], [ %lpad.loopexit.split-lp106, %bb.i ]
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECs2JiOgHzbbc7_10tokenizers.exit.i unwind label %bb.c, !noalias !260

bb.c:                                             ; preds = %.body.i.i
  %i.r = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %.body unwind label %bb.d, !noalias !260

bb.d:                                             ; preds = %bb.c
  %i.s = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #23, !noalias !260
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECs2JiOgHzbbc7_10tokenizers.exit.i: ; preds = %.body.i.i
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %.body.i unwind label %bb.z

bb.e:                                             ; preds = %bb.v, %bb.b
  %i.t = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

bb.f:                                             ; preds = %bb.b
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i) ]
  %i.u = load ptr, ptr %i.k, align 8, !noalias !259, !nonnull !6, !noundef !6 ; 5 uses
  %i.v = load i64, ptr %i.l, align 8, !noalias !259, !noundef !6 ; 10 uses
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %i.v
  %i.x = load ptr, ptr %.val.i, align 8, !noalias !259, !nonnull !6, !align !8, !noundef !6 ; 4 uses
  %i.y = load i64, ptr %i.x, align 8, !noalias !259, !noundef !6 ; 3 uses
  %i.z = icmp eq i64 %i.y, 0
  br i1 %i.z, label %.thread.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.f
  %i.aa = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %i.ab = and i64 %i.v, 4611686018427387903
  br label %bb.g

bb.g:                                             ; preds = %bb.l, %.lr.ph.i.i
  %.sroa.0.0110.i.i = phi ptr [ %i.u, %.lr.ph.i.i ], [ %i.ap, %bb.l ] ; 3 uses
  %.sroa.7.09.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %i.ao, %bb.l ] ; 2 uses
  %.sroa.10.08.i.i = phi i64 [ %i.y, %.lr.ph.i.i ], [ %i.ac, %bb.l ]
  %i.ac = add i64 %.sroa.10.08.i.i, -1            ; 2 uses
  %i.ad = icmp eq ptr %.sroa.0.0110.i.i, %i.w
  br i1 %i.ad, label %.thread.i.i, label %bb.k

.thread.i.i:                                      ; preds = %bb.l, %bb.k, %bb.g, %bb.f
  %.sroa.0.0.lcssa.i.i = phi i64 [ 0, %bb.f ], [ %i.ab, %bb.g ], [ %.sroa.7.09.i.i, %bb.k ], [ %i.y, %bb.l ] ; 3 uses
  %i.ae = icmp ult i64 %i.v, 2305843009213693952
  call void @llvm.assume(i1 %i.ae)
  %i.af = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.ag = load i64, ptr %i.af, align 8, !noalias !259, !noundef !6 ; 3 uses
  %.not.i.i = icmp eq i64 %i.ag, 0
  br i1 %.not.i.i, label %._crit_edge.i.i, label %.lr.ph18.i.i

.lr.ph18.i.i:                                     ; preds = %.thread.i.i
  %i.ah = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %i.ai = sub i64 %i.v, %i.ag
  br label %bb.n

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.s, %bb.r, %bb.p
  %lpad.loopexit.split-lp106 = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VeccENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %bb.i unwind label %bb.h, !noalias !259

bb.h:                                             ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %i.aj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVeccENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %.body unwind label %bb.j, !noalias !259

bb.i:                                             ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVeccENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %.body.i.i unwind label %bb.z

bb.j:                                             ; preds = %bb.h
  %i.ak = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #23, !noalias !259
  unreachable

bb.k:                                             ; preds = %bb.g
  %i.al = load i32, ptr %.sroa.0.0110.i.i, align 4, !range !12, !noalias !259, !noundef !6
  %i.am = load i32, ptr %i.aa, align 8, !range !12, !noalias !259, !noundef !6
  %i.an = icmp eq i32 %i.al, %i.am
  br i1 %i.an, label %bb.l, label %.thread.i.i

bb.l:                                             ; preds = %bb.k
  %i.ao = add nuw nsw i64 %.sroa.7.09.i.i, 1
  %i.ap = getelementptr inbounds nuw i8, ptr %.sroa.0.0110.i.i, i64 4
  %i.aq = icmp eq i64 %i.ac, 0
  br i1 %i.aq, label %.thread.i.i, label %bb.g

bb.m:                                             ; preds = %bb.o
  %i.ar = add nuw i64 %.sroa.016.017.i.i, 1       ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.ar, %i.ag
  br i1 %exitcond.not.i.i, label %._crit_edge.i.i, label %bb.n

bb.n:                                             ; preds = %bb.m, %.lr.ph18.i.i
  %.sroa.016.017.i.i = phi i64 [ 0, %.lr.ph18.i.i ], [ %i.ar, %bb.m ] ; 2 uses
  %.sroa.09.016.i.i = phi i64 [ %i.v, %.lr.ph18.i.i ], [ %i.at, %bb.m ]
  %i.as = xor i64 %.sroa.016.017.i.i, -1
  %i.at = add i64 %i.v, %i.as                     ; 4 uses
  %i.au = icmp ult i64 %i.at, %i.v
  br i1 %i.au, label %bb.o, label %bb.p

._crit_edge.i.i:                                  ; preds = %bb.o, %bb.m, %.thread.i.i
  %.sroa.09.0.lcssa.i.i = phi i64 [ %i.v, %.thread.i.i ], [ %.sroa.09.016.i.i, %bb.o ], [ %i.ai, %bb.m ] ; 3 uses
  %i.av = icmp ult i64 %.sroa.09.0.lcssa.i.i, %.sroa.0.0.lcssa.i.i
  br i1 %i.av, label %bb.r, label %bb.s, !prof !13

bb.o:                                             ; preds = %bb.n
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %i.at
  %i.ax = load i32, ptr %i.aw, align 4, !range !12, !noalias !259, !noundef !6
  %i.ay = load i32, ptr %i.ah, align 8, !range !12, !noalias !259, !noundef !6
  %i.az = icmp eq i32 %i.ax, %i.ay
  br i1 %i.az, label %bb.m, label %._crit_edge.i.i

bb.p:                                             ; preds = %bb.n
  invoke void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.at, i64 noundef %i.v, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @48) #26
          to label %bb.q unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !259

bb.q:                                             ; preds = %bb.r, %bb.p
  unreachable

bb.r:                                             ; preds = %._crit_edge.i.i
  invoke void @_RNvNtNtCs4NRVxsYgnAr_4core5slice5index16slice_index_fail(i64 noundef %.sroa.0.0.lcssa.i.i, i64 noundef %.sroa.09.0.lcssa.i.i, i64 noundef %i.v, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @49) #26
          to label %bb.q unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !259

bb.s:                                             ; preds = %._crit_edge.i.i
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %.sroa.0.0.lcssa.i.i
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %.sroa.09.0.lcssa.i.i
  invoke void @_RINvXs6_NtCscdodAO9FK5_5alloc6stringNtB6_6StringINtNtNtNtCs4NRVxsYgnAr_4core4iter6traits7collect12FromIteratorRcE9from_iterINtNtNtBT_5slice4iter4ItercEECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, ptr noundef nonnull %i.ba, ptr noundef nonnull %i.bb)
          to label %bb.t unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !261

bb.t:                                             ; preds = %bb.s
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VeccENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %bb.v unwind label %bb.u, !noalias !259

bb.u:                                             ; preds = %bb.t
  %i.bc = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVeccENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %.body.i.i unwind label %bb.w, !noalias !259

bb.v:                                             ; preds = %bb.t
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVeccENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VeccEECs2JiOgHzbbc7_10tokenizers.exit.i.i unwind label %bb.e, !noalias !259

bb.w:                                             ; preds = %bb.u
  %i.bd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #23, !noalias !259
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VeccEECs2JiOgHzbbc7_10tokenizers.exit.i.i: ; preds = %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !259
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs2JiOgHzbbc7_10tokenizers.exit.i.i unwind label %bb.x, !noalias !260

bb.x:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VeccEECs2JiOgHzbbc7_10tokenizers.exit.i.i
  %i.be = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %.body.i unwind label %bb.y, !noalias !260

bb.y:                                             ; preds = %bb.x
  %i.bf = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #23, !noalias !260
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs2JiOgHzbbc7_10tokenizers.exit.i.i: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VeccEECs2JiOgHzbbc7_10tokenizers.exit.i.i
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map12map_try_foldNtNtCscdodAO9FK5_5alloc6string6StringBZ_INtNtNtB13_3vec13in_place_drop11InPlaceDropBZ_EINtNtBa_6result6ResultB1D_zENCNvXs_NtNtCs2JiOgHzbbc7_10tokenizers8decoders5stripNtB2X_5StripNtNtB31_9tokenizer7Decoder12decode_chain0NCINvNtB1I_16in_place_collect24write_in_place_with_dropBZ_E0E0B31_.exit unwind label %bb.aa, !noalias !257

bb.z:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECs2JiOgHzbbc7_10tokenizers.exit.i, %bb.i
  %i.bg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  br label %.body

.body:                                            ; preds = %bb.z, %bb.c, %bb.h
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #23, !noalias !260
  unreachable

bb.aa:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs2JiOgHzbbc7_10tokenizers.exit.i.i
  %i.bh = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

bb.ab:                                            ; preds = %.body.i
  resume { ptr, i32 } %eh.lpad-body.i

.body.i:                                          ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECs2JiOgHzbbc7_10tokenizers.exit.i, %bb.aa, %bb.x
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.bh, %bb.aa ], [ %i.be, %bb.x ], [ %.pn.i.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECs2JiOgHzbbc7_10tokenizers.exit.i ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCscdodAO9FK5_5alloc3vec13in_place_drop11InPlaceDropNtNtBI_6string6StringEECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef align 8 dereferenceable(16) %i.d) #24
          to label %bb.ab unwind label %bb.ac, !noalias !257

bb.ac:                                            ; preds = %.body.i
  %i.bi = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #23, !noalias !257
  unreachable

_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map12map_try_foldNtNtCscdodAO9FK5_5alloc6string6StringBZ_INtNtNtB13_3vec13in_place_drop11InPlaceDropBZ_EINtNtBa_6result6ResultB1D_zENCNvXs_NtNtCs2JiOgHzbbc7_10tokenizers8decoders5stripNtB2X_5StripNtNtB31_9tokenizer7Decoder12decode_chain0NCINvNtB1I_16in_place_collect24write_in_place_with_dropBZ_E0E0B31_.exit: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs2JiOgHzbbc7_10tokenizers.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !257
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4.037, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !noalias !257
  %i.bj = getelementptr inbounds nuw i8, ptr %.sroa.4.037, i64 24 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !257
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !257
  %.not = icmp eq ptr %i.n, %i.f
  br i1 %.not, label %._crit_edge, label %bb.b

._crit_edge:                                      ; preds = %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map12map_try_foldNtNtCscdodAO9FK5_5alloc6string6StringBZ_INtNtNtB13_3vec13in_place_drop11InPlaceDropBZ_EINtNtBa_6result6ResultB1D_zENCNvXs_NtNtCs2JiOgHzbbc7_10tokenizers8decoders5stripNtB2X_5StripNtNtB31_9tokenizer7Decoder12decode_chain0NCINvNtB1I_16in_place_collect24write_in_place_with_dropBZ_E0E0B31_.exit, %bb.a
  %.sroa.4.0.lcssa = phi ptr [ %2, %bb.a ], [ %i.bj, %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map12map_try_foldNtNtCscdodAO9FK5_5alloc6string6StringBZ_INtNtNtB13_3vec13in_place_drop11InPlaceDropBZ_EINtNtBa_6result6ResultB1D_zENCNvXs_NtNtCs2JiOgHzbbc7_10tokenizers8decoders5stripNtB2X_5StripNtNtB31_9tokenizer7Decoder12decode_chain0NCINvNtB1I_16in_place_collect24write_in_place_with_dropBZ_E0E0B31_.exit ]
  %i.bk = insertvalue { ptr, ptr } poison, ptr %1, 0
  %i.bl = insertvalue { ptr, ptr } %i.bk, ptr %.sroa.4.0.lcssa, 1
  ret { ptr, ptr } %i.bl
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB6_8IntoIterNtNtBa_6string6StringENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator8try_foldINtNtB8_13in_place_drop11InPlaceDropBW_ENCINvNtNtB1o_8adapters3map12map_try_foldBW_INtNtB1q_6result6ResultBW_INtNtBa_5boxed3BoxDNtNtB1q_5error5ErrorNtNtB1q_6marker4SendNtB4M_4SyncEL_EEB2m_INtNtNtB1q_3ops12control_flow11ControlFlowIB3I_B2m_zEB2m_ENCNvXs5_NtNtCs2JiOgHzbbc7_10tokenizers11normalizers7replaceNtB6s_7ReplaceNtNtB6w_9tokenizer7Decoder12decode_chain0NCINvXB37_INtB37_12GenericShuntINtB35_3MapBH_B6k_EIB3I_NtNtB1q_7convert10InfallibleB47_EEB1i_8try_foldB2m_NCINvNtB8_16in_place_collect24write_in_place_with_dropBW_E0B64_E0E0B5o_EB6w_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %1, ptr noundef %2, ptr noundef %3, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %4) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 6 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %i.e = alloca [8 x i8], align 8                 ; 5 uses
  %i.f = alloca [24 x i8], align 8                ; 7 uses
  %i.g = alloca [24 x i8], align 8                ; 13 uses
  %i.h = alloca [24 x i8], align 8                ; 11 uses
  %i.i = alloca [16 x i8], align 8                ; 6 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.k = load ptr, ptr %i.j, align 8, !nonnull !6, !noundef !6 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %.promoted = load ptr, ptr %i.l, align 8        ; 2 uses
  %.not91 = icmp eq ptr %.promoted, %i.k
  br i1 %.not91, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 16
  %.val2 = load ptr, ptr %i.m, align 8, !nonnull !6, !align !8, !noundef !6
  %i.n = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 4 uses
  %.sroa.55.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 7 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.s = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.at
  %.sroa.4.092 = phi ptr [ %3, %.lr.ph ], [ %i.cw, %bb.at ] ; 7 uses
  %i.w = phi ptr [ %.promoted, %.lr.ph ], [ %i.x, %bb.at ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !283
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.h, ptr noundef nonnull align 8 dereferenceable(24) %i.w, i64 24, i1 false)
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 24 ; 3 uses
  store ptr %i.x, ptr %i.l, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !283
  store ptr %2, ptr %i.i, align 8, !noalias !283
  store ptr %.sroa.4.092, ptr %i.n, align 8, !noalias !283
  %.val.i = load ptr, ptr %.val2, align 8, !noalias !283 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !284)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !285
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !285
  invoke void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, i64 noundef 0, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %bb.c unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !285

.body.i.i:                                        ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.j, %bb.f
  %.pn18.i.i = phi { ptr, i32 } [ %.pn.i.i, %bb.f ], [ %i.al, %bb.j ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.h) #24
          to label %bb.aq unwind label %bb.ad, !noalias !286

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECs2JiOgHzbbc7_10tokenizers.exit.i.i.i, %bb.b, %bb.d
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

bb.c:                                             ; preds = %bb.b
  %i.y = load i64, ptr %i.d, align 8, !range !14, !noalias !285, !noundef !6
  %i.z = trunc nuw i64 %i.y to i1
  br i1 %i.z, label %bb.d, label %bb.e, !prof !15

bb.d:                                             ; preds = %bb.c
  %5 = load i64, ptr %i.o, align 8, !range !16, !noalias !285, !noundef !6
  %i.aa = load i64, ptr %i.p, align 8, !noalias !285
  invoke void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef %5, i64 %i.aa) #26
          to label %bb.ab unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !285

bb.e:                                             ; preds = %bb.c
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i) ]
  %6 = load i64, ptr %i.o, align 8, !range !9, !noalias !285, !noundef !6
  %i.ab = load ptr, ptr %i.p, align 8, !noalias !285, !nonnull !6, !noundef !6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !285
  store i64 %6, ptr %i.g, align 8, !noalias !285
  store ptr %i.ab, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !285
  store i64 0, ptr %.sroa.55.0..sroa_idx.i.i, align 8, !noalias !285
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !285
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !285
  %i.ac = load ptr, ptr %.val.i, align 8, !noalias !285, !nonnull !6, !align !8, !noundef !6
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 56
  store ptr %i.ad, ptr %i.e, align 8, !noalias !285
  %i.ae = load ptr, ptr %i.q, align 8, !alias.scope !284, !noalias !283, !nonnull !6, !noundef !6 ; 5 uses
  %i.af = load i64, ptr %i.r, align 8, !alias.scope !284, !noalias !283, !noundef !6 ; 6 uses
  invoke void @_RNvXs2_NtNtCs2JiOgHzbbc7_10tokenizers9tokenizer7patternRNtNtNtB9_5utils4onig8SysRegexNtB5_7Pattern12find_matches(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.f, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.e, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.ae, i64 noundef %i.af)
          to label %bb.h unwind label %bb.g, !noalias !285

bb.f:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterTTjjEbEEECs2JiOgHzbbc7_10tokenizers.exit.i.i, %bb.g
  %.pn.i.i = phi { ptr, i32 } [ %lpad.loopexit.split-lp293, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterTTjjEbEEECs2JiOgHzbbc7_10tokenizers.exit.i.i ], [ %i.ag, %bb.g ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef align 8 dereferenceable(24) %i.g) #24
          to label %.body.i.i unwind label %bb.ad, !noalias !285

bb.g:                                             ; preds = %_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterTTjjEbEENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit.thread.i.i, %bb.e
  %i.ag = landingpad { ptr, i32 }
          cleanup
  br label %bb.f

bb.h:                                             ; preds = %bb.e
  %i.ah = load i64, ptr %i.f, align 8, !range !5, !noalias !285, !noundef !6 ; 3 uses
  %i.ai = icmp eq i64 %i.ah, -1
  %i.aj = load ptr, ptr %i.s, align 8, !noalias !285, !nonnull !6, !noundef !6 ; 5 uses
  br i1 %i.ai, label %bb.i, label %bb.l

bb.i:                                             ; preds = %bb.h
  %i.ak = load ptr, ptr %i.t, align 8, !noalias !285, !nonnull !6, !align !8, !noundef !6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !285
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !285
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECs2JiOgHzbbc7_10tokenizers.exit.i.i.i unwind label %bb.j, !noalias !285

bb.j:                                             ; preds = %bb.i
  %i.al = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %.body.i.i unwind label %bb.k, !noalias !285

bb.k:                                             ; preds = %bb.j
  %i.am = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #23, !noalias !285
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECs2JiOgHzbbc7_10tokenizers.exit.i.i.i: ; preds = %bb.i
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs2JiOgHzbbc7_10tokenizers.exit.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !285

bb.l:                                             ; preds = %bb.h
  %.sroa.58.0.copyload.i.i = load i64, ptr %i.t, align 8, !noalias !285 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !285
  %i.an = icmp ult i64 %.sroa.58.0.copyload.i.i, 384307168202282326
  call void @llvm.assume(i1 %i.an)
  %.idx.i.i = mul nuw nsw i64 %.sroa.58.0.copyload.i.i, 24
  %i.ao = getelementptr inbounds nuw i8, ptr %i.aj, i64 %.idx.i.i
  %i.ap = icmp eq i64 %.sroa.58.0.copyload.i.i, 0
  br i1 %i.ap, label %_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterTTjjEbEENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit.thread.i.i, label %_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterTTjjEbEENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit.i.i

.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.y, %bb.w, %bb.aa
  %lpad.loopexit.split-lp293 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !287
  store i64 %i.ah, ptr %i.c, align 8, !noalias !287
  %i.aq = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.aj, ptr %i.aq, align 8, !noalias !287
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecTTjjEbEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.c)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterTTjjEbEEECs2JiOgHzbbc7_10tokenizers.exit.i.i unwind label %bb.ad, !noalias !285

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterTTjjEbEEECs2JiOgHzbbc7_10tokenizers.exit.i.i: ; preds = %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !287
  br label %bb.f

_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterTTjjEbEENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit.i.i: ; preds = %bb.l, %bb.ac
  %.sroa.5.016.i.i = phi ptr [ %i.ar, %bb.ac ], [ %i.aj, %bb.l ] ; 4 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.sroa.5.016.i.i, i64 24 ; 2 uses
  %.sroa.02.0.copyload.i.i = load i64, ptr %.sroa.5.016.i.i, align 8, !noalias !288 ; 9 uses
  %.sroa.53.0..sroa.5.8..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.5.016.i.i, i64 8
  %.sroa.53.0.copyload.i.i = load i64, ptr %.sroa.53.0..sroa.5.8..sroa_idx.i.i, align 8, !noalias !288 ; 8 uses
  %.sroa.6.0..sroa.5.8..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.5.016.i.i, i64 16
  %.sroa.6.0.copyload.i.i = load i8, ptr %.sroa.6.0..sroa.5.8..sroa_idx.i.i, align 8, !noalias !288
  switch i8 %.sroa.6.0.copyload.i.i, label %bb.w [
    i8 2, label %_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterTTjjEbEENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit.thread.i.i
    i8 0, label %bb.p
  ]

_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterTTjjEbEENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit.thread.i.i: ; preds = %bb.ac, %_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterTTjjEbEENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit.i.i, %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !289
  store i64 %i.ah, ptr %i.b, align 8, !noalias !289
  store ptr %i.aj, ptr %i.u, align 8, !noalias !289
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecTTjjEbEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.b)
          to label %bb.m unwind label %bb.g, !noalias !285

bb.m:                                             ; preds = %_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterTTjjEbEENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit.thread.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !289
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !285
  %.sroa.01.0.copyload.i = load i64, ptr %i.g, align 8, !noalias !290
  %.sroa.5.0.copyload.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !290
  %.sroa.72.0.copyload.i = load ptr, ptr %.sroa.55.0..sroa_idx.i.i, align 8, !noalias !290
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !285
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs2JiOgHzbbc7_10tokenizers.exit34.i.i unwind label %bb.n, !noalias !286

bb.n:                                             ; preds = %bb.m
  %i.as = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %bb.aq unwind label %bb.o, !noalias !286

bb.o:                                             ; preds = %bb.n
  %i.at = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #23, !noalias !286
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs2JiOgHzbbc7_10tokenizers.exit34.i.i: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs2JiOgHzbbc7_10tokenizers.exit.i.i, %bb.m
  %.sroa.72.0.i = phi ptr [ %i.ak, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs2JiOgHzbbc7_10tokenizers.exit.i.i ], [ %.sroa.72.0.copyload.i, %bb.m ] ; 3 uses
  %.sroa.5.0.i = phi ptr [ %i.aj, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs2JiOgHzbbc7_10tokenizers.exit.i.i ], [ %.sroa.5.0.copyload.i, %bb.m ] ; 3 uses
  %.sroa.01.0.i = phi i64 [ -1, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs2JiOgHzbbc7_10tokenizers.exit.i.i ], [ %.sroa.01.0.copyload.i, %bb.m ] ; 2 uses
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %_RNCNvXs5_NtNtCs2JiOgHzbbc7_10tokenizers11normalizers7replaceNtB7_7ReplaceNtNtBb_9tokenizer7Decoder12decode_chain0Bb_.exit.i unwind label %bb.ag, !noalias !283

bb.p:                                             ; preds = %_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterTTjjEbEENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit.i.i
  %.not.i.i.i = icmp ugt i64 %.sroa.02.0.copyload.i.i, %.sroa.53.0.copyload.i.i
  br i1 %.not.i.i.i, label %bb.aa, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.au = icmp eq i64 %.sroa.02.0.copyload.i.i, 0
  br i1 %i.au, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %.not5.i.i.i = icmp ult i64 %.sroa.02.0.copyload.i.i, %i.af
  br i1 %.not5.i.i.i, label %bb.t, label %.split.i.i.i

bb.s:                                             ; preds = %bb.t, %.split.i.i.i, %bb.q
  %i.av = icmp eq i64 %.sroa.53.0.copyload.i.i, 0
  br i1 %i.av, label %bb.y, label %bb.u

.split.i.i.i:                                     ; preds = %bb.r
  %i.aw = icmp eq i64 %.sroa.02.0.copyload.i.i, %i.af
  br i1 %i.aw, label %bb.s, label %bb.aa

bb.t:                                             ; preds = %bb.r
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ae, i64 %.sroa.02.0.copyload.i.i
  %i.ay = load i8, ptr %i.ax, align 1, !alias.scope !291, !noalias !285, !noundef !6
  %i.az = icmp sgt i8 %i.ay, -65
  br i1 %i.az, label %bb.s, label %bb.aa

bb.u:                                             ; preds = %bb.s
  %.not6.i.i.i = icmp ult i64 %.sroa.53.0.copyload.i.i, %i.af
  br i1 %.not6.i.i.i, label %bb.v, label %.split7.i.i.i

.split7.i.i.i:                                    ; preds = %bb.u
  %i.ba = icmp eq i64 %.sroa.53.0.copyload.i.i, %i.af
  br i1 %i.ba, label %bb.y, label %bb.aa

bb.v:                                             ; preds = %bb.u
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ae, i64 %.sroa.53.0.copyload.i.i
  %i.bc = load i8, ptr %i.bb, align 1, !alias.scope !291, !noalias !285, !noundef !6
  %i.bd = icmp sgt i8 %i.bc, -65
  br i1 %i.bd, label %bb.y, label %bb.aa

bb.w:                                             ; preds = %_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterTTjjEbEENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit.i.i
  %i.be = load ptr, ptr %.val.i, align 8, !noalias !285, !nonnull !6, !align !8, !noundef !6 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 40
  %i.bg = load ptr, ptr %i.bf, align 8, !noalias !285, !nonnull !6, !noundef !6
  %i.bh = getelementptr inbounds nuw i8, ptr %i.be, i64 48
  %i.bi = load i64, ptr %i.bh, align 8, !noalias !285, !noundef !6 ; 4 uses
  invoke void @_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE7reserveCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.g, i64 noundef %i.bi)
          to label %.noexc.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp, !noalias !285

.noexc.i.i:                                       ; preds = %bb.w
  %i.bj = load i64, ptr %.sroa.55.0..sroa_idx.i.i, align 8, !alias.scope !292, !noalias !285, !noundef !6 ; 3 uses
  %i.bk = icmp sgt i64 %i.bj, -1
  call void @llvm.assume(i1 %i.bk)
  %.not.i27.i.i = icmp eq i64 %i.bi, 0
  br i1 %.not.i27.i.i, label %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE15append_elementsCs2JiOgHzbbc7_10tokenizers.exit.i.i, label %bb.x

bb.x:                                             ; preds = %.noexc.i.i
  %i.bl = load ptr, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !292, !noalias !285, !nonnull !6, !noundef !6
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 %i.bj
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bm, ptr nonnull readonly align 1 %i.bg, i64 %i.bi, i1 false), !noalias !285
  %.pre.i.i.i = load i64, ptr %.sroa.55.0..sroa_idx.i.i, align 8, !alias.scope !292, !noalias !285
  br label %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE15append_elementsCs2JiOgHzbbc7_10tokenizers.exit.i.i

_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE15append_elementsCs2JiOgHzbbc7_10tokenizers.exit.i.i: ; preds = %bb.x, %.noexc.i.i
  %i.bn = phi i64 [ %.pre.i.i.i, %bb.x ], [ %i.bj, %.noexc.i.i ]
  %i.bo = add i64 %i.bn, %i.bi
  br label %bb.ac

bb.y:                                             ; preds = %bb.v, %.split7.i.i.i, %bb.s
  %i.bp = sub nuw i64 %.sroa.53.0.copyload.i.i, %.sroa.02.0.copyload.i.i ; 3 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.ae, i64 %.sroa.02.0.copyload.i.i
  invoke void @_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE7reserveCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.g, i64 noundef %i.bp)
          to label %.noexc30.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp, !noalias !285

.noexc30.i.i:                                     ; preds = %bb.y
  %i.br = load i64, ptr %.sroa.55.0..sroa_idx.i.i, align 8, !alias.scope !293, !noalias !285, !noundef !6 ; 3 uses
  %i.bs = icmp sgt i64 %i.br, -1
  call void @llvm.assume(i1 %i.bs)
  %.not.i28.i.i = icmp eq i64 %.sroa.53.0.copyload.i.i, %.sroa.02.0.copyload.i.i
  br i1 %.not.i28.i.i, label %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE15append_elementsCs2JiOgHzbbc7_10tokenizers.exit31.i.i, label %bb.z
end_hunk_1
begin_hunk_2_@_RINvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB6_8IntoIterNtNtBa_6string6StringENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator8try_foldINtNtB8_13in_place_drop11InPlaceDropBW_ENCINvNtNtB1o_8adapters3map12map_try_foldBW_INtNtB1q_6result6ResultBW_INtNtBa_5boxed3BoxDNtNtB1q_5error5ErrorNtNtB1q_6marker4SendNtB4M_4SyncEL_EEB2m_INtNtNtB1q_3ops12control_flow11ControlFlowIB3I_B2m_zEB2m_ENCNvXs5_NtNtCs2JiOgHzbbc7_10tokenizers11normalizers7replaceNtB6s_7ReplaceNtNtB6w_9tokenizer7Decoder12decode_chain0NCINvXB37_INtB37_12GenericShuntINtB35_3MapBH_B6k_EIB3I_NtNtB1q_7convert10InfallibleB47_EEB1i_8try_foldB2m_NCINvNtB8_16in_place_collect24write_in_place_with_dropBW_E0B64_E0E0B5o_EB6w_:bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val6.i.i) ]
  %i.cg = load ptr, ptr %.val6.i.i, align 8, !invariant.load !6, !noalias !294 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.cg, null
  br i1 %.not.i.i.i.i.i, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  invoke void %i.cg(ptr noundef nonnull %.val.i.i)
          to label %bb.ak unwind label %bb.am, !noalias !294

bb.ak:                                            ; preds = %bb.aj, %bb.ai
  %i.ch = getelementptr inbounds nuw i8, ptr %.val6.i.i, i64 8
  %i.ci = load i64, ptr %i.ch, align 8, !range !9, !invariant.load !6, !noalias !294 ; 2 uses
  %i.cj = icmp eq i64 %i.ci, 0
  br i1 %i.cj, label %bb.as, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.ck = getelementptr inbounds nuw i8, ptr %.val6.i.i, i64 16
  %i.cl = load i64, ptr %i.ck, align 8, !range !10, !invariant.load !6, !noalias !294
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef range(i64 1, 0) %i.ci, i64 noundef range(i64 1, 536870913) %i.cl) #25, !noalias !294
  br label %bb.as

bb.am:                                            ; preds = %bb.aj
  %i.cm = landingpad { ptr, i32 }
          cleanup
  %i.cn = getelementptr inbounds nuw i8, ptr %.val6.i.i, i64 8
  %i.co = load i64, ptr %i.cn, align 8, !range !9, !invariant.load !6, !noalias !294 ; 2 uses
  %i.cp = icmp eq i64 %i.co, 0
  br i1 %i.cp, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.cq = getelementptr inbounds nuw i8, ptr %.val6.i.i, i64 16
  %i.cr = load i64, ptr %i.cq, align 8, !range !10, !invariant.load !6, !noalias !294
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef range(i64 1, 0) %i.co, i64 noundef range(i64 1, 536870913) %i.cr) #25, !noalias !294
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.am
  store ptr %.sroa.5.0.i, ptr %.val.le, align 8, !noalias !294
  store ptr %.sroa.72.0.i, ptr %i.ce, align 8, !noalias !294
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCscdodAO9FK5_5alloc3vec13in_place_drop11InPlaceDropNtNtBI_6string6StringEECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef align 8 dereferenceable(16) %i.a) #24
          to label %.body.i unwind label %bb.ap, !noalias !294

bb.ap:                                            ; preds = %bb.ao
  %i.cs = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #23, !noalias !294
  unreachable

.body.i:                                          ; preds = %bb.aq, %bb.ao
  %eh.lpad-body5.i = phi { ptr, i32 } [ %eh.lpad-body.ph.i, %bb.aq ], [ %i.cm, %bb.ao ]
  resume { ptr, i32 } %eh.lpad-body5.i

bb.aq:                                            ; preds = %bb.ag, %bb.ae, %bb.n, %.body.i.i
  %eh.lpad-body.ph.i = phi { ptr, i32 } [ %i.cb, %bb.ag ], [ %i.as, %bb.n ], [ %i.bz, %bb.ae ], [ %.pn18.i.i, %.body.i.i ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCscdodAO9FK5_5alloc3vec13in_place_drop11InPlaceDropNtNtBI_6string6StringEECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef align 8 dereferenceable(16) %i.i) #24
          to label %.body.i unwind label %bb.ar, !noalias !283

bb.ar:                                            ; preds = %bb.aq
  %i.ct = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #23, !noalias !283
  unreachable

._crit_edge:                                      ; preds = %bb.at, %bb.a, %bb.as
  %.sroa.4.0.lcssa.sink = phi ptr [ %.sroa.4.092, %bb.as ], [ %3, %bb.a ], [ %i.cw, %bb.at ]
  %storemerge = phi i64 [ 1, %bb.as ], [ 0, %bb.a ], [ 0, %bb.at ]
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %2, ptr %i.cu, align 8
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.4.0.lcssa.sink, ptr %i.cv, align 8
  store i64 %storemerge, ptr %0, align 8
  ret void

bb.as:                                            ; preds = %bb.ah, %bb.ak, %bb.al
  store ptr %.sroa.5.0.i, ptr %.val.le, align 8, !noalias !294
  store ptr %.sroa.72.0.i, ptr %i.ce, align 8, !noalias !294
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !283
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !283
  br label %._crit_edge

bb.at:                                            ; preds = %_RNCNvXs5_NtNtCs2JiOgHzbbc7_10tokenizers11normalizers7replaceNtB7_7ReplaceNtNtBb_9tokenizer7Decoder12decode_chain0Bb_.exit.i
  store i64 %.sroa.01.0.i, ptr %.sroa.4.092, align 8, !noalias !294
  %.sroa.69.16..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.4.092, i64 8
  store ptr %.sroa.5.0.i, ptr %.sroa.69.16..sroa_idx.i.i, align 8, !noalias !294
  %.sroa.7.16..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.4.092, i64 16
  store ptr %.sroa.72.0.i, ptr %.sroa.7.16..sroa_idx.i.i, align 8, !noalias !294
  %i.cw = getelementptr inbounds nuw i8, ptr %.sroa.4.092, i64 24 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !283
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !283
  %.not = icmp eq ptr %i.x, %i.k
  br i1 %.not, label %._crit_edge, label %bb.b
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, ptr } @_RINvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB6_8IntoIterNtNtBa_6string6StringENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator8try_foldINtNtB8_13in_place_drop11InPlaceDropBW_ENCINvNvXs_NtNtB1o_8adapters9enumerateINtB3a_9EnumeratepEB1i_8try_fold9enumerateBW_B2m_INtNtB1q_6result6ResultB2m_zENCINvNtB3c_3map12map_try_foldTjBW_EBW_B2m_B4o_NCNvXs0_NtNtCs2JiOgHzbbc7_10tokenizers8decoders3bpeNtB5J_10BPEDecoderNtNtB5N_9tokenizer7Decoder12decode_chain0NCINvNtB8_16in_place_collect24write_in_place_with_dropBW_E0E0E0B4o_EB5N_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %0, ptr noundef %1, ptr noundef %2, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [104 x i8], align 8               ; 13 uses
  %i.c = alloca [32 x i8], align 8                ; 7 uses
  %i.d = alloca [24 x i8], align 8                ; 14 uses
  %i.e = alloca [1 x i8], align 1                 ; 4 uses
  %i.f = alloca [1 x i8], align 1                 ; 4 uses
  %i.g = alloca [24 x i8], align 8                ; 9 uses
  %i.h = alloca [24 x i8], align 8                ; 5 uses
  %i.i = alloca [16 x i8], align 8                ; 5 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.promoted = load ptr, ptr %i.k, align 8        ; 2 uses
  %i.l = load ptr, ptr %i.j, align 8, !nonnull !6, !noundef !6 ; 2 uses
  %.not129 = icmp eq ptr %.promoted, %i.l
  br i1 %.not129, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %.val = load ptr, ptr %3, align 8, !nonnull !6, !align !8, !noundef !6 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 16
  %.val6 = load ptr, ptr %i.m, align 8, !nonnull !6, !align !8, !noundef !6 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.o = getelementptr i8, ptr %.val, i64 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.r = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.t = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %.sroa.4.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 7 uses
  %.sroa.512.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 20 uses
  %.sroa.498.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.6100.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %.sroa.7101.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %.sroa.8102.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %.sroa.10104.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %.sroa.12106.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %.sroa.13107.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  %.sroa.14.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  %.sroa.15.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 96
  %.pre = load i64, ptr %.val6, align 8, !noalias !332
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_RNCINvNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator8try_fold9enumerateNtNtCscdodAO9FK5_5alloc6string6StringINtNtNtB29_3vec13in_place_drop11InPlaceDropB25_EINtNtBf_6result6ResultB2G_zENCINvNtBb_3map12map_try_foldTjB25_EB25_B2G_B3s_NCNvXs0_NtNtCs2JiOgHzbbc7_10tokenizers8decoders3bpeNtB4N_10BPEDecoderNtNtB4R_9tokenizer7Decoder12decode_chain0NCINvNtB2L_16in_place_collect24write_in_place_with_dropB25_E0E0E0B4R_.exit
  %i.w = phi i64 [ %.pre, %.lr.ph ], [ %i.kh, %_RNCINvNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator8try_fold9enumerateNtNtCscdodAO9FK5_5alloc6string6StringINtNtNtB29_3vec13in_place_drop11InPlaceDropB25_EINtNtBf_6result6ResultB2G_zENCINvNtBb_3map12map_try_foldTjB25_EB25_B2G_B3s_NCNvXs0_NtNtCs2JiOgHzbbc7_10tokenizers8decoders3bpeNtB4N_10BPEDecoderNtNtB4R_9tokenizer7Decoder12decode_chain0NCINvNtB2L_16in_place_collect24write_in_place_with_dropB25_E0E0E0B4R_.exit ]
  %.sroa.4.0130 = phi ptr [ %2, %.lr.ph ], [ %i.kf, %_RNCINvNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator8try_fold9enumerateNtNtCscdodAO9FK5_5alloc6string6StringINtNtNtB29_3vec13in_place_drop11InPlaceDropB25_EINtNtBf_6result6ResultB2G_zENCINvNtBb_3map12map_try_foldTjB25_EB25_B2G_B3s_NCNvXs0_NtNtCs2JiOgHzbbc7_10tokenizers8decoders3bpeNtB4N_10BPEDecoderNtNtB4R_9tokenizer7Decoder12decode_chain0NCINvNtB2L_16in_place_collect24write_in_place_with_dropB25_E0E0E0B4R_.exit ] ; 3 uses
  %i.x = phi ptr [ %.promoted, %.lr.ph ], [ %i.y, %_RNCINvNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator8try_fold9enumerateNtNtCscdodAO9FK5_5alloc6string6StringINtNtNtB29_3vec13in_place_drop11InPlaceDropB25_EINtNtBf_6result6ResultB2G_zENCINvNtBb_3map12map_try_foldTjB25_EB25_B2G_B3s_NCNvXs0_NtNtCs2JiOgHzbbc7_10tokenizers8decoders3bpeNtB4N_10BPEDecoderNtNtB4R_9tokenizer7Decoder12decode_chain0NCINvNtB2L_16in_place_collect24write_in_place_with_dropB25_E0E0E0B4R_.exit ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !333
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.g, ptr noundef nonnull align 8 dereferenceable(24) %i.x, i64 24, i1 false)
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 24 ; 3 uses
  store ptr %i.y, ptr %i.k, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !334
  store ptr %1, ptr %i.i, align 8, !noalias !334
  store ptr %.sroa.4.0130, ptr %i.n, align 8, !noalias !334
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !334
  %.val.i.i = load ptr, ptr %.val, align 8, !noalias !334, !nonnull !6, !align !8, !noundef !6
  %.val2.i.i = load ptr, ptr %i.o, align 8, !noalias !334, !nonnull !6, !align !8, !noundef !6
  %i.z = load i64, ptr %.val.i.i, align 8, !noalias !333, !noundef !6
  %i.aa = icmp eq i64 %i.w, %i.z                  ; 5 uses
  %not..i.i.i = xor i1 %i.aa, true
  %..i.i.i = zext i1 %not..i.i.i to i64           ; 6 uses
  %i.ab = load ptr, ptr %i.p, align 8, !noalias !333, !nonnull !6, !noundef !6 ; 7 uses
  %i.ac = load i64, ptr %i.q, align 8, !noalias !333, !noundef !6 ; 5 uses
  %i.ad = load ptr, ptr %.val2.i.i, align 8, !noalias !333, !nonnull !6, !align !8, !noundef !6 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !335)
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  %i.af = load i64, ptr %i.ae, align 8, !alias.scope !335, !noalias !336, !noundef !6 ; 2 uses
  %i.ag = icmp ne i64 %i.af, 1
  %or.cond.i.i.i.i = or i1 %i.aa, %i.ag
  br i1 %or.cond.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.ai = load ptr, ptr %i.ah, align 8, !alias.scope !335, !noalias !336, !nonnull !6, !noundef !6
  %i.aj = load i8, ptr %i.ai, align 1, !noalias !337, !noundef !6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !338
  store i8 %i.aj, ptr %i.f, align 1, !noalias !338
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !338
  store i8 32, ptr %i.e, align 1, !noalias !338
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !338
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.ac
  store ptr %i.ab, ptr %i.c, align 8, !noalias !338
  store ptr %i.ak, ptr %i.r, align 8, !noalias !338
  store ptr %i.f, ptr %i.s, align 8, !noalias !338
  store ptr %i.e, ptr %i.t, align 8, !noalias !338
  invoke void @_RNvXs_NtNtCscdodAO9FK5_5alloc3vec21spec_from_iter_nestedINtB6_3VechEINtB4_18SpecFromIterNestedhINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtNtNtB1E_5slice4iter4IterhENCNvNtB8_3str13replace_ascii0EE9from_iterCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.h, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(32) %i.c)
          to label %.noexc.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !339

.noexc.i.i.i:                                     ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !338
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !338
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !338
  br label %_RINvMs3_NtCscdodAO9FK5_5alloc3stre7replaceRNtNtB8_6string6StringECs2JiOgHzbbc7_10tokenizers.exit.i.i.i

bb.d:                                             ; preds = %bb.b
  %.not15.i.i.i.i = icmp ugt i64 %i.af, %..i.i.i
  %spec.select.i.i.i.i = select i1 %.not15.i.i.i.i, i64 0, i64 %i.ac ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !338
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !338
  invoke void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef %spec.select.i.i.i.i, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %.noexc3.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !333

.noexc3.i.i.i:                                    ; preds = %bb.d
  %i.al = load i64, ptr %i.a, align 8, !range !14, !noalias !338, !noundef !6
  %i.am = trunc nuw i64 %i.al to i1
  %i.an = load i64, ptr %i.u, align 8, !range !16, !noalias !338, !noundef !6 ; 3 uses
  br i1 %i.am, label %bb.e, label %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs2JiOgHzbbc7_10tokenizers.exit.i.i.i.i, !prof !15

bb.e:                                             ; preds = %.noexc3.i.i.i
  %i.ao = load i64, ptr %i.v, align 8, !noalias !338
  invoke void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef %i.an, i64 %i.ao) #26
          to label %.noexc4.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !333

.noexc4.i.i.i:                                    ; preds = %bb.e
  unreachable

_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs2JiOgHzbbc7_10tokenizers.exit.i.i.i.i: ; preds = %.noexc3.i.i.i
  %i.ap = load ptr, ptr %i.v, align 8, !noalias !338, !nonnull !6, !noundef !6
  %i.aq = icmp ule i64 %spec.select.i.i.i.i, %i.an
  call void @llvm.assume(i1 %i.aq)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !338
  store i64 %i.an, ptr %i.d, align 8, !noalias !338
  store ptr %i.ap, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !noalias !338
  store i64 0, ptr %.sroa.512.0..sroa_idx.i.i.i.i, align 8, !noalias !338
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !338
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc6stringRNtB5_6StringNtNtNtCs4NRVxsYgnAr_4core3str7pattern7Pattern13into_searcher(ptr noalias noundef nonnull sret([104 x i8]) align 8 captures(address) dereferenceable(104) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ad, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.ab, i64 noundef %i.ac)
          to label %bb.f unwind label %.loopexit134.split.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !337

bb.f:                                             ; preds = %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs2JiOgHzbbc7_10tokenizers.exit.i.i.i.i
  %.sroa.097.0.copyload.i.i.i.i = load i64, ptr %i.b, align 8, !noalias !338
  %.sroa.498.0.copyload.i.i.i.i = load i64, ptr %.sroa.498.0..sroa_idx.i.i.i.i, align 8, !noalias !338 ; 27 uses
  %.sroa.6100.0.copyload.i.i.i.i = load i64, ptr %.sroa.6100.0..sroa_idx.i.i.i.i, align 8, !noalias !338 ; 5 uses
  %.sroa.7101.0.copyload.i.i.i.i = load i64, ptr %.sroa.7101.0..sroa_idx.i.i.i.i, align 8, !noalias !338 ; 2 uses
  %.sroa.8102.0.copyload.i.i.i.i = load i64, ptr %.sroa.8102.0..sroa_idx.i.i.i.i, align 8, !noalias !338
  %.sroa.10104.0.copyload.i.i.i.i = load i64, ptr %.sroa.10104.0..sroa_idx.i.i.i.i, align 8, !noalias !338
  %.sroa.12106.0.copyload.i.i.i.i = load ptr, ptr %.sroa.12106.0..sroa_idx.i.i.i.i, align 8, !noalias !338 ; 17 uses
  %.sroa.13107.0.copyload.i.i.i.i = load i64, ptr %.sroa.13107.0..sroa_idx.i.i.i.i, align 8, !noalias !338 ; 42 uses
  %.sroa.14.0.copyload.i.i.i.i = load ptr, ptr %.sroa.14.0..sroa_idx.i.i.i.i, align 8, !noalias !338 ; 5 uses
  %.sroa.15.0.copyload.i.i.i.i = load i64, ptr %.sroa.15.0..sroa_idx.i.i.i.i, align 8, !noalias !338 ; 13 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !338
  %i.ar = trunc nuw i64 %.sroa.097.0.copyload.i.i.i.i to i1
  %i.as = add nsw i64 %.sroa.15.0.copyload.i.i.i.i, -1 ; 3 uses
  br i1 %i.ar, label %.split.us.i.i.i.i, label %.split.i.i.i.i

.split.us.i.i.i.i:                                ; preds = %bb.f
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.12106.0.copyload.i.i.i.i), "nonnull"(ptr %.sroa.14.0.copyload.i.i.i.i) ]
  %i.at = sub i64 %.sroa.15.0.copyload.i.i.i.i, %.sroa.6100.0.copyload.i.i.i.i
  %umax49.i48.us.i.i.i.i = call i64 @llvm.umax.i64(i64 %.sroa.498.0.copyload.i.i.i.i, i64 range(i64 0, -9223372036854775808) %.sroa.15.0.copyload.i.i.i.i)
  %i.au = add i64 %.sroa.498.0.copyload.i.i.i.i, -1 ; 2 uses
  %.first_iter.i.i.i.i = icmp ult i64 %i.au, %.sroa.15.0.copyload.i.i.i.i
  %.first_iter.i.fr.i.i.i = freeze i1 %.first_iter.i.i.i.i
  %.not129.us.i.i.i.i = icmp eq i64 %.sroa.498.0.copyload.i.i.i.i, 0
  %invariant.op = sub i64 1, %.sroa.498.0.copyload.i.i.i.i
  %exitcond.not.i50.us.i.i.i.i442.not = icmp ult i64 %.sroa.498.0.copyload.i.i.i.i, %.sroa.15.0.copyload.i.i.i.i
  %invariant.op637 = sub i64 1, %.sroa.498.0.copyload.i.i.i.i
  %.not129.us.i.us.i.i.i445 = icmp eq i64 %.sroa.498.0.copyload.i.i.i.i, 0
  br label %bb.g

bb.g:                                             ; preds = %bb.z, %.split.us.i.i.i.i
  %.sroa.3072.0.us.i.i.i.i = phi i64 [ %.sroa.10104.0.copyload.i.i.i.i, %.split.us.i.i.i.i ], [ %.sroa.3072.1.us.i.i.i.i, %bb.z ] ; 2 uses
  %.sroa.18.0.us.i.i.i.i = phi i64 [ %.sroa.8102.0.copyload.i.i.i.i, %.split.us.i.i.i.i ], [ %.sroa.11110.1.us.i.i.i.i, %bb.z ] ; 3 uses
  %.sroa.04.0.us.i.i.i.i = phi i64 [ 0, %.split.us.i.i.i.i ], [ %.sroa.11110.1.us.i.i.i.i, %bb.z ] ; 7 uses
  %i.av = icmp eq i64 %.sroa.3072.0.us.i.i.i.i, -1
  %i.aw = add i64 %.sroa.18.0.us.i.i.i.i, %i.as   ; 3 uses
  %i.ax = icmp ult i64 %i.aw, %.sroa.13107.0.copyload.i.i.i.i ; 2 uses
  br i1 %i.av, label %bb.q, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @llvm.experimental.noalias.scope.decl(metadata !340)
  call void @llvm.experimental.noalias.scope.decl(metadata !341)
  br i1 %i.ax, label %.lr.ph.i37.us.i.i.i.i, label %.loopexit.i.i.i.i

.lr.ph.i37.us.i.i.i.i:                            ; preds = %bb.h, %.sink.split.i.us.i.i.i.i
  %i.ay = phi i64 [ %.sink.i.us.i.i.i.i, %.sink.split.i.us.i.i.i.i ], [ %.sroa.3072.0.us.i.i.i.i, %bb.h ] ; 3 uses
  %i.az = phi i64 [ %i.cc, %.sink.split.i.us.i.i.i.i ], [ %i.aw, %bb.h ]
  %i.ba = phi i64 [ %.ph71.i.us.i.i.i.i, %.sink.split.i.us.i.i.i.i ], [ %.sroa.18.0.us.i.i.i.i, %bb.h ] ; 8 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.sroa.12106.0.copyload.i.i.i.i, i64 %i.az
  %i.bc = load i8, ptr %i.bb, align 1, !alias.scope !340, !noalias !337, !noundef !6
  %i.bd = and i8 %i.bc, 63
  %i.be = zext nneg i8 %i.bd to i64
  %i.bf = shl nuw i64 1, %i.be
  %i.bg = and i64 %i.bf, %.sroa.7101.0.copyload.i.i.i.i
  %i.bh = icmp eq i64 %i.bg, 0
  br i1 %i.bh, label %bb.p, label %bb.i

bb.i:                                             ; preds = %.lr.ph.i37.us.i.i.i.i
  %.sroa.0.0.i.i.us.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.ay, i64 %.sroa.498.0.copyload.i.i.i.i) ; 4 uses
  %umax49.i.us.i.i.i.i = call i64 @llvm.umax.i64(i64 %.sroa.0.0.i.i.us.i.i.i.i, i64 range(i64 0, -9223372036854775808) %.sroa.15.0.copyload.i.i.i.i)
  %exitcond.not.i.us.i.i.i.i435.not = icmp ult i64 %.sroa.0.0.i.i.us.i.i.i.i, %.sroa.15.0.copyload.i.i.i.i
  br i1 %exitcond.not.i.us.i.i.i.i435.not, label %.lr.ph438, label %.preheader131.us.i.i.i.i.preheader

bb.j:                                             ; preds = %bb.k
  %i.bi = add i64 %.sroa.02.0.i.us.i.i.i.i436, 1  ; 2 uses
  %exitcond.not.i.us.i.i.i.i = icmp eq i64 %i.bi, %umax49.i.us.i.i.i.i
  br i1 %exitcond.not.i.us.i.i.i.i, label %.preheader131.us.i.i.i.i.preheader, label %.lr.ph438

.preheader131.us.i.i.i.i.preheader:               ; preds = %bb.j, %bb.i
  %i.bj = icmp ult i64 %i.ay, %.sroa.498.0.copyload.i.i.i.i
  br i1 %i.bj, label %.lr.ph440, label %.loopexit.i.us.i.i.i.i

.lr.ph438:                                        ; preds = %bb.i, %bb.j
  %.sroa.02.0.i.us.i.i.i.i436 = phi i64 [ %i.bi, %bb.j ], [ %.sroa.0.0.i.i.us.i.i.i.i, %bb.i ] ; 4 uses
  %i.bk = add i64 %.sroa.02.0.i.us.i.i.i.i436, %i.ba ; 2 uses
  %i.bl = icmp ult i64 %i.bk, %.sroa.13107.0.copyload.i.i.i.i
  br i1 %i.bl, label %bb.k, label %.split187.us.i.i.i.i

bb.k:                                             ; preds = %.lr.ph438
  %i.bm = getelementptr inbounds nuw i8, ptr %.sroa.14.0.copyload.i.i.i.i, i64 %.sroa.02.0.i.us.i.i.i.i436
  %i.bn = load i8, ptr %i.bm, align 1, !alias.scope !341, !noalias !337, !noundef !6
  %i.bo = getelementptr inbounds nuw i8, ptr %.sroa.12106.0.copyload.i.i.i.i, i64 %i.bk
  %i.bp = load i8, ptr %i.bo, align 1, !alias.scope !340, !noalias !337, !noundef !6
  %.not21.i.us.i.i.i.i = icmp eq i8 %i.bn, %i.bp
  br i1 %.not21.i.us.i.i.i.i, label %bb.j, label %bb.l

bb.l:                                             ; preds = %bb.k
  %.reass.i.reass.i.reass.i.reass.i.reass.reass = add i64 %i.ba, %invariant.op
  %i.bq = add i64 %.reass.i.reass.i.reass.i.reass.i.reass.reass, %.sroa.02.0.i.us.i.i.i.i436
  br label %.sink.split.i.us.i.i.i.i

.preheader131.us.i.i.i.i:                         ; preds = %bb.n
  %i.br = icmp ult i64 %i.ay, %i.bs
  br i1 %i.br, label %.lr.ph440, label %.loopexit.i.us.i.i.i.i

.lr.ph440:                                        ; preds = %.preheader131.us.i.i.i.i.preheader, %.preheader131.us.i.i.i.i
  %.sroa.2.0.i.us.i.i.i.i439 = phi i64 [ %i.bs, %.preheader131.us.i.i.i.i ], [ %.sroa.498.0.copyload.i.i.i.i, %.preheader131.us.i.i.i.i.preheader ]
  %i.bs = add i64 %.sroa.2.0.i.us.i.i.i.i439, -1  ; 6 uses
  %i.bt = icmp ult i64 %i.bs, %.sroa.15.0.copyload.i.i.i.i
  br i1 %i.bt, label %bb.m, label %.split198.us.invoke.i.i.i.i

bb.m:                                             ; preds = %.lr.ph440
  %i.bu = add i64 %i.bs, %i.ba                    ; 3 uses
  %i.bv = icmp ult i64 %i.bu, %.sroa.13107.0.copyload.i.i.i.i
  br i1 %i.bv, label %bb.n, label %.split198.us.invoke.i.i.i.i

bb.n:                                             ; preds = %bb.m
  %i.bw = getelementptr inbounds nuw i8, ptr %.sroa.14.0.copyload.i.i.i.i, i64 %i.bs
  %i.bx = load i8, ptr %i.bw, align 1, !alias.scope !341, !noalias !337, !noundef !6
  %i.by = getelementptr inbounds nuw i8, ptr %.sroa.12106.0.copyload.i.i.i.i, i64 %i.bu
  %i.bz = load i8, ptr %i.by, align 1, !alias.scope !340, !noalias !337, !noundef !6
  %.not.i38.us.i.i.i.i = icmp eq i8 %i.bx, %i.bz
  br i1 %.not.i38.us.i.i.i.i, label %.preheader131.us.i.i.i.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ca = add i64 %i.ba, %.sroa.6100.0.copyload.i.i.i.i
  br label %.sink.split.i.us.i.i.i.i

bb.p:                                             ; preds = %.lr.ph.i37.us.i.i.i.i
  %i.cb = add i64 %i.ba, %.sroa.15.0.copyload.i.i.i.i
  br label %.sink.split.i.us.i.i.i.i

.sink.split.i.us.i.i.i.i:                         ; preds = %bb.p, %bb.o, %bb.l
  %.sink.i.us.i.i.i.i = phi i64 [ %i.at, %bb.o ], [ 0, %bb.l ], [ 0, %bb.p ]
  %.ph71.i.us.i.i.i.i = phi i64 [ %i.ca, %bb.o ], [ %i.bq, %bb.l ], [ %i.cb, %bb.p ] ; 2 uses
  %i.cc = add i64 %.ph71.i.us.i.i.i.i, %i.as      ; 2 uses
  %i.cd = icmp ult i64 %i.cc, %.sroa.13107.0.copyload.i.i.i.i
  br i1 %i.cd, label %.lr.ph.i37.us.i.i.i.i, label %.loopexit.i.i.i.i

bb.q:                                             ; preds = %bb.g
  call void @llvm.experimental.noalias.scope.decl(metadata !342)
  call void @llvm.experimental.noalias.scope.decl(metadata !343)
  br i1 %i.ax, label %.lr.ph.i45.us.i.i.i.i, label %.loopexit.i.i.i.i

.lr.ph.i45.us.i.i.i.i:                            ; preds = %bb.q, %bb.v
  %i.ce = phi i64 [ %i.df, %bb.v ], [ %i.aw, %bb.q ]
  %i.cf = phi i64 [ %i.de, %bb.v ], [ %.sroa.18.0.us.i.i.i.i, %bb.q ] ; 9 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %.sroa.12106.0.copyload.i.i.i.i, i64 %i.ce
  %i.ch = load i8, ptr %i.cg, align 1, !alias.scope !342, !noalias !337, !noundef !6
  %i.ci = and i8 %i.ch, 63
  %i.cj = zext nneg i8 %i.ci to i64
  %i.ck = shl nuw i64 1, %i.cj
  %i.cl = and i64 %i.ck, %.sroa.7101.0.copyload.i.i.i.i
  %i.cm = icmp eq i64 %i.cl, 0
  br i1 %i.cm, label %bb.u, label %.preheader.i.i.i.i.preheader

.preheader.i.i.i.i.preheader:                     ; preds = %.lr.ph.i45.us.i.i.i.i
  br i1 %exitcond.not.i50.us.i.i.i.i442.not, label %.lr.ph444, label %.preheader.us.i.preheader.i.i.i

.preheader.i.i.i.i:                               ; preds = %bb.s
  %i.cn = add i64 %.sroa.02.0.i49.us.i.i.i.i443, 1 ; 2 uses
  %exitcond.not.i50.us.i.i.i.i = icmp eq i64 %i.cn, %umax49.i48.us.i.i.i.i
  br i1 %exitcond.not.i50.us.i.i.i.i, label %.preheader.us.i.preheader.i.i.i, label %.lr.ph444

.preheader.us.i.preheader.i.i.i:                  ; preds = %.preheader.i.i.i.i, %.preheader.i.i.i.i.preheader
  br i1 %.first_iter.i.fr.i.i.i, label %.preheader.us.i.us.i.i.i.preheader, label %.preheader.us.i.preheader.split.i.i.i

.preheader.us.i.us.i.i.i.preheader:               ; preds = %.preheader.us.i.preheader.i.i.i
  br i1 %.not129.us.i.us.i.i.i445, label %.loopexit.i.us.i.i.i.i, label %.lr.ph447

.preheader.us.i.us.i.i.i:                         ; preds = %bb.r
  %.not129.us.i.us.i.i.i = icmp eq i64 %i.co, 0
  br i1 %.not129.us.i.us.i.i.i, label %.loopexit.i.us.i.i.i.i, label %.lr.ph447

.lr.ph447:                                        ; preds = %.preheader.us.i.us.i.i.i.preheader, %.preheader.us.i.us.i.i.i
  %.sroa.2.0.i53.us.i.us.i.i.i446 = phi i64 [ %i.co, %.preheader.us.i.us.i.i.i ], [ %.sroa.498.0.copyload.i.i.i.i, %.preheader.us.i.us.i.i.i.preheader ]
  %i.co = add i64 %.sroa.2.0.i53.us.i.us.i.i.i446, -1 ; 4 uses
  %i.cp = add i64 %i.co, %i.cf                    ; 3 uses
  %i.cq = icmp ult i64 %i.cp, %.sroa.13107.0.copyload.i.i.i.i
  br i1 %i.cq, label %bb.r, label %.split198.us.invoke.i.i.i.i

bb.r:                                             ; preds = %.lr.ph447
  %i.cr = getelementptr inbounds nuw i8, ptr %.sroa.14.0.copyload.i.i.i.i, i64 %i.co
  %i.cs = load i8, ptr %i.cr, align 1, !alias.scope !343, !noalias !337, !noundef !6
  %i.ct = getelementptr inbounds nuw i8, ptr %.sroa.12106.0.copyload.i.i.i.i, i64 %i.cp
  %i.cu = load i8, ptr %i.ct, align 1, !alias.scope !342, !noalias !337, !noundef !6
  %.not.i54.us.i.us.i.i.i = icmp eq i8 %i.cs, %i.cu
  br i1 %.not.i54.us.i.us.i.i.i, label %.preheader.us.i.us.i.i.i, label %.split.us.i.i.i

end_hunk_2
begin_hunk_3_@_RINvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB6_8IntoIterNtNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encoding8EncodingENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator8try_foldINtNtB8_13in_place_drop11InPlaceDropBW_ENCINvNtNtB21_8adapters3map12map_try_foldBW_BW_B2Z_INtNtB23_6result6ResultB2Z_zENCNCNvXs0_NtNtB12_10processors4bertNtB54_14BertProcessingNtB10_13PostProcessor17process_encodings00NCINvNtB8_16in_place_collect24write_in_place_with_dropBW_E0E0B4r_EB12_:bb.a
  store ptr %i.s, ptr %i.t, align 8, !noalias !471
  store i64 1, ptr %i.ad, align 8, !noalias !471
  store ptr %i.cf, ptr %i.ae, align 8, !noalias !471
  store i64 %i.cg, ptr %i.af, align 8, !noalias !471
  store ptr %i.r, ptr %i.ag, align 8, !noalias !471
  store i64 1, ptr %i.ah, align 8, !noalias !471
  invoke void @_RNvXs0_NtCscdodAO9FK5_5alloc5sliceSRSmINtB5_6ConcatmE6concatCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.u, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.t, i64 noundef 3)
          to label %bb.d unwind label %bb.c, !noalias !471

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecmEECs2JiOgHzbbc7_10tokenizers.exit27: ; preds = %bb.f, %bb.c
  %.pn.pn.pn.pn.pn.pn.pn.i.i = phi { ptr, i32 } [ %i.cj, %bb.c ], [ %.pn.pn.pn.pn.pn.pn.i.i, %bb.f ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encoding8EncodingEBH_(ptr noalias noundef nonnull align 8 dereferenceable(256) %i.v) #24
          to label %.body.i unwind label %bb.ar, !noalias !472

bb.c:                                             ; preds = %bb.b
  %i.cj = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecmEECs2JiOgHzbbc7_10tokenizers.exit27

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !471
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !471
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !471
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !471
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !471
  %i.ck = load ptr, ptr %i.ai, align 8, !alias.scope !470, !noalias !469, !nonnull !6, !noundef !6
  %i.cl = load i64, ptr %i.aj, align 8, !alias.scope !470, !noalias !469, !noundef !6
  store ptr @26, ptr %i.p, align 8, !noalias !471
  store i64 1, ptr %i.ak, align 8, !noalias !471
  store ptr %i.ck, ptr %i.al, align 8, !noalias !471
  store i64 %i.cl, ptr %i.am, align 8, !noalias !471
  store ptr @26, ptr %i.an, align 8, !noalias !471
  store i64 1, ptr %i.ao, align 8, !noalias !471
  invoke void @_RNvXs0_NtCscdodAO9FK5_5alloc5sliceSRSmINtB5_6ConcatmE6concatCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.q, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.p, i64 noundef 3)
          to label %bb.i unwind label %bb.h, !noalias !471

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecmEECs2JiOgHzbbc7_10tokenizers.exit22: ; preds = %bb.k, %bb.h
  %.pn.pn.pn.pn.pn.pn.i.i = phi { ptr, i32 } [ %i.co, %bb.h ], [ %.pn.pn.pn.pn.pn.i.i, %bb.k ]
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecmENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.u)
          to label %bb.f unwind label %bb.e, !noalias !471

bb.e:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecmEECs2JiOgHzbbc7_10tokenizers.exit22
  %i.cm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.u)
          to label %.body7 unwind label %bb.g, !noalias !471

bb.f:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecmEECs2JiOgHzbbc7_10tokenizers.exit22
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.u)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecmEECs2JiOgHzbbc7_10tokenizers.exit27 unwind label %bb.ar

bb.g:                                             ; preds = %bb.e
  %i.cn = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #23, !noalias !471
  unreachable

bb.h:                                             ; preds = %bb.d
  %i.co = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecmEECs2JiOgHzbbc7_10tokenizers.exit22

bb.i:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !471
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !471
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !471
  %i.cp = load ptr, ptr %.val.i.pre, align 8, !noalias !471, !nonnull !6, !align !8, !noundef !6 ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 32
  %i.cr = load ptr, ptr %i.ap, align 8, !alias.scope !470, !noalias !469, !nonnull !6, !noundef !6
  %i.cs = load i64, ptr %i.aq, align 8, !alias.scope !470, !noalias !469, !noundef !6
  store ptr %i.cq, ptr %i.n, align 8, !noalias !471
  store i64 1, ptr %i.ar, align 8, !noalias !471
  store ptr %i.cr, ptr %i.as, align 8, !noalias !471
  store i64 %i.cs, ptr %i.at, align 8, !noalias !471
  store ptr %i.cp, ptr %i.au, align 8, !noalias !471
  store i64 1, ptr %i.av, align 8, !noalias !471
  invoke void @_RNvXs0_NtCscdodAO9FK5_5alloc5sliceSRSNtNtB7_6string6StringINtB5_6ConcatBz_E6concatCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.o, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.n, i64 noundef 3)
          to label %bb.n unwind label %bb.m, !noalias !471

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtBG_6string6StringEECs2JiOgHzbbc7_10tokenizers.exit: ; preds = %bb.p, %bb.m
  %.pn.pn.pn.pn.pn.i.i = phi { ptr, i32 } [ %i.cv, %bb.m ], [ %.pn.pn.pn.pn.i.i, %bb.p ]
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecmENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.q)
          to label %bb.k unwind label %bb.j, !noalias !471

bb.j:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtBG_6string6StringEECs2JiOgHzbbc7_10tokenizers.exit
  %i.ct = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.q)
          to label %.body7 unwind label %bb.l, !noalias !471

bb.k:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtBG_6string6StringEECs2JiOgHzbbc7_10tokenizers.exit
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.q)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecmEECs2JiOgHzbbc7_10tokenizers.exit22 unwind label %bb.ar

bb.l:                                             ; preds = %bb.j
  %i.cu = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #23, !noalias !471
  unreachable

bb.m:                                             ; preds = %bb.i
  %i.cv = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtBG_6string6StringEECs2JiOgHzbbc7_10tokenizers.exit

bb.n:                                             ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !471
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !471
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !471
  %i.cw = load ptr, ptr %i.aw, align 8, !alias.scope !470, !noalias !469, !nonnull !6, !noundef !6
  %i.cx = load i64, ptr %i.ax, align 8, !alias.scope !470, !noalias !469, !noundef !6
  store ptr @4, ptr %i.l, align 8, !noalias !471
  store i64 1, ptr %i.ay, align 8, !noalias !471
  store ptr %i.cw, ptr %i.az, align 8, !noalias !471
  store i64 %i.cx, ptr %i.ba, align 8, !noalias !471
  store ptr @4, ptr %i.bb, align 8, !noalias !471
  store i64 1, ptr %i.bc, align 8, !noalias !471
  invoke void @_RNvXs0_NtCscdodAO9FK5_5alloc5sliceSRSINtNtCs4NRVxsYgnAr_4core6option6OptionmEINtB5_6ConcatBz_E6concatCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.m, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.l, i64 noundef 3)
          to label %bb.s unwind label %bb.r, !noalias !471

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB4_6option6OptionmEEECs2JiOgHzbbc7_10tokenizers.exit: ; preds = %bb.u, %bb.r
  %.pn.pn.pn.pn.i.i = phi { ptr, i32 } [ %i.da, %bb.r ], [ %.pn.pn.pn.i.i, %bb.u ]
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.o)
          to label %bb.p unwind label %bb.o, !noalias !471

bb.o:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB4_6option6OptionmEEECs2JiOgHzbbc7_10tokenizers.exit
  %i.cy = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtB7_6string6StringENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.o)
          to label %.body7 unwind label %bb.q, !noalias !471

bb.p:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB4_6option6OptionmEEECs2JiOgHzbbc7_10tokenizers.exit
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtB7_6string6StringENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.o)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtBG_6string6StringEECs2JiOgHzbbc7_10tokenizers.exit unwind label %bb.ar

bb.q:                                             ; preds = %bb.o
  %i.cz = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #23, !noalias !471
  unreachable

bb.r:                                             ; preds = %bb.n
  %i.da = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB4_6option6OptionmEEECs2JiOgHzbbc7_10tokenizers.exit

bb.s:                                             ; preds = %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !471
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !471
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !471
  %i.db = load ptr, ptr %i.bd, align 8, !alias.scope !470, !noalias !469, !nonnull !6, !noundef !6
  %i.dc = load i64, ptr %i.be, align 8, !alias.scope !470, !noalias !469, !noundef !6
  store ptr @27, ptr %i.j, align 8, !noalias !471
  store i64 1, ptr %i.bf, align 8, !noalias !471
  store ptr %i.db, ptr %i.bg, align 8, !noalias !471
  store i64 %i.dc, ptr %i.bh, align 8, !noalias !471
  store ptr @27, ptr %i.bi, align 8, !noalias !471
  store i64 1, ptr %i.bj, align 8, !noalias !471
  invoke void @_RNvXs0_NtCscdodAO9FK5_5alloc5sliceSRSTjjEINtB5_6ConcatBz_E6concatCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.k, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.j, i64 noundef 3)
          to label %bb.x unwind label %bb.w, !noalias !471

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecTjjEEECs2JiOgHzbbc7_10tokenizers.exit: ; preds = %bb.aa, %bb.w
  %.pn.pn.pn.i.i = phi { ptr, i32 } [ %i.df, %bb.w ], [ %.pn.pn.i.i, %bb.aa ]
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtCs4NRVxsYgnAr_4core6option6OptionmEENtNtNtBJ_3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.m)
          to label %bb.u unwind label %bb.t, !noalias !471

bb.t:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecTjjEEECs2JiOgHzbbc7_10tokenizers.exit
  %i.dd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecINtNtCs4NRVxsYgnAr_4core6option6OptionmEENtNtNtBQ_3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.m)
          to label %.body7 unwind label %bb.v, !noalias !471

bb.u:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecTjjEEECs2JiOgHzbbc7_10tokenizers.exit
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecINtNtCs4NRVxsYgnAr_4core6option6OptionmEENtNtNtBQ_3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.m)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB4_6option6OptionmEEECs2JiOgHzbbc7_10tokenizers.exit unwind label %bb.ar

bb.v:                                             ; preds = %bb.t
  %i.de = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #23, !noalias !471
  unreachable

bb.w:                                             ; preds = %bb.s
  %i.df = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecTjjEEECs2JiOgHzbbc7_10tokenizers.exit

bb.x:                                             ; preds = %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !471
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !471
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !471
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !471
  call void @llvm.experimental.noalias.scope.decl(metadata !473)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !474
  invoke void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, i64 noundef %i.cg, i1 noundef zeroext true, i64 noundef 4, i64 noundef 4)
          to label %.noexc.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !471

.noexc.i.i:                                       ; preds = %bb.x
  %i.dg = load i64, ptr %i.c, align 8, !range !14, !noalias !474, !noundef !6
  %i.dh = trunc nuw i64 %i.dg to i1
  %i.di = load i64, ptr %i.bk, align 8, !range !16, !noalias !474, !noundef !6 ; 2 uses
  br i1 %i.dh, label %bb.y, label %bb.ac, !prof !15

bb.y:                                             ; preds = %.noexc.i.i
  %i.dj = load i64, ptr %i.bl, align 8, !noalias !474
  invoke void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef %i.di, i64 %i.dj) #26
          to label %.noexc12.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !471

.noexc12.i.i:                                     ; preds = %bb.y
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecmEECs2JiOgHzbbc7_10tokenizers.exit: ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.aj, %bb.ad
  %.pn.pn.i.i = phi { ptr, i32 } [ %.pn.i.i, %bb.aj ], [ %i.dn, %bb.ad ], [ %lpad.loopexit.split-lp160, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecTjjEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.k)
          to label %bb.aa unwind label %bb.z, !noalias !471

bb.z:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecmEECs2JiOgHzbbc7_10tokenizers.exit
  %i.dk = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecTjjEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.k)
          to label %.body7 unwind label %bb.ab, !noalias !471

bb.aa:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecmEECs2JiOgHzbbc7_10tokenizers.exit
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecTjjEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.k)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecTjjEEECs2JiOgHzbbc7_10tokenizers.exit unwind label %bb.ar

bb.ab:                                            ; preds = %bb.z
  %i.dl = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #23, !noalias !471
  unreachable

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.x, %bb.y
  %lpad.loopexit.split-lp160 = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecmEECs2JiOgHzbbc7_10tokenizers.exit

bb.ac:                                            ; preds = %.noexc.i.i
  %i.dm = load ptr, ptr %i.bl, align 8, !noalias !474, !nonnull !6, !noundef !6 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !474
  store i64 %i.di, ptr %i.g, align 8, !alias.scope !473, !noalias !471
  store ptr %i.dm, ptr %i.bm, align 8, !alias.scope !473, !noalias !471
  store i64 %i.cg, ptr %i.bn, align 8, !alias.scope !473, !noalias !471
  store ptr @28, ptr %i.h, align 8, !noalias !471
  store i64 1, ptr %i.bo, align 8, !noalias !471
  store ptr %i.dm, ptr %i.bp, align 8, !noalias !471
  store i64 %i.cg, ptr %i.bq, align 8, !noalias !471
  store ptr @28, ptr %i.br, align 8, !noalias !471
  store i64 1, ptr %i.bs, align 8, !noalias !471
  invoke void @_RNvXs0_NtCscdodAO9FK5_5alloc5sliceSRSmINtB5_6ConcatmE6concatCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.h, i64 noundef 3)
          to label %bb.ae unwind label %bb.ad, !noalias !471

bb.ad:                                            ; preds = %bb.ac
  %i.dn = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecmEECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef align 8 dereferenceable(24) %i.g) #24
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecmEECs2JiOgHzbbc7_10tokenizers.exit unwind label %bb.ar, !noalias !471

bb.ae:                                            ; preds = %bb.ac
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecmENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %bb.ag unwind label %bb.af, !noalias !471

bb.af:                                            ; preds = %bb.ae
  %i.do = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %.body.i.i unwind label %bb.ah, !noalias !471

bb.ag:                                            ; preds = %bb.ae
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecmEECs2JiOgHzbbc7_10tokenizers.exit.i.i unwind label %.loopexit.split-lp34.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !471

bb.ah:                                            ; preds = %bb.af
  %i.dp = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #23, !noalias !471
  unreachable

.body.i.i:                                        ; preds = %.loopexit.split-lp34.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp39.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.am, %bb.af
  %.pn.i.i = phi { ptr, i32 } [ %lpad.loopexit.split-lp165, %.loopexit.split-lp39.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %i.do, %bb.af ], [ %i.ea, %bb.am ], [ %lpad.loopexit.split-lp162, %.loopexit.split-lp34.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecmENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %bb.aj unwind label %bb.ai, !noalias !471

bb.ai:                                            ; preds = %.body.i.i
  %i.dq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %.body7 unwind label %bb.ak, !noalias !471

bb.aj:                                            ; preds = %.body.i.i
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecmEECs2JiOgHzbbc7_10tokenizers.exit unwind label %bb.ar

bb.ak:                                            ; preds = %bb.ai
  %i.dr = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #23, !noalias !471
  unreachable

.loopexit.split-lp34.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecmEECs2JiOgHzbbc7_10tokenizers.exit.i.i, %bb.ag, %bb.al
  %lpad.loopexit.split-lp162 = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecmEECs2JiOgHzbbc7_10tokenizers.exit.i.i: ; preds = %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !471
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !471
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !471
  %i.ds = load i64, ptr %i.bt, align 8, !noalias !471, !noundef !6 ; 5 uses
  %i.dt = icmp ult i64 %i.ds, 2305843009213693952
  call void @llvm.assume(i1 %i.dt)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !475
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !475
  invoke void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef %i.ds, i1 noundef zeroext false, i64 noundef 4, i64 noundef 4)
          to label %.noexc14.i.i unwind label %.loopexit.split-lp34.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !471

.noexc14.i.i:                                     ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecmEECs2JiOgHzbbc7_10tokenizers.exit.i.i
  %i.du = load i64, ptr %i.a, align 8, !range !14, !noalias !475, !noundef !6
  %i.dv = trunc nuw i64 %i.du to i1
  %i.dw = load i64, ptr %i.bu, align 8, !range !16, !noalias !475, !noundef !6 ; 3 uses
  br i1 %i.dv, label %bb.al, label %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs2JiOgHzbbc7_10tokenizers.exit.i.i.i, !prof !15

bb.al:                                            ; preds = %.noexc14.i.i
  %i.dx = load i64, ptr %i.bv, align 8, !noalias !475
  invoke void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef %i.dw, i64 %i.dx) #26
          to label %.noexc15.i.i unwind label %.loopexit.split-lp34.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !471

.noexc15.i.i:                                     ; preds = %bb.al
  unreachable

_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs2JiOgHzbbc7_10tokenizers.exit.i.i.i: ; preds = %.noexc14.i.i
  %i.dy = load ptr, ptr %i.bv, align 8, !noalias !475, !nonnull !6, !noundef !6
  %i.dz = icmp ule i64 %i.ds, %i.dw
  call void @llvm.assume(i1 %i.dz)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !475
  store i64 %i.dw, ptr %i.b, align 8, !noalias !475
  store ptr %i.dy, ptr %i.bw, align 8, !noalias !475
  store i64 0, ptr %i.bx, align 8, !noalias !475
  invoke void @_RNvMs3_NtCscdodAO9FK5_5alloc3vecINtB5_3VecmE11extend_withCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b, i64 noundef %i.ds, i32 noundef 1)
          to label %bb.ao unwind label %bb.am, !noalias !475

bb.am:                                            ; preds = %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs2JiOgHzbbc7_10tokenizers.exit.i.i.i
  %i.ea = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecmEECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef align 8 dereferenceable(24) %i.b) #24
          to label %.body.i.i unwind label %bb.an, !noalias !475

bb.an:                                            ; preds = %bb.am
  %i.eb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #23, !noalias !475
  unreachable

bb.ao:                                            ; preds = %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs2JiOgHzbbc7_10tokenizers.exit.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.f, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false), !noalias !471
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !475
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !471
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !471
  call void @_RNvCs9wFQrvczXsK_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #25, !noalias !471
  %i.ec = call noundef align 8 dereferenceable_or_null(24) ptr @_RNvCs9wFQrvczXsK_7___rustc12___rust_alloc(i64 noundef range(i64 24, 49) 24, i64 noundef 8) #25, !noalias !471 ; 5 uses
  %i.ed = icmp eq ptr %i.ec, null
  br i1 %i.ed, label %bb.ap, label %_RNvNtCscdodAO9FK5_5alloc5boxed14box_new_uninit.exit.i.i, !prof !15

bb.ap:                                            ; preds = %bb.ao
  invoke void @_RNvNtCscdodAO9FK5_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 24) #26
          to label %.noexc19.i.i unwind label %.loopexit.split-lp39.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !471

.noexc19.i.i:                                     ; preds = %bb.ap
  unreachable

.loopexit.split-lp39.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_RNvNtCscdodAO9FK5_5alloc5boxed14box_new_uninit.exit.i.i, %bb.ap
  %lpad.loopexit.split-lp165 = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecmEECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef align 8 dereferenceable(24) %i.f) #24
          to label %.body.i.i unwind label %bb.ar, !noalias !471

_RNvNtCscdodAO9FK5_5alloc5boxed14box_new_uninit.exit.i.i: ; preds = %bb.ao
  %i.ee = add nsw i64 %i.ds, -1
  store i64 0, ptr %i.ec, align 8, !noalias !471
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ec, i64 8
  store i64 1, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !471
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ec, i64 16
  store i64 %i.ee, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !noalias !471
  store i64 1, ptr %i.d, align 8, !noalias !471
  store ptr %i.ec, ptr %i.by, align 8, !noalias !471
  store i64 1, ptr %i.bz, align 8, !noalias !471
  invoke void @_RINvXsb_NtCsiTTz6JxaXqu_5ahash8hash_mapINtB6_8AHashMapjINtNtNtCs4NRVxsYgnAr_4core3ops5range5RangejEEINtNtNtNtBY_4iter6traits7collect12FromIteratorTjBR_EE9from_iterINtNtCscdodAO9FK5_5alloc3vec3VecB2k_EECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.e, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.d)
          to label %bb.aq unwind label %.loopexit.split-lp39.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !471

bb.aq:                                            ; preds = %_RNvNtCscdodAO9FK5_5alloc5boxed14box_new_uninit.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !471
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.01.i, ptr noundef nonnull align 8 dereferenceable(24) %i.u, i64 24, i1 false), !noalias !476
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.01.24..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(24) %i.q, i64 24, i1 false), !noalias !476
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.01.48..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(24) %i.o, i64 24, i1 false), !noalias !476
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.01.72..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(24) %i.m, i64 24, i1 false), !noalias !476
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.01.96..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(24) %i.k, i64 24, i1 false), !noalias !476
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.01.120..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(24) %i.i, i64 24, i1 false), !noalias !476
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.01.144..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false), !noalias !476
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.13.i, ptr noundef nonnull align 8 dereferenceable(64) %i.e, i64 64, i1 false), !noalias !476
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !471
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !471
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !471
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !471
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !471
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !471
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !471
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !471
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encoding8EncodingEBH_(ptr noalias noundef nonnull align 8 dereferenceable(256) %i.v)
          to label %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map12map_try_foldNtNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encoding8EncodingBZ_INtNtNtCscdodAO9FK5_5alloc3vec13in_place_drop11InPlaceDropBZ_EINtNtBa_6result6ResultB20_zENCNCNvXs0_NtNtB15_10processors4bertNtB3C_14BertProcessingNtB13_13PostProcessor17process_encodings00NCINvNtB25_16in_place_collect24write_in_place_with_dropBZ_E0E0B15_.exit unwind label %bb.as, !noalias !469

bb.ar:                                            ; preds = %bb.f, %bb.k, %bb.p, %bb.u, %bb.aa, %bb.aj, %.loopexit.split-lp39.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.ad, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecmEECs2JiOgHzbbc7_10tokenizers.exit27
  %i.ef = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  br label %.body7

.body7:                                           ; preds = %bb.z, %bb.o, %bb.ar, %bb.e, %bb.j, %bb.t, %bb.ai
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #23, !noalias !472
  unreachable

bb.as:                                            ; preds = %bb.aq
  %i.eg = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.noexc._crit_edge:                                ; preds = %.noexc, %.noexc.preheader
  resume { ptr, i32 } %eh.lpad-body.i

.body.i:                                          ; preds = %bb.as, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecmEECs2JiOgHzbbc7_10tokenizers.exit27
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.eg, %bb.as ], [ %.pn.pn.pn.pn.pn.pn.pn.i.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecmEECs2JiOgHzbbc7_10tokenizers.exit27 ]
  %i.eh = invoke noundef i64 @_RNvMNtNtCscdodAO9FK5_5alloc3vec13in_place_dropINtB2_11InPlaceDropNtNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encoding8EncodingE3lenB17_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.w)
          to label %.noexc.preheader unwind label %bb.aw ; 4 uses

.noexc.preheader:                                 ; preds = %.body.i
  %i.ei = icmp eq i64 %i.eh, 0
  br i1 %i.ei, label %.noexc._crit_edge, label %.lr.ph155

.noexc:                                           ; preds = %.lr.ph155
  %i.ej = icmp eq i64 %i.el, %i.eh
  br i1 %i.ej, label %.noexc._crit_edge, label %.lr.ph155

.lr.ph155:                                        ; preds = %.noexc.preheader, %.noexc
  %.sroa.0.0.i.i.i154 = phi i64 [ %i.el, %.noexc ], [ 0, %.noexc.preheader ] ; 2 uses
  %i.ek = getelementptr inbounds nuw [256 x i8], ptr %1, i64 %.sroa.0.0.i.i.i154
  %i.el = add nuw nsw i64 %.sroa.0.0.i.i.i154, 1  ; 4 uses
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encoding8EncodingEBH_(ptr noalias noundef align 8 dereferenceable(256) %i.ek)
          to label %.noexc unwind label %bb.au, !noalias !469

bb.at:                                            ; preds = %.lr.ph158
  %i.em = add i64 %.sroa.0.1.i.i.i156, 1          ; 2 uses
  %i.en = icmp eq i64 %i.em, %i.eh
  br i1 %i.en, label %.body, label %.lr.ph158

bb.au:                                            ; preds = %.lr.ph155
  %i.eo = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  %i.ep = icmp eq i64 %i.el, %i.eh
  br i1 %i.ep, label %.body, label %.lr.ph158

.lr.ph158:                                        ; preds = %bb.au, %bb.at
  %.sroa.0.1.i.i.i156 = phi i64 [ %i.em, %bb.at ], [ %i.el, %bb.au ] ; 2 uses
  %i.eq = getelementptr inbounds nuw [256 x i8], ptr %1, i64 %.sroa.0.1.i.i.i156
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encoding8EncodingEBH_(ptr noalias noundef align 8 dereferenceable(256) %i.eq) #24
          to label %bb.at unwind label %bb.av, !noalias !469

bb.av:                                            ; preds = %.lr.ph158
  %i.er = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #23, !noalias !469
  unreachable

bb.aw:                                            ; preds = %.body.i
  %i.es = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  br label %.body

.body:                                            ; preds = %bb.at, %bb.au, %bb.aw
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #23, !noalias !469
  unreachable

_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map12map_try_foldNtNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encoding8EncodingBZ_INtNtNtCscdodAO9FK5_5alloc3vec13in_place_drop11InPlaceDropBZ_EINtNtBa_6result6ResultB20_zENCNCNvXs0_NtNtB15_10processors4bertNtB3C_14BertProcessingNtB13_13PostProcessor17process_encodings00NCINvNtB25_16in_place_collect24write_in_place_with_dropBZ_E0E0B15_.exit: ; preds = %bb.aq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !469
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(168) %.sroa.4.087, ptr noundef nonnull align 8 dereferenceable(168) %.sroa.01.i, i64 168, i1 false), !noalias !469
  %.sroa.4.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.4.087, i64 192
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.4.sroa.7.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.13.i, i64 64, i1 false), !noalias !469
  %.sroa.4.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.4.087, i64 168
  store i64 0, ptr %.sroa.4.sroa.4.0..sroa_idx.i, align 8, !noalias !469
  %.sroa.4.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.4.087, i64 176
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.4.sroa.5.0..sroa_idx.i, align 8, !noalias !469
  %.sroa.4.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.4.087, i64 184
  store i64 0, ptr %.sroa.4.sroa.6.0..sroa_idx.i, align 8, !noalias !469
  %i.et = getelementptr inbounds nuw i8, ptr %.sroa.4.087, i64 256 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.01.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.13.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !469
  %.not = icmp eq ptr %i.cb, %i.z
  br i1 %.not, label %._crit_edge, label %bb.b

._crit_edge:                                      ; preds = %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map12map_try_foldNtNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encoding8EncodingBZ_INtNtNtCscdodAO9FK5_5alloc3vec13in_place_drop11InPlaceDropBZ_EINtNtBa_6result6ResultB20_zENCNCNvXs0_NtNtB15_10processors4bertNtB3C_14BertProcessingNtB13_13PostProcessor17process_encodings00NCINvNtB25_16in_place_collect24write_in_place_with_dropBZ_E0E0B15_.exit, %bb.a
  %.sroa.4.0.lcssa = phi ptr [ %2, %bb.a ], [ %i.et, %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map12map_try_foldNtNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encoding8EncodingBZ_INtNtNtCscdodAO9FK5_5alloc3vec13in_place_drop11InPlaceDropBZ_EINtNtBa_6result6ResultB20_zENCNCNvXs0_NtNtB15_10processors4bertNtB3C_14BertProcessingNtB13_13PostProcessor17process_encodings00NCINvNtB25_16in_place_collect24write_in_place_with_dropBZ_E0E0B15_.exit ]
  %i.eu = insertvalue { ptr, ptr } poison, ptr %1, 0
  %i.ev = insertvalue { ptr, ptr } %i.eu, ptr %.sroa.4.0.lcssa, 1
  ret { ptr, ptr } %i.ev
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, ptr } @_RINvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB6_8IntoIterNtNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encoding8EncodingENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator8try_foldINtNtB8_13in_place_drop11InPlaceDropBW_ENCINvNtNtB21_8adapters3map12map_try_foldBW_BW_B2Z_INtNtB23_6result6ResultB2Z_zENCNCNvXs0_NtNtB12_10processors4bertNtB54_14BertProcessingNtB10_13PostProcessor17process_encodings0s_0NCINvNtB8_16in_place_collect24write_in_place_with_dropBW_E0E0B4r_EB12_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %0, ptr noundef %1, ptr noundef %2, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %3, ptr nofree noundef readnone captures(none) %4) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 8 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %i.e = alloca [64 x i8], align 8                ; 4 uses
  %i.f = alloca [24 x i8], align 8                ; 5 uses
  %i.g = alloca [24 x i8], align 8                ; 9 uses
  %i.h = alloca [32 x i8], align 8                ; 7 uses
  %i.i = alloca [24 x i8], align 8                ; 7 uses
  %i.j = alloca [32 x i8], align 8                ; 7 uses
  %i.k = alloca [24 x i8], align 8                ; 7 uses
  %i.l = alloca [32 x i8], align 8                ; 7 uses
  %i.m = alloca [24 x i8], align 8                ; 7 uses
  %i.n = alloca [32 x i8], align 8                ; 7 uses
  %i.o = alloca [24 x i8], align 8                ; 7 uses
  %i.p = alloca [32 x i8], align 8                ; 7 uses
  %i.q = alloca [24 x i8], align 8                ; 7 uses
  %i.r = alloca [4 x i8], align 4                 ; 4 uses
  %i.s = alloca [32 x i8], align 8                ; 7 uses
  %i.t = alloca [24 x i8], align 8                ; 8 uses
  %i.u = alloca [256 x i8], align 8               ; 15 uses
  %.sroa.01.i = alloca [168 x i8], align 8        ; 10 uses
  %.sroa.13.i = alloca [64 x i8], align 8         ; 4 uses
  %i.v = alloca [16 x i8], align 8                ; 5 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.promoted = load ptr, ptr %i.x, align 8        ; 2 uses
  %i.y = load ptr, ptr %i.w, align 8, !nonnull !6, !noundef !6 ; 2 uses
  %.not86 = icmp eq ptr %.promoted, %i.y
  br i1 %.not86, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.z = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.aa = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.ac = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.ad = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.ae = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  %i.af = getelementptr inbounds nuw i8, ptr %i.u, i64 32
  %i.ag = getelementptr inbounds nuw i8, ptr %i.u, i64 40
  %i.ah = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.ai = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.aj = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %i.ak = getelementptr inbounds nuw i8, ptr %i.u, i64 56
  %i.al = getelementptr inbounds nuw i8, ptr %i.u, i64 64
  %i.am = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.an = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.ao = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %i.ap = getelementptr inbounds nuw i8, ptr %i.u, i64 80
  %i.aq = getelementptr inbounds nuw i8, ptr %i.u, i64 88
  %i.ar = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.as = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.at = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %i.au = getelementptr inbounds nuw i8, ptr %i.u, i64 104
  %i.av = getelementptr inbounds nuw i8, ptr %i.u, i64 112
end_hunk_3
begin_hunk_4_@_RINvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB6_8IntoIterNtNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encoding8EncodingENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator8try_foldINtNtB8_13in_place_drop11InPlaceDropBW_ENCINvNtNtB21_8adapters3map12map_try_foldBW_BW_B2Z_INtNtB23_6result6ResultB2Z_zENCNCNvXs0_NtNtB12_10processors4bertNtB54_14BertProcessingNtB10_13PostProcessor17process_encodings0s_0NCINvNtB8_16in_place_collect24write_in_place_with_dropBW_E0E0B4r_EB12_:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.01.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.13.i)
  call void @llvm.experimental.noalias.scope.decl(metadata !487)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !488
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !488
  %i.bp = load ptr, ptr %i.aa, align 8, !alias.scope !487, !noalias !486, !nonnull !6, !noundef !6
  %i.bq = load i64, ptr %i.ab, align 8, !alias.scope !487, !noalias !486, !noundef !6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !488
  %i.br = load ptr, ptr %.val.i.pre, align 8, !noalias !488, !nonnull !6, !align !8, !noundef !6
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 24
  %i.bt = load i32, ptr %i.bs, align 8, !noalias !488, !noundef !6
  store i32 %i.bt, ptr %i.r, align 4, !noalias !488
  store ptr %i.bp, ptr %i.s, align 8, !noalias !488
  store i64 %i.bq, ptr %i.ac, align 8, !noalias !488
  store ptr %i.r, ptr %i.ad, align 8, !noalias !488
  store i64 1, ptr %i.ae, align 8, !noalias !488
  invoke void @_RNvXs0_NtCscdodAO9FK5_5alloc5sliceSRSmINtB5_6ConcatmE6concatCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.t, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.s, i64 noundef 2)
          to label %bb.d unwind label %bb.c, !noalias !488

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecmEECs2JiOgHzbbc7_10tokenizers.exit27: ; preds = %bb.f, %bb.c
  %.pn.pn.pn.pn.pn.pn.pn.i.i = phi { ptr, i32 } [ %i.bu, %bb.c ], [ %.pn.pn.pn.pn.pn.pn.i.i, %bb.f ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encoding8EncodingEBH_(ptr noalias noundef nonnull align 8 dereferenceable(256) %i.u) #24
          to label %.body.i unwind label %bb.ar, !noalias !489

bb.c:                                             ; preds = %bb.b
  %i.bu = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecmEECs2JiOgHzbbc7_10tokenizers.exit27

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !488
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !488
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !488
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !488
  %i.bv = load ptr, ptr %i.af, align 8, !alias.scope !487, !noalias !486, !nonnull !6, !noundef !6
  %i.bw = load i64, ptr %i.ag, align 8, !alias.scope !487, !noalias !486, !noundef !6 ; 4 uses
  store ptr %i.bv, ptr %i.p, align 8, !noalias !488
  store i64 %i.bw, ptr %i.ah, align 8, !noalias !488
  store ptr @28, ptr %i.ai, align 8, !noalias !488
  store i64 1, ptr %i.aj, align 8, !noalias !488
  invoke void @_RNvXs0_NtCscdodAO9FK5_5alloc5sliceSRSmINtB5_6ConcatmE6concatCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.q, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.p, i64 noundef 2)
          to label %bb.i unwind label %bb.h, !noalias !488

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecmEECs2JiOgHzbbc7_10tokenizers.exit22: ; preds = %bb.k, %bb.h
  %.pn.pn.pn.pn.pn.pn.i.i = phi { ptr, i32 } [ %i.bz, %bb.h ], [ %.pn.pn.pn.pn.pn.i.i, %bb.k ]
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecmENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.t)
          to label %bb.f unwind label %bb.e, !noalias !488

bb.e:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecmEECs2JiOgHzbbc7_10tokenizers.exit22
  %i.bx = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.t)
          to label %.body7 unwind label %bb.g, !noalias !488

bb.f:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecmEECs2JiOgHzbbc7_10tokenizers.exit22
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.t)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecmEECs2JiOgHzbbc7_10tokenizers.exit27 unwind label %bb.ar

bb.g:                                             ; preds = %bb.e
  %i.by = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #23, !noalias !488
  unreachable

bb.h:                                             ; preds = %bb.d
  %i.bz = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecmEECs2JiOgHzbbc7_10tokenizers.exit22

bb.i:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !488
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !488
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !488
  %i.ca = load ptr, ptr %i.ak, align 8, !alias.scope !487, !noalias !486, !nonnull !6, !noundef !6
  %i.cb = load i64, ptr %i.al, align 8, !alias.scope !487, !noalias !486, !noundef !6
  %i.cc = load ptr, ptr %.val.i.pre, align 8, !noalias !488, !nonnull !6, !align !8, !noundef !6
  store ptr %i.ca, ptr %i.n, align 8, !noalias !488
  store i64 %i.cb, ptr %i.am, align 8, !noalias !488
  store ptr %i.cc, ptr %i.an, align 8, !noalias !488
  store i64 1, ptr %i.ao, align 8, !noalias !488
  invoke void @_RNvXs0_NtCscdodAO9FK5_5alloc5sliceSRSNtNtB7_6string6StringINtB5_6ConcatBz_E6concatCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.o, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.n, i64 noundef 2)
          to label %bb.n unwind label %bb.m, !noalias !488

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtBG_6string6StringEECs2JiOgHzbbc7_10tokenizers.exit: ; preds = %bb.p, %bb.m
  %.pn.pn.pn.pn.pn.i.i = phi { ptr, i32 } [ %i.cf, %bb.m ], [ %.pn.pn.pn.pn.i.i, %bb.p ]
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecmENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.q)
          to label %bb.k unwind label %bb.j, !noalias !488

bb.j:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtBG_6string6StringEECs2JiOgHzbbc7_10tokenizers.exit
  %i.cd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.q)
          to label %.body7 unwind label %bb.l, !noalias !488

bb.k:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtBG_6string6StringEECs2JiOgHzbbc7_10tokenizers.exit
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.q)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecmEECs2JiOgHzbbc7_10tokenizers.exit22 unwind label %bb.ar

bb.l:                                             ; preds = %bb.j
  %i.ce = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #23, !noalias !488
  unreachable

bb.m:                                             ; preds = %bb.i
  %i.cf = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtBG_6string6StringEECs2JiOgHzbbc7_10tokenizers.exit

bb.n:                                             ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !488
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !488
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !488
  %i.cg = load ptr, ptr %i.ap, align 8, !alias.scope !487, !noalias !486, !nonnull !6, !noundef !6
  %i.ch = load i64, ptr %i.aq, align 8, !alias.scope !487, !noalias !486, !noundef !6
  store ptr %i.cg, ptr %i.l, align 8, !noalias !488
  store i64 %i.ch, ptr %i.ar, align 8, !noalias !488
  store ptr @4, ptr %i.as, align 8, !noalias !488
  store i64 1, ptr %i.at, align 8, !noalias !488
  invoke void @_RNvXs0_NtCscdodAO9FK5_5alloc5sliceSRSINtNtCs4NRVxsYgnAr_4core6option6OptionmEINtB5_6ConcatBz_E6concatCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.m, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.l, i64 noundef 2)
          to label %bb.s unwind label %bb.r, !noalias !488

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB4_6option6OptionmEEECs2JiOgHzbbc7_10tokenizers.exit: ; preds = %bb.u, %bb.r
  %.pn.pn.pn.pn.i.i = phi { ptr, i32 } [ %i.ck, %bb.r ], [ %.pn.pn.pn.i.i, %bb.u ]
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.o)
          to label %bb.p unwind label %bb.o, !noalias !488

bb.o:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB4_6option6OptionmEEECs2JiOgHzbbc7_10tokenizers.exit
  %i.ci = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtB7_6string6StringENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.o)
          to label %.body7 unwind label %bb.q, !noalias !488

bb.p:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB4_6option6OptionmEEECs2JiOgHzbbc7_10tokenizers.exit
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtB7_6string6StringENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.o)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtBG_6string6StringEECs2JiOgHzbbc7_10tokenizers.exit unwind label %bb.ar

bb.q:                                             ; preds = %bb.o
  %i.cj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #23, !noalias !488
  unreachable

bb.r:                                             ; preds = %bb.n
  %i.ck = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB4_6option6OptionmEEECs2JiOgHzbbc7_10tokenizers.exit

bb.s:                                             ; preds = %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !488
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !488
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !488
  %i.cl = load ptr, ptr %i.au, align 8, !alias.scope !487, !noalias !486, !nonnull !6, !noundef !6
  %i.cm = load i64, ptr %i.av, align 8, !alias.scope !487, !noalias !486, !noundef !6
  store ptr %i.cl, ptr %i.j, align 8, !noalias !488
  store i64 %i.cm, ptr %i.aw, align 8, !noalias !488
  store ptr @27, ptr %i.ax, align 8, !noalias !488
  store i64 1, ptr %i.ay, align 8, !noalias !488
  invoke void @_RNvXs0_NtCscdodAO9FK5_5alloc5sliceSRSTjjEINtB5_6ConcatBz_E6concatCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.k, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.j, i64 noundef 2)
          to label %bb.x unwind label %bb.w, !noalias !488

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecTjjEEECs2JiOgHzbbc7_10tokenizers.exit: ; preds = %bb.aa, %bb.w
  %.pn.pn.pn.i.i = phi { ptr, i32 } [ %i.cp, %bb.w ], [ %.pn.pn.i.i, %bb.aa ]
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtCs4NRVxsYgnAr_4core6option6OptionmEENtNtNtBJ_3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.m)
          to label %bb.u unwind label %bb.t, !noalias !488

bb.t:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecTjjEEECs2JiOgHzbbc7_10tokenizers.exit
  %i.cn = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecINtNtCs4NRVxsYgnAr_4core6option6OptionmEENtNtNtBQ_3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.m)
          to label %.body7 unwind label %bb.v, !noalias !488

bb.u:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecTjjEEECs2JiOgHzbbc7_10tokenizers.exit
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecINtNtCs4NRVxsYgnAr_4core6option6OptionmEENtNtNtBQ_3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.m)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB4_6option6OptionmEEECs2JiOgHzbbc7_10tokenizers.exit unwind label %bb.ar

bb.v:                                             ; preds = %bb.t
  %i.co = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #23, !noalias !488
  unreachable

bb.w:                                             ; preds = %bb.s
  %i.cp = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecTjjEEECs2JiOgHzbbc7_10tokenizers.exit

bb.x:                                             ; preds = %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !488
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !488
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !488
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !488
  call void @llvm.experimental.noalias.scope.decl(metadata !490)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !491
  invoke void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, i64 noundef %i.bw, i1 noundef zeroext true, i64 noundef 4, i64 noundef 4)
          to label %.noexc.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !488

.noexc.i.i:                                       ; preds = %bb.x
  %i.cq = load i64, ptr %i.c, align 8, !range !14, !noalias !491, !noundef !6
  %i.cr = trunc nuw i64 %i.cq to i1
  %i.cs = load i64, ptr %i.az, align 8, !range !16, !noalias !491, !noundef !6 ; 2 uses
  br i1 %i.cr, label %bb.y, label %bb.ac, !prof !15

bb.y:                                             ; preds = %.noexc.i.i
  %i.ct = load i64, ptr %i.ba, align 8, !noalias !491
  invoke void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef %i.cs, i64 %i.ct) #26
          to label %.noexc12.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !488

.noexc12.i.i:                                     ; preds = %bb.y
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecmEECs2JiOgHzbbc7_10tokenizers.exit: ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.aj, %bb.ad
  %.pn.pn.i.i = phi { ptr, i32 } [ %.pn.i.i, %bb.aj ], [ %i.cx, %bb.ad ], [ %lpad.loopexit.split-lp160, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecTjjEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.k)
          to label %bb.aa unwind label %bb.z, !noalias !488

bb.z:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecmEECs2JiOgHzbbc7_10tokenizers.exit
  %i.cu = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecTjjEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.k)
          to label %.body7 unwind label %bb.ab, !noalias !488

bb.aa:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecmEECs2JiOgHzbbc7_10tokenizers.exit
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecTjjEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.k)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecTjjEEECs2JiOgHzbbc7_10tokenizers.exit unwind label %bb.ar

bb.ab:                                            ; preds = %bb.z
  %i.cv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #23, !noalias !488
  unreachable

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.x, %bb.y
  %lpad.loopexit.split-lp160 = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecmEECs2JiOgHzbbc7_10tokenizers.exit

bb.ac:                                            ; preds = %.noexc.i.i
  %i.cw = load ptr, ptr %i.ba, align 8, !noalias !491, !nonnull !6, !noundef !6 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !491
  store i64 %i.cs, ptr %i.g, align 8, !alias.scope !490, !noalias !488
  store ptr %i.cw, ptr %i.bb, align 8, !alias.scope !490, !noalias !488
  store i64 %i.bw, ptr %i.bc, align 8, !alias.scope !490, !noalias !488
  store ptr %i.cw, ptr %i.h, align 8, !noalias !488
  store i64 %i.bw, ptr %i.bd, align 8, !noalias !488
  store ptr @28, ptr %i.be, align 8, !noalias !488
  store i64 1, ptr %i.bf, align 8, !noalias !488
  invoke void @_RNvXs0_NtCscdodAO9FK5_5alloc5sliceSRSmINtB5_6ConcatmE6concatCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.h, i64 noundef 2)
          to label %bb.ae unwind label %bb.ad, !noalias !488

bb.ad:                                            ; preds = %bb.ac
  %i.cx = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecmEECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef align 8 dereferenceable(24) %i.g) #24
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecmEECs2JiOgHzbbc7_10tokenizers.exit unwind label %bb.ar, !noalias !488

bb.ae:                                            ; preds = %bb.ac
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecmENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %bb.ag unwind label %bb.af, !noalias !488

bb.af:                                            ; preds = %bb.ae
  %i.cy = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %.body.i.i unwind label %bb.ah, !noalias !488

bb.ag:                                            ; preds = %bb.ae
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecmEECs2JiOgHzbbc7_10tokenizers.exit.i.i unwind label %.loopexit.split-lp34.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !488

bb.ah:                                            ; preds = %bb.af
  %i.cz = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #23, !noalias !488
  unreachable

.body.i.i:                                        ; preds = %.loopexit.split-lp34.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp39.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.am, %bb.af
  %.pn.i.i = phi { ptr, i32 } [ %lpad.loopexit.split-lp165, %.loopexit.split-lp39.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %i.cy, %bb.af ], [ %i.dk, %bb.am ], [ %lpad.loopexit.split-lp162, %.loopexit.split-lp34.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecmENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %bb.aj unwind label %bb.ai, !noalias !488

bb.ai:                                            ; preds = %.body.i.i
  %i.da = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %.body7 unwind label %bb.ak, !noalias !488

bb.aj:                                            ; preds = %.body.i.i
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecmEECs2JiOgHzbbc7_10tokenizers.exit unwind label %bb.ar

bb.ak:                                            ; preds = %bb.ai
  %i.db = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #23, !noalias !488
  unreachable

.loopexit.split-lp34.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecmEECs2JiOgHzbbc7_10tokenizers.exit.i.i, %bb.ag, %bb.al
  %lpad.loopexit.split-lp162 = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecmEECs2JiOgHzbbc7_10tokenizers.exit.i.i: ; preds = %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !488
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !488
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !488
  %i.dc = load i64, ptr %i.bg, align 8, !noalias !488, !noundef !6 ; 5 uses
  %i.dd = icmp ult i64 %i.dc, 2305843009213693952
  call void @llvm.assume(i1 %i.dd)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !492
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !492
  invoke void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef %i.dc, i1 noundef zeroext false, i64 noundef 4, i64 noundef 4)
          to label %.noexc14.i.i unwind label %.loopexit.split-lp34.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !488

.noexc14.i.i:                                     ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecmEECs2JiOgHzbbc7_10tokenizers.exit.i.i
  %i.de = load i64, ptr %i.a, align 8, !range !14, !noalias !492, !noundef !6
  %i.df = trunc nuw i64 %i.de to i1
  %i.dg = load i64, ptr %i.bh, align 8, !range !16, !noalias !492, !noundef !6 ; 3 uses
  br i1 %i.df, label %bb.al, label %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs2JiOgHzbbc7_10tokenizers.exit.i.i.i, !prof !15

bb.al:                                            ; preds = %.noexc14.i.i
  %i.dh = load i64, ptr %i.bi, align 8, !noalias !492
  invoke void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef %i.dg, i64 %i.dh) #26
          to label %.noexc15.i.i unwind label %.loopexit.split-lp34.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !488

.noexc15.i.i:                                     ; preds = %bb.al
  unreachable

_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs2JiOgHzbbc7_10tokenizers.exit.i.i.i: ; preds = %.noexc14.i.i
  %i.di = load ptr, ptr %i.bi, align 8, !noalias !492, !nonnull !6, !noundef !6
  %i.dj = icmp ule i64 %i.dc, %i.dg
  call void @llvm.assume(i1 %i.dj)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !492
  store i64 %i.dg, ptr %i.b, align 8, !noalias !492
  store ptr %i.di, ptr %i.bj, align 8, !noalias !492
  store i64 0, ptr %i.bk, align 8, !noalias !492
  invoke void @_RNvMs3_NtCscdodAO9FK5_5alloc3vecINtB5_3VecmE11extend_withCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b, i64 noundef %i.dc, i32 noundef 1)
          to label %bb.ao unwind label %bb.am, !noalias !492

bb.am:                                            ; preds = %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs2JiOgHzbbc7_10tokenizers.exit.i.i.i
  %i.dk = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecmEECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef align 8 dereferenceable(24) %i.b) #24
          to label %.body.i.i unwind label %bb.an, !noalias !492

bb.an:                                            ; preds = %bb.am
  %i.dl = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #23, !noalias !492
  unreachable

bb.ao:                                            ; preds = %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs2JiOgHzbbc7_10tokenizers.exit.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.f, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false), !noalias !488
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !492
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !488
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !488
  call void @_RNvCs9wFQrvczXsK_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #25, !noalias !488
  %i.dm = call noundef align 8 dereferenceable_or_null(24) ptr @_RNvCs9wFQrvczXsK_7___rustc12___rust_alloc(i64 noundef range(i64 24, 49) 24, i64 noundef 8) #25, !noalias !488 ; 5 uses
  %i.dn = icmp eq ptr %i.dm, null
  br i1 %i.dn, label %bb.ap, label %_RNvNtCscdodAO9FK5_5alloc5boxed14box_new_uninit.exit.i.i, !prof !15

bb.ap:                                            ; preds = %bb.ao
  invoke void @_RNvNtCscdodAO9FK5_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 24) #26
          to label %.noexc19.i.i unwind label %.loopexit.split-lp39.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !488

.noexc19.i.i:                                     ; preds = %bb.ap
  unreachable

.loopexit.split-lp39.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_RNvNtCscdodAO9FK5_5alloc5boxed14box_new_uninit.exit.i.i, %bb.ap
  %lpad.loopexit.split-lp165 = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecmEECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef align 8 dereferenceable(24) %i.f) #24
          to label %.body.i.i unwind label %bb.ar, !noalias !488

_RNvNtCscdodAO9FK5_5alloc5boxed14box_new_uninit.exit.i.i: ; preds = %bb.ao
  %i.do = add nsw i64 %i.dc, -1
  store i64 1, ptr %i.dm, align 8, !noalias !488
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.dm, i64 8
  store i64 0, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !488
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.dm, i64 16
  store i64 %i.do, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !noalias !488
  store i64 1, ptr %i.d, align 8, !noalias !488
  store ptr %i.dm, ptr %i.bl, align 8, !noalias !488
  store i64 1, ptr %i.bm, align 8, !noalias !488
  invoke void @_RINvXsb_NtCsiTTz6JxaXqu_5ahash8hash_mapINtB6_8AHashMapjINtNtNtCs4NRVxsYgnAr_4core3ops5range5RangejEEINtNtNtNtBY_4iter6traits7collect12FromIteratorTjBR_EE9from_iterINtNtCscdodAO9FK5_5alloc3vec3VecB2k_EECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.e, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.d)
          to label %bb.aq unwind label %.loopexit.split-lp39.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !488

bb.aq:                                            ; preds = %_RNvNtCscdodAO9FK5_5alloc5boxed14box_new_uninit.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !488
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.01.i, ptr noundef nonnull align 8 dereferenceable(24) %i.t, i64 24, i1 false), !noalias !493
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.01.24..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(24) %i.q, i64 24, i1 false), !noalias !493
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.01.48..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(24) %i.o, i64 24, i1 false), !noalias !493
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.01.72..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(24) %i.m, i64 24, i1 false), !noalias !493
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.01.96..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(24) %i.k, i64 24, i1 false), !noalias !493
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.01.120..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(24) %i.i, i64 24, i1 false), !noalias !493
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.01.144..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false), !noalias !493
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.13.i, ptr noundef nonnull align 8 dereferenceable(64) %i.e, i64 64, i1 false), !noalias !493
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !488
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !488
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !488
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !488
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !488
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !488
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !488
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !488
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encoding8EncodingEBH_(ptr noalias noundef nonnull align 8 dereferenceable(256) %i.u)
          to label %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map12map_try_foldNtNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encoding8EncodingBZ_INtNtNtCscdodAO9FK5_5alloc3vec13in_place_drop11InPlaceDropBZ_EINtNtBa_6result6ResultB20_zENCNCNvXs0_NtNtB15_10processors4bertNtB3C_14BertProcessingNtB13_13PostProcessor17process_encodings0s_0NCINvNtB25_16in_place_collect24write_in_place_with_dropBZ_E0E0B15_.exit unwind label %bb.as, !noalias !486

bb.ar:                                            ; preds = %bb.f, %bb.k, %bb.p, %bb.u, %bb.aa, %bb.aj, %.loopexit.split-lp39.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.ad, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecmEECs2JiOgHzbbc7_10tokenizers.exit27
  %i.dp = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  br label %.body7

.body7:                                           ; preds = %bb.z, %bb.o, %bb.ar, %bb.e, %bb.j, %bb.t, %bb.ai
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #23, !noalias !489
  unreachable

bb.as:                                            ; preds = %bb.aq
  %i.dq = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.noexc._crit_edge:                                ; preds = %.noexc, %.noexc.preheader
  resume { ptr, i32 } %eh.lpad-body.i

.body.i:                                          ; preds = %bb.as, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecmEECs2JiOgHzbbc7_10tokenizers.exit27
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.dq, %bb.as ], [ %.pn.pn.pn.pn.pn.pn.pn.i.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecmEECs2JiOgHzbbc7_10tokenizers.exit27 ]
  %i.dr = invoke noundef i64 @_RNvMNtNtCscdodAO9FK5_5alloc3vec13in_place_dropINtB2_11InPlaceDropNtNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encoding8EncodingE3lenB17_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.v)
          to label %.noexc.preheader unwind label %bb.aw ; 4 uses

.noexc.preheader:                                 ; preds = %.body.i
  %i.ds = icmp eq i64 %i.dr, 0
  br i1 %i.ds, label %.noexc._crit_edge, label %.lr.ph155

.noexc:                                           ; preds = %.lr.ph155
  %i.dt = icmp eq i64 %i.dv, %i.dr
  br i1 %i.dt, label %.noexc._crit_edge, label %.lr.ph155

.lr.ph155:                                        ; preds = %.noexc.preheader, %.noexc
  %.sroa.0.0.i.i.i154 = phi i64 [ %i.dv, %.noexc ], [ 0, %.noexc.preheader ] ; 2 uses
  %i.du = getelementptr inbounds nuw [256 x i8], ptr %1, i64 %.sroa.0.0.i.i.i154
  %i.dv = add nuw nsw i64 %.sroa.0.0.i.i.i154, 1  ; 4 uses
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encoding8EncodingEBH_(ptr noalias noundef align 8 dereferenceable(256) %i.du)
          to label %.noexc unwind label %bb.au, !noalias !486

bb.at:                                            ; preds = %.lr.ph158
  %i.dw = add i64 %.sroa.0.1.i.i.i156, 1          ; 2 uses
  %i.dx = icmp eq i64 %i.dw, %i.dr
  br i1 %i.dx, label %.body, label %.lr.ph158

bb.au:                                            ; preds = %.lr.ph155
  %i.dy = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  %i.dz = icmp eq i64 %i.dv, %i.dr
  br i1 %i.dz, label %.body, label %.lr.ph158

.lr.ph158:                                        ; preds = %bb.au, %bb.at
  %.sroa.0.1.i.i.i156 = phi i64 [ %i.dw, %bb.at ], [ %i.dv, %bb.au ] ; 2 uses
  %i.ea = getelementptr inbounds nuw [256 x i8], ptr %1, i64 %.sroa.0.1.i.i.i156
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encoding8EncodingEBH_(ptr noalias noundef align 8 dereferenceable(256) %i.ea) #24
          to label %bb.at unwind label %bb.av, !noalias !486

bb.av:                                            ; preds = %.lr.ph158
  %i.eb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #23, !noalias !486
  unreachable

bb.aw:                                            ; preds = %.body.i
  %i.ec = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  br label %.body

.body:                                            ; preds = %bb.at, %bb.au, %bb.aw
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #23, !noalias !486
  unreachable

_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map12map_try_foldNtNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encoding8EncodingBZ_INtNtNtCscdodAO9FK5_5alloc3vec13in_place_drop11InPlaceDropBZ_EINtNtBa_6result6ResultB20_zENCNCNvXs0_NtNtB15_10processors4bertNtB3C_14BertProcessingNtB13_13PostProcessor17process_encodings0s_0NCINvNtB25_16in_place_collect24write_in_place_with_dropBZ_E0E0B15_.exit: ; preds = %bb.aq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !486
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(168) %.sroa.4.087, ptr noundef nonnull align 8 dereferenceable(168) %.sroa.01.i, i64 168, i1 false), !noalias !486
  %.sroa.4.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.4.087, i64 192
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.4.sroa.7.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.13.i, i64 64, i1 false), !noalias !486
  %.sroa.4.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.4.087, i64 168
  store i64 0, ptr %.sroa.4.sroa.4.0..sroa_idx.i, align 8, !noalias !486
  %.sroa.4.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.4.087, i64 176
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.4.sroa.5.0..sroa_idx.i, align 8, !noalias !486
  %.sroa.4.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.4.087, i64 184
  store i64 0, ptr %.sroa.4.sroa.6.0..sroa_idx.i, align 8, !noalias !486
  %i.ed = getelementptr inbounds nuw i8, ptr %.sroa.4.087, i64 256 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.01.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.13.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !486
  %.not = icmp eq ptr %i.bo, %i.y
  br i1 %.not, label %._crit_edge, label %bb.b

._crit_edge:                                      ; preds = %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map12map_try_foldNtNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encoding8EncodingBZ_INtNtNtCscdodAO9FK5_5alloc3vec13in_place_drop11InPlaceDropBZ_EINtNtBa_6result6ResultB20_zENCNCNvXs0_NtNtB15_10processors4bertNtB3C_14BertProcessingNtB13_13PostProcessor17process_encodings0s_0NCINvNtB25_16in_place_collect24write_in_place_with_dropBZ_E0E0B15_.exit, %bb.a
  %.sroa.4.0.lcssa = phi ptr [ %2, %bb.a ], [ %i.ed, %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map12map_try_foldNtNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encoding8EncodingBZ_INtNtNtCscdodAO9FK5_5alloc3vec13in_place_drop11InPlaceDropBZ_EINtNtBa_6result6ResultB20_zENCNCNvXs0_NtNtB15_10processors4bertNtB3C_14BertProcessingNtB13_13PostProcessor17process_encodings0s_0NCINvNtB25_16in_place_collect24write_in_place_with_dropBZ_E0E0B15_.exit ]
  %i.ee = insertvalue { ptr, ptr } poison, ptr %1, 0
  %i.ef = insertvalue { ptr, ptr } %i.ee, ptr %.sroa.4.0.lcssa, 1
  ret { ptr, ptr } %i.ef
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, ptr } @_RINvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB6_8IntoIterNtNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encoding8EncodingENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator8try_foldINtNtB8_13in_place_drop11InPlaceDropBW_ENCINvNtNtB21_8adapters3map12map_try_foldBW_BW_B2Z_INtNtB23_6result6ResultB2Z_zENCNCNvXs0_NtNtB12_10processors7robertaNtB54_17RobertaProcessingNtB10_13PostProcessor17process_encodingss0_00NCINvNtB8_16in_place_collect24write_in_place_with_dropBW_E0E0B4r_EB12_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %0, ptr noundef %1, ptr noundef %2, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %3, ptr nofree noundef readnone captures(none) %4) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 8 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %i.e = alloca [24 x i8], align 8                ; 6 uses
  %i.f = alloca [64 x i8], align 8                ; 4 uses
  %i.g = alloca [24 x i8], align 8                ; 5 uses
  %i.h = alloca [24 x i8], align 8                ; 9 uses
  %i.i = alloca [48 x i8], align 8                ; 9 uses
  %i.j = alloca [24 x i8], align 8                ; 7 uses
  %i.k = alloca [48 x i8], align 8                ; 9 uses
  %i.l = alloca [24 x i8], align 8                ; 7 uses
  %i.m = alloca [48 x i8], align 8                ; 9 uses
  %i.n = alloca [24 x i8], align 8                ; 7 uses
  %i.o = alloca [48 x i8], align 8                ; 9 uses
  %i.p = alloca [24 x i8], align 8                ; 7 uses
  %i.q = alloca [24 x i8], align 8                ; 9 uses
  %i.r = alloca [4 x i8], align 4                 ; 4 uses
  %i.s = alloca [4 x i8], align 4                 ; 4 uses
  %i.t = alloca [48 x i8], align 8                ; 9 uses
  %i.u = alloca [24 x i8], align 8                ; 8 uses
  %i.v = alloca [256 x i8], align 8               ; 13 uses
  %.sroa.01.i = alloca [168 x i8], align 8        ; 10 uses
  %.sroa.13.i = alloca [64 x i8], align 8         ; 4 uses
  %i.w = alloca [16 x i8], align 8                ; 5 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.promoted = load ptr, ptr %i.y, align 8        ; 2 uses
  %i.z = load ptr, ptr %i.x, align 8, !nonnull !6, !noundef !6 ; 2 uses
  %.not120 = icmp eq ptr %.promoted, %i.z
  br i1 %.not120, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.aa = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %i.ad = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.ae = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.af = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  %i.ag = getelementptr inbounds nuw i8, ptr %i.t, i64 32
  %i.ah = getelementptr inbounds nuw i8, ptr %i.t, i64 40
  %i.ai = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.aj = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.al = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.am = getelementptr inbounds nuw i8, ptr %i.v, i64 56
  %i.an = getelementptr inbounds nuw i8, ptr %i.v, i64 64
  %i.ao = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.ap = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.aq = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %i.ar = getelementptr inbounds nuw i8, ptr %i.o, i64 32
  %i.as = getelementptr inbounds nuw i8, ptr %i.o, i64 40
  %i.at = getelementptr inbounds nuw i8, ptr %i.v, i64 80
  %i.au = getelementptr inbounds nuw i8, ptr %i.v, i64 88
  %i.av = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.aw = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.ax = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %i.ay = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  %i.az = getelementptr inbounds nuw i8, ptr %i.m, i64 40
  %i.ba = getelementptr inbounds nuw i8, ptr %i.v, i64 104
  %i.bb = getelementptr inbounds nuw i8, ptr %i.v, i64 112
  %i.bc = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.bd = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.be = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.bf = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  %i.bg = getelementptr inbounds nuw i8, ptr %i.k, i64 40
  %i.bh = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.bi = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.bk = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.bl = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.bm = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.bn = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.bo = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  %i.bp = getelementptr inbounds nuw i8, ptr %i.i, i64 40
  %i.bq = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.br = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.bs = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.bu = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.bv = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.bw = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %.sroa.01.24..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.01.i, i64 24
  %.sroa.01.48..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.01.i, i64 48
  %.sroa.01.72..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.01.i, i64 72
  %.sroa.01.96..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.01.i, i64 96
  %.sroa.01.120..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.01.i, i64 120
  %.sroa.01.144..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.01.i, i64 144
  %.val.i.pre = load ptr, ptr %3, align 8, !noalias !505 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map12map_try_foldNtNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encoding8EncodingBZ_INtNtNtCscdodAO9FK5_5alloc3vec13in_place_drop11InPlaceDropBZ_EINtNtBa_6result6ResultB20_zENCNCNvXs0_NtNtB15_10processors7robertaNtB3C_17RobertaProcessingNtB13_13PostProcessor17process_encodingss0_00NCINvNtB25_16in_place_collect24write_in_place_with_dropBZ_E0E0B15_.exit
  %.sroa.4.0121 = phi ptr [ %2, %.lr.ph ], [ %i.et, %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map12map_try_foldNtNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encoding8EncodingBZ_INtNtNtCscdodAO9FK5_5alloc3vec13in_place_drop11InPlaceDropBZ_EINtNtBa_6result6ResultB20_zENCNCNvXs0_NtNtB15_10processors7robertaNtB3C_17RobertaProcessingNtB13_13PostProcessor17process_encodingss0_00NCINvNtB25_16in_place_collect24write_in_place_with_dropBZ_E0E0B15_.exit ] ; 7 uses
  %i.bx = phi ptr [ %.promoted, %.lr.ph ], [ %i.by, %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map12map_try_foldNtNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encoding8EncodingBZ_INtNtNtCscdodAO9FK5_5alloc3vec13in_place_drop11InPlaceDropBZ_EINtNtBa_6result6ResultB20_zENCNCNvXs0_NtNtB15_10processors7robertaNtB3C_17RobertaProcessingNtB13_13PostProcessor17process_encodingss0_00NCINvNtB25_16in_place_collect24write_in_place_with_dropBZ_E0E0B15_.exit ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !noalias !505
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(256) %i.v, ptr noundef nonnull align 8 dereferenceable(256) %i.bx, i64 256, i1 false)
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 256 ; 3 uses
  store ptr %i.by, ptr %i.y, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !noalias !505
  store ptr %1, ptr %i.w, align 8, !noalias !505
  store ptr %.sroa.4.0121, ptr %i.aa, align 8, !noalias !505
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.01.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.13.i)
  call void @llvm.experimental.noalias.scope.decl(metadata !506)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !507
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !507
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !507
  %i.bz = load ptr, ptr %.val.i.pre, align 8, !noalias !507, !nonnull !6, !align !8, !noundef !6 ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 56
  %i.cb = load i32, ptr %i.ca, align 8, !noalias !507, !noundef !6
  store i32 %i.cb, ptr %i.s, align 4, !noalias !507
  %i.cc = load ptr, ptr %i.ab, align 8, !alias.scope !506, !noalias !505, !nonnull !6, !noundef !6
  %i.cd = load i64, ptr %i.ac, align 8, !alias.scope !506, !noalias !505, !noundef !6 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !507
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bz, i64 24
  %i.cf = load i32, ptr %i.ce, align 8, !noalias !507, !noundef !6
  store i32 %i.cf, ptr %i.r, align 4, !noalias !507
  store ptr %i.s, ptr %i.t, align 8, !noalias !507
  store i64 1, ptr %i.ad, align 8, !noalias !507
  store ptr %i.cc, ptr %i.ae, align 8, !noalias !507
  store i64 %i.cd, ptr %i.af, align 8, !noalias !507
  store ptr %i.r, ptr %i.ag, align 8, !noalias !507
  store i64 1, ptr %i.ah, align 8, !noalias !507
  invoke void @_RNvXs0_NtCscdodAO9FK5_5alloc5sliceSRSmINtB5_6ConcatmE6concatCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.u, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.t, i64 noundef 3)
          to label %bb.d unwind label %bb.c, !noalias !507

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecmEECs2JiOgHzbbc7_10tokenizers.exit27: ; preds = %bb.g, %bb.c
  %.pn.pn.pn.pn.pn.pn.pn.i.i = phi { ptr, i32 } [ %i.cg, %bb.c ], [ %.pn.pn.pn.pn.pn.pn.i.i, %bb.g ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encoding8EncodingEBH_(ptr noalias noundef nonnull align 8 dereferenceable(256) %i.v) #24
          to label %.body.i unwind label %bb.ar, !noalias !508

bb.c:                                             ; preds = %bb.b
  %i.cg = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecmEECs2JiOgHzbbc7_10tokenizers.exit27

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !507
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !507
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !507
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !507
  %i.ch = add i64 %i.cd, 2                        ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !509)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !510
  invoke void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, i64 noundef %i.ch, i1 noundef zeroext true, i64 noundef 4, i64 noundef 4)
          to label %.noexc.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !507

.noexc.i.i:                                       ; preds = %bb.d
  %i.ci = load i64, ptr %i.d, align 8, !range !14, !noalias !510, !noundef !6
  %i.cj = trunc nuw i64 %i.ci to i1
  %i.ck = load i64, ptr %i.ai, align 8, !range !16, !noalias !510, !noundef !6 ; 2 uses
  br i1 %i.cj, label %bb.e, label %bb.i, !prof !15

bb.e:                                             ; preds = %.noexc.i.i
  %i.cl = load i64, ptr %i.aj, align 8, !noalias !510
  invoke void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef %i.ck, i64 %i.cl) #26
          to label %.noexc12.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !507

.noexc12.i.i:                                     ; preds = %bb.e
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecmEECs2JiOgHzbbc7_10tokenizers.exit22: ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.k
  %.pn.pn.pn.pn.pn.pn.i.i = phi { ptr, i32 } [ %.pn.pn.pn.pn.pn.i.i, %bb.k ], [ %lpad.loopexit.split-lp245, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecmENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.u)
          to label %bb.g unwind label %bb.f, !noalias !507

bb.f:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecmEECs2JiOgHzbbc7_10tokenizers.exit22
  %i.cm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.u)
          to label %.body7 unwind label %bb.h, !noalias !507

bb.g:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecmEECs2JiOgHzbbc7_10tokenizers.exit22
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.u)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecmEECs2JiOgHzbbc7_10tokenizers.exit27 unwind label %bb.ar

bb.h:                                             ; preds = %bb.f
  %i.cn = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #23, !noalias !507
  unreachable

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.d, %bb.e
  %lpad.loopexit.split-lp245 = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecmEECs2JiOgHzbbc7_10tokenizers.exit22

bb.i:                                             ; preds = %.noexc.i.i
  %i.co = load ptr, ptr %i.aj, align 8, !noalias !510, !nonnull !6, !noundef !6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !510
  store i64 %i.ck, ptr %i.q, align 8, !alias.scope !509, !noalias !507
  store ptr %i.co, ptr %i.ak, align 8, !alias.scope !509, !noalias !507
  store i64 %i.ch, ptr %i.al, align 8, !alias.scope !509, !noalias !507
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !507
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !507
  %i.cp = load ptr, ptr %.val.i.pre, align 8, !noalias !507, !nonnull !6, !align !8, !noundef !6 ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 32
  %i.cr = load ptr, ptr %i.am, align 8, !alias.scope !506, !noalias !505, !nonnull !6, !noundef !6
  %i.cs = load i64, ptr %i.an, align 8, !alias.scope !506, !noalias !505, !noundef !6
  store ptr %i.cq, ptr %i.o, align 8, !noalias !507
  store i64 1, ptr %i.ao, align 8, !noalias !507
  store ptr %i.cr, ptr %i.ap, align 8, !noalias !507
  store i64 %i.cs, ptr %i.aq, align 8, !noalias !507
  store ptr %i.cp, ptr %i.ar, align 8, !noalias !507
  store i64 1, ptr %i.as, align 8, !noalias !507
  invoke void @_RNvXs0_NtCscdodAO9FK5_5alloc5sliceSRSNtNtB7_6string6StringINtB5_6ConcatBz_E6concatCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.p, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.o, i64 noundef 3)
          to label %bb.n unwind label %bb.m, !noalias !507

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtBG_6string6StringEECs2JiOgHzbbc7_10tokenizers.exit: ; preds = %bb.p, %bb.m
  %.pn.pn.pn.pn.pn.i.i = phi { ptr, i32 } [ %i.cv, %bb.m ], [ %.pn.pn.pn.pn.i.i, %bb.p ]
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecmENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.q)
          to label %bb.k unwind label %bb.j, !noalias !507

bb.j:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtBG_6string6StringEECs2JiOgHzbbc7_10tokenizers.exit
  %i.ct = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.q)
          to label %.body7 unwind label %bb.l, !noalias !507

bb.k:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtBG_6string6StringEECs2JiOgHzbbc7_10tokenizers.exit
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.q)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecmEECs2JiOgHzbbc7_10tokenizers.exit22 unwind label %bb.ar

bb.l:                                             ; preds = %bb.j
  %i.cu = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #23, !noalias !507
  unreachable

bb.m:                                             ; preds = %bb.i
  %i.cv = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtBG_6string6StringEECs2JiOgHzbbc7_10tokenizers.exit

bb.n:                                             ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !507
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !507
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !507
  %i.cw = load ptr, ptr %i.at, align 8, !alias.scope !506, !noalias !505, !nonnull !6, !noundef !6
  %i.cx = load i64, ptr %i.au, align 8, !alias.scope !506, !noalias !505, !noundef !6
  store ptr @4, ptr %i.m, align 8, !noalias !507
  store i64 1, ptr %i.av, align 8, !noalias !507
  store ptr %i.cw, ptr %i.aw, align 8, !noalias !507
  store i64 %i.cx, ptr %i.ax, align 8, !noalias !507
  store ptr @4, ptr %i.ay, align 8, !noalias !507
  store i64 1, ptr %i.az, align 8, !noalias !507
  invoke void @_RNvXs0_NtCscdodAO9FK5_5alloc5sliceSRSINtNtCs4NRVxsYgnAr_4core6option6OptionmEINtB5_6ConcatBz_E6concatCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.n, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.m, i64 noundef 3)
          to label %bb.s unwind label %bb.r, !noalias !507

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB4_6option6OptionmEEECs2JiOgHzbbc7_10tokenizers.exit: ; preds = %bb.u, %bb.r
  %.pn.pn.pn.pn.i.i = phi { ptr, i32 } [ %i.da, %bb.r ], [ %.pn.pn.pn.i.i, %bb.u ]
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.p)
          to label %bb.p unwind label %bb.o, !noalias !507

bb.o:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB4_6option6OptionmEEECs2JiOgHzbbc7_10tokenizers.exit
  %i.cy = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtB7_6string6StringENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.p)
          to label %.body7 unwind label %bb.q, !noalias !507

bb.p:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB4_6option6OptionmEEECs2JiOgHzbbc7_10tokenizers.exit
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtB7_6string6StringENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.p)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtBG_6string6StringEECs2JiOgHzbbc7_10tokenizers.exit unwind label %bb.ar

bb.q:                                             ; preds = %bb.o
  %i.cz = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #23, !noalias !507
  unreachable

bb.r:                                             ; preds = %bb.n
  %i.da = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB4_6option6OptionmEEECs2JiOgHzbbc7_10tokenizers.exit

bb.s:                                             ; preds = %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !507
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !507
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !507
  %i.db = load ptr, ptr %i.ba, align 8, !alias.scope !506, !noalias !505, !nonnull !6, !noundef !6
  %i.dc = load i64, ptr %i.bb, align 8, !alias.scope !506, !noalias !505, !noundef !6
  store ptr @27, ptr %i.k, align 8, !noalias !507
  store i64 1, ptr %i.bc, align 8, !noalias !507
  store ptr %i.db, ptr %i.bd, align 8, !noalias !507
  store i64 %i.dc, ptr %i.be, align 8, !noalias !507
  store ptr @27, ptr %i.bf, align 8, !noalias !507
  store i64 1, ptr %i.bg, align 8, !noalias !507
  invoke void @_RNvXs0_NtCscdodAO9FK5_5alloc5sliceSRSTjjEINtB5_6ConcatBz_E6concatCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.l, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.k, i64 noundef 3)
          to label %bb.x unwind label %bb.w, !noalias !507

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecTjjEEECs2JiOgHzbbc7_10tokenizers.exit: ; preds = %bb.aa, %bb.w
  %.pn.pn.pn.i.i = phi { ptr, i32 } [ %i.df, %bb.w ], [ %.pn.pn.i.i, %bb.aa ]
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtCs4NRVxsYgnAr_4core6option6OptionmEENtNtNtBJ_3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.n)
          to label %bb.u unwind label %bb.t, !noalias !507

bb.t:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecTjjEEECs2JiOgHzbbc7_10tokenizers.exit
  %i.dd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecINtNtCs4NRVxsYgnAr_4core6option6OptionmEENtNtNtBQ_3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.n)
          to label %.body7 unwind label %bb.v, !noalias !507

bb.u:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecTjjEEECs2JiOgHzbbc7_10tokenizers.exit
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecINtNtCs4NRVxsYgnAr_4core6option6OptionmEENtNtNtBQ_3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.n)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB4_6option6OptionmEEECs2JiOgHzbbc7_10tokenizers.exit unwind label %bb.ar

bb.v:                                             ; preds = %bb.t
  %i.de = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #23, !noalias !507
  unreachable

bb.w:                                             ; preds = %bb.s
  %i.df = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecTjjEEECs2JiOgHzbbc7_10tokenizers.exit

bb.x:                                             ; preds = %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !507
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !507
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !507
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !507
  call void @llvm.experimental.noalias.scope.decl(metadata !511)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !512
  invoke void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, i64 noundef %i.cd, i1 noundef zeroext true, i64 noundef 4, i64 noundef 4)
          to label %.noexc13.i.i unwind label %.loopexit.split-lp34.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !507

.noexc13.i.i:                                     ; preds = %bb.x
  %i.dg = load i64, ptr %i.c, align 8, !range !14, !noalias !512, !noundef !6
  %i.dh = trunc nuw i64 %i.dg to i1
  %i.di = load i64, ptr %i.bh, align 8, !range !16, !noalias !512, !noundef !6 ; 2 uses
  br i1 %i.dh, label %bb.y, label %bb.ac, !prof !15

bb.y:                                             ; preds = %.noexc13.i.i
  %i.dj = load i64, ptr %i.bi, align 8, !noalias !512
  invoke void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef %i.di, i64 %i.dj) #26
          to label %.noexc14.i.i unwind label %.loopexit.split-lp34.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !507

.noexc14.i.i:                                     ; preds = %bb.y
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecmEECs2JiOgHzbbc7_10tokenizers.exit: ; preds = %.loopexit.split-lp34.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.aj, %bb.ad
  %.pn.pn.i.i = phi { ptr, i32 } [ %.pn.i.i, %bb.aj ], [ %i.dn, %bb.ad ], [ %lpad.loopexit.split-lp247, %.loopexit.split-lp34.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecTjjEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.l)
          to label %bb.aa unwind label %bb.z, !noalias !507

bb.z:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecmEECs2JiOgHzbbc7_10tokenizers.exit
  %i.dk = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecTjjEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.l)
          to label %.body7 unwind label %bb.ab, !noalias !507

bb.aa:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecmEECs2JiOgHzbbc7_10tokenizers.exit
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecTjjEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.l)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecTjjEEECs2JiOgHzbbc7_10tokenizers.exit unwind label %bb.ar

bb.ab:                                            ; preds = %bb.z
  %i.dl = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #23, !noalias !507
  unreachable

.loopexit.split-lp34.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.x, %bb.y
  %lpad.loopexit.split-lp247 = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecmEECs2JiOgHzbbc7_10tokenizers.exit

bb.ac:                                            ; preds = %.noexc13.i.i
  %i.dm = load ptr, ptr %i.bi, align 8, !noalias !512, !nonnull !6, !noundef !6 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !512
  store i64 %i.di, ptr %i.h, align 8, !alias.scope !511, !noalias !507
  store ptr %i.dm, ptr %i.bj, align 8, !alias.scope !511, !noalias !507
  store i64 %i.cd, ptr %i.bk, align 8, !alias.scope !511, !noalias !507
  store ptr @28, ptr %i.i, align 8, !noalias !507
  store i64 1, ptr %i.bl, align 8, !noalias !507
  store ptr %i.dm, ptr %i.bm, align 8, !noalias !507
  store i64 %i.cd, ptr %i.bn, align 8, !noalias !507
  store ptr @28, ptr %i.bo, align 8, !noalias !507
  store i64 1, ptr %i.bp, align 8, !noalias !507
  invoke void @_RNvXs0_NtCscdodAO9FK5_5alloc5sliceSRSmINtB5_6ConcatmE6concatCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.j, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.i, i64 noundef 3)
          to label %bb.ae unwind label %bb.ad, !noalias !507

bb.ad:                                            ; preds = %bb.ac
  %i.dn = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecmEECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef align 8 dereferenceable(24) %i.h) #24
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecmEECs2JiOgHzbbc7_10tokenizers.exit unwind label %bb.ar, !noalias !507

bb.ae:                                            ; preds = %bb.ac
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecmENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %bb.ag unwind label %bb.af, !noalias !507

bb.af:                                            ; preds = %bb.ae
  %i.do = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %.body.i.i unwind label %bb.ah, !noalias !507

bb.ag:                                            ; preds = %bb.ae
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecmEECs2JiOgHzbbc7_10tokenizers.exit.i.i unwind label %.loopexit.split-lp39.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !507

bb.ah:                                            ; preds = %bb.af
  %i.dp = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #23, !noalias !507
  unreachable

.body.i.i:                                        ; preds = %.loopexit.split-lp39.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp44.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.am, %bb.af
  %.pn.i.i = phi { ptr, i32 } [ %lpad.loopexit.split-lp, %.loopexit.split-lp44.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %i.do, %bb.af ], [ %i.ea, %bb.am ], [ %lpad.loopexit.split-lp250, %.loopexit.split-lp39.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecmENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %bb.aj unwind label %bb.ai, !noalias !507

bb.ai:                                            ; preds = %.body.i.i
  %i.dq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %.body7 unwind label %bb.ak, !noalias !507

bb.aj:                                            ; preds = %.body.i.i
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecmEECs2JiOgHzbbc7_10tokenizers.exit unwind label %bb.ar

bb.ak:                                            ; preds = %bb.ai
  %i.dr = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #23, !noalias !507
  unreachable

.loopexit.split-lp39.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecmEECs2JiOgHzbbc7_10tokenizers.exit.i.i, %bb.ag, %bb.al
  %lpad.loopexit.split-lp250 = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecmEECs2JiOgHzbbc7_10tokenizers.exit.i.i: ; preds = %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !507
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !507
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !507
  %i.ds = load i64, ptr %i.bq, align 8, !noalias !507, !noundef !6 ; 5 uses
  %i.dt = icmp ult i64 %i.ds, 2305843009213693952
  call void @llvm.assume(i1 %i.dt)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !513
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !513
  invoke void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef %i.ds, i1 noundef zeroext false, i64 noundef 4, i64 noundef 4)
          to label %.noexc17.i.i unwind label %.loopexit.split-lp39.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !507

.noexc17.i.i:                                     ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecmEECs2JiOgHzbbc7_10tokenizers.exit.i.i
  %i.du = load i64, ptr %i.a, align 8, !range !14, !noalias !513, !noundef !6
  %i.dv = trunc nuw i64 %i.du to i1
  %i.dw = load i64, ptr %i.br, align 8, !range !16, !noalias !513, !noundef !6 ; 3 uses
  br i1 %i.dv, label %bb.al, label %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs2JiOgHzbbc7_10tokenizers.exit.i.i.i, !prof !15

bb.al:                                            ; preds = %.noexc17.i.i
  %i.dx = load i64, ptr %i.bs, align 8, !noalias !513
  invoke void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef %i.dw, i64 %i.dx) #26
          to label %.noexc18.i.i unwind label %.loopexit.split-lp39.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !507

.noexc18.i.i:                                     ; preds = %bb.al
  unreachable

_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs2JiOgHzbbc7_10tokenizers.exit.i.i.i: ; preds = %.noexc17.i.i
  %i.dy = load ptr, ptr %i.bs, align 8, !noalias !513, !nonnull !6, !noundef !6
  %i.dz = icmp ule i64 %i.ds, %i.dw
  call void @llvm.assume(i1 %i.dz)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !513
  store i64 %i.dw, ptr %i.b, align 8, !noalias !513
  store ptr %i.dy, ptr %i.bt, align 8, !noalias !513
  store i64 0, ptr %i.bu, align 8, !noalias !513
  invoke void @_RNvMs3_NtCscdodAO9FK5_5alloc3vecINtB5_3VecmE11extend_withCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b, i64 noundef %i.ds, i32 noundef 1)
          to label %bb.ao unwind label %bb.am, !noalias !513

bb.am:                                            ; preds = %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs2JiOgHzbbc7_10tokenizers.exit.i.i.i
  %i.ea = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecmEECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef align 8 dereferenceable(24) %i.b) #24
          to label %.body.i.i unwind label %bb.an, !noalias !513

bb.an:                                            ; preds = %bb.am
  %i.eb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #23, !noalias !513
  unreachable

bb.ao:                                            ; preds = %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs2JiOgHzbbc7_10tokenizers.exit.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.g, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false), !noalias !507
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !513
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !507
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !507
  call void @_RNvCs9wFQrvczXsK_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #25, !noalias !507
  %i.ec = call noundef align 8 dereferenceable_or_null(24) ptr @_RNvCs9wFQrvczXsK_7___rustc12___rust_alloc(i64 noundef range(i64 24, 49) 24, i64 noundef 8) #25, !noalias !507 ; 5 uses
  %i.ed = icmp eq ptr %i.ec, null
  br i1 %i.ed, label %bb.ap, label %_RNvNtCscdodAO9FK5_5alloc5boxed14box_new_uninit.exit.i.i, !prof !15

bb.ap:                                            ; preds = %bb.ao
  invoke void @_RNvNtCscdodAO9FK5_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 24) #26
          to label %.noexc22.i.i unwind label %.loopexit.split-lp44.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !507

.noexc22.i.i:                                     ; preds = %bb.ap
  unreachable

.loopexit.split-lp44.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_RNvNtCscdodAO9FK5_5alloc5boxed14box_new_uninit.exit.i.i, %bb.ap
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecmEECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef align 8 dereferenceable(24) %i.g) #24
          to label %.body.i.i unwind label %bb.ar, !noalias !507

_RNvNtCscdodAO9FK5_5alloc5boxed14box_new_uninit.exit.i.i: ; preds = %bb.ao
  %i.ee = add nsw i64 %i.ds, -1
  store i64 0, ptr %i.ec, align 8, !noalias !507
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ec, i64 8
  store i64 1, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !507
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ec, i64 16
  store i64 %i.ee, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !noalias !507
  store i64 1, ptr %i.e, align 8, !noalias !507
  store ptr %i.ec, ptr %i.bv, align 8, !noalias !507
  store i64 1, ptr %i.bw, align 8, !noalias !507
  invoke void @_RINvXsb_NtCsiTTz6JxaXqu_5ahash8hash_mapINtB6_8AHashMapjINtNtNtCs4NRVxsYgnAr_4core3ops5range5RangejEEINtNtNtNtBY_4iter6traits7collect12FromIteratorTjBR_EE9from_iterINtNtCscdodAO9FK5_5alloc3vec3VecB2k_EECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.f, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.e)
          to label %bb.aq unwind label %.loopexit.split-lp44.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !507

bb.aq:                                            ; preds = %_RNvNtCscdodAO9FK5_5alloc5boxed14box_new_uninit.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !507
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.01.i, ptr noundef nonnull align 8 dereferenceable(24) %i.u, i64 24, i1 false), !noalias !514
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.01.24..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(24) %i.q, i64 24, i1 false), !noalias !514
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.01.48..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(24) %i.p, i64 24, i1 false), !noalias !514
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.01.72..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(24) %i.n, i64 24, i1 false), !noalias !514
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.01.96..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(24) %i.l, i64 24, i1 false), !noalias !514
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.01.120..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(24) %i.j, i64 24, i1 false), !noalias !514
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.01.144..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 24, i1 false), !noalias !514
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.13.i, ptr noundef nonnull align 8 dereferenceable(64) %i.f, i64 64, i1 false), !noalias !514
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !507
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !507
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !507
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !507
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !507
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !507
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !507
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !507
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encoding8EncodingEBH_(ptr noalias noundef nonnull align 8 dereferenceable(256) %i.v)
          to label %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map12map_try_foldNtNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encoding8EncodingBZ_INtNtNtCscdodAO9FK5_5alloc3vec13in_place_drop11InPlaceDropBZ_EINtNtBa_6result6ResultB20_zENCNCNvXs0_NtNtB15_10processors7robertaNtB3C_17RobertaProcessingNtB13_13PostProcessor17process_encodingss0_00NCINvNtB25_16in_place_collect24write_in_place_with_dropBZ_E0E0B15_.exit unwind label %bb.as, !noalias !505

bb.ar:                                            ; preds = %bb.g, %bb.k, %bb.p, %bb.u, %bb.aa, %bb.aj, %.loopexit.split-lp44.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.ad, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecmEECs2JiOgHzbbc7_10tokenizers.exit27
  %i.ef = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  br label %.body7

.body7:                                           ; preds = %bb.z, %bb.o, %bb.ar, %bb.f, %bb.j, %bb.t, %bb.ai
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #23, !noalias !508
  unreachable

bb.as:                                            ; preds = %bb.aq
  %i.eg = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.noexc._crit_edge:                                ; preds = %.noexc, %.noexc.preheader
  resume { ptr, i32 } %eh.lpad-body.i

.body.i:                                          ; preds = %bb.as, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecmEECs2JiOgHzbbc7_10tokenizers.exit27
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.eg, %bb.as ], [ %.pn.pn.pn.pn.pn.pn.pn.i.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecmEECs2JiOgHzbbc7_10tokenizers.exit27 ]
  %i.eh = invoke noundef i64 @_RNvMNtNtCscdodAO9FK5_5alloc3vec13in_place_dropINtB2_11InPlaceDropNtNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encoding8EncodingE3lenB17_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.w)
          to label %.noexc.preheader unwind label %bb.aw ; 4 uses

.noexc.preheader:                                 ; preds = %.body.i
  %i.ei = icmp eq i64 %i.eh, 0
  br i1 %i.ei, label %.noexc._crit_edge, label %.lr.ph240

.noexc:                                           ; preds = %.lr.ph240
  %i.ej = icmp eq i64 %i.el, %i.eh
  br i1 %i.ej, label %.noexc._crit_edge, label %.lr.ph240

.lr.ph240:                                        ; preds = %.noexc.preheader, %.noexc
  %.sroa.0.0.i.i.i239 = phi i64 [ %i.el, %.noexc ], [ 0, %.noexc.preheader ] ; 2 uses
  %i.ek = getelementptr inbounds nuw [256 x i8], ptr %1, i64 %.sroa.0.0.i.i.i239
  %i.el = add nuw nsw i64 %.sroa.0.0.i.i.i239, 1  ; 4 uses
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encoding8EncodingEBH_(ptr noalias noundef align 8 dereferenceable(256) %i.ek)
          to label %.noexc unwind label %bb.au, !noalias !505

bb.at:                                            ; preds = %.lr.ph243
  %i.em = add i64 %.sroa.0.1.i.i.i241, 1          ; 2 uses
  %i.en = icmp eq i64 %i.em, %i.eh
  br i1 %i.en, label %.body, label %.lr.ph243

bb.au:                                            ; preds = %.lr.ph240
  %i.eo = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  %i.ep = icmp eq i64 %i.el, %i.eh
  br i1 %i.ep, label %.body, label %.lr.ph243

.lr.ph243:                                        ; preds = %bb.au, %bb.at
  %.sroa.0.1.i.i.i241 = phi i64 [ %i.em, %bb.at ], [ %i.el, %bb.au ] ; 2 uses
  %i.eq = getelementptr inbounds nuw [256 x i8], ptr %1, i64 %.sroa.0.1.i.i.i241
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encoding8EncodingEBH_(ptr noalias noundef align 8 dereferenceable(256) %i.eq) #24
          to label %bb.at unwind label %bb.av, !noalias !505

bb.av:                                            ; preds = %.lr.ph243
  %i.er = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #23, !noalias !505
  unreachable

bb.aw:                                            ; preds = %.body.i
  %i.es = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  br label %.body

.body:                                            ; preds = %bb.at, %bb.au, %bb.aw
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #23, !noalias !505
  unreachable

_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map12map_try_foldNtNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encoding8EncodingBZ_INtNtNtCscdodAO9FK5_5alloc3vec13in_place_drop11InPlaceDropBZ_EINtNtBa_6result6ResultB20_zENCNCNvXs0_NtNtB15_10processors7robertaNtB3C_17RobertaProcessingNtB13_13PostProcessor17process_encodingss0_00NCINvNtB25_16in_place_collect24write_in_place_with_dropBZ_E0E0B15_.exit: ; preds = %bb.aq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !505
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(168) %.sroa.4.0121, ptr noundef nonnull align 8 dereferenceable(168) %.sroa.01.i, i64 168, i1 false), !noalias !505
  %.sroa.4.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.4.0121, i64 192
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.4.sroa.7.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.13.i, i64 64, i1 false), !noalias !505
  %.sroa.4.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.4.0121, i64 168
  store i64 0, ptr %.sroa.4.sroa.4.0..sroa_idx.i, align 8, !noalias !505
  %.sroa.4.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.4.0121, i64 176
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.4.sroa.5.0..sroa_idx.i, align 8, !noalias !505
  %.sroa.4.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.4.0121, i64 184
  store i64 0, ptr %.sroa.4.sroa.6.0..sroa_idx.i, align 8, !noalias !505
  %i.et = getelementptr inbounds nuw i8, ptr %.sroa.4.0121, i64 256 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.01.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.13.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !505
  %.not = icmp eq ptr %i.by, %i.z
  br i1 %.not, label %._crit_edge, label %bb.b

._crit_edge:                                      ; preds = %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map12map_try_foldNtNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encoding8EncodingBZ_INtNtNtCscdodAO9FK5_5alloc3vec13in_place_drop11InPlaceDropBZ_EINtNtBa_6result6ResultB20_zENCNCNvXs0_NtNtB15_10processors7robertaNtB3C_17RobertaProcessingNtB13_13PostProcessor17process_encodingss0_00NCINvNtB25_16in_place_collect24write_in_place_with_dropBZ_E0E0B15_.exit, %bb.a
  %.sroa.4.0.lcssa = phi ptr [ %2, %bb.a ], [ %i.et, %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map12map_try_foldNtNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encoding8EncodingBZ_INtNtNtCscdodAO9FK5_5alloc3vec13in_place_drop11InPlaceDropBZ_EINtNtBa_6result6ResultB20_zENCNCNvXs0_NtNtB15_10processors7robertaNtB3C_17RobertaProcessingNtB13_13PostProcessor17process_encodingss0_00NCINvNtB25_16in_place_collect24write_in_place_with_dropBZ_E0E0B15_.exit ]
  %i.eu = insertvalue { ptr, ptr } poison, ptr %1, 0
  %i.ev = insertvalue { ptr, ptr } %i.eu, ptr %.sroa.4.0.lcssa, 1
  ret { ptr, ptr } %i.ev
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, ptr } @_RINvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB6_8IntoIterNtNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encoding8EncodingENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator8try_foldINtNtB8_13in_place_drop11InPlaceDropBW_ENCINvNtNtB21_8adapters3map12map_try_foldBW_BW_B2Z_INtNtB23_6result6ResultB2Z_zENCNCNvXs0_NtNtB12_10processors7robertaNtB54_17RobertaProcessingNtB10_13PostProcessor17process_encodingss0_0s_0NCINvNtB8_16in_place_collect24write_in_place_with_dropBW_E0E0B4r_EB12_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %0, ptr noundef %1, ptr noundef %2, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %3, ptr nofree noundef readnone captures(none) %4) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 8 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %i.e = alloca [24 x i8], align 8                ; 6 uses
  %i.f = alloca [64 x i8], align 8                ; 4 uses
  %i.g = alloca [24 x i8], align 8                ; 5 uses
  %i.h = alloca [24 x i8], align 8                ; 9 uses
  %i.i = alloca [48 x i8], align 8                ; 9 uses
  %i.j = alloca [24 x i8], align 8                ; 7 uses
  %i.k = alloca [48 x i8], align 8                ; 9 uses
  %i.l = alloca [24 x i8], align 8                ; 7 uses
  %i.m = alloca [48 x i8], align 8                ; 9 uses
  %i.n = alloca [24 x i8], align 8                ; 7 uses
  %i.o = alloca [48 x i8], align 8                ; 9 uses
  %i.p = alloca [24 x i8], align 8                ; 7 uses
  %i.q = alloca [24 x i8], align 8                ; 9 uses
  %i.r = alloca [4 x i8], align 4                 ; 4 uses
  %i.s = alloca [4 x i8], align 4                 ; 4 uses
  %i.t = alloca [48 x i8], align 8                ; 9 uses
  %i.u = alloca [24 x i8], align 8                ; 8 uses
  %i.v = alloca [256 x i8], align 8               ; 14 uses
  %.sroa.01.i = alloca [168 x i8], align 8        ; 10 uses
  %.sroa.13.i = alloca [64 x i8], align 8         ; 4 uses
  %i.w = alloca [16 x i8], align 8                ; 5 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.promoted = load ptr, ptr %i.y, align 8        ; 2 uses
  %i.z = load ptr, ptr %i.x, align 8, !nonnull !6, !noundef !6 ; 2 uses
  %.not120 = icmp eq ptr %.promoted, %i.z
  br i1 %.not120, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.aa = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %i.ad = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.ae = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.af = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  %i.ag = getelementptr inbounds nuw i8, ptr %i.t, i64 32
  %i.ah = getelementptr inbounds nuw i8, ptr %i.t, i64 40
  %i.ai = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.aj = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.al = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.am = getelementptr inbounds nuw i8, ptr %i.v, i64 56
  %i.an = getelementptr inbounds nuw i8, ptr %i.v, i64 64
  %i.ao = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.ap = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.aq = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %i.ar = getelementptr inbounds nuw i8, ptr %i.o, i64 32
  %i.as = getelementptr inbounds nuw i8, ptr %i.o, i64 40
  %i.at = getelementptr inbounds nuw i8, ptr %i.v, i64 80
  %i.au = getelementptr inbounds nuw i8, ptr %i.v, i64 88
  %i.av = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.aw = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.ax = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %i.ay = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  %i.az = getelementptr inbounds nuw i8, ptr %i.m, i64 40
  %i.ba = getelementptr inbounds nuw i8, ptr %i.v, i64 104
  %i.bb = getelementptr inbounds nuw i8, ptr %i.v, i64 112
  %i.bc = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.bd = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.be = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.bf = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  %i.bg = getelementptr inbounds nuw i8, ptr %i.k, i64 40
  %i.bh = getelementptr inbounds nuw i8, ptr %i.v, i64 40
  %i.bi = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.bj = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.bl = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.bm = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.bn = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.bo = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.bp = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  %i.bq = getelementptr inbounds nuw i8, ptr %i.i, i64 40
  %i.br = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.bs = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.bt = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.bv = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.bw = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.bx = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %.sroa.01.24..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.01.i, i64 24
  %.sroa.01.48..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.01.i, i64 48
  %.sroa.01.72..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.01.i, i64 72
  %.sroa.01.96..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.01.i, i64 96
  %.sroa.01.120..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.01.i, i64 120
  %.sroa.01.144..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.01.i, i64 144
  %.val.i.pre = load ptr, ptr %3, align 8, !noalias !526 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map12map_try_foldNtNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encoding8EncodingBZ_INtNtNtCscdodAO9FK5_5alloc3vec13in_place_drop11InPlaceDropBZ_EINtNtBa_6result6ResultB20_zENCNCNvXs0_NtNtB15_10processors7robertaNtB3C_17RobertaProcessingNtB13_13PostProcessor17process_encodingss0_0s_0NCINvNtB25_16in_place_collect24write_in_place_with_dropBZ_E0E0B15_.exit
  %.sroa.4.0121 = phi ptr [ %2, %.lr.ph ], [ %i.es, %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map12map_try_foldNtNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encoding8EncodingBZ_INtNtNtCscdodAO9FK5_5alloc3vec13in_place_drop11InPlaceDropBZ_EINtNtBa_6result6ResultB20_zENCNCNvXs0_NtNtB15_10processors7robertaNtB3C_17RobertaProcessingNtB13_13PostProcessor17process_encodingss0_0s_0NCINvNtB25_16in_place_collect24write_in_place_with_dropBZ_E0E0B15_.exit ] ; 7 uses
  %i.by = phi ptr [ %.promoted, %.lr.ph ], [ %i.bz, %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map12map_try_foldNtNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encoding8EncodingBZ_INtNtNtCscdodAO9FK5_5alloc3vec13in_place_drop11InPlaceDropBZ_EINtNtBa_6result6ResultB20_zENCNCNvXs0_NtNtB15_10processors7robertaNtB3C_17RobertaProcessingNtB13_13PostProcessor17process_encodingss0_0s_0NCINvNtB25_16in_place_collect24write_in_place_with_dropBZ_E0E0B15_.exit ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !noalias !526
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(256) %i.v, ptr noundef nonnull align 8 dereferenceable(256) %i.by, i64 256, i1 false)
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 256 ; 3 uses
  store ptr %i.bz, ptr %i.y, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !noalias !526
  store ptr %1, ptr %i.w, align 8, !noalias !526
  store ptr %.sroa.4.0121, ptr %i.aa, align 8, !noalias !526
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.01.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.13.i)
  call void @llvm.experimental.noalias.scope.decl(metadata !527)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !528
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !528
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !528
  %i.ca = load ptr, ptr %.val.i.pre, align 8, !noalias !528, !nonnull !6, !align !8, !noundef !6
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 24
  %i.cc = load i32, ptr %i.cb, align 8, !noalias !528, !noundef !6 ; 2 uses
  store i32 %i.cc, ptr %i.s, align 4, !noalias !528
  %i.cd = load ptr, ptr %i.ab, align 8, !alias.scope !527, !noalias !526, !nonnull !6, !noundef !6
  %i.ce = load i64, ptr %i.ac, align 8, !alias.scope !527, !noalias !526, !noundef !6 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !528
  store i32 %i.cc, ptr %i.r, align 4, !noalias !528
  store ptr %i.s, ptr %i.t, align 8, !noalias !528
  store i64 1, ptr %i.ad, align 8, !noalias !528
  store ptr %i.cd, ptr %i.ae, align 8, !noalias !528
  store i64 %i.ce, ptr %i.af, align 8, !noalias !528
  store ptr %i.r, ptr %i.ag, align 8, !noalias !528
  store i64 1, ptr %i.ah, align 8, !noalias !528
  invoke void @_RNvXs0_NtCscdodAO9FK5_5alloc5sliceSRSmINtB5_6ConcatmE6concatCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.u, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.t, i64 noundef 3)
          to label %bb.d unwind label %bb.c, !noalias !528

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecmEECs2JiOgHzbbc7_10tokenizers.exit27: ; preds = %bb.g, %bb.c
  %.pn.pn.pn.pn.pn.pn.pn.i.i = phi { ptr, i32 } [ %i.cf, %bb.c ], [ %.pn.pn.pn.pn.pn.pn.i.i, %bb.g ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encoding8EncodingEBH_(ptr noalias noundef nonnull align 8 dereferenceable(256) %i.v) #24
          to label %.body.i unwind label %bb.ar, !noalias !529

bb.c:                                             ; preds = %bb.b
  %i.cf = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecmEECs2JiOgHzbbc7_10tokenizers.exit27

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !528
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !528
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !528
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !528
  %i.cg = add i64 %i.ce, 2                        ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !530)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !531
  invoke void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, i64 noundef %i.cg, i1 noundef zeroext true, i64 noundef 4, i64 noundef 4)
          to label %.noexc.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !528

.noexc.i.i:                                       ; preds = %bb.d
  %i.ch = load i64, ptr %i.d, align 8, !range !14, !noalias !531, !noundef !6
  %i.ci = trunc nuw i64 %i.ch to i1
  %i.cj = load i64, ptr %i.ai, align 8, !range !16, !noalias !531, !noundef !6 ; 2 uses
  br i1 %i.ci, label %bb.e, label %bb.i, !prof !15

bb.e:                                             ; preds = %.noexc.i.i
  %i.ck = load i64, ptr %i.aj, align 8, !noalias !531
  invoke void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef %i.cj, i64 %i.ck) #26
          to label %.noexc12.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !528

.noexc12.i.i:                                     ; preds = %bb.e
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecmEECs2JiOgHzbbc7_10tokenizers.exit22: ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.k
  %.pn.pn.pn.pn.pn.pn.i.i = phi { ptr, i32 } [ %.pn.pn.pn.pn.pn.i.i, %bb.k ], [ %lpad.loopexit.split-lp245, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecmENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.u)
          to label %bb.g unwind label %bb.f, !noalias !528

bb.f:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecmEECs2JiOgHzbbc7_10tokenizers.exit22
  %i.cl = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.u)
          to label %.body7 unwind label %bb.h, !noalias !528

bb.g:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecmEECs2JiOgHzbbc7_10tokenizers.exit22
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.u)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecmEECs2JiOgHzbbc7_10tokenizers.exit27 unwind label %bb.ar

bb.h:                                             ; preds = %bb.f
  %i.cm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #23, !noalias !528
  unreachable

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.d, %bb.e
  %lpad.loopexit.split-lp245 = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecmEECs2JiOgHzbbc7_10tokenizers.exit22

bb.i:                                             ; preds = %.noexc.i.i
  %i.cn = load ptr, ptr %i.aj, align 8, !noalias !531, !nonnull !6, !noundef !6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !531
  store i64 %i.cj, ptr %i.q, align 8, !alias.scope !530, !noalias !528
  store ptr %i.cn, ptr %i.ak, align 8, !alias.scope !530, !noalias !528
  store i64 %i.cg, ptr %i.al, align 8, !alias.scope !530, !noalias !528
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !528
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !528
  %i.co = load ptr, ptr %.val.i.pre, align 8, !noalias !528, !nonnull !6, !align !8, !noundef !6 ; 2 uses
  %i.cp = load ptr, ptr %i.am, align 8, !alias.scope !527, !noalias !526, !nonnull !6, !noundef !6
  %i.cq = load i64, ptr %i.an, align 8, !alias.scope !527, !noalias !526, !noundef !6
  store ptr %i.co, ptr %i.o, align 8, !noalias !528
  store i64 1, ptr %i.ao, align 8, !noalias !528
  store ptr %i.cp, ptr %i.ap, align 8, !noalias !528
  store i64 %i.cq, ptr %i.aq, align 8, !noalias !528
  store ptr %i.co, ptr %i.ar, align 8, !noalias !528
  store i64 1, ptr %i.as, align 8, !noalias !528
  invoke void @_RNvXs0_NtCscdodAO9FK5_5alloc5sliceSRSNtNtB7_6string6StringINtB5_6ConcatBz_E6concatCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.p, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.o, i64 noundef 3)
          to label %bb.n unwind label %bb.m, !noalias !528

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtBG_6string6StringEECs2JiOgHzbbc7_10tokenizers.exit: ; preds = %bb.p, %bb.m
  %.pn.pn.pn.pn.pn.i.i = phi { ptr, i32 } [ %i.ct, %bb.m ], [ %.pn.pn.pn.pn.i.i, %bb.p ]
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecmENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.q)
          to label %bb.k unwind label %bb.j, !noalias !528

bb.j:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtBG_6string6StringEECs2JiOgHzbbc7_10tokenizers.exit
  %i.cr = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.q)
          to label %.body7 unwind label %bb.l, !noalias !528

bb.k:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtBG_6string6StringEECs2JiOgHzbbc7_10tokenizers.exit
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.q)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecmEECs2JiOgHzbbc7_10tokenizers.exit22 unwind label %bb.ar

bb.l:                                             ; preds = %bb.j
  %i.cs = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #23, !noalias !528
  unreachable

bb.m:                                             ; preds = %bb.i
  %i.ct = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtBG_6string6StringEECs2JiOgHzbbc7_10tokenizers.exit

bb.n:                                             ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !528
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !528
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !528
  %i.cu = load ptr, ptr %i.at, align 8, !alias.scope !527, !noalias !526, !nonnull !6, !noundef !6
  %i.cv = load i64, ptr %i.au, align 8, !alias.scope !527, !noalias !526, !noundef !6
  store ptr @4, ptr %i.m, align 8, !noalias !528
  store i64 1, ptr %i.av, align 8, !noalias !528
  store ptr %i.cu, ptr %i.aw, align 8, !noalias !528
  store i64 %i.cv, ptr %i.ax, align 8, !noalias !528
  store ptr @4, ptr %i.ay, align 8, !noalias !528
  store i64 1, ptr %i.az, align 8, !noalias !528
  invoke void @_RNvXs0_NtCscdodAO9FK5_5alloc5sliceSRSINtNtCs4NRVxsYgnAr_4core6option6OptionmEINtB5_6ConcatBz_E6concatCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.n, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.m, i64 noundef 3)
          to label %bb.s unwind label %bb.r, !noalias !528

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB4_6option6OptionmEEECs2JiOgHzbbc7_10tokenizers.exit: ; preds = %bb.u, %bb.r
  %.pn.pn.pn.pn.i.i = phi { ptr, i32 } [ %i.cy, %bb.r ], [ %.pn.pn.pn.i.i, %bb.u ]
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.p)
          to label %bb.p unwind label %bb.o, !noalias !528

bb.o:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB4_6option6OptionmEEECs2JiOgHzbbc7_10tokenizers.exit
  %i.cw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtB7_6string6StringENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.p)
          to label %.body7 unwind label %bb.q, !noalias !528

bb.p:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB4_6option6OptionmEEECs2JiOgHzbbc7_10tokenizers.exit
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtB7_6string6StringENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.p)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtBG_6string6StringEECs2JiOgHzbbc7_10tokenizers.exit unwind label %bb.ar

bb.q:                                             ; preds = %bb.o
  %i.cx = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #23, !noalias !528
  unreachable

bb.r:                                             ; preds = %bb.n
  %i.cy = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB4_6option6OptionmEEECs2JiOgHzbbc7_10tokenizers.exit

bb.s:                                             ; preds = %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !528
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !528
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !528
  %i.cz = load ptr, ptr %i.ba, align 8, !alias.scope !527, !noalias !526, !nonnull !6, !noundef !6
  %i.da = load i64, ptr %i.bb, align 8, !alias.scope !527, !noalias !526, !noundef !6
  store ptr @27, ptr %i.k, align 8, !noalias !528
  store i64 1, ptr %i.bc, align 8, !noalias !528
  store ptr %i.cz, ptr %i.bd, align 8, !noalias !528
  store i64 %i.da, ptr %i.be, align 8, !noalias !528
  store ptr @27, ptr %i.bf, align 8, !noalias !528
  store i64 1, ptr %i.bg, align 8, !noalias !528
  invoke void @_RNvXs0_NtCscdodAO9FK5_5alloc5sliceSRSTjjEINtB5_6ConcatBz_E6concatCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.l, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.k, i64 noundef 3)
          to label %bb.x unwind label %bb.w, !noalias !528

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecTjjEEECs2JiOgHzbbc7_10tokenizers.exit: ; preds = %bb.aa, %bb.w
  %.pn.pn.pn.i.i = phi { ptr, i32 } [ %i.dd, %bb.w ], [ %.pn.pn.i.i, %bb.aa ]
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtCs4NRVxsYgnAr_4core6option6OptionmEENtNtNtBJ_3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.n)
          to label %bb.u unwind label %bb.t, !noalias !528

bb.t:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecTjjEEECs2JiOgHzbbc7_10tokenizers.exit
  %i.db = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecINtNtCs4NRVxsYgnAr_4core6option6OptionmEENtNtNtBQ_3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.n)
          to label %.body7 unwind label %bb.v, !noalias !528

bb.u:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecTjjEEECs2JiOgHzbbc7_10tokenizers.exit
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecINtNtCs4NRVxsYgnAr_4core6option6OptionmEENtNtNtBQ_3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.n)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB4_6option6OptionmEEECs2JiOgHzbbc7_10tokenizers.exit unwind label %bb.ar

bb.v:                                             ; preds = %bb.t
  %i.dc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #23, !noalias !528
  unreachable

bb.w:                                             ; preds = %bb.s
  %i.dd = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecTjjEEECs2JiOgHzbbc7_10tokenizers.exit

bb.x:                                             ; preds = %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !528
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !528
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !528
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !528
  %i.de = load i64, ptr %i.bh, align 8, !alias.scope !527, !noalias !526, !noundef !6 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !532)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !533
  invoke void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, i64 noundef %i.de, i1 noundef zeroext true, i64 noundef 4, i64 noundef 4)
          to label %.noexc13.i.i unwind label %.loopexit.split-lp34.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !528

.noexc13.i.i:                                     ; preds = %bb.x
  %i.df = load i64, ptr %i.c, align 8, !range !14, !noalias !533, !noundef !6
  %i.dg = trunc nuw i64 %i.df to i1
  %i.dh = load i64, ptr %i.bi, align 8, !range !16, !noalias !533, !noundef !6 ; 2 uses
  br i1 %i.dg, label %bb.y, label %bb.ac, !prof !15

bb.y:                                             ; preds = %.noexc13.i.i
  %i.di = load i64, ptr %i.bj, align 8, !noalias !533
  invoke void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef %i.dh, i64 %i.di) #26
          to label %.noexc14.i.i unwind label %.loopexit.split-lp34.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !528

.noexc14.i.i:                                     ; preds = %bb.y
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecmEECs2JiOgHzbbc7_10tokenizers.exit: ; preds = %.loopexit.split-lp34.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.aj, %bb.ad
  %.pn.pn.i.i = phi { ptr, i32 } [ %.pn.i.i, %bb.aj ], [ %i.dm, %bb.ad ], [ %lpad.loopexit.split-lp247, %.loopexit.split-lp34.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecTjjEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.l)
          to label %bb.aa unwind label %bb.z, !noalias !528

bb.z:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecmEECs2JiOgHzbbc7_10tokenizers.exit
  %i.dj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecTjjEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.l)
          to label %.body7 unwind label %bb.ab, !noalias !528

bb.aa:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecmEECs2JiOgHzbbc7_10tokenizers.exit
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecTjjEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.l)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecTjjEEECs2JiOgHzbbc7_10tokenizers.exit unwind label %bb.ar

bb.ab:                                            ; preds = %bb.z
  %i.dk = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #23, !noalias !528
  unreachable

.loopexit.split-lp34.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.x, %bb.y
  %lpad.loopexit.split-lp247 = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecmEECs2JiOgHzbbc7_10tokenizers.exit

bb.ac:                                            ; preds = %.noexc13.i.i
  %i.dl = load ptr, ptr %i.bj, align 8, !noalias !533, !nonnull !6, !noundef !6 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !533
  store i64 %i.dh, ptr %i.h, align 8, !alias.scope !532, !noalias !528
  store ptr %i.dl, ptr %i.bk, align 8, !alias.scope !532, !noalias !528
  store i64 %i.de, ptr %i.bl, align 8, !alias.scope !532, !noalias !528
  store ptr @28, ptr %i.i, align 8, !noalias !528
  store i64 1, ptr %i.bm, align 8, !noalias !528
  store ptr %i.dl, ptr %i.bn, align 8, !noalias !528
  store i64 %i.de, ptr %i.bo, align 8, !noalias !528
  store ptr @28, ptr %i.bp, align 8, !noalias !528
  store i64 1, ptr %i.bq, align 8, !noalias !528
  invoke void @_RNvXs0_NtCscdodAO9FK5_5alloc5sliceSRSmINtB5_6ConcatmE6concatCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.j, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.i, i64 noundef 3)
          to label %bb.ae unwind label %bb.ad, !noalias !528

bb.ad:                                            ; preds = %bb.ac
  %i.dm = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecmEECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef align 8 dereferenceable(24) %i.h) #24
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecmEECs2JiOgHzbbc7_10tokenizers.exit unwind label %bb.ar, !noalias !528

bb.ae:                                            ; preds = %bb.ac
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecmENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %bb.ag unwind label %bb.af, !noalias !528

bb.af:                                            ; preds = %bb.ae
  %i.dn = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %.body.i.i unwind label %bb.ah, !noalias !528

bb.ag:                                            ; preds = %bb.ae
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecmEECs2JiOgHzbbc7_10tokenizers.exit.i.i unwind label %.loopexit.split-lp39.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !528

bb.ah:                                            ; preds = %bb.af
  %i.do = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #23, !noalias !528
  unreachable

.body.i.i:                                        ; preds = %.loopexit.split-lp39.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp44.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.am, %bb.af
  %.pn.i.i = phi { ptr, i32 } [ %lpad.loopexit.split-lp, %.loopexit.split-lp44.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %i.dn, %bb.af ], [ %i.dz, %bb.am ], [ %lpad.loopexit.split-lp250, %.loopexit.split-lp39.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecmENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %bb.aj unwind label %bb.ai, !noalias !528

bb.ai:                                            ; preds = %.body.i.i
  %i.dp = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %.body7 unwind label %bb.ak, !noalias !528

bb.aj:                                            ; preds = %.body.i.i
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecmEECs2JiOgHzbbc7_10tokenizers.exit unwind label %bb.ar

bb.ak:                                            ; preds = %bb.ai
  %i.dq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #23, !noalias !528
  unreachable

.loopexit.split-lp39.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecmEECs2JiOgHzbbc7_10tokenizers.exit.i.i, %bb.ag, %bb.al
  %lpad.loopexit.split-lp250 = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecmEECs2JiOgHzbbc7_10tokenizers.exit.i.i: ; preds = %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !528
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !528
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !528
  %i.dr = load i64, ptr %i.br, align 8, !noalias !528, !noundef !6 ; 5 uses
  %i.ds = icmp ult i64 %i.dr, 2305843009213693952
  call void @llvm.assume(i1 %i.ds)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !534
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !534
  invoke void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef %i.dr, i1 noundef zeroext false, i64 noundef 4, i64 noundef 4)
          to label %.noexc17.i.i unwind label %.loopexit.split-lp39.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !528

.noexc17.i.i:                                     ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecmEECs2JiOgHzbbc7_10tokenizers.exit.i.i
  %i.dt = load i64, ptr %i.a, align 8, !range !14, !noalias !534, !noundef !6
  %i.du = trunc nuw i64 %i.dt to i1
  %i.dv = load i64, ptr %i.bs, align 8, !range !16, !noalias !534, !noundef !6 ; 3 uses
  br i1 %i.du, label %bb.al, label %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs2JiOgHzbbc7_10tokenizers.exit.i.i.i, !prof !15

bb.al:                                            ; preds = %.noexc17.i.i
  %i.dw = load i64, ptr %i.bt, align 8, !noalias !534
  invoke void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef %i.dv, i64 %i.dw) #26
          to label %.noexc18.i.i unwind label %.loopexit.split-lp39.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !528

.noexc18.i.i:                                     ; preds = %bb.al
  unreachable

_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs2JiOgHzbbc7_10tokenizers.exit.i.i.i: ; preds = %.noexc17.i.i
  %i.dx = load ptr, ptr %i.bt, align 8, !noalias !534, !nonnull !6, !noundef !6
  %i.dy = icmp ule i64 %i.dr, %i.dv
  call void @llvm.assume(i1 %i.dy)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !534
  store i64 %i.dv, ptr %i.b, align 8, !noalias !534
  store ptr %i.dx, ptr %i.bu, align 8, !noalias !534
  store i64 0, ptr %i.bv, align 8, !noalias !534
  invoke void @_RNvMs3_NtCscdodAO9FK5_5alloc3vecINtB5_3VecmE11extend_withCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b, i64 noundef %i.dr, i32 noundef 1)
          to label %bb.ao unwind label %bb.am, !noalias !534

bb.am:                                            ; preds = %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs2JiOgHzbbc7_10tokenizers.exit.i.i.i
  %i.dz = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecmEECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef align 8 dereferenceable(24) %i.b) #24
          to label %.body.i.i unwind label %bb.an, !noalias !534

bb.an:                                            ; preds = %bb.am
  %i.ea = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #23, !noalias !534
  unreachable

bb.ao:                                            ; preds = %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs2JiOgHzbbc7_10tokenizers.exit.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.g, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false), !noalias !528
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !534
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !528
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !528
  call void @_RNvCs9wFQrvczXsK_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #25, !noalias !528
  %i.eb = call noundef align 8 dereferenceable_or_null(24) ptr @_RNvCs9wFQrvczXsK_7___rustc12___rust_alloc(i64 noundef range(i64 24, 49) 24, i64 noundef 8) #25, !noalias !528 ; 5 uses
  %i.ec = icmp eq ptr %i.eb, null
  br i1 %i.ec, label %bb.ap, label %_RNvNtCscdodAO9FK5_5alloc5boxed14box_new_uninit.exit.i.i, !prof !15

bb.ap:                                            ; preds = %bb.ao
  invoke void @_RNvNtCscdodAO9FK5_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 24) #26
          to label %.noexc22.i.i unwind label %.loopexit.split-lp44.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !528

.noexc22.i.i:                                     ; preds = %bb.ap
  unreachable

.loopexit.split-lp44.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_RNvNtCscdodAO9FK5_5alloc5boxed14box_new_uninit.exit.i.i, %bb.ap
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecmEECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef align 8 dereferenceable(24) %i.g) #24
          to label %.body.i.i unwind label %bb.ar, !noalias !528

_RNvNtCscdodAO9FK5_5alloc5boxed14box_new_uninit.exit.i.i: ; preds = %bb.ao
  %i.ed = add nsw i64 %i.dr, -1
  store i64 1, ptr %i.eb, align 8, !noalias !528
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.eb, i64 8
  store i64 1, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !528
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.eb, i64 16
  store i64 %i.ed, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !noalias !528
  store i64 1, ptr %i.e, align 8, !noalias !528
  store ptr %i.eb, ptr %i.bw, align 8, !noalias !528
  store i64 1, ptr %i.bx, align 8, !noalias !528
  invoke void @_RINvXsb_NtCsiTTz6JxaXqu_5ahash8hash_mapINtB6_8AHashMapjINtNtNtCs4NRVxsYgnAr_4core3ops5range5RangejEEINtNtNtNtBY_4iter6traits7collect12FromIteratorTjBR_EE9from_iterINtNtCscdodAO9FK5_5alloc3vec3VecB2k_EECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.f, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.e)
          to label %bb.aq unwind label %.loopexit.split-lp44.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !528

bb.aq:                                            ; preds = %_RNvNtCscdodAO9FK5_5alloc5boxed14box_new_uninit.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !528
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.01.i, ptr noundef nonnull align 8 dereferenceable(24) %i.u, i64 24, i1 false), !noalias !535
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.01.24..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(24) %i.q, i64 24, i1 false), !noalias !535
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.01.48..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(24) %i.p, i64 24, i1 false), !noalias !535
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.01.72..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(24) %i.n, i64 24, i1 false), !noalias !535
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.01.96..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(24) %i.l, i64 24, i1 false), !noalias !535
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.01.120..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(24) %i.j, i64 24, i1 false), !noalias !535
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.01.144..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 24, i1 false), !noalias !535
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.13.i, ptr noundef nonnull align 8 dereferenceable(64) %i.f, i64 64, i1 false), !noalias !535
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !528
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !528
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !528
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !528
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !528
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !528
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !528
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !528
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encoding8EncodingEBH_(ptr noalias noundef nonnull align 8 dereferenceable(256) %i.v)
          to label %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map12map_try_foldNtNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encoding8EncodingBZ_INtNtNtCscdodAO9FK5_5alloc3vec13in_place_drop11InPlaceDropBZ_EINtNtBa_6result6ResultB20_zENCNCNvXs0_NtNtB15_10processors7robertaNtB3C_17RobertaProcessingNtB13_13PostProcessor17process_encodingss0_0s_0NCINvNtB25_16in_place_collect24write_in_place_with_dropBZ_E0E0B15_.exit unwind label %bb.as, !noalias !526

bb.ar:                                            ; preds = %bb.g, %bb.k, %bb.p, %bb.u, %bb.aa, %bb.aj, %.loopexit.split-lp44.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.ad, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecmEECs2JiOgHzbbc7_10tokenizers.exit27
  %i.ee = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  br label %.body7

.body7:                                           ; preds = %bb.z, %bb.o, %bb.ar, %bb.f, %bb.j, %bb.t, %bb.ai
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #23, !noalias !529
  unreachable

bb.as:                                            ; preds = %bb.aq
  %i.ef = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.noexc._crit_edge:                                ; preds = %.noexc, %.noexc.preheader
  resume { ptr, i32 } %eh.lpad-body.i

.body.i:                                          ; preds = %bb.as, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecmEECs2JiOgHzbbc7_10tokenizers.exit27
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.ef, %bb.as ], [ %.pn.pn.pn.pn.pn.pn.pn.i.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecmEECs2JiOgHzbbc7_10tokenizers.exit27 ]
  %i.eg = invoke noundef i64 @_RNvMNtNtCscdodAO9FK5_5alloc3vec13in_place_dropINtB2_11InPlaceDropNtNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encoding8EncodingE3lenB17_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.w)
          to label %.noexc.preheader unwind label %bb.aw ; 4 uses

.noexc.preheader:                                 ; preds = %.body.i
  %i.eh = icmp eq i64 %i.eg, 0
  br i1 %i.eh, label %.noexc._crit_edge, label %.lr.ph240

.noexc:                                           ; preds = %.lr.ph240
  %i.ei = icmp eq i64 %i.ek, %i.eg
  br i1 %i.ei, label %.noexc._crit_edge, label %.lr.ph240

.lr.ph240:                                        ; preds = %.noexc.preheader, %.noexc
  %.sroa.0.0.i.i.i239 = phi i64 [ %i.ek, %.noexc ], [ 0, %.noexc.preheader ] ; 2 uses
  %i.ej = getelementptr inbounds nuw [256 x i8], ptr %1, i64 %.sroa.0.0.i.i.i239
  %i.ek = add nuw nsw i64 %.sroa.0.0.i.i.i239, 1  ; 4 uses
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encoding8EncodingEBH_(ptr noalias noundef align 8 dereferenceable(256) %i.ej)
          to label %.noexc unwind label %bb.au, !noalias !526

bb.at:                                            ; preds = %.lr.ph243
  %i.el = add i64 %.sroa.0.1.i.i.i241, 1          ; 2 uses
  %i.em = icmp eq i64 %i.el, %i.eg
  br i1 %i.em, label %.body, label %.lr.ph243

bb.au:                                            ; preds = %.lr.ph240
  %i.en = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  %i.eo = icmp eq i64 %i.ek, %i.eg
  br i1 %i.eo, label %.body, label %.lr.ph243

.lr.ph243:                                        ; preds = %bb.au, %bb.at
  %.sroa.0.1.i.i.i241 = phi i64 [ %i.el, %bb.at ], [ %i.ek, %bb.au ] ; 2 uses
  %i.ep = getelementptr inbounds nuw [256 x i8], ptr %1, i64 %.sroa.0.1.i.i.i241
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encoding8EncodingEBH_(ptr noalias noundef align 8 dereferenceable(256) %i.ep) #24
          to label %bb.at unwind label %bb.av, !noalias !526

bb.av:                                            ; preds = %.lr.ph243
  %i.eq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #23, !noalias !526
  unreachable

bb.aw:                                            ; preds = %.body.i
  %i.er = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  br label %.body

.body:                                            ; preds = %bb.at, %bb.au, %bb.aw
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #23, !noalias !526
  unreachable

_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map12map_try_foldNtNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encoding8EncodingBZ_INtNtNtCscdodAO9FK5_5alloc3vec13in_place_drop11InPlaceDropBZ_EINtNtBa_6result6ResultB20_zENCNCNvXs0_NtNtB15_10processors7robertaNtB3C_17RobertaProcessingNtB13_13PostProcessor17process_encodingss0_0s_0NCINvNtB25_16in_place_collect24write_in_place_with_dropBZ_E0E0B15_.exit: ; preds = %bb.aq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !526
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(168) %.sroa.4.0121, ptr noundef nonnull align 8 dereferenceable(168) %.sroa.01.i, i64 168, i1 false), !noalias !526
  %.sroa.4.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.4.0121, i64 192
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.4.sroa.7.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.13.i, i64 64, i1 false), !noalias !526
  %.sroa.4.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.4.0121, i64 168
  store i64 0, ptr %.sroa.4.sroa.4.0..sroa_idx.i, align 8, !noalias !526
  %.sroa.4.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.4.0121, i64 176
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.4.sroa.5.0..sroa_idx.i, align 8, !noalias !526
  %.sroa.4.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.4.0121, i64 184
  store i64 0, ptr %.sroa.4.sroa.6.0..sroa_idx.i, align 8, !noalias !526
  %i.es = getelementptr inbounds nuw i8, ptr %.sroa.4.0121, i64 256 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.01.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.13.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !526
  %.not = icmp eq ptr %i.bz, %i.z
  br i1 %.not, label %._crit_edge, label %bb.b

._crit_edge:                                      ; preds = %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map12map_try_foldNtNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encoding8EncodingBZ_INtNtNtCscdodAO9FK5_5alloc3vec13in_place_drop11InPlaceDropBZ_EINtNtBa_6result6ResultB20_zENCNCNvXs0_NtNtB15_10processors7robertaNtB3C_17RobertaProcessingNtB13_13PostProcessor17process_encodingss0_0s_0NCINvNtB25_16in_place_collect24write_in_place_with_dropBZ_E0E0B15_.exit, %bb.a
  %.sroa.4.0.lcssa = phi ptr [ %2, %bb.a ], [ %i.es, %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map12map_try_foldNtNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encoding8EncodingBZ_INtNtNtCscdodAO9FK5_5alloc3vec13in_place_drop11InPlaceDropBZ_EINtNtBa_6result6ResultB20_zENCNCNvXs0_NtNtB15_10processors7robertaNtB3C_17RobertaProcessingNtB13_13PostProcessor17process_encodingss0_0s_0NCINvNtB25_16in_place_collect24write_in_place_with_dropBZ_E0E0B15_.exit ]
  %i.et = insertvalue { ptr, ptr } poison, ptr %1, 0
  %i.eu = insertvalue { ptr, ptr } %i.et, ptr %.sroa.4.0.lcssa, 1
  ret { ptr, ptr } %i.eu
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB6_8IntoIterReENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4folduNCINvNtNtB15_8adapters3map8map_foldBW_TBW_uEuNCINvXs8_NtCsgQfI1edjipl_9hashbrown3setINtB2S_7HashSetBW_NtNtCsiTTz6JxaXqu_5ahash12random_state11RandomStateEINtNtB13_7collect6ExtendBW_E6extendBH_E0NCINvNvBZ_8for_each4callB2C_NCINvXs1i_NtB2U_3mapINtB5K_7HashMapBW_uB3E_EIB4v_B2C_E6extendINtB25_3MapBH_B2J_EE0E0E0ECs2JiOgHzbbc7_10tokenizers(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %0, ptr noalias noundef align 8 dereferenceable(64) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !6, !noundef !6
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.promoted = load ptr, ptr %i.e, align 8
  br label %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map8map_foldReTBU_uEuNCINvXs8_NtCsgQfI1edjipl_9hashbrown3setINtB1c_7HashSetBU_NtNtCsiTTz6JxaXqu_5ahash12random_state11RandomStateEINtNtNtB8_6traits7collect6ExtendBU_E6extendINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterBU_EE0NCINvNvNtNtB2T_8iterator8Iterator8for_each4callBW_NCINvXs1i_NtB1e_3mapINtB5m_7HashMapBU_uB1Y_EIB2P_BW_E6extendINtB4_3MapB3v_B13_EE0E0E0Cs2JiOgHzbbc7_10tokenizers.exit

_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map8map_foldReTBU_uEuNCINvXs8_NtCsgQfI1edjipl_9hashbrown3setINtB1c_7HashSetBU_NtNtCsiTTz6JxaXqu_5ahash12random_state11RandomStateEINtNtNtB8_6traits7collect6ExtendBU_E6extendINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterBU_EE0NCINvNvNtNtB2T_8iterator8Iterator8for_each4callBW_NCINvXs1i_NtB1e_3mapINtB5m_7HashMapBU_uB1Y_EIB2P_BW_E6extendINtB4_3MapB3v_B13_EE0E0E0Cs2JiOgHzbbc7_10tokenizers.exit: ; preds = %bb.b, %bb.a
  %i.f = phi ptr [ %i.j, %bb.b ], [ %.promoted, %bb.a ] ; 4 uses
  %.not.not = icmp eq ptr %i.f, %i.d
  br i1 %.not.not, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVecReEECs2JiOgHzbbc7_10tokenizers.exit, label %bb.b

bb.b:                                             ; preds = %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map8map_foldReTBU_uEuNCINvXs8_NtCsgQfI1edjipl_9hashbrown3setINtB1c_7HashSetBU_NtNtCsiTTz6JxaXqu_5ahash12random_state11RandomStateEINtNtNtB8_6traits7collect6ExtendBU_E6extendINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterBU_EE0NCINvNvNtNtB2T_8iterator8Iterator8for_each4callBW_NCINvXs1i_NtB1e_3mapINtB5m_7HashMapBU_uB1Y_EIB2P_BW_E6extendINtB4_3MapB3v_B13_EE0E0E0Cs2JiOgHzbbc7_10tokenizers.exit
  %i.g = load ptr, ptr %i.f, align 8, !nonnull !6, !noundef !6
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.i = load i64, ptr %i.h, align 8, !noundef !6
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.k = invoke noundef zeroext i1 @_RNvMs1_NtCsgQfI1edjipl_9hashbrown3mapINtB5_7HashMapReuNtNtCsiTTz6JxaXqu_5ahash12random_state11RandomStateE6insertCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(64) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.g, i64 noundef %i.i)
          to label %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map8map_foldReTBU_uEuNCINvXs8_NtCsgQfI1edjipl_9hashbrown3setINtB1c_7HashSetBU_NtNtCsiTTz6JxaXqu_5ahash12random_state11RandomStateEINtNtNtB8_6traits7collect6ExtendBU_E6extendINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterBU_EE0NCINvNvNtNtB2T_8iterator8Iterator8for_each4callBW_NCINvXs1i_NtB1e_3mapINtB5m_7HashMapBU_uB1Y_EIB2P_BW_E6extendINtB4_3MapB3v_B13_EE0E0E0Cs2JiOgHzbbc7_10tokenizers.exit unwind label %bb.c ; 0 uses

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVecReEECs2JiOgHzbbc7_10tokenizers.exit: ; preds = %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map8map_foldReTBU_uEuNCINvXs8_NtCsgQfI1edjipl_9hashbrown3setINtB1c_7HashSetBU_NtNtCsiTTz6JxaXqu_5ahash12random_state11RandomStateEINtNtNtB8_6traits7collect6ExtendBU_E6extendINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterBU_EE0NCINvNvNtNtB2T_8iterator8Iterator8for_each4callBW_NCINvXs1i_NtB1e_3mapINtB5m_7HashMapBU_uB1Y_EIB2P_BW_E6extendINtB4_3MapB3v_B13_EE0E0E0Cs2JiOgHzbbc7_10tokenizers.exit
  %i.l = load ptr, ptr %0, align 8, !nonnull !6, !noundef !6
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.n = load i64, ptr %i.m, align 8, !noundef !6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 %i.n, ptr %i.b, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.l, ptr %i.o, align 8
  call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecReENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void

bb.c:                                             ; preds = %bb.b
  %i.p = landingpad { ptr, i32 }
          cleanup
  %.val4 = load ptr, ptr %0, align 8, !alias.scope !540, !nonnull !6, !noundef !6
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val5 = load i64, ptr %i.q, align 8, !alias.scope !540, !noundef !6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !541
  store i64 %.val5, ptr %i.a, align 8, !noalias !541
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %.val4, ptr %i.r, align 8, !noalias !541
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecReENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.a)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterReEECs2JiOgHzbbc7_10tokenizers.exit unwind label %bb.d

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterReEECs2JiOgHzbbc7_10tokenizers.exit: ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !541
  resume { ptr, i32 } %i.p

bb.d:                                             ; preds = %bb.c
  %i.s = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #23
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB6_8IntoIterReENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator8try_folduNCINvNtNtB15_8adapters3map12map_try_foldBW_INtNtB17_6result6ResultNtNtNtCs2JiOgHzbbc7_10tokenizers10processors8template5PieceNtNtBa_6string6StringEuINtNtNtB17_3ops12control_flow11ControlFlowIB4t_B38_EENCNvXs6_B3a_NtB3a_8TemplateINtNtB17_7convert7TryFromINtB8_3VecBW_EE8try_from0NCINvXB2b_INtB2b_12GenericShuntINtB29_3MapBH_B5j_EIB2M_NtB5N_10InfallibleB45_EEBZ_8try_folduNCINvNvBZ_12try_for_each4callB38_B58_NcNtB58_5Break0E0B58_E0E0B4s_EB3e_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 6 uses
  %.sroa.5 = alloca [24 x i8], align 8            ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !6, !noundef !6 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %.promoted = load ptr, ptr %i.d, align 8        ; 2 uses
  %.not15 = icmp eq ptr %.promoted, %i.c
  br i1 %.not15, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 3 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.h
  %i.f = phi ptr [ %.promoted, %.lr.ph ], [ %i.j, %bb.h ] ; 3 uses
  %i.g = load ptr, ptr %i.f, align 8, !nonnull !6, !noundef !6
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.i = load i64, ptr %i.h, align 8, !noundef !6
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 3 uses
  store ptr %i.j, ptr %i.d, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvXs0_NtNtCs2JiOgHzbbc7_10tokenizers10processors8templateNtB5_5PieceINtNtCs4NRVxsYgnAr_4core7convert7TryFromReE8try_from(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.a, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.g, i64 noundef %i.i), !noalias !550
  %.sroa.0.0.copyload.i = load i64, ptr %i.a, align 8, !noalias !551 ; 3 uses
  %i.k = icmp eq i64 %.sroa.0.0.copyload.i, -2
  br i1 %i.k, label %bb.c, label %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map12map_try_foldReINtNtBa_6result6ResultNtNtNtCs2JiOgHzbbc7_10tokenizers10processors8template5PieceNtNtCscdodAO9FK5_5alloc6string6StringEuINtNtNtBa_3ops12control_flow11ControlFlowIB2Y_B1n_EENCNvXs6_B1p_NtB1p_8TemplateINtNtBa_7convert7TryFromINtNtB2o_3vec3VecBZ_EE8try_from0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtB4F_9into_iter8IntoIterBZ_EB3N_EIB12_NtB4h_10InfallibleB2k_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB6P_12try_for_each4callB1n_B3C_NcNtB3C_5Break0E0B3C_E0E0B1t_.exit

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.val.le = load ptr, ptr %i.l, align 8, !nonnull !6, !noundef !6 ; 6 uses
  %i.m = load i64, ptr %.val.le, align 8, !range !5, !alias.scope !552, !noalias !553, !noundef !6
  %i.n = icmp eq i64 %i.m, -1
  br i1 %i.n, label %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map12map_try_foldReINtNtBa_6result6ResultNtNtNtCs2JiOgHzbbc7_10tokenizers10processors8template5PieceNtNtCscdodAO9FK5_5alloc6string6StringEuINtNtNtBa_3ops12control_flow11ControlFlowIB2Y_B1n_EENCNvXs6_B1p_NtB1p_8TemplateINtNtBa_7convert7TryFromINtNtB2o_3vec3VecBZ_EE8try_from0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtB4F_9into_iter8IntoIterBZ_EB3N_EIB12_NtB4h_10InfallibleB2k_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB6P_12try_for_each4callB1n_B3C_NcNtB3C_5Break0E0B3C_E0E0B1t_.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val.le)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtNtCscdodAO9FK5_5alloc6string6StringEECs2JiOgHzbbc7_10tokenizers.exit.i.i.i unwind label %bb.e, !noalias !554

bb.e:                                             ; preds = %bb.d
  %i.o = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val.le)
          to label %.body.i.i unwind label %bb.f, !noalias !554

bb.f:                                             ; preds = %bb.e
  %i.p = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #23, !noalias !554
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtNtCscdodAO9FK5_5alloc6string6StringEECs2JiOgHzbbc7_10tokenizers.exit.i.i.i: ; preds = %bb.d
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val.le)
          to label %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map12map_try_foldReINtNtBa_6result6ResultNtNtNtCs2JiOgHzbbc7_10tokenizers10processors8template5PieceNtNtCscdodAO9FK5_5alloc6string6StringEuINtNtNtBa_3ops12control_flow11ControlFlowIB2Y_B1n_EENCNvXs6_B1p_NtB1p_8TemplateINtNtBa_7convert7TryFromINtNtB2o_3vec3VecBZ_EE8try_from0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtB4F_9into_iter8IntoIterBZ_EB3N_EIB12_NtB4h_10InfallibleB2k_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB6P_12try_for_each4callB1n_B3C_NcNtB3C_5Break0E0B3C_E0E0B1t_.exit.thread unwind label %bb.g, !noalias !554

bb.g:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtNtCscdodAO9FK5_5alloc6string6StringEECs2JiOgHzbbc7_10tokenizers.exit.i.i.i
  %i.q = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

.body.i.i:                                        ; preds = %bb.g, %bb.e
  %eh.lpad-body.i.i = phi { ptr, i32 } [ %i.q, %bb.g ], [ %i.o, %bb.e ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.val.le, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false), !noalias !551
  resume { ptr, i32 } %eh.lpad-body.i.i

_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map12map_try_foldReINtNtBa_6result6ResultNtNtNtCs2JiOgHzbbc7_10tokenizers10processors8template5PieceNtNtCscdodAO9FK5_5alloc6string6StringEuINtNtNtBa_3ops12control_flow11ControlFlowIB2Y_B1n_EENCNvXs6_B1p_NtB1p_8TemplateINtNtBa_7convert7TryFromINtNtB2o_3vec3VecBZ_EE8try_from0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtB4F_9into_iter8IntoIterBZ_EB3N_EIB12_NtB4h_10InfallibleB2k_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB6P_12try_for_each4callB1n_B3C_NcNtB3C_5Break0E0B3C_E0E0B1t_.exit.thread: ; preds = %bb.c, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtNtCscdodAO9FK5_5alloc6string6StringEECs2JiOgHzbbc7_10tokenizers.exit.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.val.le, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false), !noalias !555
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %.loopexit

_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map12map_try_foldReINtNtBa_6result6ResultNtNtNtCs2JiOgHzbbc7_10tokenizers10processors8template5PieceNtNtCscdodAO9FK5_5alloc6string6StringEuINtNtNtBa_3ops12control_flow11ControlFlowIB2Y_B1n_EENCNvXs6_B1p_NtB1p_8TemplateINtNtBa_7convert7TryFromINtNtB2o_3vec3VecBZ_EE8try_from0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtB4F_9into_iter8IntoIterBZ_EB3N_EIB12_NtB4h_10InfallibleB2k_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB6P_12try_for_each4callB1n_B3C_NcNtB3C_5Break0E0B3C_E0E0B1t_.exit: ; preds = %bb.b
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false), !noalias !555
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %.not.i = icmp eq i64 %.sroa.0.0.copyload.i, -3
  br i1 %.not.i, label %bb.h, label %.loopexit

._crit_edge:                                      ; preds = %bb.h, %bb.a, %.loopexit
  %storemerge = phi i64 [ %.sroa.0.0.copyload.i, %.loopexit ], [ -3, %bb.a ], [ -3, %bb.h ]
  store i64 %storemerge, ptr %0, align 8
  ret void

.loopexit:                                        ; preds = %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map12map_try_foldReINtNtBa_6result6ResultNtNtNtCs2JiOgHzbbc7_10tokenizers10processors8template5PieceNtNtCscdodAO9FK5_5alloc6string6StringEuINtNtNtBa_3ops12control_flow11ControlFlowIB2Y_B1n_EENCNvXs6_B1p_NtB1p_8TemplateINtNtBa_7convert7TryFromINtNtB2o_3vec3VecBZ_EE8try_from0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtB4F_9into_iter8IntoIterBZ_EB3N_EIB12_NtB4h_10InfallibleB2k_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB6P_12try_for_each4callB1n_B3C_NcNtB3C_5Break0E0B3C_E0E0B1t_.exit, %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map12map_try_foldReINtNtBa_6result6ResultNtNtNtCs2JiOgHzbbc7_10tokenizers10processors8template5PieceNtNtCscdodAO9FK5_5alloc6string6StringEuINtNtNtBa_3ops12control_flow11ControlFlowIB2Y_B1n_EENCNvXs6_B1p_NtB1p_8TemplateINtNtBa_7convert7TryFromINtNtB2o_3vec3VecBZ_EE8try_from0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtB4F_9into_iter8IntoIterBZ_EB3N_EIB12_NtB4h_10InfallibleB2k_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB6P_12try_for_each4callB1n_B3C_NcNtB3C_5Break0E0B3C_E0E0B1t_.exit.thread
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5)
  br label %._crit_edge

bb.h:                                             ; preds = %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map12map_try_foldReINtNtBa_6result6ResultNtNtNtCs2JiOgHzbbc7_10tokenizers10processors8template5PieceNtNtCscdodAO9FK5_5alloc6string6StringEuINtNtNtBa_3ops12control_flow11ControlFlowIB2Y_B1n_EENCNvXs6_B1p_NtB1p_8TemplateINtNtBa_7convert7TryFromINtNtB2o_3vec3VecBZ_EE8try_from0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtB4F_9into_iter8IntoIterBZ_EB3N_EIB12_NtB4h_10InfallibleB2k_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB6P_12try_for_each4callB1n_B3C_NcNtB3C_5Break0E0B3C_E0E0B1t_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5)
  %.not = icmp eq ptr %i.j, %i.c
  br i1 %.not, label %._crit_edge, label %bb.b
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB6_8IntoIterTINtNtCs4NRVxsYgnAr_4core6option6OptionmETjjEEENtNtNtNtB12_4iter6traits8iterator8Iterator4folduNCINvNtNtB1N_8adapters3map8map_foldBW_TNtNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer10normalizer16NormalizedStringIBY_INtB8_3VecNtB3a_5TokenEEEuNCNvMs2_NtB3a_16added_vocabularyNtB4S_15AddedVocabulary18split_with_indices0NCINvNvB1H_8for_each4callB35_NCINvMsj_B8_IB4l_B35_E14extend_trustedINtB2y_3MapBH_B4K_EE0E0E0EB3c_(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %0, ptr noalias nofree noundef align 8 captures(none) dead_on_return dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [80 x i8], align 8                ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 7 uses
  %i.e = alloca [24 x i8], align 8                ; 5 uses
  %i.f = alloca [80 x i8], align 8                ; 5 uses
  %i.g = alloca [80 x i8], align 8                ; 9 uses
  %.sroa.0.i = alloca [80 x i8], align 8          ; 5 uses
  %i.h = alloca [16 x i8], align 8                ; 5 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.j = load ptr, ptr %i.i, align 8, !nonnull !6, !noundef !6 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.promoted = load ptr, ptr %i.k, align 8        ; 2 uses
  %.not.not36 = icmp eq ptr %.promoted, %i.j
  br i1 %.not.not36, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.val.i = load ptr, ptr %i.l, align 8, !alias.scope !570, !nonnull !6, !align !8, !noundef !6
  %i.m = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %i.o = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %.sroa.414.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sroa.615.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.s = load ptr, ptr %i.r, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %.promoted37 = load i64, ptr %i.t, align 8
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.r
  %.val729 = phi i64 [ %.promoted37, %.lr.ph ], [ %i.ar, %bb.r ] ; 3 uses
  %i.u = phi ptr [ %.promoted, %.lr.ph ], [ %i.v, %bb.r ] ; 4 uses
  %.sroa.013.0.copyload = load i32, ptr %i.u, align 8
  %.sroa.414.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 4
  %.sroa.414.0.copyload = load i32, ptr %.sroa.414.0..sroa_idx, align 4
  %.sroa.515.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 24 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !570)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i)
  %i.w = load <2 x i64>, ptr %.sroa.515.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !571
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !571
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !571
  store <2 x i64> %i.w, ptr %i.m, align 8, !noalias !571
  store i64 1, ptr %i.e, align 8, !noalias !571
  invoke void @_RINvMs0_NtNtCs2JiOgHzbbc7_10tokenizers9tokenizer10normalizerNtB6_16NormalizedString5sliceINtNtNtCs4NRVxsYgnAr_4core3ops5range5RangejEEBa_(ptr noalias noundef nonnull sret([80 x i8]) align 8 captures(none) dereferenceable(80) %i.f, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %.val.i, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.e)
          to label %.noexc unwind label %.thread26.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc:                                           ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !571
  %i.x = load i64, ptr %i.f, align 8, !range !5, !noalias !571, !noundef !6
  %.not.i.i = icmp eq i64 %i.x, -1
  br i1 %.not.i.i, label %bb.d, label %bb.c, !prof !15

bb.c:                                             ; preds = %.noexc
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.g, ptr noundef nonnull align 8 dereferenceable(80) %i.f, i64 80, i1 false), !noalias !571
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !571
  %i.y = trunc nuw i32 %.sroa.013.0.copyload to i1
  br i1 %i.y, label %bb.e, label %bb.f

bb.d:                                             ; preds = %.noexc
  invoke void @_RNvNtCs4NRVxsYgnAr_4core6option13expect_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @38, i64 noundef 25, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @40) #26
          to label %.noexc10 unwind label %.thread26.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc10:                                         ; preds = %bb.d
  unreachable

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !571
  %i.z = load ptr, ptr %i.n, align 8, !noalias !571, !nonnull !6, !noundef !6
  %i.aa = load i64, ptr %i.o, align 8, !noalias !571, !noundef !6 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !571
  invoke void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, i64 noundef %i.aa, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %bb.g unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !571

bb.f:                                             ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.0.i, ptr noundef nonnull align 8 dereferenceable(80) %i.g, i64 80, i1 false), !noalias !572
  br label %bb.r

bb.g:                                             ; preds = %bb.e
  %i.ab = load i64, ptr %i.b, align 8, !range !14, !noalias !571, !noundef !6
  %i.ac = trunc nuw i64 %i.ab to i1
  %i.ad = load i64, ptr %i.p, align 8, !range !16, !noalias !571, !noundef !6 ; 3 uses
  br i1 %i.ac, label %bb.h, label %bb.i, !prof !15

bb.h:                                             ; preds = %bb.g
  %i.ae = load i64, ptr %i.q, align 8, !noalias !571
  invoke void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef %i.ad, i64 %i.ae) #26
          to label %bb.p unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !571

bb.i:                                             ; preds = %bb.g
  %i.af = load ptr, ptr %i.q, align 8, !noalias !571, !nonnull !6, !noundef !6 ; 2 uses
  %i.ag = icmp ule i64 %i.aa, %i.ad
  call void @llvm.assume(i1 %i.ag)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !571
  %.not18.i.i = icmp eq i64 %i.aa, 0
  br i1 %.not18.i.i, label %bb.j, label %bb.l

bb.j:                                             ; preds = %bb.l, %bb.i
  store i64 %i.ad, ptr %i.d, align 8, !noalias !571
  store ptr %i.af, ptr %.sroa.414.0..sroa_idx.i.i, align 8, !noalias !571
  store i64 %i.aa, ptr %.sroa.615.0..sroa_idx.i.i, align 8, !noalias !571
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !571
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.c, ptr noundef nonnull align 8 dereferenceable(80) %i.g, i64 80, i1 false), !noalias !571
  call void @_RNvCs9wFQrvczXsK_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #25, !noalias !571
  %i.ah = call noundef align 8 dereferenceable_or_null(48) ptr @_RNvCs9wFQrvczXsK_7___rustc12___rust_alloc(i64 noundef range(i64 24, 49) 48, i64 noundef 8) #25, !noalias !571 ; 6 uses
  %i.ai = icmp eq ptr %i.ah, null
  br i1 %i.ai, label %bb.k, label %_RNvNtCscdodAO9FK5_5alloc5boxed14box_new_uninit.exit.i.i, !prof !15

bb.k:                                             ; preds = %bb.j
  invoke void @_RNvNtCscdodAO9FK5_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 48) #26
          to label %.noexc.i.i unwind label %bb.m, !noalias !571

.noexc.i.i:                                       ; preds = %bb.k
  unreachable

bb.l:                                             ; preds = %bb.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.af, ptr nonnull align 1 %i.z, i64 %i.aa, i1 false), !noalias !571
  br label %bb.j

bb.m:                                             ; preds = %bb.k
  %i.aj = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer10normalizer16NormalizedStringEBH_(ptr noalias noundef align 8 dereferenceable(80) %i.c) #24
          to label %bb.o unwind label %bb.n, !noalias !571

_RNvNtCscdodAO9FK5_5alloc5boxed14box_new_uninit.exit.i.i: ; preds = %bb.j
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ah, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false), !noalias !571
  %.sroa.48.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ah, i64 24
  store i64 0, ptr %.sroa.48.0..sroa_idx.i.i, align 8, !noalias !571
  %.sroa.59.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ah, i64 32
  store i64 %i.aa, ptr %.sroa.59.0..sroa_idx.i.i, align 8, !noalias !571
  %.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ah, i64 40
  store i32 %.sroa.414.0.copyload, ptr %.sroa.6.0..sroa_idx.i.i, align 8, !noalias !571
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.0.i, ptr noundef nonnull align 8 dereferenceable(80) %i.g, i64 80, i1 false), !noalias !572
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !571
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !571
  br label %bb.r

bb.n:                                             ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.o, %bb.m
  %i.ak = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #23, !noalias !571
  unreachable

bb.o:                                             ; preds = %bb.m
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef align 8 dereferenceable(24) %i.d) #24
          to label %.thread20 unwind label %bb.n, !noalias !571

bb.p:                                             ; preds = %bb.h
  unreachable

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.e, %bb.h
  %lpad.loopexit.split-lp64 = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer10normalizer16NormalizedStringEBH_(ptr noalias noundef align 8 dereferenceable(80) %i.g) #24
          to label %.thread20 unwind label %bb.n, !noalias !571

._crit_edge:                                      ; preds = %bb.r, %bb.a
  %i.al = load ptr, ptr %0, align 8, !nonnull !6, !noundef !6
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.an = load i64, ptr %i.am, align 8, !noundef !6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  store i64 %i.an, ptr %i.h, align 8
  %i.ao = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr %i.al, ptr %i.ao, align 8
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecTINtNtCs4NRVxsYgnAr_4core6option6OptionmETjjEEENtNtNtBR_3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.h)
          to label %bb.q unwind label %bb.t

bb.q:                                             ; preds = %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  %.val = load ptr, ptr %1, align 8, !nonnull !6, !align !8, !noundef !6
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val5 = load i64, ptr %i.ap, align 8, !noundef !6
  store i64 %.val5, ptr %.val, align 8
  ret void

bb.r:                                             ; preds = %_RNvNtCscdodAO9FK5_5alloc5boxed14box_new_uninit.exit.i.i, %bb.f
  %.sroa.7.0.i = phi ptr [ %i.ah, %_RNvNtCscdodAO9FK5_5alloc5boxed14box_new_uninit.exit.i.i ], [ undef, %bb.f ]
  %.sroa.5.0.i = phi i64 [ 1, %_RNvNtCscdodAO9FK5_5alloc5boxed14box_new_uninit.exit.i.i ], [ -1, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !571
  call void @llvm.experimental.noalias.scope.decl(metadata !573)
  call void @llvm.experimental.noalias.scope.decl(metadata !574)
  %i.aq = getelementptr inbounds nuw [104 x i8], ptr %i.s, i64 %.val729 ; 4 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.aq, ptr noundef nonnull align 8 dereferenceable(80) %.sroa.0.i, i64 80, i1 false), !noalias !572
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aq, i64 80
  store i64 %.sroa.5.0.i, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !575
  %.sroa.53.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aq, i64 88
  store ptr %.sroa.7.0.i, ptr %.sroa.53.0..sroa_idx.i, align 8, !noalias !575
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aq, i64 96
  store i64 1, ptr %.sroa.6.0..sroa_idx.i, align 8, !noalias !575
  %i.ar = add i64 %.val729, 1                     ; 2 uses
  store i64 %i.ar, ptr %i.t, align 8, !alias.scope !576
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i)
  %.not.not = icmp eq ptr %i.v, %i.j
  br i1 %.not.not, label %._crit_edge, label %bb.b

bb.s:                                             ; preds = %.thread20
  %i.as = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #23
  unreachable

.thread26.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.b, %bb.d
  %lpad.loopexit.split-lp62 = landingpad { ptr, i32 }
          cleanup
  br label %.thread20

bb.t:                                             ; preds = %._crit_edge
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  %.val6 = load ptr, ptr %1, align 8, !nonnull !6, !align !8, !noundef !6
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val7 = load i64, ptr %i.at, align 8, !noundef !6
  store i64 %.val7, ptr %.val6, align 8
  br label %.thread

.thread:                                          ; preds = %bb.t, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterTINtNtB4_6option6OptionmETjjEEEECs2JiOgHzbbc7_10tokenizers.exit
  %.pn19 = phi { ptr, i32 } [ %lpad.thr_comm.split-lp, %bb.t ], [ %eh.lpad-body24, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterTINtNtB4_6option6OptionmETjjEEEECs2JiOgHzbbc7_10tokenizers.exit ]
  resume { ptr, i32 } %.pn19

.thread20:                                        ; preds = %.thread26.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.o, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %eh.lpad-body24 = phi { ptr, i32 } [ %lpad.loopexit.split-lp64, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %i.aj, %bb.o ], [ %lpad.loopexit.split-lp62, %.thread26.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  %.val628 = load ptr, ptr %1, align 8, !nonnull !6, !align !8, !noundef !6
  store i64 %.val729, ptr %.val628, align 8
  %.val8 = load ptr, ptr %0, align 8, !alias.scope !577, !nonnull !6, !noundef !6
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val9 = load i64, ptr %i.au, align 8, !alias.scope !577, !noundef !6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !578
  store i64 %.val9, ptr %i.a, align 8, !noalias !578
  %i.av = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %.val8, ptr %i.av, align 8, !noalias !578
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecTINtNtCs4NRVxsYgnAr_4core6option6OptionmETjjEEENtNtNtBR_3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.a)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterTINtNtB4_6option6OptionmETjjEEEECs2JiOgHzbbc7_10tokenizers.exit unwind label %bb.s

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterTINtNtB4_6option6OptionmETjjEEEECs2JiOgHzbbc7_10tokenizers.exit: ; preds = %.thread20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !578
  br label %.thread
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RINvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB6_8IntoIterTNtNtBa_6string6StringBX_EENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator8try_folduNCINvNvXs_NtNtB1t_8adapters9enumerateINtB2C_9EnumeratepEB1n_8try_fold9enumerateBW_uINtNtNtB1v_3ops12control_flow11ControlFlowINtNtB3S_9try_trait17NeverShortCircuituEENCINvNtB2E_3map12map_try_foldTjBW_EINtNtB1v_6result6ResultTTmmEB65_EINtNtBa_5boxed3BoxDNtNtB1v_5error5ErrorNtNtB1v_6marker4SendNtB6T_4SyncEL_EEuB3N_NCNvMs1_NtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe5modelNtB7E_10BpeBuilder5builds_0NCINvXB2E_INtB2E_12GenericShuntINtB5d_3MapIB34_BH_EB7w_EIB5I_NtNtB1v_7convert10InfallibleB6e_EEB1n_8try_folduNCINvMB4w_B4t_10wrap_mut_2uB64_NCINvNvB1n_8for_each4callB64_NCINvXs1i_NtCsgQfI1edjipl_9hashbrown3mapINtBbL_7HashMapB65_B65_NtNtCsiTTz6JxaXqu_5ahash12random_state11RandomStateEINtNtB1r_7collect6ExtendB64_E6extendB92_E0E0E0B4t_E0E0E0B3N_EB7K_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [12 x i8], align 4                ; 3 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [32 x i8], align 8                ; 8 uses
  %i.d = alloca [32 x i8], align 8                ; 7 uses
  %i.e = alloca [24 x i8], align 8                ; 5 uses
  %i.f = alloca [32 x i8], align 8                ; 7 uses
  %i.g = alloca [24 x i8], align 8                ; 5 uses
  %i.h = alloca [24 x i8], align 8                ; 16 uses
  %i.i = alloca [24 x i8], align 8                ; 16 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.k = load ptr, ptr %i.j, align 8, !nonnull !6, !noundef !6 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.promoted = load ptr, ptr %i.l, align 8        ; 2 uses
  %.not68.not = icmp eq ptr %.promoted, %i.k
  br i1 %.not68.not, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.n = load ptr, ptr %i.m, align 8, !alias.scope !632, !nonnull !6, !align !8, !noundef !6 ; 5 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.p = load ptr, ptr %i.o, align 8, !alias.scope !633, !nonnull !6, !align !8, !noundef !6 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.u = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.v = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %.val.i.i = load ptr, ptr %1, align 8, !nonnull !6
  %.pre = load i64, ptr %i.n, align 8, !noalias !634
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.bd
  %i.w = phi i64 [ %.pre, %.lr.ph ], [ %i.gm, %bb.bd ]
  %i.x = phi ptr [ %.promoted, %.lr.ph ], [ %i.y, %bb.bd ] ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 48 ; 3 uses
  store ptr %i.y, ptr %i.l, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !632)
  call void @llvm.experimental.noalias.scope.decl(metadata !635)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !636
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.x, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !636
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.h, ptr noundef nonnull align 8 dereferenceable(24) %i.z, i64 24, i1 false)
  call void @llvm.experimental.noalias.scope.decl(metadata !637)
  %i.aa = load ptr, ptr %i.p, align 8, !alias.scope !637, !noalias !638, !nonnull !6, !align !8, !noundef !6 ; 6 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 24 ; 3 uses
  %i.ac = load i64, ptr %i.ab, align 8, !alias.scope !639, !noalias !636, !noundef !6
  %i.ad = icmp eq i64 %i.ac, 0
  br i1 %i.ad, label %select.unfold.i.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ae = getelementptr inbounds nuw i8, ptr %i.aa, i64 32 ; 3 uses
  %i.af = invoke noundef i64 @_RINvYNtNtCsiTTz6JxaXqu_5ahash12random_state11RandomStateNtNtCs4NRVxsYgnAr_4core4hash11BuildHasher8hash_oneRNtNtCscdodAO9FK5_5alloc6string6StringECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.ae, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.i)
          to label %.noexc.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !636 ; 2 uses

.noexc.i.i.i:                                     ; preds = %bb.c
  call void @llvm.experimental.noalias.scope.decl(metadata !640)
  call void @llvm.experimental.noalias.scope.decl(metadata !641)
  %i.ag = lshr i64 %i.af, 57
  %i.ah = trunc nuw nsw i64 %i.ag to i8
  %i.ai = getelementptr inbounds nuw i8, ptr %i.aa, i64 8 ; 3 uses
  %i.aj = load i64, ptr %i.ai, align 8, !alias.scope !642, !noalias !636, !noundef !6 ; 2 uses
  %i.ak = load ptr, ptr %i.aa, align 8, !alias.scope !642, !noalias !636, !nonnull !6, !noundef !6 ; 2 uses
  %i.al = insertelement <16 x i8> poison, i8 %i.ah, i64 0
  %i.am = shufflevector <16 x i8> %i.al, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.d

bb.d:                                             ; preds = %bb.f, %.noexc.i.i.i
  %.sroa.9.0.i.i.i.i.i.i = phi i64 [ 0, %.noexc.i.i.i ], [ %i.bd, %bb.f ]
  %.pn.i.i.i.i.i.i = phi i64 [ %i.af, %.noexc.i.i.i ], [ %i.be, %bb.f ]
  %.sroa.01.0.i.i.i.i.i.i = and i64 %.pn.i.i.i.i.i.i, %i.aj ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.ak, i64 %.sroa.01.0.i.i.i.i.i.i
  %.sroa.0.0.copyload.i26.i.i.i.i.i = load <16 x i8>, ptr %i.an, align 1, !noalias !643 ; 2 uses
  %i.ao = icmp eq <16 x i8> %.sroa.0.0.copyload.i26.i.i.i.i.i, %i.am
  %i.ap = bitcast <16 x i1> %i.ao to i16          ; 2 uses
  %.not.i.not32.i.i.i.i.i = icmp eq i16 %i.ap, 0
  br i1 %.not.i.not32.i.i.i.i.i, label %._crit_edge.i.i.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.d, %bb.e
  %.sroa.06.0.i33.i.i.i.i.i = phi i16 [ %i.bc, %bb.e ], [ %i.ap, %bb.d ] ; 3 uses
  %i.aq = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.06.0.i33.i.i.i.i.i, i1 true)
  %i.ar = zext nneg i16 %i.aq to i64
  %i.as = add i64 %.sroa.01.0.i.i.i.i.i.i, %i.ar
  %i.at = and i64 %i.as, %i.aj
  %i.au = sub nsw i64 0, %i.at
  %i.av = getelementptr inbounds [32 x i8], ptr %i.ak, i64 %i.au ; 2 uses
  %i.aw = getelementptr inbounds i8, ptr %i.av, i64 -32
  %i.ax = invoke noundef zeroext i1 @_RNvXCsgQfI1edjipl_9hashbrownNtNtCscdodAO9FK5_5alloc6string6StringINtB2_10EquivalentBq_E10equivalentCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.aw)
          to label %.noexc104.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !636

.noexc104.i.i.i:                                  ; preds = %.lr.ph.i.i.i.i.i
  br i1 %i.ax, label %_RINvMs1_NtCsgQfI1edjipl_9hashbrown3mapINtB6_7HashMapNtNtCscdodAO9FK5_5alloc6string6StringmNtNtCsiTTz6JxaXqu_5ahash12random_state11RandomStateE3getBO_ECs2JiOgHzbbc7_10tokenizers.exit.i.i.i, label %bb.e, !prof !644

._crit_edge.i.i.i.i.i:                            ; preds = %bb.e, %bb.d
  %i.ay = icmp eq <16 x i8> %.sroa.0.0.copyload.i26.i.i.i.i.i, splat (i8 -1)
  %i.az = bitcast <16 x i1> %i.ay to i16
  %i.ba = icmp eq i16 %i.az, 0
  br i1 %i.ba, label %bb.f, label %select.unfold.i.i.i, !prof !15

bb.e:                                             ; preds = %.noexc104.i.i.i
  %i.bb = add i16 %.sroa.06.0.i33.i.i.i.i.i, -1
  %i.bc = and i16 %i.bb, %.sroa.06.0.i33.i.i.i.i.i ; 2 uses
  %.not.i.not.i.i.i.i.i = icmp eq i16 %i.bc, 0
  br i1 %.not.i.not.i.i.i.i.i, label %._crit_edge.i.i.i.i.i, label %.lr.ph.i.i.i.i.i

bb.f:                                             ; preds = %._crit_edge.i.i.i.i.i
  %i.bd = add i64 %.sroa.9.0.i.i.i.i.i.i, 16      ; 2 uses
  %i.be = add i64 %.sroa.01.0.i.i.i.i.i.i, %i.bd
  br label %bb.d

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.lr.ph.i.i.i.i.i, %.lr.ph.i.i132.i.i.i, %.lr.ph.i.i110.i.i.i, %bb.ad, %bb.aa, %bb.x, %bb.g, %bb.c, %bb.aj, %select.unfold166.i.i.i, %.invoke.i.i.i, %select.unfold163.i.i.i, %select.unfold.i.i.i
  %lpad.loopexit.split-lp189 = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i

.body.i.i.i:                                      ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.an, %bb.u, %bb.m
  %eh.lpad-body.i.i.i = phi { ptr, i32 } [ %i.cv, %bb.u ], [ %i.cj, %bb.m ], [ %i.fn, %bb.an ], [ %lpad.loopexit.split-lp189, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef align 8 dereferenceable(24) %i.h) #24
          to label %.body122.i.i.i unwind label %bb.au, !noalias !636

_RINvMs1_NtCsgQfI1edjipl_9hashbrown3mapINtB6_7HashMapNtNtCscdodAO9FK5_5alloc6string6StringmNtNtCsiTTz6JxaXqu_5ahash12random_state11RandomStateE3getBO_ECs2JiOgHzbbc7_10tokenizers.exit.i.i.i: ; preds = %.noexc104.i.i.i
  %i.bf = getelementptr inbounds i8, ptr %i.av, i64 -8
  %i.bg = load i64, ptr %i.ab, align 8, !alias.scope !645, !noalias !636, !noundef !6
  %i.bh = icmp eq i64 %i.bg, 0
  br i1 %i.bh, label %select.unfold163.i.i.i, label %bb.g

bb.g:                                             ; preds = %_RINvMs1_NtCsgQfI1edjipl_9hashbrown3mapINtB6_7HashMapNtNtCscdodAO9FK5_5alloc6string6StringmNtNtCsiTTz6JxaXqu_5ahash12random_state11RandomStateE3getBO_ECs2JiOgHzbbc7_10tokenizers.exit.i.i.i
  %i.bi = invoke noundef i64 @_RINvYNtNtCsiTTz6JxaXqu_5ahash12random_state11RandomStateNtNtCs4NRVxsYgnAr_4core4hash11BuildHasher8hash_oneRNtNtCscdodAO9FK5_5alloc6string6StringECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.ae, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.h)
          to label %.noexc118.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !636 ; 2 uses

.noexc118.i.i.i:                                  ; preds = %bb.g
  call void @llvm.experimental.noalias.scope.decl(metadata !646)
  call void @llvm.experimental.noalias.scope.decl(metadata !647)
  %i.bj = lshr i64 %i.bi, 57
  %i.bk = trunc nuw nsw i64 %i.bj to i8
  %i.bl = load i64, ptr %i.ai, align 8, !alias.scope !648, !noalias !636, !noundef !6 ; 2 uses
  %i.bm = load ptr, ptr %i.aa, align 8, !alias.scope !648, !noalias !636, !nonnull !6, !noundef !6 ; 2 uses
  %i.bn = insertelement <16 x i8> poison, i8 %i.bk, i64 0
  %i.bo = shufflevector <16 x i8> %i.bn, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.h

bb.h:                                             ; preds = %bb.j, %.noexc118.i.i.i
  %.sroa.9.0.i.i.i105.i.i.i = phi i64 [ 0, %.noexc118.i.i.i ], [ %i.cf, %bb.j ]
  %.pn.i.i.i106.i.i.i = phi i64 [ %i.bi, %.noexc118.i.i.i ], [ %i.cg, %bb.j ]
  %.sroa.01.0.i.i.i107.i.i.i = and i64 %.pn.i.i.i106.i.i.i, %i.bl ; 3 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bm, i64 %.sroa.01.0.i.i.i107.i.i.i
  %.sroa.0.0.copyload.i26.i.i108.i.i.i = load <16 x i8>, ptr %i.bp, align 1, !noalias !649 ; 2 uses
  %i.bq = icmp eq <16 x i8> %.sroa.0.0.copyload.i26.i.i108.i.i.i, %i.bo
  %i.br = bitcast <16 x i1> %i.bq to i16          ; 2 uses
  %.not.i.not32.i.i109.i.i.i = icmp eq i16 %i.br, 0
  br i1 %.not.i.not32.i.i109.i.i.i, label %._crit_edge.i.i113.i.i.i, label %.lr.ph.i.i110.i.i.i

.lr.ph.i.i110.i.i.i:                              ; preds = %bb.h, %bb.i
  %.sroa.06.0.i33.i.i111.i.i.i = phi i16 [ %i.ce, %bb.i ], [ %i.br, %bb.h ] ; 3 uses
  %i.bs = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.06.0.i33.i.i111.i.i.i, i1 true)
  %i.bt = zext nneg i16 %i.bs to i64
  %i.bu = add i64 %.sroa.01.0.i.i.i107.i.i.i, %i.bt
  %i.bv = and i64 %i.bu, %i.bl
  %i.bw = sub nsw i64 0, %i.bv
  %i.bx = getelementptr inbounds [32 x i8], ptr %i.bm, i64 %i.bw ; 2 uses
  %i.by = getelementptr inbounds i8, ptr %i.bx, i64 -32
  %i.bz = invoke noundef zeroext i1 @_RNvXCsgQfI1edjipl_9hashbrownNtNtCscdodAO9FK5_5alloc6string6StringINtB2_10EquivalentBq_E10equivalentCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.h, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.by)
          to label %.noexc119.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !636

.noexc119.i.i.i:                                  ; preds = %.lr.ph.i.i110.i.i.i
  br i1 %i.bz, label %_RINvMs1_NtCsgQfI1edjipl_9hashbrown3mapINtB6_7HashMapNtNtCscdodAO9FK5_5alloc6string6StringmNtNtCsiTTz6JxaXqu_5ahash12random_state11RandomStateE3getBO_ECs2JiOgHzbbc7_10tokenizers.exit120.i.i.i, label %bb.i, !prof !644

._crit_edge.i.i113.i.i.i:                         ; preds = %bb.i, %bb.h
  %i.ca = icmp eq <16 x i8> %.sroa.0.0.copyload.i26.i.i108.i.i.i, splat (i8 -1)
  %i.cb = bitcast <16 x i1> %i.ca to i16
  %i.cc = icmp eq i16 %i.cb, 0
  br i1 %i.cc, label %bb.j, label %select.unfold163.i.i.i, !prof !15

bb.i:                                             ; preds = %.noexc119.i.i.i
  %i.cd = add i16 %.sroa.06.0.i33.i.i111.i.i.i, -1
  %i.ce = and i16 %i.cd, %.sroa.06.0.i33.i.i111.i.i.i ; 2 uses
  %.not.i.not.i.i112.i.i.i = icmp eq i16 %i.ce, 0
  br i1 %.not.i.not.i.i112.i.i.i, label %._crit_edge.i.i113.i.i.i, label %.lr.ph.i.i110.i.i.i

bb.j:                                             ; preds = %._crit_edge.i.i113.i.i.i
  %i.cf = add i64 %.sroa.9.0.i.i.i105.i.i.i, 16   ; 2 uses
  %i.cg = add i64 %.sroa.01.0.i.i.i107.i.i.i, %i.cf
  br label %bb.h

select.unfold.i.i.i:                              ; preds = %bb.b, %._crit_edge.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !636
  invoke void @_RNvXs4_NtCscdodAO9FK5_5alloc6stringNtB5_6StringNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.g, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.i)
          to label %bb.k unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !636

bb.k:                                             ; preds = %select.unfold.i.i.i
  %.sroa.459.8.copyload.i.i.i = load ptr, ptr %i.g, align 8, !noalias !636
  %.sroa.660.8..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !636
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.660.8..sroa_idx.i.i.i, i64 16, i1 false), !noalias !636
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !636
  store i64 4, ptr %i.f, align 8, !noalias !636
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %.sroa.459.8.copyload.i.i.i, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !noalias !636
  call void @_RNvCs9wFQrvczXsK_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #25, !noalias !650
  %i.ch = call noundef align 8 dereferenceable_or_null(32) ptr @_RNvCs9wFQrvczXsK_7___rustc12___rust_alloc(i64 noundef range(i64 24, 49) 32, i64 noundef 8) #25, !noalias !650 ; 3 uses
  %i.ci = icmp eq ptr %i.ch, null
  br i1 %i.ci, label %bb.l, label %bb.o, !prof !15

bb.l:                                             ; preds = %bb.k
  invoke void @_RNvNtCscdodAO9FK5_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 32) #26
          to label %.noexc121.i.i.i unwind label %bb.m, !noalias !636

.noexc121.i.i.i:                                  ; preds = %bb.l
  unreachable

bb.m:                                             ; preds = %bb.l
  %i.cj = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe5ErrorEBH_(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.f) #24
          to label %.body.i.i.i unwind label %bb.n, !noalias !636

bb.n:                                             ; preds = %bb.m
  %i.ck = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #23, !noalias !636
  unreachable

bb.o:                                             ; preds = %bb.k
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ch, ptr noundef nonnull align 8 dereferenceable(32) %i.f, i64 32, i1 false), !noalias !636
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !636
  br label %bb.p

bb.p:                                             ; preds = %bb.ap, %bb.w, %bb.o
  %.sroa.9.0.i.i = phi ptr [ %i.ch, %bb.o ], [ %i.ct, %bb.w ], [ %i.fl, %bb.ap ] ; 2 uses
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECs2JiOgHzbbc7_10tokenizers.exit.i.i.i.i unwind label %bb.q, !noalias !636

bb.q:                                             ; preds = %bb.p
  %i.cl = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %.body122.i.i.i unwind label %bb.r, !noalias !636

bb.r:                                             ; preds = %bb.q
  %i.cm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #23, !noalias !636
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECs2JiOgHzbbc7_10tokenizers.exit.i.i.i.i: ; preds = %bb.p
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs2JiOgHzbbc7_10tokenizers.exit.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !636

_RINvMs1_NtCsgQfI1edjipl_9hashbrown3mapINtB6_7HashMapNtNtCscdodAO9FK5_5alloc6string6StringmNtNtCsiTTz6JxaXqu_5ahash12random_state11RandomStateE3getBO_ECs2JiOgHzbbc7_10tokenizers.exit120.i.i.i: ; preds = %.noexc119.i.i.i
  %i.cn = getelementptr inbounds i8, ptr %i.bx, i64 -8
  %i.co = load ptr, ptr %i.q, align 8, !alias.scope !637, !noalias !638, !nonnull !6, !align !8, !noundef !6 ; 2 uses
  %i.cp = load i64, ptr %i.r, align 8, !noalias !636, !noundef !6 ; 5 uses
  %i.cq = icmp sgt i64 %i.cp, -1
  call void @llvm.assume(i1 %i.cq)
  %i.cr = getelementptr inbounds nuw i8, ptr %i.co, i64 16 ; 3 uses
  %i.cs = load i64, ptr %i.cr, align 8, !noalias !636, !noundef !6 ; 2 uses
  %.not92.i.i.i = icmp ugt i64 %i.cp, %i.cs
  br i1 %.not92.i.i.i, label %.invoke.i.i.i, label %bb.x, !prof !13

select.unfold163.i.i.i:                           ; preds = %_RINvMs1_NtCsgQfI1edjipl_9hashbrown3mapINtB6_7HashMapNtNtCscdodAO9FK5_5alloc6string6StringmNtNtCsiTTz6JxaXqu_5ahash12random_state11RandomStateE3getBO_ECs2JiOgHzbbc7_10tokenizers.exit.i.i.i, %._crit_edge.i.i113.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !636
  invoke void @_RNvXs4_NtCscdodAO9FK5_5alloc6stringNtB5_6StringNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.e, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.h)
          to label %bb.s unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !636

bb.s:                                             ; preds = %select.unfold163.i.i.i
  %.sroa.468.8.copyload.i.i.i = load ptr, ptr %i.e, align 8, !noalias !636
  %.sroa.669.8..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.sroa.534.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !636
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.534.0..sroa_idx.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.669.8..sroa_idx.i.i.i, i64 16, i1 false), !noalias !636
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !636
  store i64 4, ptr %i.d, align 8, !noalias !636
  %.sroa.433.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %.sroa.468.8.copyload.i.i.i, ptr %.sroa.433.0..sroa_idx.i.i.i, align 8, !noalias !636
  call void @_RNvCs9wFQrvczXsK_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #25, !noalias !651
  %i.ct = call noundef align 8 dereferenceable_or_null(32) ptr @_RNvCs9wFQrvczXsK_7___rustc12___rust_alloc(i64 noundef range(i64 24, 49) 32, i64 noundef 8) #25, !noalias !651 ; 3 uses
  %i.cu = icmp eq ptr %i.ct, null
  br i1 %i.cu, label %bb.t, label %bb.w, !prof !15

bb.t:                                             ; preds = %bb.s
  invoke void @_RNvNtCscdodAO9FK5_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 32) #26
          to label %.noexc125.i.i.i unwind label %bb.u, !noalias !636

.noexc125.i.i.i:                                  ; preds = %bb.t
  unreachable

bb.u:                                             ; preds = %bb.t
  %i.cv = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe5ErrorEBH_(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.d) #24
          to label %.body.i.i.i unwind label %bb.v, !noalias !636

bb.v:                                             ; preds = %bb.u
  %i.cw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #23, !noalias !636
  unreachable

bb.w:                                             ; preds = %bb.s
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ct, ptr noundef nonnull align 8 dereferenceable(32) %i.d, i64 32, i1 false), !noalias !636
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !636
  br label %bb.p

bb.x:                                             ; preds = %_RINvMs1_NtCsgQfI1edjipl_9hashbrown3mapINtB6_7HashMapNtNtCscdodAO9FK5_5alloc6string6StringmNtNtCsiTTz6JxaXqu_5ahash12random_state11RandomStateE3getBO_ECs2JiOgHzbbc7_10tokenizers.exit120.i.i.i
  %i.cx = getelementptr inbounds nuw i8, ptr %i.co, i64 8 ; 3 uses
  %i.cy = load ptr, ptr %i.cx, align 8, !noalias !636, !nonnull !6, !noundef !6
  %i.cz = load ptr, ptr %i.s, align 8, !noalias !636, !nonnull !6, !noundef !6
  invoke void @_RINvNtCs4NRVxsYgnAr_4core5slice20copy_from_slice_implhECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull %i.cy, i64 noundef %i.cp, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.cz, i64 noundef %i.cp, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @32)
          to label %bb.y unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !636

bb.y:                                             ; preds = %bb.x
  %i.da = load i64, ptr %i.t, align 8, !noalias !636, !noundef !6 ; 5 uses
  %i.db = icmp sgt i64 %i.da, -1
  call void @llvm.assume(i1 %i.db)
  %i.dc = load ptr, ptr %i.u, align 8, !alias.scope !637, !noalias !638, !nonnull !6, !align !8, !noundef !6
  %i.dd = load i64, ptr %i.dc, align 8, !noalias !636, !noundef !6 ; 4 uses
  %i.de = sub i64 %i.da, %i.dd                    ; 3 uses
  %i.df = load i64, ptr %i.r, align 8, !noalias !636, !noundef !6 ; 5 uses
  %i.dg = icmp sgt i64 %i.df, -1
  call void @llvm.assume(i1 %i.dg)
  %i.dh = add i64 %i.df, %i.de                    ; 12 uses
  %i.di = load ptr, ptr %i.cx, align 8, !noalias !636, !nonnull !6, !noundef !6
  %i.dj = load i64, ptr %i.cr, align 8, !noalias !636, !noundef !6 ; 2 uses
  %i.dk = icmp ult i64 %i.dh, %i.df
  %.not93.i.i.i = icmp ugt i64 %i.dh, %i.dj
  %or.cond.i.i.i = or i1 %i.dk, %.not93.i.i.i
  br i1 %or.cond.i.i.i, label %.invoke.i.i.i, label %bb.z, !prof !13

bb.z:                                             ; preds = %bb.y
  %i.dl = icmp ugt i64 %i.dd, %i.da
  br i1 %i.dl, label %.invoke.i.i.i, label %bb.aa, !prof !15

bb.aa:                                            ; preds = %bb.z
  %i.dm = load ptr, ptr %i.v, align 8, !noalias !636, !nonnull !6, !noundef !6
  %i.dn = getelementptr inbounds nuw i8, ptr %i.di, i64 %i.df
  %i.do = getelementptr inbounds nuw i8, ptr %i.dm, i64 %i.dd
  invoke void @_RINvNtCs4NRVxsYgnAr_4core5slice20copy_from_slice_implhECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull %i.dn, i64 noundef %i.de, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.do, i64 noundef %i.de, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @33)
          to label %bb.ab unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !636

bb.ab:                                            ; preds = %bb.aa
  %i.dp = load i64, ptr %i.cr, align 8, !noalias !636, !noundef !6 ; 2 uses
  %.not94.i.i.i = icmp ugt i64 %i.dh, %i.dp
  br i1 %.not94.i.i.i, label %.invoke.i.i.i, label %bb.ac, !prof !13

.invoke.i.i.i:                                    ; preds = %bb.ab, %bb.z, %bb.y, %_RINvMs1_NtCsgQfI1edjipl_9hashbrown3mapINtB6_7HashMapNtNtCscdodAO9FK5_5alloc6string6StringmNtNtCsiTTz6JxaXqu_5ahash12random_state11RandomStateE3getBO_ECs2JiOgHzbbc7_10tokenizers.exit120.i.i.i
  %i.dq = phi i64 [ %i.dd, %bb.z ], [ %i.df, %bb.y ], [ 0, %_RINvMs1_NtCsgQfI1edjipl_9hashbrown3mapINtB6_7HashMapNtNtCscdodAO9FK5_5alloc6string6StringmNtNtCsiTTz6JxaXqu_5ahash12random_state11RandomStateE3getBO_ECs2JiOgHzbbc7_10tokenizers.exit120.i.i.i ], [ 0, %bb.ab ]
  %i.dr = phi i64 [ %i.da, %bb.z ], [ %i.dh, %bb.y ], [ %i.cp, %_RINvMs1_NtCsgQfI1edjipl_9hashbrown3mapINtB6_7HashMapNtNtCscdodAO9FK5_5alloc6string6StringmNtNtCsiTTz6JxaXqu_5ahash12random_state11RandomStateE3getBO_ECs2JiOgHzbbc7_10tokenizers.exit120.i.i.i ], [ %i.dh, %bb.ab ]
  %i.ds = phi i64 [ %i.da, %bb.z ], [ %i.dj, %bb.y ], [ %i.cs, %_RINvMs1_NtCsgQfI1edjipl_9hashbrown3mapINtB6_7HashMapNtNtCscdodAO9FK5_5alloc6string6StringmNtNtCsiTTz6JxaXqu_5ahash12random_state11RandomStateE3getBO_ECs2JiOgHzbbc7_10tokenizers.exit120.i.i.i ], [ %i.dp, %bb.ab ]
  %i.dt = phi ptr [ @35, %bb.z ], [ @36, %bb.y ], [ @37, %_RINvMs1_NtCsgQfI1edjipl_9hashbrown3mapINtB6_7HashMapNtNtCscdodAO9FK5_5alloc6string6StringmNtNtCsiTTz6JxaXqu_5ahash12random_state11RandomStateE3getBO_ECs2JiOgHzbbc7_10tokenizers.exit120.i.i.i ], [ @34, %bb.ab ]
  invoke void @_RNvNtNtCs4NRVxsYgnAr_4core5slice5index16slice_index_fail(i64 noundef %i.dq, i64 noundef %i.dr, i64 noundef %i.ds, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.dt) #26
          to label %.cont.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !636

.cont.i.i.i:                                      ; preds = %.invoke.i.i.i
  unreachable

bb.ac:                                            ; preds = %bb.ab
  %i.du = load ptr, ptr %i.cx, align 8, !noalias !636, !nonnull !6, !noundef !6 ; 3 uses
  %i.dv = load i64, ptr %i.ab, align 8, !alias.scope !652, !noalias !636, !noundef !6
  %i.dw = icmp eq i64 %i.dv, 0
  br i1 %i.dw, label %select.unfold166.i.i.i, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.dx = invoke noundef i64 @_RINvYNtNtCsiTTz6JxaXqu_5ahash12random_state11RandomStateNtNtCs4NRVxsYgnAr_4core4hash11BuildHasher8hash_oneReECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.ae, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.du, i64 noundef %i.dh)
          to label %.noexc139.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !636 ; 2 uses

.noexc139.i.i.i:                                  ; preds = %bb.ad
  call void @llvm.experimental.noalias.scope.decl(metadata !653)
  call void @llvm.experimental.noalias.scope.decl(metadata !654)
  %i.dy = lshr i64 %i.dx, 57
  %i.dz = trunc nuw nsw i64 %i.dy to i8
  %i.ea = load i64, ptr %i.ai, align 8, !alias.scope !655, !noalias !636, !noundef !6 ; 2 uses
  %i.eb = load ptr, ptr %i.aa, align 8, !alias.scope !655, !noalias !636, !nonnull !6, !noundef !6 ; 2 uses
  %i.ec = insertelement <16 x i8> poison, i8 %i.dz, i64 0
  %i.ed = shufflevector <16 x i8> %i.ec, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ag, %.noexc139.i.i.i
  %.sroa.9.0.i.i.i127.i.i.i = phi i64 [ 0, %.noexc139.i.i.i ], [ %i.eu, %bb.ag ]
  %.pn.i.i.i128.i.i.i = phi i64 [ %i.dx, %.noexc139.i.i.i ], [ %i.ev, %bb.ag ]
  %.sroa.01.0.i.i.i129.i.i.i = and i64 %.pn.i.i.i128.i.i.i, %i.ea ; 3 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %i.eb, i64 %.sroa.01.0.i.i.i129.i.i.i
  %.sroa.0.0.copyload.i26.i.i130.i.i.i = load <16 x i8>, ptr %i.ee, align 1, !noalias !656 ; 2 uses
  %i.ef = icmp eq <16 x i8> %.sroa.0.0.copyload.i26.i.i130.i.i.i, %i.ed
  %i.eg = bitcast <16 x i1> %i.ef to i16          ; 2 uses
  %.not.i.not32.i.i131.i.i.i = icmp eq i16 %i.eg, 0
  br i1 %.not.i.not32.i.i131.i.i.i, label %._crit_edge.i.i135.i.i.i, label %.lr.ph.i.i132.i.i.i

.lr.ph.i.i132.i.i.i:                              ; preds = %bb.ae, %bb.af
  %.sroa.06.0.i33.i.i133.i.i.i = phi i16 [ %i.et, %bb.af ], [ %i.eg, %bb.ae ] ; 3 uses
  %i.eh = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.06.0.i33.i.i133.i.i.i, i1 true)
  %i.ei = zext nneg i16 %i.eh to i64
  %i.ej = add i64 %.sroa.01.0.i.i.i129.i.i.i, %i.ei
  %i.ek = and i64 %i.ej, %i.ea
  %i.el = sub nsw i64 0, %i.ek
  %i.em = getelementptr inbounds [32 x i8], ptr %i.eb, i64 %i.el ; 2 uses
  %i.en = getelementptr inbounds i8, ptr %i.em, i64 -32
  %i.eo = invoke noundef zeroext i1 @_RNvXCsgQfI1edjipl_9hashbrowneINtB2_10EquivalentNtNtCscdodAO9FK5_5alloc6string6StringE10equivalentCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.du, i64 noundef %i.dh, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.en)
          to label %.noexc140.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !636

.noexc140.i.i.i:                                  ; preds = %.lr.ph.i.i132.i.i.i
  br i1 %i.eo, label %_RINvMs1_NtCsgQfI1edjipl_9hashbrown3mapINtB6_7HashMapNtNtCscdodAO9FK5_5alloc6string6StringmNtNtCsiTTz6JxaXqu_5ahash12random_state11RandomStateE3geteECs2JiOgHzbbc7_10tokenizers.exit.i.i.i, label %bb.af, !prof !644

._crit_edge.i.i135.i.i.i:                         ; preds = %bb.af, %bb.ae
  %i.ep = icmp eq <16 x i8> %.sroa.0.0.copyload.i26.i.i130.i.i.i, splat (i8 -1)
  %i.eq = bitcast <16 x i1> %i.ep to i16
  %i.er = icmp eq i16 %i.eq, 0
  br i1 %i.er, label %bb.ag, label %select.unfold166.i.i.i, !prof !15

bb.af:                                            ; preds = %.noexc140.i.i.i
  %i.es = add i16 %.sroa.06.0.i33.i.i133.i.i.i, -1
  %i.et = and i16 %i.es, %.sroa.06.0.i33.i.i133.i.i.i ; 2 uses
  %.not.i.not.i.i134.i.i.i = icmp eq i16 %i.et, 0
  br i1 %.not.i.not.i.i134.i.i.i, label %._crit_edge.i.i135.i.i.i, label %.lr.ph.i.i132.i.i.i

bb.ag:                                            ; preds = %._crit_edge.i.i135.i.i.i
  %i.eu = add i64 %.sroa.9.0.i.i.i127.i.i.i, 16   ; 2 uses
  %i.ev = add i64 %.sroa.01.0.i.i.i129.i.i.i, %i.eu
  br label %bb.ae

_RINvMs1_NtCsgQfI1edjipl_9hashbrown3mapINtB6_7HashMapNtNtCscdodAO9FK5_5alloc6string6StringmNtNtCsiTTz6JxaXqu_5ahash12random_state11RandomStateE3geteECs2JiOgHzbbc7_10tokenizers.exit.i.i.i: ; preds = %.noexc140.i.i.i
  %i.ew = getelementptr inbounds i8, ptr %i.em, i64 -8
  %i.ex = load i32, ptr %i.bf, align 4, !noalias !636, !noundef !6
  %i.ey = load i32, ptr %i.cn, align 4, !noalias !636, !noundef !6
  %i.ez = load i32, ptr %i.ew, align 4, !noalias !636, !noundef !6
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECs2JiOgHzbbc7_10tokenizers.exit.i142.i.i.i unwind label %bb.ah, !noalias !636

bb.ah:                                            ; preds = %_RINvMs1_NtCsgQfI1edjipl_9hashbrown3mapINtB6_7HashMapNtNtCscdodAO9FK5_5alloc6string6StringmNtNtCsiTTz6JxaXqu_5ahash12random_state11RandomStateE3geteECs2JiOgHzbbc7_10tokenizers.exit.i.i.i
  %i.fa = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %.body122.i.i.i unwind label %bb.ai, !noalias !636

bb.ai:                                            ; preds = %bb.ah
  %i.fb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #23, !noalias !636
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECs2JiOgHzbbc7_10tokenizers.exit.i142.i.i.i: ; preds = %_RINvMs1_NtCsgQfI1edjipl_9hashbrown3mapINtB6_7HashMapNtNtCscdodAO9FK5_5alloc6string6StringmNtNtCsiTTz6JxaXqu_5ahash12random_state11RandomStateE3geteECs2JiOgHzbbc7_10tokenizers.exit.i.i.i
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs2JiOgHzbbc7_10tokenizers.exit146.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !636

select.unfold166.i.i.i:                           ; preds = %bb.ac, %._crit_edge.i.i135.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !657
  invoke void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, i64 noundef %i.dh, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %.noexc148.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !636

.noexc148.i.i.i:                                  ; preds = %select.unfold166.i.i.i
  %i.fc = load i64, ptr %i.b, align 8, !range !14, !noalias !657, !noundef !6
  %i.fd = trunc nuw i64 %i.fc to i1
  %i.fe = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.ff = load i64, ptr %i.fe, align 8, !range !16, !noalias !657, !noundef !6 ; 3 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  br i1 %i.fd, label %bb.aj, label %bb.ak, !prof !15

bb.aj:                                            ; preds = %.noexc148.i.i.i
  %i.fh = load i64, ptr %i.fg, align 8, !noalias !657
  invoke void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef %i.ff, i64 %i.fh) #26
          to label %.noexc149.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !636

.noexc149.i.i.i:                                  ; preds = %bb.aj
  unreachable

bb.ak:                                            ; preds = %.noexc148.i.i.i
  %i.fi = load ptr, ptr %i.fg, align 8, !noalias !657, !nonnull !6, !noundef !6 ; 2 uses
  %i.fj = icmp ule i64 %i.dh, %i.ff
  call void @llvm.assume(i1 %i.fj)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !657
  %.not.i147.i.i.i = icmp eq i64 %i.dh, 0
  br i1 %.not.i147.i.i.i, label %_RNCNCNvMs1_NtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe5modelNtB9_10BpeBuilder5builds_0s0_0Bf_.exit.i.i.i, label %bb.al

bb.al:                                            ; preds = %bb.ak
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.fi, ptr nonnull readonly align 1 %i.du, i64 %i.dh, i1 false), !noalias !657
  br label %_RNCNCNvMs1_NtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe5modelNtB9_10BpeBuilder5builds_0s0_0Bf_.exit.i.i.i

_RNCNCNvMs1_NtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe5modelNtB9_10BpeBuilder5builds_0s0_0Bf_.exit.i.i.i: ; preds = %bb.al, %bb.ak
  %i.fk = inttoptr i64 %i.ff to ptr
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !636
  store i64 4, ptr %i.c, align 8, !noalias !636
  %.sroa.452.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.fk, ptr %.sroa.452.0..sroa_idx.i.i.i, align 8, !noalias !636
  %.sroa.553.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store ptr %i.fi, ptr %.sroa.553.0..sroa_idx.i.i.i, align 8, !noalias !636
  %.sroa.553.sroa.4.0..sroa.553.0..sroa_idx.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store i64 %i.dh, ptr %.sroa.553.sroa.4.0..sroa.553.0..sroa_idx.sroa_idx.i.i.i, align 8, !noalias !636
  call void @_RNvCs9wFQrvczXsK_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #25, !noalias !658
  %i.fl = call noundef align 8 dereferenceable_or_null(32) ptr @_RNvCs9wFQrvczXsK_7___rustc12___rust_alloc(i64 noundef range(i64 24, 49) 32, i64 noundef 8) #25, !noalias !658 ; 3 uses
  %i.fm = icmp eq ptr %i.fl, null
  br i1 %i.fm, label %bb.am, label %bb.ap, !prof !15

bb.am:                                            ; preds = %_RNCNCNvMs1_NtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe5modelNtB9_10BpeBuilder5builds_0s0_0Bf_.exit.i.i.i
  invoke void @_RNvNtCscdodAO9FK5_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 32) #26
          to label %.noexc150.i.i.i unwind label %bb.an, !noalias !636

.noexc150.i.i.i:                                  ; preds = %bb.am
  unreachable

bb.an:                                            ; preds = %bb.am
  %i.fn = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe5ErrorEBH_(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.c) #24
          to label %.body.i.i.i unwind label %bb.ao, !noalias !636

bb.ao:                                            ; preds = %bb.an
  %i.fo = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #23, !noalias !636
  unreachable

bb.ap:                                            ; preds = %_RNCNCNvMs1_NtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe5modelNtB9_10BpeBuilder5builds_0s0_0Bf_.exit.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.fl, ptr noundef nonnull align 8 dereferenceable(32) %i.c, i64 32, i1 false), !noalias !636
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !636
  br label %bb.p

.body122.i.i.i:                                   ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.ah, %bb.q, %.body.i.i.i
  %.pn.i.i.i = phi { ptr, i32 } [ %eh.lpad-body.i.i.i, %.body.i.i.i ], [ %i.cl, %bb.q ], [ %i.fa, %bb.ah ], [ %lpad.loopexit.split-lp194, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef align 8 dereferenceable(24) %i.i) #24
          to label %common.resume.i.i unwind label %bb.au, !noalias !636

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECs2JiOgHzbbc7_10tokenizers.exit.i142.i.i.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECs2JiOgHzbbc7_10tokenizers.exit.i.i.i.i
  %lpad.loopexit.split-lp194 = landingpad { ptr, i32 }
          cleanup
  br label %.body122.i.i.i

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs2JiOgHzbbc7_10tokenizers.exit.i.i.i: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECs2JiOgHzbbc7_10tokenizers.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !636
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %bb.av unwind label %bb.aq, !noalias !636

bb.aq:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs2JiOgHzbbc7_10tokenizers.exit.i.i.i
  %i.fp = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %common.resume.i.i unwind label %bb.ar, !noalias !636

bb.ar:                                            ; preds = %bb.aq
  %i.fq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #23, !noalias !636
  unreachable

common.resume.i.i:                                ; preds = %.body.i3.i.i, %bb.as, %bb.aq, %.body122.i.i.i
  %common.resume.op.i.i = phi { ptr, i32 } [ %i.gd, %.body.i3.i.i ], [ %i.fr, %bb.as ], [ %i.fp, %bb.aq ], [ %.pn.i.i.i, %.body122.i.i.i ]
  resume { ptr, i32 } %common.resume.op.i.i

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs2JiOgHzbbc7_10tokenizers.exit146.i.i.i: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECs2JiOgHzbbc7_10tokenizers.exit.i142.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !636
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %bb.bd unwind label %bb.as, !noalias !636

bb.as:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs2JiOgHzbbc7_10tokenizers.exit146.i.i.i
  %i.fr = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %common.resume.i.i unwind label %bb.at, !noalias !636

bb.at:                                            ; preds = %bb.as
  %i.fs = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #23, !noalias !636
  unreachable

bb.au:                                            ; preds = %.body122.i.i.i, %.body.i.i.i
  %i.ft = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #23, !noalias !636
  unreachable

bb.av:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs2JiOgHzbbc7_10tokenizers.exit.i.i.i
  call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.i), !noalias !636
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !636
  %i.fu = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val214.i.i = load ptr, ptr %i.fu, align 8, !alias.scope !633, !nonnull !6, !noundef !6 ; 4 uses
  %.val.i.i.i = load ptr, ptr %.val214.i.i, align 8, !noalias !659, !noundef !6 ; 4 uses
  %i.fv = getelementptr i8, ptr %.val214.i.i, i64 8 ; 3 uses
  %.val4.i.i.i = load ptr, ptr %i.fv, align 8, !noalias !659 ; 6 uses
  %i.fw = icmp eq ptr %.val.i.i.i, null
  br i1 %i.fw, label %bb.bc, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val4.i.i.i) ]
  %i.fx = load ptr, ptr %.val4.i.i.i, align 8, !invariant.load !6, !noalias !659 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.fx, null
  br i1 %.not.i.i.i.i.i.i, label %bb.ay, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  invoke void %i.fx(ptr noundef nonnull %.val.i.i.i)
          to label %bb.ay unwind label %bb.ba, !noalias !659

bb.ay:                                            ; preds = %bb.ax, %bb.aw
  %i.fy = getelementptr inbounds nuw i8, ptr %.val4.i.i.i, i64 8
  %i.fz = load i64, ptr %i.fy, align 8, !range !9, !invariant.load !6, !noalias !659 ; 2 uses
  %i.ga = icmp eq i64 %i.fz, 0
  br i1 %i.ga, label %bb.bc, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.gb = getelementptr inbounds nuw i8, ptr %.val4.i.i.i, i64 16
  %i.gc = load i64, ptr %i.gb, align 8, !range !10, !invariant.load !6, !noalias !659
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i, i64 noundef range(i64 1, 0) %i.fz, i64 noundef range(i64 1, 536870913) %i.gc) #25, !noalias !659
  br label %bb.bc

bb.ba:                                            ; preds = %bb.ax
  %i.gd = landingpad { ptr, i32 }
          cleanup
  %i.ge = getelementptr inbounds nuw i8, ptr %.val4.i.i.i, i64 8
  %i.gf = load i64, ptr %i.ge, align 8, !range !9, !invariant.load !6, !noalias !659 ; 2 uses
  %i.gg = icmp eq i64 %i.gf, 0
  br i1 %i.gg, label %.body.i3.i.i, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.gh = getelementptr inbounds nuw i8, ptr %.val4.i.i.i, i64 16
  %i.gi = load i64, ptr %i.gh, align 8, !range !10, !invariant.load !6, !noalias !659
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i, i64 noundef range(i64 1, 0) %i.gf, i64 noundef range(i64 1, 536870913) %i.gi) #25, !noalias !659
  br label %.body.i3.i.i

.body.i3.i.i:                                     ; preds = %bb.bb, %bb.ba
  store ptr %.sroa.9.0.i.i, ptr %.val214.i.i, align 8, !noalias !659
  store ptr @30, ptr %i.fv, align 8, !noalias !659
  br label %common.resume.i.i

.loopexit:                                        ; preds = %bb.bd, %bb.a, %bb.bc
  %.not38 = phi i1 [ true, %bb.bc ], [ false, %bb.a ], [ false, %bb.bd ]
  ret i1 %.not38

bb.bc:                                            ; preds = %bb.av, %bb.ay, %bb.az
  store ptr %.sroa.9.0.i.i, ptr %.val214.i.i, align 8, !noalias !659
  store ptr @30, ptr %i.fv, align 8, !noalias !659
  %i.gj = load i64, ptr %i.n, align 8, !noalias !634, !noundef !6
  %i.gk = add i64 %i.gj, 1
  store i64 %i.gk, ptr %i.n, align 8, !noalias !634
  br label %.loopexit

bb.bd:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs2JiOgHzbbc7_10tokenizers.exit146.i.i.i
  call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.i), !noalias !636
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !636
  %.val5.i.i.i = load ptr, ptr %.val.i.i, align 8, !noalias !659, !nonnull !6, !align !8, !noundef !6
  %.sroa.48.8.extract.trunc.i.i.i = trunc i64 %i.w to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !660
  call void @_RNvMs1_NtCsgQfI1edjipl_9hashbrown3mapINtB5_7HashMapTmmEBN_NtNtCsiTTz6JxaXqu_5ahash12random_state11RandomStateE6insertCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull sret([12 x i8]) align 4 captures(none) dereferenceable(12) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(64) %.val5.i.i.i, i32 noundef %i.ex, i32 noundef %i.ey, i32 noundef %.sroa.48.8.extract.trunc.i.i.i, i32 noundef %i.ez), !noalias !660
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !660
  %i.gl = load i64, ptr %i.n, align 8, !noalias !634, !noundef !6
  %i.gm = add i64 %i.gl, 1                        ; 2 uses
  store i64 %i.gm, ptr %i.n, align 8, !noalias !634
  %.not.not = icmp eq ptr %i.y, %i.k
  br i1 %.not.not, label %.loopexit, label %bb.b
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB6_8IntoIterTNtNtBa_6string6StringdEENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4folduNCINvNvB1l_8for_each4callBW_NCINvMsj_B8_INtB8_3VecBW_E14extend_trustedINtNtNtB1r_8adapters5chain5ChainBH_BH_EE0E0ECs2JiOgHzbbc7_10tokenizers(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %0, ptr noalias nofree noundef align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !6, !noundef !6 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.promoted = load ptr, ptr %i.d, align 8        ; 2 uses
  %.not.not8 = icmp eq ptr %.promoted, %i.c
  br i1 %.not.not8, label %bb.b, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !alias.scope !665, !noundef !6
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %.promoted9 = load i64, ptr %i.g, align 8, !alias.scope !665
  br label %bb.e

._crit_edge:                                      ; preds = %bb.e
  store i64 %i.s, ptr %i.g, align 8, !alias.scope !665
  br label %bb.b

bb.b:                                             ; preds = %._crit_edge, %bb.a
  %i.h = load ptr, ptr %0, align 8, !nonnull !6, !noundef !6
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.j = load i64, ptr %i.i, align 8, !noundef !6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 %i.j, ptr %i.a, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.h, ptr %i.k, align 8
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecTNtNtB7_6string6StringdEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.a)
          to label %bb.d unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = landingpad { ptr, i32 }
          cleanup
  %.val6 = load ptr, ptr %1, align 8, !nonnull !6, !align !8, !noundef !6
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val7 = load i64, ptr %i.m, align 8, !noundef !6
  store i64 %.val7, ptr %.val6, align 8
  resume { ptr, i32 } %i.l

end_hunk_4
begin_hunk_5_@_RINvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB6_8IntoIterTNtNtBa_6string6StringdEENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator8try_foldINtNtB8_13in_place_drop11InPlaceDropBW_ENCINvNtNtB1r_8adapters3map12map_try_foldBW_BW_B2p_INtNtB1t_6result6ResultB2p_zENCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB4r_14UnigramTrainer10run_m_step0NCINvNtB8_16in_place_collect24write_in_place_with_dropBW_E0E0B3R_EB4x_:bb.a
  %.sroa.4.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.4.015, i64 24
  store double %i.ab, ptr %.sroa.4.sroa.4.0..sroa_idx.i, align 8, !noalias !671
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.4.015, i64 32 ; 2 uses
  %.not = icmp eq ptr %i.e, %i.b
  br i1 %.not, label %._crit_edge, label %bb.b

._crit_edge:                                      ; preds = %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map12map_try_foldTNtNtCscdodAO9FK5_5alloc6string6StringdEBZ_INtNtNtB14_3vec13in_place_drop11InPlaceDropBZ_EINtNtBa_6result6ResultB1G_zENCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB30_14UnigramTrainer10run_m_step0NCINvNtB1L_16in_place_collect24write_in_place_with_dropBZ_E0E0B36_.exit
  store ptr %i.e, ptr %i.c, align 8
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge, %bb.a
  %.sroa.4.0.lcssa = phi ptr [ %i.ac, %._crit_edge ], [ %2, %bb.a ]
  %i.ad = insertvalue { ptr, ptr } poison, ptr %1, 0
  %i.ae = insertvalue { ptr, ptr } %i.ad, ptr %.sroa.4.0.lcssa, 1
  ret { ptr, ptr } %i.ae
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RINvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB6_8IntoIterTRNtNtBa_6string6StringRyEENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1t_8adapters6filter15filter_try_foldBW_uINtNtNtB1v_3ops12control_flow11ControlFlowINtNtB3l_9try_trait17NeverShortCircuituEENCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models9wordlevel7trainerNtB4I_16WordLevelTrainer8do_trains0_0NCINvNtB2z_3map12map_try_foldBW_BY_uB3g_NCB4D_s1_0NCINvNvXs_NtB2z_4takeINtB7c_4TakepEB1n_8try_fold5checkBY_uB3W_NCINvMB3Z_B3W_10wrap_mut_2uBY_NCINvNvXs_NtB2z_9enumerateINtB8G_9EnumeratepEB1n_4fold9enumerateBY_uNCINvB6j_8map_foldTjBY_ETBY_mEuNCB4D_s2_0NCINvNvB1n_8for_each4callBa0_NCINvXs1i_NtCsgQfI1edjipl_9hashbrown3mapINtBaU_7HashMapBY_mNtNtCsiTTz6JxaXqu_5ahash12random_state11RandomStateEINtNtB1r_7collect6ExtendBa0_E6extendINtB6j_3MapIB8X_IB7o_INtNtB2z_5chain5ChainIBd8_INtNtNtB1v_5slice4iter4IterNtNtNtB4O_9tokenizer16added_vocabulary10AddedTokenENCB4D_s_0EIBd8_INtB2x_6FilterBH_B4B_EB6S_EEEEBa7_EE0E0E0E0E0E0E0E0B3g_EB4O_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(40) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !6, !noundef !6 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.promoted = load ptr, ptr %i.d, align 8        ; 2 uses
  %.not4.not = icmp eq ptr %.promoted, %i.c
  br i1 %.not4.not, label %.split._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load ptr, ptr %1, align 8, !alias.scope !695, !nonnull !6, !align !8, !noundef !6
  %i.g = load ptr, ptr %i.e, align 8, !nonnull !6, !align !8 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.val.i.i.i.i.i = load ptr, ptr %i.h, align 8, !nonnull !6, !align !8
  %.promoted7 = load i64, ptr %i.i, align 8
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters6filter15filter_try_foldTRNtNtCscdodAO9FK5_5alloc6string6StringRyEuINtNtNtBa_3ops12control_flow11ControlFlowINtNtB1R_9try_trait17NeverShortCircuituEENCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models9wordlevel7trainerNtB3d_16WordLevelTrainer8do_trains0_0NCINvNtB6_3map12map_try_foldB15_B17_uB1M_NCB38_s1_0NCINvNvXs_NtB6_4takeINtB5I_4TakepENtNtNtB8_6traits8iterator8Iterator8try_fold5checkB17_uB2r_NCINvMB2u_B2r_10wrap_mut_2uB17_NCINvNvXs_NtB6_9enumerateINtB7H_9EnumeratepEB66_4fold9enumerateB17_uNCINvB4O_8map_foldTjB17_ETB17_mEuNCB38_s2_0NCINvNvB66_8for_each4callB92_NCINvXs1i_NtCsgQfI1edjipl_9hashbrown3mapINtB9X_7HashMapB17_mNtNtCsiTTz6JxaXqu_5ahash12random_state11RandomStateEINtNtB6a_7collect6ExtendB92_E6extendINtB4O_3MapIB7X_IB5T_INtNtB6_5chain5ChainIBcc_INtNtNtBa_5slice4iter4IterNtNtNtB3j_9tokenizer16added_vocabulary10AddedTokenENCB38_s_0EIBcc_INtB4_6FilterINtNtNtB1b_3vec9into_iter8IntoIterB15_EB36_EB5o_EEEEB9a_EE0E0E0E0E0E0E0E0B3j_.exit.backedge
  %i.j = phi i64 [ %.promoted7, %.lr.ph ], [ %i.aa, %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters6filter15filter_try_foldTRNtNtCscdodAO9FK5_5alloc6string6StringRyEuINtNtNtBa_3ops12control_flow11ControlFlowINtNtB1R_9try_trait17NeverShortCircuituEENCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models9wordlevel7trainerNtB3d_16WordLevelTrainer8do_trains0_0NCINvNtB6_3map12map_try_foldB15_B17_uB1M_NCB38_s1_0NCINvNvXs_NtB6_4takeINtB5I_4TakepENtNtNtB8_6traits8iterator8Iterator8try_fold5checkB17_uB2r_NCINvMB2u_B2r_10wrap_mut_2uB17_NCINvNvXs_NtB6_9enumerateINtB7H_9EnumeratepEB66_4fold9enumerateB17_uNCINvB4O_8map_foldTjB17_ETB17_mEuNCB38_s2_0NCINvNvB66_8for_each4callB92_NCINvXs1i_NtCsgQfI1edjipl_9hashbrown3mapINtB9X_7HashMapB17_mNtNtCsiTTz6JxaXqu_5ahash12random_state11RandomStateEINtNtB6a_7collect6ExtendB92_E6extendINtB4O_3MapIB7X_IB5T_INtNtB6_5chain5ChainIBcc_INtNtNtBa_5slice4iter4IterNtNtNtB3j_9tokenizer16added_vocabulary10AddedTokenENCB38_s_0EIBcc_INtB4_6FilterINtNtNtB1b_3vec9into_iter8IntoIterB15_EB36_EB5o_EEEEB9a_EE0E0E0E0E0E0E0E0B3j_.exit.backedge ] ; 3 uses
  %i.k = phi ptr [ %.promoted, %.lr.ph ], [ %i.o, %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters6filter15filter_try_foldTRNtNtCscdodAO9FK5_5alloc6string6StringRyEuINtNtNtBa_3ops12control_flow11ControlFlowINtNtB1R_9try_trait17NeverShortCircuituEENCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models9wordlevel7trainerNtB3d_16WordLevelTrainer8do_trains0_0NCINvNtB6_3map12map_try_foldB15_B17_uB1M_NCB38_s1_0NCINvNvXs_NtB6_4takeINtB5I_4TakepENtNtNtB8_6traits8iterator8Iterator8try_fold5checkB17_uB2r_NCINvMB2u_B2r_10wrap_mut_2uB17_NCINvNvXs_NtB6_9enumerateINtB7H_9EnumeratepEB66_4fold9enumerateB17_uNCINvB4O_8map_foldTjB17_ETB17_mEuNCB38_s2_0NCINvNvB66_8for_each4callB92_NCINvXs1i_NtCsgQfI1edjipl_9hashbrown3mapINtB9X_7HashMapB17_mNtNtCsiTTz6JxaXqu_5ahash12random_state11RandomStateEINtNtB6a_7collect6ExtendB92_E6extendINtB4O_3MapIB7X_IB5T_INtNtB6_5chain5ChainIBcc_INtNtNtBa_5slice4iter4IterNtNtNtB3j_9tokenizer16added_vocabulary10AddedTokenENCB38_s_0EIBcc_INtB4_6FilterINtNtNtB1b_3vec9into_iter8IntoIterB15_EB36_EB5o_EEEEB9a_EE0E0E0E0E0E0E0E0B3j_.exit.backedge ] ; 3 uses
  %i.l = load ptr, ptr %i.k, align 8, !nonnull !6, !align !8, !noundef !6
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !nonnull !6, !align !8, !noundef !6
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 16 ; 3 uses
  store ptr %i.o, ptr %i.d, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !695)
  call void @llvm.experimental.noalias.scope.decl(metadata !696)
  %.val.i = load ptr, ptr %i.f, align 8, !noalias !697, !nonnull !6, !align !8, !noundef !6
  %i.p = load i64, ptr %i.n, align 8, !alias.scope !696, !noundef !6
  %i.q = load ptr, ptr %.val.i, align 8, !noalias !697, !nonnull !6, !align !8, !noundef !6
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 88
  %i.s = load i64, ptr %i.r, align 8, !noalias !697, !noundef !6
  %.not.i = icmp ult i64 %i.p, %i.s
  br i1 %.not.i, label %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters6filter15filter_try_foldTRNtNtCscdodAO9FK5_5alloc6string6StringRyEuINtNtNtBa_3ops12control_flow11ControlFlowINtNtB1R_9try_trait17NeverShortCircuituEENCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models9wordlevel7trainerNtB3d_16WordLevelTrainer8do_trains0_0NCINvNtB6_3map12map_try_foldB15_B17_uB1M_NCB38_s1_0NCINvNvXs_NtB6_4takeINtB5I_4TakepENtNtNtB8_6traits8iterator8Iterator8try_fold5checkB17_uB2r_NCINvMB2u_B2r_10wrap_mut_2uB17_NCINvNvXs_NtB6_9enumerateINtB7H_9EnumeratepEB66_4fold9enumerateB17_uNCINvB4O_8map_foldTjB17_ETB17_mEuNCB38_s2_0NCINvNvB66_8for_each4callB92_NCINvXs1i_NtCsgQfI1edjipl_9hashbrown3mapINtB9X_7HashMapB17_mNtNtCsiTTz6JxaXqu_5ahash12random_state11RandomStateEINtNtB6a_7collect6ExtendB92_E6extendINtB4O_3MapIB7X_IB5T_INtNtB6_5chain5ChainIBcc_INtNtNtBa_5slice4iter4IterNtNtNtB3j_9tokenizer16added_vocabulary10AddedTokenENCB38_s_0EIBcc_INtB4_6FilterINtNtNtB1b_3vec9into_iter8IntoIterB15_EB36_EB5o_EEEEB9a_EE0E0E0E0E0E0E0E0B3j_.exit.backedge, label %.split

.split:                                           ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !698
  call void @_RNvXs4_NtCscdodAO9FK5_5alloc6stringNtB5_6StringNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.l), !noalias !699
  %i.t = load i64, ptr %i.g, align 8, !noalias !700, !noundef !6
  %i.u = add i64 %i.t, -1
  store i64 %i.u, ptr %i.g, align 8, !noalias !700
  %i.v = trunc i64 %i.j to i32
  %i.w = call { i32, i32 } @_RNvMs1_NtCsgQfI1edjipl_9hashbrown3mapINtB5_7HashMapNtNtCscdodAO9FK5_5alloc6string6StringmNtNtCsiTTz6JxaXqu_5ahash12random_state11RandomStateE6insertCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(64) %.val.i.i.i.i.i, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.a, i32 noundef %i.v), !noalias !701 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !698
  %i.x = add i64 %i.j, 1
  %i.y = load i64, ptr %i.g, align 8, !noalias !700, !noundef !6
  %i.z = icmp eq i64 %i.y, 0
  br i1 %i.z, label %.split._crit_edge, label %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters6filter15filter_try_foldTRNtNtCscdodAO9FK5_5alloc6string6StringRyEuINtNtNtBa_3ops12control_flow11ControlFlowINtNtB1R_9try_trait17NeverShortCircuituEENCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models9wordlevel7trainerNtB3d_16WordLevelTrainer8do_trains0_0NCINvNtB6_3map12map_try_foldB15_B17_uB1M_NCB38_s1_0NCINvNvXs_NtB6_4takeINtB5I_4TakepENtNtNtB8_6traits8iterator8Iterator8try_fold5checkB17_uB2r_NCINvMB2u_B2r_10wrap_mut_2uB17_NCINvNvXs_NtB6_9enumerateINtB7H_9EnumeratepEB66_4fold9enumerateB17_uNCINvB4O_8map_foldTjB17_ETB17_mEuNCB38_s2_0NCINvNvB66_8for_each4callB92_NCINvXs1i_NtCsgQfI1edjipl_9hashbrown3mapINtB9X_7HashMapB17_mNtNtCsiTTz6JxaXqu_5ahash12random_state11RandomStateEINtNtB6a_7collect6ExtendB92_E6extendINtB4O_3MapIB7X_IB5T_INtNtB6_5chain5ChainIBcc_INtNtNtBa_5slice4iter4IterNtNtNtB3j_9tokenizer16added_vocabulary10AddedTokenENCB38_s_0EIBcc_INtB4_6FilterINtNtNtB1b_3vec9into_iter8IntoIterB15_EB36_EB5o_EEEEB9a_EE0E0E0E0E0E0E0E0B3j_.exit.backedge

_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters6filter15filter_try_foldTRNtNtCscdodAO9FK5_5alloc6string6StringRyEuINtNtNtBa_3ops12control_flow11ControlFlowINtNtB1R_9try_trait17NeverShortCircuituEENCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models9wordlevel7trainerNtB3d_16WordLevelTrainer8do_trains0_0NCINvNtB6_3map12map_try_foldB15_B17_uB1M_NCB38_s1_0NCINvNvXs_NtB6_4takeINtB5I_4TakepENtNtNtB8_6traits8iterator8Iterator8try_fold5checkB17_uB2r_NCINvMB2u_B2r_10wrap_mut_2uB17_NCINvNvXs_NtB6_9enumerateINtB7H_9EnumeratepEB66_4fold9enumerateB17_uNCINvB4O_8map_foldTjB17_ETB17_mEuNCB38_s2_0NCINvNvB66_8for_each4callB92_NCINvXs1i_NtCsgQfI1edjipl_9hashbrown3mapINtB9X_7HashMapB17_mNtNtCsiTTz6JxaXqu_5ahash12random_state11RandomStateEINtNtB6a_7collect6ExtendB92_E6extendINtB4O_3MapIB7X_IB5T_INtNtB6_5chain5ChainIBcc_INtNtNtBa_5slice4iter4IterNtNtNtB3j_9tokenizer16added_vocabulary10AddedTokenENCB38_s_0EIBcc_INtB4_6FilterINtNtNtB1b_3vec9into_iter8IntoIterB15_EB36_EB5o_EEEEB9a_EE0E0E0E0E0E0E0E0B3j_.exit.backedge: ; preds = %.split, %bb.b
  %i.aa = phi i64 [ %i.x, %.split ], [ %i.j, %bb.b ]
  %.not.not = icmp eq ptr %i.o, %i.c
  br i1 %.not.not, label %.split._crit_edge, label %bb.b

.split._crit_edge:                                ; preds = %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters6filter15filter_try_foldTRNtNtCscdodAO9FK5_5alloc6string6StringRyEuINtNtNtBa_3ops12control_flow11ControlFlowINtNtB1R_9try_trait17NeverShortCircuituEENCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models9wordlevel7trainerNtB3d_16WordLevelTrainer8do_trains0_0NCINvNtB6_3map12map_try_foldB15_B17_uB1M_NCB38_s1_0NCINvNvXs_NtB6_4takeINtB5I_4TakepENtNtNtB8_6traits8iterator8Iterator8try_fold5checkB17_uB2r_NCINvMB2u_B2r_10wrap_mut_2uB17_NCINvNvXs_NtB6_9enumerateINtB7H_9EnumeratepEB66_4fold9enumerateB17_uNCINvB4O_8map_foldTjB17_ETB17_mEuNCB38_s2_0NCINvNvB66_8for_each4callB92_NCINvXs1i_NtCsgQfI1edjipl_9hashbrown3mapINtB9X_7HashMapB17_mNtNtCsiTTz6JxaXqu_5ahash12random_state11RandomStateEINtNtB6a_7collect6ExtendB92_E6extendINtB4O_3MapIB7X_IB5T_INtNtB6_5chain5ChainIBcc_INtNtNtBa_5slice4iter4IterNtNtNtB3j_9tokenizer16added_vocabulary10AddedTokenENCB38_s_0EIBcc_INtB4_6FilterINtNtNtB1b_3vec9into_iter8IntoIterB15_EB36_EB5o_EEEEB9a_EE0E0E0E0E0E0E0E0B3j_.exit.backedge, %.split, %bb.a
  %.not.lcssa = phi i1 [ false, %bb.a ], [ true, %.split ], [ false, %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters6filter15filter_try_foldTRNtNtCscdodAO9FK5_5alloc6string6StringRyEuINtNtNtBa_3ops12control_flow11ControlFlowINtNtB1R_9try_trait17NeverShortCircuituEENCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models9wordlevel7trainerNtB3d_16WordLevelTrainer8do_trains0_0NCINvNtB6_3map12map_try_foldB15_B17_uB1M_NCB38_s1_0NCINvNvXs_NtB6_4takeINtB5I_4TakepENtNtNtB8_6traits8iterator8Iterator8try_fold5checkB17_uB2r_NCINvMB2u_B2r_10wrap_mut_2uB17_NCINvNvXs_NtB6_9enumerateINtB7H_9EnumeratepEB66_4fold9enumerateB17_uNCINvB4O_8map_foldTjB17_ETB17_mEuNCB38_s2_0NCINvNvB66_8for_each4callB92_NCINvXs1i_NtCsgQfI1edjipl_9hashbrown3mapINtB9X_7HashMapB17_mNtNtCsiTTz6JxaXqu_5ahash12random_state11RandomStateEINtNtB6a_7collect6ExtendB92_E6extendINtB4O_3MapIB7X_IB5T_INtNtB6_5chain5ChainIBcc_INtNtNtBa_5slice4iter4IterNtNtNtB3j_9tokenizer16added_vocabulary10AddedTokenENCB38_s_0EIBcc_INtB4_6FilterINtNtNtB1b_3vec9into_iter8IntoIterB15_EB36_EB5o_EEEEB9a_EE0E0E0E0E0E0E0E0B3j_.exit.backedge ]
  ret i1 %.not.lcssa
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB6_8IntoIterTRcRjEENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4folduNCINvNvB13_8for_each4callBW_NCNvMs4_NtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe7trainerNtB2E_10BpeTrainer16compute_alphabets1_0E0EB2K_(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %1, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 10 uses
  %i.c = alloca [24 x i8], align 8                ; 10 uses
  %i.d = alloca [24 x i8], align 8                ; 8 uses
  %i.e = alloca [24 x i8], align 8                ; 6 uses
  %.sroa.0.i.i = alloca i32, align 4              ; 14 uses
  %i.f = alloca [24 x i8], align 8                ; 6 uses
  %i.g = alloca [24 x i8], align 8                ; 7 uses
  %i.h = alloca [24 x i8], align 8                ; 10 uses
  %i.i = alloca [24 x i8], align 8                ; 9 uses
  %i.j = alloca [16 x i8], align 8                ; 5 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.promoted = load ptr, ptr %i.l, align 8        ; 2 uses
  %i.m = load ptr, ptr %i.k, align 8, !nonnull !6, !noundef !6 ; 2 uses
  %.not.not46 = icmp eq ptr %.promoted, %i.m
  br i1 %.not.not46, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVecTRcRjEEECs2JiOgHzbbc7_10tokenizers.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 3 uses
  %.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 3 uses
  %.sroa.4.0..sroa_idx3.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.h, i64 23 ; 2 uses
  %.sroa.45.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %.sroa.56.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %.sroa.48.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.sroa.59.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %.sroa.0.i.i.1.i.i.1.i.i.1.i.1.i.1..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0.i.i, i64 1
  %.sroa.0.i.i.2.i.i.2.i.i.2.i.2.i.2..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0.i.i, i64 2
  %.sroa.0.i.i.3.i.i.3.i.i.3.i.3.i.3..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0.i.i, i64 3
  %.sroa.0.i.i.1.i.i.1.i.i.1.i.1.i.1..sroa_idx105 = getelementptr inbounds nuw i8, ptr %.sroa.0.i.i, i64 1
  %.sroa.0.i.i.2.i.i.2.i.i.2.i.2.i.2..sroa_idx107 = getelementptr inbounds nuw i8, ptr %.sroa.0.i.i, i64 2
  %.sroa.0.i.i.1.i.i.1.i.i.1.i.1.i.1..sroa_idx106 = getelementptr inbounds nuw i8, ptr %.sroa.0.i.i, i64 1
  %i.q = load ptr, ptr %1, align 8, !nonnull !6, !align !8 ; 2 uses
  %.23..23..23..23..23..23..23..23..23..23..23..23..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 23
  %.16..16..16..16..16..16..16..16..16..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %.8..8..8..8..8..8..8..8..8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.r = load ptr, ptr %2, align 8, !nonnull !6, !align !8 ; 4 uses
  %.23..23..23..23..23..23..23..23..23..23..23..23..sroa_idx110 = getelementptr inbounds nuw i8, ptr %i.c, i64 23
  %.8..8..8..8..8..8..8..8..8..sroa_idx108 = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.16..16..16..16..16..16..16..16..16..sroa_idx109 = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 16 ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %.23..23..23..23..23..23..23..23..23..23..23..23..sroa_idx113 = getelementptr inbounds nuw i8, ptr %i.b, i64 23
  %.8..8..8..8..8..8..8..8..8..sroa_idx111 = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.16..16..16..16..16..16..16..16..16..sroa_idx112 = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator8for_each4callTRcRjENCNvMs4_NtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe7trainerNtB1t_10BpeTrainer16compute_alphabets1_0E0B1z_.exit
  %i.u = phi ptr [ %.promoted, %.lr.ph ], [ %i.w, %_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator8for_each4callTRcRjENCNvMs4_NtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe7trainerNtB1t_10BpeTrainer16compute_alphabets1_0E0B1z_.exit ] ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !nonnull !6, !align !739, !noundef !6
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 16 ; 2 uses
  %.val5 = load i32, ptr %i.v, align 4, !range !12, !noundef !6 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i)
  store i32 0, ptr %.sroa.0.i.i, align 4
  %i.x = icmp samesign ult i32 %.val5, 128
  br i1 %i.x, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.y = icmp samesign ult i32 %.val5, 2048
  %i.z = trunc i32 %.val5 to i8
  %i.aa = and i8 %i.z, 63
  %i.ab = or disjoint i8 %i.aa, -128              ; 3 uses
  %i.ac = lshr i32 %.val5, 6
  %i.ad = trunc i32 %i.ac to i8                   ; 2 uses
  %i.ae = and i8 %i.ad, 63
  %i.af = or disjoint i8 %i.ae, -128              ; 2 uses
  %i.ag = lshr i32 %.val5, 12
  %i.ah = trunc i32 %i.ag to i8                   ; 2 uses
  %i.ai = and i8 %i.ah, 63
  %i.aj = or disjoint i8 %i.ai, -128
  %i.ak = lshr i32 %.val5, 18
  %i.al = trunc nuw nsw i32 %i.ak to i8
  %i.am = or disjoint i8 %i.al, -16
  br i1 %i.y, label %bb.e, label %bb.f

bb.d:                                             ; preds = %bb.b
  %i.an = trunc nuw nsw i32 %.val5 to i8
  store i8 %i.an, ptr %.sroa.0.i.i, align 4, !alias.scope !740
  br label %_RNvNtNtCs4NRVxsYgnAr_4core4char7methods15encode_utf8_raw.exit.i.i

bb.e:                                             ; preds = %bb.c
  %i.ao = or disjoint i8 %i.ad, -64
  store i8 %i.ao, ptr %.sroa.0.i.i, align 4, !alias.scope !740
  store i8 %i.ab, ptr %.sroa.0.i.i.1.i.i.1.i.i.1.i.1.i.1..sroa_idx106, align 1, !alias.scope !740
  br label %_RNvNtNtCs4NRVxsYgnAr_4core4char7methods15encode_utf8_raw.exit.i.i

bb.f:                                             ; preds = %bb.c
  %i.ap = icmp samesign ult i32 %.val5, 65536
  br i1 %i.ap, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.aq = or disjoint i8 %i.ah, -32
  store i8 %i.aq, ptr %.sroa.0.i.i, align 4, !alias.scope !740
  store i8 %i.af, ptr %.sroa.0.i.i.1.i.i.1.i.i.1.i.1.i.1..sroa_idx105, align 1, !alias.scope !740
  store i8 %i.ab, ptr %.sroa.0.i.i.2.i.i.2.i.i.2.i.2.i.2..sroa_idx107, align 2, !alias.scope !740
  br label %_RNvNtNtCs4NRVxsYgnAr_4core4char7methods15encode_utf8_raw.exit.i.i

bb.h:                                             ; preds = %bb.f
  store i8 %i.am, ptr %.sroa.0.i.i, align 4, !alias.scope !740
  store i8 %i.aj, ptr %.sroa.0.i.i.1.i.i.1.i.i.1.i.1.i.1..sroa_idx, align 1, !alias.scope !740
  store i8 %i.af, ptr %.sroa.0.i.i.2.i.i.2.i.i.2.i.2.i.2..sroa_idx, align 2, !alias.scope !740
  store i8 %i.ab, ptr %.sroa.0.i.i.3.i.i.3.i.i.3.i.3.i.3..sroa_idx, align 1, !alias.scope !740
  br label %_RNvNtNtCs4NRVxsYgnAr_4core4char7methods15encode_utf8_raw.exit.i.i

_RNvNtNtCs4NRVxsYgnAr_4core4char7methods15encode_utf8_raw.exit.i.i: ; preds = %bb.h, %bb.g, %bb.e, %bb.d
  %.sroa.0.05.i.i.i = phi i64 [ 1, %bb.d ], [ 2, %bb.e ], [ 3, %bb.g ], [ 4, %bb.h ] ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  invoke void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.e, i64 noundef %.sroa.0.05.i.i.i, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %.noexc unwind label %.body.thread25.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc:                                           ; preds = %_RNvNtNtCs4NRVxsYgnAr_4core4char7methods15encode_utf8_raw.exit.i.i
  %i.ar = load i64, ptr %i.e, align 8, !range !14, !noundef !6
  %i.as = trunc nuw i64 %i.ar to i1
  %i.at = load i64, ptr %i.n, align 8, !range !16, !noundef !6 ; 3 uses
  br i1 %i.as, label %bb.i, label %_RNvMs0_NtCshgwszQZps6S_11compact_str4reprNtB5_4Repr3new.exit.i.i.i, !prof !15

bb.i:                                             ; preds = %.noexc
  %i.au = load i64, ptr %i.o, align 8
  invoke void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef %i.at, i64 %i.au) #26
          to label %.noexc8 unwind label %.body.thread25.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc8:                                          ; preds = %bb.i
  unreachable

_RNvMs0_NtCshgwszQZps6S_11compact_str4reprNtB5_4Repr3new.exit.i.i.i: ; preds = %.noexc
  %i.av = load ptr, ptr %i.o, align 8, !nonnull !6, !noundef !6 ; 3 uses
  %i.aw = icmp samesign ule i64 %.sroa.0.05.i.i.i, %i.at
  call void @llvm.assume(i1 %i.aw)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.av, ptr noundef nonnull align 4 dereferenceable(1) %.sroa.0.i.i, i64 %.sroa.0.05.i.i.i, i1 false)
  store i64 %i.at, ptr %i.i, align 8
  store ptr %i.av, ptr %.sroa.4.0..sroa_idx.i.i, align 8
  store i64 %.sroa.0.05.i.i.i, ptr %.sroa.6.0..sroa_idx.i.i, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(23) %i.d, i8 0, i64 23, i1 false), !noalias !741
  %i.ax = trunc nuw nsw i64 %.sroa.0.05.i.i.i to i8
  %i.ay = or disjoint i8 %i.ax, -64
  store i8 %i.ay, ptr %.23..23..23..23..23..23..23..23..23..23..23..23..sroa_idx, align 1, !noalias !741
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.d, ptr noundef nonnull readonly align 1 dereferenceable(1) %i.av, i64 %.sroa.0.05.i.i.i, i1 false), !noalias !742
  %.0..0..0..0..0..0..0..0..0..sroa.01.0.copyload2.i.i.i = load ptr, ptr %i.d, align 8, !noalias !743
  %.16..16..16..16..16..16..16..16..16..sroa.7.0.copyload8.i.i.i = load i64, ptr %.16..16..16..16..16..16..16..16..16..sroa_idx, align 8, !noalias !743
  %.8. = load <2 x i64>, ptr %.8..8..8..8..8..8..8..8..8..sroa_idx, align 8, !noalias !743
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.az = icmp ugt i64 %.16..16..16..16..16..16..16..16..16..sroa.7.0.copyload8.i.i.i, -72057594037927937
  br i1 %i.az, label %_RINvMCshgwszQZps6S_11compact_strNtB3_13CompactString7try_newRNtNtCscdodAO9FK5_5alloc6string6StringECs2JiOgHzbbc7_10tokenizers.exit52.thread.invoke.i.i, label %_RINvMCshgwszQZps6S_11compact_strNtB3_13CompactString7try_newRNtNtCscdodAO9FK5_5alloc6string6StringECs2JiOgHzbbc7_10tokenizers.exit.i.i

.body.i.i:                                        ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.w, %bb.v, %bb.k, %bb.j
  %.pn.i.i = phi { ptr, i32 } [ %i.bb, %bb.j ], [ %i.br, %bb.v ], [ %i.bb, %bb.k ], [ %i.br, %bb.w ], [ %lpad.loopexit.split-lp94, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef align 8 dereferenceable(24) %i.i) #24
          to label %.body.thread unwind label %bb.ah

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_RINvMCshgwszQZps6S_11compact_strNtB3_13CompactString7try_newRNtNtCscdodAO9FK5_5alloc6string6StringECs2JiOgHzbbc7_10tokenizers.exit52.i.i, %bb.aa, %bb.r, %bb.p, %bb.n, %_RINvMCshgwszQZps6S_11compact_strNtB3_13CompactString7try_newRNtNtCscdodAO9FK5_5alloc6string6StringECs2JiOgHzbbc7_10tokenizers.exit52.thread.invoke.i.i
  %lpad.loopexit.split-lp94 = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

_RINvMCshgwszQZps6S_11compact_strNtB3_13CompactString7try_newRNtNtCscdodAO9FK5_5alloc6string6StringECs2JiOgHzbbc7_10tokenizers.exit.i.i: ; preds = %_RNvMs0_NtCshgwszQZps6S_11compact_str4reprNtB5_4Repr3new.exit.i.i.i
  store ptr %.0..0..0..0..0..0..0..0..0..sroa.01.0.copyload2.i.i.i, ptr %i.h, align 8
  store <2 x i64> %.8., ptr %.sroa.4.0..sroa_idx3.i.i, align 8
  %i.ba = invoke noundef zeroext i1 @_RINvMs1_NtCsgQfI1edjipl_9hashbrown3mapINtB6_7HashMapNtCshgwszQZps6S_11compact_str13CompactStringmNtNtCsiTTz6JxaXqu_5ahash12random_state11RandomStateE12contains_keyBO_ECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.q, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.h)
          to label %bb.l unwind label %bb.j

bb.j:                                             ; preds = %_RINvMCshgwszQZps6S_11compact_strNtB3_13CompactString7try_newRNtNtCscdodAO9FK5_5alloc6string6StringECs2JiOgHzbbc7_10tokenizers.exit.i.i
  %i.bb = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bc = load i8, ptr %i.p, align 1, !range !744, !alias.scope !745, !noundef !6
  %i.bd = icmp eq i8 %i.bc, -40
  br i1 %i.bd, label %bb.k, label %.body.i.i, !prof !15

bb.k:                                             ; preds = %bb.j
  invoke void @_RNvNvXs2_NtCshgwszQZps6S_11compact_str4reprNtB7_4ReprNtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4drop13outlined_drop(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %.body.i.i unwind label %bb.ah

bb.l:                                             ; preds = %_RINvMCshgwszQZps6S_11compact_strNtB3_13CompactString7try_newRNtNtCscdodAO9FK5_5alloc6string6StringECs2JiOgHzbbc7_10tokenizers.exit.i.i
  %i.be = load i8, ptr %i.p, align 1, !range !744, !noundef !6
  %i.bf = icmp eq i8 %i.be, -40                   ; 2 uses
  br i1 %i.ba, label %bb.o, label %bb.m

bb.m:                                             ; preds = %bb.l
  br i1 %i.bf, label %bb.n, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtCshgwszQZps6S_11compact_str13CompactStringECs2JiOgHzbbc7_10tokenizers.exit6.i.i, !prof !15

bb.n:                                             ; preds = %bb.m
  invoke void @_RNvNvXs2_NtCshgwszQZps6S_11compact_str4reprNtB7_4ReprNtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4drop13outlined_drop(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtCshgwszQZps6S_11compact_str13CompactStringECs2JiOgHzbbc7_10tokenizers.exit6.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.o:                                             ; preds = %bb.l
  br i1 %i.bf, label %bb.p, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtCshgwszQZps6S_11compact_str13CompactStringECs2JiOgHzbbc7_10tokenizers.exit8.i.i, !prof !15

bb.p:                                             ; preds = %bb.o
  invoke void @_RNvNvXs2_NtCshgwszQZps6S_11compact_str4reprNtB7_4ReprNtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4drop13outlined_drop(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtCshgwszQZps6S_11compact_str13CompactStringECs2JiOgHzbbc7_10tokenizers.exit8.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtCshgwszQZps6S_11compact_str13CompactStringECs2JiOgHzbbc7_10tokenizers.exit6.i.i: ; preds = %bb.n, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.experimental.noalias.scope.decl(metadata !746)
  %.val.i.i9.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !746, !nonnull !6, !noundef !6 ; 2 uses
  %.val1.i.i10.i.i = load i64, ptr %.sroa.6.0..sroa_idx.i.i, align 8, !alias.scope !746, !noundef !6 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.bg = icmp eq i64 %.val1.i.i10.i.i, 0
  br i1 %i.bg, label %_RINvMCshgwszQZps6S_11compact_strNtB3_13CompactString7try_newRNtNtCscdodAO9FK5_5alloc6string6StringECs2JiOgHzbbc7_10tokenizers.exit30.thread26.i.i, label %bb.q

_RINvMCshgwszQZps6S_11compact_strNtB3_13CompactString7try_newRNtNtCscdodAO9FK5_5alloc6string6StringECs2JiOgHzbbc7_10tokenizers.exit30.thread26.i.i: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtCshgwszQZps6S_11compact_str13CompactStringECs2JiOgHzbbc7_10tokenizers.exit6.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %_RINvMCshgwszQZps6S_11compact_strNtB3_13CompactString7try_newRNtNtCscdodAO9FK5_5alloc6string6StringECs2JiOgHzbbc7_10tokenizers.exit30.i.i

bb.q:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtCshgwszQZps6S_11compact_str13CompactStringECs2JiOgHzbbc7_10tokenizers.exit6.i.i
  %i.bh = icmp ult i64 %.val1.i.i10.i.i, 25
  br i1 %i.bh, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %.sroa.0.0.i.i.i.i.i11.i.i = call noundef i64 @llvm.umax.i64(i64 range(i64 25, 0) %.val1.i.i10.i.i, i64 32) ; 2 uses
  %i.bi = invoke noundef ptr @_RNvNtNtNtCshgwszQZps6S_11compact_str4repr4heap15inline_capacity5alloc(i64 noundef %.sroa.0.0.i.i.i.i.i11.i.i)
          to label %.noexc29.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 3 uses

.noexc29.i.i:                                     ; preds = %bb.r
  %i.bj = icmp eq ptr %i.bi, null
  br i1 %i.bj, label %_RNvMs0_NtCshgwszQZps6S_11compact_str4reprNtB5_4Repr3new.exit.thread.i21.i.i, label %bb.t

_RNvMs0_NtCshgwszQZps6S_11compact_str4reprNtB5_4Repr3new.exit.thread.i21.i.i: ; preds = %.noexc29.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %_RINvMCshgwszQZps6S_11compact_strNtB3_13CompactString7try_newRNtNtCscdodAO9FK5_5alloc6string6StringECs2JiOgHzbbc7_10tokenizers.exit52.thread.invoke.i.i

bb.s:                                             ; preds = %bb.q
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(23) %i.c, i8 0, i64 23, i1 false), !noalias !747
  %i.bk = trunc nuw nsw i64 %.val1.i.i10.i.i to i8
  %i.bl = or disjoint i8 %i.bk, -64
  store i8 %i.bl, ptr %.23..23..23..23..23..23..23..23..23..23..23..23..sroa_idx110, align 1, !noalias !747
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.c, ptr nonnull readonly align 1 %.val.i.i9.i.i, i64 %.val1.i.i10.i.i, i1 false), !noalias !748
  %.0..0..0..0..0..0..0..0..0..sroa.01.0.copyload2.i23.i.i = load ptr, ptr %i.c, align 8, !noalias !749
  %.8..8..8..8..8..8..8..8..8..sroa.6.0.copyload5.i25.i.i = load i64, ptr %.8..8..8..8..8..8..8..8..8..sroa_idx108, align 8, !noalias !749
  %.16..16..16..16..16..16..16..16..16..sroa.7.0.copyload8.i27.i.i = load i64, ptr %.16..16..16..16..16..16..16..16..16..sroa_idx109, align 8, !noalias !749
  br label %_RNvMs0_NtCshgwszQZps6S_11compact_str4reprNtB5_4Repr3new.exit.i12.i.i

bb.t:                                             ; preds = %.noexc29.i.i
  %i.bm = or i64 %.sroa.0.0.i.i.i.i.i11.i.i, -2882303761517117440
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.bi, ptr noundef nonnull readonly align 1 dereferenceable(1) %.val.i.i9.i.i, i64 range(i64 25, 0) %.val1.i.i10.i.i, i1 false), !noalias !750
  br label %_RNvMs0_NtCshgwszQZps6S_11compact_str4reprNtB5_4Repr3new.exit.i12.i.i

_RNvMs0_NtCshgwszQZps6S_11compact_str4reprNtB5_4Repr3new.exit.i12.i.i: ; preds = %bb.t, %bb.s
  %.sroa.6.0.i13.i.i = phi i64 [ %.val1.i.i10.i.i, %bb.t ], [ %.8..8..8..8..8..8..8..8..8..sroa.6.0.copyload5.i25.i.i, %bb.s ]
  %.sroa.01.0.i14.i.i = phi ptr [ %i.bi, %bb.t ], [ %.0..0..0..0..0..0..0..0..0..sroa.01.0.copyload2.i23.i.i, %bb.s ]
  %.sroa.7.0.i15.i.i = phi i64 [ %i.bm, %bb.t ], [ %.16..16..16..16..16..16..16..16..16..sroa.7.0.copyload8.i27.i.i, %bb.s ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.bn = icmp ugt i64 %.sroa.7.0.i15.i.i, -72057594037927937
  br i1 %i.bn, label %_RINvMCshgwszQZps6S_11compact_strNtB3_13CompactString7try_newRNtNtCscdodAO9FK5_5alloc6string6StringECs2JiOgHzbbc7_10tokenizers.exit52.thread.invoke.i.i, label %_RINvMCshgwszQZps6S_11compact_strNtB3_13CompactString7try_newRNtNtCscdodAO9FK5_5alloc6string6StringECs2JiOgHzbbc7_10tokenizers.exit30.i.i

_RINvMCshgwszQZps6S_11compact_strNtB3_13CompactString7try_newRNtNtCscdodAO9FK5_5alloc6string6StringECs2JiOgHzbbc7_10tokenizers.exit30.i.i: ; preds = %_RNvMs0_NtCshgwszQZps6S_11compact_str4reprNtB5_4Repr3new.exit.i12.i.i, %_RINvMCshgwszQZps6S_11compact_strNtB3_13CompactString7try_newRNtNtCscdodAO9FK5_5alloc6string6StringECs2JiOgHzbbc7_10tokenizers.exit30.thread26.i.i
  %.sroa.04.034.i.i = phi ptr [ null, %_RINvMCshgwszQZps6S_11compact_strNtB3_13CompactString7try_newRNtNtCscdodAO9FK5_5alloc6string6StringECs2JiOgHzbbc7_10tokenizers.exit30.thread26.i.i ], [ %.sroa.01.0.i14.i.i, %_RNvMs0_NtCshgwszQZps6S_11compact_str4reprNtB5_4Repr3new.exit.i12.i.i ]
  %.sroa.45.033.i.i = phi i64 [ 0, %_RINvMCshgwszQZps6S_11compact_strNtB3_13CompactString7try_newRNtNtCscdodAO9FK5_5alloc6string6StringECs2JiOgHzbbc7_10tokenizers.exit30.thread26.i.i ], [ %.sroa.6.0.i13.i.i, %_RNvMs0_NtCshgwszQZps6S_11compact_str4reprNtB5_4Repr3new.exit.i12.i.i ]
  %.sroa.56.032.i.i = phi i64 [ -4611686018427387904, %_RINvMCshgwszQZps6S_11compact_strNtB3_13CompactString7try_newRNtNtCscdodAO9FK5_5alloc6string6StringECs2JiOgHzbbc7_10tokenizers.exit30.thread26.i.i ], [ %.sroa.7.0.i15.i.i, %_RNvMs0_NtCshgwszQZps6S_11compact_str4reprNtB5_4Repr3new.exit.i12.i.i ] ; 2 uses
  store ptr %.sroa.04.034.i.i, ptr %i.g, align 8
  store i64 %.sroa.45.033.i.i, ptr %.sroa.45.0..sroa_idx.i.i, align 8
  store i64 %.sroa.56.032.i.i, ptr %.sroa.56.0..sroa_idx.i.i, align 8
  %i.bo = load i64, ptr %i.s, align 8, !alias.scope !751, !noundef !6 ; 3 uses
  %i.bp = load i64, ptr %i.r, align 8, !range !9, !alias.scope !751, !noundef !6
  %i.bq = icmp eq i64 %i.bo, %i.bp
  br i1 %i.bq, label %bb.u, label %bb.y

bb.u:                                             ; preds = %_RINvMCshgwszQZps6S_11compact_strNtB3_13CompactString7try_newRNtNtCscdodAO9FK5_5alloc6string6StringECs2JiOgHzbbc7_10tokenizers.exit30.i.i
  invoke void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtCshgwszQZps6S_11compact_str13CompactStringE8grow_oneCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.r)
          to label %bb.y unwind label %bb.v, !noalias !752

bb.v:                                             ; preds = %bb.u
  %i.br = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.mask.i.i = and i64 %.sroa.56.032.i.i, -72057594037927936
  %i.bs = icmp eq i64 %.mask.i.i, -2882303761517117440
  br i1 %i.bs, label %bb.w, label %.body.i.i, !prof !15

bb.w:                                             ; preds = %bb.v
  invoke void @_RNvNvXs2_NtCshgwszQZps6S_11compact_str4reprNtB7_4ReprNtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4drop13outlined_drop(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %.body.i.i unwind label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.bt = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #23
  unreachable

bb.y:                                             ; preds = %bb.u, %_RINvMCshgwszQZps6S_11compact_strNtB3_13CompactString7try_newRNtNtCscdodAO9FK5_5alloc6string6StringECs2JiOgHzbbc7_10tokenizers.exit30.i.i
  %i.bu = load ptr, ptr %i.t, align 8, !alias.scope !751, !nonnull !6, !noundef !6
  %i.bv = getelementptr inbounds nuw [24 x i8], ptr %i.bu, i64 %i.bo
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bv, ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 24, i1 false)
  %i.bw = add i64 %i.bo, 1                        ; 2 uses
  store i64 %i.bw, ptr %i.s, align 8, !alias.scope !751
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.experimental.noalias.scope.decl(metadata !753)
  %.val.i.i31.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !753, !nonnull !6, !noundef !6 ; 2 uses
  %.val1.i.i32.i.i = load i64, ptr %.sroa.6.0..sroa_idx.i.i, align 8, !alias.scope !753, !noundef !6 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.bx = icmp eq i64 %.val1.i.i32.i.i, 0
  br i1 %i.bx, label %_RINvMCshgwszQZps6S_11compact_strNtB3_13CompactString7try_newRNtNtCscdodAO9FK5_5alloc6string6StringECs2JiOgHzbbc7_10tokenizers.exit52.thread40.i.i, label %bb.z

_RINvMCshgwszQZps6S_11compact_strNtB3_13CompactString7try_newRNtNtCscdodAO9FK5_5alloc6string6StringECs2JiOgHzbbc7_10tokenizers.exit52.thread40.i.i: ; preds = %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %_RINvMCshgwszQZps6S_11compact_strNtB3_13CompactString7try_newRNtNtCscdodAO9FK5_5alloc6string6StringECs2JiOgHzbbc7_10tokenizers.exit52.i.i

bb.z:                                             ; preds = %bb.y
  %i.by = icmp ult i64 %.val1.i.i32.i.i, 25
  br i1 %i.by, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %.sroa.0.0.i.i.i.i.i33.i.i = call noundef i64 @llvm.umax.i64(i64 range(i64 25, 0) %.val1.i.i32.i.i, i64 32) ; 2 uses
  %i.bz = invoke noundef ptr @_RNvNtNtNtCshgwszQZps6S_11compact_str4repr4heap15inline_capacity5alloc(i64 noundef %.sroa.0.0.i.i.i.i.i33.i.i)
          to label %.noexc51.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 3 uses

.noexc51.i.i:                                     ; preds = %bb.aa
  %i.ca = icmp eq ptr %i.bz, null
  br i1 %i.ca, label %_RNvMs0_NtCshgwszQZps6S_11compact_str4reprNtB5_4Repr3new.exit.thread.i43.i.i, label %bb.ac

_RNvMs0_NtCshgwszQZps6S_11compact_str4reprNtB5_4Repr3new.exit.thread.i43.i.i: ; preds = %.noexc51.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %_RINvMCshgwszQZps6S_11compact_strNtB3_13CompactString7try_newRNtNtCscdodAO9FK5_5alloc6string6StringECs2JiOgHzbbc7_10tokenizers.exit52.thread.invoke.i.i

bb.ab:                                            ; preds = %bb.z
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(23) %i.b, i8 0, i64 23, i1 false), !noalias !754
  %i.cb = trunc nuw nsw i64 %.val1.i.i32.i.i to i8
  %i.cc = or disjoint i8 %i.cb, -64
  store i8 %i.cc, ptr %.23..23..23..23..23..23..23..23..23..23..23..23..sroa_idx113, align 1, !noalias !754
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.b, ptr nonnull readonly align 1 %.val.i.i31.i.i, i64 %.val1.i.i32.i.i, i1 false), !noalias !755
  %.0..0..0..0..0..0..0..0..0..sroa.01.0.copyload2.i45.i.i = load ptr, ptr %i.b, align 8, !noalias !756
  %.8..8..8..8..8..8..8..8..8..sroa.6.0.copyload5.i47.i.i = load i64, ptr %.8..8..8..8..8..8..8..8..8..sroa_idx111, align 8, !noalias !756
  %.16..16..16..16..16..16..16..16..16..sroa.7.0.copyload8.i49.i.i = load i64, ptr %.16..16..16..16..16..16..16..16..16..sroa_idx112, align 8, !noalias !756
  br label %_RNvMs0_NtCshgwszQZps6S_11compact_str4reprNtB5_4Repr3new.exit.i34.i.i

bb.ac:                                            ; preds = %.noexc51.i.i
  %i.cd = or i64 %.sroa.0.0.i.i.i.i.i33.i.i, -2882303761517117440
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.bz, ptr noundef nonnull readonly align 1 dereferenceable(1) %.val.i.i31.i.i, i64 range(i64 25, 0) %.val1.i.i32.i.i, i1 false), !noalias !757
  br label %_RNvMs0_NtCshgwszQZps6S_11compact_str4reprNtB5_4Repr3new.exit.i34.i.i

_RNvMs0_NtCshgwszQZps6S_11compact_str4reprNtB5_4Repr3new.exit.i34.i.i: ; preds = %bb.ac, %bb.ab
  %.sroa.6.0.i35.i.i = phi i64 [ %.val1.i.i32.i.i, %bb.ac ], [ %.8..8..8..8..8..8..8..8..8..sroa.6.0.copyload5.i47.i.i, %bb.ab ]
  %.sroa.01.0.i36.i.i = phi ptr [ %i.bz, %bb.ac ], [ %.0..0..0..0..0..0..0..0..0..sroa.01.0.copyload2.i45.i.i, %bb.ab ]
  %.sroa.7.0.i37.i.i = phi i64 [ %i.cd, %bb.ac ], [ %.16..16..16..16..16..16..16..16..16..sroa.7.0.copyload8.i49.i.i, %bb.ab ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.ce = icmp ugt i64 %.sroa.7.0.i37.i.i, -72057594037927937
  br i1 %i.ce, label %_RINvMCshgwszQZps6S_11compact_strNtB3_13CompactString7try_newRNtNtCscdodAO9FK5_5alloc6string6StringECs2JiOgHzbbc7_10tokenizers.exit52.thread.invoke.i.i, label %_RNvMs0_NtCshgwszQZps6S_11compact_str4reprNtB5_4Repr3new.exit.i34.i.i._RINvMCshgwszQZps6S_11compact_strNtB3_13CompactString7try_newRNtNtCscdodAO9FK5_5alloc6string6StringECs2JiOgHzbbc7_10tokenizers.exit52.i.i_crit_edge

_RNvMs0_NtCshgwszQZps6S_11compact_str4reprNtB5_4Repr3new.exit.i34.i.i._RINvMCshgwszQZps6S_11compact_strNtB3_13CompactString7try_newRNtNtCscdodAO9FK5_5alloc6string6StringECs2JiOgHzbbc7_10tokenizers.exit52.i.i_crit_edge: ; preds = %_RNvMs0_NtCshgwszQZps6S_11compact_str4reprNtB5_4Repr3new.exit.i34.i.i
  %.pre = load i64, ptr %i.s, align 8
  br label %_RINvMCshgwszQZps6S_11compact_strNtB3_13CompactString7try_newRNtNtCscdodAO9FK5_5alloc6string6StringECs2JiOgHzbbc7_10tokenizers.exit52.i.i

_RINvMCshgwszQZps6S_11compact_strNtB3_13CompactString7try_newRNtNtCscdodAO9FK5_5alloc6string6StringECs2JiOgHzbbc7_10tokenizers.exit52.thread.invoke.i.i: ; preds = %_RNvMs0_NtCshgwszQZps6S_11compact_str4reprNtB5_4Repr3new.exit.i34.i.i, %_RNvMs0_NtCshgwszQZps6S_11compact_str4reprNtB5_4Repr3new.exit.i12.i.i, %_RNvMs0_NtCshgwszQZps6S_11compact_str4reprNtB5_4Repr3new.exit.i.i.i, %_RNvMs0_NtCshgwszQZps6S_11compact_str4reprNtB5_4Repr3new.exit.thread.i43.i.i, %_RNvMs0_NtCshgwszQZps6S_11compact_str4reprNtB5_4Repr3new.exit.thread.i21.i.i
  %i.cf = phi ptr [ @43, %_RNvMs0_NtCshgwszQZps6S_11compact_str4reprNtB5_4Repr3new.exit.thread.i21.i.i ], [ @42, %_RNvMs0_NtCshgwszQZps6S_11compact_str4reprNtB5_4Repr3new.exit.thread.i43.i.i ], [ @42, %_RNvMs0_NtCshgwszQZps6S_11compact_str4reprNtB5_4Repr3new.exit.i34.i.i ], [ @43, %_RNvMs0_NtCshgwszQZps6S_11compact_str4reprNtB5_4Repr3new.exit.i12.i.i ], [ @44, %_RNvMs0_NtCshgwszQZps6S_11compact_str4reprNtB5_4Repr3new.exit.i.i.i ]
  invoke void @_RINvCshgwszQZps6S_11compact_str20unwrap_with_msg_failNtB2_12ReserveErrorEB2_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.cf) #26
          to label %_RINvMCshgwszQZps6S_11compact_strNtB3_13CompactString7try_newRNtNtCscdodAO9FK5_5alloc6string6StringECs2JiOgHzbbc7_10tokenizers.exit52.thread.cont.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_RINvMCshgwszQZps6S_11compact_strNtB3_13CompactString7try_newRNtNtCscdodAO9FK5_5alloc6string6StringECs2JiOgHzbbc7_10tokenizers.exit52.thread.cont.i.i: ; preds = %_RINvMCshgwszQZps6S_11compact_strNtB3_13CompactString7try_newRNtNtCscdodAO9FK5_5alloc6string6StringECs2JiOgHzbbc7_10tokenizers.exit52.thread.invoke.i.i
  unreachable

_RINvMCshgwszQZps6S_11compact_strNtB3_13CompactString7try_newRNtNtCscdodAO9FK5_5alloc6string6StringECs2JiOgHzbbc7_10tokenizers.exit52.i.i: ; preds = %_RNvMs0_NtCshgwszQZps6S_11compact_str4reprNtB5_4Repr3new.exit.i34.i.i._RINvMCshgwszQZps6S_11compact_strNtB3_13CompactString7try_newRNtNtCscdodAO9FK5_5alloc6string6StringECs2JiOgHzbbc7_10tokenizers.exit52.i.i_crit_edge, %_RINvMCshgwszQZps6S_11compact_strNtB3_13CompactString7try_newRNtNtCscdodAO9FK5_5alloc6string6StringECs2JiOgHzbbc7_10tokenizers.exit52.thread40.i.i
  %i.cg = phi i64 [ %i.bw, %_RINvMCshgwszQZps6S_11compact_strNtB3_13CompactString7try_newRNtNtCscdodAO9FK5_5alloc6string6StringECs2JiOgHzbbc7_10tokenizers.exit52.thread40.i.i ], [ %.pre, %_RNvMs0_NtCshgwszQZps6S_11compact_str4reprNtB5_4Repr3new.exit.i34.i.i._RINvMCshgwszQZps6S_11compact_strNtB3_13CompactString7try_newRNtNtCscdodAO9FK5_5alloc6string6StringECs2JiOgHzbbc7_10tokenizers.exit52.i.i_crit_edge ] ; 2 uses
  %.sroa.07.048.i.i = phi ptr [ null, %_RINvMCshgwszQZps6S_11compact_strNtB3_13CompactString7try_newRNtNtCscdodAO9FK5_5alloc6string6StringECs2JiOgHzbbc7_10tokenizers.exit52.thread40.i.i ], [ %.sroa.01.0.i36.i.i, %_RNvMs0_NtCshgwszQZps6S_11compact_str4reprNtB5_4Repr3new.exit.i34.i.i._RINvMCshgwszQZps6S_11compact_strNtB3_13CompactString7try_newRNtNtCscdodAO9FK5_5alloc6string6StringECs2JiOgHzbbc7_10tokenizers.exit52.i.i_crit_edge ]
  %.sroa.48.047.i.i = phi i64 [ 0, %_RINvMCshgwszQZps6S_11compact_strNtB3_13CompactString7try_newRNtNtCscdodAO9FK5_5alloc6string6StringECs2JiOgHzbbc7_10tokenizers.exit52.thread40.i.i ], [ %.sroa.6.0.i35.i.i, %_RNvMs0_NtCshgwszQZps6S_11compact_str4reprNtB5_4Repr3new.exit.i34.i.i._RINvMCshgwszQZps6S_11compact_strNtB3_13CompactString7try_newRNtNtCscdodAO9FK5_5alloc6string6StringECs2JiOgHzbbc7_10tokenizers.exit52.i.i_crit_edge ]
  %.sroa.59.046.i.i = phi i64 [ -4611686018427387904, %_RINvMCshgwszQZps6S_11compact_strNtB3_13CompactString7try_newRNtNtCscdodAO9FK5_5alloc6string6StringECs2JiOgHzbbc7_10tokenizers.exit52.thread40.i.i ], [ %.sroa.7.0.i37.i.i, %_RNvMs0_NtCshgwszQZps6S_11compact_str4reprNtB5_4Repr3new.exit.i34.i.i._RINvMCshgwszQZps6S_11compact_strNtB3_13CompactString7try_newRNtNtCscdodAO9FK5_5alloc6string6StringECs2JiOgHzbbc7_10tokenizers.exit52.i.i_crit_edge ]
  store ptr %.sroa.07.048.i.i, ptr %i.f, align 8
  store i64 %.sroa.48.047.i.i, ptr %.sroa.48.0..sroa_idx.i.i, align 8
  store i64 %.sroa.59.046.i.i, ptr %.sroa.59.0..sroa_idx.i.i, align 8
  %i.ch = icmp ult i64 %i.cg, 384307168202282326
  call void @llvm.assume(i1 %i.ch)
  %i.ci = trunc i64 %i.cg to i32
  %i.cj = add i32 %i.ci, -1
  %i.ck = invoke { i32, i32 } @_RNvMs1_NtCsgQfI1edjipl_9hashbrown3mapINtB5_7HashMapNtCshgwszQZps6S_11compact_str13CompactStringmNtNtCsiTTz6JxaXqu_5ahash12random_state11RandomStateE6insertCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.q, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.f, i32 noundef %i.cj)
          to label %bb.ad unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

bb.ad:                                            ; preds = %_RINvMCshgwszQZps6S_11compact_strNtB3_13CompactString7try_newRNtNtCscdodAO9FK5_5alloc6string6StringECs2JiOgHzbbc7_10tokenizers.exit52.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.ae

bb.ae:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtCshgwszQZps6S_11compact_str13CompactStringECs2JiOgHzbbc7_10tokenizers.exit8.i.i, %bb.ad
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %_RNCNvMs4_NtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe7trainerNtB7_10BpeTrainer16compute_alphabets1_0Bd_.exit.i unwind label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.cl = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %.body.thread unwind label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.cm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #23
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtCshgwszQZps6S_11compact_str13CompactStringECs2JiOgHzbbc7_10tokenizers.exit8.i.i: ; preds = %bb.p, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br label %bb.ae

bb.ah:                                            ; preds = %bb.k, %.body.i.i
  %i.cn = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #23
  unreachable

_RNCNvMs4_NtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe7trainerNtB7_10BpeTrainer16compute_alphabets1_0Bd_.exit.i: ; preds = %bb.ae
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator8for_each4callTRcRjENCNvMs4_NtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe7trainerNtB1t_10BpeTrainer16compute_alphabets1_0E0B1z_.exit unwind label %.body.thread25.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator8for_each4callTRcRjENCNvMs4_NtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe7trainerNtB1t_10BpeTrainer16compute_alphabets1_0E0B1z_.exit: ; preds = %_RNCNvMs4_NtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe7trainerNtB7_10BpeTrainer16compute_alphabets1_0Bd_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  %.not.not = icmp eq ptr %i.w, %i.m
  br i1 %.not.not, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVecTRcRjEEECs2JiOgHzbbc7_10tokenizers.exit, label %bb.b

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVecTRcRjEEECs2JiOgHzbbc7_10tokenizers.exit: ; preds = %_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator8for_each4callTRcRjENCNvMs4_NtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe7trainerNtB1t_10BpeTrainer16compute_alphabets1_0E0B1z_.exit, %bb.a
  %i.co = load ptr, ptr %0, align 8, !nonnull !6, !noundef !6
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.cq = load i64, ptr %i.cp, align 8, !noundef !6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  store i64 %i.cq, ptr %i.j, align 8
  %i.cr = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store ptr %i.co, ptr %i.cr, align 8
  call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecTRcRjEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  ret void

.body.thread25.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_RNvNtNtCs4NRVxsYgnAr_4core4char7methods15encode_utf8_raw.exit.i.i, %_RNCNvMs4_NtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe7trainerNtB7_10BpeTrainer16compute_alphabets1_0Bd_.exit.i, %bb.i
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread

.body.thread:                                     ; preds = %.body.thread25.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.af, %.body.i.i
  %eh.lpad-body22 = phi { ptr, i32 } [ %i.cl, %bb.af ], [ %.pn.i.i, %.body.i.i ], [ %lpad.loopexit.split-lp, %.body.thread25.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  %.val6 = load ptr, ptr %0, align 8, !alias.scope !758, !nonnull !6, !noundef !6
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val7 = load i64, ptr %i.cs, align 8, !alias.scope !758, !noundef !6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !759
  store i64 %.val7, ptr %i.a, align 8, !noalias !759
  %i.ct = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %.val6, ptr %i.ct, align 8, !noalias !759
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecTRcRjEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.a)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterTRcRjEEECs2JiOgHzbbc7_10tokenizers.exit unwind label %bb.ai

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterTRcRjEEECs2JiOgHzbbc7_10tokenizers.exit: ; preds = %.body.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !759
  resume { ptr, i32 } %eh.lpad-body22

bb.ai:                                            ; preds = %.body.thread
  %i.cu = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #23
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB6_8IntoIterTTjjEbEENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4foldINtB8_3VecBW_ENCINvMs0_NtNtCs2JiOgHzbbc7_10tokenizers9tokenizer10normalizerNtB2r_16NormalizedString5splitINtNtB2t_7pattern6InvertRNtNtNtB2v_5utils4onig8SysRegexEEs0_0EB2v_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %1, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(24) %2, ptr noalias nofree noundef captures(none) dereferenceable(1) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [48 x i8], align 8                ; 14 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !6, !noundef !6 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.promoted = load ptr, ptr %i.f, align 8        ; 2 uses
  %.not.not11 = icmp eq ptr %.promoted, %i.e
  br i1 %.not.not11, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %.promoted10 = load i8, ptr %3, align 1
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 24 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 3 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.m
end_hunk_5
begin_hunk_6_@_RINvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB6_8IntoIterTTmmEmEENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4folduNCINvNvXs_NtNtB1a_8adapters9enumerateINtB2f_9EnumeratepEB14_4fold9enumerateBW_uNCINvNtB2h_3map8map_foldTjBW_ETBX_BX_EuNCNvMs4_NtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe7trainerNtB47_10BpeTrainer8do_trains3_0NCINvNvB14_8for_each4callB3Q_NCINvXs1i_NtCsgQfI1edjipl_9hashbrown3mapINtB64_7HashMapBX_BX_NtNtCsiTTz6JxaXqu_5ahash12random_state11RandomStateEINtNtB18_7collect6ExtendB3Q_E6extendINtB3r_3MapIB2H_BH_EB3Z_EE0E0E0E0EB4d_:bb.a
  %.sroa.06.0.copyload = load i32, ptr %i.g, align 4
  %.sroa.47.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 4
  %.sroa.47.0.copyload = load i32, ptr %.sroa.47.0..sroa_idx, align 4
  %.sroa.58.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %.sroa.58.0.copyload = load i32, ptr %.sroa.58.0..sroa_idx, align 4
  %i.h = trunc i64 %.sroa.2.010 to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1209
  invoke void @_RNvMs1_NtCsgQfI1edjipl_9hashbrown3mapINtB5_7HashMapTmmEBN_NtNtCsiTTz6JxaXqu_5ahash12random_state11RandomStateE6insertCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull sret([12 x i8]) align 4 captures(none) dereferenceable(12) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(64) %1, i32 noundef %.sroa.06.0.copyload, i32 noundef %.sroa.47.0.copyload, i32 noundef %i.h, i32 noundef %.sroa.58.0.copyload)
          to label %bb.b unwind label %bb.c

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVecTTmmEmEEECs2JiOgHzbbc7_10tokenizers.exit: ; preds = %bb.b, %bb.a
  %i.i = load ptr, ptr %0, align 8, !nonnull !6, !noundef !6
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.k = load i64, ptr %i.j, align 8, !noundef !6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i64 %i.k, ptr %i.c, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.i, ptr %i.l, align 8
  call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecTTmmEmEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void

bb.b:                                             ; preds = %.lr.ph
  %i.m = getelementptr inbounds nuw i8, ptr %i.g, i64 12 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1209
  %i.n = add i64 %.sroa.2.010, 1
  %.not.not = icmp eq ptr %i.m, %i.e
  br i1 %.not.not, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVecTTmmEmEEECs2JiOgHzbbc7_10tokenizers.exit, label %.lr.ph

bb.c:                                             ; preds = %.lr.ph
  %i.o = landingpad { ptr, i32 }
          cleanup
  %.val = load ptr, ptr %0, align 8, !alias.scope !1210, !nonnull !6, !noundef !6
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val4 = load i64, ptr %i.p, align 8, !alias.scope !1210, !noundef !6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1211
  store i64 %.val4, ptr %i.a, align 8, !noalias !1211
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %.val, ptr %i.q, align 8, !noalias !1211
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecTTmmEmEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.a)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterTTmmEmEEECs2JiOgHzbbc7_10tokenizers.exit unwind label %bb.d

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterTTmmEmEEECs2JiOgHzbbc7_10tokenizers.exit: ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1211
  resume { ptr, i32 } %i.o

bb.d:                                             ; preds = %bb.c
  %i.r = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #23
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB6_8IntoIterTciEENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4folduNCINvNtNtB17_8adapters3map8map_foldBW_cuNCINvMs0_NtNtCs2JiOgHzbbc7_10tokenizers9tokenizer10normalizerNtB2P_16NormalizedString15transform_rangeNtNtNtB19_3ops5range9RangeFullINtB8_3VecBW_EEs_0NCINvNvB11_8for_each4callcNCINvXsd_NtBa_6stringNtB5F_6StringINtNtB15_7collect6ExtendcE6extendINtB27_3MapBH_B2G_EE0E0E0EB2T_(ptr noalias nofree noundef align 8 captures(none) dead_on_return dereferenceable(32) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(40) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %i.e = alloca [40 x i8], align 8                ; 8 uses
  %i.f = alloca [32 x i8], align 8                ; 7 uses
  %i.g = alloca [8 x i8], align 8                 ; 4 uses
  %i.h = alloca [40 x i8], align 8                ; 8 uses
  %i.i = alloca [16 x i8], align 16               ; 4 uses
  %i.j = alloca [40 x i8], align 8                ; 8 uses
  %i.k = alloca [16 x i8], align 8                ; 5 uses
  %i.l = alloca [8 x i8], align 8                 ; 5 uses
  %i.m = alloca [40 x i8], align 8                ; 8 uses
  %i.n = alloca [32 x i8], align 8                ; 7 uses
  %i.o = alloca [8 x i8], align 8                 ; 4 uses
  %i.p = alloca [8 x i8], align 8                 ; 4 uses
  %i.q = alloca [4 x i8], align 4                 ; 6 uses
  %i.r = alloca [16 x i8], align 16               ; 7 uses
  %i.s = alloca [40 x i8], align 8                ; 8 uses
  %i.t = alloca [64 x i8], align 8                ; 11 uses
  %i.u = alloca [16 x i8], align 8                ; 5 uses
  %i.v = alloca [24 x i8], align 8                ; 4 uses
  %i.w = alloca [8 x i8], align 8                 ; 4 uses
  %i.x = alloca [24 x i8], align 8                ; 12 uses
  %i.y = alloca [8 x i8], align 8                 ; 4 uses
  %i.z = alloca [4 x i8], align 4                 ; 6 uses
  %i.aa = alloca [16 x i8], align 8               ; 5 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.promoted = load ptr, ptr %i.ac, align 8       ; 2 uses
  %i.ad = load ptr, ptr %i.ab, align 8, !nonnull !6, !noundef !6 ; 2 uses
  %.not.not37 = icmp eq ptr %.promoted, %i.ad
  br i1 %.not.not37, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVecTciEEECs2JiOgHzbbc7_10tokenizers.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.pre.i.i = load ptr, ptr %i.ae, align 8        ; 5 uses
  %.sroa.49.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.af = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.ag = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %.sroa.44.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.x, i64 8 ; 2 uses
  %.sroa.65.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.x, i64 16 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.ai = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  %.sroa.417.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.aj = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %.sroa.421.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  %i.ak = getelementptr inbounds nuw i8, ptr %i.t, i64 32
  %.sroa.425.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.t, i64 40
  %i.al = getelementptr inbounds nuw i8, ptr %i.t, i64 48
  %.sroa.429.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.t, i64 56
  %i.am = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.an = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.ao = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  %i.ap = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ar = load ptr, ptr %i.aq, align 8, !nonnull !6, !align !8 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.at = load ptr, ptr %i.as, align 8, !nonnull !6, !align !8 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 24 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.at, i64 8 ; 4 uses
  %.sroa.433.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.aw = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %.sroa.437.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %i.ax = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.ay = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.az = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %i.ba = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  %.sroa.441.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.bb = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.bc = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.bd = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.be = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  %i.bf = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.bg = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.bh = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.bi = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %.sroa.449.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.bj = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %.sroa.453.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.bk = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.bl = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.bm = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.bn = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.bo = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.bp = load ptr, ptr %i.bo, align 8, !nonnull !6, !align !8
  %i.bq = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.br = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %.val.i = load ptr, ptr %1, align 8, !nonnull !6, !align !8 ; 4 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %.val.i, i64 16 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %.val.i, i64 8 ; 2 uses
  %i.bu = insertelement <2 x ptr> <ptr poison, ptr @_RNvXsj_NtNtNtCs4NRVxsYgnAr_4core3fmt3num3impiNtB9_7Display3fmt>, ptr %.pre.i.i, i64 0
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map8map_foldTciEcuNCINvMs0_NtNtCs2JiOgHzbbc7_10tokenizers9tokenizer10normalizerNtB19_16NormalizedString15transform_rangeNtNtNtBa_3ops5range9RangeFullINtNtCscdodAO9FK5_5alloc3vec3VecBU_EEs_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callcNCINvXsd_NtB3c_6stringNtB4O_6StringINtNtB3W_7collect6ExtendcE6extendINtB4_3MapINtNtB3a_9into_iter8IntoIterBU_EB10_EE0E0E0B1d_.exit
  %i.bv = phi ptr [ %.promoted, %.lr.ph ], [ %i.bz, %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map8map_foldTciEcuNCINvMs0_NtNtCs2JiOgHzbbc7_10tokenizers9tokenizer10normalizerNtB19_16NormalizedString15transform_rangeNtNtNtBa_3ops5range9RangeFullINtNtCscdodAO9FK5_5alloc3vec3VecBU_EEs_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callcNCINvXsd_NtB3c_6stringNtB4O_6StringINtNtB3W_7collect6ExtendcE6extendINtB4_3MapINtNtB3a_9into_iter8IntoIterBU_EB10_EE0E0E0B1d_.exit ] ; 3 uses
  %i.bw = load i32, ptr %i.bv, align 8, !range !12, !noundef !6 ; 4 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bv, i64 8
  %i.by = load i64, ptr %i.bx, align 8, !noundef !6 ; 6 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bv, i64 16 ; 3 uses
  store ptr %i.bz, ptr %i.ac, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !noalias !1235
  store i32 %i.bw, ptr %i.z, align 4, !noalias !1236
  %i.ca = load atomic i64, ptr @_RNvCsbKm4k1ctY99_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8, !noalias !1236 ; 2 uses
  %i.cb = icmp ult i64 %i.ca, 6
  call void @llvm.assume(i1 %i.cb)
  %i.cc = icmp samesign ugt i64 %i.ca, 4
  br i1 %i.cc, label %bb.c, label %._crit_edge.i.i

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y), !noalias !1236
  %i.cd = icmp samesign ult i32 %i.bw, 128
  br i1 %i.cd, label %bb.f, label %bb.d

._crit_edge.i.i:                                  ; preds = %bb.b, %.noexc9
  %i.ce = load i64, ptr %.pre.i.i, align 8, !noalias !1236, !noundef !6 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !1236
  %i.cf = icmp sgt i64 %i.by, 0
  br i1 %i.cf, label %bb.t, label %bb.s

bb.d:                                             ; preds = %bb.c
  %i.cg = icmp samesign ult i32 %i.bw, 2048
  br i1 %i.cg, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ch = icmp samesign ult i32 %i.bw, 65536
  %.94.i.i = select i1 %i.ch, i64 3, i64 4
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c
  %.sink.i.i = phi i64 [ 1, %bb.c ], [ 2, %bb.d ], [ %.94.i.i, %bb.e ]
  store i64 %.sink.i.i, ptr %i.y, align 8, !noalias !1236
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !noalias !1236
  %i.ci = icmp eq i64 %i.by, 0
  br i1 %i.ci, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1236
  invoke void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, i64 noundef 9, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %.noexc unwind label %.body.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc:                                           ; preds = %bb.g
  %i.cj = load i64, ptr %i.c, align 8, !range !14, !noalias !1236, !noundef !6
  %i.ck = trunc nuw i64 %i.cj to i1
  %i.cl = load i64, ptr %i.ah, align 8, !range !16, !noalias !1236, !noundef !6 ; 3 uses
  br i1 %i.ck, label %bb.i, label %bb.j, !prof !15

bb.h:                                             ; preds = %bb.f
  %i.cm = icmp sgt i64 %i.by, 0
  br i1 %i.cm, label %bb.l, label %.split.i.i

bb.i:                                             ; preds = %.noexc
  %i.cn = load i64, ptr %i.ai, align 8, !noalias !1236
  br label %.invoke71

bb.j:                                             ; preds = %.noexc
  %i.co = load ptr, ptr %i.ai, align 8, !noalias !1236, !nonnull !6, !noundef !6 ; 2 uses
  %i.cp = icmp samesign ugt i64 %i.cl, 8
  call void @llvm.assume(i1 %i.cp)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1236
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(9) %i.co, ptr noundef nonnull align 1 dereferenceable(9) @5, i64 9, i1 false), !noalias !1236
  store i64 %i.cl, ptr %i.x, align 8, !noalias !1236
  store ptr %i.co, ptr %.sroa.44.0..sroa_idx.i.i, align 8, !noalias !1236
  store i64 9, ptr %.sroa.65.0..sroa_idx.i.i, align 8, !noalias !1236
  br label %bb.k

bb.k:                                             ; preds = %bb.n, %.noexc7, %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !1236
  store ptr %i.z, ptr %i.t, align 8, !noalias !1236
  store ptr @_RNvXsj_NtCs4NRVxsYgnAr_4core3fmtcNtB5_5Debug3fmt, ptr %.sroa.417.0..sroa_idx.i.i, align 8, !noalias !1236
  store ptr %i.y, ptr %i.aj, align 8, !noalias !1236
  store ptr @_RNvXsi_NtNtNtCs4NRVxsYgnAr_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.421.0..sroa_idx.i.i, align 8, !noalias !1236
  store ptr %i.x, ptr %i.ak, align 8, !noalias !1236
  store ptr @_RNvXsq_NtCscdodAO9FK5_5alloc6stringNtB5_6StringNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmt, ptr %.sroa.425.0..sroa_idx.i.i, align 8, !noalias !1236
  store ptr %.pre.i.i, ptr %i.al, align 8, !noalias !1236
  store ptr @_RNvXsj_NtNtNtCs4NRVxsYgnAr_4core3fmt3num3impiNtB9_7Display3fmt, ptr %.sroa.429.0..sroa_idx.i.i, align 8, !noalias !1236
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !1236
  store ptr @11, ptr %i.s, align 8, !noalias !1236
  store i64 33, ptr %i.am, align 8, !noalias !1236
  store ptr @11, ptr %i.an, align 8, !noalias !1236
  store i64 33, ptr %i.ao, align 8, !noalias !1236
  store ptr @10, ptr %i.ap, align 8, !noalias !1236
  invoke void @_RINvNtCsbKm4k1ctY99_3log13___private_api3loguNtB2_12GlobalLoggerECs2JiOgHzbbc7_10tokenizers(ptr noundef nonnull @8, ptr noundef nonnull %i.t, i64 noundef 5, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.s)
          to label %bb.p unwind label %bb.o, !noalias !1236

bb.l:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1236
  invoke void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, i64 noundef 6, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %.noexc6 unwind label %.body.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc6:                                          ; preds = %bb.l
  %i.cq = load i64, ptr %i.b, align 8, !range !14, !noalias !1236, !noundef !6
  %i.cr = trunc nuw i64 %i.cq to i1
  %i.cs = load i64, ptr %i.af, align 8, !range !16, !noalias !1236, !noundef !6 ; 3 uses
  br i1 %i.cr, label %bb.m, label %bb.n, !prof !15

.split.i.i:                                       ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !noalias !1236
  store i64 %i.by, ptr %i.w, align 8, !noalias !1236
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !noalias !1236
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !1236
  store ptr %i.w, ptr %i.u, align 8, !noalias !1236
  store ptr @_RNvXsj_NtNtNtCs4NRVxsYgnAr_4core3fmt3num3impiNtB9_7Display3fmt, ptr %.sroa.49.0..sroa_idx.i.i, align 8, !noalias !1236
  invoke void @_RNvNvNtCscdodAO9FK5_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.v, ptr noundef nonnull @6, ptr noundef nonnull %i.u)
          to label %.noexc7 unwind label %.body.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc7:                                          ; preds = %.split.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !1236
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.x, ptr noundef nonnull align 8 dereferenceable(24) %i.v, i64 24, i1 false), !noalias !1236
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !1236
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !1236
  br label %bb.k

bb.m:                                             ; preds = %.noexc6
  %i.ct = load i64, ptr %i.ag, align 8, !noalias !1236
  br label %.invoke71

.invoke71:                                        ; preds = %bb.i, %bb.m
  %i.cu = phi i64 [ %i.cs, %bb.m ], [ %i.cl, %bb.i ]
  %i.cv = phi i64 [ %i.ct, %bb.m ], [ %i.cn, %bb.i ]
  invoke void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef %i.cu, i64 %i.cv) #26
          to label %.cont72 unwind label %.body.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.cont72:                                          ; preds = %.invoke71
  unreachable

bb.n:                                             ; preds = %.noexc6
  %i.cw = load ptr, ptr %i.ag, align 8, !noalias !1236, !nonnull !6, !noundef !6 ; 2 uses
  %i.cx = icmp samesign ugt i64 %i.cs, 5
  call void @llvm.assume(i1 %i.cx)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1236
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %i.cw, ptr noundef nonnull align 1 dereferenceable(6) @7, i64 6, i1 false), !noalias !1236
  store i64 %i.cs, ptr %i.x, align 8, !noalias !1236
  store ptr %i.cw, ptr %.sroa.44.0..sroa_idx.i.i, align 8, !noalias !1236
  store i64 6, ptr %.sroa.65.0..sroa_idx.i.i, align 8, !noalias !1236
  br label %bb.k

bb.o:                                             ; preds = %bb.k
  %i.cy = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef align 8 dereferenceable(24) %i.x) #24
          to label %.body.thread unwind label %bb.az, !noalias !1236

bb.p:                                             ; preds = %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !1236
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !1236
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.x)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs2JiOgHzbbc7_10tokenizers.exit.i.i unwind label %bb.q, !noalias !1236

bb.q:                                             ; preds = %bb.p
  %i.cz = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.x)
          to label %.body.thread unwind label %bb.r, !noalias !1236

bb.r:                                             ; preds = %bb.q
  %i.da = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #23, !noalias !1236
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs2JiOgHzbbc7_10tokenizers.exit.i.i: ; preds = %bb.p
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.x)
          to label %.noexc9 unwind label %.body.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc9:                                          ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs2JiOgHzbbc7_10tokenizers.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !1236
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !1236
  br label %._crit_edge.i.i

bb.s:                                             ; preds = %._crit_edge.i.i
  %i.db = load ptr, ptr %i.ar, align 8, !noalias !1236, !nonnull !6, !align !8, !noundef !6 ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 64
  %i.dd = load i64, ptr %i.dc, align 8, !noalias !1236, !noundef !6 ; 2 uses
  %i.de = icmp ult i64 %i.ce, %i.dd
  br i1 %i.de, label %bb.u, label %.invoke

bb.t:                                             ; preds = %._crit_edge.i.i
  %i.df = icmp eq i64 %i.ce, 0
  br i1 %i.df, label %bb.z, label %bb.y

bb.u:                                             ; preds = %bb.s
  %i.dg = getelementptr inbounds nuw i8, ptr %i.db, i64 56
  %i.dh = load ptr, ptr %i.dg, align 8, !noalias !1236, !nonnull !6, !noundef !6
  %i.di = getelementptr inbounds nuw [16 x i8], ptr %i.dh, i64 %i.ce
  %i.dj = load <2 x i64>, ptr %i.di, align 8, !noalias !1236
  store <2 x i64> %i.dj, ptr %i.r, align 16, !noalias !1236
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !1236
  call void @llvm.experimental.noalias.scope.decl(metadata !1237)
  %i.dk = load ptr, ptr %i.au, align 8, !alias.scope !1237, !noalias !1236, !nonnull !6, !noundef !6
  %i.dl = load ptr, ptr %i.av, align 8, !alias.scope !1237, !noalias !1236, !nonnull !6, !noundef !6 ; 3 uses
  %i.dm = icmp eq ptr %i.dl, %i.dk
  br i1 %i.dm, label %_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoItercENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit.thread.i.i, label %bb.v

_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoItercENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit.thread.i.i: ; preds = %bb.ab, %bb.u
  store i32 -1, ptr %i.q, align 4, !noalias !1236
  br label %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptioncE6map_orjNCNCINvMs0_NtNtCs2JiOgHzbbc7_10tokenizers9tokenizer10normalizerNtB13_16NormalizedString15transform_rangeNtNtNtB5_3ops5range9RangeFullINtNtCscdodAO9FK5_5alloc3vec3VecTciEEEs_00EB17_.exit.i.i

bb.v:                                             ; preds = %bb.u
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dl, i64 4
  store ptr %i.dn, ptr %i.av, align 8, !alias.scope !1237, !noalias !1236
  %i.do = load i32, ptr %i.dl, align 4, !range !12, !noalias !1238, !noundef !6 ; 4 uses
  store i32 %i.do, ptr %i.q, align 4, !noalias !1236
  %i.dp = icmp samesign ult i32 %i.do, 128
  br i1 %i.dp, label %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptioncE6map_orjNCNCINvMs0_NtNtCs2JiOgHzbbc7_10tokenizers9tokenizer10normalizerNtB13_16NormalizedString15transform_rangeNtNtNtB5_3ops5range9RangeFullINtNtCscdodAO9FK5_5alloc3vec3VecTciEEEs_00EB17_.exit.i.i, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.dq = icmp samesign ult i32 %i.do, 2048
  br i1 %i.dq, label %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptioncE6map_orjNCNCINvMs0_NtNtCs2JiOgHzbbc7_10tokenizers9tokenizer10normalizerNtB13_16NormalizedString15transform_rangeNtNtNtB5_3ops5range9RangeFullINtNtCscdodAO9FK5_5alloc3vec3VecTciEEEs_00EB17_.exit.i.i, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.dr = icmp samesign ult i32 %i.do, 65536
  %..i.i.i.i = select i1 %i.dr, i64 3, i64 4
  br label %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptioncE6map_orjNCNCINvMs0_NtNtCs2JiOgHzbbc7_10tokenizers9tokenizer10normalizerNtB13_16NormalizedString15transform_rangeNtNtNtB5_3ops5range9RangeFullINtNtCscdodAO9FK5_5alloc3vec3VecTciEEEs_00EB17_.exit.i.i

_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptioncE6map_orjNCNCINvMs0_NtNtCs2JiOgHzbbc7_10tokenizers9tokenizer10normalizerNtB13_16NormalizedString15transform_rangeNtNtNtB5_3ops5range9RangeFullINtNtCscdodAO9FK5_5alloc3vec3VecTciEEEs_00EB17_.exit.i.i: ; preds = %bb.x, %bb.w, %bb.v, %_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoItercENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit.thread.i.i
  %.not.i77.i.i = phi i1 [ true, %_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoItercENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit.thread.i.i ], [ false, %bb.w ], [ false, %bb.x ], [ false, %bb.v ]
  %.sroa.02.0.i.i.i = phi i64 [ 0, %_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoItercENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit.thread.i.i ], [ 2, %bb.w ], [ %..i.i.i.i, %bb.x ], [ 1, %bb.v ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !1236
  %i.ds = load i32, ptr %i.z, align 4, !range !12, !noalias !1236, !noundef !6 ; 7 uses
  %i.dt = icmp samesign ult i32 %i.ds, 128        ; 3 uses
  br i1 %i.dt, label %bb.ae, label %bb.ac

bb.y:                                             ; preds = %bb.t
  %i.du = load ptr, ptr %i.ar, align 8, !noalias !1236, !nonnull !6, !align !8, !noundef !6 ; 2 uses
  %i.dv = add i64 %i.ce, -1                       ; 3 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %i.du, i64 64
  %i.dx = load i64, ptr %i.dw, align 8, !noalias !1236, !noundef !6 ; 2 uses
  %i.dy = icmp ult i64 %i.dv, %i.dx
  br i1 %i.dy, label %bb.aa, label %.invoke

bb.z:                                             ; preds = %bb.t
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.r, i8 0, i64 16, i1 false), !noalias !1236
  br label %bb.ab

bb.aa:                                            ; preds = %bb.y
  %i.dz = getelementptr inbounds nuw i8, ptr %i.du, i64 56
  %i.ea = load ptr, ptr %i.dz, align 8, !noalias !1236, !nonnull !6, !noundef !6
  %i.eb = getelementptr inbounds nuw [16 x i8], ptr %i.ea, i64 %i.dv
  %i.ec = load <2 x i64>, ptr %i.eb, align 8, !noalias !1236
  store <2 x i64> %i.ec, ptr %i.r, align 16, !noalias !1236
  br label %bb.ab

.invoke:                                          ; preds = %bb.y, %bb.s
  %i.ed = phi i64 [ %i.ce, %bb.s ], [ %i.dv, %bb.y ]
  %i.ee = phi i64 [ %i.dd, %bb.s ], [ %i.dx, %bb.y ]
  %i.ef = phi ptr [ @12, %bb.s ], [ @13, %bb.y ]
  invoke void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.ed, i64 noundef %i.ee, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ef) #26
          to label %.cont unwind label %.body.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

bb.ab:                                            ; preds = %bb.aa, %bb.z
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !1236
  br label %_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoItercENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit.thread.i.i

bb.ac:                                            ; preds = %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptioncE6map_orjNCNCINvMs0_NtNtCs2JiOgHzbbc7_10tokenizers9tokenizer10normalizerNtB13_16NormalizedString15transform_rangeNtNtNtB5_3ops5range9RangeFullINtNtCscdodAO9FK5_5alloc3vec3VecTciEEEs_00EB17_.exit.i.i
  %i.eg = icmp samesign ult i32 %i.ds, 2048
  br i1 %i.eg, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.eh = icmp samesign ult i32 %i.ds, 65536
  %..i.i = select i1 %i.eh, i64 3, i64 4
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac, %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptioncE6map_orjNCNCINvMs0_NtNtCs2JiOgHzbbc7_10tokenizers9tokenizer10normalizerNtB13_16NormalizedString15transform_rangeNtNtNtB5_3ops5range9RangeFullINtNtCscdodAO9FK5_5alloc3vec3VecTciEEEs_00EB17_.exit.i.i
  %.sroa.0.0.i.i = phi i64 [ 2, %bb.ac ], [ %..i.i, %bb.ad ], [ 1, %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptioncE6map_orjNCNCINvMs0_NtNtCs2JiOgHzbbc7_10tokenizers9tokenizer10normalizerNtB13_16NormalizedString15transform_rangeNtNtNtB5_3ops5range9RangeFullINtNtCscdodAO9FK5_5alloc3vec3VecTciEEEs_00EB17_.exit.i.i ]
  %i.ei = sub nsw i64 %.sroa.0.0.i.i, %.sroa.02.0.i.i.i
  store i64 %i.ei, ptr %i.p, align 8, !noalias !1236
  br i1 %.not.i77.i.i, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !1236
  store ptr %i.q, ptr %i.o, align 8, !noalias !1236
  %i.ej = load atomic i64, ptr @_RNvCsbKm4k1ctY99_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8, !noalias !1236 ; 2 uses
  %i.ek = icmp ult i64 %i.ej, 6
  call void @llvm.assume(i1 %i.ek)
  %i.el = icmp samesign ugt i64 %i.ej, 4
  br i1 %i.el, label %bb.ah, label %bb.ai

bb.ag:                                            ; preds = %bb.ai, %bb.ae
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !1236
  %i.em = icmp slt i64 %i.by, 0
  br i1 %i.em, label %bb.aj, label %_RINvXs7_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4takeINtB6_4TakeQINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoItercEENtB6_8SpecTake9spec_foldjNCINvNtB8_3map8map_foldcjjNCNCINvMs0_NtNtCs2JiOgHzbbc7_10tokenizers9tokenizer10normalizerNtB2Q_16NormalizedString15transform_rangeNtNtNtBc_3ops5range9RangeFullINtB15_3VecTciEEEs_0s_0NCINvXsK_NtNtBa_6traits5accumjNtB5k_3Sum3sumINtB2k_3MapBO_B2F_EE0E0EB2U_.exit.i.i

bb.ah:                                            ; preds = %bb.af
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !1236
  store ptr %i.o, ptr %i.n, align 8, !noalias !1236
  store ptr @_RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRcNtB6_5Debug3fmtCs2JiOgHzbbc7_10tokenizers, ptr %.sroa.433.0..sroa_idx.i.i, align 8, !noalias !1236
  store ptr %i.p, ptr %i.aw, align 8, !noalias !1236
  store ptr @_RNvXsj_NtNtNtCs4NRVxsYgnAr_4core3fmt3num3impiNtB9_7Display3fmt, ptr %.sroa.437.0..sroa_idx.i.i, align 8, !noalias !1236
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !1236
  store ptr @11, ptr %i.m, align 8, !noalias !1236
  store i64 33, ptr %i.ax, align 8, !noalias !1236
end_hunk_6
begin_hunk_7_@_RNvXs4_NtCscdodAO9FK5_5alloc6stringNtB5_6StringNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs1_NtNtCs2JiOgHzbbc7_10tokenizers6models3bpeNtB5_5ErrorNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmt(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, ptr } @_RNvYNtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe5ErrorNtNtCs4NRVxsYgnAr_4core5error5Error5causeB8_(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtCs4NRVxsYgnAr_4core5slice20copy_from_slice_implhECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull, i64 noundef range(i64 0, -9223372036854775808), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMs0_NtNtCs2JiOgHzbbc7_10tokenizers9tokenizer10normalizerNtB6_16NormalizedString5sliceINtNtNtCs4NRVxsYgnAr_4core3ops5range5RangejEEBa_(ptr dead_on_unwind noalias noundef writable sret([80 x i8]) align 8 captures(none) dereferenceable(80), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(80), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(24)) unnamed_addr #0

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCs4NRVxsYgnAr_4core6option13expect_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #14

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #15

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RINvMs1_NtCsgQfI1edjipl_9hashbrown3mapINtB6_7HashMapNtCshgwszQZps6S_11compact_str13CompactStringmNtNtCsiTTz6JxaXqu_5ahash12random_state11RandomStateE12contains_keyBO_ECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(64), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { i32, i32 } @_RNvMs1_NtCsgQfI1edjipl_9hashbrown3mapINtB5_7HashMapNtCshgwszQZps6S_11compact_str13CompactStringmNtNtCsiTTz6JxaXqu_5ahash12random_state11RandomStateE6insertCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef align 8 dereferenceable(64), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(24), i32 noundef) unnamed_addr #0

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RINvCshgwszQZps6S_11compact_str20unwrap_with_msg_failNtB2_12ReserveErrorEB2_(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.log.f64(double) #16

; Function Attrs: nonlazybind uwtable
declare void @_RNvNvNtCscdodAO9FK5_5alloc3fmt6format12format_inner(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noundef nonnull, ptr noundef nonnull) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs6_NtNtCshiFeWPMd8WI_9itertools8adaptors8coalesceINtB5_22DedupPred2CoalescePredNtB5_7DedupEqEINtB5_17CoalescePredicateNtNtCscdodAO9FK5_5alloc6string6StringB1W_E13coalesce_pairCs2JiOgHzbbc7_10tokenizers(ptr dead_on_unwind noalias noundef writable sret([48 x i8]) align 8 captures(none) dereferenceable(48), ptr noalias noundef nonnull, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(24), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvXs2_NtNtCs2JiOgHzbbc7_10tokenizers9tokenizer7patternRNtNtNtB9_5utils4onig8SysRegexNtB5_7Pattern12find_matches(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvXs6_NtCscdodAO9FK5_5alloc6stringNtB6_6StringINtNtNtNtCs4NRVxsYgnAr_4core4iter6traits7collect12FromIteratorRcE9from_iterINtNtNtBT_5slice4iter4ItercEECs2JiOgHzbbc7_10tokenizers(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noundef nonnull, ptr noundef) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare void @_RNvCs9wFQrvczXsK_7___rustc35___rust_no_alloc_shim_is_unstable_v2() unnamed_addr #8

; Function Attrs: nounwind nonlazybind allockind("alloc,uninitialized,aligned") allocsize(0) uwtable
declare noalias noundef ptr @_RNvCs9wFQrvczXsK_7___rustc12___rust_alloc(i64 noundef, i64 allocalign noundef range(i64 1, -9223372036854775807)) unnamed_addr #17

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE7reserveCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef align 8 dereferenceable(24), i64 noundef) unnamed_addr #0

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtCshgwszQZps6S_11compact_str13CompactStringE8grow_oneCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #18

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtB7_6string6StringE8grow_oneCs2AWtUsOyxgP_3std(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #18

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecTTjjEbEE8grow_oneCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #18

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecTjjEE8grow_oneCsdMFwaIVqAhb_14regex_automata(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #18

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecmE8grow_oneCs10FHCNY9HGS_12aho_corasick(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #18

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.cttz.i16(i16, i1 immarg) #19

; Function Attrs: cold minsize noreturn nonlazybind optsize uwtable
declare void @_RNvNtCscdodAO9FK5_5alloc5alloc18handle_alloc_error(i64 noundef range(i64 1, -9223372036854775807), i64 noundef) unnamed_addr #13

; Function Attrs: nonlazybind uwtable
declare noundef ptr @_RNvNtNtNtCshgwszQZps6S_11compact_str4repr4heap15inline_capacity5alloc(i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef i64 @_RNvNtNtCs4NRVxsYgnAr_4core3str5count14do_count_chars(ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef i64 @_RNvNtNtCs4NRVxsYgnAr_4core3str5count23char_count_general_case(ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXNtNtCs2AWtUsOyxgP_3std2io5errorNtB2_5ErrorNtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmt(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs5_NtNtCs2AWtUsOyxgP_3std2io5errorNtB5_5ErrorNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmt(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare { ptr, ptr } @_RNvXs6_NtNtCs2AWtUsOyxgP_3std2io5errorNtB5_5ErrorNtNtCs4NRVxsYgnAr_4core5error5Error6source(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare { ptr, ptr } @_RNvXs6_NtNtCs2AWtUsOyxgP_3std2io5errorNtB5_5ErrorNtNtCs4NRVxsYgnAr_4core5error5Error5cause(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs5_NtCs5PtHgSLqj5O_10serde_json5errorNtB5_5ErrorNtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmt(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs3_NtCs5PtHgSLqj5O_10serde_json5errorNtB5_5ErrorNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmt(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare { ptr, ptr } @_RNvXs2_NtCs5PtHgSLqj5O_10serde_json5errorNtB5_5ErrorNtNtCs4NRVxsYgnAr_4core5error5Error6source(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, ptr } @_RNvYNtNtCs5PtHgSLqj5O_10serde_json5error5ErrorNtNtCs4NRVxsYgnAr_4core5error5Error5causeCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #0

; Function Attrs: cold nonlazybind uwtable
declare void @_RNvNvXs2_NtCshgwszQZps6S_11compact_str4reprNtB7_4ReprNtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4drop13outlined_drop(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #20

; Function Attrs: nonlazybind uwtable
declare void @_RNvXs0_NtNtCs2JiOgHzbbc7_10tokenizers10processors8templateNtB5_5PieceINtNtCs4NRVxsYgnAr_4core7convert7TryFromReE8try_from(ptr dead_on_unwind noalias noundef writable sret([32 x i8]) align 8 captures(address) dereferenceable(32), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorNtB6_5Debug3fmtCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias noundef align 8 dereferenceable(24), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRNtNtCs5PtHgSLqj5O_10serde_json5error5ErrorNtB6_5Debug3fmtCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter9write_str(ptr noalias noundef align 8 dereferenceable(24), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRjNtB6_5Debug3fmtCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRNtNtCscdodAO9FK5_5alloc6string6StringNtB6_5Debug3fmtCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind allockind("free") uwtable
declare void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr allocptr noundef nonnull captures(address), i64 noundef, i64 noundef range(i64 1, -9223372036854775807)) unnamed_addr #21

; Function Attrs: nonlazybind uwtable
declare hidden noundef i64 @_RNvMNtNtCscdodAO9FK5_5alloc3vec13in_place_dropINtB2_11InPlaceDropNtNtB6_6string6StringE3lenCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef i64 @_RNvMNtNtCscdodAO9FK5_5alloc3vec13in_place_dropINtB2_11InPlaceDropNtNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encoding8EncodingE3lenB17_(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsi_NtCs4NRVxsYgnAr_4core3fmteNtB5_7Display3fmt(ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMs6_NtCscdodAO9FK5_5alloc2rcINtB5_2RcINtNtCs4NRVxsYgnAr_4core4cell7RefCellNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7lattice4NodeEE9drop_slowB1l_(ptr noalias noundef align 8 dereferenceable(8)) unnamed_addr #18

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #16

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #9

attributes #0 = { nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #1 = { nofree norecurse nosync nounwind nonlazybind memory(readwrite, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #2 = { nofree norecurse nosync nounwind nonlazybind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #5 = { inlinehint nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #8 = { nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #11 = { cold minsize noinline noreturn nounwind nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #12 = { cold minsize noinline noreturn nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #13 = { cold minsize noreturn nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #14 = { cold noinline noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #15 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #16 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #17 = { nounwind nonlazybind allockind("alloc,uninitialized,aligned") allocsize(0) uwtable "alloc-family"="__rust_alloc" "alloc-variant-zeroed"="_RNvCs9wFQrvczXsK_7___rustc19___rust_alloc_zeroed" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #18 = { noinline nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #19 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #20 = { cold nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #21 = { nounwind nonlazybind allockind("free") uwtable "alloc-family"="__rust_alloc" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #22 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #23 = { cold noreturn nounwind }
attributes #24 = { cold }
attributes #25 = { nounwind }
attributes #26 = { noreturn }

!llvm.module.flags = !{!2, !3}
!llvm.ident = !{!4}

!0 = distinct !{!0, i1 true, !"_RNvXse_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterTTjjEbEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers"}
!1 = distinct !{!1, !0, !"_RNvXse_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterTTjjEbEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers: argument 0"}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 2, !"RtLibUseGOT", i32 1}
!4 = !{!"rustc version 1.97.1 (8bab26f4f 2026-07-14)"}
!5 = !{i64 -1, i64 -9223372036854775808}
!6 = !{}
!7 = !{i64 0, i64 25}
!8 = !{i64 8}
!9 = !{i64 0, i64 -9223372036854775808}
!10 = !{i64 1, i64 536870913}
!11 = !{i64 0, i64 7}
!12 = !{i32 0, i32 1114112}
!13 = !{!"branch_weights", i32 4001, i32 4000000}
!14 = !{i64 0, i64 2}
!15 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!16 = !{i64 0, i64 -9223372036854775807}
!17 = !{i8 0, i8 2}
!18 = !{!1}
!19 = distinct !{!19, i1 true, !"_RNvXs_NtNtCscdodAO9FK5_5alloc3vec13in_place_dropINtB4_11InPlaceDropNtNtB8_6string6StringENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers"}
!20 = distinct !{!20, !19, !"_RNvXs_NtNtCscdodAO9FK5_5alloc3vec13in_place_dropINtB4_11InPlaceDropNtNtB8_6string6StringENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers: argument 0"}
!21 = !{!20}
!22 = distinct !{!22, i1 true, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs5PtHgSLqj5O_10serde_json5error9ErrorImplECs2JiOgHzbbc7_10tokenizers"}
!23 = distinct !{!23, !22, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs5PtHgSLqj5O_10serde_json5error9ErrorImplECs2JiOgHzbbc7_10tokenizers: argument 0"}
!24 = distinct !{!24, i1 true, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs5PtHgSLqj5O_10serde_json5error9ErrorCodeECs2JiOgHzbbc7_10tokenizers"}
!25 = distinct !{!25, !24, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs5PtHgSLqj5O_10serde_json5error9ErrorCodeECs2JiOgHzbbc7_10tokenizers: argument 0"}
!26 = !{!23}
!27 = !{!25}
!28 = !{!25, !23}
!29 = !{i8 0, i8 6}
!30 = !{!"branch_weights", i32 1, i32 2000, i32 2000, i32 2000, i32 2000}
!31 = distinct !{!31, i1 true, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs5PtHgSLqj5O_10serde_json5error5ErrorECs2JiOgHzbbc7_10tokenizers"}
!32 = distinct !{!32, !31, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs5PtHgSLqj5O_10serde_json5error5ErrorECs2JiOgHzbbc7_10tokenizers: argument 0"}
!33 = distinct !{!33, i1 true, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs5PtHgSLqj5O_10serde_json5error9ErrorImplECs2JiOgHzbbc7_10tokenizers"}
!34 = distinct !{!34, !33, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs5PtHgSLqj5O_10serde_json5error9ErrorImplECs2JiOgHzbbc7_10tokenizers: argument 0"}
!35 = distinct !{!35, i1 true, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs5PtHgSLqj5O_10serde_json5error9ErrorCodeECs2JiOgHzbbc7_10tokenizers"}
!36 = distinct !{!36, !35, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs5PtHgSLqj5O_10serde_json5error9ErrorCodeECs2JiOgHzbbc7_10tokenizers: argument 0"}
!37 = !{!32}
!38 = !{!34}
!39 = !{!36}
!40 = !{!36, !34}
!41 = !{!36, !34, !32}
!42 = distinct !{!42, i1 true, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer5TokenEEEB1x_"}
!43 = distinct !{!43, !42, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer5TokenEEEB1x_: argument 0"}
!44 = !{!43}
!45 = distinct !{!45, i1 true, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxNtNtNtCsboAIIHEtPkY_10serde_core7private7content7ContentEECs2JiOgHzbbc7_10tokenizers"}
!46 = distinct !{!46, !45, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxNtNtNtCsboAIIHEtPkY_10serde_core7private7content7ContentEECs2JiOgHzbbc7_10tokenizers: argument 0"}
!47 = distinct !{null}
!48 = distinct !{!48, i1 true, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxNtNtNtCsboAIIHEtPkY_10serde_core7private7content7ContentEECs2JiOgHzbbc7_10tokenizers"}
!49 = distinct !{!49, !48, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxNtNtNtCsboAIIHEtPkY_10serde_core7private7content7ContentEECs2JiOgHzbbc7_10tokenizers: argument 0"}
!50 = !{i8 0, i8 22}
!51 = !{!46}
!52 = !{!49}
!53 = distinct !{!53, i1 true, !"_RINvXs2_NtNtNtCs4NRVxsYgnAr_4core4iter6traits8iteratorQINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterTjjEENtB6_15IteratorRefSpec9spec_folduNCINvNvNtB6_8Iterator8for_each4callB1E_NCINvMsj_BW_INtBW_3VecB1E_E14extend_trustedBQ_E0E0ECs2JiOgHzbbc7_10tokenizers"}
!54 = distinct !{!54, !53, !"_RINvXs2_NtNtNtCs4NRVxsYgnAr_4core4iter6traits8iteratorQINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterTjjEENtB6_15IteratorRefSpec9spec_folduNCINvNvNtB6_8Iterator8for_each4callB1E_NCINvMsj_BW_INtBW_3VecB1E_E14extend_trustedBQ_E0E0ECs2JiOgHzbbc7_10tokenizers: argument 0"}
!55 = distinct !{!55, !53, !"_RINvXs2_NtNtNtCs4NRVxsYgnAr_4core4iter6traits8iteratorQINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterTjjEENtB6_15IteratorRefSpec9spec_folduNCINvNvNtB6_8Iterator8for_each4callB1E_NCINvMsj_BW_INtBW_3VecB1E_E14extend_trustedBQ_E0E0ECs2JiOgHzbbc7_10tokenizers: argument 1"}
!56 = distinct !{!56, i1 true, !"_RINvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB6_8IntoIterTjjEENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator8try_folduNCINvMNtNtB19_3ops9try_traitINtB2c_17NeverShortCircuituE10wrap_mut_2uBW_NCINvNvB11_8for_each4callBW_NCINvMsj_B8_INtB8_3VecBW_E14extend_trustedQBH_E0E0E0B2y_ECs2JiOgHzbbc7_10tokenizers"}
!57 = distinct !{!57, !56, !"_RINvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB6_8IntoIterTjjEENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator8try_folduNCINvMNtNtB19_3ops9try_traitINtB2c_17NeverShortCircuituE10wrap_mut_2uBW_NCINvNvB11_8for_each4callBW_NCINvMsj_B8_INtB8_3VecBW_E14extend_trustedQBH_E0E0E0B2y_ECs2JiOgHzbbc7_10tokenizers: argument 0"}
!58 = distinct !{!58, i1 false, !"LVerDomain"}
!59 = distinct !{!59, !58}
!60 = distinct !{!60, !56, !"_RINvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB6_8IntoIterTjjEENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator8try_folduNCINvMNtNtB19_3ops9try_traitINtB2c_17NeverShortCircuituE10wrap_mut_2uBW_NCINvNvB11_8for_each4callBW_NCINvMsj_B8_INtB8_3VecBW_E14extend_trustedQBH_E0E0E0B2y_ECs2JiOgHzbbc7_10tokenizers: argument 1"}
!61 = distinct !{!61, !58}
!62 = distinct !{!62, i1 true, !"_RNCINvMNtNtCs4NRVxsYgnAr_4core3ops9try_traitINtB5_17NeverShortCircuituE10wrap_mut_2uTjjENCINvNvNtNtNtNtB9_4iter6traits8iterator8Iterator8for_each4callB1k_NCINvMsj_NtCscdodAO9FK5_5alloc3vecINtB2B_3VecB1k_E14extend_trustedQINtNtB2B_9into_iter8IntoIterB1k_EE0E0E0Cs2JiOgHzbbc7_10tokenizers"}
!63 = distinct !{!63, !62, !"_RNCINvMNtNtCs4NRVxsYgnAr_4core3ops9try_traitINtB5_17NeverShortCircuituE10wrap_mut_2uTjjENCINvNvNtNtNtNtB9_4iter6traits8iterator8Iterator8for_each4callB1k_NCINvMsj_NtCscdodAO9FK5_5alloc3vecINtB2B_3VecB1k_E14extend_trustedQINtNtB2B_9into_iter8IntoIterB1k_EE0E0E0Cs2JiOgHzbbc7_10tokenizers: argument 0"}
!64 = distinct !{!64, i1 true, !"_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator8for_each4callTjjENCINvMsj_NtCscdodAO9FK5_5alloc3vecINtB1s_3VecB1f_E14extend_trustedQINtNtB1s_9into_iter8IntoIterB1f_EE0E0Cs2JiOgHzbbc7_10tokenizers"}
!65 = distinct !{!65, !64, !"_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator8for_each4callTjjENCINvMsj_NtCscdodAO9FK5_5alloc3vecINtB1s_3VecB1f_E14extend_trustedQINtNtB1s_9into_iter8IntoIterB1f_EE0E0Cs2JiOgHzbbc7_10tokenizers: argument 0"}
!66 = distinct !{!66, i1 true, !"_RNCINvMsj_NtCscdodAO9FK5_5alloc3vecINtB8_3VecTjjEE14extend_trustedQINtNtB8_9into_iter8IntoIterBH_EE0Cs2JiOgHzbbc7_10tokenizers"}
!67 = distinct !{!67, !66, !"_RNCINvMsj_NtCscdodAO9FK5_5alloc3vecINtB8_3VecTjjEE14extend_trustedQINtNtB8_9into_iter8IntoIterBH_EE0Cs2JiOgHzbbc7_10tokenizers: argument 0"}
!68 = distinct !{!68, !78, !79}
!69 = distinct !{!69, !78}
!70 = !{!54}
!71 = !{!55}
!72 = !{!57}
!73 = !{!57, !54}
!74 = !{!59}
!75 = !{!57, !60, !54, !55}
!76 = !{!61}
!77 = !{!67, !65, !63, !57, !60, !54, !55, !59}
!78 = !{!"llvm.loop.isvectorized", i32 1}
!79 = !{!"llvm.loop.unroll.runtime.disable"}
!80 = !{!67, !65, !63, !57, !60, !54, !55}
!81 = distinct !{!81, i1 true, !"_RINvXs2_NtNtNtCs4NRVxsYgnAr_4core4iter6traits8iteratorQINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoItercENtB6_15IteratorRefSpec13spec_try_foldjNCINvNvXs_NtNtBa_8adapters4takeINtB2s_4TakepENtB6_8Iterator8try_fold5checkcjINtNtNtBc_3ops9try_trait17NeverShortCircuitjENCINvMB3z_B3w_10wrap_mut_2jcNCINvNtB2u_3map8map_foldcjjNCINvMs0_NtNtCs2JiOgHzbbc7_10tokenizers9tokenizer10normalizerNtB5h_16NormalizedString15transform_rangeINtNtB3B_5range5RangejEINtNtB2u_5chain5ChainINtB4M_3MapINtNtB2u_9enumerate9EnumerateNtNtNtBc_3str4iter5CharsENCNvB5d_7prepend0EINtNtNtBa_7sources4once4OnceTciEEEE0NCINvXsK_NtB8_5accumjNtB9y_3Sum3sumIB7v_IB2O_BQ_EB58_EE0E0E0E0INtNtB3B_12control_flow11ControlFlowB3w_jEEB5l_"}
!82 = distinct !{!82, !81, !"_RINvXs2_NtNtNtCs4NRVxsYgnAr_4core4iter6traits8iteratorQINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoItercENtB6_15IteratorRefSpec13spec_try_foldjNCINvNvXs_NtNtBa_8adapters4takeINtB2s_4TakepENtB6_8Iterator8try_fold5checkcjINtNtNtBc_3ops9try_trait17NeverShortCircuitjENCINvMB3z_B3w_10wrap_mut_2jcNCINvNtB2u_3map8map_foldcjjNCINvMs0_NtNtCs2JiOgHzbbc7_10tokenizers9tokenizer10normalizerNtB5h_16NormalizedString15transform_rangeINtNtB3B_5range5RangejEINtNtB2u_5chain5ChainINtB4M_3MapINtNtB2u_9enumerate9EnumerateNtNtNtBc_3str4iter5CharsENCNvB5d_7prepend0EINtNtNtBa_7sources4once4OnceTciEEEE0NCINvXsK_NtB8_5accumjNtB9y_3Sum3sumIB7v_IB2O_BQ_EB58_EE0E0E0E0INtNtB3B_12control_flow11ControlFlowB3w_jEEB5l_: argument 0"}
!83 = distinct !{!83, i1 true, !"_RINvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB6_8IntoItercENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator8try_foldjNCINvNvXs_NtNtB14_8adapters4takeINtB2d_4TakepEBY_8try_fold5checkcjINtNtNtB16_3ops9try_trait17NeverShortCircuitjENCINvMB3a_B37_10wrap_mut_2jcNCINvNtB2f_3map8map_foldcjjNCINvMs0_NtNtCs2JiOgHzbbc7_10tokenizers9tokenizer10normalizerNtB4T_16NormalizedString15transform_rangeINtNtB3c_5range5RangejEINtNtB2f_5chain5ChainINtB4o_3MapINtNtB2f_9enumerate9EnumerateNtNtNtB16_3str4iter5CharsENCNvB4P_7prepend0EINtNtNtB14_7sources4once4OnceTciEEEE0NCINvXsK_NtB12_5accumjNtB9c_3Sum3sumIB77_IB2A_QBH_EB4K_EE0E0E0E0INtNtB3c_12control_flow11ControlFlowB37_jEEB4X_"}
!84 = distinct !{!84, !83, !"_RINvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB6_8IntoItercENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator8try_foldjNCINvNvXs_NtNtB14_8adapters4takeINtB2d_4TakepEBY_8try_fold5checkcjINtNtNtB16_3ops9try_trait17NeverShortCircuitjENCINvMB3a_B37_10wrap_mut_2jcNCINvNtB2f_3map8map_foldcjjNCINvMs0_NtNtCs2JiOgHzbbc7_10tokenizers9tokenizer10normalizerNtB4T_16NormalizedString15transform_rangeINtNtB3c_5range5RangejEINtNtB2f_5chain5ChainINtB4o_3MapINtNtB2f_9enumerate9EnumerateNtNtNtB16_3str4iter5CharsENCNvB4P_7prepend0EINtNtNtB14_7sources4once4OnceTciEEEE0NCINvXsK_NtB12_5accumjNtB9c_3Sum3sumIB77_IB2A_QBH_EB4K_EE0E0E0E0INtNtB3c_12control_flow11ControlFlowB37_jEEB4X_: argument 0"}
!85 = distinct !{!85, !83, !"_RINvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB6_8IntoItercENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator8try_foldjNCINvNvXs_NtNtB14_8adapters4takeINtB2d_4TakepEBY_8try_fold5checkcjINtNtNtB16_3ops9try_trait17NeverShortCircuitjENCINvMB3a_B37_10wrap_mut_2jcNCINvNtB2f_3map8map_foldcjjNCINvMs0_NtNtCs2JiOgHzbbc7_10tokenizers9tokenizer10normalizerNtB4T_16NormalizedString15transform_rangeINtNtB3c_5range5RangejEINtNtB2f_5chain5ChainINtB4o_3MapINtNtB2f_9enumerate9EnumerateNtNtNtB16_3str4iter5CharsENCNvB4P_7prepend0EINtNtNtB14_7sources4once4OnceTciEEEE0NCINvXsK_NtB12_5accumjNtB9c_3Sum3sumIB77_IB2A_QBH_EB4K_EE0E0E0E0INtNtB3c_12control_flow11ControlFlowB37_jEEB4X_: argument 1"}
!86 = !{!82}
!87 = !{!84}
!88 = !{!85}
!89 = !{!85, !82}
!90 = !{!84, !85, !82}
!91 = distinct !{!91, i1 true, !"_RINvXs2_NtNtNtCs4NRVxsYgnAr_4core4iter6traits8iteratorQINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoItercENtB6_15IteratorRefSpec13spec_try_foldjNCINvNvXs_NtNtBa_8adapters4takeINtB2s_4TakepENtB6_8Iterator8try_fold5checkcjINtNtNtBc_3ops9try_trait17NeverShortCircuitjENCINvMB3z_B3w_10wrap_mut_2jcNCINvNtB2u_3map8map_foldcjjNCINvMs0_NtNtCs2JiOgHzbbc7_10tokenizers9tokenizer10normalizerNtB5h_16NormalizedString15transform_rangeINtNtB3B_5range9RangeFromjEINtNtB2u_5chain5ChainINtNtNtBa_7sources4once4OnceTciEEINtB4M_3MapNtNtNtBc_3str4iter5CharsNCNvB5d_6append0EEE0NCINvXsK_NtB8_5accumjNtB97_3Sum3sumIB86_IB2O_BQ_EB58_EE0E0E0E0INtNtB3B_12control_flow11ControlFlowB3w_jEEB5l_"}
!92 = distinct !{!92, !91, !"_RINvXs2_NtNtNtCs4NRVxsYgnAr_4core4iter6traits8iteratorQINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoItercENtB6_15IteratorRefSpec13spec_try_foldjNCINvNvXs_NtNtBa_8adapters4takeINtB2s_4TakepENtB6_8Iterator8try_fold5checkcjINtNtNtBc_3ops9try_trait17NeverShortCircuitjENCINvMB3z_B3w_10wrap_mut_2jcNCINvNtB2u_3map8map_foldcjjNCINvMs0_NtNtCs2JiOgHzbbc7_10tokenizers9tokenizer10normalizerNtB5h_16NormalizedString15transform_rangeINtNtB3B_5range9RangeFromjEINtNtB2u_5chain5ChainINtNtNtBa_7sources4once4OnceTciEEINtB4M_3MapNtNtNtBc_3str4iter5CharsNCNvB5d_6append0EEE0NCINvXsK_NtB8_5accumjNtB97_3Sum3sumIB86_IB2O_BQ_EB58_EE0E0E0E0INtNtB3B_12control_flow11ControlFlowB3w_jEEB5l_: argument 0"}
!93 = distinct !{!93, i1 true, !"_RINvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB6_8IntoItercENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator8try_foldjNCINvNvXs_NtNtB14_8adapters4takeINtB2d_4TakepEBY_8try_fold5checkcjINtNtNtB16_3ops9try_trait17NeverShortCircuitjENCINvMB3a_B37_10wrap_mut_2jcNCINvNtB2f_3map8map_foldcjjNCINvMs0_NtNtCs2JiOgHzbbc7_10tokenizers9tokenizer10normalizerNtB4T_16NormalizedString15transform_rangeINtNtB3c_5range9RangeFromjEINtNtB2f_5chain5ChainINtNtNtB14_7sources4once4OnceTciEEINtB4o_3MapNtNtNtB16_3str4iter5CharsNCNvB4P_6append0EEE0NCINvXsK_NtB12_5accumjNtB8L_3Sum3sumIB7J_IB2A_QBH_EB4K_EE0E0E0E0INtNtB3c_12control_flow11ControlFlowB37_jEEB4X_"}
!94 = distinct !{!94, !93, !"_RINvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB6_8IntoItercENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator8try_foldjNCINvNvXs_NtNtB14_8adapters4takeINtB2d_4TakepEBY_8try_fold5checkcjINtNtNtB16_3ops9try_trait17NeverShortCircuitjENCINvMB3a_B37_10wrap_mut_2jcNCINvNtB2f_3map8map_foldcjjNCINvMs0_NtNtCs2JiOgHzbbc7_10tokenizers9tokenizer10normalizerNtB4T_16NormalizedString15transform_rangeINtNtB3c_5range9RangeFromjEINtNtB2f_5chain5ChainINtNtNtB14_7sources4once4OnceTciEEINtB4o_3MapNtNtNtB16_3str4iter5CharsNCNvB4P_6append0EEE0NCINvXsK_NtB12_5accumjNtB8L_3Sum3sumIB7J_IB2A_QBH_EB4K_EE0E0E0E0INtNtB3c_12control_flow11ControlFlowB37_jEEB4X_: argument 0"}
!95 = distinct !{!95, !93, !"_RINvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB6_8IntoItercENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator8try_foldjNCINvNvXs_NtNtB14_8adapters4takeINtB2d_4TakepEBY_8try_fold5checkcjINtNtNtB16_3ops9try_trait17NeverShortCircuitjENCINvMB3a_B37_10wrap_mut_2jcNCINvNtB2f_3map8map_foldcjjNCINvMs0_NtNtCs2JiOgHzbbc7_10tokenizers9tokenizer10normalizerNtB4T_16NormalizedString15transform_rangeINtNtB3c_5range9RangeFromjEINtNtB2f_5chain5ChainINtNtNtB14_7sources4once4OnceTciEEINtB4o_3MapNtNtNtB16_3str4iter5CharsNCNvB4P_6append0EEE0NCINvXsK_NtB12_5accumjNtB8L_3Sum3sumIB7J_IB2A_QBH_EB4K_EE0E0E0E0INtNtB3c_12control_flow11ControlFlowB37_jEEB4X_: argument 1"}
!96 = !{!92}
!97 = !{!94}
!98 = !{!95}
!99 = !{!95, !92}
!100 = !{!94, !95, !92}
!101 = distinct !{!101, i1 true, !"_RINvXs2_NtNtNtCs4NRVxsYgnAr_4core4iter6traits8iteratorQINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoItercENtB6_15IteratorRefSpec13spec_try_foldjNCINvNvXs_NtNtBa_8adapters4takeINtB2s_4TakepENtB6_8Iterator8try_fold5checkcjINtNtNtBc_3ops9try_trait17NeverShortCircuitjENCINvMB3z_B3w_10wrap_mut_2jcNCINvNtB2u_3map8map_foldcjjNCINvMs0_NtNtCs2JiOgHzbbc7_10tokenizers9tokenizer10normalizerNtB5h_16NormalizedString15transform_rangeNtNtB3B_5range9RangeFullINtB4M_3MapNtNtNtBc_3str4iter5CharsNCNvB5d_6appends_0EE0NCINvXsK_NtB8_5accumjNtB8d_3Sum3sumIB7b_IB2O_BQ_EB58_EE0E0E0E0INtNtB3B_12control_flow11ControlFlowB3w_jEEB5l_"}
!102 = distinct !{!102, !101, !"_RINvXs2_NtNtNtCs4NRVxsYgnAr_4core4iter6traits8iteratorQINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoItercENtB6_15IteratorRefSpec13spec_try_foldjNCINvNvXs_NtNtBa_8adapters4takeINtB2s_4TakepENtB6_8Iterator8try_fold5checkcjINtNtNtBc_3ops9try_trait17NeverShortCircuitjENCINvMB3z_B3w_10wrap_mut_2jcNCINvNtB2u_3map8map_foldcjjNCINvMs0_NtNtCs2JiOgHzbbc7_10tokenizers9tokenizer10normalizerNtB5h_16NormalizedString15transform_rangeNtNtB3B_5range9RangeFullINtB4M_3MapNtNtNtBc_3str4iter5CharsNCNvB5d_6appends_0EE0NCINvXsK_NtB8_5accumjNtB8d_3Sum3sumIB7b_IB2O_BQ_EB58_EE0E0E0E0INtNtB3B_12control_flow11ControlFlowB3w_jEEB5l_: argument 0"}
!103 = distinct !{!103, i1 true, !"_RINvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB6_8IntoItercENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator8try_foldjNCINvNvXs_NtNtB14_8adapters4takeINtB2d_4TakepEBY_8try_fold5checkcjINtNtNtB16_3ops9try_trait17NeverShortCircuitjENCINvMB3a_B37_10wrap_mut_2jcNCINvNtB2f_3map8map_foldcjjNCINvMs0_NtNtCs2JiOgHzbbc7_10tokenizers9tokenizer10normalizerNtB4T_16NormalizedString15transform_rangeNtNtB3c_5range9RangeFullINtB4o_3MapNtNtNtB16_3str4iter5CharsNCNvB4P_6appends_0EE0NCINvXsK_NtB12_5accumjNtB7Q_3Sum3sumIB6N_IB2A_QBH_EB4K_EE0E0E0E0INtNtB3c_12control_flow11ControlFlowB37_jEEB4X_"}
!104 = distinct !{!104, !103, !"_RINvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB6_8IntoItercENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator8try_foldjNCINvNvXs_NtNtB14_8adapters4takeINtB2d_4TakepEBY_8try_fold5checkcjINtNtNtB16_3ops9try_trait17NeverShortCircuitjENCINvMB3a_B37_10wrap_mut_2jcNCINvNtB2f_3map8map_foldcjjNCINvMs0_NtNtCs2JiOgHzbbc7_10tokenizers9tokenizer10normalizerNtB4T_16NormalizedString15transform_rangeNtNtB3c_5range9RangeFullINtB4o_3MapNtNtNtB16_3str4iter5CharsNCNvB4P_6appends_0EE0NCINvXsK_NtB12_5accumjNtB7Q_3Sum3sumIB6N_IB2A_QBH_EB4K_EE0E0E0E0INtNtB3c_12control_flow11ControlFlowB37_jEEB4X_: argument 0"}
!105 = distinct !{!105, !103, !"_RINvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB6_8IntoItercENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator8try_foldjNCINvNvXs_NtNtB14_8adapters4takeINtB2d_4TakepEBY_8try_fold5checkcjINtNtNtB16_3ops9try_trait17NeverShortCircuitjENCINvMB3a_B37_10wrap_mut_2jcNCINvNtB2f_3map8map_foldcjjNCINvMs0_NtNtCs2JiOgHzbbc7_10tokenizers9tokenizer10normalizerNtB4T_16NormalizedString15transform_rangeNtNtB3c_5range9RangeFullINtB4o_3MapNtNtNtB16_3str4iter5CharsNCNvB4P_6appends_0EE0NCINvXsK_NtB12_5accumjNtB7Q_3Sum3sumIB6N_IB2A_QBH_EB4K_EE0E0E0E0INtNtB3c_12control_flow11ControlFlowB37_jEEB4X_: argument 1"}
!106 = !{!102}
!107 = !{!104}
!108 = !{!105}
!109 = !{!105, !102}
!110 = !{!104, !105, !102}
!111 = distinct !{!111, i1 true, !"_RINvXs2_NtNtNtCs4NRVxsYgnAr_4core4iter6traits8iteratorQINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoItercENtB6_15IteratorRefSpec13spec_try_foldjNCINvNvXs_NtNtBa_8adapters4takeINtB2s_4TakepENtB6_8Iterator8try_fold5checkcjINtNtNtBc_3ops9try_trait17NeverShortCircuitjENCINvMB3z_B3w_10wrap_mut_2jcNCINvNtB2u_3map8map_foldcjjNCINvMs0_NtNtCs2JiOgHzbbc7_10tokenizers9tokenizer10normalizerNtB5h_16NormalizedString15transform_rangeNtNtB3B_5range9RangeFullINtBW_3VecTciEEE0NCINvXsK_NtB8_5accumjNtB7A_3Sum3sumINtB4M_3MapIB2O_BQ_EB58_EE0E0E0E0INtNtB3B_12control_flow11ControlFlowB3w_jEEB5l_"}
!112 = distinct !{!112, !111, !"_RINvXs2_NtNtNtCs4NRVxsYgnAr_4core4iter6traits8iteratorQINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoItercENtB6_15IteratorRefSpec13spec_try_foldjNCINvNvXs_NtNtBa_8adapters4takeINtB2s_4TakepENtB6_8Iterator8try_fold5checkcjINtNtNtBc_3ops9try_trait17NeverShortCircuitjENCINvMB3z_B3w_10wrap_mut_2jcNCINvNtB2u_3map8map_foldcjjNCINvMs0_NtNtCs2JiOgHzbbc7_10tokenizers9tokenizer10normalizerNtB5h_16NormalizedString15transform_rangeNtNtB3B_5range9RangeFullINtBW_3VecTciEEE0NCINvXsK_NtB8_5accumjNtB7A_3Sum3sumINtB4M_3MapIB2O_BQ_EB58_EE0E0E0E0INtNtB3B_12control_flow11ControlFlowB3w_jEEB5l_: argument 0"}
!113 = distinct !{!113, i1 true, !"_RINvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB6_8IntoItercENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator8try_foldjNCINvNvXs_NtNtB14_8adapters4takeINtB2d_4TakepEBY_8try_fold5checkcjINtNtNtB16_3ops9try_trait17NeverShortCircuitjENCINvMB3a_B37_10wrap_mut_2jcNCINvNtB2f_3map8map_foldcjjNCINvMs0_NtNtCs2JiOgHzbbc7_10tokenizers9tokenizer10normalizerNtB4T_16NormalizedString15transform_rangeNtNtB3c_5range9RangeFullINtB8_3VecTciEEE0NCINvXsK_NtB12_5accumjNtB7c_3Sum3sumINtB4o_3MapIB2A_QBH_EB4K_EE0E0E0E0INtNtB3c_12control_flow11ControlFlowB37_jEEB4X_"}
!114 = distinct !{!114, !113, !"_RINvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB6_8IntoItercENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator8try_foldjNCINvNvXs_NtNtB14_8adapters4takeINtB2d_4TakepEBY_8try_fold5checkcjINtNtNtB16_3ops9try_trait17NeverShortCircuitjENCINvMB3a_B37_10wrap_mut_2jcNCINvNtB2f_3map8map_foldcjjNCINvMs0_NtNtCs2JiOgHzbbc7_10tokenizers9tokenizer10normalizerNtB4T_16NormalizedString15transform_rangeNtNtB3c_5range9RangeFullINtB8_3VecTciEEE0NCINvXsK_NtB12_5accumjNtB7c_3Sum3sumINtB4o_3MapIB2A_QBH_EB4K_EE0E0E0E0INtNtB3c_12control_flow11ControlFlowB37_jEEB4X_: argument 0"}
!115 = distinct !{!115, !113, !"_RINvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB6_8IntoItercENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator8try_foldjNCINvNvXs_NtNtB14_8adapters4takeINtB2d_4TakepEBY_8try_fold5checkcjINtNtNtB16_3ops9try_trait17NeverShortCircuitjENCINvMB3a_B37_10wrap_mut_2jcNCINvNtB2f_3map8map_foldcjjNCINvMs0_NtNtCs2JiOgHzbbc7_10tokenizers9tokenizer10normalizerNtB4T_16NormalizedString15transform_rangeNtNtB3c_5range9RangeFullINtB8_3VecTciEEE0NCINvXsK_NtB12_5accumjNtB7c_3Sum3sumINtB4o_3MapIB2A_QBH_EB4K_EE0E0E0E0INtNtB3c_12control_flow11ControlFlowB37_jEEB4X_: argument 1"}
!116 = !{!112}
!117 = !{!114}
!118 = !{!115}
!119 = !{!115, !112}
!120 = !{!114, !115, !112}
!121 = distinct !{!121, i1 true, !"_RINvXs2_NtNtNtCs4NRVxsYgnAr_4core4iter6traits8iteratorQINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoItercENtB6_15IteratorRefSpec13spec_try_foldjNCINvNvXs_NtNtBa_8adapters4takeINtB2s_4TakepENtB6_8Iterator8try_fold5checkcjINtNtNtBc_3ops9try_trait17NeverShortCircuitjENCINvMB3z_B3w_10wrap_mut_2jcNCINvNtB2u_3map8map_foldcjjNCINvMs0_NtNtCs2JiOgHzbbc7_10tokenizers9tokenizer10normalizerNtB5h_16NormalizedString15transform_rangeNtNtB3B_5range9RangeFullINtNtCs3U8yzCisM5Z_32unicode_normalization_alignments9decompose14DecompositionsNtNtNtBc_3str4iter5CharsEE0NCINvXsK_NtB8_5accumjNtB91_3Sum3sumINtB4M_3MapIB2O_BQ_EB58_EE0E0E0E0INtNtB3B_12control_flow11ControlFlowB3w_jEEB5l_"}
!122 = distinct !{!122, !121, !"_RINvXs2_NtNtNtCs4NRVxsYgnAr_4core4iter6traits8iteratorQINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoItercENtB6_15IteratorRefSpec13spec_try_foldjNCINvNvXs_NtNtBa_8adapters4takeINtB2s_4TakepENtB6_8Iterator8try_fold5checkcjINtNtNtBc_3ops9try_trait17NeverShortCircuitjENCINvMB3z_B3w_10wrap_mut_2jcNCINvNtB2u_3map8map_foldcjjNCINvMs0_NtNtCs2JiOgHzbbc7_10tokenizers9tokenizer10normalizerNtB5h_16NormalizedString15transform_rangeNtNtB3B_5range9RangeFullINtNtCs3U8yzCisM5Z_32unicode_normalization_alignments9decompose14DecompositionsNtNtNtBc_3str4iter5CharsEE0NCINvXsK_NtB8_5accumjNtB91_3Sum3sumINtB4M_3MapIB2O_BQ_EB58_EE0E0E0E0INtNtB3B_12control_flow11ControlFlowB3w_jEEB5l_: argument 0"}
!123 = distinct !{!123, i1 true, !"_RINvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB6_8IntoItercENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator8try_foldjNCINvNvXs_NtNtB14_8adapters4takeINtB2d_4TakepEBY_8try_fold5checkcjINtNtNtB16_3ops9try_trait17NeverShortCircuitjENCINvMB3a_B37_10wrap_mut_2jcNCINvNtB2f_3map8map_foldcjjNCINvMs0_NtNtCs2JiOgHzbbc7_10tokenizers9tokenizer10normalizerNtB4T_16NormalizedString15transform_rangeNtNtB3c_5range9RangeFullINtNtCs3U8yzCisM5Z_32unicode_normalization_alignments9decompose14DecompositionsNtNtNtB16_3str4iter5CharsEE0NCINvXsK_NtB12_5accumjNtB8E_3Sum3sumINtB4o_3MapIB2A_QBH_EB4K_EE0E0E0E0INtNtB3c_12control_flow11ControlFlowB37_jEEB4X_"}
!124 = distinct !{!124, !123, !"_RINvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB6_8IntoItercENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator8try_foldjNCINvNvXs_NtNtB14_8adapters4takeINtB2d_4TakepEBY_8try_fold5checkcjINtNtNtB16_3ops9try_trait17NeverShortCircuitjENCINvMB3a_B37_10wrap_mut_2jcNCINvNtB2f_3map8map_foldcjjNCINvMs0_NtNtCs2JiOgHzbbc7_10tokenizers9tokenizer10normalizerNtB4T_16NormalizedString15transform_rangeNtNtB3c_5range9RangeFullINtNtCs3U8yzCisM5Z_32unicode_normalization_alignments9decompose14DecompositionsNtNtNtB16_3str4iter5CharsEE0NCINvXsK_NtB12_5accumjNtB8E_3Sum3sumINtB4o_3MapIB2A_QBH_EB4K_EE0E0E0E0INtNtB3c_12control_flow11ControlFlowB37_jEEB4X_: argument 0"}
!125 = distinct !{!125, !123, !"_RINvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB6_8IntoItercENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator8try_foldjNCINvNvXs_NtNtB14_8adapters4takeINtB2d_4TakepEBY_8try_fold5checkcjINtNtNtB16_3ops9try_trait17NeverShortCircuitjENCINvMB3a_B37_10wrap_mut_2jcNCINvNtB2f_3map8map_foldcjjNCINvMs0_NtNtCs2JiOgHzbbc7_10tokenizers9tokenizer10normalizerNtB4T_16NormalizedString15transform_rangeNtNtB3c_5range9RangeFullINtNtCs3U8yzCisM5Z_32unicode_normalization_alignments9decompose14DecompositionsNtNtNtB16_3str4iter5CharsEE0NCINvXsK_NtB12_5accumjNtB8E_3Sum3sumINtB4o_3MapIB2A_QBH_EB4K_EE0E0E0E0INtNtB3c_12control_flow11ControlFlowB37_jEEB4X_: argument 1"}
!126 = !{!122}
!127 = !{!124}
!128 = !{!125}
!129 = !{!125, !122}
!130 = !{!124, !125, !122}
!131 = distinct !{!131, i1 true, !"_RINvXs2_NtNtNtCs4NRVxsYgnAr_4core4iter6traits8iteratorQINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoItercENtB6_15IteratorRefSpec13spec_try_foldjNCINvNvXs_NtNtBa_8adapters4takeINtB2s_4TakepENtB6_8Iterator8try_fold5checkcjINtNtNtBc_3ops9try_trait17NeverShortCircuitjENCINvMB3z_B3w_10wrap_mut_2jcNCINvNtB2u_3map8map_foldcjjNCINvMs0_NtNtCs2JiOgHzbbc7_10tokenizers9tokenizer10normalizerNtB5h_16NormalizedString15transform_rangeNtNtB3B_5range9RangeFullINtNtCs3U8yzCisM5Z_32unicode_normalization_alignments9recompose14RecompositionsNtNtNtBc_3str4iter5CharsEE0NCINvXsK_NtB8_5accumjNtB91_3Sum3sumINtB4M_3MapIB2O_BQ_EB58_EE0E0E0E0INtNtB3B_12control_flow11ControlFlowB3w_jEEB5l_"}
!132 = distinct !{!132, !131, !"_RINvXs2_NtNtNtCs4NRVxsYgnAr_4core4iter6traits8iteratorQINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoItercENtB6_15IteratorRefSpec13spec_try_foldjNCINvNvXs_NtNtBa_8adapters4takeINtB2s_4TakepENtB6_8Iterator8try_fold5checkcjINtNtNtBc_3ops9try_trait17NeverShortCircuitjENCINvMB3z_B3w_10wrap_mut_2jcNCINvNtB2u_3map8map_foldcjjNCINvMs0_NtNtCs2JiOgHzbbc7_10tokenizers9tokenizer10normalizerNtB5h_16NormalizedString15transform_rangeNtNtB3B_5range9RangeFullINtNtCs3U8yzCisM5Z_32unicode_normalization_alignments9recompose14RecompositionsNtNtNtBc_3str4iter5CharsEE0NCINvXsK_NtB8_5accumjNtB91_3Sum3sumINtB4M_3MapIB2O_BQ_EB58_EE0E0E0E0INtNtB3B_12control_flow11ControlFlowB3w_jEEB5l_: argument 0"}
!133 = distinct !{!133, i1 true, !"_RINvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB6_8IntoItercENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator8try_foldjNCINvNvXs_NtNtB14_8adapters4takeINtB2d_4TakepEBY_8try_fold5checkcjINtNtNtB16_3ops9try_trait17NeverShortCircuitjENCINvMB3a_B37_10wrap_mut_2jcNCINvNtB2f_3map8map_foldcjjNCINvMs0_NtNtCs2JiOgHzbbc7_10tokenizers9tokenizer10normalizerNtB4T_16NormalizedString15transform_rangeNtNtB3c_5range9RangeFullINtNtCs3U8yzCisM5Z_32unicode_normalization_alignments9recompose14RecompositionsNtNtNtB16_3str4iter5CharsEE0NCINvXsK_NtB12_5accumjNtB8E_3Sum3sumINtB4o_3MapIB2A_QBH_EB4K_EE0E0E0E0INtNtB3c_12control_flow11ControlFlowB37_jEEB4X_"}
!134 = distinct !{!134, !133, !"_RINvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB6_8IntoItercENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator8try_foldjNCINvNvXs_NtNtB14_8adapters4takeINtB2d_4TakepEBY_8try_fold5checkcjINtNtNtB16_3ops9try_trait17NeverShortCircuitjENCINvMB3a_B37_10wrap_mut_2jcNCINvNtB2f_3map8map_foldcjjNCINvMs0_NtNtCs2JiOgHzbbc7_10tokenizers9tokenizer10normalizerNtB4T_16NormalizedString15transform_rangeNtNtB3c_5range9RangeFullINtNtCs3U8yzCisM5Z_32unicode_normalization_alignments9recompose14RecompositionsNtNtNtB16_3str4iter5CharsEE0NCINvXsK_NtB12_5accumjNtB8E_3Sum3sumINtB4o_3MapIB2A_QBH_EB4K_EE0E0E0E0INtNtB3c_12control_flow11ControlFlowB37_jEEB4X_: argument 0"}
!135 = distinct !{!135, !133, !"_RINvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB6_8IntoItercENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator8try_foldjNCINvNvXs_NtNtB14_8adapters4takeINtB2d_4TakepEBY_8try_fold5checkcjINtNtNtB16_3ops9try_trait17NeverShortCircuitjENCINvMB3a_B37_10wrap_mut_2jcNCINvNtB2f_3map8map_foldcjjNCINvMs0_NtNtCs2JiOgHzbbc7_10tokenizers9tokenizer10normalizerNtB4T_16NormalizedString15transform_rangeNtNtB3c_5range9RangeFullINtNtCs3U8yzCisM5Z_32unicode_normalization_alignments9recompose14RecompositionsNtNtNtB16_3str4iter5CharsEE0NCINvXsK_NtB12_5accumjNtB8E_3Sum3sumINtB4o_3MapIB2A_QBH_EB4K_EE0E0E0E0INtNtB3c_12control_flow11ControlFlowB37_jEEB4X_: argument 1"}
!136 = !{!132}
!137 = !{!134}
!138 = !{!135}
!139 = !{!135, !132}
!140 = !{!134, !135, !132}
!141 = distinct !{!141, i1 true, !"_RINvXs2_NtNtNtCs4NRVxsYgnAr_4core4iter6traits8iteratorQINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoItercENtB6_15IteratorRefSpec13spec_try_foldjNCINvNvXs_NtNtBa_8adapters4takeINtB2s_4TakepENtB6_8Iterator8try_fold5checkcjINtNtNtBc_3ops9try_trait17NeverShortCircuitjENCINvMB3z_B3w_10wrap_mut_2jcNCINvNtB2u_3map8map_foldcjjNCINvMs0_NtNtCs2JiOgHzbbc7_10tokenizers9tokenizer10normalizerNtB5h_16NormalizedString15transform_rangeNtNtB3B_5range9RangeFullINtNtNtBa_7sources5empty5EmptyTciEEE0NCINvXsK_NtB8_5accumjNtB7U_3Sum3sumINtB4M_3MapIB2O_BQ_EB58_EE0E0E0E0INtNtB3B_12control_flow11ControlFlowB3w_jEEB5l_"}
!142 = distinct !{!142, !141, !"_RINvXs2_NtNtNtCs4NRVxsYgnAr_4core4iter6traits8iteratorQINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoItercENtB6_15IteratorRefSpec13spec_try_foldjNCINvNvXs_NtNtBa_8adapters4takeINtB2s_4TakepENtB6_8Iterator8try_fold5checkcjINtNtNtBc_3ops9try_trait17NeverShortCircuitjENCINvMB3z_B3w_10wrap_mut_2jcNCINvNtB2u_3map8map_foldcjjNCINvMs0_NtNtCs2JiOgHzbbc7_10tokenizers9tokenizer10normalizerNtB5h_16NormalizedString15transform_rangeNtNtB3B_5range9RangeFullINtNtNtBa_7sources5empty5EmptyTciEEE0NCINvXsK_NtB8_5accumjNtB7U_3Sum3sumINtB4M_3MapIB2O_BQ_EB58_EE0E0E0E0INtNtB3B_12control_flow11ControlFlowB3w_jEEB5l_: argument 0"}
!143 = distinct !{!143, i1 true, !"_RINvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB6_8IntoItercENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator8try_foldjNCINvNvXs_NtNtB14_8adapters4takeINtB2d_4TakepEBY_8try_fold5checkcjINtNtNtB16_3ops9try_trait17NeverShortCircuitjENCINvMB3a_B37_10wrap_mut_2jcNCINvNtB2f_3map8map_foldcjjNCINvMs0_NtNtCs2JiOgHzbbc7_10tokenizers9tokenizer10normalizerNtB4T_16NormalizedString15transform_rangeNtNtB3c_5range9RangeFullINtNtNtB14_7sources5empty5EmptyTciEEE0NCINvXsK_NtB12_5accumjNtB7x_3Sum3sumINtB4o_3MapIB2A_QBH_EB4K_EE0E0E0E0INtNtB3c_12control_flow11ControlFlowB37_jEEB4X_"}
!144 = distinct !{!144, !143, !"_RINvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB6_8IntoItercENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator8try_foldjNCINvNvXs_NtNtB14_8adapters4takeINtB2d_4TakepEBY_8try_fold5checkcjINtNtNtB16_3ops9try_trait17NeverShortCircuitjENCINvMB3a_B37_10wrap_mut_2jcNCINvNtB2f_3map8map_foldcjjNCINvMs0_NtNtCs2JiOgHzbbc7_10tokenizers9tokenizer10normalizerNtB4T_16NormalizedString15transform_rangeNtNtB3c_5range9RangeFullINtNtNtB14_7sources5empty5EmptyTciEEE0NCINvXsK_NtB12_5accumjNtB7x_3Sum3sumINtB4o_3MapIB2A_QBH_EB4K_EE0E0E0E0INtNtB3c_12control_flow11ControlFlowB37_jEEB4X_: argument 0"}
!145 = distinct !{!145, !143, !"_RINvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB6_8IntoItercENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator8try_foldjNCINvNvXs_NtNtB14_8adapters4takeINtB2d_4TakepEBY_8try_fold5checkcjINtNtNtB16_3ops9try_trait17NeverShortCircuitjENCINvMB3a_B37_10wrap_mut_2jcNCINvNtB2f_3map8map_foldcjjNCINvMs0_NtNtCs2JiOgHzbbc7_10tokenizers9tokenizer10normalizerNtB4T_16NormalizedString15transform_rangeNtNtB3c_5range9RangeFullINtNtNtB14_7sources5empty5EmptyTciEEE0NCINvXsK_NtB12_5accumjNtB7x_3Sum3sumINtB4o_3MapIB2A_QBH_EB4K_EE0E0E0E0INtNtB3c_12control_flow11ControlFlowB37_jEEB4X_: argument 1"}
!146 = !{!142}
!147 = !{!144}
!148 = !{!145}
!149 = !{!145, !142}
!150 = !{!144, !145, !142}
!151 = distinct !{!151, i1 true, !"_RINvXs2_NtNtNtCs4NRVxsYgnAr_4core4iter6traits8iteratorQINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoItercENtB6_15IteratorRefSpec13spec_try_foldjNCINvNvXs_NtNtBa_8adapters4takeINtB2s_4TakepENtB6_8Iterator8try_fold5checkcjINtNtNtBc_3ops9try_trait17NeverShortCircuitjENCINvMB3z_B3w_10wrap_mut_2jcNCINvNtB2u_3map8map_foldcjjNCNCINvMs0_NtNtCs2JiOgHzbbc7_10tokenizers9tokenizer10normalizerNtB5j_16NormalizedString15transform_rangeINtNtB3B_5range5RangejEINtNtB2u_5chain5ChainINtB4M_3MapINtNtB2u_9enumerate9EnumerateNtNtNtBc_3str4iter5CharsENCNvB5f_7prepend0EINtNtNtBa_7sources4once4OnceTciEEEEs_0s_0NCINvXsK_NtB8_5accumjNtB9F_3Sum3sumIB7x_IB2O_BQ_EB58_EE0E0E0E0INtNtB3B_12control_flow11ControlFlowB3w_jEEB5n_"}
!152 = distinct !{!152, !151, !"_RINvXs2_NtNtNtCs4NRVxsYgnAr_4core4iter6traits8iteratorQINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoItercENtB6_15IteratorRefSpec13spec_try_foldjNCINvNvXs_NtNtBa_8adapters4takeINtB2s_4TakepENtB6_8Iterator8try_fold5checkcjINtNtNtBc_3ops9try_trait17NeverShortCircuitjENCINvMB3z_B3w_10wrap_mut_2jcNCINvNtB2u_3map8map_foldcjjNCNCINvMs0_NtNtCs2JiOgHzbbc7_10tokenizers9tokenizer10normalizerNtB5j_16NormalizedString15transform_rangeINtNtB3B_5range5RangejEINtNtB2u_5chain5ChainINtB4M_3MapINtNtB2u_9enumerate9EnumerateNtNtNtBc_3str4iter5CharsENCNvB5f_7prepend0EINtNtNtBa_7sources4once4OnceTciEEEEs_0s_0NCINvXsK_NtB8_5accumjNtB9F_3Sum3sumIB7x_IB2O_BQ_EB58_EE0E0E0E0INtNtB3B_12control_flow11ControlFlowB3w_jEEB5n_: argument 0"}
!153 = distinct !{!153, i1 true, !"_RINvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB6_8IntoItercENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator8try_foldjNCINvNvXs_NtNtB14_8adapters4takeINtB2d_4TakepEBY_8try_fold5checkcjINtNtNtB16_3ops9try_trait17NeverShortCircuitjENCINvMB3a_B37_10wrap_mut_2jcNCINvNtB2f_3map8map_foldcjjNCNCINvMs0_NtNtCs2JiOgHzbbc7_10tokenizers9tokenizer10normalizerNtB4V_16NormalizedString15transform_rangeINtNtB3c_5range5RangejEINtNtB2f_5chain5ChainINtB4o_3MapINtNtB2f_9enumerate9EnumerateNtNtNtB16_3str4iter5CharsENCNvB4R_7prepend0EINtNtNtB14_7sources4once4OnceTciEEEEs_0s_0NCINvXsK_NtB12_5accumjNtB9j_3Sum3sumIB79_IB2A_QBH_EB4K_EE0E0E0E0INtNtB3c_12control_flow11ControlFlowB37_jEEB4Z_"}
!154 = distinct !{!154, !153, !"_RINvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB6_8IntoItercENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator8try_foldjNCINvNvXs_NtNtB14_8adapters4takeINtB2d_4TakepEBY_8try_fold5checkcjINtNtNtB16_3ops9try_trait17NeverShortCircuitjENCINvMB3a_B37_10wrap_mut_2jcNCINvNtB2f_3map8map_foldcjjNCNCINvMs0_NtNtCs2JiOgHzbbc7_10tokenizers9tokenizer10normalizerNtB4V_16NormalizedString15transform_rangeINtNtB3c_5range5RangejEINtNtB2f_5chain5ChainINtB4o_3MapINtNtB2f_9enumerate9EnumerateNtNtNtB16_3str4iter5CharsENCNvB4R_7prepend0EINtNtNtB14_7sources4once4OnceTciEEEEs_0s_0NCINvXsK_NtB12_5accumjNtB9j_3Sum3sumIB79_IB2A_QBH_EB4K_EE0E0E0E0INtNtB3c_12control_flow11ControlFlowB37_jEEB4Z_: argument 0"}
!155 = distinct !{!155, !153, !"_RINvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB6_8IntoItercENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator8try_foldjNCINvNvXs_NtNtB14_8adapters4takeINtB2d_4TakepEBY_8try_fold5checkcjINtNtNtB16_3ops9try_trait17NeverShortCircuitjENCINvMB3a_B37_10wrap_mut_2jcNCINvNtB2f_3map8map_foldcjjNCNCINvMs0_NtNtCs2JiOgHzbbc7_10tokenizers9tokenizer10normalizerNtB4V_16NormalizedString15transform_rangeINtNtB3c_5range5RangejEINtNtB2f_5chain5ChainINtB4o_3MapINtNtB2f_9enumerate9EnumerateNtNtNtB16_3str4iter5CharsENCNvB4R_7prepend0EINtNtNtB14_7sources4once4OnceTciEEEEs_0s_0NCINvXsK_NtB12_5accumjNtB9j_3Sum3sumIB79_IB2A_QBH_EB4K_EE0E0E0E0INtNtB3c_12control_flow11ControlFlowB37_jEEB4Z_: argument 1"}
!156 = !{!152}
!157 = !{!154}
!158 = !{!155}
!159 = !{!155, !152}
!160 = !{!154, !155, !152}
!161 = distinct !{!161, i1 true, !"_RINvXs2_NtNtNtCs4NRVxsYgnAr_4core4iter6traits8iteratorQINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoItercENtB6_15IteratorRefSpec13spec_try_foldjNCINvNvXs_NtNtBa_8adapters4takeINtB2s_4TakepENtB6_8Iterator8try_fold5checkcjINtNtNtBc_3ops9try_trait17NeverShortCircuitjENCINvMB3z_B3w_10wrap_mut_2jcNCINvNtB2u_3map8map_foldcjjNCNCINvMs0_NtNtCs2JiOgHzbbc7_10tokenizers9tokenizer10normalizerNtB5j_16NormalizedString15transform_rangeINtNtB3B_5range9RangeFromjEINtNtB2u_5chain5ChainINtNtNtBa_7sources4once4OnceTciEEINtB4M_3MapNtNtNtBc_3str4iter5CharsNCNvB5f_6append0EEEs_0s_0NCINvXsK_NtB8_5accumjNtB9e_3Sum3sumIB88_IB2O_BQ_EB58_EE0E0E0E0INtNtB3B_12control_flow11ControlFlowB3w_jEEB5n_"}
!162 = distinct !{!162, !161, !"_RINvXs2_NtNtNtCs4NRVxsYgnAr_4core4iter6traits8iteratorQINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoItercENtB6_15IteratorRefSpec13spec_try_foldjNCINvNvXs_NtNtBa_8adapters4takeINtB2s_4TakepENtB6_8Iterator8try_fold5checkcjINtNtNtBc_3ops9try_trait17NeverShortCircuitjENCINvMB3z_B3w_10wrap_mut_2jcNCINvNtB2u_3map8map_foldcjjNCNCINvMs0_NtNtCs2JiOgHzbbc7_10tokenizers9tokenizer10normalizerNtB5j_16NormalizedString15transform_rangeINtNtB3B_5range9RangeFromjEINtNtB2u_5chain5ChainINtNtNtBa_7sources4once4OnceTciEEINtB4M_3MapNtNtNtBc_3str4iter5CharsNCNvB5f_6append0EEEs_0s_0NCINvXsK_NtB8_5accumjNtB9e_3Sum3sumIB88_IB2O_BQ_EB58_EE0E0E0E0INtNtB3B_12control_flow11ControlFlowB3w_jEEB5n_: argument 0"}
!163 = distinct !{!163, i1 true, !"_RINvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB6_8IntoItercENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator8try_foldjNCINvNvXs_NtNtB14_8adapters4takeINtB2d_4TakepEBY_8try_fold5checkcjINtNtNtB16_3ops9try_trait17NeverShortCircuitjENCINvMB3a_B37_10wrap_mut_2jcNCINvNtB2f_3map8map_foldcjjNCNCINvMs0_NtNtCs2JiOgHzbbc7_10tokenizers9tokenizer10normalizerNtB4V_16NormalizedString15transform_rangeINtNtB3c_5range9RangeFromjEINtNtB2f_5chain5ChainINtNtNtB14_7sources4once4OnceTciEEINtB4o_3MapNtNtNtB16_3str4iter5CharsNCNvB4R_6append0EEEs_0s_0NCINvXsK_NtB12_5accumjNtB8S_3Sum3sumIB7L_IB2A_QBH_EB4K_EE0E0E0E0INtNtB3c_12control_flow11ControlFlowB37_jEEB4Z_"}
!164 = distinct !{!164, !163, !"_RINvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB6_8IntoItercENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator8try_foldjNCINvNvXs_NtNtB14_8adapters4takeINtB2d_4TakepEBY_8try_fold5checkcjINtNtNtB16_3ops9try_trait17NeverShortCircuitjENCINvMB3a_B37_10wrap_mut_2jcNCINvNtB2f_3map8map_foldcjjNCNCINvMs0_NtNtCs2JiOgHzbbc7_10tokenizers9tokenizer10normalizerNtB4V_16NormalizedString15transform_rangeINtNtB3c_5range9RangeFromjEINtNtB2f_5chain5ChainINtNtNtB14_7sources4once4OnceTciEEINtB4o_3MapNtNtNtB16_3str4iter5CharsNCNvB4R_6append0EEEs_0s_0NCINvXsK_NtB12_5accumjNtB8S_3Sum3sumIB7L_IB2A_QBH_EB4K_EE0E0E0E0INtNtB3c_12control_flow11ControlFlowB37_jEEB4Z_: argument 0"}
!165 = distinct !{!165, !163, !"_RINvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB6_8IntoItercENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator8try_foldjNCINvNvXs_NtNtB14_8adapters4takeINtB2d_4TakepEBY_8try_fold5checkcjINtNtNtB16_3ops9try_trait17NeverShortCircuitjENCINvMB3a_B37_10wrap_mut_2jcNCINvNtB2f_3map8map_foldcjjNCNCINvMs0_NtNtCs2JiOgHzbbc7_10tokenizers9tokenizer10normalizerNtB4V_16NormalizedString15transform_rangeINtNtB3c_5range9RangeFromjEINtNtB2f_5chain5ChainINtNtNtB14_7sources4once4OnceTciEEINtB4o_3MapNtNtNtB16_3str4iter5CharsNCNvB4R_6append0EEEs_0s_0NCINvXsK_NtB12_5accumjNtB8S_3Sum3sumIB7L_IB2A_QBH_EB4K_EE0E0E0E0INtNtB3c_12control_flow11ControlFlowB37_jEEB4Z_: argument 1"}
!166 = !{!162}
!167 = !{!164}
!168 = !{!165}
!169 = !{!165, !162}
!170 = !{!164, !165, !162}
!171 = distinct !{!171, i1 true, !"_RINvXs2_NtNtNtCs4NRVxsYgnAr_4core4iter6traits8iteratorQINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoItercENtB6_15IteratorRefSpec13spec_try_foldjNCINvNvXs_NtNtBa_8adapters4takeINtB2s_4TakepENtB6_8Iterator8try_fold5checkcjINtNtNtBc_3ops9try_trait17NeverShortCircuitjENCINvMB3z_B3w_10wrap_mut_2jcNCINvNtB2u_3map8map_foldcjjNCNCINvMs0_NtNtCs2JiOgHzbbc7_10tokenizers9tokenizer10normalizerNtB5j_16NormalizedString15transform_rangeNtNtB3B_5range9RangeFullINtB4M_3MapNtNtNtBc_3str4iter5CharsNCNvB5f_6appends_0EEs_0s_0NCINvXsK_NtB8_5accumjNtB8k_3Sum3sumIB7d_IB2O_BQ_EB58_EE0E0E0E0INtNtB3B_12control_flow11ControlFlowB3w_jEEB5n_"}
!172 = distinct !{!172, !171, !"_RINvXs2_NtNtNtCs4NRVxsYgnAr_4core4iter6traits8iteratorQINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoItercENtB6_15IteratorRefSpec13spec_try_foldjNCINvNvXs_NtNtBa_8adapters4takeINtB2s_4TakepENtB6_8Iterator8try_fold5checkcjINtNtNtBc_3ops9try_trait17NeverShortCircuitjENCINvMB3z_B3w_10wrap_mut_2jcNCINvNtB2u_3map8map_foldcjjNCNCINvMs0_NtNtCs2JiOgHzbbc7_10tokenizers9tokenizer10normalizerNtB5j_16NormalizedString15transform_rangeNtNtB3B_5range9RangeFullINtB4M_3MapNtNtNtBc_3str4iter5CharsNCNvB5f_6appends_0EEs_0s_0NCINvXsK_NtB8_5accumjNtB8k_3Sum3sumIB7d_IB2O_BQ_EB58_EE0E0E0E0INtNtB3B_12control_flow11ControlFlowB3w_jEEB5n_: argument 0"}
!173 = distinct !{!173, i1 true, !"_RINvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB6_8IntoItercENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator8try_foldjNCINvNvXs_NtNtB14_8adapters4takeINtB2d_4TakepEBY_8try_fold5checkcjINtNtNtB16_3ops9try_trait17NeverShortCircuitjENCINvMB3a_B37_10wrap_mut_2jcNCINvNtB2f_3map8map_foldcjjNCNCINvMs0_NtNtCs2JiOgHzbbc7_10tokenizers9tokenizer10normalizerNtB4V_16NormalizedString15transform_rangeNtNtB3c_5range9RangeFullINtB4o_3MapNtNtNtB16_3str4iter5CharsNCNvB4R_6appends_0EEs_0s_0NCINvXsK_NtB12_5accumjNtB7X_3Sum3sumIB6P_IB2A_QBH_EB4K_EE0E0E0E0INtNtB3c_12control_flow11ControlFlowB37_jEEB4Z_"}
!174 = distinct !{!174, !173, !"_RINvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB6_8IntoItercENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator8try_foldjNCINvNvXs_NtNtB14_8adapters4takeINtB2d_4TakepEBY_8try_fold5checkcjINtNtNtB16_3ops9try_trait17NeverShortCircuitjENCINvMB3a_B37_10wrap_mut_2jcNCINvNtB2f_3map8map_foldcjjNCNCINvMs0_NtNtCs2JiOgHzbbc7_10tokenizers9tokenizer10normalizerNtB4V_16NormalizedString15transform_rangeNtNtB3c_5range9RangeFullINtB4o_3MapNtNtNtB16_3str4iter5CharsNCNvB4R_6appends_0EEs_0s_0NCINvXsK_NtB12_5accumjNtB7X_3Sum3sumIB6P_IB2A_QBH_EB4K_EE0E0E0E0INtNtB3c_12control_flow11ControlFlowB37_jEEB4Z_: argument 0"}
!175 = distinct !{!175, !173, !"_RINvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB6_8IntoItercENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator8try_foldjNCINvNvXs_NtNtB14_8adapters4takeINtB2d_4TakepEBY_8try_fold5checkcjINtNtNtB16_3ops9try_trait17NeverShortCircuitjENCINvMB3a_B37_10wrap_mut_2jcNCINvNtB2f_3map8map_foldcjjNCNCINvMs0_NtNtCs2JiOgHzbbc7_10tokenizers9tokenizer10normalizerNtB4V_16NormalizedString15transform_rangeNtNtB3c_5range9RangeFullINtB4o_3MapNtNtNtB16_3str4iter5CharsNCNvB4R_6appends_0EEs_0s_0NCINvXsK_NtB12_5accumjNtB7X_3Sum3sumIB6P_IB2A_QBH_EB4K_EE0E0E0E0INtNtB3c_12control_flow11ControlFlowB37_jEEB4Z_: argument 1"}
!176 = !{!172}
!177 = !{!174}
!178 = !{!175}
!179 = !{!175, !172}
!180 = !{!174, !175, !172}
!181 = distinct !{!181, i1 true, !"_RINvXs2_NtNtNtCs4NRVxsYgnAr_4core4iter6traits8iteratorQINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoItercENtB6_15IteratorRefSpec13spec_try_foldjNCINvNvXs_NtNtBa_8adapters4takeINtB2s_4TakepENtB6_8Iterator8try_fold5checkcjINtNtNtBc_3ops9try_trait17NeverShortCircuitjENCINvMB3z_B3w_10wrap_mut_2jcNCINvNtB2u_3map8map_foldcjjNCNCINvMs0_NtNtCs2JiOgHzbbc7_10tokenizers9tokenizer10normalizerNtB5j_16NormalizedString15transform_rangeNtNtB3B_5range9RangeFullINtNtCs3U8yzCisM5Z_32unicode_normalization_alignments9decompose14DecompositionsNtNtNtBc_3str4iter5CharsEEs_0s_0NCINvXsK_NtB8_5accumjNtB98_3Sum3sumINtB4M_3MapIB2O_BQ_EB58_EE0E0E0E0INtNtB3B_12control_flow11ControlFlowB3w_jEEB5n_"}
!182 = distinct !{!182, !181, !"_RINvXs2_NtNtNtCs4NRVxsYgnAr_4core4iter6traits8iteratorQINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoItercENtB6_15IteratorRefSpec13spec_try_foldjNCINvNvXs_NtNtBa_8adapters4takeINtB2s_4TakepENtB6_8Iterator8try_fold5checkcjINtNtNtBc_3ops9try_trait17NeverShortCircuitjENCINvMB3z_B3w_10wrap_mut_2jcNCINvNtB2u_3map8map_foldcjjNCNCINvMs0_NtNtCs2JiOgHzbbc7_10tokenizers9tokenizer10normalizerNtB5j_16NormalizedString15transform_rangeNtNtB3B_5range9RangeFullINtNtCs3U8yzCisM5Z_32unicode_normalization_alignments9decompose14DecompositionsNtNtNtBc_3str4iter5CharsEEs_0s_0NCINvXsK_NtB8_5accumjNtB98_3Sum3sumINtB4M_3MapIB2O_BQ_EB58_EE0E0E0E0INtNtB3B_12control_flow11ControlFlowB3w_jEEB5n_: argument 0"}
!183 = distinct !{!183, i1 true, !"_RINvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB6_8IntoItercENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator8try_foldjNCINvNvXs_NtNtB14_8adapters4takeINtB2d_4TakepEBY_8try_fold5checkcjINtNtNtB16_3ops9try_trait17NeverShortCircuitjENCINvMB3a_B37_10wrap_mut_2jcNCINvNtB2f_3map8map_foldcjjNCNCINvMs0_NtNtCs2JiOgHzbbc7_10tokenizers9tokenizer10normalizerNtB4V_16NormalizedString15transform_rangeNtNtB3c_5range9RangeFullINtNtCs3U8yzCisM5Z_32unicode_normalization_alignments9decompose14DecompositionsNtNtNtB16_3str4iter5CharsEEs_0s_0NCINvXsK_NtB12_5accumjNtB8L_3Sum3sumINtB4o_3MapIB2A_QBH_EB4K_EE0E0E0E0INtNtB3c_12control_flow11ControlFlowB37_jEEB4Z_"}
!184 = distinct !{!184, !183, !"_RINvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB6_8IntoItercENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator8try_foldjNCINvNvXs_NtNtB14_8adapters4takeINtB2d_4TakepEBY_8try_fold5checkcjINtNtNtB16_3ops9try_trait17NeverShortCircuitjENCINvMB3a_B37_10wrap_mut_2jcNCINvNtB2f_3map8map_foldcjjNCNCINvMs0_NtNtCs2JiOgHzbbc7_10tokenizers9tokenizer10normalizerNtB4V_16NormalizedString15transform_rangeNtNtB3c_5range9RangeFullINtNtCs3U8yzCisM5Z_32unicode_normalization_alignments9decompose14DecompositionsNtNtNtB16_3str4iter5CharsEEs_0s_0NCINvXsK_NtB12_5accumjNtB8L_3Sum3sumINtB4o_3MapIB2A_QBH_EB4K_EE0E0E0E0INtNtB3c_12control_flow11ControlFlowB37_jEEB4Z_: argument 0"}
!185 = distinct !{!185, !183, !"_RINvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB6_8IntoItercENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator8try_foldjNCINvNvXs_NtNtB14_8adapters4takeINtB2d_4TakepEBY_8try_fold5checkcjINtNtNtB16_3ops9try_trait17NeverShortCircuitjENCINvMB3a_B37_10wrap_mut_2jcNCINvNtB2f_3map8map_foldcjjNCNCINvMs0_NtNtCs2JiOgHzbbc7_10tokenizers9tokenizer10normalizerNtB4V_16NormalizedString15transform_rangeNtNtB3c_5range9RangeFullINtNtCs3U8yzCisM5Z_32unicode_normalization_alignments9decompose14DecompositionsNtNtNtB16_3str4iter5CharsEEs_0s_0NCINvXsK_NtB12_5accumjNtB8L_3Sum3sumINtB4o_3MapIB2A_QBH_EB4K_EE0E0E0E0INtNtB3c_12control_flow11ControlFlowB37_jEEB4Z_: argument 1"}
!186 = !{!182}
!187 = !{!184}
!188 = !{!185}
!189 = !{!185, !182}
!190 = !{!184, !185, !182}
!191 = distinct !{!191, i1 true, !"_RINvXs2_NtNtNtCs4NRVxsYgnAr_4core4iter6traits8iteratorQINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoItercENtB6_15IteratorRefSpec13spec_try_foldjNCINvNvXs_NtNtBa_8adapters4takeINtB2s_4TakepENtB6_8Iterator8try_fold5checkcjINtNtNtBc_3ops9try_trait17NeverShortCircuitjENCINvMB3z_B3w_10wrap_mut_2jcNCINvNtB2u_3map8map_foldcjjNCNCINvMs0_NtNtCs2JiOgHzbbc7_10tokenizers9tokenizer10normalizerNtB5j_16NormalizedString15transform_rangeNtNtB3B_5range9RangeFullINtNtCs3U8yzCisM5Z_32unicode_normalization_alignments9recompose14RecompositionsNtNtNtBc_3str4iter5CharsEEs_0s_0NCINvXsK_NtB8_5accumjNtB98_3Sum3sumINtB4M_3MapIB2O_BQ_EB58_EE0E0E0E0INtNtB3B_12control_flow11ControlFlowB3w_jEEB5n_"}
!192 = distinct !{!192, !191, !"_RINvXs2_NtNtNtCs4NRVxsYgnAr_4core4iter6traits8iteratorQINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoItercENtB6_15IteratorRefSpec13spec_try_foldjNCINvNvXs_NtNtBa_8adapters4takeINtB2s_4TakepENtB6_8Iterator8try_fold5checkcjINtNtNtBc_3ops9try_trait17NeverShortCircuitjENCINvMB3z_B3w_10wrap_mut_2jcNCINvNtB2u_3map8map_foldcjjNCNCINvMs0_NtNtCs2JiOgHzbbc7_10tokenizers9tokenizer10normalizerNtB5j_16NormalizedString15transform_rangeNtNtB3B_5range9RangeFullINtNtCs3U8yzCisM5Z_32unicode_normalization_alignments9recompose14RecompositionsNtNtNtBc_3str4iter5CharsEEs_0s_0NCINvXsK_NtB8_5accumjNtB98_3Sum3sumINtB4M_3MapIB2O_BQ_EB58_EE0E0E0E0INtNtB3B_12control_flow11ControlFlowB3w_jEEB5n_: argument 0"}
!193 = distinct !{!193, i1 true, !"_RINvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB6_8IntoItercENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator8try_foldjNCINvNvXs_NtNtB14_8adapters4takeINtB2d_4TakepEBY_8try_fold5checkcjINtNtNtB16_3ops9try_trait17NeverShortCircuitjENCINvMB3a_B37_10wrap_mut_2jcNCINvNtB2f_3map8map_foldcjjNCNCINvMs0_NtNtCs2JiOgHzbbc7_10tokenizers9tokenizer10normalizerNtB4V_16NormalizedString15transform_rangeNtNtB3c_5range9RangeFullINtNtCs3U8yzCisM5Z_32unicode_normalization_alignments9recompose14RecompositionsNtNtNtB16_3str4iter5CharsEEs_0s_0NCINvXsK_NtB12_5accumjNtB8L_3Sum3sumINtB4o_3MapIB2A_QBH_EB4K_EE0E0E0E0INtNtB3c_12control_flow11ControlFlowB37_jEEB4Z_"}
!194 = distinct !{!194, !193, !"_RINvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB6_8IntoItercENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator8try_foldjNCINvNvXs_NtNtB14_8adapters4takeINtB2d_4TakepEBY_8try_fold5checkcjINtNtNtB16_3ops9try_trait17NeverShortCircuitjENCINvMB3a_B37_10wrap_mut_2jcNCINvNtB2f_3map8map_foldcjjNCNCINvMs0_NtNtCs2JiOgHzbbc7_10tokenizers9tokenizer10normalizerNtB4V_16NormalizedString15transform_rangeNtNtB3c_5range9RangeFullINtNtCs3U8yzCisM5Z_32unicode_normalization_alignments9recompose14RecompositionsNtNtNtB16_3str4iter5CharsEEs_0s_0NCINvXsK_NtB12_5accumjNtB8L_3Sum3sumINtB4o_3MapIB2A_QBH_EB4K_EE0E0E0E0INtNtB3c_12control_flow11ControlFlowB37_jEEB4Z_: argument 0"}
!195 = distinct !{!195, !193, !"_RINvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB6_8IntoItercENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator8try_foldjNCINvNvXs_NtNtB14_8adapters4takeINtB2d_4TakepEBY_8try_fold5checkcjINtNtNtB16_3ops9try_trait17NeverShortCircuitjENCINvMB3a_B37_10wrap_mut_2jcNCINvNtB2f_3map8map_foldcjjNCNCINvMs0_NtNtCs2JiOgHzbbc7_10tokenizers9tokenizer10normalizerNtB4V_16NormalizedString15transform_rangeNtNtB3c_5range9RangeFullINtNtCs3U8yzCisM5Z_32unicode_normalization_alignments9recompose14RecompositionsNtNtNtB16_3str4iter5CharsEEs_0s_0NCINvXsK_NtB12_5accumjNtB8L_3Sum3sumINtB4o_3MapIB2A_QBH_EB4K_EE0E0E0E0INtNtB3c_12control_flow11ControlFlowB37_jEEB4Z_: argument 1"}
!196 = !{!192}
!197 = !{!194}
!198 = !{!195}
!199 = !{!195, !192}
!200 = !{!194, !195, !192}
!201 = distinct !{!201, i1 true, !"_RINvXs2_NtNtNtCs4NRVxsYgnAr_4core4iter6traits8iteratorQINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoItercENtB6_15IteratorRefSpec13spec_try_foldjNCINvNvXs_NtNtBa_8adapters4takeINtB2s_4TakepENtB6_8Iterator8try_fold5checkcjINtNtNtBc_3ops9try_trait17NeverShortCircuitjENCINvMB3z_B3w_10wrap_mut_2jcNCINvNtB2u_3map8map_foldcjjNCNCINvMs0_NtNtCs2JiOgHzbbc7_10tokenizers9tokenizer10normalizerNtB5j_16NormalizedString15transform_rangeNtNtB3B_5range9RangeFullINtNtNtBa_7sources5empty5EmptyTciEEEs_0s_0NCINvXsK_NtB8_5accumjNtB81_3Sum3sumINtB4M_3MapIB2O_BQ_EB58_EE0E0E0E0INtNtB3B_12control_flow11ControlFlowB3w_jEEB5n_"}
!202 = distinct !{!202, !201, !"_RINvXs2_NtNtNtCs4NRVxsYgnAr_4core4iter6traits8iteratorQINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoItercENtB6_15IteratorRefSpec13spec_try_foldjNCINvNvXs_NtNtBa_8adapters4takeINtB2s_4TakepENtB6_8Iterator8try_fold5checkcjINtNtNtBc_3ops9try_trait17NeverShortCircuitjENCINvMB3z_B3w_10wrap_mut_2jcNCINvNtB2u_3map8map_foldcjjNCNCINvMs0_NtNtCs2JiOgHzbbc7_10tokenizers9tokenizer10normalizerNtB5j_16NormalizedString15transform_rangeNtNtB3B_5range9RangeFullINtNtNtBa_7sources5empty5EmptyTciEEEs_0s_0NCINvXsK_NtB8_5accumjNtB81_3Sum3sumINtB4M_3MapIB2O_BQ_EB58_EE0E0E0E0INtNtB3B_12control_flow11ControlFlowB3w_jEEB5n_: argument 0"}
!203 = distinct !{!203, i1 true, !"_RINvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB6_8IntoItercENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator8try_foldjNCINvNvXs_NtNtB14_8adapters4takeINtB2d_4TakepEBY_8try_fold5checkcjINtNtNtB16_3ops9try_trait17NeverShortCircuitjENCINvMB3a_B37_10wrap_mut_2jcNCINvNtB2f_3map8map_foldcjjNCNCINvMs0_NtNtCs2JiOgHzbbc7_10tokenizers9tokenizer10normalizerNtB4V_16NormalizedString15transform_rangeNtNtB3c_5range9RangeFullINtNtNtB14_7sources5empty5EmptyTciEEEs_0s_0NCINvXsK_NtB12_5accumjNtB7E_3Sum3sumINtB4o_3MapIB2A_QBH_EB4K_EE0E0E0E0INtNtB3c_12control_flow11ControlFlowB37_jEEB4Z_"}
!204 = distinct !{!204, !203, !"_RINvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB6_8IntoItercENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator8try_foldjNCINvNvXs_NtNtB14_8adapters4takeINtB2d_4TakepEBY_8try_fold5checkcjINtNtNtB16_3ops9try_trait17NeverShortCircuitjENCINvMB3a_B37_10wrap_mut_2jcNCINvNtB2f_3map8map_foldcjjNCNCINvMs0_NtNtCs2JiOgHzbbc7_10tokenizers9tokenizer10normalizerNtB4V_16NormalizedString15transform_rangeNtNtB3c_5range9RangeFullINtNtNtB14_7sources5empty5EmptyTciEEEs_0s_0NCINvXsK_NtB12_5accumjNtB7E_3Sum3sumINtB4o_3MapIB2A_QBH_EB4K_EE0E0E0E0INtNtB3c_12control_flow11ControlFlowB37_jEEB4Z_: argument 0"}
!205 = distinct !{!205, !203, !"_RINvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB6_8IntoItercENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator8try_foldjNCINvNvXs_NtNtB14_8adapters4takeINtB2d_4TakepEBY_8try_fold5checkcjINtNtNtB16_3ops9try_trait17NeverShortCircuitjENCINvMB3a_B37_10wrap_mut_2jcNCINvNtB2f_3map8map_foldcjjNCNCINvMs0_NtNtCs2JiOgHzbbc7_10tokenizers9tokenizer10normalizerNtB4V_16NormalizedString15transform_rangeNtNtB3c_5range9RangeFullINtNtNtB14_7sources5empty5EmptyTciEEEs_0s_0NCINvXsK_NtB12_5accumjNtB7E_3Sum3sumINtB4o_3MapIB2A_QBH_EB4K_EE0E0E0E0INtNtB3c_12control_flow11ControlFlowB37_jEEB4Z_: argument 1"}
!206 = !{!202}
!207 = !{!204}
!208 = !{!205}
!209 = !{!205, !202}
!210 = !{!204, !205, !202}
!211 = distinct !{!211, i1 true, !"_RINvXs2_NtNtNtCs4NRVxsYgnAr_4core4iter6traits8iteratorQINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoItercENtB6_15IteratorRefSpec13spec_try_foldjNCINvNvXs_NtNtBa_8adapters4takeINtB2s_4TakepENtB6_8Iterator8try_fold5checkcjINtNtNtBc_3ops9try_trait17NeverShortCircuitjENCINvMB3z_B3w_10wrap_mut_2jcNCINvNtB2u_3map8map_foldcjjNCNCNCINvMs0_NtNtCs2JiOgHzbbc7_10tokenizers9tokenizer10normalizerNtB5l_16NormalizedString7replaceRNtNtNtB5p_5utils4onig8SysRegexE0s0_0s_0NCINvXsK_NtB8_5accumjNtB7u_3Sum3sumINtB4M_3MapIB2O_BQ_EB58_EE0E0E0E0INtNtB3B_12control_flow11ControlFlowB3w_jEEB5p_"}
!212 = distinct !{!212, !211, !"_RINvXs2_NtNtNtCs4NRVxsYgnAr_4core4iter6traits8iteratorQINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoItercENtB6_15IteratorRefSpec13spec_try_foldjNCINvNvXs_NtNtBa_8adapters4takeINtB2s_4TakepENtB6_8Iterator8try_fold5checkcjINtNtNtBc_3ops9try_trait17NeverShortCircuitjENCINvMB3z_B3w_10wrap_mut_2jcNCINvNtB2u_3map8map_foldcjjNCNCNCINvMs0_NtNtCs2JiOgHzbbc7_10tokenizers9tokenizer10normalizerNtB5l_16NormalizedString7replaceRNtNtNtB5p_5utils4onig8SysRegexE0s0_0s_0NCINvXsK_NtB8_5accumjNtB7u_3Sum3sumINtB4M_3MapIB2O_BQ_EB58_EE0E0E0E0INtNtB3B_12control_flow11ControlFlowB3w_jEEB5p_: argument 0"}
!213 = distinct !{!213, i1 true, !"_RINvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB6_8IntoItercENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator8try_foldjNCINvNvXs_NtNtB14_8adapters4takeINtB2d_4TakepEBY_8try_fold5checkcjINtNtNtB16_3ops9try_trait17NeverShortCircuitjENCINvMB3a_B37_10wrap_mut_2jcNCINvNtB2f_3map8map_foldcjjNCNCNCINvMs0_NtNtCs2JiOgHzbbc7_10tokenizers9tokenizer10normalizerNtB4X_16NormalizedString7replaceRNtNtNtB51_5utils4onig8SysRegexE0s0_0s_0NCINvXsK_NtB12_5accumjNtB76_3Sum3sumINtB4o_3MapIB2A_QBH_EB4K_EE0E0E0E0INtNtB3c_12control_flow11ControlFlowB37_jEEB51_"}
!214 = distinct !{!214, !213, !"_RINvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB6_8IntoItercENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator8try_foldjNCINvNvXs_NtNtB14_8adapters4takeINtB2d_4TakepEBY_8try_fold5checkcjINtNtNtB16_3ops9try_trait17NeverShortCircuitjENCINvMB3a_B37_10wrap_mut_2jcNCINvNtB2f_3map8map_foldcjjNCNCNCINvMs0_NtNtCs2JiOgHzbbc7_10tokenizers9tokenizer10normalizerNtB4X_16NormalizedString7replaceRNtNtNtB51_5utils4onig8SysRegexE0s0_0s_0NCINvXsK_NtB12_5accumjNtB76_3Sum3sumINtB4o_3MapIB2A_QBH_EB4K_EE0E0E0E0INtNtB3c_12control_flow11ControlFlowB37_jEEB51_: argument 0"}
!215 = distinct !{!215, !213, !"_RINvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB6_8IntoItercENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator8try_foldjNCINvNvXs_NtNtB14_8adapters4takeINtB2d_4TakepEBY_8try_fold5checkcjINtNtNtB16_3ops9try_trait17NeverShortCircuitjENCINvMB3a_B37_10wrap_mut_2jcNCINvNtB2f_3map8map_foldcjjNCNCNCINvMs0_NtNtCs2JiOgHzbbc7_10tokenizers9tokenizer10normalizerNtB4X_16NormalizedString7replaceRNtNtNtB51_5utils4onig8SysRegexE0s0_0s_0NCINvXsK_NtB12_5accumjNtB76_3Sum3sumINtB4o_3MapIB2A_QBH_EB4K_EE0E0E0E0INtNtB3c_12control_flow11ControlFlowB37_jEEB51_: argument 1"}
!216 = !{!212}
end_hunk_7
