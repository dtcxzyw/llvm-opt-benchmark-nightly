Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/foundations-rs/original/foundations-0829c0e58918e871.foundations.822e5dc8be635b49-cgu.05?download=true
inline.NumInlined: 1337
inline.NumDeleted: 619
loop-unroll.NumCompletelyUnrolled: 22
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 24
begin_hunk_0_@_RNvNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry7tracing24output_jaeger_thrift_udp7logging16is_msgsize_error:bb.a
    i64 0, label %bb.f
    i64 1, label %bb.f
  ], !dbg !9472, !prof !577

default.unreachable:                              ; preds = %bb.c
  unreachable

bb.d:                                             ; preds = %bb.c
  %i.o = icmp ult ptr %i.l, inttoptr (i64 188978561024 to ptr), !dbg !9473
  %i.p = and i64 %i.m, 1095216660480, !dbg !9474
  %i.q = icmp ne i64 %i.p, 1095216660480, !dbg !9474
  call void @llvm.assume(i1 %i.o), !dbg !9475
  call void @llvm.assume(i1 %i.q), !dbg !9475
  br label %bb.f, !dbg !9476

bb.e:                                             ; preds = %bb.c
  %.mask = and i64 %i.m, -4294967296, !dbg !9477
  %i.r = icmp eq i64 %.mask, 386547056640, !dbg !9477
  br label %bb.f, !dbg !9478

bb.f:                                             ; preds = %bb.c, %bb.c, %bb.d, %bb.a, %bb.b, %bb.e
  %.sroa.0.0 = phi i1 [ %i.r, %bb.e ], [ false, %bb.b ], [ false, %bb.a ], [ false, %bb.c ], [ false, %bb.d ], [ false, %bb.c ], !dbg !9479
  ret i1 %.sroa.0.0, !dbg !9480
}

; Function Attrs: nonlazybind uwtable
define void @_RNvNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry7tracing24output_jaeger_thrift_udp7logging22log_span_too_large_err(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(224) %1) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !9481 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 7 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  %i.d = alloca [16 x i8], align 8                ; 5 uses
  %i.e = alloca [48 x i8], align 8                ; 9 uses
  %i.f = alloca [24 x i8], align 8                ; 2 uses
  %i.g = alloca [32 x i8], align 8                ; 7 uses
  %i.h = alloca [24 x i8], align 8                ; 2 uses
  %i.i = alloca [40 x i8], align 8                ; 7 uses
  %i.j = alloca [144 x i8], align 8               ; 17 uses
  %i.k = alloca [16 x i8], align 8                ; 5 uses
  %i.l = alloca [32 x i8], align 8                ; 7 uses
  %i.m = alloca [8 x i8], align 8                 ; 7 uses
  %i.n = alloca [24 x i8], align 8                ; 11 uses
  %i.o = alloca [8 x i8], align 8                 ; 4 uses
  %i.p = alloca [8 x i8], align 8                 ; 4 uses
  %i.q = alloca [8 x i8], align 8                 ; 5 uses
  %i.r = alloca [8 x i8], align 8                 ; 4 uses
  %i.s = alloca [8 x i8], align 8                 ; 2 uses
  store ptr %0, ptr %i.s, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !dbg !9855
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 40, !dbg !9856
  %i.u = load i64, ptr %i.t, align 8, !dbg !9856, !noundef !494 ; 4 uses
  store i64 %i.u, ptr %i.r, align 8, !dbg !9857
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !dbg !9858
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !9859
  %i.w = load ptr, ptr %i.v, align 8, !dbg !9859, !nonnull !494, !noundef !494 ; 7 uses
  %.idx = mul nuw nsw i64 %i.u, 48, !dbg !9860
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 %.idx, !dbg !9860
  %i.y = icmp eq i64 %i.u, 0, !dbg !9861
  br i1 %i.y, label %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterNtNtCs26L2cHvO7VQ_13cf_rustracing3tag3TagENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB1C_8adapters3map8map_foldRBQ_jjNvNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry7tracing24output_jaeger_thrift_udp7logging8tag_sizeNCINvXsK_NtB1A_5accumjNtB4F_3Sum3sumINtB2m_3MapBF_B2W_EE0E0EB36_.exit.thread, label %.preheader91, !dbg !9862

_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterNtNtCs26L2cHvO7VQ_13cf_rustracing3tag3TagENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB1C_8adapters3map8map_foldRBQ_jjNvNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry7tracing24output_jaeger_thrift_udp7logging8tag_sizeNCINvXsK_NtB1A_5accumjNtB4F_3Sum3sumINtB2m_3MapBF_B2W_EE0E0EB36_.exit.thread: ; preds = %bb.a
  store i64 0, ptr %i.q, align 8, !dbg !9863
  br label %_RINvYINtNtNtCs3oUPovFnLWP_4core5slice4iter4IterNtNtCs26L2cHvO7VQ_13cf_rustracing3tag3TagENtNtNtNtBa_4iter6traits8iterator8Iterator10max_by_keyjNCNvNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry7tracing24output_jaeger_thrift_udp7logging22log_span_too_large_err0EB2t_.exit, !dbg !9864

.preheader91:                                     ; preds = %bb.a, %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRNtNtCs26L2cHvO7VQ_13cf_rustracing3tag3TagjjNvNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry7tracing24output_jaeger_thrift_udp7logging8tag_sizeNCINvXsK_NtNtB8_6traits5accumjNtB3l_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB1C_EE0E0B1M_.exit.i
  %.sroa.04.0.i = phi i64 [ %i.ah, %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRNtNtCs26L2cHvO7VQ_13cf_rustracing3tag3TagjjNvNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry7tracing24output_jaeger_thrift_udp7logging8tag_sizeNCINvXsK_NtNtB8_6traits5accumjNtB3l_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB1C_EE0E0B1M_.exit.i ], [ 0, %bb.a ], !dbg !9865 ; 2 uses
  %.sroa.02.0.i = phi i64 [ %i.ag, %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRNtNtCs26L2cHvO7VQ_13cf_rustracing3tag3TagjjNvNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry7tracing24output_jaeger_thrift_udp7logging8tag_sizeNCINvXsK_NtNtB8_6traits5accumjNtB3l_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB1C_EE0E0B1M_.exit.i ], [ 0, %bb.a ], !dbg !9866
  %i.z = getelementptr inbounds nuw [48 x i8], ptr %i.w, i64 %.sroa.04.0.i, !dbg !9867 ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 24, !dbg !9868
  %i.ab = load i64, ptr %i.aa, align 8, !dbg !9868, !range !9763, !alias.scope !9764, !noundef !494 ; 2 uses
  %i.ac = icmp slt i64 %i.ab, -9223372036854775805, !dbg !9868
  %i.ad = add i64 %i.ab, -9223372036854775807, !dbg !9868
  %i.ae = select i1 %i.ac, i64 %i.ad, i64 0, !dbg !9868 ; 2 uses
  switch i64 %i.ae, label %bb.b [
    i64 0, label %bb.d
    i64 1, label %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRNtNtCs26L2cHvO7VQ_13cf_rustracing3tag3TagjjNvNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry7tracing24output_jaeger_thrift_udp7logging8tag_sizeNCINvXsK_NtNtB8_6traits5accumjNtB3l_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB1C_EE0E0B1M_.exit.i
    i64 2, label %bb.c
    i64 3, label %bb.c
  ], !dbg !9869

