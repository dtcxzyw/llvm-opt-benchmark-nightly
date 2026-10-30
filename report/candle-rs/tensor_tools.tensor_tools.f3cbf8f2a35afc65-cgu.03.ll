Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/candle-rs/original/tensor_tools.tensor_tools.f3cbf8f2a35afc65-cgu.03?download=true
inline.NumInlined: 359
inline.NumDeleted: 207
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 9
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@switch.table._RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort19bidirectional_mergeTRNtNtCsgCecv3eZDcN_5alloc6string6StringRNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorENCINvMNtB1m_5sliceSB1g_7sort_byNCINvNtCsOwuIBbUsgI_11safetensors6tensor7prepareB1h_B1U_RINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map7HashMapB1i_B1V_EE0E0ECskVIURZGHVHJ_12tensor_tools.121 = private unnamed_addr constant [14 x i8] c"\04\10\0B\0F\14\0E\0D\11\13\07\02\03\01\08", align 1

; Function Attrs: nonlazybind uwtable
define hidden noundef align 2 ptr @_RINvMNtNtCsflt7xRw9JFr_12clap_builder4util9any_valueNtB3_8AnyValue12downcast_refNtNtNtB7_7builder7styling6StylesECskVIURZGHVHJ_12tensor_tools(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 16               ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !5, !noundef !5
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !5, !align !6, !noundef !5 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.f = load i64, ptr %i.e, align 8, !range !7, !invariant.load !5
  %i.g = add nsw i64 %i.f, -1
  %i.h = and i64 %i.g, -16
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.h
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.l = load ptr, ptr %i.k, align 8, !invariant.load !5, !nonnull !5
  call void %i.l(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.a, ptr noundef nonnull %i.j) #20
  %i.m = load i128, ptr %i.a, align 16, !noundef !5
  %i.n = icmp eq i128 %i.m, 103751636877846299216465256215032405773
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %. = select i1 %i.n, ptr %i.j, ptr null
  ret ptr %.
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMNtNtCsflt7xRw9JFr_12clap_builder4util9any_valueNtB3_8AnyValue13downcast_intoNtCskVIURZGHVHJ_12tensor_tools12QuantizationEB1j_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [16 x i8], align 16               ; 4 uses
  %i.d = alloca [16 x i8], align 8                ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.f = load ptr, ptr %1, align 8, !nonnull !5, !noundef !5 ; 10 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !nonnull !5, !align !6, !noundef !5 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %i.f, ptr %i.d, align 8, !noalias !24
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %i.h, ptr %i.i, align 8, !noalias !24
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.k = load i64, ptr %i.j, align 8, !range !7, !invariant.load !5, !alias.scope !23
  %i.l = add nsw i64 %i.k, -1
  %i.m = and i64 %i.l, -16
  %i.n = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.m
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !24
  %i.p = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.q = load ptr, ptr %i.p, align 8, !invariant.load !5, !alias.scope !23, !nonnull !5
  invoke void %i.q(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.c, ptr noundef nonnull %i.o)
          to label %_RINvMsF_NtCsgCecv3eZDcN_5alloc4syncINtB6_3ArcDNtNtCsf3Ta7LF998c_4core3any3AnyNtNtBM_6marker4SendNtB1f_4SyncEL_E8downcastNtCskVIURZGHVHJ_12tensor_tools12QuantizationEB1W_.exit unwind label %bb.b, !noalias !25

bb.b:                                             ; preds = %bb.a
  %i.r = landingpad { ptr, i32 }
          cleanup
  %i.s = atomicrmw add ptr %i.f, i64 -1 release, align 8, !noalias !26
  %i.t = icmp eq i64 %i.s, 1
  br i1 %i.t, label %bb.c, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcDNtNtB4_3any3AnyNtNtB4_6marker4SendNtB1r_4SyncEL_EECskVIURZGHVHJ_12tensor_tools.exit.i

bb.c:                                             ; preds = %bb.b
  fence acquire
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcDNtNtCsf3Ta7LF998c_4core3any3AnyNtNtBL_6marker4SendNtB1e_4SyncEL_E9drop_slowCsflt7xRw9JFr_12clap_builder(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.d) #21
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcDNtNtB4_3any3AnyNtNtB4_6marker4SendNtB1r_4SyncEL_EECskVIURZGHVHJ_12tensor_tools.exit.i unwind label %bb.d, !noalias !25

bb.d:                                             ; preds = %bb.c
  %i.u = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #22, !noalias !25
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcDNtNtB4_3any3AnyNtNtB4_6marker4SendNtB1r_4SyncEL_EECskVIURZGHVHJ_12tensor_tools.exit.i: ; preds = %bb.c, %bb.b
  resume { ptr, i32 } %i.r

_RINvMsF_NtCsgCecv3eZDcN_5alloc4syncINtB6_3ArcDNtNtCsf3Ta7LF998c_4core3any3AnyNtNtBM_6marker4SendNtB1f_4SyncEL_E8downcastNtCskVIURZGHVHJ_12tensor_tools12QuantizationEB1W_.exit: ; preds = %bb.a
  %i.v = load i128, ptr %i.c, align 16, !noalias !24, !noundef !5
  %i.w = icmp eq i128 %i.v, 65434237558224400338110403433197727021
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br i1 %i.w, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_RINvMsF_NtCsgCecv3eZDcN_5alloc4syncINtB6_3ArcDNtNtCsf3Ta7LF998c_4core3any3AnyNtNtBM_6marker4SendNtB1f_4SyncEL_E8downcastNtCskVIURZGHVHJ_12tensor_tools12QuantizationEB1W_.exit
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %i.e, i64 16, i1 false)
  store ptr %i.f, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.h, ptr %.sroa.4.0..sroa_idx, align 8
  br label %bb.k

