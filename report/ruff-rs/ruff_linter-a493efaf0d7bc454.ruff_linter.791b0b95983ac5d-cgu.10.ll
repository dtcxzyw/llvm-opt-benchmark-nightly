Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruff-rs/original/ruff_linter-a493efaf0d7bc454.ruff_linter.791b0b95983ac5d-cgu.10?download=true
inline.NumInlined: 4756
inline.NumDeleted: 1858
loop-unroll.NumCompletelyUnrolled: 45
loop-unroll.NumRuntimeUnrolled: 12
loop-unroll.NumUnrolled: 57
loop-unroll.NumUnrolledNotLatch: 1
begin_hunk_0_@_RNvXsq_NtCsj8vhLppEnlJ_8char_str8char_strNtB5_7CharStrINtNtCs4NRVxsYgnAr_4core7convert4FromNtNtCscdodAO9FK5_5alloc6string6StringE4from:bb.a

bb.g:                                             ; preds = %.thread, %bb.f
  invoke void @_RINvNvXsQ_Csj8vhLppEnlJ_8char_strINtNtCs4NRVxsYgnAr_4core6result6ResultppENtB8_13UnwrapWithMsg15unwrap_with_msg17do_panic_with_msgNtNtNtB8_6errors13reserve_error12ReserveErrorEB8_(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @131) #46
          to label %bb.k unwind label %bb.e

bb.h:                                             ; preds = %bb.f
  store ptr %.sroa.0.0, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.6.0, ptr %.sroa.4.0..sroa_idx, align 8
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsEhZmuQNqkz_11ruff_linter.exit unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.o = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
          to label %common.resume unwind label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.p = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #48
  unreachable

common.resume:                                    ; preds = %bb.e, %bb.i
  %common.resume.op = phi { ptr, i32 } [ %i.o, %bb.i ], [ %i.m, %bb.e ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsEhZmuQNqkz_11ruff_linter.exit: ; preds = %bb.h
  tail call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  ret void

bb.k:                                             ; preds = %bb.g
  unreachable

bb.l:                                             ; preds = %bb.e
  %i.q = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #48
  unreachable
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define internal fastcc { i32, i32 } @_RNvXss_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB5_4StmtNtNtCs2MoD74u7shA_14ruff_text_size6traits6Ranged5range(ptr nofree noundef nonnull readonly align 8 captures(none) %0) unnamed_addr #16 !guid !8813 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 84
  %i.b = load i8, ptr %i.a, align 4, !range !34, !noundef !12 ; 2 uses
  %i.c = icmp samesign ugt i8 %i.b, 1
  %i.d = zext nneg i8 %i.b to i64
  %i.e = add nsw i64 %i.d, -1
  %i.f = select i1 %i.c, i64 %i.e, i64 0
  switch i64 %i.f, label %bb.b [
    i64 0, label %bb.c
    i64 1, label %bb.v
    i64 2, label %bb.v
    i64 3, label %bb.d
    i64 4, label %bb.e
    i64 5, label %bb.f
    i64 6, label %bb.g
    i64 7, label %bb.h
    i64 8, label %bb.i
    i64 9, label %bb.j
    i64 10, label %bb.k
    i64 11, label %bb.l
    i64 12, label %bb.m
    i64 13, label %bb.v
    i64 14, label %bb.n
    i64 15, label %bb.o
    i64 16, label %bb.p
    i64 17, label %bb.q
    i64 18, label %bb.r
    i64 19, label %bb.s
    i64 20, label %bb.t
    i64 21, label %bb.v
    i64 22, label %bb.v
    i64 23, label %bb.v
    i64 24, label %bb.u
  ]

bb.b:                                             ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 56
  br label %bb.v

bb.d:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  br label %bb.v

bb.e:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %bb.v

bb.f:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 32
  br label %bb.v

bb.g:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %bb.v

bb.h:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %bb.v

bb.i:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32
  br label %bb.v

bb.j:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 24
  br label %bb.v

bb.k:                                             ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 40
  br label %bb.v

bb.l:                                             ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 32
  br label %bb.v

bb.m:                                             ; preds = %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 32
  br label %bb.v

bb.n:                                             ; preds = %bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 48
  br label %bb.v

bb.o:                                             ; preds = %bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.v

bb.p:                                             ; preds = %bb.a
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 24
  br label %bb.v

bb.q:                                             ; preds = %bb.a
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 56
  br label %bb.v

bb.r:                                             ; preds = %bb.a
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 24
  br label %bb.v

bb.s:                                             ; preds = %bb.a
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 24
  br label %bb.v

bb.t:                                             ; preds = %bb.a
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.v

bb.u:                                             ; preds = %bb.a
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %bb.v

bb.v:                                             ; preds = %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.u, %bb.t, %bb.s, %bb.r, %bb.q, %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c
  %.sink = phi i64 [ 20, %bb.u ], [ 4, %bb.a ], [ 4, %bb.a ], [ 4, %bb.a ], [ 12, %bb.t ], [ 28, %bb.s ], [ 28, %bb.r ], [ 60, %bb.q ], [ 28, %bb.p ], [ 12, %bb.o ], [ 52, %bb.n ], [ 4, %bb.a ], [ 36, %bb.m ], [ 36, %bb.l ], [ 44, %bb.k ], [ 28, %bb.j ], [ 36, %bb.i ], [ 20, %bb.h ], [ 20, %bb.g ], [ 36, %bb.f ], [ 20, %bb.e ], [ 28, %bb.d ], [ 4, %bb.a ], [ 60, %bb.c ], [ 4, %bb.a ]
  %.sroa.0.0.in = phi ptr [ %i.y, %bb.u ], [ %0, %bb.a ], [ %0, %bb.a ], [ %0, %bb.a ], [ %i.x, %bb.t ], [ %i.w, %bb.s ], [ %i.v, %bb.r ], [ %i.u, %bb.q ], [ %i.t, %bb.p ], [ %i.s, %bb.o ], [ %i.r, %bb.n ], [ %0, %bb.a ], [ %i.q, %bb.m ], [ %i.p, %bb.l ], [ %i.o, %bb.k ], [ %i.n, %bb.j ], [ %i.m, %bb.i ], [ %i.l, %bb.h ], [ %i.k, %bb.g ], [ %i.j, %bb.f ], [ %i.i, %bb.e ], [ %i.h, %bb.d ], [ %0, %bb.a ], [ %i.g, %bb.c ], [ %0, %bb.a ]
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 %.sink
  %.sroa.0.0 = load i32, ptr %.sroa.0.0.in, align 8, !noundef !12
  %.sroa.26.0 = load i32, ptr %i.z, align 4, !noundef !12
  %i.aa = insertvalue { i32, i32 } poison, i32 %.sroa.0.0, 0
  %i.ab = insertvalue { i32, i32 } %i.aa, i32 %.sroa.26.0, 1
  ret { i32, i32 } %i.ab
}

