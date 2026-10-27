Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/diesel-rs/original/custom_arrays-e3a578d1d1813722.custom_arrays.d2e22a6890e1d93d-cgu.04?download=true
inline.NumInlined: 171
inline.NumDeleted: 124
begin_hunk_0_@_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxDINtNtCsjRvGck33osM_6diesel9migration9MigrationNtNtNtB1g_2pg7backend2PgEEL_EECsi6wIvn64oUH_13custom_arrays:bb.a
_RNvXs8_NtCs40k4W9msRzi_5alloc5boxedINtB5_3BoxDINtNtCsjRvGck33osM_6diesel9migration9MigrationNtNtNtBN_2pg7backend2PgEEL_ENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsi6wIvn64oUH_13custom_arrays.exit: ; preds = %bb.c, %bb.d
  ret void

bb.e:                                             ; preds = %bb.b
  %i.j = landingpad { ptr, i32 }
          cleanup
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.l = load i64, ptr %i.k, align 8, !range !10, !invariant.load !3 ; 2 uses
  %i.m = icmp eq i64 %i.l, 0
  br i1 %i.m, label %_RNvXs8_NtCs40k4W9msRzi_5alloc5boxedINtB5_3BoxDINtNtCsjRvGck33osM_6diesel9migration9MigrationNtNtNtBN_2pg7backend2PgEEL_ENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsi6wIvn64oUH_13custom_arrays.exit4, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.o = load i64, ptr %i.n, align 8, !range !11, !invariant.load !3
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %i.d, i64 noundef range(i64 1, -9223372036854775808) %i.l, i64 noundef range(i64 1, 536870913) %i.o) #17
  br label %_RNvXs8_NtCs40k4W9msRzi_5alloc5boxedINtB5_3BoxDINtNtCsjRvGck33osM_6diesel9migration9MigrationNtNtNtBN_2pg7backend2PgEEL_ENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsi6wIvn64oUH_13custom_arrays.exit4