bb.f:                                             ; preds = %_RINvMsF_NtCsgCecv3eZDcN_5alloc4syncINtB6_3ArcDNtNtCsf3Ta7LF998c_4core3any3AnyNtNtBM_6marker4SendNtB1f_4SyncEL_E8downcastNtCskVIURZGHVHJ_12tensor_tools12QuantizationEB1W_.exit
  %i.x = cmpxchg ptr %i.f, i64 1, i64 0 monotonic monotonic, align 8, !noalias !27
  %i.y = extractvalue { i64, i1 } %i.x, 1
  br i1 %i.y, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.f, ptr %i.a, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %.val.i = load i8, ptr %i.z, align 1, !range !8, !noundef !5
  %i.aa = atomicrmw add ptr %i.f, i64 -1 release, align 8, !noalias !28
  %i.ab = icmp eq i64 %i.aa, 1
  br i1 %i.ab, label %bb.h, label %_RNCINvMNtNtCsflt7xRw9JFr_12clap_builder4util9any_valueNtB5_8AnyValue13downcast_intoNtCskVIURZGHVHJ_12tensor_tools12QuantizationE0B1l_.exit

bb.h:                                             ; preds = %bb.g
  fence acquire
  call void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtCskVIURZGHVHJ_12tensor_tools12QuantizationE9drop_slowBI_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.a) #21
  br label %_RNCINvMNtNtCsflt7xRw9JFr_12clap_builder4util9any_valueNtB5_8AnyValue13downcast_intoNtCskVIURZGHVHJ_12tensor_tools12QuantizationE0B1l_.exit

_RNCINvMNtNtCsflt7xRw9JFr_12clap_builder4util9any_valueNtB5_8AnyValue13downcast_intoNtCskVIURZGHVHJ_12tensor_tools12QuantizationE0B1l_.exit: ; preds = %bb.g, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.j