; Function Attrs: nonlazybind uwtable
define hidden noundef align 8 ptr @_RNvXsu_NtNtNtCscdodAO9FK5_5alloc11collections5btree3setINtB5_4IterNtNtBb_6string6StringENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef align 8 dereferenceable(72) %0) unnamed_addr #0 !guid !8814 {
bb.a:
  %i.a = tail call { ptr, ptr } @_RNvXsk_NtNtNtCscdodAO9FK5_5alloc11collections5btree3mapINtB5_4IterNtNtBb_6string6StringNtNtB7_7set_val9SetValZSTENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(72) %0)
  %i.b = extractvalue { ptr, ptr } %i.a, 0
  ret ptr %i.b
}

; Function Attrs: nonlazybind uwtable
define hidden noundef align 8 ptr @_RNvXsu_NtNtNtCscdodAO9FK5_5alloc11collections5btree3setINtB5_4IterNtNtCs7bpTdHNYxeX_20ruff_python_semantic7imports10NameImportENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef align 8 dereferenceable(72) %0) unnamed_addr #0 !guid !8815 {
bb.a:
  %i.a = tail call { ptr, ptr } @_RNvXsk_NtNtNtCscdodAO9FK5_5alloc11collections5btree3mapINtB5_4IterNtNtCs7bpTdHNYxeX_20ruff_python_semantic7imports10NameImportNtNtB7_7set_val9SetValZSTENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(72) %0)
  %i.b = extractvalue { ptr, ptr } %i.a, 0
  ret ptr %i.b
}

; Function Attrs: nonlazybind uwtable
define hidden noundef i64 @_RNvXsy_CsaSrGj5dYoxL_8thin_vecINtB5_7ThinVecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes7KeywordEINtNtCs4NRVxsYgnAr_4core7convert4FromINtNtCscdodAO9FK5_5alloc3vec3VecBG_EE4fromCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality !guid !8840 {
bb.a:
  %i.a = alloca [120 x i8], align 8               ; 6 uses
  %i.b = alloca [32 x i8], align 8                ; 7 uses
  %.sroa.418.i.i = alloca [116 x i8], align 4     ; 4 uses
  %i.c = alloca [32 x i8], align 8                ; 8 uses
  %i.d = alloca [8 x i8], align 8                 ; 9 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !12, !noundef !12 ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = load i64, ptr %i.g, align 8, !noundef !12 ; 5 uses
  %i.i = icmp ult i64 %i.h, 76861433640456466
  tail call void @llvm.assume(i1 %i.i)
  %.idx = mul nuw nsw i64 %i.h, 120
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 %.idx ; 2 uses
  %i.k = load i64, ptr %0, align 8, !range !17, !noundef !12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !8841
  store i64 ptrtoint (ptr @_RNvCsaSrGj5dYoxL_8thin_vec12EMPTY_HEADER to i64), ptr %i.d, align 8, !noalias !8841
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !8842
  store ptr %i.f, ptr %i.c, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  store ptr %i.f, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 %i.k, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store ptr %i.j, ptr %.sroa.6.0..sroa_idx, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8843)
  %.not.i.i = icmp eq i64 %i.h, 0
  br i1 %.not.i.i, label %_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterNtNtCskLngH8kgpZI_15ruff_python_ast5nodes7KeywordENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCsEhZmuQNqkz_11ruff_linter.exit.thread.i.i, label %bb.b

