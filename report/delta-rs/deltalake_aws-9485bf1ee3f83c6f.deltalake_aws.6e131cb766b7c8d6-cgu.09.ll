inline.NumInlined: 1606
inline.NumDeleted: 619
begin_hunk_0_@_RINvYINtNtCsbvkFyIu7lgC_4core4hash18BuildHasherDefaultNtNtNtCs2DiVQAxFeQE_16aws_smithy_types10config_bag10typeid_map8IdHasherENtB6_11BuildHasher8hash_oneRNtNtB8_3any6TypeIdECs9rVkZwOUgsI_13deltalake_aws:bb.a
  %.val.i = load i64, ptr %i.a, align 8, !noalias !3912
  ret i64 %.val.i
}

; Function Attrs: cold inlinehint noreturn nonlazybind uwtable
define internal fastcc void @_RNCINvMs0_CsbpcW0ghvIYZ_8fastrandNtB8_3Rng3u32INtNtNtCsbvkFyIu7lgC_4core3ops5range5RangemEE0Cs9rVkZwOUgsI_13deltalake_aws(ptr %.0.val) unnamed_addr #4 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 6 uses
  %i.b = alloca [16 x i8], align 8                ; 4 uses
  %i.c = alloca [16 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  store i64 0, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %.0.val, ptr %i.d, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.e = getelementptr inbounds nuw i8, ptr %.0.val, i64 4
  store i64 1, ptr %i.b, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.e, ptr %i.f, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.c, ptr %i.a, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs1c_NtNtCsbvkFyIu7lgC_4core3ops5rangeINtB6_5BoundRmENtNtBa_3fmt5Debug3fmtCs9rVkZwOUgsI_13deltalake_aws, ptr %.sroa.42.0..sroa_idx, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.b, ptr %i.g, align 8
  %.sroa.46.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr @_RNvXs1c_NtNtCsbvkFyIu7lgC_4core3ops5rangeINtB6_5BoundRmENtNtBa_3fmt5Debug3fmtCs9rVkZwOUgsI_13deltalake_aws, ptr %.sroa.46.0..sroa_idx, align 8
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking9panic_fmt(ptr noundef nonnull @34, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @36) #33
  unreachable
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNCNCNCNvYDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_NtNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage9retry_ext19ObjectStoreRetryExt19delete_with_retries00s1_0Cs9rVkZwOUgsI_13deltalake_aws(ptr noalias nofree noundef nonnull readonly align 8 captures(address) dead_on_return dereferenceable(32) %0) unnamed_addr #5 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = load ptr, ptr @_RNvNCNCNvNtNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage9retry_ext19ObjectStoreRetryExt19delete_with_retries00s1_10___CALLSITE, align 8, !nonnull !7, !align !154, !noundef !7
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
  %.not = icmp eq i64 %i.e, 0
  br i1 %.not, label %bb.b, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = load ptr, ptr @_RNvNCNCNvNtNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage9retry_ext19ObjectStoreRetryExt19delete_with_retries00s1_10___CALLSITE, align 8, !nonnull !7, !align !154, !noundef !7 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %i.i = load ptr, ptr %i.h, align 8, !nonnull !7, !noundef !7
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  %i.k = load i64, ptr %i.j, align 8, !noundef !7
  store i64 1, ptr %i.a, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.i, ptr %.sroa.3.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %i.k, ptr %.sroa.5.0..sroa_idx, align 8
  %i.l = tail call { ptr, ptr } @_RNvCsaljjC7ZTCQu_3log6logger() ; 2 uses
  %i.m = extractvalue { ptr, ptr } %i.l, 0        ; 2 uses
  %i.n = extractvalue { ptr, ptr } %i.l, 1        ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %i.p = load ptr, ptr %i.o, align 8, !invariant.load !7, !nonnull !7
  %i.q = call noundef zeroext i1 %i.p(ptr noundef %i.m, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.a) #35
  br i1 %i.q, label %bb.e, label %bb.b

bb.e:                                             ; preds = %bb.d
  call void @_RNvNtCscTw95cGIolY_7tracing15___macro_support13___tracing_log(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.g, ptr noundef nonnull %i.m, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.n, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %0)
  br label %bb.b
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNCNCNCNvYDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_NtNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage9retry_ext19ObjectStoreRetryExt19delete_with_retries00s_0Cs9rVkZwOUgsI_13deltalake_aws(ptr noalias nofree noundef nonnull readonly align 8 captures(address) dead_on_return dereferenceable(32) %0) unnamed_addr #5 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = load ptr, ptr @_RNvNCNCNvNtNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage9retry_ext19ObjectStoreRetryExt19delete_with_retries00s_10___CALLSITE, align 8, !nonnull !7, !align !154, !noundef !7
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
  %i.g = icmp samesign ugt i64 %i.e, 1
  br i1 %i.g, label %bb.d, label %bb.b

bb.d:                                             ; preds = %bb.c
  %i.h = load ptr, ptr @_RNvNCNCNvNtNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage9retry_ext19ObjectStoreRetryExt19delete_with_retries00s_10___CALLSITE, align 8, !nonnull !7, !align !154, !noundef !7 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %i.j = load ptr, ptr %i.i, align 8, !nonnull !7, !noundef !7
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 40
  %i.l = load i64, ptr %i.k, align 8, !noundef !7
  store i64 2, ptr %i.a, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.j, ptr %.sroa.3.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %i.l, ptr %.sroa.5.0..sroa_idx, align 8
  %i.m = tail call { ptr, ptr } @_RNvCsaljjC7ZTCQu_3log6logger() ; 2 uses
  %i.n = extractvalue { ptr, ptr } %i.m, 0        ; 2 uses
  %i.o = extractvalue { ptr, ptr } %i.m, 1        ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %i.q = load ptr, ptr %i.p, align 8, !invariant.load !7, !nonnull !7
  %i.r = call noundef zeroext i1 %i.q(ptr noundef %i.n, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.a) #35
  br i1 %i.r, label %bb.e, label %bb.b

bb.e:                                             ; preds = %bb.d
  call void @_RNvNtCscTw95cGIolY_7tracing15___macro_support13___tracing_log(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.h, ptr noundef nonnull %i.n, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.o, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %0)
  br label %bb.b
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNCNvYDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_NtNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage9retry_ext19ObjectStoreRetryExt19delete_with_retries0Cs9rVkZwOUgsI_13deltalake_aws(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([72 x i8]) align 8 captures(none) dereferenceable(72) %0, ptr noundef nonnull align 8 %1, ptr noalias noundef align 8 dereferenceable(32) %2) unnamed_addr #5 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = alloca [24 x i8], align 8                ; 7 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %.sroa.416.i = alloca [64 x i8], align 8        ; 8 uses
  %i.d = alloca [8 x i8], align 8                 ; 5 uses
  %i.e = alloca [16 x i8], align 8                ; 6 uses
  %i.f = alloca [48 x i8], align 8                ; 10 uses
  %i.g = alloca [32 x i8], align 8                ; 8 uses
  %i.h = alloca [24 x i8], align 8                ; 9 uses
  %i.i = alloca [8 x i8], align 8                 ; 5 uses
  %i.j = alloca [16 x i8], align 8                ; 6 uses
  %i.k = alloca [48 x i8], align 8                ; 10 uses
  %i.l = alloca [32 x i8], align 8                ; 8 uses
  %i.m = alloca [72 x i8], align 8                ; 9 uses
  %i.n = alloca [48 x i8], align 8                ; 10 uses
  %i.o = alloca [16 x i8], align 8                ; 6 uses
  %i.p = alloca [16 x i8], align 8                ; 6 uses
  %i.q = alloca [32 x i8], align 8                ; 8 uses
  %i.r = alloca [24 x i8], align 8                ; 9 uses
  %i.s = alloca [48 x i8], align 8                ; 10 uses
  %i.t = alloca [16 x i8], align 8                ; 6 uses
  %i.u = alloca [16 x i8], align 8                ; 6 uses
  %i.v = alloca [32 x i8], align 8                ; 9 uses
  %i.w = alloca [16 x i8], align 16               ; 9 uses
  %i.x = alloca [16 x i8], align 8                ; 7 uses
  %i.y = alloca [8 x i8], align 8                 ; 5 uses
  %i.z = alloca [16 x i8], align 8                ; 6 uses
  %i.aa = alloca [48 x i8], align 8               ; 10 uses
  %i.ab = alloca [32 x i8], align 8               ; 8 uses
  %i.ac = alloca [24 x i8], align 8               ; 9 uses
  %i.ad = alloca [8 x i8], align 8                ; 5 uses
  %i.ae = alloca [16 x i8], align 8               ; 6 uses
  %i.af = alloca [48 x i8], align 8               ; 10 uses
  %i.ag = alloca [32 x i8], align 8               ; 8 uses
  %i.ah = alloca [72 x i8], align 8               ; 9 uses
  %i.ai = alloca [16 x i8], align 8               ; 6 uses
  %i.aj = alloca [32 x i8], align 8               ; 8 uses
  %i.ak = alloca [32 x i8], align 8               ; 8 uses
  %i.al = alloca [24 x i8], align 8               ; 9 uses
  %i.am = alloca [16 x i8], align 8               ; 6 uses
  %i.an = alloca [32 x i8], align 8               ; 8 uses
  %i.ao = alloca [32 x i8], align 8               ; 9 uses
  %i.ap = alloca [72 x i8], align 8               ; 7 uses
  %i.aq = alloca [72 x i8], align 8               ; 20 uses
  %.sroa.3 = alloca [64 x i8], align 8            ; 3 uses
  %.sroa.8 = alloca [64 x i8], align 8            ; 7 uses
  %i.ar = alloca [88 x i8], align 16              ; 7 uses
  %i.as = alloca [72 x i8], align 8               ; 7 uses
  %i.at = alloca [128 x i8], align 8              ; 3 uses
  %i.au = alloca [8 x i8], align 8                ; 5 uses
  %i.av = alloca [8 x i8], align 8                ; 5 uses
  %i.aw = alloca [48 x i8], align 8               ; 10 uses
  %i.ax = alloca [32 x i8], align 8               ; 8 uses
  %i.ay = alloca [40 x i8], align 8               ; 8 uses
  %i.az = alloca [8 x i8], align 8                ; 5 uses
  %i.ba = alloca [8 x i8], align 8                ; 5 uses
  %i.bb = alloca [48 x i8], align 8               ; 10 uses
  %i.bc = alloca [32 x i8], align 8               ; 8 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 74 ; 3 uses
  %i.be = load i8, ptr %i.bd, align 2, !range !1201, !noundef !7
  switch i8 %i.be, label %default.unreachable68 [
    i8 0, label %bb.b
    i8 1, label %bb.x
    i8 2, label %bb.y
    i8 3, label %bb.z
    i8 4, label %bb.ai
  ]

default.unreachable68:                            ; preds = %bb.ai, %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 4 uses
  store i8 0, ptr %i.bf, align 8
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 73 ; 3 uses
  store i8 0, ptr %i.bg, align 1
  %i.bh = load atomic i64, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core8metadata9MAX_LEVEL monotonic, align 8
  %i.bi = icmp samesign ult i64 %i.bh, 3
  br i1 %i.bi, label %bb.c, label %bb.l

bb.c:                                             ; preds = %bb.b
  %i.bj = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @_RNvNCNvNtNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage9retry_ext19ObjectStoreRetryExt19delete_with_retries010___CALLSITE, i64 16) monotonic, align 8 ; 2 uses
  %i.bk = icmp ult i8 %i.bj, 3
  br i1 %i.bk, label %bb.f, label %bb.d, !prof !3915

bb.d:                                             ; preds = %bb.c
  %i.bl = invoke noundef i8 @_RNvMNtCs2y6mmZ7bjoM_12tracing_core8callsiteNtB2_15DefaultCallsite8register(ptr noundef nonnull align 8 @_RNvNCNvNtNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage9retry_ext19ObjectStoreRetryExt19delete_with_retries010___CALLSITE) #31
          to label %bb.f unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.bm = landingpad { ptr, i32 }
          cleanup
  br label %bb.w