_RNvXs8_NtCs40k4W9msRzi_5alloc5boxedINtB5_3BoxDINtNtCsjRvGck33osM_6diesel9migration9MigrationNtNtNtBN_2pg7backend2PgEEL_ENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsi6wIvn64oUH_13custom_arrays.exit4: ; preds = %bb.f, %bb.e
  resume { ptr, i32 } %i.j
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc6borrow3CoweEECsi6wIvn64oUH_13custom_arrays(ptr noalias noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !7, !noundef !3
  %i.b = icmp eq i64 %i.a, -1
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsi6wIvn64oUH_13custom_arrays.exit, %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  invoke void @_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VechENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsi6wIvn64oUH_13custom_arrays(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsi6wIvn64oUH_13custom_arrays.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.c = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs40k4W9msRzi_5alloc7raw_vecINtB5_6RawVechENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsi6wIvn64oUH_13custom_arrays(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc7raw_vec6RawVechEECsi6wIvn64oUH_13custom_arrays.exit.i.i unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.d = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #16
  unreachable

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc7raw_vec6RawVechEECsi6wIvn64oUH_13custom_arrays.exit.i.i: ; preds = %bb.d
  resume { ptr, i32 } %i.c

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsi6wIvn64oUH_13custom_arrays.exit: ; preds = %bb.c
  tail call void @_RNvXs1_NtCs40k4W9msRzi_5alloc7raw_vecINtB5_6RawVechENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsi6wIvn64oUH_13custom_arrays(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
  br label %bb.b
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCsjRvGck33osM_6diesel10connection15statement_cache17StatementCacheKeyNtNtNtBI_2pg7backend2PgEECsi6wIvn64oUH_13custom_arrays(ptr noalias noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !7, !noundef !3
  %i.b = icmp eq i64 %i.a, -1
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtNtCsjRvGck33osM_6diesel2pg7backend14PgTypeMetadataEECsi6wIvn64oUH_13custom_arrays.exit, %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  invoke void @_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VechENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsi6wIvn64oUH_13custom_arrays(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VechEECsi6wIvn64oUH_13custom_arrays.exit.i unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.c = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs40k4W9msRzi_5alloc7raw_vecINtB5_6RawVechENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsi6wIvn64oUH_13custom_arrays(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %.body unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.d = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #16
  unreachable

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VechEECsi6wIvn64oUH_13custom_arrays.exit.i: ; preds = %bb.c
  invoke void @_RNvXs1_NtCs40k4W9msRzi_5alloc7raw_vecINtB5_6RawVechENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsi6wIvn64oUH_13custom_arrays(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsi6wIvn64oUH_13custom_arrays.exit unwind label %bb.f

bb.f:                                             ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VechEECsi6wIvn64oUH_13custom_arrays.exit.i
  %i.e = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.d, %bb.f
  %eh.lpad-body = phi { ptr, i32 } [ %i.e, %bb.f ], [ %i.c, %bb.d ]
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtNtCsjRvGck33osM_6diesel2pg7backend14PgTypeMetadataEECsi6wIvn64oUH_13custom_arrays(ptr noalias noundef align 8 dereferenceable(24) %i.f) #15
          to label %common.resume unwind label %bb.i

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsi6wIvn64oUH_13custom_arrays.exit: ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VechEECsi6wIvn64oUH_13custom_arrays.exit.i
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  invoke void @_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtNtCsjRvGck33osM_6diesel2pg7backend14PgTypeMetadataENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsi6wIvn64oUH_13custom_arrays(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtNtCsjRvGck33osM_6diesel2pg7backend14PgTypeMetadataEECsi6wIvn64oUH_13custom_arrays.exit unwind label %bb.g

bb.g:                                             ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsi6wIvn64oUH_13custom_arrays.exit
  %i.h = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs40k4W9msRzi_5alloc7raw_vecINtB5_6RawVecNtNtNtCsjRvGck33osM_6diesel2pg7backend14PgTypeMetadataENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsi6wIvn64oUH_13custom_arrays(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %common.resume unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.i = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #16
  unreachable

common.resume:                                    ; preds = %.body, %bb.g
  %common.resume.op = phi { ptr, i32 } [ %i.h, %bb.g ], [ %eh.lpad-body, %.body ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtNtCsjRvGck33osM_6diesel2pg7backend14PgTypeMetadataEECsi6wIvn64oUH_13custom_arrays.exit: ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsi6wIvn64oUH_13custom_arrays.exit
  tail call void @_RNvXs1_NtCs40k4W9msRzi_5alloc7raw_vecINtB5_6RawVecNtNtNtCsjRvGck33osM_6diesel2pg7backend14PgTypeMetadataENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsi6wIvn64oUH_13custom_arrays(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.g)
  br label %bb.b

bb.i:                                             ; preds = %.body
  %i.j = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #16
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsi6wIvn64oUH_13custom_arrays(ptr noalias noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VechENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsi6wIvn64oUH_13custom_arrays(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VechEECsi6wIvn64oUH_13custom_arrays.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs40k4W9msRzi_5alloc7raw_vecINtB5_6RawVechENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsi6wIvn64oUH_13custom_arrays(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc7raw_vec6RawVechEECsi6wIvn64oUH_13custom_arrays.exit.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #16
  unreachable

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc7raw_vec6RawVechEECsi6wIvn64oUH_13custom_arrays.exit.i: ; preds = %bb.b
  resume { ptr, i32 } %i.a

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VechEECsi6wIvn64oUH_13custom_arrays.exit: ; preds = %bb.a
  tail call void @_RNvXs1_NtCs40k4W9msRzi_5alloc7raw_vecINtB5_6RawVechENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsi6wIvn64oUH_13custom_arrays(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCsgczF5crJ4sT_3std2io5error5ErrorECsi6wIvn64oUH_13custom_arrays(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.val = load ptr, ptr %0, align 8, !nonnull !3, !noundef !3 ; 4 uses
  %i.a = ptrtoint ptr %.val to i64                ; 2 uses
  %i.b = and i64 %i.a, 3
  switch i64 %i.b, label %default.unreachable [
    i64 2, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtNtCsgczF5crJ4sT_3std2io5error14repr_bitpacked4ReprECsi6wIvn64oUH_13custom_arrays.exit
    i64 3, label %bb.b
    i64 0, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtNtCsgczF5crJ4sT_3std2io5error14repr_bitpacked4ReprECsi6wIvn64oUH_13custom_arrays.exit
    i64 1, label %bb.c
  ], !prof !157

default.unreachable:                              ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.c = icmp ult ptr %.val, inttoptr (i64 180388626432 to ptr)
  %i.d = and i64 %i.a, 1095216660480
  %i.e = icmp ne i64 %i.d, 1095216660480
  tail call void @llvm.assume(i1 %i.c)
  tail call void @llvm.assume(i1 %i.e)
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtNtCsgczF5crJ4sT_3std2io5error14repr_bitpacked4ReprECsi6wIvn64oUH_13custom_arrays.exit

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr i8, ptr %.val, i64 -1      ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.f) ]
  %.val.i.i.i.i = load ptr, ptr %i.f, align 8     ; 5 uses
  %i.g = getelementptr i8, ptr %.val, i64 7
  %.val1.i.i.i.i = load ptr, ptr %i.g, align 8, !nonnull !3, !align !9, !noundef !3 ; 5 uses
  %i.h = load ptr, ptr %.val1.i.i.i.i, align 8, !invariant.load !3 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i.i.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i.i) ]
  invoke void %i.h(ptr noundef nonnull %.val.i.i.i.i)
          to label %bb.e unwind label %bb.g

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i, i64 8
  %i.j = load i64, ptr %i.i, align 8, !range !10, !invariant.load !3 ; 2 uses
  %i.k = icmp eq i64 %i.j, 0
  br i1 %i.k, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtNtCsgczF5crJ4sT_3std2io5error6CustomEECsi6wIvn64oUH_13custom_arrays.exit.i.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i.i) ]
  %i.l = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i, i64 16
  %i.m = load i64, ptr %i.l, align 8, !range !11, !invariant.load !3
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i, i64 noundef range(i64 1, -9223372036854775808) %i.j, i64 noundef range(i64 1, 536870913) %i.m) #17
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtNtCsgczF5crJ4sT_3std2io5error6CustomEECsi6wIvn64oUH_13custom_arrays.exit.i.i.i

bb.g:                                             ; preds = %bb.d
  %i.n = landingpad { ptr, i32 }
          cleanup
  %i.o = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i, i64 8
  %i.p = load i64, ptr %i.o, align 8, !range !10, !invariant.load !3 ; 2 uses
  %i.q = icmp eq i64 %i.p, 0
  br i1 %i.q, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.r = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i, i64 16
  %i.s = load i64, ptr %i.r, align 8, !range !11, !invariant.load !3
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i, i64 noundef range(i64 1, -9223372036854775808) %i.p, i64 noundef range(i64 1, 536870913) %i.s) #17
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %i.f, i64 noundef 24, i64 noundef 8) #17
  resume { ptr, i32 } %i.n

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtNtCsgczF5crJ4sT_3std2io5error6CustomEECsi6wIvn64oUH_13custom_arrays.exit.i.i.i: ; preds = %bb.f, %bb.e
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %i.f, i64 noundef 24, i64 noundef 8) #17
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtNtCsgczF5crJ4sT_3std2io5error14repr_bitpacked4ReprECsi6wIvn64oUH_13custom_arrays.exit

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtNtCsgczF5crJ4sT_3std2io5error14repr_bitpacked4ReprECsi6wIvn64oUH_13custom_arrays.exit: ; preds = %bb.a, %bb.a, %bb.b, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtNtCsgczF5crJ4sT_3std2io5error6CustomEECsi6wIvn64oUH_13custom_arrays.exit.i.i.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNvXsf_NtNtCs40k4W9msRzi_5alloc5boxed7convertINtBL_3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1R_4SendEL_EINtNtB4_7convert4FromNtNtBN_6string6StringE4from11StringErrorECsi6wIvn64oUH_13custom_arrays(ptr noalias noundef align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VechENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsi6wIvn64oUH_13custom_arrays(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsi6wIvn64oUH_13custom_arrays.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs40k4W9msRzi_5alloc7raw_vecINtB5_6RawVechENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsi6wIvn64oUH_13custom_arrays(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc7raw_vec6RawVechEECsi6wIvn64oUH_13custom_arrays.exit.i.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #16
  unreachable

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc7raw_vec6RawVechEECsi6wIvn64oUH_13custom_arrays.exit.i.i: ; preds = %bb.b
  resume { ptr, i32 } %i.a

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsi6wIvn64oUH_13custom_arrays.exit: ; preds = %bb.a
  tail call void @_RNvXs1_NtCs40k4W9msRzi_5alloc7raw_vecINtB5_6RawVechENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsi6wIvn64oUH_13custom_arrays(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_3ops5range5RangelENCNvXs_NtNtNtCsjRvGck33osM_6diesel2pg5types5arrayINtNtCs40k4W9msRzi_5alloc3vec3VecINtNtBc_6option6OptionNtNtNtCsi6wIvn64oUH_13custom_arrays5model13endpoint_type8EndpointEEINtNtB1C_11deserialize7FromSqlINtNtB1y_9sql_types5ArrayINtNtB1C_9sql_types8NullableNtNtNtNtB3b_6schema4smdb9sql_types15ServiceEndpointEENtNtB1A_7backend2PgE8from_sql0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvXB8_INtB8_12GenericShuntBN_INtNtBc_6result6ResultNtNtBc_7convert10InfallibleINtNtB2h_5boxed3BoxDNtNtBc_5error5ErrorNtNtBc_6marker4SyncNtB9x_4SendEL_EEEB6R_8try_folduNCINvNvB6R_12try_for_each4callB2J_INtNtB12_12control_flow11ControlFlowB2J_ENcNtBaR_5Break0E0BaR_E0IBaS_BaR_EEB3b_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([64 x i8]) align 8 captures(none) dereferenceable(64) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %1, ptr noalias nofree noundef nonnull readnone captures(none) %2, ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 7 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [4 x i8], align 4                 ; 6 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [24 x i8], align 8                ; 7 uses
  %i.f = alloca [24 x i8], align 8                ; 6 uses
  %i.g = alloca [32 x i8], align 8                ; 6 uses
  %i.h = alloca [32 x i8], align 8                ; 4 uses
  %i.i = alloca [4 x i8], align 4                 ; 5 uses
  %i.j = alloca [64 x i8], align 8                ; 9 uses
  %.sroa.9.i = alloca [40 x i8], align 8          ; 5 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !189)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !190)
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.m = load i32, ptr %i.l, align 4, !alias.scope !191, !noundef !3 ; 2 uses
  %.promoted.i = load i32, ptr %i.k, align 8, !alias.scope !192 ; 2 uses
  %i.n = icmp slt i32 %.promoted.i, %i.m
  br i1 %i.n, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.r = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.t = load ptr, ptr %1, align 8, !alias.scope !193, !noalias !194, !nonnull !3, !align !9, !noundef !3 ; 5 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8 ; 4 uses
  %i.v = load ptr, ptr %i.p, align 8, !nonnull !3
  %i.w = load ptr, ptr %i.q, align 8, !nonnull !3, !align !9
  %i.x = insertelement <2 x ptr> <ptr poison, ptr @6>, ptr %i.w, i64 0
  br label %bb.b

bb.b:                                             ; preds = %bb.x, %.lr.ph.i
  %i.y = phi i32 [ %.promoted.i, %.lr.ph.i ], [ %i.z, %bb.x ]
  %i.z = add nsw i32 %i.y, 1                      ; 3 uses
  store i32 %i.z, ptr %i.k, align 8, !alias.scope !192
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.9.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !195
  call void @llvm.experimental.noalias.scope.decl(metadata !193)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !196
  call void @llvm.experimental.noalias.scope.decl(metadata !197)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !198
  store i32 0, ptr %i.c, align 4, !noalias !198
  call void @llvm.experimental.noalias.scope.decl(metadata !199)
  %i.aa = load i64, ptr %i.u, align 8, !alias.scope !200, !noalias !196, !noundef !3 ; 3 uses
  %i.ab = icmp ult i64 %i.aa, 4
  %i.ac = load ptr, ptr %i.t, align 8, !alias.scope !200, !noalias !196, !nonnull !3, !noundef !3 ; 3 uses
  br i1 %i.ab, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !198
  store ptr %i.ad, ptr %i.t, align 8, !alias.scope !200, !noalias !196
  store i64 0, ptr %i.u, align 8, !alias.scope !200, !noalias !196
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !196
  store ptr @26, ptr %i.d, align 8, !noalias !196
  call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #17, !noalias !196
  %i.ae = call noundef align 8 dereferenceable_or_null(8) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef range(i64 1, 25) 8, i64 noundef range(i64 1, 9) 8) #17, !noalias !196 ; 3 uses
  %i.af = icmp eq ptr %i.ae, null
  br i1 %i.af, label %bb.d, label %_RNvMNtCs40k4W9msRzi_5alloc5boxedINtB2_3BoxNtNtNtCsgczF5crJ4sT_3std2io5error5ErrorE3newCsi6wIvn64oUH_13custom_arrays.exit.i.i.i, !prof !5

bb.d:                                             ; preds = %bb.c
  invoke void @_RNvNtCs40k4W9msRzi_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 8) #14
          to label %.noexc.i.i.i unwind label %bb.e, !noalias !196

.noexc.i.i.i:                                     ; preds = %bb.d
  unreachable

bb.e:                                             ; preds = %bb.d
  %i.ag = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCsgczF5crJ4sT_3std2io5error5ErrorECsi6wIvn64oUH_13custom_arrays(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.d) #15
          to label %common.resume.i.i unwind label %bb.f, !noalias !196

bb.f:                                             ; preds = %bb.e
  %i.ah = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #16, !noalias !196
  unreachable

common.resume.i.i:                                ; preds = %.body.i.i.i, %bb.o, %bb.e
  %common.resume.op.i.i = phi { ptr, i32 } [ %i.bi, %.body.i.i.i ], [ %i.ag, %bb.e ], [ %i.av, %bb.o ]
  resume { ptr, i32 } %common.resume.op.i.i

_RNvMNtCs40k4W9msRzi_5alloc5boxedINtB2_3BoxNtNtNtCsgczF5crJ4sT_3std2io5error5ErrorE3newCsi6wIvn64oUH_13custom_arrays.exit.i.i.i: ; preds = %bb.c
  store ptr @26, ptr %i.ae, align 8, !noalias !196
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !196
  br label %_RNCNvXs_NtNtNtCsjRvGck33osM_6diesel2pg5types5arrayINtNtCs40k4W9msRzi_5alloc3vec3VecINtNtCscI6d9CVNmLh_4core6option6OptionNtNtNtCsi6wIvn64oUH_13custom_arrays5model13endpoint_type8EndpointEEINtNtBc_11deserialize7FromSqlINtNtB8_9sql_types5ArrayINtNtBc_9sql_types8NullableNtNtNtNtB21_6schema4smdb9sql_types15ServiceEndpointEENtNtBa_7backend2PgE8from_sql0B21_.exit.thread.i.i

bb.g:                                             ; preds = %bb.b
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ac, i64 4 ; 3 uses
  %i.aj = add nsw i64 %i.aa, -4                   ; 4 uses
  call void @_RINvNtCscI6d9CVNmLh_4core5slice20copy_from_slice_implhECsi6wIvn64oUH_13custom_arrays(ptr noalias noundef nonnull %i.c, i64 noundef 4, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.ac, i64 noundef 4, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @24), !noalias !201
  %.val.i.i.i.i = load i32, ptr %i.c, align 4, !noalias !198 ; 2 uses
  %i.ak = call noundef i32 @llvm.bswap.i32(i32 %.val.i.i.i.i) ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !198
  store ptr %i.ai, ptr %i.t, align 8, !alias.scope !200, !noalias !196
  store i64 %i.aj, ptr %i.u, align 8, !alias.scope !200, !noalias !196
  store i32 %i.ak, ptr %i.i, align 4, !noalias !196
  %i.al = load i8, ptr %i.v, align 1, !range !8, !noalias !196, !noundef !3
  %i.am = trunc nuw i8 %i.al to i1
  %i.an = icmp eq i32 %.val.i.i.i.i, -1
  %or.cond.i.i.i = and i1 %i.an, %i.am
  br i1 %or.cond.i.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ao = icmp sgt i32 %i.ak, -1
  br i1 %i.ao, label %bb.l, label %bb.j

bb.i:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !196
  store ptr null, ptr %i.h, align 8, !noalias !196
  call void @_RNvXs0_NtNtCsjRvGck33osM_6diesel10type_impls6optionINtNtCscI6d9CVNmLh_4core6option6OptionNtNtNtCsi6wIvn64oUH_13custom_arrays5model13endpoint_type8EndpointEINtNtB9_11deserialize7FromSqlINtNtB9_9sql_types8NullableNtNtNtNtB1v_6schema4smdb9sql_types15ServiceEndpointENtNtNtB9_2pg7backend2PgE17from_nullable_sqlB1v_(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.j, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(32) %i.h), !noalias !194
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !196
  br label %_RNCNvXs_NtNtNtCsjRvGck33osM_6diesel2pg5types5arrayINtNtCs40k4W9msRzi_5alloc3vec3VecINtNtCscI6d9CVNmLh_4core6option6OptionNtNtNtCsi6wIvn64oUH_13custom_arrays5model13endpoint_type8EndpointEEINtNtBc_11deserialize7FromSqlINtNtB8_9sql_types5ArrayINtNtBc_9sql_types8NullableNtNtNtNtB21_6schema4smdb9sql_types15ServiceEndpointEENtNtBa_7backend2PgE8from_sql0B21_.exit.i.i

bb.j:                                             ; preds = %bb.h
  call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #17, !noalias !196
  %i.ap = call noundef dereferenceable_or_null(1) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef range(i64 1, 25) 1, i64 noundef range(i64 1, 9) 1) #17, !noalias !196 ; 3 uses
  %i.aq = icmp eq ptr %i.ap, null
  br i1 %i.aq, label %bb.k, label %_RNvNtCs40k4W9msRzi_5alloc5boxed14box_new_uninit.exit56.i.i.i, !prof !5

bb.k:                                             ; preds = %bb.j
  call void @_RNvNtCs40k4W9msRzi_5alloc5alloc18handle_alloc_error(i64 noundef 1, i64 noundef 1) #14, !noalias !196
  unreachable

_RNvNtCs40k4W9msRzi_5alloc5boxed14box_new_uninit.exit56.i.i.i: ; preds = %bb.j
  store i8 3, ptr %i.ap, align 1, !noalias !196
  br label %_RNCNvXs_NtNtNtCsjRvGck33osM_6diesel2pg5types5arrayINtNtCs40k4W9msRzi_5alloc3vec3VecINtNtCscI6d9CVNmLh_4core6option6OptionNtNtNtCsi6wIvn64oUH_13custom_arrays5model13endpoint_type8EndpointEEINtNtBc_11deserialize7FromSqlINtNtB8_9sql_types5ArrayINtNtBc_9sql_types8NullableNtNtNtNtB21_6schema4smdb9sql_types15ServiceEndpointEENtNtBa_7backend2PgE8from_sql0B21_.exit.thread.i.i

bb.l:                                             ; preds = %bb.h
  %i.ar = zext nneg i32 %i.ak to i64              ; 4 uses
  %.not.i.i.i = icmp ult i64 %i.aj, %i.ar
  br i1 %.not.i.i.i, label %bb.m, label %bb.q

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !196
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !202
  store i64 %i.aj, ptr %i.b, align 8, !noalias !202
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !202
  store ptr %i.i, ptr %i.a, align 8, !noalias !202
  %.sroa.42.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs9_NtNtNtCscI6d9CVNmLh_4core3fmt3num3implNtB9_7Display3fmt, ptr %.sroa.42.0..sroa_idx.i.i.i.i, align 8, !noalias !202
  %i.as = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.b, ptr %i.as, align 8, !noalias !202
  %.sroa.46.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr @_RNvXsi_NtNtNtCscI6d9CVNmLh_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.46.0..sroa_idx.i.i.i.i, align 8, !noalias !202
  call void @_RNvNvNtCs40k4W9msRzi_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.f, ptr noundef nonnull @0, ptr noundef nonnull %i.a), !noalias !196
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !202
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !202
  %.sroa.79.sroa.0.0.copyload32.i.i.i = load i64, ptr %i.f, align 8, !noalias !196
  %.sroa.79.sroa.8.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.sroa.79.sroa.8.0.copyload34.i.i.i = load ptr, ptr %.sroa.79.sroa.8.0..sroa_idx.i.i.i, align 8, !noalias !196
  %.sroa.79.sroa.9.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %.sroa.79.sroa.9.0.copyload37.i.i.i = load i64, ptr %.sroa.79.sroa.9.0..sroa_idx.i.i.i, align 8, !noalias !196
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !196
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !196
  store i64 %.sroa.79.sroa.0.0.copyload32.i.i.i, ptr %i.e, align 8, !noalias !196
  %.sroa.451.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr %.sroa.79.sroa.8.0.copyload34.i.i.i, ptr %.sroa.451.0..sroa_idx.i.i.i, align 8, !noalias !196
  %.sroa.552.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store i64 %.sroa.79.sroa.9.0.copyload37.i.i.i, ptr %.sroa.552.0..sroa_idx.i.i.i, align 8, !noalias !196
  call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #17, !noalias !203
  %i.at = call noundef align 8 dereferenceable_or_null(24) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef range(i64 1, 25) 24, i64 noundef range(i64 1, 9) 8) #17, !noalias !203 ; 3 uses
  %i.au = icmp eq ptr %i.at, null
  br i1 %i.au, label %bb.n, label %_RNvMNtCs40k4W9msRzi_5alloc5boxedINtB2_3BoxNtNvXsf_NtB2_7convertIBv_DNtNtCscI6d9CVNmLh_4core5error5ErrorNtNtB18_6marker4SyncNtB1F_4SendEL_EINtNtB18_7convert4FromNtNtB4_6string6StringE4from11StringErrorE3newCsi6wIvn64oUH_13custom_arrays.exit.i.i.i, !prof !5

bb.n:                                             ; preds = %bb.m
  invoke void @_RNvNtCs40k4W9msRzi_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 24) #14
          to label %.noexc57.i.i.i unwind label %bb.o, !noalias !196

.noexc57.i.i.i:                                   ; preds = %bb.n
  unreachable

bb.o:                                             ; preds = %bb.n
  %i.av = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNvXsf_NtNtCs40k4W9msRzi_5alloc5boxed7convertINtBL_3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1R_4SendEL_EINtNtB4_7convert4FromNtNtBN_6string6StringE4from11StringErrorECsi6wIvn64oUH_13custom_arrays(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e) #15
          to label %common.resume.i.i unwind label %bb.p, !noalias !196

bb.p:                                             ; preds = %bb.o
  %i.aw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #16, !noalias !196
  unreachable

_RNvMNtCs40k4W9msRzi_5alloc5boxedINtB2_3BoxNtNvXsf_NtB2_7convertIBv_DNtNtCscI6d9CVNmLh_4core5error5ErrorNtNtB18_6marker4SyncNtB1F_4SendEL_EINtNtB18_7convert4FromNtNtB4_6string6StringE4from11StringErrorE3newCsi6wIvn64oUH_13custom_arrays.exit.i.i.i: ; preds = %bb.m
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.at, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false), !noalias !196
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !196
  br label %_RNCNvXs_NtNtNtCsjRvGck33osM_6diesel2pg5types5arrayINtNtCs40k4W9msRzi_5alloc3vec3VecINtNtCscI6d9CVNmLh_4core6option6OptionNtNtNtCsi6wIvn64oUH_13custom_arrays5model13endpoint_type8EndpointEEINtNtBc_11deserialize7FromSqlINtNtB8_9sql_types5ArrayINtNtBc_9sql_types8NullableNtNtNtNtB21_6schema4smdb9sql_types15ServiceEndpointEENtNtBa_7backend2PgE8from_sql0B21_.exit.thread.i.i

bb.q:                                             ; preds = %bb.l
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.ar
  %i.ay = sub nuw i64 %i.aj, %i.ar
  store ptr %i.ax, ptr %i.t, align 8, !noalias !196
  store i64 %i.ay, ptr %i.u, align 8, !noalias !196
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !196
  store ptr %i.ai, ptr %i.g, align 8, !noalias !196
  store i64 %i.ar, ptr %i.r, align 8, !noalias !196
  store <2 x ptr> %i.x, ptr %i.s, align 8, !noalias !196
  call void @_RNvXs0_NtNtCsjRvGck33osM_6diesel10type_impls6optionINtNtCscI6d9CVNmLh_4core6option6OptionNtNtNtCsi6wIvn64oUH_13custom_arrays5model13endpoint_type8EndpointEINtNtB9_11deserialize7FromSqlINtNtB9_9sql_types8NullableNtNtNtNtB1v_6schema4smdb9sql_types15ServiceEndpointENtNtNtB9_2pg7backend2PgE8from_sqlB1v_(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.j, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.g), !noalias !194
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !196
  br label %_RNCNvXs_NtNtNtCsjRvGck33osM_6diesel2pg5types5arrayINtNtCs40k4W9msRzi_5alloc3vec3VecINtNtCscI6d9CVNmLh_4core6option6OptionNtNtNtCsi6wIvn64oUH_13custom_arrays5model13endpoint_type8EndpointEEINtNtBc_11deserialize7FromSqlINtNtB8_9sql_types5ArrayINtNtBc_9sql_types8NullableNtNtNtNtB21_6schema4smdb9sql_types15ServiceEndpointEENtNtBa_7backend2PgE8from_sql0B21_.exit.i.i

_RNCNvXs_NtNtNtCsjRvGck33osM_6diesel2pg5types5arrayINtNtCs40k4W9msRzi_5alloc3vec3VecINtNtCscI6d9CVNmLh_4core6option6OptionNtNtNtCsi6wIvn64oUH_13custom_arrays5model13endpoint_type8EndpointEEINtNtBc_11deserialize7FromSqlINtNtB8_9sql_types5ArrayINtNtBc_9sql_types8NullableNtNtNtNtB21_6schema4smdb9sql_types15ServiceEndpointEENtNtBa_7backend2PgE8from_sql0B21_.exit.thread.i.i: ; preds = %_RNvMNtCs40k4W9msRzi_5alloc5boxedINtB2_3BoxNtNvXsf_NtB2_7convertIBv_DNtNtCscI6d9CVNmLh_4core5error5ErrorNtNtB18_6marker4SyncNtB1F_4SendEL_EINtNtB18_7convert4FromNtNtB4_6string6StringE4from11StringErrorE3newCsi6wIvn64oUH_13custom_arrays.exit.i.i.i, %_RNvNtCs40k4W9msRzi_5alloc5boxed14box_new_uninit.exit56.i.i.i, %_RNvMNtCs40k4W9msRzi_5alloc5boxedINtB2_3BoxNtNtNtCsgczF5crJ4sT_3std2io5error5ErrorE3newCsi6wIvn64oUH_13custom_arrays.exit.i.i.i
  %.sink73.i.i.i = phi ptr [ %i.ap, %_RNvNtCs40k4W9msRzi_5alloc5boxed14box_new_uninit.exit56.i.i.i ], [ %i.at, %_RNvMNtCs40k4W9msRzi_5alloc5boxedINtB2_3BoxNtNvXsf_NtB2_7convertIBv_DNtNtCscI6d9CVNmLh_4core5error5ErrorNtNtB18_6marker4SyncNtB1F_4SendEL_EINtNtB18_7convert4FromNtNtB4_6string6StringE4from11StringErrorE3newCsi6wIvn64oUH_13custom_arrays.exit.i.i.i ], [ %i.ae, %_RNvMNtCs40k4W9msRzi_5alloc5boxedINtB2_3BoxNtNtNtCsgczF5crJ4sT_3std2io5error5ErrorE3newCsi6wIvn64oUH_13custom_arrays.exit.i.i.i ]
  %.sink.i.i.i = phi ptr [ @3, %_RNvNtCs40k4W9msRzi_5alloc5boxed14box_new_uninit.exit56.i.i.i ], [ @5, %_RNvMNtCs40k4W9msRzi_5alloc5boxedINtB2_3BoxNtNvXsf_NtB2_7convertIBv_DNtNtCscI6d9CVNmLh_4core5error5ErrorNtNtB18_6marker4SyncNtB1F_4SendEL_EINtNtB18_7convert4FromNtNtB4_6string6StringE4from11StringErrorE3newCsi6wIvn64oUH_13custom_arrays.exit.i.i.i ], [ @8, %_RNvMNtCs40k4W9msRzi_5alloc5boxedINtB2_3BoxNtNtNtCsgczF5crJ4sT_3std2io5error5ErrorE3newCsi6wIvn64oUH_13custom_arrays.exit.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !196
  br label %.loopexit.i

_RNCNvXs_NtNtNtCsjRvGck33osM_6diesel2pg5types5arrayINtNtCs40k4W9msRzi_5alloc3vec3VecINtNtCscI6d9CVNmLh_4core6option6OptionNtNtNtCsi6wIvn64oUH_13custom_arrays5model13endpoint_type8EndpointEEINtNtBc_11deserialize7FromSqlINtNtB8_9sql_types5ArrayINtNtBc_9sql_types8NullableNtNtNtNtB21_6schema4smdb9sql_types15ServiceEndpointEENtNtBa_7backend2PgE8from_sql0B21_.exit.i.i: ; preds = %bb.q, %bb.i
  %.sroa.0.0.copyload.pr.i.i = load i64, ptr %i.j, align 8, !noalias !194 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !196
  %.sroa.4.0.copyload.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !194 ; 2 uses
  %.sroa.5.0.copyload.i.i = load ptr, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !noalias !194 ; 2 uses
  %i.az = icmp eq i64 %.sroa.0.0.copyload.pr.i.i, -2
  br i1 %i.az, label %.loopexit.i, label %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map12map_try_foldlINtNtBa_6result6ResultINtNtBa_6option6OptionNtNtNtCsi6wIvn64oUH_13custom_arrays5model13endpoint_type8EndpointEINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtBa_5error5ErrorNtNtBa_6marker4SyncNtB3H_4SendEL_EEuINtNtNtBa_3ops12control_flow11ControlFlowIB4g_B1m_EENCNvXs_NtNtNtCsjRvGck33osM_6diesel2pg5types5arrayINtNtB2R_3vec3VecB1m_EINtNtB5i_11deserialize7FromSqlINtNtB5e_9sql_types5ArrayINtNtB5i_9sql_types8NullableNtNtNtNtB1O_6schema4smdb9sql_types15ServiceEndpointEENtNtB5g_7backend2PgE8from_sql0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtB4k_5range5RangelEB55_EIB11_NtNtBa_7convert10InfallibleB2M_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvBaB_12try_for_each4callB1m_B4U_NcNtB4U_5Break0E0B4U_E0E0B1O_.exit.i

.loopexit.i:                                      ; preds = %_RNCNvXs_NtNtNtCsjRvGck33osM_6diesel2pg5types5arrayINtNtCs40k4W9msRzi_5alloc3vec3VecINtNtCscI6d9CVNmLh_4core6option6OptionNtNtNtCsi6wIvn64oUH_13custom_arrays5model13endpoint_type8EndpointEEINtNtBc_11deserialize7FromSqlINtNtB8_9sql_types5ArrayINtNtBc_9sql_types8NullableNtNtNtNtB21_6schema4smdb9sql_types15ServiceEndpointEENtNtBa_7backend2PgE8from_sql0B21_.exit.i.i, %_RNCNvXs_NtNtNtCsjRvGck33osM_6diesel2pg5types5arrayINtNtCs40k4W9msRzi_5alloc3vec3VecINtNtCscI6d9CVNmLh_4core6option6OptionNtNtNtCsi6wIvn64oUH_13custom_arrays5model13endpoint_type8EndpointEEINtNtBc_11deserialize7FromSqlINtNtB8_9sql_types5ArrayINtNtBc_9sql_types8NullableNtNtNtNtB21_6schema4smdb9sql_types15ServiceEndpointEENtNtBa_7backend2PgE8from_sql0B21_.exit.thread.i.i
  %.sroa.5.0.copyload9.i.i = phi ptr [ %.sink.i.i.i, %_RNCNvXs_NtNtNtCsjRvGck33osM_6diesel2pg5types5arrayINtNtCs40k4W9msRzi_5alloc3vec3VecINtNtCscI6d9CVNmLh_4core6option6OptionNtNtNtCsi6wIvn64oUH_13custom_arrays5model13endpoint_type8EndpointEEINtNtBc_11deserialize7FromSqlINtNtB8_9sql_types5ArrayINtNtBc_9sql_types8NullableNtNtNtNtB21_6schema4smdb9sql_types15ServiceEndpointEENtNtBa_7backend2PgE8from_sql0B21_.exit.thread.i.i ], [ %.sroa.5.0.copyload.i.i, %_RNCNvXs_NtNtNtCsjRvGck33osM_6diesel2pg5types5arrayINtNtCs40k4W9msRzi_5alloc3vec3VecINtNtCscI6d9CVNmLh_4core6option6OptionNtNtNtCsi6wIvn64oUH_13custom_arrays5model13endpoint_type8EndpointEEINtNtBc_11deserialize7FromSqlINtNtB8_9sql_types5ArrayINtNtBc_9sql_types8NullableNtNtNtNtB21_6schema4smdb9sql_types15ServiceEndpointEENtNtBa_7backend2PgE8from_sql0B21_.exit.i.i ] ; 3 uses
  %.sroa.4.0.copyload7.i.i = phi ptr [ %.sink73.i.i.i, %_RNCNvXs_NtNtNtCsjRvGck33osM_6diesel2pg5types5arrayINtNtCs40k4W9msRzi_5alloc3vec3VecINtNtCscI6d9CVNmLh_4core6option6OptionNtNtNtCsi6wIvn64oUH_13custom_arrays5model13endpoint_type8EndpointEEINtNtBc_11deserialize7FromSqlINtNtB8_9sql_types5ArrayINtNtBc_9sql_types8NullableNtNtNtNtB21_6schema4smdb9sql_types15ServiceEndpointEENtNtBa_7backend2PgE8from_sql0B21_.exit.thread.i.i ], [ %.sroa.4.0.copyload.i.i, %_RNCNvXs_NtNtNtCsjRvGck33osM_6diesel2pg5types5arrayINtNtCs40k4W9msRzi_5alloc3vec3VecINtNtCscI6d9CVNmLh_4core6option6OptionNtNtNtCsi6wIvn64oUH_13custom_arrays5model13endpoint_type8EndpointEEINtNtBc_11deserialize7FromSqlINtNtB8_9sql_types5ArrayINtNtBc_9sql_types8NullableNtNtNtNtB21_6schema4smdb9sql_types15ServiceEndpointEENtNtBa_7backend2PgE8from_sql0B21_.exit.i.i ] ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.4.0.copyload7.i.i), "nonnull"(ptr %.sroa.5.0.copyload9.i.i) ]
  %.val.i.i.i = load ptr, ptr %3, align 8, !noalias !204, !noundef !3 ; 4 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %.val3.i.i.i = load ptr, ptr %i.ba, align 8, !noalias !204 ; 6 uses
  %i.bb = icmp eq ptr %.val.i.i.i, null
  br i1 %i.bb, label %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map12map_try_foldlINtNtBa_6result6ResultINtNtBa_6option6OptionNtNtNtCsi6wIvn64oUH_13custom_arrays5model13endpoint_type8EndpointEINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtBa_5error5ErrorNtNtBa_6marker4SyncNtB3H_4SendEL_EEuINtNtNtBa_3ops12control_flow11ControlFlowIB4g_B1m_EENCNvXs_NtNtNtCsjRvGck33osM_6diesel2pg5types5arrayINtNtB2R_3vec3VecB1m_EINtNtB5i_11deserialize7FromSqlINtNtB5e_9sql_types5ArrayINtNtB5i_9sql_types8NullableNtNtNtNtB1O_6schema4smdb9sql_types15ServiceEndpointEENtNtB5g_7backend2PgE8from_sql0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtB4k_5range5RangelEB55_EIB11_NtNtBa_7convert10InfallibleB2M_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvBaB_12try_for_each4callB1m_B4U_NcNtB4U_5Break0E0B4U_E0E0B1O_.exit.thread.i, label %bb.r

