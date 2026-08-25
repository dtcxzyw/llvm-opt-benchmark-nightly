Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruff-rs/original/ty_python_semantic-ec859307257497d7.ty_python_semantic.4ad91d80fb3de5b-cgu.07?download=true
inline.NumInlined: 8805
inline.NumDeleted: 4120
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 12
begin_hunk_0_@_RNvXsw_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecATNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints6NodeIdINtNtCs4NRVxsYgnAr_4core6option6OptionNtBL_13SourceOrderIdEhEj8_ENtNtNtB1R_3ops4drop4Drop4dropBP_:bb.a
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecTNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11constraints6NodeIdINtNtB4_6option6OptionNtB1a_13SourceOrderIdEhEEEB1e_.exit
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsw_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecAbj8_ENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsoTR8nlGN3X_18ty_python_semantic(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 8 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load i64, ptr %i.b, align 8, !noundef !15 ; 2 uses
  %i.d = icmp ugt i64 %i.c, 8
  br i1 %i.d, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %0, align 8, !nonnull !15, !noundef !15
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load i64, ptr %i.f, align 8, !noundef !15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 %i.c, ptr %i.a, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.e, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %i.g, ptr %i.i, align 8
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecbENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecbEECsoTR8nlGN3X_18ty_python_semantic.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecbENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVecbEECsoTR8nlGN3X_18ty_python_semantic.exit.i unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #42
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVecbEECsoTR8nlGN3X_18ty_python_semantic.exit.i: ; preds = %bb.c
  resume { ptr, i32 } %i.j

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecbEECsoTR8nlGN3X_18ty_python_semantic.exit: ; preds = %bb.b
  call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecbENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecbEECsoTR8nlGN3X_18ty_python_semantic.exit
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsw_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecAjj1_ENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsoTR8nlGN3X_18ty_python_semantic(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 8 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load i64, ptr %i.b, align 8, !noundef !15 ; 2 uses
  %i.d = icmp ugt i64 %i.c, 1
  br i1 %i.d, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %0, align 8, !nonnull !15, !noundef !15
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load i64, ptr %i.f, align 8, !noundef !15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 %i.c, ptr %i.a, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.e, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %i.g, ptr %i.i, align 8
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecjENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecjEECsoTR8nlGN3X_18ty_python_semantic.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecjENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVecjEECsoTR8nlGN3X_18ty_python_semantic.exit.i unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #42
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVecjEECsoTR8nlGN3X_18ty_python_semantic.exit.i: ; preds = %bb.c
  resume { ptr, i32 } %i.j

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecjEECsoTR8nlGN3X_18ty_python_semantic.exit: ; preds = %bb.b
  call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecjENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecjEECsoTR8nlGN3X_18ty_python_semantic.exit
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsw_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecAjj2_ENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsoTR8nlGN3X_18ty_python_semantic(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 8 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load i64, ptr %i.b, align 8, !noundef !15 ; 2 uses
  %i.d = icmp ugt i64 %i.c, 2
  br i1 %i.d, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %0, align 8, !nonnull !15, !noundef !15
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load i64, ptr %i.f, align 8, !noundef !15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 %i.c, ptr %i.a, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.e, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %i.g, ptr %i.i, align 8
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecjENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecjEECsoTR8nlGN3X_18ty_python_semantic.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecjENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVecjEECsoTR8nlGN3X_18ty_python_semantic.exit.i unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #42
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVecjEECsoTR8nlGN3X_18ty_python_semantic.exit.i: ; preds = %bb.c
  resume { ptr, i32 } %i.j

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecjEECsoTR8nlGN3X_18ty_python_semantic.exit: ; preds = %bb.b
  call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecjENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecjEECsoTR8nlGN3X_18ty_python_semantic.exit
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsw_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecAjj4_ENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsoTR8nlGN3X_18ty_python_semantic(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(40) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 8 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.c = load i64, ptr %i.b, align 8, !noundef !15 ; 2 uses
  %i.d = icmp ugt i64 %i.c, 4
  br i1 %i.d, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %0, align 8, !nonnull !15, !noundef !15
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load i64, ptr %i.f, align 8, !noundef !15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 %i.c, ptr %i.a, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.e, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %i.g, ptr %i.i, align 8
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecjENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecjEECsoTR8nlGN3X_18ty_python_semantic.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecjENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVecjEECsoTR8nlGN3X_18ty_python_semantic.exit.i unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #42
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVecjEECsoTR8nlGN3X_18ty_python_semantic.exit.i: ; preds = %bb.c
  resume { ptr, i32 } %i.j

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecjEECsoTR8nlGN3X_18ty_python_semantic.exit: ; preds = %bb.b
  call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecjENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecjEECsoTR8nlGN3X_18ty_python_semantic.exit
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsx_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtCsoTR8nlGN3X_18ty_python_semantic5types4Typej1_ENtNtCs4NRVxsYgnAr_4core5clone5Clone10clone_fromBM_(ptr noalias noundef align 8 dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !25241, !noalias !25244, !noundef !15 ; 2 uses
  %i.c = icmp ugt i64 %i.b, 1                     ; 2 uses
  %i.d = load ptr, ptr %1, align 8, !alias.scope !25241, !noalias !25244, !nonnull !15
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load i64, ptr %i.e, align 8, !alias.scope !25241, !noalias !25244
  %.sink9.i = select i1 %i.c, i64 %i.f, i64 %i.b  ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.h = load i64, ptr %i.g, align 8, !alias.scope !25246, !noalias !25251, !noundef !15 ; 2 uses
  %i.i = icmp ugt i64 %i.h, 1
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.sink8.i.i = select i1 %i.i, ptr %i.j, ptr %i.g ; 2 uses
  %.sink8.i.promoted.i = load i64, ptr %.sink8.i.i, align 8, !alias.scope !25253
  %i.k = icmp ult i64 %.sink9.i, %.sink8.i.promoted.i
  br i1 %i.k, label %.lr.ph.preheader.i, label %_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtCsoTR8nlGN3X_18ty_python_semantic5types4Typej1_E8truncateBM_.exit

.lr.ph.preheader.i:                               ; preds = %bb.a
  store i64 %.sink9.i, ptr %.sink8.i.i, align 8, !alias.scope !25253
  %.pre = load i64, ptr %i.g, align 8, !alias.scope !25254, !noalias !25257
  br label %_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtCsoTR8nlGN3X_18ty_python_semantic5types4Typej1_E8truncateBM_.exit

_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtCsoTR8nlGN3X_18ty_python_semantic5types4Typej1_E8truncateBM_.exit: ; preds = %bb.a, %.lr.ph.preheader.i
  %i.l = phi i64 [ %i.h, %bb.a ], [ %.pre, %.lr.ph.preheader.i ] ; 2 uses
  %i.m = icmp ugt i64 %i.l, 1                     ; 2 uses
  %i.n = load i64, ptr %i.j, align 8, !alias.scope !25254, !noalias !25257
  %.sink9.i5 = select i1 %i.m, i64 %i.n, i64 %i.l ; 4 uses
  %.not.i = icmp ugt i64 %.sink9.i5, %.sink9.i
  br i1 %.not.i, label %bb.b, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSNtNtCsoTR8nlGN3X_18ty_python_semantic5types4Type8split_atBy_.exit, !prof !16

bb.b:                                             ; preds = %_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtCsoTR8nlGN3X_18ty_python_semantic5types4Typej1_E8truncateBM_.exit
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking9panic_fmt(ptr noundef nonnull @87, ptr noundef nonnull inttoptr (i64 19 to ptr), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @364) #40, !noalias !25259
  unreachable

_RNvMNtCs4NRVxsYgnAr_4core5sliceSNtNtCsoTR8nlGN3X_18ty_python_semantic5types4Type8split_atBy_.exit: ; preds = %_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtCsoTR8nlGN3X_18ty_python_semantic5types4Typej1_E8truncateBM_.exit
  %i.o = load ptr, ptr %0, align 8, !alias.scope !25254, !noalias !25257, !nonnull !15
  %.sink10.i1 = select i1 %i.c, ptr %i.d, ptr %1  ; 3 uses
  %i.p = getelementptr inbounds nuw [16 x i8], ptr %.sink10.i1, i64 %.sink9.i5
  %.sink8.i = select i1 %i.m, ptr %i.o, ptr %0
  tail call void @_RNvXs4_NtCs4NRVxsYgnAr_4core5sliceSNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeINtB5_13CloneFromSpecBx_E15spec_clone_fromBB_(ptr noalias noundef nonnull align 4 %.sink8.i, i64 noundef %.sink9.i5, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) %.sink10.i1, i64 noundef %.sink9.i5, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @365)
  %i.q = getelementptr inbounds nuw [16 x i8], ptr %.sink10.i1, i64 %.sink9.i
  tail call void @_RINvXst_Csheqz6YZvxwl_8smallvecINtB6_8SmallVecANtNtCsoTR8nlGN3X_18ty_python_semantic5types4Typej1_EINtNtNtNtCs4NRVxsYgnAr_4core4iter6traits7collect6ExtendBJ_E6extendINtNtNtB1G_8adapters6cloned6ClonedINtNtNtB1I_5slice4iter4IterBJ_EEEBN_(ptr noalias noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull %i.p, ptr noundef nonnull %i.q)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden noundef i64 @_RNvYINtCsheqz6YZvxwl_8smallvec8SmallVecANtNtCskLngH8kgpZI_15ruff_python_ast4name4Namej8_ENtCs33Yq3JqQgDT_9get_size27GetSize13get_heap_sizeCsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(136) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !25263, !noalias !25268, !noundef !15 ; 3 uses
  %i.c = icmp ugt i64 %i.b, 8                     ; 2 uses
  %i.d = load ptr, ptr %0, align 8, !alias.scope !25263, !noalias !25268, !nonnull !15
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load i64, ptr %i.e, align 8, !alias.scope !25263, !noalias !25268
  %.sink10.i.i = select i1 %i.c, ptr %i.d, ptr %0
  %.sink9.i.i = select i1 %i.c, i64 %i.f, i64 %i.b ; 3 uses
  %i.g = icmp eq i64 %.sink9.i.i, 0
  br i1 %i.g, label %_RINvXNtNtNtCs33Yq3JqQgDT_9get_size25impls7feature8smallvecINtCsheqz6YZvxwl_8smallvec8SmallVecANtNtCskLngH8kgpZI_15ruff_python_ast4name4Namej8_ENtB9_7GetSize26get_heap_size_with_trackerNtNtB9_7tracker9NoTrackerECsoTR8nlGN3X_18ty_python_semantic.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.a, %.preheader.i
  %.sroa.05.0.i.i = phi i64 [ %i.m, %.preheader.i ], [ 0, %bb.a ] ; 2 uses
  %.sroa.6.0.i.i = phi i1 [ %i.k, %.preheader.i ], [ true, %bb.a ]
  %.sroa.02.0.i.i = phi i64 [ %i.l, %.preheader.i ], [ 0, %bb.a ]
  %i.h = getelementptr inbounds nuw [16 x i8], ptr %.sink10.i.i, i64 %.sroa.05.0.i.i
  %i.i = tail call { i64, i1 } @_RINvXsT_NtCskLngH8kgpZI_15ruff_python_ast4nameNtB6_4NameNtCs33Yq3JqQgDT_9get_size27GetSize26get_heap_size_with_trackerNtNtBU_7tracker9NoTrackerECsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.h, i1 noundef zeroext %.sroa.6.0.i.i) ; 2 uses
  %i.j = extractvalue { i64, i1 } %i.i, 0
  %i.k = extractvalue { i64, i1 } %i.i, 1
  %i.l = add i64 %i.j, %.sroa.02.0.i.i            ; 3 uses
  %i.m = add nuw i64 %.sroa.05.0.i.i, 1           ; 2 uses
  %i.n = icmp eq i64 %i.m, %.sink9.i.i
  br i1 %i.n, label %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameENtNtNtNtBb_4iter6traits8iterator8Iterator4foldTjNtNtCs33Yq3JqQgDT_9get_size27tracker9NoTrackerENCINvXNtNtNtB2q_5impls7feature8smallvecINtCsheqz6YZvxwl_8smallvec8SmallVecABQ_j8_ENtB2q_7GetSize26get_heap_size_with_trackerB2m_E0ECsoTR8nlGN3X_18ty_python_semantic.exit.i, label %.preheader.i

_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameENtNtNtNtBb_4iter6traits8iterator8Iterator4foldTjNtNtCs33Yq3JqQgDT_9get_size27tracker9NoTrackerENCINvXNtNtNtB2q_5impls7feature8smallvecINtCsheqz6YZvxwl_8smallvec8SmallVecABQ_j8_ENtB2q_7GetSize26get_heap_size_with_trackerB2m_E0ECsoTR8nlGN3X_18ty_python_semantic.exit.i: ; preds = %.preheader.i
  %i.o = icmp ugt i64 %.sink9.i.i, 8
  br i1 %i.o, label %bb.b, label %_RINvXNtNtNtCs33Yq3JqQgDT_9get_size25impls7feature8smallvecINtCsheqz6YZvxwl_8smallvec8SmallVecANtNtCskLngH8kgpZI_15ruff_python_ast4name4Namej8_ENtB9_7GetSize26get_heap_size_with_trackerNtNtB9_7tracker9NoTrackerECsoTR8nlGN3X_18ty_python_semantic.exit

bb.b:                                             ; preds = %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameENtNtNtNtBb_4iter6traits8iterator8Iterator4foldTjNtNtCs33Yq3JqQgDT_9get_size27tracker9NoTrackerENCINvXNtNtNtB2q_5impls7feature8smallvecINtCsheqz6YZvxwl_8smallvec8SmallVecABQ_j8_ENtB2q_7GetSize26get_heap_size_with_trackerB2m_E0ECsoTR8nlGN3X_18ty_python_semantic.exit.i
  %.sink.i12.i = tail call i64 @llvm.umax.i64(i64 %i.b, i64 8)
  %i.p = shl i64 %.sink.i12.i, 4
  %i.q = add i64 %i.l, %i.p
  br label %_RINvXNtNtNtCs33Yq3JqQgDT_9get_size25impls7feature8smallvecINtCsheqz6YZvxwl_8smallvec8SmallVecANtNtCskLngH8kgpZI_15ruff_python_ast4name4Namej8_ENtB9_7GetSize26get_heap_size_with_trackerNtNtB9_7tracker9NoTrackerECsoTR8nlGN3X_18ty_python_semantic.exit

_RINvXNtNtNtCs33Yq3JqQgDT_9get_size25impls7feature8smallvecINtCsheqz6YZvxwl_8smallvec8SmallVecANtNtCskLngH8kgpZI_15ruff_python_ast4name4Namej8_ENtB9_7GetSize26get_heap_size_with_trackerNtNtB9_7tracker9NoTrackerECsoTR8nlGN3X_18ty_python_semantic.exit: ; preds = %bb.a, %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameENtNtNtNtBb_4iter6traits8iterator8Iterator4foldTjNtNtCs33Yq3JqQgDT_9get_size27tracker9NoTrackerENCINvXNtNtNtB2q_5impls7feature8smallvecINtCsheqz6YZvxwl_8smallvec8SmallVecABQ_j8_ENtB2q_7GetSize26get_heap_size_with_trackerB2m_E0ECsoTR8nlGN3X_18ty_python_semantic.exit.i, %bb.b
  %.sroa.0.0.i = phi i64 [ %i.q, %bb.b ], [ %i.l, %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameENtNtNtNtBb_4iter6traits8iterator8Iterator4foldTjNtNtCs33Yq3JqQgDT_9get_size27tracker9NoTrackerENCINvXNtNtNtB2q_5impls7feature8smallvecINtCsheqz6YZvxwl_8smallvec8SmallVecABQ_j8_ENtB2q_7GetSize26get_heap_size_with_trackerB2m_E0ECsoTR8nlGN3X_18ty_python_semantic.exit.i ], [ 0, %bb.a ]
  ret i64 %.sroa.0.0.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define internal void @_RNvYINtNtCs45bxiIjzMqg_5salsa8function14IngredientImplNtNvNtNtCsoTR8nlGN3X_18ty_python_semantic5types6narrow1__52all_narrowing_constraints_for_pattern_Configuration_ENtNtB7_10ingredient10Ingredient12memory_usageBY_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 8)) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr nofree nonnull readnone captures(none) %2, ptr noalias readonly align 8 captures(none) %3) unnamed_addr #21 {
