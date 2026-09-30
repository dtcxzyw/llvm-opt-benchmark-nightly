Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lance-rs/original/lance_arrow.lance_arrow.8c51e37f9723585d-cgu.0?download=true
inline.NumInlined: 3904
inline.NumDeleted: 1641
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 15
begin_hunk_0_@_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldEECsc2V0exE7CWf_11lance_arrow:bb.a
  br i1 %i.r, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc7raw_vec6RawVecNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldEECsc2V0exE7CWf_11lance_arrow.exit, label %bb.e

bb.e:                                             ; preds = %.body
  %i.s = mul nuw i64 %.val4, 112
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef %i.s, i64 noundef range(i64 1, -9223372036854775807) 8) #39
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc7raw_vec6RawVecNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldEECsc2V0exE7CWf_11lance_arrow.exit

_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsc2V0exE7CWf_11lance_arrow.exit: ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldECsc2V0exE7CWf_11lance_arrow.exit.i.i, %bb.a
  %.val2 = load i64, ptr %0, align 8, !range !13, !noundef !10 ; 2 uses
  %i.t = icmp eq i64 %.val2, 0
  br i1 %i.t, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc7raw_vec6RawVecNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldEECsc2V0exE7CWf_11lance_arrow.exit6, label %bb.f

bb.f:                                             ; preds = %_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsc2V0exE7CWf_11lance_arrow.exit
  %i.u = mul nuw i64 %.val2, 112
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef %i.u, i64 noundef range(i64 1, -9223372036854775807) 8) #39
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc7raw_vec6RawVecNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldEECsc2V0exE7CWf_11lance_arrow.exit6

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc7raw_vec6RawVecNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldEECsc2V0exE7CWf_11lance_arrow.exit6: ; preds = %_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsc2V0exE7CWf_11lance_arrow.exit, %bb.f
  ret void

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc7raw_vec6RawVecNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldEECsc2V0exE7CWf_11lance_arrow.exit: ; preds = %bb.e, %.body
  resume { ptr, i32 } %i.i
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtCskKR1pP4skmg_5jsonb5owned10OwnedJsonbEECsc2V0exE7CWf_11lance_arrow(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.a, align 8, !nonnull !10, !noundef !10 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1 = load i64, ptr %i.b, align 8, !noundef !10 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2372)
  %i.c = icmp eq i64 %.val1, 0
  br i1 %i.c, label %_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtCskKR1pP4skmg_5jsonb5owned10OwnedJsonbENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsc2V0exE7CWf_11lance_arrow.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCskKR1pP4skmg_5jsonb5owned10OwnedJsonbECsc2V0exE7CWf_11lance_arrow.exit.i.i
  %.sroa.0.011.i.i = phi i64 [ %i.e, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCskKR1pP4skmg_5jsonb5owned10OwnedJsonbECsc2V0exE7CWf_11lance_arrow.exit.i.i ], [ 0, %bb.a ] ; 2 uses
  %i.d = getelementptr inbounds nuw [24 x i8], ptr %.val, i64 %.sroa.0.011.i.i ; 2 uses
  %i.e = add nuw nsw i64 %.sroa.0.011.i.i, 1      ; 2 uses
  %.val8.i.i = load i64, ptr %i.d, align 8, !alias.scope !2372 ; 2 uses
  %i.f = icmp eq i64 %.val8.i.i, 0
  br i1 %i.f, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCskKR1pP4skmg_5jsonb5owned10OwnedJsonbECsc2V0exE7CWf_11lance_arrow.exit.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.g = getelementptr i8, ptr %i.d, i64 8
  %.val9.i.i = load ptr, ptr %i.g, align 8, !alias.scope !2372, !nonnull !10, !noundef !10
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val9.i.i, i64 noundef %.val8.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #39, !noalias !2372
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCskKR1pP4skmg_5jsonb5owned10OwnedJsonbECsc2V0exE7CWf_11lance_arrow.exit.i.i

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCskKR1pP4skmg_5jsonb5owned10OwnedJsonbECsc2V0exE7CWf_11lance_arrow.exit.i.i: ; preds = %bb.b, %.lr.ph.i.i
  %i.h = icmp eq i64 %i.e, %.val1
  br i1 %i.h, label %_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtCskKR1pP4skmg_5jsonb5owned10OwnedJsonbENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsc2V0exE7CWf_11lance_arrow.exit, label %.lr.ph.i.i

_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtCskKR1pP4skmg_5jsonb5owned10OwnedJsonbENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsc2V0exE7CWf_11lance_arrow.exit: ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCskKR1pP4skmg_5jsonb5owned10OwnedJsonbECsc2V0exE7CWf_11lance_arrow.exit.i.i, %bb.a
  %.val2 = load i64, ptr %0, align 8, !range !13, !noundef !10 ; 2 uses
  %i.i = icmp eq i64 %.val2, 0
  br i1 %i.i, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc7raw_vec6RawVecNtNtCskKR1pP4skmg_5jsonb5owned10OwnedJsonbEECsc2V0exE7CWf_11lance_arrow.exit6, label %bb.c

bb.c:                                             ; preds = %_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtCskKR1pP4skmg_5jsonb5owned10OwnedJsonbENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsc2V0exE7CWf_11lance_arrow.exit
  %i.j = mul nuw i64 %.val2, 24
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef %i.j, i64 noundef range(i64 1, -9223372036854775807) 8) #39
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc7raw_vec6RawVecNtNtCskKR1pP4skmg_5jsonb5owned10OwnedJsonbEECsc2V0exE7CWf_11lance_arrow.exit6

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc7raw_vec6RawVecNtNtCskKR1pP4skmg_5jsonb5owned10OwnedJsonbEECsc2V0exE7CWf_11lance_arrow.exit6: ; preds = %_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtCskKR1pP4skmg_5jsonb5owned10OwnedJsonbENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsc2V0exE7CWf_11lance_arrow.exit, %bb.c
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer9immutable6BufferEECsc2V0exE7CWf_11lance_arrow(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.a, align 8, !nonnull !10, !noundef !10 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1 = load i64, ptr %i.b, align 8, !noundef !10 ; 4 uses
  %i.c = icmp eq i64 %.val1, 0
  br i1 %i.c, label %_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer9immutable6BufferENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsc2V0exE7CWf_11lance_arrow.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer9immutable6BufferECsc2V0exE7CWf_11lance_arrow.exit.i.i
  %.sroa.0.09.i.i = phi i64 [ %i.e, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer9immutable6BufferECsc2V0exE7CWf_11lance_arrow.exit.i.i ], [ 0, %bb.a ] ; 2 uses
  %i.d = getelementptr inbounds nuw [24 x i8], ptr %.val, i64 %.sroa.0.09.i.i ; 2 uses
  %i.e = add nuw nsw i64 %.sroa.0.09.i.i, 1       ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2387)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2388)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2389)
  %i.f = load ptr, ptr %i.d, align 8, !alias.scope !2390, !nonnull !10, !noundef !10
  %i.g = atomicrmw sub ptr %i.f, i64 1 release, align 8, !noalias !2391
  %i.h = icmp eq i64 %i.g, 1
  br i1 %i.h, label %bb.b, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer9immutable6BufferECsc2V0exE7CWf_11lance_arrow.exit.i.i

bb.b:                                             ; preds = %.lr.ph.i.i
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer9immutable6BufferECsc2V0exE7CWf_11lance_arrow.exit.i.i unwind label %bb.c

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer9immutable6BufferECsc2V0exE7CWf_11lance_arrow.exit.i.i: ; preds = %bb.b, %.lr.ph.i.i
  %i.i = icmp eq i64 %i.e, %.val1
  br i1 %i.i, label %_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer9immutable6BufferENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsc2V0exE7CWf_11lance_arrow.exit, label %.lr.ph.i.i

bb.c:                                             ; preds = %bb.b
  %i.j = landingpad { ptr, i32 }
          cleanup
  %i.k = icmp eq i64 %i.e, %.val1
  br i1 %i.k, label %.body, label %.lr.ph12.i.i

