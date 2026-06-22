inline.NumInlined: 2659
inline.NumDeleted: 662
begin_hunk_0_@_RNCNCNvNtNtCs2HJ6gJZ22Qg_18aws_smithy_runtime6client12orchestrator11try_attempt0sf_0Cs9rVkZwOUgsI_13deltalake_aws:bb.a
  br i1 %i.r, label %bb.e, label %bb.b

bb.e:                                             ; preds = %bb.d
  call void @_RNvNtCscTw95cGIolY_7tracing15___macro_support13___tracing_log(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.h, ptr noundef nonnull %i.n, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.o, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %0)
  br label %bb.b
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNCNCNvNtNtCs2HJ6gJZ22Qg_18aws_smithy_runtime6client12orchestrator11try_attempt0sg_0Cs9rVkZwOUgsI_13deltalake_aws(ptr noalias nofree noundef nonnull readonly align 8 captures(address) dead_on_return dereferenceable(32) %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = load ptr, ptr @_RNvNCNvNtNtCs2HJ6gJZ22Qg_18aws_smithy_runtime6client12orchestrator11try_attempt0sf_10___CALLSITE, align 8, !nonnull !7, !align !47, !noundef !7
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
  %i.h = load ptr, ptr @_RNvNCNvNtNtCs2HJ6gJZ22Qg_18aws_smithy_runtime6client12orchestrator11try_attempt0sf_10___CALLSITE, align 8, !nonnull !7, !align !47, !noundef !7 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %i.j = load ptr, ptr %i.i, align 8, !nonnull !7, !noundef !7
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 40
  %i.l = load i64, ptr %i.k, align 8, !noundef !7
  store i64 4, ptr %i.a, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.j, ptr %.sroa.3.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %i.l, ptr %.sroa.5.0..sroa_idx, align 8
  %i.m = tail call { ptr, ptr } @_RNvCsaljjC7ZTCQu_3log6logger() ; 2 uses
  %i.n = extractvalue { ptr, ptr } %i.m, 0        ; 2 uses
  %i.o = extractvalue { ptr, ptr } %i.m, 1        ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %i.q = load ptr, ptr %i.p, align 8, !invariant.load !7, !nonnull !7
  %i.r = call noundef zeroext i1 %i.q(ptr noundef %i.n, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.a) #27
  br i1 %i.r, label %bb.e, label %bb.b

bb.e:                                             ; preds = %bb.d
  call void @_RNvNtCscTw95cGIolY_7tracing15___macro_support13___tracing_log(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.h, ptr noundef nonnull %i.n, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.o, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %0)
  br label %bb.b
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNCNCNvNtNtCs2HJ6gJZ22Qg_18aws_smithy_runtime6client12orchestrator11try_attempt0sh_0Cs9rVkZwOUgsI_13deltalake_aws(ptr noalias nofree noundef nonnull readonly align 8 captures(address) dead_on_return dereferenceable(32) %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = load ptr, ptr @_RNvNCNvNtNtCs2HJ6gJZ22Qg_18aws_smithy_runtime6client12orchestrator11try_attempt0sg_10___CALLSITE, align 8, !nonnull !7, !align !47, !noundef !7
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
  %i.h = load ptr, ptr @_RNvNCNvNtNtCs2HJ6gJZ22Qg_18aws_smithy_runtime6client12orchestrator11try_attempt0sg_10___CALLSITE, align 8, !nonnull !7, !align !47, !noundef !7 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %i.j = load ptr, ptr %i.i, align 8, !nonnull !7, !noundef !7
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 40
  %i.l = load i64, ptr %i.k, align 8, !noundef !7
  store i64 4, ptr %i.a, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.j, ptr %.sroa.3.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %i.l, ptr %.sroa.5.0..sroa_idx, align 8
  %i.m = tail call { ptr, ptr } @_RNvCsaljjC7ZTCQu_3log6logger() ; 2 uses
  %i.n = extractvalue { ptr, ptr } %i.m, 0        ; 2 uses
  %i.o = extractvalue { ptr, ptr } %i.m, 1        ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %i.q = load ptr, ptr %i.p, align 8, !invariant.load !7, !nonnull !7
  %i.r = call noundef zeroext i1 %i.q(ptr noundef %i.n, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.a) #27
  br i1 %i.r, label %bb.e, label %bb.b

bb.e:                                             ; preds = %bb.d
  call void @_RNvNtCscTw95cGIolY_7tracing15___macro_support13___tracing_log(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.h, ptr noundef nonnull %i.n, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.o, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %0)
  br label %bb.b
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNCNCNvNtNtCs2HJ6gJZ22Qg_18aws_smithy_runtime6client12orchestrator11try_attempt0si_0Cs9rVkZwOUgsI_13deltalake_aws(ptr noalias nofree noundef nonnull readonly align 8 captures(address) dead_on_return dereferenceable(32) %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = load ptr, ptr @_RNvNCNvNtNtCs2HJ6gJZ22Qg_18aws_smithy_runtime6client12orchestrator11try_attempt0si_10___CALLSITE, align 8, !nonnull !7, !align !47, !noundef !7
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
  %i.g = icmp samesign ugt i64 %i.e, 4
  br i1 %i.g, label %bb.d, label %bb.b

bb.d:                                             ; preds = %bb.c
  %i.h = load ptr, ptr @_RNvNCNvNtNtCs2HJ6gJZ22Qg_18aws_smithy_runtime6client12orchestrator11try_attempt0si_10___CALLSITE, align 8, !nonnull !7, !align !47, !noundef !7 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %i.j = load ptr, ptr %i.i, align 8, !nonnull !7, !noundef !7
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 40
  %i.l = load i64, ptr %i.k, align 8, !noundef !7
  store i64 5, ptr %i.a, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.j, ptr %.sroa.3.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %i.l, ptr %.sroa.5.0..sroa_idx, align 8
  %i.m = tail call { ptr, ptr } @_RNvCsaljjC7ZTCQu_3log6logger() ; 2 uses
  %i.n = extractvalue { ptr, ptr } %i.m, 0        ; 2 uses
  %i.o = extractvalue { ptr, ptr } %i.m, 1        ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %i.q = load ptr, ptr %i.p, align 8, !invariant.load !7, !nonnull !7
  %i.r = call noundef zeroext i1 %i.q(ptr noundef %i.n, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.a) #27
  br i1 %i.r, label %bb.e, label %bb.b

bb.e:                                             ; preds = %bb.d
  call void @_RNvNtCscTw95cGIolY_7tracing15___macro_support13___tracing_log(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.h, ptr noundef nonnull %i.n, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.o, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %0)
  br label %bb.b
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNCNCNvNtNtCs2HJ6gJZ22Qg_18aws_smithy_runtime6client12orchestrator11try_attempt0sj_0Cs9rVkZwOUgsI_13deltalake_aws(ptr noalias nofree noundef nonnull readonly align 8 captures(address) dead_on_return dereferenceable(32) %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = load ptr, ptr @_RNvNCNvNtNtCs2HJ6gJZ22Qg_18aws_smithy_runtime6client12orchestrator11try_attempt0sj_10___CALLSITE, align 8, !nonnull !7, !align !47, !noundef !7
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
  %i.h = load ptr, ptr @_RNvNCNvNtNtCs2HJ6gJZ22Qg_18aws_smithy_runtime6client12orchestrator11try_attempt0sj_10___CALLSITE, align 8, !nonnull !7, !align !47, !noundef !7 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %i.j = load ptr, ptr %i.i, align 8, !nonnull !7, !noundef !7
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 40
  %i.l = load i64, ptr %i.k, align 8, !noundef !7
  store i64 4, ptr %i.a, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.j, ptr %.sroa.3.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %i.l, ptr %.sroa.5.0..sroa_idx, align 8
  %i.m = tail call { ptr, ptr } @_RNvCsaljjC7ZTCQu_3log6logger() ; 2 uses
  %i.n = extractvalue { ptr, ptr } %i.m, 0        ; 2 uses
  %i.o = extractvalue { ptr, ptr } %i.m, 1        ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %i.q = load ptr, ptr %i.p, align 8, !invariant.load !7, !nonnull !7
  %i.r = call noundef zeroext i1 %i.q(ptr noundef %i.n, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.a) #27
  br i1 %i.r, label %bb.e, label %bb.b

bb.e:                                             ; preds = %bb.d
  call void @_RNvNtCscTw95cGIolY_7tracing15___macro_support13___tracing_log(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.h, ptr noundef nonnull %i.n, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.o, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %0)
  br label %bb.b
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RNCNCNvNtNtCs2HJ6gJZ22Qg_18aws_smithy_runtime6client12orchestrator6try_op00Cs9rVkZwOUgsI_13deltalake_aws(ptr noundef nonnull align 8 %0, ptr noalias noundef nonnull align 8 dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = alloca [24 x i8], align 8                ; 7 uses
  %i.c = alloca [24 x i8], align 8                ; 7 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %i.e = alloca [24 x i8], align 8                ; 7 uses
  %i.f = alloca [24 x i8], align 8                ; 7 uses
  %i.g = alloca [288 x i8], align 8               ; 4 uses
  %i.h = alloca [288 x i8], align 8               ; 6 uses
  %.sroa.4.i.i825 = alloca [54 x i8], align 2     ; 4 uses
  %.sroa.4.i.i813 = alloca [54 x i8], align 2     ; 4 uses
  %i.i = alloca [24 x i8], align 8                ; 4 uses
  %.sroa.535.i.i = alloca [16 x i8], align 8      ; 8 uses
  %i.j = alloca [32 x i8], align 8                ; 10 uses
  %i.k = alloca [40 x i8], align 8                ; 11 uses
  %i.l = alloca [40 x i8], align 8                ; 11 uses
  %.sroa.713.i = alloca [16 x i8], align 8        ; 7 uses
  %.sroa.10.i = alloca [16 x i8], align 8         ; 8 uses
  %.sroa.4.i.i734 = alloca [54 x i8], align 2     ; 4 uses
  %.sroa.4.i.i = alloca [54 x i8], align 2        ; 4 uses
  %i.m = alloca [16 x i8], align 8                ; 5 uses
  %i.n = alloca [16 x i8], align 8                ; 5 uses
  %i.o = alloca [24 x i8], align 8                ; 4 uses
  %i.p = alloca [24 x i8], align 8                ; 4 uses
  %i.q = alloca [24 x i8], align 8                ; 4 uses
  %i.r = alloca [24 x i8], align 8                ; 4 uses
  %i.s = alloca [24 x i8], align 8                ; 4 uses
  %i.t = alloca [24 x i8], align 8                ; 4 uses
  %i.u = alloca [24 x i8], align 8                ; 4 uses
  %i.v = alloca [24 x i8], align 8                ; 4 uses
  %i.w = alloca [24 x i8], align 8                ; 4 uses
  %i.x = alloca [112 x i8], align 8               ; 5 uses
  %i.y = alloca [16 x i8], align 8                ; 6 uses
  %i.z = alloca [16 x i8], align 8                ; 6 uses
  %i.aa = alloca [32 x i8], align 8               ; 8 uses
  %i.ab = alloca [24 x i8], align 8               ; 5 uses
  %i.ac = alloca [16 x i8], align 8               ; 6 uses
  %i.ad = alloca [16 x i8], align 8               ; 6 uses
  %i.ae = alloca [32 x i8], align 8               ; 8 uses
  %i.af = alloca [112 x i8], align 8              ; 8 uses
  %i.ag = alloca [16 x i8], align 16              ; 10 uses
  %i.ah = alloca [16 x i8], align 8               ; 6 uses
  %i.ai = alloca [16 x i8], align 8               ; 6 uses
  %i.aj = alloca [32 x i8], align 8               ; 8 uses
  %i.ak = alloca [24 x i8], align 8               ; 5 uses
  %i.al = alloca [16 x i8], align 8               ; 6 uses
  %i.am = alloca [16 x i8], align 8               ; 6 uses
  %i.an = alloca [32 x i8], align 8               ; 8 uses
  %i.ao = alloca [112 x i8], align 8              ; 5 uses
  %i.ap = alloca [16 x i8], align 8               ; 6 uses
  %i.aq = alloca [16 x i8], align 8               ; 6 uses
  %i.ar = alloca [32 x i8], align 8               ; 8 uses
  %i.as = alloca [24 x i8], align 8               ; 5 uses
  %i.at = alloca [16 x i8], align 8               ; 6 uses
  %i.au = alloca [16 x i8], align 8               ; 6 uses
  %i.av = alloca [32 x i8], align 8               ; 8 uses
  %i.aw = alloca [112 x i8], align 8              ; 6 uses
  %i.ax = alloca [16 x i8], align 16              ; 12 uses
  %i.ay = alloca [24 x i8], align 8               ; 8 uses
  %i.az = alloca [112 x i8], align 8              ; 12 uses
  %i.ba = alloca [112 x i8], align 8              ; 5 uses
  %i.bb = alloca [8 x i8], align 8                ; 5 uses
  %i.bc = alloca [16 x i8], align 8               ; 6 uses
  %i.bd = alloca [32 x i8], align 8               ; 8 uses
  %i.be = alloca [32 x i8], align 8               ; 8 uses
  %i.bf = alloca [24 x i8], align 8               ; 5 uses
  %i.bg = alloca [8 x i8], align 8                ; 5 uses
  %i.bh = alloca [16 x i8], align 8               ; 6 uses
  %i.bi = alloca [32 x i8], align 8               ; 8 uses
  %i.bj = alloca [32 x i8], align 8               ; 9 uses
  %i.bk = alloca [112 x i8], align 8              ; 9 uses
  %i.bl = alloca [288 x i8], align 8              ; 3 uses
  %i.bm = alloca [288 x i8], align 8              ; 7 uses
  %i.bn = alloca [40 x i8], align 8               ; 5 uses
  %i.bo = alloca [1384 x i8], align 8             ; 9 uses
  %i.bp = alloca [1424 x i8], align 8             ; 5 uses
  %i.bq = alloca [1424 x i8], align 8             ; 8 uses
  %i.br = alloca [8 x i8], align 8                ; 5 uses
  %i.bs = alloca [16 x i8], align 8               ; 6 uses
  %i.bt = alloca [32 x i8], align 8               ; 8 uses
  %i.bu = alloca [24 x i8], align 8               ; 5 uses
  %i.bv = alloca [8 x i8], align 8                ; 5 uses
  %i.bw = alloca [16 x i8], align 8               ; 6 uses
  %i.bx = alloca [32 x i8], align 8               ; 9 uses
  %i.by = alloca [16 x i8], align 8               ; 6 uses
  %i.bz = alloca [16 x i8], align 8               ; 6 uses
  %i.ca = alloca [16 x i8], align 8               ; 6 uses
  %i.cb = alloca [32 x i8], align 8               ; 8 uses
  %i.cc = alloca [24 x i8], align 8               ; 5 uses
  %i.cd = alloca [16 x i8], align 8               ; 6 uses
  %i.ce = alloca [16 x i8], align 8               ; 6 uses
  %i.cf = alloca [16 x i8], align 8               ; 6 uses
  %i.cg = alloca [32 x i8], align 8               ; 9 uses
  %i.ch = alloca [16 x i8], align 8               ; 6 uses
  %i.ci = alloca [16 x i8], align 8               ; 6 uses
  %i.cj = alloca [32 x i8], align 8               ; 8 uses
  %i.ck = alloca [24 x i8], align 8               ; 5 uses
  %i.cl = alloca [16 x i8], align 8               ; 6 uses
  %i.cm = alloca [16 x i8], align 8               ; 6 uses
  %i.cn = alloca [32 x i8], align 8               ; 8 uses
  %i.co = alloca [16 x i8], align 8               ; 6 uses
  %i.cp = alloca [16 x i8], align 8               ; 6 uses
  %i.cq = alloca [16 x i8], align 8               ; 6 uses
  %i.cr = alloca [32 x i8], align 8               ; 8 uses
  %i.cs = alloca [24 x i8], align 8               ; 5 uses
  %i.ct = alloca [16 x i8], align 8               ; 6 uses
  %i.cu = alloca [16 x i8], align 8               ; 6 uses
  %i.cv = alloca [16 x i8], align 8               ; 6 uses
  %i.cw = alloca [32 x i8], align 8               ; 9 uses
  %i.cx = alloca [16 x i8], align 8               ; 6 uses
  %i.cy = alloca [16 x i8], align 8               ; 6 uses
  %i.cz = alloca [16 x i8], align 8               ; 6 uses
  %i.da = alloca [32 x i8], align 8               ; 8 uses
  %i.db = alloca [24 x i8], align 8               ; 5 uses
  %i.dc = alloca [16 x i8], align 8               ; 6 uses
  %i.dd = alloca [16 x i8], align 8               ; 6 uses
  %i.de = alloca [16 x i8], align 8               ; 6 uses
  %i.df = alloca [32 x i8], align 8               ; 8 uses
  %i.dg = alloca [112 x i8], align 8              ; 5 uses
  %i.dh = alloca [16 x i8], align 8               ; 6 uses
  %i.di = alloca [16 x i8], align 8               ; 6 uses
  %i.dj = alloca [32 x i8], align 8               ; 8 uses
  %i.dk = alloca [24 x i8], align 8               ; 5 uses
  %i.dl = alloca [16 x i8], align 8               ; 6 uses
  %i.dm = alloca [16 x i8], align 8               ; 6 uses
  %i.dn = alloca [32 x i8], align 8               ; 8 uses
  %i.do = alloca [112 x i8], align 8              ; 6 uses
  %i.dp = alloca [112 x i8], align 8              ; 8 uses
  %i.dq = alloca [112 x i8], align 8              ; 5 uses
  %i.dr = alloca [112 x i8], align 8              ; 5 uses
  %i.ds = alloca [16 x i8], align 8               ; 6 uses
  %i.dt = alloca [16 x i8], align 8               ; 6 uses
  %i.du = alloca [32 x i8], align 8               ; 8 uses
  %i.dv = alloca [24 x i8], align 8               ; 5 uses
  %i.dw = alloca [16 x i8], align 8               ; 6 uses
  %i.dx = alloca [16 x i8], align 8               ; 6 uses
  %i.dy = alloca [32 x i8], align 8               ; 8 uses
  %i.dz = alloca [112 x i8], align 8              ; 5 uses
  %i.ea = alloca [112 x i8], align 8              ; 5 uses
  %i.eb = alloca [16 x i8], align 8               ; 6 uses
  %i.ec = alloca [16 x i8], align 8               ; 6 uses
  %i.ed = alloca [32 x i8], align 8               ; 8 uses
  %i.ee = alloca [24 x i8], align 8               ; 5 uses
  %i.ef = alloca [16 x i8], align 8               ; 6 uses
  %i.eg = alloca [16 x i8], align 8               ; 6 uses
  %i.eh = alloca [32 x i8], align 8               ; 8 uses
  %i.ei = alloca [16 x i8], align 8               ; 6 uses
  %i.ej = alloca [16 x i8], align 8               ; 6 uses
  %i.ek = alloca [32 x i8], align 8               ; 8 uses
  %i.el = alloca [24 x i8], align 8               ; 5 uses
  %i.em = alloca [16 x i8], align 8               ; 6 uses
  %i.en = alloca [16 x i8], align 8               ; 6 uses
  %i.eo = alloca [32 x i8], align 8               ; 8 uses
  %i.ep = alloca [16 x i8], align 16              ; 10 uses
  %i.eq = alloca [112 x i8], align 8              ; 6 uses
  %i.er = alloca [16 x i8], align 8               ; 6 uses
  %i.es = alloca [16 x i8], align 8               ; 6 uses
  %i.et = alloca [32 x i8], align 8               ; 8 uses
  %i.eu = alloca [24 x i8], align 8               ; 5 uses
  %i.ev = alloca [16 x i8], align 8               ; 6 uses
  %i.ew = alloca [16 x i8], align 8               ; 6 uses
  %i.ex = alloca [32 x i8], align 8               ; 8 uses
  %i.ey = alloca [48 x i8], align 8               ; 6 uses
  %i.ez = alloca [48 x i8], align 8               ; 7 uses
  %i.fa = alloca [112 x i8], align 8              ; 6 uses
  %i.fb = alloca [16 x i8], align 8               ; 6 uses
  %i.fc = alloca [16 x i8], align 8               ; 6 uses
  %i.fd = alloca [32 x i8], align 8               ; 8 uses
  %i.fe = alloca [24 x i8], align 8               ; 5 uses
  %i.ff = alloca [16 x i8], align 8               ; 6 uses
  %i.fg = alloca [16 x i8], align 8               ; 6 uses
  %i.fh = alloca [32 x i8], align 8               ; 8 uses
  %i.fi = alloca [48 x i8], align 8               ; 6 uses
  %i.fj = alloca [48 x i8], align 8               ; 7 uses
  %i.fk = alloca [40 x i8], align 8               ; 6 uses
  %i.fl = alloca [32 x i8], align 8               ; 5 uses
  %i.fm = alloca [120 x i8], align 8              ; 7 uses
  %i.fn = alloca [112 x i8], align 8              ; 5 uses
  %i.fo = alloca [16 x i8], align 8               ; 6 uses
  %i.fp = alloca [16 x i8], align 8               ; 6 uses
  %i.fq = alloca [32 x i8], align 8               ; 8 uses
  %i.fr = alloca [24 x i8], align 8               ; 5 uses
  %i.fs = alloca [16 x i8], align 8               ; 6 uses
  %i.ft = alloca [16 x i8], align 8               ; 6 uses
  %i.fu = alloca [32 x i8], align 8               ; 8 uses
  %i.fv = alloca [112 x i8], align 8              ; 6 uses
  %i.fw = alloca [40 x i8], align 8               ; 2 uses
  %.sroa.3 = alloca [32 x i8], align 8            ; 4 uses
  %.sroa.81055 = alloca [32 x i8], align 8        ; 10 uses
  %i.fx = alloca [112 x i8], align 8              ; 12 uses
  %i.fy = alloca [32 x i8], align 8               ; 13 uses
  %i.fz = alloca [16 x i8], align 8               ; 6 uses
  %i.ga = alloca [16 x i8], align 8               ; 6 uses
  %i.gb = alloca [32 x i8], align 8               ; 8 uses
  %i.gc = alloca [24 x i8], align 8               ; 5 uses
  %i.gd = alloca [16 x i8], align 8               ; 6 uses
  %i.ge = alloca [16 x i8], align 8               ; 6 uses
  %i.gf = alloca [32 x i8], align 8               ; 8 uses
  %i.gg = alloca [112 x i8], align 8              ; 5 uses
  %i.gh = alloca [16 x i8], align 8               ; 6 uses
  %i.gi = alloca [16 x i8], align 8               ; 6 uses
  %i.gj = alloca [32 x i8], align 8               ; 8 uses
  %i.gk = alloca [24 x i8], align 8               ; 5 uses
  %i.gl = alloca [16 x i8], align 8               ; 6 uses
  %i.gm = alloca [16 x i8], align 8               ; 6 uses
  %i.gn = alloca [32 x i8], align 8               ; 8 uses
  %i.go = alloca [112 x i8], align 8              ; 6 uses
  %i.gp = alloca [376 x i8], align 8              ; 2 uses
  %i.gq = alloca [376 x i8], align 8              ; 9 uses
  %i.gr = alloca [376 x i8], align 8              ; 9 uses
  %i.gs = alloca [48 x i8], align 8               ; 3 uses
  %i.gt = alloca [16 x i8], align 8               ; 13 uses
  %i.gu = alloca [32 x i8], align 8               ; 8 uses
  %i.gv = alloca [40 x i8], align 8               ; 8 uses
  %i.gw = alloca [32 x i8], align 8               ; 8 uses
  %i.gx = alloca [40 x i8], align 8               ; 12 uses
end_hunk_0
begin_hunk_1_@_RNCNCNvNtNtCs2HJ6gJZ22Qg_18aws_smithy_runtime6client12orchestrator6try_op00Cs9rVkZwOUgsI_13deltalake_aws:bb.a

bb.gc:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc11collections9vec_deque8VecDequeNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i.i
  %i.sr = landingpad { ptr, i32 }
          cleanup
  br label %.body14.i.i

bb.gd:                                            ; preds = %bb.gb, %.thread28.i
  %i.ss = phi ptr [ %i.sd, %.thread28.i ], [ %i.sc, %bb.gb ]
  %i.st = phi ptr [ %i.se, %.thread28.i ], [ %i.sb, %bb.gb ]
  %i.su = phi ptr [ %.sroa.7.0..sroa_idx.i, %.thread28.i ], [ %.phi.trans.insert.i, %bb.gb ]
  %i.sv = phi ptr [ %i.sf, %.thread28.i ], [ %i.si, %bb.gb ] ; 3 uses
  %i.sw = getelementptr inbounds nuw i8, ptr %0, i64 777
  %i.sx = getelementptr inbounds nuw i8, ptr %0, i64 778
  %i.sy = getelementptr inbounds nuw i8, ptr %0, i64 456
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %i.sy, ptr noundef nonnull align 8 dereferenceable(120) %i.sv, i64 120, i1 false), !noalias !1181
  %i.sz = getelementptr inbounds nuw i8, ptr %0, i64 576
  store i64 0, ptr %i.sz, align 8, !alias.scope !1185, !noalias !1181
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 584
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !alias.scope !1185, !noalias !1181
  %.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 592
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.0..sroa_idx.i.i.i, i8 0, i64 24, i1 false), !alias.scope !1185, !noalias !1181
  store i8 1, ptr %i.sw, align 1, !noalias !1181
  store i8 0, ptr %i.sx, align 2, !noalias !1181
  %i.ta = getelementptr inbounds nuw i8, ptr %0, i64 616 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %i.ta, ptr noundef nonnull align 8 dereferenceable(120) %i.sv, i64 120, i1 false), !noalias !1181
  %i.tb = getelementptr inbounds nuw i8, ptr %0, i64 736
  store ptr %i.ta, ptr %i.tb, align 8, !noalias !1181
  br label %.thread.i.i

bb.ge:                                            ; preds = %bb.gb
  invoke void @_RNvNtNtCsbvkFyIu7lgC_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @74) #28
          to label %.noexc.i unwind label %bb.hd, !noalias !1188

.noexc.i:                                         ; preds = %bb.ge
  unreachable

bb.gf:                                            ; preds = %bb.gb
  invoke void @_RNvNtNtCsbvkFyIu7lgC_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @74) #28
          to label %.noexc6.i unwind label %bb.hd, !noalias !1188

.noexc6.i:                                        ; preds = %bb.gf
  unreachable

bb.gg:                                            ; preds = %bb.gb
  %.phi.trans.insert48.i.i = getelementptr inbounds nuw i8, ptr %0, i64 768 ; 3 uses
  %.pre.i.i = load i8, ptr %.phi.trans.insert48.i.i, align 8, !range !53, !noalias !1189
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !1181
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1193)
  switch i8 %.pre.i.i, label %default.unreachable1452 [
    i8 0, label %._crit_edge.i
    i8 1, label %bb.gi
    i8 2, label %bb.gj
    i8 3, label %bb.gk
  ]

._crit_edge.i:                                    ; preds = %bb.gg
  %.phi.trans.insert25.i = getelementptr inbounds nuw i8, ptr %0, i64 744
  %.pre26.i = load ptr, ptr %.phi.trans.insert25.i, align 8, !noalias !1189
  br label %bb.gh

bb.gh:                                            ; preds = %.thread.i.i, %._crit_edge.i
  %i.tc = phi ptr [ %i.ug, %.thread.i.i ], [ %i.sc, %._crit_edge.i ]
  %i.td = phi ptr [ %i.uh, %.thread.i.i ], [ %i.sb, %._crit_edge.i ]
  %i.te = phi ptr [ %i.ui, %.thread.i.i ], [ %.phi.trans.insert.i, %._crit_edge.i ]
  %i.tf = phi ptr [ %i.uj, %.thread.i.i ], [ %i.si, %._crit_edge.i ]
  %i.tg = phi ptr [ %.val.i.i, %.thread.i.i ], [ %.pre26.i, %._crit_edge.i ]
  %i.th = phi ptr [ %.sroa.10.0..sroa_idx.i.i, %.thread.i.i ], [ %.phi.trans.insert48.i.i, %._crit_edge.i ]
  %i.ti = getelementptr inbounds nuw i8, ptr %0, i64 752 ; 2 uses
  store ptr %i.tg, ptr %i.ti, align 8, !noalias !1189
  %i.tj = getelementptr inbounds nuw i8, ptr %0, i64 760
  store ptr %i.ti, ptr %i.tj, align 8, !noalias !1189
  br label %bb.gk

bb.gi:                                            ; preds = %bb.gg
  invoke void @_RNvNtNtCsbvkFyIu7lgC_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @73) #28
          to label %.noexc.i.i unwind label %bb.gm, !noalias !1194

.noexc.i.i:                                       ; preds = %bb.gi
  unreachable

bb.gj:                                            ; preds = %bb.gg
  invoke void @_RNvNtNtCsbvkFyIu7lgC_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @73) #28
          to label %.noexc13.i.i unwind label %bb.gm, !noalias !1194

.noexc13.i.i:                                     ; preds = %bb.gj
  unreachable

bb.gk:                                            ; preds = %bb.gh, %bb.gg
  %i.tk = phi ptr [ %i.tc, %bb.gh ], [ %i.sc, %bb.gg ] ; 10 uses
  %i.tl = phi ptr [ %i.td, %bb.gh ], [ %i.sb, %bb.gg ] ; 7 uses
  %i.tm = phi ptr [ %i.te, %bb.gh ], [ %.phi.trans.insert.i, %bb.gg ] ; 9 uses
  %i.tn = phi ptr [ %i.tf, %bb.gh ], [ %i.si, %bb.gg ] ; 7 uses
  %i.to = phi ptr [ %i.th, %bb.gh ], [ %.phi.trans.insert48.i.i, %bb.gg ] ; 2 uses
  %i.tp = getelementptr inbounds nuw i8, ptr %0, i64 760
  invoke void @_RNvXs0_NtNtCsbvkFyIu7lgC_4core6future7poll_fnINtB5_6PollFnNCNCNvMs0_NtCs2DiVQAxFeQE_16aws_smithy_types4bodyNtB14_7SdkBody4next00ENtNtB7_6future6Future4pollCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.k, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.tp, ptr noalias noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.gn unwind label %bb.gl, !noalias !1195

bb.gl:                                            ; preds = %bb.gk
  %i.tq = landingpad { ptr, i32 }
          cleanup
  store i8 2, ptr %i.to, align 8, !noalias !1189
  br label %.body.i.i

bb.gm:                                            ; preds = %bb.gj, %bb.gi
  %i.tr = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