_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterNtNtCskLngH8kgpZI_15ruff_python_ast5nodes7KeywordENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCsEhZmuQNqkz_11ruff_linter.exit.thread.i.i: ; preds = %bb.j, %_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterNtNtCskLngH8kgpZI_15ruff_python_ast5nodes7KeywordENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCsEhZmuQNqkz_11ruff_linter.exit.i.i, %bb.c, %bb.a
  %.sroa.0.0.copyload14.i = phi i64 [ ptrtoint (ptr @_RNvCsaSrGj5dYoxL_8thin_vec12EMPTY_HEADER to i64), %bb.a ], [ %i.r, %bb.c ], [ %i.r, %_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterNtNtCskLngH8kgpZI_15ruff_python_ast5nodes7KeywordENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCsEhZmuQNqkz_11ruff_linter.exit.i.i ], [ %i.r, %bb.j ] ; 2 uses
  %1 = phi ptr [ @_RNvCsaSrGj5dYoxL_8thin_vec12EMPTY_HEADER, %bb.a ], [ %.val.i.i, %bb.c ], [ %.val.i.i, %_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterNtNtCskLngH8kgpZI_15ruff_python_ast5nodes7KeywordENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCsEhZmuQNqkz_11ruff_linter.exit.i.i ], [ %.val.i.i, %bb.j ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !8842
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %i.c, i64 32, i1 false), !noalias !8842
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 3 uses
  %i.n = load ptr, ptr %i.l, align 8, !alias.scope !8844, !noalias !8842, !nonnull !12, !noundef !12
  %i.o = load ptr, ptr %i.m, align 8, !alias.scope !8844, !noalias !8842, !nonnull !12, !noundef !12 ; 2 uses
  %i.p = icmp eq ptr %i.o, %i.n
  br i1 %i.p, label %_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterNtNtCskLngH8kgpZI_15ruff_python_ast5nodes7KeywordENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCsEhZmuQNqkz_11ruff_linter.exit11.thread.i.i, label %_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterNtNtCskLngH8kgpZI_15ruff_python_ast5nodes7KeywordENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCsEhZmuQNqkz_11ruff_linter.exit11.lr.ph.i.i

_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterNtNtCskLngH8kgpZI_15ruff_python_ast5nodes7KeywordENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCsEhZmuQNqkz_11ruff_linter.exit11.lr.ph.i.i: ; preds = %_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterNtNtCskLngH8kgpZI_15ruff_python_ast5nodes7KeywordENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCsEhZmuQNqkz_11ruff_linter.exit.thread.i.i
  %.sroa.721.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  br label %_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterNtNtCskLngH8kgpZI_15ruff_python_ast5nodes7KeywordENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCsEhZmuQNqkz_11ruff_linter.exit11.i.i

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvMs3_CsaSrGj5dYoxL_8thin_vecINtB5_7ThinVecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes7KeywordE7reserveCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.d, i64 noundef %i.h)
          to label %.lr.ph.i.i unwind label %bb.k, !noalias !8845

.lr.ph.i.i:                                       ; preds = %bb.b
  %.val.i.i = load ptr, ptr %i.d, align 8, !alias.scope !8843, !noalias !8841 ; 7 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 16
  %i.r = ptrtoint ptr %.val.i.i to i64            ; 3 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.j, %.lr.ph.i.i
  %i.s = phi ptr [ %i.f, %.lr.ph.i.i ], [ %3, %bb.j ] ; 4 uses
  %.sroa.0.032.i.i = phi i64 [ %i.h, %.lr.ph.i.i ], [ %2, %bb.j ]
  %2 = add nsw i64 %.sroa.0.032.i.i, -1           ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8846)
  %i.t = icmp eq ptr %i.s, %i.j
  br i1 %i.t, label %_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterNtNtCskLngH8kgpZI_15ruff_python_ast5nodes7KeywordENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCsEhZmuQNqkz_11ruff_linter.exit.thread.i.i, label %_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterNtNtCskLngH8kgpZI_15ruff_python_ast5nodes7KeywordENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCsEhZmuQNqkz_11ruff_linter.exit.i.i

