Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/delta-rs/original/deltalake_derive-db7c0fdfc22c5c32.deltalake_derive.c837b03badaaab8c-cgu.3?download=true
inline.NumInlined: 153
inline.NumDeleted: 114
begin_hunk_0_@_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtBL_6string6StringEECshbKHpCRGxgC_16deltalake_derive:bb.a
  ret void

bb.d:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #16
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc7raw_vec6RawVecNtNtBL_6string6StringEECshbKHpCRGxgC_16deltalake_derive.exit: ; preds = %bb.b
  resume { ptr, i32 } %i.a
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecReEECshbKHpCRGxgC_16deltalake_derive(ptr noalias noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecReENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCshbKHpCRGxgC_16deltalake_derive(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecReENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCshbKHpCRGxgC_16deltalake_derive(ptr noalias noundef nonnull align 8 dereferenceable(16) %0)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc7raw_vec6RawVecReEECshbKHpCRGxgC_16deltalake_derive.exit unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecReENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCshbKHpCRGxgC_16deltalake_derive(ptr noalias noundef nonnull align 8 dereferenceable(16) %0)
  ret void

bb.d:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #16
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc7raw_vec6RawVecReEECshbKHpCRGxgC_16deltalake_derive.exit: ; preds = %bb.b
  resume { ptr, i32 } %i.a
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecjEECshbKHpCRGxgC_16deltalake_derive(ptr noalias noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecjENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCshbKHpCRGxgC_16deltalake_derive(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecjENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCshbKHpCRGxgC_16deltalake_derive(ptr noalias noundef nonnull align 8 dereferenceable(16) %0)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc7raw_vec6RawVecjEECshbKHpCRGxgC_16deltalake_derive.exit unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecjENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCshbKHpCRGxgC_16deltalake_derive(ptr noalias noundef nonnull align 8 dereferenceable(16) %0)
  ret void

bb.d:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #16
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc7raw_vec6RawVecjEECshbKHpCRGxgC_16deltalake_derive.exit: ; preds = %bb.b
  resume { ptr, i32 } %i.a
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCsbjGuDcEILED_11proc_macro211TokenStreamECshbKHpCRGxgC_16deltalake_derive(ptr noalias noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !35, !alias.scope !36, !noundef !17
  %.not.i = icmp eq i64 %i.a, -9223372036854775808
  br i1 %.not.i, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.c = load i32, ptr %i.b, align 8, !alias.scope !39, !noundef !17
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCsjJ0p09o2jmV_10proc_macro11TokenStreamECshbKHpCRGxgC_16deltalake_derive.exit.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  invoke void @_RNvXs0_NtNtCsjJ0p09o2jmV_10proc_macro6bridge6clientNtB5_11TokenStreamNtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull align 4 dereferenceable(4) %i.b)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCsjJ0p09o2jmV_10proc_macro11TokenStreamECshbKHpCRGxgC_16deltalake_derive.exit.i.i unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtCsjJ0p09o2jmV_10proc_macro9TokenTreeEECshbKHpCRGxgC_16deltalake_derive(ptr noalias noundef nonnull align 8 dereferenceable(32) %0) #17
          to label %common.resume.i unwind label %bb.g

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCsjJ0p09o2jmV_10proc_macro11TokenStreamECshbKHpCRGxgC_16deltalake_derive.exit.i.i: ; preds = %bb.c, %bb.b
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtCsjJ0p09o2jmV_10proc_macro9TokenTreeENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCshbKHpCRGxgC_16deltalake_derive(ptr noalias noundef nonnull align 8 dereferenceable(32) %0)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsbjGuDcEILED_11proc_macro23imp19DeferredTokenStreamECshbKHpCRGxgC_16deltalake_derive.exit.i unwind label %bb.e

bb.e:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCsjJ0p09o2jmV_10proc_macro11TokenStreamECshbKHpCRGxgC_16deltalake_derive.exit.i.i
  %i.f = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtCsjJ0p09o2jmV_10proc_macro9TokenTreeENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCshbKHpCRGxgC_16deltalake_derive(ptr noalias noundef nonnull align 8 dereferenceable(32) %0)
          to label %common.resume.i unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #16
  unreachable

common.resume.i:                                  ; preds = %bb.j, %bb.i, %bb.e, %bb.d
  %common.resume.op.i = phi { ptr, i32 } [ %i.e, %bb.d ], [ %i.f, %bb.e ], [ %i.j, %bb.j ], [ %i.j, %bb.i ]
  resume { ptr, i32 } %common.resume.op.i

bb.g:                                             ; preds = %bb.d
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #16
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsbjGuDcEILED_11proc_macro23imp19DeferredTokenStreamECshbKHpCRGxgC_16deltalake_derive.exit.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCsjJ0p09o2jmV_10proc_macro11TokenStreamECshbKHpCRGxgC_16deltalake_derive.exit.i.i
  tail call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtCsjJ0p09o2jmV_10proc_macro9TokenTreeENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCshbKHpCRGxgC_16deltalake_derive(ptr noalias noundef nonnull align 8 dereferenceable(32) %0)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsbjGuDcEILED_11proc_macro23imp11TokenStreamECshbKHpCRGxgC_16deltalake_derive.exit

bb.h:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  invoke void @_RNvXs0_NtCsbjGuDcEILED_11proc_macro28fallbackNtB5_11TokenStreamNtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.i)
          to label %bb.k unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.j = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !46)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !49)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !52)
  %i.k = load ptr, ptr %i.i, align 8, !alias.scope !55, !nonnull !17, !noundef !17 ; 2 uses
  %i.l = load i64, ptr %i.k, align 8, !noalias !58, !noundef !17
  %i.m = add i64 %i.l, -1                         ; 2 uses
  store i64 %i.m, ptr %i.k, align 8, !noalias !58
  %i.n = icmp eq i64 %i.m, 0
  br i1 %i.n, label %bb.j, label %common.resume.i

