Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruff-rs/original/ty_completion_bench-361b0faf03cc29d5.ty_completion_bench.84e5c7dcc2e12f57-cgu.13?download=true
inline.NumInlined: 269
inline.NumDeleted: 174
begin_hunk_0_@_RNvXs1_NtNtCscdodAO9FK5_5alloc3vec6spliceINtB5_6SpliceINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtNtNtBZ_5array4iter8IntoIterRNtNtB9_6string6StringKj1_ENvYB28_INtNtBZ_7convert4IntoNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringE4intoEENtNtNtBZ_3ops4drop4Drop4dropCsbppsKr37CYt_19ty_completion_bench:bb.a
  %.pr.peel.i34 = load i64, ptr %i.a, align 8, !noalias !365
  %.not.peel.i35 = icmp eq i64 %.pr.peel.i34, -1
  br i1 %.not.peel.i35, label %_RINvMs2_NtNtCscdodAO9FK5_5alloc3vec6spliceINtNtB8_5drain5DrainNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringE4fillINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtNtNtB1V_5array4iter8IntoIterRNtNtBa_6string6StringKj1_ENvYB35_INtNtB1V_7convert4IntoBY_E4intoEECsbppsKr37CYt_19ty_completion_bench.exit40, label %bb.l

bb.l:                                             ; preds = %_RNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5array4iter8IntoIterRNtNtCscdodAO9FK5_5alloc6string6StringKj1_ENvYB1q_INtNtBb_7convert4IntoNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringE4intoENtNtNtB9_6traits8iterator8Iterator4nextCsbppsKr37CYt_19ty_completion_bench.exit.peel.i33
  %i.bh = add nuw i64 %i.bb, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false), !noalias !365
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !365
  %i.bi = load ptr, ptr %i.bf, align 8, !noalias !365, !nonnull !4, !noundef !4
  %i.bj = getelementptr inbounds nuw [24 x i8], ptr %i.bi, i64 %i.bb
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bj, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false), !noalias !365
  %i.bk = load i64, ptr %i.ba, align 8, !noalias !365, !noundef !4
  %i.bl = add i64 %i.bk, 1
  store i64 %i.bl, ptr %i.ba, align 8, !noalias !365
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %exitcond.peel.not.i36 = icmp eq i64 %i.bh, %i.au
  br i1 %exitcond.peel.not.i36, label %_RINvMs2_NtNtCscdodAO9FK5_5alloc3vec6spliceINtNtB8_5drain5DrainNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringE4fillINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtNtNtB1V_5array4iter8IntoIterRNtNtBa_6string6StringKj1_ENvYB35_INtNtB1V_7convert4IntoBY_E4intoEECsbppsKr37CYt_19ty_completion_bench.exit40.thread, label %.peel.next.i37

.peel.next.i37:                                   ; preds = %bb.l
  %.not.i.i.i.i38 = icmp eq i64 %i.bc, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !365
  call void @llvm.assume(i1 %.not.i.i.i.i38)
  br label %_RINvMs2_NtNtCscdodAO9FK5_5alloc3vec6spliceINtNtB8_5drain5DrainNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringE4fillINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtNtNtB1V_5array4iter8IntoIterRNtNtBa_6string6StringKj1_ENvYB35_INtNtB1V_7convert4IntoBY_E4intoEECsbppsKr37CYt_19ty_completion_bench.exit40

_RINvMs2_NtNtCscdodAO9FK5_5alloc3vec6spliceINtNtB8_5drain5DrainNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringE4fillINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtNtNtB1V_5array4iter8IntoIterRNtNtBa_6string6StringKj1_ENvYB35_INtNtB1V_7convert4IntoBY_E4intoEECsbppsKr37CYt_19ty_completion_bench.exit40: ; preds = %.lr.ph.i30, %_RNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5array4iter8IntoIterRNtNtCscdodAO9FK5_5alloc6string6StringKj1_ENvYB1q_INtNtBb_7convert4IntoNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringE4intoENtNtNtB9_6traits8iterator8Iterator4nextCsbppsKr37CYt_19ty_completion_bench.exit.peel.i33, %.peel.next.i37
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !365
  br label %bb.h

bb.m:                                             ; preds = %bb.o
  %i.bm = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXse_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsbppsKr37CYt_19ty_completion_bench(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.g)
          to label %common.resume unwind label %bb.s

_RINvMs2_NtNtCscdodAO9FK5_5alloc3vec6spliceINtNtB8_5drain5DrainNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringE4fillINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtNtNtB1V_5array4iter8IntoIterRNtNtBa_6string6StringKj1_ENvYB35_INtNtB1V_7convert4IntoBY_E4intoEECsbppsKr37CYt_19ty_completion_bench.exit40.thread: ; preds = %bb.l, %_RNvMs2_NtNtCscdodAO9FK5_5alloc3vec6spliceINtNtB7_5drain5DrainNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringE9move_tailCsbppsKr37CYt_19ty_completion_bench.exit, %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @_RNvXNtNtCscdodAO9FK5_5alloc3vec14spec_from_iterINtB4_3VecNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringEINtB2_12SpecFromIterBT_QINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtNtNtB29_5array4iter8IntoIterRNtNtB6_6string6StringKj1_ENvYB3j_INtNtB29_7convert4IntoBT_E4intoEE9from_iterCsbppsKr37CYt_19ty_completion_bench(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.f, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.v)
  %.sroa.09.0.copyload = load i64, ptr %i.f, align 8
  %.sroa.410.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.sroa.410.0.copyload = load ptr, ptr %.sroa.410.0..sroa_idx, align 8, !nonnull !4, !noundef !4 ; 3 uses
  %.sroa.511.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %.sroa.511.0.copyload = load i64, ptr %.sroa.511.0..sroa_idx, align 8 ; 6 uses
  %i.bn = icmp ult i64 %.sroa.511.0.copyload, 384307168202282326
  call void @llvm.assume(i1 %i.bn)
  %i.bo = getelementptr inbounds nuw [24 x i8], ptr %.sroa.410.0.copyload, i64 %.sroa.511.0.copyload
  store ptr %.sroa.410.0.copyload, ptr %i.g, align 8
  %i.bp = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store i64 %.sroa.09.0.copyload, ptr %i.bp, align 8
  %i.bq = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 3 uses
  store ptr %.sroa.410.0.copyload, ptr %i.bq, align 8
  %i.br = getelementptr inbounds nuw i8, ptr %i.g, i64 24 ; 2 uses
  store ptr %i.bo, ptr %i.br, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %.not16 = icmp eq i64 %.sroa.511.0.copyload, 0
  br i1 %.not16, label %_RINvMs2_NtNtCscdodAO9FK5_5alloc3vec6spliceINtNtB8_5drain5DrainNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringE4fillINtNtB8_9into_iter8IntoIterBY_EECsbppsKr37CYt_19ty_completion_bench.exit, label %bb.n