bb.b:                                             ; preds = %.preheader91
  unreachable, !dbg !9870

bb.c:                                             ; preds = %.preheader91, %.preheader91
  br label %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRNtNtCs26L2cHvO7VQ_13cf_rustracing3tag3TagjjNvNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry7tracing24output_jaeger_thrift_udp7logging8tag_sizeNCINvXsK_NtNtB8_6traits5accumjNtB3l_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB1C_EE0E0B1M_.exit.i, !dbg !9871

bb.d:                                             ; preds = %.preheader91
  %.sroa.3.0.in.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.z, i64 40, !dbg !9872
  %.sroa.3.0.i.i.i.i = load i64, ptr %.sroa.3.0.in.i.i.i.i, align 8, !dbg !9872, !alias.scope !9764, !noundef !494
  br label %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRNtNtCs26L2cHvO7VQ_13cf_rustracing3tag3TagjjNvNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry7tracing24output_jaeger_thrift_udp7logging8tag_sizeNCINvXsK_NtNtB8_6traits5accumjNtB3l_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB1C_EE0E0B1M_.exit.i, !dbg !9873

_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRNtNtCs26L2cHvO7VQ_13cf_rustracing3tag3TagjjNvNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry7tracing24output_jaeger_thrift_udp7logging8tag_sizeNCINvXsK_NtNtB8_6traits5accumjNtB3l_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB1C_EE0E0B1M_.exit.i: ; preds = %bb.d, %bb.c, %.preheader91
  %.sroa.0.0.i.i.i.i = phi i64 [ %.sroa.3.0.i.i.i.i, %bb.d ], [ %i.ae, %.preheader91 ], [ 8, %bb.c ], !dbg !9874
  %.sroa.33.0.in.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.z, i64 16, !dbg !9875
  %.sroa.33.0.i.i.i.i = load i64, ptr %.sroa.33.0.in.i.i.i.i, align 8, !dbg !9875, !alias.scope !9764, !noundef !494
  %i.af = add i64 %.sroa.0.0.i.i.i.i, %.sroa.02.0.i, !dbg !9876
  %i.ag = add i64 %i.af, %.sroa.33.0.i.i.i.i, !dbg !9877 ; 2 uses
  %i.ah = add nuw i64 %.sroa.04.0.i, 1, !dbg !9878 ; 2 uses
  %i.ai = icmp eq i64 %i.ah, %i.u, !dbg !9879
  br i1 %i.ai, label %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterNtNtCs26L2cHvO7VQ_13cf_rustracing3tag3TagENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB1C_8adapters3map8map_foldRBQ_jjNvNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry7tracing24output_jaeger_thrift_udp7logging8tag_sizeNCINvXsK_NtB1A_5accumjNtB4F_3Sum3sumINtB2m_3MapBF_B2W_EE0E0EB36_.exit, label %.preheader91, !dbg !9879

_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterNtNtCs26L2cHvO7VQ_13cf_rustracing3tag3TagENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB1C_8adapters3map8map_foldRBQ_jjNvNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry7tracing24output_jaeger_thrift_udp7logging8tag_sizeNCINvXsK_NtB1A_5accumjNtB4F_3Sum3sumINtB2m_3MapBF_B2W_EE0E0EB36_.exit: ; preds = %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRNtNtCs26L2cHvO7VQ_13cf_rustracing3tag3TagjjNvNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry7tracing24output_jaeger_thrift_udp7logging8tag_sizeNCINvXsK_NtNtB8_6traits5accumjNtB3l_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB1C_EE0E0B1M_.exit.i
  store i64 %i.ag, ptr %i.q, align 8, !dbg !9863
  %i.aj = getelementptr inbounds nuw i8, ptr %i.w, i64 48, !dbg !9880
  %i.ak = getelementptr inbounds nuw i8, ptr %i.w, i64 24, !dbg !9881
  %i.al = load i64, ptr %i.ak, align 8, !dbg !9881, !range !9763, !alias.scope !9777, !noalias !9778, !noundef !494 ; 2 uses
  %i.am = icmp slt i64 %i.al, -9223372036854775805, !dbg !9881
  %i.an = add i64 %i.al, -9223372036854775807, !dbg !9881
  %i.ao = select i1 %i.am, i64 %i.an, i64 0, !dbg !9881 ; 2 uses
  switch i64 %i.ao, label %bb.e [
    i64 0, label %bb.g
    i64 1, label %bb.h
    i64 2, label %bb.f
    i64 3, label %bb.f
  ], !dbg !9882

bb.e:                                             ; preds = %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterNtNtCs26L2cHvO7VQ_13cf_rustracing3tag3TagENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB1C_8adapters3map8map_foldRBQ_jjNvNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry7tracing24output_jaeger_thrift_udp7logging8tag_sizeNCINvXsK_NtB1A_5accumjNtB4F_3Sum3sumINtB2m_3MapBF_B2W_EE0E0EB36_.exit
  unreachable, !dbg !9883

bb.f:                                             ; preds = %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterNtNtCs26L2cHvO7VQ_13cf_rustracing3tag3TagENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB1C_8adapters3map8map_foldRBQ_jjNvNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry7tracing24output_jaeger_thrift_udp7logging8tag_sizeNCINvXsK_NtB1A_5accumjNtB4F_3Sum3sumINtB2m_3MapBF_B2W_EE0E0EB36_.exit, %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterNtNtCs26L2cHvO7VQ_13cf_rustracing3tag3TagENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB1C_8adapters3map8map_foldRBQ_jjNvNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry7tracing24output_jaeger_thrift_udp7logging8tag_sizeNCINvXsK_NtB1A_5accumjNtB4F_3Sum3sumINtB2m_3MapBF_B2W_EE0E0EB36_.exit
  br label %bb.h, !dbg !9884

bb.g:                                             ; preds = %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterNtNtCs26L2cHvO7VQ_13cf_rustracing3tag3TagENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB1C_8adapters3map8map_foldRBQ_jjNvNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry7tracing24output_jaeger_thrift_udp7logging8tag_sizeNCINvXsK_NtB1A_5accumjNtB4F_3Sum3sumINtB2m_3MapBF_B2W_EE0E0EB36_.exit
  %.sroa.3.0.in.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.w, i64 40, !dbg !9885
  %.sroa.3.0.i.i.i.i.i.i = load i64, ptr %.sroa.3.0.in.i.i.i.i.i.i, align 8, !dbg !9885, !alias.scope !9777, !noalias !9778, !noundef !494
  br label %bb.h, !dbg !9886