bb.j:                                             ; preds = %bb.i
  invoke void @_RNvMs6_NtCs6Po7BT7Nknu_5alloc2rcINtB5_2RcINtNtB7_3vec3VecNtCsbjGuDcEILED_11proc_macro29TokenTreeEE9drop_slowBV_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.i) #18
          to label %common.resume.i unwind label %bb.m

bb.k:                                             ; preds = %bb.h
  tail call void @llvm.experimental.noalias.scope.decl(metadata !59)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !62)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !65)
  %i.o = load ptr, ptr %i.i, align 8, !alias.scope !68, !nonnull !17, !noundef !17 ; 2 uses
  %i.p = load i64, ptr %i.o, align 8, !noalias !69, !noundef !17
  %i.q = add i64 %i.p, -1                         ; 2 uses
  store i64 %i.q, ptr %i.o, align 8, !noalias !69
  %i.r = icmp eq i64 %i.q, 0
  br i1 %i.r, label %bb.l, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsbjGuDcEILED_11proc_macro23imp11TokenStreamECshbKHpCRGxgC_16deltalake_derive.exit

bb.l:                                             ; preds = %bb.k
  tail call void @_RNvMs6_NtCs6Po7BT7Nknu_5alloc2rcINtB5_2RcINtNtB7_3vec3VecNtCsbjGuDcEILED_11proc_macro29TokenTreeEE9drop_slowBV_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.i) #18
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsbjGuDcEILED_11proc_macro23imp11TokenStreamECshbKHpCRGxgC_16deltalake_derive.exit