.lr.ph12.i.i:                                     ; preds = %bb.c, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer9immutable6BufferECsc2V0exE7CWf_11lance_arrow.exit8.i.i
  %.sroa.0.110.i.i = phi i64 [ %i.m, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer9immutable6BufferECsc2V0exE7CWf_11lance_arrow.exit8.i.i ], [ %i.e, %bb.c ] ; 2 uses
  %i.l = getelementptr inbounds nuw [24 x i8], ptr %.val, i64 %.sroa.0.110.i.i ; 2 uses
  %i.m = add i64 %.sroa.0.110.i.i, 1              ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2392)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2393)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2394)
  %i.n = load ptr, ptr %i.l, align 8, !alias.scope !2395, !nonnull !10, !noundef !10
  %i.o = atomicrmw sub ptr %i.n, i64 1 release, align 8, !noalias !2396
  %i.p = icmp eq i64 %i.o, 1
  br i1 %i.p, label %bb.d, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer9immutable6BufferECsc2V0exE7CWf_11lance_arrow.exit8.i.i

bb.d:                                             ; preds = %.lr.ph12.i.i
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.l)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer9immutable6BufferECsc2V0exE7CWf_11lance_arrow.exit8.i.i unwind label %bb.e

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer9immutable6BufferECsc2V0exE7CWf_11lance_arrow.exit8.i.i: ; preds = %bb.d, %.lr.ph12.i.i
  %i.q = icmp eq i64 %i.m, %.val1
  br i1 %i.q, label %.body, label %.lr.ph12.i.i

bb.e:                                             ; preds = %bb.d
  %i.r = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #38
  unreachable

.body:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer9immutable6BufferECsc2V0exE7CWf_11lance_arrow.exit8.i.i, %bb.c
  %.val4 = load i64, ptr %0, align 8, !range !13, !noundef !10 ; 2 uses
  %i.s = icmp eq i64 %.val4, 0
  br i1 %i.s, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc7raw_vec6RawVecNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer9immutable6BufferEECsc2V0exE7CWf_11lance_arrow.exit, label %bb.f

bb.f:                                             ; preds = %.body
  %i.t = mul nuw i64 %.val4, 24
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef %i.t, i64 noundef range(i64 1, -9223372036854775807) 8) #39
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc7raw_vec6RawVecNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer9immutable6BufferEECsc2V0exE7CWf_11lance_arrow.exit

_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer9immutable6BufferENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsc2V0exE7CWf_11lance_arrow.exit: ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer9immutable6BufferECsc2V0exE7CWf_11lance_arrow.exit.i.i, %bb.a
  %.val2 = load i64, ptr %0, align 8, !range !13, !noundef !10 ; 2 uses
  %i.u = icmp eq i64 %.val2, 0
  br i1 %i.u, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc7raw_vec6RawVecNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer9immutable6BufferEECsc2V0exE7CWf_11lance_arrow.exit6, label %bb.g

bb.g:                                             ; preds = %_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer9immutable6BufferENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsc2V0exE7CWf_11lance_arrow.exit
  %i.v = mul nuw i64 %.val2, 24
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef %i.v, i64 noundef range(i64 1, -9223372036854775807) 8) #39
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc7raw_vec6RawVecNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer9immutable6BufferEECsc2V0exE7CWf_11lance_arrow.exit6

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc7raw_vec6RawVecNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer9immutable6BufferEECsc2V0exE7CWf_11lance_arrow.exit6: ; preds = %_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer9immutable6BufferENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsc2V0exE7CWf_11lance_arrow.exit, %bb.g
  ret void

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc7raw_vec6RawVecNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer9immutable6BufferEECsc2V0exE7CWf_11lance_arrow.exit: ; preds = %bb.f, %.body
  resume { ptr, i32 } %i.j
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EECsc2V0exE7CWf_11lance_arrow(ptr noalias noundef align 8 dereferenceable(16) %0) unnamed_addr #0 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2399)
  %i.a = load ptr, ptr %0, align 8, !alias.scope !2399, !nonnull !10, !noundef !10
  %i.b = atomicrmw sub ptr %i.a, i64 1 release, align 8, !noalias !2399
  %i.c = icmp eq i64 %i.b, 1
  br i1 %i.c, label %bb.b, label %_RNvXsD_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_ENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsc2V0exE7CWf_11lance_arrow.exit

bb.b:                                             ; preds = %bb.a
  fence acquire
  tail call void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_E9drop_slowBL_(ptr noalias noundef nonnull align 8 dereferenceable(16) %0)
  br label %_RNvXsD_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_ENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsc2V0exE7CWf_11lance_arrow.exit

_RNvXsD_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_ENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsc2V0exE7CWf_11lance_arrow.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldEECsc2V0exE7CWf_11lance_arrow(ptr noalias noundef align 8 dereferenceable(8) %0) unnamed_addr #0 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2402)
  %i.a = load ptr, ptr %0, align 8, !alias.scope !2402, !nonnull !10, !noundef !10
  %i.b = atomicrmw sub ptr %i.a, i64 1 release, align 8, !noalias !2402
  %i.c = icmp eq i64 %i.b, 1
  br i1 %i.c, label %bb.b, label %_RNvXsD_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsc2V0exE7CWf_11lance_arrow.exit

bb.b:                                             ; preds = %bb.a
  fence acquire
  tail call void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(8) %0)
  br label %_RNvXsD_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsc2V0exE7CWf_11lance_arrow.exit

_RNvXsD_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsc2V0exE7CWf_11lance_arrow.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync8ArcInnerNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesEECsc2V0exE7CWf_11lance_arrow(ptr noalias noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2413)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2414)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !alias.scope !2415, !noundef !10 ; 2 uses
  %i.c = icmp ne ptr %i.b, null                   ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !2415 ; 2 uses
  %i.f = icmp eq i64 %i.e, 0
  %or.cond.i.i = select i1 %i.c, i1 true, i1 %i.f
  br i1 %or.cond.i.i, label %_RNvXs1_NtCs4YAKbnGhBJc_12arrow_buffer5bytesNtB5_5BytesNtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4drop.exit.i, label %_RNvXs1_NtCs4YAKbnGhBJc_12arrow_buffer5bytesNtB5_5BytesNtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4drop.exit.thread.i

_RNvXs1_NtCs4YAKbnGhBJc_12arrow_buffer5bytesNtB5_5BytesNtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4drop.exit.thread.i: ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.i = load ptr, ptr %i.g, align 8, !alias.scope !2415, !nonnull !10, !noundef !10
  %i.j = load i64, ptr %i.h, align 8, !range !2416, !alias.scope !2415, !noundef !10
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %i.i, i64 noundef %i.e, i64 noundef %i.j) #39, !noalias !2415
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesECsc2V0exE7CWf_11lance_arrow.exit

_RNvXs1_NtCs4YAKbnGhBJc_12arrow_buffer5bytesNtB5_5BytesNtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4drop.exit.i: ; preds = %bb.a
  br i1 %i.c, label %bb.b, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesECsc2V0exE7CWf_11lance_arrow.exit

bb.b:                                             ; preds = %_RNvXs1_NtCs4YAKbnGhBJc_12arrow_buffer5bytesNtB5_5BytesNtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4drop.exit.i
  %i.k = atomicrmw sub ptr %i.b, i64 1 release, align 8, !noalias !2417
  %i.l = icmp eq i64 %i.k, 1
  br i1 %i.l, label %bb.c, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesECsc2V0exE7CWf_11lance_arrow.exit