_RINvMs2_NtNtCscdodAO9FK5_5alloc3vec6spliceINtNtB8_5drain5DrainNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringE4fillINtNtB8_9into_iter8IntoIterBY_EECsbppsKr37CYt_19ty_completion_bench.exit: ; preds = %bb.r, %_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCsbppsKr37CYt_19ty_completion_bench.exit.i, %bb.q, %bb.p, %_RINvMs2_NtNtCscdodAO9FK5_5alloc3vec6spliceINtNtB8_5drain5DrainNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringE4fillINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtNtNtB1V_5array4iter8IntoIterRNtNtBa_6string6StringKj1_ENvYB35_INtNtB1V_7convert4IntoBY_E4intoEECsbppsKr37CYt_19ty_completion_bench.exit40.thread
  call void @_RNvXse_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsbppsKr37CYt_19ty_completion_bench(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %bb.h

bb.n:                                             ; preds = %_RINvMs2_NtNtCscdodAO9FK5_5alloc3vec6spliceINtNtB8_5drain5DrainNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringE4fillINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtNtNtB1V_5array4iter8IntoIterRNtNtBa_6string6StringKj1_ENvYB35_INtNtB1V_7convert4IntoBY_E4intoEECsbppsKr37CYt_19ty_completion_bench.exit40.thread
  call void @llvm.experimental.noalias.scope.decl(metadata !372)
  %i.bs = load ptr, ptr %i.w, align 8, !alias.scope !372, !nonnull !4, !noundef !4 ; 3 uses
  %i.bt = load i64, ptr %i.x, align 8, !alias.scope !372, !noundef !4 ; 3 uses
  %i.bu = load i64, ptr %i.p, align 8, !alias.scope !372, !noundef !4 ; 2 uses
  %i.bv = add i64 %i.bu, %i.bt                    ; 2 uses
  %i.bw = load i64, ptr %i.bs, align 8, !range !7, !noalias !372, !noundef !4
  %i.bx = sub i64 %i.bw, %i.bv
  %i.by = icmp ugt i64 %.sroa.511.0.copyload, %i.bx
  br i1 %i.by, label %bb.o, label %bb.p, !prof !14

bb.o:                                             ; preds = %bb.n
  invoke void @_RINvNvMs2_NtCscdodAO9FK5_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsbppsKr37CYt_19ty_completion_bench(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.bs, i64 noundef %i.bv, i64 noundef %.sroa.511.0.copyload, i64 noundef 8, i64 noundef 24)
          to label %bb.p unwind label %bb.m

bb.p:                                             ; preds = %bb.n, %bb.o
  %i.bz = add i64 %i.bt, %.sroa.511.0.copyload    ; 4 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  %i.cb = load ptr, ptr %i.ca, align 8, !noalias !372, !nonnull !4, !noundef !4 ; 2 uses
  %i.cc = getelementptr inbounds nuw [24 x i8], ptr %i.cb, i64 %i.bt
  %i.cd = getelementptr inbounds nuw [24 x i8], ptr %i.cb, i64 %i.bz
  %i.ce = mul i64 %i.bu, 24
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.cd, ptr nonnull align 8 %i.cc, i64 %i.ce, i1 false), !noalias !372
  store i64 %i.bz, ptr %i.x, align 8, !alias.scope !372
  %.val26 = load ptr, ptr %i.w, align 8, !nonnull !4, !noundef !4 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !373)
  %i.cf = getelementptr inbounds nuw i8, ptr %.val26, i64 16 ; 3 uses
  %i.cg = load i64, ptr %i.cf, align 8, !noalias !373, !noundef !4 ; 2 uses
  %.not8.i = icmp ult i64 %i.cg, %i.bz
  br i1 %.not8.i, label %.lr.ph.i42, label %_RINvMs2_NtNtCscdodAO9FK5_5alloc3vec6spliceINtNtB8_5drain5DrainNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringE4fillINtNtB8_9into_iter8IntoIterBY_EECsbppsKr37CYt_19ty_completion_bench.exit

.lr.ph.i42:                                       ; preds = %bb.p
  %i.ch = load ptr, ptr %i.br, align 8, !alias.scope !374, !noalias !375, !nonnull !4, !noundef !4
  %i.ci = getelementptr inbounds nuw i8, ptr %.val26, i64 8
  %.promoted.i43 = load ptr, ptr %i.bq, align 8, !alias.scope !374, !noalias !375
  br label %bb.q

bb.q:                                             ; preds = %bb.r, %.lr.ph.i42
  %i.cj = phi ptr [ %.promoted.i43, %.lr.ph.i42 ], [ %i.cl, %bb.r ] ; 4 uses
  %.sroa.01.07.i = phi i64 [ %i.cg, %.lr.ph.i42 ], [ %i.cm, %bb.r ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !376)
  %i.ck = icmp eq ptr %i.cj, %i.ch
  br i1 %i.ck, label %_RINvMs2_NtNtCscdodAO9FK5_5alloc3vec6spliceINtNtB8_5drain5DrainNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringE4fillINtNtB8_9into_iter8IntoIterBY_EECsbppsKr37CYt_19ty_completion_bench.exit, label %_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCsbppsKr37CYt_19ty_completion_bench.exit.i