bb.m:                                             ; preds = %bb.j
  %i.s = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #16
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsbjGuDcEILED_11proc_macro23imp11TokenStreamECshbKHpCRGxgC_16deltalake_derive.exit: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsbjGuDcEILED_11proc_macro23imp19DeferredTokenStreamECshbKHpCRGxgC_16deltalake_derive.exit.i, %bb.k, %bb.l
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECshbKHpCRGxgC_16deltalake_derive(ptr noalias noundef align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCshbKHpCRGxgC_16deltalake_derive(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECshbKHpCRGxgC_16deltalake_derive.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCshbKHpCRGxgC_16deltalake_derive(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc7raw_vec6RawVechEECshbKHpCRGxgC_16deltalake_derive.exit.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #16
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc7raw_vec6RawVechEECshbKHpCRGxgC_16deltalake_derive.exit.i: ; preds = %bb.b
  resume { ptr, i32 } %i.a

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECshbKHpCRGxgC_16deltalake_derive.exit: ; preds = %bb.a
  tail call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCshbKHpCRGxgC_16deltalake_derive(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtCsl1mHGn7pXMx_12convert_case8boundary5splitRNtNtCs6Po7BT7Nknu_5alloc6string6StringECshbKHpCRGxgC_16deltalake_derive(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %1, ptr noalias noundef nonnull readonly align 8 captures(address) %2, i64 noundef range(i64 0, 192153584101141163) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 7 uses
  %i.b = alloca [88 x i8], align 8                ; 4 uses
  %i.c = alloca [192 x i8], align 8               ; 7 uses
  %i.d = alloca [48 x i8], align 8                ; 2 uses
  %i.e = alloca [48 x i8], align 8                ; 2 uses
  %i.f = alloca [48 x i8], align 8                ; 2 uses
  %i.g = alloca [48 x i8], align 8                ; 2 uses
  %i.h = alloca [200 x i8], align 8               ; 3 uses
  %i.i = alloca [48 x i8], align 8                ; 3 uses
  %i.j = alloca [24 x i8], align 8                ; 7 uses
  %i.k = alloca [24 x i8], align 8                ; 7 uses
  %i.l = alloca [24 x i8], align 8                ; 9 uses
  %.val = load ptr, ptr %1, align 8, !nonnull !17, !align !70, !noundef !17 ; 2 uses
  %i.m = getelementptr i8, ptr %.val, i64 8
  %.val.i = load ptr, ptr %i.m, align 8, !nonnull !17, !noundef !17 ; 8 uses
  %i.n = getelementptr i8, ptr %.val, i64 16
  %.val1.i = load i64, ptr %i.n, align 8, !noundef !17 ; 15 uses
  %i.o = icmp eq i64 %.val1.i, 0
  br i1 %i.o, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i64 0, ptr %i.l, align 8, !alias.scope !71
  %i.p = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 4 uses
  store ptr inttoptr (i64 8 to ptr), ptr %i.p, align 8, !alias.scope !71
  %i.q = getelementptr inbounds nuw i8, ptr %i.l, i64 16 ; 5 uses
  store i64 0, ptr %i.q, align 8, !alias.scope !71
  tail call void @llvm.experimental.noalias.scope.decl(metadata !74)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !77)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !80
  %i.r = ptrtoint ptr %.val.i to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !82
  invoke void @_RNvMs4_NtCskxeEtmv7ubq_20unicode_segmentation8graphemeNtB5_14GraphemeCursor3new(ptr noalias noundef nonnull sret([88 x i8]) align 8 captures(address) dereferenceable(192) %i.c, i64 noundef 0, i64 noundef %.val1.i, i1 noundef zeroext true)
          to label %.noexc unwind label %.body31.thread60

.noexc:                                           ; preds = %bb.b
  invoke void @_RNvMs4_NtCskxeEtmv7ubq_20unicode_segmentation8graphemeNtB5_14GraphemeCursor3new(ptr noalias noundef nonnull sret([88 x i8]) align 8 captures(address) dereferenceable(88) %i.b, i64 noundef %.val1.i, i64 noundef %.val1.i, i1 noundef zeroext true)
          to label %bb.e unwind label %.body31.thread60

bb.c:                                             ; preds = %bb.a
  store i64 0, ptr %0, align 8, !alias.scope !84
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.s, align 8, !alias.scope !84
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.t, align 8, !alias.scope !84
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecjEECshbKHpCRGxgC_16deltalake_derive.exit

bb.d:                                             ; preds = %.body
  br i1 %.sroa.06.3, label %bb.an, label %.body31.thread

.body31.thread60:                                 ; preds = %bb.e, %.noexc, %bb.b
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  br label %bb.an

bb.e:                                             ; preds = %.noexc
  %i.u = getelementptr inbounds nuw i8, ptr %i.c, i64 176
  store ptr %.val.i, ptr %i.u, align 8, !alias.scope !87, !noalias !90
  %i.v = getelementptr inbounds nuw i8, ptr %i.c, i64 184
  store i64 %.val1.i, ptr %i.v, align 8, !alias.scope !87, !noalias !90
  %i.w = getelementptr inbounds nuw i8, ptr %i.c, i64 88
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.w, ptr noundef nonnull align 8 dereferenceable(88) %i.b, i64 88, i1 false), !noalias !90
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !82
  %i.x = getelementptr inbounds nuw i8, ptr %i.h, i64 192
  store i64 %i.r, ptr %i.x, align 8, !alias.scope !92, !noalias !93
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(200) %i.h, ptr noundef nonnull align 8 dereferenceable(192) %i.c, i64 192, i1 false), !noalias !93
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !80
  invoke void @_RINvYNtNtCskxeEtmv7ubq_20unicode_segmentation8grapheme15GraphemeIndicesNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator5unzipjReINtNtCs6Po7BT7Nknu_5alloc3vec3VecjEIB2c_B29_EECshbKHpCRGxgC_16deltalake_derive(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.i, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(200) %i.h)
          to label %bb.f unwind label %.body31.thread60

.loopexit70:                                      ; preds = %bb.y
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit:                      ; preds = %bb.al, %bb.ac, %bb.ab, %bb.aa
  %lpad.loopexit71 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp:             ; preds = %.invoke, %bb.x, %bb.m, %bb.l, %bb.g
  %.sroa.06.2.ph.ph = phi i1 [ true, %.invoke ], [ true, %bb.x ], [ true, %bb.g ], [ false, %bb.m ], [ true, %bb.l ]
  %lpad.loopexit.split-lp72 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp:                               ; preds = %.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp, %.loopexit70
  %.sroa.06.2 = phi i1 [ true, %.loopexit70 ], [ true, %.loopexit.split-lp.loopexit ], [ %.sroa.06.2.ph.ph, %.loopexit.split-lp.loopexit.split-lp ]
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit70 ], [ %lpad.loopexit71, %.loopexit.split-lp.loopexit ], [ %lpad.loopexit.split-lp72, %.loopexit.split-lp.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecReEECshbKHpCRGxgC_16deltalake_derive(ptr noalias noundef align 8 dereferenceable(24) %i.j) #17
          to label %.body unwind label %bb.am

bb.f:                                             ; preds = %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.k, ptr noundef nonnull align 8 dereferenceable(24) %i.i, i64 24, i1 false)
  %i.y = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.j, ptr noundef nonnull align 8 dereferenceable(24) %i.y, i64 24, i1 false)
  %i.z = getelementptr inbounds nuw i8, ptr %i.j, i64 16 ; 2 uses
  %.val12 = load i64, ptr %i.z, align 8, !noundef !17 ; 4 uses
  %i.aa = icmp ult i64 %.val12, 576460752303423488
  call void @llvm.assume(i1 %i.aa)
  %i.ab = add nsw i64 %.val12, -1                 ; 4 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.k, i64 16 ; 3 uses
  %.val14 = load i64, ptr %i.ad, align 8, !noundef !17 ; 2 uses
  %i.ae = icmp ult i64 %i.ab, %.val14
  br i1 %i.ae, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  invoke void @_RNvNtCsbvkFyIu7lgC_4core9panicking18panic_bounds_check(i64 noundef range(i64 -1, 576460752303423487) %i.ab, i64 noundef range(i64 0, 1152921504606846976) %.val14, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #15
          to label %.noexc24 unwind label %.loopexit.split-lp.loopexit.split-lp

.noexc24:                                         ; preds = %bb.g
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.af = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 2 uses
  %.val15 = load ptr, ptr %i.af, align 8, !nonnull !17, !noundef !17
  %.val13 = load ptr, ptr %i.ac, align 8, !nonnull !17, !noundef !17
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %.val13, i64 %i.ab
  %i.ah = load i64, ptr %i.ag, align 8, !noundef !17
  %i.ai = getelementptr inbounds nuw [16 x i8], ptr %.val15, i64 %i.ab
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %i.ak = load i64, ptr %i.aj, align 8, !noundef !17
  %i.al = add i64 %i.ak, %i.ah                    ; 2 uses
  %i.am = getelementptr inbounds nuw [48 x i8], ptr %2, i64 %3
  br label %.lr.ph

.lr.ph:                                           ; preds = %bb.h, %_RNvMsF_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecReE4pushCshbKHpCRGxgC_16deltalake_derive.exit42
  %.sroa.0.0.ph91 = phi i64 [ 0, %bb.h ], [ %9, %_RNvMsF_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecReE4pushCshbKHpCRGxgC_16deltalake_derive.exit42 ] ; 13 uses
  %.sroa.048.0.ph90 = phi i64 [ 0, %bb.h ], [ %i.bj, %_RNvMsF_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecReE4pushCshbKHpCRGxgC_16deltalake_derive.exit42 ]
  br label %bb.v

.loopexit:                                        ; preds = %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterNtNtCsl1mHGn7pXMx_12convert_case8boundary8BoundaryENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCshbKHpCRGxgC_16deltalake_derive.exit
  %i.an = icmp ult i64 %i.bj, %.val12
  br i1 %i.an, label %bb.v, label %.outer._crit_edge

.outer._crit_edge:                                ; preds = %_RNvMsF_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecReE4pushCshbKHpCRGxgC_16deltalake_derive.exit42, %.loopexit
  %.sroa.0.0.ph.lcssa87 = phi i64 [ %.sroa.0.0.ph91, %.loopexit ], [ %9, %_RNvMsF_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecReE4pushCshbKHpCRGxgC_16deltalake_derive.exit42 ] ; 8 uses
  %i.ao = icmp eq i64 %.sroa.0.0.ph.lcssa87, 0
  br i1 %i.ao, label %bb.k, label %bb.i

bb.i:                                             ; preds = %.outer._crit_edge
  %.not.i.i.i = icmp ult i64 %.sroa.0.0.ph.lcssa87, %.val1.i
  br i1 %.not.i.i.i, label %bb.j, label %.split.i.i.i

.split.i.i.i:                                     ; preds = %bb.i
  %i.ap = icmp eq i64 %.sroa.0.0.ph.lcssa87, %.val1.i
  br i1 %i.ap, label %bb.k, label %.invoke

bb.j:                                             ; preds = %bb.i
  %i.aq = getelementptr inbounds nuw i8, ptr %.val.i, i64 %.sroa.0.0.ph.lcssa87
  %i.ar = load i8, ptr %i.aq, align 1, !alias.scope !94, !noundef !17
  %i.as = icmp sgt i8 %i.ar, -65
  br i1 %i.as, label %bb.k, label %.invoke

bb.k:                                             ; preds = %bb.j, %.split.i.i.i, %.outer._crit_edge
  %i.at = sub nuw i64 %.val1.i, %.sroa.0.0.ph.lcssa87
  %i.au = getelementptr inbounds nuw i8, ptr %.val.i, i64 %.sroa.0.0.ph.lcssa87
  %i.av = load i64, ptr %i.q, align 8, !alias.scope !101, !noalias !106, !noundef !17 ; 4 uses
  %i.aw = load i64, ptr %i.l, align 8, !range !109, !alias.scope !101, !noalias !106, !noundef !17
  %i.ax = icmp eq i64 %i.av, %i.aw
  br i1 %i.ax, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  invoke void @_RNvMs3_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecReE8grow_oneCsjJ0p09o2jmV_10proc_macro(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.l)
          to label %bb.m unwind label %.loopexit.split-lp.loopexit.split-lp

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.ay = load ptr, ptr %i.p, align 8, !alias.scope !101, !noalias !106, !nonnull !17, !noundef !17
  %i.az = getelementptr inbounds nuw [16 x i8], ptr %i.ay, i64 %i.av ; 2 uses
  store ptr %i.au, ptr %i.az, align 8, !noalias !106
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  store i64 %i.at, ptr %i.ba, align 8
  %i.bb = add nsw i64 %i.av, 1                    ; 2 uses
  store i64 %i.bb, ptr %i.q, align 8, !alias.scope !101, !noalias !106
  %.sroa.053.0.copyload = load i64, ptr %i.l, align 8
  %.sroa.254.0.copyload = load ptr, ptr %i.p, align 8, !nonnull !17, !noundef !17 ; 3 uses
  %i.bc = icmp slt i64 %i.av, 576460752303423487
  call void @llvm.assume(i1 %i.bc)
  %i.bd = getelementptr inbounds nuw [16 x i8], ptr %.sroa.254.0.copyload, i64 %i.bb
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !110
  store ptr %.sroa.254.0.copyload, ptr %i.a, align 8, !alias.scope !117, !noalias !121
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %.sroa.254.0.copyload, ptr %.sroa.2.0..sroa_idx, align 8, !alias.scope !117, !noalias !121
  %.sroa.352.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %.sroa.053.0.copyload, ptr %.sroa.352.0..sroa_idx, align 8, !alias.scope !117, !noalias !121
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr %i.bd, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !117, !noalias !121
  invoke void @_RNvXs_NtNtCs6Po7BT7Nknu_5alloc3vec14spec_from_iterINtB6_3VecReEINtB4_12SpecFromIterBW_INtNtB6_9into_iter8IntoIterBW_EE9from_iterCshbKHpCRGxgC_16deltalake_derive(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.a)
          to label %bb.n unwind label %.loopexit.split-lp.loopexit.split-lp

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !110
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecReENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCshbKHpCRGxgC_16deltalake_derive(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %bb.p unwind label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.be = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecReENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCshbKHpCRGxgC_16deltalake_derive(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %.body unwind label %bb.q

bb.p:                                             ; preds = %bb.n
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecReENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCshbKHpCRGxgC_16deltalake_derive(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecReEECshbKHpCRGxgC_16deltalake_derive.exit unwind label %bb.r

bb.q:                                             ; preds = %bb.o
  %i.bf = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #16
  unreachable

.body:                                            ; preds = %bb.r, %bb.o, %.loopexit.split-lp
  %.sroa.06.3 = phi i1 [ %.sroa.06.2, %.loopexit.split-lp ], [ false, %bb.o ], [ false, %bb.r ]
  %.pn = phi { ptr, i32 } [ %lpad.phi, %.loopexit.split-lp ], [ %i.be, %bb.o ], [ %i.bg, %bb.r ] ; 2 uses
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecjEECshbKHpCRGxgC_16deltalake_derive(ptr noalias noundef align 8 dereferenceable(24) %i.k) #17
          to label %bb.d unwind label %bb.am

bb.r:                                             ; preds = %bb.p
  %i.bg = landingpad { ptr, i32 }
          cleanup
  br label %.body

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecReEECshbKHpCRGxgC_16deltalake_derive.exit: ; preds = %bb.p
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecjENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCshbKHpCRGxgC_16deltalake_derive(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.k)
          to label %bb.t unwind label %bb.s

bb.s:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecReEECshbKHpCRGxgC_16deltalake_derive.exit
  %i.bh = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecjENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCshbKHpCRGxgC_16deltalake_derive(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.k)
          to label %.body31.thread unwind label %bb.u

bb.t:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecReEECshbKHpCRGxgC_16deltalake_derive.exit
  call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecjENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCshbKHpCRGxgC_16deltalake_derive(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.k)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecjEECshbKHpCRGxgC_16deltalake_derive.exit

bb.u:                                             ; preds = %bb.s
  %i.bi = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #16
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecjEECshbKHpCRGxgC_16deltalake_derive.exit: ; preds = %bb.t, %bb.c
  ret void

bb.v:                                             ; preds = %.lr.ph, %.loopexit
  %.sroa.048.088 = phi i64 [ %.sroa.048.0.ph90, %.lr.ph ], [ %i.bj, %.loopexit ] ; 7 uses
  %i.bj = add nuw nsw i64 %.sroa.048.088, 1       ; 4 uses
  br label %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterNtNtCsl1mHGn7pXMx_12convert_case8boundary8BoundaryENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCshbKHpCRGxgC_16deltalake_derive.exit

_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterNtNtCsl1mHGn7pXMx_12convert_case8boundary8BoundaryENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCshbKHpCRGxgC_16deltalake_derive.exit: ; preds = %bb.z, %bb.v
  %.sroa.049.0 = phi ptr [ %2, %bb.v ], [ %spec.select, %bb.z ] ; 6 uses
  %i.bk = icmp eq ptr %.sroa.049.0, %i.am         ; 2 uses
  %spec.select.idx = select i1 %i.bk, i64 0, i64 48
  %spec.select = getelementptr inbounds nuw i8, ptr %.sroa.049.0, i64 %spec.select.idx
  br i1 %i.bk, label %.loopexit, label %bb.w

bb.w:                                             ; preds = %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterNtNtCsl1mHGn7pXMx_12convert_case8boundary8BoundaryENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCshbKHpCRGxgC_16deltalake_derive.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.g, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.049.0, i64 48, i1 false)
  %.val18 = load i64, ptr %i.z, align 8, !noundef !17 ; 4 uses
  %i.bl = icmp ugt i64 %.sroa.048.088, %.val18
  br i1 %i.bl, label %bb.x, label %bb.y, !prof !122

bb.x:                                             ; preds = %bb.w
  invoke void @_RNvNtNtCsbvkFyIu7lgC_4core5slice5index16slice_index_fail(i64 noundef %.sroa.048.088, i64 noundef range(i64 0, 576460752303423488) %.val18, i64 noundef range(i64 0, 576460752303423488) %.val18, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @5) #15
          to label %.noexc33 unwind label %.loopexit.split-lp.loopexit.split-lp

.noexc33:                                         ; preds = %bb.x
  unreachable

bb.y:                                             ; preds = %bb.w
  %.val17 = load ptr, ptr %i.af, align 8, !nonnull !17, !noundef !17
  %i.bm = sub nuw nsw i64 %.val18, %.sroa.048.088
  %i.bn = getelementptr inbounds nuw [16 x i8], ptr %.val17, i64 %.sroa.048.088
  %i.bo = invoke noundef zeroext i1 @_RNvMNtCsl1mHGn7pXMx_12convert_case8boundaryNtB2_8Boundary7matches(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(48) %i.g, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.bn, i64 noundef %i.bm)
          to label %bb.z unwind label %.loopexit70

bb.z:                                             ; preds = %bb.y
  br i1 %i.bo, label %bb.aa, label %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterNtNtCsl1mHGn7pXMx_12convert_case8boundary8BoundaryENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCshbKHpCRGxgC_16deltalake_derive.exit

bb.aa:                                            ; preds = %bb.z
  %.val21 = load ptr, ptr %i.ac, align 8, !nonnull !17, !noundef !17
  %.val22 = load i64, ptr %i.ad, align 8, !noundef !17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.f, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.049.0, i64 48, i1 false)
  %i.bp = invoke noundef i64 @_RNvMNtCsl1mHGn7pXMx_12convert_case8boundaryNtB2_8Boundary5start(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(48) %i.f)
          to label %4 unwind label %.loopexit.split-lp.loopexit

4:                                                ; preds = %bb.aa
  %5 = add i64 %i.bp, %.sroa.048.088              ; 2 uses
  %.not = icmp ult i64 %5, %.val22
  br i1 %.not, label %.else45, label %bb.ab

.else45:                                          ; preds = %4
  %6 = getelementptr inbounds nuw [8 x i8], ptr %.val21, i64 %5
  %.else.val46 = load i64, ptr %6, align 8, !noundef !17
  br label %bb.ab

bb.ab:                                            ; preds = %.else45, %4
  %7 = phi i64 [ %i.al, %4 ], [ %.else.val46, %.else45 ] ; 11 uses
  %.val19 = load ptr, ptr %i.ac, align 8, !nonnull !17, !noundef !17
  %.val20 = load i64, ptr %i.ad, align 8, !noundef !17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.e, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.049.0, i64 48, i1 false)
  %i.bq = invoke noundef i64 @_RNvMNtCsl1mHGn7pXMx_12convert_case8boundaryNtB2_8Boundary5start(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(48) %i.e)
          to label %bb.ac unwind label %.loopexit.split-lp.loopexit

bb.ac:                                            ; preds = %bb.ab
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.d, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.049.0, i64 48, i1 false)
  %i.br = invoke noundef i64 @_RNvMNtCsl1mHGn7pXMx_12convert_case8boundaryNtB2_8Boundary3len(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(48) %i.d)
          to label %bb.ad unwind label %.loopexit.split-lp.loopexit

