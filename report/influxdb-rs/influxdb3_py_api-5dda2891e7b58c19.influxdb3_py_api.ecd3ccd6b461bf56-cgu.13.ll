Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/influxdb-rs/original/influxdb3_py_api-5dda2891e7b58c19.influxdb3_py_api.ecd3ccd6b461bf56-cgu.13?download=true
inline.NumInlined: 210
inline.NumDeleted: 149
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@0 = private unnamed_addr constant [97 x i8] c"/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/pyo3-0.29.0/src/instance.rs\00", align 1, !guid !3
@1 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"`\00\00\00\00\00\00\00[\01\00\00<\00\00\00" }>, align 8, !guid !3
@2 = private unnamed_addr constant [102 x i8] c"Attempted to create PyList but `elements` was smaller than reported by its `size_hint` implementation.", align 1, !guid !3
@3 = private unnamed_addr constant [110 x i8] c"Attempted to create PyTuple but `elements` was larger than reported by its `ExactSizeIterator` implementation.", align 1, !guid !3
@4 = private unnamed_addr constant [111 x i8] c"Attempted to create PyTuple but `elements` was smaller than reported by its `ExactSizeIterator` implementation.", align 1, !guid !3
@_RNvNCNKNvNtNtCs9xaRPakndqT_4pyo38internal5state12ATTACH_COUNT0s_023___RUST_STD_INTERNAL_VAL = external thread_local local_unnamed_addr global i64
@_Py_NoneStruct = external global { { [1 x i64] }, ptr }
@5 = private unnamed_addr constant [10 x i8] c"table_name", align 1, !guid !3
@6 = private unnamed_addr constant [24 x i8] c"failed to set table_name", align 1, !guid !3
@7 = private unnamed_addr constant [4 x i8] c"rows", align 1, !guid !3
@8 = private unnamed_addr constant [18 x i8] c"failed to set rows", align 1, !guid !3
@9 = private unnamed_addr constant [28 x i8] c"influxdb3_py_api/src/wal.rs\00", align 1, !guid !3
@10 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @9, [16 x i8] c"\1B\00\00\00\00\00\00\00-\00\00\00\05\00\00\00" }>, align 8, !guid !3
@11 = private unnamed_addr constant [35 x i8] c"failed to create table_batches list", align 1, !guid !3
@12 = private unnamed_addr constant [4 x i8] c"None", align 1, !guid !3
@13 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRINtNtCscdodAO9FK5_5alloc4sync3ArceENtB6_5Debug3fmtCskkCPRT7oCWw_16influxdb3_py_api }>, align 8, !guid !3
@14 = private unnamed_addr constant [4 x i8] c"Some", align 1, !guid !3

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMNtNtCs9xaRPakndqT_4pyo35types5tupleNtB3_7PyTuple3newRINtNtCs4NRVxsYgnAr_4core6option6OptionINtNtB7_8instance8BorrowedNtNtB5_3any5PyAnyEEINtNtNtBZ_5slice4iter4IterBU_ERSBU_ECskkCPRT7oCWw_16influxdb3_py_api(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([56 x i8]) align 8 captures(none) dereferenceable(56) %0, ptr noalias noundef nonnull readonly align 8 captures(address) %1, i64 noundef range(i64 0, 1152921504606846976) %2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %3) unnamed_addr #0 personality ptr @rust_eh_personality !guid !42 {
bb.a:
  %i.a = alloca [56 x i8], align 8                ; 7 uses
  %i.b = alloca [8 x i8], align 8                 ; 5 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %.idx = shl nuw nsw i64 %2, 3
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 %.idx ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !43)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !44
  store i64 %2, ptr %i.c, align 8, !noalias !44
  %i.e = tail call noundef ptr @PyTuple_New(i64 noundef %2) #17, !noalias !44 ; 6 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %bb.c, label %bb.d, !prof !4

