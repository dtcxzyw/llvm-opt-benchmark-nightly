inline.NumInlined: 1335
inline.NumDeleted: 466
begin_hunk_0_@_RNCNCNCNvNtNtCs2HJ6gJZ22Qg_18aws_smithy_runtime6client12orchestrator6try_op00se_0Cs9rVkZwOUgsI_13deltalake_aws
define internal fastcc void @_RNCNCNCNvNtNtCs2HJ6gJZ22Qg_18aws_smithy_runtime6client12orchestrator6try_op00se_0Cs9rVkZwOUgsI_13deltalake_aws(ptr noalias nofree noundef nonnull readonly align 8 captures(address) dead_on_return dereferenceable(32) %0) unnamed_addr #1 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = load ptr, ptr @_RNvNCNCNvNtNtCs2HJ6gJZ22Qg_18aws_smithy_runtime6client12orchestrator6try_op00sc_10___CALLSITE, align 8, !nonnull !14, !align !259, !noundef !14
  tail call void @_RNvMNtCs2y6mmZ7bjoM_12tracing_core5eventNtB2_5Event8dispatch(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %0)
  %i.c = load atomic i8, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher6EXISTS monotonic, align 1
  %i.d = icmp eq i8 %i.c, 0
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.d, %bb.e, %bb.c, %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  %i.e = load atomic i64, ptr @_RNvCsaljjC7ZTCQu_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8 ; 2 uses
  %i.f = icmp ult i64 %i.e, 6
  tail call void @llvm.assume(i1 %i.f)
  %i.g = icmp samesign ugt i64 %i.e, 3
  br i1 %i.g, label %bb.d, label %bb.b

bb.d:                                             ; preds = %bb.c
  %i.h = load ptr, ptr @_RNvNCNCNvNtNtCs2HJ6gJZ22Qg_18aws_smithy_runtime6client12orchestrator6try_op00sc_10___CALLSITE, align 8, !nonnull !14, !align !259, !noundef !14 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %i.j = load ptr, ptr %i.i, align 8, !nonnull !14, !noundef !14
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 40
  %i.l = load i64, ptr %i.k, align 8, !noundef !14
  store i64 4, ptr %i.a, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.j, ptr %.sroa.3.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %i.l, ptr %.sroa.5.0..sroa_idx, align 8
  %i.m = tail call { ptr, ptr } @_RNvCsaljjC7ZTCQu_3log6logger() ; 2 uses
  %i.n = extractvalue { ptr, ptr } %i.m, 0        ; 2 uses
  %i.o = extractvalue { ptr, ptr } %i.m, 1        ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %i.q = load ptr, ptr %i.p, align 8, !invariant.load !14, !nonnull !14
  %i.r = call noundef zeroext i1 %i.q(ptr noundef %i.n, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.a) #27
  br i1 %i.r, label %bb.e, label %bb.b

bb.e:                                             ; preds = %bb.d
  call void @_RNvNtCscTw95cGIolY_7tracing15___macro_support13___tracing_log(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.h, ptr noundef nonnull %i.n, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.o, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %0)
  br label %bb.b
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNCNCNCNvNtNtCs2HJ6gJZ22Qg_18aws_smithy_runtime6client12orchestrator6try_op00si_0Cs9rVkZwOUgsI_13deltalake_aws(ptr noalias nofree noundef nonnull readonly align 8 captures(address) dead_on_return dereferenceable(32) %0) unnamed_addr #1 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = load ptr, ptr @_RNvNCNCNvNtNtCs2HJ6gJZ22Qg_18aws_smithy_runtime6client12orchestrator6try_op00sg_10___CALLSITE, align 8, !nonnull !14, !align !259, !noundef !14
  tail call void @_RNvMNtCs2y6mmZ7bjoM_12tracing_core5eventNtB2_5Event8dispatch(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %0)
  %i.c = load atomic i8, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher6EXISTS monotonic, align 1
  %i.d = icmp eq i8 %i.c, 0
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.d, %bb.e, %bb.c, %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  %i.e = load atomic i64, ptr @_RNvCsaljjC7ZTCQu_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8 ; 2 uses
  %i.f = icmp ult i64 %i.e, 6
  tail call void @llvm.assume(i1 %i.f)
  %i.g = icmp samesign ugt i64 %i.e, 3
  br i1 %i.g, label %bb.d, label %bb.b

bb.d:                                             ; preds = %bb.c
  %i.h = load ptr, ptr @_RNvNCNCNvNtNtCs2HJ6gJZ22Qg_18aws_smithy_runtime6client12orchestrator6try_op00sg_10___CALLSITE, align 8, !nonnull !14, !align !259, !noundef !14 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %i.j = load ptr, ptr %i.i, align 8, !nonnull !14, !noundef !14
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 40
  %i.l = load i64, ptr %i.k, align 8, !noundef !14
  store i64 4, ptr %i.a, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.j, ptr %.sroa.3.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %i.l, ptr %.sroa.5.0..sroa_idx, align 8
  %i.m = tail call { ptr, ptr } @_RNvCsaljjC7ZTCQu_3log6logger() ; 2 uses
  %i.n = extractvalue { ptr, ptr } %i.m, 0        ; 2 uses
  %i.o = extractvalue { ptr, ptr } %i.m, 1        ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %i.q = load ptr, ptr %i.p, align 8, !invariant.load !14, !nonnull !14
  %i.r = call noundef zeroext i1 %i.q(ptr noundef %i.n, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.a) #27
  br i1 %i.r, label %bb.e, label %bb.b

bb.e:                                             ; preds = %bb.d
  call void @_RNvNtCscTw95cGIolY_7tracing15___macro_support13___tracing_log(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.h, ptr noundef nonnull %i.n, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.o, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %0)
  br label %bb.b
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNCNCNCNvNtNtCs2HJ6gJZ22Qg_18aws_smithy_runtime6client12orchestrator6try_op00sj_0Cs9rVkZwOUgsI_13deltalake_aws(ptr noalias nofree noundef nonnull readonly align 8 captures(address) dead_on_return dereferenceable(32) %0) unnamed_addr #1 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = load ptr, ptr @_RNvNCNCNvNtNtCs2HJ6gJZ22Qg_18aws_smithy_runtime6client12orchestrator6try_op00sh_10___CALLSITE, align 8, !nonnull !14, !align !259, !noundef !14
  tail call void @_RNvMNtCs2y6mmZ7bjoM_12tracing_core5eventNtB2_5Event8dispatch(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %0)
  %i.c = load atomic i8, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher6EXISTS monotonic, align 1
  %i.d = icmp eq i8 %i.c, 0
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.d, %bb.e, %bb.c, %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  %i.e = load atomic i64, ptr @_RNvCsaljjC7ZTCQu_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8 ; 2 uses
  %i.f = icmp ult i64 %i.e, 6
  tail call void @llvm.assume(i1 %i.f)
  %i.g = icmp samesign ugt i64 %i.e, 3
  br i1 %i.g, label %bb.d, label %bb.b

bb.d:                                             ; preds = %bb.c
  %i.h = load ptr, ptr @_RNvNCNCNvNtNtCs2HJ6gJZ22Qg_18aws_smithy_runtime6client12orchestrator6try_op00sh_10___CALLSITE, align 8, !nonnull !14, !align !259, !noundef !14 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %i.j = load ptr, ptr %i.i, align 8, !nonnull !14, !noundef !14
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 40
  %i.l = load i64, ptr %i.k, align 8, !noundef !14
  store i64 4, ptr %i.a, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.j, ptr %.sroa.3.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %i.l, ptr %.sroa.5.0..sroa_idx, align 8
  %i.m = tail call { ptr, ptr } @_RNvCsaljjC7ZTCQu_3log6logger() ; 2 uses
  %i.n = extractvalue { ptr, ptr } %i.m, 0        ; 2 uses
  %i.o = extractvalue { ptr, ptr } %i.m, 1        ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %i.q = load ptr, ptr %i.p, align 8, !invariant.load !14, !nonnull !14
  %i.r = call noundef zeroext i1 %i.q(ptr noundef %i.n, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.a) #27
  br i1 %i.r, label %bb.e, label %bb.b

bb.e:                                             ; preds = %bb.d
  call void @_RNvNtCscTw95cGIolY_7tracing15___macro_support13___tracing_log(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.h, ptr noundef nonnull %i.n, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.o, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %0)
  br label %bb.b
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNCNCNCNvNtNtCs2HJ6gJZ22Qg_18aws_smithy_runtime6client12orchestrator6try_op00sl_0Cs9rVkZwOUgsI_13deltalake_aws(ptr noalias nofree noundef nonnull readonly align 8 captures(address) dead_on_return dereferenceable(32) %0) unnamed_addr #1 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = load ptr, ptr @_RNvNCNCNvNtNtCs2HJ6gJZ22Qg_18aws_smithy_runtime6client12orchestrator6try_op00si_10___CALLSITE, align 8, !nonnull !14, !align !259, !noundef !14
  tail call void @_RNvMNtCs2y6mmZ7bjoM_12tracing_core5eventNtB2_5Event8dispatch(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %0)
  %i.c = load atomic i8, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher6EXISTS monotonic, align 1
  %i.d = icmp eq i8 %i.c, 0
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.d, %bb.e, %bb.c, %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  %i.e = load atomic i64, ptr @_RNvCsaljjC7ZTCQu_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8 ; 2 uses
  %i.f = icmp ult i64 %i.e, 6
  tail call void @llvm.assume(i1 %i.f)
  %i.g = icmp samesign ugt i64 %i.e, 3
  br i1 %i.g, label %bb.d, label %bb.b

bb.d:                                             ; preds = %bb.c
  %i.h = load ptr, ptr @_RNvNCNCNvNtNtCs2HJ6gJZ22Qg_18aws_smithy_runtime6client12orchestrator6try_op00si_10___CALLSITE, align 8, !nonnull !14, !align !259, !noundef !14 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %i.j = load ptr, ptr %i.i, align 8, !nonnull !14, !noundef !14
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 40
  %i.l = load i64, ptr %i.k, align 8, !noundef !14
  store i64 4, ptr %i.a, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.j, ptr %.sroa.3.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %i.l, ptr %.sroa.5.0..sroa_idx, align 8
  %i.m = tail call { ptr, ptr } @_RNvCsaljjC7ZTCQu_3log6logger() ; 2 uses
  %i.n = extractvalue { ptr, ptr } %i.m, 0        ; 2 uses
  %i.o = extractvalue { ptr, ptr } %i.m, 1        ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %i.q = load ptr, ptr %i.p, align 8, !invariant.load !14, !nonnull !14
  %i.r = call noundef zeroext i1 %i.q(ptr noundef %i.n, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.a) #27
  br i1 %i.r, label %bb.e, label %bb.b