bb.ad:                                            ; preds = %bb.ac
  %i.bs = add i64 %i.bq, %.sroa.048.088
  %i.bt = add i64 %i.bs, %i.br                    ; 2 uses
  %.not69 = icmp ult i64 %i.bt, %.val20
  br i1 %.not69, label %.else, label %.cont

.else:                                            ; preds = %bb.ad
  %8 = getelementptr inbounds nuw [8 x i8], ptr %.val19, i64 %i.bt
  %.else.val = load i64, ptr %8, align 8, !noundef !17
  br label %.cont

.cont:                                            ; preds = %bb.ad, %.else
  %9 = phi i64 [ %i.al, %bb.ad ], [ %.else.val, %.else ] ; 2 uses
  %.not.i.i.i38 = icmp ugt i64 %.sroa.0.0.ph91, %7
  br i1 %.not.i.i.i38, label %.invoke, label %bb.ae

bb.ae:                                            ; preds = %.cont
  %i.bu = icmp eq i64 %.sroa.0.0.ph91, 0
  br i1 %i.bu, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %.not5.i.i.i = icmp ult i64 %.sroa.0.0.ph91, %.val1.i
  br i1 %.not5.i.i.i, label %bb.ah, label %.split.i.i.i39

bb.ag:                                            ; preds = %bb.ah, %.split.i.i.i39, %bb.ae
  %i.bv = icmp eq i64 %7, 0
  br i1 %i.bv, label %bb.ak, label %bb.ai