_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCsbppsKr37CYt_19ty_completion_bench.exit.i: ; preds = %bb.q
  %i.cl = getelementptr inbounds nuw i8, ptr %i.cj, i64 24 ; 2 uses
  store ptr %i.cl, ptr %i.bq, align 8, !alias.scope !374, !noalias !375
  %.sroa.0.0.copyload1.i = load i64, ptr %i.cj, align 8, !noalias !374 ; 2 uses
  %.not.i44 = icmp eq i64 %.sroa.0.0.copyload1.i, -1
  br i1 %.not.i44, label %_RINvMs2_NtNtCscdodAO9FK5_5alloc3vec6spliceINtNtB8_5drain5DrainNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringE4fillINtNtB8_9into_iter8IntoIterBY_EECsbppsKr37CYt_19ty_completion_bench.exit, label %bb.r

bb.r:                                             ; preds = %_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCsbppsKr37CYt_19ty_completion_bench.exit.i
  %.sroa.7.0..sroa_idx2.i = getelementptr inbounds nuw i8, ptr %i.cj, i64 8
  %i.cm = add i64 %.sroa.01.07.i, 1               ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.0..sroa_idx2.i, i64 16, i1 false), !noalias !373
  %i.cn = load ptr, ptr %i.ci, align 8, !noalias !373, !nonnull !4, !noundef !4
  %i.co = getelementptr inbounds nuw [24 x i8], ptr %i.cn, i64 %.sroa.01.07.i ; 2 uses
  store i64 %.sroa.0.0.copyload1.i, ptr %i.co, align 8, !noalias !373
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.co, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.i, i64 16, i1 false), !noalias !373
  %i.cp = load i64, ptr %i.cf, align 8, !noalias !373, !noundef !4
  %i.cq = add i64 %i.cp, 1
  store i64 %i.cq, ptr %i.cf, align 8, !noalias !373
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i)
  %exitcond.not.i = icmp eq i64 %i.cm, %i.bz
  br i1 %exitcond.not.i, label %_RINvMs2_NtNtCscdodAO9FK5_5alloc3vec6spliceINtNtB8_5drain5DrainNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringE4fillINtNtB8_9into_iter8IntoIterBY_EECsbppsKr37CYt_19ty_completion_bench.exit, label %bb.q

bb.s:                                             ; preds = %bb.m
  %i.cr = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #19
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRNtNtCskLngH8kgpZI_15ruff_python_ast14python_version33PythonVersionDeserializationErrorNtB6_5Debug3fmtCsbppsKr37CYt_19ty_completion_bench(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #2 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = load ptr, ptr %0, align 8, !nonnull !4, !align !6, !noundef !4 ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !380)
  %i.e = load i8, ptr %i.d, align 8, !range !381, !alias.scope !380, !noalias !382, !noundef !4
  switch i8 %i.e, label %default.unreachable [
    i8 0, label %bb.b
    i8 1, label %bb.c
    i8 2, label %bb.d
  ]

default.unreachable:                              ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !383
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %i.f, ptr %i.c, align 8, !noalias !383
  %i.g = call noundef zeroext i1 @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @15, i64 noundef 17, ptr noundef nonnull %i.c, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @14)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !383
  br label %_RNvXsj_NtCskLngH8kgpZI_15ruff_python_ast14python_versionNtB5_33PythonVersionDeserializationErrorNtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmt.exit

bb.c:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !383
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 1
  store ptr %i.i, ptr %i.b, align 8, !noalias !383
  %i.j = call noundef zeroext i1 @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter25debug_tuple_field2_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @18, i64 noundef 19, ptr noundef nonnull readonly %i.h, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @16, ptr noundef nonnull %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @17)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !383
  br label %_RNvXsj_NtCskLngH8kgpZI_15ruff_python_ast14python_versionNtB5_33PythonVersionDeserializationErrorNtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmt.exit

bb.d:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !383
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 1
  store ptr %i.l, ptr %i.a, align 8, !noalias !383
  %i.m = call noundef zeroext i1 @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter25debug_tuple_field2_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @19, i64 noundef 19, ptr noundef nonnull readonly %i.k, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @16, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @17)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !383
  br label %_RNvXsj_NtCskLngH8kgpZI_15ruff_python_ast14python_versionNtB5_33PythonVersionDeserializationErrorNtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmt.exit

_RNvXsj_NtCskLngH8kgpZI_15ruff_python_ast14python_versionNtB5_33PythonVersionDeserializationErrorNtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmt.exit: ; preds = %bb.b, %bb.c, %bb.d
  %.sroa.0.0.in.i = phi i1 [ %i.g, %bb.b ], [ %i.j, %bb.c ], [ %i.m, %bb.d ]
  ret i1 %.sroa.0.0.in.i
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1i_NtCs4NRVxsYgnAr_4core3fmtRNtNtCsavRPklju9Q7_4bstr4bstr4BStrNtB6_7Display3fmtCsbppsKr37CYt_19ty_completion_bench(ptr noalias noundef readonly align 8 captures(none) dereferenceable(16) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !4, !noundef !4 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8, !noundef !4 ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !394)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !395)
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = load i32, ptr %i.d, align 8, !alias.scope !395, !noalias !394, !noundef !4 ; 2 uses
  %i.f = lshr i32 %i.e, 29
  %i.g = and i32 %i.f, 3
  switch i32 %i.g, label %default.unreachable [
    i32 0, label %2
    i32 1, label %bb.c
    i32 2, label %bb.d
    i32 3, label %bb.b
  ]

default.unreachable:                              ; preds = %_RNvXs_NtCsavRPklju9Q7_4bstr4utf8NtB4_5CharsNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator5count.exit.i, %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.h = tail call noundef zeroext i1 @_RNvNvXNtNtCsavRPklju9Q7_4bstr5impls4bstrNtNtB8_4bstr4BStrNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmt10write_bstr(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.a, i64 noundef %i.c)
  br i1 %i.h, label %bb.aa, label %_RNvXNtNtCsavRPklju9Q7_4bstr5impls4bstrNtNtB6_4bstr4BStrNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmt.exit

bb.c:                                             ; preds = %bb.a
  br label %2