bb.h:                                             ; preds = %bb.g, %bb.f, %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterNtNtCs26L2cHvO7VQ_13cf_rustracing3tag3TagENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB1C_8adapters3map8map_foldRBQ_jjNvNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry7tracing24output_jaeger_thrift_udp7logging8tag_sizeNCINvXsK_NtB1A_5accumjNtB4F_3Sum3sumINtB2m_3MapBF_B2W_EE0E0EB36_.exit
  %.sroa.0.0.i.i.i.i.i.i = phi i64 [ %.sroa.3.0.i.i.i.i.i.i, %bb.g ], [ %i.ao, %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterNtNtCs26L2cHvO7VQ_13cf_rustracing3tag3TagENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB1C_8adapters3map8map_foldRBQ_jjNvNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry7tracing24output_jaeger_thrift_udp7logging8tag_sizeNCINvXsK_NtB1A_5accumjNtB4F_3Sum3sumINtB2m_3MapBF_B2W_EE0E0EB36_.exit ], [ 8, %bb.f ], !dbg !9887
  %.sroa.33.0.in.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.w, i64 16, !dbg !9888
  %.sroa.33.0.i.i.i.i.i.i = load i64, ptr %.sroa.33.0.in.i.i.i.i.i.i, align 8, !dbg !9888, !alias.scope !9777, !noalias !9778, !noundef !494
  %i.ap = add i64 %.sroa.33.0.i.i.i.i.i.i, %.sroa.0.0.i.i.i.i.i.i, !dbg !9889
  %i.aq = tail call { ptr, i64 } @_RINvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterNtNtCs26L2cHvO7VQ_13cf_rustracing3tag3TagENCINvNvNtNtNtBa_6traits8iterator8Iterator10max_by_key3keyRB1n_jNCNvNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry7tracing24output_jaeger_thrift_udp7logging22log_span_too_large_err0E0EB2a_4foldINtNtBc_3cmp11KeyAndValuejB2Y_ENvYB58_NtB5b_3Ord3maxEB3g_(ptr noundef nonnull %i.aj, ptr noundef nonnull %i.x, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.w, i64 noundef %i.ap), !dbg !9890
  %i.ar = extractvalue { ptr, i64 } %i.aq, 0, !dbg !9890
  br label %_RINvYINtNtNtCs3oUPovFnLWP_4core5slice4iter4IterNtNtCs26L2cHvO7VQ_13cf_rustracing3tag3TagENtNtNtNtBa_4iter6traits8iterator8Iterator10max_by_keyjNCNvNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry7tracing24output_jaeger_thrift_udp7logging22log_span_too_large_err0EB2t_.exit, !dbg !9891

_RINvYINtNtNtCs3oUPovFnLWP_4core5slice4iter4IterNtNtCs26L2cHvO7VQ_13cf_rustracing3tag3TagENtNtNtNtBa_4iter6traits8iterator8Iterator10max_by_keyjNCNvNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry7tracing24output_jaeger_thrift_udp7logging22log_span_too_large_err0EB2t_.exit: ; preds = %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterNtNtCs26L2cHvO7VQ_13cf_rustracing3tag3TagENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB1C_8adapters3map8map_foldRBQ_jjNvNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry7tracing24output_jaeger_thrift_udp7logging8tag_sizeNCINvXsK_NtB1A_5accumjNtB4F_3Sum3sumINtB2m_3MapBF_B2W_EE0E0EB36_.exit.thread, %bb.h
  %.sroa.0.0.i.i = phi ptr [ %i.ar, %bb.h ], [ null, %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterNtNtCs26L2cHvO7VQ_13cf_rustracing3tag3TagENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB1C_8adapters3map8map_foldRBQ_jjNvNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry7tracing24output_jaeger_thrift_udp7logging8tag_sizeNCINvXsK_NtB1A_5accumjNtB4F_3Sum3sumINtB2m_3MapBF_B2W_EE0E0EB36_.exit.thread ], !dbg !9892 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !dbg !9893
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 64, !dbg !9894
  %i.at = load i64, ptr %i.as, align 8, !dbg !9894, !noundef !494 ; 3 uses
  store i64 %i.at, ptr %i.p, align 8, !dbg !9895
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !dbg !9896
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 56, !dbg !9897
  %i.av = load ptr, ptr %i.au, align 8, !dbg !9897, !nonnull !494, !noundef !494
  %i.aw = icmp eq i64 %i.at, 0, !dbg !9898
  br i1 %i.aw, label %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterNtNtCs26L2cHvO7VQ_13cf_rustracing3log3LogENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB1C_8adapters3map8map_foldRBQ_jjNvNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry7tracing24output_jaeger_thrift_udp7logging8log_sizeNCINvXsK_NtB1A_5accumjNtB4F_3Sum3sumINtB2m_3MapBF_B2W_EE0E0EB36_.exit, label %.preheader, !dbg !9899

.preheader:                                       ; preds = %_RINvYINtNtNtCs3oUPovFnLWP_4core5slice4iter4IterNtNtCs26L2cHvO7VQ_13cf_rustracing3tag3TagENtNtNtNtBa_4iter6traits8iterator8Iterator10max_by_keyjNCNvNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry7tracing24output_jaeger_thrift_udp7logging22log_span_too_large_err0EB2t_.exit, %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRNtNtCs26L2cHvO7VQ_13cf_rustracing3log3LogjjNvNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry7tracing24output_jaeger_thrift_udp7logging8log_sizeNCINvXsK_NtNtB8_6traits5accumjNtB3l_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB1C_EE0E0B1M_.exit.i
  %.sroa.04.0.i68 = phi i64 [ %i.ce, %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRNtNtCs26L2cHvO7VQ_13cf_rustracing3log3LogjjNvNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry7tracing24output_jaeger_thrift_udp7logging8log_sizeNCINvXsK_NtNtB8_6traits5accumjNtB3l_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB1C_EE0E0B1M_.exit.i ], [ 0, %_RINvYINtNtNtCs3oUPovFnLWP_4core5slice4iter4IterNtNtCs26L2cHvO7VQ_13cf_rustracing3tag3TagENtNtNtNtBa_4iter6traits8iterator8Iterator10max_by_keyjNCNvNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry7tracing24output_jaeger_thrift_udp7logging22log_span_too_large_err0EB2t_.exit ], !dbg !9900 ; 2 uses
  %.sroa.02.0.i69 = phi i64 [ %i.cd, %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRNtNtCs26L2cHvO7VQ_13cf_rustracing3log3LogjjNvNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry7tracing24output_jaeger_thrift_udp7logging8log_sizeNCINvXsK_NtNtB8_6traits5accumjNtB3l_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB1C_EE0E0B1M_.exit.i ], [ 0, %_RINvYINtNtNtCs3oUPovFnLWP_4core5slice4iter4IterNtNtCs26L2cHvO7VQ_13cf_rustracing3tag3TagENtNtNtNtBa_4iter6traits8iterator8Iterator10max_by_keyjNCNvNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry7tracing24output_jaeger_thrift_udp7logging22log_span_too_large_err0EB2t_.exit ], !dbg !9901
  %i.ax = getelementptr inbounds nuw [40 x i8], ptr %i.av, i64 %.sroa.04.0.i68, !dbg !9902 ; 2 uses
  %i.ay = getelementptr i8, ptr %i.ax, i64 8, !dbg !9903
  %.val.i = load ptr, ptr %i.ay, align 8, !dbg !9903, !nonnull !494, !noundef !494 ; 5 uses
  %i.az = getelementptr i8, ptr %i.ax, i64 16, !dbg !9903
  %.val11.i = load i64, ptr %i.az, align 8, !dbg !9903, !noundef !494 ; 4 uses
  %i.ba = icmp eq i64 %.val11.i, 0, !dbg !9904
  br i1 %i.ba, label %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRNtNtCs26L2cHvO7VQ_13cf_rustracing3log3LogjjNvNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry7tracing24output_jaeger_thrift_udp7logging8log_sizeNCINvXsK_NtNtB8_6traits5accumjNtB3l_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB1C_EE0E0B1M_.exit.i, label %.preheader.i.i.i.i.preheader, !dbg !9905