bb.c:                                             ; preds = %bb.b
  fence acquire
  tail call void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcDNtNtCs4YAKbnGhBJc_12arrow_buffer5alloc10AllocationEL_E9drop_slowBL_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a)
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesECsc2V0exE7CWf_11lance_arrow.exit

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesECsc2V0exE7CWf_11lance_arrow.exit: ; preds = %_RNvXs1_NtCs4YAKbnGhBJc_12arrow_buffer5bytesNtB5_5BytesNtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4drop.exit.thread.i, %_RNvXs1_NtCs4YAKbnGhBJc_12arrow_buffer5bytesNtB5_5BytesNtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4drop.exit.i, %bb.b, %bb.c
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync8ArcInnerNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldEECsc2V0exE7CWf_11lance_arrow(ptr noalias noundef nonnull align 8 dereferenceable(128) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2422)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2423)
  %.val.i.i = load i64, ptr %i.a, align 8, !alias.scope !2424 ; 2 uses
  %i.b = icmp eq i64 %.val.i.i, 0
  br i1 %i.b, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsc2V0exE7CWf_11lance_arrow.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val1.i.i = load ptr, ptr %i.c, align 8, !alias.scope !2424, !nonnull !10, !noundef !10
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i, i64 noundef %.val.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #39, !noalias !2424
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsc2V0exE7CWf_11lance_arrow.exit.i

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsc2V0exE7CWf_11lance_arrow.exit.i: ; preds = %bb.b, %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs8SUNSmrkv52_12arrow_schema8datatype8DataTypeECsc2V0exE7CWf_11lance_arrow(ptr noalias noundef align 8 dereferenceable(24) %i.d)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldECsc2V0exE7CWf_11lance_arrow.exit unwind label %bb.c

bb.c:                                             ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsc2V0exE7CWf_11lance_arrow.exit.i
  %i.e = landingpad { ptr, i32 }
          cleanup
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 64
  tail call fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCsfKiFC1ztrmh_9hashbrown3raw8RawTableTNtNtCs40k4W9msRzi_5alloc6string6StringB1i_EEECsc2V0exE7CWf_11lance_arrow(ptr noalias noundef nonnull readonly align 8 dereferenceable(48) %i.f)
  resume { ptr, i32 } %i.e

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldECsc2V0exE7CWf_11lance_arrow.exit: ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsc2V0exE7CWf_11lance_arrow.exit.i
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 64
  tail call fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCsfKiFC1ztrmh_9hashbrown3raw8RawTableTNtNtCs40k4W9msRzi_5alloc6string6StringB1i_EEECsc2V0exE7CWf_11lance_arrow(ptr noalias noundef nonnull readonly align 8 dereferenceable(48) %i.g)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync8ArcInnerNtNtCs8SUNSmrkv52_12arrow_schema6schema6SchemaEECsc2V0exE7CWf_11lance_arrow(ptr noalias noundef nonnull align 8 dereferenceable(80) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2433)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2434)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2435)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2436)
  %i.b = load ptr, ptr %i.a, align 8, !alias.scope !2437, !nonnull !10, !noundef !10
  %i.c = atomicrmw sub ptr %i.b, i64 1 release, align 8, !noalias !2437
  %i.d = icmp eq i64 %i.c, 1
  br i1 %i.d, label %bb.b, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs8SUNSmrkv52_12arrow_schema6schema6SchemaECsc2V0exE7CWf_11lance_arrow.exit

bb.b:                                             ; preds = %bb.a
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcSIBx_NtNtCs8SUNSmrkv52_12arrow_schema5field5FieldEE9drop_slowBP_(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.a)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs8SUNSmrkv52_12arrow_schema6schema6SchemaECsc2V0exE7CWf_11lance_arrow.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          cleanup
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCsfKiFC1ztrmh_9hashbrown3raw8RawTableTNtNtCs40k4W9msRzi_5alloc6string6StringB1i_EEECsc2V0exE7CWf_11lance_arrow(ptr noalias noundef nonnull readonly align 8 dereferenceable(48) %i.f)
  resume { ptr, i32 } %i.e

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs8SUNSmrkv52_12arrow_schema6schema6SchemaECsc2V0exE7CWf_11lance_arrow.exit: ; preds = %bb.a, %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCsfKiFC1ztrmh_9hashbrown3raw8RawTableTNtNtCs40k4W9msRzi_5alloc6string6StringB1i_EEECsc2V0exE7CWf_11lance_arrow(ptr noalias noundef nonnull readonly align 8 dereferenceable(48) %i.g)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxDG0_INtNtNtB4_3ops8function2FnTQL1_INtNtCs56ggtDZRYpd_10arrow_data9transform17__MutableArrayDataL0_EjEEp6OutputuEL_EECsc2V0exE7CWf_11lance_arrow(ptr %.0.val, ptr nofree readonly captures(none) %.8.val) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  %i.a = load ptr, ptr %.8.val, align 8, !invariant.load !10 ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  invoke void %i.a(ptr noundef nonnull %.0.val)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %.8.val, i64 8
  %i.c = load i64, ptr %i.b, align 8, !range !13, !invariant.load !10 ; 2 uses
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %_RNvXs8_NtCs40k4W9msRzi_5alloc5boxedINtB5_3BoxDG0_INtNtNtCscI6d9CVNmLh_4core3ops8function2FnTQL1_INtNtCs56ggtDZRYpd_10arrow_data9transform17__MutableArrayDataL0_EjEEp6OutputuEL_ENtNtBQ_4drop4Drop4dropCsc2V0exE7CWf_11lance_arrow.exit, label %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i

_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i: ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %.8.val, i64 16
  %i.f = load i64, ptr %i.e, align 8, !range !25, !invariant.load !10
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef %i.c, i64 noundef range(i64 1, -9223372036854775807) %i.f) #39
  br label %_RNvXs8_NtCs40k4W9msRzi_5alloc5boxedINtB5_3BoxDG0_INtNtNtCscI6d9CVNmLh_4core3ops8function2FnTQL1_INtNtCs56ggtDZRYpd_10arrow_data9transform17__MutableArrayDataL0_EjEEp6OutputuEL_ENtNtBQ_4drop4Drop4dropCsc2V0exE7CWf_11lance_arrow.exit

_RNvXs8_NtCs40k4W9msRzi_5alloc5boxedINtB5_3BoxDG0_INtNtNtCscI6d9CVNmLh_4core3ops8function2FnTQL1_INtNtCs56ggtDZRYpd_10arrow_data9transform17__MutableArrayDataL0_EjEEp6OutputuEL_ENtNtBQ_4drop4Drop4dropCsc2V0exE7CWf_11lance_arrow.exit: ; preds = %bb.c, %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i
  ret void

bb.d:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          cleanup
  %i.h = getelementptr inbounds nuw i8, ptr %.8.val, i64 8
  %i.i = load i64, ptr %i.h, align 8, !range !13, !invariant.load !10 ; 2 uses
  %i.j = icmp eq i64 %i.i, 0
  br i1 %i.j, label %_RNvXs8_NtCs40k4W9msRzi_5alloc5boxedINtB5_3BoxDG0_INtNtNtCscI6d9CVNmLh_4core3ops8function2FnTQL1_INtNtCs56ggtDZRYpd_10arrow_data9transform17__MutableArrayDataL0_EjEEp6OutputuEL_ENtNtBQ_4drop4Drop4dropCsc2V0exE7CWf_11lance_arrow.exit5, label %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i4

_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i4: ; preds = %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %.8.val, i64 16
  %i.l = load i64, ptr %i.k, align 8, !range !25, !invariant.load !10
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef %i.i, i64 noundef range(i64 1, -9223372036854775807) %i.l) #39
  br label %_RNvXs8_NtCs40k4W9msRzi_5alloc5boxedINtB5_3BoxDG0_INtNtNtCscI6d9CVNmLh_4core3ops8function2FnTQL1_INtNtCs56ggtDZRYpd_10arrow_data9transform17__MutableArrayDataL0_EjEEp6OutputuEL_ENtNtBQ_4drop4Drop4dropCsc2V0exE7CWf_11lance_arrow.exit5