bb.d:                                             ; preds = %bb.a
  br label %2

2:                                                ; preds = %bb.d, %bb.c, %bb.a
  %.sroa.01.0.i = phi i64 [ 2, %bb.d ], [ 1, %bb.c ], [ 0, %bb.a ]
  %3 = and i32 %i.e, 134217728
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %bb.e

bb.e:                                             ; preds = %2
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.j = load i16, ptr %i.i, align 4, !alias.scope !395, !noalias !394, !noundef !4
  %i.k = zext i16 %i.j to i64
  br label %5

5:                                                ; preds = %bb.e, %2
  %.sroa.02.0.i = phi i64 [ %i.k, %bb.e ], [ 0, %2 ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !396)
  br label %bb.f

bb.f:                                             ; preds = %_RINvNtCsavRPklju9Q7_4bstr4utf86decodeRShECsbppsKr37CYt_19ty_completion_bench.exit.thread.thread.i.i, %5
  %.sroa.013.0.i.i = phi i64 [ 0, %5 ], [ %i.at, %_RINvNtCsavRPklju9Q7_4bstr4utf86decodeRShECsbppsKr37CYt_19ty_completion_bench.exit.thread.thread.i.i ] ; 4 uses
  %.sroa.10.0.i.i = phi i64 [ %i.c, %5 ], [ %i.au, %_RINvNtCsavRPklju9Q7_4bstr4utf86decodeRShECsbppsKr37CYt_19ty_completion_bench.exit.thread.thread.i.i ] ; 9 uses
  %.sroa.0.0.i.i = phi ptr [ %i.a, %5 ], [ %i.av, %_RINvNtCsavRPklju9Q7_4bstr4utf86decodeRShECsbppsKr37CYt_19ty_completion_bench.exit.thread.thread.i.i ] ; 7 uses
  %i.l = icmp ugt i64 %.sroa.10.0.i.i, 1
  br i1 %i.l, label %bb.n, label %bb.g

bb.g:                                             ; preds = %bb.q, %bb.f
  %.sroa.013.1.i.i = phi i64 [ %i.ap, %bb.q ], [ %.sroa.013.0.i.i, %bb.f ] ; 3 uses
  %.sroa.10.1.i.i = phi i64 [ %i.aq, %bb.q ], [ %.sroa.10.0.i.i, %bb.f ] ; 3 uses
  %.sroa.0.1.i.i = phi ptr [ %i.ar, %bb.q ], [ %.sroa.0.0.i.i, %bb.f ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !397)
  %.not.i.i.i = icmp eq i64 %.sroa.10.1.i.i, 0
  br i1 %.not.i.i.i, label %_RNvXs_NtCsavRPklju9Q7_4bstr4utf8NtB4_5CharsNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator5count.exit.i, label %.thread.i.i

.thread.i.i:                                      ; preds = %bb.g
  %.pre.i.i = load i8, ptr %.sroa.0.1.i.i, align 1, !alias.scope !398, !noalias !395
  %i.m = icmp sgt i8 %.pre.i.i, -1
  br i1 %i.m, label %_RINvNtCsavRPklju9Q7_4bstr4utf86decodeRShECsbppsKr37CYt_19ty_completion_bench.exit.thread.i.i, label %.preheader.i.preheader.i.i

.preheader.i.preheader.i.i:                       ; preds = %bb.n, %.thread.i.i
  %.sroa.013.12187.i.i = phi i64 [ %.sroa.013.1.i.i, %.thread.i.i ], [ %.sroa.013.0.i.i, %bb.n ] ; 3 uses
  %.sroa.10.12386.i.i = phi i64 [ %.sroa.10.1.i.i, %.thread.i.i ], [ %.sroa.10.0.i.i, %bb.n ] ; 5 uses
  %.sroa.0.12585.i.i = phi ptr [ %.sroa.0.1.i.i, %.thread.i.i ], [ %.sroa.0.0.i.i, %bb.n ] ; 4 uses
  br label %bb.h

.preheader.i.i.i:                                 ; preds = %_RNvNtCsavRPklju9Q7_4bstr4utf811decode_step.exit.i.i.i
  %i.n = zext i8 %i.ag to i64
  %exitcond.not.i.i.i = icmp eq i64 %i.ah, %.sroa.10.12386.i.i
  br i1 %exitcond.not.i.i.i, label %_RINvNtCsavRPklju9Q7_4bstr4utf86decodeRShECsbppsKr37CYt_19ty_completion_bench.exit.thread.thread.i.i, label %bb.h

bb.h:                                             ; preds = %.preheader.i.preheader.i.i, %.preheader.i.i.i
  %.sroa.03.0.i.i.i55 = phi i64 [ 0, %.preheader.i.preheader.i.i ], [ %i.ah, %.preheader.i.i.i ] ; 3 uses
  %.sroa.017.0.i.i.i54 = phi i32 [ 0, %.preheader.i.preheader.i.i ], [ %storemerge.i.i.i.i, %.preheader.i.i.i ]
  %.sroa.015.0.i.i.i53 = phi i64 [ 12, %.preheader.i.preheader.i.i ], [ %i.n, %.preheader.i.i.i ] ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.0.12585.i.i, i64 %.sroa.03.0.i.i.i55
  %i.p = load i8, ptr %i.o, align 1, !alias.scope !398, !noalias !395, !noundef !4 ; 2 uses
  %i.q = zext i8 %i.p to i64
  %i.r = getelementptr inbounds nuw i8, ptr @6, i64 %i.q
  %i.s = load i8, ptr %i.r, align 1, !noalias !399, !noundef !4 ; 2 uses
  %i.t = zext i8 %i.p to i32                      ; 2 uses
  %i.u = icmp eq i64 %.sroa.015.0.i.i.i53, 12
  br i1 %i.u, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.v = and i8 %i.s, 31
  %i.w = zext nneg i8 %i.v to i32
  %i.x = lshr i32 255, %i.w
  %i.y = and i32 %i.x, %i.t
  br label %bb.k