bb.gn:                                            ; preds = %bb.gk
  %i.ts = load i64, ptr %i.k, align 8, !range !23, !alias.scope !1193, !noalias !1196, !noundef !7 ; 2 uses
  %i.tt = icmp eq i64 %i.ts, 2                    ; 2 uses
  %spec.select.i.i.i = select i1 %i.tt, i8 3, i8 1
  store i8 %spec.select.i.i.i, ptr %i.to, align 8, !noalias !1189
  br i1 %i.tt, label %.thread.i, label %bb.gp

.thread.i:                                        ; preds = %bb.gn
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !1181
  store i8 3, ptr %i.tm, align 8, !noalias !1181
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.535.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !1177
  br label %bb.hk

bb.go:                                            ; preds = %.body.i.i, %bb.gs
  %i.tu = phi ptr [ %i.uy, %.body.i.i ], [ %i.tk, %bb.gs ]
  %i.tv = phi ptr [ %i.uz, %.body.i.i ], [ %i.tl, %bb.gs ]
  %i.tw = phi ptr [ %i.va, %.body.i.i ], [ %i.tm, %bb.gs ]
  %i.tx = phi ptr [ %i.vb, %.body.i.i ], [ %i.tn, %bb.gs ]
  %.pn5.pn.i.i = phi { ptr, i32 } [ %.pn3.i.i, %.body.i.i ], [ %i.uf, %bb.gs ]
  %i.ty = getelementptr inbounds nuw i8, ptr %0, i64 616
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs2DiVQAxFeQE_16aws_smithy_types4body7SdkBodyECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef align 8 dereferenceable(120) %i.ty) #24
          to label %bb.gu unwind label %bb.gz, !noalias !1195

bb.gp:                                            ; preds = %bb.gn
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %.sroa.2.sroa.0.0.copyload.i.i = load ptr, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !noalias !1181 ; 2 uses
  %.sroa.2.sroa.2.0..sroa.2.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %.sroa.2.sroa.2.0.copyload.i.i = load ptr, ptr %.sroa.2.sroa.2.0..sroa.2.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !1181 ; 3 uses
  %.sroa.2.sroa.3.0..sroa.2.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %.sroa.2.sroa.3.0.copyload.i.i = load ptr, ptr %.sroa.2.sroa.3.0..sroa.2.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !1181 ; 3 uses
  %.sroa.2.sroa.4.0..sroa.2.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  %.sroa.2.sroa.4.0.copyload.i.i = load i64, ptr %.sroa.2.sroa.4.0..sroa.2.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !1181
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !1181
  %i.tz = trunc nuw i64 %i.ts to i1
  br i1 %i.tz, label %bb.gq, label %bb.gr

bb.gq:                                            ; preds = %bb.gp
  %i.ua = getelementptr inbounds nuw i8, ptr %0, i64 576 ; 4 uses
  %i.ub = icmp eq ptr %.sroa.2.sroa.0.0.copyload.i.i, null
  br i1 %i.ub, label %bb.gt, label %_RNvXsp_NtCsbvkFyIu7lgC_4core6resultINtB5_6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB7_5error5ErrorNtNtB7_6marker4SyncNtB2f_4SendEL_EENtNtNtB7_3ops9try_trait3Try6branchCs9rVkZwOUgsI_13deltalake_aws.exit.i.i

bb.gr:                                            ; preds = %bb.gp
  %i.uc = getelementptr inbounds nuw i8, ptr %0, i64 777 ; 2 uses
  store i8 0, ptr %i.uc, align 1, !noalias !1181
  %i.ud = getelementptr inbounds nuw i8, ptr %0, i64 576
  %.sroa.041.0.copyload.i.i = load i64, ptr %i.ud, align 8, !noalias !1181 ; 2 uses
  %.sroa.442.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 584
  %.sroa.442.0.copyload.i.i = load ptr, ptr %.sroa.442.0..sroa_idx.i.i, align 8, !noalias !1181
  %.sroa.543.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 592
  %.sroa.543.0.copyload.i.i = load ptr, ptr %.sroa.543.0..sroa_idx.i.i, align 8, !noalias !1181
  %.sroa.644.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 600
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.535.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.644.0..sroa_idx.i.i, i64 16, i1 false), !noalias !1181
  %i.ue = getelementptr inbounds nuw i8, ptr %0, i64 616
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs2DiVQAxFeQE_16aws_smithy_types4body7SdkBodyECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef align 8 dereferenceable(120) %i.ue)
          to label %bb.he unwind label %bb.gv, !noalias !1195

_RNvXsp_NtCsbvkFyIu7lgC_4core6resultINtB5_6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB7_5error5ErrorNtNtB7_6marker4SyncNtB2f_4SendEL_EENtNtNtB7_3ops9try_trait3Try6branchCs9rVkZwOUgsI_13deltalake_aws.exit.i.i: ; preds = %bb.gq
  store ptr %.sroa.2.sroa.0.0.copyload.i.i, ptr %i.j, align 8, !noalias !1181
  %.sroa.8.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store ptr %.sroa.2.sroa.2.0.copyload.i.i, ptr %.sroa.8.0..sroa_idx.i.i, align 8, !noalias !1181
  %.sroa.1126.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  store ptr %.sroa.2.sroa.3.0.copyload.i.i, ptr %.sroa.1126.0..sroa_idx.i.i, align 8, !noalias !1181
  %.sroa.14.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  store i64 %.sroa.2.sroa.4.0.copyload.i.i, ptr %.sroa.14.0..sroa_idx.i.i, align 8, !noalias !1181
  invoke void @_RNvMs1_NtCsezuMeTmAxXc_11bytes_utils9segmentedINtB5_12SegmentedBufNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesE4pushCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.ua, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.j)
          to label %_RNvXsp_NtCsbvkFyIu7lgC_4core6resultINtB5_6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB7_5error5ErrorNtNtB7_6marker4SyncNtB2f_4SendEL_EENtNtNtB7_3ops9try_trait3Try6branchCs9rVkZwOUgsI_13deltalake_aws.exit._crit_edge.i.i unwind label %bb.gs, !noalias !1195

_RNvXsp_NtCsbvkFyIu7lgC_4core6resultINtB5_6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB7_5error5ErrorNtNtB7_6marker4SyncNtB2f_4SendEL_EENtNtNtB7_3ops9try_trait3Try6branchCs9rVkZwOUgsI_13deltalake_aws.exit._crit_edge.i.i: ; preds = %_RNvXsp_NtCsbvkFyIu7lgC_4core6resultINtB5_6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB7_5error5ErrorNtNtB7_6marker4SyncNtB2f_4SendEL_EENtNtNtB7_3ops9try_trait3Try6branchCs9rVkZwOUgsI_13deltalake_aws.exit.i.i
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %0, i64 736
  %.val.pre.i.i = load ptr, ptr %.phi.trans.insert.i.i, align 8, !noalias !1181
  br label %.thread.i.i

bb.gs:                                            ; preds = %_RNvXsp_NtCsbvkFyIu7lgC_4core6resultINtB5_6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB7_5error5ErrorNtNtB7_6marker4SyncNtB2f_4SendEL_EENtNtNtB7_3ops9try_trait3Try6branchCs9rVkZwOUgsI_13deltalake_aws.exit.i.i
  %i.uf = landingpad { ptr, i32 }
          cleanup
  br label %bb.go

.thread.i.i:                                      ; preds = %_RNvXsp_NtCsbvkFyIu7lgC_4core6resultINtB5_6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB7_5error5ErrorNtNtB7_6marker4SyncNtB2f_4SendEL_EENtNtNtB7_3ops9try_trait3Try6branchCs9rVkZwOUgsI_13deltalake_aws.exit._crit_edge.i.i, %bb.gd
  %i.ug = phi ptr [ %i.tk, %_RNvXsp_NtCsbvkFyIu7lgC_4core6resultINtB5_6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB7_5error5ErrorNtNtB7_6marker4SyncNtB2f_4SendEL_EENtNtNtB7_3ops9try_trait3Try6branchCs9rVkZwOUgsI_13deltalake_aws.exit._crit_edge.i.i ], [ %i.ss, %bb.gd ]
  %i.uh = phi ptr [ %i.tl, %_RNvXsp_NtCsbvkFyIu7lgC_4core6resultINtB5_6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB7_5error5ErrorNtNtB7_6marker4SyncNtB2f_4SendEL_EENtNtNtB7_3ops9try_trait3Try6branchCs9rVkZwOUgsI_13deltalake_aws.exit._crit_edge.i.i ], [ %i.st, %bb.gd ]
  %i.ui = phi ptr [ %i.tm, %_RNvXsp_NtCsbvkFyIu7lgC_4core6resultINtB5_6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB7_5error5ErrorNtNtB7_6marker4SyncNtB2f_4SendEL_EENtNtNtB7_3ops9try_trait3Try6branchCs9rVkZwOUgsI_13deltalake_aws.exit._crit_edge.i.i ], [ %i.su, %bb.gd ]
  %i.uj = phi ptr [ %i.tn, %_RNvXsp_NtCsbvkFyIu7lgC_4core6resultINtB5_6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB7_5error5ErrorNtNtB7_6marker4SyncNtB2f_4SendEL_EENtNtNtB7_3ops9try_trait3Try6branchCs9rVkZwOUgsI_13deltalake_aws.exit._crit_edge.i.i ], [ %i.sv, %bb.gd ]
  %.val.i.i = phi ptr [ %.val.pre.i.i, %_RNvXsp_NtCsbvkFyIu7lgC_4core6resultINtB5_6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB7_5error5ErrorNtNtB7_6marker4SyncNtB2f_4SendEL_EENtNtNtB7_3ops9try_trait3Try6branchCs9rVkZwOUgsI_13deltalake_aws.exit._crit_edge.i.i ], [ %i.ta, %bb.gd ] ; 2 uses
  %i.uk = getelementptr inbounds nuw i8, ptr %0, i64 744
  store ptr %.val.i.i, ptr %i.uk, align 8, !noalias !1181
  %.sroa.10.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 768 ; 2 uses
  store i8 0, ptr %.sroa.10.0..sroa_idx.i.i, align 8, !noalias !1181
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !1181
  br label %bb.gh

bb.gt:                                            ; preds = %bb.gq
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.2.sroa.2.0.copyload.i.i) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.2.sroa.3.0.copyload.i.i) ]
  %i.ul = getelementptr inbounds nuw i8, ptr %0, i64 616
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs2DiVQAxFeQE_16aws_smithy_types4body7SdkBodyECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef align 8 dereferenceable(120) %i.ul)
          to label %bb.gw unwind label %bb.gv, !noalias !1195

bb.gu:                                            ; preds = %bb.gv, %bb.go
  %i.um = phi ptr [ %i.tk, %bb.gv ], [ %i.tu, %bb.go ] ; 2 uses
  %i.un = phi ptr [ %i.tl, %bb.gv ], [ %i.tv, %bb.go ] ; 2 uses
  %i.uo = phi ptr [ %i.tm, %bb.gv ], [ %i.tw, %bb.go ] ; 2 uses
  %i.up = phi ptr [ %i.tn, %bb.gv ], [ %i.tx, %bb.go ] ; 2 uses
  %.pn9.i.i = phi { ptr, i32 } [ %i.ut, %bb.gv ], [ %.pn5.pn.i.i, %bb.go ] ; 2 uses
  %i.uq = getelementptr inbounds nuw i8, ptr %0, i64 777
  %i.ur = load i8, ptr %i.uq, align 1, !range !61, !noalias !1181, !noundef !7
  %i.us = trunc nuw i8 %i.ur to i1
  br i1 %i.us, label %bb.ha, label %.body14.i.i

bb.gv:                                            ; preds = %bb.gt, %bb.gr
  %i.ut = landingpad { ptr, i32 }
          cleanup
  br label %bb.gu

bb.gw:                                            ; preds = %bb.gt
  invoke void @_RNvXs_NtNtCs6Po7BT7Nknu_5alloc11collections9vec_dequeINtB4_8VecDequeNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.ua)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc11collections9vec_deque8VecDequeNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i.i unwind label %bb.gx, !noalias !1195

bb.gx:                                            ; preds = %bb.gw
  %i.uu = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.ua)
          to label %.body14.i.i unwind label %bb.gy, !noalias !1195

bb.gy:                                            ; preds = %bb.gx
  %i.uv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #25, !noalias !1195
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc11collections9vec_deque8VecDequeNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i.i: ; preds = %bb.gw
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.ua)
          to label %.thread18.i unwind label %bb.gc, !noalias !1195

.thread18.i:                                      ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc11collections9vec_deque8VecDequeNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i.i
  %i.uw = getelementptr inbounds nuw i8, ptr %0, i64 777
  store i8 0, ptr %i.uw, align 1, !noalias !1181
  %i.ux = getelementptr inbounds nuw i8, ptr %0, i64 778
  store i8 0, ptr %i.ux, align 2, !noalias !1181
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.10.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.535.i.i, i64 16, i1 false), !noalias !1197
  store i8 1, ptr %i.tm, align 8, !noalias !1181
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.535.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !1177
  br label %bb.hf

.body.i.i:                                        ; preds = %bb.gm, %bb.gl
  %i.uy = phi ptr [ %i.tk, %bb.gl ], [ %i.sc, %bb.gm ]
  %i.uz = phi ptr [ %i.tl, %bb.gl ], [ %i.sb, %bb.gm ]
  %i.va = phi ptr [ %i.tm, %bb.gl ], [ %.phi.trans.insert.i, %bb.gm ]
  %i.vb = phi ptr [ %i.tn, %bb.gl ], [ %i.si, %bb.gm ]
  %.pn3.i.i = phi { ptr, i32 } [ %i.tq, %bb.gl ], [ %i.tr, %bb.gm ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !1181
  br label %bb.go

bb.gz:                                            ; preds = %bb.hc, %bb.ha, %bb.go
  %i.vc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #25, !noalias !1195
  unreachable

bb.ha:                                            ; preds = %bb.gu
  %i.vd = getelementptr inbounds nuw i8, ptr %0, i64 576
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCsezuMeTmAxXc_11bytes_utils9segmented12SegmentedBufNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesEECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef align 8 dereferenceable(40) %i.vd) #24
          to label %.body14.i.i unwind label %bb.gz, !noalias !1195

bb.hb:                                            ; preds = %bb.hc, %.body14.i.i
  store i8 0, ptr %i.so, align 2, !noalias !1181
  store i8 2, ptr %i.sl, align 8, !noalias !1181
  br label %.body.i

bb.hc:                                            ; preds = %.body14.i.i
  %i.ve = getelementptr inbounds nuw i8, ptr %0, i64 456
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs2DiVQAxFeQE_16aws_smithy_types4body7SdkBodyECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef align 8 dereferenceable(120) %i.ve) #24
          to label %bb.hb unwind label %bb.gz, !noalias !1195

bb.hd:                                            ; preds = %bb.gf, %bb.ge
  %i.vf = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

bb.he:                                            ; preds = %bb.gr
  store i8 0, ptr %i.uc, align 1, !noalias !1181
  %i.vg = getelementptr inbounds nuw i8, ptr %0, i64 778
  store i8 0, ptr %i.vg, align 2, !noalias !1181
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.10.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.535.i.i, i64 16, i1 false), !noalias !1197
  store i8 1, ptr %i.tm, align 8, !noalias !1181
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.535.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !1177
  %i.vh = icmp eq i64 %.sroa.041.0.copyload.i.i, -9223372036854775807
  br i1 %i.vh, label %bb.hk, label %bb.hf

bb.hf:                                            ; preds = %bb.he, %.thread18.i
  %.sroa.432.0.i24.i = phi ptr [ %.sroa.2.sroa.3.0.copyload.i.i, %.thread18.i ], [ %.sroa.543.0.copyload.i.i, %bb.he ] ; 3 uses
  %.sroa.329.0.i23.i = phi ptr [ %.sroa.2.sroa.2.0.copyload.i.i, %.thread18.i ], [ %.sroa.442.0.copyload.i.i, %bb.he ] ; 3 uses
  %.sroa.027.0.i22.i = phi i64 [ -9223372036854775808, %.thread18.i ], [ %.sroa.041.0.copyload.i.i, %bb.he ] ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.713.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.10.i, i64 16, i1 false), !noalias !1177
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.10.i)
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs5_NtCs2DiVQAxFeQE_16aws_smithy_types11byte_streamNtBO_5Inner7collect0ECs9rVkZwOUgsI_13deltalake_aws(ptr noundef nonnull align 8 %i.tn)
          to label %bb.hh unwind label %bb.hg, !noalias !1188

bb.hg:                                            ; preds = %.thread1297, %bb.hf
  %i.vi = landingpad { ptr, i32 }
          cleanup
  br label %bb.fy

bb.hh:                                            ; preds = %bb.hf
  call void @llvm.experimental.noalias.scope.decl(metadata !1198)
  %i.vj = icmp eq i64 %.sroa.027.0.i22.i, -9223372036854775808
  br i1 %i.vj, label %.thread1297, label %_RINvMNtCsbvkFyIu7lgC_4core6resultINtB3_6ResultNtNtCs2DiVQAxFeQE_16aws_smithy_types11byte_stream15AggregatedBytesNtNtBK_5error5ErrorE7map_errINtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client12orchestrator17OrchestratorErrorNtNtNtB2j_12interceptors7context5ErrorEINvMs0_B2h_B2e_5otherB1M_EECs9rVkZwOUgsI_13deltalake_aws.exit.thread

.thread1297:                                      ; preds = %bb.hh
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.329.0.i23.i) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.432.0.i24.i) ]
  %2 = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 2 uses
  invoke void @_RINvMNtNtCs2DiVQAxFeQE_16aws_smithy_types11byte_stream5errorNtB3_5Error9streamingINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCsbvkFyIu7lgC_4core5error5ErrorNtNtB1V_6marker4SyncNtB2s_4SendEL_EECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %2, ptr noundef nonnull %.sroa.329.0.i23.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %.sroa.432.0.i24.i)
          to label %3 unwind label %bb.hg, !noalias !1188

.body.i:                                          ; preds = %bb.hd, %bb.hb
  %i.vk = phi ptr [ %i.sj, %bb.hb ], [ %i.sc, %bb.hd ]
  %i.vl = phi ptr [ %i.sk, %bb.hb ], [ %i.sb, %bb.hd ]
  %i.vm = phi ptr [ %i.sm, %bb.hb ], [ %i.si, %bb.hd ]
  %.pn2.i = phi { ptr, i32 } [ %.pn11.i.i, %bb.hb ], [ %i.vf, %bb.hd ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.10.i)
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs5_NtCs2DiVQAxFeQE_16aws_smithy_types11byte_streamNtBO_5Inner7collect0ECs9rVkZwOUgsI_13deltalake_aws(ptr noundef nonnull align 8 %i.vm) #24
          to label %bb.fy unwind label %bb.hi, !noalias !1188

bb.hi:                                            ; preds = %.body.i
  %i.vn = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #25, !noalias !1188
  unreachable

bb.hj:                                            ; preds = %bb.ga, %bb.fz
  %i.vo = landingpad { ptr, i32 }
          cleanup
  br label %.body739

bb.hk:                                            ; preds = %bb.he, %.thread.i
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.10.i)
  store i8 3, ptr %i.tk, align 8, !noalias !1177
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.713.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.81055)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fy)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fx)
  br label %common.ret

bb.hl:                                            ; preds = %3, %bb.hm
  %i.vp = landingpad { ptr, i32 }
          cleanup
  br label %bb.cl

3:                                                ; preds = %.thread1297
  store i64 -9223372036854775808, ptr %i.l, align 8, !alias.scope !1201, !noalias !1203
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.81055, ptr noundef nonnull align 8 dereferenceable(32) %2, i64 32, i1 false), !noalias !1204
  store i8 1, ptr %i.tk, align 8, !noalias !1177
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.713.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.3, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.81055, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.81055)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !1205
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.3, i64 24, i1 false), !noalias !1209
  invoke void @_RINvMs0_NtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client12orchestratorINtB6_17OrchestratorErrorNtNtNtB8_12interceptors7context5ErrorE5otherNtNtNtCs2DiVQAxFeQE_16aws_smithy_types11byte_stream5error5ErrorECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull sret([112 x i8]) align 8 captures(none) dereferenceable(112) %i.fx, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.i)
          to label %_RINvMNtCsbvkFyIu7lgC_4core6resultINtB3_6ResultNtNtCs2DiVQAxFeQE_16aws_smithy_types11byte_stream15AggregatedBytesNtNtBK_5error5ErrorE7map_errINtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client12orchestrator17OrchestratorErrorNtNtNtB2j_12interceptors7context5ErrorEINvMs0_B2h_B2e_5otherB1M_EECs9rVkZwOUgsI_13deltalake_aws.exit unwind label %bb.hl

_RINvMNtCsbvkFyIu7lgC_4core6resultINtB3_6ResultNtNtCs2DiVQAxFeQE_16aws_smithy_types11byte_stream15AggregatedBytesNtNtBK_5error5ErrorE7map_errINtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client12orchestrator17OrchestratorErrorNtNtNtB2j_12interceptors7context5ErrorEINvMs0_B2h_B2e_5otherB1M_EECs9rVkZwOUgsI_13deltalake_aws.exit.thread: ; preds = %bb.hh
  store i64 %.sroa.027.0.i22.i, ptr %i.l, align 8, !alias.scope !1210, !noalias !1177
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 2 uses
  store ptr %.sroa.329.0.i23.i, ptr %.sroa.3.0..sroa_idx.i, align 8, !alias.scope !1210, !noalias !1177
  %.sroa.512.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  store ptr %.sroa.432.0.i24.i, ptr %.sroa.512.0..sroa_idx.i, align 8, !alias.scope !1210, !noalias !1177
  %.sroa.713.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.713.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.713.i, i64 16, i1 false), !alias.scope !1210, !noalias !1177
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.81055, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.3.0..sroa_idx.i, i64 32, i1 false), !noalias !1204
  store i8 1, ptr %i.tk, align 8, !noalias !1177
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.713.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.3, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.81055, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.81055)
  call void @llvm.experimental.noalias.scope.decl(metadata !1209)
  call void @llvm.experimental.noalias.scope.decl(metadata !1211)
  %i.vq = getelementptr inbounds nuw i8, ptr %i.fx, i64 8
  store i64 %.sroa.027.0.i22.i, ptr %i.vq, align 8, !alias.scope !1205
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fx, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.3.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.3, i64 32, i1 false), !alias.scope !1205
  br label %bb.hm

_RINvMNtCsbvkFyIu7lgC_4core6resultINtB3_6ResultNtNtCs2DiVQAxFeQE_16aws_smithy_types11byte_stream15AggregatedBytesNtNtBK_5error5ErrorE7map_errINtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client12orchestrator17OrchestratorErrorNtNtNtB2j_12interceptors7context5ErrorEINvMs0_B2h_B2e_5otherB1M_EECs9rVkZwOUgsI_13deltalake_aws.exit: ; preds = %3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !1205
  %.pr1299 = load i16, ptr %i.fx, align 8
  %.not89 = icmp eq i16 %.pr1299, 11
  br i1 %.not89, label %bb.hm, label %bb.pz

bb.hm:                                            ; preds = %_RINvMNtCsbvkFyIu7lgC_4core6resultINtB3_6ResultNtNtCs2DiVQAxFeQE_16aws_smithy_types11byte_stream15AggregatedBytesNtNtBK_5error5ErrorE7map_errINtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client12orchestrator17OrchestratorErrorNtNtNtB2j_12interceptors7context5ErrorEINvMs0_B2h_B2e_5otherB1M_EECs9rVkZwOUgsI_13deltalake_aws.exit.thread, %_RINvMNtCsbvkFyIu7lgC_4core6resultINtB3_6ResultNtNtCs2DiVQAxFeQE_16aws_smithy_types11byte_stream15AggregatedBytesNtNtBK_5error5ErrorE7map_errINtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client12orchestrator17OrchestratorErrorNtNtNtB2j_12interceptors7context5ErrorEINvMs0_B2h_B2e_5otherB1M_EECs9rVkZwOUgsI_13deltalake_aws.exit
  %i.vr = getelementptr inbounds nuw i8, ptr %i.fx, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.fw, ptr noundef nonnull align 8 dereferenceable(40) %i.vr, i64 40, i1 false)
  invoke void @_RNvMs3_NtCs2DiVQAxFeQE_16aws_smithy_types11byte_streamNtB5_15AggregatedBytes10into_bytes(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.fy, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(40) %i.fw)
          to label %bb.hn unwind label %bb.hl

bb.hn:                                            ; preds = %bb.hm
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fx)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fm)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fl)
  %i.vs = load ptr, ptr %i.fy, align 8, !noalias !1212, !nonnull !7, !align !47, !noundef !7
  %i.vt = load ptr, ptr %i.vs, align 8, !noalias !1212, !nonnull !7, !noundef !7
  %i.vu = getelementptr inbounds nuw i8, ptr %i.fy, i64 24 ; 2 uses
  %i.vv = getelementptr inbounds nuw i8, ptr %i.fy, i64 8 ; 2 uses
  %i.vw = load ptr, ptr %i.vv, align 8, !noalias !1212, !noundef !7
  %i.vx = getelementptr inbounds nuw i8, ptr %i.fy, i64 16 ; 2 uses
  %i.vy = load i64, ptr %i.vx, align 8, !noalias !1212, !noundef !7
  invoke void %i.vt(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.fl, ptr noundef nonnull align 8 %i.vu, ptr noundef %i.vw, i64 noundef %i.vy)
          to label %_RNvXs2_NtCs9Ct3XQYJhun_5bytes5bytesNtB5_5BytesNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit unwind label %bb.ho, !inline_history !1215

bb.ho:                                            ; preds = %bb.hn
  %i.vz = landingpad { ptr, i32 }
          cleanup
  br label %bb.hp

_RNvXs2_NtCs9Ct3XQYJhun_5bytes5bytesNtB5_5BytesNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit: ; preds = %bb.hn
  invoke void @_RNvXs2_NtCs2DiVQAxFeQE_16aws_smithy_types4bodyNtB5_7SdkBodyINtNtCsbvkFyIu7lgC_4core7convert4FromNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesE4from(ptr noalias noundef nonnull sret([120 x i8]) align 8 captures(none) dereferenceable(120) %i.fm, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.fl)
          to label %bb.hr unwind label %bb.hq

bb.hp:                                            ; preds = %bb.hq, %bb.ho
  %.pn90 = phi { ptr, i32 } [ %i.wa, %bb.hq ], [ %i.vz, %bb.ho ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fl)
  br label %bb.py

bb.hq:                                            ; preds = %_RNvXs2_NtCs9Ct3XQYJhun_5bytes5bytesNtB5_5BytesNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit
  %i.wa = landingpad { ptr, i32 }
          cleanup
  br label %bb.hp

bb.hr:                                            ; preds = %_RNvXs2_NtCs9Ct3XQYJhun_5bytes5bytesNtB5_5BytesNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fl)
  %i.wb = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.wc = load ptr, ptr %i.wb, align 8, !nonnull !7, !align !47, !noundef !7 ; 2 uses
  %i.wd = load i64, ptr %i.wc, align 8, !range !23, !alias.scope !1216, !noundef !7
  %.not.i747 = icmp eq i64 %i.wd, 2
  br i1 %.not.i747, label %bb.hs, label %bb.hv, !prof !9

bb.hs:                                            ; preds = %bb.hr
  invoke void @_RNvNtCsbvkFyIu7lgC_4core6option13expect_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @45, i64 noundef 9, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @49) #28
          to label %.noexc752 unwind label %bb.ht

.noexc752:                                        ; preds = %bb.hs
  unreachable

bb.ht:                                            ; preds = %bb.hs
  %i.we = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs2DiVQAxFeQE_16aws_smithy_types4body7SdkBodyECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef align 8 dereferenceable(120) %i.fm) #24
          to label %bb.py unwind label %bb.af

bb.hu:                                            ; preds = %bb.hv
  %i.wf = landingpad { ptr, i32 }
          cleanup
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %i.wg, ptr noundef nonnull align 8 dereferenceable(120) %i.fm, i64 120, i1 false)
  br label %bb.py

bb.hv:                                            ; preds = %bb.hr
  %i.wg = getelementptr inbounds nuw i8, ptr %i.wc, i64 120 ; 3 uses
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs2DiVQAxFeQE_16aws_smithy_types4body7SdkBodyECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef align 8 dereferenceable(120) %i.wg)
          to label %bb.hw unwind label %bb.hu

bb.hw:                                            ; preds = %bb.hv
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %i.wg, ptr noundef nonnull align 8 dereferenceable(120) %i.fm, i64 120, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fm)
  %i.wh = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.wi = load ptr, ptr %i.wh, align 8, !nonnull !7, !align !47, !noundef !7
  %i.wj = getelementptr inbounds nuw i8, ptr %i.wi, i64 24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fk)
  %i.wk = getelementptr inbounds nuw i8, ptr %i.fk, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.wk, ptr noundef nonnull align 8 dereferenceable(32) %i.fy, i64 32, i1 false)
  store i64 2, ptr %i.fk, align 8
  %i.wl = invoke noundef nonnull align 8 ptr @_RINvMs6_NtCs2DiVQAxFeQE_16aws_smithy_types10config_bagNtB6_5Layer9store_putNtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client12orchestrator17LoadedRequestBodyECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.wj, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(40) %i.fk)
          to label %bb.hx unwind label %bb.px     ; 0 uses

bb.hx:                                            ; preds = %bb.hw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fk)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fy)
  %i.wm = getelementptr inbounds nuw i8, ptr %0, i64 91
  store i8 0, ptr %i.wm, align 1
  br label %bb.bj

bb.hy:                                            ; preds = %bb.bj
  %i.wn = landingpad { ptr, i32 }
          cleanup
  br label %bb.ds

bb.hz:                                            ; preds = %bb.bj
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fj)
  %i.wo = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 5 uses
  %i.wp = load ptr, ptr %i.wo, align 8, !nonnull !7, !align !47, !noundef !7 ; 3 uses
  %i.wq = getelementptr i8, ptr %i.wp, i64 8
  %.val662 = load ptr, ptr %i.wq, align 8, !nonnull !7, !noundef !7 ; 2 uses
  %i.wr = getelementptr i8, ptr %i.wp, i64 16
  %.val663 = load i64, ptr %i.wr, align 8, !noundef !7
  %i.ws = getelementptr inbounds nuw [48 x i8], ptr %.val662, i64 %.val663
  %i.wt = load ptr, ptr %i.lj, align 8, !nonnull !7, !align !47, !noundef !7
  %i.wu = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  %i.wv = load ptr, ptr %i.wu, align 8, !nonnull !7, !align !47, !noundef !7
  invoke void @_RNvMNtNtCs2HJ6gJZ22Qg_18aws_smithy_runtime6client12interceptorsINtB2_12InterceptorsINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtNtB1s_5slice4iter4IterINtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client18runtime_components7TrackedNtNtB2D_12interceptors17SharedInterceptorEENCNvMs1_B2B_NtB2B_17RuntimeComponents12interceptors0EE24read_after_serializationCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.fj, ptr noundef nonnull %.val662, ptr noundef nonnull %i.ws, ptr noundef nonnull align 8 %i.wt, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(392) %i.wp, ptr noalias noundef nonnull align 8 dereferenceable(80) %i.wv)
          to label %bb.ib unwind label %bb.ia