bb.e:                                             ; preds = %bb.d
  call void @_RNvNtCscTw95cGIolY_7tracing15___macro_support13___tracing_log(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.h, ptr noundef nonnull %i.n, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.o, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %0)
  br label %bb.b
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RNCNCNvNtNtCs2HJ6gJZ22Qg_18aws_smithy_runtime6client12orchestrator6try_op00Cs9rVkZwOUgsI_13deltalake_aws(ptr noundef nonnull align 8 %0, ptr noalias noundef nonnull align 8 dereferenceable(32) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = alloca [24 x i8], align 8                ; 7 uses
  %i.c = alloca [16 x i8], align 8                ; 4 uses
  %i.d = alloca [48 x i8], align 8                ; 4 uses
  %i.e = alloca [48 x i8], align 8                ; 5 uses
  %i.f = alloca [16 x i8], align 8                ; 5 uses
  %i.g = alloca [24 x i8], align 8                ; 7 uses
  %i.h = alloca [24 x i8], align 8                ; 6 uses
  %i.i = alloca [24 x i8], align 8                ; 7 uses
  %i.j = alloca [24 x i8], align 8                ; 7 uses
  %i.k = alloca [288 x i8], align 8               ; 4 uses
  %i.l = alloca [288 x i8], align 8               ; 6 uses
  %.sroa.4.i.i833 = alloca [54 x i8], align 2     ; 4 uses
  %.sroa.4.i.i821 = alloca [54 x i8], align 2     ; 4 uses
  %i.m = alloca [16 x i8], align 8                ; 4 uses
  %i.n = alloca [48 x i8], align 8                ; 4 uses
  %i.o = alloca [48 x i8], align 8                ; 5 uses
  %i.p = alloca [40 x i8], align 8                ; 5 uses
  %i.q = alloca [24 x i8], align 8                ; 5 uses
  %.sroa.535.i.i = alloca [16 x i8], align 8      ; 8 uses
  %i.r = alloca [32 x i8], align 8                ; 10 uses
  %i.s = alloca [40 x i8], align 8                ; 11 uses
  %i.t = alloca [40 x i8], align 8                ; 11 uses
  %.sroa.713.i = alloca [16 x i8], align 8        ; 7 uses
  %.sroa.10.i = alloca [16 x i8], align 8         ; 8 uses
  %.sroa.4.i.i733 = alloca [54 x i8], align 2     ; 4 uses
  %.sroa.4.i.i = alloca [54 x i8], align 2        ; 4 uses
  %i.u = alloca [24 x i8], align 8                ; 6 uses
  %i.v = alloca [24 x i8], align 8                ; 6 uses
  %i.w = alloca [16 x i8], align 8                ; 5 uses
  %i.x = alloca [16 x i8], align 8                ; 5 uses
  %i.y = alloca [24 x i8], align 8                ; 4 uses
  %i.z = alloca [24 x i8], align 8                ; 4 uses
  %i.aa = alloca [24 x i8], align 8               ; 4 uses
  %i.ab = alloca [24 x i8], align 8               ; 4 uses
  %i.ac = alloca [24 x i8], align 8               ; 4 uses
  %i.ad = alloca [24 x i8], align 8               ; 4 uses
  %i.ae = alloca [24 x i8], align 8               ; 4 uses
  %i.af = alloca [24 x i8], align 8               ; 4 uses
  %i.ag = alloca [24 x i8], align 8               ; 4 uses
  %i.ah = alloca [112 x i8], align 8              ; 5 uses
  %i.ai = alloca [16 x i8], align 8               ; 6 uses
  %i.aj = alloca [16 x i8], align 8               ; 6 uses
  %i.ak = alloca [32 x i8], align 8               ; 8 uses
  %i.al = alloca [24 x i8], align 8               ; 5 uses
  %i.am = alloca [16 x i8], align 8               ; 6 uses
  %i.an = alloca [16 x i8], align 8               ; 6 uses
  %i.ao = alloca [32 x i8], align 8               ; 8 uses
  %i.ap = alloca [112 x i8], align 8              ; 8 uses
  %i.aq = alloca [16 x i8], align 16              ; 10 uses
  %i.ar = alloca [16 x i8], align 8               ; 6 uses
  %i.as = alloca [16 x i8], align 8               ; 6 uses
  %i.at = alloca [32 x i8], align 8               ; 8 uses
  %i.au = alloca [24 x i8], align 8               ; 5 uses
  %i.av = alloca [16 x i8], align 8               ; 6 uses
  %i.aw = alloca [16 x i8], align 8               ; 6 uses
  %i.ax = alloca [32 x i8], align 8               ; 8 uses
  %i.ay = alloca [112 x i8], align 8              ; 5 uses
  %i.az = alloca [16 x i8], align 8               ; 6 uses
  %i.ba = alloca [16 x i8], align 8               ; 6 uses
  %i.bb = alloca [32 x i8], align 8               ; 8 uses
  %i.bc = alloca [24 x i8], align 8               ; 5 uses
  %i.bd = alloca [16 x i8], align 8               ; 6 uses
  %i.be = alloca [16 x i8], align 8               ; 6 uses
  %i.bf = alloca [32 x i8], align 8               ; 8 uses
  %i.bg = alloca [112 x i8], align 8              ; 8 uses
  %i.bh = alloca [16 x i8], align 16              ; 12 uses
  %i.bi = alloca [24 x i8], align 8               ; 8 uses
  %i.bj = alloca [112 x i8], align 8              ; 5 uses
  %i.bk = alloca [8 x i8], align 8                ; 5 uses
  %i.bl = alloca [16 x i8], align 8               ; 6 uses
  %i.bm = alloca [32 x i8], align 8               ; 8 uses
  %i.bn = alloca [32 x i8], align 8               ; 8 uses
  %i.bo = alloca [24 x i8], align 8               ; 5 uses
  %i.bp = alloca [8 x i8], align 8                ; 5 uses
  %i.bq = alloca [16 x i8], align 8               ; 6 uses
  %i.br = alloca [32 x i8], align 8               ; 8 uses
  %i.bs = alloca [32 x i8], align 8               ; 9 uses
  %i.bt = alloca [112 x i8], align 8              ; 9 uses
  %i.bu = alloca [288 x i8], align 8              ; 3 uses
  %i.bv = alloca [288 x i8], align 8              ; 7 uses
  %i.bw = alloca [40 x i8], align 8               ; 5 uses
  %i.bx = alloca [1384 x i8], align 8             ; 9 uses
  %i.by = alloca [1424 x i8], align 8             ; 5 uses
  %i.bz = alloca [1424 x i8], align 8             ; 8 uses
  %i.ca = alloca [8 x i8], align 8                ; 5 uses
  %i.cb = alloca [16 x i8], align 8               ; 6 uses
  %i.cc = alloca [32 x i8], align 8               ; 8 uses
  %i.cd = alloca [24 x i8], align 8               ; 5 uses
  %i.ce = alloca [8 x i8], align 8                ; 5 uses
  %i.cf = alloca [16 x i8], align 8               ; 6 uses
  %i.cg = alloca [32 x i8], align 8               ; 9 uses
  %i.ch = alloca [16 x i8], align 8               ; 6 uses
  %i.ci = alloca [16 x i8], align 8               ; 6 uses
  %i.cj = alloca [16 x i8], align 8               ; 6 uses
  %i.ck = alloca [32 x i8], align 8               ; 8 uses
  %i.cl = alloca [24 x i8], align 8               ; 5 uses
  %i.cm = alloca [16 x i8], align 8               ; 6 uses
  %i.cn = alloca [16 x i8], align 8               ; 6 uses
  %i.co = alloca [16 x i8], align 8               ; 6 uses
  %i.cp = alloca [32 x i8], align 8               ; 9 uses
  %i.cq = alloca [16 x i8], align 8               ; 6 uses
  %i.cr = alloca [16 x i8], align 8               ; 6 uses
  %i.cs = alloca [32 x i8], align 8               ; 8 uses
  %i.ct = alloca [24 x i8], align 8               ; 5 uses
  %i.cu = alloca [16 x i8], align 8               ; 6 uses
  %i.cv = alloca [16 x i8], align 8               ; 6 uses
  %i.cw = alloca [32 x i8], align 8               ; 8 uses
  %i.cx = alloca [16 x i8], align 8               ; 6 uses
  %i.cy = alloca [16 x i8], align 8               ; 6 uses
  %i.cz = alloca [16 x i8], align 8               ; 6 uses
  %i.da = alloca [32 x i8], align 8               ; 8 uses
  %i.db = alloca [24 x i8], align 8               ; 5 uses
  %i.dc = alloca [16 x i8], align 8               ; 6 uses
  %i.dd = alloca [16 x i8], align 8               ; 6 uses
  %i.de = alloca [16 x i8], align 8               ; 6 uses
  %i.df = alloca [32 x i8], align 8               ; 9 uses
  %i.dg = alloca [16 x i8], align 8               ; 6 uses
  %i.dh = alloca [16 x i8], align 8               ; 6 uses
  %i.di = alloca [16 x i8], align 8               ; 6 uses
  %i.dj = alloca [32 x i8], align 8               ; 8 uses
  %i.dk = alloca [24 x i8], align 8               ; 5 uses
  %i.dl = alloca [16 x i8], align 8               ; 6 uses
  %i.dm = alloca [16 x i8], align 8               ; 6 uses
  %i.dn = alloca [16 x i8], align 8               ; 6 uses
  %i.do = alloca [32 x i8], align 8               ; 8 uses
  %i.dp = alloca [112 x i8], align 8              ; 5 uses
  %i.dq = alloca [16 x i8], align 8               ; 6 uses
  %i.dr = alloca [16 x i8], align 8               ; 6 uses
  %i.ds = alloca [32 x i8], align 8               ; 8 uses
  %i.dt = alloca [24 x i8], align 8               ; 5 uses
  %i.du = alloca [16 x i8], align 8               ; 6 uses
  %i.dv = alloca [16 x i8], align 8               ; 6 uses
  %i.dw = alloca [32 x i8], align 8               ; 8 uses
  %i.dx = alloca [112 x i8], align 8              ; 6 uses
  %i.dy = alloca [112 x i8], align 8              ; 8 uses
  %i.dz = alloca [112 x i8], align 8              ; 7 uses
  %i.ea = alloca [16 x i8], align 8               ; 6 uses
  %i.eb = alloca [16 x i8], align 8               ; 6 uses
  %i.ec = alloca [32 x i8], align 8               ; 8 uses
  %i.ed = alloca [24 x i8], align 8               ; 5 uses
  %i.ee = alloca [16 x i8], align 8               ; 6 uses
  %i.ef = alloca [16 x i8], align 8               ; 6 uses
  %i.eg = alloca [32 x i8], align 8               ; 8 uses
  %i.eh = alloca [16 x i8], align 8               ; 6 uses
  %i.ei = alloca [112 x i8], align 8              ; 7 uses
  %i.ej = alloca [16 x i8], align 8               ; 6 uses
  %i.ek = alloca [16 x i8], align 8               ; 6 uses
  %i.el = alloca [32 x i8], align 8               ; 8 uses
  %i.em = alloca [24 x i8], align 8               ; 5 uses
  %i.en = alloca [16 x i8], align 8               ; 6 uses
  %i.eo = alloca [16 x i8], align 8               ; 6 uses
  %i.ep = alloca [32 x i8], align 8               ; 8 uses
  %i.eq = alloca [16 x i8], align 8               ; 6 uses
  %i.er = alloca [16 x i8], align 8               ; 6 uses
  %i.es = alloca [16 x i8], align 8               ; 6 uses
  %i.et = alloca [32 x i8], align 8               ; 8 uses
  %i.eu = alloca [24 x i8], align 8               ; 5 uses
  %i.ev = alloca [16 x i8], align 8               ; 6 uses
  %i.ew = alloca [16 x i8], align 8               ; 6 uses
  %i.ex = alloca [32 x i8], align 8               ; 8 uses
  %i.ey = alloca [16 x i8], align 16              ; 10 uses
  %i.ez = alloca [112 x i8], align 8              ; 6 uses
  %i.fa = alloca [16 x i8], align 8               ; 6 uses
  %i.fb = alloca [16 x i8], align 8               ; 6 uses
  %i.fc = alloca [32 x i8], align 8               ; 8 uses
  %i.fd = alloca [24 x i8], align 8               ; 5 uses
  %i.fe = alloca [16 x i8], align 8               ; 6 uses
  %i.ff = alloca [16 x i8], align 8               ; 6 uses
  %i.fg = alloca [32 x i8], align 8               ; 8 uses
  %i.fh = alloca [48 x i8], align 8               ; 6 uses
  %i.fi = alloca [48 x i8], align 8               ; 7 uses
  %i.fj = alloca [112 x i8], align 8              ; 6 uses
  %i.fk = alloca [16 x i8], align 8               ; 6 uses
  %i.fl = alloca [16 x i8], align 8               ; 6 uses
  %i.fm = alloca [32 x i8], align 8               ; 8 uses
  %i.fn = alloca [24 x i8], align 8               ; 5 uses
  %i.fo = alloca [16 x i8], align 8               ; 6 uses
  %i.fp = alloca [16 x i8], align 8               ; 6 uses
  %i.fq = alloca [32 x i8], align 8               ; 8 uses
  %i.fr = alloca [48 x i8], align 8               ; 6 uses
  %i.fs = alloca [48 x i8], align 8               ; 7 uses
  %i.ft = alloca [32 x i8], align 8               ; 5 uses
  %i.fu = alloca [120 x i8], align 8              ; 7 uses
  %i.fv = alloca [112 x i8], align 8              ; 5 uses
  %i.fw = alloca [16 x i8], align 8               ; 6 uses
  %i.fx = alloca [16 x i8], align 8               ; 6 uses
  %i.fy = alloca [32 x i8], align 8               ; 8 uses
  %i.fz = alloca [24 x i8], align 8               ; 5 uses
  %i.ga = alloca [16 x i8], align 8               ; 6 uses
  %i.gb = alloca [16 x i8], align 8               ; 6 uses
  %i.gc = alloca [32 x i8], align 8               ; 8 uses
  %i.gd = alloca [112 x i8], align 8              ; 8 uses
  %i.ge = alloca [40 x i8], align 8               ; 4 uses
  %.sroa.61093 = alloca [24 x i8], align 8        ; 4 uses
  %.sroa.81089.sroa.6 = alloca [24 x i8], align 8 ; 10 uses
  %i.gf = alloca [32 x i8], align 8               ; 13 uses
  %i.gg = alloca [16 x i8], align 8               ; 6 uses
  %i.gh = alloca [16 x i8], align 8               ; 6 uses
  %i.gi = alloca [32 x i8], align 8               ; 8 uses
  %i.gj = alloca [24 x i8], align 8               ; 5 uses
  %i.gk = alloca [16 x i8], align 8               ; 6 uses
  %i.gl = alloca [16 x i8], align 8               ; 6 uses
  %i.gm = alloca [32 x i8], align 8               ; 8 uses
  %i.gn = alloca [112 x i8], align 8              ; 5 uses
  %i.go = alloca [16 x i8], align 8               ; 6 uses
  %i.gp = alloca [16 x i8], align 8               ; 6 uses
  %i.gq = alloca [32 x i8], align 8               ; 8 uses
  %i.gr = alloca [24 x i8], align 8               ; 5 uses
  %i.gs = alloca [16 x i8], align 8               ; 6 uses
  %i.gt = alloca [16 x i8], align 8               ; 6 uses
  %i.gu = alloca [32 x i8], align 8               ; 8 uses
  %i.gv = alloca [112 x i8], align 8              ; 7 uses
  %i.gw = alloca [376 x i8], align 8              ; 6 uses
  %i.gx = alloca [376 x i8], align 8              ; 10 uses
  %i.gy = alloca [48 x i8], align 8               ; 3 uses
  %i.gz = alloca [16 x i8], align 8               ; 13 uses
  %i.ha = alloca [32 x i8], align 8               ; 8 uses
  %i.hb = alloca [40 x i8], align 8               ; 8 uses
  %i.hc = alloca [32 x i8], align 8               ; 8 uses
  %i.hd = alloca [40 x i8], align 8               ; 12 uses
  %i.he = alloca [40 x i8], align 8               ; 8 uses
  %i.hf = alloca [112 x i8], align 8              ; 6 uses
end_hunk_0
begin_hunk_1_@_RNCNCNvNtNtCs2HJ6gJZ22Qg_18aws_smithy_runtime6client12orchestrator6try_op00Cs9rVkZwOUgsI_13deltalake_aws:bb.a

bb.fx:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc11collections9vec_deque8VecDequeNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i.i
  %i.te = landingpad { ptr, i32 }
          cleanup
  br label %.body14.i.i

bb.fy:                                            ; preds = %bb.fw, %.thread28.i
  %i.tf = phi ptr [ %i.sq, %.thread28.i ], [ %i.sp, %bb.fw ]
  %i.tg = phi ptr [ %i.sr, %.thread28.i ], [ %i.so, %bb.fw ]
  %i.th = phi ptr [ %.sroa.7.0..sroa_idx.i, %.thread28.i ], [ %.phi.trans.insert.i, %bb.fw ]
  %i.ti = phi ptr [ %i.ss, %.thread28.i ], [ %i.sv, %bb.fw ] ; 3 uses
  %i.tj = getelementptr inbounds nuw i8, ptr %0, i64 777
  %i.tk = getelementptr inbounds nuw i8, ptr %0, i64 778
  %i.tl = getelementptr inbounds nuw i8, ptr %0, i64 456
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %i.tl, ptr noundef nonnull align 8 dereferenceable(120) %i.ti, i64 120, i1 false), !noalias !1374
  %i.tm = getelementptr inbounds nuw i8, ptr %0, i64 576
  store i64 0, ptr %i.tm, align 8, !alias.scope !1378, !noalias !1374
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 584
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !alias.scope !1378, !noalias !1374
  %.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 592
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.0..sroa_idx.i.i.i, i8 0, i64 24, i1 false), !alias.scope !1378, !noalias !1374
  store i8 1, ptr %i.tj, align 1, !noalias !1374
  store i8 0, ptr %i.tk, align 2, !noalias !1374
  %i.tn = getelementptr inbounds nuw i8, ptr %0, i64 616 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %i.tn, ptr noundef nonnull align 8 dereferenceable(120) %i.ti, i64 120, i1 false), !noalias !1374
  %i.to = getelementptr inbounds nuw i8, ptr %0, i64 736
  store ptr %i.tn, ptr %i.to, align 8, !noalias !1374
  br label %.thread.i.i