bb.r:                                             ; preds = %.loopexit.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val3.i.i.i) ]
  %i.bc = load ptr, ptr %.val3.i.i.i, align 8, !invariant.load !3, !noalias !204 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.bc, null
  br i1 %.not.i.i.i.i.i.i, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  invoke void %i.bc(ptr noundef nonnull %.val.i.i.i)
          to label %bb.t unwind label %bb.v, !noalias !204

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.bd = getelementptr inbounds nuw i8, ptr %.val3.i.i.i, i64 8
  %i.be = load i64, ptr %i.bd, align 8, !range !10, !invariant.load !3, !noalias !204 ; 2 uses
  %i.bf = icmp eq i64 %i.be, 0
  br i1 %i.bf, label %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map12map_try_foldlINtNtBa_6result6ResultINtNtBa_6option6OptionNtNtNtCsi6wIvn64oUH_13custom_arrays5model13endpoint_type8EndpointEINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtBa_5error5ErrorNtNtBa_6marker4SyncNtB3H_4SendEL_EEuINtNtNtBa_3ops12control_flow11ControlFlowIB4g_B1m_EENCNvXs_NtNtNtCsjRvGck33osM_6diesel2pg5types5arrayINtNtB2R_3vec3VecB1m_EINtNtB5i_11deserialize7FromSqlINtNtB5e_9sql_types5ArrayINtNtB5i_9sql_types8NullableNtNtNtNtB1O_6schema4smdb9sql_types15ServiceEndpointEENtNtB5g_7backend2PgE8from_sql0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtB4k_5range5RangelEB55_EIB11_NtNtBa_7convert10InfallibleB2M_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvBaB_12try_for_each4callB1m_B4U_NcNtB4U_5Break0E0B4U_E0E0B1O_.exit.thread.i, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bg = getelementptr inbounds nuw i8, ptr %.val3.i.i.i, i64 16
  %i.bh = load i64, ptr %i.bg, align 8, !range !11, !invariant.load !3, !noalias !204
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i, i64 noundef range(i64 1, -9223372036854775808) %i.be, i64 noundef range(i64 1, 536870913) %i.bh) #17, !noalias !204
  br label %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map12map_try_foldlINtNtBa_6result6ResultINtNtBa_6option6OptionNtNtNtCsi6wIvn64oUH_13custom_arrays5model13endpoint_type8EndpointEINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtBa_5error5ErrorNtNtBa_6marker4SyncNtB3H_4SendEL_EEuINtNtNtBa_3ops12control_flow11ControlFlowIB4g_B1m_EENCNvXs_NtNtNtCsjRvGck33osM_6diesel2pg5types5arrayINtNtB2R_3vec3VecB1m_EINtNtB5i_11deserialize7FromSqlINtNtB5e_9sql_types5ArrayINtNtB5i_9sql_types8NullableNtNtNtNtB1O_6schema4smdb9sql_types15ServiceEndpointEENtNtB5g_7backend2PgE8from_sql0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtB4k_5range5RangelEB55_EIB11_NtNtBa_7convert10InfallibleB2M_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvBaB_12try_for_each4callB1m_B4U_NcNtB4U_5Break0E0B4U_E0E0B1O_.exit.thread.i

bb.v:                                             ; preds = %bb.s
  %i.bi = landingpad { ptr, i32 }
          cleanup
  %i.bj = getelementptr inbounds nuw i8, ptr %.val3.i.i.i, i64 8
  %i.bk = load i64, ptr %i.bj, align 8, !range !10, !invariant.load !3, !noalias !204 ; 2 uses
  %i.bl = icmp eq i64 %i.bk, 0
  br i1 %i.bl, label %.body.i.i.i, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bm = getelementptr inbounds nuw i8, ptr %.val3.i.i.i, i64 16
  %i.bn = load i64, ptr %i.bm, align 8, !range !11, !invariant.load !3, !noalias !204
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i, i64 noundef range(i64 1, -9223372036854775808) %i.bk, i64 noundef range(i64 1, 536870913) %i.bn) #17, !noalias !204
  br label %.body.i.i.i

.body.i.i.i:                                      ; preds = %bb.w, %bb.v
  store ptr %.sroa.4.0.copyload7.i.i, ptr %3, align 8, !noalias !204
  store ptr %.sroa.5.0.copyload9.i.i, ptr %i.ba, align 8, !noalias !204
  br label %common.resume.i.i

_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map12map_try_foldlINtNtBa_6result6ResultINtNtBa_6option6OptionNtNtNtCsi6wIvn64oUH_13custom_arrays5model13endpoint_type8EndpointEINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtBa_5error5ErrorNtNtBa_6marker4SyncNtB3H_4SendEL_EEuINtNtNtBa_3ops12control_flow11ControlFlowIB4g_B1m_EENCNvXs_NtNtNtCsjRvGck33osM_6diesel2pg5types5arrayINtNtB2R_3vec3VecB1m_EINtNtB5i_11deserialize7FromSqlINtNtB5e_9sql_types5ArrayINtNtB5i_9sql_types8NullableNtNtNtNtB1O_6schema4smdb9sql_types15ServiceEndpointEENtNtB5g_7backend2PgE8from_sql0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtB4k_5range5RangelEB55_EIB11_NtNtBa_7convert10InfallibleB2M_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvBaB_12try_for_each4callB1m_B4U_NcNtB4U_5Break0E0B4U_E0E0B1O_.exit.thread.i: ; preds = %bb.u, %bb.t, %.loopexit.i
  store ptr %.sroa.4.0.copyload7.i.i, ptr %3, align 8, !noalias !204
  store ptr %.sroa.5.0.copyload9.i.i, ptr %i.ba, align 8, !noalias !204
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !195
  br label %.loopexit19.i

_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map12map_try_foldlINtNtBa_6result6ResultINtNtBa_6option6OptionNtNtNtCsi6wIvn64oUH_13custom_arrays5model13endpoint_type8EndpointEINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtBa_5error5ErrorNtNtBa_6marker4SyncNtB3H_4SendEL_EEuINtNtNtBa_3ops12control_flow11ControlFlowIB4g_B1m_EENCNvXs_NtNtNtCsjRvGck33osM_6diesel2pg5types5arrayINtNtB2R_3vec3VecB1m_EINtNtB5i_11deserialize7FromSqlINtNtB5e_9sql_types5ArrayINtNtB5i_9sql_types8NullableNtNtNtNtB1O_6schema4smdb9sql_types15ServiceEndpointEENtNtB5g_7backend2PgE8from_sql0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtB4k_5range5RangelEB55_EIB11_NtNtBa_7convert10InfallibleB2M_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvBaB_12try_for_each4callB1m_B4U_NcNtB4U_5Break0E0B4U_E0E0B1O_.exit.i: ; preds = %_RNCNvXs_NtNtNtCsjRvGck33osM_6diesel2pg5types5arrayINtNtCs40k4W9msRzi_5alloc3vec3VecINtNtCscI6d9CVNmLh_4core6option6OptionNtNtNtCsi6wIvn64oUH_13custom_arrays5model13endpoint_type8EndpointEEINtNtBc_11deserialize7FromSqlINtNtB8_9sql_types5ArrayINtNtBc_9sql_types8NullableNtNtNtNtB21_6schema4smdb9sql_types15ServiceEndpointEENtNtBa_7backend2PgE8from_sql0B21_.exit.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.9.i, ptr noundef nonnull align 8 dereferenceable(40) %i.o, i64 40, i1 false), !noalias !195
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !195
  %.not.i.i = icmp eq i64 %.sroa.0.0.copyload.pr.i.i, -3
  br i1 %.not.i.i, label %bb.x, label %.loopexit19.i

._crit_edge.i:                                    ; preds = %bb.x, %bb.a
  store i64 -3, ptr %0, align 8, !alias.scope !205
  br label %_RINvYINtNtNtCscI6d9CVNmLh_4core3ops5range5RangelENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtBR_8adapters3map12map_try_foldlINtNtBa_6result6ResultINtNtBa_6option6OptionNtNtNtCsi6wIvn64oUH_13custom_arrays5model13endpoint_type8EndpointEINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtBa_5error5ErrorNtNtBa_6marker4SyncNtB4V_4SendEL_EEuINtNtB8_12control_flow11ControlFlowIB5u_B2A_EENCNvXs_NtNtNtCsjRvGck33osM_6diesel2pg5types5arrayINtNtB45_3vec3VecB2A_EINtNtB6q_11deserialize7FromSqlINtNtB6m_9sql_types5ArrayINtNtB6q_9sql_types8NullableNtNtNtNtB32_6schema4smdb9sql_types15ServiceEndpointEENtNtB6o_7backend2PgE8from_sql0NCINvXB1H_INtB1H_12GenericShuntINtB1F_3MapB3_B6d_EIB2f_NtNtBa_7convert10InfallibleB40_EEBL_8try_folduNCINvNvBL_12try_for_each4callB2A_B62_NcNtB62_5Break0E0B62_E0E0B5t_EB32_.exit