bb.ia:                                            ; preds = %bb.hz
  %i.ww = landingpad { ptr, i32 }
          cleanup
  br label %bb.pw

bb.ib:                                            ; preds = %bb.hz
  %i.wx = load i64, ptr %i.fj, align 8, !range !22, !noundef !7
  %.not97 = icmp eq i64 %i.wx, -9223372036854775807
  br i1 %.not97, label %bb.ic, label %bb.ow

bb.ic:                                            ; preds = %bb.ib
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fj)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ez)
  %i.wy = load ptr, ptr %i.wo, align 8, !nonnull !7, !align !47, !noundef !7 ; 3 uses
  %i.wz = getelementptr i8, ptr %i.wy, i64 8
  %.val660 = load ptr, ptr %i.wz, align 8, !nonnull !7, !noundef !7 ; 2 uses
  %i.xa = getelementptr i8, ptr %i.wy, i64 16
  %.val661 = load i64, ptr %i.xa, align 8, !noundef !7
  %i.xb = getelementptr inbounds nuw [48 x i8], ptr %.val660, i64 %.val661
  %i.xc = load ptr, ptr %i.lj, align 8, !nonnull !7, !align !47, !noundef !7
  %i.xd = load ptr, ptr %i.wu, align 8, !nonnull !7, !align !47, !noundef !7
  invoke void @_RNvMNtNtCs2HJ6gJZ22Qg_18aws_smithy_runtime6client12interceptorsINtB2_12InterceptorsINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtNtB1s_5slice4iter4IterINtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client18runtime_components7TrackedNtNtB2D_12interceptors17SharedInterceptorEENCNvMs1_B2B_NtB2B_17RuntimeComponents12interceptors0EE24modify_before_retry_loopCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.ez, ptr noundef nonnull %.val660, ptr noundef nonnull %i.xb, ptr noalias noundef nonnull align 8 dereferenceable(1160) %i.xc, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(392) %i.wy, ptr noalias noundef nonnull align 8 dereferenceable(80) %i.xd)
          to label %bb.ie unwind label %bb.id

bb.id:                                            ; preds = %bb.ic
  %i.xe = landingpad { ptr, i32 }
          cleanup
  br label %bb.ov

bb.ie:                                            ; preds = %bb.ic
  %i.xf = load i64, ptr %i.ez, align 8, !range !22, !noundef !7
  %.not98 = icmp eq i64 %i.xf, -9223372036854775807
  br i1 %.not98, label %bb.if, label %bb.nv

bb.if:                                            ; preds = %bb.ie
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ez)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ep)
  %i.xg = load ptr, ptr %i.wo, align 8, !nonnull !7, !align !47, !noundef !7
  %i.xh = getelementptr i8, ptr %i.xg, i64 280    ; 2 uses
  %i.xi = load <2 x ptr>, ptr %i.xh, align 8
  %.val672 = load ptr, ptr %i.xh, align 8, !nonnull !7, !noundef !7
  %i.xj = atomicrmw add ptr %.val672, i64 1 monotonic, align 8
  %i.xk = icmp slt i64 %i.xj, 0
  br i1 %i.xk, label %bb.ig, label %bb.ih

bb.ig:                                            ; preds = %bb.if
  call void @llvm.trap()
  unreachable

bb.ih:                                            ; preds = %bb.if
  store <2 x ptr> %i.xi, ptr %i.ep, align 16
  %i.xl = load ptr, ptr %i.wo, align 8, !nonnull !7, !align !47, !noundef !7
  %i.xm = load ptr, ptr %i.wu, align 8, !nonnull !7, !align !47, !noundef !7
  %i.xn = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  invoke void @_RNvXs0_NtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client7retriesNtB5_19SharedRetryStrategyNtB5_13RetryStrategy30should_attempt_initial_request(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.xn, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.ep, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(392) %i.xl, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %i.xm)
          to label %bb.ik unwind label %bb.ii

bb.ii:                                            ; preds = %bb.ih
  %i.xo = landingpad { ptr, i32 }
          cleanup
  call void @llvm.experimental.noalias.scope.decl(metadata !1219)
  call void @llvm.experimental.noalias.scope.decl(metadata !1222)
  call void @llvm.experimental.noalias.scope.decl(metadata !1225)
  %i.xp = load ptr, ptr %i.ep, align 16, !alias.scope !1228, !nonnull !7, !noundef !7
  %i.xq = atomicrmw sub ptr %i.xp, i64 1 release, align 8, !noalias !1228
  %i.xr = icmp eq i64 %i.xq, 1
  br i1 %i.xr, label %bb.ij, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client7retries19SharedRetryStrategyECs9rVkZwOUgsI_13deltalake_aws.exit

bb.ij:                                            ; preds = %bb.ii
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client7retries13RetryStrategyEL_E9drop_slowBN_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.ep) #26
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client7retries19SharedRetryStrategyECs9rVkZwOUgsI_13deltalake_aws.exit unwind label %bb.af

bb.ik:                                            ; preds = %bb.ih
  %i.xs = getelementptr inbounds nuw i8, ptr %0, i64 90 ; 2 uses
  store i8 1, ptr %i.xs, align 2
  call void @llvm.experimental.noalias.scope.decl(metadata !1229)
  call void @llvm.experimental.noalias.scope.decl(metadata !1232)
  call void @llvm.experimental.noalias.scope.decl(metadata !1235)
  %i.xt = load ptr, ptr %i.ep, align 16, !alias.scope !1238, !nonnull !7, !noundef !7
  %i.xu = atomicrmw sub ptr %i.xt, i64 1 release, align 8, !noalias !1238
  %i.xv = icmp eq i64 %i.xu, 1
  br i1 %i.xv, label %bb.il, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client7retries19SharedRetryStrategyECs9rVkZwOUgsI_13deltalake_aws.exit755

end_hunk_1
begin_hunk_2_@_RNCNvNtNtCs2HJ6gJZ22Qg_18aws_smithy_runtime6client12orchestrator11try_attempt0Cs9rVkZwOUgsI_13deltalake_aws:bb.a
  %i.fd = alloca [48 x i8], align 8               ; 6 uses
  %i.fe = alloca [48 x i8], align 8               ; 7 uses
  %i.ff = alloca [112 x i8], align 8              ; 5 uses
  %i.fg = alloca [8 x i8], align 8                ; 5 uses
  %i.fh = alloca [16 x i8], align 8               ; 6 uses
  %i.fi = alloca [32 x i8], align 8               ; 8 uses
  %i.fj = alloca [24 x i8], align 8               ; 5 uses
  %i.fk = alloca [8 x i8], align 8                ; 5 uses
  %i.fl = alloca [16 x i8], align 8               ; 6 uses
  %i.fm = alloca [32 x i8], align 8               ; 8 uses
  %.sroa.81226 = alloca [110 x i8], align 2       ; 6 uses
  %i.fn = alloca [32 x i8], align 8               ; 8 uses
  %i.fo = alloca [40 x i8], align 8               ; 8 uses
  %i.fp = alloca [32 x i8], align 8               ; 8 uses
  %i.fq = alloca [40 x i8], align 8               ; 6 uses
  %.sroa.01482 = alloca [40 x i8], align 8        ; 5 uses
  %.sroa.01487 = alloca [40 x i8], align 8        ; 7 uses
  %i.fr = alloca [112 x i8], align 8              ; 12 uses
  %i.fs = alloca [112 x i8], align 8              ; 6 uses
  %i.ft = alloca [16 x i8], align 8               ; 6 uses
  %i.fu = alloca [16 x i8], align 8               ; 6 uses
  %i.fv = alloca [32 x i8], align 8               ; 8 uses
  %i.fw = alloca [24 x i8], align 8               ; 5 uses
  %i.fx = alloca [16 x i8], align 8               ; 6 uses
  %i.fy = alloca [16 x i8], align 8               ; 6 uses
  %i.fz = alloca [32 x i8], align 8               ; 8 uses
  %i.ga = alloca [48 x i8], align 8               ; 6 uses
  %i.gb = alloca [48 x i8], align 8               ; 7 uses
  %i.gc = alloca [112 x i8], align 8              ; 6 uses
  %i.gd = alloca [16 x i8], align 8               ; 6 uses
  %i.ge = alloca [16 x i8], align 8               ; 6 uses
  %i.gf = alloca [32 x i8], align 8               ; 8 uses
  %i.gg = alloca [24 x i8], align 8               ; 5 uses
  %i.gh = alloca [16 x i8], align 8               ; 6 uses
  %i.gi = alloca [16 x i8], align 8               ; 6 uses
  %i.gj = alloca [32 x i8], align 8               ; 8 uses
  %i.gk = alloca [48 x i8], align 8               ; 6 uses
  %i.gl = alloca [48 x i8], align 8               ; 7 uses
  %i.gm = alloca [112 x i8], align 8              ; 6 uses
  %i.gn = alloca [16 x i8], align 8               ; 6 uses
  %i.go = alloca [16 x i8], align 8               ; 6 uses
  %i.gp = alloca [32 x i8], align 8               ; 8 uses
  %i.gq = alloca [24 x i8], align 8               ; 5 uses
  %i.gr = alloca [16 x i8], align 8               ; 6 uses
  %i.gs = alloca [16 x i8], align 8               ; 6 uses
  %i.gt = alloca [32 x i8], align 8               ; 8 uses
  %i.gu = alloca [48 x i8], align 8               ; 6 uses
  %i.gv = alloca [48 x i8], align 8               ; 7 uses
  %i.gw = alloca [240 x i8], align 8              ; 5 uses
  %i.gx = alloca [8 x i8], align 8                ; 5 uses
  %i.gy = alloca [16 x i8], align 8               ; 6 uses
  %i.gz = alloca [32 x i8], align 8               ; 8 uses
  %i.ha = alloca [32 x i8], align 8               ; 8 uses
  %i.hb = alloca [24 x i8], align 8               ; 5 uses
  %i.hc = alloca [8 x i8], align 8                ; 5 uses
  %i.hd = alloca [16 x i8], align 8               ; 6 uses
  %i.he = alloca [32 x i8], align 8               ; 8 uses
  %i.hf = alloca [32 x i8], align 8               ; 8 uses
  %i.hg = alloca [112 x i8], align 8              ; 5 uses
  %i.hh = alloca [16 x i8], align 8               ; 6 uses
  %i.hi = alloca [16 x i8], align 8               ; 6 uses
  %i.hj = alloca [32 x i8], align 8               ; 8 uses
  %i.hk = alloca [24 x i8], align 8               ; 5 uses
  %i.hl = alloca [16 x i8], align 8               ; 6 uses
  %i.hm = alloca [16 x i8], align 8               ; 6 uses
  %i.hn = alloca [32 x i8], align 8               ; 8 uses
  %i.ho = alloca [112 x i8], align 8              ; 6 uses
  %.sroa.101111 = alloca [112 x i8], align 8      ; 3 uses
  %.sroa.121113 = alloca [120 x i8], align 8      ; 2 uses
  %.sroa.31156 = alloca [112 x i8], align 8       ; 2 uses
  %.sroa.51157 = alloca [120 x i8], align 8       ; 2 uses
  %i.hp = alloca [240 x i8], align 8              ; 8 uses
  %i.hq = alloca [408 x i8], align 8              ; 2 uses
  %i.hr = alloca [376 x i8], align 8              ; 5 uses
  %i.hs = alloca [240 x i8], align 8              ; 5 uses
  %i.ht = alloca [112 x i8], align 8              ; 5 uses
  %i.hu = alloca [16 x i8], align 8               ; 6 uses
  %i.hv = alloca [16 x i8], align 8               ; 6 uses
  %i.hw = alloca [32 x i8], align 8               ; 8 uses
  %i.hx = alloca [24 x i8], align 8               ; 5 uses
  %i.hy = alloca [16 x i8], align 8               ; 6 uses
  %i.hz = alloca [16 x i8], align 8               ; 6 uses
  %i.ia = alloca [32 x i8], align 8               ; 8 uses
  %i.ib = alloca [112 x i8], align 8              ; 6 uses
  %i.ic = alloca [112 x i8], align 8              ; 8 uses
  %i.id = alloca [8 x i8], align 8                ; 5 uses
  %i.ie = alloca [16 x i8], align 8               ; 6 uses
  %i.if = alloca [32 x i8], align 8               ; 8 uses
  %i.ig = alloca [32 x i8], align 8               ; 8 uses
  %i.ih = alloca [24 x i8], align 8               ; 5 uses
  %i.ii = alloca [8 x i8], align 8                ; 5 uses
  %i.ij = alloca [16 x i8], align 8               ; 6 uses
  %i.ik = alloca [32 x i8], align 8               ; 8 uses
  %i.il = alloca [32 x i8], align 8               ; 8 uses
  %.sroa.71117 = alloca [368 x i8], align 8       ; 5 uses
  %i.im = alloca [16 x i8], align 8               ; 6 uses
  %i.in = alloca [16 x i8], align 8               ; 6 uses
  %i.io = alloca [32 x i8], align 8               ; 8 uses
  %i.ip = alloca [24 x i8], align 8               ; 5 uses
  %i.iq = alloca [16 x i8], align 8               ; 6 uses
  %i.ir = alloca [16 x i8], align 8               ; 6 uses
  %i.is = alloca [32 x i8], align 8               ; 8 uses
  %i.it = alloca [112 x i8], align 8              ; 6 uses
  %i.iu = alloca [16 x i8], align 8               ; 6 uses
  %i.iv = alloca [16 x i8], align 8               ; 6 uses
  %i.iw = alloca [32 x i8], align 8               ; 8 uses
  %i.ix = alloca [24 x i8], align 8               ; 5 uses
  %i.iy = alloca [16 x i8], align 8               ; 6 uses
  %i.iz = alloca [16 x i8], align 8               ; 6 uses
  %i.ja = alloca [32 x i8], align 8               ; 8 uses
  %i.jb = alloca [48 x i8], align 8               ; 6 uses
  %i.jc = alloca [48 x i8], align 8               ; 7 uses
  %i.jd = alloca [112 x i8], align 8              ; 6 uses
  %i.je = alloca [16 x i8], align 8               ; 6 uses
  %i.jf = alloca [16 x i8], align 8               ; 6 uses
  %i.jg = alloca [32 x i8], align 8               ; 8 uses
  %i.jh = alloca [24 x i8], align 8               ; 5 uses
  %i.ji = alloca [16 x i8], align 8               ; 6 uses
  %i.jj = alloca [16 x i8], align 8               ; 6 uses
  %i.jk = alloca [32 x i8], align 8               ; 8 uses
  %i.jl = alloca [48 x i8], align 8               ; 6 uses
  %i.jm = alloca [48 x i8], align 8               ; 7 uses
  %i.jn = alloca [112 x i8], align 8              ; 6 uses
  %i.jo = alloca [16 x i8], align 8               ; 6 uses
  %i.jp = alloca [16 x i8], align 8               ; 6 uses
  %i.jq = alloca [32 x i8], align 8               ; 8 uses
  %i.jr = alloca [24 x i8], align 8               ; 5 uses
  %i.js = alloca [16 x i8], align 8               ; 6 uses
  %i.jt = alloca [16 x i8], align 8               ; 6 uses
  %i.ju = alloca [32 x i8], align 8               ; 8 uses
  %i.jv = alloca [48 x i8], align 8               ; 6 uses
  %i.jw = alloca [48 x i8], align 8               ; 7 uses
  %i.jx = alloca [112 x i8], align 8              ; 5 uses
  %i.jy = alloca [16 x i8], align 8               ; 6 uses
  %i.jz = alloca [16 x i8], align 8               ; 6 uses
  %i.ka = alloca [32 x i8], align 8               ; 8 uses
  %i.kb = alloca [24 x i8], align 8               ; 5 uses
  %i.kc = alloca [16 x i8], align 8               ; 6 uses
  %i.kd = alloca [16 x i8], align 8               ; 6 uses
  %i.ke = alloca [32 x i8], align 8               ; 8 uses
  %i.kf = alloca [112 x i8], align 8              ; 6 uses
  %i.kg = alloca [112 x i8], align 8              ; 7 uses
  %i.kh = alloca [112 x i8], align 8              ; 6 uses
  %i.ki = alloca [16 x i8], align 8               ; 6 uses
  %i.kj = alloca [16 x i8], align 8               ; 6 uses
  %i.kk = alloca [32 x i8], align 8               ; 8 uses
  %i.kl = alloca [24 x i8], align 8               ; 5 uses
  %i.km = alloca [16 x i8], align 8               ; 6 uses
  %i.kn = alloca [16 x i8], align 8               ; 6 uses
  %i.ko = alloca [32 x i8], align 8               ; 8 uses
  %i.kp = alloca [48 x i8], align 8               ; 6 uses
  %i.kq = alloca [48 x i8], align 8               ; 7 uses
  %i.kr = alloca [112 x i8], align 8              ; 6 uses
  %i.ks = alloca [16 x i8], align 8               ; 6 uses
  %i.kt = alloca [16 x i8], align 8               ; 6 uses
  %i.ku = alloca [32 x i8], align 8               ; 8 uses
  %i.kv = alloca [24 x i8], align 8               ; 5 uses
  %i.kw = alloca [16 x i8], align 8               ; 6 uses
  %i.kx = alloca [16 x i8], align 8               ; 6 uses
  %i.ky = alloca [32 x i8], align 8               ; 8 uses
  %i.kz = alloca [48 x i8], align 8               ; 6 uses
  %i.la = alloca [48 x i8], align 8               ; 7 uses
  %i.lb = alloca [112 x i8], align 8              ; 5 uses
  %i.lc = alloca [16 x i8], align 8               ; 6 uses
  %i.ld = alloca [16 x i8], align 8               ; 6 uses
  %i.le = alloca [32 x i8], align 8               ; 8 uses
  %i.lf = alloca [24 x i8], align 8               ; 5 uses
  %i.lg = alloca [16 x i8], align 8               ; 6 uses
  %i.lh = alloca [16 x i8], align 8               ; 6 uses
  %i.li = alloca [32 x i8], align 8               ; 8 uses
  %i.lj = alloca [112 x i8], align 8              ; 6 uses
  %i.lk = alloca [32 x i8], align 8               ; 8 uses
  %i.ll = alloca [40 x i8], align 8               ; 8 uses
  %i.lm = alloca [32 x i8], align 8               ; 8 uses
  %i.ln = alloca [40 x i8], align 8               ; 6 uses
  %i.lo = alloca [288 x i8], align 8              ; 15 uses
  %i.lp = alloca [328 x i8], align 8              ; 6 uses
  %i.lq = alloca [328 x i8], align 8              ; 8 uses
  %i.lr = alloca [112 x i8], align 8              ; 9 uses
  %i.ls = alloca [120 x i8], align 8              ; 5 uses
  %i.lt = alloca [112 x i8], align 8              ; 5 uses
  %i.lu = alloca [16 x i8], align 8               ; 6 uses
  %i.lv = alloca [16 x i8], align 8               ; 6 uses
  %i.lw = alloca [32 x i8], align 8               ; 8 uses
  %i.lx = alloca [24 x i8], align 8               ; 5 uses
  %i.ly = alloca [16 x i8], align 8               ; 6 uses
  %i.lz = alloca [16 x i8], align 8               ; 6 uses
  %i.ma = alloca [32 x i8], align 8               ; 8 uses
  %i.mb = alloca [112 x i8], align 8              ; 6 uses
  %i.mc = alloca [112 x i8], align 8              ; 7 uses
  %i.md = alloca [120 x i8], align 8              ; 9 uses
  %i.me = alloca [112 x i8], align 8              ; 5 uses
  %i.mf = alloca [16 x i8], align 8               ; 6 uses
  %i.mg = alloca [16 x i8], align 8               ; 6 uses
  %i.mh = alloca [32 x i8], align 8               ; 8 uses
  %i.mi = alloca [24 x i8], align 8               ; 5 uses
  %i.mj = alloca [16 x i8], align 8               ; 6 uses
  %i.mk = alloca [16 x i8], align 8               ; 6 uses
  %i.ml = alloca [32 x i8], align 8               ; 8 uses
  %i.mm = alloca [112 x i8], align 8              ; 6 uses
  %i.mn = alloca [240 x i8], align 8              ; 7 uses
  %.sroa.7974 = alloca [216 x i8], align 8        ; 4 uses
  %.sroa.13 = alloca [216 x i8], align 8          ; 8 uses
  %i.mo = alloca [112 x i8], align 8              ; 6 uses
  %i.mp = alloca [16 x i8], align 8               ; 6 uses
  %i.mq = alloca [16 x i8], align 8               ; 6 uses
  %i.mr = alloca [32 x i8], align 8               ; 8 uses
  %i.ms = alloca [24 x i8], align 8               ; 5 uses
  %i.mt = alloca [16 x i8], align 8               ; 6 uses
  %i.mu = alloca [16 x i8], align 8               ; 6 uses
  %i.mv = alloca [32 x i8], align 8               ; 8 uses
  %i.mw = alloca [48 x i8], align 8               ; 6 uses
  %i.mx = alloca [48 x i8], align 8               ; 7 uses
  %i.my = getelementptr inbounds nuw i8, ptr %0, i64 291 ; 3 uses
  %i.mz = load i8, ptr %i.my, align 1, !range !146, !noundef !7
  switch i8 %i.mz, label %default.unreachable1479 [
    i8 0, label %bb.d
    i8 1, label %bb.ai
    i8 2, label %bb.aj
    i8 3, label %bb.ak
    i8 4, label %bb.b
    i8 5, label %bb.afu
    i8 6, label %bb.c
  ]

default.unreachable1479:                          ; preds = %bb.apm, %_RNvMNtCscTw95cGIolY_7tracing4spanNtB2_4Span8do_enter.exit.i.i.i, %_RNvMNtCscTw95cGIolY_7tracing4spanNtB2_4Span8do_enter.exit.i896, %_RNvMNtCscTw95cGIolY_7tracing4spanNtB2_4Span8do_enter.exit.i, %bb.ds, %bb.bp, %bb.ak, %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.lr)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.lq)
  br label %bb.pu

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fr)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.01487)
  br label %bb.amq

bb.d:                                             ; preds = %bb.a
  %i.na = getelementptr inbounds nuw i8, ptr %0, i64 289
  store i8 0, ptr %i.na, align 1
  %i.nb = getelementptr inbounds nuw i8, ptr %0, i64 290
  store i8 0, ptr %i.nb, align 2
  %i.nc = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.nd = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.ne = load ptr, ptr %i.nd, align 8, !nonnull !7, !align !47, !noundef !7 ; 2 uses
  store ptr %i.ne, ptr %i.nc, align 8
  %i.nf = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.ng = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.nh = load ptr, ptr %i.ng, align 8, !nonnull !7, !align !47, !noundef !7 ; 2 uses
  store ptr %i.nh, ptr %i.nf, align 8
  %i.ni = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.nj = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.nk = load ptr, ptr %i.nj, align 8, !nonnull !7, !align !47, !noundef !7 ; 4 uses
  store ptr %i.nk, ptr %i.ni, align 8
  %i.nl = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.nm = getelementptr inbounds nuw i8, ptr %0, i64 292
  %i.nn = load i8, ptr %i.nm, align 4, !range !61, !noundef !7
  store i8 %i.nn, ptr %i.nl, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.mx)
  %i.no = getelementptr i8, ptr %i.nk, i64 8
  %.val630 = load ptr, ptr %i.no, align 8, !nonnull !7, !noundef !7 ; 2 uses
  %i.np = getelementptr i8, ptr %i.nk, i64 16
  %.val631 = load i64, ptr %i.np, align 8, !noundef !7
  %i.nq = getelementptr inbounds nuw [48 x i8], ptr %.val630, i64 %.val631
  invoke void @_RNvMNtNtCs2HJ6gJZ22Qg_18aws_smithy_runtime6client12interceptorsINtB2_12InterceptorsINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtNtB1s_5slice4iter4IterINtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client18runtime_components7TrackedNtNtB2D_12interceptors17SharedInterceptorEENCNvMs1_B2B_NtB2B_17RuntimeComponents12interceptors0EE19read_before_attemptCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.mx, ptr noundef nonnull %.val630, ptr noundef nonnull %i.nq, ptr noundef nonnull align 8 %i.ne, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(392) %i.nk, ptr noalias noundef nonnull align 8 dereferenceable(80) %i.nh)
          to label %bb.f unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.nr = landingpad { ptr, i32 }
          cleanup
  br label %bb.ah

bb.f:                                             ; preds = %bb.d
  %i.ns = load i64, ptr %i.mx, align 8, !range !22, !noundef !7
  %.not = icmp eq i64 %i.ns, -9223372036854775807
  br i1 %.not, label %.thread, label %bb.g

.thread:                                          ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.mx)
  %.sroa.8968.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 864
  %i.nt = load <2 x ptr>, ptr %i.nf, align 8
  %i.nu = shufflevector <2 x ptr> %i.nt, <2 x ptr> poison, <2 x i32> <i32 1, i32 0>
  store <2 x ptr> %i.nu, ptr %.sroa.8968.0..sroa_idx, align 8
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 885
  store i8 0, ptr %.sroa.11.0..sroa_idx, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.13)
  %i.nv = getelementptr inbounds nuw i8, ptr %0, i64 296
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7340.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cw)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dd)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5308.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dr)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.11274.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.eb)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7245.i)
  %i.nw = getelementptr inbounds nuw i8, ptr %0, i64 885
  br label %bb.am

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.mw)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.mw, ptr noundef nonnull align 8 dereferenceable(48) %i.mx, i64 48, i1 false)
  %i.nx = load atomic i64, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core8metadata9MAX_LEVEL monotonic, align 8
  %i.ny = icmp ult i64 %i.nx, 2
  br i1 %i.ny, label %bb.h, label %bb.o

bb.h:                                             ; preds = %bb.g
  %i.nz = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @_RNvNCNvNtNtCs2HJ6gJZ22Qg_18aws_smithy_runtime6client12orchestrator11try_attempt010___CALLSITE, i64 16) monotonic, align 8 ; 2 uses
  %i.oa = icmp ult i8 %i.nz, 3
  br i1 %i.oa, label %bb.k, label %bb.i, !prof !1044

bb.i:                                             ; preds = %bb.h
  %i.ob = invoke noundef i8 @_RNvMNtCs2y6mmZ7bjoM_12tracing_core8callsiteNtB2_15DefaultCallsite8register(ptr noundef nonnull align 8 @_RNvNCNvNtNtCs2HJ6gJZ22Qg_18aws_smithy_runtime6client12orchestrator11try_attempt010___CALLSITE) #26
          to label %bb.k unwind label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.oc = landingpad { ptr, i32 }
          cleanup
  br label %bb.af

bb.k:                                             ; preds = %bb.i, %bb.h
  %.sroa.0.0.i = phi i8 [ %i.nz, %bb.h ], [ %i.ob, %bb.i ] ; 2 uses
  %i.od = icmp eq i8 %.sroa.0.0.i, 0
  br i1 %i.od, label %bb.o, label %bb.m

bb.l:                                             ; preds = %bb.m
  %i.oe = landingpad { ptr, i32 }
          cleanup
  br label %bb.af

bb.m:                                             ; preds = %bb.k
  %i.of = load ptr, ptr @_RNvNCNvNtNtCs2HJ6gJZ22Qg_18aws_smithy_runtime6client12orchestrator11try_attempt010___CALLSITE, align 8, !nonnull !7, !align !47, !noundef !7
  %i.og = invoke noundef zeroext i1 @_RNvNtCscTw95cGIolY_7tracing15___macro_support12___is_enabled(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.of, i8 noundef %.sroa.0.0.i)
          to label %bb.n unwind label %bb.l

bb.n:                                             ; preds = %bb.m
  br i1 %i.og, label %bb.y, label %bb.o

bb.o:                                             ; preds = %bb.g, %bb.k, %bb.n
  %i.oh = load atomic i8, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher6EXISTS monotonic, align 1
  %.not1392 = icmp eq i8 %i.oh, 0
  br i1 %.not1392, label %bb.p, label %bb.ab

bb.p:                                             ; preds = %bb.o
  %i.oi = load atomic i64, ptr @_RNvCsaljjC7ZTCQu_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8 ; 2 uses
  %i.oj = icmp ult i64 %i.oi, 6
  tail call void @llvm.assume(i1 %i.oj)
  %i.ok = icmp samesign ugt i64 %i.oi, 3
  br i1 %i.ok, label %bb.r, label %bb.ab

bb.q:                                             ; preds = %bb.r
  %i.ol = landingpad { ptr, i32 }
          cleanup
  br label %bb.af

bb.r:                                             ; preds = %bb.p
  %i.om = load ptr, ptr @_RNvNCNvNtNtCs2HJ6gJZ22Qg_18aws_smithy_runtime6client12orchestrator11try_attempt010___CALLSITE, align 8, !nonnull !7, !align !47, !noundef !7 ; 3 uses
  %i.on = getelementptr i8, ptr %i.om, i64 32
  %.val610 = load ptr, ptr %i.on, align 8, !nonnull !7, !noundef !7
  %i.oo = getelementptr i8, ptr %i.om, i64 40
  %.val611 = load i64, ptr %i.oo, align 8, !noundef !7
  store i64 4, ptr %i.ms, align 8, !alias.scope !1597
  %.sroa.6961.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ms, i64 8
  store ptr %.val610, ptr %.sroa.6961.0..sroa_idx, align 8, !alias.scope !1597
  %.sroa.8962.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ms, i64 16
  store i64 %.val611, ptr %.sroa.8962.0..sroa_idx, align 8, !alias.scope !1597
  %i.op = invoke { ptr, ptr } @_RNvCsaljjC7ZTCQu_3log6logger()
          to label %bb.s unwind label %bb.q       ; 2 uses

bb.s:                                             ; preds = %bb.r
  %i.oq = extractvalue { ptr, ptr } %i.op, 0      ; 2 uses
  %i.or = extractvalue { ptr, ptr } %i.op, 1      ; 2 uses
  %i.os = getelementptr inbounds nuw i8, ptr %i.or, i64 24
  %i.ot = load ptr, ptr %i.os, align 8, !invariant.load !7, !nonnull !7
  %i.ou = invoke noundef zeroext i1 %i.ot(ptr noundef %i.oq, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ms)
          to label %bb.u unwind label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ov = landingpad { ptr, i32 }
          cleanup
  br label %bb.af