bb.fz:                                            ; preds = %bb.fw
  invoke void @_RNvNtNtCsbvkFyIu7lgC_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @58) #25
          to label %.noexc.i unwind label %bb.gy, !noalias !1381

.noexc.i:                                         ; preds = %bb.fz
  unreachable

bb.ga:                                            ; preds = %bb.fw
  invoke void @_RNvNtNtCsbvkFyIu7lgC_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @58) #25
          to label %.noexc6.i unwind label %bb.gy, !noalias !1381

.noexc6.i:                                        ; preds = %bb.ga
  unreachable

bb.gb:                                            ; preds = %bb.fw
  %.phi.trans.insert48.i.i = getelementptr inbounds nuw i8, ptr %0, i64 768 ; 3 uses
  %.pre.i.i = load i8, ptr %.phi.trans.insert48.i.i, align 8, !range !517, !noalias !1382
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !1374
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1386)
  switch i8 %.pre.i.i, label %default.unreachable1524 [
    i8 0, label %._crit_edge.i
    i8 1, label %bb.gd
    i8 2, label %bb.ge
    i8 3, label %bb.gf
  ]

._crit_edge.i:                                    ; preds = %bb.gb
  %.phi.trans.insert25.i = getelementptr inbounds nuw i8, ptr %0, i64 744
  %.pre26.i = load ptr, ptr %.phi.trans.insert25.i, align 8, !noalias !1382
  br label %bb.gc

bb.gc:                                            ; preds = %.thread.i.i, %._crit_edge.i
  %i.tp = phi ptr [ %i.ut, %.thread.i.i ], [ %i.sp, %._crit_edge.i ]
  %i.tq = phi ptr [ %i.uu, %.thread.i.i ], [ %i.so, %._crit_edge.i ]
  %i.tr = phi ptr [ %i.uv, %.thread.i.i ], [ %.phi.trans.insert.i, %._crit_edge.i ]
  %i.ts = phi ptr [ %i.uw, %.thread.i.i ], [ %i.sv, %._crit_edge.i ]
  %i.tt = phi ptr [ %.val.i.i, %.thread.i.i ], [ %.pre26.i, %._crit_edge.i ]
  %i.tu = phi ptr [ %.sroa.10.0..sroa_idx.i.i, %.thread.i.i ], [ %.phi.trans.insert48.i.i, %._crit_edge.i ]
  %i.tv = getelementptr inbounds nuw i8, ptr %0, i64 752 ; 2 uses
  store ptr %i.tt, ptr %i.tv, align 8, !noalias !1382
  %i.tw = getelementptr inbounds nuw i8, ptr %0, i64 760
  store ptr %i.tv, ptr %i.tw, align 8, !noalias !1382
  br label %bb.gf

bb.gd:                                            ; preds = %bb.gb
  invoke void @_RNvNtNtCsbvkFyIu7lgC_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @57) #25
          to label %.noexc.i.i unwind label %bb.gh, !noalias !1387

.noexc.i.i:                                       ; preds = %bb.gd
  unreachable

bb.ge:                                            ; preds = %bb.gb
  invoke void @_RNvNtNtCsbvkFyIu7lgC_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @57) #25
          to label %.noexc13.i.i unwind label %bb.gh, !noalias !1387

.noexc13.i.i:                                     ; preds = %bb.ge
  unreachable

bb.gf:                                            ; preds = %bb.gc, %bb.gb
  %i.tx = phi ptr [ %i.tp, %bb.gc ], [ %i.sp, %bb.gb ] ; 10 uses
  %i.ty = phi ptr [ %i.tq, %bb.gc ], [ %i.so, %bb.gb ] ; 7 uses
  %i.tz = phi ptr [ %i.tr, %bb.gc ], [ %.phi.trans.insert.i, %bb.gb ] ; 9 uses
  %i.ua = phi ptr [ %i.ts, %bb.gc ], [ %i.sv, %bb.gb ] ; 7 uses
  %i.ub = phi ptr [ %i.tu, %bb.gc ], [ %.phi.trans.insert48.i.i, %bb.gb ] ; 2 uses
  %i.uc = getelementptr inbounds nuw i8, ptr %0, i64 760
  invoke void @_RNvXs0_NtNtCsbvkFyIu7lgC_4core6future7poll_fnINtB5_6PollFnNCNCNvMs0_NtCs2DiVQAxFeQE_16aws_smithy_types4bodyNtB14_7SdkBody4next00ENtNtB7_6future6Future4pollCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.s, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.uc, ptr noalias noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.gi unwind label %bb.gg, !noalias !1388

bb.gg:                                            ; preds = %bb.gf
  %i.ud = landingpad { ptr, i32 }
          cleanup
  store i8 2, ptr %i.ub, align 8, !noalias !1382
  br label %.body.i.i

bb.gh:                                            ; preds = %bb.ge, %bb.gd
  %i.ue = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

bb.gi:                                            ; preds = %bb.gf
  %i.uf = load i64, ptr %i.s, align 8, !range !359, !alias.scope !1386, !noalias !1389, !noundef !14 ; 2 uses
  %i.ug = icmp eq i64 %i.uf, 2                    ; 2 uses
  %spec.select.i.i.i = select i1 %i.ug, i8 3, i8 1
  store i8 %spec.select.i.i.i, ptr %i.ub, align 8, !noalias !1382
  br i1 %i.ug, label %.thread.i, label %bb.gk

.thread.i:                                        ; preds = %bb.gi
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !1374
  store i8 3, ptr %i.tz, align 8, !noalias !1374
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.535.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !1370
  br label %bb.hg