bb.a:
  store i64 -1, ptr %0, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define internal void @_RNvYINtNtCs45bxiIjzMqg_5salsa8function14IngredientImplNtNvNtNtCsoTR8nlGN3X_18ty_python_semantic5types6narrows0_1__61all_negative_narrowing_constraints_for_pattern_Configuration_ENtNtB7_10ingredient10Ingredient12memory_usageBY_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 8)) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr nofree nonnull readnone captures(none) %2, ptr noalias readonly align 8 captures(none) %3) unnamed_addr #21 {
bb.a:
  store i64 -1, ptr %0, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define internal void @_RNvYINtNtCs45bxiIjzMqg_5salsa8function14IngredientImplNtNvNtNtCsoTR8nlGN3X_18ty_python_semantic5types6narrows1_1__68all_narrowing_constraints_for_subject_element_pattern_Configuration_ENtNtB7_10ingredient10Ingredient12memory_usageBY_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 8)) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr nofree nonnull readnone captures(none) %2, ptr noalias readonly align 8 captures(none) %3) unnamed_addr #21 {
bb.a:
  store i64 -1, ptr %0, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define internal void @_RNvYINtNtCs45bxiIjzMqg_5salsa8function14IngredientImplNtNvNtNtCsoTR8nlGN3X_18ty_python_semantic5types6narrows3_1__36pattern_success_types_Configuration_ENtNtB7_10ingredient10Ingredient12memory_usageBY_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 8)) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr nofree nonnull readnone captures(none) %2, ptr noalias readonly align 8 captures(none) %3) unnamed_addr #21 {