bb.u:                                             ; preds = %bb.s
  br i1 %i.ou, label %bb.v, label %bb.ab

bb.v:                                             ; preds = %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %i.mr)
  %i.ow = load ptr, ptr @_RNvNCNvNtNtCs2HJ6gJZ22Qg_18aws_smithy_runtime6client12orchestrator11try_attempt010___CALLSITE, align 8, !nonnull !7, !align !47, !noundef !7
  %i.ox = getelementptr inbounds nuw i8, ptr %i.ow, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.mq)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.mp)
  store ptr @47, ptr %i.mp, align 8
  %i.oy = getelementptr inbounds nuw i8, ptr %i.mp, i64 8
  store ptr inttoptr (i64 79 to ptr), ptr %i.oy, align 8
  store ptr %i.mp, ptr %i.mq, align 8
  %i.oz = getelementptr inbounds nuw i8, ptr %i.mq, i64 8
  store ptr @8, ptr %i.oz, align 8
  store i64 1, ptr %i.mr, align 8, !alias.scope !1601, !noalias !1604
  %.sroa.4.0..sroa_idx.i636 = getelementptr inbounds nuw i8, ptr %i.mr, i64 8
  store ptr %i.mq, ptr %.sroa.4.0..sroa_idx.i636, align 8, !alias.scope !1601, !noalias !1604
  %.sroa.5.0..sroa_idx.i637 = getelementptr inbounds nuw i8, ptr %i.mr, i64 16
end_hunk_2
begin_hunk_3_@_RNCNvNtNtCs2HJ6gJZ22Qg_18aws_smithy_runtime6client12orchestrator11try_attempt0Cs9rVkZwOUgsI_13deltalake_aws:bb.a
  store <2 x ptr> %i.pu, ptr %i.pp, align 8, !noalias !1615
  %i.pv = invoke noundef align 8 ptr @_RINvMs8_NtCs2DiVQAxFeQE_16aws_smithy_types10config_bagNtB6_9ConfigBag4loadNtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client4auth30AuthSchemeOptionResolverParamsECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %i.pt)
          to label %bb.aq unwind label %bb.ap, !noalias !1619 ; 2 uses

bb.an:                                            ; preds = %bb.ak
  call void @llvm.lifetime.start.p0(ptr nonnull %i.el), !noalias !1615
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ek)
  br label %bb.bb

bb.ao:                                            ; preds = %bb.ak
  call void @llvm.lifetime.start.p0(ptr nonnull %i.el), !noalias !1615
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dm), !noalias !1615
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dl)
  br label %bb.ji

bb.ap:                                            ; preds = %bb.am
  %i.pw = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client4auth30SharedAuthSchemeOptionResolverECs9rVkZwOUgsI_13deltalake_aws.exit149.i

bb.aq:                                            ; preds = %bb.am
  %i.px = getelementptr inbounds nuw i8, ptr %0, i64 648 ; 2 uses
  %.not.i146.i = icmp eq ptr %i.pv, null
  br i1 %.not.i146.i, label %bb.ar, label %_RNvMNtCsbvkFyIu7lgC_4core6optionINtB2_6OptionRNtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client4auth30AuthSchemeOptionResolverParamsE6expectCs9rVkZwOUgsI_13deltalake_aws.exit.i, !prof !9

bb.ar:                                            ; preds = %bb.aq
  invoke void @_RNvNtCsbvkFyIu7lgC_4core6option13expect_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @102, i64 noundef 46, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @104) #28
          to label %.noexc.i unwind label %bb.as, !noalias !1619

.noexc.i:                                         ; preds = %bb.ar
  unreachable

bb.as:                                            ; preds = %bb.ar
  %i.py = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client4auth30SharedAuthSchemeOptionResolverECs9rVkZwOUgsI_13deltalake_aws.exit149.i

_RNvMNtCsbvkFyIu7lgC_4core6optionINtB2_6OptionRNtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client4auth30AuthSchemeOptionResolverParamsE6expectCs9rVkZwOUgsI_13deltalake_aws.exit.i: ; preds = %bb.aq
  store ptr %i.pv, ptr %i.px, align 8, !noalias !1615
  %i.pz = load ptr, ptr %i.pp, align 8, !noalias !1615, !nonnull !7, !align !47, !noundef !7 ; 2 uses
  %i.qa = getelementptr i8, ptr %i.pz, i64 88
  %.val138.i = load ptr, ptr %i.qa, align 8, !noalias !1619, !nonnull !7, !noundef !7 ; 2 uses
  %i.qb = getelementptr i8, ptr %i.pz, i64 96
  %.val139.i = load ptr, ptr %i.qb, align 8, !noalias !1619, !nonnull !7, !align !47, !noundef !7
  %i.qc = atomicrmw add ptr %.val138.i, i64 1 monotonic, align 8, !noalias !1619
  %i.qd = icmp slt i64 %i.qc, 0
  br i1 %i.qd, label %bb.at, label %bb.av

bb.at:                                            ; preds = %_RNvMNtCsbvkFyIu7lgC_4core6optionINtB2_6OptionRNtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client4auth30AuthSchemeOptionResolverParamsE6expectCs9rVkZwOUgsI_13deltalake_aws.exit.i
  tail call void @llvm.trap()
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client4auth30SharedAuthSchemeOptionResolverECs9rVkZwOUgsI_13deltalake_aws.exit149.i: ; preds = %bb.bo, %bb.bn, %bb.au, %bb.as, %bb.ap
  %i.qe = phi ptr [ %i.qg, %bb.au ], [ %i.pm, %bb.ap ], [ %i.pm, %bb.as ], [ %i.rl, %bb.bo ], [ %i.rl, %bb.bn ]
  %i.qf = phi ptr [ %i.qh, %bb.au ], [ %i.pn, %bb.ap ], [ %i.pn, %bb.as ], [ %i.rm, %bb.bo ], [ %i.rm, %bb.bn ]
  %.pn104.i = phi { ptr, i32 } [ %i.qi, %bb.au ], [ %i.pw, %bb.ap ], [ %i.py, %bb.as ], [ %.pn101.pn.i, %bb.bo ], [ %.pn101.pn.i, %bb.bn ]
  store i8 2, ptr %i.qe, align 1, !noalias !1615
  br label %.body

bb.au:                                            ; preds = %bb.il, %bb.bm
  %i.qg = phi ptr [ %i.vh, %bb.il ], [ %i.rf, %bb.bm ]
  %i.qh = phi ptr [ %i.vi, %bb.il ], [ %i.rg, %bb.bm ]
  %i.qi = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client4auth30SharedAuthSchemeOptionResolverECs9rVkZwOUgsI_13deltalake_aws.exit149.i

bb.av:                                            ; preds = %_RNvMNtCsbvkFyIu7lgC_4core6optionINtB2_6OptionRNtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client4auth30AuthSchemeOptionResolverParamsE6expectCs9rVkZwOUgsI_13deltalake_aws.exit.i
  store ptr %.val138.i, ptr %i.pn, align 8, !noalias !1615
  %i.qj = getelementptr inbounds nuw i8, ptr %0, i64 304
  store ptr %.val139.i, ptr %i.qj, align 8, !noalias !1615
  call void @llvm.lifetime.start.p0(ptr nonnull %i.el), !noalias !1615
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ek)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ej), !noalias !1615
  %i.qk = load ptr, ptr %i.px, align 8, !noalias !1615, !nonnull !7, !align !47, !noundef !7
  %i.ql = load ptr, ptr %i.pr, align 8, !noalias !1615, !nonnull !7, !align !47, !noundef !7
  %i.qm = load ptr, ptr %i.pp, align 8, !noalias !1615, !nonnull !7, !align !47, !noundef !7
  invoke void @_RNvXsb_NtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client4authNtB5_30SharedAuthSchemeOptionResolverNtB5_24ResolveAuthSchemeOptions30resolve_auth_scheme_options_v2(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.ej, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.pn, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.qk, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %i.ql, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(392) %i.qm)
          to label %bb.ax unwind label %bb.aw, !noalias !1619

bb.aw:                                            ; preds = %bb.av
  %i.qn = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ej), !noalias !1615
  br label %bb.ay

bb.ax:                                            ; preds = %bb.av
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ek, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.ej, i64 24, i1 false), !alias.scope !1620, !noalias !1615
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ej), !noalias !1615
  %i.qo = getelementptr inbounds nuw i8, ptr %0, i64 888
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.qo, ptr noundef nonnull align 8 dereferenceable(24) %i.ek, i64 24, i1 false), !noalias !1615
  br label %bb.bb

bb.ay:                                            ; preds = %bb.bg, %bb.bc, %bb.aw
  %i.qp = phi ptr [ %i.qr, %bb.bg ], [ %i.qr, %bb.bc ], [ %i.pm, %bb.aw ]
  %i.qq = phi ptr [ %i.qs, %bb.bg ], [ %i.qs, %bb.bc ], [ %i.pn, %bb.aw ]
  %.pn101.i = phi { ptr, i32 } [ %i.qx, %bb.bg ], [ %i.qu, %bb.bc ], [ %i.qn, %bb.aw ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ek)
  br label %bb.bn

bb.az:                                            ; preds = %bb.ak
  invoke void @_RNvNtNtCsbvkFyIu7lgC_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @105) #28
          to label %.noexc643 unwind label %bb.lx

.noexc643:                                        ; preds = %bb.az
  unreachable

bb.ba:                                            ; preds = %bb.ak
  invoke void @_RNvNtNtCsbvkFyIu7lgC_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @105) #28
          to label %.noexc644 unwind label %bb.lx

.noexc644:                                        ; preds = %bb.ba
  unreachable

bb.bb:                                            ; preds = %bb.ax, %bb.an
  %i.qr = phi ptr [ %i.pm, %bb.ax ], [ %i.pl, %bb.an ] ; 6 uses
  %i.qs = phi ptr [ %i.pn, %bb.ax ], [ %i.pk, %bb.an ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ei), !noalias !1615
  %i.qt = getelementptr inbounds nuw i8, ptr %0, i64 888 ; 5 uses
  invoke void @_RNvXsB_NtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client4authNtB5_23AuthSchemeOptionsFutureNtNtNtCsbvkFyIu7lgC_4core6future6future6Future4poll(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.ei, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.qt, ptr noalias noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.bd unwind label %bb.bc, !noalias !1619

bb.bc:                                            ; preds = %bb.bb
  %i.qu = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ei), !noalias !1615
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client4auth23AuthSchemeOptionsFutureECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef align 8 dereferenceable(24) %i.qt) #24
          to label %bb.ay unwind label %bb.bk, !noalias !1619

bb.bd:                                            ; preds = %bb.bb
  %i.qv = load i64, ptr %i.ei, align 8, !range !22, !noalias !1615, !noundef !7 ; 3 uses
  %i.qw = icmp eq i64 %i.qv, -9223372036854775807
  br i1 %i.qw, label %bb.be, label %bb.bf

bb.be:                                            ; preds = %bb.bd
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ei), !noalias !1615
  call void @llvm.lifetime.end.p0(ptr nonnull %i.el), !noalias !1615
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ek)
  br label %.thread1259

bb.bf:                                            ; preds = %bb.bd
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ei, i64 8
  %.sroa.3.0.copyload.i = load ptr, ptr %.sroa.3.0..sroa_idx.i, align 8, !noalias !1615 ; 3 uses
  %.sroa.5.0..sroa_idx.i641 = getelementptr inbounds nuw i8, ptr %i.ei, i64 16
  %.sroa.5.0.copyload.i = load ptr, ptr %.sroa.5.0..sroa_idx.i641, align 8, !noalias !1615 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ei), !noalias !1615
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client4auth23AuthSchemeOptionsFutureECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef align 8 dereferenceable(24) %i.qt)
          to label %bb.bh unwind label %bb.bg, !noalias !1619

bb.bg:                                            ; preds = %bb.bf
  %i.qx = landingpad { ptr, i32 }
          cleanup
  br label %bb.ay

bb.bh:                                            ; preds = %bb.bf
  %i.qy = icmp eq i64 %i.qv, -9223372036854775808
  br i1 %i.qy, label %bb.bl, label %_RNvXsp_NtCsbvkFyIu7lgC_4core6resultINtB5_6ResultINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client4auth16AuthSchemeOptionEINtNtBP_5boxed3BoxDNtNtB7_5error5ErrorNtNtB7_6marker4SyncNtB37_4SendEL_EENtNtNtB7_3ops9try_trait3Try6branchCs9rVkZwOUgsI_13deltalake_aws.exit.i

_RNvXsp_NtCsbvkFyIu7lgC_4core6resultINtB5_6ResultINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client4auth16AuthSchemeOptionEINtNtBP_5boxed3BoxDNtNtB7_5error5ErrorNtNtB7_6marker4SyncNtB37_4SendEL_EENtNtNtB7_3ops9try_trait3Try6branchCs9rVkZwOUgsI_13deltalake_aws.exit.i: ; preds = %bb.bh
  %i.qz = getelementptr inbounds nuw i8, ptr %0, i64 884
  store i64 %i.qv, ptr %i.el, align 8, !noalias !1615
  %.sroa.4.0..sroa_idx.i642 = getelementptr inbounds nuw i8, ptr %i.el, i64 8
  store ptr %.sroa.3.0.copyload.i, ptr %.sroa.4.0..sroa_idx.i642, align 8, !noalias !1615
  %.sroa.5238.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.el, i64 16
  store ptr %.sroa.5.0.copyload.i, ptr %.sroa.5238.0..sroa_idx.i, align 8, !noalias !1615
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ek)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.eh), !noalias !1615
  store i8 0, ptr %i.qz, align 4, !noalias !1615
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.eh, ptr noundef nonnull align 8 dereferenceable(24) %i.el, i64 24, i1 false), !noalias !1615
  %i.ra = getelementptr inbounds nuw i8, ptr %0, i64 640
  %i.rb = load ptr, ptr %i.ra, align 8, !noalias !1615, !nonnull !7, !align !47, !noundef !7
  %i.rc = invoke noundef align 8 ptr @_RINvMs8_NtCs2DiVQAxFeQE_16aws_smithy_types10config_bagNtB6_9ConfigBag4loadNtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client4auth20AuthSchemePreferenceECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %i.rb)
          to label %.thread.i unwind label %bb.bj, !noalias !1619 ; 2 uses

.thread.i:                                        ; preds = %_RNvXsp_NtCsbvkFyIu7lgC_4core6resultINtB5_6ResultINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client4auth16AuthSchemeOptionEINtNtBP_5boxed3BoxDNtNtB7_5error5ErrorNtNtB7_6marker4SyncNtB37_4SendEL_EENtNtNtB7_3ops9try_trait3Try6branchCs9rVkZwOUgsI_13deltalake_aws.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.eh), !noalias !1615
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.qt, ptr noundef nonnull align 8 dereferenceable(24) %i.el, i64 24, i1 false), !noalias !1615
  %.sroa.7242.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 912
  store ptr %i.rc, ptr %.sroa.7242.0..sroa_idx.i, align 8, !noalias !1615
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 920
  store i8 0, ptr %.sroa.8.0..sroa_idx.i, align 8, !noalias !1615
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5343.i)
  br label %bb.bq

bb.bi:                                            ; preds = %bb.bj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.eh), !noalias !1615
  br label %.body192.i

bb.bj:                                            ; preds = %_RNvXsp_NtCsbvkFyIu7lgC_4core6resultINtB5_6ResultINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client4auth16AuthSchemeOptionEINtNtBP_5boxed3BoxDNtNtB7_5error5ErrorNtNtB7_6marker4SyncNtB37_4SendEL_EENtNtNtB7_3ops9try_trait3Try6branchCs9rVkZwOUgsI_13deltalake_aws.exit.i
  %i.rd = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client4auth16AuthSchemeOptionEECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef align 8 dereferenceable(24) %i.eh) #24
          to label %bb.bi unwind label %bb.bk, !noalias !1619

bb.bk:                                            ; preds = %bb.lw, %bb.lv, %bb.lu, %bb.ls, %bb.lp, %bb.kv, %bb.jj, %.body167.i, %bb.ja, %bb.hs, %.body.i, %bb.dr, %bb.bo, %bb.bj, %bb.bc
  %i.re = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #25, !noalias !1619
  unreachable

bb.bl:                                            ; preds = %bb.bh
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.3.0.copyload.i) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.0.copyload.i) ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ek)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client4auth16AuthSchemeOptionEECs9rVkZwOUgsI_13deltalake_aws.exit226.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client4auth16AuthSchemeOptionEECs9rVkZwOUgsI_13deltalake_aws.exit226.i: ; preds = %bb.lm, %bb.bl
  %i.rf = phi ptr [ %i.qr, %bb.bl ], [ %i.aip, %bb.lm ] ; 2 uses
  %i.rg = phi ptr [ %i.qs, %bb.bl ], [ %i.aiq, %bb.lm ] ; 4 uses
  %.sroa.0328.0.i = phi i64 [ -9223372036854775807, %bb.bl ], [ %.sroa.0328.2.i, %bb.lm ] ; 2 uses
  %.sroa.7330.0.i = phi ptr [ %.sroa.3.0.copyload.i, %bb.bl ], [ %.sroa.7330.2.i, %bb.lm ]
  %.sroa.12333.0.i = phi ptr [ %.sroa.5.0.copyload.i, %bb.bl ], [ %.sroa.12333.2.i, %bb.lm ]
  %i.rh = getelementptr inbounds nuw i8, ptr %0, i64 884
  store i8 0, ptr %i.rh, align 4, !noalias !1615
  call void @llvm.lifetime.end.p0(ptr nonnull %i.el), !noalias !1615
  call void @llvm.experimental.noalias.scope.decl(metadata !1624)
  call void @llvm.experimental.noalias.scope.decl(metadata !1627)
  call void @llvm.experimental.noalias.scope.decl(metadata !1630)
  %i.ri = load ptr, ptr %i.rg, align 8, !alias.scope !1633, !noalias !1615, !nonnull !7, !noundef !7
  %i.rj = atomicrmw sub ptr %i.ri, i64 1 release, align 8, !noalias !1634
  %i.rk = icmp eq i64 %i.rj, 1
  br i1 %i.rk, label %bb.bm, label %bb.ly

bb.bm:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client4auth16AuthSchemeOptionEECs9rVkZwOUgsI_13deltalake_aws.exit226.i
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client4auth24ResolveAuthSchemeOptionsEL_E9drop_slowBN_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.rg) #26
          to label %bb.ly unwind label %bb.au, !noalias !1619

bb.bn:                                            ; preds = %bb.lw, %.body192.i, %bb.ay
  %i.rl = phi ptr [ %i.qp, %bb.ay ], [ %i.wd, %bb.lw ], [ %i.wd, %.body192.i ] ; 2 uses
  %i.rm = phi ptr [ %i.qq, %bb.ay ], [ %i.we, %bb.lw ], [ %i.we, %.body192.i ] ; 4 uses
  %.pn101.pn.i = phi { ptr, i32 } [ %.pn101.i, %bb.ay ], [ %.pn95.pn.pn.pn.pn.i, %bb.lw ], [ %.pn95.pn.pn.pn.pn.i, %.body192.i ] ; 2 uses
  %i.rn = getelementptr inbounds nuw i8, ptr %0, i64 884
  store i8 0, ptr %i.rn, align 4, !noalias !1615
  call void @llvm.lifetime.end.p0(ptr nonnull %i.el), !noalias !1615
  call void @llvm.experimental.noalias.scope.decl(metadata !1635)
  call void @llvm.experimental.noalias.scope.decl(metadata !1638)
  call void @llvm.experimental.noalias.scope.decl(metadata !1641)
  %i.ro = load ptr, ptr %i.rm, align 8, !alias.scope !1644, !noalias !1615, !nonnull !7, !noundef !7
  %i.rp = atomicrmw sub ptr %i.ro, i64 1 release, align 8, !noalias !1645
  %i.rq = icmp eq i64 %i.rp, 1
  br i1 %i.rq, label %bb.bo, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client4auth30SharedAuthSchemeOptionResolverECs9rVkZwOUgsI_13deltalake_aws.exit149.i

bb.bo:                                            ; preds = %bb.bn
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client4auth24ResolveAuthSchemeOptionsEL_E9drop_slowBN_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.rm) #26
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client4auth30SharedAuthSchemeOptionResolverECs9rVkZwOUgsI_13deltalake_aws.exit149.i unwind label %bb.bk, !noalias !1619

bb.bp:                                            ; preds = %bb.ak
  call void @llvm.lifetime.start.p0(ptr nonnull %i.el), !noalias !1615
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %0, i64 920
  %.pre.i = load i8, ptr %.phi.trans.insert.i, align 8, !range !177, !noalias !1646
  %i.rr = getelementptr inbounds nuw i8, ptr %0, i64 888 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5343.i)
  switch i8 %.pre.i, label %default.unreachable1479 [
    i8 0, label %._crit_edge
    i8 1, label %bb.cn
    i8 2, label %bb.co
  ]

._crit_edge:                                      ; preds = %bb.bp
  %.phi.trans.insert1414 = getelementptr inbounds nuw i8, ptr %0, i64 912
  %.pre1415 = load ptr, ptr %.phi.trans.insert1414, align 8, !noalias !1646
  br label %bb.bq

bb.bq:                                            ; preds = %._crit_edge, %.thread.i
  %i.rs = phi ptr [ %i.qr, %.thread.i ], [ %i.pl, %._crit_edge ] ; 10 uses
  %i.rt = phi ptr [ %i.qs, %.thread.i ], [ %i.pk, %._crit_edge ] ; 9 uses
  %i.ru = phi ptr [ %i.rc, %.thread.i ], [ %.pre1415, %._crit_edge ] ; 2 uses
  %i.rv = phi ptr [ %i.qt, %.thread.i ], [ %i.rr, %._crit_edge ] ; 3 uses
  %i.rw = getelementptr inbounds nuw i8, ptr %0, i64 920 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cp), !noalias !1646
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cp, ptr noundef nonnull align 8 dereferenceable(24) %i.rv, i64 24, i1 false), !noalias !1646
  %.not.i150.i = icmp eq ptr %i.ru, null
  br i1 %.not.i150.i, label %bb.bs, label %bb.br

bb.br:                                            ; preds = %bb.bq
  call void @llvm.lifetime.start.p0(ptr nonnull %i.co), !noalias !1646
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cn), !noalias !1646
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cm), !noalias !1646
  invoke void @_RNvXsa_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client4auth12AuthSchemeIdENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.cm, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ru)
          to label %bb.bu unwind label %bb.bt, !noalias !1649

bb.bs:                                            ; preds = %bb.bq
  %.sroa.0341.0.copyload342.i = load i64, ptr %i.rv, align 8, !noalias !1646
  %.sroa.5343.0..sroa_idx344.i = getelementptr inbounds nuw i8, ptr %0, i64 896
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5343.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5343.0..sroa_idx344.i, i64 16, i1 false), !noalias !1646
  br label %bb.cq

bb.bt:                                            ; preds = %bb.br
  %i.rx = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cm), !noalias !1646
  br label %bb.cm

bb.bu:                                            ; preds = %bb.br
  %.sroa.0.0.copyload.i.i.i = load i64, ptr %i.cm, align 8, !alias.scope !1650, !noalias !1653 ; 2 uses
  %.sroa.2.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.cm, i64 8
  %.sroa.2.0.copyload.i.i.i = load ptr, ptr %.sroa.2.0..sroa_idx.i.i.i, align 8, !alias.scope !1650, !noalias !1653, !nonnull !7, !noundef !7 ; 3 uses
  %.sroa.3.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.cm, i64 16
  %.sroa.3.0.copyload.i.i.i = load i64, ptr %.sroa.3.0..sroa_idx.i.i.i, align 8, !alias.scope !1650, !noalias !1653 ; 2 uses
  %i.ry = icmp ult i64 %.sroa.3.0.copyload.i.i.i, 384307168202282326
  call void @llvm.assume(i1 %i.ry)
  %i.rz = getelementptr inbounds nuw [24 x i8], ptr %.sroa.2.0.copyload.i.i.i, i64 %.sroa.3.0.copyload.i.i.i
  %i.sa = icmp sgt i64 %.sroa.0.0.copyload.i.i.i, -1
  call void @llvm.assume(i1 %i.sa)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cm), !noalias !1646
  store ptr %.sroa.2.0.copyload.i.i.i, ptr %i.cn, align 8, !alias.scope !1655, !noalias !1646
  %.sroa.0.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.cn, i64 8
  store ptr %.sroa.2.0.copyload.i.i.i, ptr %.sroa.0.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !1655, !noalias !1646
  %.sroa.0.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.cn, i64 16
  store i64 %.sroa.0.0.copyload.i.i.i, ptr %.sroa.0.sroa.6.0..sroa_idx.i.i, align 8, !alias.scope !1655, !noalias !1646
  %.sroa.0.sroa.7.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.cn, i64 24
  store ptr %i.rz, ptr %.sroa.0.sroa.7.0..sroa_idx.i.i, align 8, !alias.scope !1655, !noalias !1646
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.cn, i64 32
  store i64 0, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !1655, !noalias !1646
  invoke void @_RINvXs1e_NtNtNtCs2pqxYH9ZEk8_3std11collections4hash3mapINtB7_7HashMapNtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client4auth12AuthSchemeIdjEINtNtNtNtCsbvkFyIu7lgC_4core4iter6traits7collect12FromIteratorTB15_jEE9from_iterINtNtNtB2l_8adapters3map3MapINtNtB3B_9enumerate9EnumerateINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterB15_EENCNCNvNtNtNtCs2HJ6gJZ22Qg_18aws_smithy_runtime6client12orchestrator4auth40reprioritize_with_auth_scheme_preference00EECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.co, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(40) %i.cn)
          to label %bb.bw unwind label %bb.bv, !noalias !1649

bb.bv:                                            ; preds = %bb.bu
  %i.sb = landingpad { ptr, i32 }
          cleanup
  br label %bb.cm

bb.bw:                                            ; preds = %bb.bu
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cn), !noalias !1646
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cj), !noalias !1646
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ci), !noalias !1646
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.cp, align 8, !noalias !1646
  %.sroa.53.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.cp, i64 8
  %.sroa.53.0.copyload.i.i = load ptr, ptr %.sroa.53.0..sroa_idx.i.i, align 8, !noalias !1646, !nonnull !7, !noundef !7 ; 3 uses
  %.sroa.64.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.cp, i64 16
  %.sroa.64.0.copyload.i.i = load i64, ptr %.sroa.64.0..sroa_idx.i.i, align 8, !noalias !1646 ; 2 uses
  %i.sc = icmp ult i64 %.sroa.64.0.copyload.i.i, 288230376151711744
  call void @llvm.assume(i1 %i.sc)
  %i.sd = getelementptr inbounds nuw [32 x i8], ptr %.sroa.53.0.copyload.i.i, i64 %.sroa.64.0.copyload.i.i
  store ptr %.sroa.53.0.copyload.i.i, ptr %i.ci, align 8, !alias.scope !1659, !noalias !1662
  %i.se = getelementptr inbounds nuw i8, ptr %i.ci, i64 16
  store i64 %.sroa.0.0.copyload.i.i, ptr %i.se, align 8, !alias.scope !1659, !noalias !1662
  %i.sf = getelementptr inbounds nuw i8, ptr %i.ci, i64 8
  store ptr %.sroa.53.0.copyload.i.i, ptr %i.sf, align 8, !alias.scope !1659, !noalias !1662
  %i.sg = getelementptr inbounds nuw i8, ptr %i.ci, i64 24
  store ptr %i.sd, ptr %i.sg, align 8, !alias.scope !1659, !noalias !1662
  invoke void @_RINvYINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client4auth16AuthSchemeOptionENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator9partitionINtB8_3VecBR_ENCNCNvNtNtNtCs2HJ6gJZ22Qg_18aws_smithy_runtime6client12orchestrator4auth40reprioritize_with_auth_scheme_preference0s_0ECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.cj, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.ci, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.co)
          to label %bb.by unwind label %bb.bx, !noalias !1649

bb.bx:                                            ; preds = %bb.bw
  %i.sh = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ci), !noalias !1646
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cj), !noalias !1646
  br label %bb.ck

bb.by:                                            ; preds = %bb.bw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ci), !noalias !1646
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cl), !noalias !1646
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cl, ptr noundef nonnull align 8 dereferenceable(24) %i.cj, i64 24, i1 false), !noalias !1646
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ck), !noalias !1646
  %i.si = getelementptr inbounds nuw i8, ptr %i.cj, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ck, ptr noundef nonnull align 8 dereferenceable(24) %i.si, i64 24, i1 false), !noalias !1646
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cj), !noalias !1646
  %i.sj = getelementptr inbounds nuw i8, ptr %i.cl, i64 8 ; 2 uses
  %.val.i.i = load ptr, ptr %i.sj, align 8, !noalias !1646, !nonnull !7, !noundef !7 ; 2 uses
  %i.sk = getelementptr inbounds nuw i8, ptr %i.cl, i64 16
  %.val17.i.i = load i64, ptr %i.sk, align 8, !noalias !1646, !noundef !7 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ch), !noalias !1646
  store ptr %i.co, ptr %i.ch, align 8, !noalias !1664
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cg), !noalias !1664
  store ptr %i.ch, ptr %i.cg, align 8, !noalias !1668
  %i.sl = icmp samesign ult i64 %.val17.i.i, 2
  br i1 %i.sl, label %bb.cd, label %bb.bz, !prof !62

bb.bz:                                            ; preds = %bb.by
  %i.sm = icmp samesign ult i64 %.val17.i.i, 21
  br i1 %i.sm, label %bb.cb, label %bb.ca, !prof !62

bb.ca:                                            ; preds = %bb.bz
  invoke void @_RINvNtNtNtCsbvkFyIu7lgC_4core5slice4sort6stable14driftsort_mainNtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client4auth16AuthSchemeOptionNCINvMNtCs6Po7BT7Nknu_5alloc5sliceSBZ_11sort_by_keyRjNCNCNvNtNtNtCs2HJ6gJZ22Qg_18aws_smithy_runtime6client12orchestrator4auth40reprioritize_with_auth_scheme_preference0s0_0E0INtNtB2i_3vec3VecBZ_EEB3d_(ptr noalias noundef nonnull align 8 %.val.i.i, i64 noundef range(i64 0, 288230376151711744) %.val17.i.i, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.cg)
          to label %bb.cd unwind label %bb.cc, !noalias !1649