.preheader.i.i.i.i.preheader:                     ; preds = %.preheader
  %xtraiter = and i64 %.val11.i, 3, !dbg !9906    ; 3 uses
  %i.bb = icmp ult i64 %.val11.i, 4, !dbg !9906
  br i1 %i.bb, label %.preheader.i.i.i.i.epil.preheader, label %.preheader.i.i.i.i.preheader.new, !dbg !9906

.preheader.i.i.i.i.preheader.new:                 ; preds = %.preheader.i.i.i.i.preheader
  %unroll_iter = and i64 %.val11.i, -4, !dbg !9906
  br label %.preheader.i.i.i.i, !dbg !9906

.preheader.i.i.i.i:                               ; preds = %.preheader.i.i.i.i, %.preheader.i.i.i.i.preheader.new
  %.sroa.04.0.i.i.i.i.i = phi i64 [ 0, %.preheader.i.i.i.i.preheader.new ], [ %i.bw, %.preheader.i.i.i.i ], !dbg !9907 ; 5 uses
  %.sroa.02.0.i.i.i.i.i = phi i64 [ 0, %.preheader.i.i.i.i.preheader.new ], [ %i.bv, %.preheader.i.i.i.i ], !dbg !9908
  %niter = phi i64 [ 0, %.preheader.i.i.i.i.preheader.new ], [ %niter.next.3, %.preheader.i.i.i.i ]
  %i.bc = getelementptr inbounds nuw [48 x i8], ptr %.val.i, i64 %.sroa.04.0.i.i.i.i.i, !dbg !9909 ; 2 uses
  %i.bd = getelementptr i8, ptr %i.bc, i64 16, !dbg !9910
  %.val.i.i.i.i.i = load i64, ptr %i.bd, align 8, !dbg !9910, !alias.scope !9801, !noundef !494
  %i.be = getelementptr i8, ptr %i.bc, i64 40, !dbg !9910
  %.val11.i.i.i.i.i = load i64, ptr %i.be, align 8, !dbg !9910, !alias.scope !9801, !noundef !494
  %i.bf = add i64 %.val.i.i.i.i.i, %.sroa.02.0.i.i.i.i.i, !dbg !9911
  %i.bg = add i64 %i.bf, %.val11.i.i.i.i.i, !dbg !9912
  %i.bh = getelementptr inbounds nuw [48 x i8], ptr %.val.i, i64 %.sroa.04.0.i.i.i.i.i, !dbg !9909 ; 2 uses
  %i.bi = getelementptr i8, ptr %i.bh, i64 64, !dbg !9910
  %.val.i.i.i.i.i.1 = load i64, ptr %i.bi, align 8, !dbg !9910, !alias.scope !9801, !noundef !494
  %i.bj = getelementptr i8, ptr %i.bh, i64 88, !dbg !9910
  %.val11.i.i.i.i.i.1 = load i64, ptr %i.bj, align 8, !dbg !9910, !alias.scope !9801, !noundef !494
  %i.bk = add i64 %.val.i.i.i.i.i.1, %i.bg, !dbg !9911
  %i.bl = add i64 %i.bk, %.val11.i.i.i.i.i.1, !dbg !9912
  %i.bm = getelementptr inbounds nuw [48 x i8], ptr %.val.i, i64 %.sroa.04.0.i.i.i.i.i, !dbg !9909 ; 2 uses
  %i.bn = getelementptr i8, ptr %i.bm, i64 112, !dbg !9910
  %.val.i.i.i.i.i.2 = load i64, ptr %i.bn, align 8, !dbg !9910, !alias.scope !9801, !noundef !494
  %i.bo = getelementptr i8, ptr %i.bm, i64 136, !dbg !9910
  %.val11.i.i.i.i.i.2 = load i64, ptr %i.bo, align 8, !dbg !9910, !alias.scope !9801, !noundef !494
  %i.bp = add i64 %.val.i.i.i.i.i.2, %i.bl, !dbg !9911
  %i.bq = add i64 %i.bp, %.val11.i.i.i.i.i.2, !dbg !9912
  %i.br = getelementptr inbounds nuw [48 x i8], ptr %.val.i, i64 %.sroa.04.0.i.i.i.i.i, !dbg !9909 ; 2 uses
  %i.bs = getelementptr i8, ptr %i.br, i64 160, !dbg !9910
  %.val.i.i.i.i.i.3 = load i64, ptr %i.bs, align 8, !dbg !9910, !alias.scope !9801, !noundef !494
  %i.bt = getelementptr i8, ptr %i.br, i64 184, !dbg !9910
  %.val11.i.i.i.i.i.3 = load i64, ptr %i.bt, align 8, !dbg !9910, !alias.scope !9801, !noundef !494
  %i.bu = add i64 %.val.i.i.i.i.i.3, %i.bq, !dbg !9911
  %i.bv = add i64 %i.bu, %.val11.i.i.i.i.i.3, !dbg !9912 ; 3 uses
  %i.bw = add nuw i64 %.sroa.04.0.i.i.i.i.i, 4, !dbg !9913 ; 2 uses
  %niter.next.3 = add nuw i64 %niter, 4, !dbg !9906 ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter, !dbg !9906
  br i1 %niter.ncmp.3, label %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRNtNtCs26L2cHvO7VQ_13cf_rustracing3log3LogjjNvNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry7tracing24output_jaeger_thrift_udp7logging8log_sizeNCINvXsK_NtNtB8_6traits5accumjNtB3l_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB1C_EE0E0B1M_.exit.i.loopexit.unr-lcssa, label %.preheader.i.i.i.i, !dbg !9906