bb.i:                                             ; preds = %bb.f
  fence acquire
  %i.ac = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.ad = load i8, ptr %i.ac, align 8, !range !8, !noalias !27, !noundef !5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !27
  store ptr %i.f, ptr %i.b, align 8, !noalias !27
  call void @_RNvXsO_NtCsgCecv3eZDcN_5alloc4syncINtB5_4WeakNtCskVIURZGHVHJ_12tensor_tools12QuantizationENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropBJ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b), !noalias !27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !27
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %_RNCINvMNtNtCsflt7xRw9JFr_12clap_builder4util9any_valueNtB5_8AnyValue13downcast_intoNtCskVIURZGHVHJ_12tensor_tools12QuantizationE0B1l_.exit
  %.sroa.06.0 = phi i8 [ %.val.i, %_RNCINvMNtNtCsflt7xRw9JFr_12clap_builder4util9any_valueNtB5_8AnyValue13downcast_intoNtCskVIURZGHVHJ_12tensor_tools12QuantizationE0B1l_.exit ], [ %i.ad, %bb.i ]
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 %.sroa.06.0, ptr %i.ae, align 8
  store ptr null, ptr %0, align 8
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.e
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMNtNtCsflt7xRw9JFr_12clap_builder4util9any_valueNtB3_8AnyValue13downcast_intoNtCskVIURZGHVHJ_12tensor_tools16QuantizationModeEB1j_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [16 x i8], align 16               ; 4 uses
  %i.d = alloca [16 x i8], align 8                ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.f = load ptr, ptr %1, align 8, !nonnull !5, !noundef !5 ; 7 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !nonnull !5, !align !6, !noundef !5 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !40)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %i.f, ptr %i.d, align 8, !noalias !41
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %i.h, ptr %i.i, align 8, !noalias !41
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.k = load i64, ptr %i.j, align 8, !range !7, !invariant.load !5, !alias.scope !40
  %i.l = add nsw i64 %i.k, -1
  %i.m = and i64 %i.l, -16
  %i.n = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.m
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !41
  %i.p = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.q = load ptr, ptr %i.p, align 8, !invariant.load !5, !alias.scope !40, !nonnull !5
  invoke void %i.q(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.c, ptr noundef nonnull %i.o)
          to label %_RINvMsF_NtCsgCecv3eZDcN_5alloc4syncINtB6_3ArcDNtNtCsf3Ta7LF998c_4core3any3AnyNtNtBM_6marker4SendNtB1f_4SyncEL_E8downcastNtCskVIURZGHVHJ_12tensor_tools16QuantizationModeEB1W_.exit unwind label %bb.b, !noalias !42

bb.b:                                             ; preds = %bb.a
  %i.r = landingpad { ptr, i32 }
          cleanup
  %i.s = atomicrmw add ptr %i.f, i64 -1 release, align 8, !noalias !43
  %i.t = icmp eq i64 %i.s, 1
  br i1 %i.t, label %bb.c, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcDNtNtB4_3any3AnyNtNtB4_6marker4SendNtB1r_4SyncEL_EECskVIURZGHVHJ_12tensor_tools.exit.i

bb.c:                                             ; preds = %bb.b
  fence acquire
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcDNtNtCsf3Ta7LF998c_4core3any3AnyNtNtBL_6marker4SendNtB1e_4SyncEL_E9drop_slowCsflt7xRw9JFr_12clap_builder(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.d) #21
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcDNtNtB4_3any3AnyNtNtB4_6marker4SendNtB1r_4SyncEL_EECskVIURZGHVHJ_12tensor_tools.exit.i unwind label %bb.d, !noalias !42

bb.d:                                             ; preds = %bb.c
  %i.u = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #22, !noalias !42
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcDNtNtB4_3any3AnyNtNtB4_6marker4SendNtB1r_4SyncEL_EECskVIURZGHVHJ_12tensor_tools.exit.i: ; preds = %bb.c, %bb.b
  resume { ptr, i32 } %i.r

_RINvMsF_NtCsgCecv3eZDcN_5alloc4syncINtB6_3ArcDNtNtCsf3Ta7LF998c_4core3any3AnyNtNtBM_6marker4SendNtB1f_4SyncEL_E8downcastNtCskVIURZGHVHJ_12tensor_tools16QuantizationModeEB1W_.exit: ; preds = %bb.a
  %i.v = load i128, ptr %i.c, align 16, !noalias !41, !noundef !5
  %i.w = icmp eq i128 %i.v, -163119010002713980556253189098301991513
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !41
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br i1 %i.w, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_RINvMsF_NtCsgCecv3eZDcN_5alloc4syncINtB6_3ArcDNtNtCsf3Ta7LF998c_4core3any3AnyNtNtBM_6marker4SendNtB1f_4SyncEL_E8downcastNtCskVIURZGHVHJ_12tensor_tools16QuantizationModeEB1W_.exit
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %i.e, i64 16, i1 false)
  store ptr %i.f, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.h, ptr %.sroa.4.0..sroa_idx, align 8
  br label %bb.i