bb.cb:                                            ; preds = %bb.bz
  invoke void @_RINvNtNtNtNtCsbvkFyIu7lgC_4core5slice4sort6shared9smallsort25insertion_sort_shift_leftNtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client4auth16AuthSchemeOptionNCINvMNtCs6Po7BT7Nknu_5alloc5sliceSB1m_11sort_by_keyRjNCNCNvNtNtNtCs2HJ6gJZ22Qg_18aws_smithy_runtime6client12orchestrator4auth40reprioritize_with_auth_scheme_preference0s0_0E0ECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 %.val.i.i, i64 noundef range(i64 0, 288230376151711744) %.val17.i.i, i64 noundef 1, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.cg)
          to label %bb.cd unwind label %bb.cc, !noalias !1649

bb.cc:                                            ; preds = %bb.cb, %bb.ca
  %i.sn = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client4auth16AuthSchemeOptionEECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef align 8 dereferenceable(24) %i.ck) #24
          to label %bb.ch unwind label %bb.ci, !noalias !1649

bb.cd:                                            ; preds = %bb.cb, %bb.ca, %bb.by
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cg), !noalias !1664
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ch), !noalias !1646
  %.sroa.05.0.copyload.i.i = load i64, ptr %i.ck, align 8, !noalias !1646
  %.sroa.56.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ck, i64 8
  %.sroa.56.0.copyload.i.i = load ptr, ptr %.sroa.56.0..sroa_idx.i.i, align 8, !noalias !1646, !nonnull !7, !noundef !7 ; 3 uses
  %.sroa.67.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ck, i64 16
  %.sroa.67.0.copyload.i.i = load i64, ptr %.sroa.67.0..sroa_idx.i.i, align 8, !noalias !1646 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cf), !noalias !1672
  %i.so = icmp ult i64 %.sroa.67.0.copyload.i.i, 288230376151711744
  call void @llvm.assume(i1 %i.so)
  %i.sp = getelementptr inbounds nuw [32 x i8], ptr %.sroa.56.0.copyload.i.i, i64 %.sroa.67.0.copyload.i.i
  store ptr %.sroa.56.0.copyload.i.i, ptr %i.cf, align 8, !alias.scope !1676, !noalias !1679
end_hunk_3
begin_hunk_4_@_RNCNvNtNtCs2HJ6gJZ22Qg_18aws_smithy_runtime6client12orchestrator11try_attempt0Cs9rVkZwOUgsI_13deltalake_aws:bb.a
bb.kb:                                            ; preds = %bb.ka
  %i.akc = extractvalue { ptr, ptr } %i.akb, 0    ; 2 uses
  %i.akd = extractvalue { ptr, ptr } %i.akb, 1    ; 2 uses
  %i.ake = getelementptr inbounds nuw i8, ptr %i.akd, i64 24
  %i.akf = load ptr, ptr %i.ake, align 8, !invariant.load !7, !noalias !1619, !nonnull !7
  %i.akg = invoke noundef zeroext i1 %i.akf(ptr noundef %i.akc, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.dd)
          to label %bb.kd unwind label %bb.kc, !noalias !1619

bb.kc:                                            ; preds = %bb.kb
  %i.akh = landingpad { ptr, i32 }
          cleanup
  br label %bb.kv

bb.kd:                                            ; preds = %bb.kb
  br i1 %i.akg, label %bb.ke, label %bb.kh

bb.ke:                                            ; preds = %bb.kd
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dc), !noalias !1615
  %i.aki = load ptr, ptr @_RNvNCNvNtNtNtCs2HJ6gJZ22Qg_18aws_smithy_runtime6client12orchestrator4auth16resolve_identity0s0_10___CALLSITE, align 8, !noalias !1615, !nonnull !7, !align !47, !noundef !7
  %i.akj = getelementptr inbounds nuw i8, ptr %i.aki, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.db), !noalias !1615
  call void @llvm.lifetime.start.p0(ptr nonnull %i.da), !noalias !1615
  store ptr @112, ptr %i.da, align 8, !noalias !1615
  %i.akk = getelementptr inbounds nuw i8, ptr %i.da, i64 8
  store ptr inttoptr (i64 35 to ptr), ptr %i.akk, align 8, !noalias !1615
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cz), !noalias !1615
  store ptr %i.dm, ptr %i.cz, align 8, !noalias !1615
  store ptr %i.da, ptr %i.db, align 8, !noalias !1615
  %i.akl = getelementptr inbounds nuw i8, ptr %i.db, i64 8
  store ptr @8, ptr %i.akl, align 8, !noalias !1615
  %i.akm = getelementptr inbounds nuw i8, ptr %i.db, i64 16
  store ptr %i.cz, ptr %i.akm, align 8, !noalias !1615
  %i.akn = getelementptr inbounds nuw i8, ptr %i.db, i64 24
  store ptr @113, ptr %i.akn, align 8, !noalias !1615
  store i64 1, ptr %i.dc, align 8, !alias.scope !1843, !noalias !1846
  %.sroa.4.0..sroa_idx.i209.i = getelementptr inbounds nuw i8, ptr %i.dc, i64 8
  store ptr %i.db, ptr %.sroa.4.0..sroa_idx.i209.i, align 8, !alias.scope !1843, !noalias !1846
  %.sroa.5.0..sroa_idx.i210.i = getelementptr inbounds nuw i8, ptr %i.dc, i64 16
  store i64 2, ptr %.sroa.5.0..sroa_idx.i210.i, align 8, !alias.scope !1843, !noalias !1846
  %i.ako = getelementptr inbounds nuw i8, ptr %i.dc, i64 24
  store ptr %i.akj, ptr %i.ako, align 8, !alias.scope !1843, !noalias !1846
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cq), !noalias !1615
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cq, ptr noundef nonnull align 8 dereferenceable(24) %i.dd, i64 24, i1 false), !noalias !1615
  invoke void @_RNvNtCscTw95cGIolY_7tracing15___macro_support13___tracing_log(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.ajy, ptr noundef nonnull %i.akc, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.akd, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.cq, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.dc)
          to label %bb.kg unwind label %bb.kf, !noalias !1619

bb.kf:                                            ; preds = %bb.ke
  %i.akp = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cz), !noalias !1615
  call void @llvm.lifetime.end.p0(ptr nonnull %i.da), !noalias !1615
  call void @llvm.lifetime.end.p0(ptr nonnull %i.db), !noalias !1615
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dc), !noalias !1615
  br label %bb.kv

bb.kg:                                            ; preds = %bb.ke
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cq), !noalias !1615
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cz), !noalias !1615
  call void @llvm.lifetime.end.p0(ptr nonnull %i.da), !noalias !1615
  call void @llvm.lifetime.end.p0(ptr nonnull %i.db), !noalias !1615
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dc), !noalias !1615
  br label %bb.kh

bb.kh:                                            ; preds = %bb.kk, %bb.kg, %bb.kd, %bb.jy, %bb.jx
  %i.akq = invoke noundef align 8 ptr @_RINvMs5_NtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client8identityNtB6_8Identity8propertyNtNtCs2DiVQAxFeQE_16aws_smithy_types10config_bag11FrozenLayerECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(96) %i.dm)
          to label %bb.km unwind label %bb.kl, !noalias !1619

bb.ki:                                            ; preds = %bb.jw
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dh), !noalias !1615
  %i.akr = load ptr, ptr @_RNvNCNvNtNtNtCs2HJ6gJZ22Qg_18aws_smithy_runtime6client12orchestrator4auth16resolve_identity0s0_10___CALLSITE, align 8, !noalias !1615, !nonnull !7, !align !47, !noundef !7
  %i.aks = getelementptr inbounds nuw i8, ptr %i.akr, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dg), !noalias !1615
  call void @llvm.lifetime.start.p0(ptr nonnull %i.df), !noalias !1615
  store ptr @112, ptr %i.df, align 8, !noalias !1615
  %i.akt = getelementptr inbounds nuw i8, ptr %i.df, i64 8
  store ptr inttoptr (i64 35 to ptr), ptr %i.akt, align 8, !noalias !1615
  call void @llvm.lifetime.start.p0(ptr nonnull %i.de), !noalias !1615
  store ptr %i.dm, ptr %i.de, align 8, !noalias !1615
  store ptr %i.df, ptr %i.dg, align 8, !noalias !1615
  %i.aku = getelementptr inbounds nuw i8, ptr %i.dg, i64 8
  store ptr @8, ptr %i.aku, align 8, !noalias !1615
  %i.akv = getelementptr inbounds nuw i8, ptr %i.dg, i64 16
  store ptr %i.de, ptr %i.akv, align 8, !noalias !1615
  %i.akw = getelementptr inbounds nuw i8, ptr %i.dg, i64 24
  store ptr @113, ptr %i.akw, align 8, !noalias !1615
  store i64 1, ptr %i.dh, align 8, !noalias !1615
  %.sroa.7319.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.dh, i64 8
  store ptr %i.dg, ptr %.sroa.7319.0..sroa_idx.i, align 8, !noalias !1615
  %.sroa.8320.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.dh, i64 16
  store i64 2, ptr %.sroa.8320.0..sroa_idx.i, align 8, !noalias !1615
  %.sroa.9321.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.dh, i64 24
  store ptr %i.aks, ptr %.sroa.9321.0..sroa_idx.i, align 8, !noalias !1615
  invoke fastcc void @_RNCNCNvNtNtNtCs2HJ6gJZ22Qg_18aws_smithy_runtime6client12orchestrator4auth16resolve_identity0s0_0Cs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef align 8 captures(address) dereferenceable(32) %i.dh)
          to label %bb.kk unwind label %bb.kj, !noalias !1619

bb.kj:                                            ; preds = %bb.ki
  %i.akx = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dh), !noalias !1615
  call void @llvm.lifetime.end.p0(ptr nonnull %i.de), !noalias !1615
  call void @llvm.lifetime.end.p0(ptr nonnull %i.df), !noalias !1615
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dg), !noalias !1615
  br label %bb.kv

bb.kk:                                            ; preds = %bb.ki
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dh), !noalias !1615
  call void @llvm.lifetime.end.p0(ptr nonnull %i.de), !noalias !1615
  call void @llvm.lifetime.end.p0(ptr nonnull %i.df), !noalias !1615
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dg), !noalias !1615
  br label %bb.kh

bb.kl:                                            ; preds = %bb.kh
  %i.aky = landingpad { ptr, i32 }
          cleanup
  br label %bb.kv

bb.km:                                            ; preds = %bb.kh
  %i.akz = invoke noundef ptr @_RNvMs1_NtCsbvkFyIu7lgC_4core6optionINtB5_6OptionRNtNtCs2DiVQAxFeQE_16aws_smithy_types10config_bag11FrozenLayerE6clonedCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(8) %i.akq)
          to label %bb.ko unwind label %bb.kn, !noalias !1619 ; 2 uses

bb.kn:                                            ; preds = %bb.km
  %i.ala = landingpad { ptr, i32 }
          cleanup
  br label %bb.kv

bb.ko:                                            ; preds = %bb.km
  %.not73.i = icmp eq ptr %i.akz, null
  br i1 %.not73.i, label %bb.kq, label %bb.kp

bb.kp:                                            ; preds = %bb.ko
  %i.alb = getelementptr inbounds nuw i8, ptr %0, i64 640
  %i.alc = load ptr, ptr %i.alb, align 8, !noalias !1615, !nonnull !7, !align !47, !noundef !7
  %i.ald = invoke noundef nonnull align 8 ptr @_RNvMs8_NtCs2DiVQAxFeQE_16aws_smithy_types10config_bagNtB5_9ConfigBag17push_shared_layer(ptr noalias noundef nonnull align 8 dereferenceable(80) %i.alc, ptr noundef nonnull %i.akz)
          to label %bb.kq unwind label %bb.kr, !noalias !1619 ; 0 uses

bb.kq:                                            ; preds = %bb.kp, %bb.ko
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cy), !noalias !1615
  %i.ale = getelementptr inbounds nuw i8, ptr %0, i64 688
  %i.alf = load ptr, ptr %i.ale, align 8, !noalias !1615, !nonnull !7, !align !47, !noundef !7
  invoke void @_RNvXs0_NtCs6Po7BT7Nknu_5alloc6borrowINtB5_3CoweENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.cy, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.alf)
          to label %_RNvXsr_NtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client4authNtB5_12AuthSchemeIdNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit214.i unwind label %bb.ks, !noalias !1619

bb.kr:                                            ; preds = %bb.kp
  %i.alg = landingpad { ptr, i32 }
          cleanup
  br label %bb.kv

bb.ks:                                            ; preds = %bb.kq
  %i.alh = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cy), !noalias !1615
  br label %bb.kv

_RNvXsr_NtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client4authNtB5_12AuthSchemeIdNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit214.i: ; preds = %bb.kq
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %.sroa.7340.i, ptr noundef nonnull align 8 dereferenceable(96) %i.dm, i64 96, i1 false), !noalias !1615
  %i.ali = getelementptr inbounds nuw i8, ptr %0, i64 880
  store i8 0, ptr %i.ali, align 8, !noalias !1615
  %i.alj = getelementptr inbounds nuw i8, ptr %0, i64 888
  %.sroa.7340.120..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.7340.i, i64 96
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %.sroa.7340.120..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(120) %i.alj, i64 120, i1 false), !noalias !1615
  %.sroa.0337.0.copyload.i = load i64, ptr %i.cy, align 8, !noalias !1615
  %.sroa.5338.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cy, i64 8
  %.sroa.5338.0.copyload.i = load ptr, ptr %.sroa.5338.0..sroa_idx.i, align 8, !noalias !1615
  %.sroa.6339.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cy, i64 16
  %.sroa.6339.0.copyload.i = load ptr, ptr %.sroa.6339.0..sroa_idx.i, align 8, !noalias !1615
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cy), !noalias !1615
  br label %bb.kt

bb.kt:                                            ; preds = %bb.kx, %_RNvXsr_NtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client4authNtB5_12AuthSchemeIdNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit214.i
  %.sroa.0328.3.i = phi i64 [ -9223372036854775807, %bb.kx ], [ %.sroa.0337.0.copyload.i, %_RNvXsr_NtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client4authNtB5_12AuthSchemeIdNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit214.i ]
  %.sroa.7330.3.i = phi ptr [ %.sroa.0306.0.copyload.i, %bb.kx ], [ %.sroa.5338.0.copyload.i, %_RNvXsr_NtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client4authNtB5_12AuthSchemeIdNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit214.i ]
  %.sroa.12333.3.i = phi ptr [ %.sroa.3307.0.copyload.i, %bb.kx ], [ %.sroa.6339.0.copyload.i, %_RNvXsr_NtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client4authNtB5_12AuthSchemeIdNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit214.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dm), !noalias !1615
  %i.alk = getelementptr inbounds nuw i8, ptr %0, i64 1008 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1849)
  call void @llvm.experimental.noalias.scope.decl(metadata !1852)
  call void @llvm.experimental.noalias.scope.decl(metadata !1855)
  %i.all = load ptr, ptr %i.alk, align 8, !alias.scope !1858, !noalias !1615, !nonnull !7, !noundef !7
  %i.alm = atomicrmw sub ptr %i.all, i64 1 release, align 8, !noalias !1859
  %i.aln = icmp eq i64 %i.alm, 1
  br i1 %i.aln, label %bb.ku, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client8identity19SharedIdentityCacheECs9rVkZwOUgsI_13deltalake_aws.exit216.i

bb.ku:                                            ; preds = %bb.kt
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client8identity21ResolveCachedIdentityEL_E9drop_slowBN_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.alk) #26
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client8identity19SharedIdentityCacheECs9rVkZwOUgsI_13deltalake_aws.exit216.i unwind label %bb.ky, !noalias !1619

bb.kv:                                            ; preds = %bb.ks, %bb.kr, %bb.kn, %bb.kl, %bb.kj, %bb.kf, %bb.kc, %bb.jz, %bb.ju, %bb.js
  %.pn76.i = phi { ptr, i32 } [ %i.alh, %bb.ks ], [ %i.ala, %bb.kn ], [ %i.akx, %bb.kj ], [ %i.alg, %bb.kr ], [ %i.aky, %bb.kl ], [ %i.akp, %bb.kf ], [ %i.akh, %bb.kc ], [ %i.ajq, %bb.ju ], [ %i.ajx, %bb.jz ], [ %i.ajo, %bb.js ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client8identity8IdentityECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef align 8 dereferenceable(96) %i.dm) #24
          to label %bb.kw unwind label %bb.bk, !noalias !1619

bb.kw:                                            ; preds = %bb.kv, %bb.hq
  %i.alo = phi ptr [ %i.aes, %bb.hq ], [ %i.aja, %bb.kv ]
  %i.alp = phi ptr [ %i.aet, %bb.hq ], [ %i.ajb, %bb.kv ]
  %.pn78.pn.i = phi { ptr, i32 } [ %.pn78.i, %bb.hq ], [ %.pn76.i, %bb.kv ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dm), !noalias !1615
  br label %bb.hr

bb.kx:                                            ; preds = %bb.jo
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0306.0.copyload.i) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.3307.0.copyload.i) ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dl)
  br label %bb.kt

bb.ky:                                            ; preds = %bb.ku
  %i.alq = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client8identity19SharedIdentityCacheECs9rVkZwOUgsI_13deltalake_aws.exit.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client8identity19SharedIdentityCacheECs9rVkZwOUgsI_13deltalake_aws.exit216.i: ; preds = %bb.ku, %bb.kt
  %i.alr = getelementptr inbounds nuw i8, ptr %0, i64 880 ; 2 uses
  %i.als = load i8, ptr %i.alr, align 8, !range !61, !noalias !1615, !noundef !7
  %i.alt = trunc nuw i8 %i.als to i1
  br i1 %i.alt, label %bb.kz, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs2DiVQAxFeQE_16aws_smithy_types8endpoint8EndpointEECs9rVkZwOUgsI_13deltalake_aws.exit.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs2DiVQAxFeQE_16aws_smithy_types8endpoint8EndpointEECs9rVkZwOUgsI_13deltalake_aws.exit.i: ; preds = %bb.la, %bb.kz, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client8identity19SharedIdentityCacheECs9rVkZwOUgsI_13deltalake_aws.exit216.i
  store i8 0, ptr %i.alr, align 8, !noalias !1615
  br label %bb.jg

bb.kz:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client8identity19SharedIdentityCacheECs9rVkZwOUgsI_13deltalake_aws.exit216.i
  %i.alu = getelementptr inbounds nuw i8, ptr %0, i64 888 ; 2 uses
  %i.alv = load i64, ptr %i.alu, align 8, !range !22, !alias.scope !1860, !noalias !1615, !noundef !7
  %i.alw = icmp eq i64 %i.alv, -9223372036854775807
  br i1 %i.alw, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs2DiVQAxFeQE_16aws_smithy_types8endpoint8EndpointEECs9rVkZwOUgsI_13deltalake_aws.exit.i, label %bb.la

bb.la:                                            ; preds = %bb.kz
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs2DiVQAxFeQE_16aws_smithy_types8endpoint8EndpointECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(120) %i.alu)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs2DiVQAxFeQE_16aws_smithy_types8endpoint8EndpointEECs9rVkZwOUgsI_13deltalake_aws.exit.i unwind label %bb.lb, !noalias !1619

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs2DiVQAxFeQE_16aws_smithy_types8endpoint8EndpointEECs9rVkZwOUgsI_13deltalake_aws.exit228.i: ; preds = %bb.lp, %bb.lo, %bb.lb, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client8identity19SharedIdentityCacheECs9rVkZwOUgsI_13deltalake_aws.exit.i
  %i.alx = phi ptr [ %i.aja, %bb.lb ], [ %i.afa, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client8identity19SharedIdentityCacheECs9rVkZwOUgsI_13deltalake_aws.exit.i ], [ %i.afa, %bb.lp ], [ %i.afa, %bb.lo ]
  %i.aly = phi ptr [ %i.ajb, %bb.lb ], [ %i.afb, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client8identity19SharedIdentityCacheECs9rVkZwOUgsI_13deltalake_aws.exit.i ], [ %i.afb, %bb.lp ], [ %i.afb, %bb.lo ]
  %.pn84.i = phi { ptr, i32 } [ %i.ama, %bb.lb ], [ %.pn82.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client8identity19SharedIdentityCacheECs9rVkZwOUgsI_13deltalake_aws.exit.i ], [ %.pn82.i, %bb.lp ], [ %.pn82.i, %bb.lo ]
  %i.alz = getelementptr inbounds nuw i8, ptr %0, i64 880
  store i8 0, ptr %i.alz, align 8, !noalias !1615
  br label %bb.jf

bb.lb:                                            ; preds = %bb.la
  %i.ama = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs2DiVQAxFeQE_16aws_smithy_types8endpoint8EndpointEECs9rVkZwOUgsI_13deltalake_aws.exit228.i

bb.lc:                                            ; preds = %bb.jg
  %i.amb = getelementptr inbounds nuw i8, ptr %0, i64 881 ; 2 uses
  %i.amc = load i8, ptr %i.amb, align 1, !range !61, !noalias !1615, !noundef !7
  %i.amd = trunc nuw i8 %i.amc to i1
  br i1 %i.amd, label %bb.lf, label %bb.le

bb.ld:                                            ; preds = %bb.le, %bb.jg
  %i.ame = getelementptr inbounds nuw i8, ptr %0, i64 881
  store i8 0, ptr %i.ame, align 1, !noalias !1615
  %i.amf = getelementptr inbounds nuw i8, ptr %0, i64 882 ; 2 uses
  %i.amg = load i8, ptr %i.amf, align 2, !range !61, !noalias !1615, !noundef !7
  %i.amh = trunc nuw i8 %i.amg to i1
  br i1 %i.amh, label %bb.li, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client8identity22SharedIdentityResolverECs9rVkZwOUgsI_13deltalake_aws.exit221.i

bb.le:                                            ; preds = %bb.lg, %bb.lf, %bb.lc
  store i8 0, ptr %i.amb, align 1, !noalias !1615
  br label %bb.ld

bb.lf:                                            ; preds = %bb.lc
  %i.ami = getelementptr inbounds nuw i8, ptr %0, i64 752 ; 2 uses
  %i.amj = load i64, ptr %i.ami, align 8, !range !855, !noalias !1615, !noundef !7 ; 2 uses
  %i.amk = icmp ne i64 %i.amj, -9223372036854775806
  call void @llvm.assume(i1 %i.amk)
  %i.aml = icmp eq i64 %i.amj, -9223372036854775805
  br i1 %i.aml, label %bb.le, label %bb.lg

bb.lg:                                            ; preds = %bb.lf
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2HJ6gJZ22Qg_18aws_smithy_runtime6client12orchestrator4auth22AuthOrchestrationErrorECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef align 8 dereferenceable(24) %i.ami)
          to label %bb.le unwind label %.body173.i, !noalias !1619

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client8identity22SharedIdentityResolverECs9rVkZwOUgsI_13deltalake_aws.exit221.i: ; preds = %bb.lj, %bb.li, %bb.ld
  store i8 0, ptr %i.amf, align 2, !noalias !1615
  %i.amm = getelementptr inbounds nuw i8, ptr %0, i64 616 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1863)
  call void @llvm.experimental.noalias.scope.decl(metadata !1866)
  call void @llvm.experimental.noalias.scope.decl(metadata !1869)
  %i.amn = load ptr, ptr %i.amm, align 8, !alias.scope !1872, !noalias !1615, !nonnull !7, !noundef !7
  %i.amo = atomicrmw sub ptr %i.amn, i64 1 release, align 8, !noalias !1873
  %i.amp = icmp eq i64 %i.amo, 1
  br i1 %i.amp, label %bb.lh, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client4auth16SharedAuthSchemeECs9rVkZwOUgsI_13deltalake_aws.exit219.i

bb.lh:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client8identity22SharedIdentityResolverECs9rVkZwOUgsI_13deltalake_aws.exit221.i
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client4auth10AuthSchemeEL_E9drop_slowBN_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.amm) #26
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client4auth16SharedAuthSchemeECs9rVkZwOUgsI_13deltalake_aws.exit219.i unwind label %.loopexit.split-lp.i, !noalias !1619

bb.li:                                            ; preds = %bb.ld
  %i.amq = getelementptr inbounds nuw i8, ptr %0, i64 720 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1874)
  call void @llvm.experimental.noalias.scope.decl(metadata !1877)
  call void @llvm.experimental.noalias.scope.decl(metadata !1880)
  %i.amr = load ptr, ptr %i.amq, align 8, !alias.scope !1883, !noalias !1615, !nonnull !7, !noundef !7
  %i.ams = atomicrmw sub ptr %i.amr, i64 1 release, align 8, !noalias !1884
  %i.amt = icmp eq i64 %i.ams, 1
  br i1 %i.amt, label %bb.lj, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client8identity22SharedIdentityResolverECs9rVkZwOUgsI_13deltalake_aws.exit221.i

bb.lj:                                            ; preds = %bb.li
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client8identity15ResolveIdentityEL_E9drop_slowBN_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.amq) #26
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client8identity22SharedIdentityResolverECs9rVkZwOUgsI_13deltalake_aws.exit221.i unwind label %bb.ie, !noalias !1619

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client4auth16SharedAuthSchemeECs9rVkZwOUgsI_13deltalake_aws.exit219.i: ; preds = %bb.lh, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client8identity22SharedIdentityResolverECs9rVkZwOUgsI_13deltalake_aws.exit221.i
  %i.amu = getelementptr inbounds nuw i8, ptr %0, i64 312
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2HJ6gJZ22Qg_18aws_smithy_runtime6client12orchestrator4auth12ExploredListECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef align 8 dereferenceable(272) %i.amu)
          to label %bb.lk unwind label %bb.dp, !noalias !1619

bb.lk:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client4auth16SharedAuthSchemeECs9rVkZwOUgsI_13deltalake_aws.exit219.i
  %i.amv = getelementptr inbounds nuw i8, ptr %0, i64 883
  store i8 0, ptr %i.amv, align 1, !noalias !1615
  %i.amw = getelementptr inbounds nuw i8, ptr %0, i64 656 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client4auth16AuthSchemeOptionENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.amw)
          to label %bb.lm unwind label %bb.ll, !noalias !1619

bb.ll:                                            ; preds = %bb.lk
  %i.amx = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client4auth16AuthSchemeOptionENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.amw)
          to label %.body192.i unwind label %bb.ln, !noalias !1619

bb.lm:                                            ; preds = %bb.lk
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client4auth16AuthSchemeOptionENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.amw)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client4auth16AuthSchemeOptionEECs9rVkZwOUgsI_13deltalake_aws.exit226.i unwind label %bb.ik, !noalias !1619

bb.ln:                                            ; preds = %bb.ll
  %i.amy = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #25, !noalias !1619
  unreachable

bb.lo:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client8identity19SharedIdentityCacheECs9rVkZwOUgsI_13deltalake_aws.exit.i
  %i.amz = getelementptr inbounds nuw i8, ptr %0, i64 888 ; 2 uses
  %i.ana = load i64, ptr %i.amz, align 8, !range !22, !alias.scope !1885, !noalias !1615, !noundef !7
  %i.anb = icmp eq i64 %i.ana, -9223372036854775807
  br i1 %i.anb, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs2DiVQAxFeQE_16aws_smithy_types8endpoint8EndpointEECs9rVkZwOUgsI_13deltalake_aws.exit228.i, label %bb.lp

bb.lp:                                            ; preds = %bb.lo
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs2DiVQAxFeQE_16aws_smithy_types8endpoint8EndpointECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(120) %i.amz)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs2DiVQAxFeQE_16aws_smithy_types8endpoint8EndpointEECs9rVkZwOUgsI_13deltalake_aws.exit228.i unwind label %bb.bk, !noalias !1619

bb.lq:                                            ; preds = %bb.jf
  %i.anc = getelementptr inbounds nuw i8, ptr %0, i64 881
  %i.and = load i8, ptr %i.anc, align 1, !range !61, !noalias !1615, !noundef !7
  %i.ane = trunc nuw i8 %i.and to i1
  br i1 %i.ane, label %bb.lr, label %bb.gd

bb.lr:                                            ; preds = %bb.lq
  %i.anf = getelementptr inbounds nuw i8, ptr %0, i64 752 ; 2 uses
  %i.ang = load i64, ptr %i.anf, align 8, !range !855, !noalias !1615, !noundef !7 ; 2 uses
  %i.anh = icmp ne i64 %i.ang, -9223372036854775806
  call void @llvm.assume(i1 %i.anh)
  %i.ani = icmp eq i64 %i.ang, -9223372036854775805
  br i1 %i.ani, label %bb.gd, label %bb.ls

bb.ls:                                            ; preds = %bb.lr
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2HJ6gJZ22Qg_18aws_smithy_runtime6client12orchestrator4auth22AuthOrchestrationErrorECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef align 8 dereferenceable(24) %i.anf) #24
          to label %bb.gd unwind label %bb.bk, !noalias !1619

bb.lt:                                            ; preds = %bb.gd
  %i.anj = getelementptr inbounds nuw i8, ptr %0, i64 720 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1888)
  call void @llvm.experimental.noalias.scope.decl(metadata !1891)
  call void @llvm.experimental.noalias.scope.decl(metadata !1894)
  %i.ank = load ptr, ptr %i.anj, align 8, !alias.scope !1897, !noalias !1615, !nonnull !7, !noundef !7
  %i.anl = atomicrmw sub ptr %i.ank, i64 1 release, align 8, !noalias !1898
  %i.anm = icmp eq i64 %i.anl, 1
  br i1 %i.anm, label %bb.lu, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client8identity22SharedIdentityResolverECs9rVkZwOUgsI_13deltalake_aws.exit230.i

bb.lu:                                            ; preds = %bb.lt
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client8identity15ResolveIdentityEL_E9drop_slowBN_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.anj) #26
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client8identity22SharedIdentityResolverECs9rVkZwOUgsI_13deltalake_aws.exit230.i unwind label %bb.bk, !noalias !1619

bb.lv:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client4auth16SharedAuthSchemeECs9rVkZwOUgsI_13deltalake_aws.exit203.i
  %i.ann = getelementptr inbounds nuw i8, ptr %0, i64 312
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2HJ6gJZ22Qg_18aws_smithy_runtime6client12orchestrator4auth12ExploredListECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef align 8 dereferenceable(272) %i.ann) #24
          to label %bb.do unwind label %bb.bk, !noalias !1619

bb.lw:                                            ; preds = %.body192.i
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client4auth16AuthSchemeOptionEECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef align 8 dereferenceable(24) %i.el) #24
          to label %bb.bn unwind label %bb.bk, !noalias !1619