bb.f:                                             ; preds = %bb.d, %bb.c
  %.sroa.0.0.i = phi i8 [ %i.bj, %bb.c ], [ %i.bl, %bb.d ] ; 2 uses
  %i.bn = icmp eq i8 %.sroa.0.0.i, 0
  br i1 %i.bn, label %bb.l, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bo = load ptr, ptr @_RNvNCNvNtNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage9retry_ext19ObjectStoreRetryExt19delete_with_retries010___CALLSITE, align 8, !nonnull !7, !align !154, !noundef !7
  %i.bp = invoke noundef zeroext i1 @_RNvNtCscTw95cGIolY_7tracing15___macro_support12___is_enabled(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.bo, i8 noundef %.sroa.0.0.i)
          to label %bb.i unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bq = landingpad { ptr, i32 }
          cleanup
  br label %bb.w

bb.i:                                             ; preds = %bb.g
  br i1 %i.bp, label %bb.q, label %bb.l

bb.j:                                             ; preds = %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ay)
  br label %bb.w

bb.k:                                             ; preds = %bb.l, %bb.o
  store i8 1, ptr %i.bf, align 8
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.br, ptr noundef nonnull align 8 dereferenceable(40) %i.ay, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ay)
  br label %bb.t

bb.l:                                             ; preds = %bb.b, %bb.i, %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ay)
  %i.bs = load ptr, ptr @_RNvNCNvNtNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage9retry_ext19ObjectStoreRetryExt19delete_with_retries010___CALLSITE, align 8, !nonnull !7, !align !154, !noundef !7 ; 2 uses
  store i64 2, ptr %i.ay, align 8, !alias.scope !3916, !noalias !3919
  %i.bt = getelementptr inbounds nuw i8, ptr %i.ay, i64 32
  store ptr %i.bs, ptr %i.bt, align 8, !alias.scope !3916, !noalias !3919
  %i.bu = load atomic i8, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher6EXISTS monotonic, align 1
  %.not = icmp eq i8 %i.bu, 0
  br i1 %.not, label %bb.m, label %bb.k

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ax)
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bs, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aw)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.av)
  %i.bw = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  store ptr %i.bw, ptr %i.av, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.au)
  %i.bx = getelementptr inbounds nuw i8, ptr %1, i64 16
  store ptr %i.bw, ptr %i.au, align 8
  store ptr %i.av, ptr %i.aw, align 8
  %i.by = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  store ptr @64, ptr %i.by, align 8
  %i.bz = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  store ptr %i.bx, ptr %i.bz, align 8
  %i.ca = getelementptr inbounds nuw i8, ptr %i.aw, i64 24
  store ptr @57, ptr %i.ca, align 8
  %i.cb = getelementptr inbounds nuw i8, ptr %i.aw, i64 32
  store ptr %i.au, ptr %i.cb, align 8
  %i.cc = getelementptr inbounds nuw i8, ptr %i.aw, i64 40
  store ptr @65, ptr %i.cc, align 8
  store i64 1, ptr %i.ax, align 8, !alias.scope !3921, !noalias !3924
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  store ptr %i.aw, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !3921, !noalias !3924
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  store i64 3, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !3921, !noalias !3924
  %i.cd = getelementptr inbounds nuw i8, ptr %i.ax, i64 24
  store ptr %i.bv, ptr %i.cd, align 8, !alias.scope !3921, !noalias !3924
  %i.ce = invoke noundef nonnull align 8 ptr @_RNvMNtCscTw95cGIolY_7tracing4spanNtB2_4Span10record_all(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.ay, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.ax)
          to label %bb.o unwind label %bb.n       ; 0 uses

bb.n:                                             ; preds = %bb.m
  %i.cf = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.au)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.av)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aw)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ax)
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCscTw95cGIolY_7tracing4span4SpanECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef align 8 dereferenceable(40) %i.ay) #30
          to label %bb.j unwind label %bb.p

bb.o:                                             ; preds = %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.au)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.av)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aw)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ax)
  br label %bb.k

bb.p:                                             ; preds = %bb.ga, %bb.fz, %.body35, %bb.aa, %bb.n
  %i.cg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #32
  unreachable

bb.q:                                             ; preds = %bb.i
  %i.ch = load ptr, ptr @_RNvNCNvNtNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage9retry_ext19ObjectStoreRetryExt19delete_with_retries010___CALLSITE, align 8, !nonnull !7, !align !154, !noundef !7 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bc)
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bb)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ba)
  %i.cj = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  store ptr %i.cj, ptr %i.ba, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.az)
  %i.ck = getelementptr inbounds nuw i8, ptr %1, i64 16
  store ptr %i.cj, ptr %i.az, align 8
  store ptr %i.ba, ptr %i.bb, align 8
  %i.cl = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  store ptr @64, ptr %i.cl, align 8
  %i.cm = getelementptr inbounds nuw i8, ptr %i.bb, i64 16
  store ptr %i.ck, ptr %i.cm, align 8
  %i.cn = getelementptr inbounds nuw i8, ptr %i.bb, i64 24
  store ptr @57, ptr %i.cn, align 8
  %i.co = getelementptr inbounds nuw i8, ptr %i.bb, i64 32
  store ptr %i.az, ptr %i.co, align 8
  %i.cp = getelementptr inbounds nuw i8, ptr %i.bb, i64 40
  store ptr @65, ptr %i.cp, align 8
  store i64 1, ptr %i.bc, align 8, !alias.scope !3927, !noalias !3930
  %.sroa.4.0..sroa_idx.i28 = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  store ptr %i.bb, ptr %.sroa.4.0..sroa_idx.i28, align 8, !alias.scope !3927, !noalias !3930
  %.sroa.5.0..sroa_idx.i29 = getelementptr inbounds nuw i8, ptr %i.bc, i64 16
  store i64 3, ptr %.sroa.5.0..sroa_idx.i29, align 8, !alias.scope !3927, !noalias !3930
  %i.cq = getelementptr inbounds nuw i8, ptr %i.bc, i64 24
  store ptr %i.ci, ptr %i.cq, align 8, !alias.scope !3927, !noalias !3930
  %i.cr = getelementptr inbounds nuw i8, ptr %1, i64 24
  invoke void @_RNvMNtCscTw95cGIolY_7tracing4spanNtB2_4Span3new(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.cr, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.ch, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.bc)
          to label %bb.s unwind label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.cs = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.az)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ba)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bb)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bc)
  br label %bb.w

bb.s:                                             ; preds = %bb.q
  store i8 1, ptr %i.bf, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.az)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ba)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bb)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bc)
  br label %bb.t

bb.t:                                             ; preds = %bb.k, %bb.s
  store i8 1, ptr %i.bg, align 1
  %i.ct = load <2 x ptr>, ptr %1, align 8
  store <2 x ptr> %i.ct, ptr %i.ar, align 16
  %i.cu = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.cv = load i64, ptr %i.cu, align 8, !noundef !7
  %i.cw = getelementptr inbounds nuw i8, ptr %i.ar, i64 24
  store i64 %i.cv, ptr %i.cw, align 8
  %i.cx = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.cy = load ptr, ptr %i.cx, align 8, !nonnull !7, !align !154, !noundef !7
  %i.cz = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  store ptr %i.cy, ptr %i.cz, align 16
  %i.da = getelementptr inbounds nuw i8, ptr %i.ar, i64 80
  store i8 0, ptr %i.da, align 16
  %i.db = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %.val26 = load i64, ptr %i.db, align 8, !range !6, !noundef !7
  %.not.i27 = icmp eq i64 %.val26, 2
  store i8 0, ptr %i.bg, align 1
  br i1 %.not.i27, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.dc = getelementptr inbounds nuw i8, ptr %i.at, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.dc, ptr noundef nonnull align 16 dereferenceable(88) %i.ar, i64 88, i1 false)
  store i8 0, ptr %i.bf, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.at, ptr noundef nonnull align 8 dereferenceable(40) %i.db, i64 40, i1 false)
  %i.dd = getelementptr inbounds nuw i8, ptr %1, i64 80
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %i.dd, ptr noundef nonnull align 8 dereferenceable(128) %i.at, i64 128, i1 false)
  br label %bb.z

bb.v:                                             ; preds = %bb.t
  %i.de = getelementptr inbounds nuw i8, ptr %1, i64 80
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.de, ptr noundef nonnull align 16 dereferenceable(88) %i.ar, i64 88, i1 false)
  br label %bb.ai

.body:                                            ; preds = %.body35, %bb.aa, %bb.ae, %bb.ah
  %.pn19.pn = phi { ptr, i32 } [ %i.dp, %bb.ah ], [ %i.dn, %bb.ae ], [ %i.dk, %bb.aa ], [ %.pn17, %.body35 ] ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %1, i64 73 ; 2 uses
  %i.dg = load i8, ptr %i.df, align 1, !range !235, !noundef !7
  %i.dh = trunc nuw i8 %i.dg to i1
  br i1 %i.dh, label %bb.fz, label %bb.fy

end_hunk_0
begin_hunk_1_@_RNCNvYDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_NtNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage9retry_ext19ObjectStoreRetryExt19delete_with_retries0Cs9rVkZwOUgsI_13deltalake_aws:bb.a
  br label %common.ret

bb.ad:                                            ; preds = %bb.ab
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.3, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.3.0..sroa_idx, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as)
  invoke void @_RNvXs0_NvNtCscTw95cGIolY_7tracing10instruments_1__INtB7_12InstrumentedNCNCNvYDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_NtNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage9retry_ext19ObjectStoreRetryExt19delete_with_retries00ENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noundef nonnull align 8 %i.dj)
          to label %bb.af unwind label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.dn = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCscTw95cGIolY_7tracing4span4SpanECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.dj) #30
          to label %.body unwind label %bb.ag

bb.af:                                            ; preds = %bb.ad
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCscTw95cGIolY_7tracing4span4SpanECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.dj)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCscTw95cGIolY_7tracing10instrument12InstrumentedNCNCNvYDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_NtNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage9retry_ext19ObjectStoreRetryExt19delete_with_retries00EECs9rVkZwOUgsI_13deltalake_aws.exit unwind label %bb.ah

bb.ag:                                            ; preds = %bb.ae
  %i.do = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #32
  unreachable

bb.ah:                                            ; preds = %bb.af
  %i.dp = landingpad { ptr, i32 }
          cleanup
  br label %.body

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCscTw95cGIolY_7tracing10instrument12InstrumentedNCNCNvYDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_NtNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage9retry_ext19ObjectStoreRetryExt19delete_with_retries00EECs9rVkZwOUgsI_13deltalake_aws.exit: ; preds = %bb.af, %bb.fu
  %.sroa.044.0 = phi i64 [ %.sroa.013.0245.i51, %bb.fu ], [ %i.dl, %bb.af ]
  %i.dq = getelementptr inbounds nuw i8, ptr %1, i64 73
  store i8 0, ptr %i.dq, align 1
  %i.dr = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  %i.ds = load i8, ptr %i.dr, align 8, !range !235, !noundef !7
  %i.dt = trunc nuw i8 %i.ds to i1
  br i1 %i.dt, label %bb.fw, label %bb.fv

bb.ai:                                            ; preds = %bb.a, %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8)
  %i.du = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.416.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.al)
  %i.dv = getelementptr inbounds nuw i8, ptr %1, i64 160 ; 5 uses
  %i.dw = load i8, ptr %i.dv, align 8, !range !593, !noalias !3933, !noundef !7
  switch i8 %i.dw, label %default.unreachable68 [
    i8 0, label %bb.aj
    i8 1, label %bb.am
    i8 2, label %bb.an
    i8 3, label %bb.ak
  ]