bb.b:                                             ; preds = %bb.r, %bb.q, %bb.p
  resume { ptr, i32 } %i.z

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvNtCs9xaRPakndqT_4pyo38instance13panic_on_null(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #18, !noalias !44
  unreachable

bb.d:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !44
  store i64 0, ptr %i.b, align 8, !noalias !44
  %i.g = icmp eq i64 %2, 0
  br i1 %i.g, label %_RINvNtNtCs9xaRPakndqT_4pyo35types5tuple17try_new_from_iterINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtNtNtB13_5slice4iter4IterINtNtB13_6option6OptionINtNtB6_8instance8BorrowedNtNtB4_3any5PyAnyEEENCINvMB2_NtB2_7PyTuple3newRB29_B1I_RSB29_E0EECskkCPRT7oCWw_16influxdb3_py_api.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.d
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  br label %bb.f

bb.e:                                             ; preds = %bb.v, %bb.t
  unreachable

bb.f:                                             ; preds = %bb.w, %.lr.ph.i
  %i.i = phi i64 [ 0, %.lr.ph.i ], [ %i.ag, %bb.w ] ; 3 uses
  %.sroa.0.044.i = phi i64 [ %2, %.lr.ph.i ], [ %i.k, %bb.w ]
  %i.j = phi ptr [ %1, %.lr.ph.i ], [ %5, %bb.w ] ; 3 uses
  %i.k = add nsw i64 %.sroa.0.044.i, -1           ; 2 uses
  %i.l = icmp eq ptr %i.j, %i.d
  br i1 %i.l, label %_RNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter4IterINtNtBb_6option6OptionINtNtCs9xaRPakndqT_4pyo38instance8BorrowedNtNtNtB1N_5types3any5PyAnyEEENCINvMNtB2s_5tupleNtB2X_7PyTuple3newRB1m_BW_RSB1m_E0ENtNtNtB9_6traits8iterator8Iterator4nextCskkCPRT7oCWw_16influxdb3_py_api.exit.i.thread, label %4

_RNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter4IterINtNtBb_6option6OptionINtNtCs9xaRPakndqT_4pyo38instance8BorrowedNtNtNtB1N_5types3any5PyAnyEEENCINvMNtB2s_5tupleNtB2X_7PyTuple3newRB1m_BW_RSB1m_E0ENtNtNtB9_6traits8iterator8Iterator4nextCskkCPRT7oCWw_16influxdb3_py_api.exit.i.thread: ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !44
  br label %bb.u

4:                                                ; preds = %bb.f
  %5 = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 3 uses
  %.val.i.i = load ptr, ptr %i.j, align 8, !alias.scope !45, !noalias !46, !noundef !5 ; 5 uses
  %.not.i.i.i.i.i = icmp eq ptr %.val.i.i, null
  br i1 %.not.i.i.i.i.i, label %bb.i, label %bb.g

bb.g:                                             ; preds = %4
  %i.m = load i32, ptr %.val.i.i, align 8, !noalias !47, !noundef !5
  %i.n = add i32 %i.m, 1                          ; 2 uses
  %i.o = icmp eq i32 %i.n, 0
  br i1 %i.o, label %bb.w, label %bb.h

bb.h:                                             ; preds = %bb.g
  store i32 %i.n, ptr %.val.i.i, align 8, !noalias !47
  br label %bb.w

bb.i:                                             ; preds = %4
  %i.p = load i32, ptr @_Py_NoneStruct, align 8, !noalias !47, !noundef !5
  %i.q = add i32 %i.p, 1                          ; 2 uses
  %i.r = icmp eq i32 %i.q, 0
  br i1 %i.r, label %bb.w, label %bb.j

bb.j:                                             ; preds = %bb.i
  store i32 %i.q, ptr @_Py_NoneStruct, align 8, !noalias !47
  br label %bb.w

_RNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter4IterINtNtBb_6option6OptionINtNtCs9xaRPakndqT_4pyo38instance8BorrowedNtNtNtB1N_5types3any5PyAnyEEENCINvMNtB2s_5tupleNtB2X_7PyTuple3newRB1m_BW_RSB1m_E0ENtNtNtB9_6traits8iterator8Iterator4nextCskkCPRT7oCWw_16influxdb3_py_api.exit.i: ; preds = %bb.w
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !44
  tail call void @llvm.experimental.noalias.scope.decl(metadata !48)
  %i.s = icmp eq ptr %5, %i.d
  br i1 %i.s, label %bb.u, label %bb.k

bb.k:                                             ; preds = %_RNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter4IterINtNtBb_6option6OptionINtNtCs9xaRPakndqT_4pyo38instance8BorrowedNtNtNtB1N_5types3any5PyAnyEEENCINvMNtB2s_5tupleNtB2X_7PyTuple3newRB1m_BW_RSB1m_E0ENtNtNtB9_6traits8iterator8Iterator4nextCskkCPRT7oCWw_16influxdb3_py_api.exit.i
  %.val.i21.i = load ptr, ptr %5, align 8, !alias.scope !49, !noalias !50, !noundef !5 ; 5 uses
  %.not.i.i.i.i22.i = icmp eq ptr %.val.i21.i, null
  br i1 %.not.i.i.i.i22.i, label %bb.n, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.t = load i32, ptr %.val.i21.i, align 8, !noalias !51, !noundef !5
  %i.u = add i32 %i.t, 1                          ; 2 uses
  %i.v = icmp eq i32 %i.u, 0
  br i1 %i.v, label %bb.s, label %bb.m

bb.m:                                             ; preds = %bb.l
  store i32 %i.u, ptr %.val.i21.i, align 8, !noalias !51
  br label %bb.s

bb.n:                                             ; preds = %bb.k
  %i.w = load i32, ptr @_Py_NoneStruct, align 8, !noalias !51, !noundef !5
  %i.x = add i32 %i.w, 1                          ; 2 uses
  %i.y = icmp eq i32 %i.x, 0
  br i1 %i.y, label %bb.s, label %bb.o

bb.o:                                             ; preds = %bb.n
  store i32 %i.x, ptr @_Py_NoneStruct, align 8, !noalias !51
  br label %bb.s

bb.p:                                             ; preds = %bb.v, %bb.t, %bb.s
  %i.z = landingpad { ptr, i32 }
          cleanup
  %i.aa = load i64, ptr %i.e, align 8, !noalias !52, !noundef !5 ; 2 uses
  %i.ab = and i64 %i.aa, 2147483648
  %.not.i.i.i = icmp eq i64 %i.ab, 0
  br i1 %.not.i.i.i, label %bb.q, label %bb.b

bb.q:                                             ; preds = %bb.p
  %i.ac = add i64 %i.aa, -1                       ; 2 uses
  store i64 %i.ac, ptr %i.e, align 8, !noalias !52
  %i.ad = icmp eq i64 %i.ac, 0
  br i1 %i.ad, label %bb.r, label %bb.b

bb.r:                                             ; preds = %bb.q
  call void @_Py_Dealloc(ptr noundef nonnull %i.e) #17, !noalias !52
  br label %bb.b

bb.s:                                             ; preds = %bb.o, %bb.n, %bb.m, %bb.l
  %.sroa.02.0.i.i.i.i.i24.i = phi ptr [ %.val.i21.i, %bb.m ], [ %.val.i21.i, %bb.l ], [ @_Py_NoneStruct, %bb.n ], [ @_Py_NoneStruct, %bb.o ]
  store i64 0, ptr %i.a, align 8, !alias.scope !48, !noalias !44
  %.sroa.4.0..sroa_idx.i25.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %.sroa.02.0.i.i.i.i.i24.i, ptr %.sroa.4.0..sroa_idx.i25.i, align 8, !alias.scope !48, !noalias !44
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultINtNtCs9xaRPakndqT_4pyo38instance5BoundNtNtNtB1o_5types3any5PyAnyENtNtB1o_3err5PyErrEEECskkCPRT7oCWw_16influxdb3_py_api(ptr noalias noundef align 8 dereferenceable(56) %i.a)
          to label %bb.t unwind label %bb.p, !noalias !44

bb.t:                                             ; preds = %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !44
  invoke void @_RNvNtCs4NRVxsYgnAr_4core9panicking9panic_fmt(ptr noundef nonnull @3, ptr noundef nonnull inttoptr (i64 221 to ptr), ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %3) #18
          to label %bb.e unwind label %bb.p, !noalias !52

bb.u:                                             ; preds = %_RNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter4IterINtNtBb_6option6OptionINtNtCs9xaRPakndqT_4pyo38instance8BorrowedNtNtNtB1N_5types3any5PyAnyEEENCINvMNtB2s_5tupleNtB2X_7PyTuple3newRB1m_BW_RSB1m_E0ENtNtNtB9_6traits8iterator8Iterator4nextCskkCPRT7oCWw_16influxdb3_py_api.exit.i.thread, %_RNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter4IterINtNtBb_6option6OptionINtNtCs9xaRPakndqT_4pyo38instance8BorrowedNtNtNtB1N_5types3any5PyAnyEEENCINvMNtB2s_5tupleNtB2X_7PyTuple3newRB1m_BW_RSB1m_E0ENtNtNtB9_6traits8iterator8Iterator4nextCskkCPRT7oCWw_16influxdb3_py_api.exit.i
  %.lcssa.i11 = phi i64 [ %i.i, %_RNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter4IterINtNtBb_6option6OptionINtNtCs9xaRPakndqT_4pyo38instance8BorrowedNtNtNtB1N_5types3any5PyAnyEEENCINvMNtB2s_5tupleNtB2X_7PyTuple3newRB1m_BW_RSB1m_E0ENtNtNtB9_6traits8iterator8Iterator4nextCskkCPRT7oCWw_16influxdb3_py_api.exit.i.thread ], [ %i.ag, %_RNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter4IterINtNtBb_6option6OptionINtNtCs9xaRPakndqT_4pyo38instance8BorrowedNtNtNtB1N_5types3any5PyAnyEEENCINvMNtB2s_5tupleNtB2X_7PyTuple3newRB1m_BW_RSB1m_E0ENtNtNtB9_6traits8iterator8Iterator4nextCskkCPRT7oCWw_16influxdb3_py_api.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !44
  %i.ae = icmp eq i64 %2, %.lcssa.i11
  br i1 %i.ae, label %_RINvNtNtCs9xaRPakndqT_4pyo35types5tuple17try_new_from_iterINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtNtNtB13_5slice4iter4IterINtNtB13_6option6OptionINtNtB6_8instance8BorrowedNtNtB4_3any5PyAnyEEENCINvMB2_NtB2_7PyTuple3newRB29_B1I_RSB29_E0EECskkCPRT7oCWw_16influxdb3_py_api.exit, label %bb.v, !prof !53

bb.v:                                             ; preds = %bb.u
  invoke void @_RINvNtCs4NRVxsYgnAr_4core9panicking13assert_failediiECs9xaRPakndqT_4pyo3(i8 noundef 0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.b, ptr noundef nonnull @4, ptr nonnull inttoptr (i64 223 to ptr), ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %3) #18
          to label %bb.e unwind label %bb.p, !noalias !52

bb.w:                                             ; preds = %bb.j, %bb.i, %bb.h, %bb.g
  %.sroa.8.0.ph.i = phi ptr [ @_Py_NoneStruct, %bb.i ], [ %.val.i.i, %bb.g ], [ %.val.i.i, %bb.h ], [ @_Py_NoneStruct, %bb.j ]
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.i
  store ptr %.sroa.8.0.ph.i, ptr %i.af, align 8, !noalias !44
  %i.ag = add nuw nsw i64 %i.i, 1                 ; 3 uses
  store i64 %i.ag, ptr %i.b, align 8, !noalias !44
  %i.ah = icmp eq i64 %i.k, 0
  br i1 %i.ah, label %_RNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter4IterINtNtBb_6option6OptionINtNtCs9xaRPakndqT_4pyo38instance8BorrowedNtNtNtB1N_5types3any5PyAnyEEENCINvMNtB2s_5tupleNtB2X_7PyTuple3newRB1m_BW_RSB1m_E0ENtNtNtB9_6traits8iterator8Iterator4nextCskkCPRT7oCWw_16influxdb3_py_api.exit.i, label %bb.f

_RINvNtNtCs9xaRPakndqT_4pyo35types5tuple17try_new_from_iterINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtNtNtB13_5slice4iter4IterINtNtB13_6option6OptionINtNtB6_8instance8BorrowedNtNtB4_3any5PyAnyEEENCINvMB2_NtB2_7PyTuple3newRB29_B1I_RSB29_E0EECskkCPRT7oCWw_16influxdb3_py_api.exit: ; preds = %bb.d, %bb.u
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.e, ptr %i.ai, align 8, !alias.scope !43
  store i64 0, ptr %0, align 8, !alias.scope !43
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !44
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !44
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMNtNtCs9xaRPakndqT_4pyo35types6moduleNtB3_8PyModule6importReECskkCPRT7oCWw_16influxdb3_py_api(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([56 x i8]) align 8 captures(none) dereferenceable(56) %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality !guid !54 {
bb.a:
  %i.a = alloca [56 x i8], align 8                ; 5 uses
  %i.b = alloca [48 x i8], align 8                ; 6 uses
  %i.c = tail call noundef nonnull ptr @_RNvMs_NtNtCs9xaRPakndqT_4pyo35types6stringNtB4_8PyString3new(ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2) ; 7 uses
  %i.d = tail call noundef ptr @PyImport_Import(ptr noundef nonnull %i.c) #17 ; 2 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.e, label %bb.j

bb.b:                                             ; preds = %bb.h, %bb.e
  %i.f = landingpad { ptr, i32 }
          cleanup
  %i.g = load i64, ptr %i.c, align 8, !noundef !5 ; 2 uses
  %i.h = and i64 %i.g, 2147483648
  %.not.i.i = icmp eq i64 %i.h, 0
  br i1 %.not.i.i, label %bb.c, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs9xaRPakndqT_4pyo38instance5BoundNtNtNtBG_5types6string8PyStringEECskkCPRT7oCWw_16influxdb3_py_api.exit

bb.c:                                             ; preds = %bb.b
  %i.i = add i64 %i.g, -1                         ; 2 uses
  store i64 %i.i, ptr %i.c, align 8
  %i.j = icmp eq i64 %i.i, 0
  br i1 %i.j, label %bb.d, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs9xaRPakndqT_4pyo38instance5BoundNtNtNtBG_5types6string8PyStringEECskkCPRT7oCWw_16influxdb3_py_api.exit

bb.d:                                             ; preds = %bb.c
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.c) #17
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs9xaRPakndqT_4pyo38instance5BoundNtNtNtBG_5types6string8PyStringEECskkCPRT7oCWw_16influxdb3_py_api.exit

bb.e:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  invoke void @_RNvMs_NtCs9xaRPakndqT_4pyo33errNtB4_5PyErr4take(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.a)
          to label %bb.f unwind label %bb.b

bb.f:                                             ; preds = %bb.e
  %i.k = load i64, ptr %i.a, align 8, !range !6, !noundef !5
  %i.l = trunc nuw i64 %i.k to i1
  br i1 %i.l, label %bb.g, label %bb.h, !prof !7

bb.g:                                             ; preds = %bb.f
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.b, ptr noundef nonnull align 8 dereferenceable(48) %i.m, i64 48, i1 false)
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  invoke void @_RNvNtCs9xaRPakndqT_4pyo33err15failed_to_fetch(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.b)
          to label %bb.i unwind label %bb.b

bb.i:                                             ; preds = %bb.h, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %.sroa.4.8.copyload = load ptr, ptr %i.b, align 8
  %.sroa.8.8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.410.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.410.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.8.8..sroa_idx, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.j

bb.j:                                             ; preds = %bb.a, %bb.i
  %.sroa.4.8.copyload.sink = phi ptr [ %.sroa.4.8.copyload, %bb.i ], [ %i.d, %bb.a ]
  %storemerge = phi i64 [ 1, %bb.i ], [ 0, %bb.a ]
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.4.8.copyload.sink, ptr %i.n, align 8
  store i64 %storemerge, ptr %0, align 8
  %i.o = load i64, ptr %i.c, align 8, !noundef !5 ; 2 uses
  %i.p = and i64 %i.o, 2147483648
  %.not.i.i15 = icmp eq i64 %i.p, 0
  br i1 %.not.i.i15, label %bb.k, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs9xaRPakndqT_4pyo38instance5BoundNtNtNtBG_5types6string8PyStringEECskkCPRT7oCWw_16influxdb3_py_api.exit16

bb.k:                                             ; preds = %bb.j
  %i.q = add i64 %i.o, -1                         ; 2 uses
  store i64 %i.q, ptr %i.c, align 8
  %i.r = icmp eq i64 %i.q, 0
  br i1 %i.r, label %bb.l, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs9xaRPakndqT_4pyo38instance5BoundNtNtNtBG_5types6string8PyStringEECskkCPRT7oCWw_16influxdb3_py_api.exit16

bb.l:                                             ; preds = %bb.k
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.c) #17
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs9xaRPakndqT_4pyo38instance5BoundNtNtNtBG_5types6string8PyStringEECskkCPRT7oCWw_16influxdb3_py_api.exit16

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs9xaRPakndqT_4pyo38instance5BoundNtNtNtBG_5types6string8PyStringEECskkCPRT7oCWw_16influxdb3_py_api.exit16: ; preds = %bb.j, %bb.k, %bb.l
  ret void

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs9xaRPakndqT_4pyo38instance5BoundNtNtNtBG_5types6string8PyStringEECskkCPRT7oCWw_16influxdb3_py_api.exit: ; preds = %bb.d, %bb.c, %bb.b
  resume { ptr, i32 } %i.f
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull align 8 ptr @_RINvMs1_NtNtCskk23YY1ZVZx_9once_cell4race8once_boxINtB6_7OnceBoxAAyj4_j2_E15get_or_try_initNCINvB2_11get_or_initNCNvNtCs3L39Jvi82fL_5ahash12random_state15get_fixed_seeds0E0NtNvMs1_B6_IBN_pE11get_or_init4VoidECskkCPRT7oCWw_16influxdb3_py_api(ptr noundef nonnull align 8 %0) unnamed_addr #0 personality ptr @rust_eh_personality !guid !55 {
bb.a:
  %i.a = load atomic ptr, ptr %0 acquire, align 8 ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.c, !prof !4

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noundef nonnull align 8 ptr @_RINvMs1_NtNtCskk23YY1ZVZx_9once_cell4race8once_boxINtB6_7OnceBoxAAyj4_j2_E4initNtNvMs1_B6_IBN_pE11get_or_init4VoidNCINvB2_11get_or_initNCNvNtCs3L39Jvi82fL_5ahash12random_state15get_fixed_seeds0E0ECs6ePPILGZvJ2_11arrow_array(ptr noundef nonnull align 8 %0)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.0.0 = phi ptr [ %i.c, %bb.b ], [ %i.a, %bb.a ]
  ret ptr %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs_NtNtCs9xaRPakndqT_4pyo35types4listNtB5_6PyList3newINtNtB9_8instance2PyNtNtB7_3any5PyAnyEINtNtCscdodAO9FK5_5alloc3vec3VecBT_EECskkCPRT7oCWw_16influxdb3_py_api(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([56 x i8]) align 8 captures(none) dereferenceable(56) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %2) unnamed_addr #0 personality ptr @rust_eh_personality !guid !92 {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [56 x i8], align 8                ; 6 uses
  %i.c = alloca [8 x i8], align 8                 ; 6 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [8 x i8], align 8                 ; 4 uses
  %i.f = alloca [40 x i8], align 8                ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %.sroa.03.0.copyload.i = load i64, ptr %1, align 8, !alias.scope !93
  %.sroa.44.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.44.0.copyload.i = load ptr, ptr %.sroa.44.0..sroa_idx.i, align 8, !alias.scope !93, !nonnull !5, !noundef !5 ; 5 uses
  %.sroa.55.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.55.0.copyload.i = load i64, ptr %.sroa.55.0..sroa_idx.i, align 8, !alias.scope !93 ; 8 uses
  %i.g = icmp ult i64 %.sroa.55.0.copyload.i, 1152921504606846976
  tail call void @llvm.assume(i1 %i.g)
  %.idx = shl nuw nsw i64 %.sroa.55.0.copyload.i, 3
  %i.h = getelementptr inbounds nuw i8, ptr %.sroa.44.0.copyload.i, i64 %.idx ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !94)
  store ptr %.sroa.44.0.copyload.i, ptr %i.f, align 8, !alias.scope !95
  %.sroa.422.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 6 uses
  store ptr %.sroa.44.0.copyload.i, ptr %.sroa.422.0..sroa_idx, align 8, !alias.scope !95
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store i64 %.sroa.03.0.copyload.i, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !95
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  store ptr %i.h, ptr %.sroa.6.0..sroa_idx, align 8, !alias.scope !95
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  store ptr %i.a, ptr %i.i, align 8, !alias.scope !96
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store i64 %.sroa.55.0.copyload.i, ptr %i.e, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.j = call noundef ptr @PyList_New(i64 noundef %.sroa.55.0.copyload.i) #17 ; 10 uses
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %bb.c, label %bb.d, !prof !4

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs9xaRPakndqT_4pyo38instance5BoundNtNtNtBG_5types4list6PyListEECskkCPRT7oCWw_16influxdb3_py_api.exit: ; preds = %bb.i, %bb.h, %bb.g, %bb.b
  %.pn = phi { ptr, i32 } [ %i.l, %bb.b ], [ %lpad.phi, %bb.g ], [ %lpad.phi, %bb.h ], [ %lpad.phi, %bb.i ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterINtNtCs9xaRPakndqT_4pyo38instance2PyNtNtNtB21_5types3any5PyAnyEENCINvMs_NtB2A_4listNtB36_6PyList3newB1W_INtB1e_3VecB1W_EE0EECskkCPRT7oCWw_16influxdb3_py_api(ptr noalias noundef align 8 dereferenceable(40) %i.f) #19
          to label %bb.q unwind label %bb.p

bb.b:                                             ; preds = %bb.c
  %i.l = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs9xaRPakndqT_4pyo38instance5BoundNtNtNtBG_5types4list6PyListEECskkCPRT7oCWw_16influxdb3_py_api.exit

bb.c:                                             ; preds = %bb.a
  invoke void @_RNvNtCs9xaRPakndqT_4pyo38instance13panic_on_null(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #18
          to label %bb.f unwind label %bb.b

bb.d:                                             ; preds = %bb.a
  store ptr %i.j, ptr %i.d, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.m = icmp eq i64 %.sroa.55.0.copyload.i, 0
  br i1 %i.m, label %bb.k, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  br label %.lr.ph

bb.e:                                             ; preds = %.lr.ph
  %i.o = add nuw nsw i64 %.sroa.0.0.i.i.i.i.i49, 1 ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.r, %i.h
  br i1 %.not.i.i.i.i.i, label %_RINvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4takeINtB5_4TakeQINtNtB7_3map3MapINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterINtNtCs9xaRPakndqT_4pyo38instance2PyNtNtNtB27_5types3any5PyAnyEENCINvMs_NtB2G_4listNtB3c_6PyList3newB22_INtB1k_3VecB22_EE0EENtNtNtB9_6traits8iterator8Iterator8try_foldiNCB36_s_0INtNtBb_6result6ResultiNtNtB27_3err5PyErrEECskkCPRT7oCWw_16influxdb3_py_api.exit, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.e
  %.sroa.0.0.i.i.i.i.i49 = phi i64 [ %i.o, %bb.e ], [ 0, %.lr.ph.preheader ] ; 2 uses
  %i.p = phi i64 [ %i.s, %bb.e ], [ %.sroa.55.0.copyload.i, %.lr.ph.preheader ]
  %.val3748 = phi ptr [ %i.r, %bb.e ], [ %.sroa.44.0.copyload.i, %.lr.ph.preheader ] ; 2 uses
  %i.q = load ptr, ptr %.val3748, align 8, !noalias !97, !nonnull !5, !noundef !5
  %i.r = getelementptr inbounds nuw i8, ptr %.val3748, i64 8 ; 4 uses
  %i.s = add nsw i64 %i.p, -1                     ; 2 uses
  %i.t = load ptr, ptr %i.n, align 8, !noalias !98, !noundef !5
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %.sroa.0.0.i.i.i.i.i49
  store ptr %i.q, ptr %i.u, align 8, !noalias !98
end_hunk_0