.loopexit19.i:                                    ; preds = %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map12map_try_foldlINtNtBa_6result6ResultINtNtBa_6option6OptionNtNtNtCsi6wIvn64oUH_13custom_arrays5model13endpoint_type8EndpointEINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtBa_5error5ErrorNtNtBa_6marker4SyncNtB3H_4SendEL_EEuINtNtNtBa_3ops12control_flow11ControlFlowIB4g_B1m_EENCNvXs_NtNtNtCsjRvGck33osM_6diesel2pg5types5arrayINtNtB2R_3vec3VecB1m_EINtNtB5i_11deserialize7FromSqlINtNtB5e_9sql_types5ArrayINtNtB5i_9sql_types8NullableNtNtNtNtB1O_6schema4smdb9sql_types15ServiceEndpointEENtNtB5g_7backend2PgE8from_sql0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtB4k_5range5RangelEB55_EIB11_NtNtBa_7convert10InfallibleB2M_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvBaB_12try_for_each4callB1m_B4U_NcNtB4U_5Break0E0B4U_E0E0B1O_.exit.i, %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map12map_try_foldlINtNtBa_6result6ResultINtNtBa_6option6OptionNtNtNtCsi6wIvn64oUH_13custom_arrays5model13endpoint_type8EndpointEINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtBa_5error5ErrorNtNtBa_6marker4SyncNtB3H_4SendEL_EEuINtNtNtBa_3ops12control_flow11ControlFlowIB4g_B1m_EENCNvXs_NtNtNtCsjRvGck33osM_6diesel2pg5types5arrayINtNtB2R_3vec3VecB1m_EINtNtB5i_11deserialize7FromSqlINtNtB5e_9sql_types5ArrayINtNtB5i_9sql_types8NullableNtNtNtNtB1O_6schema4smdb9sql_types15ServiceEndpointEENtNtB5g_7backend2PgE8from_sql0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtB4k_5range5RangelEB55_EIB11_NtNtBa_7convert10InfallibleB2M_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvBaB_12try_for_each4callB1m_B4U_NcNtB4U_5Break0E0B4U_E0E0B1O_.exit.thread.i
  %.sroa.03.014.i = phi i64 [ -2, %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map12map_try_foldlINtNtBa_6result6ResultINtNtBa_6option6OptionNtNtNtCsi6wIvn64oUH_13custom_arrays5model13endpoint_type8EndpointEINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtBa_5error5ErrorNtNtBa_6marker4SyncNtB3H_4SendEL_EEuINtNtNtBa_3ops12control_flow11ControlFlowIB4g_B1m_EENCNvXs_NtNtNtCsjRvGck33osM_6diesel2pg5types5arrayINtNtB2R_3vec3VecB1m_EINtNtB5i_11deserialize7FromSqlINtNtB5e_9sql_types5ArrayINtNtB5i_9sql_types8NullableNtNtNtNtB1O_6schema4smdb9sql_types15ServiceEndpointEENtNtB5g_7backend2PgE8from_sql0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtB4k_5range5RangelEB55_EIB11_NtNtBa_7convert10InfallibleB2M_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvBaB_12try_for_each4callB1m_B4U_NcNtB4U_5Break0E0B4U_E0E0B1O_.exit.thread.i ], [ %.sroa.0.0.copyload.pr.i.i, %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map12map_try_foldlINtNtBa_6result6ResultINtNtBa_6option6OptionNtNtNtCsi6wIvn64oUH_13custom_arrays5model13endpoint_type8EndpointEINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtBa_5error5ErrorNtNtBa_6marker4SyncNtB3H_4SendEL_EEuINtNtNtBa_3ops12control_flow11ControlFlowIB4g_B1m_EENCNvXs_NtNtNtCsjRvGck33osM_6diesel2pg5types5arrayINtNtB2R_3vec3VecB1m_EINtNtB5i_11deserialize7FromSqlINtNtB5e_9sql_types5ArrayINtNtB5i_9sql_types8NullableNtNtNtNtB1O_6schema4smdb9sql_types15ServiceEndpointEENtNtB5g_7backend2PgE8from_sql0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtB4k_5range5RangelEB55_EIB11_NtNtBa_7convert10InfallibleB2M_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvBaB_12try_for_each4callB1m_B4U_NcNtB4U_5Break0E0B4U_E0E0B1O_.exit.i ]
  %.sroa.6.013.i = phi ptr [ undef, %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map12map_try_foldlINtNtBa_6result6ResultINtNtBa_6option6OptionNtNtNtCsi6wIvn64oUH_13custom_arrays5model13endpoint_type8EndpointEINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtBa_5error5ErrorNtNtBa_6marker4SyncNtB3H_4SendEL_EEuINtNtNtBa_3ops12control_flow11ControlFlowIB4g_B1m_EENCNvXs_NtNtNtCsjRvGck33osM_6diesel2pg5types5arrayINtNtB2R_3vec3VecB1m_EINtNtB5i_11deserialize7FromSqlINtNtB5e_9sql_types5ArrayINtNtB5i_9sql_types8NullableNtNtNtNtB1O_6schema4smdb9sql_types15ServiceEndpointEENtNtB5g_7backend2PgE8from_sql0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtB4k_5range5RangelEB55_EIB11_NtNtBa_7convert10InfallibleB2M_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvBaB_12try_for_each4callB1m_B4U_NcNtB4U_5Break0E0B4U_E0E0B1O_.exit.thread.i ], [ %.sroa.4.0.copyload.i.i, %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map12map_try_foldlINtNtBa_6result6ResultINtNtBa_6option6OptionNtNtNtCsi6wIvn64oUH_13custom_arrays5model13endpoint_type8EndpointEINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtBa_5error5ErrorNtNtBa_6marker4SyncNtB3H_4SendEL_EEuINtNtNtBa_3ops12control_flow11ControlFlowIB4g_B1m_EENCNvXs_NtNtNtCsjRvGck33osM_6diesel2pg5types5arrayINtNtB2R_3vec3VecB1m_EINtNtB5i_11deserialize7FromSqlINtNtB5e_9sql_types5ArrayINtNtB5i_9sql_types8NullableNtNtNtNtB1O_6schema4smdb9sql_types15ServiceEndpointEENtNtB5g_7backend2PgE8from_sql0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtB4k_5range5RangelEB55_EIB11_NtNtBa_7convert10InfallibleB2M_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvBaB_12try_for_each4callB1m_B4U_NcNtB4U_5Break0E0B4U_E0E0B1O_.exit.i ]
  %.sroa.8.012.i = phi ptr [ undef, %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map12map_try_foldlINtNtBa_6result6ResultINtNtBa_6option6OptionNtNtNtCsi6wIvn64oUH_13custom_arrays5model13endpoint_type8EndpointEINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtBa_5error5ErrorNtNtBa_6marker4SyncNtB3H_4SendEL_EEuINtNtNtBa_3ops12control_flow11ControlFlowIB4g_B1m_EENCNvXs_NtNtNtCsjRvGck33osM_6diesel2pg5types5arrayINtNtB2R_3vec3VecB1m_EINtNtB5i_11deserialize7FromSqlINtNtB5e_9sql_types5ArrayINtNtB5i_9sql_types8NullableNtNtNtNtB1O_6schema4smdb9sql_types15ServiceEndpointEENtNtB5g_7backend2PgE8from_sql0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtB4k_5range5RangelEB55_EIB11_NtNtBa_7convert10InfallibleB2M_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvBaB_12try_for_each4callB1m_B4U_NcNtB4U_5Break0E0B4U_E0E0B1O_.exit.thread.i ], [ %.sroa.5.0.copyload.i.i, %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map12map_try_foldlINtNtBa_6result6ResultINtNtBa_6option6OptionNtNtNtCsi6wIvn64oUH_13custom_arrays5model13endpoint_type8EndpointEINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtBa_5error5ErrorNtNtBa_6marker4SyncNtB3H_4SendEL_EEuINtNtNtBa_3ops12control_flow11ControlFlowIB4g_B1m_EENCNvXs_NtNtNtCsjRvGck33osM_6diesel2pg5types5arrayINtNtB2R_3vec3VecB1m_EINtNtB5i_11deserialize7FromSqlINtNtB5e_9sql_types5ArrayINtNtB5i_9sql_types8NullableNtNtNtNtB1O_6schema4smdb9sql_types15ServiceEndpointEENtNtB5g_7backend2PgE8from_sql0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtB4k_5range5RangelEB55_EIB11_NtNtBa_7convert10InfallibleB2M_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvBaB_12try_for_each4callB1m_B4U_NcNtB4U_5Break0E0B4U_E0E0B1O_.exit.i ]
  %.sroa.66.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.66.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.9.i, i64 40, i1 false), !noalias !190
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9.i)
  store i64 %.sroa.03.014.i, ptr %0, align 8, !alias.scope !206
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.6.013.i, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !206
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.8.012.i, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !206
  br label %_RINvYINtNtNtCscI6d9CVNmLh_4core3ops5range5RangelENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtBR_8adapters3map12map_try_foldlINtNtBa_6result6ResultINtNtBa_6option6OptionNtNtNtCsi6wIvn64oUH_13custom_arrays5model13endpoint_type8EndpointEINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtBa_5error5ErrorNtNtBa_6marker4SyncNtB4V_4SendEL_EEuINtNtB8_12control_flow11ControlFlowIB5u_B2A_EENCNvXs_NtNtNtCsjRvGck33osM_6diesel2pg5types5arrayINtNtB45_3vec3VecB2A_EINtNtB6q_11deserialize7FromSqlINtNtB6m_9sql_types5ArrayINtNtB6q_9sql_types8NullableNtNtNtNtB32_6schema4smdb9sql_types15ServiceEndpointEENtNtB6o_7backend2PgE8from_sql0NCINvXB1H_INtB1H_12GenericShuntINtB1F_3MapB3_B6d_EIB2f_NtNtBa_7convert10InfallibleB40_EEBL_8try_folduNCINvNvBL_12try_for_each4callB2A_B62_NcNtB62_5Break0E0B62_E0E0B5t_EB32_.exit

bb.x:                                             ; preds = %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map12map_try_foldlINtNtBa_6result6ResultINtNtBa_6option6OptionNtNtNtCsi6wIvn64oUH_13custom_arrays5model13endpoint_type8EndpointEINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtBa_5error5ErrorNtNtBa_6marker4SyncNtB3H_4SendEL_EEuINtNtNtBa_3ops12control_flow11ControlFlowIB4g_B1m_EENCNvXs_NtNtNtCsjRvGck33osM_6diesel2pg5types5arrayINtNtB2R_3vec3VecB1m_EINtNtB5i_11deserialize7FromSqlINtNtB5e_9sql_types5ArrayINtNtB5i_9sql_types8NullableNtNtNtNtB1O_6schema4smdb9sql_types15ServiceEndpointEENtNtB5g_7backend2PgE8from_sql0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtB4k_5range5RangelEB55_EIB11_NtNtBa_7convert10InfallibleB2M_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvBaB_12try_for_each4callB1m_B4U_NcNtB4U_5Break0E0B4U_E0E0B1O_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9.i)
  %exitcond.not.i = icmp eq i32 %i.z, %i.m
  br i1 %exitcond.not.i, label %._crit_edge.i, label %bb.b

_RINvYINtNtNtCscI6d9CVNmLh_4core3ops5range5RangelENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtBR_8adapters3map12map_try_foldlINtNtBa_6result6ResultINtNtBa_6option6OptionNtNtNtCsi6wIvn64oUH_13custom_arrays5model13endpoint_type8EndpointEINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtBa_5error5ErrorNtNtBa_6marker4SyncNtB4V_4SendEL_EEuINtNtB8_12control_flow11ControlFlowIB5u_B2A_EENCNvXs_NtNtNtCsjRvGck33osM_6diesel2pg5types5arrayINtNtB45_3vec3VecB2A_EINtNtB6q_11deserialize7FromSqlINtNtB6m_9sql_types5ArrayINtNtB6q_9sql_types8NullableNtNtNtNtB32_6schema4smdb9sql_types15ServiceEndpointEENtNtB6o_7backend2PgE8from_sql0NCINvXB1H_INtB1H_12GenericShuntINtB1F_3MapB3_B6d_EIB2f_NtNtBa_7convert10InfallibleB40_EEBL_8try_folduNCINvNvBL_12try_for_each4callB2A_B62_NcNtB62_5Break0E0B62_E0E0B5t_EB32_.exit: ; preds = %._crit_edge.i, %.loopexit19.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden { i32, i32 } @_RINvXs0_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_3ops5range5RangelENCNvXs_NtNtNtCsjRvGck33osM_6diesel2pg5types5arrayINtNtCs40k4W9msRzi_5alloc3vec3VecINtNtBc_6option6OptionlEEINtNtB1C_11deserialize7FromSqlINtNtB1y_9sql_types5ArrayINtNtB1C_9sql_types8NullableNtB44_7IntegerEENtNtB1A_7backend2PgE8from_sql0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvXB8_INtB8_12GenericShuntBN_INtNtBc_6result6ResultNtNtBc_7convert10InfallibleINtNtB2h_5boxed3BoxDNtNtBc_5error5ErrorNtNtBc_6marker4SyncNtB7U_4SendEL_EEEB5e_8try_folduNCINvNvB5e_12try_for_each4callB2J_INtNtB12_12control_flow11ControlFlowB2J_ENcNtB9e_5Break0E0B9e_E0IB9f_B9e_EECsi6wIvn64oUH_13custom_arrays(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef nonnull readnone captures(none) %1, ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 7 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [4 x i8], align 4                 ; 6 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [24 x i8], align 8                ; 7 uses
  %i.f = alloca [24 x i8], align 8                ; 6 uses
  %i.g = alloca [32 x i8], align 8                ; 7 uses
  %i.h = alloca [32 x i8], align 8                ; 4 uses
  %i.i = alloca [4 x i8], align 4                 ; 5 uses
  %i.j = alloca [16 x i8], align 8                ; 6 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !230)
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 28
  tail call void @llvm.experimental.noalias.scope.decl(metadata !231)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !232)
  %i.m = load i32, ptr %i.k, align 8, !alias.scope !233, !noundef !3 ; 2 uses
  %i.n = load i32, ptr %i.l, align 4, !alias.scope !234, !noundef !3
  %i.o = icmp slt i32 %i.m, %i.n
  br i1 %i.o, label %bb.b, label %_RINvYINtNtNtCscI6d9CVNmLh_4core3ops5range5RangelENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtBR_8adapters3map12map_try_foldlINtNtBa_6result6ResultINtNtBa_6option6OptionlEINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtBa_5error5ErrorNtNtBa_6marker4SyncNtB3T_4SendEL_EEuINtNtB8_12control_flow11ControlFlowIB4s_B2A_EENCNvXs_NtNtNtCsjRvGck33osM_6diesel2pg5types5arrayINtNtB33_3vec3VecB2A_EINtNtB5o_11deserialize7FromSqlINtNtB5k_9sql_types5ArrayINtNtB5o_9sql_types8NullableNtB7g_7IntegerEENtNtB5m_7backend2PgE8from_sql0NCINvXB1H_INtB1H_12GenericShuntINtB1F_3MapB3_B5b_EIB2f_NtNtBa_7convert10InfallibleB2Y_EEBL_8try_folduNCINvNvBL_12try_for_each4callB2A_B50_NcNtB50_5Break0E0B50_E0E0B4r_ECsi6wIvn64oUH_13custom_arrays.exit

bb.b:                                             ; preds = %bb.a
  %i.p = add nsw i32 %i.m, 1
  store i32 %i.p, ptr %i.k, align 8, !alias.scope !235
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !230
  tail call void @llvm.experimental.noalias.scope.decl(metadata !236)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !237
  %i.q = load ptr, ptr %0, align 8, !alias.scope !236, !noalias !230, !nonnull !3, !align !9, !noundef !3 ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !238)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !239
  store i32 0, ptr %i.c, align 4, !noalias !239
  tail call void @llvm.experimental.noalias.scope.decl(metadata !240)
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 4 uses
  %i.s = load i64, ptr %i.r, align 8, !alias.scope !241, !noalias !237, !noundef !3 ; 3 uses
  %i.t = icmp ult i64 %i.s, 4
  %i.u = load ptr, ptr %i.q, align 8, !alias.scope !241, !noalias !237, !nonnull !3, !noundef !3 ; 3 uses
  br i1 %i.t, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.s
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !239
  store ptr %i.v, ptr %i.q, align 8, !alias.scope !241, !noalias !237
  store i64 0, ptr %i.r, align 8, !alias.scope !241, !noalias !237
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !237
  store ptr @26, ptr %i.d, align 8, !noalias !237
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #17, !noalias !237
  %i.w = tail call noundef align 8 dereferenceable_or_null(8) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef range(i64 1, 25) 8, i64 noundef range(i64 1, 9) 8) #17, !noalias !237 ; 3 uses
  %i.x = icmp eq ptr %i.w, null
  br i1 %i.x, label %bb.d, label %_RNvMNtCs40k4W9msRzi_5alloc5boxedINtB2_3BoxNtNtNtCsgczF5crJ4sT_3std2io5error5ErrorE3newCsi6wIvn64oUH_13custom_arrays.exit.i.i.i, !prof !5

bb.d:                                             ; preds = %bb.c
  invoke void @_RNvNtCs40k4W9msRzi_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 8) #14
          to label %.noexc.i.i.i unwind label %bb.e, !noalias !237

.noexc.i.i.i:                                     ; preds = %bb.d
  unreachable

bb.e:                                             ; preds = %bb.d
  %i.y = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCsgczF5crJ4sT_3std2io5error5ErrorECsi6wIvn64oUH_13custom_arrays(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.d) #15
          to label %common.resume.i.i unwind label %bb.f, !noalias !237

bb.f:                                             ; preds = %bb.e
  %i.z = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #16, !noalias !237
  unreachable

common.resume.i.i:                                ; preds = %.body.i.i.i, %bb.o, %bb.e
  %common.resume.op.i.i = phi { ptr, i32 } [ %i.bg, %.body.i.i.i ], [ %i.y, %bb.e ], [ %i.ap, %bb.o ]
  resume { ptr, i32 } %common.resume.op.i.i

_RNvMNtCs40k4W9msRzi_5alloc5boxedINtB2_3BoxNtNtNtCsgczF5crJ4sT_3std2io5error5ErrorE3newCsi6wIvn64oUH_13custom_arrays.exit.i.i.i: ; preds = %bb.c
  store ptr @26, ptr %i.w, align 8, !noalias !237
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !237
  br label %_RNCNvXs_NtNtNtCsjRvGck33osM_6diesel2pg5types5arrayINtNtCs40k4W9msRzi_5alloc3vec3VecINtNtCscI6d9CVNmLh_4core6option6OptionlEEINtNtBc_11deserialize7FromSqlINtNtB8_9sql_types5ArrayINtNtBc_9sql_types8NullableNtB2S_7IntegerEENtNtBa_7backend2PgE8from_sql0Csi6wIvn64oUH_13custom_arrays.exit.thread.i.i

bb.g:                                             ; preds = %bb.b
  %i.aa = getelementptr inbounds nuw i8, ptr %i.u, i64 4 ; 3 uses
  %i.ab = add nsw i64 %i.s, -4                    ; 4 uses
  call void @_RINvNtCscI6d9CVNmLh_4core5slice20copy_from_slice_implhECsi6wIvn64oUH_13custom_arrays(ptr noalias noundef nonnull %i.c, i64 noundef 4, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.u, i64 noundef 4, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @24), !noalias !242
  %.val.i.i.i.i = load i32, ptr %i.c, align 4, !noalias !239 ; 2 uses
  %i.ac = call noundef i32 @llvm.bswap.i32(i32 %.val.i.i.i.i) ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !239
  store ptr %i.aa, ptr %i.q, align 8, !alias.scope !241, !noalias !237
  store i64 %i.ab, ptr %i.r, align 8, !alias.scope !241, !noalias !237
  store i32 %i.ac, ptr %i.i, align 4, !noalias !237
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ae = load ptr, ptr %i.ad, align 8, !alias.scope !236, !noalias !230, !nonnull !3, !noundef !3
  %i.af = load i8, ptr %i.ae, align 1, !range !8, !noalias !237, !noundef !3
  %i.ag = trunc nuw i8 %i.af to i1
  %i.ah = icmp eq i32 %.val.i.i.i.i, -1
  %or.cond.i.i.i = and i1 %i.ah, %i.ag
  br i1 %or.cond.i.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ai = icmp sgt i32 %i.ac, -1
  br i1 %i.ai, label %bb.l, label %bb.j

bb.i:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !237
  store ptr null, ptr %i.h, align 8, !noalias !237
  call void @_RNvXs0_NtNtCsjRvGck33osM_6diesel10type_impls6optionINtNtCscI6d9CVNmLh_4core6option6OptionlEINtNtB9_11deserialize7FromSqlINtNtB9_9sql_types8NullableNtB1X_7IntegerENtNtNtB9_2pg7backend2PgE17from_nullable_sqlCsi6wIvn64oUH_13custom_arrays(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.j, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(32) %i.h), !noalias !243
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !237
  br label %_RNCNvXs_NtNtNtCsjRvGck33osM_6diesel2pg5types5arrayINtNtCs40k4W9msRzi_5alloc3vec3VecINtNtCscI6d9CVNmLh_4core6option6OptionlEEINtNtBc_11deserialize7FromSqlINtNtB8_9sql_types5ArrayINtNtBc_9sql_types8NullableNtB2S_7IntegerEENtNtBa_7backend2PgE8from_sql0Csi6wIvn64oUH_13custom_arrays.exit.i.i

bb.j:                                             ; preds = %bb.h
  call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #17, !noalias !237
  %i.aj = call noundef dereferenceable_or_null(1) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef range(i64 1, 25) 1, i64 noundef range(i64 1, 9) 1) #17, !noalias !237 ; 3 uses
  %i.ak = icmp eq ptr %i.aj, null
  br i1 %i.ak, label %bb.k, label %_RNvNtCs40k4W9msRzi_5alloc5boxed14box_new_uninit.exit56.i.i.i, !prof !5
end_hunk_0
begin_hunk_1_@_RINvXs0_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_3ops5range5RangelENCNvXs_NtNtNtCsjRvGck33osM_6diesel2pg5types5arrayINtNtCs40k4W9msRzi_5alloc3vec3VecINtNtBc_6option6OptionlEEINtNtB1C_11deserialize7FromSqlINtNtB1y_9sql_types5ArrayINtNtB1C_9sql_types8NullableNtB44_7IntegerEENtNtB1A_7backend2PgE8from_sql0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvXB8_INtB8_12GenericShuntBN_INtNtBc_6result6ResultNtNtBc_7convert10InfallibleINtNtB2h_5boxed3BoxDNtNtBc_5error5ErrorNtNtBc_6marker4SyncNtB7U_4SendEL_EEEB5e_8try_folduNCINvNvB5e_12try_for_each4callB2J_INtNtB12_12control_flow11ControlFlowB2J_ENcNtB9e_5Break0E0B9e_E0IB9f_B9e_EECsi6wIvn64oUH_13custom_arrays:bb.a
  store i8 3, ptr %i.aj, align 1, !noalias !237
  br label %_RNCNvXs_NtNtNtCsjRvGck33osM_6diesel2pg5types5arrayINtNtCs40k4W9msRzi_5alloc3vec3VecINtNtCscI6d9CVNmLh_4core6option6OptionlEEINtNtBc_11deserialize7FromSqlINtNtB8_9sql_types5ArrayINtNtBc_9sql_types8NullableNtB2S_7IntegerEENtNtBa_7backend2PgE8from_sql0Csi6wIvn64oUH_13custom_arrays.exit.thread.i.i