.split.i.i.i39:                                   ; preds = %bb.af
  %i.bw = icmp eq i64 %.sroa.0.0.ph91, %.val1.i
  br i1 %i.bw, label %bb.ag, label %.invoke

bb.ah:                                            ; preds = %bb.af
  %i.bx = getelementptr inbounds nuw i8, ptr %.val.i, i64 %.sroa.0.0.ph91
  %i.by = load i8, ptr %i.bx, align 1, !alias.scope !123, !noundef !17
  %i.bz = icmp sgt i8 %i.by, -65
  br i1 %i.bz, label %bb.ag, label %.invoke

bb.ai:                                            ; preds = %bb.ag
  %.not6.i.i.i = icmp ult i64 %7, %.val1.i
  br i1 %.not6.i.i.i, label %bb.aj, label %.split7.i.i.i

.split7.i.i.i:                                    ; preds = %bb.ai
  %i.ca = icmp eq i64 %7, %.val1.i
  br i1 %i.ca, label %bb.ak, label %.invoke

bb.aj:                                            ; preds = %bb.ai
  %i.cb = getelementptr inbounds nuw i8, ptr %.val.i, i64 %7
  %i.cc = load i8, ptr %i.cb, align 1, !alias.scope !123, !noundef !17
  %i.cd = icmp sgt i8 %i.cc, -65
  br i1 %i.cd, label %bb.ak, label %.invoke