bb.f:                                             ; preds = %_RINvMsF_NtCsgCecv3eZDcN_5alloc4syncINtB6_3ArcDNtNtCsf3Ta7LF998c_4core3any3AnyNtNtBM_6marker4SendNtB1f_4SyncEL_E8downcastNtCskVIURZGHVHJ_12tensor_tools16QuantizationModeEB1W_.exit
  %i.x = cmpxchg ptr %i.f, i64 1, i64 0 monotonic monotonic, align 8
  %i.y = extractvalue { i64, i1 } %i.x, 1
  br i1 %i.y, label %_RNvMsf_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtCskVIURZGHVHJ_12tensor_tools16QuantizationModeE10try_unwrapBI_.exit.thread, label %_RNvMsf_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtCskVIURZGHVHJ_12tensor_tools16QuantizationModeE10try_unwrapBI_.exit

_RNvMsf_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtCskVIURZGHVHJ_12tensor_tools16QuantizationModeE10try_unwrapBI_.exit.thread: ; preds = %bb.f
  fence acquire
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.f, ptr %i.b, align 8
  call void @_RNvXsO_NtCsgCecv3eZDcN_5alloc4syncINtB5_4WeakNtCskVIURZGHVHJ_12tensor_tools16QuantizationModeENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropBJ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %_RNvMsf_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtCskVIURZGHVHJ_12tensor_tools16QuantizationModeE10try_unwrapBI_.exit

_RNvMsf_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtCskVIURZGHVHJ_12tensor_tools16QuantizationModeE10try_unwrapBI_.exit: ; preds = %bb.f, %_RNvMsf_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtCskVIURZGHVHJ_12tensor_tools16QuantizationModeE10try_unwrapBI_.exit.thread
  %.sroa.0.0.i = phi ptr [ null, %_RNvMsf_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtCskVIURZGHVHJ_12tensor_tools16QuantizationModeE10try_unwrapBI_.exit.thread ], [ %i.f, %bb.f ] ; 3 uses
  %.not11 = icmp eq ptr %.sroa.0.0.i, null
  br i1 %.not11, label %bb.h, label %_RNvMsf_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtCskVIURZGHVHJ_12tensor_tools16QuantizationModeE10try_unwrapBI_.exit.a

_RNvMsf_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtCskVIURZGHVHJ_12tensor_tools16QuantizationModeE10try_unwrapBI_.exit.a: ; preds = %_RNvMsf_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtCskVIURZGHVHJ_12tensor_tools16QuantizationModeE10try_unwrapBI_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %.sroa.0.0.i, ptr %i.a, align 8
  %i.z = atomicrmw add ptr %.sroa.0.0.i, i64 -1 release, align 8, !noalias !44
  %i.aa = icmp eq i64 %i.z, 1
  br i1 %i.aa, label %bb.g, label %_RNCINvMNtNtCsflt7xRw9JFr_12clap_builder4util9any_valueNtB5_8AnyValue13downcast_intoNtCskVIURZGHVHJ_12tensor_tools16QuantizationModeE0B1l_.exit

bb.g:                                             ; preds = %_RNvMsf_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtCskVIURZGHVHJ_12tensor_tools16QuantizationModeE10try_unwrapBI_.exit.a
  fence acquire
  call void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtCskVIURZGHVHJ_12tensor_tools16QuantizationModeE9drop_slowBI_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.a) #21
  br label %_RNCINvMNtNtCsflt7xRw9JFr_12clap_builder4util9any_valueNtB5_8AnyValue13downcast_intoNtCskVIURZGHVHJ_12tensor_tools16QuantizationModeE0B1l_.exit

_RNCINvMNtNtCsflt7xRw9JFr_12clap_builder4util9any_valueNtB5_8AnyValue13downcast_intoNtCskVIURZGHVHJ_12tensor_tools16QuantizationModeE0B1l_.exit: ; preds = %_RNvMsf_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtCskVIURZGHVHJ_12tensor_tools16QuantizationModeE10try_unwrapBI_.exit.a, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.h