_RNvXs8_NtCs40k4W9msRzi_5alloc5boxedINtB5_3BoxDG0_INtNtNtCscI6d9CVNmLh_4core3ops8function2FnTQL1_INtNtCs56ggtDZRYpd_10arrow_data9transform17__MutableArrayDataL0_EjEEp6OutputuEL_ENtNtBQ_4drop4Drop4dropCsc2V0exE7CWf_11lance_arrow.exit5: ; preds = %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i4, %bb.d
  resume { ptr, i32 } %i.g
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxDG0_INtNtNtB4_3ops8function2FnTQL1_INtNtCs56ggtDZRYpd_10arrow_data9transform17__MutableArrayDataL0_EjjEEp6OutputuEL_EECsc2V0exE7CWf_11lance_arrow(ptr %.0.val, ptr nofree readonly captures(none) %.8.val) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  %i.a = load ptr, ptr %.8.val, align 8, !invariant.load !10 ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  invoke void %i.a(ptr noundef nonnull %.0.val)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %.8.val, i64 8
  %i.c = load i64, ptr %i.b, align 8, !range !13, !invariant.load !10 ; 2 uses
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %_RNvXs8_NtCs40k4W9msRzi_5alloc5boxedINtB5_3BoxDG0_INtNtNtCscI6d9CVNmLh_4core3ops8function2FnTQL1_INtNtCs56ggtDZRYpd_10arrow_data9transform17__MutableArrayDataL0_EjjEEp6OutputuEL_ENtNtBQ_4drop4Drop4dropCsc2V0exE7CWf_11lance_arrow.exit, label %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i

_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i: ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %.8.val, i64 16
  %i.f = load i64, ptr %i.e, align 8, !range !25, !invariant.load !10
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef %i.c, i64 noundef range(i64 1, -9223372036854775807) %i.f) #39
  br label %_RNvXs8_NtCs40k4W9msRzi_5alloc5boxedINtB5_3BoxDG0_INtNtNtCscI6d9CVNmLh_4core3ops8function2FnTQL1_INtNtCs56ggtDZRYpd_10arrow_data9transform17__MutableArrayDataL0_EjjEEp6OutputuEL_ENtNtBQ_4drop4Drop4dropCsc2V0exE7CWf_11lance_arrow.exit

_RNvXs8_NtCs40k4W9msRzi_5alloc5boxedINtB5_3BoxDG0_INtNtNtCscI6d9CVNmLh_4core3ops8function2FnTQL1_INtNtCs56ggtDZRYpd_10arrow_data9transform17__MutableArrayDataL0_EjjEEp6OutputuEL_ENtNtBQ_4drop4Drop4dropCsc2V0exE7CWf_11lance_arrow.exit: ; preds = %bb.c, %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i
  ret void

bb.d:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          cleanup
  %i.h = getelementptr inbounds nuw i8, ptr %.8.val, i64 8
  %i.i = load i64, ptr %i.h, align 8, !range !13, !invariant.load !10 ; 2 uses
  %i.j = icmp eq i64 %i.i, 0
  br i1 %i.j, label %_RNvXs8_NtCs40k4W9msRzi_5alloc5boxedINtB5_3BoxDG0_INtNtNtCscI6d9CVNmLh_4core3ops8function2FnTQL1_INtNtCs56ggtDZRYpd_10arrow_data9transform17__MutableArrayDataL0_EjjEEp6OutputuEL_ENtNtBQ_4drop4Drop4dropCsc2V0exE7CWf_11lance_arrow.exit5, label %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i4

_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i4: ; preds = %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %.8.val, i64 16
  %i.l = load i64, ptr %i.k, align 8, !range !25, !invariant.load !10
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef %i.i, i64 noundef range(i64 1, -9223372036854775807) %i.l) #39
  br label %_RNvXs8_NtCs40k4W9msRzi_5alloc5boxedINtB5_3BoxDG0_INtNtNtCscI6d9CVNmLh_4core3ops8function2FnTQL1_INtNtCs56ggtDZRYpd_10arrow_data9transform17__MutableArrayDataL0_EjjEEp6OutputuEL_ENtNtBQ_4drop4Drop4dropCsc2V0exE7CWf_11lance_arrow.exit5

_RNvXs8_NtCs40k4W9msRzi_5alloc5boxedINtB5_3BoxDG0_INtNtNtCscI6d9CVNmLh_4core3ops8function2FnTQL1_INtNtCs56ggtDZRYpd_10arrow_data9transform17__MutableArrayDataL0_EjjEEp6OutputuEL_ENtNtBQ_4drop4Drop4dropCsc2V0exE7CWf_11lance_arrow.exit5: ; preds = %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i4, %bb.d
  resume { ptr, i32 } %i.g
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxDG0_INtNtNtB4_3ops8function2FnTQL1_INtNtCs56ggtDZRYpd_10arrow_data9transform17__MutableArrayDataL0_EjjjEEp6OutputuEL_EECsc2V0exE7CWf_11lance_arrow(ptr %.0.val, ptr nofree readonly captures(none) %.8.val) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  %i.a = load ptr, ptr %.8.val, align 8, !invariant.load !10 ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  invoke void %i.a(ptr noundef nonnull %.0.val)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %.8.val, i64 8
  %i.c = load i64, ptr %i.b, align 8, !range !13, !invariant.load !10 ; 2 uses
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %_RNvXs8_NtCs40k4W9msRzi_5alloc5boxedINtB5_3BoxDG0_INtNtNtCscI6d9CVNmLh_4core3ops8function2FnTQL1_INtNtCs56ggtDZRYpd_10arrow_data9transform17__MutableArrayDataL0_EjjjEEp6OutputuEL_ENtNtBQ_4drop4Drop4dropCsc2V0exE7CWf_11lance_arrow.exit, label %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i

_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i: ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %.8.val, i64 16
  %i.f = load i64, ptr %i.e, align 8, !range !25, !invariant.load !10
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef %i.c, i64 noundef range(i64 1, -9223372036854775807) %i.f) #39
  br label %_RNvXs8_NtCs40k4W9msRzi_5alloc5boxedINtB5_3BoxDG0_INtNtNtCscI6d9CVNmLh_4core3ops8function2FnTQL1_INtNtCs56ggtDZRYpd_10arrow_data9transform17__MutableArrayDataL0_EjjjEEp6OutputuEL_ENtNtBQ_4drop4Drop4dropCsc2V0exE7CWf_11lance_arrow.exit

end_hunk_0
begin_hunk_1_@_RNvXs5_NtCs8SUNSmrkv52_12arrow_schema8datatypeNtB5_8DataTypeNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq:bb.a
  %i.ao = load ptr, ptr %i.an, align 8, !nonnull !10, !noundef !10 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.tr3477, i64 8
  %i.aq = load ptr, ptr %i.ap, align 8, !nonnull !10, !noundef !10 ; 2 uses
  %i.ar = icmp eq ptr %i.ao, %i.aq
  br i1 %i.ar, label %_RNvXsg_NtCs8SUNSmrkv52_12arrow_schema6fieldsNtB5_6FieldsNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq.exit, label %bb.ae

bb.j:                                             ; preds = %.lr.ph
  %i.as = getelementptr inbounds nuw i8, ptr %.tr76, i64 4
  %i.at = load i32, ptr %i.as, align 4, !noundef !10
  %i.au = getelementptr inbounds nuw i8, ptr %.tr3477, i64 4
  %i.av = load i32, ptr %i.au, align 4, !noundef !10
  %i.aw = icmp eq i32 %i.at, %i.av
  br i1 %i.aw, label %bb.af, label %_RNvXsg_NtCs8SUNSmrkv52_12arrow_schema6fieldsNtB5_6FieldsNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq.exit

bb.k:                                             ; preds = %.lr.ph
  %i.ax = getelementptr inbounds nuw i8, ptr %.tr76, i64 8
  %i.ay = load ptr, ptr %i.ax, align 8, !nonnull !10, !noundef !10 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %.tr3477, i64 8
  %i.ba = load ptr, ptr %i.az, align 8, !nonnull !10, !noundef !10 ; 2 uses
  %i.bb = icmp eq ptr %i.ay, %i.ba
  br i1 %i.bb, label %_RNvXsg_NtCs8SUNSmrkv52_12arrow_schema6fieldsNtB5_6FieldsNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq.exit, label %bb.ah

bb.l:                                             ; preds = %.lr.ph
  %i.bc = getelementptr inbounds nuw i8, ptr %.tr76, i64 8
  %i.bd = load ptr, ptr %i.bc, align 8, !nonnull !10, !noundef !10 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.tr3477, i64 8
  %i.bf = load ptr, ptr %i.be, align 8, !nonnull !10, !noundef !10 ; 2 uses
  %i.bg = icmp eq ptr %i.bd, %i.bf
  br i1 %i.bg, label %_RNvXsg_NtCs8SUNSmrkv52_12arrow_schema6fieldsNtB5_6FieldsNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq.exit, label %bb.ai