bb.aj:                                            ; preds = %bb.ai
  %i.dx = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.dy = load <2 x ptr>, ptr %i.du, align 8, !noalias !3933
  store <2 x ptr> %i.dy, ptr %i.dx, align 8, !noalias !3933
  %i.dz = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.ea = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.eb = load i64, ptr %i.ea, align 8, !noalias !3933, !noundef !7 ; 2 uses
  store i64 %i.eb, ptr %i.dz, align 8, !noalias !3933
  %i.ec = getelementptr inbounds nuw i8, ptr %1, i64 136
  store i64 1, ptr %i.ec, align 8, !noalias !3933
  br label %bb.al

bb.ak:                                            ; preds = %bb.ai
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aq), !noalias !3933
  br label %bb.ap

bb.al:                                            ; preds = %bb.dg, %bb.aj
  %i.ed = phi i64 [ %.pre259.i, %bb.dg ], [ %i.eb, %bb.aj ]
  %i.ee = phi i64 [ %.pre.i, %bb.dg ], [ 1, %bb.aj ]
  %.not.i31 = icmp ugt i64 %i.ee, %i.ed
  br i1 %.not.i31, label %bb.dk, label %bb.di

bb.am:                                            ; preds = %bb.ai
  invoke void @_RNvNtNtCsbvkFyIu7lgC_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @54) #33
          to label %.noexc33 unwind label %bb.fr

.noexc33:                                         ; preds = %bb.am
  unreachable

bb.an:                                            ; preds = %bb.ai
  invoke void @_RNvNtNtCsbvkFyIu7lgC_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @54) #33
          to label %.noexc34 unwind label %bb.fr

.noexc34:                                         ; preds = %bb.an
  unreachable

bb.ao:                                            ; preds = %bb.ap
  %i.ef = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap), !noalias !3933
  %.val100.i = load ptr, ptr %i.eh, align 8, !noalias !3933
  %i.eg = getelementptr i8, ptr %1, i64 152
  %.val101.i = load ptr, ptr %i.eg, align 8, !noalias !3933, !nonnull !7, !align !154, !noundef !7
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultuNtCsjyY8HP3IvQ6_12object_store5ErrorENtNtB4_6marker4SendEL_EEECs9rVkZwOUgsI_13deltalake_aws(ptr %.val100.i, ptr nonnull %.val101.i) #30
          to label %.body.i unwind label %bb.dq, !noalias !3937

bb.ap:                                            ; preds = %bb.do, %bb.ak
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ap), !noalias !3933
  %i.eh = getelementptr inbounds nuw i8, ptr %1, i64 144 ; 3 uses
  invoke void @_RNvXs_NtNtCsbvkFyIu7lgC_4core6future6futureINtNtB8_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtB4_6Futurep6OutputINtNtB8_6result6ResultuNtCsjyY8HP3IvQ6_12object_store5ErrorENtNtB8_6marker4SendEL_EEB1v_4pollCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(address) dereferenceable(72) %i.ap, ptr noalias noundef nonnull align 8 dereferenceable(16) %i.eh, ptr noalias noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.aq unwind label %bb.ao, !noalias !3937

bb.aq:                                            ; preds = %bb.ap
  %i.ei = load i64, ptr %i.ap, align 8, !range !2472, !noalias !3933, !noundef !7
  %i.ej = icmp eq i64 %i.ei, -9223372036854775789
  br i1 %i.ej, label %.thread, label %bb.ar

.thread:                                          ; preds = %bb.aq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap), !noalias !3933
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq), !noalias !3933
  store i8 3, ptr %i.dv, align 8, !noalias !3933
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.416.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al)
  br label %bb.ft

bb.ar:                                            ; preds = %bb.aq
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.aq, ptr noundef nonnull align 8 dereferenceable(72) %i.ap, i64 72, i1 false), !noalias !3933
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap), !noalias !3933
  %.val98.i = load ptr, ptr %i.eh, align 8, !noalias !3933 ; 5 uses
  %i.ek = getelementptr i8, ptr %1, i64 152
  %.val99.i = load ptr, ptr %i.ek, align 8, !noalias !3933, !nonnull !7, !align !154, !noundef !7 ; 5 uses
  %i.el = load ptr, ptr %.val99.i, align 8, !invariant.load !7, !noalias !3937 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.el, null
  br i1 %.not.i.i.i, label %bb.at, label %bb.as

bb.as:                                            ; preds = %bb.ar
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val98.i) ]
  invoke void %i.el(ptr noundef nonnull %.val98.i)
          to label %bb.at unwind label %bb.av, !noalias !3937

bb.at:                                            ; preds = %bb.as, %bb.ar
  %i.em = getelementptr inbounds nuw i8, ptr %.val99.i, i64 8
  %i.en = load i64, ptr %i.em, align 8, !range !450, !invariant.load !7, !noalias !3937 ; 2 uses
  %i.eo = icmp eq i64 %i.en, 0
  br i1 %i.eo, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultuNtCsjyY8HP3IvQ6_12object_store5ErrorENtNtB4_6marker4SendEL_EEECs9rVkZwOUgsI_13deltalake_aws.exit.i, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.ep = getelementptr inbounds nuw i8, ptr %.val99.i, i64 16
  %i.eq = load i64, ptr %i.ep, align 8, !range !589, !invariant.load !7, !noalias !3937
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val98.i) ]
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val98.i, i64 noundef range(i64 1, 0) %i.en, i64 noundef range(i64 1, 536870913) %i.eq) #22, !noalias !3937
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultuNtCsjyY8HP3IvQ6_12object_store5ErrorENtNtB4_6marker4SendEL_EEECs9rVkZwOUgsI_13deltalake_aws.exit.i

bb.av:                                            ; preds = %bb.as
  %i.er = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.es = getelementptr inbounds nuw i8, ptr %.val99.i, i64 8
  %i.et = load i64, ptr %i.es, align 8, !range !450, !invariant.load !7, !noalias !3937 ; 2 uses
  %i.eu = icmp eq i64 %i.et, 0
  br i1 %i.eu, label %.body.i, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.ev = getelementptr inbounds nuw i8, ptr %.val99.i, i64 16
  %i.ew = load i64, ptr %i.ev, align 8, !range !589, !invariant.load !7, !noalias !3937
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val98.i, i64 noundef range(i64 1, 0) %i.et, i64 noundef range(i64 1, 536870913) %i.ew) #22, !noalias !3937
  br label %.body.i

.body.i:                                          ; preds = %bb.fq, %bb.fp, %bb.fo, %bb.eo, %bb.dn, %bb.bz, %bb.ax, %bb.aw, %bb.av, %bb.ao
  %.pn74.i = phi { ptr, i32 } [ %i.lf, %bb.dn ], [ %.pn70.pn.pn.i, %bb.fp ], [ %.pn70.pn.pn.i, %bb.fq ], [ %.pn70.pn.pn.i, %bb.bz ], [ %i.ef, %bb.ao ], [ %i.ex, %bb.ax ], [ %i.er, %bb.aw ], [ %i.er, %bb.av ], [ %.pn60.pn.pn.i, %bb.fo ], [ %.pn31.pn.pn.i, %bb.eo ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq), !noalias !3933
  br label %bb.dm

bb.ax:                                            ; preds = %bb.fm, %bb.dh
  %i.ex = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultuNtCsjyY8HP3IvQ6_12object_store5ErrorENtNtB4_6marker4SendEL_EEECs9rVkZwOUgsI_13deltalake_aws.exit.i: ; preds = %bb.au, %bb.at
  %i.ey = load i64, ptr %i.aq, align 8, !range !594, !noalias !3933, !noundef !7 ; 4 uses
  %.not24.i = icmp eq i64 %i.ey, -9223372036854775790
  br i1 %.not24.i, label %bb.ba, label %bb.ay

bb.ay:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultuNtCsjyY8HP3IvQ6_12object_store5ErrorENtNtB4_6marker4SendEL_EEECs9rVkZwOUgsI_13deltalake_aws.exit.i
  %i.ez = icmp ne i64 %i.ey, -9223372036854775800
  call void @llvm.assume(i1 %i.ez)
  %i.fa = add nsw i64 %i.ey, 9223372036854775802
  %i.fb = icmp ugt i64 %i.ey, -9223372036854775803
  %i.fc = select i1 %i.fb, i64 %i.fa, i64 2       ; 2 uses
  %i.fd = icmp eq i64 %i.fc, 1
  br i1 %i.fd, label %bb.ba, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.fe = getelementptr inbounds nuw i8, ptr %1, i64 136 ; 10 uses
  %i.ff = load i64, ptr %i.fe, align 8, !noalias !3933, !noundef !7
  %i.fg = getelementptr inbounds nuw i8, ptr %1, i64 128 ; 2 uses
  %i.fh = load i64, ptr %i.fg, align 8, !noalias !3933, !noundef !7
  %i.fi = icmp eq i64 %i.ff, %i.fh
  br i1 %i.fi, label %bb.ep, label %bb.ca

bb.ba:                                            ; preds = %bb.ay, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultuNtCsjyY8HP3IvQ6_12object_store5ErrorENtNtB4_6marker4SendEL_EEECs9rVkZwOUgsI_13deltalake_aws.exit.i
  %i.fj = load atomic i64, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core8metadata9MAX_LEVEL monotonic, align 8, !noalias !3933
  %i.fk = icmp samesign ult i64 %i.fj, 2
  br i1 %i.fk, label %bb.bb, label %bb.bi

bb.bb:                                            ; preds = %bb.ba
  %i.fl = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @_RNvNCNCNvNtNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage9retry_ext19ObjectStoreRetryExt19delete_with_retries0010___CALLSITE, i64 16) monotonic, align 8, !noalias !3933 ; 2 uses
  %i.fm = icmp ult i8 %i.fl, 3
  br i1 %i.fm, label %bb.be, label %bb.bc, !prof !3915

bb.bc:                                            ; preds = %bb.bb
  %i.fn = invoke noundef i8 @_RNvMNtCs2y6mmZ7bjoM_12tracing_core8callsiteNtB2_15DefaultCallsite8register(ptr noundef nonnull align 8 @_RNvNCNCNvNtNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage9retry_ext19ObjectStoreRetryExt19delete_with_retries0010___CALLSITE) #31
          to label %bb.be unwind label %bb.bd, !noalias !3937

bb.bd:                                            ; preds = %bb.bc
  %i.fo = landingpad { ptr, i32 }
          cleanup
  br label %bb.bz

bb.be:                                            ; preds = %bb.bc, %bb.bb
  %.sroa.0.0.i.i = phi i8 [ %i.fl, %bb.bb ], [ %i.fn, %bb.bc ] ; 2 uses
  %i.fp = icmp eq i8 %.sroa.0.0.i.i, 0
  br i1 %i.fp, label %bb.bi, label %bb.bg

bb.bf:                                            ; preds = %bb.bg
  %i.fq = landingpad { ptr, i32 }
          cleanup
  br label %bb.bz

bb.bg:                                            ; preds = %bb.be
  %i.fr = load ptr, ptr @_RNvNCNCNvNtNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage9retry_ext19ObjectStoreRetryExt19delete_with_retries0010___CALLSITE, align 8, !noalias !3933, !nonnull !7, !align !154, !noundef !7
  %i.fs = invoke noundef zeroext i1 @_RNvNtCscTw95cGIolY_7tracing15___macro_support12___is_enabled(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.fr, i8 noundef %.sroa.0.0.i.i)
          to label %bb.bh unwind label %bb.bf, !noalias !3937

bb.bh:                                            ; preds = %bb.bg
  br i1 %i.fs, label %bb.bs, label %bb.bi

bb.bi:                                            ; preds = %bb.bh, %bb.be, %bb.ba
  %i.ft = load atomic i8, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher6EXISTS monotonic, align 1, !noalias !3933
  %.not255.i = icmp eq i8 %i.ft, 0
  br i1 %.not255.i, label %bb.bj, label %bb.by