bb.h:                                             ; preds = %_RNvMsf_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtCskVIURZGHVHJ_12tensor_tools16QuantizationModeE10try_unwrapBI_.exit, %_RNCINvMNtNtCsflt7xRw9JFr_12clap_builder4util9any_valueNtB5_8AnyValue13downcast_intoNtCskVIURZGHVHJ_12tensor_tools16QuantizationModeE0B1l_.exit
  store ptr null, ptr %0, align 8
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.e
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMNtNtCsflt7xRw9JFr_12clap_builder4util9any_valueNtB3_8AnyValue13downcast_intoNtCskVIURZGHVHJ_12tensor_tools6FormatEB1j_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [16 x i8], align 16               ; 4 uses
  %i.d = alloca [16 x i8], align 8                ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.f = load ptr, ptr %1, align 8, !nonnull !5, !noundef !5 ; 10 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !nonnull !5, !align !6, !noundef !5 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !58)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %i.f, ptr %i.d, align 8, !noalias !59
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %i.h, ptr %i.i, align 8, !noalias !59
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.k = load i64, ptr %i.j, align 8, !range !7, !invariant.load !5, !alias.scope !58
  %i.l = add nsw i64 %i.k, -1
  %i.m = and i64 %i.l, -16
  %i.n = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.m
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !59
  %i.p = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.q = load ptr, ptr %i.p, align 8, !invariant.load !5, !alias.scope !58, !nonnull !5
  invoke void %i.q(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.c, ptr noundef nonnull %i.o)
          to label %_RINvMsF_NtCsgCecv3eZDcN_5alloc4syncINtB6_3ArcDNtNtCsf3Ta7LF998c_4core3any3AnyNtNtBM_6marker4SendNtB1f_4SyncEL_E8downcastNtCskVIURZGHVHJ_12tensor_tools6FormatEB1W_.exit unwind label %bb.b, !noalias !60

bb.b:                                             ; preds = %bb.a
  %i.r = landingpad { ptr, i32 }
          cleanup
  %i.s = atomicrmw add ptr %i.f, i64 -1 release, align 8, !noalias !61
  %i.t = icmp eq i64 %i.s, 1
  br i1 %i.t, label %bb.c, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcDNtNtB4_3any3AnyNtNtB4_6marker4SendNtB1r_4SyncEL_EECskVIURZGHVHJ_12tensor_tools.exit.i

bb.c:                                             ; preds = %bb.b
  fence acquire
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcDNtNtCsf3Ta7LF998c_4core3any3AnyNtNtBL_6marker4SendNtB1e_4SyncEL_E9drop_slowCsflt7xRw9JFr_12clap_builder(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.d) #21
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcDNtNtB4_3any3AnyNtNtB4_6marker4SendNtB1r_4SyncEL_EECskVIURZGHVHJ_12tensor_tools.exit.i unwind label %bb.d, !noalias !60

bb.d:                                             ; preds = %bb.c
  %i.u = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #22, !noalias !60
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcDNtNtB4_3any3AnyNtNtB4_6marker4SendNtB1r_4SyncEL_EECskVIURZGHVHJ_12tensor_tools.exit.i: ; preds = %bb.c, %bb.b
  resume { ptr, i32 } %i.r

_RINvMsF_NtCsgCecv3eZDcN_5alloc4syncINtB6_3ArcDNtNtCsf3Ta7LF998c_4core3any3AnyNtNtBM_6marker4SendNtB1f_4SyncEL_E8downcastNtCskVIURZGHVHJ_12tensor_tools6FormatEB1W_.exit: ; preds = %bb.a
  %i.v = load i128, ptr %i.c, align 16, !noalias !59, !noundef !5
  %i.w = icmp eq i128 %i.v, 19822010097562297744645110261528321476
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !59
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br i1 %i.w, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_RINvMsF_NtCsgCecv3eZDcN_5alloc4syncINtB6_3ArcDNtNtCsf3Ta7LF998c_4core3any3AnyNtNtBM_6marker4SendNtB1f_4SyncEL_E8downcastNtCskVIURZGHVHJ_12tensor_tools6FormatEB1W_.exit
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %i.e, i64 16, i1 false)
  store ptr %i.f, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.h, ptr %.sroa.4.0..sroa_idx, align 8
  br label %bb.k