bb.m:                                             ; preds = %.lr.ph
  %i.bh = getelementptr inbounds nuw i8, ptr %.tr76, i64 8
  %i.bi = getelementptr inbounds nuw i8, ptr %.tr3477, i64 8
  %.val = load ptr, ptr %i.bh, align 8, !nonnull !10, !noundef !10 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %.tr76, i64 16
  %.val21 = load i64, ptr %i.bj, align 8, !noundef !10 ; 3 uses
  %.val22 = load ptr, ptr %i.bi, align 8, !nonnull !10, !noundef !10 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %.tr3477, i64 16
  %.val23 = load i64, ptr %i.bk, align 8, !noundef !10
  %i.bl = icmp eq ptr %.val, %.val22
  %i.bm = icmp eq i64 %.val21, %.val23            ; 2 uses
  %i.bn = and i1 %i.bl, %i.bm
  br i1 %i.bn, label %_RNvXsg_NtCs8SUNSmrkv52_12arrow_schema6fieldsNtB5_6FieldsNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bo = getelementptr inbounds nuw i8, ptr %.val, i64 16
  %i.bp = getelementptr inbounds nuw i8, ptr %.val22, i64 16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11101)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11102)
  br i1 %i.bm, label %bb.o, label %_RNvXsg_NtCs8SUNSmrkv52_12arrow_schema6fieldsNtB5_6FieldsNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq.exit

bb.o:                                             ; preds = %bb.n
  %i.bq = icmp eq i64 %.val21, 0
  br i1 %i.bq, label %_RNvXsg_NtCs8SUNSmrkv52_12arrow_schema6fieldsNtB5_6FieldsNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.o, %_RNvXsQ_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldENtNtCscI6d9CVNmLh_4core3cmp9PartialEq2neCsc2V0exE7CWf_11lance_arrow.exit.thread.i.i.i.i
  %.sroa.01.07.i.i.i.i = phi i64 [ %i.bx, %_RNvXsQ_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldENtNtCscI6d9CVNmLh_4core3cmp9PartialEq2neCsc2V0exE7CWf_11lance_arrow.exit.thread.i.i.i.i ], [ 0, %bb.o ] ; 3 uses
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.bo, i64 %.sroa.01.07.i.i.i.i
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %i.bp, i64 %.sroa.01.07.i.i.i.i
  %.val.i.i.i.i = load ptr, ptr %i.br, align 8, !alias.scope !11101, !noalias !11102, !nonnull !10, !noundef !10 ; 2 uses
  %.val5.i.i.i.i = load ptr, ptr %i.bs, align 8, !alias.scope !11102, !noalias !11101, !nonnull !10, !noundef !10 ; 2 uses
  %i.bt = icmp eq ptr %.val.i.i.i.i, %.val5.i.i.i.i
  br i1 %i.bt, label %_RNvXsQ_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldENtNtCscI6d9CVNmLh_4core3cmp9PartialEq2neCsc2V0exE7CWf_11lance_arrow.exit.thread.i.i.i.i, label %_RNvXsQ_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldENtNtCscI6d9CVNmLh_4core3cmp9PartialEq2neCsc2V0exE7CWf_11lance_arrow.exit.i.i.i.i

_RNvXsQ_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldENtNtCscI6d9CVNmLh_4core3cmp9PartialEq2neCsc2V0exE7CWf_11lance_arrow.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.bu = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i, i64 16
  %i.bv = getelementptr inbounds nuw i8, ptr %.val5.i.i.i.i, i64 16
  %i.bw = tail call noundef zeroext i1 @_RNvXs_NtCs8SUNSmrkv52_12arrow_schema5fieldNtB4_5FieldNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(112) %i.bu, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(112) %i.bv), !noalias !11103
  br i1 %i.bw, label %_RNvXsQ_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldENtNtCscI6d9CVNmLh_4core3cmp9PartialEq2neCsc2V0exE7CWf_11lance_arrow.exit.thread.i.i.i.i, label %_RNvXsg_NtCs8SUNSmrkv52_12arrow_schema6fieldsNtB5_6FieldsNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq.exit

_RNvXsQ_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldENtNtCscI6d9CVNmLh_4core3cmp9PartialEq2neCsc2V0exE7CWf_11lance_arrow.exit.thread.i.i.i.i: ; preds = %_RNvXsQ_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldENtNtCscI6d9CVNmLh_4core3cmp9PartialEq2neCsc2V0exE7CWf_11lance_arrow.exit.i.i.i.i, %.lr.ph.i.i.i.i
  %i.bx = add nuw nsw i64 %.sroa.01.07.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i.i = icmp eq i64 %i.bx, %.val21
  br i1 %exitcond.not.i.i.i.i, label %_RNvXsg_NtCs8SUNSmrkv52_12arrow_schema6fieldsNtB5_6FieldsNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq.exit, label %.lr.ph.i.i.i.i

bb.p:                                             ; preds = %.lr.ph
  %i.by = getelementptr inbounds nuw i8, ptr %.tr76, i64 8
  %i.bz = getelementptr inbounds nuw i8, ptr %.tr3477, i64 8
  %.val24 = load ptr, ptr %i.by, align 8, !nonnull !10, !noundef !10 ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %.tr76, i64 16
  %.val25 = load i64, ptr %i.ca, align 8, !noundef !10 ; 3 uses
  %.val26 = load ptr, ptr %i.bz, align 8, !nonnull !10, !noundef !10 ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %.tr3477, i64 16
  %.val27 = load i64, ptr %i.cb, align 8, !noundef !10
  %i.cc = icmp eq ptr %.val24, %.val26
  %i.cd = icmp eq i64 %.val25, %.val27            ; 2 uses
  %i.ce = and i1 %i.cc, %i.cd
  br i1 %i.ce, label %.loopexit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.cf = getelementptr inbounds nuw i8, ptr %.val24, i64 16
  %i.cg = getelementptr inbounds nuw i8, ptr %.val26, i64 16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11104)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11105)
  br i1 %i.cd, label %bb.r, label %_RNvXsg_NtCs8SUNSmrkv52_12arrow_schema6fieldsNtB5_6FieldsNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq.exit

bb.r:                                             ; preds = %bb.q
  %i.ch = icmp eq i64 %.val25, 0
  br i1 %i.ch, label %.loopexit, label %.lr.ph.i.i.i.i29

.lr.ph.i.i.i.i29:                                 ; preds = %bb.r, %_RNvXs8_NtCscI6d9CVNmLh_4core5tupleTaINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldEENtNtB7_3cmp9PartialEq2neCsc2V0exE7CWf_11lance_arrow.exit.thread9.i.i.i.i
  %.sroa.01.011.i.i.i.i = phi i64 [ %i.cq, %_RNvXs8_NtCscI6d9CVNmLh_4core5tupleTaINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldEENtNtB7_3cmp9PartialEq2neCsc2V0exE7CWf_11lance_arrow.exit.thread9.i.i.i.i ], [ 0, %bb.r ] ; 3 uses
  %i.ci = getelementptr inbounds nuw [16 x i8], ptr %i.cf, i64 %.sroa.01.011.i.i.i.i ; 2 uses
  %i.cj = getelementptr inbounds nuw [16 x i8], ptr %i.cg, i64 %.sroa.01.011.i.i.i.i ; 2 uses
  %.val.i.i.i.i30 = load i8, ptr %i.ci, align 1, !alias.scope !11104, !noalias !11105, !noundef !10
  %i.ck = getelementptr i8, ptr %i.ci, i64 8
  %.val5.i.i.i.i31 = load ptr, ptr %i.ck, align 8, !alias.scope !11104, !noalias !11105 ; 3 uses
  %.val6.i.i.i.i = load i8, ptr %i.cj, align 1, !alias.scope !11105, !noalias !11104, !noundef !10
  %i.cl = getelementptr i8, ptr %i.cj, i64 8
  %.val7.i.i.i.i = load ptr, ptr %i.cl, align 8, !alias.scope !11105, !noalias !11104 ; 3 uses
  %.not.i.i.i.i.i = icmp eq i8 %.val.i.i.i.i30, %.val6.i.i.i.i
  br i1 %.not.i.i.i.i.i, label %bb.s, label %_RNvXsg_NtCs8SUNSmrkv52_12arrow_schema6fieldsNtB5_6FieldsNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq.exit