.invoke:                                          ; preds = %.cont, %.split.i.i.i39, %bb.ah, %.split7.i.i.i, %bb.aj, %.split.i.i.i, %bb.j
  %i.ce = phi i64 [ %.sroa.0.0.ph.lcssa87, %.split.i.i.i ], [ %.sroa.0.0.ph.lcssa87, %bb.j ], [ %.sroa.0.0.ph91, %bb.aj ], [ %.sroa.0.0.ph91, %.split7.i.i.i ], [ %.sroa.0.0.ph91, %bb.ah ], [ %.sroa.0.0.ph91, %.split.i.i.i39 ], [ %.sroa.0.0.ph91, %.cont ]
  %i.cf = phi i64 [ %.val1.i, %.split.i.i.i ], [ %.val1.i, %bb.j ], [ %7, %bb.aj ], [ %7, %.split7.i.i.i ], [ %7, %bb.ah ], [ %7, %.split.i.i.i39 ], [ %7, %.cont ]
  %i.cg = phi ptr [ @4, %.split.i.i.i ], [ @4, %bb.j ], [ @6, %bb.aj ], [ @6, %.split7.i.i.i ], [ @6, %bb.ah ], [ @6, %.split.i.i.i39 ], [ @6, %.cont ]
  invoke void @_RNvNtCsbvkFyIu7lgC_4core3str16slice_error_fail(ptr noalias noundef nonnull readonly captures(address, read_provenance) %.val.i, i64 noundef %.val1.i, i64 noundef %i.ce, i64 noundef %i.cf, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.cg) #15
          to label %.cont138 unwind label %.loopexit.split-lp.loopexit.split-lp

.cont138:                                         ; preds = %.invoke
  unreachable

bb.ak:                                            ; preds = %bb.aj, %.split7.i.i.i, %bb.ag
  %i.ch = sub nuw i64 %7, %.sroa.0.0.ph91
  %i.ci = getelementptr inbounds nuw i8, ptr %.val.i, i64 %.sroa.0.0.ph91
  %i.cj = load i64, ptr %i.q, align 8, !alias.scope !130, !noalias !135, !noundef !17 ; 3 uses
  %i.ck = load i64, ptr %i.l, align 8, !range !109, !alias.scope !130, !noalias !135, !noundef !17
  %i.cl = icmp eq i64 %i.cj, %i.ck
  br i1 %i.cl, label %bb.al, label %_RNvMsF_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecReE4pushCshbKHpCRGxgC_16deltalake_derive.exit42

bb.al:                                            ; preds = %bb.ak
  invoke void @_RNvMs3_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecReE8grow_oneCsjJ0p09o2jmV_10proc_macro(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.l)
          to label %_RNvMsF_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecReE4pushCshbKHpCRGxgC_16deltalake_derive.exit42 unwind label %.loopexit.split-lp.loopexit

_RNvMsF_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecReE4pushCshbKHpCRGxgC_16deltalake_derive.exit42: ; preds = %bb.al, %bb.ak
  %i.cm = load ptr, ptr %i.p, align 8, !alias.scope !130, !noalias !135, !nonnull !17, !noundef !17
  %i.cn = getelementptr inbounds nuw [16 x i8], ptr %i.cm, i64 %i.cj ; 2 uses
  store ptr %i.ci, ptr %i.cn, align 8, !noalias !135
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 8
  store i64 %i.ch, ptr %i.co, align 8
  %i.cp = add i64 %i.cj, 1
  store i64 %i.cp, ptr %i.q, align 8, !alias.scope !130, !noalias !135
  %i.cq = icmp ult i64 %i.bj, %.val12
  br i1 %i.cq, label %.lr.ph, label %.outer._crit_edge

bb.am:                                            ; preds = %bb.an, %.body, %.loopexit.split-lp
  %i.cr = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #16
  unreachable

.body31.thread:                                   ; preds = %bb.s, %bb.an, %bb.d
  %.pn.pn56 = phi { ptr, i32 } [ %i.bh, %bb.s ], [ %.pn.pn57, %bb.an ], [ %.pn, %bb.d ]
  resume { ptr, i32 } %.pn.pn56