bb.gj:                                            ; preds = %.body.i.i, %bb.gn
  %i.uh = phi ptr [ %i.vl, %.body.i.i ], [ %i.tx, %bb.gn ]
  %i.ui = phi ptr [ %i.vm, %.body.i.i ], [ %i.ty, %bb.gn ]
  %i.uj = phi ptr [ %i.vn, %.body.i.i ], [ %i.tz, %bb.gn ]
  %i.uk = phi ptr [ %i.vo, %.body.i.i ], [ %i.ua, %bb.gn ]
  %.pn5.pn.i.i = phi { ptr, i32 } [ %.pn3.i.i, %.body.i.i ], [ %i.us, %bb.gn ]
  %i.ul = getelementptr inbounds nuw i8, ptr %0, i64 616
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs2DiVQAxFeQE_16aws_smithy_types4body7SdkBodyECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(120) %i.ul) #23
          to label %bb.gp unwind label %bb.gu, !noalias !1388

bb.gk:                                            ; preds = %bb.gi
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %.sroa.2.sroa.0.0.copyload.i.i = load ptr, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !noalias !1374 ; 2 uses
  %.sroa.2.sroa.2.0..sroa.2.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %.sroa.2.sroa.2.0.copyload.i.i = load ptr, ptr %.sroa.2.sroa.2.0..sroa.2.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !1374 ; 3 uses
  %.sroa.2.sroa.3.0..sroa.2.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  %.sroa.2.sroa.3.0.copyload.i.i = load ptr, ptr %.sroa.2.sroa.3.0..sroa.2.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !1374 ; 3 uses
  %.sroa.2.sroa.4.0..sroa.2.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  %.sroa.2.sroa.4.0.copyload.i.i = load i64, ptr %.sroa.2.sroa.4.0..sroa.2.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !1374
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !1374
  %i.um = trunc nuw i64 %i.uf to i1
  br i1 %i.um, label %bb.gl, label %bb.gm

bb.gl:                                            ; preds = %bb.gk
  %i.un = getelementptr inbounds nuw i8, ptr %0, i64 576 ; 4 uses
  %i.uo = icmp eq ptr %.sroa.2.sroa.0.0.copyload.i.i, null
  br i1 %i.uo, label %bb.go, label %_RNvXsp_NtCsbvkFyIu7lgC_4core6resultINtB5_6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB7_5error5ErrorNtNtB7_6marker4SyncNtB2f_4SendEL_EENtNtNtB7_3ops9try_trait3Try6branchCs9rVkZwOUgsI_13deltalake_aws.exit.i.i

bb.gm:                                            ; preds = %bb.gk
  %i.up = getelementptr inbounds nuw i8, ptr %0, i64 777 ; 2 uses
  store i8 0, ptr %i.up, align 1, !noalias !1374
  %i.uq = getelementptr inbounds nuw i8, ptr %0, i64 576
  %.sroa.041.0.copyload.i.i = load i64, ptr %i.uq, align 8, !noalias !1374 ; 2 uses
  %.sroa.442.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 584
  %.sroa.442.0.copyload.i.i = load ptr, ptr %.sroa.442.0..sroa_idx.i.i, align 8, !noalias !1374
  %.sroa.543.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 592
  %.sroa.543.0.copyload.i.i = load ptr, ptr %.sroa.543.0..sroa_idx.i.i, align 8, !noalias !1374
  %.sroa.644.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 600
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.535.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.644.0..sroa_idx.i.i, i64 16, i1 false), !noalias !1374
  %i.ur = getelementptr inbounds nuw i8, ptr %0, i64 616
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs2DiVQAxFeQE_16aws_smithy_types4body7SdkBodyECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(120) %i.ur)
          to label %bb.gz unwind label %bb.gq, !noalias !1388

_RNvXsp_NtCsbvkFyIu7lgC_4core6resultINtB5_6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB7_5error5ErrorNtNtB7_6marker4SyncNtB2f_4SendEL_EENtNtNtB7_3ops9try_trait3Try6branchCs9rVkZwOUgsI_13deltalake_aws.exit.i.i: ; preds = %bb.gl
  store ptr %.sroa.2.sroa.0.0.copyload.i.i, ptr %i.r, align 8, !noalias !1374
  %.sroa.8.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store ptr %.sroa.2.sroa.2.0.copyload.i.i, ptr %.sroa.8.0..sroa_idx.i.i, align 8, !noalias !1374
  %.sroa.1126.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  store ptr %.sroa.2.sroa.3.0.copyload.i.i, ptr %.sroa.1126.0..sroa_idx.i.i, align 8, !noalias !1374
  %.sroa.14.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  store i64 %.sroa.2.sroa.4.0.copyload.i.i, ptr %.sroa.14.0..sroa_idx.i.i, align 8, !noalias !1374
  invoke void @_RNvMs1_NtCsezuMeTmAxXc_11bytes_utils9segmentedINtB5_12SegmentedBufNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesE4pushCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.un, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.r)
          to label %_RNvXsp_NtCsbvkFyIu7lgC_4core6resultINtB5_6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB7_5error5ErrorNtNtB7_6marker4SyncNtB2f_4SendEL_EENtNtNtB7_3ops9try_trait3Try6branchCs9rVkZwOUgsI_13deltalake_aws.exit._crit_edge.i.i unwind label %bb.gn, !noalias !1388

_RNvXsp_NtCsbvkFyIu7lgC_4core6resultINtB5_6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB7_5error5ErrorNtNtB7_6marker4SyncNtB2f_4SendEL_EENtNtNtB7_3ops9try_trait3Try6branchCs9rVkZwOUgsI_13deltalake_aws.exit._crit_edge.i.i: ; preds = %_RNvXsp_NtCsbvkFyIu7lgC_4core6resultINtB5_6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB7_5error5ErrorNtNtB7_6marker4SyncNtB2f_4SendEL_EENtNtNtB7_3ops9try_trait3Try6branchCs9rVkZwOUgsI_13deltalake_aws.exit.i.i
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %0, i64 736
  %.val.pre.i.i = load ptr, ptr %.phi.trans.insert.i.i, align 8, !noalias !1374
  br label %.thread.i.i

bb.gn:                                            ; preds = %_RNvXsp_NtCsbvkFyIu7lgC_4core6resultINtB5_6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB7_5error5ErrorNtNtB7_6marker4SyncNtB2f_4SendEL_EENtNtNtB7_3ops9try_trait3Try6branchCs9rVkZwOUgsI_13deltalake_aws.exit.i.i
  %i.us = landingpad { ptr, i32 }
          cleanup
  br label %bb.gj

.thread.i.i:                                      ; preds = %_RNvXsp_NtCsbvkFyIu7lgC_4core6resultINtB5_6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB7_5error5ErrorNtNtB7_6marker4SyncNtB2f_4SendEL_EENtNtNtB7_3ops9try_trait3Try6branchCs9rVkZwOUgsI_13deltalake_aws.exit._crit_edge.i.i, %bb.fy
  %i.ut = phi ptr [ %i.tx, %_RNvXsp_NtCsbvkFyIu7lgC_4core6resultINtB5_6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB7_5error5ErrorNtNtB7_6marker4SyncNtB2f_4SendEL_EENtNtNtB7_3ops9try_trait3Try6branchCs9rVkZwOUgsI_13deltalake_aws.exit._crit_edge.i.i ], [ %i.tf, %bb.fy ]
  %i.uu = phi ptr [ %i.ty, %_RNvXsp_NtCsbvkFyIu7lgC_4core6resultINtB5_6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB7_5error5ErrorNtNtB7_6marker4SyncNtB2f_4SendEL_EENtNtNtB7_3ops9try_trait3Try6branchCs9rVkZwOUgsI_13deltalake_aws.exit._crit_edge.i.i ], [ %i.tg, %bb.fy ]
  %i.uv = phi ptr [ %i.tz, %_RNvXsp_NtCsbvkFyIu7lgC_4core6resultINtB5_6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB7_5error5ErrorNtNtB7_6marker4SyncNtB2f_4SendEL_EENtNtNtB7_3ops9try_trait3Try6branchCs9rVkZwOUgsI_13deltalake_aws.exit._crit_edge.i.i ], [ %i.th, %bb.fy ]
  %i.uw = phi ptr [ %i.ua, %_RNvXsp_NtCsbvkFyIu7lgC_4core6resultINtB5_6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB7_5error5ErrorNtNtB7_6marker4SyncNtB2f_4SendEL_EENtNtNtB7_3ops9try_trait3Try6branchCs9rVkZwOUgsI_13deltalake_aws.exit._crit_edge.i.i ], [ %i.ti, %bb.fy ]
  %.val.i.i = phi ptr [ %.val.pre.i.i, %_RNvXsp_NtCsbvkFyIu7lgC_4core6resultINtB5_6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB7_5error5ErrorNtNtB7_6marker4SyncNtB2f_4SendEL_EENtNtNtB7_3ops9try_trait3Try6branchCs9rVkZwOUgsI_13deltalake_aws.exit._crit_edge.i.i ], [ %i.tn, %bb.fy ] ; 2 uses
  %i.ux = getelementptr inbounds nuw i8, ptr %0, i64 744
  store ptr %.val.i.i, ptr %i.ux, align 8, !noalias !1374
  %.sroa.10.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 768 ; 2 uses
  store i8 0, ptr %.sroa.10.0..sroa_idx.i.i, align 8, !noalias !1374
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !1374
  br label %bb.gc

bb.go:                                            ; preds = %bb.gl
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.2.sroa.2.0.copyload.i.i) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.2.sroa.3.0.copyload.i.i) ]
  %i.uy = getelementptr inbounds nuw i8, ptr %0, i64 616
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs2DiVQAxFeQE_16aws_smithy_types4body7SdkBodyECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(120) %i.uy)
          to label %bb.gr unwind label %bb.gq, !noalias !1388

bb.gp:                                            ; preds = %bb.gq, %bb.gj
  %i.uz = phi ptr [ %i.tx, %bb.gq ], [ %i.uh, %bb.gj ] ; 2 uses
  %i.va = phi ptr [ %i.ty, %bb.gq ], [ %i.ui, %bb.gj ] ; 2 uses
  %i.vb = phi ptr [ %i.tz, %bb.gq ], [ %i.uj, %bb.gj ] ; 2 uses
  %i.vc = phi ptr [ %i.ua, %bb.gq ], [ %i.uk, %bb.gj ] ; 2 uses
  %.pn9.i.i = phi { ptr, i32 } [ %i.vg, %bb.gq ], [ %.pn5.pn.i.i, %bb.gj ] ; 2 uses
  %i.vd = getelementptr inbounds nuw i8, ptr %0, i64 777
  %i.ve = load i8, ptr %i.vd, align 1, !range !541, !noalias !1374, !noundef !14
  %i.vf = trunc nuw i8 %i.ve to i1
  br i1 %i.vf, label %bb.gv, label %.body14.i.i

bb.gq:                                            ; preds = %bb.go, %bb.gm
  %i.vg = landingpad { ptr, i32 }
          cleanup
  br label %bb.gp

bb.gr:                                            ; preds = %bb.go
  invoke void @_RNvXs_NtNtCs6Po7BT7Nknu_5alloc11collections9vec_dequeINtB4_8VecDequeNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.un)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc11collections9vec_deque8VecDequeNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i.i unwind label %bb.gs, !noalias !1388

bb.gs:                                            ; preds = %bb.gr
  %i.vh = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.un)
          to label %.body14.i.i unwind label %bb.gt, !noalias !1388

bb.gt:                                            ; preds = %bb.gs
  %i.vi = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #22, !noalias !1388
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc11collections9vec_deque8VecDequeNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i.i: ; preds = %bb.gr
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.un)
          to label %.thread18.i unwind label %bb.fx, !noalias !1388