bb.lx:                                            ; preds = %bb.ba, %bb.az
  %i.ano = landingpad { ptr, i32 }
          cleanup
  br label %.body

.thread1259:                                      ; preds = %bb.be, %bb.cr, %bb.gc, %bb.jl
  %i.anp = phi ptr [ %i.qr, %bb.be ], [ %i.rs, %bb.cr ], [ %i.zn, %bb.gc ], [ %i.aja, %bb.jl ]
  %.sink.i.ph = phi i8 [ 3, %bb.be ], [ 4, %bb.cr ], [ 5, %bb.gc ], [ 6, %bb.jl ]
  store i8 %.sink.i.ph, ptr %i.anp, align 1, !noalias !1615
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7340.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cw)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dd)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5308.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dr)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.11274.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.eb)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7245.i)
  br label %bb.lz

.thread1265:                                      ; preds = %bb.il, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client4auth16AuthSchemeOptionEECs9rVkZwOUgsI_13deltalake_aws.exit.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(216) %.sroa.13, ptr noundef nonnull align 8 dereferenceable(216) %.sroa.7340.i, i64 216, i1 false), !noalias !1899
  store i8 1, ptr %i.vh, align 1, !noalias !1615
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7340.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cw)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dd)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5308.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dr)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.11274.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.eb)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7245.i)
  br label %bb.ma

bb.ly:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client4auth16AuthSchemeOptionEECs9rVkZwOUgsI_13deltalake_aws.exit226.i, %bb.bm
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(216) %.sroa.13, ptr noundef nonnull align 8 dereferenceable(216) %.sroa.7340.i, i64 216, i1 false), !noalias !1899
  store i8 1, ptr %i.rf, align 1, !noalias !1615
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7340.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cw)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dd)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5308.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dr)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.11274.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.eb)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7245.i)
  %i.anq = icmp eq i64 %.sroa.0328.0.i, -9223372036854775806
  br i1 %i.anq, label %bb.lz, label %bb.ma

bb.lz:                                            ; preds = %.thread1259, %bb.ly
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.13)
  br label %common.ret

bb.ma:                                            ; preds = %.thread1265, %bb.ly
  %i.anr = phi ptr [ %i.vi, %.thread1265 ], [ %i.rg, %bb.ly ] ; 2 uses
  %.sroa.12333.1.i1271 = phi ptr [ %i.agm, %.thread1265 ], [ %.sroa.12333.0.i, %bb.ly ] ; 3 uses
  %.sroa.7330.1.i1270 = phi ptr [ %i.agl, %.thread1265 ], [ %.sroa.7330.0.i, %bb.ly ] ; 3 uses
  %.sroa.0328.1.i1269 = phi i64 [ -9223372036854775807, %.thread1265 ], [ %.sroa.0328.0.i, %bb.ly ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(216) %.sroa.7974, ptr noundef nonnull align 8 dereferenceable(216) %.sroa.13, i64 216, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.13)
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvNtNtNtCs2HJ6gJZ22Qg_18aws_smithy_runtime6client12orchestrator4auth16resolve_identity0ECs9rVkZwOUgsI_13deltalake_aws(ptr noundef nonnull align 8 %i.anr)
          to label %bb.mc unwind label %bb.mb

bb.mb:                                            ; preds = %bb.md, %bb.ma
  %i.ans = landingpad { ptr, i32 }
          cleanup
  br label %.body934

bb.mc:                                            ; preds = %bb.ma
  %i.ant = icmp eq i64 %.sroa.0328.1.i1269, -9223372036854775807
  br i1 %i.ant, label %bb.md, label %bb.me

bb.md:                                            ; preds = %bb.mc
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.7330.1.i1270) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.12333.1.i1271) ]
  %2 = getelementptr inbounds nuw i8, ptr %i.mn, i64 8
  invoke void @_RINvMs0_NtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client12orchestratorINtB6_17OrchestratorErrorNtNtNtB8_12interceptors7context5ErrorE5otherINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCsbvkFyIu7lgC_4core5error5ErrorNtNtB2R_6marker4SyncNtB3o_4SendEL_EECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull sret([112 x i8]) align 8 captures(none) dereferenceable(112) %2, ptr noundef nonnull %.sroa.7330.1.i1270, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %.sroa.12333.1.i1271)
          to label %bb.ou unwind label %bb.mb

bb.me:                                            ; preds = %bb.mc
  store i64 %.sroa.0328.1.i1269, ptr %i.mn, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.mn, i64 8
  store ptr %.sroa.7330.1.i1270, ptr %.sroa.3.0..sroa_idx, align 8
  %.sroa.5973.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.mn, i64 16
  store ptr %.sroa.12333.1.i1271, ptr %.sroa.5973.0..sroa_idx, align 8
  %.sroa.7974.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.mn, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(216) %.sroa.7974.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(216) %.sroa.7974, i64 216, i1 false)
  %i.anu = getelementptr inbounds nuw i8, ptr %0, i64 120
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.anu, ptr noundef nonnull align 8 dereferenceable(24) %i.mn, i64 24, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 8 dereferenceable(96) %.sroa.7974, i64 96, i1 false)
  %i.anv = getelementptr inbounds nuw i8, ptr %0, i64 290 ; 2 uses
  store i8 1, ptr %i.anv, align 2
  %i.anw = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  %i.anx = getelementptr inbounds nuw i8, ptr %.sroa.7974, i64 96 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %i.anw, ptr noundef nonnull align 8 dereferenceable(120) %i.anx, i64 120, i1 false)
  %i.any = load i64, ptr %i.anw, align 8, !range !22, !noundef !7
  %.not48 = icmp eq i64 %i.any, -9223372036854775807
  br i1 %.not48, label %bb.mg, label %bb.mf

bb.mf:                                            ; preds = %bb.me
  call void @llvm.lifetime.start.p0(ptr nonnull %i.md)
  store i8 0, ptr %i.anv, align 2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %i.md, ptr noundef nonnull align 8 dereferenceable(120) %i.anx, i64 120, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.mc)
  %i.anz = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.aoa = load ptr, ptr %i.anz, align 8, !nonnull !7, !align !47, !noundef !7
  %i.aob = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.aoc = load ptr, ptr %i.aob, align 8, !nonnull !7, !align !47, !noundef !7
  %i.aod = invoke { ptr, ptr } @_RNvNtNtNtCs2HJ6gJZ22Qg_18aws_smithy_runtime6client12orchestrator9endpoints14apply_endpoint(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.md, ptr noalias noundef nonnull align 8 dereferenceable(1160) %i.aoa, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %i.aoc)
          to label %bb.nj unwind label %bb.ni     ; 2 uses

bb.mg:                                            ; preds = %bb.me
  call void @llvm.lifetime.start.p0(ptr nonnull %i.lr)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.lq)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.lp)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.lo)
  call void @llvm.experimental.noalias.scope.decl(metadata !1900)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bn), !noalias !1903
  %i.aoe = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.aof = load ptr, ptr %i.aoe, align 8, !alias.scope !1900, !noalias !1905, !nonnull !7, !noundef !7 ; 3 uses
  %i.aog = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.aoh = load ptr, ptr %i.aog, align 8, !alias.scope !1900, !noalias !1905, !nonnull !7, !align !47, !noundef !7 ; 2 uses
  %i.aoi = atomicrmw add ptr %i.aof, i64 1 monotonic, align 8, !noalias !1903
  %i.aoj = icmp slt i64 %i.aoi, 0
  br i1 %i.aoj, label %bb.mi, label %bb.mh

bb.mh:                                            ; preds = %bb.mg
  store ptr %i.aof, ptr %i.bn, align 8, !noalias !1903
  %i.aok = getelementptr inbounds nuw i8, ptr %i.bn, i64 8
  store ptr %i.aoh, ptr %i.aok, align 8, !noalias !1903
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bm), !noalias !1903
  %i.aol = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.aom = load ptr, ptr %i.aol, align 8, !alias.scope !1900, !noalias !1905, !nonnull !7, !noundef !7 ; 4 uses
  %i.aon = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.aoo = load ptr, ptr %i.aon, align 8, !alias.scope !1900, !noalias !1905, !nonnull !7, !align !47, !noundef !7 ; 2 uses
  %i.aop = atomicrmw add ptr %i.aom, i64 1 monotonic, align 8, !noalias !1903
  %i.aoq = icmp slt i64 %i.aop, 0
  br i1 %i.aoq, label %bb.mk, label %bb.mj

bb.mi:                                            ; preds = %bb.mg
  call void @llvm.trap()
  unreachable

bb.mj:                                            ; preds = %bb.mh
  store ptr %i.aom, ptr %i.bm, align 8, !noalias !1903
  %i.aor = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  store ptr %i.aoo, ptr %i.aor, align 8, !noalias !1903
  %i.aos = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.aot = load i64, ptr %i.aos, align 8, !alias.scope !1900, !noalias !1905
  %i.aou = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.aov = load i32, ptr %i.aou, align 8, !range !48, !alias.scope !1900, !noalias !1905, !noundef !7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bl), !noalias !1903
  invoke void @_RNvXNtCs3gpiEk3WpjL_9hashbrown3mapINtB2_7HashMapNtNtCsbvkFyIu7lgC_4core3any6TypeIdINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs2DiVQAxFeQE_16aws_smithy_types12type_erasure13TypeErasedBoxENtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateENtNtBO_5clone5Clone5cloneCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.bl, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(96) %0)
          to label %bb.mp unwind label %bb.ml, !noalias !1905

bb.mk:                                            ; preds = %bb.mh
  call void @llvm.trap()
  unreachable

bb.ml:                                            ; preds = %bb.mj
  %i.aow = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.aox = atomicrmw sub ptr %i.aom, i64 1 release, align 8, !noalias !1906
  %i.aoy = icmp eq i64 %i.aox, 1
  br i1 %i.aoy, label %bb.mm, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDG_INtNtNtB4_3ops8function2FnTRL0_IBH_DNtNtB4_3any3AnyNtNtB4_6marker4SyncNtB28_4SendEL_EEEp6OutputRL0_DNtNtB4_3fmt5DebugEL0_B26_B2p_EL_EECs9rVkZwOUgsI_13deltalake_aws.exit.i

bb.mm:                                            ; preds = %bb.ml
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDG_INtNtNtCsbvkFyIu7lgC_4core3ops8function2FnTRL0_IBx_DNtNtBQ_3any3AnyNtNtBQ_6marker4SyncNtB1Q_4SendEL_EEEp6OutputRL0_DNtNtBQ_3fmt5DebugEL0_B1O_B27_EL_E9drop_slowCsVcNsP0WZIc_22aws_smithy_runtime_api(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.bm) #26
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDG_INtNtNtB4_3ops8function2FnTRL0_IBH_DNtNtB4_3any3AnyNtNtB4_6marker4SyncNtB28_4SendEL_EEEp6OutputRL0_DNtNtB4_3fmt5DebugEL0_B26_B2p_EL_EECs9rVkZwOUgsI_13deltalake_aws.exit.i unwind label %bb.mn, !noalias !1905

bb.mn:                                            ; preds = %bb.mo, %bb.mm
  %i.aoz = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #25, !noalias !1905
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDG_INtNtNtB4_3ops8function2FnTRL0_IBH_DNtNtB4_3any3AnyNtNtB4_6marker4SyncNtB28_4SendEL_EEEp6OutputRL0_DNtNtB4_3fmt5DebugEL0_B26_B2p_EL_EECs9rVkZwOUgsI_13deltalake_aws.exit.i: ; preds = %bb.mm, %bb.ml
  call void @llvm.experimental.noalias.scope.decl(metadata !1911)
  call void @llvm.experimental.noalias.scope.decl(metadata !1914)
  %i.apa = load ptr, ptr %i.bn, align 8, !alias.scope !1917, !noalias !1903, !nonnull !7, !noundef !7
  %i.apb = atomicrmw sub ptr %i.apa, i64 1 release, align 8, !noalias !1918
  %i.apc = icmp eq i64 %i.apb, 1
  br i1 %i.apc, label %bb.mo, label %.body646

bb.mo:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDG_INtNtNtB4_3ops8function2FnTRL0_IBH_DNtNtB4_3any3AnyNtNtB4_6marker4SyncNtB28_4SendEL_EEEp6OutputRL0_DNtNtB4_3fmt5DebugEL0_B26_B2p_EL_EECs9rVkZwOUgsI_13deltalake_aws.exit.i
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtNtCsbvkFyIu7lgC_4core3any3AnyNtNtBL_6marker4SyncNtB1e_4SendEL_E9drop_slowCsVcNsP0WZIc_22aws_smithy_runtime_api(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.bn) #26
          to label %.body646 unwind label %bb.mn, !noalias !1905

bb.mp:                                            ; preds = %bb.mj
  %i.apd = getelementptr inbounds nuw i8, ptr %i.lo, i64 184
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.apd, ptr noundef nonnull align 8 dereferenceable(48) %i.bl, i64 48, i1 false), !noalias !7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bl), !noalias !1903
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bm), !noalias !1903
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bn), !noalias !1903
  %i.ape = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.apf = load ptr, ptr %i.ape, align 8, !nonnull !7, !align !47, !noundef !7
  %i.apg = getelementptr inbounds nuw i8, ptr %0, i64 104
  call void @llvm.experimental.noalias.scope.decl(metadata !1919)
  %.sroa.51000.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.lo, i64 232
  store ptr %i.aof, ptr %.sroa.51000.0..sroa_idx, align 8, !alias.scope !1922, !noalias !1924
  %.sroa.61001.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.lo, i64 240
  store ptr %i.aoh, ptr %.sroa.61001.0..sroa_idx, align 8, !alias.scope !1922, !noalias !1924
  %.sroa.71002.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.lo, i64 248
  store ptr %i.aom, ptr %.sroa.71002.0..sroa_idx, align 8, !alias.scope !1922, !noalias !1924
  %.sroa.81003.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.lo, i64 256
  store ptr %i.aoo, ptr %.sroa.81003.0..sroa_idx, align 8, !alias.scope !1922, !noalias !1924
  %.sroa.91004.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.lo, i64 264
  store i64 %i.aot, ptr %.sroa.91004.0..sroa_idx, align 8, !alias.scope !1922, !noalias !1924
  %.sroa.101005.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.lo, i64 272
  store i32 %i.aov, ptr %.sroa.101005.0..sroa_idx, align 8, !alias.scope !1922, !noalias !1924
  %i.aph = getelementptr inbounds nuw i8, ptr %i.lo, i64 160
  store ptr %i.apf, ptr %i.aph, align 8, !alias.scope !1928, !noalias !1929
  %i.api = getelementptr inbounds nuw i8, ptr %i.lo, i64 168
  %i.apj = load <2 x ptr>, ptr %i.apg, align 8
  %i.apk = shufflevector <2 x ptr> %i.apj, <2 x ptr> poison, <2 x i32> <i32 1, i32 0>
  store <2 x ptr> %i.apk, ptr %i.api, align 8, !alias.scope !1928, !noalias !1929
  %i.apl = getelementptr inbounds nuw i8, ptr %i.lo, i64 281
  store i8 0, ptr %i.apl, align 1, !alias.scope !1928, !noalias !1929
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ln)
  %i.apm = load atomic i64, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core8metadata9MAX_LEVEL monotonic, align 8
  %i.apn = icmp ult i64 %i.apm, 2
  br i1 %i.apn, label %bb.mq, label %bb.mz

bb.mq:                                            ; preds = %bb.mp
  %i.apo = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @_RNvNCNvNtNtCs2HJ6gJZ22Qg_18aws_smithy_runtime6client12orchestrator11try_attempt0s1_10___CALLSITE, i64 16) monotonic, align 8 ; 2 uses
  %i.app = icmp ult i8 %i.apo, 3
  br i1 %i.app, label %bb.mt, label %bb.mr, !prof !1044

bb.mr:                                            ; preds = %bb.mq
  %i.apq = invoke noundef i8 @_RNvMNtCs2y6mmZ7bjoM_12tracing_core8callsiteNtB2_15DefaultCallsite8register(ptr noundef nonnull align 8 @_RNvNCNvNtNtCs2HJ6gJZ22Qg_18aws_smithy_runtime6client12orchestrator11try_attempt0s1_10___CALLSITE) #26
          to label %bb.mt unwind label %bb.ms

bb.ms:                                            ; preds = %bb.mr
  %i.apr = landingpad { ptr, i32 }
          cleanup
  br label %bb.nh

bb.mt:                                            ; preds = %bb.mr, %bb.mq
  %.sroa.0.0.i648 = phi i8 [ %i.apo, %bb.mq ], [ %i.apq, %bb.mr ] ; 2 uses
  %i.aps = icmp eq i8 %.sroa.0.0.i648, 0
  br i1 %i.aps, label %bb.mz, label %bb.mu

bb.mu:                                            ; preds = %bb.mt
  %i.apt = load ptr, ptr @_RNvNCNvNtNtCs2HJ6gJZ22Qg_18aws_smithy_runtime6client12orchestrator11try_attempt0s1_10___CALLSITE, align 8, !nonnull !7, !align !47, !noundef !7
  %i.apu = invoke noundef zeroext i1 @_RNvNtCscTw95cGIolY_7tracing15___macro_support12___is_enabled(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.apt, i8 noundef %.sroa.0.0.i648)
          to label %bb.mw unwind label %bb.mv

bb.mv:                                            ; preds = %bb.mu
  %i.apv = landingpad { ptr, i32 }
          cleanup
  br label %bb.nh

bb.mw:                                            ; preds = %bb.mu
  br i1 %i.apu, label %bb.ne, label %bb.mz

bb.mx:                                            ; preds = %bb.nb
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ll)
  br label %bb.nh

bb.my:                                            ; preds = %bb.mz, %bb.nc
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.ln, ptr noundef nonnull align 8 dereferenceable(40) %i.ll, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ll)
  br label %bb.ng

bb.mz:                                            ; preds = %bb.mp, %bb.mw, %bb.mt
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ll)
  %i.apw = load ptr, ptr @_RNvNCNvNtNtCs2HJ6gJZ22Qg_18aws_smithy_runtime6client12orchestrator11try_attempt0s1_10___CALLSITE, align 8, !nonnull !7, !align !47, !noundef !7 ; 2 uses
  store i64 2, ptr %i.ll, align 8, !alias.scope !1930, !noalias !1933
  %i.apx = getelementptr inbounds nuw i8, ptr %i.ll, i64 32
  store ptr %i.apw, ptr %i.apx, align 8, !alias.scope !1930, !noalias !1933
  %i.apy = load atomic i8, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher6EXISTS monotonic, align 1
  %.not1394 = icmp eq i8 %i.apy, 0
  br i1 %.not1394, label %bb.na, label %bb.my

bb.na:                                            ; preds = %bb.mz
  call void @llvm.lifetime.start.p0(ptr nonnull %i.lk)
  %i.apz = getelementptr inbounds nuw i8, ptr %i.apw, i64 48
  store i64 1, ptr %i.lk, align 8, !alias.scope !1935, !noalias !1938
  %.sroa.4.0..sroa_idx.i651 = getelementptr inbounds nuw i8, ptr %i.lk, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.4.0..sroa_idx.i651, align 8, !alias.scope !1935, !noalias !1938
  %.sroa.5.0..sroa_idx.i652 = getelementptr inbounds nuw i8, ptr %i.lk, i64 16
end_hunk_4
begin_hunk_5_@_RNCNvNtNtCs2HJ6gJZ22Qg_18aws_smithy_runtime6client12orchestrator11try_attempt0Cs9rVkZwOUgsI_13deltalake_aws:bb.a
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao), !noalias !1988
  br label %bb.sl

bb.sk:                                            ; preds = %bb.sc
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %i.ap, ptr noundef nonnull readonly align 8 dereferenceable(120) %i.ao, i64 120, i1 false), !alias.scope !2022, !noalias !1988
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao), !noalias !1988
  %i.azt = getelementptr inbounds nuw i8, ptr %0, i64 376
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %i.azt, ptr noundef nonnull align 8 dereferenceable(120) %i.ap, i64 120, i1 false), !noalias !1988
  br label %bb.ss

bb.sl:                                            ; preds = %bb.sx, %bb.st, %bb.sj
  %.pn37.i.i = phi { ptr, i32 } [ %i.bae, %bb.sx ], [ %i.bab, %bb.st ], [ %i.azs, %bb.sj ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap)
  br label %bb.th

bb.sm:                                            ; preds = %bb.th, %bb.sh, %bb.sa, %bb.rx, %bb.ru, %bb.rp, %bb.rn, %bb.rh
  %.pn42.pn.i.i = phi { ptr, i32 } [ %i.ayb, %bb.ru ], [ %.pn37.pn.i.i, %bb.th ], [ %i.azr, %bb.sh ], [ %i.axs, %bb.rn ], [ %i.axk, %bb.rh ], [ %i.ayl, %bb.rx ], [ %i.ayt, %bb.sa ], [ %i.axu, %bb.rp ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2026)
  call void @llvm.experimental.noalias.scope.decl(metadata !2029)
  call void @llvm.experimental.noalias.scope.decl(metadata !2032)
  %i.azu = load ptr, ptr %i.atw, align 8, !alias.scope !2035, !noalias !1988, !nonnull !7, !noundef !7
  %i.azv = atomicrmw sub ptr %i.azu, i64 1 release, align 8, !noalias !2036
  %i.azw = icmp eq i64 %i.azv, 1
  br i1 %i.azw, label %bb.sn, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client8endpoint22SharedEndpointResolverECs9rVkZwOUgsI_13deltalake_aws.exit.i.i675

bb.sn:                                            ; preds = %bb.sm
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client8endpoint15ResolveEndpointEL_E9drop_slowBN_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.atw) #26
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client8endpoint22SharedEndpointResolverECs9rVkZwOUgsI_13deltalake_aws.exit.i.i675 unwind label %bb.tk, !noalias !1992

bb.so:                                            ; preds = %bb.tj, %bb.rj
  %.pn.pn.i.i = phi { ptr, ptr } [ %.pn.i.i, %bb.tj ], [ %i.axj, %bb.rj ]
  %.sroa.5.0.copyload.pn.pn.i.i = phi ptr [ %.sroa.5.0.copyload.pn.i.i, %bb.tj ], [ %i.axm, %bb.rj ]
  call void @llvm.experimental.noalias.scope.decl(metadata !2037)
  call void @llvm.experimental.noalias.scope.decl(metadata !2040)
  call void @llvm.experimental.noalias.scope.decl(metadata !2043)
  %i.azx = load ptr, ptr %i.atw, align 8, !alias.scope !2046, !noalias !1988, !nonnull !7, !noundef !7
  %i.azy = atomicrmw sub ptr %i.azx, i64 1 release, align 8, !noalias !2047
  %i.azz = icmp eq i64 %i.azy, 1
  br i1 %i.azz, label %bb.sp, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client8endpoint22SharedEndpointResolverECs9rVkZwOUgsI_13deltalake_aws.exit93.i.i

bb.sp:                                            ; preds = %bb.so
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client8endpoint15ResolveEndpointEL_E9drop_slowBN_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.atw) #26
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client8endpoint22SharedEndpointResolverECs9rVkZwOUgsI_13deltalake_aws.exit93.i.i unwind label %bb.rf, !noalias !1992

bb.sq:                                            ; preds = %_RNvMNtCscTw95cGIolY_7tracing4spanNtB2_4Span8do_enter.exit.i
  invoke void @_RNvNtNtCsbvkFyIu7lgC_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @129) #28
          to label %.noexc.i682 unwind label %bb.to, !noalias !1987

.noexc.i682:                                      ; preds = %bb.sq
  unreachable

bb.sr:                                            ; preds = %_RNvMNtCscTw95cGIolY_7tracing4spanNtB2_4Span8do_enter.exit.i
  invoke void @_RNvNtNtCsbvkFyIu7lgC_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @129) #28
          to label %.noexc3.i unwind label %bb.to, !noalias !1987

.noexc3.i:                                        ; preds = %bb.sr
  unreachable

bb.ss:                                            ; preds = %bb.sk, %bb.py
  call void @llvm.lifetime.start.p0(ptr nonnull %i.an), !noalias !1988
  %i.baa = getelementptr inbounds nuw i8, ptr %0, i64 376 ; 3 uses
  invoke void @_RNvXs6_NtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client8endpointNtB5_14EndpointFutureNtNtNtCsbvkFyIu7lgC_4core6future6future6Future4poll(ptr noalias noundef nonnull sret([120 x i8]) align 8 captures(address) dereferenceable(120) %i.an, ptr noalias noundef nonnull align 8 dereferenceable(120) %i.baa, ptr noalias noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.su unwind label %bb.st, !noalias !1992

bb.st:                                            ; preds = %bb.ss
  %i.bab = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an), !noalias !1988
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client8endpoint14EndpointFutureECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef align 8 dereferenceable(120) %i.baa) #24
          to label %bb.sl unwind label %bb.tk, !noalias !1992

bb.su:                                            ; preds = %bb.ss
  %i.bac = load i64, ptr %i.an, align 8, !range !798, !noalias !1988, !noundef !7 ; 3 uses
  %i.bad = icmp eq i64 %i.bac, -9223372036854775806
  br i1 %i.bad, label %bb.sv, label %bb.sw

bb.sv:                                            ; preds = %bb.su
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an), !noalias !1988
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bi), !noalias !1988
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq), !noalias !1988
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap)
  br label %bb.tp

bb.sw:                                            ; preds = %bb.su
  %.sroa.3.0..sroa_idx.i.i677 = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %.sroa.3.0.copyload.i.i678 = load ptr, ptr %.sroa.3.0..sroa_idx.i.i677, align 8, !noalias !1988 ; 3 uses
  %.sroa.5.0..sroa_idx.i.i679 = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  %.sroa.5.0.copyload.i.i680 = load ptr, ptr %.sroa.5.0..sroa_idx.i.i679, align 8, !noalias !1988 ; 3 uses
  %.sroa.7125.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.an, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %.sroa.7125.i.i, ptr noundef nonnull align 8 dereferenceable(96) %.sroa.7125.0..sroa_idx.i.i, i64 96, i1 false), !noalias !1988
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an), !noalias !1988
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client8endpoint14EndpointFutureECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef align 8 dereferenceable(120) %i.baa)
          to label %bb.sy unwind label %bb.sx, !noalias !1992

bb.sx:                                            ; preds = %bb.sw
  %i.bae = landingpad { ptr, i32 }
          cleanup
  br label %bb.sl

bb.sy:                                            ; preds = %bb.sw
  %i.baf = icmp eq i64 %i.bac, -9223372036854775807
  br i1 %i.baf, label %bb.tl, label %bb.sz

bb.sz:                                            ; preds = %bb.sy
  %.sroa.6128.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.aq, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %.sroa.6128.0..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(96) %.sroa.7125.i.i, i64 96, i1 false), !noalias !1988
  store i64 %i.bac, ptr %i.aq, align 8, !noalias !1988
  %.sroa.4.0..sroa_idx.i.i681 = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  store ptr %.sroa.3.0.copyload.i.i678, ptr %.sroa.4.0..sroa_idx.i.i681, align 8, !noalias !1988
  %.sroa.5127.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  store ptr %.sroa.5.0.copyload.i.i680, ptr %.sroa.5127.0..sroa_idx.i.i, align 8, !noalias !1988
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap)
  %i.bag = getelementptr inbounds nuw i8, ptr %0, i64 352
  %i.bah = load ptr, ptr %i.bag, align 8, !noalias !1988, !nonnull !7, !align !47, !noundef !7
  %i.bai = getelementptr inbounds nuw i8, ptr %0, i64 360 ; 2 uses
  %i.baj = load ptr, ptr %i.bai, align 8, !noalias !1988, !nonnull !7, !align !47, !noundef !7
  %i.bak = invoke { ptr, ptr } @_RNvNtNtNtCs2HJ6gJZ22Qg_18aws_smithy_runtime6client12orchestrator9endpoints14apply_endpoint(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.aq, ptr noalias noundef nonnull align 8 dereferenceable(1160) %i.bah, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %i.baj)
          to label %bb.tb unwind label %bb.ta, !noalias !1992 ; 3 uses

bb.ta:                                            ; preds = %bb.sz
  %i.bal = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs2DiVQAxFeQE_16aws_smithy_types8endpoint8EndpointECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef align 8 dereferenceable(120) %i.aq) #24
          to label %bb.th unwind label %bb.tk, !noalias !1992

bb.tb:                                            ; preds = %bb.sz
  %i.bam = extractvalue { ptr, ptr } %i.bak, 0
  %.not33.i.i = icmp eq ptr %i.bam, null
  br i1 %.not33.i.i, label %bb.tc, label %bb.tg

bb.tc:                                            ; preds = %bb.tb
  %i.ban = load ptr, ptr %i.bai, align 8, !noalias !1988, !nonnull !7, !align !47, !noundef !7
  %i.bao = getelementptr inbounds nuw i8, ptr %i.ban, i64 24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.am), !noalias !1988
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %i.am, ptr noundef nonnull align 8 dereferenceable(120) %i.aq, i64 120, i1 false), !noalias !1988
  %i.bap = invoke noundef nonnull align 8 ptr @_RINvMs6_NtCs2DiVQAxFeQE_16aws_smithy_types10config_bagNtB6_5Layer9store_putNtNtB8_8endpoint8EndpointECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.bao, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(120) %i.am)
          to label %bb.td unwind label %bb.tf, !noalias !1992 ; 0 uses

bb.td:                                            ; preds = %bb.tc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am), !noalias !1988
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq), !noalias !1988
  call void @llvm.experimental.noalias.scope.decl(metadata !2048)
  call void @llvm.experimental.noalias.scope.decl(metadata !2051)
  call void @llvm.experimental.noalias.scope.decl(metadata !2054)
  %i.baq = load ptr, ptr %i.atw, align 8, !alias.scope !2057, !noalias !1988, !nonnull !7, !noundef !7
  %i.bar = atomicrmw sub ptr %i.baq, i64 1 release, align 8, !noalias !2058
  %i.bas = icmp eq i64 %i.bar, 1
  br i1 %i.bas, label %bb.te, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client8endpoint22SharedEndpointResolverECs9rVkZwOUgsI_13deltalake_aws.exit97.i.i