bb.bj:                                            ; preds = %bb.bi
  %i.fu = load atomic i64, ptr @_RNvCsaljjC7ZTCQu_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8, !noalias !3933 ; 2 uses
  %i.fv = icmp ult i64 %i.fu, 6
  call void @llvm.assume(i1 %i.fv)
  %i.fw = icmp samesign ugt i64 %i.fu, 3
  br i1 %i.fw, label %bb.bl, label %bb.by

bb.bk:                                            ; preds = %bb.bl
  %i.fx = landingpad { ptr, i32 }
          cleanup
  br label %bb.bz

bb.bl:                                            ; preds = %bb.bj
  %i.fy = load ptr, ptr @_RNvNCNCNvNtNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage9retry_ext19ObjectStoreRetryExt19delete_with_retries0010___CALLSITE, align 8, !noalias !3933, !nonnull !7, !align !154, !noundef !7 ; 3 uses
  %i.fz = getelementptr i8, ptr %i.fy, i64 32
  %.val128.i = load ptr, ptr %i.fz, align 8, !noalias !3937, !nonnull !7, !noundef !7
  %i.ga = getelementptr i8, ptr %i.fy, i64 40
  %.val129.i = load i64, ptr %i.ga, align 8, !noalias !3937, !noundef !7
  store i64 4, ptr %i.al, align 8, !alias.scope !3938, !noalias !3933
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  store ptr %.val128.i, ptr %.sroa.6.0..sroa_idx.i, align 8, !alias.scope !3938, !noalias !3933
  %.sroa.8194.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  store i64 %.val129.i, ptr %.sroa.8194.0..sroa_idx.i, align 8, !alias.scope !3938, !noalias !3933
  %i.gb = invoke { ptr, ptr } @_RNvCsaljjC7ZTCQu_3log6logger()
          to label %bb.bm unwind label %bb.bk, !noalias !3937 ; 2 uses

bb.bm:                                            ; preds = %bb.bl
  %i.gc = extractvalue { ptr, ptr } %i.gb, 0      ; 2 uses
  %i.gd = extractvalue { ptr, ptr } %i.gb, 1      ; 2 uses
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gd, i64 24
  %i.gf = load ptr, ptr %i.ge, align 8, !invariant.load !7, !noalias !3937, !nonnull !7
  %i.gg = invoke noundef zeroext i1 %i.gf(ptr noundef %i.gc, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.al)
          to label %bb.bo unwind label %bb.bn, !noalias !3937

bb.bn:                                            ; preds = %bb.bm
  %i.gh = landingpad { ptr, i32 }
          cleanup
  br label %bb.bz

bb.bo:                                            ; preds = %bb.bm
  br i1 %i.gg, label %bb.bp, label %bb.by

bb.bp:                                            ; preds = %bb.bo
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak), !noalias !3933
  %i.gi = load ptr, ptr @_RNvNCNCNvNtNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage9retry_ext19ObjectStoreRetryExt19delete_with_retries0010___CALLSITE, align 8, !noalias !3933, !nonnull !7, !align !154, !noundef !7
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gi, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj), !noalias !3933
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai), !noalias !3933
  store ptr @55, ptr %i.ai, align 8, !noalias !3933
  %i.gk = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  store ptr inttoptr (i64 53 to ptr), ptr %i.gk, align 8, !noalias !3933
  %i.gl = getelementptr inbounds nuw i8, ptr %1, i64 136
  store ptr %i.ai, ptr %i.aj, align 8, !noalias !3933
  %i.gm = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  store ptr @56, ptr %i.gm, align 8, !noalias !3933
  %i.gn = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  store ptr %i.gl, ptr %i.gn, align 8, !noalias !3933
  %i.go = getelementptr inbounds nuw i8, ptr %i.aj, i64 24
  store ptr @57, ptr %i.go, align 8, !noalias !3933
  store i64 1, ptr %i.ak, align 8, !alias.scope !3942, !noalias !3945
  %.sroa.4.0..sroa_idx.i131.i = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  store ptr %i.aj, ptr %.sroa.4.0..sroa_idx.i131.i, align 8, !alias.scope !3942, !noalias !3945
  %.sroa.5.0..sroa_idx.i132.i = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  store i64 2, ptr %.sroa.5.0..sroa_idx.i132.i, align 8, !alias.scope !3942, !noalias !3945
  %i.gp = getelementptr inbounds nuw i8, ptr %i.ak, i64 24
  store ptr %i.gj, ptr %i.gp, align 8, !alias.scope !3942, !noalias !3945
  invoke void @_RNvNtCscTw95cGIolY_7tracing15___macro_support13___tracing_log(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.fy, ptr noundef nonnull %i.gc, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.gd, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.al, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.ak)
          to label %bb.br unwind label %bb.bq, !noalias !3937

bb.bq:                                            ; preds = %bb.bp
  %i.gq = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai), !noalias !3933
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj), !noalias !3933
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak), !noalias !3933
  br label %bb.bz

bb.br:                                            ; preds = %bb.bp
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai), !noalias !3933
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj), !noalias !3933
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak), !noalias !3933
  br label %bb.by

bb.bs:                                            ; preds = %bb.bh
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ao), !noalias !3933
  %i.gr = load ptr, ptr @_RNvNCNCNvNtNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage9retry_ext19ObjectStoreRetryExt19delete_with_retries0010___CALLSITE, align 8, !noalias !3933, !nonnull !7, !align !154, !noundef !7 ; 2 uses
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gr, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.an), !noalias !3933
  call void @llvm.lifetime.start.p0(ptr nonnull %i.am), !noalias !3933
  store ptr @55, ptr %i.am, align 8, !noalias !3933
  %i.gt = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  store ptr inttoptr (i64 53 to ptr), ptr %i.gt, align 8, !noalias !3933
  %i.gu = getelementptr inbounds nuw i8, ptr %1, i64 136
  store ptr %i.am, ptr %i.an, align 8, !noalias !3933
  %i.gv = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  store ptr @56, ptr %i.gv, align 8, !noalias !3933
  %i.gw = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  store ptr %i.gu, ptr %i.gw, align 8, !noalias !3933
  %i.gx = getelementptr inbounds nuw i8, ptr %i.an, i64 24
  store ptr @57, ptr %i.gx, align 8, !noalias !3933
  store i64 1, ptr %i.ao, align 8, !noalias !3933
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  store ptr %i.an, ptr %.sroa.7.0..sroa_idx.i, align 8, !noalias !3933
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  store i64 2, ptr %.sroa.8.0..sroa_idx.i, align 8, !noalias !3933
  %.sroa.9.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ao, i64 24
  store ptr %i.gs, ptr %.sroa.9.0..sroa_idx.i, align 8, !noalias !3933
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !3933
  invoke void @_RNvMNtCs2y6mmZ7bjoM_12tracing_core5eventNtB2_5Event8dispatch(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.gr, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.ao)
          to label %.noexc136.i unwind label %bb.bw, !noalias !3937

.noexc136.i:                                      ; preds = %bb.bs
  %i.gy = load atomic i8, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher6EXISTS monotonic, align 1, !noalias !3948
  %i.gz = icmp eq i8 %i.gy, 0
  br i1 %i.gz, label %bb.bt, label %bb.bx

bb.bt:                                            ; preds = %.noexc136.i
  %i.ha = load atomic i64, ptr @_RNvCsaljjC7ZTCQu_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8, !noalias !3948 ; 2 uses
  %i.hb = icmp ult i64 %i.ha, 6
  call void @llvm.assume(i1 %i.hb)
  %i.hc = icmp samesign ugt i64 %i.ha, 3
  br i1 %i.hc, label %bb.bu, label %bb.bx

bb.bu:                                            ; preds = %bb.bt
  %i.hd = load ptr, ptr @_RNvNCNCNvNtNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage9retry_ext19ObjectStoreRetryExt19delete_with_retries0010___CALLSITE, align 8, !noalias !3948, !nonnull !7, !align !154, !noundef !7 ; 3 uses
  %i.he = getelementptr inbounds nuw i8, ptr %i.hd, i64 32
  %i.hf = load ptr, ptr %i.he, align 8, !noalias !3937, !nonnull !7, !noundef !7
  %i.hg = getelementptr inbounds nuw i8, ptr %i.hd, i64 40
  %i.hh = load i64, ptr %i.hg, align 8, !noalias !3937, !noundef !7
  store i64 4, ptr %i.b, align 8, !noalias !3948
  %.sroa.3.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.hf, ptr %.sroa.3.0..sroa_idx.i.i, align 8, !noalias !3948
  %.sroa.5.0..sroa_idx.i135.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 %i.hh, ptr %.sroa.5.0..sroa_idx.i135.i, align 8, !noalias !3948
  %i.hi = invoke { ptr, ptr } @_RNvCsaljjC7ZTCQu_3log6logger()
          to label %.noexc137.i unwind label %bb.bw, !noalias !3937 ; 2 uses

.noexc137.i:                                      ; preds = %bb.bu
  %i.hj = extractvalue { ptr, ptr } %i.hi, 0      ; 2 uses
  %i.hk = extractvalue { ptr, ptr } %i.hi, 1      ; 2 uses
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hk, i64 24
  %i.hm = load ptr, ptr %i.hl, align 8, !invariant.load !7, !noalias !3937, !nonnull !7
  %i.hn = invoke noundef zeroext i1 %i.hm(ptr noundef %i.hj, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.b) #35
          to label %.noexc138.i unwind label %bb.bw, !noalias !3937, !inline_history !3951

.noexc138.i:                                      ; preds = %.noexc137.i
  br i1 %i.hn, label %bb.bv, label %bb.bx

bb.bv:                                            ; preds = %.noexc138.i
  invoke void @_RNvNtCscTw95cGIolY_7tracing15___macro_support13___tracing_log(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.hd, ptr noundef nonnull %i.hj, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.hk, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.ao)
          to label %bb.bx unwind label %bb.bw, !noalias !3937

bb.bw:                                            ; preds = %bb.bv, %.noexc137.i, %bb.bu, %bb.bs
  %i.ho = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao), !noalias !3933
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am), !noalias !3933
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an), !noalias !3933
  br label %bb.bz

bb.bx:                                            ; preds = %bb.bv, %.noexc138.i, %bb.bt, %.noexc136.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !3933
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao), !noalias !3933
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am), !noalias !3933
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an), !noalias !3933
  br label %bb.by

bb.by:                                            ; preds = %bb.bx, %bb.br, %bb.bo, %bb.bj, %bb.bi
  %i.hp = load i64, ptr %i.aq, align 8, !range !594, !noalias !3933, !noundef !7 ; 3 uses
  %.not257.i = icmp eq i64 %i.hp, -9223372036854775790
  br i1 %.not257.i, label %.thread49, label %bb.fl

bb.bz:                                            ; preds = %.body153.i, %bb.bw, %bb.bq, %bb.bn, %bb.bk, %bb.bf, %bb.bd
  %.pn70.pn.pn.i = phi { ptr, i32 } [ %i.ho, %bb.bw ], [ %i.fo, %bb.bd ], [ %i.gh, %bb.bn ], [ %i.fx, %bb.bk ], [ %.pn50.i, %.body153.i ], [ %i.fq, %bb.bf ], [ %i.gq, %bb.bq ] ; 3 uses
  %i.hq = load i64, ptr %i.aq, align 8, !range !594, !noalias !3933, !noundef !7 ; 3 uses
  %.not256.i = icmp eq i64 %i.hq, -9223372036854775790
  br i1 %.not256.i, label %.body.i, label %bb.fp

bb.ca:                                            ; preds = %bb.az
  %i.hr = icmp eq i64 %i.fc, 0
  br i1 %i.hr, label %bb.cb, label %bb.dr