_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRNtNtCs26L2cHvO7VQ_13cf_rustracing3log3LogjjNvNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry7tracing24output_jaeger_thrift_udp7logging8log_sizeNCINvXsK_NtNtB8_6traits5accumjNtB3l_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB1C_EE0E0B1M_.exit.i.loopexit.unr-lcssa: ; preds = %.preheader.i.i.i.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0, !dbg !9906
  br i1 %lcmp.mod.not, label %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRNtNtCs26L2cHvO7VQ_13cf_rustracing3log3LogjjNvNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry7tracing24output_jaeger_thrift_udp7logging8log_sizeNCINvXsK_NtNtB8_6traits5accumjNtB3l_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB1C_EE0E0B1M_.exit.i, label %.preheader.i.i.i.i.epil.preheader, !dbg !9906

.preheader.i.i.i.i.epil.preheader:                ; preds = %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRNtNtCs26L2cHvO7VQ_13cf_rustracing3log3LogjjNvNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry7tracing24output_jaeger_thrift_udp7logging8log_sizeNCINvXsK_NtNtB8_6traits5accumjNtB3l_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB1C_EE0E0B1M_.exit.i.loopexit.unr-lcssa, %.preheader.i.i.i.i.preheader
  %.sroa.04.0.i.i.i.i.i.epil.init = phi i64 [ 0, %.preheader.i.i.i.i.preheader ], [ %i.bw, %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRNtNtCs26L2cHvO7VQ_13cf_rustracing3log3LogjjNvNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry7tracing24output_jaeger_thrift_udp7logging8log_sizeNCINvXsK_NtNtB8_6traits5accumjNtB3l_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB1C_EE0E0B1M_.exit.i.loopexit.unr-lcssa ]
  %.sroa.02.0.i.i.i.i.i.epil.init = phi i64 [ 0, %.preheader.i.i.i.i.preheader ], [ %i.bv, %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRNtNtCs26L2cHvO7VQ_13cf_rustracing3log3LogjjNvNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry7tracing24output_jaeger_thrift_udp7logging8log_sizeNCINvXsK_NtNtB8_6traits5accumjNtB3l_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB1C_EE0E0B1M_.exit.i.loopexit.unr-lcssa ]
  %lcmp.mod108 = icmp ne i64 %xtraiter, 0, !dbg !9906
  tail call void @llvm.assume(i1 %lcmp.mod108), !dbg !9906
  br label %.preheader.i.i.i.i.epil, !dbg !9906

.preheader.i.i.i.i.epil:                          ; preds = %.preheader.i.i.i.i.epil, %.preheader.i.i.i.i.epil.preheader
  %.sroa.04.0.i.i.i.i.i.epil = phi i64 [ %i.cc, %.preheader.i.i.i.i.epil ], [ %.sroa.04.0.i.i.i.i.i.epil.init, %.preheader.i.i.i.i.epil.preheader ], !dbg !9907 ; 2 uses
  %.sroa.02.0.i.i.i.i.i.epil = phi i64 [ %i.cb, %.preheader.i.i.i.i.epil ], [ %.sroa.02.0.i.i.i.i.i.epil.init, %.preheader.i.i.i.i.epil.preheader ], !dbg !9908
  %epil.iter = phi i64 [ %epil.iter.next, %.preheader.i.i.i.i.epil ], [ 0, %.preheader.i.i.i.i.epil.preheader ]
  %i.bx = getelementptr inbounds nuw [48 x i8], ptr %.val.i, i64 %.sroa.04.0.i.i.i.i.i.epil, !dbg !9909 ; 2 uses
  %i.by = getelementptr i8, ptr %i.bx, i64 16, !dbg !9910
  %.val.i.i.i.i.i.epil = load i64, ptr %i.by, align 8, !dbg !9910, !alias.scope !9801, !noundef !494
  %i.bz = getelementptr i8, ptr %i.bx, i64 40, !dbg !9910
  %.val11.i.i.i.i.i.epil = load i64, ptr %i.bz, align 8, !dbg !9910, !alias.scope !9801, !noundef !494
  %i.ca = add i64 %.val.i.i.i.i.i.epil, %.sroa.02.0.i.i.i.i.i.epil, !dbg !9911
  %i.cb = add i64 %i.ca, %.val11.i.i.i.i.i.epil, !dbg !9912 ; 2 uses
  %i.cc = add nuw i64 %.sroa.04.0.i.i.i.i.i.epil, 1, !dbg !9913
  %epil.iter.next = add i64 %epil.iter, 1, !dbg !9906 ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter, !dbg !9906
  br i1 %epil.iter.cmp.not, label %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRNtNtCs26L2cHvO7VQ_13cf_rustracing3log3LogjjNvNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry7tracing24output_jaeger_thrift_udp7logging8log_sizeNCINvXsK_NtNtB8_6traits5accumjNtB3l_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB1C_EE0E0B1M_.exit.i, label %.preheader.i.i.i.i.epil, !dbg !9906, !llvm.loop !9626

_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRNtNtCs26L2cHvO7VQ_13cf_rustracing3log3LogjjNvNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry7tracing24output_jaeger_thrift_udp7logging8log_sizeNCINvXsK_NtNtB8_6traits5accumjNtB3l_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB1C_EE0E0B1M_.exit.i: ; preds = %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRNtNtCs26L2cHvO7VQ_13cf_rustracing3log3LogjjNvNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry7tracing24output_jaeger_thrift_udp7logging8log_sizeNCINvXsK_NtNtB8_6traits5accumjNtB3l_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB1C_EE0E0B1M_.exit.i.loopexit.unr-lcssa, %.preheader.i.i.i.i.epil, %.preheader
  %.sroa.0.0.i.i.i.i.i = phi i64 [ 0, %.preheader ], [ %i.bv, %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRNtNtCs26L2cHvO7VQ_13cf_rustracing3log3LogjjNvNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry7tracing24output_jaeger_thrift_udp7logging8log_sizeNCINvXsK_NtNtB8_6traits5accumjNtB3l_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB1C_EE0E0B1M_.exit.i.loopexit.unr-lcssa ], [ %i.cb, %.preheader.i.i.i.i.epil ], !dbg !9908
  %i.cd = add i64 %.sroa.0.0.i.i.i.i.i, %.sroa.02.0.i69, !dbg !9914 ; 2 uses
  %i.ce = add nuw i64 %.sroa.04.0.i68, 1, !dbg !9915 ; 2 uses
  %i.cf = icmp eq i64 %i.ce, %i.at, !dbg !9916
  br i1 %i.cf, label %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterNtNtCs26L2cHvO7VQ_13cf_rustracing3log3LogENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB1C_8adapters3map8map_foldRBQ_jjNvNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry7tracing24output_jaeger_thrift_udp7logging8log_sizeNCINvXsK_NtB1A_5accumjNtB4F_3Sum3sumINtB2m_3MapBF_B2W_EE0E0EB36_.exit, label %.preheader, !dbg !9916