_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterNtNtCskLngH8kgpZI_15ruff_python_ast5nodes7KeywordENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCsEhZmuQNqkz_11ruff_linter.exit.i.i: ; preds = %bb.c
  %3 = getelementptr inbounds nuw i8, ptr %i.s, i64 120 ; 2 uses
  store ptr %3, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !8846, !noalias !8842
  %.sroa.014.0.copyload15.i.i = load i32, ptr %i.s, align 8, !noalias !8847 ; 2 uses
  %.not6.i.i = icmp eq i32 %.sroa.014.0.copyload15.i.i, -1
  br i1 %.not6.i.i, label %_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterNtNtCskLngH8kgpZI_15ruff_python_ast5nodes7KeywordENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCsEhZmuQNqkz_11ruff_linter.exit.thread.i.i, label %bb.j

.body.i.i:                                        ; preds = %bb.f
  invoke void @_RNvXse_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterNtNtCskLngH8kgpZI_15ruff_python_ast5nodes7KeywordENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.b)
          to label %.body.i unwind label %bb.i, !noalias !8842

_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterNtNtCskLngH8kgpZI_15ruff_python_ast5nodes7KeywordENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCsEhZmuQNqkz_11ruff_linter.exit11.i.i: ; preds = %bb.h, %_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterNtNtCskLngH8kgpZI_15ruff_python_ast5nodes7KeywordENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCsEhZmuQNqkz_11ruff_linter.exit11.lr.ph.i.i
  %.sroa.0.0.copyload12.i = phi i64 [ %.sroa.0.0.copyload14.i, %_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterNtNtCskLngH8kgpZI_15ruff_python_ast5nodes7KeywordENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCsEhZmuQNqkz_11ruff_linter.exit11.lr.ph.i.i ], [ %.sroa.0.0.copyload10.i, %bb.h ] ; 2 uses
  %i.u = phi ptr [ %1, %_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterNtNtCskLngH8kgpZI_15ruff_python_ast5nodes7KeywordENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCsEhZmuQNqkz_11ruff_linter.exit11.lr.ph.i.i ], [ %i.ae, %bb.h ] ; 3 uses
  %i.v = phi ptr [ %i.o, %_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterNtNtCskLngH8kgpZI_15ruff_python_ast5nodes7KeywordENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCsEhZmuQNqkz_11ruff_linter.exit11.lr.ph.i.i ], [ %i.ak, %bb.h ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8848)
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 120
  store ptr %i.w, ptr %i.m, align 8, !alias.scope !8848, !noalias !8842
  %.sroa.019.0.copyload20.i.i = load i32, ptr %i.v, align 8, !noalias !8849 ; 2 uses
  %.not7.i.i = icmp eq i32 %.sroa.019.0.copyload20.i.i, -1
  br i1 %.not7.i.i, label %_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterNtNtCskLngH8kgpZI_15ruff_python_ast5nodes7KeywordENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCsEhZmuQNqkz_11ruff_linter.exit11.thread.i.i, label %bb.d

bb.d:                                             ; preds = %_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterNtNtCskLngH8kgpZI_15ruff_python_ast5nodes7KeywordENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCsEhZmuQNqkz_11ruff_linter.exit11.i.i
  %.sroa.721.0..sroa_idx22.i.i = getelementptr inbounds nuw i8, ptr %i.v, i64 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !8842
  store i32 %.sroa.019.0.copyload20.i.i, ptr %i.a, align 8, !noalias !8842
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(116) %.sroa.721.0..sroa_idx.i.i, ptr noundef nonnull align 4 dereferenceable(116) %.sroa.721.0..sroa_idx22.i.i, i64 116, i1 false), !noalias !8842
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8850)
  %i.x = load i64, ptr %i.u, align 8, !noalias !8851, !noundef !12 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.z = load i64, ptr %i.y, align 8, !noalias !8851, !noundef !12
  %i.aa = icmp eq i64 %i.x, %i.z
  br i1 %i.aa, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  invoke void @_RNvMs3_CsaSrGj5dYoxL_8thin_vecINtB5_7ThinVecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes7KeywordE7reserveCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.d, i64 noundef 1)
          to label %._crit_edge.i.i.i unwind label %bb.f, !noalias !8852

._crit_edge.i.i.i:                                ; preds = %bb.e
  %.val.pre.i.i.i = load ptr, ptr %i.d, align 8, !alias.scope !8853, !noalias !8841 ; 3 uses
  %.pre.i.i.i = load i64, ptr %.val.pre.i.i.i, align 8, !noalias !8854
  %i.ab = ptrtoint ptr %.val.pre.i.i.i to i64
  br label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.ac = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast5nodes7KeywordECsEhZmuQNqkz_11ruff_linter(ptr noalias noundef align 8 dereferenceable(120) %i.a) #49
          to label %.body.i.i unwind label %bb.g, !noalias !8855

bb.g:                                             ; preds = %bb.f
  %i.ad = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #48, !noalias !8855
  unreachable