.thread18.i:                                      ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc11collections9vec_deque8VecDequeNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i.i
  %i.vj = getelementptr inbounds nuw i8, ptr %0, i64 777
  store i8 0, ptr %i.vj, align 1, !noalias !1374
  %i.vk = getelementptr inbounds nuw i8, ptr %0, i64 778
  store i8 0, ptr %i.vk, align 2, !noalias !1374
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.10.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.535.i.i, i64 16, i1 false), !noalias !1390
  store i8 1, ptr %i.tz, align 8, !noalias !1374
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.535.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !1370
  br label %bb.ha

.body.i.i:                                        ; preds = %bb.gh, %bb.gg
  %i.vl = phi ptr [ %i.tx, %bb.gg ], [ %i.sp, %bb.gh ]
  %i.vm = phi ptr [ %i.ty, %bb.gg ], [ %i.so, %bb.gh ]
  %i.vn = phi ptr [ %i.tz, %bb.gg ], [ %.phi.trans.insert.i, %bb.gh ]
  %i.vo = phi ptr [ %i.ua, %bb.gg ], [ %i.sv, %bb.gh ]
  %.pn3.i.i = phi { ptr, i32 } [ %i.ud, %bb.gg ], [ %i.ue, %bb.gh ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !1374
  br label %bb.gj

bb.gu:                                            ; preds = %bb.gx, %bb.gv, %bb.gj
  %i.vp = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #22, !noalias !1388
  unreachable

bb.gv:                                            ; preds = %bb.gp
  %i.vq = getelementptr inbounds nuw i8, ptr %0, i64 576
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCsezuMeTmAxXc_11bytes_utils9segmented12SegmentedBufNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesEECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef align 8 dereferenceable(40) %i.vq) #23
          to label %.body14.i.i unwind label %bb.gu, !noalias !1388

bb.gw:                                            ; preds = %bb.gx, %.body14.i.i
  store i8 0, ptr %i.tb, align 2, !noalias !1374
  store i8 2, ptr %i.sy, align 8, !noalias !1374
  br label %.body.i

bb.gx:                                            ; preds = %.body14.i.i
  %i.vr = getelementptr inbounds nuw i8, ptr %0, i64 456
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs2DiVQAxFeQE_16aws_smithy_types4body7SdkBodyECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(120) %i.vr) #23
          to label %bb.gw unwind label %bb.gu, !noalias !1388

bb.gy:                                            ; preds = %bb.ga, %bb.fz
  %i.vs = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

bb.gz:                                            ; preds = %bb.gm
  store i8 0, ptr %i.up, align 1, !noalias !1374
  %i.vt = getelementptr inbounds nuw i8, ptr %0, i64 778
  store i8 0, ptr %i.vt, align 2, !noalias !1374
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.10.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.535.i.i, i64 16, i1 false), !noalias !1390
  store i8 1, ptr %i.tz, align 8, !noalias !1374
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.535.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !1370
  %i.vu = icmp eq i64 %.sroa.041.0.copyload.i.i, -9223372036854775807
  br i1 %i.vu, label %bb.hg, label %bb.ha

bb.ha:                                            ; preds = %bb.gz, %.thread18.i
  %.sroa.432.0.i24.i = phi ptr [ %.sroa.2.sroa.3.0.copyload.i.i, %.thread18.i ], [ %.sroa.543.0.copyload.i.i, %bb.gz ] ; 3 uses
  %.sroa.329.0.i23.i = phi ptr [ %.sroa.2.sroa.2.0.copyload.i.i, %.thread18.i ], [ %.sroa.442.0.copyload.i.i, %bb.gz ] ; 4 uses
  %.sroa.027.0.i22.i = phi i64 [ -9223372036854775808, %.thread18.i ], [ %.sroa.041.0.copyload.i.i, %bb.gz ] ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.713.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.10.i, i64 16, i1 false), !noalias !1370
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.10.i)
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs5_NtCs2DiVQAxFeQE_16aws_smithy_types11byte_streamNtBO_5Inner7collect0ECs9rVkZwOUgsI_13deltalake_aws(ptr noundef nonnull align 8 %i.ua)
          to label %bb.hc unwind label %bb.hb, !noalias !1381

bb.hb:                                            ; preds = %bb.hd, %bb.ha
  %i.vv = landingpad { ptr, i32 }
          cleanup
  br label %bb.ft

bb.hc:                                            ; preds = %bb.ha
  %i.vw = icmp eq i64 %.sroa.027.0.i22.i, -9223372036854775808
  br i1 %i.vw, label %bb.hd, label %bb.hi

bb.hd:                                            ; preds = %bb.hc
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.329.0.i23.i) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.432.0.i24.i) ]
  %i.vx = getelementptr inbounds nuw i8, ptr %i.t, i64 8 ; 2 uses
  invoke void @_RINvMNtNtCs2DiVQAxFeQE_16aws_smithy_types11byte_stream5errorNtB3_5Error9streamingINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCsbvkFyIu7lgC_4core5error5ErrorNtNtB1V_6marker4SyncNtB2s_4SendEL_EECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.vx, ptr noundef nonnull %.sroa.329.0.i23.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %.sroa.432.0.i24.i)
          to label %2 unwind label %bb.hb, !noalias !1381

.body.i:                                          ; preds = %bb.gy, %bb.gw
  %i.vy = phi ptr [ %i.sw, %bb.gw ], [ %i.sp, %bb.gy ]
  %i.vz = phi ptr [ %i.sx, %bb.gw ], [ %i.so, %bb.gy ]
  %i.wa = phi ptr [ %i.sz, %bb.gw ], [ %i.sv, %bb.gy ]
  %.pn2.i = phi { ptr, i32 } [ %.pn11.i.i, %bb.gw ], [ %i.vs, %bb.gy ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.10.i)
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs5_NtCs2DiVQAxFeQE_16aws_smithy_types11byte_streamNtBO_5Inner7collect0ECs9rVkZwOUgsI_13deltalake_aws(ptr noundef nonnull align 8 %i.wa) #23
          to label %bb.ft unwind label %bb.he, !noalias !1381

bb.he:                                            ; preds = %.body.i
  %i.wb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #22, !noalias !1381
  unreachable

bb.hf:                                            ; preds = %bb.fv, %bb.fu
  %i.wc = landingpad { ptr, i32 }
          cleanup
  br label %.body738

bb.hg:                                            ; preds = %bb.gz, %.thread.i
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.10.i)
  store i8 3, ptr %i.tx, align 8, !noalias !1370
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.713.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.81089.sroa.6)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.gf)
  br label %common.ret

bb.hh:                                            ; preds = %2, %bb.hi
  %i.wd = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesECs9rVkZwOUgsI_13deltalake_aws.exit

2:                                                ; preds = %bb.hd
  %.sroa.81089.sroa.0.0.copyload1357 = load ptr, ptr %i.vx, align 8, !noalias !1391
  %.sroa.81089.sroa.6.0..sroa.81089.0..sroa_idx1090.sroa_idx1358 = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.81089.sroa.6, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.81089.sroa.6.0..sroa.81089.0..sroa_idx1090.sroa_idx1358, i64 24, i1 false), !noalias !1391
  store i8 1, ptr %i.tx, align 8, !noalias !1370
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.713.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.61093, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.81089.sroa.6, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.81089.sroa.6)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !1392
  store ptr %.sroa.81089.sroa.0.0.copyload1357, ptr %i.q, align 8, !noalias !1396
  %.sroa.61093.8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.61093.8..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.61093, i64 16, i1 false), !noalias !1396
  %3 = invoke { ptr, ptr } @_RNvXse_NtNtCs6Po7BT7Nknu_5alloc5boxed7convertINtB7_3BoxDNtNtCsbvkFyIu7lgC_4core5error5ErrorNtNtBW_6marker4SyncNtB1t_4SendEL_EINtNtBW_7convert4FromNtNtNtCs2DiVQAxFeQE_16aws_smithy_types11byte_stream5error5ErrorE4fromCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.q)
          to label %bb.ps unwind label %bb.hh     ; 2 uses

bb.hi:                                            ; preds = %bb.hc
  store i64 %.sroa.027.0.i22.i, ptr %i.t, align 8, !alias.scope !1397, !noalias !1370
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  store ptr %.sroa.329.0.i23.i, ptr %.sroa.3.0..sroa_idx.i, align 8, !alias.scope !1397, !noalias !1370
  %.sroa.512.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.t, i64 16 ; 2 uses
  store ptr %.sroa.432.0.i24.i, ptr %.sroa.512.0..sroa_idx.i, align 8, !alias.scope !1397, !noalias !1370
  %.sroa.713.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.713.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.713.i, i64 16, i1 false), !alias.scope !1397, !noalias !1370
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.81089.sroa.6, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.512.0..sroa_idx.i, i64 24, i1 false), !noalias !1391
  store i8 1, ptr %i.tx, align 8, !noalias !1370
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.713.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.61093, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.81089.sroa.6, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.81089.sroa.6)
  %i.we = inttoptr i64 %.sroa.027.0.i22.i to ptr
  store ptr %i.we, ptr %i.ge, align 8
  %.sroa.121078.8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ge, i64 8
  store ptr %.sroa.329.0.i23.i, ptr %.sroa.121078.8..sroa_idx, align 8
  %.sroa.13.8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ge, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.13.8..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.61093, i64 24, i1 false)
  invoke void @_RNvMs3_NtCs2DiVQAxFeQE_16aws_smithy_types11byte_streamNtB5_15AggregatedBytes10into_bytes(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.gf, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(40) %i.ge)
          to label %bb.hj unwind label %bb.hh

bb.hj:                                            ; preds = %bb.hi
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fu)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ft)
  %i.wf = load ptr, ptr %i.gf, align 8, !noalias !1401, !nonnull !14, !align !259, !noundef !14
  %i.wg = load ptr, ptr %i.wf, align 8, !noalias !1401, !nonnull !14, !noundef !14
  %i.wh = getelementptr inbounds nuw i8, ptr %i.gf, i64 24 ; 2 uses
  %i.wi = getelementptr inbounds nuw i8, ptr %i.gf, i64 8 ; 2 uses
  %i.wj = load ptr, ptr %i.wi, align 8, !noalias !1401, !noundef !14
  %i.wk = getelementptr inbounds nuw i8, ptr %i.gf, i64 16 ; 2 uses
  %i.wl = load i64, ptr %i.wk, align 8, !noalias !1401, !noundef !14
  invoke void %i.wg(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.ft, ptr noundef nonnull align 8 %i.wh, ptr noundef %i.wj, i64 noundef %i.wl)
          to label %_RNvXs2_NtCs9Ct3XQYJhun_5bytes5bytesNtB5_5BytesNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit unwind label %bb.hk, !inline_history !1404

bb.hk:                                            ; preds = %bb.hj
  %i.wm = landingpad { ptr, i32 }
          cleanup
  br label %bb.hl

_RNvXs2_NtCs9Ct3XQYJhun_5bytes5bytesNtB5_5BytesNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit: ; preds = %bb.hj
  invoke void @_RNvXs2_NtCs2DiVQAxFeQE_16aws_smithy_types4bodyNtB5_7SdkBodyINtNtCsbvkFyIu7lgC_4core7convert4FromNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesE4from(ptr noalias noundef nonnull sret([120 x i8]) align 8 captures(none) dereferenceable(120) %i.fu, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.ft)
          to label %bb.hn unwind label %bb.hm

bb.hl:                                            ; preds = %bb.hm, %bb.hk
  %.pn90 = phi { ptr, i32 } [ %i.wn, %bb.hm ], [ %i.wm, %bb.hk ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ft)
  br label %bb.pr

bb.hm:                                            ; preds = %_RNvXs2_NtCs9Ct3XQYJhun_5bytes5bytesNtB5_5BytesNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit
  %i.wn = landingpad { ptr, i32 }
          cleanup
  br label %bb.hl