bb.cb:                                            ; preds = %bb.ca
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !noalias !3933
  %i.hs = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %i.ht = load ptr, ptr %i.hs, align 8, !noalias !3933, !nonnull !7, !noundef !7
  %i.hu = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  %i.hv = load i64, ptr %i.hu, align 8, !noalias !3933, !noundef !7
  store ptr %i.ht, ptr %i.x, align 8, !noalias !3933
  %i.hw = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  store i64 %i.hv, ptr %i.hw, align 8, !noalias !3933
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !noalias !3933
  %i.hx = getelementptr inbounds nuw i8, ptr %i.aq, i64 24
  %i.hy = getelementptr inbounds nuw i8, ptr %i.w, i64 8 ; 2 uses
  %i.hz = load <2 x ptr>, ptr %i.hx, align 8, !noalias !3933
  store <2 x ptr> %i.hz, ptr %i.w, align 16, !noalias !3933
  %i.ia = load atomic i64, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core8metadata9MAX_LEVEL monotonic, align 8, !noalias !3933
  %i.ib = icmp samesign ult i64 %i.ia, 2
  br i1 %i.ib, label %bb.cc, label %bb.cj

bb.cc:                                            ; preds = %bb.cb
  %i.ic = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @_RNvNCNCNvNtNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage9retry_ext19ObjectStoreRetryExt19delete_with_retries00s0_10___CALLSITE, i64 16) monotonic, align 8, !noalias !3933 ; 2 uses
  %i.id = icmp ult i8 %i.ic, 3
  br i1 %i.id, label %bb.cf, label %bb.cd, !prof !3915

bb.cd:                                            ; preds = %bb.cc
  %i.ie = invoke noundef i8 @_RNvMNtCs2y6mmZ7bjoM_12tracing_core8callsiteNtB2_15DefaultCallsite8register(ptr noundef nonnull align 8 @_RNvNCNCNvNtNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage9retry_ext19ObjectStoreRetryExt19delete_with_retries00s0_10___CALLSITE) #31
          to label %bb.cf unwind label %bb.ce, !noalias !3937

bb.ce:                                            ; preds = %bb.cd
  %i.if = landingpad { ptr, i32 }
          cleanup
  br label %bb.dp

bb.cf:                                            ; preds = %bb.cd, %bb.cc
  %.sroa.0.0.i141.i = phi i8 [ %i.ic, %bb.cc ], [ %i.ie, %bb.cd ] ; 2 uses
  %i.ig = icmp eq i8 %.sroa.0.0.i141.i, 0
  br i1 %i.ig, label %bb.cj, label %bb.ch

bb.cg:                                            ; preds = %bb.ch
  %i.ih = landingpad { ptr, i32 }
          cleanup
  br label %bb.dp

bb.ch:                                            ; preds = %bb.cf
  %i.ii = load ptr, ptr @_RNvNCNCNvNtNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage9retry_ext19ObjectStoreRetryExt19delete_with_retries00s0_10___CALLSITE, align 8, !noalias !3933, !nonnull !7, !align !154, !noundef !7
  %i.ij = invoke noundef zeroext i1 @_RNvNtCscTw95cGIolY_7tracing15___macro_support12___is_enabled(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.ii, i8 noundef %.sroa.0.0.i141.i)
          to label %bb.ci unwind label %bb.cg, !noalias !3937

bb.ci:                                            ; preds = %bb.ch
  br i1 %i.ij, label %bb.cz, label %bb.cj

bb.cj:                                            ; preds = %bb.ci, %bb.cf, %bb.cb
  %i.ik = load atomic i8, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher6EXISTS monotonic, align 1, !noalias !3933
  %.not253.i = icmp eq i8 %i.ik, 0
  br i1 %.not253.i, label %bb.ck, label %bb.ct

bb.ck:                                            ; preds = %bb.cj
  %i.il = load atomic i64, ptr @_RNvCsaljjC7ZTCQu_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8, !noalias !3933 ; 2 uses
  %i.im = icmp ult i64 %i.il, 6
  call void @llvm.assume(i1 %i.im)
  %i.in = icmp samesign ugt i64 %i.il, 3
  br i1 %i.in, label %bb.cm, label %bb.ct

bb.cl:                                            ; preds = %bb.cm
  %i.io = landingpad { ptr, i32 }
          cleanup
  br label %bb.dp

bb.cm:                                            ; preds = %bb.ck
  %i.ip = load ptr, ptr @_RNvNCNCNvNtNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage9retry_ext19ObjectStoreRetryExt19delete_with_retries00s0_10___CALLSITE, align 8, !noalias !3933, !nonnull !7, !align !154, !noundef !7 ; 3 uses
  %i.iq = getelementptr i8, ptr %i.ip, i64 32
  %.val126.i = load ptr, ptr %i.iq, align 8, !noalias !3937, !nonnull !7, !noundef !7
  %i.ir = getelementptr i8, ptr %i.ip, i64 40
  %.val127.i = load i64, ptr %i.ir, align 8, !noalias !3937, !noundef !7
  store i64 4, ptr %i.r, align 8, !alias.scope !3952, !noalias !3933
  %.sroa.6222.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store ptr %.val126.i, ptr %.sroa.6222.0..sroa_idx.i, align 8, !alias.scope !3952, !noalias !3933
  %.sroa.8223.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  store i64 %.val127.i, ptr %.sroa.8223.0..sroa_idx.i, align 8, !alias.scope !3952, !noalias !3933
  %i.is = invoke { ptr, ptr } @_RNvCsaljjC7ZTCQu_3log6logger()
          to label %bb.cn unwind label %bb.cl, !noalias !3937 ; 2 uses

bb.cn:                                            ; preds = %bb.cm
  %i.it = extractvalue { ptr, ptr } %i.is, 0      ; 2 uses
  %i.iu = extractvalue { ptr, ptr } %i.is, 1      ; 2 uses
  %i.iv = getelementptr inbounds nuw i8, ptr %i.iu, i64 24
  %i.iw = load ptr, ptr %i.iv, align 8, !invariant.load !7, !noalias !3937, !nonnull !7
  %i.ix = invoke noundef zeroext i1 %i.iw(ptr noundef %i.it, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.r)
          to label %bb.cp unwind label %bb.co, !noalias !3937

bb.co:                                            ; preds = %bb.cn
  %i.iy = landingpad { ptr, i32 }
          cleanup
  br label %bb.dp

bb.cp:                                            ; preds = %bb.cn
  br i1 %i.ix, label %bb.cq, label %bb.ct

bb.cq:                                            ; preds = %bb.cp
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !3933
  %i.iz = load ptr, ptr @_RNvNCNCNvNtNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage9retry_ext19ObjectStoreRetryExt19delete_with_retries00s0_10___CALLSITE, align 8, !noalias !3933, !nonnull !7, !align !154, !noundef !7
  %i.ja = getelementptr inbounds nuw i8, ptr %i.iz, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !3933
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !3933
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !3933
  store ptr %i.fe, ptr %i.n, align 8, !noalias !3933
  %.sroa.5225.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store ptr @_RNvXsi_NtNtNtCsbvkFyIu7lgC_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.5225.0..sroa_idx.i, align 8, !noalias !3933
  %i.jb = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  store ptr %i.x, ptr %i.jb, align 8, !noalias !3933
  %.sroa.5227.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  store ptr @_RNvXs1i_NtCsbvkFyIu7lgC_4core3fmtReNtB6_7Display3fmtCs9rVkZwOUgsI_13deltalake_aws, ptr %.sroa.5227.0..sroa_idx.i, align 8, !noalias !3933
  %i.jc = getelementptr inbounds nuw i8, ptr %i.n, i64 32
  store ptr %i.w, ptr %i.jc, align 8, !noalias !3933
  %.sroa.5229.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.n, i64 40
  store ptr @_RNvXsm_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDNtNtCsbvkFyIu7lgC_4core5error5ErrorNtNtBM_6marker4SyncNtB1j_4SendEL_ENtNtBM_3fmt7Display3fmtCs9rVkZwOUgsI_13deltalake_aws, ptr %.sroa.5229.0..sroa_idx.i, align 8, !noalias !3933
  store ptr @58, ptr %i.o, align 8, !noalias !3933
  %i.jd = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store ptr %i.n, ptr %i.jd, align 8, !noalias !3933
  store ptr %i.o, ptr %i.p, align 8, !noalias !3933
  %i.je = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store ptr @56, ptr %i.je, align 8, !noalias !3933
  store i64 1, ptr %i.q, align 8, !alias.scope !3956, !noalias !3959
  %.sroa.4.0..sroa_idx.i150.i = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store ptr %i.p, ptr %.sroa.4.0..sroa_idx.i150.i, align 8, !alias.scope !3956, !noalias !3959
  %.sroa.5.0..sroa_idx.i151.i = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  store i64 1, ptr %.sroa.5.0..sroa_idx.i151.i, align 8, !alias.scope !3956, !noalias !3959
  %i.jf = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  store ptr %i.ja, ptr %i.jf, align 8, !alias.scope !3956, !noalias !3959
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !3933
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %i.r, i64 24, i1 false), !noalias !3933
  invoke void @_RNvNtCscTw95cGIolY_7tracing15___macro_support13___tracing_log(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.ip, ptr noundef nonnull %i.it, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.iu, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.q)
          to label %bb.cs unwind label %bb.cr, !noalias !3937

bb.cr:                                            ; preds = %bb.cq
  %i.jg = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !3933
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !3933
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !3933
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !3933
  br label %bb.dp

bb.cs:                                            ; preds = %bb.cq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !3933
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !3933
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !3933
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !3933
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !3933
  br label %bb.ct

bb.ct:                                            ; preds = %bb.de, %bb.cs, %bb.cp, %bb.ck, %bb.cj
  %i.jh = load i64, ptr %i.fe, align 8, !noalias !3933, !noundef !7
  %i.ji = add i64 %i.jh, 1
  store i64 %i.ji, ptr %i.fe, align 8, !noalias !3933
  %.val96.i = load ptr, ptr %i.w, align 16, !noalias !3933 ; 5 uses
  %.val97.i = load ptr, ptr %i.hy, align 8, !noalias !3933, !nonnull !7, !align !154, !noundef !7 ; 5 uses
  %i.jj = load ptr, ptr %.val97.i, align 8, !invariant.load !7, !noalias !3937 ; 2 uses
  %.not.i152.i = icmp eq ptr %i.jj, null
  br i1 %.not.i152.i, label %bb.cv, label %bb.cu

bb.cu:                                            ; preds = %bb.ct
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val96.i) ]
  invoke void %i.jj(ptr noundef nonnull %.val96.i)
          to label %bb.cv unwind label %bb.cx, !noalias !3937

bb.cv:                                            ; preds = %bb.cu, %bb.ct
  %i.jk = getelementptr inbounds nuw i8, ptr %.val97.i, i64 8
  %i.jl = load i64, ptr %i.jk, align 8, !range !450, !invariant.load !7, !noalias !3937 ; 2 uses
  %i.jm = icmp eq i64 %i.jl, 0
  br i1 %i.jm, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECs9rVkZwOUgsI_13deltalake_aws.exit.i, label %bb.cw

bb.cw:                                            ; preds = %bb.cv
  %i.jn = getelementptr inbounds nuw i8, ptr %.val97.i, i64 16
  %i.jo = load i64, ptr %i.jn, align 8, !range !589, !invariant.load !7, !noalias !3937
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val96.i) ]
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val96.i, i64 noundef range(i64 1, 0) %i.jl, i64 noundef range(i64 1, 536870913) %i.jo) #22, !noalias !3937
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECs9rVkZwOUgsI_13deltalake_aws.exit.i

bb.cx:                                            ; preds = %bb.cu
  %i.jp = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.jq = getelementptr inbounds nuw i8, ptr %.val97.i, i64 8
  %i.jr = load i64, ptr %i.jq, align 8, !range !450, !invariant.load !7, !noalias !3937 ; 2 uses
  %i.js = icmp eq i64 %i.jr, 0
  br i1 %i.js, label %.body153.i, label %bb.cy