_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterNtNtCskLngH8kgpZI_15ruff_python_ast5nodes7KeywordENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCsEhZmuQNqkz_11ruff_linter.exit11.thread.i.i: ; preds = %bb.h, %_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterNtNtCskLngH8kgpZI_15ruff_python_ast5nodes7KeywordENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCsEhZmuQNqkz_11ruff_linter.exit11.i.i, %_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterNtNtCskLngH8kgpZI_15ruff_python_ast5nodes7KeywordENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCsEhZmuQNqkz_11ruff_linter.exit.thread.i.i
  %.sroa.0.0.copyload.i = phi i64 [ %.sroa.0.0.copyload14.i, %_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterNtNtCskLngH8kgpZI_15ruff_python_ast5nodes7KeywordENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCsEhZmuQNqkz_11ruff_linter.exit.thread.i.i ], [ %.sroa.0.0.copyload12.i, %_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterNtNtCskLngH8kgpZI_15ruff_python_ast5nodes7KeywordENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCsEhZmuQNqkz_11ruff_linter.exit11.i.i ], [ %.sroa.0.0.copyload10.i, %bb.h ]
  invoke void @_RNvXse_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterNtNtCskLngH8kgpZI_15ruff_python_ast5nodes7KeywordENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.b)
          to label %_RINvXst_CsaSrGj5dYoxL_8thin_vecINtB6_7ThinVecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes7KeywordEINtNtNtNtCs4NRVxsYgnAr_4core4iter6traits7collect12FromIteratorBH_E9from_iterINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterBH_EECsEhZmuQNqkz_11ruff_linter.exit unwind label %bb.l, !noalias !8841

bb.h:                                             ; preds = %._crit_edge.i.i.i, %bb.d
  %.sroa.0.0.copyload10.i = phi i64 [ %i.ab, %._crit_edge.i.i.i ], [ %.sroa.0.0.copyload12.i, %bb.d ] ; 2 uses
  %i.ae = phi ptr [ %.val.pre.i.i.i, %._crit_edge.i.i.i ], [ %i.u, %bb.d ] ; 3 uses
  %i.af = phi i64 [ %.pre.i.i.i, %._crit_edge.i.i.i ], [ %i.x, %bb.d ] ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %i.ah = getelementptr inbounds nuw [120 x i8], ptr %i.ag, i64 %i.af
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %i.ah, ptr noundef nonnull align 8 dereferenceable(120) %i.a, i64 120, i1 false), !noalias !8855
  %i.ai = add i64 %i.af, 1
  store i64 %i.ai, ptr %i.ae, align 8, !noalias !8854
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !8842
  %i.aj = load ptr, ptr %i.l, align 8, !alias.scope !8856, !noalias !8842, !nonnull !12, !noundef !12
  %i.ak = load ptr, ptr %i.m, align 8, !alias.scope !8856, !noalias !8842, !nonnull !12, !noundef !12 ; 2 uses
  %i.al = icmp eq ptr %i.ak, %i.aj
  br i1 %i.al, label %_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterNtNtCskLngH8kgpZI_15ruff_python_ast5nodes7KeywordENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCsEhZmuQNqkz_11ruff_linter.exit11.thread.i.i, label %_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterNtNtCskLngH8kgpZI_15ruff_python_ast5nodes7KeywordENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCsEhZmuQNqkz_11ruff_linter.exit11.i.i

bb.i:                                             ; preds = %bb.k, %.body.i.i
  %i.am = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #48, !noalias !8842
  unreachable

bb.j:                                             ; preds = %_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterNtNtCskLngH8kgpZI_15ruff_python_ast5nodes7KeywordENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCsEhZmuQNqkz_11ruff_linter.exit.i.i
  %.sroa.7.0..sroa_idx16.i.i = getelementptr inbounds nuw i8, ptr %i.s, i64 4
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.418.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(116) %.sroa.418.i.i, ptr noundef nonnull align 4 dereferenceable(116) %.sroa.7.0..sroa_idx16.i.i, i64 116, i1 false), !noalias !8842
  %i.an = load i64, ptr %.val.i.i, align 8, !noalias !8857, !noundef !12 ; 2 uses
  %i.ao = getelementptr inbounds nuw [120 x i8], ptr %i.q, i64 %i.an ; 2 uses
  store i32 %.sroa.014.0.copyload15.i.i, ptr %i.ao, align 8, !noalias !8842
  %.sroa.418.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ao, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(116) %.sroa.418.0..sroa_idx.i.i, ptr noundef nonnull align 4 dereferenceable(116) %.sroa.418.i.i, i64 116, i1 false), !noalias !8842
  %i.ap = add i64 %i.an, 1
  store i64 %i.ap, ptr %.val.i.i, align 8, !noalias !8857
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.418.i.i)
  %i.aq = icmp eq i64 %2, 0
  br i1 %i.aq, label %_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterNtNtCskLngH8kgpZI_15ruff_python_ast5nodes7KeywordENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCsEhZmuQNqkz_11ruff_linter.exit.thread.i.i, label %bb.c