_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterNtNtCs26L2cHvO7VQ_13cf_rustracing3log3LogENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB1C_8adapters3map8map_foldRBQ_jjNvNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry7tracing24output_jaeger_thrift_udp7logging8log_sizeNCINvXsK_NtB1A_5accumjNtB4F_3Sum3sumINtB2m_3MapBF_B2W_EE0E0EB36_.exit: ; preds = %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRNtNtCs26L2cHvO7VQ_13cf_rustracing3log3LogjjNvNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry7tracing24output_jaeger_thrift_udp7logging8log_sizeNCINvXsK_NtNtB8_6traits5accumjNtB3l_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB1C_EE0E0B1M_.exit.i, %_RINvYINtNtNtCs3oUPovFnLWP_4core5slice4iter4IterNtNtCs26L2cHvO7VQ_13cf_rustracing3tag3TagENtNtNtNtBa_4iter6traits8iterator8Iterator10max_by_keyjNCNvNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry7tracing24output_jaeger_thrift_udp7logging22log_span_too_large_err0EB2t_.exit
  %.sroa.0.0.i70 = phi i64 [ 0, %_RINvYINtNtNtCs3oUPovFnLWP_4core5slice4iter4IterNtNtCs26L2cHvO7VQ_13cf_rustracing3tag3TagENtNtNtNtBa_4iter6traits8iterator8Iterator10max_by_keyjNCNvNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry7tracing24output_jaeger_thrift_udp7logging22log_span_too_large_err0EB2t_.exit ], [ %i.cd, %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRNtNtCs26L2cHvO7VQ_13cf_rustracing3log3LogjjNvNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry7tracing24output_jaeger_thrift_udp7logging8log_sizeNCINvXsK_NtNtB8_6traits5accumjNtB3l_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB1C_EE0E0B1M_.exit.i ], !dbg !9901
  store i64 %.sroa.0.0.i70, ptr %i.o, align 8, !dbg !9917
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !dbg !9918
  %.not = icmp eq ptr %.sroa.0.0.i.i, null, !dbg !9919
  br i1 %.not, label %bb.m, label %bb.i, !dbg !9920

bb.i:                                             ; preds = %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterNtNtCs26L2cHvO7VQ_13cf_rustracing3log3LogENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB1C_8adapters3map8map_foldRBQ_jjNvNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry7tracing24output_jaeger_thrift_udp7logging8log_sizeNCINvXsK_NtB1A_5accumjNtB4F_3Sum3sumINtB2m_3MapBF_B2W_EE0E0EB36_.exit
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9805), !dbg !9921
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !9922, !noalias !9806
  %.sroa.33.0.i.in.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 16, !dbg !9923
  %.sroa.33.0.i.i = load i64, ptr %.sroa.33.0.i.in.i, align 8, !dbg !9923, !alias.scope !9805, !noalias !9807, !noundef !494 ; 2 uses
  %.sink11.in.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 8, !dbg !9923
  %.sink11.i = load ptr, ptr %.sink11.in.i, align 8, !dbg !9923, !alias.scope !9805, !noalias !9807, !nonnull !494, !noundef !494
  store ptr %.sink11.i, ptr %i.c, align 8, !dbg !9923, !noalias !9806
  %i.cg = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !9923
  store i64 %.sroa.33.0.i.i, ptr %i.cg, align 8, !dbg !9923, !noalias !9806
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !9924, !noalias !9806
  %i.ch = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 24, !dbg !9925
  %i.ci = load i64, ptr %i.ch, align 8, !dbg !9925, !range !9763, !alias.scope !9808, !noalias !9807, !noundef !494 ; 2 uses
  %i.cj = icmp slt i64 %i.ci, -9223372036854775805, !dbg !9925
  %i.ck = add i64 %i.ci, -9223372036854775807, !dbg !9925
  %i.cl = select i1 %i.cj, i64 %i.ck, i64 0, !dbg !9925 ; 2 uses
  switch i64 %i.cl, label %bb.j [
    i64 0, label %bb.l
    i64 1, label %_RNCNvNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry7tracing24output_jaeger_thrift_udp7logging22log_span_too_large_errs_0Bb_.exit
    i64 2, label %bb.k
    i64 3, label %bb.k
  ], !dbg !9926

bb.j:                                             ; preds = %bb.i
  unreachable, !dbg !9927

bb.k:                                             ; preds = %bb.i, %bb.i
  br label %_RNCNvNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry7tracing24output_jaeger_thrift_udp7logging22log_span_too_large_errs_0Bb_.exit, !dbg !9928

bb.l:                                             ; preds = %bb.i
  %.sroa.3.0.in.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 40, !dbg !9929
  %.sroa.3.0.i.i = load i64, ptr %.sroa.3.0.in.i.i, align 8, !dbg !9929, !alias.scope !9808, !noalias !9807, !noundef !494
  br label %_RNCNvNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry7tracing24output_jaeger_thrift_udp7logging22log_span_too_large_errs_0Bb_.exit, !dbg !9930

_RNCNvNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry7tracing24output_jaeger_thrift_udp7logging22log_span_too_large_errs_0Bb_.exit: ; preds = %bb.i, %bb.k, %bb.l
  %.sroa.0.0.i.i71 = phi i64 [ %.sroa.3.0.i.i, %bb.l ], [ %i.cl, %bb.i ], [ 8, %bb.k ], !dbg !9931
  %i.cm = add i64 %.sroa.0.0.i.i71, %.sroa.33.0.i.i, !dbg !9932
  store i64 %i.cm, ptr %i.b, align 8, !dbg !9924, !noalias !9806
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !9933, !noalias !9806
  store ptr %i.c, ptr %i.a, align 8, !dbg !9933, !noalias !9806
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !9933
  store ptr @_RNvXs1i_NtCs3oUPovFnLWP_4core3fmtReNtB6_7Display3fmtCsbaWXNhtWAp9_11foundations, ptr %.sroa.42.0..sroa_idx.i, align 8, !dbg !9933, !noalias !9806
  %i.cn = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !9933
  store ptr %i.b, ptr %i.cn, align 8, !dbg !9933, !noalias !9806
  %.sroa.46.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24, !dbg !9933
  store ptr @_RNvXsi_NtNtNtCs3oUPovFnLWP_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.46.0..sroa_idx.i, align 8, !dbg !9933, !noalias !9806
  call void @_RNvNvNtCs1xwejQucwHj_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.n, ptr noundef nonnull @60, ptr noundef nonnull %i.a), !dbg !9934
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !9935, !noalias !9806
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !9935, !noalias !9806
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !9935, !noalias !9806
  br label %bb.n, !dbg !9936