bb.s:                                             ; preds = %.lr.ph.i.i.i.i29
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val5.i.i.i.i31) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val7.i.i.i.i) ]
  %i.cm = icmp eq ptr %.val5.i.i.i.i31, %.val7.i.i.i.i
  br i1 %i.cm, label %_RNvXs8_NtCscI6d9CVNmLh_4core5tupleTaINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldEENtNtB7_3cmp9PartialEq2neCsc2V0exE7CWf_11lance_arrow.exit.thread9.i.i.i.i, label %_RNvXs8_NtCscI6d9CVNmLh_4core5tupleTaINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldEENtNtB7_3cmp9PartialEq2neCsc2V0exE7CWf_11lance_arrow.exit.i.i.i.i

_RNvXs8_NtCscI6d9CVNmLh_4core5tupleTaINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldEENtNtB7_3cmp9PartialEq2neCsc2V0exE7CWf_11lance_arrow.exit.i.i.i.i: ; preds = %bb.s
  %i.cn = getelementptr inbounds nuw i8, ptr %.val5.i.i.i.i31, i64 16
  %i.co = getelementptr inbounds nuw i8, ptr %.val7.i.i.i.i, i64 16
  %i.cp = tail call noundef zeroext i1 @_RNvXs_NtCs8SUNSmrkv52_12arrow_schema5fieldNtB4_5FieldNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(112) %i.cn, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(112) %i.co), !noalias !11106
  br i1 %i.cp, label %_RNvXs8_NtCscI6d9CVNmLh_4core5tupleTaINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldEENtNtB7_3cmp9PartialEq2neCsc2V0exE7CWf_11lance_arrow.exit.thread9.i.i.i.i, label %_RNvXsg_NtCs8SUNSmrkv52_12arrow_schema6fieldsNtB5_6FieldsNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq.exit

_RNvXs8_NtCscI6d9CVNmLh_4core5tupleTaINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldEENtNtB7_3cmp9PartialEq2neCsc2V0exE7CWf_11lance_arrow.exit.thread9.i.i.i.i: ; preds = %_RNvXs8_NtCscI6d9CVNmLh_4core5tupleTaINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldEENtNtB7_3cmp9PartialEq2neCsc2V0exE7CWf_11lance_arrow.exit.i.i.i.i, %bb.s
  %i.cq = add nuw nsw i64 %.sroa.01.011.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i.i32 = icmp eq i64 %i.cq, %.val25
  br i1 %exitcond.not.i.i.i.i32, label %.loopexit, label %.lr.ph.i.i.i.i29

bb.t:                                             ; preds = %.lr.ph
  %i.cr = getelementptr inbounds nuw i8, ptr %.tr76, i64 8
  %i.cs = load ptr, ptr %i.cr, align 8, !nonnull !10, !noundef !10
  %i.ct = getelementptr inbounds nuw i8, ptr %.tr3477, i64 8
  %i.cu = load ptr, ptr %i.ct, align 8, !nonnull !10, !noundef !10
  %i.cv = tail call fastcc noundef zeroext i1 @_RNvXs5_NtCs8SUNSmrkv52_12arrow_schema8datatypeNtB5_8DataTypeNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.cs, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.cu)
  br i1 %i.cv, label %tailrecurse, label %_RNvXsg_NtCs8SUNSmrkv52_12arrow_schema6fieldsNtB5_6FieldsNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq.exit

bb.u:                                             ; preds = %.lr.ph
  %i.cw = getelementptr inbounds nuw i8, ptr %.tr76, i64 1
  %i.cx = load i8, ptr %i.cw, align 1, !noundef !10
  %i.cy = getelementptr inbounds nuw i8, ptr %.tr3477, i64 1
  %i.cz = load i8, ptr %i.cy, align 1, !noundef !10
  %i.da = icmp eq i8 %i.cx, %i.cz
  br i1 %i.da, label %bb.aj, label %_RNvXsg_NtCs8SUNSmrkv52_12arrow_schema6fieldsNtB5_6FieldsNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq.exit

bb.v:                                             ; preds = %.lr.ph
  %i.db = getelementptr inbounds nuw i8, ptr %.tr76, i64 1
  %i.dc = load i8, ptr %i.db, align 1, !noundef !10
  %i.dd = getelementptr inbounds nuw i8, ptr %.tr3477, i64 1
  %i.de = load i8, ptr %i.dd, align 1, !noundef !10
  %i.df = icmp eq i8 %i.dc, %i.de
  br i1 %i.df, label %bb.ak, label %_RNvXsg_NtCs8SUNSmrkv52_12arrow_schema6fieldsNtB5_6FieldsNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq.exit

bb.w:                                             ; preds = %.lr.ph
  %i.dg = getelementptr inbounds nuw i8, ptr %.tr76, i64 1
  %i.dh = load i8, ptr %i.dg, align 1, !noundef !10
  %i.di = getelementptr inbounds nuw i8, ptr %.tr3477, i64 1
  %i.dj = load i8, ptr %i.di, align 1, !noundef !10
  %i.dk = icmp eq i8 %i.dh, %i.dj
  br i1 %i.dk, label %bb.al, label %_RNvXsg_NtCs8SUNSmrkv52_12arrow_schema6fieldsNtB5_6FieldsNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq.exit

bb.x:                                             ; preds = %.lr.ph
  %i.dl = getelementptr inbounds nuw i8, ptr %.tr76, i64 1
  %i.dm = load i8, ptr %i.dl, align 1, !noundef !10
  %i.dn = getelementptr inbounds nuw i8, ptr %.tr3477, i64 1
  %i.do = load i8, ptr %i.dn, align 1, !noundef !10
  %i.dp = icmp eq i8 %i.dm, %i.do
  br i1 %i.dp, label %bb.am, label %_RNvXsg_NtCs8SUNSmrkv52_12arrow_schema6fieldsNtB5_6FieldsNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq.exit

bb.y:                                             ; preds = %.lr.ph
  %i.dq = getelementptr inbounds nuw i8, ptr %.tr76, i64 1
  %i.dr = load i8, ptr %i.dq, align 1, !range !20, !noundef !10
  %i.ds = getelementptr inbounds nuw i8, ptr %.tr3477, i64 1
  %i.dt = load i8, ptr %i.ds, align 1, !range !20, !noundef !10
  %i.du = icmp eq i8 %i.dr, %i.dt
  br i1 %i.du, label %bb.an, label %_RNvXsg_NtCs8SUNSmrkv52_12arrow_schema6fieldsNtB5_6FieldsNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq.exit

bb.z:                                             ; preds = %.lr.ph
  %i.dv = getelementptr inbounds nuw i8, ptr %.tr76, i64 8
  %i.dw = load ptr, ptr %i.dv, align 8, !nonnull !10, !noundef !10 ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %.tr3477, i64 8
  %i.dy = load ptr, ptr %i.dx, align 8, !nonnull !10, !noundef !10 ; 2 uses
  %i.dz = icmp eq ptr %i.dw, %i.dy
  br i1 %i.dz, label %bb.aq, label %bb.ap