bb.cy:                                            ; preds = %bb.cx
  %i.jt = getelementptr inbounds nuw i8, ptr %.val97.i, i64 16
  %i.ju = load i64, ptr %i.jt, align 8, !range !589, !invariant.load !7, !noalias !3937
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val96.i, i64 noundef range(i64 1, 0) %i.jr, i64 noundef range(i64 1, 536870913) %i.ju) #22, !noalias !3937
  br label %.body153.i

bb.cz:                                            ; preds = %bb.ci
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !noalias !3933
  %i.jv = load ptr, ptr @_RNvNCNCNvNtNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage9retry_ext19ObjectStoreRetryExt19delete_with_retries00s0_10___CALLSITE, align 8, !noalias !3933, !nonnull !7, !align !154, !noundef !7 ; 2 uses
  %i.jw = getelementptr inbounds nuw i8, ptr %i.jv, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !3933
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !3933
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !3933
  store ptr %i.fe, ptr %i.s, align 8, !noalias !3933
  %.sroa.5.0..sroa_idx.i32 = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  store ptr @_RNvXsi_NtNtNtCsbvkFyIu7lgC_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.5.0..sroa_idx.i32, align 8, !noalias !3933
  %i.jx = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  store ptr %i.x, ptr %i.jx, align 8, !noalias !3933
  %.sroa.5215.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  store ptr @_RNvXs1i_NtCsbvkFyIu7lgC_4core3fmtReNtB6_7Display3fmtCs9rVkZwOUgsI_13deltalake_aws, ptr %.sroa.5215.0..sroa_idx.i, align 8, !noalias !3933
  %i.jy = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  store ptr %i.w, ptr %i.jy, align 8, !noalias !3933
  %.sroa.5217.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.s, i64 40
  store ptr @_RNvXsm_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDNtNtCsbvkFyIu7lgC_4core5error5ErrorNtNtBM_6marker4SyncNtB1j_4SendEL_ENtNtBM_3fmt7Display3fmtCs9rVkZwOUgsI_13deltalake_aws, ptr %.sroa.5217.0..sroa_idx.i, align 8, !noalias !3933
  store ptr @58, ptr %i.t, align 8, !noalias !3933
  %i.jz = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  store ptr %i.s, ptr %i.jz, align 8, !noalias !3933
  store ptr %i.t, ptr %i.u, align 8, !noalias !3933
  %i.ka = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  store ptr @56, ptr %i.ka, align 8, !noalias !3933
  store i64 1, ptr %i.v, align 8, !noalias !3933
  %.sroa.6210.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  store ptr %i.u, ptr %.sroa.6210.0..sroa_idx.i, align 8, !noalias !3933
  %.sroa.7211.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  store i64 1, ptr %.sroa.7211.0..sroa_idx.i, align 8, !noalias !3933
  %.sroa.8212.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  store ptr %i.jw, ptr %.sroa.8212.0..sroa_idx.i, align 8, !noalias !3933
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !3933
  invoke void @_RNvMNtCs2y6mmZ7bjoM_12tracing_core5eventNtB2_5Event8dispatch(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.jv, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.v)
          to label %.noexc162.i unwind label %bb.dd, !noalias !3937

.noexc162.i:                                      ; preds = %bb.cz
  %i.kb = load atomic i8, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher6EXISTS monotonic, align 1, !noalias !3962
  %i.kc = icmp eq i8 %i.kb, 0
  br i1 %i.kc, label %bb.da, label %bb.de

bb.da:                                            ; preds = %.noexc162.i
  %i.kd = load atomic i64, ptr @_RNvCsaljjC7ZTCQu_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8, !noalias !3962 ; 2 uses
  %i.ke = icmp ult i64 %i.kd, 6
  call void @llvm.assume(i1 %i.ke)
  %i.kf = icmp samesign ugt i64 %i.kd, 3
  br i1 %i.kf, label %bb.db, label %bb.de

bb.db:                                            ; preds = %bb.da
  %i.kg = load ptr, ptr @_RNvNCNCNvNtNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage9retry_ext19ObjectStoreRetryExt19delete_with_retries00s0_10___CALLSITE, align 8, !noalias !3962, !nonnull !7, !align !154, !noundef !7 ; 3 uses
  %i.kh = getelementptr inbounds nuw i8, ptr %i.kg, i64 32
  %i.ki = load ptr, ptr %i.kh, align 8, !noalias !3937, !nonnull !7, !noundef !7
  %i.kj = getelementptr inbounds nuw i8, ptr %i.kg, i64 40
  %i.kk = load i64, ptr %i.kj, align 8, !noalias !3937, !noundef !7
  store i64 4, ptr %i.a, align 8, !noalias !3962
  %.sroa.3.0..sroa_idx.i160.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.ki, ptr %.sroa.3.0..sroa_idx.i160.i, align 8, !noalias !3962
  %.sroa.5.0..sroa_idx.i161.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %i.kk, ptr %.sroa.5.0..sroa_idx.i161.i, align 8, !noalias !3962
  %i.kl = invoke { ptr, ptr } @_RNvCsaljjC7ZTCQu_3log6logger()
          to label %.noexc163.i unwind label %bb.dd, !noalias !3937 ; 2 uses

.noexc163.i:                                      ; preds = %bb.db
  %i.km = extractvalue { ptr, ptr } %i.kl, 0      ; 2 uses
  %i.kn = extractvalue { ptr, ptr } %i.kl, 1      ; 2 uses
  %i.ko = getelementptr inbounds nuw i8, ptr %i.kn, i64 24
  %i.kp = load ptr, ptr %i.ko, align 8, !invariant.load !7, !noalias !3937, !nonnull !7
  %i.kq = invoke noundef zeroext i1 %i.kp(ptr noundef %i.km, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.a) #35
          to label %.noexc164.i unwind label %bb.dd, !noalias !3937, !inline_history !3965

.noexc164.i:                                      ; preds = %.noexc163.i
  br i1 %i.kq, label %bb.dc, label %bb.de

bb.dc:                                            ; preds = %.noexc164.i
  invoke void @_RNvNtCscTw95cGIolY_7tracing15___macro_support13___tracing_log(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.kg, ptr noundef nonnull %i.km, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.kn, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.v)
          to label %bb.de unwind label %bb.dd, !noalias !3937

bb.dd:                                            ; preds = %bb.dc, %.noexc163.i, %bb.db, %bb.cz
  %i.kr = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !3933
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !3933
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !3933
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !3933
  br label %bb.dp

bb.de:                                            ; preds = %bb.dc, %.noexc164.i, %bb.da, %.noexc162.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !3933
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !3933
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !3933
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !3933
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !3933
  br label %bb.ct

.body153.i:                                       ; preds = %bb.dp, %bb.cy, %bb.cx
  %.pn50.i = phi { ptr, i32 } [ %.pn47.pn.i, %bb.dp ], [ %i.jp, %bb.cx ], [ %i.jp, %bb.cy ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !3933
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !3933
  br label %bb.bz

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECs9rVkZwOUgsI_13deltalake_aws.exit.i: ; preds = %bb.cw, %bb.cv
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !3933
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !3933
  %i.ks = load i64, ptr %i.aq, align 8, !range !594, !noalias !3933, !noundef !7 ; 3 uses
  %.not52.i = icmp eq i64 %i.ks, -9223372036854775790
  br i1 %.not52.i, label %bb.dg, label %bb.df

bb.df:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECs9rVkZwOUgsI_13deltalake_aws.exit.i
  %i.kt = icmp ne i64 %i.ks, -9223372036854775800
  call void @llvm.assume(i1 %i.kt)
  %i.ku = icmp eq i64 %i.ks, -9223372036854775802
  br i1 %i.ku, label %bb.dg, label %bb.dh

bb.dg:                                            ; preds = %bb.dh, %bb.df, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECs9rVkZwOUgsI_13deltalake_aws.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq), !noalias !3933
  %.pre.i = load i64, ptr %i.fe, align 8, !noalias !3933
  %.pre259.i = load i64, ptr %i.fg, align 8, !noalias !3933
  br label %bb.al

bb.dh:                                            ; preds = %bb.df
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCsjyY8HP3IvQ6_12object_store5ErrorECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef align 8 dereferenceable(72) %i.aq)
          to label %bb.dg unwind label %bb.ax, !noalias !3937

bb.di:                                            ; preds = %bb.al
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aq), !noalias !3933
  %i.kv = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.kw = load ptr, ptr %i.kv, align 8, !noalias !3933, !nonnull !7, !noundef !7
  %i.kx = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.ky = load ptr, ptr %i.kx, align 8, !noalias !3933, !nonnull !7, !align !154, !noundef !7
  %i.kz = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.la = load ptr, ptr %i.kz, align 8, !noalias !3933, !nonnull !7, !align !154, !noundef !7
  %i.lb = getelementptr inbounds nuw i8, ptr %i.ky, i64 120
  %i.lc = load ptr, ptr %i.lb, align 8, !invariant.load !7, !noalias !3937, !nonnull !7
  %i.ld = invoke { ptr, ptr } %i.lc(ptr noundef nonnull %i.kw, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.la)
          to label %bb.do unwind label %bb.dn, !noalias !3937 ; 2 uses

bb.dj:                                            ; preds = %bb.dk
  %i.le = landingpad { ptr, i32 }
          cleanup
  br label %bb.dm

bb.dk:                                            ; preds = %bb.al
  invoke void @_RNvNtCsbvkFyIu7lgC_4core9panicking9panic_fmt(ptr noundef nonnull @59, ptr noundef nonnull inttoptr (i64 211 to ptr), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @60) #34
          to label %bb.dl unwind label %bb.dj, !noalias !3937

bb.dl:                                            ; preds = %bb.dk
  unreachable

bb.dm:                                            ; preds = %bb.dj, %.body.i
  %.pn74.pn.i = phi { ptr, i32 } [ %.pn74.i, %.body.i ], [ %i.le, %bb.dj ]
  store i8 2, ptr %i.dv, align 8, !noalias !3933
  br label %.body35

bb.dn:                                            ; preds = %bb.di
  %i.lf = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

bb.do:                                            ; preds = %bb.di
  %i.lg = extractvalue { ptr, ptr } %i.ld, 0
  %i.lh = extractvalue { ptr, ptr } %i.ld, 1
  %i.li = getelementptr inbounds nuw i8, ptr %1, i64 144
  store ptr %i.lg, ptr %i.li, align 8, !noalias !3933
  %i.lj = getelementptr inbounds nuw i8, ptr %1, i64 152
  store ptr %i.lh, ptr %i.lj, align 8, !noalias !3933
  br label %bb.ap

bb.dp:                                            ; preds = %bb.dd, %bb.cr, %bb.co, %bb.cl, %bb.cg, %bb.ce
  %.pn47.pn.i = phi { ptr, i32 } [ %i.kr, %bb.dd ], [ %i.io, %bb.cl ], [ %i.if, %bb.ce ], [ %i.jg, %bb.cr ], [ %i.iy, %bb.co ], [ %i.ih, %bb.cg ]
  %.val.i = load ptr, ptr %i.w, align 16, !noalias !3933
  %.val95.i = load ptr, ptr %i.hy, align 8, !noalias !3933, !nonnull !7, !align !154, !noundef !7
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECs9rVkZwOUgsI_13deltalake_aws(ptr %.val.i, ptr nonnull %.val95.i) #30
          to label %.body153.i unwind label %bb.dq, !noalias !3937

bb.dq:                                            ; preds = %bb.fq, %bb.fn, %bb.en, %bb.dp, %bb.ao
  %i.lk = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #32, !noalias !3937
  unreachable

bb.dr:                                            ; preds = %bb.ca
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !3933
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.m, ptr noundef nonnull align 8 dereferenceable(72) %i.aq, i64 72, i1 false), !noalias !3933
  %i.ll = load atomic i64, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core8metadata9MAX_LEVEL monotonic, align 8, !noalias !3933
  %i.lm = icmp samesign ult i64 %i.ll, 5
  br i1 %i.lm, label %bb.ds, label %bb.dz