bb.hn:                                            ; preds = %_RNvXs2_NtCs9Ct3XQYJhun_5bytes5bytesNtB5_5BytesNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ft)
  %i.wo = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.wp = load ptr, ptr %i.wo, align 8, !nonnull !14, !align !259, !noundef !14 ; 2 uses
  %i.wq = load i64, ptr %i.wp, align 8, !range !359, !alias.scope !1405, !noundef !14
  %.not.i748 = icmp eq i64 %i.wq, 2
  br i1 %.not.i748, label %bb.ho, label %bb.hr, !prof !16

bb.ho:                                            ; preds = %bb.hn
  invoke void @_RNvNtCsbvkFyIu7lgC_4core6option13expect_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @40, i64 noundef 9, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @44) #25
          to label %.noexc753 unwind label %bb.hp

.noexc753:                                        ; preds = %bb.ho
  unreachable

bb.hp:                                            ; preds = %bb.ho
  %i.wr = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs2DiVQAxFeQE_16aws_smithy_types4body7SdkBodyECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(120) %i.fu) #23
          to label %bb.pr unwind label %bb.af

bb.hq:                                            ; preds = %bb.hr
  %i.ws = landingpad { ptr, i32 }
          cleanup
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %i.wt, ptr noundef nonnull align 8 dereferenceable(120) %i.fu, i64 120, i1 false)
  br label %bb.pr

bb.hr:                                            ; preds = %bb.hn
  %i.wt = getelementptr inbounds nuw i8, ptr %i.wp, i64 120 ; 3 uses
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs2DiVQAxFeQE_16aws_smithy_types4body7SdkBodyECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(120) %i.wt)
          to label %bb.hs unwind label %bb.hq

bb.hs:                                            ; preds = %bb.hr
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %i.wt, ptr noundef nonnull align 8 dereferenceable(120) %i.fu, i64 120, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fu)
  %i.wu = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.wv = load ptr, ptr %i.wu, align 8, !nonnull !14, !align !259, !noundef !14
  %.sroa.51108.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !1408
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.51108.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %i.gf, i64 32, i1 false)
  store i64 2, ptr %i.p, align 8, !noalias !1412
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !1413
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !1413
  invoke void @_RINvMs0_NtCs2DiVQAxFeQE_16aws_smithy_types12type_erasureNtB6_13TypeErasedBox3newINtNtNtB8_10config_bag5value5ValueNtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client12orchestrator17LoadedRequestBodyEECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.n, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(40) %i.p)
          to label %.noexc754 unwind label %bb.pq

.noexc754:                                        ; preds = %bb.hs
  %i.ww = getelementptr inbounds nuw i8, ptr %i.wv, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !1413
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.m, ptr noundef nonnull align 8 dereferenceable(16) @6, i64 16, i1 false), !noalias !1413
  invoke void @_RNvMs1_NtCs3gpiEk3WpjL_9hashbrown3mapINtB5_7HashMapNtNtCsbvkFyIu7lgC_4core3any6TypeIdNtNtCs2DiVQAxFeQE_16aws_smithy_types12type_erasure13TypeErasedBoxINtNtBR_4hash18BuildHasherDefaultNtNtNtB1p_10config_bag10typeid_map8IdHasherEE6insertCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.o, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.ww, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(16) %i.m, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(48) %i.n)
          to label %.noexc755 unwind label %bb.pq

.noexc755:                                        ; preds = %.noexc754
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !1413
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !1413
  %i.wx = load ptr, ptr %i.o, align 8, !alias.scope !1417, !noalias !1413, !noundef !14
  %i.wy = icmp eq ptr %i.wx, null
  br i1 %i.wy, label %bb.hu, label %bb.ht

bb.ht:                                            ; preds = %.noexc755
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs2DiVQAxFeQE_16aws_smithy_types12type_erasure13TypeErasedBoxECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.o)
          to label %bb.hu unwind label %bb.pq

bb.hu:                                            ; preds = %.noexc755, %bb.ht
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !1413
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !1408
  call void @llvm.lifetime.end.p0(ptr nonnull %i.gf)
  %i.wz = getelementptr inbounds nuw i8, ptr %0, i64 91
  store i8 0, ptr %i.wz, align 1
  br label %bb.bg

bb.hv:                                            ; preds = %bb.bg
  %i.xa = landingpad { ptr, i32 }
          cleanup
  br label %bb.dn

bb.hw:                                            ; preds = %bb.bg
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fs)
  %i.xb = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 5 uses
  %i.xc = load ptr, ptr %i.xb, align 8, !nonnull !14, !align !259, !noundef !14 ; 3 uses
  %i.xd = getelementptr i8, ptr %i.xc, i64 8
  %.val616 = load ptr, ptr %i.xd, align 8, !nonnull !14, !noundef !14 ; 2 uses
  %i.xe = getelementptr i8, ptr %i.xc, i64 16
  %.val617 = load i64, ptr %i.xe, align 8, !noundef !14
  %i.xf = getelementptr inbounds nuw [48 x i8], ptr %.val616, i64 %.val617
  %i.xg = load ptr, ptr %i.lw, align 8, !nonnull !14, !align !259, !noundef !14
  %i.xh = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  %i.xi = load ptr, ptr %i.xh, align 8, !nonnull !14, !align !259, !noundef !14
  invoke void @_RNvMNtNtCs2HJ6gJZ22Qg_18aws_smithy_runtime6client12interceptorsINtB2_12InterceptorsINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtNtB1s_5slice4iter4IterINtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client18runtime_components7TrackedNtNtB2D_12interceptors17SharedInterceptorEENCNvMs1_B2B_NtB2B_17RuntimeComponents12interceptors0EE24read_after_serializationCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.fs, ptr noundef nonnull %.val616, ptr noundef nonnull %i.xf, ptr noundef nonnull align 8 %i.xg, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(392) %i.xc, ptr noalias noundef nonnull align 8 dereferenceable(80) %i.xi)
          to label %bb.hy unwind label %bb.hx

bb.hx:                                            ; preds = %bb.hw
  %i.xj = landingpad { ptr, i32 }
          cleanup
  br label %bb.pp

bb.hy:                                            ; preds = %bb.hw
  %i.xk = load i64, ptr %i.fs, align 8, !range !666, !noundef !14
  %.not97 = icmp eq i64 %i.xk, -9223372036854775807
  br i1 %.not97, label %bb.hz, label %bb.op

bb.hz:                                            ; preds = %bb.hy
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fs)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fi)
  %i.xl = load ptr, ptr %i.xb, align 8, !nonnull !14, !align !259, !noundef !14 ; 3 uses
  %i.xm = getelementptr i8, ptr %i.xl, i64 8
  %.val614 = load ptr, ptr %i.xm, align 8, !nonnull !14, !noundef !14 ; 2 uses
  %i.xn = getelementptr i8, ptr %i.xl, i64 16
  %.val615 = load i64, ptr %i.xn, align 8, !noundef !14
  %i.xo = getelementptr inbounds nuw [48 x i8], ptr %.val614, i64 %.val615
  %i.xp = load ptr, ptr %i.lw, align 8, !nonnull !14, !align !259, !noundef !14
  %i.xq = load ptr, ptr %i.xh, align 8, !nonnull !14, !align !259, !noundef !14
  invoke void @_RNvMNtNtCs2HJ6gJZ22Qg_18aws_smithy_runtime6client12interceptorsINtB2_12InterceptorsINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtNtB1s_5slice4iter4IterINtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client18runtime_components7TrackedNtNtB2D_12interceptors17SharedInterceptorEENCNvMs1_B2B_NtB2B_17RuntimeComponents12interceptors0EE24modify_before_retry_loopCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.fi, ptr noundef nonnull %.val614, ptr noundef nonnull %i.xo, ptr noalias noundef nonnull align 8 dereferenceable(1160) %i.xp, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(392) %i.xl, ptr noalias noundef nonnull align 8 dereferenceable(80) %i.xq)
          to label %bb.ib unwind label %bb.ia

bb.ia:                                            ; preds = %bb.hz
  %i.xr = landingpad { ptr, i32 }
          cleanup
  br label %bb.oo

bb.ib:                                            ; preds = %bb.hz
  %i.xs = load i64, ptr %i.fi, align 8, !range !666, !noundef !14
  %.not98 = icmp eq i64 %i.xs, -9223372036854775807
  br i1 %.not98, label %bb.ic, label %bb.no

bb.ic:                                            ; preds = %bb.ib
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fi)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ey)
  %i.xt = load ptr, ptr %i.xb, align 8, !nonnull !14, !align !259, !noundef !14
  %i.xu = getelementptr i8, ptr %i.xt, i64 280    ; 2 uses
  %i.xv = load <2 x ptr>, ptr %i.xu, align 8
  %.val666 = load ptr, ptr %i.xu, align 8, !nonnull !14, !noundef !14
  %i.xw = atomicrmw add ptr %.val666, i64 1 monotonic, align 8
  %i.xx = icmp slt i64 %i.xw, 0
  br i1 %i.xx, label %bb.id, label %bb.ie

bb.id:                                            ; preds = %bb.ic
  call void @llvm.trap()
  unreachable

bb.ie:                                            ; preds = %bb.ic
  store <2 x ptr> %i.xv, ptr %i.ey, align 16
  %i.xy = load ptr, ptr %i.xb, align 8, !nonnull !14, !align !259, !noundef !14
  %i.xz = load ptr, ptr %i.xh, align 8, !nonnull !14, !align !259, !noundef !14
  %i.ya = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  invoke void @_RNvXs0_NtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client7retriesNtB5_19SharedRetryStrategyNtB5_13RetryStrategy30should_attempt_initial_request(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.ya, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.ey, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(392) %i.xy, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %i.xz)
          to label %bb.ih unwind label %bb.if

end_hunk_1
begin_hunk_2_@_RNCNCNvNtNtCs2HJ6gJZ22Qg_18aws_smithy_runtime6client12orchestrator6try_op00Cs9rVkZwOUgsI_13deltalake_aws:bb.a
bb.ot:                                            ; preds = %bb.or, %bb.oq
  %.sroa.0.0.i826 = phi i8 [ %i.aja, %bb.oq ], [ %i.ajc, %bb.or ] ; 2 uses
  %i.aje = icmp eq i8 %.sroa.0.0.i826, 0
  br i1 %i.aje, label %bb.ox, label %bb.ov

bb.ou:                                            ; preds = %bb.ov
  %i.ajf = landingpad { ptr, i32 }
          cleanup
  br label %bb.po

bb.ov:                                            ; preds = %bb.ot
  %i.ajg = load ptr, ptr @_RNvNCNCNvNtNtCs2HJ6gJZ22Qg_18aws_smithy_runtime6client12orchestrator6try_op00s4_10___CALLSITE, align 8, !nonnull !14, !align !259, !noundef !14
  %i.ajh = invoke noundef zeroext i1 @_RNvNtCscTw95cGIolY_7tracing15___macro_support12___is_enabled(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.ajg, i8 noundef %.sroa.0.0.i826)
          to label %bb.ow unwind label %bb.ou

bb.ow:                                            ; preds = %bb.ov
  br i1 %i.ajh, label %bb.ph, label %bb.ox

bb.ox:                                            ; preds = %bb.op, %bb.ot, %bb.ow
  %i.aji = load atomic i8, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher6EXISTS monotonic, align 1
  %.not1463 = icmp eq i8 %i.aji, 0
  br i1 %.not1463, label %bb.oy, label %bb.pk