bb.a:
  store i64 -1, ptr %0, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define internal void @_RNvYINtNtCs45bxiIjzMqg_5salsa8function14IngredientImplNtNvNtNtCsoTR8nlGN3X_18ty_python_semantic5types6narrows_1__55all_narrowing_constraints_for_expression_Configuration_ENtNtB7_10ingredient10Ingredient12memory_usageBY_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 8)) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr nofree nonnull readnone captures(none) %2, ptr noalias readonly align 8 captures(none) %3) unnamed_addr #21 {
bb.a:
  store i64 -1, ptr %0, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define internal void @_RNvYINtNtCs45bxiIjzMqg_5salsa8function14IngredientImplNtNvNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types9dedicated8pydantics0_1__27model_config_Configuration_ENtNtB7_10ingredient10Ingredient12memory_usageB10_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 8)) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr nofree nonnull readnone captures(none) %2, ptr noalias readonly align 8 captures(none) %3) unnamed_addr #21 {
bb.a:
  store i64 -1, ptr %0, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define internal void @_RNvYINtNtCs45bxiIjzMqg_5salsa8function14IngredientImplNtNvNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types9dedicated8pydantics1_1__50has_before_or_plain_field_validator_Configuration_ENtNtB7_10ingredient10Ingredient12memory_usageB10_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 8)) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr nofree nonnull readnone captures(none) %2, ptr noalias readonly align 8 captures(none) %3) unnamed_addr #21 {