bb.j:                                             ; preds = %bb.h
  %i.z = and i32 %i.t, 63
  %i.aa = shl i32 %.sroa.017.0.i.i.i54, 6
  %i.ab = or disjoint i32 %i.z, %i.aa
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %storemerge.i.i.i.i = phi i32 [ %i.ab, %bb.j ], [ %i.y, %bb.i ]
  %i.ac = zext i8 %i.s to i64
  %i.ad = add nuw nsw i64 %.sroa.015.0.i.i.i53, %i.ac ; 3 uses
  %i.ae = icmp samesign ult i64 %i.ad, 108
  br i1 %i.ae, label %_RNvNtCsavRPklju9Q7_4bstr4utf811decode_step.exit.i.i.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.ad, i64 noundef 108, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @8) #21, !noalias !400
  unreachable

_RNvNtCsavRPklju9Q7_4bstr4utf811decode_step.exit.i.i.i: ; preds = %bb.k
  %i.af = getelementptr inbounds nuw i8, ptr @7, i64 %i.ad
  %i.ag = load i8, ptr %i.af, align 1, !noalias !399, !noundef !4 ; 2 uses
  %i.ah = add nuw i64 %.sroa.03.0.i.i.i55, 1      ; 3 uses
  switch i8 %i.ag, label %.preheader.i.i.i [
    i8 12, label %_RINvNtCsavRPklju9Q7_4bstr4utf86decodeRShECsbppsKr37CYt_19ty_completion_bench.exit.thread.i.i
    i8 0, label %bb.m
  ]

bb.m:                                             ; preds = %_RNvNtCsavRPklju9Q7_4bstr4utf811decode_step.exit.i.i.i
  %.sroa.0.0.i.i.i.i = tail call noundef range(i64 1, -1) i64 @llvm.umax.i64(i64 range(i64 0, -1) %.sroa.03.0.i.i.i55, i64 1)
  br label %_RINvNtCsavRPklju9Q7_4bstr4utf86decodeRShECsbppsKr37CYt_19ty_completion_bench.exit.thread.i.i

bb.n:                                             ; preds = %bb.f
  %i.ai = load i8, ptr %.sroa.0.0.i.i, align 1, !alias.scope !401, !noalias !395, !noundef !4
  %i.aj = icmp sgt i8 %i.ai, -1
  br i1 %i.aj, label %bb.o, label %.preheader.i.preheader.i.i

bb.o:                                             ; preds = %bb.n
  %i.ak = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 1
  %i.al = load i8, ptr %i.ak, align 1, !alias.scope !401, !noalias !395, !noundef !4
  %i.am = icmp sgt i8 %i.al, -1
  br i1 %i.am, label %bb.p, label %_RINvNtCsavRPklju9Q7_4bstr4utf86decodeRShECsbppsKr37CYt_19ty_completion_bench.exit.thread.i.i

bb.p:                                             ; preds = %bb.o
  %i.an = tail call noundef i64 @_RNvNtCsavRPklju9Q7_4bstr5ascii20first_non_ascii_byte(ptr noalias noundef nonnull readonly captures(address, read_provenance) %.sroa.0.0.i.i, i64 noundef %.sroa.10.0.i.i), !noalias !395 ; 5 uses
  %i.ao = icmp ugt i64 %i.an, %.sroa.10.0.i.i
  br i1 %i.ao, label %bb.r, label %bb.q, !prof !14

bb.q:                                             ; preds = %bb.p
  %i.ap = add i64 %i.an, %.sroa.013.0.i.i
  %i.aq = sub nuw i64 %.sroa.10.0.i.i, %i.an
  %i.ar = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 %i.an
  br label %bb.g

bb.r:                                             ; preds = %bb.p
  tail call void @_RNvNtNtCs4NRVxsYgnAr_4core5slice5index16slice_index_fail(i64 noundef %i.an, i64 noundef %.sroa.10.0.i.i, i64 noundef %.sroa.10.0.i.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @13) #21, !noalias !395
  unreachable

_RINvNtCsavRPklju9Q7_4bstr4utf86decodeRShECsbppsKr37CYt_19ty_completion_bench.exit.thread.i.i: ; preds = %_RNvNtCsavRPklju9Q7_4bstr4utf811decode_step.exit.i.i.i, %bb.o, %bb.m, %.thread.i.i
  %.sroa.013.12180.i.i = phi i64 [ %.sroa.013.1.i.i, %.thread.i.i ], [ %.sroa.013.0.i.i, %bb.o ], [ %.sroa.013.12187.i.i, %bb.m ], [ %.sroa.013.12187.i.i, %_RNvNtCsavRPklju9Q7_4bstr4utf811decode_step.exit.i.i.i ]
  %.sroa.10.12379.i.i = phi i64 [ %.sroa.10.1.i.i, %.thread.i.i ], [ %.sroa.10.0.i.i, %bb.o ], [ %.sroa.10.12386.i.i, %bb.m ], [ %.sroa.10.12386.i.i, %_RNvNtCsavRPklju9Q7_4bstr4utf811decode_step.exit.i.i.i ] ; 4 uses
  %.sroa.0.12578.i.i = phi ptr [ %.sroa.0.1.i.i, %.thread.i.i ], [ %.sroa.0.0.i.i, %bb.o ], [ %.sroa.0.12585.i.i, %bb.m ], [ %.sroa.0.12585.i.i, %_RNvNtCsavRPklju9Q7_4bstr4utf811decode_step.exit.i.i.i ]
  %.sroa.6.1.i35.i.i = phi i64 [ 1, %.thread.i.i ], [ 1, %bb.o ], [ %.sroa.0.0.i.i.i.i, %bb.m ], [ %i.ah, %_RNvNtCsavRPklju9Q7_4bstr4utf811decode_step.exit.i.i.i ] ; 3 uses
  %i.as = icmp ugt i64 %.sroa.6.1.i35.i.i, %.sroa.10.12379.i.i
  br i1 %i.as, label %bb.s, label %_RINvNtCsavRPklju9Q7_4bstr4utf86decodeRShECsbppsKr37CYt_19ty_completion_bench.exit.thread.thread.i.i, !prof !402