bb.k:                                             ; preds = %bb.b
  %i.ar = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXse_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterNtNtCskLngH8kgpZI_15ruff_python_ast5nodes7KeywordENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.c)
          to label %.body.i unwind label %bb.i, !noalias !8842

bb.l:                                             ; preds = %_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterNtNtCskLngH8kgpZI_15ruff_python_ast5nodes7KeywordENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCsEhZmuQNqkz_11ruff_linter.exit11.thread.i.i
  %i.as = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.l, %bb.k, %.body.i.i
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.as, %bb.l ], [ %i.ar, %bb.k ], [ %i.ac, %.body.i.i ]
  %i.at = load ptr, ptr %i.d, align 8, !alias.scope !8858, !noalias !8841, !nonnull !12, !noundef !12
  %i.au = icmp eq ptr %i.at, @_RNvCsaSrGj5dYoxL_8thin_vec12EMPTY_HEADER
  br i1 %i.au, label %.noexc.i, label %bb.m, !prof !13

bb.m:                                             ; preds = %.body.i
  invoke void @_RINvCsaSrGj5dYoxL_8thin_vec18drop_non_singletonNtNtCskLngH8kgpZI_15ruff_python_ast5nodes7KeywordEBN_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.d)
          to label %.noexc.i unwind label %bb.n, !noalias !8841

bb.n:                                             ; preds = %bb.m
  %i.av = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #48, !noalias !8841
  unreachable

.noexc.i:                                         ; preds = %bb.m, %.body.i
  resume { ptr, i32 } %eh.lpad-body.i

_RINvXst_CsaSrGj5dYoxL_8thin_vecINtB6_7ThinVecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes7KeywordEINtNtNtNtCs4NRVxsYgnAr_4core4iter6traits7collect12FromIteratorBH_E9from_iterINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterBH_EECsEhZmuQNqkz_11ruff_linter.exit: ; preds = %_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterNtNtCskLngH8kgpZI_15ruff_python_ast5nodes7KeywordENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCsEhZmuQNqkz_11ruff_linter.exit11.thread.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !8842
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !8842
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !8841
  ret i64 %.sroa.0.0.copyload.i
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvYINtNtNtCs6Wt4yPw39th_9itertools8adaptors8coalesce10CoalesceByINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtCsEhZmuQNqkz_11ruff_linter5codes8NoqaCodeEINtB5_22DedupPred2CoalescePredNtB5_7DedupEqENtB5_7NoCountENtB9_9Itertools4joinB1S_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(none) %2, i64 noundef %3) unnamed_addr #0 personality ptr @rust_eh_personality !guid !8886 {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [32 x i8], align 8                ; 5 uses
  %i.d = alloca [40 x i8], align 8                ; 5 uses
  %i.e = alloca [32 x i8], align 8                ; 6 uses
  %.sroa.7.i.i.i = alloca [24 x i8], align 8      ; 6 uses
  %i.f = alloca [8 x i8], align 8                 ; 5 uses
  %i.g = alloca [8 x i8], align 8                 ; 5 uses
  %.sroa.7.i.i = alloca [24 x i8], align 8        ; 5 uses
  %i.h = alloca [40 x i8], align 8                ; 3 uses
  %i.i = alloca [32 x i8], align 8                ; 6 uses
  %.sroa.7.i = alloca [24 x i8], align 8          ; 6 uses
  %i.j = alloca [8 x i8], align 8                 ; 5 uses
  %i.k = alloca [8 x i8], align 8                 ; 5 uses
  %i.l = alloca [24 x i8], align 8                ; 6 uses
  %i.m = alloca [16 x i8], align 8                ; 5 uses
  %i.n = alloca [24 x i8], align 8                ; 10 uses
  %i.o = alloca [32 x i8], align 8                ; 5 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8887)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !8888
  store ptr %1, ptr %i.k, align 8, !noalias !8888
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !8888
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  store ptr %i.r, ptr %i.j, align 8, !noalias !8888
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7.i)
  %i.s = load i64, ptr %1, align 8, !range !18, !alias.scope !8887, !noundef !12
  %i.t = trunc nuw i64 %i.s to i1
  br i1 %i.t, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %.sroa.0.0.copyload.i = load ptr, ptr %i.u, align 8, !alias.scope !8887 ; 2 uses
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.7.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.7.0..sroa_idx.i, i64 24, i1 false), !noalias !8889
  store ptr null, ptr %i.u, align 8, !alias.scope !8887
  %.not12.i = icmp eq ptr %.sroa.0.0.copyload.i, null
  br i1 %.not12.i, label %_RNvXs0_NtNtCs6Wt4yPw39th_9itertools8adaptors8coalesceINtB5_10CoalesceByINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtCsEhZmuQNqkz_11ruff_linter5codes8NoqaCodeEINtB5_22DedupPred2CoalescePredNtB5_7DedupEqENtB5_7NoCountENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextB1Y_.exit.thread, label %_RNvXs0_NtNtCs6Wt4yPw39th_9itertools8adaptors8coalesceINtB5_10CoalesceByINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtCsEhZmuQNqkz_11ruff_linter5codes8NoqaCodeEINtB5_22DedupPred2CoalescePredNtB5_7DedupEqENtB5_7NoCountENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextB1Y_.exit