bb.l:                                             ; preds = %bb.h
  %i.al = zext nneg i32 %i.ac to i64              ; 4 uses
  %.not.i.i.i = icmp ult i64 %i.ab, %i.al
  br i1 %.not.i.i.i, label %bb.m, label %bb.q

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !237
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !244
  store i64 %i.ab, ptr %i.b, align 8, !noalias !244
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !244
  store ptr %i.i, ptr %i.a, align 8, !noalias !244
  %.sroa.42.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs9_NtNtNtCscI6d9CVNmLh_4core3fmt3num3implNtB9_7Display3fmt, ptr %.sroa.42.0..sroa_idx.i.i.i.i, align 8, !noalias !244
  %i.am = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.b, ptr %i.am, align 8, !noalias !244
  %.sroa.46.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr @_RNvXsi_NtNtNtCscI6d9CVNmLh_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.46.0..sroa_idx.i.i.i.i, align 8, !noalias !244
  call void @_RNvNvNtCs40k4W9msRzi_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.f, ptr noundef nonnull @0, ptr noundef nonnull %i.a), !noalias !237
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !244
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !244
  %.sroa.79.sroa.0.0.copyload32.i.i.i = load i64, ptr %i.f, align 8, !noalias !237
  %.sroa.79.sroa.8.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.sroa.79.sroa.8.0.copyload34.i.i.i = load ptr, ptr %.sroa.79.sroa.8.0..sroa_idx.i.i.i, align 8, !noalias !237
  %.sroa.79.sroa.9.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %.sroa.79.sroa.9.0.copyload37.i.i.i = load i64, ptr %.sroa.79.sroa.9.0..sroa_idx.i.i.i, align 8, !noalias !237
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !237
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !237
  store i64 %.sroa.79.sroa.0.0.copyload32.i.i.i, ptr %i.e, align 8, !noalias !237
  %.sroa.451.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr %.sroa.79.sroa.8.0.copyload34.i.i.i, ptr %.sroa.451.0..sroa_idx.i.i.i, align 8, !noalias !237
  %.sroa.552.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store i64 %.sroa.79.sroa.9.0.copyload37.i.i.i, ptr %.sroa.552.0..sroa_idx.i.i.i, align 8, !noalias !237
  call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #17, !noalias !245
  %i.an = call noundef align 8 dereferenceable_or_null(24) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef range(i64 1, 25) 24, i64 noundef range(i64 1, 9) 8) #17, !noalias !245 ; 3 uses
  %i.ao = icmp eq ptr %i.an, null
  br i1 %i.ao, label %bb.n, label %_RNvMNtCs40k4W9msRzi_5alloc5boxedINtB2_3BoxNtNvXsf_NtB2_7convertIBv_DNtNtCscI6d9CVNmLh_4core5error5ErrorNtNtB18_6marker4SyncNtB1F_4SendEL_EINtNtB18_7convert4FromNtNtB4_6string6StringE4from11StringErrorE3newCsi6wIvn64oUH_13custom_arrays.exit.i.i.i, !prof !5

bb.n:                                             ; preds = %bb.m
  invoke void @_RNvNtCs40k4W9msRzi_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 24) #14
          to label %.noexc57.i.i.i unwind label %bb.o, !noalias !237

.noexc57.i.i.i:                                   ; preds = %bb.n
  unreachable

bb.o:                                             ; preds = %bb.n
  %i.ap = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNvXsf_NtNtCs40k4W9msRzi_5alloc5boxed7convertINtBL_3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1R_4SendEL_EINtNtB4_7convert4FromNtNtBN_6string6StringE4from11StringErrorECsi6wIvn64oUH_13custom_arrays(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e) #15
          to label %common.resume.i.i unwind label %bb.p, !noalias !237

bb.p:                                             ; preds = %bb.o
  %i.aq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #16, !noalias !237
  unreachable

_RNvMNtCs40k4W9msRzi_5alloc5boxedINtB2_3BoxNtNvXsf_NtB2_7convertIBv_DNtNtCscI6d9CVNmLh_4core5error5ErrorNtNtB18_6marker4SyncNtB1F_4SendEL_EINtNtB18_7convert4FromNtNtB4_6string6StringE4from11StringErrorE3newCsi6wIvn64oUH_13custom_arrays.exit.i.i.i: ; preds = %bb.m
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.an, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false), !noalias !237
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !237
  br label %_RNCNvXs_NtNtNtCsjRvGck33osM_6diesel2pg5types5arrayINtNtCs40k4W9msRzi_5alloc3vec3VecINtNtCscI6d9CVNmLh_4core6option6OptionlEEINtNtBc_11deserialize7FromSqlINtNtB8_9sql_types5ArrayINtNtBc_9sql_types8NullableNtB2S_7IntegerEENtNtBa_7backend2PgE8from_sql0Csi6wIvn64oUH_13custom_arrays.exit.thread.i.i

bb.q:                                             ; preds = %bb.l
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.al
  %i.as = sub nuw i64 %i.ab, %i.al
  store ptr %i.ar, ptr %i.q, align 8, !noalias !237
  store i64 %i.as, ptr %i.r, align 8, !noalias !237
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !237
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.au = load ptr, ptr %i.at, align 8, !alias.scope !236, !noalias !230, !nonnull !3, !align !9, !noundef !3
  store ptr %i.aa, ptr %i.g, align 8, !noalias !237
  %i.av = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store i64 %i.al, ptr %i.av, align 8, !noalias !237
  %i.aw = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store ptr %i.au, ptr %i.aw, align 8, !noalias !237
  %i.ax = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  store ptr @6, ptr %i.ax, align 8, !noalias !237
  call void @_RNvXs0_NtNtCsjRvGck33osM_6diesel10type_impls6optionINtNtCscI6d9CVNmLh_4core6option6OptionlEINtNtB9_11deserialize7FromSqlINtNtB9_9sql_types8NullableNtB1X_7IntegerENtNtNtB9_2pg7backend2PgE8from_sqlCsi6wIvn64oUH_13custom_arrays(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.j, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.g), !noalias !243
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !237
  br label %_RNCNvXs_NtNtNtCsjRvGck33osM_6diesel2pg5types5arrayINtNtCs40k4W9msRzi_5alloc3vec3VecINtNtCscI6d9CVNmLh_4core6option6OptionlEEINtNtBc_11deserialize7FromSqlINtNtB8_9sql_types5ArrayINtNtBc_9sql_types8NullableNtB2S_7IntegerEENtNtBa_7backend2PgE8from_sql0Csi6wIvn64oUH_13custom_arrays.exit.i.i

_RNCNvXs_NtNtNtCsjRvGck33osM_6diesel2pg5types5arrayINtNtCs40k4W9msRzi_5alloc3vec3VecINtNtCscI6d9CVNmLh_4core6option6OptionlEEINtNtBc_11deserialize7FromSqlINtNtB8_9sql_types5ArrayINtNtBc_9sql_types8NullableNtB2S_7IntegerEENtNtBa_7backend2PgE8from_sql0Csi6wIvn64oUH_13custom_arrays.exit.thread.i.i: ; preds = %_RNvMNtCs40k4W9msRzi_5alloc5boxedINtB2_3BoxNtNvXsf_NtB2_7convertIBv_DNtNtCscI6d9CVNmLh_4core5error5ErrorNtNtB18_6marker4SyncNtB1F_4SendEL_EINtNtB18_7convert4FromNtNtB4_6string6StringE4from11StringErrorE3newCsi6wIvn64oUH_13custom_arrays.exit.i.i.i, %_RNvNtCs40k4W9msRzi_5alloc5boxed14box_new_uninit.exit56.i.i.i, %_RNvMNtCs40k4W9msRzi_5alloc5boxedINtB2_3BoxNtNtNtCsgczF5crJ4sT_3std2io5error5ErrorE3newCsi6wIvn64oUH_13custom_arrays.exit.i.i.i
  %.sink73.i.i.i = phi ptr [ %i.aj, %_RNvNtCs40k4W9msRzi_5alloc5boxed14box_new_uninit.exit56.i.i.i ], [ %i.an, %_RNvMNtCs40k4W9msRzi_5alloc5boxedINtB2_3BoxNtNvXsf_NtB2_7convertIBv_DNtNtCscI6d9CVNmLh_4core5error5ErrorNtNtB18_6marker4SyncNtB1F_4SendEL_EINtNtB18_7convert4FromNtNtB4_6string6StringE4from11StringErrorE3newCsi6wIvn64oUH_13custom_arrays.exit.i.i.i ], [ %i.w, %_RNvMNtCs40k4W9msRzi_5alloc5boxedINtB2_3BoxNtNtNtCsgczF5crJ4sT_3std2io5error5ErrorE3newCsi6wIvn64oUH_13custom_arrays.exit.i.i.i ]
  %.sink.i.i.i = phi ptr [ @3, %_RNvNtCs40k4W9msRzi_5alloc5boxed14box_new_uninit.exit56.i.i.i ], [ @5, %_RNvMNtCs40k4W9msRzi_5alloc5boxedINtB2_3BoxNtNvXsf_NtB2_7convertIBv_DNtNtCscI6d9CVNmLh_4core5error5ErrorNtNtB18_6marker4SyncNtB1F_4SendEL_EINtNtB18_7convert4FromNtNtB4_6string6StringE4from11StringErrorE3newCsi6wIvn64oUH_13custom_arrays.exit.i.i.i ], [ @8, %_RNvMNtCs40k4W9msRzi_5alloc5boxedINtB2_3BoxNtNtNtCsgczF5crJ4sT_3std2io5error5ErrorE3newCsi6wIvn64oUH_13custom_arrays.exit.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !237
  br label %bb.r

_RNCNvXs_NtNtNtCsjRvGck33osM_6diesel2pg5types5arrayINtNtCs40k4W9msRzi_5alloc3vec3VecINtNtCscI6d9CVNmLh_4core6option6OptionlEEINtNtBc_11deserialize7FromSqlINtNtB8_9sql_types5ArrayINtNtBc_9sql_types8NullableNtB2S_7IntegerEENtNtBa_7backend2PgE8from_sql0Csi6wIvn64oUH_13custom_arrays.exit.i.i: ; preds = %bb.q, %bb.i
  %.sroa.0.0.copyload.pr.i.i = load ptr, ptr %i.j, align 8, !noalias !230 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !237
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %.sroa.4.0.copyload.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !230 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %.sroa.0.0.copyload.pr.i.i, null
  br i1 %.not.i.i.i.i, label %bb.y, label %bb.r

bb.r:                                             ; preds = %_RNCNvXs_NtNtNtCsjRvGck33osM_6diesel2pg5types5arrayINtNtCs40k4W9msRzi_5alloc3vec3VecINtNtCscI6d9CVNmLh_4core6option6OptionlEEINtNtBc_11deserialize7FromSqlINtNtB8_9sql_types5ArrayINtNtBc_9sql_types8NullableNtB2S_7IntegerEENtNtBa_7backend2PgE8from_sql0Csi6wIvn64oUH_13custom_arrays.exit.i.i, %_RNCNvXs_NtNtNtCsjRvGck33osM_6diesel2pg5types5arrayINtNtCs40k4W9msRzi_5alloc3vec3VecINtNtCscI6d9CVNmLh_4core6option6OptionlEEINtNtBc_11deserialize7FromSqlINtNtB8_9sql_types5ArrayINtNtBc_9sql_types8NullableNtB2S_7IntegerEENtNtBa_7backend2PgE8from_sql0Csi6wIvn64oUH_13custom_arrays.exit.thread.i.i
  %.sroa.4.0.copyload6.i.i = phi ptr [ %.sink.i.i.i, %_RNCNvXs_NtNtNtCsjRvGck33osM_6diesel2pg5types5arrayINtNtCs40k4W9msRzi_5alloc3vec3VecINtNtCscI6d9CVNmLh_4core6option6OptionlEEINtNtBc_11deserialize7FromSqlINtNtB8_9sql_types5ArrayINtNtBc_9sql_types8NullableNtB2S_7IntegerEENtNtBa_7backend2PgE8from_sql0Csi6wIvn64oUH_13custom_arrays.exit.thread.i.i ], [ %.sroa.4.0.copyload.i.i, %_RNCNvXs_NtNtNtCsjRvGck33osM_6diesel2pg5types5arrayINtNtCs40k4W9msRzi_5alloc3vec3VecINtNtCscI6d9CVNmLh_4core6option6OptionlEEINtNtBc_11deserialize7FromSqlINtNtB8_9sql_types5ArrayINtNtBc_9sql_types8NullableNtB2S_7IntegerEENtNtBa_7backend2PgE8from_sql0Csi6wIvn64oUH_13custom_arrays.exit.i.i ] ; 3 uses
  %.sroa.0.0.copyload5.i.i = phi ptr [ %.sink73.i.i.i, %_RNCNvXs_NtNtNtCsjRvGck33osM_6diesel2pg5types5arrayINtNtCs40k4W9msRzi_5alloc3vec3VecINtNtCscI6d9CVNmLh_4core6option6OptionlEEINtNtBc_11deserialize7FromSqlINtNtB8_9sql_types5ArrayINtNtBc_9sql_types8NullableNtB2S_7IntegerEENtNtBa_7backend2PgE8from_sql0Csi6wIvn64oUH_13custom_arrays.exit.thread.i.i ], [ %.sroa.0.0.copyload.pr.i.i, %_RNCNvXs_NtNtNtCsjRvGck33osM_6diesel2pg5types5arrayINtNtCs40k4W9msRzi_5alloc3vec3VecINtNtCscI6d9CVNmLh_4core6option6OptionlEEINtNtBc_11deserialize7FromSqlINtNtB8_9sql_types5ArrayINtNtBc_9sql_types8NullableNtB2S_7IntegerEENtNtBa_7backend2PgE8from_sql0Csi6wIvn64oUH_13custom_arrays.exit.i.i ] ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.4.0.copyload6.i.i) ]
  %.val.i.i.i = load ptr, ptr %2, align 8, !noalias !246, !noundef !3 ; 4 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %.val7.i.i.i = load ptr, ptr %i.ay, align 8, !noalias !246 ; 6 uses
  %i.az = icmp eq ptr %.val.i.i.i, null
  br i1 %i.az, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtB4_7convert10InfallibleINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB2F_4SendEL_EEEECsi6wIvn64oUH_13custom_arrays.exit.i.i.i, label %bb.s

bb.s:                                             ; preds = %bb.r
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val7.i.i.i) ]
  %i.ba = load ptr, ptr %.val7.i.i.i, align 8, !invariant.load !3, !noalias !246 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.ba, null
  br i1 %.not.i.i.i.i.i.i, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  invoke void %i.ba(ptr noundef nonnull %.val.i.i.i)
          to label %bb.u unwind label %bb.w, !noalias !246

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.bb = getelementptr inbounds nuw i8, ptr %.val7.i.i.i, i64 8
  %i.bc = load i64, ptr %i.bb, align 8, !range !10, !invariant.load !3, !noalias !246 ; 2 uses
  %i.bd = icmp eq i64 %i.bc, 0
  br i1 %i.bd, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtB4_7convert10InfallibleINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB2F_4SendEL_EEEECsi6wIvn64oUH_13custom_arrays.exit.i.i.i, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.be = getelementptr inbounds nuw i8, ptr %.val7.i.i.i, i64 16
  %i.bf = load i64, ptr %i.be, align 8, !range !11, !invariant.load !3, !noalias !246
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i, i64 noundef range(i64 1, -9223372036854775808) %i.bc, i64 noundef range(i64 1, 536870913) %i.bf) #17, !noalias !246
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtB4_7convert10InfallibleINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB2F_4SendEL_EEEECsi6wIvn64oUH_13custom_arrays.exit.i.i.i

bb.w:                                             ; preds = %bb.t
  %i.bg = landingpad { ptr, i32 }
          cleanup
  %i.bh = getelementptr inbounds nuw i8, ptr %.val7.i.i.i, i64 8
  %i.bi = load i64, ptr %i.bh, align 8, !range !10, !invariant.load !3, !noalias !246 ; 2 uses
  %i.bj = icmp eq i64 %i.bi, 0
  br i1 %i.bj, label %.body.i.i.i, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.bk = getelementptr inbounds nuw i8, ptr %.val7.i.i.i, i64 16
  %i.bl = load i64, ptr %i.bk, align 8, !range !11, !invariant.load !3, !noalias !246
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i, i64 noundef range(i64 1, -9223372036854775808) %i.bi, i64 noundef range(i64 1, 536870913) %i.bl) #17, !noalias !246
  br label %.body.i.i.i