bb.oy:                                            ; preds = %bb.ox
  %i.ajj = load atomic i64, ptr @_RNvCsaljjC7ZTCQu_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8 ; 2 uses
  %i.ajk = icmp ult i64 %i.ajj, 6
  call void @llvm.assume(i1 %i.ajk)
  %i.ajl = icmp samesign ugt i64 %i.ajj, 3
  br i1 %i.ajl, label %bb.pa, label %bb.pk

bb.oz:                                            ; preds = %bb.pa
  %i.ajm = landingpad { ptr, i32 }
          cleanup
  br label %bb.po

bb.pa:                                            ; preds = %bb.oy
  %i.ajn = load ptr, ptr @_RNvNCNCNvNtNtCs2HJ6gJZ22Qg_18aws_smithy_runtime6client12orchestrator6try_op00s4_10___CALLSITE, align 8, !nonnull !14, !align !259, !noundef !14 ; 3 uses
  %i.ajo = getelementptr i8, ptr %i.ajn, i64 32
  %.val642 = load ptr, ptr %i.ajo, align 8, !nonnull !14, !noundef !14
  %i.ajp = getelementptr i8, ptr %i.ajn, i64 40
  %.val643 = load i64, ptr %i.ajp, align 8, !noundef !14
  store i64 4, ptr %i.fn, align 8, !alias.scope !1538
  %.sroa.61119.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fn, i64 8
  store ptr %.val642, ptr %.sroa.61119.0..sroa_idx, align 8, !alias.scope !1538
  %.sroa.81120.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fn, i64 16
  store i64 %.val643, ptr %.sroa.81120.0..sroa_idx, align 8, !alias.scope !1538
  %i.ajq = invoke { ptr, ptr } @_RNvCsaljjC7ZTCQu_3log6logger()
          to label %bb.pb unwind label %bb.oz     ; 2 uses

bb.pb:                                            ; preds = %bb.pa
  %i.ajr = extractvalue { ptr, ptr } %i.ajq, 0    ; 2 uses
  %i.ajs = extractvalue { ptr, ptr } %i.ajq, 1    ; 2 uses
  %i.ajt = getelementptr inbounds nuw i8, ptr %i.ajs, i64 24
  %i.aju = load ptr, ptr %i.ajt, align 8, !invariant.load !14, !nonnull !14
  %i.ajv = invoke noundef zeroext i1 %i.aju(ptr noundef %i.ajr, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.fn)
          to label %bb.pd unwind label %bb.pc

bb.pc:                                            ; preds = %bb.pb
  %i.ajw = landingpad { ptr, i32 }
          cleanup
  br label %bb.po

bb.pd:                                            ; preds = %bb.pb
  br i1 %i.ajv, label %bb.pe, label %bb.pk

bb.pe:                                            ; preds = %bb.pd
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fm)
  %i.ajx = load ptr, ptr @_RNvNCNCNvNtNtCs2HJ6gJZ22Qg_18aws_smithy_runtime6client12orchestrator6try_op00s4_10___CALLSITE, align 8, !nonnull !14, !align !259, !noundef !14
  %i.ajy = getelementptr inbounds nuw i8, ptr %i.ajx, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fl)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fk)
  store ptr @42, ptr %i.fk, align 8
  %i.ajz = getelementptr inbounds nuw i8, ptr %i.fk, i64 8
  store ptr inttoptr (i64 79 to ptr), ptr %i.ajz, align 8
  store ptr %i.fk, ptr %i.fl, align 8
  %i.aka = getelementptr inbounds nuw i8, ptr %i.fl, i64 8
  store ptr @24, ptr %i.aka, align 8
  store i64 1, ptr %i.fm, align 8, !alias.scope !1542, !noalias !1545
  %.sroa.4.0..sroa_idx.i831 = getelementptr inbounds nuw i8, ptr %i.fm, i64 8
  store ptr %i.fl, ptr %.sroa.4.0..sroa_idx.i831, align 8, !alias.scope !1542, !noalias !1545
  %.sroa.5.0..sroa_idx.i832 = getelementptr inbounds nuw i8, ptr %i.fm, i64 16
  store i64 1, ptr %.sroa.5.0..sroa_idx.i832, align 8, !alias.scope !1542, !noalias !1545
  %i.akb = getelementptr inbounds nuw i8, ptr %i.fm, i64 24
  store ptr %i.ajy, ptr %i.akb, align 8, !alias.scope !1542, !noalias !1545
  invoke void @_RNvNtCscTw95cGIolY_7tracing15___macro_support13___tracing_log(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.ajn, ptr noundef nonnull %i.ajr, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.ajs, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.fn, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.fm)
          to label %bb.pg unwind label %bb.pf

bb.pf:                                            ; preds = %bb.pe
  %i.akc = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fk)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fl)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fm)
  br label %bb.po

bb.pg:                                            ; preds = %bb.pe
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fk)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fl)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fm)
  br label %bb.pk

bb.ph:                                            ; preds = %bb.ow
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fq)
  %i.akd = load ptr, ptr @_RNvNCNCNvNtNtCs2HJ6gJZ22Qg_18aws_smithy_runtime6client12orchestrator6try_op00s4_10___CALLSITE, align 8, !nonnull !14, !align !259, !noundef !14
  %i.ake = getelementptr inbounds nuw i8, ptr %i.akd, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fp)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fo)
  store ptr @42, ptr %i.fo, align 8
  %i.akf = getelementptr inbounds nuw i8, ptr %i.fo, i64 8
  store ptr inttoptr (i64 79 to ptr), ptr %i.akf, align 8
  store ptr %i.fo, ptr %i.fp, align 8
  %i.akg = getelementptr inbounds nuw i8, ptr %i.fp, i64 8
  store ptr @24, ptr %i.akg, align 8
  store i64 1, ptr %i.fq, align 8
  %.sroa.61112.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fq, i64 8
  store ptr %i.fp, ptr %.sroa.61112.0..sroa_idx, align 8
  %.sroa.71113.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fq, i64 16
  store i64 1, ptr %.sroa.71113.0..sroa_idx, align 8
  %.sroa.81114.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fq, i64 24
  store ptr %i.ake, ptr %.sroa.81114.0..sroa_idx, align 8
  invoke fastcc void @_RNCNCNCNvNtNtCs2HJ6gJZ22Qg_18aws_smithy_runtime6client12orchestrator6try_op00s5_0Cs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef align 8 captures(address) dereferenceable(32) %i.fq)
          to label %bb.pj unwind label %bb.pi

bb.pi:                                            ; preds = %bb.ph
  %i.akh = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fq)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fo)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fp)
  br label %bb.po

bb.pj:                                            ; preds = %bb.ph
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fq)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fo)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fp)
  br label %bb.pk

bb.pk:                                            ; preds = %bb.pj, %bb.ox, %bb.oy, %bb.pd, %bb.pg
  %i.aki = load ptr, ptr %i.lw, align 8, !nonnull !14, !align !259, !noundef !14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fj)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4.i.i833)
  %.sroa.4.8..sroa_idx.i.i834 = getelementptr inbounds nuw i8, ptr %.sroa.4.i.i833, i64 6
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(48) %.sroa.4.8..sroa_idx.i.i834, ptr noundef nonnull align 8 dereferenceable(48) %i.fr, i64 48, i1 false)
  store i16 5, ptr %i.fj, align 8, !alias.scope !1548, !noalias !1553
  %.sroa.4.0..sroa_idx.i.i835 = getelementptr inbounds nuw i8, ptr %i.fj, i64 2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(54) %.sroa.4.0..sroa_idx.i.i835, ptr noundef nonnull align 2 dereferenceable(54) %.sroa.4.i.i833, i64 54, i1 false), !noalias !1553
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i.i833)
  invoke void @_RNvMs2_NtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client12interceptors7contextNtB5_18InterceptorContext4failCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(1160) %i.aki, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(112) %i.fj)
          to label %bb.pm unwind label %bb.pl

bb.pl:                                            ; preds = %bb.pk
  %i.akj = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fj)
  br label %bb.pn

bb.pm:                                            ; preds = %bb.pk
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fj)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fr)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fs)
  br label %common.ret

bb.pn:                                            ; preds = %bb.pl, %bb.po
  %.pn288.pn1404 = phi { ptr, i32 } [ %.pn288.pn.ph, %bb.po ], [ %i.akj, %bb.pl ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fr)
  br label %bb.pp

bb.po:                                            ; preds = %bb.pi, %bb.ou, %bb.os, %bb.pc, %bb.pf, %bb.oz
  %.pn288.pn.ph = phi { ptr, i32 } [ %i.ajf, %bb.ou ], [ %i.akh, %bb.pi ], [ %i.ajm, %bb.oz ], [ %i.ajw, %bb.pc ], [ %i.akc, %bb.pf ], [ %i.ajd, %bb.os ]
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client12interceptors5error16InterceptorErrorECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.fr) #23
          to label %bb.pn unwind label %bb.af

bb.pp:                                            ; preds = %bb.hx, %bb.pn
  %.pn288.pn.pn = phi { ptr, i32 } [ %.pn288.pn1404, %bb.pn ], [ %i.xj, %bb.hx ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fs)
  br label %bb.dn

bb.pq:                                            ; preds = %bb.hs, %.noexc754, %bb.ht
  %i.akk = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesECs9rVkZwOUgsI_13deltalake_aws.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesECs9rVkZwOUgsI_13deltalake_aws.exit: ; preds = %bb.hh, %bb.qq, %.body738, %bb.pr, %bb.pq
  %.pn300.pn.pn.pn = phi { ptr, i32 } [ %.pn95.ph, %bb.pr ], [ %i.akk, %bb.pq ], [ %.pn300.pn1415, %bb.qq ], [ %i.wd, %bb.hh ], [ %.pn87, %.body738 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.gf)
  br label %bb.ci

bb.pr:                                            ; preds = %bb.hp, %bb.hq, %bb.hl
  %.pn95.ph = phi { ptr, i32 } [ %.pn90, %bb.hl ], [ %i.wr, %bb.hp ], [ %i.ws, %bb.hq ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fu)
  call void @llvm.experimental.noalias.scope.decl(metadata !1556)
  call void @llvm.experimental.noalias.scope.decl(metadata !1559)
  %i.akl = load ptr, ptr %i.gf, align 8, !alias.scope !1562, !nonnull !14, !align !259, !noundef !14
  %i.akm = getelementptr inbounds nuw i8, ptr %i.akl, i64 32
  %i.akn = load ptr, ptr %i.akm, align 8, !noalias !1562, !nonnull !14, !noundef !14
  %i.ako = load ptr, ptr %i.wi, align 8, !alias.scope !1562, !noundef !14
  %i.akp = load i64, ptr %i.wk, align 8, !alias.scope !1562, !noundef !14
  invoke void %i.akn(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.wh, ptr noundef %i.ako, i64 noundef %i.akp)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesECs9rVkZwOUgsI_13deltalake_aws.exit unwind label %bb.af, !inline_history !506

bb.ps:                                            ; preds = %2
  %i.akq = extractvalue { ptr, ptr } %3, 0
  %i.akr = extractvalue { ptr, ptr } %3, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !1392
  call void @llvm.lifetime.start.p0(ptr nonnull %i.gd)
  store i16 10, ptr %i.gd, align 8
  %.sroa.91076.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.gd, i64 8
  store ptr %i.akq, ptr %.sroa.91076.0..sroa_idx, align 8
  %.sroa.121078.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.gd, i64 16
  store ptr %i.akr, ptr %.sroa.121078.0..sroa_idx, align 8
  %i.aks = load atomic i64, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core8metadata9MAX_LEVEL monotonic, align 8
  %i.akt = icmp ult i64 %i.aks, 2
  br i1 %i.akt, label %bb.pt, label %bb.qa