bb.f:                                             ; preds = %_RINvMsF_NtCsgCecv3eZDcN_5alloc4syncINtB6_3ArcDNtNtCsf3Ta7LF998c_4core3any3AnyNtNtBM_6marker4SendNtB1f_4SyncEL_E8downcastNtCskVIURZGHVHJ_12tensor_tools6FormatEB1W_.exit
  %i.x = cmpxchg ptr %i.f, i64 1, i64 0 monotonic monotonic, align 8, !noalias !62
  %i.y = extractvalue { i64, i1 } %i.x, 1
  br i1 %i.y, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.f, ptr %i.a, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %.val.i = load i8, ptr %i.z, align 1, !range !63, !noundef !5
  %i.aa = atomicrmw add ptr %i.f, i64 -1 release, align 8, !noalias !64
  %i.ab = icmp eq i64 %i.aa, 1
  br i1 %i.ab, label %bb.h, label %_RNCINvMNtNtCsflt7xRw9JFr_12clap_builder4util9any_valueNtB5_8AnyValue13downcast_intoNtCskVIURZGHVHJ_12tensor_tools6FormatE0B1l_.exit

bb.h:                                             ; preds = %bb.g
  fence acquire
  call void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtCskVIURZGHVHJ_12tensor_tools6FormatE9drop_slowBI_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.a) #21
  br label %_RNCINvMNtNtCsflt7xRw9JFr_12clap_builder4util9any_valueNtB5_8AnyValue13downcast_intoNtCskVIURZGHVHJ_12tensor_tools6FormatE0B1l_.exit

_RNCINvMNtNtCsflt7xRw9JFr_12clap_builder4util9any_valueNtB5_8AnyValue13downcast_intoNtCskVIURZGHVHJ_12tensor_tools6FormatE0B1l_.exit: ; preds = %bb.g, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.j

bb.i:                                             ; preds = %bb.f
  fence acquire
  %i.ac = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.ad = load i8, ptr %i.ac, align 8, !range !63, !noalias !62, !noundef !5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !62
  store ptr %i.f, ptr %i.b, align 8, !noalias !62
  call void @_RNvXsO_NtCsgCecv3eZDcN_5alloc4syncINtB5_4WeakNtCskVIURZGHVHJ_12tensor_tools6FormatENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropBJ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b), !noalias !62
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !62
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %_RNCINvMNtNtCsflt7xRw9JFr_12clap_builder4util9any_valueNtB5_8AnyValue13downcast_intoNtCskVIURZGHVHJ_12tensor_tools6FormatE0B1l_.exit
  %.sroa.06.0 = phi i8 [ %.val.i, %_RNCINvMNtNtCsflt7xRw9JFr_12clap_builder4util9any_valueNtB5_8AnyValue13downcast_intoNtCskVIURZGHVHJ_12tensor_tools6FormatE0B1l_.exit ], [ %i.ad, %bb.i ]
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 %.sroa.06.0, ptr %i.ae, align 8
  store ptr null, ptr %0, align 8
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.e
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMNtNtCsflt7xRw9JFr_12clap_builder4util9any_valueNtB3_8AnyValue13downcast_intoNtNtCs5Xr050g3D4S_3std4path7PathBufECskVIURZGHVHJ_12tensor_tools(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 5 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [16 x i8], align 16               ; 4 uses
  %i.d = alloca [16 x i8], align 8                ; 5 uses
  %i.e = alloca [24 x i8], align 8                ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.g = load ptr, ptr %1, align 8, !nonnull !5, !noundef !5 ; 10 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !nonnull !5, !align !6, !noundef !5 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !84)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %i.g, ptr %i.d, align 8, !noalias !85
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %i.i, ptr %i.j, align 8, !noalias !85
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.l = load i64, ptr %i.k, align 8, !range !7, !invariant.load !5, !alias.scope !84
  %i.m = add nsw i64 %i.l, -1
  %i.n = and i64 %i.m, -16
  %i.o = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.n
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !85
  %i.q = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.r = load ptr, ptr %i.q, align 8, !invariant.load !5, !alias.scope !84, !nonnull !5
  invoke void %i.r(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.c, ptr noundef nonnull %i.p)
          to label %_RINvMsF_NtCsgCecv3eZDcN_5alloc4syncINtB6_3ArcDNtNtCsf3Ta7LF998c_4core3any3AnyNtNtBM_6marker4SendNtB1f_4SyncEL_E8downcastNtNtCs5Xr050g3D4S_3std4path7PathBufECskVIURZGHVHJ_12tensor_tools.exit unwind label %bb.b, !noalias !86

bb.b:                                             ; preds = %bb.a
  %i.s = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.t = atomicrmw add ptr %i.g, i64 -1 release, align 8, !noalias !87
  %i.u = icmp eq i64 %i.t, 1
  br i1 %i.u, label %bb.c, label %common.resume