bb.y:                                             ; preds = %_RNCNvXs_NtNtNtCsjRvGck33osM_6diesel2pg5types5arrayINtNtCs40k4W9msRzi_5alloc3vec3VecINtNtCscI6d9CVNmLh_4core6option6OptionlEEINtNtBc_11deserialize7FromSqlINtNtB8_9sql_types5ArrayINtNtBc_9sql_types8NullableNtB2S_7IntegerEENtNtBa_7backend2PgE8from_sql0Csi6wIvn64oUH_13custom_arrays.exit.i.i
  %i.bm = ptrtoint ptr %.sroa.4.0.copyload.i.i to i64 ; 2 uses
  %.sroa.4.8.extract.trunc.i.i = trunc i64 %i.bm to i32
  %.sroa.4.12.extract.shift.i.i = lshr i64 %i.bm, 32
  %.sroa.4.12.extract.trunc.i.i = trunc nuw i64 %.sroa.4.12.extract.shift.i.i to i32
  br label %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map12map_try_foldlINtNtBa_6result6ResultINtNtBa_6option6OptionlEINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtBa_5error5ErrorNtNtBa_6marker4SyncNtB2F_4SendEL_EEuINtNtNtBa_3ops12control_flow11ControlFlowIB3e_B1m_EENCNvXs_NtNtNtCsjRvGck33osM_6diesel2pg5types5arrayINtNtB1P_3vec3VecB1m_EINtNtB4g_11deserialize7FromSqlINtNtB4c_9sql_types5ArrayINtNtB4g_9sql_types8NullableNtB68_7IntegerEENtNtB4e_7backend2PgE8from_sql0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtB3i_5range5RangelEB43_EIB11_NtNtBa_7convert10InfallibleB1K_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB8Y_12try_for_each4callB1m_B3S_NcNtB3S_5Break0E0B3S_E0E0Csi6wIvn64oUH_13custom_arrays.exit.i

.body.i.i.i:                                      ; preds = %bb.x, %bb.w
  store ptr %.sroa.0.0.copyload5.i.i, ptr %2, align 8, !noalias !246
  store ptr %.sroa.4.0.copyload6.i.i, ptr %i.ay, align 8, !noalias !246
  br label %common.resume.i.i

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtB4_7convert10InfallibleINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB2F_4SendEL_EEEECsi6wIvn64oUH_13custom_arrays.exit.i.i.i: ; preds = %bb.v, %bb.u, %bb.r
  store ptr %.sroa.0.0.copyload5.i.i, ptr %2, align 8, !noalias !246
  store ptr %.sroa.4.0.copyload6.i.i, ptr %i.ay, align 8, !noalias !246
  br label %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map12map_try_foldlINtNtBa_6result6ResultINtNtBa_6option6OptionlEINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtBa_5error5ErrorNtNtBa_6marker4SyncNtB2F_4SendEL_EEuINtNtNtBa_3ops12control_flow11ControlFlowIB3e_B1m_EENCNvXs_NtNtNtCsjRvGck33osM_6diesel2pg5types5arrayINtNtB1P_3vec3VecB1m_EINtNtB4g_11deserialize7FromSqlINtNtB4c_9sql_types5ArrayINtNtB4g_9sql_types8NullableNtB68_7IntegerEENtNtB4e_7backend2PgE8from_sql0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtB3i_5range5RangelEB43_EIB11_NtNtBa_7convert10InfallibleB1K_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB8Y_12try_for_each4callB1m_B3S_NcNtB3S_5Break0E0B3S_E0E0Csi6wIvn64oUH_13custom_arrays.exit.i

_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map12map_try_foldlINtNtBa_6result6ResultINtNtBa_6option6OptionlEINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtBa_5error5ErrorNtNtBa_6marker4SyncNtB2F_4SendEL_EEuINtNtNtBa_3ops12control_flow11ControlFlowIB3e_B1m_EENCNvXs_NtNtNtCsjRvGck33osM_6diesel2pg5types5arrayINtNtB1P_3vec3VecB1m_EINtNtB4g_11deserialize7FromSqlINtNtB4c_9sql_types5ArrayINtNtB4g_9sql_types8NullableNtB68_7IntegerEENtNtB4e_7backend2PgE8from_sql0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtB3i_5range5RangelEB43_EIB11_NtNtBa_7convert10InfallibleB1K_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB8Y_12try_for_each4callB1m_B3S_NcNtB3S_5Break0E0B3S_E0E0Csi6wIvn64oUH_13custom_arrays.exit.i: ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtB4_7convert10InfallibleINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB2F_4SendEL_EEEECsi6wIvn64oUH_13custom_arrays.exit.i.i.i, %bb.y
  %.sroa.4.1.i.i.i = phi i32 [ %.sroa.4.12.extract.trunc.i.i, %bb.y ], [ undef, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtB4_7convert10InfallibleINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB2F_4SendEL_EEEECsi6wIvn64oUH_13custom_arrays.exit.i.i.i ]
  %.sroa.0.1.i.i.i = phi i32 [ %.sroa.4.8.extract.trunc.i.i, %bb.y ], [ -1, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtB4_7convert10InfallibleINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB2F_4SendEL_EEEECsi6wIvn64oUH_13custom_arrays.exit.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !230
  br label %_RINvYINtNtNtCscI6d9CVNmLh_4core3ops5range5RangelENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtBR_8adapters3map12map_try_foldlINtNtBa_6result6ResultINtNtBa_6option6OptionlEINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtBa_5error5ErrorNtNtBa_6marker4SyncNtB3T_4SendEL_EEuINtNtB8_12control_flow11ControlFlowIB4s_B2A_EENCNvXs_NtNtNtCsjRvGck33osM_6diesel2pg5types5arrayINtNtB33_3vec3VecB2A_EINtNtB5o_11deserialize7FromSqlINtNtB5k_9sql_types5ArrayINtNtB5o_9sql_types8NullableNtB7g_7IntegerEENtNtB5m_7backend2PgE8from_sql0NCINvXB1H_INtB1H_12GenericShuntINtB1F_3MapB3_B5b_EIB2f_NtNtBa_7convert10InfallibleB2Y_EEBL_8try_folduNCINvNvBL_12try_for_each4callB2A_B50_NcNtB50_5Break0E0B50_E0E0B4r_ECsi6wIvn64oUH_13custom_arrays.exit

_RINvYINtNtNtCscI6d9CVNmLh_4core3ops5range5RangelENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtBR_8adapters3map12map_try_foldlINtNtBa_6result6ResultINtNtBa_6option6OptionlEINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtBa_5error5ErrorNtNtBa_6marker4SyncNtB3T_4SendEL_EEuINtNtB8_12control_flow11ControlFlowIB4s_B2A_EENCNvXs_NtNtNtCsjRvGck33osM_6diesel2pg5types5arrayINtNtB33_3vec3VecB2A_EINtNtB5o_11deserialize7FromSqlINtNtB5k_9sql_types5ArrayINtNtB5o_9sql_types8NullableNtB7g_7IntegerEENtNtB5m_7backend2PgE8from_sql0NCINvXB1H_INtB1H_12GenericShuntINtB1F_3MapB3_B5b_EIB2f_NtNtBa_7convert10InfallibleB2Y_EEBL_8try_folduNCINvNvBL_12try_for_each4callB2A_B50_NcNtB50_5Break0E0B50_E0E0B4r_ECsi6wIvn64oUH_13custom_arrays.exit: ; preds = %bb.a, %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map12map_try_foldlINtNtBa_6result6ResultINtNtBa_6option6OptionlEINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtBa_5error5ErrorNtNtBa_6marker4SyncNtB2F_4SendEL_EEuINtNtNtBa_3ops12control_flow11ControlFlowIB3e_B1m_EENCNvXs_NtNtNtCsjRvGck33osM_6diesel2pg5types5arrayINtNtB1P_3vec3VecB1m_EINtNtB4g_11deserialize7FromSqlINtNtB4c_9sql_types5ArrayINtNtB4g_9sql_types8NullableNtB68_7IntegerEENtNtB4e_7backend2PgE8from_sql0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtB3i_5range5RangelEB43_EIB11_NtNtBa_7convert10InfallibleB1K_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB8Y_12try_for_each4callB1m_B3S_NcNtB3S_5Break0E0B3S_E0E0Csi6wIvn64oUH_13custom_arrays.exit.i
  %.sroa.3.0.i = phi i32 [ %.sroa.4.1.i.i.i, %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map12map_try_foldlINtNtBa_6result6ResultINtNtBa_6option6OptionlEINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtBa_5error5ErrorNtNtBa_6marker4SyncNtB2F_4SendEL_EEuINtNtNtBa_3ops12control_flow11ControlFlowIB3e_B1m_EENCNvXs_NtNtNtCsjRvGck33osM_6diesel2pg5types5arrayINtNtB1P_3vec3VecB1m_EINtNtB4g_11deserialize7FromSqlINtNtB4c_9sql_types5ArrayINtNtB4g_9sql_types8NullableNtB68_7IntegerEENtNtB4e_7backend2PgE8from_sql0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtB3i_5range5RangelEB43_EIB11_NtNtBa_7convert10InfallibleB1K_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB8Y_12try_for_each4callB1m_B3S_NcNtB3S_5Break0E0B3S_E0E0Csi6wIvn64oUH_13custom_arrays.exit.i ], [ undef, %bb.a ]
  %.sroa.0.0.i = phi i32 [ %.sroa.0.1.i.i.i, %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map12map_try_foldlINtNtBa_6result6ResultINtNtBa_6option6OptionlEINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtBa_5error5ErrorNtNtBa_6marker4SyncNtB2F_4SendEL_EEuINtNtNtBa_3ops12control_flow11ControlFlowIB3e_B1m_EENCNvXs_NtNtNtCsjRvGck33osM_6diesel2pg5types5arrayINtNtB1P_3vec3VecB1m_EINtNtB4g_11deserialize7FromSqlINtNtB4c_9sql_types5ArrayINtNtB4g_9sql_types8NullableNtB68_7IntegerEENtNtB4e_7backend2PgE8from_sql0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtB3i_5range5RangelEB43_EIB11_NtNtBa_7convert10InfallibleB1K_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB8Y_12try_for_each4callB1m_B3S_NcNtB3S_5Break0E0B3S_E0E0Csi6wIvn64oUH_13custom_arrays.exit.i ], [ -2, %bb.a ]
  %i.bn = insertvalue { i32, i32 } poison, i32 %.sroa.0.0.i, 0
  %i.bo = insertvalue { i32, i32 } %i.bn, i32 %.sroa.3.0.i, 1
  ret { i32, i32 } %i.bo
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterINtNtCs40k4W9msRzi_5alloc5boxed3BoxDINtNtCsjRvGck33osM_6diesel9migration9MigrationNtNtNtB22_2pg7backend2PgEEL_EENCNvYNtNtB2L_10connection12PgConnectionINtNtCskLp0vI1JK7v_17diesel_migrations17migration_harness16MigrationHarnessB2H_E14run_migrations0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvXB8_INtB8_12GenericShuntBN_INtNtBc_6result6ResultNtNtBc_7convert10InfallibleIB1o_DNtNtBc_5error5ErrorNtNtBc_6marker4SyncNtB7Q_4SendEL_EEEB5o_8try_folduNCINvNvB5o_12try_for_each4callNtB20_16MigrationVersionINtNtNtBc_3ops12control_flow11ControlFlowB96_ENcNtB9u_5Break0E0B9u_E0IB9v_B9u_EECsi6wIvn64oUH_13custom_arrays(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %1, ptr noalias nofree noundef nonnull readnone captures(none) %2, ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !263)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !264)
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !alias.scope !265, !nonnull !3, !noundef !3
  %.promoted.i = load ptr, ptr %1, align 8, !alias.scope !265
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.val.i.i = load ptr, ptr %i.b, align 8, !nonnull !3, !align !9
  br label %_RNvXNtNtCscI6d9CVNmLh_4core3ops12control_flowINtB2_11ControlFlowIBI_NtNtCsjRvGck33osM_6diesel9migration16MigrationVersionEENtNtB4_9try_trait3Try6branchCsi6wIvn64oUH_13custom_arrays.exit.i

_RNvXNtNtCscI6d9CVNmLh_4core3ops12control_flowINtB2_11ControlFlowIBI_NtNtCsjRvGck33osM_6diesel9migration16MigrationVersionEENtNtB4_9try_trait3Try6branchCsi6wIvn64oUH_13custom_arrays.exit.i: ; preds = %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map12map_try_foldRINtNtCs40k4W9msRzi_5alloc5boxed3BoxDINtNtCsjRvGck33osM_6diesel9migration9MigrationNtNtNtB1F_2pg7backend2PgEEL_EINtNtBa_6result6ResultNtB1D_16MigrationVersionIB11_DNtNtBa_5error5ErrorNtNtBa_6marker4SyncNtB3Y_4SendEL_EEuINtNtNtBa_3ops12control_flow11ControlFlowIB4x_B39_EENCNvYNtNtB2o_10connection12PgConnectionINtNtCskLp0vI1JK7v_17diesel_migrations17migration_harness16MigrationHarnessB2k_E14run_migrations0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtNtBa_5slice4iter4IterB10_EB5m_EIB2O_NtNtBa_7convert10InfallibleB3x_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB9n_12try_for_each4callB39_B5b_NcNtB5b_5Break0E0B5b_E0E0Csi6wIvn64oUH_13custom_arrays.exit.i, %bb.a
  %i.e = phi ptr [ %i.g, %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map12map_try_foldRINtNtCs40k4W9msRzi_5alloc5boxed3BoxDINtNtCsjRvGck33osM_6diesel9migration9MigrationNtNtNtB1F_2pg7backend2PgEEL_EINtNtBa_6result6ResultNtB1D_16MigrationVersionIB11_DNtNtBa_5error5ErrorNtNtBa_6marker4SyncNtB3Y_4SendEL_EEuINtNtNtBa_3ops12control_flow11ControlFlowIB4x_B39_EENCNvYNtNtB2o_10connection12PgConnectionINtNtCskLp0vI1JK7v_17diesel_migrations17migration_harness16MigrationHarnessB2k_E14run_migrations0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtNtBa_5slice4iter4IterB10_EB5m_EIB2O_NtNtBa_7convert10InfallibleB3x_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB9n_12try_for_each4callB39_B5b_NcNtB5b_5Break0E0B5b_E0E0Csi6wIvn64oUH_13custom_arrays.exit.i ], [ %.promoted.i, %bb.a ] ; 3 uses
  %i.f = icmp eq ptr %i.e, %i.d
  br i1 %i.f, label %bb.j, label %bb.b

bb.b:                                             ; preds = %_RNvXNtNtCscI6d9CVNmLh_4core3ops12control_flowINtB2_11ControlFlowIBI_NtNtCsjRvGck33osM_6diesel9migration16MigrationVersionEENtNtB4_9try_trait3Try6branchCsi6wIvn64oUH_13custom_arrays.exit.i
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  store ptr %i.g, ptr %1, align 8, !alias.scope !265
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !266
  call void @_RNvXNtCskLp0vI1JK7v_17diesel_migrations17migration_harnessNtNtNtCsjRvGck33osM_6diesel2pg10connection12PgConnectionINtB2_16MigrationHarnessNtNtBY_7backend2PgE13run_migrationCsi6wIvn64oUH_13custom_arrays(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(104) %.val.i.i, ptr noundef nonnull readonly align 8 dereferenceable(16) %i.e, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) @9), !noalias !267
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.a, align 8, !noalias !266 ; 3 uses
  %.sroa.4.0.copyload.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !266 ; 4 uses
  %.sroa.5.0.copyload.i.i = load ptr, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !noalias !266 ; 4 uses
  %i.h = icmp eq i64 %.sroa.0.0.copyload.i.i, -2
  br i1 %i.h, label %bb.c, label %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map12map_try_foldRINtNtCs40k4W9msRzi_5alloc5boxed3BoxDINtNtCsjRvGck33osM_6diesel9migration9MigrationNtNtNtB1F_2pg7backend2PgEEL_EINtNtBa_6result6ResultNtB1D_16MigrationVersionIB11_DNtNtBa_5error5ErrorNtNtBa_6marker4SyncNtB3Y_4SendEL_EEuINtNtNtBa_3ops12control_flow11ControlFlowIB4x_B39_EENCNvYNtNtB2o_10connection12PgConnectionINtNtCskLp0vI1JK7v_17diesel_migrations17migration_harness16MigrationHarnessB2k_E14run_migrations0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtNtBa_5slice4iter4IterB10_EB5m_EIB2O_NtNtBa_7convert10InfallibleB3x_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB9n_12try_for_each4callB39_B5b_NcNtB5b_5Break0E0B5b_E0E0Csi6wIvn64oUH_13custom_arrays.exit.i

bb.c:                                             ; preds = %bb.b
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.4.0.copyload.i.i), "nonnull"(ptr %.sroa.5.0.copyload.i.i) ]
  %.val.i.i.i = load ptr, ptr %3, align 8, !noalias !268, !noundef !3 ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %.val3.i.i.i = load ptr, ptr %i.i, align 8, !noalias !268 ; 6 uses
  %i.j = icmp eq ptr %.val.i.i.i, null
  br i1 %i.j, label %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map12map_try_foldRINtNtCs40k4W9msRzi_5alloc5boxed3BoxDINtNtCsjRvGck33osM_6diesel9migration9MigrationNtNtNtB1F_2pg7backend2PgEEL_EINtNtBa_6result6ResultNtB1D_16MigrationVersionIB11_DNtNtBa_5error5ErrorNtNtBa_6marker4SyncNtB3Y_4SendEL_EEuINtNtNtBa_3ops12control_flow11ControlFlowIB4x_B39_EENCNvYNtNtB2o_10connection12PgConnectionINtNtCskLp0vI1JK7v_17diesel_migrations17migration_harness16MigrationHarnessB2k_E14run_migrations0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtNtBa_5slice4iter4IterB10_EB5m_EIB2O_NtNtBa_7convert10InfallibleB3x_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB9n_12try_for_each4callB39_B5b_NcNtB5b_5Break0E0B5b_E0E0Csi6wIvn64oUH_13custom_arrays.exit.thread.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val3.i.i.i) ]
  %i.k = load ptr, ptr %.val3.i.i.i, align 8, !invariant.load !3, !noalias !269 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  invoke void %i.k(ptr noundef nonnull %.val.i.i.i)
          to label %bb.f unwind label %bb.h, !noalias !269

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %.val3.i.i.i, i64 8
  %i.m = load i64, ptr %i.l, align 8, !range !10, !invariant.load !3, !noalias !269 ; 2 uses
  %i.n = icmp eq i64 %i.m, 0
  br i1 %i.n, label %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map12map_try_foldRINtNtCs40k4W9msRzi_5alloc5boxed3BoxDINtNtCsjRvGck33osM_6diesel9migration9MigrationNtNtNtB1F_2pg7backend2PgEEL_EINtNtBa_6result6ResultNtB1D_16MigrationVersionIB11_DNtNtBa_5error5ErrorNtNtBa_6marker4SyncNtB3Y_4SendEL_EEuINtNtNtBa_3ops12control_flow11ControlFlowIB4x_B39_EENCNvYNtNtB2o_10connection12PgConnectionINtNtCskLp0vI1JK7v_17diesel_migrations17migration_harness16MigrationHarnessB2k_E14run_migrations0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtNtBa_5slice4iter4IterB10_EB5m_EIB2O_NtNtBa_7convert10InfallibleB3x_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB9n_12try_for_each4callB39_B5b_NcNtB5b_5Break0E0B5b_E0E0Csi6wIvn64oUH_13custom_arrays.exit.thread.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.o = getelementptr inbounds nuw i8, ptr %.val3.i.i.i, i64 16
  %i.p = load i64, ptr %i.o, align 8, !range !11, !invariant.load !3, !noalias !269
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i, i64 noundef range(i64 1, -9223372036854775808) %i.m, i64 noundef range(i64 1, 536870913) %i.p) #17, !noalias !269
  br label %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map12map_try_foldRINtNtCs40k4W9msRzi_5alloc5boxed3BoxDINtNtCsjRvGck33osM_6diesel9migration9MigrationNtNtNtB1F_2pg7backend2PgEEL_EINtNtBa_6result6ResultNtB1D_16MigrationVersionIB11_DNtNtBa_5error5ErrorNtNtBa_6marker4SyncNtB3Y_4SendEL_EEuINtNtNtBa_3ops12control_flow11ControlFlowIB4x_B39_EENCNvYNtNtB2o_10connection12PgConnectionINtNtCskLp0vI1JK7v_17diesel_migrations17migration_harness16MigrationHarnessB2k_E14run_migrations0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtNtBa_5slice4iter4IterB10_EB5m_EIB2O_NtNtBa_7convert10InfallibleB3x_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB9n_12try_for_each4callB39_B5b_NcNtB5b_5Break0E0B5b_E0E0Csi6wIvn64oUH_13custom_arrays.exit.thread.i