bb.pt:                                            ; preds = %bb.ps
  %i.aku = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @_RNvNCNCNvNtNtCs2HJ6gJZ22Qg_18aws_smithy_runtime6client12orchestrator6try_op00s3_10___CALLSITE, i64 16) monotonic, align 8 ; 2 uses
  %i.akv = icmp ult i8 %i.aku, 3
  br i1 %i.akv, label %bb.pw, label %bb.pu, !prof !1223

bb.pu:                                            ; preds = %bb.pt
  %i.akw = invoke noundef i8 @_RNvMNtCs2y6mmZ7bjoM_12tracing_core8callsiteNtB2_15DefaultCallsite8register(ptr noundef nonnull align 8 @_RNvNCNCNvNtNtCs2HJ6gJZ22Qg_18aws_smithy_runtime6client12orchestrator6try_op00s3_10___CALLSITE) #26
          to label %bb.pw unwind label %bb.pv

bb.pv:                                            ; preds = %bb.pu
  %i.akx = landingpad { ptr, i32 }
          cleanup
  br label %bb.qr

bb.pw:                                            ; preds = %bb.pu, %bb.pt
  %.sroa.0.0.i839 = phi i8 [ %i.aku, %bb.pt ], [ %i.akw, %bb.pu ] ; 2 uses
  %i.aky = icmp eq i8 %.sroa.0.0.i839, 0
  br i1 %i.aky, label %bb.qa, label %bb.py

bb.px:                                            ; preds = %bb.py
  %i.akz = landingpad { ptr, i32 }
          cleanup
  br label %bb.qr

bb.py:                                            ; preds = %bb.pw
  %i.ala = load ptr, ptr @_RNvNCNCNvNtNtCs2HJ6gJZ22Qg_18aws_smithy_runtime6client12orchestrator6try_op00s3_10___CALLSITE, align 8, !nonnull !14, !align !259, !noundef !14
  %i.alb = invoke noundef zeroext i1 @_RNvNtCscTw95cGIolY_7tracing15___macro_support12___is_enabled(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.ala, i8 noundef %.sroa.0.0.i839)
          to label %bb.pz unwind label %bb.px

bb.pz:                                            ; preds = %bb.py
  br i1 %i.alb, label %bb.qk, label %bb.qa

bb.qa:                                            ; preds = %bb.ps, %bb.pw, %bb.pz
  %i.alc = load atomic i8, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher6EXISTS monotonic, align 1
  %.not1462 = icmp eq i8 %i.alc, 0
  br i1 %.not1462, label %bb.qb, label %bb.qn

bb.qb:                                            ; preds = %bb.qa
  %i.ald = load atomic i64, ptr @_RNvCsaljjC7ZTCQu_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8 ; 2 uses
  %i.ale = icmp ult i64 %i.ald, 6
  call void @llvm.assume(i1 %i.ale)
  %i.alf = icmp samesign ugt i64 %i.ald, 3
  br i1 %i.alf, label %bb.qd, label %bb.qn

bb.qc:                                            ; preds = %bb.qd
  %i.alg = landingpad { ptr, i32 }
          cleanup
  br label %bb.qr

bb.qd:                                            ; preds = %bb.qb
  %i.alh = load ptr, ptr @_RNvNCNCNvNtNtCs2HJ6gJZ22Qg_18aws_smithy_runtime6client12orchestrator6try_op00s3_10___CALLSITE, align 8, !nonnull !14, !align !259, !noundef !14 ; 3 uses
  %i.ali = getelementptr i8, ptr %i.alh, i64 32
  %.val640 = load ptr, ptr %i.ali, align 8, !nonnull !14, !noundef !14
  %i.alj = getelementptr i8, ptr %i.alh, i64 40
  %.val641 = load i64, ptr %i.alj, align 8, !noundef !14
  store i64 4, ptr %i.fz, align 8, !alias.scope !1563
  %.sroa.61104.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fz, i64 8
  store ptr %.val640, ptr %.sroa.61104.0..sroa_idx, align 8, !alias.scope !1563
  %.sroa.81105.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fz, i64 16
  store i64 %.val641, ptr %.sroa.81105.0..sroa_idx, align 8, !alias.scope !1563
  %i.alk = invoke { ptr, ptr } @_RNvCsaljjC7ZTCQu_3log6logger()
          to label %bb.qe unwind label %bb.qc     ; 2 uses

bb.qe:                                            ; preds = %bb.qd
  %i.all = extractvalue { ptr, ptr } %i.alk, 0    ; 2 uses
  %i.alm = extractvalue { ptr, ptr } %i.alk, 1    ; 2 uses
  %i.aln = getelementptr inbounds nuw i8, ptr %i.alm, i64 24
  %i.alo = load ptr, ptr %i.aln, align 8, !invariant.load !14, !nonnull !14
  %i.alp = invoke noundef zeroext i1 %i.alo(ptr noundef %i.all, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.fz)
          to label %bb.qg unwind label %bb.qf

bb.qf:                                            ; preds = %bb.qe
  %i.alq = landingpad { ptr, i32 }
          cleanup
  br label %bb.qr

bb.qg:                                            ; preds = %bb.qe
  br i1 %i.alp, label %bb.qh, label %bb.qn

bb.qh:                                            ; preds = %bb.qg
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fy)
  %i.alr = load ptr, ptr @_RNvNCNCNvNtNtCs2HJ6gJZ22Qg_18aws_smithy_runtime6client12orchestrator6try_op00s3_10___CALLSITE, align 8, !nonnull !14, !align !259, !noundef !14
  %i.als = getelementptr inbounds nuw i8, ptr %i.alr, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fx)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fw)
  store ptr @42, ptr %i.fw, align 8
  %i.alt = getelementptr inbounds nuw i8, ptr %i.fw, i64 8
  store ptr inttoptr (i64 79 to ptr), ptr %i.alt, align 8
  store ptr %i.fw, ptr %i.fx, align 8
  %i.alu = getelementptr inbounds nuw i8, ptr %i.fx, i64 8
  store ptr @24, ptr %i.alu, align 8
  store i64 1, ptr %i.fy, align 8, !alias.scope !1567, !noalias !1570
  %.sroa.4.0..sroa_idx.i844 = getelementptr inbounds nuw i8, ptr %i.fy, i64 8
  store ptr %i.fx, ptr %.sroa.4.0..sroa_idx.i844, align 8, !alias.scope !1567, !noalias !1570
  %.sroa.5.0..sroa_idx.i845 = getelementptr inbounds nuw i8, ptr %i.fy, i64 16
  store i64 1, ptr %.sroa.5.0..sroa_idx.i845, align 8, !alias.scope !1567, !noalias !1570
  %i.alv = getelementptr inbounds nuw i8, ptr %i.fy, i64 24
  store ptr %i.als, ptr %i.alv, align 8, !alias.scope !1567, !noalias !1570
  invoke void @_RNvNtCscTw95cGIolY_7tracing15___macro_support13___tracing_log(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.alh, ptr noundef nonnull %i.all, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.alm, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.fz, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.fy)
          to label %bb.qj unwind label %bb.qi

bb.qi:                                            ; preds = %bb.qh
  %i.alw = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fw)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fx)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fy)
  br label %bb.qr

bb.qj:                                            ; preds = %bb.qh
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fw)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fx)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fy)
  br label %bb.qn

bb.qk:                                            ; preds = %bb.pz
  call void @llvm.lifetime.start.p0(ptr nonnull %i.gc)
  %i.alx = load ptr, ptr @_RNvNCNCNvNtNtCs2HJ6gJZ22Qg_18aws_smithy_runtime6client12orchestrator6try_op00s3_10___CALLSITE, align 8, !nonnull !14, !align !259, !noundef !14
  %i.aly = getelementptr inbounds nuw i8, ptr %i.alx, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.gb)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ga)
  store ptr @42, ptr %i.ga, align 8
  %i.alz = getelementptr inbounds nuw i8, ptr %i.ga, i64 8
  store ptr inttoptr (i64 79 to ptr), ptr %i.alz, align 8
  store ptr %i.ga, ptr %i.gb, align 8
  %i.ama = getelementptr inbounds nuw i8, ptr %i.gb, i64 8
  store ptr @24, ptr %i.ama, align 8
  store i64 1, ptr %i.gc, align 8
  %.sroa.61097.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.gc, i64 8
  store ptr %i.gb, ptr %.sroa.61097.0..sroa_idx, align 8
  %.sroa.71098.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.gc, i64 16
  store i64 1, ptr %.sroa.71098.0..sroa_idx, align 8
  %.sroa.81099.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.gc, i64 24
  store ptr %i.aly, ptr %.sroa.81099.0..sroa_idx, align 8
  invoke fastcc void @_RNCNCNCNvNtNtCs2HJ6gJZ22Qg_18aws_smithy_runtime6client12orchestrator6try_op00s4_0Cs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef align 8 captures(address) dereferenceable(32) %i.gc)
          to label %bb.qm unwind label %bb.ql

bb.ql:                                            ; preds = %bb.qk
  %i.amb = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.gc)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ga)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.gb)
  br label %bb.qr

bb.qm:                                            ; preds = %bb.qk
  call void @llvm.lifetime.end.p0(ptr nonnull %i.gc)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ga)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.gb)
  br label %bb.qn

bb.qn:                                            ; preds = %bb.qm, %bb.qa, %bb.qb, %bb.qg, %bb.qj
  %i.amc = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.amd = load ptr, ptr %i.amc, align 8, !nonnull !14, !align !259, !noundef !14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fv)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.fv, ptr noundef nonnull align 8 dereferenceable(112) %i.gd, i64 112, i1 false)
  invoke void @_RNvMs2_NtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client12interceptors7contextNtB5_18InterceptorContext4failCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(1160) %i.amd, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(112) %i.fv)
          to label %bb.qp unwind label %bb.qo

bb.qo:                                            ; preds = %bb.qn
  %i.ame = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fv)
  br label %bb.qq

bb.qp:                                            ; preds = %bb.qn
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fv)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.gd)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.gf)
  %i.amf = getelementptr inbounds nuw i8, ptr %0, i64 91
  store i8 0, ptr %i.amf, align 1
  br label %common.ret

bb.qq:                                            ; preds = %bb.qo, %bb.qr
  %.pn300.pn1415 = phi { ptr, i32 } [ %.pn300.pn.ph, %bb.qr ], [ %i.ame, %bb.qo ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.gd)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesECs9rVkZwOUgsI_13deltalake_aws.exit

bb.qr:                                            ; preds = %bb.ql, %bb.px, %bb.pv, %bb.qf, %bb.qi, %bb.qc
  %.pn300.pn.ph = phi { ptr, i32 } [ %i.akz, %bb.px ], [ %i.amb, %bb.ql ], [ %i.alg, %bb.qc ], [ %i.alq, %bb.qf ], [ %i.alw, %bb.qi ], [ %i.akx, %bb.pv ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client12orchestrator17OrchestratorErrorNtNtNtBL_12interceptors7context5ErrorEECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef align 8 dereferenceable(112) %i.gd) #23
          to label %bb.qq unwind label %bb.af

.body738:                                         ; preds = %bb.hf, %bb.ft
  %i.amg = phi ptr [ %i.su, %bb.ft ], [ %i.so, %bb.hf ]
  %.pn87 = phi { ptr, i32 } [ %.pn4.i, %bb.ft ], [ %i.wc, %bb.hf ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.81089.sroa.6)
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMNtCs2DiVQAxFeQE_16aws_smithy_types11byte_streamNtBL_10ByteStream7collect0ECs9rVkZwOUgsI_13deltalake_aws(ptr noundef nonnull align 8 %i.amg) #23
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesECs9rVkZwOUgsI_13deltalake_aws.exit unwind label %bb.af
end_hunk_2