bb.m:                                             ; preds = %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterNtNtCs26L2cHvO7VQ_13cf_rustracing3log3LogENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB1C_8adapters3map8map_foldRBQ_jjNvNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry7tracing24output_jaeger_thrift_udp7logging8log_sizeNCINvXsK_NtB1A_5accumjNtB4F_3Sum3sumINtB2m_3MapBF_B2W_EE0E0EB36_.exit
  store i64 0, ptr %i.n, align 8, !dbg !9937
  %.sroa.424.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 8, !dbg !9937
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.424.0..sroa_idx, align 8, !dbg !9937
  %.sroa.525.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 16, !dbg !9937
  store i64 0, ptr %.sroa.525.0..sroa_idx, align 8, !dbg !9937
  br label %bb.n, !dbg !9812

bb.n:                                             ; preds = %bb.m, %_RNCNvNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry7tracing24output_jaeger_thrift_udp7logging22log_span_too_large_errs_0Bb_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !dbg !9816
  %i.co = invoke noundef nonnull align 8 ptr @_RNvMNtNtNtCsbaWXNhtWAp9_11foundations9telemetry3log4initNtB2_10LogHarness3get()
          to label %.noexc73 unwind label %bb.r, !dbg !9938 ; 2 uses

.noexc73:                                         ; preds = %bb.n
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 88, !dbg !9939
  %i.cq = invoke noundef ptr @_RNvMs_NtNtCsbaWXNhtWAp9_11foundations9telemetry5scopeINtB4_10ScopeStackINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtCs7hp7eIiX3bT_8lock_api6rwlock6RwLockNtNtCsix9GtmFTcQ_11parking_lot10raw_rwlock9RawRwLockNtNtNtB6_3log8internal27LoggerWithKvNestingTrackingEEE7currentB8_(ptr noundef nonnull align 8 %i.cp)
          to label %.noexc74 unwind label %bb.r, !dbg !9940 ; 2 uses

.noexc74:                                         ; preds = %.noexc73
  %.not.i = icmp eq ptr %i.cq, null, !dbg !9941
  br i1 %.not.i, label %bb.o, label %.noexc, !dbg !9942

bb.o:                                             ; preds = %.noexc74
  %i.cr = getelementptr inbounds nuw i8, ptr %i.co, i64 64, !dbg !9943 ; 2 uses
  %i.cs = load ptr, ptr %i.cr, align 8, !dbg !9943, !nonnull !494, !noundef !494
  %i.ct = atomicrmw add ptr %i.cs, i64 1 monotonic, align 8, !dbg !9944
  %i.cu = icmp slt i64 %i.ct, 0, !dbg !9945
  br i1 %i.cu, label %bb.q, label %bb.p, !dbg !9945

bb.p:                                             ; preds = %bb.o
  %i.cv = load ptr, ptr %i.cr, align 8, !dbg !9946, !nonnull !494, !noundef !494
  br label %.noexc, !dbg !9947

bb.q:                                             ; preds = %bb.o
  call void @llvm.trap(), !dbg !9948
  unreachable, !dbg !9948

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtCs7hp7eIiX3bT_8lock_api6rwlock6RwLockNtNtCsix9GtmFTcQ_11parking_lot10raw_rwlock9RawRwLockNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry3log8internal27LoggerWithKvNestingTrackingEEEB2N_.exit: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs7hp7eIiX3bT_8lock_api6rwlock15RwLockReadGuardNtNtCsix9GtmFTcQ_11parking_lot10raw_rwlock9RawRwLockNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry3log8internal27LoggerWithKvNestingTrackingEEB2p_.exit, %bb.s, %bb.r
  %.pn59 = phi { ptr, i32 } [ %i.cw, %bb.r ], [ %.pn57, %bb.s ], [ %.pn57, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs7hp7eIiX3bT_8lock_api6rwlock15RwLockReadGuardNtNtCsix9GtmFTcQ_11parking_lot10raw_rwlock9RawRwLockNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry3log8internal27LoggerWithKvNestingTrackingEEB2p_.exit ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef align 8 dereferenceable(24) %i.n) #39
          to label %common.resume unwind label %bb.ag, !dbg !9949

bb.r:                                             ; preds = %bb.ad, %.noexc73, %bb.n
  %i.cw = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtCs7hp7eIiX3bT_8lock_api6rwlock6RwLockNtNtCsix9GtmFTcQ_11parking_lot10raw_rwlock9RawRwLockNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry3log8internal27LoggerWithKvNestingTrackingEEEB2N_.exit

.noexc:                                           ; preds = %.noexc74, %bb.p
  %.sroa.0.0.i72 = phi ptr [ %i.cv, %bb.p ], [ %i.cq, %.noexc74 ], !dbg !9950 ; 5 uses
  store ptr %.sroa.0.0.i72, ptr %i.m, align 8, !dbg !9816
  %i.cx = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i72, i64 16, !dbg !9951 ; 7 uses
  %i.cy = load atomic i64, ptr %i.cx monotonic, align 8, !dbg !9952 ; 4 uses
  %i.cz = and i64 %i.cy, 8, !dbg !9953
  %i.da = icmp ne i64 %i.cz, 0, !dbg !9953
  %i.db = icmp ugt i64 %i.cy, -17
  %or.cond.i = or i1 %i.db, %i.da, !dbg !9953
  br i1 %or.cond.i, label %_RNvMs8_NtCsix9GtmFTcQ_11parking_lot10raw_rwlockNtB5_9RawRwLock20try_lock_shared_fast.exit.thread, label %_RNvMs8_NtCsix9GtmFTcQ_11parking_lot10raw_rwlockNtB5_9RawRwLock20try_lock_shared_fast.exit, !dbg !9953, !prof !880

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs7hp7eIiX3bT_8lock_api6rwlock15RwLockReadGuardNtNtCsix9GtmFTcQ_11parking_lot10raw_rwlock9RawRwLockNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry3log8internal27LoggerWithKvNestingTrackingEEB2p_.exit: ; preds = %bb.v, %bb.w, %bb.t
  %.pn57 = phi { ptr, i32 } [ %i.df, %bb.t ], [ %.pn, %bb.w ], [ %.pn, %bb.v ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !9819), !dbg !9954
  call void @llvm.experimental.noalias.scope.decl(metadata !9820), !dbg !9955
  %i.dc = load ptr, ptr %i.m, align 8, !dbg !9956, !alias.scope !9821, !nonnull !494, !noundef !494
  %i.dd = atomicrmw sub ptr %i.dc, i64 1 release, align 8, !dbg !9957, !noalias !9821
  %i.de = icmp eq i64 %i.dd, 1, !dbg !9958
  br i1 %i.de, label %bb.s, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtCs7hp7eIiX3bT_8lock_api6rwlock6RwLockNtNtCsix9GtmFTcQ_11parking_lot10raw_rwlock9RawRwLockNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry3log8internal27LoggerWithKvNestingTrackingEEEB2N_.exit, !dbg !9958