_RINvNtCsavRPklju9Q7_4bstr4utf86decodeRShECsbppsKr37CYt_19ty_completion_bench.exit.thread.thread.i.i: ; preds = %.preheader.i.i.i, %_RINvNtCsavRPklju9Q7_4bstr4utf86decodeRShECsbppsKr37CYt_19ty_completion_bench.exit.thread.i.i
  %.sroa.6.1.i3595.i.i = phi i64 [ %.sroa.6.1.i35.i.i, %_RINvNtCsavRPklju9Q7_4bstr4utf86decodeRShECsbppsKr37CYt_19ty_completion_bench.exit.thread.i.i ], [ %.sroa.10.12386.i.i, %.preheader.i.i.i ] ; 2 uses
  %.sroa.0.1257894.i.i = phi ptr [ %.sroa.0.12578.i.i, %_RINvNtCsavRPklju9Q7_4bstr4utf86decodeRShECsbppsKr37CYt_19ty_completion_bench.exit.thread.i.i ], [ %.sroa.0.12585.i.i, %.preheader.i.i.i ]
  %.sroa.10.1237993.i.i = phi i64 [ %.sroa.10.12379.i.i, %_RINvNtCsavRPklju9Q7_4bstr4utf86decodeRShECsbppsKr37CYt_19ty_completion_bench.exit.thread.i.i ], [ %.sroa.10.12386.i.i, %.preheader.i.i.i ]
  %.sroa.013.1218092.i.i = phi i64 [ %.sroa.013.12180.i.i, %_RINvNtCsavRPklju9Q7_4bstr4utf86decodeRShECsbppsKr37CYt_19ty_completion_bench.exit.thread.i.i ], [ %.sroa.013.12187.i.i, %.preheader.i.i.i ]
  %i.at = add i64 %.sroa.013.1218092.i.i, 1
  %i.au = sub nuw i64 %.sroa.10.1237993.i.i, %.sroa.6.1.i3595.i.i
  %i.av = getelementptr inbounds nuw i8, ptr %.sroa.0.1257894.i.i, i64 %.sroa.6.1.i3595.i.i
  br label %bb.f

bb.s:                                             ; preds = %_RINvNtCsavRPklju9Q7_4bstr4utf86decodeRShECsbppsKr37CYt_19ty_completion_bench.exit.thread.i.i
  tail call void @_RNvNtNtCs4NRVxsYgnAr_4core5slice5index16slice_index_fail(i64 noundef %.sroa.6.1.i35.i.i, i64 noundef %.sroa.10.12379.i.i, i64 noundef %.sroa.10.12379.i.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @12) #21, !noalias !395
  unreachable

_RNvXs_NtCsavRPklju9Q7_4bstr4utf8NtB4_5CharsNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator5count.exit.i: ; preds = %bb.g
  %i.aw = tail call i64 @llvm.usub.sat.i64(i64 %.sroa.02.0.i, i64 %.sroa.013.1.i.i) ; 4 uses
  switch i64 %.sroa.01.0.i, label %default.unreachable [
    i64 0, label %bb.t
    i64 1, label %bb.u
    i64 2, label %bb.v
  ]

bb.t:                                             ; preds = %_RNvXs_NtCsavRPklju9Q7_4bstr4utf8NtB4_5CharsNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator5count.exit.i
  %i.ax = tail call noundef zeroext i1 @_RNvNvXNtNtCsavRPklju9Q7_4bstr5impls4bstrNtNtB8_4bstr4BStrNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmt10write_bstr(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.a, i64 noundef %i.c)
  br i1 %i.ax, label %bb.aa, label %bb.w

bb.u:                                             ; preds = %_RNvXs_NtCsavRPklju9Q7_4bstr4utf8NtB4_5CharsNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator5count.exit.i
  %i.ay = tail call noundef zeroext i1 @_RNvNvXNtNtCsavRPklju9Q7_4bstr5impls4bstrNtNtB8_4bstr4BStrNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmt10write_pads(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.aw)
  br i1 %i.ay, label %bb.aa, label %bb.x

bb.v:                                             ; preds = %_RNvXs_NtCsavRPklju9Q7_4bstr4utf8NtB4_5CharsNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator5count.exit.i
  %i.az = lshr i64 %i.aw, 1                       ; 2 uses
  %i.ba = and i64 %i.aw, 1
  %.sroa.04.0.i = add nuw nsw i64 %i.az, %i.ba
  %i.bb = tail call noundef zeroext i1 @_RNvNvXNtNtCsavRPklju9Q7_4bstr5impls4bstrNtNtB8_4bstr4BStrNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmt10write_pads(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.az)
  br i1 %i.bb, label %bb.aa, label %bb.y

bb.w:                                             ; preds = %bb.t
  %i.bc = tail call noundef zeroext i1 @_RNvNvXNtNtCsavRPklju9Q7_4bstr5impls4bstrNtNtB8_4bstr4BStrNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmt10write_pads(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.aw)
  br i1 %i.bc, label %bb.aa, label %_RNvXNtNtCsavRPklju9Q7_4bstr5impls4bstrNtNtB6_4bstr4BStrNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmt.exit

bb.x:                                             ; preds = %bb.u
  %i.bd = tail call noundef zeroext i1 @_RNvNvXNtNtCsavRPklju9Q7_4bstr5impls4bstrNtNtB8_4bstr4BStrNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmt10write_bstr(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.a, i64 noundef %i.c)
  br i1 %i.bd, label %bb.aa, label %_RNvXNtNtCsavRPklju9Q7_4bstr5impls4bstrNtNtB6_4bstr4BStrNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmt.exit

bb.y:                                             ; preds = %bb.v
  %i.be = tail call noundef zeroext i1 @_RNvNvXNtNtCsavRPklju9Q7_4bstr5impls4bstrNtNtB8_4bstr4BStrNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmt10write_bstr(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.a, i64 noundef %i.c)
  br i1 %i.be, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.bf = tail call noundef zeroext i1 @_RNvNvXNtNtCsavRPklju9Q7_4bstr5impls4bstrNtNtB8_4bstr4BStrNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmt10write_pads(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %.sroa.04.0.i)
  br i1 %i.bf, label %bb.aa, label %_RNvXNtNtCsavRPklju9Q7_4bstr5impls4bstrNtNtB6_4bstr4BStrNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmt.exit