bb.h:                                             ; preds = %bb.e
  %i.q = landingpad { ptr, i32 }
          cleanup
  %i.r = getelementptr inbounds nuw i8, ptr %.val3.i.i.i, i64 8
  %i.s = load i64, ptr %i.r, align 8, !range !10, !invariant.load !3, !noalias !269 ; 2 uses
  %i.t = icmp eq i64 %i.s, 0
  br i1 %i.t, label %.body.i.i.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.u = getelementptr inbounds nuw i8, ptr %.val3.i.i.i, i64 16
  %i.v = load i64, ptr %i.u, align 8, !range !11, !invariant.load !3, !noalias !269
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i, i64 noundef range(i64 1, -9223372036854775808) %i.s, i64 noundef range(i64 1, 536870913) %i.v) #17, !noalias !269
  br label %.body.i.i.i

.body.i.i.i:                                      ; preds = %bb.i, %bb.h
  store ptr %.sroa.4.0.copyload.i.i, ptr %3, align 8, !noalias !268
  store ptr %.sroa.5.0.copyload.i.i, ptr %i.i, align 8, !noalias !268
  resume { ptr, i32 } %i.q

_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map12map_try_foldRINtNtCs40k4W9msRzi_5alloc5boxed3BoxDINtNtCsjRvGck33osM_6diesel9migration9MigrationNtNtNtB1F_2pg7backend2PgEEL_EINtNtBa_6result6ResultNtB1D_16MigrationVersionIB11_DNtNtBa_5error5ErrorNtNtBa_6marker4SyncNtB3Y_4SendEL_EEuINtNtNtBa_3ops12control_flow11ControlFlowIB4x_B39_EENCNvYNtNtB2o_10connection12PgConnectionINtNtCskLp0vI1JK7v_17diesel_migrations17migration_harness16MigrationHarnessB2k_E14run_migrations0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtNtBa_5slice4iter4IterB10_EB5m_EIB2O_NtNtBa_7convert10InfallibleB3x_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB9n_12try_for_each4callB39_B5b_NcNtB5b_5Break0E0B5b_E0E0Csi6wIvn64oUH_13custom_arrays.exit.thread.i: ; preds = %bb.g, %bb.f, %bb.c
  store ptr %.sroa.4.0.copyload.i.i, ptr %3, align 8, !noalias !268
  store ptr %.sroa.5.0.copyload.i.i, ptr %i.i, align 8, !noalias !268
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !266
  br label %.loopexit.i

_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map12map_try_foldRINtNtCs40k4W9msRzi_5alloc5boxed3BoxDINtNtCsjRvGck33osM_6diesel9migration9MigrationNtNtNtB1F_2pg7backend2PgEEL_EINtNtBa_6result6ResultNtB1D_16MigrationVersionIB11_DNtNtBa_5error5ErrorNtNtBa_6marker4SyncNtB3Y_4SendEL_EEuINtNtNtBa_3ops12control_flow11ControlFlowIB4x_B39_EENCNvYNtNtB2o_10connection12PgConnectionINtNtCskLp0vI1JK7v_17diesel_migrations17migration_harness16MigrationHarnessB2k_E14run_migrations0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtNtBa_5slice4iter4IterB10_EB5m_EIB2O_NtNtBa_7convert10InfallibleB3x_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB9n_12try_for_each4callB39_B5b_NcNtB5b_5Break0E0B5b_E0E0Csi6wIvn64oUH_13custom_arrays.exit.i: ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !266
  %.not.i.i = icmp eq i64 %.sroa.0.0.copyload.i.i, -3
  br i1 %.not.i.i, label %_RNvXNtNtCscI6d9CVNmLh_4core3ops12control_flowINtB2_11ControlFlowIBI_NtNtCsjRvGck33osM_6diesel9migration16MigrationVersionEENtNtB4_9try_trait3Try6branchCsi6wIvn64oUH_13custom_arrays.exit.i, label %.loopexit.i

bb.j:                                             ; preds = %_RNvXNtNtCscI6d9CVNmLh_4core3ops12control_flowINtB2_11ControlFlowIBI_NtNtCsjRvGck33osM_6diesel9migration16MigrationVersionEENtNtB4_9try_trait3Try6branchCsi6wIvn64oUH_13custom_arrays.exit.i
  store i64 -3, ptr %0, align 8, !alias.scope !270
  br label %_RINvYINtNtNtCscI6d9CVNmLh_4core5slice4iter4IterINtNtCs40k4W9msRzi_5alloc5boxed3BoxDINtNtCsjRvGck33osM_6diesel9migration9MigrationNtNtNtB1o_2pg7backend2PgEEL_EENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB2D_8adapters3map12map_try_foldRBJ_INtNtBa_6result6ResultNtB1m_16MigrationVersionIBK_DNtNtBa_5error5ErrorNtNtBa_6marker4SyncNtB5e_4SendEL_EEuINtNtNtBa_3ops12control_flow11ControlFlowIB5N_B4q_EENCNvYNtNtB27_10connection12PgConnectionINtNtCskLp0vI1JK7v_17diesel_migrations17migration_harness16MigrationHarnessB23_E14run_migrations0NCINvXB3t_INtB3t_12GenericShuntINtB3r_3MapB3_B6C_EIB45_NtNtBa_7convert10InfallibleB4O_EEB2x_8try_folduNCINvNvB2x_12try_for_each4callB4q_B6r_NcNtB6r_5Break0E0B6r_E0E0B5M_ECsi6wIvn64oUH_13custom_arrays.exit

.loopexit.i:                                      ; preds = %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map12map_try_foldRINtNtCs40k4W9msRzi_5alloc5boxed3BoxDINtNtCsjRvGck33osM_6diesel9migration9MigrationNtNtNtB1F_2pg7backend2PgEEL_EINtNtBa_6result6ResultNtB1D_16MigrationVersionIB11_DNtNtBa_5error5ErrorNtNtBa_6marker4SyncNtB3Y_4SendEL_EEuINtNtNtBa_3ops12control_flow11ControlFlowIB4x_B39_EENCNvYNtNtB2o_10connection12PgConnectionINtNtCskLp0vI1JK7v_17diesel_migrations17migration_harness16MigrationHarnessB2k_E14run_migrations0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtNtBa_5slice4iter4IterB10_EB5m_EIB2O_NtNtBa_7convert10InfallibleB3x_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB9n_12try_for_each4callB39_B5b_NcNtB5b_5Break0E0B5b_E0E0Csi6wIvn64oUH_13custom_arrays.exit.i, %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map12map_try_foldRINtNtCs40k4W9msRzi_5alloc5boxed3BoxDINtNtCsjRvGck33osM_6diesel9migration9MigrationNtNtNtB1F_2pg7backend2PgEEL_EINtNtBa_6result6ResultNtB1D_16MigrationVersionIB11_DNtNtBa_5error5ErrorNtNtBa_6marker4SyncNtB3Y_4SendEL_EEuINtNtNtBa_3ops12control_flow11ControlFlowIB4x_B39_EENCNvYNtNtB2o_10connection12PgConnectionINtNtCskLp0vI1JK7v_17diesel_migrations17migration_harness16MigrationHarnessB2k_E14run_migrations0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtNtBa_5slice4iter4IterB10_EB5m_EIB2O_NtNtBa_7convert10InfallibleB3x_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB9n_12try_for_each4callB39_B5b_NcNtB5b_5Break0E0B5b_E0E0Csi6wIvn64oUH_13custom_arrays.exit.thread.i
  %.sroa.7.sroa.5.0.ph.i = phi ptr [ undef, %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map12map_try_foldRINtNtCs40k4W9msRzi_5alloc5boxed3BoxDINtNtCsjRvGck33osM_6diesel9migration9MigrationNtNtNtB1F_2pg7backend2PgEEL_EINtNtBa_6result6ResultNtB1D_16MigrationVersionIB11_DNtNtBa_5error5ErrorNtNtBa_6marker4SyncNtB3Y_4SendEL_EEuINtNtNtBa_3ops12control_flow11ControlFlowIB4x_B39_EENCNvYNtNtB2o_10connection12PgConnectionINtNtCskLp0vI1JK7v_17diesel_migrations17migration_harness16MigrationHarnessB2k_E14run_migrations0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtNtBa_5slice4iter4IterB10_EB5m_EIB2O_NtNtBa_7convert10InfallibleB3x_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB9n_12try_for_each4callB39_B5b_NcNtB5b_5Break0E0B5b_E0E0Csi6wIvn64oUH_13custom_arrays.exit.thread.i ], [ %.sroa.5.0.copyload.i.i, %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map12map_try_foldRINtNtCs40k4W9msRzi_5alloc5boxed3BoxDINtNtCsjRvGck33osM_6diesel9migration9MigrationNtNtNtB1F_2pg7backend2PgEEL_EINtNtBa_6result6ResultNtB1D_16MigrationVersionIB11_DNtNtBa_5error5ErrorNtNtBa_6marker4SyncNtB3Y_4SendEL_EEuINtNtNtBa_3ops12control_flow11ControlFlowIB4x_B39_EENCNvYNtNtB2o_10connection12PgConnectionINtNtCskLp0vI1JK7v_17diesel_migrations17migration_harness16MigrationHarnessB2k_E14run_migrations0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtNtBa_5slice4iter4IterB10_EB5m_EIB2O_NtNtBa_7convert10InfallibleB3x_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB9n_12try_for_each4callB39_B5b_NcNtB5b_5Break0E0B5b_E0E0Csi6wIvn64oUH_13custom_arrays.exit.i ]
  %.sroa.7.sroa.0.0.ph.i = phi ptr [ undef, %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map12map_try_foldRINtNtCs40k4W9msRzi_5alloc5boxed3BoxDINtNtCsjRvGck33osM_6diesel9migration9MigrationNtNtNtB1F_2pg7backend2PgEEL_EINtNtBa_6result6ResultNtB1D_16MigrationVersionIB11_DNtNtBa_5error5ErrorNtNtBa_6marker4SyncNtB3Y_4SendEL_EEuINtNtNtBa_3ops12control_flow11ControlFlowIB4x_B39_EENCNvYNtNtB2o_10connection12PgConnectionINtNtCskLp0vI1JK7v_17diesel_migrations17migration_harness16MigrationHarnessB2k_E14run_migrations0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtNtBa_5slice4iter4IterB10_EB5m_EIB2O_NtNtBa_7convert10InfallibleB3x_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB9n_12try_for_each4callB39_B5b_NcNtB5b_5Break0E0B5b_E0E0Csi6wIvn64oUH_13custom_arrays.exit.thread.i ], [ %.sroa.4.0.copyload.i.i, %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map12map_try_foldRINtNtCs40k4W9msRzi_5alloc5boxed3BoxDINtNtCsjRvGck33osM_6diesel9migration9MigrationNtNtNtB1F_2pg7backend2PgEEL_EINtNtBa_6result6ResultNtB1D_16MigrationVersionIB11_DNtNtBa_5error5ErrorNtNtBa_6marker4SyncNtB3Y_4SendEL_EEuINtNtNtBa_3ops12control_flow11ControlFlowIB4x_B39_EENCNvYNtNtB2o_10connection12PgConnectionINtNtCskLp0vI1JK7v_17diesel_migrations17migration_harness16MigrationHarnessB2k_E14run_migrations0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtNtBa_5slice4iter4IterB10_EB5m_EIB2O_NtNtBa_7convert10InfallibleB3x_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB9n_12try_for_each4callB39_B5b_NcNtB5b_5Break0E0B5b_E0E0Csi6wIvn64oUH_13custom_arrays.exit.i ]
  store i64 %.sroa.0.0.copyload.i.i, ptr %0, align 8, !alias.scope !271
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.7.sroa.0.0.ph.i, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !271
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.7.sroa.5.0.ph.i, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !271
  br label %_RINvYINtNtNtCscI6d9CVNmLh_4core5slice4iter4IterINtNtCs40k4W9msRzi_5alloc5boxed3BoxDINtNtCsjRvGck33osM_6diesel9migration9MigrationNtNtNtB1o_2pg7backend2PgEEL_EENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB2D_8adapters3map12map_try_foldRBJ_INtNtBa_6result6ResultNtB1m_16MigrationVersionIBK_DNtNtBa_5error5ErrorNtNtBa_6marker4SyncNtB5e_4SendEL_EEuINtNtNtBa_3ops12control_flow11ControlFlowIB5N_B4q_EENCNvYNtNtB27_10connection12PgConnectionINtNtCskLp0vI1JK7v_17diesel_migrations17migration_harness16MigrationHarnessB23_E14run_migrations0NCINvXB3t_INtB3t_12GenericShuntINtB3r_3MapB3_B6C_EIB45_NtNtBa_7convert10InfallibleB4O_EEB2x_8try_folduNCINvNvB2x_12try_for_each4callB4q_B6r_NcNtB6r_5Break0E0B6r_E0E0B5M_ECsi6wIvn64oUH_13custom_arrays.exit

_RINvYINtNtNtCscI6d9CVNmLh_4core5slice4iter4IterINtNtCs40k4W9msRzi_5alloc5boxed3BoxDINtNtCsjRvGck33osM_6diesel9migration9MigrationNtNtNtB1o_2pg7backend2PgEEL_EENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB2D_8adapters3map12map_try_foldRBJ_INtNtBa_6result6ResultNtB1m_16MigrationVersionIBK_DNtNtBa_5error5ErrorNtNtBa_6marker4SyncNtB5e_4SendEL_EEuINtNtNtBa_3ops12control_flow11ControlFlowIB5N_B4q_EENCNvYNtNtB27_10connection12PgConnectionINtNtCskLp0vI1JK7v_17diesel_migrations17migration_harness16MigrationHarnessB23_E14run_migrations0NCINvXB3t_INtB3t_12GenericShuntINtB3r_3MapB3_B6C_EIB45_NtNtBa_7convert10InfallibleB4O_EEB2x_8try_folduNCINvNvB2x_12try_for_each4callB4q_B6r_NcNtB6r_5Break0E0B6r_E0E0B5M_ECsi6wIvn64oUH_13custom_arrays.exit: ; preds = %bb.j, %.loopexit.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterNtNtCskLp0vI1JK7v_17diesel_migrations19embedded_migrations17EmbeddedMigrationENCNvXs_B1p_NtB1p_18EmbeddedMigrationsINtNtCsjRvGck33osM_6diesel9migration15MigrationSourceNtNtNtB3j_2pg7backend2PgE10migrations0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB4I_8for_each4callINtNtCs40k4W9msRzi_5alloc5boxed3BoxDINtB3h_9MigrationB45_EEL_ENCINvMsj_NtB5Q_3vecINtB6U_3VecB5L_E14extend_trustedBN_E0E0ECsi6wIvn64oUH_13custom_arrays(ptr noundef nonnull %0, ptr noundef %1, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ]
  %.sroa.0.0.copyload = load ptr, ptr %2, align 8 ; 4 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.6.0.copyload = load i64, ptr %.sroa.6.0..sroa_idx, align 8 ; 2 uses
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.8.0.copyload = load ptr, ptr %.sroa.8.0..sroa_idx, align 8
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %_RINvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB7_4IterNtNtCskLp0vI1JK7v_17diesel_migrations19embedded_migrations17EmbeddedMigrationENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB2c_8adapters3map8map_foldRBQ_INtNtCs40k4W9msRzi_5alloc5boxed3BoxDINtNtCsjRvGck33osM_6diesel9migration9MigrationNtNtNtB49_2pg7backend2PgEEL_EuNCNvXs_BS_NtBS_18EmbeddedMigrationsINtB47_15MigrationSourceB4O_E10migrations0NCINvNvB26_8for_each4callB3u_NCINvMsj_NtB3z_3vecINtB79_3VecB3u_E14extend_trustedINtB2W_3MapBF_B5i_EE0E0E0ECsi6wIvn64oUH_13custom_arrays.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = ptrtoint ptr %1 to i64
  %i.c = ptrtoint ptr %0 to i64
  %i.d = sub nuw i64 %i.b, %i.c
  %i.e = udiv exact i64 %i.d, 56
  br label %bb.c