bb.c:                                             ; preds = %bb.a
  store i64 1, ptr %1, align 8, !alias.scope !8887
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr null, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !8887
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8890)
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.w = load ptr, ptr %i.v, align 8, !alias.scope !8891, !nonnull !12, !noundef !12
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8, !alias.scope !8891, !nonnull !12, !noundef !12 ; 4 uses
  %i.z = icmp eq ptr %i.y, %i.w
  br i1 %i.z, label %_RNvXs0_NtNtCs6Wt4yPw39th_9itertools8adaptors8coalesceINtB5_10CoalesceByINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtCsEhZmuQNqkz_11ruff_linter5codes8NoqaCodeEINtB5_22DedupPred2CoalescePredNtB5_7DedupEqENtB5_7NoCountENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextB1Y_.exit.thread, label %_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsEhZmuQNqkz_11ruff_linter5codes8NoqaCodeENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextBZ_.exit.i

_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsEhZmuQNqkz_11ruff_linter5codes8NoqaCodeENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextBZ_.exit.i: ; preds = %bb.c
  %i.aa = getelementptr inbounds nuw i8, ptr %i.y, i64 32
  store ptr %i.aa, ptr %i.x, align 8, !alias.scope !8891
  %.sroa.0.0.copyload14.i = load ptr, ptr %i.y, align 8, !noalias !8892 ; 2 uses
  %.not.i = icmp eq ptr %.sroa.0.0.copyload14.i, null
  br i1 %.not.i, label %_RNvXs0_NtNtCs6Wt4yPw39th_9itertools8adaptors8coalesceINtB5_10CoalesceByINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtCsEhZmuQNqkz_11ruff_linter5codes8NoqaCodeEINtB5_22DedupPred2CoalescePredNtB5_7DedupEqENtB5_7NoCountENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextB1Y_.exit.thread, label %bb.d

bb.d:                                             ; preds = %_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsEhZmuQNqkz_11ruff_linter5codes8NoqaCodeENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextBZ_.exit.i
  %.sroa.715.0..sroa_idx16.i = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.7.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.715.0..sroa_idx16.i, i64 24, i1 false), !noalias !8889
  br label %_RNvXs0_NtNtCs6Wt4yPw39th_9itertools8adaptors8coalesceINtB5_10CoalesceByINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtCsEhZmuQNqkz_11ruff_linter5codes8NoqaCodeEINtB5_22DedupPred2CoalescePredNtB5_7DedupEqENtB5_7NoCountENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextB1Y_.exit

_RNvXs0_NtNtCs6Wt4yPw39th_9itertools8adaptors8coalesceINtB5_10CoalesceByINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtCsEhZmuQNqkz_11ruff_linter5codes8NoqaCodeEINtB5_22DedupPred2CoalescePredNtB5_7DedupEqENtB5_7NoCountENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextB1Y_.exit.thread: ; preds = %bb.b, %_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsEhZmuQNqkz_11ruff_linter5codes8NoqaCodeENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextBZ_.exit.i, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !8888
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !8888
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  br label %bb.f