bb.aa:                                            ; preds = %bb.z, %bb.y, %bb.x, %bb.w, %bb.v, %bb.u, %bb.t, %bb.b
  br label %_RNvXNtNtCsavRPklju9Q7_4bstr5impls4bstrNtNtB6_4bstr4BStrNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmt.exit

_RNvXNtNtCsavRPklju9Q7_4bstr5impls4bstrNtNtB6_4bstr4BStrNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmt.exit: ; preds = %bb.b, %bb.w, %bb.x, %bb.z, %bb.aa
  %.sroa.0.2.i = phi i1 [ true, %bb.aa ], [ false, %bb.w ], [ false, %bb.x ], [ false, %bb.z ], [ false, %bb.b ]
  ret i1 %.sroa.0.2.i
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1i_NtCs4NRVxsYgnAr_4core3fmtRNtNtCsfDzkztWVnn_18ty_module_resolver11module_name10ModuleNameNtB6_7Display3fmtCsbppsKr37CYt_19ty_completion_bench(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !4, !align !6, !noundef !4
  %i.b = tail call noundef zeroext i1 @_RNvXs2_NtCsfDzkztWVnn_18ty_module_resolver11module_nameNtB5_10ModuleNameNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmt(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.b
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs5_NtNtCscdodAO9FK5_5alloc3vec5drainINtB5_5DrainNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsbppsKr37CYt_19ty_completion_bench(ptr noalias nofree noundef align 8 captures(none) dereferenceable(40) %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !4, !noundef !4 ; 2 uses
  store ptr inttoptr (i64 8 to ptr), ptr %0, align 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.b, align 8
  %i.d = ptrtoint ptr %i.c to i64
  %i.e = ptrtoint ptr %i.a to i64                 ; 2 uses
  %i.f = sub nuw i64 %i.d, %i.e
  %i.g = udiv exact i64 %i.f, 24                  ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !nonnull !4, !noundef !4 ; 4 uses
  %i.j = icmp eq ptr %i.c, %i.a
  br i1 %i.j, label %bb.b, label %.lr.ph

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.l = load i64, ptr %i.k, align 8, !noundef !4 ; 3 uses
  %.not.i.i = icmp eq i64 %i.l, 0
  br i1 %.not.i.i, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNvXs5_NtNtCscdodAO9FK5_5alloc3vec5drainINtBK_5DrainppENtNtNtB4_3ops4drop4Drop4drop9DropGuardNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringNtNtBO_5alloc6GlobalEECsbppsKr37CYt_19ty_completion_bench.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 2 uses
  %i.n = load i64, ptr %i.m, align 8, !noundef !4 ; 4 uses
  %i.o = icmp ult i64 %i.n, 384307168202282326
  tail call void @llvm.assume(i1 %i.o)
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.q = load i64, ptr %i.p, align 8, !noundef !4 ; 2 uses
  %.not3.i.i = icmp eq i64 %i.q, %i.n
  br i1 %.not3.i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.e, %bb.c
  %i.r = add i64 %i.n, %i.l
  store i64 %i.r, ptr %i.m, align 8
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNvXs5_NtNtCscdodAO9FK5_5alloc3vec5drainINtBK_5DrainppENtNtNtB4_3ops4drop4Drop4drop9DropGuardNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringNtNtBO_5alloc6GlobalEECsbppsKr37CYt_19ty_completion_bench.exit

bb.e:                                             ; preds = %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.t = load ptr, ptr %i.s, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.u = getelementptr inbounds nuw [24 x i8], ptr %i.t, i64 %i.q
  %i.v = getelementptr inbounds nuw [24 x i8], ptr %i.t, i64 %i.n
  %i.w = mul i64 %i.l, 24
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.v, ptr nonnull align 8 %i.u, i64 %i.w, i1 false)
  br label %bb.d

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNvXs5_NtNtCscdodAO9FK5_5alloc3vec5drainINtBK_5DrainppENtNtNtB4_3ops4drop4Drop4drop9DropGuardNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringNtNtBO_5alloc6GlobalEECsbppsKr37CYt_19ty_completion_bench.exit: ; preds = %bb.m, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueSNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringECsbppsKr37CYt_19ty_completion_bench.exit, %bb.d, %bb.b
  ret void

.body:                                            ; preds = %bb.i, %.body.i
  tail call fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNvXs5_NtNtCscdodAO9FK5_5alloc3vec5drainINtBK_5DrainppENtNtNtB4_3ops4drop4Drop4drop9DropGuardNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringNtNtBO_5alloc6GlobalEECsbppsKr37CYt_19ty_completion_bench(ptr nonnull %0) #18
  resume { ptr, i32 } %eh.lpad-body.i

.lr.ph:                                           ; preds = %bb.a
  %i.x = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.z = ptrtoint ptr %i.y to i64
  %i.aa = sub nuw i64 %i.e, %i.z
  %i.ab = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.aa ; 2 uses
  br label %bb.f

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringECsbppsKr37CYt_19ty_completion_bench.exit.i: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCs2AWtUsOyxgP_3std3sys6os_str5bytes3BufECsbppsKr37CYt_19ty_completion_bench.exit.i.i
  %i.ac = icmp eq i64 %i.ae, %i.g
  br i1 %i.ac, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueSNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringECsbppsKr37CYt_19ty_completion_bench.exit, label %bb.f

bb.f:                                             ; preds = %.lr.ph, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringECsbppsKr37CYt_19ty_completion_bench.exit.i
  %.sroa.0.0.i30 = phi i64 [ 0, %.lr.ph ], [ %i.ae, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringECsbppsKr37CYt_19ty_completion_bench.exit.i ] ; 2 uses
  %i.ad = getelementptr inbounds nuw [24 x i8], ptr %i.ab, i64 %.sroa.0.0.i30 ; 3 uses
  %i.ae = add nuw nsw i64 %.sroa.0.0.i30, 1       ; 4 uses
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsbppsKr37CYt_19ty_completion_bench(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ad)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCs2AWtUsOyxgP_3std3sys6os_str5bytes3BufECsbppsKr37CYt_19ty_completion_bench.exit.i.i unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.af = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsbppsKr37CYt_19ty_completion_bench(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ad)
          to label %.body.i unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ag = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #19
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCs2AWtUsOyxgP_3std3sys6os_str5bytes3BufECsbppsKr37CYt_19ty_completion_bench.exit.i.i: ; preds = %bb.f
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsbppsKr37CYt_19ty_completion_bench(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ad)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringECsbppsKr37CYt_19ty_completion_bench.exit.i unwind label %bb.j

bb.i:                                             ; preds = %.lr.ph32
  %i.ah = add i64 %.sroa.0.1.i31, 1               ; 2 uses
  %i.ai = icmp eq i64 %i.ah, %i.g
  br i1 %i.ai, label %.body, label %.lr.ph32

bb.j:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCs2AWtUsOyxgP_3std3sys6os_str5bytes3BufECsbppsKr37CYt_19ty_completion_bench.exit.i.i
  %i.aj = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.j, %bb.g
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.aj, %bb.j ], [ %i.af, %bb.g ]
  %i.ak = icmp eq i64 %i.ae, %i.g
  br i1 %i.ak, label %.body, label %.lr.ph32

.lr.ph32:                                         ; preds = %.body.i, %bb.i
  %.sroa.0.1.i31 = phi i64 [ %i.ah, %bb.i ], [ %i.ae, %.body.i ] ; 2 uses
  %i.al = getelementptr inbounds nuw [24 x i8], ptr %i.ab, i64 %.sroa.0.1.i31
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringECsbppsKr37CYt_19ty_completion_bench(ptr noalias noundef align 8 dereferenceable(24) %i.al) #18
          to label %bb.i unwind label %bb.k

bb.k:                                             ; preds = %.lr.ph32
  %i.am = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #19
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueSNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringECsbppsKr37CYt_19ty_completion_bench.exit: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringECsbppsKr37CYt_19ty_completion_bench.exit.i
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ao = load i64, ptr %i.an, align 8, !noundef !4 ; 3 uses
  %.not.i.i5 = icmp eq i64 %i.ao, 0
  br i1 %.not.i.i5, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNvXs5_NtNtCscdodAO9FK5_5alloc3vec5drainINtBK_5DrainppENtNtNtB4_3ops4drop4Drop4drop9DropGuardNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringNtNtBO_5alloc6GlobalEECsbppsKr37CYt_19ty_completion_bench.exit, label %bb.l

bb.l:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueSNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringECsbppsKr37CYt_19ty_completion_bench.exit
  %i.ap = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 2 uses
  %i.aq = load i64, ptr %i.ap, align 8, !noundef !4 ; 4 uses
  %i.ar = icmp ult i64 %i.aq, 384307168202282326
  tail call void @llvm.assume(i1 %i.ar)
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.at = load i64, ptr %i.as, align 8, !noundef !4 ; 2 uses
  %.not3.i.i6 = icmp eq i64 %i.at, %i.aq
  br i1 %.not3.i.i6, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.n, %bb.l
  %i.au = add i64 %i.aq, %i.ao
  store i64 %i.au, ptr %i.ap, align 8
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNvXs5_NtNtCscdodAO9FK5_5alloc3vec5drainINtBK_5DrainppENtNtNtB4_3ops4drop4Drop4drop9DropGuardNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringNtNtBO_5alloc6GlobalEECsbppsKr37CYt_19ty_completion_bench.exit

bb.n:                                             ; preds = %bb.l
  %i.av = load ptr, ptr %i.x, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.aw = getelementptr inbounds nuw [24 x i8], ptr %i.av, i64 %i.at
  %i.ax = getelementptr inbounds nuw [24 x i8], ptr %i.av, i64 %i.aq
  %i.ay = mul i64 %i.ao, 24
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ax, ptr nonnull align 8 %i.aw, i64 %i.ay, i1 false)
  br label %bb.m
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvXs_NtNtNtCs4NRVxsYgnAr_4core5array4iter10iter_innerAINtNtNtBa_3mem12maybe_uninit11MaybeUninitNtNtNtCsdjW2DEjcQy2_12clap_builder4util2id2IdEj4_NtB4_11PartialDrop12partial_dropCsbppsKr37CYt_19ty_completion_bench(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(96) %0, i64 noundef %1, i64 noundef %2) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !415)
  %i.a = icmp eq i64 %2, %1
  br i1 %i.a, label %_RNvXNtNtNtCs4NRVxsYgnAr_4core5array4iter10iter_innerSINtNtNtB8_3mem12maybe_uninit11MaybeUninitNtNtNtCsdjW2DEjcQy2_12clap_builder4util2id2IdENtB2_11PartialDrop12partial_dropCsbppsKr37CYt_19ty_completion_bench.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = sub nuw i64 %2, %1
  %i.c = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %1
  tail call void @llvm.experimental.noalias.scope.decl(metadata !416)
  br label %bb.c

bb.c:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsdjW2DEjcQy2_12clap_builder4util2id2IdECsbppsKr37CYt_19ty_completion_bench.exit.i.i, %bb.b
  %.sroa.0.07.i.i = phi i64 [ 0, %bb.b ], [ %i.e, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsdjW2DEjcQy2_12clap_builder4util2id2IdECsbppsKr37CYt_19ty_completion_bench.exit.i.i ] ; 2 uses
  %i.d = getelementptr inbounds nuw [24 x i8], ptr %i.c, i64 %.sroa.0.07.i.i ; 3 uses
  %i.e = add nuw nsw i64 %.sroa.0.07.i.i, 1       ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !417)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !418)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !419)
  %i.f = load i64, ptr %i.d, align 8, !range !12, !alias.scope !420, !noundef !4
  %i.g = icmp eq i64 %i.f, 0
  br i1 %i.g, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsdjW2DEjcQy2_12clap_builder4util2id2IdECsbppsKr37CYt_19ty_completion_bench.exit.i.i, label %bb.d

end_hunk_0