bb.an:                                            ; preds = %.body31.thread60, %bb.d
  %.pn.pn57 = phi { ptr, i32 } [ %lpad.thr_comm, %.body31.thread60 ], [ %.pn, %bb.d ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecReEECshbKHpCRGxgC_16deltalake_derive(ptr noalias noundef align 8 dereferenceable(24) %i.l) #17
          to label %.body31.thread unwind label %bb.am
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterRNtNtCs7nQiqFc7Txl_3syn4data5FieldENCNvCshbKHpCRGxgC_16deltalake_derive20generate_config_keys0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvXB8_INtB8_12GenericShuntBN_INtNtBc_6result6ResultNtNtBc_7convert10InfallibleNtNtB1s_5error5ErrorEEB2U_8try_folduNCINvNvB2U_12try_for_each4callNtCsbjGuDcEILED_11proc_macro211TokenStreamINtNtNtBc_3ops12control_flow11ControlFlowB5Z_ENcNtB6F_5Break0E0B6F_E0IB6G_B6F_EEB20_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %1, ptr noalias nofree noundef nonnull readnone captures(none) %2, ptr noalias noundef align 8 dereferenceable(24) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [24 x i8], align 8                ; 8 uses
  %i.c = alloca [24 x i8], align 8                ; 8 uses
  %i.d = alloca [64 x i8], align 8                ; 4 uses
  %i.e = alloca [72 x i8], align 8                ; 5 uses
  %i.f = alloca [24 x i8], align 8                ; 6 uses
  %i.g = alloca [32 x i8], align 8                ; 10 uses
  %i.h = alloca [32 x i8], align 8                ; 8 uses
  %i.i = alloca [32 x i8], align 8                ; 4 uses
  %i.j = alloca [32 x i8], align 8                ; 7 uses
  %i.k = alloca [24 x i8], align 8                ; 8 uses
  %i.l = alloca [32 x i8], align 8                ; 7 uses
  %i.m = alloca [80 x i8], align 8                ; 9 uses
  %i.n = alloca [80 x i8], align 8                ; 13 uses
  %i.o = alloca [48 x i8], align 8                ; 4 uses
  %i.p = alloca [24 x i8], align 8                ; 9 uses
  %i.q = alloca [24 x i8], align 8                ; 10 uses
  %i.r = alloca [24 x i8], align 8                ; 12 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !138)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !141)
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.promoted.i = load ptr, ptr %1, align 8, !alias.scope !143, !noalias !138
  %.sroa.42.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.53.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.4.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 20
  %.sroa.5.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 22
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.v = getelementptr inbounds nuw i8, ptr %i.e, i64 64
  %i.w = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.x = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.y = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %.sroa.619.i.sroa.7.0..sroa_idx16.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %.sroa.619.i.sroa.8.0..sroa_idx19.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %.sroa.635.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  %.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 32
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %.sroa.619.i.sroa.7.0..sroa.4.0..sroa_idx.i.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %.sroa.619.i.sroa.8.0..sroa.4.0..sroa_idx.i.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 24 ; 6 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.n, i64 48 ; 4 uses
  %.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %.sroa.9.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %.sroa.10.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %i.aa = getelementptr inbounds nuw i8, ptr %i.q, i64 16 ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 3 uses
  %.pre.i = load ptr, ptr %i.s, align 8, !alias.scope !143, !noalias !138
  br label %_RNvXNtNtCsbvkFyIu7lgC_4core3ops12control_flowINtB2_11ControlFlowIBI_NtCsbjGuDcEILED_11proc_macro211TokenStreamEENtNtB4_9try_trait3Try6branchCshbKHpCRGxgC_16deltalake_derive.exit.i

_RNvXNtNtCsbvkFyIu7lgC_4core3ops12control_flowINtB2_11ControlFlowIBI_NtCsbjGuDcEILED_11proc_macro211TokenStreamEENtNtB4_9try_trait3Try6branchCshbKHpCRGxgC_16deltalake_derive.exit.i: ; preds = %_RNCNvCshbKHpCRGxgC_16deltalake_derive20generate_config_keys0B3_.exit.i.i, %bb.a
  %i.ac = phi ptr [ %i.ae, %_RNCNvCshbKHpCRGxgC_16deltalake_derive20generate_config_keys0B3_.exit.i.i ], [ %.promoted.i, %bb.a ] ; 4 uses
  %i.ad = icmp eq ptr %i.ac, %.pre.i
  br i1 %i.ad, label %bb.bs, label %bb.b