bb.te:                                            ; preds = %bb.td
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client8endpoint15ResolveEndpointEL_E9drop_slowBN_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.atw) #26
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client8endpoint22SharedEndpointResolverECs9rVkZwOUgsI_13deltalake_aws.exit97.i.i unwind label %bb.rf, !noalias !1992

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client8endpoint22SharedEndpointResolverECs9rVkZwOUgsI_13deltalake_aws.exit97.i.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client8endpoint22SharedEndpointResolverECs9rVkZwOUgsI_13deltalake_aws.exit93.i.i, %bb.te, %bb.td
  %.sroa.010.1.i.i = phi ptr [ %.sroa.010.0.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client8endpoint22SharedEndpointResolverECs9rVkZwOUgsI_13deltalake_aws.exit93.i.i ], [ null, %bb.td ], [ null, %bb.te ]
  %.sroa.5.1.i.i = phi ptr [ %.sroa.5.0.copyload.pn.pn.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client8endpoint22SharedEndpointResolverECs9rVkZwOUgsI_13deltalake_aws.exit93.i.i ], [ undef, %bb.td ], [ undef, %bb.te ]
  %i.bat = getelementptr inbounds nuw i8, ptr %0, i64 616
  store i8 0, ptr %i.bat, align 8, !noalias !1988
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bi), !noalias !1988
  br label %bb.tp

bb.tf:                                            ; preds = %bb.tc
  %i.bau = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am), !noalias !1988
  br label %bb.th

bb.tg:                                            ; preds = %bb.tb
  %i.bav = extractvalue { ptr, ptr } %i.bak, 1    ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bav) ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs2DiVQAxFeQE_16aws_smithy_types8endpoint8EndpointECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef align 8 dereferenceable(120) %i.aq)
          to label %bb.tj unwind label %bb.ti, !noalias !1992

bb.th:                                            ; preds = %bb.ti, %bb.tf, %bb.ta, %bb.sl
  %.pn37.pn.i.i = phi { ptr, i32 } [ %.pn37.i.i, %bb.sl ], [ %i.baw, %bb.ti ], [ %i.bal, %bb.ta ], [ %i.bau, %bb.tf ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq), !noalias !1988
  br label %bb.sm

bb.ti:                                            ; preds = %bb.tg
  %i.baw = landingpad { ptr, i32 }
          cleanup
  br label %bb.th

bb.tj:                                            ; preds = %bb.tl, %bb.tg
  %.pn.i.i = phi { ptr, ptr } [ %i.bay, %bb.tl ], [ %i.bak, %bb.tg ]
  %.sroa.5.0.copyload.pn.i.i = phi ptr [ %.sroa.5.0.copyload.i.i680, %bb.tl ], [ %i.bav, %bb.tg ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq), !noalias !1988
  br label %bb.so

bb.tk:                                            ; preds = %bb.tn, %bb.ta, %bb.st, %bb.sn
  %i.bax = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #25, !noalias !1992
  unreachable

bb.tl:                                            ; preds = %bb.sy
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.3.0.copyload.i.i678) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.0.copyload.i.i680) ]
  %i.bay = insertvalue { ptr, ptr } poison, ptr %.sroa.3.0.copyload.i.i678, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap)
  br label %bb.tj

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client8endpoint22SharedEndpointResolverECs9rVkZwOUgsI_13deltalake_aws.exit93.i.i: ; preds = %bb.sp, %bb.so
  %.sroa.010.0.i.i = extractvalue { ptr, ptr } %.pn.pn.i.i, 0
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client8endpoint22SharedEndpointResolverECs9rVkZwOUgsI_13deltalake_aws.exit97.i.i

bb.tm:                                            ; preds = %bb.tn, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client8endpoint22SharedEndpointResolverECs9rVkZwOUgsI_13deltalake_aws.exit.i.i675
  store i8 0, ptr %i.axe, align 8, !noalias !1988
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bi), !noalias !1988
  store i8 2, ptr %i.aui, align 1, !noalias !1988
  br label %.body.i676

bb.tn:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client8endpoint22SharedEndpointResolverECs9rVkZwOUgsI_13deltalake_aws.exit.i.i675
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client8identity8IdentityECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef align 8 dereferenceable(96) %i.bi) #24
          to label %bb.tm unwind label %bb.tk, !noalias !1992

bb.to:                                            ; preds = %bb.sr, %bb.sq
  %i.baz = landingpad { ptr, i32 }
          cleanup
  br label %.body.i676

.body.i676:                                       ; preds = %bb.to, %bb.tm
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.baz, %bb.to ], [ %.pn47.i.i, %bb.tm ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCscTw95cGIolY_7tracing4span7EnteredECs9rVkZwOUgsI_13deltalake_aws(ptr nonnull align 8 %i.atv) #24
          to label %.body693 unwind label %bb.tt, !noalias !1987

bb.tp:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client8endpoint22SharedEndpointResolverECs9rVkZwOUgsI_13deltalake_aws.exit97.i.i, %bb.sv
  %.sroa.91012.0 = phi ptr [ undef, %bb.sv ], [ %.sroa.5.1.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client8endpoint22SharedEndpointResolverECs9rVkZwOUgsI_13deltalake_aws.exit97.i.i ] ; 2 uses
  %.sroa.71011.0 = phi ptr [ undef, %bb.sv ], [ %.sroa.010.1.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client8endpoint22SharedEndpointResolverECs9rVkZwOUgsI_13deltalake_aws.exit97.i.i ] ; 2 uses
  %.sroa.01010.0 = phi i1 [ true, %bb.sv ], [ false, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client8endpoint22SharedEndpointResolverECs9rVkZwOUgsI_13deltalake_aws.exit97.i.i ]
  %storemerge.i.i = phi i8 [ 3, %bb.sv ], [ 1, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client8endpoint22SharedEndpointResolverECs9rVkZwOUgsI_13deltalake_aws.exit97.i.i ]
  store i8 %storemerge.i.i, ptr %i.aui, align 1, !noalias !1988
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7125.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.av), !noalias !1982
  call void @llvm.lifetime.end.p0(ptr nonnull %i.be), !noalias !1982
  call void @llvm.experimental.noalias.scope.decl(metadata !2059)
  %i.bba = load i64, ptr %i.atv, align 8, !range !23, !alias.scope !2059, !noalias !2062, !noundef !7
  %.not.i.i.i.i = icmp eq i64 %i.bba, 2
  br i1 %.not.i.i.i.i, label %.noexc691, label %bb.tq

bb.tq:                                            ; preds = %bb.tp
  %i.bbb = getelementptr inbounds nuw i8, ptr %0, i64 320
  invoke void @_RNvMs2_NtCs2y6mmZ7bjoM_12tracing_core10dispatcherNtB5_8Dispatch4exit(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.atv, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.bbb)
          to label %.noexc691 unwind label %bb.tu

.noexc691:                                        ; preds = %bb.tq, %bb.tp
  %i.bbc = load atomic i8, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher6EXISTS monotonic, align 1, !noalias !2062
  %i.bbd = icmp eq i8 %i.bbc, 0
  br i1 %i.bbd, label %bb.tr, label %_RNvXs0_NtCscTw95cGIolY_7tracing10instrumentINtB5_12InstrumentedNCNvNtNtNtCs2HJ6gJZ22Qg_18aws_smithy_runtime6client12orchestrator9endpoints20orchestrate_endpoint0ENtNtNtCsbvkFyIu7lgC_4core6future6future6Future4pollCs9rVkZwOUgsI_13deltalake_aws.exit

bb.tr:                                            ; preds = %.noexc691
  %i.bbe = getelementptr inbounds nuw i8, ptr %0, i64 328
  %i.bbf = load ptr, ptr %i.bbe, align 8, !alias.scope !2059, !noalias !2062, !align !47, !noundef !7 ; 3 uses
  %.not4.i.i.i.i = icmp eq ptr %i.bbf, null
  br i1 %.not4.i.i.i.i, label %_RNvXs0_NtCscTw95cGIolY_7tracing10instrumentINtB5_12InstrumentedNCNvNtNtNtCs2HJ6gJZ22Qg_18aws_smithy_runtime6client12orchestrator9endpoints20orchestrate_endpoint0ENtNtNtCsbvkFyIu7lgC_4core6future6future6Future4pollCs9rVkZwOUgsI_13deltalake_aws.exit, label %bb.ts

bb.ts:                                            ; preds = %bb.tr
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai), !noalias !2065
  %i.bbg = getelementptr inbounds nuw i8, ptr %i.bbf, i64 16
  %i.bbh = load ptr, ptr %i.bbg, align 8, !noalias !2066, !nonnull !7, !noundef !7
  %i.bbi = getelementptr inbounds nuw i8, ptr %i.bbf, i64 24
  %i.bbj = load i64, ptr %i.bbi, align 8, !noalias !2066, !noundef !7
  store ptr %i.bbh, ptr %i.ai, align 8, !noalias !2065
  %i.bbk = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  store i64 %i.bbj, ptr %i.bbk, align 8, !noalias !2065
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah), !noalias !2065
  store ptr %i.ai, ptr %i.ah, align 8, !noalias !2065
  %.sroa.43.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  store ptr @_RNvXs1i_NtCsbvkFyIu7lgC_4core3fmtReNtB6_7Display3fmtCs9rVkZwOUgsI_13deltalake_aws, ptr %.sroa.43.0..sroa_idx.i.i.i.i, align 8, !noalias !2065
  invoke fastcc void @_RNvMNtCscTw95cGIolY_7tracing4spanNtB2_4Span3log(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.atv, ptr noalias noundef nonnull readonly captures(address, read_provenance) @135, i64 noundef 21, ptr noundef nonnull @134, ptr noundef nonnull %i.ah) #27
          to label %.noexc692 unwind label %bb.tu

.noexc692:                                        ; preds = %bb.ts
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah), !noalias !2065
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai), !noalias !2065
  br label %_RNvXs0_NtCscTw95cGIolY_7tracing10instrumentINtB5_12InstrumentedNCNvNtNtNtCs2HJ6gJZ22Qg_18aws_smithy_runtime6client12orchestrator9endpoints20orchestrate_endpoint0ENtNtNtCsbvkFyIu7lgC_4core6future6future6Future4pollCs9rVkZwOUgsI_13deltalake_aws.exit

bb.tt:                                            ; preds = %.body.i676
  %i.bbl = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #25, !noalias !1987
  unreachable

bb.tu:                                            ; preds = %bb.px, %bb.ts, %bb.tq, %bb.pv
  %i.bbm = landingpad { ptr, i32 }
          cleanup
  br label %.body693

_RNvXs0_NtCscTw95cGIolY_7tracing10instrumentINtB5_12InstrumentedNCNvNtNtNtCs2HJ6gJZ22Qg_18aws_smithy_runtime6client12orchestrator9endpoints20orchestrate_endpoint0ENtNtNtCsbvkFyIu7lgC_4core6future6future6Future4pollCs9rVkZwOUgsI_13deltalake_aws.exit: ; preds = %.noexc692, %bb.tr, %.noexc691
  br i1 %.sroa.01010.0, label %bb.tv, label %bb.tw

bb.tv:                                            ; preds = %_RNvXs0_NtCscTw95cGIolY_7tracing10instrumentINtB5_12InstrumentedNCNvNtNtNtCs2HJ6gJZ22Qg_18aws_smithy_runtime6client12orchestrator9endpoints20orchestrate_endpoint0ENtNtNtCsbvkFyIu7lgC_4core6future6future6Future4pollCs9rVkZwOUgsI_13deltalake_aws.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.lr)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.lq)
  br label %common.ret

bb.tw:                                            ; preds = %_RNvXs0_NtCscTw95cGIolY_7tracing10instrumentINtB5_12InstrumentedNCNvNtNtNtCs2HJ6gJZ22Qg_18aws_smithy_runtime6client12orchestrator9endpoints20orchestrate_endpoint0ENtNtNtCsbvkFyIu7lgC_4core6future6future6Future4pollCs9rVkZwOUgsI_13deltalake_aws.exit
  invoke void @_RNvXs0_NvNtCscTw95cGIolY_7tracing10instruments_1__INtB7_12InstrumentedNCNvNtNtNtCs2HJ6gJZ22Qg_18aws_smithy_runtime6client12orchestrator9endpoints20orchestrate_endpoint0ENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noundef nonnull align 8 %i.atv)
          to label %bb.ty unwind label %bb.tx

bb.tx:                                            ; preds = %bb.tw
  %i.bbn = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCscTw95cGIolY_7tracing4span4SpanECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.atv) #24
          to label %.body696 unwind label %bb.tz

bb.ty:                                            ; preds = %bb.tw
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCscTw95cGIolY_7tracing4span4SpanECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.atv)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCscTw95cGIolY_7tracing10instrument12InstrumentedNCNvNtNtNtCs2HJ6gJZ22Qg_18aws_smithy_runtime6client12orchestrator9endpoints20orchestrate_endpoint0EECs9rVkZwOUgsI_13deltalake_aws.exit unwind label %bb.ua

bb.tz:                                            ; preds = %bb.tx
  %i.bbo = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #25
  unreachable

bb.ua:                                            ; preds = %bb.ub, %bb.ty
  %i.bbp = landingpad { ptr, i32 }
          cleanup
  br label %.body696

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCscTw95cGIolY_7tracing10instrument12InstrumentedNCNvNtNtNtCs2HJ6gJZ22Qg_18aws_smithy_runtime6client12orchestrator9endpoints20orchestrate_endpoint0EECs9rVkZwOUgsI_13deltalake_aws.exit: ; preds = %bb.ty
  %.not.i698 = icmp eq ptr %.sroa.71011.0, null
  br i1 %.not.i698, label %_RINvMNtCsbvkFyIu7lgC_4core6resultINtB3_6ResultuINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB5_5error5ErrorNtNtB5_6marker4SyncNtB1E_4SendEL_EE7map_errINtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client12orchestrator17OrchestratorErrorNtNtNtB2o_12interceptors7context5ErrorEINvMs0_B2m_B2j_5otherBJ_EECs9rVkZwOUgsI_13deltalake_aws.exit700.thread, label %bb.ub

bb.ub:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCscTw95cGIolY_7tracing10instrument12InstrumentedNCNvNtNtNtCs2HJ6gJZ22Qg_18aws_smithy_runtime6client12orchestrator9endpoints20orchestrate_endpoint0EECs9rVkZwOUgsI_13deltalake_aws.exit
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.91012.0) ]
  invoke void @_RINvMs0_NtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client12orchestratorINtB6_17OrchestratorErrorNtNtNtB8_12interceptors7context5ErrorE5otherINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCsbvkFyIu7lgC_4core5error5ErrorNtNtB2R_6marker4SyncNtB3o_4SendEL_EECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull sret([112 x i8]) align 8 captures(none) dereferenceable(112) %i.lr, ptr noundef nonnull %.sroa.71011.0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %.sroa.91012.0)
          to label %_RINvMNtCsbvkFyIu7lgC_4core6resultINtB3_6ResultuINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB5_5error5ErrorNtNtB5_6marker4SyncNtB1E_4SendEL_EE7map_errINtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client12orchestrator17OrchestratorErrorNtNtNtB2o_12interceptors7context5ErrorEINvMs0_B2m_B2j_5otherBJ_EECs9rVkZwOUgsI_13deltalake_aws.exit700 unwind label %bb.ua

_RINvMNtCsbvkFyIu7lgC_4core6resultINtB3_6ResultuINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB5_5error5ErrorNtNtB5_6marker4SyncNtB1E_4SendEL_EE7map_errINtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client12orchestrator17OrchestratorErrorNtNtNtB2o_12interceptors7context5ErrorEINvMs0_B2m_B2j_5otherBJ_EECs9rVkZwOUgsI_13deltalake_aws.exit700: ; preds = %bb.ub
  %.pr1296 = load i16, ptr %i.lr, align 8
  %.not65 = icmp eq i16 %.pr1296, 11
  br i1 %.not65, label %_RINvMNtCsbvkFyIu7lgC_4core6resultINtB3_6ResultuINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB5_5error5ErrorNtNtB5_6marker4SyncNtB1E_4SendEL_EE7map_errINtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client12orchestrator17OrchestratorErrorNtNtNtB2o_12interceptors7context5ErrorEINvMs0_B2m_B2j_5otherBJ_EECs9rVkZwOUgsI_13deltalake_aws.exit700.thread, label %bb.aeu

_RINvMNtCsbvkFyIu7lgC_4core6resultINtB3_6ResultuINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB5_5error5ErrorNtNtB5_6marker4SyncNtB1E_4SendEL_EE7map_errINtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client12orchestrator17OrchestratorErrorNtNtNtB2o_12interceptors7context5ErrorEINvMs0_B2m_B2j_5otherBJ_EECs9rVkZwOUgsI_13deltalake_aws.exit700.thread: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCscTw95cGIolY_7tracing10instrument12InstrumentedNCNvNtNtNtCs2HJ6gJZ22Qg_18aws_smithy_runtime6client12orchestrator9endpoints20orchestrate_endpoint0EECs9rVkZwOUgsI_13deltalake_aws.exit, %_RINvMNtCsbvkFyIu7lgC_4core6resultINtB3_6ResultuINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB5_5error5ErrorNtNtB5_6marker4SyncNtB1E_4SendEL_EE7map_errINtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client12orchestrator17OrchestratorErrorNtNtNtB2o_12interceptors7context5ErrorEINvMs0_B2m_B2j_5otherBJ_EECs9rVkZwOUgsI_13deltalake_aws.exit700
  call void @llvm.lifetime.end.p0(ptr nonnull %i.lq)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.lr)
  br label %bb.uc

bb.uc:                                            ; preds = %_RINvMNtCsbvkFyIu7lgC_4core6resultINtB3_6ResultuINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB5_5error5ErrorNtNtB5_6marker4SyncNtB1E_4SendEL_EE7map_errINtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client12orchestrator17OrchestratorErrorNtNtNtB2o_12interceptors7context5ErrorEINvMs0_B2m_B2j_5otherBJ_EECs9rVkZwOUgsI_13deltalake_aws.exit700.thread, %bb.nm
  call void @llvm.lifetime.start.p0(ptr nonnull %i.la)
  %i.bbq = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 9 uses
  %i.bbr = load ptr, ptr %i.bbq, align 8, !nonnull !7, !align !47, !noundef !7 ; 3 uses
  %i.bbs = getelementptr i8, ptr %i.bbr, i64 8
  %.val628 = load ptr, ptr %i.bbs, align 8, !nonnull !7, !noundef !7 ; 2 uses
  %i.bbt = getelementptr i8, ptr %i.bbr, i64 16
  %.val629 = load i64, ptr %i.bbt, align 8, !noundef !7
  %i.bbu = getelementptr inbounds nuw [48 x i8], ptr %.val628, i64 %.val629
  %i.bbv = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 15 uses
  %i.bbw = load ptr, ptr %i.bbv, align 8, !nonnull !7, !align !47, !noundef !7
  %i.bbx = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 8 uses
  %i.bby = load ptr, ptr %i.bbx, align 8, !nonnull !7, !align !47, !noundef !7
  invoke void @_RNvMNtNtCs2HJ6gJZ22Qg_18aws_smithy_runtime6client12interceptorsINtB2_12InterceptorsINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtNtB1s_5slice4iter4IterINtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client18runtime_components7TrackedNtNtB2D_12interceptors17SharedInterceptorEENCNvMs1_B2B_NtB2B_17RuntimeComponents12interceptors0EE21modify_before_signingCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.la, ptr noundef nonnull %.val628, ptr noundef nonnull %i.bbu, ptr noalias noundef nonnull align 8 dereferenceable(1160) %i.bbw, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(392) %i.bbr, ptr noalias noundef nonnull align 8 dereferenceable(80) %i.bby)
          to label %bb.ue unwind label %bb.ud

bb.ud:                                            ; preds = %bb.uc
  %i.bbz = landingpad { ptr, i32 }
          cleanup
  br label %bb.aet

bb.ue:                                            ; preds = %bb.uc
  %i.bca = load i64, ptr %i.la, align 8, !range !22, !noundef !7
  %.not79 = icmp eq i64 %i.bca, -9223372036854775807
  br i1 %.not79, label %bb.uf, label %bb.adt

bb.uf:                                            ; preds = %bb.ue
  call void @llvm.lifetime.end.p0(ptr nonnull %i.la)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.kq)
  %i.bcb = load ptr, ptr %i.bbq, align 8, !nonnull !7, !align !47, !noundef !7 ; 3 uses
  %i.bcc = getelementptr i8, ptr %i.bcb, i64 8
  %.val626 = load ptr, ptr %i.bcc, align 8, !nonnull !7, !noundef !7 ; 2 uses
  %i.bcd = getelementptr i8, ptr %i.bcb, i64 16
  %.val627 = load i64, ptr %i.bcd, align 8, !noundef !7
  %i.bce = getelementptr inbounds nuw [48 x i8], ptr %.val626, i64 %.val627
  %i.bcf = load ptr, ptr %i.bbv, align 8, !nonnull !7, !align !47, !noundef !7
  %i.bcg = load ptr, ptr %i.bbx, align 8, !nonnull !7, !align !47, !noundef !7
  invoke void @_RNvMNtNtCs2HJ6gJZ22Qg_18aws_smithy_runtime6client12interceptorsINtB2_12InterceptorsINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtNtB1s_5slice4iter4IterINtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client18runtime_components7TrackedNtNtB2D_12interceptors17SharedInterceptorEENCNvMs1_B2B_NtB2B_17RuntimeComponents12interceptors0EE19read_before_signingCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.kq, ptr noundef nonnull %.val626, ptr noundef nonnull %i.bce, ptr noundef nonnull align 8 %i.bcf, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(392) %i.bcb, ptr noalias noundef nonnull align 8 dereferenceable(80) %i.bcg)
          to label %bb.uh unwind label %bb.ug

bb.ug:                                            ; preds = %bb.uf
  %i.bch = landingpad { ptr, i32 }
          cleanup
  br label %bb.ads

bb.uh:                                            ; preds = %bb.uf
  %i.bci = load i64, ptr %i.kq, align 8, !range !22, !noundef !7
  %.not80 = icmp eq i64 %i.bci, -9223372036854775807
  br i1 %.not80, label %bb.ui, label %bb.acs

bb.ui:                                            ; preds = %bb.uh
  call void @llvm.lifetime.end.p0(ptr nonnull %i.kq)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.kg)
  %i.bcj = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.bck = load ptr, ptr %i.bbv, align 8, !nonnull !7, !align !47, !noundef !7
  %i.bcl = load ptr, ptr %i.bbq, align 8, !nonnull !7, !align !47, !noundef !7
  %i.bcm = load ptr, ptr %i.bbx, align 8, !nonnull !7, !align !47, !noundef !7
  %i.bcn = invoke { ptr, ptr } @_RNvNtNtNtCs2HJ6gJZ22Qg_18aws_smithy_runtime6client12orchestrator4auth12sign_request(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bcj, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(96) %0, ptr noalias noundef nonnull align 8 dereferenceable(1160) %i.bck, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(392) %i.bcl, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %i.bcm)
end_hunk_5
begin_hunk_6_@_RNCNvNtNtCs2HJ6gJZ22Qg_18aws_smithy_runtime6client12orchestrator11try_attempt0Cs9rVkZwOUgsI_13deltalake_aws:bb.a
  store i8 0, ptr %i.cje, align 8, !noalias !2456
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %i.ciq, ptr noundef nonnull align 8 dereferenceable(120) %i.cji, i64 120, i1 false), !noalias !2456
  %.sroa.8.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 896 ; 2 uses
  store i8 0, ptr %.sroa.8.0..sroa_idx.i.i.i.i, align 8, !noalias !2456
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !2456
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.721.i.i.i.i.i)
  br label %bb.apn

bb.apj:                                           ; preds = %.body.i.i.i.i, %bb.aqp, %bb.aqk
  %.pn7.pn.i.i.i.i = phi { ptr, i32 } [ %.pn5.i.i.i.i, %bb.aqp ], [ %i.ckp, %bb.aqk ], [ %.pn3.i.i.i.i, %.body.i.i.i.i ]
  %i.cjo = getelementptr inbounds nuw i8, ptr %0, i64 1040 ; 2 uses
  %i.cjp = load i8, ptr %i.cjo, align 8, !range !61, !noalias !2456, !noundef !7
  %i.cjq = trunc nuw i8 %i.cjp to i1
  br i1 %i.cjq, label %bb.aqv, label %bb.apg

bb.apk:                                           ; preds = %_RNvMNtCscTw95cGIolY_7tracing4spanNtB2_4Span8do_enter.exit.i.i.i
  invoke void @_RNvNtNtCsbvkFyIu7lgC_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @122) #28
          to label %.noexc.i.i.i unwind label %bb.aqw, !noalias !2455

.noexc.i.i.i:                                     ; preds = %bb.apk
  unreachable

bb.apl:                                           ; preds = %_RNvMNtCscTw95cGIolY_7tracing4spanNtB2_4Span8do_enter.exit.i.i.i
  invoke void @_RNvNtNtCsbvkFyIu7lgC_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @122) #28
          to label %.noexc2.i.i.i unwind label %bb.aqw, !noalias !2455

.noexc2.i.i.i:                                    ; preds = %bb.apl
  unreachable

bb.apm:                                           ; preds = %_RNvMNtCscTw95cGIolY_7tracing4spanNtB2_4Span8do_enter.exit.i.i.i
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 896 ; 3 uses
  %.pre.i.i.i.i = load i8, ptr %.phi.trans.insert.i.i.i.i, align 8, !range !53, !noalias !2464
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !2456
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.721.i.i.i.i.i)
  switch i8 %.pre.i.i.i.i, label %default.unreachable1479 [
    i8 0, label %bb.apn
    i8 1, label %bb.apo
    i8 2, label %bb.app
    i8 3, label %bb.apq
  ]

bb.apn:                                           ; preds = %bb.apm, %.thread.i.i.i.i
  %i.cjr = phi ptr [ %.sroa.8.0..sroa_idx.i.i.i.i, %.thread.i.i.i.i ], [ %.phi.trans.insert.i.i.i.i, %bb.apm ]
  %i.cjs = getelementptr inbounds nuw i8, ptr %0, i64 640 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %i.cjs, ptr noundef nonnull align 8 dereferenceable(120) %i.ciq, i64 120, i1 false), !noalias !2464
  %i.cjt = getelementptr inbounds nuw i8, ptr %0, i64 760
  store i64 3, ptr %i.cjt, align 8, !noalias !2464
  %.sroa.9.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 856
  store i64 0, ptr %.sroa.9.0..sroa_idx.i.i.i.i.i, align 8, !noalias !2464
  %.sroa.1017.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 864
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.1017.0..sroa_idx.i.i.i.i.i, align 8, !noalias !2464
  %.sroa.11.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 872
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.11.0..sroa_idx.i.i.i.i.i, i8 0, i64 16, i1 false), !noalias !2464
  %.sroa.1218.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 888
  store ptr %i.cjs, ptr %.sroa.1218.0..sroa_idx.i.i.i.i.i, align 8, !noalias !2464
  br label %bb.apq

.body.i.i.i.i.i:                                  ; preds = %bb.aqb, %bb.apz, %.body.i.i.i.i.i.i.i.i, %bb.apr
  %.pn2.pn.i.i.i.i.i = phi { ptr, i32 } [ %i.ckj, %bb.aqb ], [ %eh.lpad-body.i.i.i.i.i.i.i.i, %.body.i.i.i.i.i.i.i.i ], [ %i.cjx, %bb.apr ], [ %i.ckh, %bb.apz ]
  %i.cju = getelementptr inbounds nuw i8, ptr %0, i64 640
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs2DiVQAxFeQE_16aws_smithy_types4body7SdkBodyECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef align 8 dereferenceable(120) %i.cju) #24
          to label %bb.aqd unwind label %bb.aqg, !noalias !2468

bb.apo:                                           ; preds = %bb.apm
  invoke void @_RNvNtNtCsbvkFyIu7lgC_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @121) #28
          to label %.noexc.i.i.i.i unwind label %bb.aqh, !noalias !2463

.noexc.i.i.i.i:                                   ; preds = %bb.apo
  unreachable

bb.app:                                           ; preds = %bb.apm
  invoke void @_RNvNtNtCsbvkFyIu7lgC_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @121) #28
          to label %.noexc11.i.i.i.i unwind label %bb.aqh, !noalias !2463

.noexc11.i.i.i.i:                                 ; preds = %bb.app
  unreachable

bb.apq:                                           ; preds = %bb.apn, %bb.apm
  %i.cjv = phi ptr [ %.phi.trans.insert.i.i.i.i, %bb.apm ], [ %i.cjr, %bb.apn ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !2464
  %i.cjw = getelementptr inbounds nuw i8, ptr %0, i64 760 ; 5 uses
  invoke void @_RNvXNtNtCs3eCsZ2Mx498_14http_body_util11combinators7collectINtB2_7CollectINtNtCsbvkFyIu7lgC_4core3pin3PinQNtNtCs2DiVQAxFeQE_16aws_smithy_types4body7SdkBodyEENtNtNtB1e_6future6future6Future4pollCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull sret([128 x i8]) align 8 captures(none) dereferenceable(128) %i.n, ptr noalias noundef nonnull align 8 dereferenceable(136) %i.cjw, ptr noalias noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.aps unwind label %bb.apr, !noalias !2468

bb.apr:                                           ; preds = %bb.apq
  %i.cjx = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !2464
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs3eCsZ2Mx498_14http_body_util11combinators7collect7CollectINtNtB4_3pin3PinQNtNtCs2DiVQAxFeQE_16aws_smithy_types4body7SdkBodyEEECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef align 8 dereferenceable(136) %i.cjw) #24
          to label %.body.i.i.i.i.i unwind label %bb.aqg, !noalias !2468

bb.aps:                                           ; preds = %bb.apq
  %i.cjy = load i64, ptr %i.n, align 8, !range !813, !noalias !2464, !noundef !7 ; 3 uses
  %i.cjz = icmp eq i64 %i.cjy, 5                  ; 2 uses
  br i1 %i.cjz, label %bb.aqi, label %bb.apt

bb.apt:                                           ; preds = %bb.aps
  %.sroa.3.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %.sroa.3.0.copyload.i.i.i.i.i = load ptr, ptr %.sroa.3.0..sroa_idx.i.i.i.i.i, align 8, !noalias !2464 ; 3 uses
  %.sroa.520.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %.sroa.520.0.copyload.i.i.i.i.i = load ptr, ptr %.sroa.520.0..sroa_idx.i.i.i.i.i, align 8, !noalias !2464 ; 3 uses
  %.sroa.721.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %.sroa.721.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(104) %.sroa.721.0..sroa_idx.i.i.i.i.i, i64 104, i1 false), !noalias !2464
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !2464
  %i.cka = load i64, ptr %i.cjw, align 8, !range !63, !alias.scope !2469, !noalias !2464, !noundef !7
  %i.ckb = icmp eq i64 %i.cka, 4
  br i1 %i.ckb, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs3eCsZ2Mx498_14http_body_util11combinators7collect7CollectINtNtB4_3pin3PinQNtNtCs2DiVQAxFeQE_16aws_smithy_types4body7SdkBodyEEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i.i.i.i, label %bb.apu