bb.c:                                             ; preds = %bb.e, %bb.b
  %.val15.i = phi i64 [ %.sroa.6.0.copyload, %bb.b ], [ %i.k, %bb.e ] ; 3 uses
  %.sroa.01.0.i = phi i64 [ 0, %bb.b ], [ %i.l, %bb.e ] ; 2 uses
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #17, !noalias !285
  %i.f = tail call noundef align 8 dereferenceable_or_null(8) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef range(i64 1, 25) 8, i64 noundef range(i64 1, 9) 8) #17, !noalias !285 ; 3 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %bb.d, label %bb.e, !prof !5

bb.d:                                             ; preds = %bb.c
  invoke void @_RNvNtCs40k4W9msRzi_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 8) #14
          to label %.noexc.i unwind label %bb.f, !noalias !286

.noexc.i:                                         ; preds = %bb.d
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw [56 x i8], ptr %0, i64 %.sroa.01.0.i
  store ptr %i.h, ptr %i.f, align 8, !noalias !285
  %i.i = getelementptr inbounds nuw [16 x i8], ptr %.sroa.8.0.copyload, i64 %.val15.i ; 2 uses
  store ptr %i.f, ptr %i.i, align 8, !noalias !287
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr @1, ptr %i.j, align 8, !noalias !287
  %i.k = add i64 %.val15.i, 1                     ; 2 uses
  %i.l = add nuw i64 %.sroa.01.0.i, 1             ; 2 uses
  %i.m = icmp eq i64 %i.l, %i.e
  br i1 %i.m, label %_RINvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB7_4IterNtNtCskLp0vI1JK7v_17diesel_migrations19embedded_migrations17EmbeddedMigrationENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB2c_8adapters3map8map_foldRBQ_INtNtCs40k4W9msRzi_5alloc5boxed3BoxDINtNtCsjRvGck33osM_6diesel9migration9MigrationNtNtNtB49_2pg7backend2PgEEL_EuNCNvXs_BS_NtBS_18EmbeddedMigrationsINtB47_15MigrationSourceB4O_E10migrations0NCINvNvB26_8for_each4callB3u_NCINvMsj_NtB3z_3vecINtB79_3VecB3u_E14extend_trustedINtB2W_3MapBF_B5i_EE0E0E0ECsi6wIvn64oUH_13custom_arrays.exit, label %bb.c

bb.f:                                             ; preds = %bb.d
  %i.n = landingpad { ptr, i32 }
          cleanup
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %.val15.i, ptr %.sroa.0.0.copyload, align 8, !noalias !286
  resume { ptr, i32 } %i.n

_RINvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB7_4IterNtNtCskLp0vI1JK7v_17diesel_migrations19embedded_migrations17EmbeddedMigrationENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB2c_8adapters3map8map_foldRBQ_INtNtCs40k4W9msRzi_5alloc5boxed3BoxDINtNtCsjRvGck33osM_6diesel9migration9MigrationNtNtNtB49_2pg7backend2PgEEL_EuNCNvXs_BS_NtBS_18EmbeddedMigrationsINtB47_15MigrationSourceB4O_E10migrations0NCINvNvB26_8for_each4callB3u_NCINvMsj_NtB3z_3vecINtB79_3VecB3u_E14extend_trustedINtB2W_3MapBF_B5i_EE0E0E0ECsi6wIvn64oUH_13custom_arrays.exit: ; preds = %bb.e, %bb.a
  %storemerge = phi i64 [ %.sroa.6.0.copyload, %bb.a ], [ %i.k, %bb.e ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.0.0.copyload, align 8, !noalias !286
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3mapINtB6_3MapINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterINtNtB14_5boxed3BoxDINtNtCsjRvGck33osM_6diesel9migration9MigrationNtNtNtB2a_2pg7backend2PgEEL_EENCINvYNtNtB2T_10connection12PgConnectionINtNtCskLp0vI1JK7v_17diesel_migrations17migration_harness16MigrationHarnessB2P_E18pending_migrationsNtNtB42_19embedded_migrations18EmbeddedMigrationsE0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB6p_8for_each4callTNtB28_16MigrationVersionB1L_ENCINvXs1i_NtCsfKiFC1ztrmh_9hashbrown3mapINtB86_7HashMapB7t_B1L_NtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateEINtNtB6t_7collect6ExtendB7s_E6extendBN_E0E0ECsi6wIvn64oUH_13custom_arrays(ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %0, ptr noalias noundef align 8 dereferenceable(48) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %0, i64 32, i1 false)
  call void @_RINvXs4_NtNtCs40k4W9msRzi_5alloc3vec9into_iterINtB6_8IntoIterINtNtBa_5boxed3BoxDINtNtCsjRvGck33osM_6diesel9migration9MigrationNtNtNtB1l_2pg7backend2PgEEL_EENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4folduNCINvNtNtB2A_8adapters3map8map_foldBX_TNtB1j_16MigrationVersionBX_EuNCINvYNtNtB24_10connection12PgConnectionINtNtCskLp0vI1JK7v_17diesel_migrations17migration_harness16MigrationHarnessB20_E18pending_migrationsNtNtB5k_19embedded_migrations18EmbeddedMigrationsE0NCINvNvB2u_8for_each4callB47_NCINvXs1i_NtCsfKiFC1ztrmh_9hashbrown3mapINtB8j_7HashMapB48_BX_NtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateEINtNtB2y_7collect6ExtendB47_E6extendINtB3A_3MapBI_B4B_EE0E0E0ECsi6wIvn64oUH_13custom_arrays(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(48) %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3mapINtB6_3MapINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterINtNtB14_5boxed3BoxDINtNtCsjRvGck33osM_6diesel9migration9MigrationNtNtNtB2a_2pg7backend2PgEEL_EENCINvYNtNtB2T_10connection12PgConnectionINtNtCskLp0vI1JK7v_17diesel_migrations17migration_harness16MigrationHarnessB2P_E21revert_all_migrationsNtNtB42_19embedded_migrations18EmbeddedMigrationsE0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB6s_8for_each4callTNtB28_16MigrationVersionB1L_ENCINvXs1i_NtCsfKiFC1ztrmh_9hashbrown3mapINtB89_7HashMapB7w_B1L_NtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateEINtNtB6w_7collect6ExtendB7v_E6extendBN_E0E0ECsi6wIvn64oUH_13custom_arrays(ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %0, ptr noalias noundef align 8 dereferenceable(48) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %0, i64 32, i1 false)
  call void @_RINvXs4_NtNtCs40k4W9msRzi_5alloc3vec9into_iterINtB6_8IntoIterINtNtBa_5boxed3BoxDINtNtCsjRvGck33osM_6diesel9migration9MigrationNtNtNtB1l_2pg7backend2PgEEL_EENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4folduNCINvNtNtB2A_8adapters3map8map_foldBX_TNtB1j_16MigrationVersionBX_EuNCINvYNtNtB24_10connection12PgConnectionINtNtCskLp0vI1JK7v_17diesel_migrations17migration_harness16MigrationHarnessB20_E21revert_all_migrationsNtNtB5k_19embedded_migrations18EmbeddedMigrationsE0NCINvNvB2u_8for_each4callB47_NCINvXs1i_NtCsfKiFC1ztrmh_9hashbrown3mapINtB8m_7HashMapB48_BX_NtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateEINtNtB2y_7collect6ExtendB47_E6extendINtB3A_3MapBI_B4B_EE0E0E0ECsi6wIvn64oUH_13custom_arrays(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(48) %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3mapINtB6_3MapINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterNtNtCsjRvGck33osM_6diesel9migration16MigrationVersionENCINvYNtNtNtB1P_2pg10connection12PgConnectionINtNtCskLp0vI1JK7v_17diesel_migrations17migration_harness16MigrationHarnessNtNtB2N_7backend2PgE21revert_all_migrationsNtNtB3r_19embedded_migrations18EmbeddedMigrationsEs_0ENtNtNtBa_6traits8iterator8Iterator8try_foldINtNtB12_13in_place_drop11InPlaceDropB1L_ENCINvXB8_INtB8_12GenericShuntBN_INtNtBc_6result6ResultNtNtBc_7convert10InfallibleINtNtB14_5boxed3BoxDNtNtBc_5error5ErrorNtNtBc_6marker4SyncNtB9t_4SendEL_EEEB68_8try_foldB6P_NCINvNtB12_16in_place_collect24write_in_place_with_dropB1L_E0IB82_B6P_zEE0INtNtNtBc_3ops12control_flow11ControlFlowBbh_B6P_EECsi6wIvn64oUH_13custom_arrays(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias noundef align 8 dereferenceable(48) %1, ptr noundef %2, ptr noundef %3, ptr noalias noundef align 8 dereferenceable(8) %4, ptr noalias noundef align 8 dereferenceable(16) %5) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 32
  store ptr %4, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %5, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.b, ptr %i.d, align 8
  call void @_RINvXs4_NtNtCs40k4W9msRzi_5alloc3vec9into_iterINtB6_8IntoIterNtNtCsjRvGck33osM_6diesel9migration16MigrationVersionENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator8try_foldINtNtB8_13in_place_drop11InPlaceDropBX_ENCINvNtNtB1V_8adapters3map12map_try_foldBX_INtNtB1X_6result6ResultBX_INtNtBa_5boxed3BoxDNtNtB1X_5error5ErrorNtNtB1X_6marker4SyncNtB5j_4SendEL_EEB2T_INtNtNtB1X_3ops12control_flow11ControlFlowIB4f_B2T_zEB2T_ENCINvYNtNtNtB11_2pg10connection12PgConnectionINtNtCskLp0vI1JK7v_17diesel_migrations17migration_harness16MigrationHarnessNtNtB71_7backend2PgE21revert_all_migrationsNtNtB7F_19embedded_migrations18EmbeddedMigrationsEs_0NCINvXB3E_INtB3E_12GenericShuntINtB3C_3MapBI_B6R_EIB4f_NtNtB1X_7convert10InfallibleB4E_EEB1P_8try_foldB2T_NCINvNtB8_16in_place_collect24write_in_place_with_dropBX_E0B6B_E0E0B5V_ECsi6wIvn64oUH_13custom_arrays(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias noundef nonnull align 8 dereferenceable(32) %1, ptr noundef %2, ptr noundef %3, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNCINvMNtNtCsjRvGck33osM_6diesel10connection15statement_cacheINtB5_14StatementCacheNtNtNtB9_2pg7backend2PgNtNtNtB1n_10connection4stmt9StatementE28cached_statement_non_genericINtNtCscI6d9CVNmLh_4core6result6ResultB1G_NtNtB9_6result5ErrorEQNtNtB1K_3raw13RawConnectionE0Csi6wIvn64oUH_13custom_arrays(ptr dead_on_unwind noalias noundef nonnull writable align 8 captures(address) dereferenceable(64) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(48) %1, ptr noalias noundef nonnull align 8 dereferenceable(8) %2, ptr noalias noundef nonnull readonly captures(address, read_provenance) %3, i64 noundef %4, i1 noundef zeroext %5) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 6 uses
  br i1 %5, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !3, !align !9, !noundef !3
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !3, !noundef !3
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !3, !align !9, !noundef !3
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.h = load i64, ptr %i.g, align 8, !noundef !3
  tail call void %i.d(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(address) dereferenceable(64) %0, ptr noalias noundef nonnull align 8 dereferenceable(8) %2, ptr noalias noundef nonnull readonly captures(address, read_provenance) %3, i64 noundef %4, i64 noundef 1, i64 undef, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.f, i64 noundef %i.h)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.i = load ptr, ptr %1, align 8, !nonnull !3, !noundef !3
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !nonnull !3, !align !9, !noundef !3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %3, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %4, ptr %i.m, align 8
  store i32 3, ptr %i.a, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 64
  %i.o = load ptr, ptr %i.n, align 8, !invariant.load !3, !nonnull !3
  call void %i.o(ptr noundef nonnull %i.i, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.q = load ptr, ptr %i.p, align 8, !nonnull !3, !align !9, !noundef !3 ; 2 uses
  %i.r = load i64, ptr %i.q, align 8, !noundef !3
  %i.s = add i64 %i.r, 1                          ; 2 uses
  store i64 %i.s, ptr %i.q, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.u = load ptr, ptr %i.t, align 8, !nonnull !3, !align !9, !noundef !3
  %i.v = load ptr, ptr %i.u, align 8, !nonnull !3, !noundef !3
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.x = load ptr, ptr %i.w, align 8, !nonnull !3, !align !9, !noundef !3
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.z = load i64, ptr %i.y, align 8, !noundef !3
  call void %i.v(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(address) dereferenceable(64) %0, ptr noalias noundef nonnull align 8 dereferenceable(8) %2, ptr noalias noundef nonnull readonly captures(address, read_provenance) %3, i64 noundef %4, i64 noundef 0, i64 %i.s, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.x, i64 noundef %i.z)
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCscI6d9CVNmLh_4core3fmtRINtNtCs40k4W9msRzi_5alloc6borrow3CoweENtB6_5Debug3fmtCsi6wIvn64oUH_13custom_arrays(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !3, !align !9, !noundef !3 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !290)
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !alias.scope !290, !nonnull !3, !noundef !3
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !290, !noundef !3
  %i.f = tail call noundef zeroext i1 @_RNvXsh_NtCscI6d9CVNmLh_4core3fmteNtB5_5Debug3fmt(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.c, i64 noundef %i.e, ptr noalias noundef nonnull align 8 dereferenceable(24) %1), !noalias !290
  ret i1 %i.f
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCscI6d9CVNmLh_4core3fmtRNtNtNtB8_3num5error12IntErrorKindNtB6_5Debug3fmtCsi6wIvn64oUH_13custom_arrays(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
switch.lookup:
  %i.a = load ptr, ptr %0, align 8, !nonnull !3, !noundef !3
  %.val = load i8, ptr %i.a, align 1, !range !291, !noundef !3 ; 2 uses
  %i.b = zext nneg i8 %.val to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._RNvXs1g_NtCscI6d9CVNmLh_4core3fmtRNtNtNtB8_3num5error12IntErrorKindNtB6_5Debug3fmtCsi6wIvn64oUH_13custom_arrays, i64 %i.b
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i64
  %i.c = zext nneg i8 %.val to i64
  %switch.gep1 = getelementptr inbounds nuw [8 x i8], ptr @switch.table._RNvXs1g_NtCscI6d9CVNmLh_4core3fmtRNtNtNtB8_3num5error12IntErrorKindNtB6_5Debug3fmtCsi6wIvn64oUH_13custom_arrays.66, i64 %i.c
  %switch.load2 = load ptr, ptr %switch.gep1, align 8
  %i.d = tail call noundef zeroext i1 @_RNvMsa_NtCscI6d9CVNmLh_4core3fmtNtB5_9Formatter9write_str(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %switch.load2, i64 noundef %switch.ext)
  ret i1 %i.d
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs2_NtCsjRvGck33osM_6diesel9serializeRbINtB5_5ToSqlNtNtB7_9sql_types4BoolNtNtNtB7_2pg7backend2PgE6to_sqlCsi6wIvn64oUH_13custom_arrays(ptr dead_on_unwind noalias noundef writable sret([16 x i8]) align 8 captures(none) dereferenceable(16) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %1, ptr noalias noundef align 8 dereferenceable(24) %2) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !nonnull !3, !noundef !3
  tail call void @_RNvXs_NtNtNtCsjRvGck33osM_6diesel2pg5types10primitivesbINtNtBa_9serialize5ToSqlNtNtBa_9sql_types4BoolNtNtB8_7backend2PgE6to_sql(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %2)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs2_NtCsjRvGck33osM_6diesel9serializeReINtB5_5ToSqlNtNtB7_9sql_types4TextNtNtNtB7_2pg7backend2PgE6to_sqlCsi6wIvn64oUH_13custom_arrays(ptr dead_on_unwind noalias noundef writable sret([16 x i8]) align 8 captures(none) dereferenceable(16) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(16) %1, ptr noalias noundef align 8 dereferenceable(24) %2) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !nonnull !3, !noundef !3
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i64, ptr %i.b, align 8, !noundef !3
  tail call void @_RNvXNtNtCsjRvGck33osM_6diesel10type_impls10primitiveseINtNtB6_9serialize5ToSqlNtNtB6_9sql_types4TextNtNtNtB6_2pg7backend2PgE6to_sqlCsi6wIvn64oUH_13custom_arrays(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.a, i64 noundef %i.c, ptr noalias noundef nonnull align 8 dereferenceable(24) %2)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs2_NtCsjRvGck33osM_6diesel9serializeRlINtB5_5ToSqlNtNtB7_9sql_types7IntegerNtNtNtB7_2pg7backend2PgE6to_sqlCsi6wIvn64oUH_13custom_arrays(ptr dead_on_unwind noalias noundef writable sret([16 x i8]) align 8 captures(none) dereferenceable(16) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %1, ptr noalias noundef align 8 dereferenceable(24) %2) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !nonnull !3, !align !292, !noundef !3
  tail call void @_RNvXs4_NtNtNtCsjRvGck33osM_6diesel2pg5types8integerslINtNtBb_9serialize5ToSqlNtNtBb_9sql_types7IntegerNtNtB9_7backend2PgE6to_sql(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %0, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %2)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs2_NtNtNtCsjRvGck33osM_6diesel13query_builder16update_statement9changesetINtB5_6AssignINtB5_22ColumnWrapperForUpdateNtNtNtNtNtCsi6wIvn64oUH_13custom_arrays6schema4smdb7service7columns11descriptionEINtNtNtBb_10expression5bound5BoundNtNtBb_9sql_types4TextRNtNtCs40k4W9msRzi_5alloc6string6StringEEINtB9_13QueryFragmentNtNtNtBb_2pg7backend2PgE8walk_astB24_(ptr dead_on_unwind noalias noundef writable sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %1, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(40) %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 5 uses
  %i.b = alloca [40 x i8], align 8                ; 5 uses
  %i.c = alloca [32 x i8], align 8                ; 6 uses
end_hunk_1