bb.ds:                                            ; preds = %bb.dr
  %i.ln = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @_RNvNCNCNvNtNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage9retry_ext19ObjectStoreRetryExt19delete_with_retries00s1_10___CALLSITE, i64 16) monotonic, align 8, !noalias !3933 ; 2 uses
  %i.lo = icmp ult i8 %i.ln, 3
  br i1 %i.lo, label %bb.dv, label %bb.dt, !prof !3915

bb.dt:                                            ; preds = %bb.ds
  %i.lp = invoke noundef i8 @_RNvMNtCs2y6mmZ7bjoM_12tracing_core8callsiteNtB2_15DefaultCallsite8register(ptr noundef nonnull align 8 @_RNvNCNCNvNtNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage9retry_ext19ObjectStoreRetryExt19delete_with_retries00s1_10___CALLSITE) #31
          to label %bb.dv unwind label %bb.du, !noalias !3937

bb.du:                                            ; preds = %bb.dt
  %i.lq = landingpad { ptr, i32 }
          cleanup
  br label %bb.en

bb.dv:                                            ; preds = %bb.dt, %bb.ds
  %.sroa.0.0.i167.i = phi i8 [ %i.ln, %bb.ds ], [ %i.lp, %bb.dt ] ; 2 uses
  %i.lr = icmp eq i8 %.sroa.0.0.i167.i, 0
  br i1 %i.lr, label %bb.dz, label %bb.dx

bb.dw:                                            ; preds = %bb.dx
  %i.ls = landingpad { ptr, i32 }
          cleanup
  br label %bb.en

bb.dx:                                            ; preds = %bb.dv
  %i.lt = load ptr, ptr @_RNvNCNCNvNtNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage9retry_ext19ObjectStoreRetryExt19delete_with_retries00s1_10___CALLSITE, align 8, !noalias !3933, !nonnull !7, !align !154, !noundef !7
  %i.lu = invoke noundef zeroext i1 @_RNvNtCscTw95cGIolY_7tracing15___macro_support12___is_enabled(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.lt, i8 noundef %.sroa.0.0.i167.i)
          to label %bb.dy unwind label %bb.dw, !noalias !3937

bb.dy:                                            ; preds = %bb.dx
  br i1 %i.lu, label %bb.ek, label %bb.dz

bb.dz:                                            ; preds = %bb.dy, %bb.dv, %bb.dr
  %i.lv = load atomic i8, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher6EXISTS monotonic, align 1, !noalias !3933
  %.not251.i = icmp eq i8 %i.lv, 0
  br i1 %.not251.i, label %bb.ea, label %bb.ej

bb.ea:                                            ; preds = %bb.dz
  %i.lw = load atomic i64, ptr @_RNvCsaljjC7ZTCQu_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8, !noalias !3933 ; 2 uses
  %i.lx = icmp ult i64 %i.lw, 6
  call void @llvm.assume(i1 %i.lx)
  %.not252.i = icmp eq i64 %i.lw, 0
  br i1 %.not252.i, label %bb.ej, label %bb.ec

bb.eb:                                            ; preds = %bb.ec
  %i.ly = landingpad { ptr, i32 }
          cleanup
  br label %bb.en

bb.ec:                                            ; preds = %bb.ea
  %i.lz = load ptr, ptr @_RNvNCNCNvNtNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage9retry_ext19ObjectStoreRetryExt19delete_with_retries00s1_10___CALLSITE, align 8, !noalias !3933, !nonnull !7, !align !154, !noundef !7 ; 3 uses
  %i.ma = getelementptr i8, ptr %i.lz, i64 32
  %.val124.i = load ptr, ptr %i.ma, align 8, !noalias !3937, !nonnull !7, !noundef !7
  %i.mb = getelementptr i8, ptr %i.lz, i64 40
  %.val125.i = load i64, ptr %i.mb, align 8, !noalias !3937, !noundef !7
  store i64 1, ptr %i.h, align 8, !alias.scope !3966, !noalias !3933
  %.sroa.6240.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr %.val124.i, ptr %.sroa.6240.0..sroa_idx.i, align 8, !alias.scope !3966, !noalias !3933
  %.sroa.8241.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store i64 %.val125.i, ptr %.sroa.8241.0..sroa_idx.i, align 8, !alias.scope !3966, !noalias !3933
  %i.mc = invoke { ptr, ptr } @_RNvCsaljjC7ZTCQu_3log6logger()
          to label %bb.ed unwind label %bb.eb, !noalias !3937 ; 2 uses

bb.ed:                                            ; preds = %bb.ec
  %i.md = extractvalue { ptr, ptr } %i.mc, 0      ; 2 uses
  %i.me = extractvalue { ptr, ptr } %i.mc, 1      ; 2 uses
  %i.mf = getelementptr inbounds nuw i8, ptr %i.me, i64 24
  %i.mg = load ptr, ptr %i.mf, align 8, !invariant.load !7, !noalias !3937, !nonnull !7
  %i.mh = invoke noundef zeroext i1 %i.mg(ptr noundef %i.md, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.h)
          to label %bb.ef unwind label %bb.ee, !noalias !3937

bb.ee:                                            ; preds = %bb.ed
  %i.mi = landingpad { ptr, i32 }
          cleanup
  br label %bb.en

bb.ef:                                            ; preds = %bb.ed
  br i1 %i.mh, label %bb.eg, label %bb.ej

bb.eg:                                            ; preds = %bb.ef
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !3933
  %i.mj = load ptr, ptr @_RNvNCNCNvNtNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage9retry_ext19ObjectStoreRetryExt19delete_with_retries00s1_10___CALLSITE, align 8, !noalias !3933, !nonnull !7, !align !154, !noundef !7
  %i.mk = getelementptr inbounds nuw i8, ptr %i.mj, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !3933
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !3933
  store ptr @61, ptr %i.e, align 8, !noalias !3933
  %i.ml = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr inttoptr (i64 97 to ptr), ptr %i.ml, align 8, !noalias !3933
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !3933
  store ptr %i.m, ptr %i.d, align 8, !noalias !3933
  store ptr %i.e, ptr %i.f, align 8, !noalias !3933
  %i.mm = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr @56, ptr %i.mm, align 8, !noalias !3933
  %i.mn = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store ptr %i.fe, ptr %i.mn, align 8, !noalias !3933
  %i.mo = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  store ptr @57, ptr %i.mo, align 8, !noalias !3933
  %i.mp = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  store ptr %i.d, ptr %i.mp, align 8, !noalias !3933
  %i.mq = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  store ptr @62, ptr %i.mq, align 8, !noalias !3933
  store i64 1, ptr %i.g, align 8, !alias.scope !3970, !noalias !3973
  %.sroa.4.0..sroa_idx.i173.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr %i.f, ptr %.sroa.4.0..sroa_idx.i173.i, align 8, !alias.scope !3970, !noalias !3973
  %.sroa.5.0..sroa_idx.i174.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store i64 3, ptr %.sroa.5.0..sroa_idx.i174.i, align 8, !alias.scope !3970, !noalias !3973
  %i.mr = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  store ptr %i.mk, ptr %i.mr, align 8, !alias.scope !3970, !noalias !3973
  invoke void @_RNvNtCscTw95cGIolY_7tracing15___macro_support13___tracing_log(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.lz, ptr noundef nonnull %i.md, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.me, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.h, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.g)
          to label %bb.ei unwind label %bb.eh, !noalias !3937

bb.eh:                                            ; preds = %bb.eg
  %i.ms = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !3933
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !3933
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !3933
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !3933
  br label %bb.en

bb.ei:                                            ; preds = %bb.eg
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !3933
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !3933
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !3933
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !3933
  br label %bb.ej

bb.ej:                                            ; preds = %bb.em, %bb.ei, %bb.ef, %bb.ea, %bb.dz
  %.sroa.021.0.copyload.i = load i64, ptr %i.m, align 8, !noalias !3933
  %.sroa.422.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.416.i, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.422.0..sroa_idx.i, i64 64, i1 false), !noalias !3933
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !3933
  br label %bb.fs

bb.ek:                                            ; preds = %bb.dy
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !3933
  %i.mt = load ptr, ptr @_RNvNCNCNvNtNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage9retry_ext19ObjectStoreRetryExt19delete_with_retries00s1_10___CALLSITE, align 8, !noalias !3933, !nonnull !7, !align !154, !noundef !7
  %i.mu = getelementptr inbounds nuw i8, ptr %i.mt, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !3933
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !3933
  store ptr @61, ptr %i.j, align 8, !noalias !3933
  %i.mv = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store ptr inttoptr (i64 97 to ptr), ptr %i.mv, align 8, !noalias !3933
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !3933
  store ptr %i.m, ptr %i.i, align 8, !noalias !3933
  store ptr %i.j, ptr %i.k, align 8, !noalias !3933
  %i.mw = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store ptr @56, ptr %i.mw, align 8, !noalias !3933
  %i.mx = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  store ptr %i.fe, ptr %i.mx, align 8, !noalias !3933
  %i.my = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  store ptr @57, ptr %i.my, align 8, !noalias !3933
  %i.mz = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  store ptr %i.i, ptr %i.mz, align 8, !noalias !3933
  %i.na = getelementptr inbounds nuw i8, ptr %i.k, i64 40
  store ptr @62, ptr %i.na, align 8, !noalias !3933
  store i64 1, ptr %i.l, align 8, !noalias !3933
  %.sroa.7233.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store ptr %i.k, ptr %.sroa.7233.0..sroa_idx.i, align 8, !noalias !3933
  %.sroa.8234.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  store i64 3, ptr %.sroa.8234.0..sroa_idx.i, align 8, !noalias !3933
  %.sroa.9235.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  store ptr %i.mu, ptr %.sroa.9235.0..sroa_idx.i, align 8, !noalias !3933
  invoke fastcc void @_RNCNCNCNvYDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_NtNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage9retry_ext19ObjectStoreRetryExt19delete_with_retries00s1_0Cs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef align 8 captures(address) dereferenceable(32) %i.l)
          to label %bb.em unwind label %bb.el, !noalias !3937

bb.el:                                            ; preds = %bb.ek
  %i.nb = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !3933
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !3933
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !3933
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !3933
  br label %bb.en

bb.em:                                            ; preds = %bb.ek
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !3933
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !3933
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !3933
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !3933
  br label %bb.ej

bb.en:                                            ; preds = %bb.el, %bb.eh, %bb.ee, %bb.eb, %bb.dw, %bb.du
  %.pn31.pn.pn.i = phi { ptr, i32 } [ %i.nb, %bb.el ], [ %i.ly, %bb.eb ], [ %i.lq, %bb.du ], [ %i.ms, %bb.eh ], [ %i.mi, %bb.ee ], [ %i.ls, %bb.dw ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCsjyY8HP3IvQ6_12object_store5ErrorECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef align 8 dereferenceable(72) %i.m) #30
          to label %bb.eo unwind label %bb.dq, !noalias !3937

bb.eo:                                            ; preds = %bb.en
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !3933
  br label %.body.i

bb.ep:                                            ; preds = %bb.az
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah), !noalias !3933
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.ah, ptr noundef nonnull align 8 dereferenceable(72) %i.aq, i64 72, i1 false), !noalias !3933
  %i.nc = load atomic i64, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core8metadata9MAX_LEVEL monotonic, align 8, !noalias !3933
  %i.nd = icmp samesign ult i64 %i.nc, 4
  br i1 %i.nd, label %bb.eq, label %bb.ex

bb.eq:                                            ; preds = %bb.ep
  %i.ne = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @_RNvNCNCNvNtNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage9retry_ext19ObjectStoreRetryExt19delete_with_retries00s_10___CALLSITE, i64 16) monotonic, align 8, !noalias !3933 ; 2 uses
  %i.nf = icmp ult i8 %i.ne, 3
  br i1 %i.nf, label %bb.et, label %bb.er, !prof !3915