bb.apu:                                           ; preds = %bb.apt
  %i.ckc = getelementptr inbounds nuw i8, ptr %0, i64 856 ; 3 uses
  invoke void @_RNvXs_NtNtCs6Po7BT7Nknu_5alloc11collections9vec_dequeINtB4_8VecDequeNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.ckc)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc11collections9vec_deque8VecDequeNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i.i.i.i.i.i.i.i unwind label %bb.apv, !noalias !2468

bb.apv:                                           ; preds = %bb.apu
  %i.ckd = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.ckc)
          to label %.body.i.i.i.i.i.i.i.i unwind label %bb.apw, !noalias !2468

bb.apw:                                           ; preds = %bb.apv
  %i.cke = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #25, !noalias !2468
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc11collections9vec_deque8VecDequeNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i.i.i.i.i.i.i.i: ; preds = %bb.apu
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.ckc)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs3eCsZ2Mx498_14http_body_util9collected9CollectedNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i.i.i.i.i.i unwind label %bb.apx, !noalias !2468

bb.apx:                                           ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc11collections9vec_deque8VecDequeNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i.i.i.i.i.i.i.i
  %i.ckf = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i.i.i.i.i.i

.body.i.i.i.i.i.i.i.i:                            ; preds = %bb.apx, %bb.apv
  %eh.lpad-body.i.i.i.i.i.i.i.i = phi { ptr, i32 } [ %i.ckf, %bb.apx ], [ %i.ckd, %bb.apv ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs4j34XAPZOn0_4http6header3map9HeaderMapEECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(136) %i.cjw) #24
          to label %.body.i.i.i.i.i unwind label %bb.apy, !noalias !2468

bb.apy:                                           ; preds = %.body.i.i.i.i.i.i.i.i
  %i.ckg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #25, !noalias !2468
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs3eCsZ2Mx498_14http_body_util9collected9CollectedNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i.i.i.i.i.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc11collections9vec_deque8VecDequeNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i.i.i.i.i.i.i.i
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs4j34XAPZOn0_4http6header3map9HeaderMapEECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(136) %i.cjw)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs3eCsZ2Mx498_14http_body_util11combinators7collect7CollectINtNtB4_3pin3PinQNtNtCs2DiVQAxFeQE_16aws_smithy_types4body7SdkBodyEEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i.i.i.i unwind label %bb.apz, !noalias !2468

bb.apz:                                           ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs3eCsZ2Mx498_14http_body_util9collected9CollectedNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i.i.i.i.i.i
  %i.ckh = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i.i.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs3eCsZ2Mx498_14http_body_util11combinators7collect7CollectINtNtB4_3pin3PinQNtNtCs2DiVQAxFeQE_16aws_smithy_types4body7SdkBodyEEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i.i.i.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs3eCsZ2Mx498_14http_body_util9collected9CollectedNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i.i.i.i.i.i, %bb.apt
  %i.cki = icmp eq i64 %i.cjy, 4
  br i1 %i.cki, label %bb.aqf, label %bb.aqa

bb.aqa:                                           ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs3eCsZ2Mx498_14http_body_util11combinators7collect7CollectINtNtB4_3pin3PinQNtNtCs2DiVQAxFeQE_16aws_smithy_types4body7SdkBodyEEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i.i.i.i
  %.sroa.14.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %.sroa.14.0..sroa_idx.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(104) %.sroa.721.i.i.i.i.i, i64 104, i1 false), !noalias !2464
  store i64 %i.cjy, ptr %i.m, align 8, !noalias !2464
  %.sroa.10.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store ptr %.sroa.3.0.copyload.i.i.i.i.i, ptr %.sroa.10.0..sroa_idx.i.i.i.i.i, align 8, !noalias !2464
  %.sroa.12.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  store ptr %.sroa.520.0.copyload.i.i.i.i.i, ptr %.sroa.12.0..sroa_idx.i.i.i.i.i, align 8, !noalias !2464
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !2464
  invoke void @_RNvMNtCs3eCsZ2Mx498_14http_body_util9collectedINtB2_9CollectedNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesE8to_bytesCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.l, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(128) %i.m)
          to label %bb.aqc unwind label %bb.aqb, !noalias !2468

bb.aqb:                                           ; preds = %bb.aqa
  %i.ckj = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !2464
  br label %.body.i.i.i.i.i

bb.aqc:                                           ; preds = %bb.aqa
  %.sroa.022.0.copyload.i.i.i.i.i = load ptr, ptr %i.l, align 8, !noalias !2464
  %.sroa.324.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %.sroa.324.0.copyload.i.i.i.i.i = load ptr, ptr %.sroa.324.0..sroa_idx.i.i.i.i.i, align 8, !noalias !2464
  %.sroa.4.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %.sroa.4.0.copyload.i.i.i.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i, align 8, !noalias !2464
  %.sroa.529.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %.sroa.529.0.copyload.i.i.i.i.i = load i64, ptr %.sroa.529.0..sroa_idx.i.i.i.i.i, align 8, !noalias !2464
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !2464
  %i.ckk = getelementptr inbounds nuw i8, ptr %0, i64 640
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs2DiVQAxFeQE_16aws_smithy_types4body7SdkBodyECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef align 8 dereferenceable(120) %i.ckk)
          to label %bb.aqj unwind label %bb.aqe, !noalias !2468

bb.aqd:                                           ; preds = %bb.aqe, %.body.i.i.i.i.i
  %.pn5.i.i.i.i.i = phi { ptr, i32 } [ %i.ckl, %bb.aqe ], [ %.pn2.pn.i.i.i.i.i, %.body.i.i.i.i.i ]
  store i8 2, ptr %i.cjv, align 8, !noalias !2464
  br label %.body.i.i.i.i

bb.aqe:                                           ; preds = %bb.aqf, %bb.aqc
  %i.ckl = landingpad { ptr, i32 }
          cleanup
  br label %bb.aqd

bb.aqf:                                           ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs3eCsZ2Mx498_14http_body_util11combinators7collect7CollectINtNtB4_3pin3PinQNtNtCs2DiVQAxFeQE_16aws_smithy_types4body7SdkBodyEEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i.i.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.3.0.copyload.i.i.i.i.i) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.520.0.copyload.i.i.i.i.i) ]
  %i.ckm = getelementptr inbounds nuw i8, ptr %0, i64 640
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs2DiVQAxFeQE_16aws_smithy_types4body7SdkBodyECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef align 8 dereferenceable(120) %i.ckm)
          to label %bb.aqj unwind label %bb.aqe, !noalias !2468

bb.aqg:                                           ; preds = %bb.apr, %.body.i.i.i.i.i
  %i.ckn = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #25, !noalias !2468
  unreachable

bb.aqh:                                           ; preds = %bb.app, %bb.apo
  %i.cko = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i.i

bb.aqi:                                           ; preds = %bb.aps
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !2464
  store i8 3, ptr %i.cjv, align 8, !noalias !2464
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !2456
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.721.i.i.i.i.i)
  br label %bb.aqx

bb.aqj:                                           ; preds = %bb.aqf, %bb.aqc
  %.sroa.623.0.ph.i.i.i.i = phi ptr [ %.sroa.022.0.copyload.i.i.i.i.i, %bb.aqc ], [ null, %bb.aqf ] ; 2 uses
  %.sroa.824.0.ph.i.i.i.i = phi ptr [ %.sroa.324.0.copyload.i.i.i.i.i, %bb.aqc ], [ %.sroa.3.0.copyload.i.i.i.i.i, %bb.aqf ] ; 3 uses
  %.sroa.925.0.ph.i.i.i.i = phi ptr [ %.sroa.4.0.copyload.i.i.i.i.i, %bb.aqc ], [ %.sroa.520.0.copyload.i.i.i.i.i, %bb.aqf ] ; 3 uses
  %.sroa.1026.0.ph.i.i.i.i = phi i64 [ %.sroa.529.0.copyload.i.i.i.i.i, %bb.aqc ], [ undef, %bb.aqf ]
  store i8 1, ptr %i.cjv, align 8, !noalias !2464
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !2456
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.721.i.i.i.i.i)
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvNtNtNtCs2HJ6gJZ22Qg_18aws_smithy_runtime6client12orchestrator4http13body_to_bytes0ECs9rVkZwOUgsI_13deltalake_aws(ptr noundef nonnull align 8 %i.ciq)
          to label %bb.aql unwind label %bb.aqk, !noalias !2463

bb.aqk:                                           ; preds = %bb.aqj
  %i.ckp = landingpad { ptr, i32 }
          cleanup
  br label %bb.apj

bb.aql:                                           ; preds = %bb.aqj
  %i.ckq = icmp eq ptr %.sroa.623.0.ph.i.i.i.i, null
  br i1 %i.ckq, label %bb.aqu, label %_RNvXsp_NtCsbvkFyIu7lgC_4core6resultINtB5_6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB7_5error5ErrorNtNtB7_6marker4SyncNtB2f_4SendEL_EENtNtNtB7_3ops9try_trait3Try6branchCs9rVkZwOUgsI_13deltalake_aws.exit.i.i.i.i

_RNvXsp_NtCsbvkFyIu7lgC_4core6resultINtB5_6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB7_5error5ErrorNtNtB7_6marker4SyncNtB2f_4SendEL_EENtNtNtB7_3ops9try_trait3Try6branchCs9rVkZwOUgsI_13deltalake_aws.exit.i.i.i.i: ; preds = %bb.aql
  store ptr %.sroa.623.0.ph.i.i.i.i, ptr %i.p, align 8, !noalias !2456
  %.sroa.10.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store ptr %.sroa.824.0.ph.i.i.i.i, ptr %.sroa.10.0..sroa_idx.i.i.i.i, align 8, !noalias !2456
  %.sroa.12.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  store ptr %.sroa.925.0.ph.i.i.i.i, ptr %.sroa.12.0..sroa_idx.i.i.i.i, align 8, !noalias !2456
  %.sroa.14.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  store i64 %.sroa.1026.0.ph.i.i.i.i, ptr %.sroa.14.0..sroa_idx.i.i.i.i, align 8, !noalias !2456
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !2456
  invoke void @_RNvXs2_NtCs2DiVQAxFeQE_16aws_smithy_types4bodyNtB5_7SdkBodyINtNtCsbvkFyIu7lgC_4core7convert4FromNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesE4from(ptr noalias noundef nonnull sret([120 x i8]) align 8 captures(none) dereferenceable(120) %i.o, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.p)
          to label %bb.aqn unwind label %bb.aqm, !noalias !2463

bb.aqm:                                           ; preds = %_RNvXsp_NtCsbvkFyIu7lgC_4core6resultINtB5_6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB7_5error5ErrorNtNtB7_6marker4SyncNtB2f_4SendEL_EENtNtNtB7_3ops9try_trait3Try6branchCs9rVkZwOUgsI_13deltalake_aws.exit.i.i.i.i
  %i.ckr = landingpad { ptr, i32 }
          cleanup
  br label %bb.aqp

bb.aqn:                                           ; preds = %_RNvXsp_NtCsbvkFyIu7lgC_4core6resultINtB5_6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB7_5error5ErrorNtNtB7_6marker4SyncNtB2f_4SendEL_EENtNtNtB7_3ops9try_trait3Try6branchCs9rVkZwOUgsI_13deltalake_aws.exit.i.i.i.i
  %i.cks = getelementptr inbounds nuw i8, ptr %0, i64 904
  %i.ckt = load ptr, ptr %i.cks, align 8, !noalias !2456, !nonnull !7, !align !47, !noundef !7
  %i.cku = getelementptr inbounds nuw i8, ptr %i.ckt, i64 96
  invoke void @_RINvNvNtCsbvkFyIu7lgC_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECs9rVkZwOUgsI_13deltalake_aws(ptr noundef nonnull align 8 dereferenceable(120) %i.o, ptr noundef nonnull align 8 dereferenceable(120) %i.cku, i64 noundef 15)
          to label %_RINvNtCsbvkFyIu7lgC_4core3mem4swapNtNtCs2DiVQAxFeQE_16aws_smithy_types4body7SdkBodyECs9rVkZwOUgsI_13deltalake_aws.exit12.i.i.i.i unwind label %bb.aqo, !noalias !2463

bb.aqo:                                           ; preds = %bb.aqn
  %i.ckv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking19panic_cannot_unwind() #25, !noalias !2463
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3mem4swapNtNtCs2DiVQAxFeQE_16aws_smithy_types4body7SdkBodyECs9rVkZwOUgsI_13deltalake_aws.exit12.i.i.i.i: ; preds = %bb.aqn
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs2DiVQAxFeQE_16aws_smithy_types4body7SdkBodyECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef align 8 dereferenceable(120) %i.o)
          to label %bb.aqr unwind label %bb.aqq, !noalias !2463

bb.aqp:                                           ; preds = %bb.aqq, %bb.aqm
  %.pn5.i.i.i.i = phi { ptr, i32 } [ %i.ckw, %bb.aqq ], [ %i.ckr, %bb.aqm ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !2456
  br label %bb.apj

bb.aqq:                                           ; preds = %_RINvNtCsbvkFyIu7lgC_4core3mem4swapNtNtCs2DiVQAxFeQE_16aws_smithy_types4body7SdkBodyECs9rVkZwOUgsI_13deltalake_aws.exit12.i.i.i.i
  %i.ckw = landingpad { ptr, i32 }
          cleanup
  br label %bb.aqp

bb.aqr:                                           ; preds = %_RINvNtCsbvkFyIu7lgC_4core3mem4swapNtNtCs2DiVQAxFeQE_16aws_smithy_types4body7SdkBodyECs9rVkZwOUgsI_13deltalake_aws.exit12.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !2456
  br label %bb.aqs

bb.aqs:                                           ; preds = %bb.aqu, %bb.aqr
  %.sroa.3.0.i.i.i.i = phi ptr [ %.sroa.925.0.ph.i.i.i.i, %bb.aqu ], [ undef, %bb.aqr ]
  %.sroa.0.0.i.i.i.i = phi ptr [ %.sroa.824.0.ph.i.i.i.i, %bb.aqu ], [ null, %bb.aqr ]
  %i.ckx = getelementptr inbounds nuw i8, ptr %0, i64 1040
  store i8 0, ptr %i.ckx, align 8, !noalias !2456
  br label %bb.aqx

bb.aqt:                                           ; preds = %bb.aqv, %.body.i.i.i.i
  %i.cky = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #25, !noalias !2463
  unreachable

bb.aqu:                                           ; preds = %bb.aql
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.824.0.ph.i.i.i.i) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.925.0.ph.i.i.i.i) ]
  br label %bb.aqs

.body.i.i.i.i:                                    ; preds = %bb.aqh, %bb.aqd
  %.pn3.i.i.i.i = phi { ptr, i32 } [ %.pn5.i.i.i.i.i, %bb.aqd ], [ %i.cko, %bb.aqh ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvNtNtNtCs2HJ6gJZ22Qg_18aws_smithy_runtime6client12orchestrator4http13body_to_bytes0ECs9rVkZwOUgsI_13deltalake_aws(ptr noundef nonnull align 8 %i.ciq) #24
          to label %bb.apj unwind label %bb.aqt, !noalias !2463

bb.aqv:                                           ; preds = %bb.apj
  %i.ckz = getelementptr inbounds nuw i8, ptr %0, i64 912
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs2DiVQAxFeQE_16aws_smithy_types4body7SdkBodyECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef align 8 dereferenceable(120) %i.ckz) #24
          to label %bb.apg unwind label %bb.aqt, !noalias !2463

bb.aqw:                                           ; preds = %bb.apl, %bb.apk
  %i.cla = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i

.body.i.i.i:                                      ; preds = %bb.aqw, %bb.apg
  %eh.lpad-body.i.i.i = phi { ptr, i32 } [ %i.cla, %bb.aqw ], [ %.pn7.pn.i.i.i.i, %bb.apg ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCscTw95cGIolY_7tracing4span7EnteredECs9rVkZwOUgsI_13deltalake_aws(ptr nonnull align 8 %i.cip) #24
          to label %.body66.i.i unwind label %bb.arb, !noalias !2455

bb.aqx:                                           ; preds = %bb.aqs, %bb.aqi
  %.sroa.6.0.i.i = phi ptr [ undef, %bb.aqi ], [ %.sroa.0.0.i.i.i.i, %bb.aqs ] ; 2 uses
  %.sroa.8.0.i.i = phi ptr [ undef, %bb.aqi ], [ %.sroa.3.0.i.i.i.i, %bb.aqs ] ; 2 uses
  %storemerge.i.i.i.i = phi i8 [ 3, %bb.aqi ], [ 1, %bb.aqs ]
  store i8 %storemerge.i.i.i.i, ptr %i.cjc, align 1, !noalias !2456
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !2450
  call void @llvm.experimental.noalias.scope.decl(metadata !2474)
  %i.clb = load i64, ptr %i.cip, align 8, !range !23, !alias.scope !2474, !noalias !2477, !noundef !7
  %.not.i.i.i.i.i.i = icmp eq i64 %i.clb, 2
  br i1 %.not.i.i.i.i.i.i, label %.noexc64.i.i, label %bb.aqy

bb.aqy:                                           ; preds = %bb.aqx
  %i.clc = getelementptr inbounds nuw i8, ptr %0, i64 504
  invoke void @_RNvMs2_NtCs2y6mmZ7bjoM_12tracing_core10dispatcherNtB5_8Dispatch4exit(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.cip, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.clc)
          to label %.noexc64.i.i unwind label %bb.arc, !noalias !2403

.noexc64.i.i:                                     ; preds = %bb.aqy, %bb.aqx
  %i.cld = load atomic i8, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher6EXISTS monotonic, align 1, !noalias !2477
  %i.cle = icmp eq i8 %i.cld, 0
  br i1 %i.cle, label %bb.aqz, label %_RNvXs0_NtCscTw95cGIolY_7tracing10instrumentINtB5_12InstrumentedNCNvNtNtNtCs2HJ6gJZ22Qg_18aws_smithy_runtime6client12orchestrator4http9read_body0ENtNtNtCsbvkFyIu7lgC_4core6future6future6Future4pollCs9rVkZwOUgsI_13deltalake_aws.exit.i.i

bb.aqz:                                           ; preds = %.noexc64.i.i
  %i.clf = getelementptr inbounds nuw i8, ptr %0, i64 512
  %i.clg = load ptr, ptr %i.clf, align 8, !alias.scope !2474, !noalias !2477, !align !47, !noundef !7 ; 3 uses
  %.not4.i.i.i.i.i.i = icmp eq ptr %i.clg, null
  br i1 %.not4.i.i.i.i.i.i, label %_RNvXs0_NtCscTw95cGIolY_7tracing10instrumentINtB5_12InstrumentedNCNvNtNtNtCs2HJ6gJZ22Qg_18aws_smithy_runtime6client12orchestrator4http9read_body0ENtNtNtCsbvkFyIu7lgC_4core6future6future6Future4pollCs9rVkZwOUgsI_13deltalake_aws.exit.i.i, label %bb.ara

bb.ara:                                           ; preds = %bb.aqz
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !2480
  %i.clh = getelementptr inbounds nuw i8, ptr %i.clg, i64 16
  %i.cli = load ptr, ptr %i.clh, align 8, !noalias !2481, !nonnull !7, !noundef !7
  %i.clj = getelementptr inbounds nuw i8, ptr %i.clg, i64 24
  %i.clk = load i64, ptr %i.clj, align 8, !noalias !2481, !noundef !7
  store ptr %i.cli, ptr %i.k, align 8, !noalias !2480
  %i.cll = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store i64 %i.clk, ptr %i.cll, align 8, !noalias !2480
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !2480
  store ptr %i.k, ptr %i.j, align 8, !noalias !2480
  %.sroa.43.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store ptr @_RNvXs1i_NtCsbvkFyIu7lgC_4core3fmtReNtB6_7Display3fmtCs9rVkZwOUgsI_13deltalake_aws, ptr %.sroa.43.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !2480
  invoke fastcc void @_RNvMNtCscTw95cGIolY_7tracing4spanNtB2_4Span3log(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.cip, ptr noalias noundef nonnull readonly captures(address, read_provenance) @135, i64 noundef 21, ptr noundef nonnull @134, ptr noundef nonnull %i.j) #27
          to label %.noexc65.i.i unwind label %bb.arc

.noexc65.i.i:                                     ; preds = %bb.ara
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !2480
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !2480
  br label %_RNvXs0_NtCscTw95cGIolY_7tracing10instrumentINtB5_12InstrumentedNCNvNtNtNtCs2HJ6gJZ22Qg_18aws_smithy_runtime6client12orchestrator4http9read_body0ENtNtNtCsbvkFyIu7lgC_4core6future6future6Future4pollCs9rVkZwOUgsI_13deltalake_aws.exit.i.i

bb.arb:                                           ; preds = %.body.i.i.i
  %i.clm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #25, !noalias !2455
  unreachable

bb.arc:                                           ; preds = %bb.apf, %bb.ara, %bb.aqy, %bb.apd
  %i.cln = landingpad { ptr, i32 }
          cleanup
  br label %.body66.i.i

_RNvXs0_NtCscTw95cGIolY_7tracing10instrumentINtB5_12InstrumentedNCNvNtNtNtCs2HJ6gJZ22Qg_18aws_smithy_runtime6client12orchestrator4http9read_body0ENtNtNtCsbvkFyIu7lgC_4core6future6future6Future4pollCs9rVkZwOUgsI_13deltalake_aws.exit.i.i: ; preds = %.noexc65.i.i, %bb.aqz, %.noexc64.i.i
  br i1 %i.cjz, label %bb.ard, label %bb.are

bb.ard:                                           ; preds = %_RNvXs0_NtCscTw95cGIolY_7tracing10instrumentINtB5_12InstrumentedNCNvNtNtNtCs2HJ6gJZ22Qg_18aws_smithy_runtime6client12orchestrator4http9read_body0ENtNtNtCsbvkFyIu7lgC_4core6future6future6Future4pollCs9rVkZwOUgsI_13deltalake_aws.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.011.i)
  br label %bb.asd

bb.are:                                           ; preds = %_RNvXs0_NtCscTw95cGIolY_7tracing10instrumentINtB5_12InstrumentedNCNvNtNtNtCs2HJ6gJZ22Qg_18aws_smithy_runtime6client12orchestrator4http9read_body0ENtNtNtCsbvkFyIu7lgC_4core6future6future6Future4pollCs9rVkZwOUgsI_13deltalake_aws.exit.i.i
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCscTw95cGIolY_7tracing10instrument12InstrumentedNCNvNtNtNtCs2HJ6gJZ22Qg_18aws_smithy_runtime6client12orchestrator4http9read_body0EECs9rVkZwOUgsI_13deltalake_aws(ptr noundef nonnull align 8 %i.cip)
          to label %bb.arg unwind label %bb.arf, !noalias !2403

bb.arf:                                           ; preds = %bb.are
  %i.clo = landingpad { ptr, i32 }
          cleanup
  br label %.body78.i.i

bb.arg:                                           ; preds = %bb.are
  %.not.i68.i.i = icmp eq ptr %.sroa.6.0.i.i, null
  br i1 %.not.i68.i.i, label %bb.ari, label %bb.arh

bb.arh:                                           ; preds = %bb.arg
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.8.0.i.i) ]
  call void @llvm.experimental.noalias.scope.decl(metadata !2482)
  call void @llvm.experimental.noalias.scope.decl(metadata !2485)
  store i16 9, ptr %i.y, align 8, !alias.scope !2487, !noalias !2488
  %.sroa.984.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  store ptr %.sroa.6.0.i.i, ptr %.sroa.984.0..sroa_idx.i.i, align 8, !alias.scope !2487, !noalias !2488
  %.sroa.10.0..sroa_idx.i.i900 = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  store ptr %.sroa.8.0.i.i, ptr %.sroa.10.0..sroa_idx.i.i900, align 8, !alias.scope !2487, !noalias !2488
  br label %_RINvMNtCsbvkFyIu7lgC_4core6resultINtB3_6ResultuINtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client12orchestrator17OrchestratorErrorNtNtNtBO_12interceptors7context5ErrorEE8and_thenNtB27_6OutputNCNCNCNvNtNtCs2HJ6gJZ22Qg_18aws_smithy_runtime6client12orchestrator11try_attempt000ECs9rVkZwOUgsI_13deltalake_aws.exit.i.i

bb.ari:                                           ; preds = %bb.arg
  %i.clp = getelementptr inbounds nuw i8, ptr %0, i64 352
  %i.clq = load ptr, ptr %i.clp, align 8, !noalias !2396, !nonnull !7, !align !47, !noundef !7 ; 2 uses
  %i.clr = getelementptr inbounds nuw i8, ptr %0, i64 344
  %i.cls = load ptr, ptr %i.clr, align 8, !noalias !2396, !nonnull !7, !align !47, !noundef !7
  %i.clt = getelementptr inbounds nuw i8, ptr %0, i64 360
  %i.clu = load ptr, ptr %i.clt, align 8, !noalias !2396, !nonnull !7, !align !47, !noundef !7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !2490
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !2490
  %i.clv = load atomic i64, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core8metadata9MAX_LEVEL monotonic, align 8, !noalias !2490
  %i.clw = icmp ult i64 %i.clv, 2
  br i1 %i.clw, label %bb.arj, label %bb.arp

bb.arj:                                           ; preds = %bb.ari
  %i.clx = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @_RNvNCNCNCNvNtNtCs2HJ6gJZ22Qg_18aws_smithy_runtime6client12orchestrator11try_attempt00010___CALLSITE, i64 16) monotonic, align 8, !noalias !2490 ; 3 uses
  switch i8 %i.clx, label %bb.ark [
    i8 0, label %bb.arp
    i8 1, label %bb.arl
    i8 2, label %bb.arl
  ], !prof !2494

bb.ark:                                           ; preds = %bb.arj
  %i.cly = invoke noundef i8 @_RNvMNtCs2y6mmZ7bjoM_12tracing_core8callsiteNtB2_15DefaultCallsite8register(ptr noundef nonnull align 8 @_RNvNCNCNCNvNtNtCs2HJ6gJZ22Qg_18aws_smithy_runtime6client12orchestrator11try_attempt00010___CALLSITE) #26
          to label %.noexc75.i.i905 unwind label %bb.asb, !noalias !2403 ; 2 uses

.noexc75.i.i905:                                  ; preds = %bb.ark
  %.not.i.i74.i.i = icmp eq i8 %i.cly, 0
  br i1 %.not.i.i74.i.i, label %bb.arp, label %bb.arl

bb.arl:                                           ; preds = %bb.arj, %.noexc75.i.i905, %bb.arj
  %.sroa.05.0.i.i.i.i = phi i8 [ %i.cly, %.noexc75.i.i905 ], [ %i.clx, %bb.arj ], [ %i.clx, %bb.arj ]
  %i.clz = load ptr, ptr @_RNvNCNCNCNvNtNtCs2HJ6gJZ22Qg_18aws_smithy_runtime6client12orchestrator11try_attempt00010___CALLSITE, align 8, !noalias !2490, !nonnull !7, !align !47, !noundef !7
  %i.cma = invoke noundef zeroext i1 @_RNvNtCscTw95cGIolY_7tracing15___macro_support12___is_enabled(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.clz, i8 noundef %.sroa.05.0.i.i.i.i)
          to label %.noexc76.i.i903 unwind label %bb.asb, !noalias !2403

.noexc76.i.i903:                                  ; preds = %bb.arl
  br i1 %i.cma, label %bb.arm, label %bb.arp

bb.arm:                                           ; preds = %.noexc76.i.i903
  %i.cmb = load ptr, ptr @_RNvNCNCNCNvNtNtCs2HJ6gJZ22Qg_18aws_smithy_runtime6client12orchestrator11try_attempt00010___CALLSITE, align 8, !noalias !2490, !nonnull !7, !align !47, !noundef !7 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !2490
  %i.cmc = getelementptr inbounds nuw i8, ptr %i.cmb, i64 48
  store i64 1, ptr %i.g, align 8, !noalias !2490
  %.sroa.4.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !noalias !2490
  %.sroa.5.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store i64 0, ptr %.sroa.5.0..sroa_idx.i.i.i.i, align 8, !noalias !2490
  %i.cmd = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  store ptr %i.cmc, ptr %i.cmd, align 8, !noalias !2490
  invoke void @_RNvMNtCscTw95cGIolY_7tracing4spanNtB2_4Span3new(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.h, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.cmb, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.g)
          to label %.noexc77.i.i904 unwind label %bb.asb, !noalias !2403

.noexc77.i.i904:                                  ; preds = %bb.arm
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !2490
  br label %bb.ars

bb.arn:                                           ; preds = %bb.arr, %bb.arp
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.h, ptr noundef nonnull align 8 dereferenceable(40) %i.f, i64 40, i1 false), !noalias !2490
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !2490
  br label %bb.ars

bb.aro:                                           ; preds = %bb.arq
  %i.cme = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCscTw95cGIolY_7tracing4span4SpanECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef align 8 dereferenceable(40) %i.f) #24
          to label %.body78.i.i unwind label %bb.ary, !noalias !2495

bb.arp:                                           ; preds = %.noexc76.i.i903, %.noexc75.i.i905, %bb.arj, %bb.ari
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !2490
  %i.cmf = load ptr, ptr @_RNvNCNCNCNvNtNtCs2HJ6gJZ22Qg_18aws_smithy_runtime6client12orchestrator11try_attempt00010___CALLSITE, align 8, !noalias !2490, !nonnull !7, !align !47, !noundef !7 ; 2 uses
  store i64 2, ptr %i.f, align 8, !noalias !2490
  %i.cmg = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  store ptr %i.cmf, ptr %i.cmg, align 8, !noalias !2490
  %i.cmh = load atomic i8, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher6EXISTS monotonic, align 1, !noalias !2490
  %i.cmi = icmp eq i8 %i.cmh, 0
  br i1 %i.cmi, label %bb.arq, label %bb.arn

bb.arq:                                           ; preds = %bb.arp
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !2490
  %i.cmj = getelementptr inbounds nuw i8, ptr %i.cmf, i64 48
  store i64 1, ptr %i.e, align 8, !noalias !2490
  %.sroa.412.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.412.0..sroa_idx.i.i.i.i, align 8, !noalias !2490
  %.sroa.513.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store i64 0, ptr %.sroa.513.0..sroa_idx.i.i.i.i, align 8, !noalias !2490
  %i.cmk = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store ptr %i.cmj, ptr %i.cmk, align 8, !noalias !2490
  %i.cml = invoke noundef nonnull align 8 ptr @_RNvMNtCscTw95cGIolY_7tracing4spanNtB2_4Span10record_all(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.f, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.e)
end_hunk_6