bb.a:
  store i64 -1, ptr %0, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define internal void @_RNvYINtNtCs45bxiIjzMqg_5salsa8function14IngredientImplNtNvNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types9dedicated8pydantics_1__28is_root_model_Configuration_ENtNtB7_10ingredient10Ingredient12memory_usageB10_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 8)) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr nofree nonnull readnone captures(none) %2, ptr noalias readonly align 8 captures(none) %3) unnamed_addr #21 {
bb.a:
  store i64 -1, ptr %0, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define internal void @_RNvYINtNtCs45bxiIjzMqg_5salsa8function14IngredientImplNtNvNvMsl_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class10typed_dictNtB10_23DynamicTypedDictLiteral3mro1__19mro__Configuration_ENtNtB7_10ingredient10Ingredient12memory_usageB16_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 8)) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr nofree nonnull readnone captures(none) %2, ptr noalias readonly align 8 captures(none) %3) unnamed_addr #21 {
bb.a:
  store i64 -1, ptr %0, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvYINtNtCs45bxiIjzMqg_5salsa8interned14IngredientImplNtNvNtNtCsoTR8nlGN3X_18ty_python_semantic5types6narrows1_1__68all_narrowing_constraints_for_subject_element_pattern_Configuration_ENtNtB7_10ingredient10Ingredient11as_functionBY_(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #2 {
bb.a:
  ret { ptr, ptr } { ptr null, ptr undef }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef zeroext i1 @_RNvYINtNtCs45bxiIjzMqg_5salsa8interned14IngredientImplNtNvNtNtCsoTR8nlGN3X_18ty_python_semantic5types6narrows1_1__68all_narrowing_constraints_for_subject_element_pattern_Configuration_ENtNtB7_10ingredient10Ingredient31requires_reset_for_new_revisionBY_(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #2 {
bb.a:
  ret i1 false
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvYINtNtCs45bxiIjzMqg_5salsa8interned14IngredientImplNtNvNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types9dedicated8pydantics1_1__50has_before_or_plain_field_validator_Configuration_ENtNtB7_10ingredient10Ingredient11as_functionB10_(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #2 {
bb.a:
  ret { ptr, ptr } { ptr null, ptr undef }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef zeroext i1 @_RNvYINtNtCs45bxiIjzMqg_5salsa8interned14IngredientImplNtNvNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types9dedicated8pydantics1_1__50has_before_or_plain_field_validator_Configuration_ENtNtB7_10ingredient10Ingredient31requires_reset_for_new_revisionB10_(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #2 {
bb.a:
  ret i1 false
}

; Function Attrs: nonlazybind uwtable
define hidden noundef i64 @_RNvYINtNtCscdodAO9FK5_5alloc5boxed3BoxSNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameENtCs33Yq3JqQgDT_9get_size27GetSize13get_heap_sizeCsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.val = load ptr, ptr %0, align 8, !nonnull !15, !noundef !15
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load i64, ptr %i.a, align 8, !noundef !15 ; 3 uses
  %i.b = icmp eq i64 %.val1, 0
  br i1 %i.b, label %_RINvXsg_NtNtCs33Yq3JqQgDT_9get_size25impls9std_typesINtNtCscdodAO9FK5_5alloc5boxed3BoxSNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameENtBa_7GetSize26get_heap_size_with_trackerNtNtBa_7tracker9NoTrackerECsoTR8nlGN3X_18ty_python_semantic.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.a, %.preheader.i
  %.sroa.05.0.i.i = phi i64 [ %i.h, %.preheader.i ], [ 0, %bb.a ] ; 2 uses
  %.sroa.6.0.i.i = phi i1 [ %i.f, %.preheader.i ], [ true, %bb.a ]
  %.sroa.02.0.i.i = phi i64 [ %i.g, %.preheader.i ], [ 0, %bb.a ]
  %i.c = getelementptr inbounds nuw [16 x i8], ptr %.val, i64 %.sroa.05.0.i.i
  %i.d = tail call { i64, i1 } @_RINvXsT_NtCskLngH8kgpZI_15ruff_python_ast4nameNtB6_4NameNtCs33Yq3JqQgDT_9get_size27GetSize26get_heap_size_with_trackerNtNtBU_7tracker9NoTrackerECsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.c, i1 noundef zeroext %.sroa.6.0.i.i) ; 2 uses
  %i.e = extractvalue { i64, i1 } %i.d, 0
  %i.f = extractvalue { i64, i1 } %i.d, 1
  %i.g = add i64 %i.e, %.sroa.02.0.i.i            ; 2 uses
  %i.h = add nuw i64 %.sroa.05.0.i.i, 1           ; 2 uses
  %i.i = icmp eq i64 %i.h, %.val1
  br i1 %i.i, label %_RINvXsg_NtNtCs33Yq3JqQgDT_9get_size25impls9std_typesINtNtCscdodAO9FK5_5alloc5boxed3BoxSNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameENtBa_7GetSize26get_heap_size_with_trackerNtNtBa_7tracker9NoTrackerECsoTR8nlGN3X_18ty_python_semantic.exit, label %.preheader.i

_RINvXsg_NtNtCs33Yq3JqQgDT_9get_size25impls9std_typesINtNtCscdodAO9FK5_5alloc5boxed3BoxSNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameENtBa_7GetSize26get_heap_size_with_trackerNtNtBa_7tracker9NoTrackerECsoTR8nlGN3X_18ty_python_semantic.exit: ; preds = %.preheader.i, %bb.a
  %.sroa.0.0.i.i = phi i64 [ 0, %bb.a ], [ %i.g, %.preheader.i ]
  %i.j = shl i64 %.val1, 4
  %i.k = add i64 %.sroa.0.0.i.i, %i.j
  ret i64 %i.k
}

; Function Attrs: nonlazybind uwtable
define hidden noundef i64 @_RNvYINtNtCscdodAO9FK5_5alloc5boxed3BoxSNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeENtCs33Yq3JqQgDT_9get_size27GetSize13get_heap_sizeBF_(ptr noalias noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !25270)
  %i.a = load ptr, ptr %0, align 8, !alias.scope !25270, !nonnull !15, !noundef !15
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8, !alias.scope !25270, !noundef !15 ; 3 uses
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %_RINvXsg_NtNtCs33Yq3JqQgDT_9get_size25impls9std_typesINtNtCscdodAO9FK5_5alloc5boxed3BoxSNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeENtBa_7GetSize26get_heap_size_with_trackerNtNtBa_7tracker9NoTrackerEB1r_.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.a, %.preheader.i
  %.sroa.05.0.i.i = phi i64 [ %i.j, %.preheader.i ], [ 0, %bb.a ] ; 2 uses
  %.sroa.6.0.i.i = phi i1 [ %i.h, %.preheader.i ], [ true, %bb.a ]
  %.sroa.02.0.i.i = phi i64 [ %i.i, %.preheader.i ], [ 0, %bb.a ]
  %i.e = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %.sroa.05.0.i.i
  %i.f = tail call { i64, i1 } @_RINvXs2T_NtCsoTR8nlGN3X_18ty_python_semantic5typesNtB7_4TypeNtCs33Yq3JqQgDT_9get_size27GetSize26get_heap_size_with_trackerNtNtBY_7tracker9NoTrackerEB9_(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(16) %i.e, i1 noundef zeroext %.sroa.6.0.i.i), !noalias !25270 ; 2 uses
  %i.g = extractvalue { i64, i1 } %i.f, 0
  %i.h = extractvalue { i64, i1 } %i.f, 1
  %i.i = add i64 %i.g, %.sroa.02.0.i.i            ; 2 uses
  %i.j = add nuw i64 %.sroa.05.0.i.i, 1           ; 2 uses
  %i.k = icmp eq i64 %i.j, %i.c
  br i1 %i.k, label %_RINvXsg_NtNtCs33Yq3JqQgDT_9get_size25impls9std_typesINtNtCscdodAO9FK5_5alloc5boxed3BoxSNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeENtBa_7GetSize26get_heap_size_with_trackerNtNtBa_7tracker9NoTrackerEB1r_.exit, label %.preheader.i

_RINvXsg_NtNtCs33Yq3JqQgDT_9get_size25impls9std_typesINtNtCscdodAO9FK5_5alloc5boxed3BoxSNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeENtBa_7GetSize26get_heap_size_with_trackerNtNtBa_7tracker9NoTrackerEB1r_.exit: ; preds = %.preheader.i, %bb.a
  %.pn.i.i = phi i64 [ 0, %bb.a ], [ %i.i, %.preheader.i ]
  %i.l = shl i64 %i.c, 4
  %i.m = add i64 %.pn.i.i, %i.l
  ret i64 %i.m
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden noundef i64 @_RNvYINtNtCscdodAO9FK5_5alloc5boxed3BoxSNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class12ClassLiteralENtCs33Yq3JqQgDT_9get_size27GetSize13get_heap_sizeBH_(ptr noalias noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #6 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load i64, ptr %i.a, align 8, !noundef !15
  %i.b = mul i64 %.val1, 12
  ret i64 %i.b
end_hunk_0