bb.er:                                            ; preds = %bb.eq
  %i.ng = invoke noundef i8 @_RNvMNtCs2y6mmZ7bjoM_12tracing_core8callsiteNtB2_15DefaultCallsite8register(ptr noundef nonnull align 8 @_RNvNCNCNvNtNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage9retry_ext19ObjectStoreRetryExt19delete_with_retries00s_10___CALLSITE) #31
          to label %bb.et unwind label %bb.es, !noalias !3937

bb.es:                                            ; preds = %bb.er
  %i.nh = landingpad { ptr, i32 }
          cleanup
  br label %bb.fn

bb.et:                                            ; preds = %bb.er, %bb.eq
  %.sroa.0.0.i178.i = phi i8 [ %i.ne, %bb.eq ], [ %i.ng, %bb.er ] ; 2 uses
  %i.ni = icmp eq i8 %.sroa.0.0.i178.i, 0
  br i1 %i.ni, label %bb.ex, label %bb.ev

bb.eu:                                            ; preds = %bb.ev
  %i.nj = landingpad { ptr, i32 }
          cleanup
  br label %bb.fn

bb.ev:                                            ; preds = %bb.et
  %i.nk = load ptr, ptr @_RNvNCNCNvNtNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage9retry_ext19ObjectStoreRetryExt19delete_with_retries00s_10___CALLSITE, align 8, !noalias !3933, !nonnull !7, !align !154, !noundef !7
  %i.nl = invoke noundef zeroext i1 @_RNvNtCscTw95cGIolY_7tracing15___macro_support12___is_enabled(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.nk, i8 noundef %.sroa.0.0.i178.i)
          to label %bb.ew unwind label %bb.eu, !noalias !3937

bb.ew:                                            ; preds = %bb.ev
  br i1 %i.nl, label %bb.fi, label %bb.ex

bb.ex:                                            ; preds = %bb.ew, %bb.et, %bb.ep
  %i.nm = load atomic i8, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher6EXISTS monotonic, align 1, !noalias !3933
  %.not254.i = icmp eq i8 %i.nm, 0
  br i1 %.not254.i, label %bb.ey, label %bb.fh

bb.ey:                                            ; preds = %bb.ex
  %i.nn = load atomic i64, ptr @_RNvCsaljjC7ZTCQu_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8, !noalias !3933 ; 2 uses
  %i.no = icmp ult i64 %i.nn, 6
  call void @llvm.assume(i1 %i.no)
  %i.np = icmp samesign ugt i64 %i.nn, 1
  br i1 %i.np, label %bb.fa, label %bb.fh

bb.ez:                                            ; preds = %bb.fa
  %i.nq = landingpad { ptr, i32 }
          cleanup
  br label %bb.fn

bb.fa:                                            ; preds = %bb.ey
  %i.nr = load ptr, ptr @_RNvNCNCNvNtNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage9retry_ext19ObjectStoreRetryExt19delete_with_retries00s_10___CALLSITE, align 8, !noalias !3933, !nonnull !7, !align !154, !noundef !7 ; 3 uses
  %i.ns = getelementptr i8, ptr %i.nr, i64 32
  %.val122.i = load ptr, ptr %i.ns, align 8, !noalias !3937, !nonnull !7, !noundef !7
  %i.nt = getelementptr i8, ptr %i.nr, i64 40
  %.val123.i = load i64, ptr %i.nt, align 8, !noalias !3937, !noundef !7
  store i64 2, ptr %i.ac, align 8, !alias.scope !3976, !noalias !3933
  %.sroa.6205.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  store ptr %.val122.i, ptr %.sroa.6205.0..sroa_idx.i, align 8, !alias.scope !3976, !noalias !3933
  %.sroa.8206.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  store i64 %.val123.i, ptr %.sroa.8206.0..sroa_idx.i, align 8, !alias.scope !3976, !noalias !3933
  %i.nu = invoke { ptr, ptr } @_RNvCsaljjC7ZTCQu_3log6logger()
          to label %bb.fb unwind label %bb.ez, !noalias !3937 ; 2 uses

bb.fb:                                            ; preds = %bb.fa
  %i.nv = extractvalue { ptr, ptr } %i.nu, 0      ; 2 uses
  %i.nw = extractvalue { ptr, ptr } %i.nu, 1      ; 2 uses
  %i.nx = getelementptr inbounds nuw i8, ptr %i.nw, i64 24
  %i.ny = load ptr, ptr %i.nx, align 8, !invariant.load !7, !noalias !3937, !nonnull !7
  %i.nz = invoke noundef zeroext i1 %i.ny(ptr noundef %i.nv, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ac)
          to label %bb.fd unwind label %bb.fc, !noalias !3937

bb.fc:                                            ; preds = %bb.fb
  %i.oa = landingpad { ptr, i32 }
          cleanup
  br label %bb.fn

bb.fd:                                            ; preds = %bb.fb
  br i1 %i.nz, label %bb.fe, label %bb.fh

bb.fe:                                            ; preds = %bb.fd
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab), !noalias !3933
  %i.ob = load ptr, ptr @_RNvNCNCNvNtNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage9retry_ext19ObjectStoreRetryExt19delete_with_retries00s_10___CALLSITE, align 8, !noalias !3933, !nonnull !7, !align !154, !noundef !7
  %i.oc = getelementptr inbounds nuw i8, ptr %i.ob, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa), !noalias !3933
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !noalias !3933
  store ptr @63, ptr %i.z, align 8, !noalias !3933
  %i.od = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  store ptr inttoptr (i64 83 to ptr), ptr %i.od, align 8, !noalias !3933
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y), !noalias !3933
  store ptr %i.ah, ptr %i.y, align 8, !noalias !3933
  store ptr %i.z, ptr %i.aa, align 8, !noalias !3933
  %i.oe = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  store ptr @56, ptr %i.oe, align 8, !noalias !3933
  %i.of = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  store ptr %i.fe, ptr %i.of, align 8, !noalias !3933
  %i.og = getelementptr inbounds nuw i8, ptr %i.aa, i64 24
  store ptr @57, ptr %i.og, align 8, !noalias !3933
  %i.oh = getelementptr inbounds nuw i8, ptr %i.aa, i64 32
  store ptr %i.y, ptr %i.oh, align 8, !noalias !3933
  %i.oi = getelementptr inbounds nuw i8, ptr %i.aa, i64 40
  store ptr @62, ptr %i.oi, align 8, !noalias !3933
  store i64 1, ptr %i.ab, align 8, !alias.scope !3980, !noalias !3983
  %.sroa.4.0..sroa_idx.i184.i = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  store ptr %i.aa, ptr %.sroa.4.0..sroa_idx.i184.i, align 8, !alias.scope !3980, !noalias !3983
  %.sroa.5.0..sroa_idx.i185.i = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  store i64 3, ptr %.sroa.5.0..sroa_idx.i185.i, align 8, !alias.scope !3980, !noalias !3983
  %i.oj = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  store ptr %i.oc, ptr %i.oj, align 8, !alias.scope !3980, !noalias !3983
  invoke void @_RNvNtCscTw95cGIolY_7tracing15___macro_support13___tracing_log(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.nr, ptr noundef nonnull %i.nv, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.nw, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.ac, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.ab)
          to label %bb.fg unwind label %bb.ff, !noalias !3937

bb.ff:                                            ; preds = %bb.fe
  %i.ok = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !3933
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !3933
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !3933
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !noalias !3933
  br label %bb.fn

bb.fg:                                            ; preds = %bb.fe
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !3933
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !3933
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !3933
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !noalias !3933
  br label %bb.fh

bb.fh:                                            ; preds = %bb.fk, %bb.fg, %bb.fd, %bb.ey, %bb.ex
  %.sroa.019.0.copyload.i = load i64, ptr %i.ah, align 8, !noalias !3933
  %.sroa.420.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.416.i, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.420.0..sroa_idx.i, i64 64, i1 false), !noalias !3933
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah), !noalias !3933
  br label %bb.fs

bb.fi:                                            ; preds = %bb.ew
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag), !noalias !3933
  %i.ol = load ptr, ptr @_RNvNCNCNvNtNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage9retry_ext19ObjectStoreRetryExt19delete_with_retries00s_10___CALLSITE, align 8, !noalias !3933, !nonnull !7, !align !154, !noundef !7
  %i.om = getelementptr inbounds nuw i8, ptr %i.ol, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af), !noalias !3933
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae), !noalias !3933
  store ptr @63, ptr %i.ae, align 8, !noalias !3933
  %i.on = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  store ptr inttoptr (i64 83 to ptr), ptr %i.on, align 8, !noalias !3933
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad), !noalias !3933
  store ptr %i.ah, ptr %i.ad, align 8, !noalias !3933
  store ptr %i.ae, ptr %i.af, align 8, !noalias !3933
  %i.oo = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  store ptr @56, ptr %i.oo, align 8, !noalias !3933
  %i.op = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  store ptr %i.fe, ptr %i.op, align 8, !noalias !3933
  %i.oq = getelementptr inbounds nuw i8, ptr %i.af, i64 24
  store ptr @57, ptr %i.oq, align 8, !noalias !3933
  %i.or = getelementptr inbounds nuw i8, ptr %i.af, i64 32
  store ptr %i.ad, ptr %i.or, align 8, !noalias !3933
  %i.os = getelementptr inbounds nuw i8, ptr %i.af, i64 40
  store ptr @62, ptr %i.os, align 8, !noalias !3933
  store i64 1, ptr %i.ag, align 8, !noalias !3933
  %.sroa.7198.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  store ptr %i.af, ptr %.sroa.7198.0..sroa_idx.i, align 8, !noalias !3933
  %.sroa.8199.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  store i64 3, ptr %.sroa.8199.0..sroa_idx.i, align 8, !noalias !3933
  %.sroa.9200.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 24
  store ptr %i.om, ptr %.sroa.9200.0..sroa_idx.i, align 8, !noalias !3933
  invoke fastcc void @_RNCNCNCNvYDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_NtNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage9retry_ext19ObjectStoreRetryExt19delete_with_retries00s_0Cs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef align 8 captures(address) dereferenceable(32) %i.ag)
          to label %bb.fk unwind label %bb.fj, !noalias !3937

bb.fj:                                            ; preds = %bb.fi
  %i.ot = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag), !noalias !3933
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !noalias !3933
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae), !noalias !3933
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af), !noalias !3933
  br label %bb.fn

bb.fk:                                            ; preds = %bb.fi
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag), !noalias !3933
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !noalias !3933
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae), !noalias !3933
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af), !noalias !3933
  br label %bb.fh

bb.fl:                                            ; preds = %bb.by
  %i.ou = icmp ne i64 %i.hp, -9223372036854775800
  call void @llvm.assume(i1 %i.ou)
  %i.ov = icmp eq i64 %i.hp, -9223372036854775802
  br i1 %i.ov, label %.thread49, label %bb.fm

bb.fm:                                            ; preds = %bb.fl
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCsjyY8HP3IvQ6_12object_store5ErrorECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef align 8 dereferenceable(72) %i.aq)
          to label %.thread49 unwind label %bb.ax, !noalias !3937

bb.fn:                                            ; preds = %bb.fj, %bb.ff, %bb.fc, %bb.ez, %bb.eu, %bb.es
  %.pn60.pn.pn.i = phi { ptr, i32 } [ %i.ot, %bb.fj ], [ %i.nq, %bb.ez ], [ %i.nh, %bb.es ], [ %i.ok, %bb.ff ], [ %i.oa, %bb.fc ], [ %i.nj, %bb.eu ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCsjyY8HP3IvQ6_12object_store5ErrorECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef align 8 dereferenceable(72) %i.ah) #30
          to label %bb.fo unwind label %bb.dq, !noalias !3937

bb.fo:                                            ; preds = %bb.fn
end_hunk_1