bb.c:                                             ; preds = %bb.b
  fence acquire
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcDNtNtCsf3Ta7LF998c_4core3any3AnyNtNtBL_6marker4SendNtB1e_4SyncEL_E9drop_slowCsflt7xRw9JFr_12clap_builder(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.d) #21
          to label %common.resume unwind label %bb.d, !noalias !86

bb.d:                                             ; preds = %bb.c
  %i.v = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #22, !noalias !86
  unreachable

common.resume:                                    ; preds = %bb.g, %bb.h, %bb.b, %bb.c
  %common.resume.op = phi { ptr, i32 } [ %i.s, %bb.b ], [ %i.s, %bb.c ], [ %i.ad, %bb.h ], [ %i.ad, %bb.g ]
  resume { ptr, i32 } %common.resume.op

_RINvMsF_NtCsgCecv3eZDcN_5alloc4syncINtB6_3ArcDNtNtCsf3Ta7LF998c_4core3any3AnyNtNtBM_6marker4SendNtB1f_4SyncEL_E8downcastNtNtCs5Xr050g3D4S_3std4path7PathBufECskVIURZGHVHJ_12tensor_tools.exit: ; preds = %bb.a
  %i.w = load i128, ptr %i.c, align 16, !noalias !85, !noundef !5
  %i.x = icmp eq i128 %i.w, 158017650464470940629753290897230298988
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !85
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br i1 %i.x, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_RINvMsF_NtCsgCecv3eZDcN_5alloc4syncINtB6_3ArcDNtNtCsf3Ta7LF998c_4core3any3AnyNtNtBM_6marker4SendNtB1f_4SyncEL_E8downcastNtNtCs5Xr050g3D4S_3std4path7PathBufECskVIURZGHVHJ_12tensor_tools.exit
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %i.f, i64 16, i1 false)
  store ptr %i.g, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.i, ptr %.sroa.4.0..sroa_idx, align 8
  br label %bb.m

bb.f:                                             ; preds = %_RINvMsF_NtCsgCecv3eZDcN_5alloc4syncINtB6_3ArcDNtNtCsf3Ta7LF998c_4core3any3AnyNtNtBM_6marker4SendNtB1f_4SyncEL_E8downcastNtNtCs5Xr050g3D4S_3std4path7PathBufECskVIURZGHVHJ_12tensor_tools.exit
  %i.y = cmpxchg ptr %i.g, i64 1, i64 0 monotonic monotonic, align 8, !noalias !88
  %i.z = extractvalue { i64, i1 } %i.y, 1
  br i1 %i.z, label %_RNvMsf_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCs5Xr050g3D4S_3std4path7PathBufE10try_unwrapCskVIURZGHVHJ_12tensor_tools.exit, label %_RNvMsf_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCs5Xr050g3D4S_3std4path7PathBufE10try_unwrapCskVIURZGHVHJ_12tensor_tools.exit.thread

_RNvMsf_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCs5Xr050g3D4S_3std4path7PathBufE10try_unwrapCskVIURZGHVHJ_12tensor_tools.exit: ; preds = %bb.f
  fence acquire
  %i.aa = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %.sroa.011.0.copyload12 = load i64, ptr %i.aa, align 8 ; 2 uses
  %.sroa.6.0..sroa_idx13 = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %.sroa.6.0.copyload14 = load ptr, ptr %.sroa.6.0..sroa_idx13, align 8 ; 2 uses
  %.sroa.815.0..sroa_idx16 = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %.sroa.815.0.copyload17 = load i64, ptr %.sroa.815.0..sroa_idx16, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !88
  store ptr %i.g, ptr %i.b, align 8, !noalias !88
  call void @_RNvXsO_NtCsgCecv3eZDcN_5alloc4syncINtB5_4WeakNtNtCs5Xr050g3D4S_3std4path7PathBufENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCskVIURZGHVHJ_12tensor_tools(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b), !noalias !88
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !88
  %i.ab = icmp eq i64 %.sroa.011.0.copyload12, -1
  br i1 %i.ab, label %_RNvMsf_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCs5Xr050g3D4S_3std4path7PathBufE10try_unwrapCskVIURZGHVHJ_12tensor_tools.exit.thread, label %bb.k
end_hunk_0