_RNvXs0_NtNtCs6Wt4yPw39th_9itertools8adaptors8coalesceINtB5_10CoalesceByINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtCsEhZmuQNqkz_11ruff_linter5codes8NoqaCodeEINtB5_22DedupPred2CoalescePredNtB5_7DedupEqENtB5_7NoCountENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextB1Y_.exit: ; preds = %bb.b, %bb.d
  %.sroa.0.0.i = phi ptr [ %.sroa.0.0.copyload.i, %bb.b ], [ %.sroa.0.0.copyload14.i, %bb.d ]
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.7.i, i64 24, i1 false), !noalias !8888
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7.i)
  store ptr %.sroa.0.0.i, ptr %i.i, align 8, !noalias !8888
  call void @_RINvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB6_8IntoIterNtNtCsEhZmuQNqkz_11ruff_linter5codes8NoqaCodeENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator8try_foldBW_NCNvXs0_NtNtCs6Wt4yPw39th_9itertools8adaptors8coalesceINtB2V_10CoalesceByBH_INtB2V_22DedupPred2CoalescePredNtB2V_7DedupEqENtB2V_7NoCountEB1G_4next0INtNtB1O_6result6ResultBW_BW_EEB10_(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.h, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.q, ptr noalias noundef nonnull align 8 captures(none) dereferenceable(32) %i.i, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.j, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.k)
  %i.ab = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %.sroa.033.0.copyload = load ptr, ptr %i.ab, align 8 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !8888
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !8888
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  %.not = icmp eq ptr %.sroa.033.0.copyload, null
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_RNvXs0_NtNtCs6Wt4yPw39th_9itertools8adaptors8coalesceINtB5_10CoalesceByINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtCsEhZmuQNqkz_11ruff_linter5codes8NoqaCodeEINtB5_22DedupPred2CoalescePredNtB5_7DedupEqENtB5_7NoCountENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextB1Y_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  store ptr %.sroa.033.0.copyload, ptr %i.o, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.p, i64 24, i1 false)
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 3 uses
  %.val.i = load ptr, ptr %i.ac, align 8, !alias.scope !8893, !nonnull !12, !noundef !12
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %.val9.i = load ptr, ptr %i.ad, align 8, !alias.scope !8893, !nonnull !12, !noundef !12
  %i.ae = ptrtoint ptr %.val9.i to i64
  %i.af = ptrtoint ptr %.val.i to i64
  %i.ag = sub nuw i64 %i.ae, %i.af
  %i.ah = lshr exact i64 %i.ag, 5
  %i.ai = load i64, ptr %1, align 8, !range !18, !alias.scope !8893, !noundef !12
  %i.aj = trunc nuw i64 %i.ai to i1
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.al = load ptr, ptr %i.ak, align 8, !alias.scope !8893
  %i.am = icmp ne ptr %i.al, null
  %narrow.i = select i1 %i.aj, i1 %i.am, i1 false
  %.sroa.0.0.i24 = zext i1 %narrow.i to i64
  %i.an = or i64 %i.ah, %.sroa.0.0.i24
  %.not37 = icmp eq i64 %i.an, 0
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  %i.ao = select i1 %.not37, i64 0, i64 %3        ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  call void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.l, i64 noundef %i.ao, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
  %i.ap = load i64, ptr %i.l, align 8, !range !18, !noundef !12
  %i.aq = trunc nuw i64 %i.ap to i1
  %i.ar = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.as = load i64, ptr %i.ar, align 8, !range !19, !noundef !12 ; 3 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.l, i64 16 ; 2 uses
  br i1 %i.aq, label %bb.i, label %bb.j, !prof !11

bb.f:                                             ; preds = %_RNvXs0_NtNtCs6Wt4yPw39th_9itertools8adaptors8coalesceINtB5_10CoalesceByINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtCsEhZmuQNqkz_11ruff_linter5codes8NoqaCodeEINtB5_22DedupPred2CoalescePredNtB5_7DedupEqENtB5_7NoCountENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextB1Y_.exit.thread, %_RNvXs0_NtNtCs6Wt4yPw39th_9itertools8adaptors8coalesceINtB5_10CoalesceByINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtCsEhZmuQNqkz_11ruff_linter5codes8NoqaCodeEINtB5_22DedupPred2CoalescePredNtB5_7DedupEqENtB5_7NoCountENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextB1Y_.exit
  store i64 0, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %.sroa.5.0..sroa_idx, align 8
  br label %bb.g

bb.g:                                             ; preds = %.loopexit38, %bb.f
  ret void

bb.h:                                             ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  resume { ptr, i32 } %lpad.loopexit.split-lp42

bb.i:                                             ; preds = %bb.e
  %i.au = load i64, ptr %i.at, align 8
  call void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef %i.as, i64 %i.au) #46
  unreachable

bb.j:                                             ; preds = %bb.e
  %i.av = load ptr, ptr %i.at, align 8, !nonnull !12, !noundef !12
  %i.aw = icmp ule i64 %i.ao, %i.as
  call void @llvm.assume(i1 %i.aw)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  store i64 %i.as, ptr %i.n, align 8
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 2 uses
  store ptr %i.av, ptr %.sroa.43.0..sroa_idx, align 8
  %.sroa.54.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 16 ; 4 uses
  store i64 0, ptr %.sroa.54.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  store ptr %i.o, ptr %i.m, align 8
  %.sroa.48.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store ptr @_RNvXs0_NtCsEhZmuQNqkz_11ruff_linter5codesNtB5_8NoqaCodeNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmt, ptr %.sroa.48.0..sroa_idx, align 8
  %i.ax = invoke noundef zeroext i1 @_RNvNtCs4NRVxsYgnAr_4core3fmt5write(ptr noundef nonnull %i.n, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @75, ptr noundef nonnull @74, ptr noundef nonnull %i.m)
          to label %bb.k unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE15append_elementsCsEhZmuQNqkz_11ruff_linter.exit.i.i.i.i.i, %bb.p, %_RNvXs0_NtNtCs6Wt4yPw39th_9itertools8adaptors8coalesceINtB5_10CoalesceByINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtCsEhZmuQNqkz_11ruff_linter5codes8NoqaCodeEINtB5_22DedupPred2CoalescePredNtB5_7DedupEqENtB5_7NoCountENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextB1Y_.exit.i.i, %.invoke, %bb.j
  %lpad.loopexit.split-lp42 = landingpad { ptr, i32 }
end_hunk_0