bb.b:                                             ; preds = %_RNvXNtNtCsbvkFyIu7lgC_4core3ops12control_flowINtB2_11ControlFlowIBI_NtCsbjGuDcEILED_11proc_macro211TokenStreamEENtNtB4_9try_trait3Try6branchCshbKHpCRGxgC_16deltalake_derive.exit.i
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ac, i64 8 ; 2 uses
  store ptr %i.ae, ptr %1, align 8, !alias.scope !143, !noalias !138
  call void @llvm.experimental.noalias.scope.decl(metadata !146)
  call void @llvm.experimental.noalias.scope.decl(metadata !149)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !152
  %i.af = load ptr, ptr %i.ac, align 8, !alias.scope !155, !noalias !156, !nonnull !17, !align !70, !noundef !17 ; 4 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 304
  %i.ah = load i8, ptr %i.ag, align 8, !range !157, !noalias !152, !noundef !17
  %.not.i.i.i = icmp eq i8 %i.ah, 3
  br i1 %.not.i.i.i, label %bb.h, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ai = getelementptr inbounds nuw i8, ptr %i.af, i64 288
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !158
  store i64 0, ptr %i.c, align 8, !noalias !158
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.42.0..sroa_idx.i.i.i.i, align 8, !noalias !158
  store i64 0, ptr %.sroa.53.0..sroa_idx.i.i.i.i, align 8, !noalias !158
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !158
  store i32 1610612768, ptr %i.t, align 8, !noalias !158
  store i16 0, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 4, !noalias !158
  store i16 0, ptr %.sroa.5.0..sroa_idx.i.i.i.i, align 2, !noalias !158
  store ptr %i.c, ptr %i.b, align 8, !noalias !158
  store ptr @12, ptr %i.u, align 8, !noalias !158
  %i.aj = invoke noundef zeroext i1 @_RNvXsE_CsbjGuDcEILED_11proc_macro2NtB5_5IdentNtNtCsbvkFyIu7lgC_4core3fmt7Display3fmt(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ai, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %bb.e unwind label %.loopexit.i, !noalias !162

.loopexit.i:                                      ; preds = %bb.c
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.d

.loopexit.split-lp.i:                             ; preds = %bb.f
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.d

bb.d:                                             ; preds = %.loopexit.split-lp.i, %.loopexit.i
  %lpad.phi.i = phi { ptr, i32 } [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ]
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECshbKHpCRGxgC_16deltalake_derive(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c) #17
          to label %common.resume.i.i unwind label %bb.g, !noalias !162

bb.e:                                             ; preds = %bb.c
  br i1 %i.aj, label %bb.f, label %_RNvXsC_NtCs6Po7BT7Nknu_5alloc6stringNtCsbjGuDcEILED_11proc_macro25IdentNtB5_12SpecToString14spec_to_stringCshbKHpCRGxgC_16deltalake_derive.exit.i.i.i, !prof !122

bb.f:                                             ; preds = %bb.e
  invoke void @_RNvNtCsbvkFyIu7lgC_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @13, i64 noundef 55, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @11, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @15) #19
          to label %.noexc.i.i.i.i unwind label %.loopexit.split-lp.i, !noalias !162

.noexc.i.i.i.i:                                   ; preds = %bb.f
  unreachable

bb.g:                                             ; preds = %bb.d
  %i.ak = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #16, !noalias !162
  unreachable

common.resume.i.i:                                ; preds = %.body.i2.i.i, %bb.bm, %bb.bh, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCsbjGuDcEILED_11proc_macro25IdentECshbKHpCRGxgC_16deltalake_derive.exit.i.i.i, %bb.d
  %common.resume.op.i.i = phi { ptr, i32 } [ %eh.lpad-body.i.i.i, %.body.i2.i.i ], [ %i.cb, %bb.bm ], [ %lpad.phi.i, %bb.d ], [ %i.bx, %bb.bh ], [ %.pn46.i.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCsbjGuDcEILED_11proc_macro25IdentECshbKHpCRGxgC_16deltalake_derive.exit.i.i.i ]
  resume { ptr, i32 } %common.resume.op.i.i

_RNvXsC_NtCs6Po7BT7Nknu_5alloc6stringNtCsbjGuDcEILED_11proc_macro25IdentNtB5_12SpecToString14spec_to_stringCshbKHpCRGxgC_16deltalake_derive.exit.i.i.i: ; preds = %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.r, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !noalias !163
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !158
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !158
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !152
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !152
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !152
  store i64 19, ptr %i.o, align 8, !noalias !152
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !152
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !152
  invoke void @_RNvMs_NtCsl1mHGn7pXMx_12convert_case9converterNtB4_9Converter3new(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(address) dereferenceable(64) %i.d)
          to label %bb.j unwind label %bb.i, !noalias !152

bb.h:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !152
  call void @_RINvMNtCs7nQiqFc7Txl_3syn5errorNtB3_5Error11new_spannedRRNtNtB5_4data5FieldReECshbKHpCRGxgC_16deltalake_derive(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.f, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ac, ptr noalias noundef nonnull readonly captures(address, read_provenance) @7, i64 noundef 13), !noalias !156
  %.sroa.07.0.copyload.i.i.i = load i64, ptr %i.f, align 8, !noalias !152
  %.sroa.69.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.sroa.69.0.copyload.i.i.i = load ptr, ptr %.sroa.69.0..sroa_idx.i.i.i, align 8, !noalias !152
  %.sroa.812.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %.sroa.812.0.copyload.i.i.i = load i64, ptr %.sroa.812.0..sroa_idx.i.i.i, align 8, !noalias !152
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !152
  br label %_RNCNvCshbKHpCRGxgC_16deltalake_derive20generate_config_keys0B3_.exit.thread.i.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCsbjGuDcEILED_11proc_macro25IdentECshbKHpCRGxgC_16deltalake_derive.exit.i.i.i: ; preds = %bb.r, %bb.q, %.body.i.i.i, %bb.l, %bb.i
  %.pn46.i.i.i = phi { ptr, i32 } [ %i.al, %bb.i ], [ %i.ap, %bb.l ], [ %.pn44.i.i.i, %.body.i.i.i ], [ %.pn44.i.i.i, %bb.q ], [ %.pn44.i.i.i, %bb.r ]
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECshbKHpCRGxgC_16deltalake_derive(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.r) #17
          to label %common.resume.i.i unwind label %bb.aq, !noalias !152

bb.i:                                             ; preds = %bb.j, %_RNvXsC_NtCs6Po7BT7Nknu_5alloc6stringNtCsbjGuDcEILED_11proc_macro25IdentNtB5_12SpecToString14spec_to_stringCshbKHpCRGxgC_16deltalake_derive.exit.i.i.i
  %i.al = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCsbjGuDcEILED_11proc_macro25IdentECshbKHpCRGxgC_16deltalake_derive.exit.i.i.i

bb.j:                                             ; preds = %_RNvXsC_NtCs6Po7BT7Nknu_5alloc6stringNtCsbjGuDcEILED_11proc_macro25IdentNtB5_12SpecToString14spec_to_stringCshbKHpCRGxgC_16deltalake_derive.exit.i.i.i
  store ptr %i.r, ptr %i.v, align 8, !noalias !152
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.e, ptr noundef nonnull align 8 dereferenceable(64) %i.d, i64 64, i1 false), !noalias !152
end_hunk_0