bb.aa:                                            ; preds = %bb.b
  %i.ea = getelementptr inbounds nuw i8, ptr %.tr76, i64 8
  %i.eb = load ptr, ptr %i.ea, align 8, !noundef !10 ; 3 uses
  %.not = icmp eq ptr %i.eb, null                 ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %.tr3477, i64 8
  %i.ed = load ptr, ptr %i.ec, align 8, !noundef !10 ; 3 uses
  %i.ee = icmp eq ptr %i.ed, null                 ; 2 uses
  %brmerge186 = or i1 %.not, %i.ee
  %.mux = and i1 %.not, %i.ee
  br i1 %brmerge186, label %_RNvXsg_NtCs8SUNSmrkv52_12arrow_schema6fieldsNtB5_6FieldsNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq.exit, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.ef = getelementptr inbounds nuw i8, ptr %.tr76, i64 16
  %i.eg = getelementptr inbounds nuw i8, ptr %.tr3477, i64 16
  %i.eh = load i64, ptr %i.ef, align 8, !noundef !10 ; 2 uses
  %i.ei = load i64, ptr %i.eg, align 8, !noundef !10
  %i.ej = icmp eq ptr %i.eb, %i.ed                ; 2 uses
  %i.ek = icmp eq i64 %i.eh, %i.ei                ; 2 uses
  %i.el = and i1 %i.ej, %i.ek
  %.not20 = xor i1 %i.ek, true
  %brmerge = or i1 %i.ej, %.not20
  br i1 %brmerge, label %_RNvXsg_NtCs8SUNSmrkv52_12arrow_schema6fieldsNtB5_6FieldsNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq.exit, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.em = getelementptr inbounds nuw i8, ptr %i.ed, i64 16
  %i.en = getelementptr inbounds nuw i8, ptr %i.eb, i64 16
  %bcmp = tail call i32 @bcmp(ptr nonnull %i.en, ptr nonnull %i.em, i64 %i.eh)
  %i.eo = icmp eq i32 %bcmp, 0
  br label %_RNvXsg_NtCs8SUNSmrkv52_12arrow_schema6fieldsNtB5_6FieldsNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq.exit

bb.ad:                                            ; preds = %bb.h
  %i.ep = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %i.eq = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  %i.er = tail call noundef zeroext i1 @_RNvXs_NtCs8SUNSmrkv52_12arrow_schema5fieldNtB4_5FieldNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(112) %i.ep, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(112) %i.eq)
  br label %_RNvXsg_NtCs8SUNSmrkv52_12arrow_schema6fieldsNtB5_6FieldsNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq.exit

bb.ae:                                            ; preds = %bb.i
  %i.es = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  %i.et = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  %i.eu = tail call noundef zeroext i1 @_RNvXs_NtCs8SUNSmrkv52_12arrow_schema5fieldNtB4_5FieldNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(112) %i.es, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(112) %i.et)
  br label %_RNvXsg_NtCs8SUNSmrkv52_12arrow_schema6fieldsNtB5_6FieldsNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq.exit

bb.af:                                            ; preds = %bb.j
  %i.ev = getelementptr inbounds nuw i8, ptr %.tr76, i64 8
  %i.ew = load ptr, ptr %i.ev, align 8, !nonnull !10, !noundef !10 ; 2 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %.tr3477, i64 8
  %i.ey = load ptr, ptr %i.ex, align 8, !nonnull !10, !noundef !10 ; 2 uses
  %i.ez = icmp eq ptr %i.ew, %i.ey
  br i1 %i.ez, label %_RNvXsg_NtCs8SUNSmrkv52_12arrow_schema6fieldsNtB5_6FieldsNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq.exit, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ew, i64 16
  %i.fb = getelementptr inbounds nuw i8, ptr %i.ey, i64 16
  %i.fc = tail call noundef zeroext i1 @_RNvXs_NtCs8SUNSmrkv52_12arrow_schema5fieldNtB4_5FieldNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(112) %i.fa, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(112) %i.fb)
  br label %_RNvXsg_NtCs8SUNSmrkv52_12arrow_schema6fieldsNtB5_6FieldsNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq.exit

bb.ah:                                            ; preds = %bb.k
  %i.fd = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  %i.fe = getelementptr inbounds nuw i8, ptr %i.ba, i64 16
  %i.ff = tail call noundef zeroext i1 @_RNvXs_NtCs8SUNSmrkv52_12arrow_schema5fieldNtB4_5FieldNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(112) %i.fd, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(112) %i.fe)
  br label %_RNvXsg_NtCs8SUNSmrkv52_12arrow_schema6fieldsNtB5_6FieldsNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq.exit

bb.ai:                                            ; preds = %bb.l
  %i.fg = getelementptr inbounds nuw i8, ptr %i.bd, i64 16
  %i.fh = getelementptr inbounds nuw i8, ptr %i.bf, i64 16
  %i.fi = tail call noundef zeroext i1 @_RNvXs_NtCs8SUNSmrkv52_12arrow_schema5fieldNtB4_5FieldNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(112) %i.fg, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(112) %i.fh)
  br label %_RNvXsg_NtCs8SUNSmrkv52_12arrow_schema6fieldsNtB5_6FieldsNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq.exit

.loopexit:                                        ; preds = %_RNvXs8_NtCscI6d9CVNmLh_4core5tupleTaINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldEENtNtB7_3cmp9PartialEq2neCsc2V0exE7CWf_11lance_arrow.exit.thread9.i.i.i.i, %bb.p, %bb.r
  %i.fj = getelementptr inbounds nuw i8, ptr %.tr76, i64 1
  %i.fk = load i8, ptr %i.fj, align 1, !range !20, !noundef !10
  %i.fl = getelementptr inbounds nuw i8, ptr %.tr3477, i64 1
  %i.fm = load i8, ptr %i.fl, align 1, !range !20, !noundef !10
  %i.fn = icmp eq i8 %i.fk, %i.fm
  br label %_RNvXsg_NtCs8SUNSmrkv52_12arrow_schema6fieldsNtB5_6FieldsNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq.exit

tailrecurse:                                      ; preds = %bb.t
  %i.fo = getelementptr inbounds nuw i8, ptr %.tr76, i64 16
  %i.fp = load ptr, ptr %i.fo, align 8, !nonnull !10, !noundef !10 ; 2 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %.tr3477, i64 16
  %i.fr = load ptr, ptr %i.fq, align 8, !nonnull !10, !noundef !10 ; 2 uses
  %i.fs = load i8, ptr %i.fp, align 8, !range !24, !noundef !10 ; 2 uses
  %i.ft = load i8, ptr %i.fr, align 8, !range !24, !noundef !10
  %i.fu = icmp eq i8 %i.fs, %i.ft
  br i1 %i.fu, label %.lr.ph, label %_RNvXsg_NtCs8SUNSmrkv52_12arrow_schema6fieldsNtB5_6FieldsNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq.exit

bb.aj:                                            ; preds = %bb.u
  %i.fv = getelementptr inbounds nuw i8, ptr %.tr76, i64 2
  %i.fw = load i8, ptr %i.fv, align 2, !noundef !10
  %i.fx = getelementptr inbounds nuw i8, ptr %.tr3477, i64 2
  %i.fy = load i8, ptr %i.fx, align 2, !noundef !10
  %i.fz = icmp eq i8 %i.fw, %i.fy
  br label %_RNvXsg_NtCs8SUNSmrkv52_12arrow_schema6fieldsNtB5_6FieldsNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq.exit

bb.ak:                                            ; preds = %bb.v
  %i.ga = getelementptr inbounds nuw i8, ptr %.tr76, i64 2
  %i.gb = load i8, ptr %i.ga, align 2, !noundef !10
  %i.gc = getelementptr inbounds nuw i8, ptr %.tr3477, i64 2
  %i.gd = load i8, ptr %i.gc, align 2, !noundef !10
  %i.ge = icmp eq i8 %i.gb, %i.gd
  br label %_RNvXsg_NtCs8SUNSmrkv52_12arrow_schema6fieldsNtB5_6FieldsNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq.exit

bb.al:                                            ; preds = %bb.w
  %i.gf = getelementptr inbounds nuw i8, ptr %.tr76, i64 2
  %i.gg = load i8, ptr %i.gf, align 2, !noundef !10
  %i.gh = getelementptr inbounds nuw i8, ptr %.tr3477, i64 2
  %i.gi = load i8, ptr %i.gh, align 2, !noundef !10
  %i.gj = icmp eq i8 %i.gg, %i.gi
  br label %_RNvXsg_NtCs8SUNSmrkv52_12arrow_schema6fieldsNtB5_6FieldsNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq.exit

