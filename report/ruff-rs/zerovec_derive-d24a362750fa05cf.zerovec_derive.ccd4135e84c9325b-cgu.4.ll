Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruff-rs/original/zerovec_derive-d24a362750fa05cf.zerovec_derive.ccd4135e84c9325b-cgu.4?download=true
inline.NumInlined: 176
inline.NumDeleted: 95
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCshAipbVPsRtf_14zerovec_derive11make_varule13UnsizedFieldsEBF_:bb.a
bb.d:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #18
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.c = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.b, %bb.e
  %eh.lpad-body = phi { ptr, i32 } [ %i.c, %bb.e ], [ %i.a, %bb.b ]
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtCsghEUimwObfx_11proc_macro211TokenStreamECsdQT5ZjIgVrW_5quote(ptr nonnull align 8 %i.d) #17
          to label %bb.g unwind label %bb.f

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCshAipbVPsRtf_14zerovec_derive11make_varule12UnsizedFieldEEB1b_.exit: ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtCsghEUimwObfx_11proc_macro211TokenStreamECsdQT5ZjIgVrW_5quote(ptr nonnull align 8 %i.e)
  ret void

bb.f:                                             ; preds = %.body
  %i.f = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #18
  unreachable

bb.g:                                             ; preds = %.body
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCshAipbVPsRtf_14zerovec_derive11make_varule16UnsizedFieldKindEBF_(ptr align 8 %0) unnamed_addr #1 !guid !67 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load i8, ptr %i.a, align 8
  switch i8 %i.b, label %bb.c [
    i8 7, label %bb.b
    i8 2, label %bb.b
    i8 1, label %bb.b
    i8 0, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a, %bb.a, %bb.a, %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtCsghEUimwObfx_11proc_macro25IdentEBD_(ptr nonnull align 8 %i.c)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCshAipbVPsRtf_14zerovec_derive5utils12ZeroVecAttrsEBF_(ptr align 8 %0) unnamed_addr #1 !guid !68 {
bb.a:
  tail call void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtCsghEUimwObfx_11proc_macro211TokenStreamEECsdQT5ZjIgVrW_5quote(ptr align 8 %0)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCshAipbVPsRtf_14zerovec_derive5utils18IdentListAttributeEBF_(ptr align 8 %0) unnamed_addr #1 !guid !69 {
bb.a:
  tail call void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCslNEiUQgeYIG_3syn10punctuated10PunctuatedNtCsghEUimwObfx_11proc_macro25IdentNtNtBG_5token5CommaEECshAipbVPsRtf_14zerovec_derive(ptr align 8 %0)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCshAipbVPsRtf_14zerovec_derive5utils9FieldInfoEBF_(ptr align 8 %0) unnamed_addr #1 !guid !70 {
bb.a:
  tail call void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtCsghEUimwObfx_11proc_macro211TokenStreamECsdQT5ZjIgVrW_5quote(ptr align 8 %0)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCslNEiUQgeYIG_3syn6derive11DeriveInputECshAipbVPsRtf_14zerovec_derive(ptr align 8 %0) unnamed_addr #1 personality ptr @rust_eh_personality !guid !71 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCslNEiUQgeYIG_3syn4attr9AttributeEEB1b_(ptr nonnull align 8 %i.a)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 184
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCslNEiUQgeYIG_3syn11restriction10VisibilityEBF_(ptr nonnull align 8 %i.c) #17
          to label %bb.d unwind label %bb.m

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 184
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCslNEiUQgeYIG_3syn11restriction10VisibilityEBF_(ptr nonnull align 8 %i.d)
          to label %bb.f unwind label %bb.e

bb.d:                                             ; preds = %bb.e, %bb.b
  %.pn = phi { ptr, i32 } [ %i.f, %bb.e ], [ %i.b, %bb.b ]
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 216
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtCsghEUimwObfx_11proc_macro25IdentEBD_(ptr nonnull align 8 %i.e) #17
          to label %bb.g unwind label %bb.m

bb.e:                                             ; preds = %bb.c
  %i.f = landingpad { ptr, i32 }
          cleanup
  br label %bb.d

bb.f:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 216
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtCsghEUimwObfx_11proc_macro25IdentEBD_(ptr nonnull align 8 %i.g)
          to label %bb.i unwind label %bb.h

bb.g:                                             ; preds = %bb.h, %bb.d
  %.pn2 = phi { ptr, i32 } [ %i.i, %bb.h ], [ %.pn, %bb.d ]
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 96
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCslNEiUQgeYIG_3syn8generics8GenericsEBF_(ptr nonnull align 8 %i.h) #17
          to label %bb.j unwind label %bb.m

bb.h:                                             ; preds = %bb.f
  %i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.g

bb.i:                                             ; preds = %bb.f
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 96
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCslNEiUQgeYIG_3syn8generics8GenericsEBF_(ptr nonnull align 8 %i.j)
          to label %bb.l unwind label %bb.k

bb.j:                                             ; preds = %bb.k, %bb.g
  %.pn4 = phi { ptr, i32 } [ %i.k, %bb.k ], [ %.pn2, %bb.g ]
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCslNEiUQgeYIG_3syn6derive4DataEBF_(ptr align 8 %0) #17
          to label %bb.n unwind label %bb.m

bb.k:                                             ; preds = %bb.i
  %i.k = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

bb.l:                                             ; preds = %bb.i
  tail call void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCslNEiUQgeYIG_3syn6derive4DataEBF_(ptr align 8 %0)
  ret void

bb.m:                                             ; preds = %bb.j, %bb.g, %bb.d, %bb.b
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #18
  unreachable

bb.n:                                             ; preds = %bb.j
  resume { ptr, i32 } %.pn4
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCslNEiUQgeYIG_3syn8generics10TypeParamsECshAipbVPsRtf_14zerovec_derive(ptr align 8 %0) unnamed_addr #1 personality ptr @rust_eh_personality !guid !72 {
bb.a:
  tail call void @_RNvXs8_NtCscdodAO9FK5_5alloc5boxedINtB5_3BoxINtNtCslNEiUQgeYIG_3syn5drops6NoDropDINtNtBL_10punctuated9IterTraitNtNtBL_8generics12GenericParamEp4ItemRB1L_EL_EENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCshAipbVPsRtf_14zerovec_derive(ptr align 8 %0)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCslNEiUQgeYIG_3syn8generics11ConstParamsECshAipbVPsRtf_14zerovec_derive(ptr align 8 %0) unnamed_addr #1 personality ptr @rust_eh_personality !guid !73 {
bb.a:
  tail call void @_RNvXs8_NtCscdodAO9FK5_5alloc5boxedINtB5_3BoxINtNtCslNEiUQgeYIG_3syn5drops6NoDropDINtNtBL_10punctuated9IterTraitNtNtBL_8generics12GenericParamEp4ItemRB1L_EL_EENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCshAipbVPsRtf_14zerovec_derive(ptr align 8 %0)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCslNEiUQgeYIG_3syn8generics9LifetimesECshAipbVPsRtf_14zerovec_derive(ptr align 8 %0) unnamed_addr #1 personality ptr @rust_eh_personality !guid !74 {
bb.a:
  tail call void @_RNvXs8_NtCscdodAO9FK5_5alloc5boxedINtB5_3BoxINtNtCslNEiUQgeYIG_3syn5drops6NoDropDINtNtBL_10punctuated9IterTraitNtNtBL_8generics12GenericParamEp4ItemRB1L_EL_EENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCshAipbVPsRtf_14zerovec_derive(ptr align 8 %0)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCstuaXukgBIa_10proc_macro6bridge12BridgeConfigECshAipbVPsRtf_14zerovec_derive(ptr align 8 %0) unnamed_addr #1 !guid !75 {
bb.a:
  tail call void @_RNvXs5_NtNtCstuaXukgBIa_10proc_macro6bridge6bufferNtB5_6BufferNtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCshAipbVPsRtf_14zerovec_derive(ptr align 8 %0)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorECshAipbVPsRtf_14zerovec_derive(ptr nofree readonly align 8 captures(none) %0) unnamed_addr #1 personality ptr @rust_eh_personality !guid !78 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %.val = load ptr, ptr %0, align 8               ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !79)
  %i.b = ptrtoint ptr %.val to i64                ; 2 uses
  %i.c = and i64 %i.b, 3
  switch i64 %i.c, label %default.unreachable [
    i64 2, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCs2AWtUsOyxgP_3std2io5error14repr_bitpacked4ReprECshAipbVPsRtf_14zerovec_derive.exit
    i64 3, label %bb.b
    i64 0, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCs2AWtUsOyxgP_3std2io5error14repr_bitpacked4ReprECshAipbVPsRtf_14zerovec_derive.exit
    i64 1, label %bb.d
  ]

default.unreachable:                              ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.d = lshr i64 %i.b, 32
  %i.e = trunc nuw i64 %i.d to i32
  %i.f = tail call i8 @_RNvMNtNtCs4NRVxsYgnAr_4core2io5errorNtB2_9ErrorKind9from_primCshAipbVPsRtf_14zerovec_derive(i32 %i.e), !noalias !79
  %1 = freeze i8 %i.f
  %.not.i.i.i = icmp eq i8 %1, -1
  br i1 %.not.i.i.i, label %bb.c, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCs2AWtUsOyxgP_3std2io5error14repr_bitpacked4ReprECshAipbVPsRtf_14zerovec_derive.exit

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvNvNtCs4NRVxsYgnAr_4core4hint21unreachable_unchecked18precondition_checkCshAipbVPsRtf_14zerovec_derive(ptr nonnull align 8 @17) #19, !noalias !79
  unreachable

bb.d:                                             ; preds = %bb.a
  %i.g = getelementptr i8, ptr %.val, i64 -1      ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 3 uses
  store ptr %i.g, ptr %i.h, align 8, !alias.scope !79
  store i8 3, ptr %i.a, align 8, !alias.scope !79
  %i.i = getelementptr i8, ptr %.val, i64 7
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = load ptr, ptr %i.j, align 8, !invariant.load !80 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i.i.i.i.i, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SendNtB1v_4SyncEL_EECshAipbVPsRtf_14zerovec_derive.exit.i.i.i.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = load ptr, ptr %i.g, align 8
  invoke void %i.k(ptr %i.l)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SendNtB1v_4SyncEL_EECshAipbVPsRtf_14zerovec_derive.exit.i.i.i.i.i unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.m = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs8_NtCscdodAO9FK5_5alloc5boxedINtB5_3BoxDNtNtCs4NRVxsYgnAr_4core5error5ErrorNtNtBL_6marker4SendNtB1i_4SyncEL_ENtNtNtBL_3ops4drop4Drop4dropCshAipbVPsRtf_14zerovec_derive(ptr nonnull align 8 %i.g) #17
          to label %.body.i.i.i.i unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #18
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SendNtB1v_4SyncEL_EECshAipbVPsRtf_14zerovec_derive.exit.i.i.i.i.i: ; preds = %bb.e, %bb.d
  invoke void @_RNvXs8_NtCscdodAO9FK5_5alloc5boxedINtB5_3BoxDNtNtCs4NRVxsYgnAr_4core5error5ErrorNtNtBL_6marker4SendNtB1i_4SyncEL_ENtNtNtBL_3ops4drop4Drop4dropCshAipbVPsRtf_14zerovec_derive(ptr nonnull align 8 %i.g)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxNtNtNtCs2AWtUsOyxgP_3std2io5error6CustomEECshAipbVPsRtf_14zerovec_derive.exit.i.i.i unwind label %bb.h

bb.h:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SendNtB1v_4SyncEL_EECshAipbVPsRtf_14zerovec_derive.exit.i.i.i.i.i
  %i.o = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i.i

.body.i.i.i.i:                                    ; preds = %bb.h, %bb.f
  %eh.lpad-body.i.i.i.i = phi { ptr, i32 } [ %i.o, %bb.h ], [ %i.m, %bb.f ]
  invoke void @_RNvXs8_NtCscdodAO9FK5_5alloc5boxedINtB5_3BoxNtNtNtCs2AWtUsOyxgP_3std2io5error6CustomENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCshAipbVPsRtf_14zerovec_derive(ptr nonnull align 8 %i.h) #17
          to label %bb.j unwind label %bb.i

bb.i:                                             ; preds = %.body.i.i.i.i
  %i.p = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #18
  unreachable

bb.j:                                             ; preds = %.body.i.i.i.i
  resume { ptr, i32 } %eh.lpad-body.i.i.i.i

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxNtNtNtCs2AWtUsOyxgP_3std2io5error6CustomEECshAipbVPsRtf_14zerovec_derive.exit.i.i.i: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SendNtB1v_4SyncEL_EECshAipbVPsRtf_14zerovec_derive.exit.i.i.i.i.i
  call void @_RNvXs8_NtCscdodAO9FK5_5alloc5boxedINtB5_3BoxNtNtNtCs2AWtUsOyxgP_3std2io5error6CustomENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCshAipbVPsRtf_14zerovec_derive(ptr nonnull align 8 %i.h)
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCs2AWtUsOyxgP_3std2io5error14repr_bitpacked4ReprECshAipbVPsRtf_14zerovec_derive.exit

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCs2AWtUsOyxgP_3std2io5error14repr_bitpacked4ReprECshAipbVPsRtf_14zerovec_derive.exit: ; preds = %bb.a, %bb.a, %bb.b, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxNtNtNtCs2AWtUsOyxgP_3std2io5error6CustomEECshAipbVPsRtf_14zerovec_derive.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCstuaXukgBIa_10proc_macro6bridge3rpc12PanicMessageECshAipbVPsRtf_14zerovec_derive(ptr align 8 %0) unnamed_addr #1 !guid !81 {
bb.a:
  %i.a = load i64, ptr %0, align 8                ; 2 uses
  %i.b = icmp sgt i64 %i.a, -1
  %i.c = icmp eq i64 %i.a, -9223372036854775807
  %i.d = or i1 %i.b, %i.c
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsghEUimwObfx_11proc_macro2(ptr nonnull align 8 %0)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCstuaXukgBIa_10proc_macro6bridge6buffer6BufferECshAipbVPsRtf_14zerovec_derive(ptr align 8 %0) unnamed_addr #1 !guid !82 {
bb.a:
  tail call void @_RNvXs5_NtNtCstuaXukgBIa_10proc_macro6bridge6bufferNtB5_6BufferNtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCshAipbVPsRtf_14zerovec_derive(ptr align 8 %0)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNvNtNtNtCstuaXukgBIa_10proc_macro6bridge6client5state3set13RestoreOnDropECshAipbVPsRtf_14zerovec_derive(ptr align 8 %0) unnamed_addr #1 !guid !83 {
bb.a:
  tail call void @_RNvXNvNtNtNtCstuaXukgBIa_10proc_macro6bridge6client5state3setNtB2_13RestoreOnDropNtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4drop(ptr align 8 %0)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueSINtNtB4_6option6OptionNtCsghEUimwObfx_11proc_macro25IdentEECshAipbVPsRtf_14zerovec_derive(ptr align 8 %0, i64 %1) unnamed_addr #1 personality ptr @rust_eh_personality !guid !84 {
bb.a:
  %i.a = icmp eq i64 %1, 0
  br i1 %i.a, label %._crit_edge, label %.lr.ph

bb.b:                                             ; preds = %.lr.ph
  %i.b = icmp eq i64 %i.d, %1
  br i1 %i.b, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.sroa.0.07 = phi i64 [ %i.d, %bb.b ], [ 0, %bb.a ] ; 2 uses
  %i.c = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %.sroa.0.07
  %i.d = add nuw i64 %.sroa.0.07, 1               ; 4 uses
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtCsghEUimwObfx_11proc_macro25IdentEECslNEiUQgeYIG_3syn(ptr align 8 %i.c)
          to label %bb.b unwind label %bb.d

._crit_edge:                                      ; preds = %bb.b, %bb.a
  ret void

bb.c:                                             ; preds = %.lr.ph10
  %i.e = add nuw i64 %.sroa.0.18, 1               ; 2 uses
  %i.f = icmp eq i64 %i.e, %1
  br i1 %i.f, label %._crit_edge11, label %.lr.ph10

bb.d:                                             ; preds = %.lr.ph
  %i.g = landingpad { ptr, i32 }
          cleanup
  %i.h = icmp eq i64 %i.d, %1
  br i1 %i.h, label %._crit_edge11, label %.lr.ph10

.lr.ph10:                                         ; preds = %bb.d, %bb.c
  %.sroa.0.18 = phi i64 [ %i.e, %bb.c ], [ %i.d, %bb.d ] ; 2 uses
  %i.i = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %.sroa.0.18
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtCsghEUimwObfx_11proc_macro25IdentEECslNEiUQgeYIG_3syn(ptr nonnull align 8 %i.i) #17
          to label %bb.c unwind label %bb.e

._crit_edge11:                                    ; preds = %bb.c, %bb.d
  resume { ptr, i32 } %i.g

bb.e:                                             ; preds = %.lr.ph10
  %i.j = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #18
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueSNtCsghEUimwObfx_11proc_macro211TokenStreamECshAipbVPsRtf_14zerovec_derive(ptr align 8 %0, i64 %1) unnamed_addr #1 personality ptr @rust_eh_personality !guid !85 {
bb.a:
  %i.a = icmp eq i64 %1, 0
  br i1 %i.a, label %._crit_edge, label %.lr.ph

bb.b:                                             ; preds = %.lr.ph
  %i.b = icmp eq i64 %i.d, %1
  br i1 %i.b, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.sroa.0.07 = phi i64 [ %i.d, %bb.b ], [ 0, %bb.a ] ; 2 uses
  %i.c = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %.sroa.0.07
  %i.d = add nuw i64 %.sroa.0.07, 1               ; 4 uses
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtCsghEUimwObfx_11proc_macro211TokenStreamECsdQT5ZjIgVrW_5quote(ptr align 8 %i.c)
          to label %bb.b unwind label %bb.d

._crit_edge:                                      ; preds = %bb.b, %bb.a
  ret void

bb.c:                                             ; preds = %.lr.ph10
  %i.e = add nuw i64 %.sroa.0.18, 1               ; 2 uses
  %i.f = icmp eq i64 %i.e, %1
  br i1 %i.f, label %._crit_edge11, label %.lr.ph10

bb.d:                                             ; preds = %.lr.ph
  %i.g = landingpad { ptr, i32 }
          cleanup
  %i.h = icmp eq i64 %i.d, %1
  br i1 %i.h, label %._crit_edge11, label %.lr.ph10

.lr.ph10:                                         ; preds = %bb.d, %bb.c
  %.sroa.0.18 = phi i64 [ %i.e, %bb.c ], [ %i.d, %bb.d ] ; 2 uses
  %i.i = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %.sroa.0.18
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtCsghEUimwObfx_11proc_macro211TokenStreamECsdQT5ZjIgVrW_5quote(ptr nonnull align 8 %i.i) #17
          to label %bb.c unwind label %bb.e

._crit_edge11:                                    ; preds = %bb.c, %bb.d
  resume { ptr, i32 } %i.g

bb.e:                                             ; preds = %.lr.ph10
  %i.j = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #18
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueSNtCsghEUimwObfx_11proc_macro25IdentECshAipbVPsRtf_14zerovec_derive(ptr align 8 %0, i64 %1) unnamed_addr #1 personality ptr @rust_eh_personality !guid !86 {
bb.a:
  %i.a = icmp eq i64 %1, 0
  br i1 %i.a, label %._crit_edge, label %.lr.ph

bb.b:                                             ; preds = %.lr.ph
  %i.b = icmp eq i64 %i.d, %1
  br i1 %i.b, label %._crit_edge, label %.lr.ph
end_hunk_0