bb.s:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs7hp7eIiX3bT_8lock_api6rwlock15RwLockReadGuardNtNtCsix9GtmFTcQ_11parking_lot10raw_rwlock9RawRwLockNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry3log8internal27LoggerWithKvNestingTrackingEEB2p_.exit
  fence acquire, !dbg !9959
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcINtNtCs7hp7eIiX3bT_8lock_api6rwlock6RwLockNtNtCsix9GtmFTcQ_11parking_lot10raw_rwlock9RawRwLockNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry3log8internal27LoggerWithKvNestingTrackingEE9drop_slowB2k_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.m) #37
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtCs7hp7eIiX3bT_8lock_api6rwlock6RwLockNtNtCsix9GtmFTcQ_11parking_lot10raw_rwlock9RawRwLockNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry3log8internal27LoggerWithKvNestingTrackingEEEB2N_.exit unwind label %bb.ag, !dbg !9960

bb.t:                                             ; preds = %bb.ac, %_RNvMs8_NtCsix9GtmFTcQ_11parking_lot10raw_rwlockNtB5_9RawRwLock20try_lock_shared_fast.exit.thread
  %i.df = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs7hp7eIiX3bT_8lock_api6rwlock15RwLockReadGuardNtNtCsix9GtmFTcQ_11parking_lot10raw_rwlock9RawRwLockNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry3log8internal27LoggerWithKvNestingTrackingEEB2p_.exit

_RNvMs8_NtCsix9GtmFTcQ_11parking_lot10raw_rwlockNtB5_9RawRwLock20try_lock_shared_fast.exit: ; preds = %.noexc
  %i.dg = add nuw i64 %i.cy, 16, !dbg !9961
  %i.dh = cmpxchg weak ptr %i.cx, i64 %i.cy, i64 %i.dg acquire monotonic, align 8, !dbg !9962
  %.sroa.18.0.in.i = extractvalue { i64, i1 } %i.dh, 1, !dbg !9963
  br i1 %.sroa.18.0.in.i, label %bb.u, label %_RNvMs8_NtCsix9GtmFTcQ_11parking_lot10raw_rwlockNtB5_9RawRwLock20try_lock_shared_fast.exit.thread, !dbg !9964, !prof !881

_RNvMs8_NtCsix9GtmFTcQ_11parking_lot10raw_rwlockNtB5_9RawRwLock20try_lock_shared_fast.exit.thread: ; preds = %.noexc, %_RNvMs8_NtCsix9GtmFTcQ_11parking_lot10raw_rwlockNtB5_9RawRwLock20try_lock_shared_fast.exit
  %i.di = invoke noundef zeroext i1 @_RNvMs8_NtCsix9GtmFTcQ_11parking_lot10raw_rwlockNtB5_9RawRwLock16lock_shared_slow(ptr noundef nonnull align 8 %i.cx, i1 noundef zeroext false, i64 undef, i32 noundef -1)
          to label %bb.u unwind label %bb.t, !dbg !9965 ; 0 uses

bb.u:                                             ; preds = %_RNvMs8_NtCsix9GtmFTcQ_11parking_lot10raw_rwlockNtB5_9RawRwLock20try_lock_shared_fast.exit.thread, %_RNvMs8_NtCsix9GtmFTcQ_11parking_lot10raw_rwlockNtB5_9RawRwLock20try_lock_shared_fast.exit
  %i.dj = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i72, i64 24, !dbg !9966
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !dbg !9954
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !dbg !9954
  store ptr @98, ptr %i.k, align 8, !dbg !9967
  %i.dk = getelementptr inbounds nuw i8, ptr %i.k, i64 8, !dbg !9967
  store ptr inttoptr (i64 101 to ptr), ptr %i.dk, align 8, !dbg !9967
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !dbg !9954
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !dbg !9954
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !dbg !9968
  store ptr %i.p, ptr %i.g, align 8, !dbg !9968
  %.sroa.429.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 8, !dbg !9968
  store ptr @_RNvXsi_NtNtNtCs3oUPovFnLWP_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.429.0..sroa_idx, align 8, !dbg !9968
  %i.dl = getelementptr inbounds nuw i8, ptr %i.g, i64 16, !dbg !9968
  store ptr %i.o, ptr %i.dl, align 8, !dbg !9968
  %.sroa.433.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 24, !dbg !9968
  store ptr @_RNvXsi_NtNtNtCs3oUPovFnLWP_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.433.0..sroa_idx, align 8, !dbg !9968
  invoke void @_RNvNvNtCs1xwejQucwHj_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.h, ptr noundef nonnull @99, ptr noundef nonnull %i.g)
          to label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs1xwejQucwHj_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsbaWXNhtWAp9_11foundations.exit unwind label %bb.x, !dbg !9969

bb.v:                                             ; preds = %bb.z, %bb.y, %bb.x
  %.pn = phi { ptr, i32 } [ %i.dp, %bb.x ], [ %i.el, %bb.z ], [ %i.du, %bb.y ] ; 2 uses
  %i.dm = atomicrmw sub ptr %i.cx, i64 16 release, align 8, !dbg !9970
  %i.dn = and i64 %i.dm, -14, !dbg !9971
  %i.do = icmp eq i64 %i.dn, 18, !dbg !9971
  br i1 %i.do, label %bb.w, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs7hp7eIiX3bT_8lock_api6rwlock15RwLockReadGuardNtNtCsix9GtmFTcQ_11parking_lot10raw_rwlock9RawRwLockNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry3log8internal27LoggerWithKvNestingTrackingEEB2p_.exit, !dbg !9971, !prof !643

bb.w:                                             ; preds = %bb.v
  invoke void @_RNvMs8_NtCsix9GtmFTcQ_11parking_lot10raw_rwlockNtB5_9RawRwLock18unlock_shared_slow(ptr noundef nonnull align 8 %i.cx)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs7hp7eIiX3bT_8lock_api6rwlock15RwLockReadGuardNtNtCsix9GtmFTcQ_11parking_lot10raw_rwlock9RawRwLockNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry3log8internal27LoggerWithKvNestingTrackingEEB2p_.exit unwind label %bb.ag, !dbg !9972

bb.x:                                             ; preds = %bb.u, %bb.aa
  %i.dp = landingpad { ptr, i32 }
          cleanup
  br label %bb.v

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs1xwejQucwHj_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsbaWXNhtWAp9_11foundations.exit: ; preds = %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !9973
  %i.dq = getelementptr inbounds nuw i8, ptr %i.i, i64 24, !dbg !9974
  store ptr @100, ptr %i.dq, align 8, !dbg !9974
  %i.dr = getelementptr inbounds nuw i8, ptr %i.i, i64 32, !dbg !9974
  store i64 4, ptr %i.dr, align 8, !dbg !9974
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.h, i64 24, i1 false), !dbg !9974
end_hunk_0