bb.am:                                            ; preds = %bb.x
  %i.gk = getelementptr inbounds nuw i8, ptr %.tr76, i64 2
  %i.gl = load i8, ptr %i.gk, align 2, !noundef !10
  %i.gm = getelementptr inbounds nuw i8, ptr %.tr3477, i64 2
  %i.gn = load i8, ptr %i.gm, align 2, !noundef !10
  %i.go = icmp eq i8 %i.gl, %i.gn
  br label %_RNvXsg_NtCs8SUNSmrkv52_12arrow_schema6fieldsNtB5_6FieldsNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq.exit

bb.an:                                            ; preds = %bb.y
  %i.gp = getelementptr inbounds nuw i8, ptr %.tr76, i64 8
  %i.gq = load ptr, ptr %i.gp, align 8, !nonnull !10, !noundef !10 ; 2 uses
  %i.gr = getelementptr inbounds nuw i8, ptr %.tr3477, i64 8
  %i.gs = load ptr, ptr %i.gr, align 8, !nonnull !10, !noundef !10 ; 2 uses
  %i.gt = icmp eq ptr %i.gq, %i.gs
  br i1 %i.gt, label %_RNvXsg_NtCs8SUNSmrkv52_12arrow_schema6fieldsNtB5_6FieldsNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq.exit, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gq, i64 16
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gs, i64 16
  %i.gw = tail call noundef zeroext i1 @_RNvXs_NtCs8SUNSmrkv52_12arrow_schema5fieldNtB4_5FieldNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(112) %i.gu, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(112) %i.gv)
  br label %_RNvXsg_NtCs8SUNSmrkv52_12arrow_schema6fieldsNtB5_6FieldsNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq.exit

bb.ap:                                            ; preds = %bb.z
  %i.gx = getelementptr inbounds nuw i8, ptr %i.dw, i64 16
  %i.gy = getelementptr inbounds nuw i8, ptr %i.dy, i64 16
  %i.gz = tail call noundef zeroext i1 @_RNvXs_NtCs8SUNSmrkv52_12arrow_schema5fieldNtB4_5FieldNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(112) %i.gx, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(112) %i.gy)
  br i1 %i.gz, label %bb.aq, label %_RNvXsg_NtCs8SUNSmrkv52_12arrow_schema6fieldsNtB5_6FieldsNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq.exit

bb.aq:                                            ; preds = %bb.z, %bb.ap
  %i.ha = getelementptr inbounds nuw i8, ptr %.tr76, i64 16
  %i.hb = load ptr, ptr %i.ha, align 8, !nonnull !10, !noundef !10 ; 2 uses
  %i.hc = getelementptr inbounds nuw i8, ptr %.tr3477, i64 16
  %i.hd = load ptr, ptr %i.hc, align 8, !nonnull !10, !noundef !10 ; 2 uses
  %i.he = icmp eq ptr %i.hb, %i.hd
  br i1 %i.he, label %_RNvXsg_NtCs8SUNSmrkv52_12arrow_schema6fieldsNtB5_6FieldsNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq.exit, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.hf = getelementptr inbounds nuw i8, ptr %i.hb, i64 16
  %i.hg = getelementptr inbounds nuw i8, ptr %i.hd, i64 16
  %i.hh = tail call noundef zeroext i1 @_RNvXs_NtCs8SUNSmrkv52_12arrow_schema5fieldNtB4_5FieldNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(112) %i.hf, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(112) %i.hg)
  br label %_RNvXsg_NtCs8SUNSmrkv52_12arrow_schema6fieldsNtB5_6FieldsNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq.exit
}

; Function Attrs: nonlazybind uwtable
define { i16, i16 } @_RNvXs5_NtCsc2V0exE7CWf_11lance_arrow8bfloat16NtB5_12BFloat16IterNtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4next(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !noundef !10 ; 5 uses
  %i.c = load ptr, ptr %0, align 8, !nonnull !10, !align !12, !noundef !10 ; 7 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 96
  %i.e = load i64, ptr %i.d, align 8, !noundef !10
  %.not = icmp ult i64 %i.b, %i.e
  br i1 %.not, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.f = add nuw i64 %i.b, 1
  store i64 %i.f, ptr %i.a, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11115)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11116)
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.h = load ptr, ptr %i.g, align 8, !alias.scope !11117, !noundef !10
  %.not.i.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i.i, label %_RNvMs_NtCsc2V0exE7CWf_11lance_arrow8bfloat16NtB4_13BFloat16Array7is_null.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 80
  %i.j = load i64, ptr %i.i, align 8, !alias.scope !11118, !noundef !10
  %i.k = icmp ult i64 %i.b, %i.j
  br i1 %i.k, label %_RNvMs_NtCsc2V0exE7CWf_11lance_arrow8bfloat16NtB4_13BFloat16Array7is_null.exit, label %bb.d, !prof !15

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvNtCscI6d9CVNmLh_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @190, i64 noundef 36, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @192) #36, !noalias !11118
  unreachable

_RNvMs_NtCsc2V0exE7CWf_11lance_arrow8bfloat16NtB4_13BFloat16Array7is_null.exit: ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  %i.m = load ptr, ptr %i.l, align 8, !alias.scope !11118, !noundef !10
  %i.n = getelementptr inbounds nuw i8, ptr %i.c, i64 72
  %i.o = load i64, ptr %i.n, align 8, !alias.scope !11118, !noundef !10
  %i.p = add i64 %i.o, %i.b                       ; 2 uses
  %i.q = lshr i64 %i.p, 3
  %i.r = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.q
  %i.s = load i8, ptr %i.r, align 1, !noalias !11118, !noundef !10
  %i.t = trunc i64 %i.p to i8
  %i.u = and i8 %i.t, 7
  %i.v = xor i8 %i.s, -1
  %i.w = lshr i8 %i.v, %i.u
  %i.x = trunc i8 %i.w to i1
  br i1 %i.x, label %bb.g, label %_RNvMs_NtCsc2V0exE7CWf_11lance_arrow8bfloat16NtB4_13BFloat16Array7is_null.exit.thread

_RNvMs_NtCsc2V0exE7CWf_11lance_arrow8bfloat16NtB4_13BFloat16Array7is_null.exit.thread: ; preds = %bb.b, %_RNvMs_NtCsc2V0exE7CWf_11lance_arrow8bfloat16NtB4_13BFloat16Array7is_null.exit
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11119)
  %i.y = getelementptr inbounds nuw i8, ptr %i.c, i64 104
  %.val8.i = load i32, ptr %i.y, align 8, !alias.scope !11119, !noundef !10 ; 2 uses
  switch i32 %.val8.i, label %_RNvMs_NtCsc2V0exE7CWf_11lance_arrow8bfloat16NtB4_13BFloat16Array5value.exit [
    i32 0, label %bb.e
    i32 1, label %bb.f
  ]

bb.e:                                             ; preds = %_RNvMs_NtCsc2V0exE7CWf_11lance_arrow8bfloat16NtB4_13BFloat16Array7is_null.exit.thread
  tail call void @_RNvNtCscI6d9CVNmLh_4core9panicking18panic_bounds_check(i64 noundef 0, i64 noundef 0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @243) #36, !noalias !11119
  unreachable

bb.f:                                             ; preds = %_RNvMs_NtCsc2V0exE7CWf_11lance_arrow8bfloat16NtB4_13BFloat16Array7is_null.exit.thread
  tail call void @_RNvNtCscI6d9CVNmLh_4core9panicking18panic_bounds_check(i64 noundef 1, i64 noundef 1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @244) #36, !noalias !11119
  unreachable

_RNvMs_NtCsc2V0exE7CWf_11lance_arrow8bfloat16NtB4_13BFloat16Array5value.exit: ; preds = %_RNvMs_NtCsc2V0exE7CWf_11lance_arrow8bfloat16NtB4_13BFloat16Array7is_null.exit.thread
  %i.z = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %.val.i = load ptr, ptr %i.z, align 8, !alias.scope !11119, !noundef !10
  %i.aa = trunc i64 %i.b to i32
end_hunk_1
