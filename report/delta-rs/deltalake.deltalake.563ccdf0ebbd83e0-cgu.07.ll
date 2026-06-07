inline.NumInlined: 7758
inline.NumDeleted: 2965
begin_hunk_0_@_RINvMs2_NtNtCskQDtHcQtBkN_5tokio7runtime4parkNtB6_16CachedParkThread8block_onNCNCNvMsl_Cs7p2uQeJxui2_9deltalakeNtB1n_13RawDeltaTable16cleanup_metadata0s_0EB1n_:bb.a

bb.ei:                                            ; preds = %bb.eh
  %i.px = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bh), !noalias !2595
  br label %bb.ek

bb.ej:                                            ; preds = %bb.eh
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !2595
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bh), !noalias !2595
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bj), !noalias !2595
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bk), !noalias !2595
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bl), !noalias !2595
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bm), !noalias !2595
  br label %bb.ey

bb.ek:                                            ; preds = %bb.ei, %bb.ef
  %.pn32.pn.i.i.i.i = phi { ptr, i32 } [ %i.px, %bb.ei ], [ %.pn30.i.i.i.i, %bb.ef ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bj), !noalias !2595
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bk), !noalias !2595
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bl), !noalias !2595
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bm), !noalias !2595
  br label %bb.iu

bb.el:                                            ; preds = %bb.ds
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bt), !noalias !2595
  %i.py = load ptr, ptr @_RNvNCNvNtNtCs14kWLkQVSKO_14deltalake_core8protocol11checkpoints24cleanup_expired_logs_for0s0_10___CALLSITE, align 8, !noalias !2595, !nonnull !3, !align !39, !noundef !3
  %i.pz = getelementptr inbounds nuw i8, ptr %i.py, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bs), !noalias !2595
  call void @llvm.lifetime.start.p0(ptr nonnull %i.br), !noalias !2595
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bq), !noalias !2595
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bp), !noalias !2595
  %i.qa = load i64, ptr %i.ea, align 8, !noalias !2595, !noundef !3
  invoke void @_RNvYNtNtNtCshmPyUV8PP35_6chrono6offset3utc3UtcNtB6_8TimeZone20timestamp_millis_optCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([28 x i8]) align 4 captures(none) dereferenceable(28) %i.bp, ptr noalias noundef nonnull readonly captures(address, read_provenance) inttoptr (i64 1 to ptr), i64 noundef %i.qa)
          to label %bb.en unwind label %bb.em, !noalias !2599

bb.em:                                            ; preds = %bb.el
  %i.qb = landingpad { ptr, i32 }
          cleanup
  br label %bb.eq

bb.en:                                            ; preds = %bb.el
  call void @llvm.experimental.noalias.scope.decl(metadata !2677)
  call void @llvm.experimental.noalias.scope.decl(metadata !2680)
  %i.qc = load i32, ptr %i.bp, align 4, !range !2664, !alias.scope !2680, !noalias !2682, !noundef !3
  switch i32 %i.qc, label %default.unreachable [
    i32 0, label %bb.es
    i32 1, label %bb.eo
    i32 2, label %bb.ep
  ], !prof !2667

bb.eo:                                            ; preds = %bb.en
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !2684
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.o, ptr noundef nonnull readonly align 4 dereferenceable(12) %i.en, i64 12, i1 false), !noalias !2682
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !2684
  %i.qd = getelementptr inbounds nuw i8, ptr %i.bp, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.n, ptr noundef nonnull readonly align 4 dereferenceable(12) %i.qd, i64 12, i1 false), !noalias !2682
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !2684
  store ptr %i.o, ptr %i.m, align 8, !noalias !2684
  %.sroa.42.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store ptr @_RNvXsz_NtCshmPyUV8PP35_6chrono8datetimeINtB5_8DateTimeNtNtNtB7_6offset3utc3UtcENtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmtCs7p2uQeJxui2_9deltalake, ptr %.sroa.42.0..sroa_idx.i.i.i.i.i, align 8, !noalias !2684
  %i.qe = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  store ptr %i.n, ptr %i.qe, align 8, !noalias !2684
  %.sroa.46.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  store ptr @_RNvXsz_NtCshmPyUV8PP35_6chrono8datetimeINtB5_8DateTimeNtNtNtB7_6offset3utc3UtcENtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmtCs7p2uQeJxui2_9deltalake, ptr %.sroa.46.0..sroa_idx.i.i.i.i.i, align 8, !noalias !2684
  invoke void @_RNvNtCsbvkFyIu7lgC_4core9panicking9panic_fmt(ptr noundef nonnull @259, ptr noundef nonnull %i.m, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @222) #34
          to label %.noexc222.i.i.i.i unwind label %bb.er, !noalias !2599

.noexc222.i.i.i.i:                                ; preds = %bb.eo
  unreachable

bb.ep:                                            ; preds = %bb.en
  invoke void @_RNvNtCsbvkFyIu7lgC_4core9panicking9panic_fmt(ptr noundef nonnull @260, ptr noundef nonnull inttoptr (i64 37 to ptr), ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @222) #36
          to label %.noexc223.i.i.i.i unwind label %bb.er, !noalias !2599

.noexc223.i.i.i.i:                                ; preds = %bb.ep
  unreachable

bb.eq:                                            ; preds = %bb.er, %bb.em
  %.pn37.i.i.i.i = phi { ptr, i32 } [ %i.qf, %bb.er ], [ %i.qb, %bb.em ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bp), !noalias !2595
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bt), !noalias !2595
  br label %bb.iv

bb.er:                                            ; preds = %bb.ep, %bb.eo
  %i.qf = landingpad { ptr, i32 }
          cleanup
  br label %bb.eq

bb.es:                                            ; preds = %bb.en
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.bq, ptr noundef nonnull readonly align 4 dereferenceable(12) %i.en, i64 12, i1 false), !alias.scope !2685, !noalias !2686
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bp), !noalias !2595
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bo), !noalias !2595
  store ptr %i.bq, ptr %i.bo, align 8, !noalias !2595
  store ptr @_RNvXsz_NtCshmPyUV8PP35_6chrono8datetimeINtB5_8DateTimeNtNtNtB7_6offset3utc3UtcENtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmtCs7p2uQeJxui2_9deltalake, ptr %.sroa.5330.0..sroa_idx.i.i.i.i, align 8, !noalias !2595
  store ptr @223, ptr %i.br, align 8, !noalias !2595
  store ptr %i.bo, ptr %i.eo, align 8, !noalias !2595
  store ptr %i.br, ptr %i.bs, align 8, !noalias !2595
  store ptr @54, ptr %i.ep, align 8, !noalias !2595
  store i64 1, ptr %i.bt, align 8, !noalias !2595
  store ptr %i.bs, ptr %.sroa.7327.0..sroa_idx.i.i.i.i, align 8, !noalias !2595
  store i64 1, ptr %.sroa.8328.0..sroa_idx.i.i.i.i, align 8, !noalias !2595
  store ptr %i.pz, ptr %.sroa.9.0..sroa_idx.i.i.i.i, align 8, !noalias !2595
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !2595
  %i.qg = load ptr, ptr @_RNvNCNvNtNtCs14kWLkQVSKO_14deltalake_core8protocol11checkpoints24cleanup_expired_logs_for0s0_10___CALLSITE, align 8, !noalias !2687, !nonnull !3, !align !39, !noundef !3
  invoke void @_RNvMNtCs2y6mmZ7bjoM_12tracing_core5eventNtB2_5Event8dispatch(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.qg, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.bt)
          to label %.noexc229.i.i.i.i unwind label %bb.ew, !noalias !2599

.noexc229.i.i.i.i:                                ; preds = %bb.es
  %i.qh = load atomic i8, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher6EXISTS monotonic, align 1, !noalias !2687
  %i.qi = icmp eq i8 %i.qh, 0
  br i1 %i.qi, label %bb.et, label %bb.ex

bb.et:                                            ; preds = %.noexc229.i.i.i.i
  %i.qj = load atomic i64, ptr @_RNvCsaljjC7ZTCQu_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8, !noalias !2687 ; 2 uses
  %i.qk = icmp ult i64 %i.qj, 6
  call void @llvm.assume(i1 %i.qk)
  %i.ql = icmp samesign ugt i64 %i.qj, 3
  br i1 %i.ql, label %bb.eu, label %bb.ex

bb.eu:                                            ; preds = %bb.et
  %i.qm = load ptr, ptr @_RNvNCNvNtNtCs14kWLkQVSKO_14deltalake_core8protocol11checkpoints24cleanup_expired_logs_for0s0_10___CALLSITE, align 8, !noalias !2687, !nonnull !3, !align !39, !noundef !3 ; 3 uses
  %i.qn = getelementptr inbounds nuw i8, ptr %i.qm, i64 32
  %i.qo = load ptr, ptr %i.qn, align 8, !noalias !2599, !nonnull !3, !noundef !3
  %i.qp = getelementptr inbounds nuw i8, ptr %i.qm, i64 40
  %i.qq = load i64, ptr %i.qp, align 8, !noalias !2599, !noundef !3
  store i64 4, ptr %i.l, align 8, !noalias !2687
  store ptr %i.qo, ptr %.sroa.3.0..sroa_idx.i227.i.i.i.i, align 8, !noalias !2687
  store i64 %i.qq, ptr %.sroa.5.0..sroa_idx.i228.i.i.i.i, align 8, !noalias !2687
  %i.qr = invoke { ptr, ptr } @_RNvCsaljjC7ZTCQu_3log6logger()
          to label %.noexc230.i.i.i.i unwind label %bb.ew, !noalias !2599 ; 2 uses

.noexc230.i.i.i.i:                                ; preds = %bb.eu
  %i.qs = extractvalue { ptr, ptr } %i.qr, 0      ; 2 uses
  %i.qt = extractvalue { ptr, ptr } %i.qr, 1      ; 2 uses
  %i.qu = getelementptr inbounds nuw i8, ptr %i.qt, i64 24
  %i.qv = load ptr, ptr %i.qu, align 8, !invariant.load !3, !noalias !2599, !nonnull !3
  %i.qw = invoke noundef zeroext i1 %i.qv(ptr noundef %i.qs, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.l) #32
          to label %.noexc231.i.i.i.i unwind label %bb.ew, !noalias !2599, !inline_history !2690

.noexc231.i.i.i.i:                                ; preds = %.noexc230.i.i.i.i
  br i1 %i.qw, label %bb.ev, label %bb.ex

bb.ev:                                            ; preds = %.noexc231.i.i.i.i
  invoke void @_RNvNtCscTw95cGIolY_7tracing15___macro_support13___tracing_log(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.qm, ptr noundef nonnull %i.qs, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.qt, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.l, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.bt)
          to label %bb.ex unwind label %bb.ew, !noalias !2599

bb.ew:                                            ; preds = %bb.ev, %.noexc230.i.i.i.i, %bb.eu, %bb.es
  %i.qx = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bt), !noalias !2595
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bo), !noalias !2595
  br label %bb.iv

bb.ex:                                            ; preds = %bb.ev, %.noexc231.i.i.i.i, %bb.et, %.noexc229.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !2595
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bt), !noalias !2595
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bo), !noalias !2595
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bq), !noalias !2595
  call void @llvm.lifetime.end.p0(ptr nonnull %i.br), !noalias !2595
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bs), !noalias !2595
  br label %bb.ey

bb.ey:                                            ; preds = %bb.ex, %bb.ej, %bb.dz, %bb.du, %bb.dt
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bg), !noalias !2595
  %.val167.i.i.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i57.i.i, align 8, !noalias !2595, !nonnull !3, !noundef !3 ; 3 uses
  %.val168.i.i.i.i = load i64, ptr %i.eu, align 8, !noalias !2595, !noundef !3 ; 2 uses
  %.idx.i.i.i.i = mul nuw nsw i64 %.val168.i.i.i.i, 96
  %i.qy = getelementptr inbounds nuw i8, ptr %.val167.i.i.i.i, i64 %.idx.i.i.i.i ; 2 uses
  store ptr %.val167.i.i.i.i, ptr %i.bg, align 8, !alias.scope !2691, !noalias !2595
  store ptr %i.qy, ptr %.sroa.5340.0..sroa_idx.i.i.i.i, align 8, !alias.scope !2691, !noalias !2595
  store ptr %i.ea, ptr %.sroa.6341.0..sroa_idx.i.i.i.i, align 8, !alias.scope !2691, !noalias !2595
  call void @llvm.experimental.noalias.scope.decl(metadata !2695)
  call void @llvm.experimental.noalias.scope.decl(metadata !2698)
  call void @llvm.experimental.noalias.scope.decl(metadata !2701)
  call void @llvm.experimental.noalias.scope.decl(metadata !2704)
  call void @llvm.experimental.noalias.scope.decl(metadata !2707)
  call void @llvm.experimental.noalias.scope.decl(metadata !2710)
  call void @llvm.experimental.noalias.scope.decl(metadata !2713)
  call void @llvm.experimental.noalias.scope.decl(metadata !2716)
  call void @llvm.experimental.noalias.scope.decl(metadata !2719)
  %i.qz = icmp eq i64 %.val168.i.i.i.i, 0
  br i1 %i.qz, label %.thread526.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i:                 ; preds = %bb.ey, %.loopexit.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.ra = phi ptr [ %i.rb, %.loopexit.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.val167.i.i.i.i, %bb.ey ] ; 7 uses
  %i.rb = getelementptr inbounds nuw i8, ptr %i.ra, i64 96 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2722)
  %i.rc = load i64, ptr %i.ra, align 8, !range !1996, !alias.scope !2725, !noalias !2728, !noundef !3
  %i.rd = icmp eq i64 %i.rc, -9223372036854775808
  br i1 %i.rd, label %.loopexit.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.ez

bb.ez:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !2736)
  call void @llvm.experimental.noalias.scope.decl(metadata !2739)
  %i.re = getelementptr inbounds nuw i8, ptr %i.ra, i64 8
  %i.rf = load ptr, ptr %i.re, align 8, !alias.scope !2742, !noalias !2743, !nonnull !3, !noundef !3
  %i.rg = getelementptr inbounds nuw i8, ptr %i.ra, i64 16
  %i.rh = load i64, ptr %i.rg, align 8, !alias.scope !2742, !noalias !2743, !noundef !3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !2747
  %i.ri = load atomic i32, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtCs14kWLkQVSKO_14deltalake_core8logstore15DELTA_LOG_REGEX, i64 32) acquire, align 8, !noalias !2747
  %i.rj = icmp eq i32 %i.ri, 0
  br i1 %i.rj, label %_RINvMs0_NtNtCs2pqxYH9ZEk8_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockNtNtNtCsonPGffhQyS_5regex5regex6string5RegexE5force0ECs7p2uQeJxui2_9deltalake.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.fa, !prof !46

bb.fa:                                            ; preds = %bb.ez
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !2747
  store ptr @_RNvNtCs14kWLkQVSKO_14deltalake_core8logstore15DELTA_LOG_REGEX, ptr %i.i, align 8, !noalias !2747
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !2747
  store ptr %i.i, ptr %i.h, align 8, !noalias !2747
  invoke void @_RNvMs0_NtNtNtNtCs2pqxYH9ZEk8_3std3sys4sync4once5futexNtB5_4Once4call(ptr noundef nonnull align 4 getelementptr inbounds nuw (i8, ptr @_RNvNtCs14kWLkQVSKO_14deltalake_core8logstore15DELTA_LOG_REGEX, i64 32), i1 noundef zeroext true, ptr noundef nonnull %i.h, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) @10, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @8)
          to label %.noexc233.i.i.i.i unwind label %.loopexit431.i.i.i.i, !noalias !2599

.noexc233.i.i.i.i:                                ; preds = %bb.fa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !2747
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !2747
  br label %_RINvMs0_NtNtCs2pqxYH9ZEk8_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockNtNtNtCsonPGffhQyS_5regex5regex6string5RegexE5force0ECs7p2uQeJxui2_9deltalake.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

_RINvMs0_NtNtCs2pqxYH9ZEk8_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockNtNtNtCsonPGffhQyS_5regex5regex6string5RegexE5force0ECs7p2uQeJxui2_9deltalake.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.noexc233.i.i.i.i, %bb.ez
  invoke fastcc void @_RNvMs4_NtNtCsonPGffhQyS_5regex5regex6stringNtB5_5Regex11captures_at(ptr noalias noundef align 8 captures(none) dereferenceable(72) %i.k, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @_RNvNtCs14kWLkQVSKO_14deltalake_core8logstore15DELTA_LOG_REGEX, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.rf, i64 noundef %i.rh) #32
          to label %.noexc234.i.i.i.i unwind label %.loopexit431.i.i.i.i

.noexc234.i.i.i.i:                                ; preds = %_RINvMs0_NtNtCs2pqxYH9ZEk8_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockNtNtNtCsonPGffhQyS_5regex5regex6string5RegexE5force0ECs7p2uQeJxui2_9deltalake.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.rk = load i64, ptr %i.k, align 8, !range !7, !noalias !2747, !noundef !3
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.rk, 2
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.loopexit.sink.split.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.fb

bb.fb:                                            ; preds = %.noexc234.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !2747
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.j, ptr noundef nonnull align 8 dereferenceable(72) %i.k, i64 72, i1 false), !noalias !2747
  call void @llvm.experimental.noalias.scope.decl(metadata !2748)
  call void @llvm.experimental.noalias.scope.decl(metadata !2751)
  %i.rl = load i32, ptr %i.ev, align 8, !range !2754, !alias.scope !2755, !noalias !2756, !noundef !3
  %i.rm = load i32, ptr %i.ew, align 4, !alias.scope !2755, !noalias !2756
  %i.rn = trunc nuw i32 %i.rl to i1
  br i1 %i.rn, label %bb.fc, label %_RNCNCNCNvNtNtCs14kWLkQVSKO_14deltalake_core8protocol11checkpoints24cleanup_expired_logs_for0s_00Cs7p2uQeJxui2_9deltalake.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

bb.fc:                                            ; preds = %bb.fb
  %i.ro = load ptr, ptr %i.ex, align 8, !alias.scope !2755, !noalias !2756, !nonnull !3, !noundef !3 ; 2 uses
  %i.rp = getelementptr inbounds nuw i8, ptr %i.ro, i64 32
  %i.rq = load i64, ptr %i.rp, align 8, !noalias !2759, !noundef !3 ; 3 uses
  %i.rr = icmp ult i64 %i.rq, 1152921504606846976
  call void @llvm.assume(i1 %i.rr)
  %i.rs = icmp eq i64 %i.rq, 1
  br i1 %i.rs, label %bb.fe, label %bb.fd

bb.fd:                                            ; preds = %bb.fc
  %i.rt = zext i32 %i.rm to i64                   ; 2 uses
  %i.ru = icmp samesign ugt i64 %i.rq, %i.rt
  br i1 %i.ru, label %_RNvMs5_NtNtCslw7hBPHc6qc_14regex_automata4util8capturesNtB5_9GroupInfo4slot.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_RNCNCNCNvNtNtCs14kWLkQVSKO_14deltalake_core8protocol11checkpoints24cleanup_expired_logs_for0s_00Cs7p2uQeJxui2_9deltalake.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

_RNvMs5_NtNtCslw7hBPHc6qc_14regex_automata4util8capturesNtB5_9GroupInfo4slot.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.fd
  %i.rv = getelementptr inbounds nuw i8, ptr %i.ro, i64 24
  %i.rw = load ptr, ptr %i.rv, align 8, !noalias !2759, !nonnull !3, !noundef !3
  %i.rx = getelementptr inbounds nuw [8 x i8], ptr %i.rw, i64 %i.rt ; 2 uses
  %i.ry = getelementptr inbounds nuw i8, ptr %i.rx, i64 4
  %i.rz = load i32, ptr %i.ry, align 4, !noalias !2759, !noundef !3
  %i.sa = zext i32 %i.rz to i64
  %i.sb = load i32, ptr %i.rx, align 4, !noalias !2759, !noundef !3
  %i.sc = zext i32 %i.sb to i64                   ; 3 uses
  %i.sd = sub nsw i64 %i.sa, %i.sc
  %i.se = icmp ugt i64 %i.sd, 1
  br i1 %i.se, label %bb.ff, label %_RNCNCNCNvNtNtCs14kWLkQVSKO_14deltalake_core8protocol11checkpoints24cleanup_expired_logs_for0s_00Cs7p2uQeJxui2_9deltalake.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

bb.fe:                                            ; preds = %bb.ff, %bb.fc
  %.sroa.038.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.sc, %bb.ff ], [ 2, %bb.fc ] ; 2 uses
  %.sroa.040.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.si, %bb.ff ], [ 3, %bb.fc ] ; 2 uses
  %i.sf = load ptr, ptr %i.ey, align 8, !alias.scope !2755, !noalias !2756, !nonnull !3, !noundef !3 ; 2 uses
  %i.sg = load i64, ptr %i.ez, align 8, !alias.scope !2755, !noalias !2756, !noundef !3 ; 2 uses
  %i.sh = icmp ult i64 %.sroa.038.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %i.sg
  br i1 %i.sh, label %bb.fg, label %_RNCNCNCNvNtNtCs14kWLkQVSKO_14deltalake_core8protocol11checkpoints24cleanup_expired_logs_for0s_00Cs7p2uQeJxui2_9deltalake.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

bb.ff:                                            ; preds = %_RNvMs5_NtNtCslw7hBPHc6qc_14regex_automata4util8capturesNtB5_9GroupInfo4slot.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.si = add nuw nsw i64 %i.sc, 1
  br label %bb.fe

bb.fg:                                            ; preds = %bb.fe
  %i.sj = getelementptr inbounds nuw [8 x i8], ptr %i.sf, i64 %.sroa.038.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.sk = load i64, ptr %i.sj, align 8, !noalias !2759, !noundef !3 ; 5 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp ne i64 %i.sk, 0
  %i.sl = icmp ult i64 %.sroa.040.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %i.sg
  %or.cond.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = select i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i1 %i.sl, i1 false
  br i1 %or.cond.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.fh, label %_RNCNCNCNvNtNtCs14kWLkQVSKO_14deltalake_core8protocol11checkpoints24cleanup_expired_logs_for0s_00Cs7p2uQeJxui2_9deltalake.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

bb.fh:                                            ; preds = %bb.fg
  %i.sm = getelementptr inbounds nuw [8 x i8], ptr %i.sf, i64 %.sroa.040.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.sn = load i64, ptr %i.sm, align 8, !noalias !2759, !noundef !3 ; 3 uses
  %.not44.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.sn, 0
  br i1 %.not44.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_RNCNCNCNvNtNtCs14kWLkQVSKO_14deltalake_core8protocol11checkpoints24cleanup_expired_logs_for0s_00Cs7p2uQeJxui2_9deltalake.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.fi

_RNCNCNCNvNtNtCs14kWLkQVSKO_14deltalake_core8protocol11checkpoints24cleanup_expired_logs_for0s_00Cs7p2uQeJxui2_9deltalake.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.fh, %bb.fg, %bb.fe, %_RNvMs5_NtNtCslw7hBPHc6qc_14regex_automata4util8capturesNtB5_9GroupInfo4slot.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.fd, %bb.fb
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCslw7hBPHc6qc_14regex_automata4util8captures8CapturesECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(40) %i.fc)
          to label %.noexc235.i.i.i.i unwind label %.loopexit431.i.i.i.i, !noalias !2599

.noexc235.i.i.i.i:                                ; preds = %_RNCNCNCNvNtNtCs14kWLkQVSKO_14deltalake_core8protocol11checkpoints24cleanup_expired_logs_for0s_00Cs7p2uQeJxui2_9deltalake.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !2747
  br label %.loopexit.sink.split.i.i.i.i.i.i.i.i.i.i.i.i.i

bb.fi:                                            ; preds = %bb.fh
  %i.so = add i64 %i.sk, -1                       ; 7 uses
  %i.sp = add i64 %i.sn, -1                       ; 6 uses
  %i.sq = load i64, ptr %i.fa, align 8, !alias.scope !2748, !noalias !2760, !noundef !3 ; 5 uses
  %i.sr = load ptr, ptr %i.fb, align 8, !alias.scope !2748, !noalias !2760, !nonnull !3, !noundef !3 ; 6 uses
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCslw7hBPHc6qc_14regex_automata4util8captures8CapturesECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(40) %i.fc)
          to label %.noexc236.i.i.i.i unwind label %.loopexit431.i.i.i.i, !noalias !2599

.noexc236.i.i.i.i:                                ; preds = %bb.fi
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !2747
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !2747
  %.not.i.i3.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp ugt i64 %i.so, %i.sp
  br i1 %.not.i.i3.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.gf, label %bb.fj

bb.fj:                                            ; preds = %.noexc236.i.i.i.i
  %i.ss = icmp eq i64 %i.so, 0
  br i1 %i.ss, label %bb.fl, label %bb.fk

bb.fk:                                            ; preds = %bb.fj
  %.not5.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp ult i64 %i.so, %i.sq
  br i1 %.not5.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.fn, label %bb.fm

bb.fl:                                            ; preds = %bb.fn, %bb.fm, %bb.fj
  %i.st = icmp eq i64 %i.sp, 0
  br i1 %i.st, label %bb.fr, label %bb.fo

bb.fm:                                            ; preds = %bb.fk
  %i.su = icmp eq i64 %i.so, %i.sq
  br i1 %i.su, label %bb.fl, label %bb.gf

bb.fn:                                            ; preds = %bb.fk
  %i.sv = getelementptr inbounds nuw i8, ptr %i.sr, i64 %i.so
  %i.sw = load i8, ptr %i.sv, align 1, !alias.scope !2761, !noalias !2764, !noundef !3
  %i.sx = icmp sgt i8 %i.sw, -65
  br i1 %i.sx, label %bb.fl, label %bb.gf

bb.fo:                                            ; preds = %bb.fl
  %.not6.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp ult i64 %i.sp, %i.sq
  br i1 %.not6.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.fq, label %bb.fp

bb.fp:                                            ; preds = %bb.fo
  %i.sy = icmp eq i64 %i.sp, %i.sq
  br i1 %i.sy, label %bb.fr, label %bb.gf

bb.fq:                                            ; preds = %bb.fo
  %i.sz = getelementptr inbounds nuw i8, ptr %i.sr, i64 %i.sp
  %i.ta = load i8, ptr %i.sz, align 1, !alias.scope !2761, !noalias !2764, !noundef !3
  %i.tb = icmp sgt i8 %i.ta, -65
  br i1 %i.tb, label %bb.fr, label %bb.gf

bb.fr:                                            ; preds = %bb.fq, %bb.fp, %bb.fl
  %i.tc = sub i64 %i.sn, %i.sk                    ; 5 uses
  %i.td = getelementptr inbounds nuw i8, ptr %i.sr, i64 %i.so ; 3 uses
  switch i64 %i.tc, label %thread-pre-split.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i [
    i64 0, label %.loopexit.i.i.i.i.i.i.i.i.i.i.i.i.i
    i64 1, label %bb.fs
  ]

bb.fs:                                            ; preds = %bb.fr
  %i.te = load i8, ptr %i.td, align 1, !alias.scope !2767, !noalias !2770, !noundef !3 ; 2 uses
  switch i8 %i.te, label %bb.ft [
    i8 43, label %.loopexit.i.i.i.i.i.i.i.i.i.i.i.i.i
    i8 45, label %.loopexit.i.i.i.i.i.i.i.i.i.i.i.i.i
  ]

thread-pre-split.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.fr
  %.pr.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load i8, ptr %i.td, align 1, !alias.scope !2767, !noalias !2770
  br label %bb.ft

bb.ft:                                            ; preds = %thread-pre-split.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.fs
  %i.tf = phi i8 [ %.pr.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %thread-pre-split.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.te, %bb.fs ]
  switch i8 %i.tf, label %bb.ga [
    i8 43, label %bb.fu
    i8 45, label %bb.fv
  ]

bb.fu:                                            ; preds = %bb.ft
  %i.tg = getelementptr inbounds nuw i8, ptr %i.sr, i64 %i.sk
  %i.th = add nsw i64 %i.tc, -1
  br label %bb.ga

bb.fv:                                            ; preds = %bb.ft
  %i.ti = getelementptr inbounds nuw i8, ptr %i.sr, i64 %i.sk ; 2 uses
  %i.tj = add nsw i64 %i.tc, -1                   ; 3 uses
  %i.tk = icmp samesign ult i64 %i.tc, 17
  br i1 %i.tk, label %.preheader114.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

.preheader114.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.fv
  %.not103137.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.tj, 0
  br i1 %.not103137.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.loopexit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph141.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i:       ; preds = %bb.fv, %bb.fy
  %.sroa.0.1136.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.tl, %bb.fy ], [ %i.ti, %bb.fv ] ; 2 uses
  %.sroa.26.1135.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.tm, %bb.fy ], [ %i.tj, %bb.fv ]
  %.sroa.084.0134.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.tx, %bb.fy ], [ 0, %bb.fv ]
  %i.tl = getelementptr inbounds nuw i8, ptr %.sroa.0.1136.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 1
  %i.tm = add nsw i64 %.sroa.26.1135.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, -1 ; 2 uses
  %i.tn = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %.sroa.084.0134.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 10) ; 2 uses
  %i.to = extractvalue { i64, i1 } %i.tn, 0
  %i.tp = extractvalue { i64, i1 } %i.tn, 1
  br i1 %i.tp, label %.loopexit.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.fw, !prof !37

bb.fw:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.tq = load i8, ptr %.sroa.0.1136.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 1, !alias.scope !2767, !noalias !2770, !noundef !3
  %i.tr = zext i8 %i.tq to i32
  %i.ts = add nsw i32 %i.tr, -48                  ; 2 uses
  %i.tt = icmp ult i32 %i.ts, 10
  br i1 %i.tt, label %bb.fx, label %.loopexit.i.i.i.i.i.i.i.i.i.i.i.i.i

bb.fx:                                            ; preds = %bb.fw
  %i.tu = zext nneg i32 %i.ts to i64
  %i.tv = call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %i.to, i64 %i.tu) ; 2 uses
  %i.tw = extractvalue { i64, i1 } %i.tv, 1
end_hunk_0
begin_hunk_1_@_RINvNtCsezwchj6CnTc_16futures_executor10local_pool8block_onNCNvXs3_NtCs1e4wyRlCFp2_18opentelemetry_otlp4spanNtB13_12SpanExporterNtNtNtCscq8Lx7CD32J_17opentelemetry_sdk5trace6export12SpanExporter6export0ECs7p2uQeJxui2_9deltalake:bb.a

bb.b:                                             ; preds = %.noexc
  invoke void @_RNvNtCsbvkFyIu7lgC_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @16, i64 noundef 64, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @249, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @18) #34
          to label %.noexc1 unwind label %bb.f

.noexc1:                                          ; preds = %bb.b
  unreachable

_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultNtNtCsezwchj6CnTc_16futures_executor5enter5EnterNtBJ_10EnterErrorE6expectCs7p2uQeJxui2_9deltalake.exit.i: ; preds = %.noexc
  invoke void @_RINvMs2_NtNtCs2pqxYH9ZEk8_3std6thread5localINtB6_8LocalKeyINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsezwchj6CnTc_16futures_executor10local_pool12ThreadNotifyEE4withNCINvB1u_12run_executorINtNtCsbvkFyIu7lgC_4core6result6ResultuNtNtCscq8Lx7CD32J_17opentelemetry_sdk5error12OTelSdkErrorENCINvB1u_8block_onNCNvXs3_NtCs1e4wyRlCFp2_18opentelemetry_otlp4spanNtB4V_12SpanExporterNtNtNtB3D_5trace6export12SpanExporter6export0E0E0B2W_ECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) @19, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %bb.d unwind label %bb.c

bb.c:                                             ; preds = %_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultNtNtCsezwchj6CnTc_16futures_executor5enter5EnterNtBJ_10EnterErrorE6expectCs7p2uQeJxui2_9deltalake.exit.i
  %i.f = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs2_NtCsezwchj6CnTc_16futures_executor5enterNtB5_5EnterNtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull %i.a)
          to label %.body unwind label %bb.e, !noalias !9653

bb.d:                                             ; preds = %_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultNtNtCsezwchj6CnTc_16futures_executor5enter5EnterNtBJ_10EnterErrorE6expectCs7p2uQeJxui2_9deltalake.exit.i
  invoke void @_RNvXs2_NtCsezwchj6CnTc_16futures_executor5enterNtB5_5EnterNtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull %i.a)
          to label %bb.g unwind label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #33, !noalias !9653
  unreachable

bb.f:                                             ; preds = %bb.d, %bb.b, %bb.a
  %i.h = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.c, %bb.f
  %eh.lpad-body = phi { ptr, i32 } [ %i.h, %bb.f ], [ %i.f, %bb.c ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvXs3_NtCs1e4wyRlCFp2_18opentelemetry_otlp4spanNtBO_12SpanExporterNtNtNtCscq8Lx7CD32J_17opentelemetry_sdk5trace6export12SpanExporter6export0ECs7p2uQeJxui2_9deltalake(ptr noundef nonnull align 8 %i.c) #37
          to label %bb.i unwind label %bb.h

bb.g:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvXs3_NtCs1e4wyRlCFp2_18opentelemetry_otlp4spanNtBO_12SpanExporterNtNtNtCscq8Lx7CD32J_17opentelemetry_sdk5trace6export12SpanExporter6export0ECs7p2uQeJxui2_9deltalake(ptr noundef nonnull align 8 %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  ret void

bb.h:                                             ; preds = %.body
  %i.i = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #33
  unreachable

bb.i:                                             ; preds = %.body
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: noinline nonlazybind uwtable
define hidden void @_RINvNtNtCs2pqxYH9ZEk8_3std3sys9backtrace28___rust_begin_short_backtraceNCINvMs0_NtNtCscq8Lx7CD32J_17opentelemetry_sdk5trace14span_processorNtB1g_18BatchSpanProcessor3newNtNtCs1e4wyRlCFp2_18opentelemetry_otlp4span12SpanExporterE0uECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(328) %0) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = alloca [24 x i8], align 8                ; 7 uses
  %i.c = alloca [24 x i8], align 8                ; 7 uses
  %i.d = alloca [24 x i8], align 8                ; 7 uses
  %i.e = alloca [24 x i8], align 8                ; 7 uses
  %i.f = alloca [24 x i8], align 8                ; 7 uses
  %i.g = alloca [24 x i8], align 8                ; 7 uses
  %i.h = alloca [24 x i8], align 8                ; 8 uses
  %i.i = alloca [16 x i8], align 8                ; 5 uses
  %i.j = alloca [24 x i8], align 8                ; 7 uses
  %i.k = alloca [24 x i8], align 8                ; 4 uses
  %i.l = alloca [24 x i8], align 8                ; 4 uses
  %i.m = alloca [24 x i8], align 8                ; 4 uses
  %i.n = alloca [24 x i8], align 8                ; 4 uses
  %i.o = alloca [24 x i8], align 8                ; 4 uses
  %i.p = alloca [24 x i8], align 8                ; 4 uses
  %i.q = alloca [24 x i8], align 8                ; 4 uses
  %i.r = alloca [24 x i8], align 8                ; 4 uses
  %i.s = alloca [24 x i8], align 8                ; 6 uses
  %i.t = alloca [16 x i8], align 8                ; 5 uses
  %i.u = alloca [32 x i8], align 8                ; 7 uses
  %i.v = alloca [32 x i8], align 8                ; 7 uses
  %i.w = alloca [24 x i8], align 8                ; 7 uses
  %i.x = alloca [16 x i8], align 8                ; 5 uses
  %i.y = alloca [32 x i8], align 8                ; 7 uses
  %i.z = alloca [32 x i8], align 8                ; 8 uses
  %i.aa = alloca [16 x i8], align 8               ; 5 uses
  %i.ab = alloca [48 x i8], align 8               ; 9 uses
  %i.ac = alloca [32 x i8], align 8               ; 7 uses
  %i.ad = alloca [24 x i8], align 8               ; 7 uses
  %i.ae = alloca [16 x i8], align 8               ; 5 uses
  %i.af = alloca [48 x i8], align 8               ; 9 uses
  %i.ag = alloca [32 x i8], align 8               ; 8 uses
  %i.ah = alloca [24 x i8], align 8               ; 7 uses
  %i.ai = alloca [16 x i8], align 16              ; 4 uses
  %i.aj = alloca [32 x i8], align 8               ; 6 uses
  %i.ak = alloca [32 x i8], align 8               ; 7 uses
  %i.al = alloca [24 x i8], align 8               ; 7 uses
  %i.am = alloca [16 x i8], align 16              ; 4 uses
  %i.an = alloca [32 x i8], align 8               ; 6 uses
  %i.ao = alloca [32 x i8], align 8               ; 8 uses
  %i.ap = alloca [8 x i8], align 8                ; 7 uses
  %i.aq = alloca [16 x i8], align 8               ; 5 uses
  %i.ar = alloca [48 x i8], align 8               ; 9 uses
  %i.as = alloca [32 x i8], align 8               ; 7 uses
  %i.at = alloca [24 x i8], align 8               ; 7 uses
  %i.au = alloca [16 x i8], align 8               ; 5 uses
  %i.av = alloca [48 x i8], align 8               ; 9 uses
  %i.aw = alloca [32 x i8], align 8               ; 8 uses
  %i.ax = alloca [24 x i8], align 8               ; 4 uses
  %i.ay = alloca [24 x i8], align 8               ; 7 uses
  %i.az = alloca [16 x i8], align 8               ; 5 uses
  %i.ba = alloca [32 x i8], align 8               ; 7 uses
  %i.bb = alloca [32 x i8], align 8               ; 7 uses
  %i.bc = alloca [24 x i8], align 8               ; 7 uses
  %i.bd = alloca [16 x i8], align 8               ; 5 uses
  %i.be = alloca [32 x i8], align 8               ; 7 uses
  %i.bf = alloca [32 x i8], align 8               ; 8 uses
  %i.bg = alloca [16 x i8], align 8               ; 6 uses
  %i.bh = alloca [24 x i8], align 8               ; 7 uses
  %i.bi = alloca [24 x i8], align 8               ; 4 uses
  %i.bj = alloca [16 x i8], align 16              ; 4 uses
  %i.bk = alloca [32 x i8], align 8               ; 6 uses
  %i.bl = alloca [32 x i8], align 8               ; 7 uses
  %i.bm = alloca [24 x i8], align 8               ; 7 uses
  %i.bn = alloca [16 x i8], align 16              ; 4 uses
  %i.bo = alloca [32 x i8], align 8               ; 6 uses
  %i.bp = alloca [32 x i8], align 8               ; 8 uses
  %i.bq = alloca [16 x i8], align 8               ; 6 uses
  %i.br = alloca [24 x i8], align 8               ; 7 uses
  %i.bs = alloca [16 x i8], align 16              ; 4 uses
  %i.bt = alloca [32 x i8], align 8               ; 6 uses
  %i.bu = alloca [32 x i8], align 8               ; 7 uses
  %i.bv = alloca [24 x i8], align 8               ; 7 uses
  %i.bw = alloca [16 x i8], align 16              ; 4 uses
  %i.bx = alloca [32 x i8], align 8               ; 6 uses
  %i.by = alloca [32 x i8], align 8               ; 8 uses
  %i.bz = alloca [8 x i8], align 8                ; 7 uses
  %i.ca = alloca [24 x i8], align 8               ; 10 uses
  %i.cb = alloca [8 x i8], align 8                ; 11 uses
  %i.cc = alloca [16 x i8], align 8               ; 9 uses
  %i.cd = alloca [24 x i8], align 8               ; 13 uses
  %i.ce = alloca [16 x i8], align 16              ; 4 uses
  %i.cf = alloca [16 x i8], align 8               ; 5 uses
  %i.cg = alloca [80 x i8], align 8               ; 13 uses
  %i.ch = alloca [32 x i8], align 8               ; 7 uses
  %i.ci = alloca [24 x i8], align 8               ; 7 uses
  %i.cj = alloca [16 x i8], align 16              ; 4 uses
  %i.ck = alloca [16 x i8], align 8               ; 5 uses
  %i.cl = alloca [80 x i8], align 8               ; 13 uses
  %i.cm = alloca [32 x i8], align 8               ; 8 uses
  %i.cn = alloca [2 x i8], align 2                ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9654)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.al)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.at)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ax)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bc)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bi)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bm)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bv)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ci)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cn), !noalias !9654
  %i.co = invoke noundef i16 @_RNvMNtCskFSgV2vI2Ct_13opentelemetry7contextNtB2_7Context32enter_telemetry_suppressed_scope()
          to label %bb.d unwind label %.thread.i, !noalias !9654

.thread.i:                                        ; preds = %bb.a
  %i.cp = landingpad { ptr, i32 }
          cleanup
  br label %bb.hp

bb.b:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtNtCscq8Lx7CD32J_17opentelemetry_sdk5trace6export8SpanDataEECs7p2uQeJxui2_9deltalake.exit.i
  %i.cq = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcINtNtNtB4_4sync6atomic6AtomicjEEECs7p2uQeJxui2_9deltalake.exit337.i

.body326.i:                                       ; preds = %bb.hi, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcINtNtNtB4_4sync6atomic6AtomicjEEECs7p2uQeJxui2_9deltalake.exit.i, %bb.c
  %.sroa.090.2.i = phi i1 [ %.sroa.090.4.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcINtNtNtB4_4sync6atomic6AtomicjEEECs7p2uQeJxui2_9deltalake.exit.i ], [ %.sroa.090.3.i, %bb.c ], [ false, %bb.hi ]
  %.pn187.i = phi { ptr, i32 } [ %.pn183.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcINtNtNtB4_4sync6atomic6AtomicjEEECs7p2uQeJxui2_9deltalake.exit.i ], [ %i.cr, %bb.c ], [ %i.ya, %bb.hi ] ; 2 uses
  invoke void @_RNvXs0_NtCskFSgV2vI2Ct_13opentelemetry7contextNtB5_12ContextGuardNtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull align 2 dereferenceable(2) %i.cn)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCskFSgV2vI2Ct_13opentelemetry7context12ContextGuardECs7p2uQeJxui2_9deltalake.exit.i unwind label %bb.cc

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCskFSgV2vI2Ct_13opentelemetry7context12ContextGuardECs7p2uQeJxui2_9deltalake.exit.i: ; preds = %.body326.i
  br i1 %.sroa.090.2.i, label %bb.hp, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcINtNtNtB4_4sync6atomic6AtomicjEEECs7p2uQeJxui2_9deltalake.exit337.i

bb.c:                                             ; preds = %bb.hj, %bb.y, %bb.v, %bb.t, %bb.s, %bb.p, %bb.n, %.noexc203.i, %bb.m, %bb.k, %bb.h, %bb.g
  %.sroa.090.3.i = phi i1 [ true, %bb.y ], [ false, %bb.hj ], [ true, %bb.p ], [ true, %bb.v ], [ true, %bb.t ], [ true, %bb.s ], [ true, %bb.m ], [ true, %.noexc203.i ], [ true, %bb.n ], [ true, %bb.h ], [ true, %bb.g ], [ true, %bb.k ]
  %i.cr = landingpad { ptr, i32 }
          cleanup
  br label %.body326.i

bb.d:                                             ; preds = %bb.a
  store i16 %i.co, ptr %i.cn, align 2, !noalias !9654
  %i.cs = load atomic i64, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core8metadata9MAX_LEVEL monotonic, align 8, !noalias !9654
  %i.ct = icmp ult i64 %i.cs, 2
  br i1 %i.ct, label %bb.f, label %bb.q

bb.e:                                             ; preds = %bb.ba
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.cu = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @_RNvNCNvMs0_NtNtCscq8Lx7CD32J_17opentelemetry_sdk5trace14span_processorNtB9_18BatchSpanProcessor3new010___CALLSITE, i64 16) monotonic, align 8, !noalias !9654 ; 3 uses
  switch i8 %i.cu, label %bb.g [
    i8 0, label %bb.q
    i8 1, label %bb.h
    i8 2, label %bb.h
  ], !prof !9657

bb.g:                                             ; preds = %bb.f
  %i.cv = invoke noundef i8 @_RNvMNtCs2y6mmZ7bjoM_12tracing_core8callsiteNtB2_15DefaultCallsite8register(ptr noundef nonnull align 8 @_RNvNCNvMs0_NtNtCscq8Lx7CD32J_17opentelemetry_sdk5trace14span_processorNtB9_18BatchSpanProcessor3new010___CALLSITE)
          to label %bb.i unwind label %bb.c       ; 2 uses

bb.h:                                             ; preds = %bb.f, %bb.i, %bb.f
  %.sroa.06.0.i = phi i8 [ %i.cv, %bb.i ], [ %i.cu, %bb.f ], [ %i.cu, %bb.f ]
  %i.cw = load ptr, ptr @_RNvNCNvMs0_NtNtCscq8Lx7CD32J_17opentelemetry_sdk5trace14span_processorNtB9_18BatchSpanProcessor3new010___CALLSITE, align 8, !noalias !9654, !nonnull !3, !align !39, !noundef !3
  %i.cx = invoke noundef zeroext i1 @_RNvNtCscTw95cGIolY_7tracing15___macro_support12___is_enabled(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.cw, i8 noundef %.sroa.06.0.i)
          to label %bb.j unwind label %bb.c

bb.i:                                             ; preds = %bb.g
  %i.cy = icmp eq i8 %i.cv, 0
  br i1 %i.cy, label %bb.q, label %bb.h

bb.j:                                             ; preds = %bb.h
  br i1 %i.cx, label %bb.k, label %bb.q

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cm), !noalias !9654
  %i.cz = load ptr, ptr @_RNvNCNvMs0_NtNtCscq8Lx7CD32J_17opentelemetry_sdk5trace14span_processorNtB9_18BatchSpanProcessor3new010___CALLSITE, align 8, !noalias !9654, !nonnull !3, !align !39, !noundef !3 ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cl), !noalias !9654
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ck), !noalias !9654
  store ptr inttoptr (i64 1 to ptr), ptr %i.ck, align 8, !noalias !9654
  %i.db = getelementptr inbounds nuw i8, ptr %i.ck, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %i.db, align 8, !noalias !9654
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cj), !noalias !9654
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.de = load i64, ptr %i.dd, align 8, !alias.scope !9654, !noundef !3
  %i.df = zext i64 %i.de to i128
  %i.dg = mul nuw nsw i128 %i.df, 1000
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.di = load i32, ptr %i.dh, align 8, !range !9658, !alias.scope !9654, !noundef !3
  %i.dj = udiv i32 %i.di, 1000000
  %i.dk = zext nneg i32 %i.dj to i128
  %i.dl = add nuw nsw i128 %i.dg, %i.dk
  store i128 %i.dl, ptr %i.cj, align 16, !noalias !9654
  %i.dm = getelementptr inbounds nuw i8, ptr %0, i64 272
  store ptr %i.ck, ptr %i.cl, align 8, !noalias !9654
  %i.dn = getelementptr inbounds nuw i8, ptr %i.cl, i64 8
  store ptr @54, ptr %i.dn, align 8, !noalias !9654
  %i.do = getelementptr inbounds nuw i8, ptr %i.cl, i64 16
  store ptr @56, ptr %i.do, align 8, !noalias !9654
  %i.dp = getelementptr inbounds nuw i8, ptr %i.cl, i64 24
  store ptr @57, ptr %i.dp, align 8, !noalias !9654
  %i.dq = getelementptr inbounds nuw i8, ptr %i.cl, i64 32
  store ptr %i.cj, ptr %i.dq, align 8, !noalias !9654
  %i.dr = getelementptr inbounds nuw i8, ptr %i.cl, i64 40
  store ptr @58, ptr %i.dr, align 8, !noalias !9654
  %i.ds = getelementptr inbounds nuw i8, ptr %i.cl, i64 48
  store ptr %i.dm, ptr %i.ds, align 8, !noalias !9654
  %i.dt = getelementptr inbounds nuw i8, ptr %i.cl, i64 56
  store ptr @59, ptr %i.dt, align 8, !noalias !9654
  %i.du = getelementptr inbounds nuw i8, ptr %i.cl, i64 64
  store ptr %i.dc, ptr %i.du, align 8, !noalias !9654
  %i.dv = getelementptr inbounds nuw i8, ptr %i.cl, i64 72
  store ptr @59, ptr %i.dv, align 8, !noalias !9654
  store i64 1, ptr %i.cm, align 8, !noalias !9654
  %.sroa.08.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cm, i64 8
  store ptr %i.cl, ptr %.sroa.08.sroa.4.0..sroa_idx.i, align 8, !noalias !9654
  %.sroa.08.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cm, i64 16
  store i64 5, ptr %.sroa.08.sroa.5.0..sroa_idx.i, align 8, !noalias !9654
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cm, i64 24
  store ptr %i.da, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !9654
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !9654
  invoke void @_RNvMNtCs2y6mmZ7bjoM_12tracing_core5eventNtB2_5Event8dispatch(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.cz, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.cm)
          to label %.noexc.i unwind label %bb.c

.noexc.i:                                         ; preds = %bb.k
  %i.dw = load atomic i8, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher6EXISTS monotonic, align 1, !noalias !9659
  %i.dx = icmp eq i8 %i.dw, 0
  br i1 %i.dx, label %bb.l, label %bb.o

bb.l:                                             ; preds = %.noexc.i
  %i.dy = load atomic i64, ptr @_RNvCsaljjC7ZTCQu_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8, !noalias !9659 ; 2 uses
  %i.dz = icmp ult i64 %i.dy, 6
  call void @llvm.assume(i1 %i.dz)
  %i.ea = icmp samesign ugt i64 %i.dy, 3
  br i1 %i.ea, label %bb.m, label %bb.o

bb.m:                                             ; preds = %bb.l
  %i.eb = load ptr, ptr @_RNvNCNvMs0_NtNtCscq8Lx7CD32J_17opentelemetry_sdk5trace14span_processorNtB9_18BatchSpanProcessor3new010___CALLSITE, align 8, !noalias !9659, !nonnull !3, !align !39, !noundef !3 ; 3 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 32
  %i.ed = load ptr, ptr %i.ec, align 8, !nonnull !3, !noundef !3
  %i.ee = getelementptr inbounds nuw i8, ptr %i.eb, i64 40
  %i.ef = load i64, ptr %i.ee, align 8, !noundef !3
  store i64 4, ptr %i.j, align 8, !noalias !9659
  %.sroa.3.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store ptr %i.ed, ptr %.sroa.3.0..sroa_idx.i.i, align 8, !noalias !9659
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  store i64 %i.ef, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !noalias !9659
  %i.eg = invoke { ptr, ptr } @_RNvCsaljjC7ZTCQu_3log6logger()
          to label %.noexc203.i unwind label %bb.c ; 2 uses

.noexc203.i:                                      ; preds = %bb.m
  %i.eh = extractvalue { ptr, ptr } %i.eg, 0      ; 2 uses
  %i.ei = extractvalue { ptr, ptr } %i.eg, 1      ; 2 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 24
  %i.ek = load ptr, ptr %i.ej, align 8, !invariant.load !3, !nonnull !3
  %i.el = invoke noundef zeroext i1 %i.ek(ptr noundef %i.eh, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.j) #32
          to label %.noexc204.i unwind label %bb.c, !inline_history !9662

.noexc204.i:                                      ; preds = %.noexc203.i
  br i1 %i.el, label %bb.n, label %bb.o

bb.n:                                             ; preds = %.noexc204.i
  invoke void @_RNvNtCscTw95cGIolY_7tracing15___macro_support13___tracing_log(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.eb, ptr noundef nonnull %i.eh, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.ei, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.j, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.cm)
          to label %bb.o unwind label %bb.c

bb.o:                                             ; preds = %bb.n, %.noexc204.i, %bb.l, %.noexc.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !9654
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cm), !noalias !9654
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cj), !noalias !9654
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ck), !noalias !9654
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cl), !noalias !9654
  br label %bb.p

bb.p:                                             ; preds = %bb.w, %bb.u, %bb.r, %bb.q, %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cd), !noalias !9654
  %i.em = getelementptr inbounds nuw i8, ptr %0, i64 264 ; 4 uses
  %i.en = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.eo = load i64, ptr %i.en, align 8, !alias.scope !9654, !noundef !3 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !9654
  invoke void @_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.s, i64 noundef %i.eo, i1 noundef zeroext false, i64 noundef 16, i64 noundef 352)
          to label %bb.x unwind label %bb.c

bb.q:                                             ; preds = %bb.j, %bb.i, %bb.f, %bb.d
  %i.ep = load atomic i8, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher6EXISTS monotonic, align 1, !noalias !9654
  %i.eq = icmp eq i8 %i.ep, 0
  br i1 %i.eq, label %bb.r, label %bb.p

bb.r:                                             ; preds = %bb.q
  %i.er = load atomic i64, ptr @_RNvCsaljjC7ZTCQu_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8, !noalias !9654 ; 2 uses
  %i.es = icmp ult i64 %i.er, 6
  tail call void @llvm.assume(i1 %i.es)
  %i.et = icmp samesign ugt i64 %i.er, 3
  br i1 %i.et, label %bb.s, label %bb.p

bb.s:                                             ; preds = %bb.r
  %i.eu = load ptr, ptr @_RNvNCNvMs0_NtNtCscq8Lx7CD32J_17opentelemetry_sdk5trace14span_processorNtB9_18BatchSpanProcessor3new010___CALLSITE, align 8, !noalias !9654, !nonnull !3, !align !39, !noundef !3 ; 3 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 32
  %i.ew = load ptr, ptr %i.ev, align 8, !nonnull !3, !noundef !3
  %i.ex = getelementptr inbounds nuw i8, ptr %i.eu, i64 40
  %i.ey = load i64, ptr %i.ex, align 8, !noundef !3
  store i64 4, ptr %i.ci, align 8, !noalias !9654
  %.sroa.396.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ci, i64 8
  store ptr %i.ew, ptr %.sroa.396.0..sroa_idx.i, align 8, !noalias !9654
  %.sroa.597.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ci, i64 16
  store i64 %i.ey, ptr %.sroa.597.0..sroa_idx.i, align 8, !noalias !9654
  %i.ez = invoke { ptr, ptr } @_RNvCsaljjC7ZTCQu_3log6logger()
          to label %bb.t unwind label %bb.c       ; 2 uses

bb.t:                                             ; preds = %bb.s
  %i.fa = extractvalue { ptr, ptr } %i.ez, 0      ; 2 uses
  %i.fb = extractvalue { ptr, ptr } %i.ez, 1      ; 2 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fb, i64 24
  %i.fd = load ptr, ptr %i.fc, align 8, !invariant.load !3, !nonnull !3
  %i.fe = invoke noundef zeroext i1 %i.fd(ptr noundef %i.fa, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ci)
          to label %bb.u unwind label %bb.c

bb.u:                                             ; preds = %bb.t
  br i1 %i.fe, label %bb.v, label %bb.p

bb.v:                                             ; preds = %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ch), !noalias !9654
  %i.ff = load ptr, ptr @_RNvNCNvMs0_NtNtCscq8Lx7CD32J_17opentelemetry_sdk5trace14span_processorNtB9_18BatchSpanProcessor3new010___CALLSITE, align 8, !noalias !9654, !nonnull !3, !align !39, !noundef !3
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ff, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cg), !noalias !9654
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cf), !noalias !9654
  store ptr inttoptr (i64 1 to ptr), ptr %i.cf, align 8, !noalias !9654
  %i.fh = getelementptr inbounds nuw i8, ptr %i.cf, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %i.fh, align 8, !noalias !9654
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ce), !noalias !9654
  %i.fi = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.fj = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.fk = load i64, ptr %i.fj, align 8, !alias.scope !9654, !noundef !3
  %i.fl = zext i64 %i.fk to i128
  %i.fm = mul nuw nsw i128 %i.fl, 1000
  %i.fn = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.fo = load i32, ptr %i.fn, align 8, !range !9658, !alias.scope !9654, !noundef !3
  %i.fp = udiv i32 %i.fo, 1000000
  %i.fq = zext nneg i32 %i.fp to i128
  %i.fr = add nuw nsw i128 %i.fm, %i.fq
  store i128 %i.fr, ptr %i.ce, align 16, !noalias !9654
  %i.fs = getelementptr inbounds nuw i8, ptr %0, i64 272
  store ptr %i.cf, ptr %i.cg, align 8, !noalias !9654
  %i.ft = getelementptr inbounds nuw i8, ptr %i.cg, i64 8
  store ptr @54, ptr %i.ft, align 8, !noalias !9654
  %i.fu = getelementptr inbounds nuw i8, ptr %i.cg, i64 16
  store ptr @56, ptr %i.fu, align 8, !noalias !9654
  %i.fv = getelementptr inbounds nuw i8, ptr %i.cg, i64 24
  store ptr @57, ptr %i.fv, align 8, !noalias !9654
  %i.fw = getelementptr inbounds nuw i8, ptr %i.cg, i64 32
end_hunk_1
begin_hunk_2_@_RINvNtNtCs2pqxYH9ZEk8_3std3sys9backtrace28___rust_begin_short_backtraceNCINvMs0_NtNtCscq8Lx7CD32J_17opentelemetry_sdk5trace14span_processorNtB1g_18BatchSpanProcessor3newNtNtCs1e4wyRlCFp2_18opentelemetry_otlp4span12SpanExporterE0uECs7p2uQeJxui2_9deltalake:bb.a
bb.af:                                            ; preds = %bb.ae
  %i.ia = sub nuw i64 %i.hr, %i.hx                ; 3 uses
  %.not.i.i = icmp samesign ult i32 %i.hs, %i.hy
  br i1 %.not.i.i, label %bb.ag, label %bb.ai

bb.ag:                                            ; preds = %bb.af
  %i.ib = icmp eq i64 %i.ia, 0
  br i1 %i.ib, label %bb.am, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.ic = add i64 %i.ia, -1
  %i.id = add nuw nsw i32 %i.hs, 1000000000
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.af
  %.pn.i.i = phi i32 [ %i.id, %bb.ah ], [ %i.hs, %bb.af ]
  %.sroa.05.0.i.i = phi i64 [ %i.ic, %bb.ah ], [ %i.ia, %bb.af ] ; 3 uses
  %.sroa.02.0.i.i = sub nuw nsw i32 %.pn.i.i, %i.hy ; 3 uses
  %i.ie = icmp samesign ult i32 %.sroa.02.0.i.i, 1000000000
  br i1 %i.ie, label %bb.am, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.if = icmp eq i64 %.sroa.05.0.i.i, -1
  br i1 %i.if, label %bb.al, label %bb.ak, !prof !37

bb.ak:                                            ; preds = %bb.aj
  %i.ig = add nuw i64 %.sroa.05.0.i.i, 1
  %i.ih = add nsw i32 %.sroa.02.0.i.i, -1000000000
  br label %bb.am

bb.al:                                            ; preds = %bb.aj
  invoke void @_RNvNtCsbvkFyIu7lgC_4core6option13expect_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @242, i64 noundef 25, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @244) #36
          to label %.noexc207.i unwind label %.loopexit.split-lp.i

.noexc207.i:                                      ; preds = %bb.al
  unreachable

bb.am:                                            ; preds = %bb.ak, %bb.ai, %bb.ag, %bb.ae
  %.sroa.4.0.i.i = phi i32 [ 1000000000, %bb.ae ], [ 1000000000, %bb.ag ], [ %i.ih, %bb.ak ], [ %.sroa.02.0.i.i, %bb.ai ] ; 2 uses
  %.sroa.0.0.i.i = phi i64 [ undef, %bb.ae ], [ undef, %bb.ag ], [ %i.ig, %bb.ak ], [ %.sroa.05.0.i.i, %bb.ai ]
  %i.ii = load i64, ptr %i.gu, align 8, !alias.scope !9654
  %i.ij = load i32, ptr %i.gv, align 8, !range !9658, !alias.scope !9654
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ca), !noalias !9654
  %.val.i = load i64, ptr %0, align 8, !alias.scope !9654 ; 2 uses
  %.val198.i = load ptr, ptr %i.gw, align 8, !alias.scope !9654 ; 6 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !9670)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !9673
  %i.ik = invoke { i64, i32 } @_RNvMNtCs2pqxYH9ZEk8_3std4timeNtB2_7Instant3now()
          to label %.noexc209.i unwind label %.loopexit.i ; 2 uses

.noexc209.i:                                      ; preds = %bb.am
  %.not.i = icmp eq i32 %.sroa.4.0.i.i, 1000000000 ; 2 uses
  %.sroa.012.0.i = select i1 %.not.i, i64 %i.ii, i64 %.sroa.0.0.i.i
  %.sroa.3.0.i = select i1 %.not.i, i32 %i.ij, i32 %.sroa.4.0.i.i
  %i.il = extractvalue { i64, i32 } %i.ik, 0
  %i.im = extractvalue { i64, i32 } %i.ik, 1
  store i64 %i.il, ptr %i.i, align 8, !noalias !9673
  store i32 %i.im, ptr %i.gx, align 8, !noalias !9673
  %i.in = invoke { i64, i32 } @_RNvMNtCs2pqxYH9ZEk8_3std4timeNtB2_7Instant11checked_add(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.i, i64 noundef %.sroa.012.0.i, i32 noundef range(i32 0, 1000000000) %.sroa.3.0.i)
          to label %.noexc210.i unwind label %.loopexit.i ; 2 uses

.noexc210.i:                                      ; preds = %.noexc209.i
  %i.io = extractvalue { i64, i32 } %i.in, 1      ; 4 uses
  %.not.i208.i = icmp eq i32 %i.io, 1000000000
  br i1 %.not.i208.i, label %bb.ar, label %bb.an

bb.an:                                            ; preds = %.noexc210.i
  %i.ip = extractvalue { i64, i32 } %i.in, 0      ; 3 uses
  switch i64 %.val.i, label %default.unreachable.i.i.i [
    i64 0, label %bb.ao
    i64 1, label %bb.ap
    i64 2, label %bb.aq
  ]

default.unreachable.i.i.i:                        ; preds = %bb.an
  unreachable

bb.ao:                                            ; preds = %bb.an
  invoke void @_RNvMs_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5arrayINtB4_7ChannelNtNtNtCscq8Lx7CD32J_17opentelemetry_sdk5trace14span_processor12BatchMessageE4recvCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.ca, ptr noundef nonnull align 128 %.val198.i, i64 %i.ip, i32 noundef range(i32 0, 1000000000) %i.io)
          to label %thread-pre-split.i unwind label %.loopexit.i

bb.ap:                                            ; preds = %bb.an
  invoke fastcc void @_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelNtNtNtCscq8Lx7CD32J_17opentelemetry_sdk5trace14span_processor12BatchMessageE4recvCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 captures(none) dereferenceable(24) %i.ca, ptr noundef nonnull align 128 %.val198.i, i64 %i.ip, i32 noundef range(i32 0, 1000000000) %i.io)
          to label %thread-pre-split.i unwind label %.loopexit.i

bb.aq:                                            ; preds = %bb.an
  invoke fastcc void @_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4zeroINtB5_7ChannelNtNtNtCscq8Lx7CD32J_17opentelemetry_sdk5trace14span_processor12BatchMessageE4recvCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.ca, ptr noundef nonnull align 8 %.val198.i, i64 %i.ip, i32 noundef range(i32 0, 1000000000) %i.io)
          to label %thread-pre-split.i unwind label %.loopexit.i

bb.ar:                                            ; preds = %.noexc210.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !9674
  switch i64 %.val.i, label %default.unreachable.i6.i.i [
    i64 0, label %bb.as
    i64 1, label %bb.at
    i64 2, label %bb.au
  ]

default.unreachable.i6.i.i:                       ; preds = %bb.ar
  unreachable

bb.as:                                            ; preds = %bb.ar
  invoke void @_RNvMs_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5arrayINtB4_7ChannelNtNtNtCscq8Lx7CD32J_17opentelemetry_sdk5trace14span_processor12BatchMessageE4recvCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.h, ptr noundef nonnull align 128 %.val198.i, i64 undef, i32 noundef 1000000000)
          to label %.noexc214.i unwind label %.loopexit.i

bb.at:                                            ; preds = %bb.ar
  invoke fastcc void @_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelNtNtNtCscq8Lx7CD32J_17opentelemetry_sdk5trace14span_processor12BatchMessageE4recvCs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.h, ptr noundef nonnull align 128 %.val198.i, i64 undef, i32 noundef 1000000000)
          to label %.noexc214.i unwind label %.loopexit.i

bb.au:                                            ; preds = %bb.ar
  invoke fastcc void @_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4zeroINtB5_7ChannelNtNtNtCscq8Lx7CD32J_17opentelemetry_sdk5trace14span_processor12BatchMessageE4recvCs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.h, ptr noundef nonnull align 8 %.val198.i, i64 undef, i32 noundef 1000000000)
          to label %.noexc214.i unwind label %.loopexit.i

.noexc214.i:                                      ; preds = %bb.au, %bb.at, %bb.as
  %i.iq = load i64, ptr %i.h, align 8, !range !1200, !noalias !9674, !noundef !3 ; 3 uses
  %i.ir = icmp eq i64 %i.iq, 4
  br i1 %i.ir, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %.noexc214.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !9674
  store i8 1, ptr %i.gy, align 8, !alias.scope !9670, !noalias !9654
  br label %bb.ax

bb.aw:                                            ; preds = %.noexc214.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.gy, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.0..sroa_idx2.i.i, i64 16, i1 false), !noalias !9654
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !9674
  br label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %bb.av
  store i64 %i.iq, ptr %i.ca, align 8, !alias.scope !9670, !noalias !9654
  br label %bb.ay

thread-pre-split.i:                               ; preds = %bb.aq, %bb.ap, %bb.ao
  %.pr.i = load i64, ptr %i.ca, align 8, !noalias !9654
  br label %bb.ay

bb.ay:                                            ; preds = %thread-pre-split.i, %bb.ax
  %i.is = phi i64 [ %.pr.i, %thread-pre-split.i ], [ %i.iq, %bb.ax ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !9673
  %i.it = icmp eq i64 %i.is, 4
  br i1 %i.it, label %bb.az, label %bb.ba

bb.az:                                            ; preds = %bb.ay
  %i.iu = load i8, ptr %i.gy, align 8, !range !40, !noalias !9654, !noundef !3
  %i.iv = trunc nuw i8 %i.iu to i1
  %i.iw = load atomic i64, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core8metadata9MAX_LEVEL monotonic, align 8, !noalias !9654
  %i.ix = icmp ult i64 %i.iw, 2                   ; 2 uses
  br i1 %i.iv, label %bb.fw, label %bb.ez

bb.ba:                                            ; preds = %bb.ay
  %.sroa.5.0.copyload.i = load i64, ptr %i.gy, align 8, !noalias !9654 ; 8 uses
  %.sroa.917.0.copyload.i = load ptr, ptr %.sroa.917.0..sroa_idx.i, align 8, !noalias !9654 ; 4 uses
  switch i64 %i.is, label %bb.e [
    i64 0, label %bb.be
    i64 1, label %bb.ce
    i64 2, label %bb.dd
    i64 3, label %bb.bb
  ]

bb.bb:                                            ; preds = %bb.ba
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ap), !noalias !9654
  %i.iy = inttoptr i64 %.sroa.5.0.copyload.i to ptr ; 2 uses
  store ptr %i.iy, ptr %i.ap, align 8, !noalias !9654
  %i.iz = icmp ne i64 %.sroa.5.0.copyload.i, 0
  call void @llvm.assume(i1 %i.iz)
  %i.ja = getelementptr inbounds nuw i8, ptr %i.iy, i64 16
  invoke void @_RNvXs3_NtCs1e4wyRlCFp2_18opentelemetry_otlp4spanNtB5_12SpanExporterNtNtNtCscq8Lx7CD32J_17opentelemetry_sdk5trace6export12SpanExporter12set_resource(ptr noalias noundef nonnull align 8 dereferenceable(232) %i.gz, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ja)
          to label %bb.ew unwind label %bb.eu

bb.bc:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit.i.i.i, %bb.bv, %bb.bt, %bb.bs, %bb.bp, %bb.bn, %.noexc225.i, %bb.bm, %bb.bk, %bb.bh, %bb.bg
  %i.jb = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.bz, %bb.bc
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.jb, %bb.bc ], [ %i.ld, %bb.bz ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !9677)
  call void @llvm.experimental.noalias.scope.decl(metadata !9680)
  %i.jc = load ptr, ptr %i.bz, align 8, !alias.scope !9683, !noalias !9654, !nonnull !3, !noundef !3
  %i.jd = atomicrmw sub ptr %i.jc, i64 1 release, align 8, !noalias !9683
  %i.je = icmp eq i64 %i.jd, 1
  br i1 %i.je, label %bb.bd, label %.body300.i

bb.bd:                                            ; preds = %.body.i
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcINtNtNtCsbvkFyIu7lgC_4core4sync6atomic6AtomicbEE9drop_slowCscq8Lx7CD32J_17opentelemetry_sdk(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.bz) #35
          to label %.body300.i unwind label %bb.cc

bb.be:                                            ; preds = %bb.ba
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bz), !noalias !9654
  %i.jf = inttoptr i64 %.sroa.5.0.copyload.i to ptr ; 2 uses
  store ptr %i.jf, ptr %i.bz, align 8, !noalias !9654
  %i.jg = icmp ne i64 %.sroa.5.0.copyload.i, 0
  call void @llvm.assume(i1 %i.jg)
  %i.jh = getelementptr inbounds nuw i8, ptr %i.jf, i64 16
  store atomic i8 0, ptr %i.jh monotonic, align 1
  %i.ji = load atomic i64, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core8metadata9MAX_LEVEL monotonic, align 8, !noalias !9654
  %i.jj = icmp ult i64 %i.ji, 2
  br i1 %i.jj, label %bb.bf, label %bb.bq

bb.bf:                                            ; preds = %bb.be
  %i.jk = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @_RNvNCNvMs0_NtNtCscq8Lx7CD32J_17opentelemetry_sdk5trace14span_processorNtB9_18BatchSpanProcessor3new0s_10___CALLSITE, i64 16) monotonic, align 8, !noalias !9654 ; 3 uses
  switch i8 %i.jk, label %bb.bg [
    i8 0, label %bb.bq
    i8 1, label %bb.bh
    i8 2, label %bb.bh
  ], !prof !9657

bb.bg:                                            ; preds = %bb.bf
  %i.jl = invoke noundef i8 @_RNvMNtCs2y6mmZ7bjoM_12tracing_core8callsiteNtB2_15DefaultCallsite8register(ptr noundef nonnull align 8 @_RNvNCNvMs0_NtNtCscq8Lx7CD32J_17opentelemetry_sdk5trace14span_processorNtB9_18BatchSpanProcessor3new0s_10___CALLSITE)
          to label %bb.bi unwind label %bb.bc     ; 2 uses

bb.bh:                                            ; preds = %bb.bf, %bb.bi, %bb.bf
  %.sroa.025.0.i = phi i8 [ %i.jl, %bb.bi ], [ %i.jk, %bb.bf ], [ %i.jk, %bb.bf ]
  %i.jm = load ptr, ptr @_RNvNCNvMs0_NtNtCscq8Lx7CD32J_17opentelemetry_sdk5trace14span_processorNtB9_18BatchSpanProcessor3new0s_10___CALLSITE, align 8, !noalias !9654, !nonnull !3, !align !39, !noundef !3
  %i.jn = invoke noundef zeroext i1 @_RNvNtCscTw95cGIolY_7tracing15___macro_support12___is_enabled(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.jm, i8 noundef %.sroa.025.0.i)
          to label %bb.bj unwind label %bb.bc

bb.bi:                                            ; preds = %bb.bg
  %i.jo = icmp eq i8 %i.jl, 0
  br i1 %i.jo, label %bb.bq, label %bb.bh

bb.bj:                                            ; preds = %bb.bh
  br i1 %i.jn, label %bb.bk, label %bb.bq

bb.bk:                                            ; preds = %bb.bj
  call void @llvm.lifetime.start.p0(ptr nonnull %i.by), !noalias !9654
  %i.jp = load ptr, ptr @_RNvNCNvMs0_NtNtCscq8Lx7CD32J_17opentelemetry_sdk5trace14span_processorNtB9_18BatchSpanProcessor3new0s_10___CALLSITE, align 8, !noalias !9654, !nonnull !3, !align !39, !noundef !3 ; 2 uses
  %i.jq = getelementptr inbounds nuw i8, ptr %i.jp, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bx), !noalias !9654
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bw), !noalias !9654
  store <2 x ptr> <ptr inttoptr (i64 1 to ptr), ptr inttoptr (i64 1 to ptr)>, ptr %i.bw, align 16, !noalias !9654
  store ptr %i.bw, ptr %i.bx, align 8, !noalias !9654
  store <2 x ptr> <ptr @54, ptr @61>, ptr %i.hh, align 8, !noalias !9654
  store ptr @57, ptr %i.hi, align 8, !noalias !9654
  store i64 1, ptr %i.by, align 8, !noalias !9654
  store ptr %i.bx, ptr %.sroa.027.sroa.4.0..sroa_idx.i, align 8, !noalias !9654
  store i64 2, ptr %.sroa.027.sroa.5.0..sroa_idx.i, align 8, !noalias !9654
  store ptr %i.jq, ptr %.sroa.428.0..sroa_idx.i, align 8, !noalias !9654
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !9654
  invoke void @_RNvMNtCs2y6mmZ7bjoM_12tracing_core5eventNtB2_5Event8dispatch(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.jp, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.by)
          to label %.noexc224.i unwind label %bb.bc

.noexc224.i:                                      ; preds = %bb.bk
  %i.jr = load atomic i8, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher6EXISTS monotonic, align 1, !noalias !9684
  %i.js = icmp eq i8 %i.jr, 0
  br i1 %i.js, label %bb.bl, label %bb.bo

bb.bl:                                            ; preds = %.noexc224.i
  %i.jt = load atomic i64, ptr @_RNvCsaljjC7ZTCQu_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8, !noalias !9684 ; 2 uses
  %i.ju = icmp ult i64 %i.jt, 6
  call void @llvm.assume(i1 %i.ju)
  %i.jv = icmp samesign ugt i64 %i.jt, 3
  br i1 %i.jv, label %bb.bm, label %bb.bo

bb.bm:                                            ; preds = %bb.bl
  %i.jw = load ptr, ptr @_RNvNCNvMs0_NtNtCscq8Lx7CD32J_17opentelemetry_sdk5trace14span_processorNtB9_18BatchSpanProcessor3new0s_10___CALLSITE, align 8, !noalias !9684, !nonnull !3, !align !39, !noundef !3 ; 3 uses
  %i.jx = getelementptr inbounds nuw i8, ptr %i.jw, i64 32
  %i.jy = load ptr, ptr %i.jx, align 8, !nonnull !3, !noundef !3
  %i.jz = getelementptr inbounds nuw i8, ptr %i.jw, i64 40
  %i.ka = load i64, ptr %i.jz, align 8, !noundef !3
  store i64 4, ptr %i.g, align 8, !noalias !9684
  store ptr %i.jy, ptr %.sroa.3.0..sroa_idx.i222.i, align 8, !noalias !9684
  store i64 %i.ka, ptr %.sroa.5.0..sroa_idx.i223.i, align 8, !noalias !9684
  %i.kb = invoke { ptr, ptr } @_RNvCsaljjC7ZTCQu_3log6logger()
          to label %.noexc225.i unwind label %bb.bc ; 2 uses

.noexc225.i:                                      ; preds = %bb.bm
  %i.kc = extractvalue { ptr, ptr } %i.kb, 0      ; 2 uses
  %i.kd = extractvalue { ptr, ptr } %i.kb, 1      ; 2 uses
  %i.ke = getelementptr inbounds nuw i8, ptr %i.kd, i64 24
  %i.kf = load ptr, ptr %i.ke, align 8, !invariant.load !3, !nonnull !3
  %i.kg = invoke noundef zeroext i1 %i.kf(ptr noundef %i.kc, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.g) #32
          to label %.noexc226.i unwind label %bb.bc, !inline_history !9687

.noexc226.i:                                      ; preds = %.noexc225.i
  br i1 %i.kg, label %bb.bn, label %bb.bo

bb.bn:                                            ; preds = %.noexc226.i
  invoke void @_RNvNtCscTw95cGIolY_7tracing15___macro_support13___tracing_log(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.jw, ptr noundef nonnull %i.kc, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.kd, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.g, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.by)
          to label %bb.bo unwind label %bb.bc

bb.bo:                                            ; preds = %bb.bn, %.noexc226.i, %bb.bl, %.noexc224.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !9654
  call void @llvm.lifetime.end.p0(ptr nonnull %i.by), !noalias !9654
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bw), !noalias !9654
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bx), !noalias !9654
  br label %bb.bp

bb.bp:                                            ; preds = %bb.bw, %bb.bu, %bb.br, %bb.bq, %bb.bo
  call void @llvm.lifetime.start.p0(ptr nonnull %i.br), !noalias !9654
  %i.kh = load ptr, ptr %i.cb, align 8, !noalias !9654, !nonnull !3, !noundef !3
  %i.ki = getelementptr inbounds nuw i8, ptr %i.kh, i64 16
  invoke fastcc void @_RINvMs0_NtNtCscq8Lx7CD32J_17opentelemetry_sdk5trace14span_processorNtB6_18BatchSpanProcessor20get_spans_and_exportNtNtCs1e4wyRlCFp2_18opentelemetry_otlp4span12SpanExporterECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.br, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.hg, ptr noundef nonnull align 8 %i.gz, ptr noalias noundef align 8 dereferenceable(24) %i.cd, ptr noalias noundef align 8 dereferenceable(16) %i.cc, ptr noundef nonnull align 8 %i.ki, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.em)
          to label %bb.bx unwind label %bb.bc

bb.bq:                                            ; preds = %bb.bj, %bb.bi, %bb.bf, %bb.be
  %i.kj = load atomic i8, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher6EXISTS monotonic, align 1, !noalias !9654
  %i.kk = icmp eq i8 %i.kj, 0
  br i1 %i.kk, label %bb.br, label %bb.bp

bb.br:                                            ; preds = %bb.bq
  %i.kl = load atomic i64, ptr @_RNvCsaljjC7ZTCQu_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8, !noalias !9654 ; 2 uses
  %i.km = icmp ult i64 %i.kl, 6
  call void @llvm.assume(i1 %i.km)
  %i.kn = icmp samesign ugt i64 %i.kl, 3
  br i1 %i.kn, label %bb.bs, label %bb.bp

bb.bs:                                            ; preds = %bb.br
  %i.ko = load ptr, ptr @_RNvNCNvMs0_NtNtCscq8Lx7CD32J_17opentelemetry_sdk5trace14span_processorNtB9_18BatchSpanProcessor3new0s_10___CALLSITE, align 8, !noalias !9654, !nonnull !3, !align !39, !noundef !3 ; 3 uses
  %i.kp = getelementptr inbounds nuw i8, ptr %i.ko, i64 32
  %i.kq = load ptr, ptr %i.kp, align 8, !nonnull !3, !noundef !3
  %i.kr = getelementptr inbounds nuw i8, ptr %i.ko, i64 40
  %i.ks = load i64, ptr %i.kr, align 8, !noundef !3
  store i64 4, ptr %i.bv, align 8, !noalias !9654
  store ptr %i.kq, ptr %.sroa.3106.0..sroa_idx.i, align 8, !noalias !9654
  store i64 %i.ks, ptr %.sroa.5107.0..sroa_idx.i, align 8, !noalias !9654
  %i.kt = invoke { ptr, ptr } @_RNvCsaljjC7ZTCQu_3log6logger()
          to label %bb.bt unwind label %bb.bc     ; 2 uses

bb.bt:                                            ; preds = %bb.bs
  %i.ku = extractvalue { ptr, ptr } %i.kt, 0      ; 2 uses
  %i.kv = extractvalue { ptr, ptr } %i.kt, 1      ; 2 uses
  %i.kw = getelementptr inbounds nuw i8, ptr %i.kv, i64 24
  %i.kx = load ptr, ptr %i.kw, align 8, !invariant.load !3, !nonnull !3
  %i.ky = invoke noundef zeroext i1 %i.kx(ptr noundef %i.ku, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bv)
          to label %bb.bu unwind label %bb.bc

bb.bu:                                            ; preds = %bb.bt
  br i1 %i.ky, label %bb.bv, label %bb.bp

bb.bv:                                            ; preds = %bb.bu
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bu), !noalias !9654
  %i.kz = load ptr, ptr @_RNvNCNvMs0_NtNtCscq8Lx7CD32J_17opentelemetry_sdk5trace14span_processorNtB9_18BatchSpanProcessor3new0s_10___CALLSITE, align 8, !noalias !9654, !nonnull !3, !align !39, !noundef !3
  %i.la = getelementptr inbounds nuw i8, ptr %i.kz, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bt), !noalias !9654
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bs), !noalias !9654
  store <2 x ptr> <ptr inttoptr (i64 1 to ptr), ptr inttoptr (i64 1 to ptr)>, ptr %i.bs, align 16, !noalias !9654
  store ptr %i.bs, ptr %i.bt, align 8, !noalias !9654
  store <2 x ptr> <ptr @54, ptr @61>, ptr %i.hj, align 8, !noalias !9654
  store ptr @57, ptr %i.hk, align 8, !noalias !9654
  store i64 1, ptr %i.bu, align 8, !noalias !9654
  store ptr %i.bt, ptr %.sroa.4109.0..sroa_idx.i, align 8, !noalias !9654
  store i64 2, ptr %.sroa.5110.0..sroa_idx.i, align 8, !noalias !9654
  store ptr %i.la, ptr %i.hl, align 8, !noalias !9654
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !9654
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.q, ptr noundef nonnull align 8 dereferenceable(24) %i.bv, i64 24, i1 false), !noalias !9654
  invoke void @_RNvNtCscTw95cGIolY_7tracing15___macro_support13___tracing_log(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.ko, ptr noundef nonnull %i.ku, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.kv, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.q, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.bu)
          to label %bb.bw unwind label %bb.bc

bb.bw:                                            ; preds = %bb.bv
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !9654
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bs), !noalias !9654
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bt), !noalias !9654
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bu), !noalias !9654
  br label %bb.bp

bb.bx:                                            ; preds = %bb.bp
  %i.lb = load i64, ptr %i.br, align 8, !range !98, !alias.scope !9688, !noalias !9654, !noundef !3
  %i.lc = icmp slt i64 %i.lb, -9223372036854775805
  br i1 %i.lc, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultuNtNtCscq8Lx7CD32J_17opentelemetry_sdk5error12OTelSdkErrorEECs7p2uQeJxui2_9deltalake.exit.i, label %bb.by

bb.by:                                            ; preds = %bb.bx
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.br)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit.i.i.i unwind label %bb.bz

bb.bz:                                            ; preds = %bb.by
  %i.ld = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.br)
          to label %.body.i unwind label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %i.le = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #33
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit.i.i.i: ; preds = %bb.by
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.br)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultuNtNtCscq8Lx7CD32J_17opentelemetry_sdk5error12OTelSdkErrorEECs7p2uQeJxui2_9deltalake.exit.i unwind label %bb.bc

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultuNtNtCscq8Lx7CD32J_17opentelemetry_sdk5error12OTelSdkErrorEECs7p2uQeJxui2_9deltalake.exit.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit.i.i.i, %bb.bx
  call void @llvm.lifetime.end.p0(ptr nonnull %i.br), !noalias !9654
  call void @llvm.experimental.noalias.scope.decl(metadata !9691)
  call void @llvm.experimental.noalias.scope.decl(metadata !9694)
  %i.lf = load ptr, ptr %i.bz, align 8, !alias.scope !9697, !noalias !9654, !nonnull !3, !noundef !3
  %i.lg = atomicrmw sub ptr %i.lf, i64 1 release, align 8, !noalias !9697
  %i.lh = icmp eq i64 %i.lg, 1
  br i1 %i.lh, label %bb.cb, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcINtNtNtB4_4sync6atomic6AtomicbEEECs7p2uQeJxui2_9deltalake.exit232.i

bb.cb:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultuNtNtCscq8Lx7CD32J_17opentelemetry_sdk5error12OTelSdkErrorEECs7p2uQeJxui2_9deltalake.exit.i
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcINtNtNtCsbvkFyIu7lgC_4core4sync6atomic6AtomicbEE9drop_slowCscq8Lx7CD32J_17opentelemetry_sdk(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.bz) #35
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcINtNtNtB4_4sync6atomic6AtomicbEEECs7p2uQeJxui2_9deltalake.exit232.i unwind label %.loopexit.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcINtNtNtB4_4sync6atomic6AtomicbEEECs7p2uQeJxui2_9deltalake.exit232.i: ; preds = %bb.cb, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultuNtNtCscq8Lx7CD32J_17opentelemetry_sdk5error12OTelSdkErrorEECs7p2uQeJxui2_9deltalake.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bz), !noalias !9654
  br label %bb.ey

bb.cc:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs2pqxYH9ZEk8_3std4sync4mpsc8ReceiverNtNtNtCscq8Lx7CD32J_17opentelemetry_sdk5trace6export8SpanDataEECs7p2uQeJxui2_9deltalake.exit339.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs2pqxYH9ZEk8_3std4sync4mpsc8ReceiverNtNtNtCscq8Lx7CD32J_17opentelemetry_sdk5trace14span_processor12BatchMessageEECs7p2uQeJxui2_9deltalake.exit335.i, %bb.hq, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcINtNtNtB4_4sync6atomic6AtomicjEEECs7p2uQeJxui2_9deltalake.exit337.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs2pqxYH9ZEk8_3std4sync4mpsc8ReceiverNtNtNtCscq8Lx7CD32J_17opentelemetry_sdk5trace6export8SpanDataEECs7p2uQeJxui2_9deltalake.exit.i, %bb.hl, %bb.ev, %.body261.thread346.i, %.body243.i, %bb.bd, %bb.ad, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcINtNtNtB4_4sync6atomic6AtomicjEEECs7p2uQeJxui2_9deltalake.exit.i, %.body326.i
  %i.li = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #33
  unreachable

bb.cd:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit.i.i.i.i.i, %bb.cx, %bb.cv, %bb.ct, %bb.cs, %bb.cp, %bb.cn, %.noexc238.i, %bb.cm, %bb.ck, %bb.ch, %bb.cg
  %i.lj = landingpad { ptr, i32 }
          cleanup
  br label %.body243.i

.body243.i:                                       ; preds = %bb.da, %bb.cd
  %eh.lpad-body244.i = phi { ptr, i32 } [ %i.lj, %bb.cd ], [ %i.nf, %bb.da ]
  invoke void @_RNvXs4_NtNtCs2pqxYH9ZEk8_3std4sync4mpmcINtB5_6SenderINtNtCsbvkFyIu7lgC_4core6result6ResultuNtNtCscq8Lx7CD32J_17opentelemetry_sdk5error12OTelSdkErrorEENtNtNtBT_3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull readonly align 8 dereferenceable(16) %i.bq)
          to label %.body300.i unwind label %bb.cc

bb.ce:                                            ; preds = %bb.ba
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bq), !noalias !9654
  store i64 %.sroa.5.0.copyload.i, ptr %i.bq, align 8, !noalias !9654
  store ptr %.sroa.917.0.copyload.i, ptr %i.ha, align 8, !noalias !9654
  %i.lk = load atomic i64, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core8metadata9MAX_LEVEL monotonic, align 8, !noalias !9654
  %i.ll = icmp ult i64 %i.lk, 2
  br i1 %i.ll, label %bb.cf, label %bb.cq

bb.cf:                                            ; preds = %bb.ce
  %i.lm = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @_RNvNCNvMs0_NtNtCscq8Lx7CD32J_17opentelemetry_sdk5trace14span_processorNtB9_18BatchSpanProcessor3new0s0_10___CALLSITE, i64 16) monotonic, align 8, !noalias !9654 ; 3 uses
  switch i8 %i.lm, label %bb.cg [
    i8 0, label %bb.cq
    i8 1, label %bb.ch
    i8 2, label %bb.ch
  ], !prof !9657

bb.cg:                                            ; preds = %bb.cf
  %i.ln = invoke noundef i8 @_RNvMNtCs2y6mmZ7bjoM_12tracing_core8callsiteNtB2_15DefaultCallsite8register(ptr noundef nonnull align 8 @_RNvNCNvMs0_NtNtCscq8Lx7CD32J_17opentelemetry_sdk5trace14span_processorNtB9_18BatchSpanProcessor3new0s0_10___CALLSITE)
          to label %bb.ci unwind label %bb.cd     ; 2 uses

bb.ch:                                            ; preds = %bb.cf, %bb.ci, %bb.cf
  %.sroa.035.0.i = phi i8 [ %i.ln, %bb.ci ], [ %i.lm, %bb.cf ], [ %i.lm, %bb.cf ]
  %i.lo = load ptr, ptr @_RNvNCNvMs0_NtNtCscq8Lx7CD32J_17opentelemetry_sdk5trace14span_processorNtB9_18BatchSpanProcessor3new0s0_10___CALLSITE, align 8, !noalias !9654, !nonnull !3, !align !39, !noundef !3
  %i.lp = invoke noundef zeroext i1 @_RNvNtCscTw95cGIolY_7tracing15___macro_support12___is_enabled(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.lo, i8 noundef %.sroa.035.0.i)
          to label %bb.cj unwind label %bb.cd

bb.ci:                                            ; preds = %bb.cg
  %i.lq = icmp eq i8 %i.ln, 0
  br i1 %i.lq, label %bb.cq, label %bb.ch

bb.cj:                                            ; preds = %bb.ch
  br i1 %i.lp, label %bb.ck, label %bb.cq

bb.ck:                                            ; preds = %bb.cj
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bp), !noalias !9654
  %i.lr = load ptr, ptr @_RNvNCNvMs0_NtNtCscq8Lx7CD32J_17opentelemetry_sdk5trace14span_processorNtB9_18BatchSpanProcessor3new0s0_10___CALLSITE, align 8, !noalias !9654, !nonnull !3, !align !39, !noundef !3 ; 2 uses
  %i.ls = getelementptr inbounds nuw i8, ptr %i.lr, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bo), !noalias !9654
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bn), !noalias !9654
  store <2 x ptr> <ptr inttoptr (i64 1 to ptr), ptr inttoptr (i64 1 to ptr)>, ptr %i.bn, align 16, !noalias !9654
  store ptr %i.bn, ptr %i.bo, align 8, !noalias !9654
  store <2 x ptr> <ptr @54, ptr @63>, ptr %i.hb, align 8, !noalias !9654
  store ptr @57, ptr %i.hc, align 8, !noalias !9654
  store i64 1, ptr %i.bp, align 8, !noalias !9654
  store ptr %i.bo, ptr %.sroa.037.sroa.4.0..sroa_idx.i, align 8, !noalias !9654
  store i64 2, ptr %.sroa.037.sroa.5.0..sroa_idx.i, align 8, !noalias !9654
  store ptr %i.ls, ptr %.sroa.438.0..sroa_idx.i, align 8, !noalias !9654
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !9654
  invoke void @_RNvMNtCs2y6mmZ7bjoM_12tracing_core5eventNtB2_5Event8dispatch(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.lr, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.bp)
          to label %.noexc237.i unwind label %bb.cd

.noexc237.i:                                      ; preds = %bb.ck
  %i.lt = load atomic i8, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher6EXISTS monotonic, align 1, !noalias !9698
  %i.lu = icmp eq i8 %i.lt, 0
  br i1 %i.lu, label %bb.cl, label %bb.co

bb.cl:                                            ; preds = %.noexc237.i
  %i.lv = load atomic i64, ptr @_RNvCsaljjC7ZTCQu_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8, !noalias !9698 ; 2 uses
  %i.lw = icmp ult i64 %i.lv, 6
  call void @llvm.assume(i1 %i.lw)
  %i.lx = icmp samesign ugt i64 %i.lv, 3
  br i1 %i.lx, label %bb.cm, label %bb.co

bb.cm:                                            ; preds = %bb.cl
  %i.ly = load ptr, ptr @_RNvNCNvMs0_NtNtCscq8Lx7CD32J_17opentelemetry_sdk5trace14span_processorNtB9_18BatchSpanProcessor3new0s0_10___CALLSITE, align 8, !noalias !9698, !nonnull !3, !align !39, !noundef !3 ; 3 uses
  %i.lz = getelementptr inbounds nuw i8, ptr %i.ly, i64 32
  %i.ma = load ptr, ptr %i.lz, align 8, !nonnull !3, !noundef !3
  %i.mb = getelementptr inbounds nuw i8, ptr %i.ly, i64 40
  %i.mc = load i64, ptr %i.mb, align 8, !noundef !3
  store i64 4, ptr %i.f, align 8, !noalias !9698
  store ptr %i.ma, ptr %.sroa.3.0..sroa_idx.i235.i, align 8, !noalias !9698
  store i64 %i.mc, ptr %.sroa.5.0..sroa_idx.i236.i, align 8, !noalias !9698
  %i.md = invoke { ptr, ptr } @_RNvCsaljjC7ZTCQu_3log6logger()
          to label %.noexc238.i unwind label %bb.cd ; 2 uses

.noexc238.i:                                      ; preds = %bb.cm
  %i.me = extractvalue { ptr, ptr } %i.md, 0      ; 2 uses
  %i.mf = extractvalue { ptr, ptr } %i.md, 1      ; 2 uses
  %i.mg = getelementptr inbounds nuw i8, ptr %i.mf, i64 24
  %i.mh = load ptr, ptr %i.mg, align 8, !invariant.load !3, !nonnull !3
  %i.mi = invoke noundef zeroext i1 %i.mh(ptr noundef %i.me, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.f) #32
          to label %.noexc239.i unwind label %bb.cd, !inline_history !9701

.noexc239.i:                                      ; preds = %.noexc238.i
  br i1 %i.mi, label %bb.cn, label %bb.co

bb.cn:                                            ; preds = %.noexc239.i
  invoke void @_RNvNtCscTw95cGIolY_7tracing15___macro_support13___tracing_log(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.ly, ptr noundef nonnull %i.me, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.mf, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.f, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.bp)
          to label %bb.co unwind label %bb.cd

bb.co:                                            ; preds = %bb.cn, %.noexc239.i, %bb.cl, %.noexc237.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !9654
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bp), !noalias !9654
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bn), !noalias !9654
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bo), !noalias !9654
  br label %bb.cp

bb.cp:                                            ; preds = %bb.cw, %bb.cu, %bb.cr, %bb.cq, %bb.co
  %i.mj = load ptr, ptr %i.cb, align 8, !noalias !9654, !nonnull !3, !noundef !3
  %i.mk = getelementptr inbounds nuw i8, ptr %i.mj, i64 16
  invoke fastcc void @_RINvMs0_NtNtCscq8Lx7CD32J_17opentelemetry_sdk5trace14span_processorNtB6_18BatchSpanProcessor20get_spans_and_exportNtNtCs1e4wyRlCFp2_18opentelemetry_otlp4span12SpanExporterECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.bi, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.hg, ptr noundef nonnull align 8 %i.gz, ptr noalias noundef align 8 dereferenceable(24) %i.cd, ptr noalias noundef align 8 dereferenceable(16) %i.cc, ptr noundef nonnull align 8 %i.mk, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.em)
          to label %bb.cx unwind label %bb.cd

bb.cq:                                            ; preds = %bb.cj, %bb.ci, %bb.cf, %bb.ce
  %i.ml = load atomic i8, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher6EXISTS monotonic, align 1, !noalias !9654
  %i.mm = icmp eq i8 %i.ml, 0
  br i1 %i.mm, label %bb.cr, label %bb.cp

bb.cr:                                            ; preds = %bb.cq
  %i.mn = load atomic i64, ptr @_RNvCsaljjC7ZTCQu_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8, !noalias !9654 ; 2 uses
  %i.mo = icmp ult i64 %i.mn, 6
  call void @llvm.assume(i1 %i.mo)
  %i.mp = icmp samesign ugt i64 %i.mn, 3
  br i1 %i.mp, label %bb.cs, label %bb.cp

bb.cs:                                            ; preds = %bb.cr
  %i.mq = load ptr, ptr @_RNvNCNvMs0_NtNtCscq8Lx7CD32J_17opentelemetry_sdk5trace14span_processorNtB9_18BatchSpanProcessor3new0s0_10___CALLSITE, align 8, !noalias !9654, !nonnull !3, !align !39, !noundef !3 ; 3 uses
  %i.mr = getelementptr inbounds nuw i8, ptr %i.mq, i64 32
  %i.ms = load ptr, ptr %i.mr, align 8, !nonnull !3, !noundef !3
  %i.mt = getelementptr inbounds nuw i8, ptr %i.mq, i64 40
  %i.mu = load i64, ptr %i.mt, align 8, !noundef !3
  store i64 4, ptr %i.bm, align 8, !noalias !9654
  store ptr %i.ms, ptr %.sroa.3116.0..sroa_idx.i, align 8, !noalias !9654
  store i64 %i.mu, ptr %.sroa.5117.0..sroa_idx.i, align 8, !noalias !9654
  %i.mv = invoke { ptr, ptr } @_RNvCsaljjC7ZTCQu_3log6logger()
          to label %bb.ct unwind label %bb.cd     ; 2 uses

bb.ct:                                            ; preds = %bb.cs
  %i.mw = extractvalue { ptr, ptr } %i.mv, 0      ; 2 uses
  %i.mx = extractvalue { ptr, ptr } %i.mv, 1      ; 2 uses
  %i.my = getelementptr inbounds nuw i8, ptr %i.mx, i64 24
  %i.mz = load ptr, ptr %i.my, align 8, !invariant.load !3, !nonnull !3
  %i.na = invoke noundef zeroext i1 %i.mz(ptr noundef %i.mw, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bm)
          to label %bb.cu unwind label %bb.cd

bb.cu:                                            ; preds = %bb.ct
  br i1 %i.na, label %bb.cv, label %bb.cp

bb.cv:                                            ; preds = %bb.cu
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bl), !noalias !9654
  %i.nb = load ptr, ptr @_RNvNCNvMs0_NtNtCscq8Lx7CD32J_17opentelemetry_sdk5trace14span_processorNtB9_18BatchSpanProcessor3new0s0_10___CALLSITE, align 8, !noalias !9654, !nonnull !3, !align !39, !noundef !3
  %i.nc = getelementptr inbounds nuw i8, ptr %i.nb, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bk), !noalias !9654
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bj), !noalias !9654
  store <2 x ptr> <ptr inttoptr (i64 1 to ptr), ptr inttoptr (i64 1 to ptr)>, ptr %i.bj, align 16, !noalias !9654
  store ptr %i.bj, ptr %i.bk, align 8, !noalias !9654
  store <2 x ptr> <ptr @54, ptr @63>, ptr %i.hd, align 8, !noalias !9654
  store ptr @57, ptr %i.he, align 8, !noalias !9654
  store i64 1, ptr %i.bl, align 8, !noalias !9654
  store ptr %i.bk, ptr %.sroa.4119.0..sroa_idx.i, align 8, !noalias !9654
  store i64 2, ptr %.sroa.5120.0..sroa_idx.i, align 8, !noalias !9654
  store ptr %i.nc, ptr %i.hf, align 8, !noalias !9654
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !9654
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.p, ptr noundef nonnull align 8 dereferenceable(24) %i.bm, i64 24, i1 false), !noalias !9654
  invoke void @_RNvNtCscTw95cGIolY_7tracing15___macro_support13___tracing_log(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.mq, ptr noundef nonnull %i.mw, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.mx, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.p, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.bl)
          to label %bb.cw unwind label %bb.cd

bb.cw:                                            ; preds = %bb.cv
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !9654
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bj), !noalias !9654
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bk), !noalias !9654
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bl), !noalias !9654
  br label %bb.cp

bb.cx:                                            ; preds = %bb.cp
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bh), !noalias !9654
  invoke fastcc void @_RNvMs2_NtNtCs2pqxYH9ZEk8_3std4sync4mpmcINtB5_6SenderINtNtCsbvkFyIu7lgC_4core6result6ResultuNtNtCscq8Lx7CD32J_17opentelemetry_sdk5error12OTelSdkErrorEE4sendCs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.bh, i64 %.sroa.5.0.copyload.i, ptr %.sroa.917.0.copyload.i, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.bi)
          to label %bb.cy unwind label %bb.cd

bb.cy:                                            ; preds = %bb.cx
  %i.nd = load i64, ptr %i.bh, align 8, !range !4725, !alias.scope !9702, !noalias !9654, !noundef !3
  %i.ne = icmp slt i64 %i.nd, -9223372036854775804
  br i1 %i.ne, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultuINtNtNtCs2pqxYH9ZEk8_3std4sync4mpsc9SendErrorIBH_uNtNtCscq8Lx7CD32J_17opentelemetry_sdk5error12OTelSdkErrorEEEECs7p2uQeJxui2_9deltalake.exit.i, label %bb.cz

bb.cz:                                            ; preds = %bb.cy
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bh)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit.i.i.i.i.i unwind label %bb.da

bb.da:                                            ; preds = %bb.cz
  %i.nf = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bh)
          to label %.body243.i unwind label %bb.db

bb.db:                                            ; preds = %bb.da
  %i.ng = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #33
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit.i.i.i.i.i: ; preds = %bb.cz
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bh)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultuINtNtNtCs2pqxYH9ZEk8_3std4sync4mpsc9SendErrorIBH_uNtNtCscq8Lx7CD32J_17opentelemetry_sdk5error12OTelSdkErrorEEEECs7p2uQeJxui2_9deltalake.exit.i unwind label %bb.cd

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultuINtNtNtCs2pqxYH9ZEk8_3std4sync4mpsc9SendErrorIBH_uNtNtCscq8Lx7CD32J_17opentelemetry_sdk5error12OTelSdkErrorEEEECs7p2uQeJxui2_9deltalake.exit.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit.i.i.i.i.i, %bb.cy
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bh), !noalias !9654
  invoke void @_RNvXs4_NtNtCs2pqxYH9ZEk8_3std4sync4mpmcINtB5_6SenderINtNtCsbvkFyIu7lgC_4core6result6ResultuNtNtCscq8Lx7CD32J_17opentelemetry_sdk5error12OTelSdkErrorEENtNtNtBT_3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull readonly align 8 dereferenceable(16) %i.bq)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs2pqxYH9ZEk8_3std4sync4mpsc10SyncSenderINtNtB4_6result6ResultuNtNtCscq8Lx7CD32J_17opentelemetry_sdk5error12OTelSdkErrorEEECs7p2uQeJxui2_9deltalake.exit247.i unwind label %.loopexit.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs2pqxYH9ZEk8_3std4sync4mpsc10SyncSenderINtNtB4_6result6ResultuNtNtCscq8Lx7CD32J_17opentelemetry_sdk5error12OTelSdkErrorEEECs7p2uQeJxui2_9deltalake.exit247.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultuINtNtNtCs2pqxYH9ZEk8_3std4sync4mpsc9SendErrorIBH_uNtNtCscq8Lx7CD32J_17opentelemetry_sdk5error12OTelSdkErrorEEEECs7p2uQeJxui2_9deltalake.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bq), !noalias !9654
  br label %bb.ey

.body261.thread346.i:                             ; preds = %bb.dz, %.body261.thread349.i, %bb.dc
  %.pn.i = phi { ptr, i32 } [ %i.pn, %bb.dz ], [ %lpad.thr_comm.i, %.body261.thread349.i ], [ %i.nh, %bb.dc ]
  invoke void @_RNvXs4_NtNtCs2pqxYH9ZEk8_3std4sync4mpmcINtB5_6SenderINtNtCsbvkFyIu7lgC_4core6result6ResultuNtNtCscq8Lx7CD32J_17opentelemetry_sdk5error12OTelSdkErrorEENtNtNtBT_3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull readonly align 8 dereferenceable(16) %i.bg)
          to label %.body300.i unwind label %bb.cc

bb.dc:                                            ; preds = %bb.du, %bb.ds, %bb.dr, %bb.do, %bb.dm, %.noexc254.i, %bb.dl, %bb.dj, %bb.dg, %bb.df
  %i.nh = landingpad { ptr, i32 }
          cleanup
  br label %.body261.thread346.i

bb.dd:                                            ; preds = %bb.ba
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bg), !noalias !9654
  store i64 %.sroa.5.0.copyload.i, ptr %i.bg, align 8, !noalias !9654
  %i.ni = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  store ptr %.sroa.917.0.copyload.i, ptr %i.ni, align 8, !noalias !9654
  %i.nj = load atomic i64, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core8metadata9MAX_LEVEL monotonic, align 8, !noalias !9654
  %i.nk = icmp ult i64 %i.nj, 2
  br i1 %i.nk, label %bb.de, label %bb.dp

bb.de:                                            ; preds = %bb.dd
  %i.nl = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @_RNvNCNvMs0_NtNtCscq8Lx7CD32J_17opentelemetry_sdk5trace14span_processorNtB9_18BatchSpanProcessor3new0s1_10___CALLSITE, i64 16) monotonic, align 8, !noalias !9654 ; 3 uses
  switch i8 %i.nl, label %bb.df [
    i8 0, label %bb.dp
    i8 1, label %bb.dg
    i8 2, label %bb.dg
  ], !prof !9657

bb.df:                                            ; preds = %bb.de
  %i.nm = invoke noundef i8 @_RNvMNtCs2y6mmZ7bjoM_12tracing_core8callsiteNtB2_15DefaultCallsite8register(ptr noundef nonnull align 8 @_RNvNCNvMs0_NtNtCscq8Lx7CD32J_17opentelemetry_sdk5trace14span_processorNtB9_18BatchSpanProcessor3new0s1_10___CALLSITE)
          to label %bb.dh unwind label %bb.dc     ; 2 uses

bb.dg:                                            ; preds = %bb.de, %bb.dh, %bb.de
  %.sroa.045.0.i = phi i8 [ %i.nm, %bb.dh ], [ %i.nl, %bb.de ], [ %i.nl, %bb.de ]
  %i.nn = load ptr, ptr @_RNvNCNvMs0_NtNtCscq8Lx7CD32J_17opentelemetry_sdk5trace14span_processorNtB9_18BatchSpanProcessor3new0s1_10___CALLSITE, align 8, !noalias !9654, !nonnull !3, !align !39, !noundef !3
  %i.no = invoke noundef zeroext i1 @_RNvNtCscTw95cGIolY_7tracing15___macro_support12___is_enabled(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.nn, i8 noundef %.sroa.045.0.i)
          to label %bb.di unwind label %bb.dc

bb.dh:                                            ; preds = %bb.df
  %i.np = icmp eq i8 %i.nm, 0
  br i1 %i.np, label %bb.dp, label %bb.dg

bb.di:                                            ; preds = %bb.dg
  br i1 %i.no, label %bb.dj, label %bb.dp

bb.dj:                                            ; preds = %bb.di
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bf), !noalias !9654
  %i.nq = load ptr, ptr @_RNvNCNvMs0_NtNtCscq8Lx7CD32J_17opentelemetry_sdk5trace14span_processorNtB9_18BatchSpanProcessor3new0s1_10___CALLSITE, align 8, !noalias !9654, !nonnull !3, !align !39, !noundef !3 ; 2 uses
  %i.nr = getelementptr inbounds nuw i8, ptr %i.nq, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.be), !noalias !9654
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bd), !noalias !9654
  store ptr inttoptr (i64 1 to ptr), ptr %i.bd, align 8, !noalias !9654
  %i.ns = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %i.ns, align 8, !noalias !9654
  store ptr %i.bd, ptr %i.be, align 8, !noalias !9654
  %i.nt = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  store ptr @54, ptr %i.nt, align 8, !noalias !9654
  %i.nu = getelementptr inbounds nuw i8, ptr %i.be, i64 16
  store ptr @65, ptr %i.nu, align 8, !noalias !9654
  %i.nv = getelementptr inbounds nuw i8, ptr %i.be, i64 24
  store ptr @57, ptr %i.nv, align 8, !noalias !9654
  store i64 1, ptr %i.bf, align 8, !noalias !9654
  %.sroa.047.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  store ptr %i.be, ptr %.sroa.047.sroa.4.0..sroa_idx.i, align 8, !noalias !9654
  %.sroa.047.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bf, i64 16
  store i64 2, ptr %.sroa.047.sroa.5.0..sroa_idx.i, align 8, !noalias !9654
  %.sroa.448.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bf, i64 24
  store ptr %i.nr, ptr %.sroa.448.0..sroa_idx.i, align 8, !noalias !9654
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !9654
  invoke void @_RNvMNtCs2y6mmZ7bjoM_12tracing_core5eventNtB2_5Event8dispatch(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.nq, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.bf)
          to label %.noexc253.i unwind label %bb.dc

.noexc253.i:                                      ; preds = %bb.dj
  %i.nw = load atomic i8, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher6EXISTS monotonic, align 1, !noalias !9705
  %i.nx = icmp eq i8 %i.nw, 0
  br i1 %i.nx, label %bb.dk, label %bb.dn

bb.dk:                                            ; preds = %.noexc253.i
  %i.ny = load atomic i64, ptr @_RNvCsaljjC7ZTCQu_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8, !noalias !9705 ; 2 uses
  %i.nz = icmp ult i64 %i.ny, 6
  call void @llvm.assume(i1 %i.nz)
  %i.oa = icmp samesign ugt i64 %i.ny, 3
  br i1 %i.oa, label %bb.dl, label %bb.dn

bb.dl:                                            ; preds = %bb.dk
  %i.ob = load ptr, ptr @_RNvNCNvMs0_NtNtCscq8Lx7CD32J_17opentelemetry_sdk5trace14span_processorNtB9_18BatchSpanProcessor3new0s1_10___CALLSITE, align 8, !noalias !9705, !nonnull !3, !align !39, !noundef !3 ; 3 uses
  %i.oc = getelementptr inbounds nuw i8, ptr %i.ob, i64 32
  %i.od = load ptr, ptr %i.oc, align 8, !nonnull !3, !noundef !3
  %i.oe = getelementptr inbounds nuw i8, ptr %i.ob, i64 40
  %i.of = load i64, ptr %i.oe, align 8, !noundef !3
  store i64 4, ptr %i.e, align 8, !noalias !9705
  %.sroa.3.0..sroa_idx.i251.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr %i.od, ptr %.sroa.3.0..sroa_idx.i251.i, align 8, !noalias !9705
  %.sroa.5.0..sroa_idx.i252.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store i64 %i.of, ptr %.sroa.5.0..sroa_idx.i252.i, align 8, !noalias !9705
  %i.og = invoke { ptr, ptr } @_RNvCsaljjC7ZTCQu_3log6logger()
          to label %.noexc254.i unwind label %bb.dc ; 2 uses

.noexc254.i:                                      ; preds = %bb.dl
  %i.oh = extractvalue { ptr, ptr } %i.og, 0      ; 2 uses
  %i.oi = extractvalue { ptr, ptr } %i.og, 1      ; 2 uses
  %i.oj = getelementptr inbounds nuw i8, ptr %i.oi, i64 24
  %i.ok = load ptr, ptr %i.oj, align 8, !invariant.load !3, !nonnull !3
  %i.ol = invoke noundef zeroext i1 %i.ok(ptr noundef %i.oh, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.e) #32
          to label %.noexc255.i unwind label %bb.dc, !inline_history !9708

.noexc255.i:                                      ; preds = %.noexc254.i
  br i1 %i.ol, label %bb.dm, label %bb.dn

bb.dm:                                            ; preds = %.noexc255.i
  invoke void @_RNvNtCscTw95cGIolY_7tracing15___macro_support13___tracing_log(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.ob, ptr noundef nonnull %i.oh, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.oi, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.e, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.bf)
          to label %bb.dn unwind label %bb.dc

bb.dn:                                            ; preds = %bb.dm, %.noexc255.i, %bb.dk, %.noexc253.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !9654
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bf), !noalias !9654
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bd), !noalias !9654
  call void @llvm.lifetime.end.p0(ptr nonnull %i.be), !noalias !9654
  br label %bb.do

bb.do:                                            ; preds = %bb.dv, %bb.dt, %bb.dq, %bb.dp, %bb.dn
  %i.om = load ptr, ptr %i.cb, align 8, !noalias !9654, !nonnull !3, !noundef !3
  %i.on = getelementptr inbounds nuw i8, ptr %i.om, i64 16
  invoke fastcc void @_RINvMs0_NtNtCscq8Lx7CD32J_17opentelemetry_sdk5trace14span_processorNtB6_18BatchSpanProcessor20get_spans_and_exportNtNtCs1e4wyRlCFp2_18opentelemetry_otlp4span12SpanExporterECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.ax, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.hg, ptr noundef nonnull align 8 %i.gz, ptr noalias noundef align 8 dereferenceable(24) %i.cd, ptr noalias noundef align 8 dereferenceable(16) %i.cc, ptr noundef nonnull align 8 %i.on, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.em)
          to label %bb.dw unwind label %bb.dc

bb.dp:                                            ; preds = %bb.di, %bb.dh, %bb.de, %bb.dd
  %i.oo = load atomic i8, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher6EXISTS monotonic, align 1, !noalias !9654
  %i.op = icmp eq i8 %i.oo, 0
  br i1 %i.op, label %bb.dq, label %bb.do

bb.dq:                                            ; preds = %bb.dp
  %i.oq = load atomic i64, ptr @_RNvCsaljjC7ZTCQu_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8, !noalias !9654 ; 2 uses
  %i.or = icmp ult i64 %i.oq, 6
  call void @llvm.assume(i1 %i.or)
  %i.os = icmp samesign ugt i64 %i.oq, 3
  br i1 %i.os, label %bb.dr, label %bb.do

bb.dr:                                            ; preds = %bb.dq
  %i.ot = load ptr, ptr @_RNvNCNvMs0_NtNtCscq8Lx7CD32J_17opentelemetry_sdk5trace14span_processorNtB9_18BatchSpanProcessor3new0s1_10___CALLSITE, align 8, !noalias !9654, !nonnull !3, !align !39, !noundef !3 ; 3 uses
  %i.ou = getelementptr inbounds nuw i8, ptr %i.ot, i64 32
  %i.ov = load ptr, ptr %i.ou, align 8, !nonnull !3, !noundef !3
  %i.ow = getelementptr inbounds nuw i8, ptr %i.ot, i64 40
  %i.ox = load i64, ptr %i.ow, align 8, !noundef !3
  store i64 4, ptr %i.bc, align 8, !noalias !9654
  %.sroa.3126.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  store ptr %i.ov, ptr %.sroa.3126.0..sroa_idx.i, align 8, !noalias !9654
  %.sroa.5127.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bc, i64 16
  store i64 %i.ox, ptr %.sroa.5127.0..sroa_idx.i, align 8, !noalias !9654
  %i.oy = invoke { ptr, ptr } @_RNvCsaljjC7ZTCQu_3log6logger()
          to label %bb.ds unwind label %bb.dc     ; 2 uses

bb.ds:                                            ; preds = %bb.dr
  %i.oz = extractvalue { ptr, ptr } %i.oy, 0      ; 2 uses
  %i.pa = extractvalue { ptr, ptr } %i.oy, 1      ; 2 uses
  %i.pb = getelementptr inbounds nuw i8, ptr %i.pa, i64 24
  %i.pc = load ptr, ptr %i.pb, align 8, !invariant.load !3, !nonnull !3
  %i.pd = invoke noundef zeroext i1 %i.pc(ptr noundef %i.oz, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bc)
          to label %bb.dt unwind label %bb.dc

bb.dt:                                            ; preds = %bb.ds
  br i1 %i.pd, label %bb.du, label %bb.do

bb.du:                                            ; preds = %bb.dt
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bb), !noalias !9654
  %i.pe = load ptr, ptr @_RNvNCNvMs0_NtNtCscq8Lx7CD32J_17opentelemetry_sdk5trace14span_processorNtB9_18BatchSpanProcessor3new0s1_10___CALLSITE, align 8, !noalias !9654, !nonnull !3, !align !39, !noundef !3
  %i.pf = getelementptr inbounds nuw i8, ptr %i.pe, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ba), !noalias !9654
  call void @llvm.lifetime.start.p0(ptr nonnull %i.az), !noalias !9654
  store ptr inttoptr (i64 1 to ptr), ptr %i.az, align 8, !noalias !9654
  %i.pg = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %i.pg, align 8, !noalias !9654
  store ptr %i.az, ptr %i.ba, align 8, !noalias !9654
  %i.ph = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  store ptr @54, ptr %i.ph, align 8, !noalias !9654
  %i.pi = getelementptr inbounds nuw i8, ptr %i.ba, i64 16
  store ptr @65, ptr %i.pi, align 8, !noalias !9654
  %i.pj = getelementptr inbounds nuw i8, ptr %i.ba, i64 24
  store ptr @57, ptr %i.pj, align 8, !noalias !9654
  store i64 1, ptr %i.bb, align 8, !noalias !9654
  %.sroa.4129.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  store ptr %i.ba, ptr %.sroa.4129.0..sroa_idx.i, align 8, !noalias !9654
  %.sroa.5130.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bb, i64 16
  store i64 2, ptr %.sroa.5130.0..sroa_idx.i, align 8, !noalias !9654
  %i.pk = getelementptr inbounds nuw i8, ptr %i.bb, i64 24
  store ptr %i.pf, ptr %i.pk, align 8, !noalias !9654
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !9654
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.o, ptr noundef nonnull align 8 dereferenceable(24) %i.bc, i64 24, i1 false), !noalias !9654
  invoke void @_RNvNtCscTw95cGIolY_7tracing15___macro_support13___tracing_log(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.ot, ptr noundef nonnull %i.oz, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.pa, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.o, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.bb)
          to label %bb.dv unwind label %bb.dc

bb.dv:                                            ; preds = %bb.du
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !9654
  call void @llvm.lifetime.end.p0(ptr nonnull %i.az), !noalias !9654
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ba), !noalias !9654
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bb), !noalias !9654
  br label %bb.do

.body261.thread349.i:                             ; preds = %bb.es, %bb.eq, %bb.ep, %bb.ek, %.noexc277.i, %bb.ej, %bb.eh, %bb.ee, %bb.ed, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit.i.i.i.i266.i, %bb.dw
  %lpad.thr_comm.i = landingpad { ptr, i32 }
          cleanup
  br label %.body261.thread346.i

bb.dw:                                            ; preds = %bb.do
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ay), !noalias !9654
  invoke fastcc void @_RNvMs2_NtNtCs2pqxYH9ZEk8_3std4sync4mpmcINtB5_6SenderINtNtCsbvkFyIu7lgC_4core6result6ResultuNtNtCscq8Lx7CD32J_17opentelemetry_sdk5error12OTelSdkErrorEE4sendCs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.ay, i64 %.sroa.5.0.copyload.i, ptr %.sroa.917.0.copyload.i, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.ax)
          to label %bb.dx unwind label %.body261.thread349.i

bb.dx:                                            ; preds = %bb.dw
  %i.pl = load i64, ptr %i.ay, align 8, !range !4725, !alias.scope !9709, !noalias !9654, !noundef !3
  %i.pm = icmp slt i64 %i.pl, -9223372036854775804
  br i1 %i.pm, label %bb.eb, label %bb.dy

bb.dy:                                            ; preds = %bb.dx
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ay)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit.i.i.i.i266.i unwind label %bb.dz

bb.dz:                                            ; preds = %bb.dy
  %i.pn = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ay)
          to label %.body261.thread346.i unwind label %bb.ea

bb.ea:                                            ; preds = %bb.dz
  %i.po = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #33
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit.i.i.i.i266.i: ; preds = %bb.dy
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ay)
          to label %bb.eb unwind label %.body261.thread349.i

bb.eb:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit.i.i.i.i266.i, %bb.dx
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ay), !noalias !9654
  %i.pp = load atomic i64, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core8metadata9MAX_LEVEL monotonic, align 8, !noalias !9654
  %i.pq = icmp ult i64 %i.pp, 2
  br i1 %i.pq, label %bb.ec, label %bb.en

bb.ec:                                            ; preds = %bb.eb
  %i.pr = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @_RNvNCNvMs0_NtNtCscq8Lx7CD32J_17opentelemetry_sdk5trace14span_processorNtB9_18BatchSpanProcessor3new0s2_10___CALLSITE, i64 16) monotonic, align 8, !noalias !9654 ; 3 uses
  switch i8 %i.pr, label %bb.ed [
    i8 0, label %bb.en
    i8 1, label %bb.ee
    i8 2, label %bb.ee
  ], !prof !9657

bb.ed:                                            ; preds = %bb.ec
  %i.ps = invoke noundef i8 @_RNvMNtCs2y6mmZ7bjoM_12tracing_core8callsiteNtB2_15DefaultCallsite8register(ptr noundef nonnull align 8 @_RNvNCNvMs0_NtNtCscq8Lx7CD32J_17opentelemetry_sdk5trace14span_processorNtB9_18BatchSpanProcessor3new0s2_10___CALLSITE)
          to label %bb.ef unwind label %.body261.thread349.i ; 2 uses

bb.ee:                                            ; preds = %bb.ec, %bb.ef, %bb.ec
  %.sroa.055.0.i = phi i8 [ %i.ps, %bb.ef ], [ %i.pr, %bb.ec ], [ %i.pr, %bb.ec ]
  %i.pt = load ptr, ptr @_RNvNCNvMs0_NtNtCscq8Lx7CD32J_17opentelemetry_sdk5trace14span_processorNtB9_18BatchSpanProcessor3new0s2_10___CALLSITE, align 8, !noalias !9654, !nonnull !3, !align !39, !noundef !3
  %i.pu = invoke noundef zeroext i1 @_RNvNtCscTw95cGIolY_7tracing15___macro_support12___is_enabled(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.pt, i8 noundef %.sroa.055.0.i)
          to label %bb.eg unwind label %.body261.thread349.i

bb.ef:                                            ; preds = %bb.ed
  %i.pv = icmp eq i8 %i.ps, 0
  br i1 %i.pv, label %bb.en, label %bb.ee

bb.eg:                                            ; preds = %bb.ee
  br i1 %i.pu, label %bb.eh, label %bb.en

bb.eh:                                            ; preds = %bb.eg
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aw), !noalias !9654
  %i.pw = load ptr, ptr @_RNvNCNvMs0_NtNtCscq8Lx7CD32J_17opentelemetry_sdk5trace14span_processorNtB9_18BatchSpanProcessor3new0s2_10___CALLSITE, align 8, !noalias !9654, !nonnull !3, !align !39, !noundef !3 ; 2 uses
  %i.px = getelementptr inbounds nuw i8, ptr %i.pw, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.av), !noalias !9654
  call void @llvm.lifetime.start.p0(ptr nonnull %i.au), !noalias !9654
  store ptr inttoptr (i64 1 to ptr), ptr %i.au, align 8, !noalias !9654
  %i.py = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %i.py, align 8, !noalias !9654
  store ptr %i.au, ptr %i.av, align 8, !noalias !9654
  %i.pz = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  store ptr @54, ptr %i.pz, align 8, !noalias !9654
  %i.qa = getelementptr inbounds nuw i8, ptr %i.av, i64 16
  store ptr @67, ptr %i.qa, align 8, !noalias !9654
  %i.qb = getelementptr inbounds nuw i8, ptr %i.av, i64 24
  store ptr @57, ptr %i.qb, align 8, !noalias !9654
  %i.qc = getelementptr inbounds nuw i8, ptr %i.av, i64 32
  store ptr @69, ptr %i.qc, align 8, !noalias !9654
  %i.qd = getelementptr inbounds nuw i8, ptr %i.av, i64 40
  store ptr @57, ptr %i.qd, align 8, !noalias !9654
  store i64 1, ptr %i.aw, align 8, !noalias !9654
  %.sroa.057.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  store ptr %i.av, ptr %.sroa.057.sroa.4.0..sroa_idx.i, align 8, !noalias !9654
  %.sroa.057.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  store i64 3, ptr %.sroa.057.sroa.5.0..sroa_idx.i, align 8, !noalias !9654
  %.sroa.458.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aw, i64 24
  store ptr %i.px, ptr %.sroa.458.0..sroa_idx.i, align 8, !noalias !9654
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !9654
  invoke void @_RNvMNtCs2y6mmZ7bjoM_12tracing_core5eventNtB2_5Event8dispatch(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.pw, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.aw)
          to label %.noexc276.i unwind label %.body261.thread349.i

.noexc276.i:                                      ; preds = %bb.eh
  %i.qe = load atomic i8, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher6EXISTS monotonic, align 1, !noalias !9712
  %i.qf = icmp eq i8 %i.qe, 0
  br i1 %i.qf, label %bb.ei, label %bb.el

bb.ei:                                            ; preds = %.noexc276.i
  %i.qg = load atomic i64, ptr @_RNvCsaljjC7ZTCQu_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8, !noalias !9712 ; 2 uses
  %i.qh = icmp ult i64 %i.qg, 6
  call void @llvm.assume(i1 %i.qh)
  %i.qi = icmp samesign ugt i64 %i.qg, 3
  br i1 %i.qi, label %bb.ej, label %bb.el

bb.ej:                                            ; preds = %bb.ei
  %i.qj = load ptr, ptr @_RNvNCNvMs0_NtNtCscq8Lx7CD32J_17opentelemetry_sdk5trace14span_processorNtB9_18BatchSpanProcessor3new0s2_10___CALLSITE, align 8, !noalias !9712, !nonnull !3, !align !39, !noundef !3 ; 3 uses
  %i.qk = getelementptr inbounds nuw i8, ptr %i.qj, i64 32
  %i.ql = load ptr, ptr %i.qk, align 8, !nonnull !3, !noundef !3
  %i.qm = getelementptr inbounds nuw i8, ptr %i.qj, i64 40
  %i.qn = load i64, ptr %i.qm, align 8, !noundef !3
  store i64 4, ptr %i.d, align 8, !noalias !9712
  %.sroa.3.0..sroa_idx.i274.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %i.ql, ptr %.sroa.3.0..sroa_idx.i274.i, align 8, !noalias !9712
  %.sroa.5.0..sroa_idx.i275.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store i64 %i.qn, ptr %.sroa.5.0..sroa_idx.i275.i, align 8, !noalias !9712
  %i.qo = invoke { ptr, ptr } @_RNvCsaljjC7ZTCQu_3log6logger()
          to label %.noexc277.i unwind label %.body261.thread349.i ; 2 uses

.noexc277.i:                                      ; preds = %bb.ej
  %i.qp = extractvalue { ptr, ptr } %i.qo, 0      ; 2 uses
  %i.qq = extractvalue { ptr, ptr } %i.qo, 1      ; 2 uses
  %i.qr = getelementptr inbounds nuw i8, ptr %i.qq, i64 24
  %i.qs = load ptr, ptr %i.qr, align 8, !invariant.load !3, !nonnull !3
  %i.qt = invoke noundef zeroext i1 %i.qs(ptr noundef %i.qp, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.d) #32
          to label %.noexc278.i unwind label %.body261.thread349.i, !inline_history !9715

.noexc278.i:                                      ; preds = %.noexc277.i
  br i1 %i.qt, label %bb.ek, label %bb.el

bb.ek:                                            ; preds = %.noexc278.i
  invoke void @_RNvNtCscTw95cGIolY_7tracing15___macro_support13___tracing_log(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.qj, ptr noundef nonnull %i.qp, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.qq, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.d, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.aw)
          to label %bb.el unwind label %.body261.thread349.i

bb.el:                                            ; preds = %bb.ek, %.noexc278.i, %bb.ei, %.noexc276.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !9654
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aw), !noalias !9654
  call void @llvm.lifetime.end.p0(ptr nonnull %i.au), !noalias !9654
  call void @llvm.lifetime.end.p0(ptr nonnull %i.av), !noalias !9654
  br label %bb.em

bb.em:                                            ; preds = %bb.et, %bb.er, %bb.eo, %bb.en, %bb.el
  invoke void @_RNvXs4_NtNtCs2pqxYH9ZEk8_3std4sync4mpmcINtB5_6SenderINtNtCsbvkFyIu7lgC_4core6result6ResultuNtNtCscq8Lx7CD32J_17opentelemetry_sdk5error12OTelSdkErrorEENtNtNtBT_3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull readonly align 8 dereferenceable(16) %i.bg)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs2pqxYH9ZEk8_3std4sync4mpsc10SyncSenderINtNtB4_6result6ResultuNtNtCscq8Lx7CD32J_17opentelemetry_sdk5error12OTelSdkErrorEEECs7p2uQeJxui2_9deltalake.exit281.i unwind label %.loopexit.split-lp.i

bb.en:                                            ; preds = %bb.eg, %bb.ef, %bb.ec, %bb.eb
  %i.qu = load atomic i8, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher6EXISTS monotonic, align 1, !noalias !9654
  %i.qv = icmp eq i8 %i.qu, 0
  br i1 %i.qv, label %bb.eo, label %bb.em

bb.eo:                                            ; preds = %bb.en
  %i.qw = load atomic i64, ptr @_RNvCsaljjC7ZTCQu_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8, !noalias !9654 ; 2 uses
  %i.qx = icmp ult i64 %i.qw, 6
  call void @llvm.assume(i1 %i.qx)
  %i.qy = icmp samesign ugt i64 %i.qw, 3
  br i1 %i.qy, label %bb.ep, label %bb.em

bb.ep:                                            ; preds = %bb.eo
  %i.qz = load ptr, ptr @_RNvNCNvMs0_NtNtCscq8Lx7CD32J_17opentelemetry_sdk5trace14span_processorNtB9_18BatchSpanProcessor3new0s2_10___CALLSITE, align 8, !noalias !9654, !nonnull !3, !align !39, !noundef !3 ; 3 uses
  %i.ra = getelementptr inbounds nuw i8, ptr %i.qz, i64 32
  %i.rb = load ptr, ptr %i.ra, align 8, !nonnull !3, !noundef !3
  %i.rc = getelementptr inbounds nuw i8, ptr %i.qz, i64 40
  %i.rd = load i64, ptr %i.rc, align 8, !noundef !3
  store i64 4, ptr %i.at, align 8, !noalias !9654
  %.sroa.3136.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  store ptr %i.rb, ptr %.sroa.3136.0..sroa_idx.i, align 8, !noalias !9654
  %.sroa.5137.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  store i64 %i.rd, ptr %.sroa.5137.0..sroa_idx.i, align 8, !noalias !9654
  %i.re = invoke { ptr, ptr } @_RNvCsaljjC7ZTCQu_3log6logger()
          to label %bb.eq unwind label %.body261.thread349.i ; 2 uses

bb.eq:                                            ; preds = %bb.ep
  %i.rf = extractvalue { ptr, ptr } %i.re, 0      ; 2 uses
  %i.rg = extractvalue { ptr, ptr } %i.re, 1      ; 2 uses
  %i.rh = getelementptr inbounds nuw i8, ptr %i.rg, i64 24
  %i.ri = load ptr, ptr %i.rh, align 8, !invariant.load !3, !nonnull !3
  %i.rj = invoke noundef zeroext i1 %i.ri(ptr noundef %i.rf, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.at)
          to label %bb.er unwind label %.body261.thread349.i

bb.er:                                            ; preds = %bb.eq
  br i1 %i.rj, label %bb.es, label %bb.em

bb.es:                                            ; preds = %bb.er
  call void @llvm.lifetime.start.p0(ptr nonnull %i.as), !noalias !9654
  %i.rk = load ptr, ptr @_RNvNCNvMs0_NtNtCscq8Lx7CD32J_17opentelemetry_sdk5trace14span_processorNtB9_18BatchSpanProcessor3new0s2_10___CALLSITE, align 8, !noalias !9654, !nonnull !3, !align !39, !noundef !3
  %i.rl = getelementptr inbounds nuw i8, ptr %i.rk, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ar), !noalias !9654
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aq), !noalias !9654
  store ptr inttoptr (i64 1 to ptr), ptr %i.aq, align 8, !noalias !9654
  %i.rm = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %i.rm, align 8, !noalias !9654
  store ptr %i.aq, ptr %i.ar, align 8, !noalias !9654
  %i.rn = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  store ptr @54, ptr %i.rn, align 8, !noalias !9654
  %i.ro = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  store ptr @67, ptr %i.ro, align 8, !noalias !9654
  %i.rp = getelementptr inbounds nuw i8, ptr %i.ar, i64 24
  store ptr @57, ptr %i.rp, align 8, !noalias !9654
  %i.rq = getelementptr inbounds nuw i8, ptr %i.ar, i64 32
  store ptr @69, ptr %i.rq, align 8, !noalias !9654
  %i.rr = getelementptr inbounds nuw i8, ptr %i.ar, i64 40
  store ptr @57, ptr %i.rr, align 8, !noalias !9654
  store i64 1, ptr %i.as, align 8, !noalias !9654
  %.sroa.4139.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  store ptr %i.ar, ptr %.sroa.4139.0..sroa_idx.i, align 8, !noalias !9654
  %.sroa.5140.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  store i64 3, ptr %.sroa.5140.0..sroa_idx.i, align 8, !noalias !9654
  %i.rs = getelementptr inbounds nuw i8, ptr %i.as, i64 24
  store ptr %i.rl, ptr %i.rs, align 8, !noalias !9654
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !9654
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.n, ptr noundef nonnull align 8 dereferenceable(24) %i.at, i64 24, i1 false), !noalias !9654
  invoke void @_RNvNtCscTw95cGIolY_7tracing15___macro_support13___tracing_log(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.qz, ptr noundef nonnull %i.rf, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.rg, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.n, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.as)
          to label %bb.et unwind label %.body261.thread349.i

bb.et:                                            ; preds = %bb.es
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !9654
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq), !noalias !9654
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar), !noalias !9654
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as), !noalias !9654
  br label %bb.em

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs2pqxYH9ZEk8_3std4sync4mpsc10SyncSenderINtNtB4_6result6ResultuNtNtCscq8Lx7CD32J_17opentelemetry_sdk5error12OTelSdkErrorEEECs7p2uQeJxui2_9deltalake.exit281.i: ; preds = %bb.em
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bg), !noalias !9654
  br label %bb.go

bb.eu:                                            ; preds = %bb.bb
  %i.rt = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !9716)
  call void @llvm.experimental.noalias.scope.decl(metadata !9719)
  %i.ru = load ptr, ptr %i.ap, align 8, !alias.scope !9722, !noalias !9654, !nonnull !3, !noundef !3
  %i.rv = atomicrmw sub ptr %i.ru, i64 1 release, align 8, !noalias !9722
  %i.rw = icmp eq i64 %i.rv, 1
  br i1 %i.rw, label %bb.ev, label %.body300.i

bb.ev:                                            ; preds = %bb.eu
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCscq8Lx7CD32J_17opentelemetry_sdk8resource8ResourceE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.ap) #35
          to label %.body300.i unwind label %bb.cc

bb.ew:                                            ; preds = %bb.bb
  call void @llvm.experimental.noalias.scope.decl(metadata !9723)
  call void @llvm.experimental.noalias.scope.decl(metadata !9726)
  %i.rx = load ptr, ptr %i.ap, align 8, !alias.scope !9729, !noalias !9654, !nonnull !3, !noundef !3
  %i.ry = atomicrmw sub ptr %i.rx, i64 1 release, align 8, !noalias !9729
  %i.rz = icmp eq i64 %i.ry, 1
  br i1 %i.rz, label %bb.ex, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCscq8Lx7CD32J_17opentelemetry_sdk8resource8ResourceEECs7p2uQeJxui2_9deltalake.exit287.i

bb.ex:                                            ; preds = %bb.ew
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCscq8Lx7CD32J_17opentelemetry_sdk8resource8ResourceE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.ap) #35
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCscq8Lx7CD32J_17opentelemetry_sdk8resource8ResourceEECs7p2uQeJxui2_9deltalake.exit287.i unwind label %.loopexit.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCscq8Lx7CD32J_17opentelemetry_sdk8resource8ResourceEECs7p2uQeJxui2_9deltalake.exit287.i: ; preds = %bb.ex, %bb.ew
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap), !noalias !9654
  br label %bb.ey

bb.ey:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultuNtNtCscq8Lx7CD32J_17opentelemetry_sdk5error12OTelSdkErrorEECs7p2uQeJxui2_9deltalake.exit303.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCscq8Lx7CD32J_17opentelemetry_sdk8resource8ResourceEECs7p2uQeJxui2_9deltalake.exit287.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs2pqxYH9ZEk8_3std4sync4mpsc10SyncSenderINtNtB4_6result6ResultuNtNtCscq8Lx7CD32J_17opentelemetry_sdk5error12OTelSdkErrorEEECs7p2uQeJxui2_9deltalake.exit247.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcINtNtNtB4_4sync6atomic6AtomicbEEECs7p2uQeJxui2_9deltalake.exit232.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ca), !noalias !9654
  br label %bb.ac

bb.ez:                                            ; preds = %bb.az
  br i1 %i.ix, label %bb.fa, label %bb.fl

bb.fa:                                            ; preds = %bb.ez
  %i.sa = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @_RNvNCNvMs0_NtNtCscq8Lx7CD32J_17opentelemetry_sdk5trace14span_processorNtB9_18BatchSpanProcessor3new0s3_10___CALLSITE, i64 16) monotonic, align 8, !noalias !9654 ; 3 uses
  switch i8 %i.sa, label %bb.fb [
    i8 0, label %bb.fl
    i8 1, label %bb.fc
    i8 2, label %bb.fc
  ], !prof !9657

bb.fb:                                            ; preds = %bb.fa
  %i.sb = invoke noundef i8 @_RNvMNtCs2y6mmZ7bjoM_12tracing_core8callsiteNtB2_15DefaultCallsite8register(ptr noundef nonnull align 8 @_RNvNCNvMs0_NtNtCscq8Lx7CD32J_17opentelemetry_sdk5trace14span_processorNtB9_18BatchSpanProcessor3new0s3_10___CALLSITE)
          to label %bb.fd unwind label %.loopexit.i ; 2 uses

bb.fc:                                            ; preds = %bb.fa, %bb.fd, %bb.fa
  %.sroa.065.0.i = phi i8 [ %i.sb, %bb.fd ], [ %i.sa, %bb.fa ], [ %i.sa, %bb.fa ]
  %i.sc = load ptr, ptr @_RNvNCNvMs0_NtNtCscq8Lx7CD32J_17opentelemetry_sdk5trace14span_processorNtB9_18BatchSpanProcessor3new0s3_10___CALLSITE, align 8, !noalias !9654, !nonnull !3, !align !39, !noundef !3
  %i.sd = invoke noundef zeroext i1 @_RNvNtCscTw95cGIolY_7tracing15___macro_support12___is_enabled(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.sc, i8 noundef %.sroa.065.0.i)
          to label %bb.fe unwind label %.loopexit.i

bb.fd:                                            ; preds = %bb.fb
  %i.se = icmp eq i8 %i.sb, 0
  br i1 %i.se, label %bb.fl, label %bb.fc

bb.fe:                                            ; preds = %bb.fc
  br i1 %i.sd, label %bb.ff, label %bb.fl

bb.ff:                                            ; preds = %bb.fe
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ao), !noalias !9654
  %i.sf = load ptr, ptr @_RNvNCNvMs0_NtNtCscq8Lx7CD32J_17opentelemetry_sdk5trace14span_processorNtB9_18BatchSpanProcessor3new0s3_10___CALLSITE, align 8, !noalias !9654, !nonnull !3, !align !39, !noundef !3 ; 2 uses
  %i.sg = getelementptr inbounds nuw i8, ptr %i.sf, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.an), !noalias !9654
  call void @llvm.lifetime.start.p0(ptr nonnull %i.am), !noalias !9654
  store <2 x ptr> <ptr inttoptr (i64 1 to ptr), ptr inttoptr (i64 1 to ptr)>, ptr %i.am, align 16, !noalias !9654
  store ptr %i.am, ptr %i.an, align 8, !noalias !9654
  store <2 x ptr> <ptr @54, ptr @71>, ptr %i.hm, align 8, !noalias !9654
  store ptr @57, ptr %i.hn, align 8, !noalias !9654
  store i64 1, ptr %i.ao, align 8, !noalias !9654
  store ptr %i.an, ptr %.sroa.067.sroa.4.0..sroa_idx.i, align 8, !noalias !9654
  store i64 2, ptr %.sroa.067.sroa.5.0..sroa_idx.i, align 8, !noalias !9654
  store ptr %i.sg, ptr %.sroa.468.0..sroa_idx.i, align 8, !noalias !9654
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !9654
  invoke void @_RNvMNtCs2y6mmZ7bjoM_12tracing_core5eventNtB2_5Event8dispatch(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.sf, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.ao)
          to label %.noexc292.i unwind label %.loopexit.i

.noexc292.i:                                      ; preds = %bb.ff
  %i.sh = load atomic i8, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher6EXISTS monotonic, align 1, !noalias !9730
  %i.si = icmp eq i8 %i.sh, 0
  br i1 %i.si, label %bb.fg, label %bb.fj

bb.fg:                                            ; preds = %.noexc292.i
  %i.sj = load atomic i64, ptr @_RNvCsaljjC7ZTCQu_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8, !noalias !9730 ; 2 uses
  %i.sk = icmp ult i64 %i.sj, 6
  call void @llvm.assume(i1 %i.sk)
  %i.sl = icmp samesign ugt i64 %i.sj, 3
  br i1 %i.sl, label %bb.fh, label %bb.fj

bb.fh:                                            ; preds = %bb.fg
  %i.sm = load ptr, ptr @_RNvNCNvMs0_NtNtCscq8Lx7CD32J_17opentelemetry_sdk5trace14span_processorNtB9_18BatchSpanProcessor3new0s3_10___CALLSITE, align 8, !noalias !9730, !nonnull !3, !align !39, !noundef !3 ; 3 uses
  %i.sn = getelementptr inbounds nuw i8, ptr %i.sm, i64 32
  %i.so = load ptr, ptr %i.sn, align 8, !nonnull !3, !noundef !3
  %i.sp = getelementptr inbounds nuw i8, ptr %i.sm, i64 40
  %i.sq = load i64, ptr %i.sp, align 8, !noundef !3
  store i64 4, ptr %i.c, align 8, !noalias !9730
  store ptr %i.so, ptr %.sroa.3.0..sroa_idx.i290.i, align 8, !noalias !9730
  store i64 %i.sq, ptr %.sroa.5.0..sroa_idx.i291.i, align 8, !noalias !9730
  %i.sr = invoke { ptr, ptr } @_RNvCsaljjC7ZTCQu_3log6logger()
          to label %.noexc293.i unwind label %.loopexit.i ; 2 uses

.noexc293.i:                                      ; preds = %bb.fh
  %i.ss = extractvalue { ptr, ptr } %i.sr, 0      ; 2 uses
  %i.st = extractvalue { ptr, ptr } %i.sr, 1      ; 2 uses
  %i.su = getelementptr inbounds nuw i8, ptr %i.st, i64 24
  %i.sv = load ptr, ptr %i.su, align 8, !invariant.load !3, !nonnull !3
  %i.sw = invoke noundef zeroext i1 %i.sv(ptr noundef %i.ss, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.c) #32
          to label %.noexc294.i unwind label %.loopexit.i, !inline_history !9733

.noexc294.i:                                      ; preds = %.noexc293.i
  br i1 %i.sw, label %bb.fi, label %bb.fj

bb.fi:                                            ; preds = %.noexc294.i
  invoke void @_RNvNtCscTw95cGIolY_7tracing15___macro_support13___tracing_log(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.sm, ptr noundef nonnull %i.ss, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.st, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.ao)
          to label %bb.fj unwind label %.loopexit.i

bb.fj:                                            ; preds = %bb.fi, %.noexc294.i, %bb.fg, %.noexc292.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !9654
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao), !noalias !9654
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am), !noalias !9654
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an), !noalias !9654
  br label %bb.fk

bb.fk:                                            ; preds = %bb.fr, %bb.fp, %bb.fm, %bb.fl, %bb.fj
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah), !noalias !9654
  %i.sx = load ptr, ptr %i.cb, align 8, !noalias !9654, !nonnull !3, !noundef !3
  %i.sy = getelementptr inbounds nuw i8, ptr %i.sx, i64 16
  invoke fastcc void @_RINvMs0_NtNtCscq8Lx7CD32J_17opentelemetry_sdk5trace14span_processorNtB6_18BatchSpanProcessor20get_spans_and_exportNtNtCs1e4wyRlCFp2_18opentelemetry_otlp4span12SpanExporterECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.ah, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.hg, ptr noundef nonnull align 8 %i.gz, ptr noalias noundef align 8 dereferenceable(24) %i.cd, ptr noalias noundef align 8 dereferenceable(16) %i.cc, ptr noundef nonnull align 8 %i.sy, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.em)
          to label %bb.fs unwind label %.loopexit.i

bb.fl:                                            ; preds = %bb.fe, %bb.fd, %bb.fa, %bb.ez
  %i.sz = load atomic i8, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher6EXISTS monotonic, align 1, !noalias !9654
  %i.ta = icmp eq i8 %i.sz, 0
  br i1 %i.ta, label %bb.fm, label %bb.fk

bb.fm:                                            ; preds = %bb.fl
  %i.tb = load atomic i64, ptr @_RNvCsaljjC7ZTCQu_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8, !noalias !9654 ; 2 uses
  %i.tc = icmp ult i64 %i.tb, 6
  call void @llvm.assume(i1 %i.tc)
  %i.td = icmp samesign ugt i64 %i.tb, 3
  br i1 %i.td, label %bb.fn, label %bb.fk

bb.fn:                                            ; preds = %bb.fm
  %i.te = load ptr, ptr @_RNvNCNvMs0_NtNtCscq8Lx7CD32J_17opentelemetry_sdk5trace14span_processorNtB9_18BatchSpanProcessor3new0s3_10___CALLSITE, align 8, !noalias !9654, !nonnull !3, !align !39, !noundef !3 ; 3 uses
  %i.tf = getelementptr inbounds nuw i8, ptr %i.te, i64 32
  %i.tg = load ptr, ptr %i.tf, align 8, !nonnull !3, !noundef !3
  %i.th = getelementptr inbounds nuw i8, ptr %i.te, i64 40
  %i.ti = load i64, ptr %i.th, align 8, !noundef !3
  store i64 4, ptr %i.al, align 8, !noalias !9654
  store ptr %i.tg, ptr %.sroa.3146.0..sroa_idx.i, align 8, !noalias !9654
  store i64 %i.ti, ptr %.sroa.5147.0..sroa_idx.i, align 8, !noalias !9654
  %i.tj = invoke { ptr, ptr } @_RNvCsaljjC7ZTCQu_3log6logger()
          to label %bb.fo unwind label %.loopexit.i ; 2 uses

bb.fo:                                            ; preds = %bb.fn
  %i.tk = extractvalue { ptr, ptr } %i.tj, 0      ; 2 uses
  %i.tl = extractvalue { ptr, ptr } %i.tj, 1      ; 2 uses
  %i.tm = getelementptr inbounds nuw i8, ptr %i.tl, i64 24
  %i.tn = load ptr, ptr %i.tm, align 8, !invariant.load !3, !nonnull !3
  %i.to = invoke noundef zeroext i1 %i.tn(ptr noundef %i.tk, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.al)
          to label %bb.fp unwind label %.loopexit.i

bb.fp:                                            ; preds = %bb.fo
  br i1 %i.to, label %bb.fq, label %bb.fk

bb.fq:                                            ; preds = %bb.fp
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak), !noalias !9654
  %i.tp = load ptr, ptr @_RNvNCNvMs0_NtNtCscq8Lx7CD32J_17opentelemetry_sdk5trace14span_processorNtB9_18BatchSpanProcessor3new0s3_10___CALLSITE, align 8, !noalias !9654, !nonnull !3, !align !39, !noundef !3
  %i.tq = getelementptr inbounds nuw i8, ptr %i.tp, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj), !noalias !9654
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai), !noalias !9654
  store <2 x ptr> <ptr inttoptr (i64 1 to ptr), ptr inttoptr (i64 1 to ptr)>, ptr %i.ai, align 16, !noalias !9654
  store ptr %i.ai, ptr %i.aj, align 8, !noalias !9654
  store <2 x ptr> <ptr @54, ptr @71>, ptr %i.ho, align 8, !noalias !9654
  store ptr @57, ptr %i.hp, align 8, !noalias !9654
  store i64 1, ptr %i.ak, align 8, !noalias !9654
  store ptr %i.aj, ptr %.sroa.4149.0..sroa_idx.i, align 8, !noalias !9654
  store i64 2, ptr %.sroa.5150.0..sroa_idx.i, align 8, !noalias !9654
  store ptr %i.tq, ptr %i.hq, align 8, !noalias !9654
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !9654
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.m, ptr noundef nonnull align 8 dereferenceable(24) %i.al, i64 24, i1 false), !noalias !9654
  invoke void @_RNvNtCscTw95cGIolY_7tracing15___macro_support13___tracing_log(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.te, ptr noundef nonnull %i.tk, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.tl, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.m, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.ak)
          to label %bb.fr unwind label %.loopexit.i

bb.fr:                                            ; preds = %bb.fq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !9654
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai), !noalias !9654
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj), !noalias !9654
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak), !noalias !9654
  br label %bb.fk

bb.fs:                                            ; preds = %bb.fk
  %i.tr = load i64, ptr %i.ah, align 8, !range !98, !alias.scope !9734, !noalias !9654, !noundef !3
  %i.ts = icmp slt i64 %i.tr, -9223372036854775805
  br i1 %i.ts, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultuNtNtCscq8Lx7CD32J_17opentelemetry_sdk5error12OTelSdkErrorEECs7p2uQeJxui2_9deltalake.exit303.i, label %bb.ft

bb.ft:                                            ; preds = %bb.fs
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ah)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit.i.i299.i unwind label %bb.fu

bb.fu:                                            ; preds = %bb.ft
  %i.tt = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ah)
          to label %.body300.i unwind label %bb.fv

bb.fv:                                            ; preds = %bb.fu
  %i.tu = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #33
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit.i.i299.i: ; preds = %bb.ft
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ah)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultuNtNtCscq8Lx7CD32J_17opentelemetry_sdk5error12OTelSdkErrorEECs7p2uQeJxui2_9deltalake.exit303.i unwind label %.loopexit.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultuNtNtCscq8Lx7CD32J_17opentelemetry_sdk5error12OTelSdkErrorEECs7p2uQeJxui2_9deltalake.exit303.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit.i.i299.i, %bb.fs
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah), !noalias !9654
  br label %bb.ey

bb.fw:                                            ; preds = %bb.az
  br i1 %i.ix, label %bb.fx, label %bb.gh

bb.fx:                                            ; preds = %bb.fw
  %i.tv = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @_RNvNCNvMs0_NtNtCscq8Lx7CD32J_17opentelemetry_sdk5trace14span_processorNtB9_18BatchSpanProcessor3new0s4_10___CALLSITE, i64 16) monotonic, align 8, !noalias !9654 ; 3 uses
  switch i8 %i.tv, label %bb.fy [
    i8 0, label %bb.gh
    i8 1, label %bb.fz
    i8 2, label %bb.fz
  ], !prof !9657

bb.fy:                                            ; preds = %bb.fx
  %i.tw = invoke noundef i8 @_RNvMNtCs2y6mmZ7bjoM_12tracing_core8callsiteNtB2_15DefaultCallsite8register(ptr noundef nonnull align 8 @_RNvNCNvMs0_NtNtCscq8Lx7CD32J_17opentelemetry_sdk5trace14span_processorNtB9_18BatchSpanProcessor3new0s4_10___CALLSITE)
          to label %bb.ga unwind label %.loopexit.split-lp.i ; 2 uses

bb.fz:                                            ; preds = %bb.fx, %bb.ga, %bb.fx
  %.sroa.075.0.i = phi i8 [ %i.tw, %bb.ga ], [ %i.tv, %bb.fx ], [ %i.tv, %bb.fx ]
  %i.tx = load ptr, ptr @_RNvNCNvMs0_NtNtCscq8Lx7CD32J_17opentelemetry_sdk5trace14span_processorNtB9_18BatchSpanProcessor3new0s4_10___CALLSITE, align 8, !noalias !9654, !nonnull !3, !align !39, !noundef !3
  %i.ty = invoke noundef zeroext i1 @_RNvNtCscTw95cGIolY_7tracing15___macro_support12___is_enabled(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.tx, i8 noundef %.sroa.075.0.i)
          to label %bb.gb unwind label %.loopexit.split-lp.i

bb.ga:                                            ; preds = %bb.fy
  %i.tz = icmp eq i8 %i.tw, 0
  br i1 %i.tz, label %bb.gh, label %bb.fz

bb.gb:                                            ; preds = %bb.fz
  br i1 %i.ty, label %bb.gc, label %bb.gh

bb.gc:                                            ; preds = %bb.gb
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag), !noalias !9654
  %i.ua = load ptr, ptr @_RNvNCNvMs0_NtNtCscq8Lx7CD32J_17opentelemetry_sdk5trace14span_processorNtB9_18BatchSpanProcessor3new0s4_10___CALLSITE, align 8, !noalias !9654, !nonnull !3, !align !39, !noundef !3 ; 2 uses
  %i.ub = getelementptr inbounds nuw i8, ptr %i.ua, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af), !noalias !9654
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae), !noalias !9654
  store ptr inttoptr (i64 1 to ptr), ptr %i.ae, align 8, !noalias !9654
  %i.uc = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %i.uc, align 8, !noalias !9654
  store ptr %i.ae, ptr %i.af, align 8, !noalias !9654
  %i.ud = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  store ptr @54, ptr %i.ud, align 8, !noalias !9654
  %i.ue = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  store ptr @67, ptr %i.ue, align 8, !noalias !9654
  %i.uf = getelementptr inbounds nuw i8, ptr %i.af, i64 24
  store ptr @57, ptr %i.uf, align 8, !noalias !9654
  %i.ug = getelementptr inbounds nuw i8, ptr %i.af, i64 32
  store ptr @73, ptr %i.ug, align 8, !noalias !9654
  %i.uh = getelementptr inbounds nuw i8, ptr %i.af, i64 40
  store ptr @57, ptr %i.uh, align 8, !noalias !9654
  store i64 1, ptr %i.ag, align 8, !noalias !9654
  %.sroa.077.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  store ptr %i.af, ptr %.sroa.077.sroa.4.0..sroa_idx.i, align 8, !noalias !9654
  %.sroa.077.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  store i64 3, ptr %.sroa.077.sroa.5.0..sroa_idx.i, align 8, !noalias !9654
  %.sroa.478.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 24
  store ptr %i.ub, ptr %.sroa.478.0..sroa_idx.i, align 8, !noalias !9654
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !9654
  invoke void @_RNvMNtCs2y6mmZ7bjoM_12tracing_core5eventNtB2_5Event8dispatch(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.ua, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.ag)
          to label %.noexc308.i unwind label %.loopexit.split-lp.i

.noexc308.i:                                      ; preds = %bb.gc
  %i.ui = load atomic i8, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher6EXISTS monotonic, align 1, !noalias !9737
  %i.uj = icmp eq i8 %i.ui, 0
  br i1 %i.uj, label %bb.gd, label %bb.gg

bb.gd:                                            ; preds = %.noexc308.i
  %i.uk = load atomic i64, ptr @_RNvCsaljjC7ZTCQu_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8, !noalias !9737 ; 2 uses
  %i.ul = icmp ult i64 %i.uk, 6
  call void @llvm.assume(i1 %i.ul)
  %i.um = icmp samesign ugt i64 %i.uk, 3
  br i1 %i.um, label %bb.ge, label %bb.gg

bb.ge:                                            ; preds = %bb.gd
  %i.un = load ptr, ptr @_RNvNCNvMs0_NtNtCscq8Lx7CD32J_17opentelemetry_sdk5trace14span_processorNtB9_18BatchSpanProcessor3new0s4_10___CALLSITE, align 8, !noalias !9737, !nonnull !3, !align !39, !noundef !3 ; 3 uses
  %i.uo = getelementptr inbounds nuw i8, ptr %i.un, i64 32
  %i.up = load ptr, ptr %i.uo, align 8, !nonnull !3, !noundef !3
  %i.uq = getelementptr inbounds nuw i8, ptr %i.un, i64 40
  %i.ur = load i64, ptr %i.uq, align 8, !noundef !3
  store i64 4, ptr %i.b, align 8, !noalias !9737
  %.sroa.3.0..sroa_idx.i306.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.up, ptr %.sroa.3.0..sroa_idx.i306.i, align 8, !noalias !9737
  %.sroa.5.0..sroa_idx.i307.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 %i.ur, ptr %.sroa.5.0..sroa_idx.i307.i, align 8, !noalias !9737
  %i.us = invoke { ptr, ptr } @_RNvCsaljjC7ZTCQu_3log6logger()
          to label %.noexc309.i unwind label %.loopexit.split-lp.i ; 2 uses

.noexc309.i:                                      ; preds = %bb.ge
  %i.ut = extractvalue { ptr, ptr } %i.us, 0      ; 2 uses
  %i.uu = extractvalue { ptr, ptr } %i.us, 1      ; 2 uses
  %i.uv = getelementptr inbounds nuw i8, ptr %i.uu, i64 24
  %i.uw = load ptr, ptr %i.uv, align 8, !invariant.load !3, !nonnull !3
  %i.ux = invoke noundef zeroext i1 %i.uw(ptr noundef %i.ut, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.b) #32
          to label %.noexc310.i unwind label %.loopexit.split-lp.i, !inline_history !9740

.noexc310.i:                                      ; preds = %.noexc309.i
  br i1 %i.ux, label %bb.gf, label %bb.gg

bb.gf:                                            ; preds = %.noexc310.i
  invoke void @_RNvNtCscTw95cGIolY_7tracing15___macro_support13___tracing_log(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.un, ptr noundef nonnull %i.ut, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.uu, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.ag)
          to label %bb.gg unwind label %.loopexit.split-lp.i

bb.gg:                                            ; preds = %bb.gf, %.noexc310.i, %bb.gd, %.noexc308.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !9654
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag), !noalias !9654
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae), !noalias !9654
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af), !noalias !9654
  br label %bb.go

bb.gh:                                            ; preds = %bb.gb, %bb.ga, %bb.fx, %bb.fw
  %i.uy = load atomic i8, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher6EXISTS monotonic, align 1, !noalias !9654
  %i.uz = icmp eq i8 %i.uy, 0
  br i1 %i.uz, label %bb.gi, label %bb.go

bb.gi:                                            ; preds = %bb.gh
  %i.va = load atomic i64, ptr @_RNvCsaljjC7ZTCQu_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8, !noalias !9654 ; 2 uses
  %i.vb = icmp ult i64 %i.va, 6
  call void @llvm.assume(i1 %i.vb)
  %i.vc = icmp samesign ugt i64 %i.va, 3
  br i1 %i.vc, label %bb.gj, label %bb.go

bb.gj:                                            ; preds = %bb.gi
  %i.vd = load ptr, ptr @_RNvNCNvMs0_NtNtCscq8Lx7CD32J_17opentelemetry_sdk5trace14span_processorNtB9_18BatchSpanProcessor3new0s4_10___CALLSITE, align 8, !noalias !9654, !nonnull !3, !align !39, !noundef !3 ; 3 uses
  %i.ve = getelementptr inbounds nuw i8, ptr %i.vd, i64 32
  %i.vf = load ptr, ptr %i.ve, align 8, !nonnull !3, !noundef !3
  %i.vg = getelementptr inbounds nuw i8, ptr %i.vd, i64 40
  %i.vh = load i64, ptr %i.vg, align 8, !noundef !3
  store i64 4, ptr %i.ad, align 8, !noalias !9654
  %.sroa.3156.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  store ptr %i.vf, ptr %.sroa.3156.0..sroa_idx.i, align 8, !noalias !9654
  %.sroa.5157.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  store i64 %i.vh, ptr %.sroa.5157.0..sroa_idx.i, align 8, !noalias !9654
  %i.vi = invoke { ptr, ptr } @_RNvCsaljjC7ZTCQu_3log6logger()
          to label %bb.gk unwind label %.loopexit.split-lp.i ; 2 uses

bb.gk:                                            ; preds = %bb.gj
  %i.vj = extractvalue { ptr, ptr } %i.vi, 0      ; 2 uses
  %i.vk = extractvalue { ptr, ptr } %i.vi, 1      ; 2 uses
  %i.vl = getelementptr inbounds nuw i8, ptr %i.vk, i64 24
  %i.vm = load ptr, ptr %i.vl, align 8, !invariant.load !3, !nonnull !3
  %i.vn = invoke noundef zeroext i1 %i.vm(ptr noundef %i.vj, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ad)
          to label %bb.gl unwind label %.loopexit.split-lp.i

bb.gl:                                            ; preds = %bb.gk
  br i1 %i.vn, label %bb.gm, label %bb.go

bb.gm:                                            ; preds = %bb.gl
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac), !noalias !9654
  %i.vo = load ptr, ptr @_RNvNCNvMs0_NtNtCscq8Lx7CD32J_17opentelemetry_sdk5trace14span_processorNtB9_18BatchSpanProcessor3new0s4_10___CALLSITE, align 8, !noalias !9654, !nonnull !3, !align !39, !noundef !3
  %i.vp = getelementptr inbounds nuw i8, ptr %i.vo, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab), !noalias !9654
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa), !noalias !9654
  store ptr inttoptr (i64 1 to ptr), ptr %i.aa, align 8, !noalias !9654
  %i.vq = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %i.vq, align 8, !noalias !9654
  store ptr %i.aa, ptr %i.ab, align 8, !noalias !9654
  %i.vr = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  store ptr @54, ptr %i.vr, align 8, !noalias !9654
  %i.vs = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  store ptr @67, ptr %i.vs, align 8, !noalias !9654
  %i.vt = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  store ptr @57, ptr %i.vt, align 8, !noalias !9654
  %i.vu = getelementptr inbounds nuw i8, ptr %i.ab, i64 32
  store ptr @73, ptr %i.vu, align 8, !noalias !9654
  %i.vv = getelementptr inbounds nuw i8, ptr %i.ab, i64 40
  store ptr @57, ptr %i.vv, align 8, !noalias !9654
  store i64 1, ptr %i.ac, align 8, !noalias !9654
  %.sroa.4159.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  store ptr %i.ab, ptr %.sroa.4159.0..sroa_idx.i, align 8, !noalias !9654
  %.sroa.5160.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  store i64 3, ptr %.sroa.5160.0..sroa_idx.i, align 8, !noalias !9654
  %i.vw = getelementptr inbounds nuw i8, ptr %i.ac, i64 24
  store ptr %i.vp, ptr %i.vw, align 8, !noalias !9654
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !9654
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.l, ptr noundef nonnull align 8 dereferenceable(24) %i.ad, i64 24, i1 false), !noalias !9654
  invoke void @_RNvNtCscTw95cGIolY_7tracing15___macro_support13___tracing_log(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.vd, ptr noundef nonnull %i.vj, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.vk, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.l, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.ac)
          to label %bb.gn unwind label %.loopexit.split-lp.i

bb.gn:                                            ; preds = %bb.gm
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !9654
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !9654
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !noalias !9654
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !noalias !9654
  br label %bb.go

bb.go:                                            ; preds = %bb.gn, %bb.gl, %bb.gi, %bb.gh, %bb.gg, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs2pqxYH9ZEk8_3std4sync4mpsc10SyncSenderINtNtB4_6result6ResultuNtNtCscq8Lx7CD32J_17opentelemetry_sdk5error12OTelSdkErrorEEECs7p2uQeJxui2_9deltalake.exit281.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ca), !noalias !9654
  %i.vx = load atomic i64, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core8metadata9MAX_LEVEL monotonic, align 8, !noalias !9654
  %i.vy = icmp ult i64 %i.vx, 2
  br i1 %i.vy, label %bb.gp, label %bb.hb

bb.gp:                                            ; preds = %bb.go
  %i.vz = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @_RNvNCNvMs0_NtNtCscq8Lx7CD32J_17opentelemetry_sdk5trace14span_processorNtB9_18BatchSpanProcessor3new0s5_10___CALLSITE, i64 16) monotonic, align 8, !noalias !9654 ; 3 uses
  switch i8 %i.vz, label %bb.gq [
    i8 0, label %bb.hb
    i8 1, label %bb.gr
    i8 2, label %bb.gr
  ], !prof !9657

bb.gq:                                            ; preds = %bb.gp
  %i.wa = invoke noundef i8 @_RNvMNtCs2y6mmZ7bjoM_12tracing_core8callsiteNtB2_15DefaultCallsite8register(ptr noundef nonnull align 8 @_RNvNCNvMs0_NtNtCscq8Lx7CD32J_17opentelemetry_sdk5trace14span_processorNtB9_18BatchSpanProcessor3new0s5_10___CALLSITE)
          to label %bb.gs unwind label %.loopexit.split-lp.i ; 2 uses

bb.gr:                                            ; preds = %bb.gp, %bb.gs, %bb.gp
  %.sroa.085.0.i = phi i8 [ %i.wa, %bb.gs ], [ %i.vz, %bb.gp ], [ %i.vz, %bb.gp ]
  %i.wb = load ptr, ptr @_RNvNCNvMs0_NtNtCscq8Lx7CD32J_17opentelemetry_sdk5trace14span_processorNtB9_18BatchSpanProcessor3new0s5_10___CALLSITE, align 8, !noalias !9654, !nonnull !3, !align !39, !noundef !3
  %i.wc = invoke noundef zeroext i1 @_RNvNtCscTw95cGIolY_7tracing15___macro_support12___is_enabled(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.wb, i8 noundef %.sroa.085.0.i)
          to label %bb.gt unwind label %.loopexit.split-lp.i

bb.gs:                                            ; preds = %bb.gq
  %i.wd = icmp eq i8 %i.wa, 0
  br i1 %i.wd, label %bb.hb, label %bb.gr

bb.gt:                                            ; preds = %bb.gr
  br i1 %i.wc, label %bb.gu, label %bb.hb

bb.gu:                                            ; preds = %bb.gt
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !noalias !9654
  %i.we = load ptr, ptr @_RNvNCNvMs0_NtNtCscq8Lx7CD32J_17opentelemetry_sdk5trace14span_processorNtB9_18BatchSpanProcessor3new0s5_10___CALLSITE, align 8, !noalias !9654, !nonnull !3, !align !39, !noundef !3 ; 2 uses
  %i.wf = getelementptr inbounds nuw i8, ptr %i.we, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y), !noalias !9654
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !noalias !9654
  store ptr inttoptr (i64 1 to ptr), ptr %i.x, align 8, !noalias !9654
  %i.wg = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %i.wg, align 8, !noalias !9654
  store ptr %i.x, ptr %i.y, align 8, !noalias !9654
  %i.wh = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  store ptr @54, ptr %i.wh, align 8, !noalias !9654
  %i.wi = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  store ptr @75, ptr %i.wi, align 8, !noalias !9654
  %i.wj = getelementptr inbounds nuw i8, ptr %i.y, i64 24
  store ptr @57, ptr %i.wj, align 8, !noalias !9654
  store i64 1, ptr %i.z, align 8, !noalias !9654
  %.sroa.087.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  store ptr %i.y, ptr %.sroa.087.sroa.4.0..sroa_idx.i, align 8, !noalias !9654
  %.sroa.087.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  store i64 2, ptr %.sroa.087.sroa.5.0..sroa_idx.i, align 8, !noalias !9654
  %.sroa.488.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.z, i64 24
  store ptr %i.wf, ptr %.sroa.488.0..sroa_idx.i, align 8, !noalias !9654
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !9654
  invoke void @_RNvMNtCs2y6mmZ7bjoM_12tracing_core5eventNtB2_5Event8dispatch(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.we, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.z)
          to label %.noexc317.i unwind label %.loopexit.split-lp.i

.noexc317.i:                                      ; preds = %bb.gu
  %i.wk = load atomic i8, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher6EXISTS monotonic, align 1, !noalias !9741
  %i.wl = icmp eq i8 %i.wk, 0
  br i1 %i.wl, label %bb.gv, label %bb.gy

bb.gv:                                            ; preds = %.noexc317.i
  %i.wm = load atomic i64, ptr @_RNvCsaljjC7ZTCQu_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8, !noalias !9741 ; 2 uses
  %i.wn = icmp ult i64 %i.wm, 6
  call void @llvm.assume(i1 %i.wn)
  %i.wo = icmp samesign ugt i64 %i.wm, 3
  br i1 %i.wo, label %bb.gw, label %bb.gy

bb.gw:                                            ; preds = %bb.gv
  %i.wp = load ptr, ptr @_RNvNCNvMs0_NtNtCscq8Lx7CD32J_17opentelemetry_sdk5trace14span_processorNtB9_18BatchSpanProcessor3new0s5_10___CALLSITE, align 8, !noalias !9741, !nonnull !3, !align !39, !noundef !3 ; 3 uses
  %i.wq = getelementptr inbounds nuw i8, ptr %i.wp, i64 32
  %i.wr = load ptr, ptr %i.wq, align 8, !nonnull !3, !noundef !3
  %i.ws = getelementptr inbounds nuw i8, ptr %i.wp, i64 40
  %i.wt = load i64, ptr %i.ws, align 8, !noundef !3
  store i64 4, ptr %i.a, align 8, !noalias !9741
  %.sroa.3.0..sroa_idx.i315.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.wr, ptr %.sroa.3.0..sroa_idx.i315.i, align 8, !noalias !9741
  %.sroa.5.0..sroa_idx.i316.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %i.wt, ptr %.sroa.5.0..sroa_idx.i316.i, align 8, !noalias !9741
  %i.wu = invoke { ptr, ptr } @_RNvCsaljjC7ZTCQu_3log6logger()
          to label %.noexc318.i unwind label %.loopexit.split-lp.i ; 2 uses

.noexc318.i:                                      ; preds = %bb.gw
  %i.wv = extractvalue { ptr, ptr } %i.wu, 0      ; 2 uses
  %i.ww = extractvalue { ptr, ptr } %i.wu, 1      ; 2 uses
  %i.wx = getelementptr inbounds nuw i8, ptr %i.ww, i64 24
  %i.wy = load ptr, ptr %i.wx, align 8, !invariant.load !3, !nonnull !3
  %i.wz = invoke noundef zeroext i1 %i.wy(ptr noundef %i.wv, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.a) #32
          to label %.noexc319.i unwind label %.loopexit.split-lp.i, !inline_history !9744

.noexc319.i:                                      ; preds = %.noexc318.i
  br i1 %i.wz, label %bb.gx, label %bb.gy

bb.gx:                                            ; preds = %.noexc319.i
  invoke void @_RNvNtCscTw95cGIolY_7tracing15___macro_support13___tracing_log(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.wp, ptr noundef nonnull %i.wv, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.ww, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.z)
          to label %bb.gy unwind label %.loopexit.split-lp.i

bb.gy:                                            ; preds = %bb.gx, %.noexc319.i, %bb.gv, %.noexc317.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !9654
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !9654
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !9654
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !9654
  br label %bb.gz

bb.gz:                                            ; preds = %bb.hh, %bb.hf, %bb.hc, %bb.hb, %bb.gy
  call void @llvm.experimental.noalias.scope.decl(metadata !9745)
  call void @llvm.experimental.noalias.scope.decl(metadata !9748)
  %i.xa = load ptr, ptr %i.cb, align 8, !alias.scope !9751, !noalias !9654, !nonnull !3, !noundef !3
  %i.xb = atomicrmw sub ptr %i.xa, i64 1 release, align 8, !noalias !9751
  %i.xc = icmp eq i64 %i.xb, 1
  br i1 %i.xc, label %bb.ha, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcINtNtNtB4_4sync6atomic6AtomicjEEECs7p2uQeJxui2_9deltalake.exit322.i

bb.ha:                                            ; preds = %bb.gz
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcINtNtNtCsbvkFyIu7lgC_4core4sync6atomic6AtomicjEE9drop_slowCs3LxfdNfGUeX_31datafusion_physical_expr_common(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.cb) #35
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcINtNtNtB4_4sync6atomic6AtomicjEEECs7p2uQeJxui2_9deltalake.exit322.i unwind label %bb.aa

bb.hb:                                            ; preds = %bb.gt, %bb.gs, %bb.gp, %bb.go
  %i.xd = load atomic i8, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher6EXISTS monotonic, align 1, !noalias !9654
  %i.xe = icmp eq i8 %i.xd, 0
  br i1 %i.xe, label %bb.hc, label %bb.gz

bb.hc:                                            ; preds = %bb.hb
  %i.xf = load atomic i64, ptr @_RNvCsaljjC7ZTCQu_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8, !noalias !9654 ; 2 uses
  %i.xg = icmp ult i64 %i.xf, 6
  call void @llvm.assume(i1 %i.xg)
  %i.xh = icmp samesign ugt i64 %i.xf, 3
  br i1 %i.xh, label %bb.hd, label %bb.gz

bb.hd:                                            ; preds = %bb.hc
  %i.xi = load ptr, ptr @_RNvNCNvMs0_NtNtCscq8Lx7CD32J_17opentelemetry_sdk5trace14span_processorNtB9_18BatchSpanProcessor3new0s5_10___CALLSITE, align 8, !noalias !9654, !nonnull !3, !align !39, !noundef !3 ; 3 uses
  %i.xj = getelementptr inbounds nuw i8, ptr %i.xi, i64 32
  %i.xk = load ptr, ptr %i.xj, align 8, !nonnull !3, !noundef !3
  %i.xl = getelementptr inbounds nuw i8, ptr %i.xi, i64 40
  %i.xm = load i64, ptr %i.xl, align 8, !noundef !3
  store i64 4, ptr %i.w, align 8, !noalias !9654
  %.sroa.3166.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  store ptr %i.xk, ptr %.sroa.3166.0..sroa_idx.i, align 8, !noalias !9654
  %.sroa.5167.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  store i64 %i.xm, ptr %.sroa.5167.0..sroa_idx.i, align 8, !noalias !9654
  %i.xn = invoke { ptr, ptr } @_RNvCsaljjC7ZTCQu_3log6logger()
          to label %bb.he unwind label %.loopexit.split-lp.i ; 2 uses

bb.he:                                            ; preds = %bb.hd
  %i.xo = extractvalue { ptr, ptr } %i.xn, 0      ; 2 uses
  %i.xp = extractvalue { ptr, ptr } %i.xn, 1      ; 2 uses
  %i.xq = getelementptr inbounds nuw i8, ptr %i.xp, i64 24
  %i.xr = load ptr, ptr %i.xq, align 8, !invariant.load !3, !nonnull !3
  %i.xs = invoke noundef zeroext i1 %i.xr(ptr noundef %i.xo, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.w)
          to label %bb.hf unwind label %.loopexit.split-lp.i

bb.hf:                                            ; preds = %bb.he
  br i1 %i.xs, label %bb.hg, label %bb.gz

bb.hg:                                            ; preds = %bb.hf
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !noalias !9654
  %i.xt = load ptr, ptr @_RNvNCNvMs0_NtNtCscq8Lx7CD32J_17opentelemetry_sdk5trace14span_processorNtB9_18BatchSpanProcessor3new0s5_10___CALLSITE, align 8, !noalias !9654, !nonnull !3, !align !39, !noundef !3
  %i.xu = getelementptr inbounds nuw i8, ptr %i.xt, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !9654
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !9654
  store ptr inttoptr (i64 1 to ptr), ptr %i.t, align 8, !noalias !9654
  %i.xv = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %i.xv, align 8, !noalias !9654
  store ptr %i.t, ptr %i.u, align 8, !noalias !9654
  %i.xw = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  store ptr @54, ptr %i.xw, align 8, !noalias !9654
  %i.xx = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  store ptr @75, ptr %i.xx, align 8, !noalias !9654
  %i.xy = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  store ptr @57, ptr %i.xy, align 8, !noalias !9654
  store i64 1, ptr %i.v, align 8, !noalias !9654
  %.sroa.4169.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  store ptr %i.u, ptr %.sroa.4169.0..sroa_idx.i, align 8, !noalias !9654
  %.sroa.5170.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  store i64 2, ptr %.sroa.5170.0..sroa_idx.i, align 8, !noalias !9654
  %i.xz = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  store ptr %i.xu, ptr %i.xz, align 8, !noalias !9654
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !9654
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.k, ptr noundef nonnull align 8 dereferenceable(24) %i.w, i64 24, i1 false), !noalias !9654
  invoke void @_RNvNtCscTw95cGIolY_7tracing15___macro_support13___tracing_log(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.xi, ptr noundef nonnull %i.xo, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.xp, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.k, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.v)
          to label %bb.hh unwind label %.loopexit.split-lp.i

bb.hh:                                            ; preds = %bb.hg
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !9654
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !9654
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !9654
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !9654
  br label %bb.gz

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcINtNtNtB4_4sync6atomic6AtomicjEEECs7p2uQeJxui2_9deltalake.exit322.i: ; preds = %bb.ha, %bb.gz
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cb), !noalias !9654
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cc), !noalias !9654
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtNtCscq8Lx7CD32J_17opentelemetry_sdk5trace6export8SpanDataENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.cd)
          to label %bb.hj unwind label %bb.hi

bb.hi:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcINtNtNtB4_4sync6atomic6AtomicjEEECs7p2uQeJxui2_9deltalake.exit322.i
  %i.ya = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtNtCscq8Lx7CD32J_17opentelemetry_sdk5trace6export8SpanDataENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.cd)
          to label %.body326.i unwind label %bb.hk

bb.hj:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcINtNtNtB4_4sync6atomic6AtomicjEEECs7p2uQeJxui2_9deltalake.exit322.i
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtNtCscq8Lx7CD32J_17opentelemetry_sdk5trace6export8SpanDataENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.cd)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtNtCscq8Lx7CD32J_17opentelemetry_sdk5trace6export8SpanDataEECs7p2uQeJxui2_9deltalake.exit.i unwind label %bb.c

bb.hk:                                            ; preds = %bb.hi
end_hunk_2
begin_hunk_3_@_RNCNCNvMs3_NtNtCs8Hz2sPNgbCO_10datafusion9execution7contextNtB9_14SessionContext20execute_logical_plan00Cs7p2uQeJxui2_9deltalake:bb.a
  tail call void @llvm.trap()
  unreachable

bb.ke:                                            ; preds = %bb.jz
  %i.ya = getelementptr inbounds nuw i8, ptr %i.xm, i64 24
  %i.yb = load ptr, ptr %i.ya, align 8, !alias.scope !10373, !noalias !10375, !nonnull !3, !noundef !3 ; 2 uses
  %i.yc = getelementptr inbounds nuw i8, ptr %i.xm, i64 32
  %i.yd = load i64, ptr %i.yc, align 8, !alias.scope !10373, !noalias !10375, !noundef !3
  %i.ye = atomicrmw add ptr %i.yb, i64 1 monotonic, align 8, !noalias !10376
  %i.yf = icmp slt i64 %i.ye, 0
  br i1 %i.yf, label %bb.kh, label %bb.kg

bb.kf:                                            ; preds = %bb.jz
  tail call void @llvm.trap()
  unreachable

bb.kg:                                            ; preds = %bb.ke
  %i.yg = getelementptr inbounds nuw i8, ptr %i.xm, i64 40
  %i.yh = load ptr, ptr %i.yg, align 8, !alias.scope !10373, !noalias !10375, !nonnull !3, !noundef !3 ; 2 uses
  %i.yi = getelementptr inbounds nuw i8, ptr %i.xm, i64 48
  %i.yj = load i64, ptr %i.yi, align 8, !alias.scope !10373, !noalias !10375, !noundef !3
  %i.yk = atomicrmw add ptr %i.yh, i64 1 monotonic, align 8, !noalias !10376
  %i.yl = icmp slt i64 %i.yk, 0
  br i1 %i.yl, label %bb.kj, label %bb.ki

bb.kh:                                            ; preds = %bb.ke
  tail call void @llvm.trap()
  unreachable

bb.ki:                                            ; preds = %bb.kg
  store ptr %i.xp, ptr %.sink18.i248.sroa.gep430.i109, align 8, !alias.scope !10370, !noalias !10377
  store i64 %i.xr, ptr %.sink15.i250.sroa.gep431.i113, align 8, !alias.scope !10370, !noalias !10377
  br label %.sink.split.i247.i

bb.kj:                                            ; preds = %bb.kg
  tail call void @llvm.trap()
  unreachable

bb.kk:                                            ; preds = %.sink.split.i247.i, %bb.jx
  %.sink12.i256.i = phi i64 [ 8, %bb.jx ], [ %.sink12.ph.i252.i, %.sink.split.i247.i ]
  %.sink10.i257.i = phi ptr [ %i.xp, %bb.jx ], [ %.sink10.ph.i253.i, %.sink.split.i247.i ]
  %.sink9.i258.i = phi i64 [ 16, %bb.jx ], [ %.sink9.ph.i254.i, %.sink.split.i247.i ]
  %.sink7.i259.i = phi i64 [ %i.xr, %bb.jx ], [ %.sink7.ph.i255.i, %.sink.split.i247.i ]
  %i.ym = getelementptr inbounds nuw i8, ptr %i.y, i64 %.sink12.i256.i
  store ptr %.sink10.i257.i, ptr %i.ym, align 8, !alias.scope !10370, !noalias !10377
  %i.yn = getelementptr inbounds nuw i8, ptr %i.y, i64 %.sink9.i258.i
  store i64 %.sink7.i259.i, ptr %i.yn, align 8, !alias.scope !10370, !noalias !10377
  store i64 %i.xn, ptr %i.y, align 8, !alias.scope !10370, !noalias !10377
  invoke void @_RINvMs3_NtNtCs8Hz2sPNgbCO_10datafusion9execution7contextNtB6_14SessionContext14register_tableNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.z, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.xk, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(56) %i.y, ptr noundef nonnull %.sroa.3413.0.copyload.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(144) %.sroa.5414.0.copyload.i)
          to label %bb.kl unwind label %bb.kp, !noalias !10041

bb.kl:                                            ; preds = %bb.kk
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !10037
  call void @llvm.experimental.noalias.scope.decl(metadata !10378)
  %i.yo = load i64, ptr %i.z, align 8, !range !4551, !alias.scope !10381, !noalias !10383, !noundef !3 ; 2 uses
  %.not.i263.i = icmp eq i64 %i.yo, 20
  %i.yp = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.yq = load ptr, ptr %i.yp, align 8, !alias.scope !10384, !noalias !10037 ; 4 uses
  %i.yr = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %i.ys = load ptr, ptr %i.yr, align 8, !alias.scope !10384, !noalias !10037 ; 2 uses
  br i1 %.not.i263.i, label %bb.km, label %bb.kq

bb.km:                                            ; preds = %bb.kl
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !10037
  store ptr %i.yq, ptr %i.aa, align 8, !noalias !10037
  %i.yt = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  store ptr %i.ys, ptr %i.yt, align 8, !noalias !10037
  %i.yu = icmp eq ptr %i.yq, null
  br i1 %i.yu, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_EEECs7p2uQeJxui2_9deltalake.exit267.i, label %bb.kn

bb.kn:                                            ; preds = %bb.km
  %i.yv = atomicrmw sub ptr %i.yq, i64 1 release, align 8, !noalias !10385
  %i.yw = icmp eq i64 %i.yv, 1
  br i1 %i.yw, label %bb.ko, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_EEECs7p2uQeJxui2_9deltalake.exit267.i

bb.ko:                                            ; preds = %bb.kn
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_E9drop_slowBL_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.aa) #35
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_EEECs7p2uQeJxui2_9deltalake.exit267.i unwind label %.thread509.i, !noalias !10041

.thread509.i:                                     ; preds = %bb.ko
  %i.yx = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !10037
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_EECs7p2uQeJxui2_9deltalake.exit.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_EEECs7p2uQeJxui2_9deltalake.exit267.i: ; preds = %bb.ko, %bb.kn, %bb.km
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !10037
  %i.yy = load ptr, ptr %i.xj, align 8, !noalias !10037, !nonnull !3, !align !39, !noundef !3
  invoke void @_RNvMs3_NtNtCs8Hz2sPNgbCO_10datafusion9execution7contextNtB5_14SessionContext22return_empty_dataframe(ptr noalias noundef nonnull sret([336 x i8]) align 16 captures(none) dereferenceable(336) %i.r, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.yy)
          to label %bb.ks unwind label %.thread506.i, !noalias !10041

bb.kp:                                            ; preds = %bb.kk
  %i.yz = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !10037
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !10037
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !10037
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_EECs7p2uQeJxui2_9deltalake.exit.i

.thread506.i:                                     ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_EEECs7p2uQeJxui2_9deltalake.exit267.i
  %i.za = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_EECs7p2uQeJxui2_9deltalake.exit.i

bb.kq:                                            ; preds = %bb.kl
  %.sroa.12428.0..sroa_idx429.i = getelementptr inbounds nuw i8, ptr %i.z, i64 24
  %.sroa.4435.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %.sroa.4435.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.12428.0..sroa_idx429.i, i64 16, i1 false), !noalias !10037
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !10037
  call void @llvm.experimental.noalias.scope.decl(metadata !10392)
  %i.zb = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store i64 %i.yo, ptr %i.zb, align 8, !alias.scope !10395, !noalias !10037
  %.sroa.2433.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  store ptr %i.yq, ptr %.sroa.2433.0..sroa_idx.i, align 16, !alias.scope !10395, !noalias !10037
  %.sroa.3434.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  store ptr %i.ys, ptr %.sroa.3434.0..sroa_idx.i, align 8, !alias.scope !10395, !noalias !10037
  store i64 36, ptr %i.r, align 16, !alias.scope !10397, !noalias !10398
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !10037
  br label %bb.ks

bb.kr:                                            ; preds = %bb.jv
  %.sroa.4419.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %.sroa.4419.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7415.i, i64 16, i1 false), !noalias !10037
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10399)
  %i.zc = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store i64 %i.xg, ptr %i.zc, align 8, !alias.scope !10402, !noalias !10037
  %.sroa.2417.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  store ptr %.sroa.3413.0.copyload.i, ptr %.sroa.2417.0..sroa_idx.i, align 16, !alias.scope !10402, !noalias !10037
  %.sroa.3418.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  store ptr %.sroa.5414.0.copyload.i, ptr %.sroa.3418.0..sroa_idx.i, align 8, !alias.scope !10402, !noalias !10037
  store i64 36, ptr %i.r, align 16, !alias.scope !10404, !noalias !10405
  br label %bb.ks

.thread115:                                       ; preds = %bb.js, %bb.ip, %bb.hm, %bb.go
  %.ph = phi ptr [ %i.mg, %bb.go ], [ %i.tb, %bb.hm ], [ %i.vc, %bb.ip ], [ %i.xd, %bb.js ]
  %.sink.i.ph = phi i8 [ 3, %bb.go ], [ 4, %bb.hm ], [ 5, %bb.ip ], [ 6, %bb.js ]
  store i8 %.sink.i.ph, ptr %.ph, align 8, !noalias !10037
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7415.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7361.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7317.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.10292.i)
  br label %bb.kt

bb.ks:                                            ; preds = %bb.ag, %bb.au, %bb.bh, %bb.bv, %bb.bw, %bb.hi, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_EEECs7p2uQeJxui2_9deltalake.exit.i, %bb.ik, %bb.il, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_EEECs7p2uQeJxui2_9deltalake.exit242.i, %bb.jn, %bb.jo, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_EEECs7p2uQeJxui2_9deltalake.exit267.i, %bb.kq, %bb.kr
  %i.zd = phi ptr [ %i.xd, %bb.kr ], [ %i.xd, %bb.kq ], [ %i.xd, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_EEECs7p2uQeJxui2_9deltalake.exit267.i ], [ %i.vc, %bb.jo ], [ %i.vc, %bb.jn ], [ %i.vc, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_EEECs7p2uQeJxui2_9deltalake.exit242.i ], [ %i.tb, %bb.il ], [ %i.tb, %bb.ik ], [ %i.tb, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_EEECs7p2uQeJxui2_9deltalake.exit.i ], [ %i.rv, %bb.hi ], [ %i.bn, %bb.bw ], [ %i.bn, %bb.bv ], [ %i.bn, %bb.bh ], [ %i.bn, %bb.au ], [ %i.bn, %bb.ag ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(336) %0, ptr noundef nonnull align 16 dereferenceable(336) %i.r, i64 336, i1 false), !noalias !10289
  %.pre17 = load i64, ptr %0, align 16, !range !2068
  %i.ze = icmp eq i64 %.pre17, 37
  store i8 1, ptr %i.zd, align 8, !noalias !10037
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7415.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7361.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7317.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.10292.i)
  br i1 %i.ze, label %bb.kt, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs3_NtNtCs8Hz2sPNgbCO_10datafusion9execution7contextNtBO_14SessionContext21create_external_table0ECs7p2uQeJxui2_9deltalake.exit

common.ret:                                       ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs3_NtNtCs8Hz2sPNgbCO_10datafusion9execution7contextNtBO_14SessionContext21create_external_table0ECs7p2uQeJxui2_9deltalake.exit, %bb.kt
  %storemerge = phi i8 [ 3, %bb.kt ], [ 1, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs3_NtNtCs8Hz2sPNgbCO_10datafusion9execution7contextNtBO_14SessionContext21create_external_table0ECs7p2uQeJxui2_9deltalake.exit ]
  store i8 %storemerge, ptr %i.bc, align 8
  ret void

bb.kt:                                            ; preds = %.thread115, %bb.ks
  store i64 37, ptr %0, align 16
  br label %common.ret

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs3_NtNtCs8Hz2sPNgbCO_10datafusion9execution7contextNtBO_14SessionContext21create_external_table0ECs7p2uQeJxui2_9deltalake.exit: ; preds = %bb.ks
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddl19CreateExternalTableECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(312) %1)
          to label %common.ret unwind label %bb.kv

bb.ku:                                            ; preds = %bb.kv, %bb.b
  %.pn2 = phi { ptr, i32 } [ %i.zf, %bb.kv ], [ %eh.lpad-body, %bb.b ]
  store i8 2, ptr %i.bc, align 8
  resume { ptr, i32 } %.pn2

bb.kv:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs3_NtNtCs8Hz2sPNgbCO_10datafusion9execution7contextNtBO_14SessionContext21create_external_table0ECs7p2uQeJxui2_9deltalake.exit
  %i.zf = landingpad { ptr, i32 }
          cleanup
  br label %bb.ku

bb.kw:                                            ; preds = %.body, %bb.b
  %i.zg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #33
  unreachable
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc { i64, i64 } @_RNCNCNvNtNtCs14kWLkQVSKO_14deltalake_core8protocol11checkpoints24cleanup_expired_logs_for0s3_0Cs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(96) %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [72 x i8], align 8                ; 13 uses
  %i.d = alloca [72 x i8], align 8                ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !3, !noundef !3
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = load i64, ptr %i.g, align 8, !noundef !3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.i = load atomic i32, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtNtCs14kWLkQVSKO_14deltalake_core8protocol11checkpoints16CHECKPOINT_REGEX, i64 32) acquire, align 8
  %i.j = icmp eq i32 %i.i, 0
  br i1 %i.j, label %_RINvMs0_NtNtCs2pqxYH9ZEk8_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockNtNtNtCsonPGffhQyS_5regex5regex6string5RegexE5force0ECs7p2uQeJxui2_9deltalake.exit, label %bb.b, !prof !46

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr @_RNvNtNtCs14kWLkQVSKO_14deltalake_core8protocol11checkpoints16CHECKPOINT_REGEX, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.b, ptr %i.a, align 8
  call void @_RNvMs0_NtNtNtNtCs2pqxYH9ZEk8_3std3sys4sync4once5futexNtB5_4Once4call(ptr noundef nonnull align 4 getelementptr inbounds nuw (i8, ptr @_RNvNtNtCs14kWLkQVSKO_14deltalake_core8protocol11checkpoints16CHECKPOINT_REGEX, i64 32), i1 noundef zeroext true, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) @10, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @8)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %_RINvMs0_NtNtCs2pqxYH9ZEk8_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockNtNtNtCsonPGffhQyS_5regex5regex6string5RegexE5force0ECs7p2uQeJxui2_9deltalake.exit

_RINvMs0_NtNtCs2pqxYH9ZEk8_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockNtNtNtCsonPGffhQyS_5regex5regex6string5RegexE5force0ECs7p2uQeJxui2_9deltalake.exit: ; preds = %bb.a, %bb.b
  call fastcc void @_RNvMs4_NtNtCsonPGffhQyS_5regex5regex6stringNtB5_5Regex11captures_at(ptr noalias noundef align 8 captures(none) dereferenceable(72) %i.d, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @_RNvNtNtCs14kWLkQVSKO_14deltalake_core8protocol11checkpoints16CHECKPOINT_REGEX, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.f, i64 noundef %i.h) #32
  %i.k = load i64, ptr %i.d, align 8, !range !7, !noundef !3
  %.not = icmp eq i64 %i.k, 2
  br i1 %.not, label %_RNCNCNCNvNtNtCs14kWLkQVSKO_14deltalake_core8protocol11checkpoints24cleanup_expired_logs_for0s3_0s_0Cs7p2uQeJxui2_9deltalake.exit.sink.split, label %bb.c

bb.c:                                             ; preds = %_RINvMs0_NtNtCs2pqxYH9ZEk8_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockNtNtNtCsonPGffhQyS_5regex5regex6string5RegexE5force0ECs7p2uQeJxui2_9deltalake.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.c, ptr noundef nonnull align 8 dereferenceable(72) %i.d, i64 72, i1 false)
  call void @llvm.experimental.noalias.scope.decl(metadata !10406)
  call void @llvm.experimental.noalias.scope.decl(metadata !10409)
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.m = load i32, ptr %i.l, align 8, !range !2754, !alias.scope !10412, !noalias !10413, !noundef !3
  %i.n = getelementptr inbounds nuw i8, ptr %i.c, i64 44
  %i.o = load i32, ptr %i.n, align 4, !alias.scope !10412, !noalias !10413
  %i.p = trunc nuw i32 %i.m to i1
  br i1 %i.p, label %bb.d, label %_RNCNCNCNvNtNtCs14kWLkQVSKO_14deltalake_core8protocol11checkpoints24cleanup_expired_logs_for0s3_00Cs7p2uQeJxui2_9deltalake.exit.thread

bb.d:                                             ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.r = load ptr, ptr %i.q, align 8, !alias.scope !10412, !noalias !10413, !nonnull !3, !noundef !3 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  %i.t = load i64, ptr %i.s, align 8, !noalias !10416, !noundef !3 ; 3 uses
  %i.u = icmp ult i64 %i.t, 1152921504606846976
  call void @llvm.assume(i1 %i.u)
  %i.v = icmp eq i64 %i.t, 1
  br i1 %i.v, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.w = zext i32 %i.o to i64                     ; 2 uses
  %i.x = icmp samesign ugt i64 %i.t, %i.w
  br i1 %i.x, label %_RNvMs5_NtNtCslw7hBPHc6qc_14regex_automata4util8capturesNtB5_9GroupInfo4slot.exit.i.i, label %_RNCNCNCNvNtNtCs14kWLkQVSKO_14deltalake_core8protocol11checkpoints24cleanup_expired_logs_for0s3_00Cs7p2uQeJxui2_9deltalake.exit.thread

_RNvMs5_NtNtCslw7hBPHc6qc_14regex_automata4util8capturesNtB5_9GroupInfo4slot.exit.i.i: ; preds = %bb.e
  %i.y = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  %i.z = load ptr, ptr %i.y, align 8, !noalias !10416, !nonnull !3, !noundef !3
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %i.w ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 4
  %i.ac = load i32, ptr %i.ab, align 4, !noalias !10416, !noundef !3
  %i.ad = zext i32 %i.ac to i64
  %i.ae = load i32, ptr %i.aa, align 4, !noalias !10416, !noundef !3
  %i.af = zext i32 %i.ae to i64                   ; 3 uses
  %i.ag = sub nsw i64 %i.ad, %i.af
  %i.ah = icmp ugt i64 %i.ag, 1
  br i1 %i.ah, label %bb.g, label %_RNCNCNCNvNtNtCs14kWLkQVSKO_14deltalake_core8protocol11checkpoints24cleanup_expired_logs_for0s3_00Cs7p2uQeJxui2_9deltalake.exit.thread

bb.f:                                             ; preds = %bb.g, %bb.d
  %.sroa.038.0.i.i = phi i64 [ %i.af, %bb.g ], [ 2, %bb.d ] ; 2 uses
  %.sroa.040.0.i.i = phi i64 [ %i.an, %bb.g ], [ 3, %bb.d ] ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.aj = load ptr, ptr %i.ai, align 8, !alias.scope !10412, !noalias !10413, !nonnull !3, !noundef !3 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.al = load i64, ptr %i.ak, align 8, !alias.scope !10412, !noalias !10413, !noundef !3 ; 2 uses
  %i.am = icmp ult i64 %.sroa.038.0.i.i, %i.al
  br i1 %i.am, label %bb.h, label %_RNCNCNCNvNtNtCs14kWLkQVSKO_14deltalake_core8protocol11checkpoints24cleanup_expired_logs_for0s3_00Cs7p2uQeJxui2_9deltalake.exit.thread

bb.g:                                             ; preds = %_RNvMs5_NtNtCslw7hBPHc6qc_14regex_automata4util8capturesNtB5_9GroupInfo4slot.exit.i.i
  %i.an = add nuw nsw i64 %i.af, 1
  br label %bb.f

bb.h:                                             ; preds = %bb.f
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %.sroa.038.0.i.i
  %i.ap = load i64, ptr %i.ao, align 8, !noalias !10416, !noundef !3 ; 5 uses
  %.not.i.i = icmp ne i64 %i.ap, 0
  %i.aq = icmp ult i64 %.sroa.040.0.i.i, %i.al
  %or.cond.i.i = select i1 %.not.i.i, i1 %i.aq, i1 false
  br i1 %or.cond.i.i, label %bb.i, label %_RNCNCNCNvNtNtCs14kWLkQVSKO_14deltalake_core8protocol11checkpoints24cleanup_expired_logs_for0s3_00Cs7p2uQeJxui2_9deltalake.exit.thread

bb.i:                                             ; preds = %bb.h
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %.sroa.040.0.i.i
  %i.as = load i64, ptr %i.ar, align 8, !noalias !10416, !noundef !3 ; 3 uses
  %.not44.i.i = icmp eq i64 %i.as, 0
  br i1 %.not44.i.i, label %_RNCNCNCNvNtNtCs14kWLkQVSKO_14deltalake_core8protocol11checkpoints24cleanup_expired_logs_for0s3_00Cs7p2uQeJxui2_9deltalake.exit.thread, label %bb.j

_RNCNCNCNvNtNtCs14kWLkQVSKO_14deltalake_core8protocol11checkpoints24cleanup_expired_logs_for0s3_00Cs7p2uQeJxui2_9deltalake.exit.thread: ; preds = %bb.i, %bb.h, %bb.f, %_RNvMs5_NtNtCslw7hBPHc6qc_14regex_automata4util8capturesNtB5_9GroupInfo4slot.exit.i.i, %bb.e, %bb.c
  %i.at = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  call fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCslw7hBPHc6qc_14regex_automata4util8captures8CapturesECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(40) %i.at), !noalias !10417
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %_RNCNCNCNvNtNtCs14kWLkQVSKO_14deltalake_core8protocol11checkpoints24cleanup_expired_logs_for0s3_0s_0Cs7p2uQeJxui2_9deltalake.exit.sink.split

bb.j:                                             ; preds = %bb.i
  %i.au = add i64 %i.ap, -1                       ; 7 uses
  %i.av = add i64 %i.as, -1                       ; 6 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  %i.ax = load i64, ptr %i.aw, align 8, !alias.scope !10406, !noalias !10417, !noundef !3 ; 5 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  %i.az = load ptr, ptr %i.ay, align 8, !alias.scope !10406, !noalias !10417, !nonnull !3, !noundef !3 ; 6 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  call fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCslw7hBPHc6qc_14regex_automata4util8captures8CapturesECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(40) %i.ba), !noalias !10417
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %.not.i.i2 = icmp ugt i64 %i.au, %i.av
  br i1 %.not.i.i2, label %bb.ag, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bb = icmp eq i64 %i.au, 0
  br i1 %i.bb, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %.not5.i.i = icmp ult i64 %i.au, %i.ax
  br i1 %.not5.i.i, label %bb.o, label %bb.n

bb.m:                                             ; preds = %bb.o, %bb.n, %bb.k
  %i.bc = icmp eq i64 %i.av, 0
  br i1 %i.bc, label %bb.s, label %bb.p

bb.n:                                             ; preds = %bb.l
  %i.bd = icmp eq i64 %i.au, %i.ax
  br i1 %i.bd, label %bb.m, label %bb.ag

bb.o:                                             ; preds = %bb.l
  %i.be = getelementptr inbounds nuw i8, ptr %i.az, i64 %i.au
  %i.bf = load i8, ptr %i.be, align 1, !alias.scope !10418, !noalias !10421, !noundef !3
  %i.bg = icmp sgt i8 %i.bf, -65
  br i1 %i.bg, label %bb.m, label %bb.ag

bb.p:                                             ; preds = %bb.m
  %.not6.i.i = icmp ult i64 %i.av, %i.ax
  br i1 %.not6.i.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bh = icmp eq i64 %i.av, %i.ax
  br i1 %i.bh, label %bb.s, label %bb.ag

bb.r:                                             ; preds = %bb.p
  %i.bi = getelementptr inbounds nuw i8, ptr %i.az, i64 %i.av
  %i.bj = load i8, ptr %i.bi, align 1, !alias.scope !10418, !noalias !10421, !noundef !3
  %i.bk = icmp sgt i8 %i.bj, -65
  br i1 %i.bk, label %bb.s, label %bb.ag

bb.s:                                             ; preds = %bb.r, %bb.q, %bb.m
  %i.bl = sub i64 %i.as, %i.ap                    ; 6 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.az, i64 %i.au ; 3 uses
  switch i64 %i.bl, label %thread-pre-split.i.i [
    i64 0, label %_RNCNCNCNvNtNtCs14kWLkQVSKO_14deltalake_core8protocol11checkpoints24cleanup_expired_logs_for0s3_0s_0Cs7p2uQeJxui2_9deltalake.exit
    i64 1, label %bb.t
  ]

bb.t:                                             ; preds = %bb.s
  %i.bn = load i8, ptr %i.bm, align 1, !alias.scope !10424, !noalias !10427, !noundef !3 ; 2 uses
  switch i8 %i.bn, label %bb.u [
    i8 43, label %_RNCNCNCNvNtNtCs14kWLkQVSKO_14deltalake_core8protocol11checkpoints24cleanup_expired_logs_for0s3_0s_0Cs7p2uQeJxui2_9deltalake.exit
    i8 45, label %_RNCNCNCNvNtNtCs14kWLkQVSKO_14deltalake_core8protocol11checkpoints24cleanup_expired_logs_for0s3_0s_0Cs7p2uQeJxui2_9deltalake.exit
  ]

thread-pre-split.i.i:                             ; preds = %bb.s
  %.pr.i.i = load i8, ptr %i.bm, align 1, !alias.scope !10424, !noalias !10427
  br label %bb.u

bb.u:                                             ; preds = %thread-pre-split.i.i, %bb.t
  %i.bo = phi i8 [ %.pr.i.i, %thread-pre-split.i.i ], [ %i.bn, %bb.t ]
  switch i8 %i.bo, label %bb.ab [
    i8 43, label %bb.v
    i8 45, label %bb.w
  ]

bb.v:                                             ; preds = %bb.u
  %i.bp = getelementptr inbounds nuw i8, ptr %i.az, i64 %i.ap
  %i.bq = add nsw i64 %i.bl, -1
  br label %bb.ab

bb.w:                                             ; preds = %bb.u
  %i.br = getelementptr inbounds nuw i8, ptr %i.az, i64 %i.ap ; 2 uses
  %i.bs = add nsw i64 %i.bl, -1                   ; 3 uses
  %i.bt = icmp samesign ult i64 %i.bl, 17
  br i1 %i.bt, label %.preheader114.i.i, label %.lr.ph.i.i

.preheader114.i.i:                                ; preds = %bb.w
  %.not103137.i.i = icmp eq i64 %i.bs, 0
  br i1 %.not103137.i.i, label %_RNCNCNCNvNtNtCs14kWLkQVSKO_14deltalake_core8protocol11checkpoints24cleanup_expired_logs_for0s3_0s_0Cs7p2uQeJxui2_9deltalake.exit, label %.lr.ph141.i.i

.lr.ph.i.i:                                       ; preds = %bb.w, %bb.z
  %.sroa.0.1136.i.i = phi ptr [ %i.bu, %bb.z ], [ %i.br, %bb.w ] ; 2 uses
  %.sroa.26.1135.i.i = phi i64 [ %i.bv, %bb.z ], [ %i.bs, %bb.w ]
  %.sroa.084.0134.i.i = phi i64 [ %i.cg, %bb.z ], [ 0, %bb.w ]
  %i.bu = getelementptr inbounds nuw i8, ptr %.sroa.0.1136.i.i, i64 1
  %i.bv = add nsw i64 %.sroa.26.1135.i.i, -1      ; 2 uses
  %i.bw = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %.sroa.084.0134.i.i, i64 10) ; 2 uses
  %i.bx = extractvalue { i64, i1 } %i.bw, 0
  %i.by = extractvalue { i64, i1 } %i.bw, 1
  br i1 %i.by, label %_RNCNCNCNvNtNtCs14kWLkQVSKO_14deltalake_core8protocol11checkpoints24cleanup_expired_logs_for0s3_0s_0Cs7p2uQeJxui2_9deltalake.exit, label %bb.x, !prof !37

bb.x:                                             ; preds = %.lr.ph.i.i
  %i.bz = load i8, ptr %.sroa.0.1136.i.i, align 1, !alias.scope !10424, !noalias !10427, !noundef !3
  %i.ca = zext i8 %i.bz to i32
  %i.cb = add nsw i32 %i.ca, -48                  ; 2 uses
  %i.cc = icmp ult i32 %i.cb, 10
  br i1 %i.cc, label %bb.y, label %_RNCNCNCNvNtNtCs14kWLkQVSKO_14deltalake_core8protocol11checkpoints24cleanup_expired_logs_for0s3_0s_0Cs7p2uQeJxui2_9deltalake.exit

bb.y:                                             ; preds = %bb.x
  %i.cd = zext nneg i32 %i.cb to i64
  %i.ce = call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %i.bx, i64 %i.cd) ; 2 uses
  %i.cf = extractvalue { i64, i1 } %i.ce, 1
  br i1 %i.cf, label %_RNCNCNCNvNtNtCs14kWLkQVSKO_14deltalake_core8protocol11checkpoints24cleanup_expired_logs_for0s3_0s_0Cs7p2uQeJxui2_9deltalake.exit, label %bb.z, !prof !37

bb.z:                                             ; preds = %bb.y
end_hunk_3
begin_hunk_4_@_RNvXs0_NtNtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unordered4taskINtB5_4TaskINtNtB9_15futures_ordered12OrderWrapperNCNCNCNvMNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshotNtB25_8Snapshot12commit_infos0s0_00EENtNtCsI2hFLkJvVt_12futures_task8arc_wake7ArcWake11wake_by_refCs7p2uQeJxui2_9deltalake:bb.a
  %i.q = load ptr, ptr %i.a, align 8, !nonnull !3, !noundef !3
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  invoke void @_RNvMNtNtNtCs7cL0Iqqqcdm_12futures_core4task10___internal12atomic_wakerNtB2_11AtomicWaker4wake(ptr noundef nonnull align 8 %i.r)
          to label %bb.f unwind label %bb.b

bb.i:                                             ; preds = %bb.c
  %i.s = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #33
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unordered18ready_to_run_queue15ReadyToRunQueueINtNtB1l_15futures_ordered12OrderWrapperNCNCNCNvMNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshotNtB3D_8Snapshot12commit_infos0s0_00EEEECs7p2uQeJxui2_9deltalake.exit: ; preds = %bb.b, %bb.c
  resume { ptr, i32 } %i.d
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs0_NtNtNtCs8CRAYtH5WmW_12futures_util6stream6stream4fuseINtB5_4FuseINtNtB7_3map3MapINtNtB9_4iter4IterINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtCsjyY8HP3IvQ6_12object_store10ObjectMetaEENCNCNvMNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshotNtB3i_8Snapshot12commit_infos0s0_0EENtNtCs7cL0Iqqqcdm_12futures_core6stream6Stream9poll_nextCs7p2uQeJxui2_9deltalake(ptr dead_on_unwind noalias noundef writable sret([912 x i8]) align 8 captures(none) dereferenceable(912) %0, ptr noalias noundef align 8 dereferenceable(56) %1, ptr noalias noundef align 8 dereferenceable(32) %2) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.b = load i8, ptr %i.a, align 8, !range !40, !noundef !3
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvXs1_NtNtNtCs8CRAYtH5WmW_12futures_util6stream6stream3mapINtB5_3MapINtNtB9_4iter4IterINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtCsjyY8HP3IvQ6_12object_store10ObjectMetaEENCNCNvMNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshotNtB30_8Snapshot12commit_infos0s0_0ENtNtCs7cL0Iqqqcdm_12futures_core6stream6Stream9poll_nextCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([912 x i8]) align 8 captures(none) dereferenceable(912) %0, ptr noalias noundef nonnull align 8 dereferenceable(48) %1, ptr noalias noundef nonnull align 8 dereferenceable(32) %2)
  %i.d = load i64, ptr %0, align 8, !range !7, !noundef !3
  switch i64 %i.d, label %bb.e [
    i64 2, label %bb.d
    i64 1, label %bb.f
  ]

bb.c:                                             ; preds = %bb.a
  store i64 0, ptr %0, align 8
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  store i64 2, ptr %0, align 8
  br label %bb.f

bb.e:                                             ; preds = %bb.b
  store i8 1, ptr %i.a, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.b, %bb.c, %bb.d, %bb.e
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs0_NtNtNtCs8CRAYtH5WmW_12futures_util6stream6stream7collectINtB5_7CollectINtNtB9_15futures_ordered14FuturesOrderedINtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task4join10JoinHandleINtNtCsbvkFyIu7lgC_4core6result6ResultNtCsjyY8HP3IvQ6_12object_store10ListResultNtB3t_5ErrorEEEINtNtCs6Po7BT7Nknu_5alloc3vec3VecIB2Q_B2P_NtNtB1X_5error9JoinErrorEEENtNtNtB2U_6future6future6Future4pollCs7p2uQeJxui2_9deltalake(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef align 8 dereferenceable(88) %1, ptr noalias noundef align 8 dereferenceable(32) %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [72 x i8], align 8                ; 5 uses
  %i.b = alloca [72 x i8], align 8                ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 3 uses
  call void @_RNvXs6_NtNtCs8CRAYtH5WmW_12futures_util6stream15futures_orderedINtB5_14FuturesOrderedINtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task4join10JoinHandleINtNtCsbvkFyIu7lgC_4core6result6ResultNtCsjyY8HP3IvQ6_12object_store10ListResultNtB2W_5ErrorEEENtNtCs7cL0Iqqqcdm_12futures_core6stream6Stream9poll_nextCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(64) %1, ptr noalias noundef nonnull align 8 dereferenceable(32) %2)
  %i.d = load i64, ptr %i.b, align 8, !range !6364, !noundef !3 ; 2 uses
  %i.e = icmp eq i64 %i.d, -9223372036854775787
  br i1 %i.e, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.3.0..sroa_idx2 = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  br label %bb.b

._crit_edge:                                      ; preds = %bb.c, %bb.a
  store i64 -9223372036854775808, ptr %0, align 8
  br label %bb.e

bb.b:                                             ; preds = %.lr.ph, %bb.c
  %i.f = phi i64 [ %i.d, %.lr.ph ], [ %i.g, %bb.c ] ; 2 uses
  %.not = icmp eq i64 %i.f, -9223372036854775788
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !12477
  store i64 %i.f, ptr %i.a, align 8, !alias.scope !12481, !noalias !12485
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.3.0..sroa_idx2, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.3.0..sroa_idx, i64 64, i1 false)
  call void @_RNvXs_NtNtCs6Po7BT7Nknu_5alloc3vec11spec_extendINtB6_3VecINtNtCsbvkFyIu7lgC_4core6result6ResultIBU_NtCsjyY8HP3IvQ6_12object_store10ListResultNtB1B_5ErrorENtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task5error9JoinErrorEEINtB4_10SpecExtendBT_INtNtBY_6option8IntoIterBT_EE11spec_extendCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(72) %i.a), !noalias !12486
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !12477
  call void @_RNvXs6_NtNtCs8CRAYtH5WmW_12futures_util6stream15futures_orderedINtB5_14FuturesOrderedINtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task4join10JoinHandleINtNtCsbvkFyIu7lgC_4core6result6ResultNtCsjyY8HP3IvQ6_12object_store10ListResultNtB2W_5ErrorEEENtNtCs7cL0Iqqqcdm_12futures_core6stream6Stream9poll_nextCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(64) %1, ptr noalias noundef nonnull align 8 dereferenceable(32) %2)
  %i.g = load i64, ptr %i.b, align 8, !range !6364, !noundef !3 ; 2 uses
  %i.h = icmp eq i64 %i.g, -9223372036854775787
  br i1 %i.h, label %._crit_edge, label %bb.b

bb.d:                                             ; preds = %bb.b
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  store i64 0, ptr %i.c, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 72
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 80
  store i64 0, ptr %.sroa.5.0..sroa_idx, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %._crit_edge
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs0_NtNtNtCs8CRAYtH5WmW_12futures_util6stream6stream7collectINtB5_7CollectINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemINtNtB1i_6result6ResultNtCsjyY8HP3IvQ6_12object_store10ObjectMetaNtB3y_5ErrorENtNtB1i_6marker4SendEL_EEINtNtB1O_3vec3VecB39_EENtNtNtB1i_6future6future6Future4pollCs7p2uQeJxui2_9deltalake(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef align 8 dereferenceable(40) %1, ptr noalias noundef align 8 dereferenceable(32) %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [96 x i8], align 8                ; 5 uses
  %i.b = alloca [96 x i8], align 8                ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  call void @_RNvXs_NtCs7cL0Iqqqcdm_12futures_core6streamINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtB4_6Streamp4ItemINtNtBK_6result6ResultNtCsjyY8HP3IvQ6_12object_store10ObjectMetaNtB2r_5ErrorENtNtBK_6marker4SendEL_EEB1L_9poll_nextCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([96 x i8]) align 8 captures(address) dereferenceable(96) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(16) %i.c, ptr noalias noundef nonnull align 8 dereferenceable(32) %2)
  %i.d = load i64, ptr %i.b, align 8, !range !98, !noundef !3 ; 2 uses
  %i.e = icmp eq i64 %i.d, -9223372036854775806
  br i1 %i.e, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.3.0..sroa_idx2 = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  br label %bb.b

._crit_edge:                                      ; preds = %bb.c, %bb.a
  store i64 -9223372036854775808, ptr %0, align 8
  br label %bb.e

bb.b:                                             ; preds = %.lr.ph, %bb.c
  %i.f = phi i64 [ %i.d, %.lr.ph ], [ %i.g, %bb.c ] ; 2 uses
  %.not = icmp eq i64 %i.f, -9223372036854775807
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !12487
  store i64 %i.f, ptr %i.a, align 8, !alias.scope !12491, !noalias !12495
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %.sroa.3.0..sroa_idx2, ptr noundef nonnull align 8 dereferenceable(88) %.sroa.3.0..sroa_idx, i64 88, i1 false)
  call void @_RNvXs_NtNtCs6Po7BT7Nknu_5alloc3vec11spec_extendINtB6_3VecINtNtCsbvkFyIu7lgC_4core6result6ResultNtCsjyY8HP3IvQ6_12object_store10ObjectMetaNtB1x_5ErrorEEINtB4_10SpecExtendBT_INtNtBY_6option8IntoIterBT_EE11spec_extendCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(96) %i.a), !noalias !12496
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !12487
  call void @_RNvXs_NtCs7cL0Iqqqcdm_12futures_core6streamINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtB4_6Streamp4ItemINtNtBK_6result6ResultNtCsjyY8HP3IvQ6_12object_store10ObjectMetaNtB2r_5ErrorENtNtBK_6marker4SendEL_EEB1L_9poll_nextCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([96 x i8]) align 8 captures(address) dereferenceable(96) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(16) %i.c, ptr noalias noundef nonnull align 8 dereferenceable(32) %2)
  %i.g = load i64, ptr %i.b, align 8, !range !98, !noundef !3 ; 2 uses
  %i.h = icmp eq i64 %i.g, -9223372036854775806
  br i1 %i.h, label %._crit_edge, label %bb.b

bb.d:                                             ; preds = %bb.b
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  store i64 0, ptr %1, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i64 0, ptr %.sroa.5.0..sroa_idx, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %._crit_edge
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs1_NtCsd6HHSJaI3s6_16pin_project_lite9___privateINtB5_22UnsafeDropInPlaceGuardINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB1n_6future6future6Futurep6OutputIB1P_DNtNtB1n_3any3AnyNtNtB1n_6marker4SendEL_EB3n_EL_EEENtNtNtB1n_3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !noundef !3   ; 2 uses
  %.val = load ptr, ptr %i.a, align 8             ; 5 uses
  %i.b = getelementptr i8, ptr %i.a, i64 8
  %.val1 = load ptr, ptr %i.b, align 8, !nonnull !3, !align !39, !noundef !3 ; 5 uses
  %i.c = load ptr, ptr %.val1, align 8, !invariant.load !3 ; 2 uses
  %.not.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  invoke void %i.c(ptr noundef nonnull %.val)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %.val1, i64 8
  %i.e = load i64, ptr %i.d, align 8, !range !92, !invariant.load !3 ; 2 uses
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputIBX_DNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EB2s_EL_EEECs7p2uQeJxui2_9deltalake.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %.val1, i64 16
  %i.h = load i64, ptr %i.g, align 8, !range !105, !invariant.load !3
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef range(i64 1, 0) %i.e, i64 noundef range(i64 1, 536870913) %i.h) #27
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputIBX_DNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EB2s_EL_EEECs7p2uQeJxui2_9deltalake.exit

bb.e:                                             ; preds = %bb.b
  %i.i = landingpad { ptr, i32 }
          cleanup
  %i.j = getelementptr inbounds nuw i8, ptr %.val1, i64 8
  %i.k = load i64, ptr %i.j, align 8, !range !92, !invariant.load !3 ; 2 uses
  %i.l = icmp eq i64 %i.k, 0
  br i1 %i.l, label %_RNvXs8_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDNtNtNtCsbvkFyIu7lgC_4core6future6future6Futurep6OutputIBy_DNtNtBO_3any3AnyNtNtBO_6marker4SendEL_EB1U_EL_ENtNtNtBO_3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake.exit4.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.m = getelementptr inbounds nuw i8, ptr %.val1, i64 16
  %i.n = load i64, ptr %i.m, align 8, !range !105, !invariant.load !3
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef range(i64 1, 0) %i.k, i64 noundef range(i64 1, 536870913) %i.n) #27
  br label %_RNvXs8_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDNtNtNtCsbvkFyIu7lgC_4core6future6future6Futurep6OutputIBy_DNtNtBO_3any3AnyNtNtBO_6marker4SendEL_EB1U_EL_ENtNtNtBO_3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake.exit4.i.i

_RNvXs8_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDNtNtNtCsbvkFyIu7lgC_4core6future6future6Futurep6OutputIBy_DNtNtBO_3any3AnyNtNtBO_6marker4SendEL_EB1U_EL_ENtNtNtBO_3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake.exit4.i.i: ; preds = %bb.f, %bb.e
  resume { ptr, i32 } %i.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputIBX_DNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EB2s_EL_EEECs7p2uQeJxui2_9deltalake.exit: ; preds = %bb.c, %bb.d
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal void @_RNvXs1_NtNtCs8ulvy0Wg6Ot_12delta_kernel4scan5stateINtB5_15ScanFileVisitorNtNtNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider4next4scan6replay11ScanContextENtNtB9_11engine_data10RowVisitor31selected_column_names_and_typesCs7p2uQeJxui2_9deltalake(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) initializes((0, 32)) %0, ptr noalias readonly align 8 captures(none) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = load atomic i32, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvXs1_NtNtCs8ulvy0Wg6Ot_12delta_kernel4scan5stateINtB7_15ScanFileVisitorpENtNtBb_11engine_data10RowVisitor31selected_column_names_and_types15NAMES_AND_TYPES, i64 48) acquire, align 8
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %_RINvMs0_NtNtCs2pqxYH9ZEk8_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema19ColumnNamesAndTypesE5force0ECs7p2uQeJxui2_9deltalake.exit, label %bb.b, !prof !46

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr @_RNvNvXs1_NtNtCs8ulvy0Wg6Ot_12delta_kernel4scan5stateINtB7_15ScanFileVisitorpENtNtBb_11engine_data10RowVisitor31selected_column_names_and_types15NAMES_AND_TYPES, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.b, ptr %i.a, align 8
  call void @_RNvMs0_NtNtNtNtCs2pqxYH9ZEk8_3std3sys4sync4once5futexNtB5_4Once4call(ptr noundef nonnull align 4 getelementptr inbounds nuw (i8, ptr @_RNvNvXs1_NtNtCs8ulvy0Wg6Ot_12delta_kernel4scan5stateINtB7_15ScanFileVisitorpENtNtBb_11engine_data10RowVisitor31selected_column_names_and_types15NAMES_AND_TYPES, i64 48), i1 noundef zeroext true, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) @9, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @8)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %_RINvMs0_NtNtCs2pqxYH9ZEk8_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema19ColumnNamesAndTypesE5force0ECs7p2uQeJxui2_9deltalake.exit

_RINvMs0_NtNtCs2pqxYH9ZEk8_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema19ColumnNamesAndTypesE5force0ECs7p2uQeJxui2_9deltalake.exit: ; preds = %bb.a, %bb.b
  %i.e = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvXs1_NtNtCs8ulvy0Wg6Ot_12delta_kernel4scan5stateINtB7_15ScanFileVisitorpENtNtBb_11engine_data10RowVisitor31selected_column_names_and_types15NAMES_AND_TYPES, i64 8), align 8, !nonnull !3, !noundef !3
  %i.f = load i64, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvXs1_NtNtCs8ulvy0Wg6Ot_12delta_kernel4scan5stateINtB7_15ScanFileVisitorpENtNtBb_11engine_data10RowVisitor31selected_column_names_and_types15NAMES_AND_TYPES, i64 16), align 8, !noundef !3
  %i.g = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvXs1_NtNtCs8ulvy0Wg6Ot_12delta_kernel4scan5stateINtB7_15ScanFileVisitorpENtNtBb_11engine_data10RowVisitor31selected_column_names_and_types15NAMES_AND_TYPES, i64 32), align 8, !nonnull !3, !noundef !3
  %i.h = load i64, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvXs1_NtNtCs8ulvy0Wg6Ot_12delta_kernel4scan5stateINtB7_15ScanFileVisitorpENtNtBb_11engine_data10RowVisitor31selected_column_names_and_types15NAMES_AND_TYPES, i64 40), align 8, !noundef !3
  store ptr %i.e, ptr %0, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.f, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.g, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.h, ptr %i.k, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal void @_RNvXs1_NtNtCs8ulvy0Wg6Ot_12delta_kernel4scan5stateINtB5_15ScanFileVisitorNtNtNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider4next4scan6replay11ScanContextENtNtB9_11engine_data10RowVisitor5visitCs7p2uQeJxui2_9deltalake(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([96 x i8]) align 16 captures(none) dereferenceable(96) %0, ptr noalias noundef align 8 dereferenceable(184) %1, i64 noundef %2, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %3, i64 noundef range(i64 0, 576460752303423488) %4) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 7 uses
  %i.d = alloca [48 x i8], align 8                ; 8 uses
  %i.e = alloca [32 x i8], align 8                ; 7 uses
  %i.f = alloca [16 x i8], align 8                ; 5 uses
  %i.g = alloca [16 x i8], align 8                ; 5 uses
  %i.h = alloca [32 x i8], align 8                ; 7 uses
  %i.i = alloca [24 x i8], align 8                ; 7 uses
  %i.j = alloca [32 x i8], align 8                ; 7 uses
  %i.k = alloca [16 x i8], align 8                ; 5 uses
  %i.l = alloca [16 x i8], align 8                ; 5 uses
  %i.m = alloca [32 x i8], align 8                ; 8 uses
  %i.n = alloca [8 x i8], align 8                 ; 7 uses
  %i.o = alloca [96 x i8], align 16               ; 5 uses
  %i.p = alloca [24 x i8], align 8                ; 11 uses
  %i.q = alloca [48 x i8], align 8                ; 4 uses
  %i.r = alloca [24 x i8], align 8                ; 4 uses
  %i.s = alloca [160 x i8], align 8               ; 9 uses
  %i.t = alloca [96 x i8], align 16               ; 7 uses
  %.sroa.680 = alloca [48 x i8], align 8          ; 6 uses
  %i.u = alloca [48 x i8], align 8                ; 5 uses
  %i.v = alloca [48 x i8], align 8                ; 10 uses
  %i.w = alloca [96 x i8], align 16               ; 7 uses
  %.sroa.671 = alloca [48 x i8], align 8          ; 6 uses
  %.sroa.344 = alloca [16 x i8], align 8          ; 2 uses
  %i.x = alloca [96 x i8], align 16               ; 8 uses
  %.sroa.635.sroa.7 = alloca [16 x i8], align 16  ; 6 uses
  %i.y = alloca [96 x i8], align 16               ; 7 uses
  %i.z = alloca [96 x i8], align 16               ; 7 uses
  %i.aa = alloca [24 x i8], align 8               ; 10 uses
  %.sroa.64.sroa.7 = alloca [16 x i8], align 16   ; 3 uses
  %i.ab = alloca [96 x i8], align 16              ; 8 uses
  %i.ac = alloca [16 x i8], align 8               ; 5 uses
  %i.ad = alloca [8 x i8], align 8                ; 4 uses
  %i.ae = icmp eq i64 %4, 13
  br i1 %i.ae, label %.preheader, label %.split

.preheader:                                       ; preds = %bb.a
  %.not303 = icmp eq i64 %2, 0
  br i1 %.not303, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 160
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 152
  %i.ah = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %.sroa.599.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %.sroa.310.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.aj = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ak = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.al = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.am = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.an = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.ao = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.ap = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.aq = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.ar = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %.sroa.5130.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %.sroa.4140.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 8 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %.sroa.414.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.at = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.au = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %.sroa.419.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.av = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %.sroa.423.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.aw = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.ax = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %.sroa.011.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %.sroa.011.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %.sroa.412.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %.sroa.3.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.sroa.328.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %.sroa.529.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %.sroa.433.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.ay = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %.sroa.437.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.az = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.ba = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %.sroa.439.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %.sroa.540.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.bb = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.bc = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.bd = getelementptr inbounds nuw i8, ptr %3, i64 144
  %i.be = getelementptr inbounds nuw i8, ptr %3, i64 152
  %i.bf = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 168
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 176
  %i.bi = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.bj = getelementptr inbounds nuw i8, ptr %i.s, i64 136
  %i.bk = getelementptr inbounds nuw i8, ptr %i.s, i64 144
  %i.bl = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.bm = getelementptr inbounds nuw i8, ptr %i.s, i64 40
  %i.bn = getelementptr inbounds nuw i8, ptr %i.s, i64 152
  %i.bo = getelementptr inbounds nuw i8, ptr %i.s, i64 88
  %i.bp = getelementptr inbounds nuw i8, ptr %1, i64 144
  br label %bb.b

.split:                                           ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad)
  store i64 %4, ptr %i.ad, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac)
  store ptr %i.ad, ptr %i.ac, align 8
  %.sroa.493.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  store ptr @_RNvXsi_NtNtNtCsbvkFyIu7lgC_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.493.0..sroa_idx, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @_RNvNvNtCs6Po7BT7Nknu_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %.sroa.4.0..sroa_idx, ptr noundef nonnull @303, ptr noundef nonnull %i.ac)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad)
  store i64 -9223372036854775779, ptr %0, align 16
  br label %bb.c

._crit_edge:                                      ; preds = %.backedge, %.preheader
  store i64 -9223372036854775743, ptr %0, align 16
  br label %bb.c

bb.b:                                             ; preds = %.lr.ph, %.backedge
  %.sroa.096.0302 = phi i64 [ 0, %.lr.ph ], [ %i.bq, %.backedge ] ; 12 uses
  %i.bq = add nuw i64 %.sroa.096.0302, 1          ; 2 uses
  %i.br = load i64, ptr %i.af, align 8, !noundef !3 ; 2 uses
  %i.bs = icmp ult i64 %.sroa.096.0302, %i.br
  br i1 %i.bs, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.g, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit, %.split, %._crit_edge
  ret void

bb.d:                                             ; preds = %bb.b
  %i.bt = load ptr, ptr %i.ag, align 8, !nonnull !3, !noundef !3
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 %.sroa.096.0302
  %i.bv = load i8, ptr %i.bu, align 1, !range !40, !noundef !3
  %i.bw = trunc nuw i8 %i.bv to i1
  br i1 %i.bw, label %bb.f, label %.backedge

bb.e:                                             ; preds = %bb.b
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking18panic_bounds_check(i64 noundef %.sroa.096.0302, i64 noundef %i.br, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @295) #36
  unreachable

bb.f:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab)
  %i.bx = load ptr, ptr %3, align 8, !nonnull !3, !noundef !3
  %i.by = load ptr, ptr %i.ah, align 8, !nonnull !3, !align !39, !noundef !3
  call void @_RNvXs4_NtCs8ulvy0Wg6Ot_12delta_kernel11engine_dataDNtB5_7GetDataEL_INtB5_12TypedGetDataNtNtCs6Po7BT7Nknu_5alloc6string6StringE7get_opt(ptr noalias noundef nonnull sret([96 x i8]) align 16 captures(none) dereferenceable(96) %i.ab, ptr noundef nonnull %i.bx, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %i.by, i64 noundef %.sroa.096.0302, ptr noalias noundef nonnull readonly captures(address, read_provenance) @296, i64 noundef 13)
  %i.bz = load i64, ptr %i.ab, align 16, !range !2258, !noundef !3 ; 2 uses
  %.not = icmp eq i64 %i.bz, -9223372036854775743
  %.sroa.098.0.copyload = load i64, ptr %i.ai, align 8 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %.sroa.64.sroa.7, ptr noundef nonnull align 16 dereferenceable(16) %.sroa.599.0..sroa_idx, i64 16, i1 false)
  br i1 %.not, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ab, i64 32
  %.sroa.4110.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %.sroa.4110.0..sroa_idx, ptr noundef nonnull align 16 dereferenceable(64) %.sroa.7.0..sroa_idx, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab)
  %.sroa.3109.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %.sroa.3109.0..sroa_idx, ptr noundef nonnull align 16 dereferenceable(16) %.sroa.64.sroa.7, i64 16, i1 false)
  store i64 %i.bz, ptr %0, align 16
  %.sroa.2108.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.098.0.copyload, ptr %.sroa.2108.0..sroa_idx, align 8
  br label %bb.c

bb.h:                                             ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab)
  %.not177 = icmp eq i64 %.sroa.098.0.copyload, -9223372036854775808
  br i1 %.not177, label %.backedge, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa)
  store i64 %.sroa.098.0.copyload, ptr %i.aa, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.310.0..sroa_idx, ptr noundef nonnull align 16 dereferenceable(16) %.sroa.64.sroa.7, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z)
  %i.ca = load ptr, ptr %i.aj, align 8, !nonnull !3, !noundef !3
  %i.cb = load ptr, ptr %i.ak, align 8, !nonnull !3, !align !39, !noundef !3
  invoke void @_RNvYDNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data7GetDataEL_INtB5_12TypedGetDataxE3getCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([96 x i8]) align 16 captures(none) dereferenceable(96) %i.z, ptr noundef nonnull %i.ca, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %i.cb, i64 noundef %.sroa.096.0302, ptr noalias noundef nonnull readonly captures(address, read_provenance) @297, i64 noundef 13)
          to label %bb.k unwind label %.loopexit

.backedge:                                        ; preds = %bb.h, %_RNvNtCs8ulvy0Wg6Ot_12delta_kernel4scan21get_transform_for_row.exit, %bb.d
  %exitcond.not = icmp eq i64 %i.bq, %2
  br i1 %exitcond.not, label %._crit_edge, label %bb.b

.loopexit:                                        ; preds = %bb.i, %bb.m, %bb.p, %_RINvMs0_NtNtCs2pqxYH9ZEk8_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema10StructTypeEE5force0ECs7p2uQeJxui2_9deltalake.exit, %bb.bh, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit.i, %bb.bb
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.ca

.loopexit.split-lp:                               ; preds = %bb.bf, %bb.bi, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs8ulvy0Wg6Ot_12delta_kernel7actions15deletion_vector24DeletionVectorDescriptorECs7p2uQeJxui2_9deltalake.exit.i.i
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.ca

bb.j:                                             ; preds = %bb.bi
  unreachable

bb.k:                                             ; preds = %bb.i
  %i.cc = load i64, ptr %i.z, align 16, !range !2258, !noundef !3 ; 2 uses
  %.not178 = icmp eq i64 %i.cc, -9223372036854775743
  %i.cd = load i64, ptr %i.al, align 8            ; 2 uses
  br i1 %.not178, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %.sroa.6116.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %.sroa.3119.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(80) %.sroa.3119.0..sroa_idx, ptr noundef nonnull align 16 dereferenceable(80) %.sroa.6116.0..sroa_idx, i64 80, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z)
  store i64 %i.cc, ptr %0, align 16
  %.sroa.2118.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.cd, ptr %.sroa.2118.0..sroa_idx, align 8
  br label %bb.bx

bb.m:                                             ; preds = %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y)
  %i.ce = load ptr, ptr %i.am, align 8, !nonnull !3, !noundef !3
  %i.cf = load ptr, ptr %i.an, align 8, !nonnull !3, !align !39, !noundef !3
  invoke void @_RNvYDNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data7GetDataEL_INtB5_12TypedGetDataxE3getCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([96 x i8]) align 16 captures(none) dereferenceable(96) %i.y, ptr noundef nonnull %i.ce, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %i.cf, i64 noundef %.sroa.096.0302, ptr noalias noundef nonnull readonly captures(address, read_provenance) @298, i64 noundef 20)
          to label %bb.n unwind label %.loopexit

bb.n:                                             ; preds = %bb.m
  %i.cg = load i64, ptr %i.y, align 16, !range !2258, !noundef !3 ; 2 uses
  %.not179 = icmp eq i64 %i.cg, -9223372036854775743
  %i.ch = load i64, ptr %i.ao, align 8            ; 2 uses
  br i1 %.not179, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %.sroa.6125.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %.sroa.3128.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(80) %.sroa.3128.0..sroa_idx, ptr noundef nonnull align 16 dereferenceable(80) %.sroa.6125.0..sroa_idx, i64 80, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y)
  store i64 %i.cg, ptr %0, align 16
  %.sroa.2127.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.ch, ptr %.sroa.2127.0..sroa_idx, align 8
  br label %bb.bx

bb.p:                                             ; preds = %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.635.sroa.7)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x)
  %i.ci = load ptr, ptr %i.ap, align 8, !nonnull !3, !noundef !3
  %i.cj = load ptr, ptr %i.aq, align 8, !nonnull !3, !align !39, !noundef !3
  invoke void @_RNvXs4_NtCs8ulvy0Wg6Ot_12delta_kernel11engine_dataDNtB5_7GetDataEL_INtB5_12TypedGetDataNtNtCs6Po7BT7Nknu_5alloc6string6StringE7get_opt(ptr noalias noundef nonnull sret([96 x i8]) align 16 captures(none) dereferenceable(96) %i.x, ptr noundef nonnull %i.ci, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %i.cj, i64 noundef %.sroa.096.0302, ptr noalias noundef nonnull readonly captures(address, read_provenance) @299, i64 noundef 14)
          to label %bb.q unwind label %.loopexit

bb.q:                                             ; preds = %bb.p
  %i.ck = load i64, ptr %i.x, align 16, !range !2258, !noundef !3 ; 2 uses
  %.not180 = icmp eq i64 %i.ck, -9223372036854775743
  %.sroa.0129.0.copyload = load i64, ptr %i.ar, align 8 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %.sroa.635.sroa.7, ptr noundef nonnull align 16 dereferenceable(16) %.sroa.5130.0..sroa_idx, i64 16, i1 false)
  br i1 %.not180, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %.sroa.7138.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.x, i64 32
  %.sroa.4144.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %.sroa.4144.0..sroa_idx, ptr noundef nonnull align 16 dereferenceable(64) %.sroa.7138.0..sroa_idx, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  %.sroa.3143.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %.sroa.3143.0..sroa_idx, ptr noundef nonnull align 16 dereferenceable(16) %.sroa.635.sroa.7, i64 16, i1 false)
  store i64 %i.ck, ptr %0, align 16
  %.sroa.2142.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.0129.0.copyload, ptr %.sroa.2142.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.635.sroa.7)
  br label %bb.bx

bb.s:                                             ; preds = %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.344, ptr noundef nonnull align 16 dereferenceable(16) %.sroa.635.sroa.7, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.635.sroa.7)
  %.not181 = icmp eq i64 %.sroa.0129.0.copyload, -9223372036854775808
  br i1 %.not181, label %bb.ba, label %bb.t

bb.t:                                             ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4140.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.344, i64 16, i1 false)
  store i64 %.sroa.0129.0.copyload, ptr %i.p, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !12497)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  %i.cl = load ptr, ptr %.sroa.4140.0..sroa_idx, align 8, !alias.scope !12497, !nonnull !3, !noundef !3 ; 2 uses
  %i.cm = load i64, ptr %i.as, align 8, !alias.scope !12497, !noundef !3 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !12497
  store ptr %i.cl, ptr %i.d, align 8, !noalias !12497
  store i64 %i.cm, ptr %.sroa.414.0..sroa_idx.i, align 8, !noalias !12497
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx.i, i8 0, i64 16, i1 false), !noalias !12497
  store ptr %i.cl, ptr %i.at, align 8, !noalias !12497
  store i64 %i.cm, ptr %i.au, align 8, !noalias !12497
  %i.cn = invoke { i64, ptr } @_RINvNtCseqDwI8vvjGQ_10serde_json2de10from_traitNtNtB4_4read7StrReadNtNtNtCs8ulvy0Wg6Ot_12delta_kernel4scan5state5StatsECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(48) %i.d)
          to label %bb.v unwind label %bb.u, !noalias !12497 ; 2 uses

.body.i:                                          ; preds = %bb.aq, %bb.aa, %bb.u
  %.pn.i = phi { ptr, i32 } [ %i.cv, %bb.aa ], [ %i.co, %bb.u ], [ %i.ea, %bb.aq ]
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.p) #37
          to label %bb.ca unwind label %bb.az

bb.u:                                             ; preds = %bb.t
  %i.co = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

bb.v:                                             ; preds = %bb.t
  %i.cp = extractvalue { i64, ptr } %i.cn, 0
  %i.cq = extractvalue { i64, ptr } %i.cn, 1      ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !12497
  %i.cr = trunc nuw i64 %i.cp to i1
  br i1 %i.cr, label %bb.ab, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.cs = ptrtoint ptr %i.cq to i64
  br label %bb.x

bb.x:                                             ; preds = %bb.ay, %bb.w
  %.sroa.3.0.i = phi i64 [ undef, %bb.ay ], [ %i.cs, %bb.w ]
  %.sroa.0.0.i = phi i64 [ 0, %bb.ay ], [ 1, %bb.w ]
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.p)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit.i unwind label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.ct = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.p)
          to label %bb.ca unwind label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.cu = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #33
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit.i: ; preds = %bb.x
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.p)
          to label %bb.bc unwind label %.loopexit

bb.aa:                                            ; preds = %bb.aw, %bb.au, %bb.at, %bb.ak, %.noexc46.i, %bb.aj, %bb.ah, %bb.ae, %bb.ad
  %i.cv = landingpad { ptr, i32 }
          cleanup
  %.val45.i = load ptr, ptr %i.n, align 8, !noalias !12497, !nonnull !3, !noundef !3
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorECs7p2uQeJxui2_9deltalake(ptr nonnull %.val45.i) #37
          to label %.body.i unwind label %bb.az

bb.ab:                                            ; preds = %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !12497
  store ptr %i.cq, ptr %i.n, align 8, !noalias !12497
  %i.cw = load atomic i64, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core8metadata9MAX_LEVEL monotonic, align 8, !noalias !12497
  %i.cx = icmp ult i64 %i.cw, 4
  br i1 %i.cx, label %bb.ac, label %bb.ar

bb.ac:                                            ; preds = %bb.ab
  %i.cy = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @_RNvNCNvXs1_NtNtCs8ulvy0Wg6Ot_12delta_kernel4scan5stateINtB9_15ScanFileVisitorpENtNtBd_11engine_data10RowVisitor5visit010___CALLSITE, i64 16) monotonic, align 8, !noalias !12497 ; 3 uses
  switch i8 %i.cy, label %bb.ad [
    i8 0, label %bb.ar
    i8 1, label %bb.ae
    i8 2, label %bb.ae
  ], !prof !9657

bb.ad:                                            ; preds = %bb.ac
  %i.cz = invoke noundef i8 @_RNvMNtCs2y6mmZ7bjoM_12tracing_core8callsiteNtB2_15DefaultCallsite8register(ptr noundef nonnull align 8 @_RNvNCNvXs1_NtNtCs8ulvy0Wg6Ot_12delta_kernel4scan5stateINtB9_15ScanFileVisitorpENtNtBd_11engine_data10RowVisitor5visit010___CALLSITE)
          to label %bb.af unwind label %bb.aa, !noalias !12497 ; 2 uses

bb.ae:                                            ; preds = %bb.ac, %bb.af, %bb.ac
  %.sroa.09.0.i = phi i8 [ %i.cz, %bb.af ], [ %i.cy, %bb.ac ], [ %i.cy, %bb.ac ]
  %i.da = load ptr, ptr @_RNvNCNvXs1_NtNtCs8ulvy0Wg6Ot_12delta_kernel4scan5stateINtB9_15ScanFileVisitorpENtNtBd_11engine_data10RowVisitor5visit010___CALLSITE, align 8, !noalias !12497, !nonnull !3, !align !39, !noundef !3
  %i.db = invoke noundef zeroext i1 @_RNvNtCscTw95cGIolY_7tracing15___macro_support12___is_enabled(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.da, i8 noundef %.sroa.09.0.i)
          to label %bb.ag unwind label %bb.aa, !noalias !12497

bb.af:                                            ; preds = %bb.ad
  %i.dc = icmp eq i8 %i.cz, 0
  br i1 %i.dc, label %bb.ar, label %bb.ae

bb.ag:                                            ; preds = %bb.ae
  br i1 %i.db, label %bb.ah, label %bb.ar

bb.ah:                                            ; preds = %bb.ag
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !12497
  %i.dd = load ptr, ptr @_RNvNCNvXs1_NtNtCs8ulvy0Wg6Ot_12delta_kernel4scan5stateINtB9_15ScanFileVisitorpENtNtBd_11engine_data10RowVisitor5visit010___CALLSITE, align 8, !noalias !12497, !nonnull !3, !align !39, !noundef !3 ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !12497
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !12497
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !12497
  store ptr %i.p, ptr %i.j, align 8, !noalias !12497
  store ptr @_RNvXsq_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core3fmt7Display3fmt, ptr %.sroa.419.0..sroa_idx.i, align 8, !noalias !12497
  store ptr %i.n, ptr %i.av, align 8, !noalias !12497
  store ptr @_RNvXs3_NtCseqDwI8vvjGQ_10serde_json5errorNtB5_5ErrorNtNtCsbvkFyIu7lgC_4core3fmt7Display3fmt, ptr %.sroa.423.0..sroa_idx.i, align 8, !noalias !12497
  store ptr @233, ptr %i.k, align 8, !noalias !12497
  store ptr %i.j, ptr %i.aw, align 8, !noalias !12497
  store ptr %i.k, ptr %i.l, align 8, !noalias !12497
  store ptr @54, ptr %i.ax, align 8, !noalias !12497
  store i64 1, ptr %i.m, align 8, !noalias !12497
  store ptr %i.l, ptr %.sroa.011.sroa.4.0..sroa_idx.i, align 8, !noalias !12497
  store i64 1, ptr %.sroa.011.sroa.5.0..sroa_idx.i, align 8, !noalias !12497
  store ptr %i.de, ptr %.sroa.412.0..sroa_idx.i, align 8, !noalias !12497
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !12497
  invoke void @_RNvMNtCs2y6mmZ7bjoM_12tracing_core5eventNtB2_5Event8dispatch(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.dd, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.m)
          to label %.noexc.i unwind label %bb.aa

.noexc.i:                                         ; preds = %bb.ah
  %i.df = load atomic i8, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher6EXISTS monotonic, align 1, !noalias !12500
  %i.dg = icmp eq i8 %i.df, 0
  br i1 %i.dg, label %bb.ai, label %bb.al

bb.ai:                                            ; preds = %.noexc.i
  %i.dh = load atomic i64, ptr @_RNvCsaljjC7ZTCQu_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8, !noalias !12500 ; 2 uses
  %i.di = icmp ult i64 %i.dh, 6
  call void @llvm.assume(i1 %i.di)
  %i.dj = icmp samesign ugt i64 %i.dh, 1
  br i1 %i.dj, label %bb.aj, label %bb.al

bb.aj:                                            ; preds = %bb.ai
  %i.dk = load ptr, ptr @_RNvNCNvXs1_NtNtCs8ulvy0Wg6Ot_12delta_kernel4scan5stateINtB9_15ScanFileVisitorpENtNtBd_11engine_data10RowVisitor5visit010___CALLSITE, align 8, !noalias !12500, !nonnull !3, !align !39, !noundef !3 ; 3 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 32
  %i.dm = load ptr, ptr %i.dl, align 8, !nonnull !3, !noundef !3
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dk, i64 40
  %i.do = load i64, ptr %i.dn, align 8, !noundef !3
  store i64 2, ptr %i.c, align 8, !noalias !12500
  store ptr %i.dm, ptr %.sroa.3.0..sroa_idx.i.i, align 8, !noalias !12500
  store i64 %i.do, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !noalias !12500
  %i.dp = invoke { ptr, ptr } @_RNvCsaljjC7ZTCQu_3log6logger()
          to label %.noexc46.i unwind label %bb.aa ; 2 uses

.noexc46.i:                                       ; preds = %bb.aj
  %i.dq = extractvalue { ptr, ptr } %i.dp, 0      ; 2 uses
  %i.dr = extractvalue { ptr, ptr } %i.dp, 1      ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 24
  %i.dt = load ptr, ptr %i.ds, align 8, !invariant.load !3, !nonnull !3
  %i.du = invoke noundef zeroext i1 %i.dt(ptr noundef %i.dq, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.c) #32
          to label %.noexc47.i unwind label %bb.aa, !inline_history !12503

.noexc47.i:                                       ; preds = %.noexc46.i
  br i1 %i.du, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %.noexc47.i
  invoke void @_RNvNtCscTw95cGIolY_7tracing15___macro_support13___tracing_log(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.dk, ptr noundef nonnull %i.dq, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.dr, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.m)
          to label %bb.al unwind label %bb.aa

bb.al:                                            ; preds = %bb.ak, %.noexc47.i, %bb.ai, %.noexc.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !12497
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !12497
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !12497
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !12497
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !12497
  br label %bb.am

bb.am:                                            ; preds = %bb.ax, %bb.av, %bb.as, %bb.ar, %bb.al
  %.val.i = load ptr, ptr %i.n, align 8, !noalias !12497, !nonnull !3, !noundef !3 ; 6 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !12504)
  call void @llvm.experimental.noalias.scope.decl(metadata !12507)
  %i.dv = load i64, ptr %.val.i, align 8, !range !6098, !alias.scope !12510, !noundef !3
  switch i64 %i.dv, label %bb.ay [
    i64 0, label %bb.an
    i64 1, label %bb.ap
  ]

bb.an:                                            ; preds = %bb.am
  %i.dw = getelementptr inbounds nuw i8, ptr %.val.i, i64 16
  %.val2.i.i.i.i.i = load i64, ptr %i.dw, align 8, !alias.scope !12510, !noundef !3 ; 2 uses
  %i.dx = icmp eq i64 %.val2.i.i.i.i.i, 0
  br i1 %i.dx, label %bb.ay, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.dy = getelementptr inbounds nuw i8, ptr %.val.i, i64 8
  %.val1.i.i.i.i.i = load ptr, ptr %i.dy, align 8, !alias.scope !12510, !nonnull !3, !noundef !3
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i.i, i64 noundef range(i64 1, 0) %.val2.i.i.i.i.i, i64 noundef 1) #27, !noalias !12510
  br label %bb.ay

bb.ap:                                            ; preds = %bb.am
  %i.dz = getelementptr inbounds nuw i8, ptr %.val.i, i64 8
  %.val.i.i.i.i.i = load ptr, ptr %i.dz, align 8, !alias.scope !12510, !nonnull !3, !noundef !3
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs2pqxYH9ZEk8_3std2io5error5ErrorECs7p2uQeJxui2_9deltalake(ptr nonnull %.val.i.i.i.i.i)
          to label %bb.ay unwind label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.ea = landingpad { ptr, i32 }
          cleanup
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef 40, i64 noundef 8) #27
  br label %.body.i

bb.ar:                                            ; preds = %bb.ag, %bb.af, %bb.ac, %bb.ab
  %i.eb = load atomic i8, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher6EXISTS monotonic, align 1, !noalias !12497
  %i.ec = icmp eq i8 %i.eb, 0
  br i1 %i.ec, label %bb.as, label %bb.am

bb.as:                                            ; preds = %bb.ar
  %i.ed = load atomic i64, ptr @_RNvCsaljjC7ZTCQu_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8, !noalias !12497 ; 2 uses
  %i.ee = icmp ult i64 %i.ed, 6
  call void @llvm.assume(i1 %i.ee)
  %i.ef = icmp samesign ugt i64 %i.ed, 1
  br i1 %i.ef, label %bb.at, label %bb.am

bb.at:                                            ; preds = %bb.as
  %i.eg = load ptr, ptr @_RNvNCNvXs1_NtNtCs8ulvy0Wg6Ot_12delta_kernel4scan5stateINtB9_15ScanFileVisitorpENtNtBd_11engine_data10RowVisitor5visit010___CALLSITE, align 8, !noalias !12497, !nonnull !3, !align !39, !noundef !3 ; 3 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 32
  %i.ei = load ptr, ptr %i.eh, align 8, !noalias !12497, !nonnull !3, !noundef !3
  %i.ej = getelementptr inbounds nuw i8, ptr %i.eg, i64 40
  %i.ek = load i64, ptr %i.ej, align 8, !noalias !12497, !noundef !3
  store i64 2, ptr %i.i, align 8, !noalias !12497
  store ptr %i.ei, ptr %.sroa.328.0..sroa_idx.i, align 8, !noalias !12497
  store i64 %i.ek, ptr %.sroa.529.0..sroa_idx.i, align 8, !noalias !12497
  %i.el = invoke { ptr, ptr } @_RNvCsaljjC7ZTCQu_3log6logger()
          to label %bb.au unwind label %bb.aa, !noalias !12497 ; 2 uses

bb.au:                                            ; preds = %bb.at
  %i.em = extractvalue { ptr, ptr } %i.el, 0      ; 2 uses
  %i.en = extractvalue { ptr, ptr } %i.el, 1      ; 2 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 24
  %i.ep = load ptr, ptr %i.eo, align 8, !invariant.load !3, !noalias !12497, !nonnull !3
  %i.eq = invoke noundef zeroext i1 %i.ep(ptr noundef %i.em, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.i)
          to label %bb.av unwind label %bb.aa, !noalias !12497

bb.av:                                            ; preds = %bb.au
  br i1 %i.eq, label %bb.aw, label %bb.am

bb.aw:                                            ; preds = %bb.av
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !12497
  %i.er = load ptr, ptr @_RNvNCNvXs1_NtNtCs8ulvy0Wg6Ot_12delta_kernel4scan5stateINtB9_15ScanFileVisitorpENtNtBd_11engine_data10RowVisitor5visit010___CALLSITE, align 8, !noalias !12497, !nonnull !3, !align !39, !noundef !3
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !12497
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !12497
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !12497
  store ptr %i.p, ptr %i.e, align 8, !noalias !12497
  store ptr @_RNvXsq_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core3fmt7Display3fmt, ptr %.sroa.433.0..sroa_idx.i, align 8, !noalias !12497
  store ptr %i.n, ptr %i.ay, align 8, !noalias !12497
  store ptr @_RNvXs3_NtCseqDwI8vvjGQ_10serde_json5errorNtB5_5ErrorNtNtCsbvkFyIu7lgC_4core3fmt7Display3fmt, ptr %.sroa.437.0..sroa_idx.i, align 8, !noalias !12497
  store ptr @233, ptr %i.f, align 8, !noalias !12497
  store ptr %i.e, ptr %i.az, align 8, !noalias !12497
  store ptr %i.f, ptr %i.g, align 8, !noalias !12497
  store ptr @54, ptr %i.ba, align 8, !noalias !12497
  store i64 1, ptr %i.h, align 8, !noalias !12497
  store ptr %i.g, ptr %.sroa.439.0..sroa_idx.i, align 8, !noalias !12497
  store i64 1, ptr %.sroa.540.0..sroa_idx.i, align 8, !noalias !12497
  store ptr %i.es, ptr %i.bb, align 8, !noalias !12497
  invoke void @_RNvNtCscTw95cGIolY_7tracing15___macro_support13___tracing_log(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.eg, ptr noundef nonnull %i.em, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.en, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.h)
          to label %bb.ax unwind label %bb.aa

bb.ax:                                            ; preds = %bb.aw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !12497
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !12497
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !12497
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !12497
  br label %bb.am

bb.ay:                                            ; preds = %bb.ap, %bb.ao, %bb.an, %bb.am
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef 40, i64 noundef 8) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !12497
  br label %bb.x

bb.az:                                            ; preds = %bb.aa, %.body.i
  %i.et = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #33
  unreachable

bb.ba:                                            ; preds = %bb.s, %bb.bc
  %.sroa.348.0 = phi i64 [ %.sroa.3.0.i, %bb.bc ], [ undef, %bb.s ]
  %.sroa.047.0 = phi i64 [ %.sroa.0.0.i, %bb.bc ], [ 0, %bb.s ]
  %i.eu = load atomic i32, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtNtCs8ulvy0Wg6Ot_12delta_kernel4scan10log_replay15SCAN_ROW_SCHEMA, i64 8) acquire, align 8
  %i.ev = icmp eq i32 %i.eu, 0
  br i1 %i.ev, label %_RINvMs0_NtNtCs2pqxYH9ZEk8_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema10StructTypeEE5force0ECs7p2uQeJxui2_9deltalake.exit, label %bb.bb, !prof !46

bb.bb:                                            ; preds = %bb.ba
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr @_RNvNtNtCs8ulvy0Wg6Ot_12delta_kernel4scan10log_replay15SCAN_ROW_SCHEMA, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.b, ptr %i.a, align 8
  invoke void @_RNvMs0_NtNtNtNtCs2pqxYH9ZEk8_3std3sys4sync4once5futexNtB5_4Once4call(ptr noundef nonnull align 4 getelementptr inbounds nuw (i8, ptr @_RNvNtNtCs8ulvy0Wg6Ot_12delta_kernel4scan10log_replay15SCAN_ROW_SCHEMA, i64 8), i1 noundef zeroext true, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) @6, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @8)
          to label %.noexc unwind label %.loopexit

.noexc:                                           ; preds = %bb.bb
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %_RINvMs0_NtNtCs2pqxYH9ZEk8_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema10StructTypeEE5force0ECs7p2uQeJxui2_9deltalake.exit

bb.bc:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  br label %bb.ba

_RINvMs0_NtNtCs2pqxYH9ZEk8_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema10StructTypeEE5force0ECs7p2uQeJxui2_9deltalake.exit: ; preds = %.noexc, %bb.ba
  %i.ew = load ptr, ptr @_RNvNtNtCs8ulvy0Wg6Ot_12delta_kernel4scan10log_replay15SCAN_ROW_SCHEMA, align 8, !nonnull !3, !noundef !3
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 16
  %i.ey = invoke { i64, i64 } @_RINvMsb_NtCs8ulvy0Wg6Ot_12delta_kernel6schemaNtB6_10StructType8index_ofReECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(144) %i.ex, ptr noalias noundef nonnull readonly captures(address, read_provenance) @300, i64 noundef 14)
          to label %bb.bd unwind label %.loopexit ; 2 uses

bb.bd:                                            ; preds = %_RINvMs0_NtNtCs2pqxYH9ZEk8_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema10StructTypeEE5force0ECs7p2uQeJxui2_9deltalake.exit
  %i.ez = extractvalue { i64, i64 } %i.ey, 0
  %i.fa = extractvalue { i64, i64 } %i.ey, 1      ; 4 uses
  %i.fb = trunc nuw i64 %i.ez to i1
  br i1 %i.fb, label %bb.be, label %bb.bf

bb.be:                                            ; preds = %bb.bd
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.671)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w)
  %i.fc = icmp ugt i64 %i.fa, 13
  br i1 %i.fc, label %bb.bi, label %bb.bh, !prof !37

bb.bf:                                            ; preds = %bb.bd
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  invoke void @_RINvMNtCs8ulvy0Wg6Ot_12delta_kernel5errorNtB3_5Error14missing_columnReECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([96 x i8]) align 16 captures(address) dereferenceable(96) %i.o, ptr noalias noundef nonnull readonly captures(address, read_provenance) @300, i64 noundef 14)
          to label %bb.bg unwind label %.loopexit.split-lp

bb.bg:                                            ; preds = %bb.bf
  %.sroa.861.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %.sroa.3153.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(80) %.sroa.3153.0..sroa_idx, ptr noundef nonnull align 16 dereferenceable(80) %.sroa.861.0..sroa_idx, i64 80, i1 false)
  %i.fd = load <2 x i64>, ptr %i.o, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  store <2 x i64> %i.fd, ptr %0, align 16
  br label %bb.bx

bb.bh:                                            ; preds = %bb.be
  %i.fe = sub nuw nsw i64 13, %i.fa
  %i.ff = getelementptr inbounds nuw [16 x i8], ptr %3, i64 %i.fa
  invoke void @_RNvNtNtCs8ulvy0Wg6Ot_12delta_kernel7actions8visitors24visit_deletion_vector_at(ptr noalias noundef nonnull sret([96 x i8]) align 16 captures(none) dereferenceable(96) %i.w, i64 noundef %.sroa.096.0302, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.ff, i64 noundef %i.fe)
          to label %bb.bj unwind label %.loopexit

bb.bi:                                            ; preds = %bb.be
  invoke void @_RNvNtNtCsbvkFyIu7lgC_4core5slice5index16slice_index_fail(i64 noundef %i.fa, i64 noundef 13, i64 noundef 13, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @302) #34
          to label %bb.j unwind label %.loopexit.split-lp

bb.bj:                                            ; preds = %bb.bh
  %i.fg = load i64, ptr %i.w, align 16, !range !2258, !noundef !3 ; 2 uses
  %.not182 = icmp eq i64 %i.fg, -9223372036854775743
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.671, ptr noundef nonnull align 8 dereferenceable(48) %i.bc, i64 48, i1 false)
  br i1 %.not182, label %bb.bl, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %.sroa.6159.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 56
  %.sroa.3162.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.3162.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.6159.0..sroa_idx, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  %.sroa.2161.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.2161.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.671, i64 48, i1 false)
  store i64 %i.fg, ptr %0, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.671)
  br label %bb.bx

bb.bl:                                            ; preds = %bb.bj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.v, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.671, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.671)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.680)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  %i.fh = load ptr, ptr %i.bd, align 8, !nonnull !3, !noundef !3
  %i.fi = load ptr, ptr %i.be, align 8, !nonnull !3, !align !39, !noundef !3
  invoke void @_RNvYDNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data7GetDataEL_INtB5_12TypedGetDataINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringB2c_EE3getCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([96 x i8]) align 16 captures(none) dereferenceable(96) %i.t, ptr noundef nonnull %i.fh, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %i.fi, i64 noundef %.sroa.096.0302, ptr noalias noundef nonnull readonly captures(address, read_provenance) @301, i64 noundef 43)
          to label %bb.bm unwind label %bb.bw

bb.bm:                                            ; preds = %bb.bl
  %i.fj = load i64, ptr %i.t, align 16, !range !2258, !noundef !3 ; 2 uses
  %.not183 = icmp eq i64 %i.fj, -9223372036854775743
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.680, ptr noundef nonnull align 8 dereferenceable(48) %i.bf, i64 48, i1 false)
  br i1 %.not183, label %bb.br, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %.sroa.6168.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 56
  %.sroa.3171.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.3171.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.6168.0..sroa_idx, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  %.sroa.2170.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.2170.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.680, i64 48, i1 false)
  store i64 %i.fj, ptr %0, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.680)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  %i.fk = load i64, ptr %i.v, align 8, !range !1996, !alias.scope !12511, !noundef !3
  %i.fl = icmp eq i64 %i.fk, -9223372036854775808
  br i1 %i.fl, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs8ulvy0Wg6Ot_12delta_kernel4scan5state6DvInfoECs7p2uQeJxui2_9deltalake.exit, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.v)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs8ulvy0Wg6Ot_12delta_kernel7actions15deletion_vector24DeletionVectorDescriptorECs7p2uQeJxui2_9deltalake.exit.i.i unwind label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.fm = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.v)
          to label %bb.ca unwind label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.fn = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #33
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs8ulvy0Wg6Ot_12delta_kernel7actions15deletion_vector24DeletionVectorDescriptorECs7p2uQeJxui2_9deltalake.exit.i.i: ; preds = %bb.bo
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.v)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs8ulvy0Wg6Ot_12delta_kernel4scan5state6DvInfoECs7p2uQeJxui2_9deltalake.exit unwind label %.loopexit.split-lp

bb.br:                                            ; preds = %bb.bm
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.u, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.680, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.680)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.r, ptr noundef nonnull align 8 dereferenceable(24) %i.aa, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.q, ptr noundef nonnull align 8 dereferenceable(48) %i.v, i64 48, i1 false)
  %i.fo = load ptr, ptr %i.bg, align 8, !nonnull !3, !align !39, !noundef !3
  %i.fp = load i64, ptr %i.bh, align 8, !noundef !3
  call void @llvm.experimental.noalias.scope.decl(metadata !12516)
  %i.fq = icmp ult i64 %.sroa.096.0302, %i.fp
  br i1 %i.fq, label %bb.bs, label %_RNvNtCs8ulvy0Wg6Ot_12delta_kernel4scan21get_transform_for_row.exit

bb.bs:                                            ; preds = %bb.br
  %i.fr = getelementptr inbounds nuw [8 x i8], ptr %i.fo, i64 %.sroa.096.0302
  %i.fs = load ptr, ptr %i.fr, align 8, !alias.scope !12516, !noundef !3 ; 3 uses
  %.not.i = icmp eq ptr %i.fs, null
  br i1 %.not.i, label %_RNvNtCs8ulvy0Wg6Ot_12delta_kernel4scan21get_transform_for_row.exit, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.ft = atomicrmw add ptr %i.fs, i64 1 monotonic, align 8, !noalias !12516
  %i.fu = icmp slt i64 %i.ft, 0
  br i1 %i.fu, label %bb.bu, label %_RNvNtCs8ulvy0Wg6Ot_12delta_kernel4scan21get_transform_for_row.exit

bb.bu:                                            ; preds = %bb.bt
  call void @llvm.trap()
  unreachable

_RNvNtCs8ulvy0Wg6Ot_12delta_kernel4scan21get_transform_for_row.exit: ; preds = %bb.bt, %bb.bs, %bb.br
  %.sroa.0.0.i192 = phi ptr [ null, %bb.br ], [ null, %bb.bs ], [ %i.fs, %bb.bt ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.bo, ptr noundef nonnull align 8 dereferenceable(48) %i.u, i64 48, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bi, ptr noundef nonnull align 8 dereferenceable(24) %i.r, i64 24, i1 false)
  store i64 %i.cd, ptr %i.bj, align 8
  store i64 %i.ch, ptr %i.bk, align 8
  store i64 %.sroa.047.0, ptr %i.s, align 8
  store i64 %.sroa.348.0, ptr %i.bl, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.bm, ptr noundef nonnull align 8 dereferenceable(48) %i.q, i64 48, i1 false)
  store ptr %.sroa.0.0.i192, ptr %i.bn, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  %i.fv = load ptr, ptr %i.bp, align 8, !nonnull !3, !noundef !3
  call void %i.fv(ptr noalias noundef nonnull align 8 dereferenceable(144) %1, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(160) %i.s)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa)
  br label %.backedge

bb.bv:                                            ; preds = %bb.ca, %bb.bw
  %i.fw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #33
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs8ulvy0Wg6Ot_12delta_kernel4scan5state6DvInfoECs7p2uQeJxui2_9deltalake.exit: ; preds = %bb.bn, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs8ulvy0Wg6Ot_12delta_kernel7actions15deletion_vector24DeletionVectorDescriptorECs7p2uQeJxui2_9deltalake.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  br label %bb.bx

bb.bw:                                            ; preds = %bb.bl
  %i.fx = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs8ulvy0Wg6Ot_12delta_kernel4scan5state6DvInfoECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(48) %i.v) #37
          to label %bb.ca unwind label %bb.bv

bb.bx:                                            ; preds = %bb.o, %bb.bk, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs8ulvy0Wg6Ot_12delta_kernel4scan5state6DvInfoECs7p2uQeJxui2_9deltalake.exit, %bb.bg, %bb.r, %bb.l
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.aa)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit unwind label %bb.by

bb.by:                                            ; preds = %bb.bx
  %i.fy = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.aa)
          to label %common.resume unwind label %bb.bz

bb.bz:                                            ; preds = %bb.by
  %i.fz = landingpad { ptr, i32 }
end_hunk_4
begin_hunk_5_@_RNvYINtNtNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider4next4scan6replay14ScanFileStreamINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemINtNtB1T_6result6ResultNtNtCs8ulvy0Wg6Ot_12delta_kernel4scan12ScanMetadataNtNtBf_6errors15DeltaTableErrorENtNtB1T_6marker4SendEL_EEENtNtNtCs8CRAYtH5WmW_12futures_util6stream10try_stream12TryStreamExt19try_poll_next_unpinCs7p2uQeJxui2_9deltalake:bb.a
bb.c:                                             ; preds = %bb.b
  %i.bd = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsfYVtenZkBsn_12arrow_schema5error10ArrowErrorECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.f) #37
          to label %common.resume.i.i unwind label %bb.e, !noalias !12745

bb.d:                                             ; preds = %bb.b
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.be = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #33, !noalias !12745
  unreachable

common.resume.i.i:                                ; preds = %bb.ce, %bb.s, %.body129.i.i, %bb.c
  %common.resume.op.i.i = phi { ptr, i32 } [ %i.hq, %bb.ce ], [ %i.bd, %bb.c ], [ %i.bp, %bb.s ], [ %.pn110.i.i, %.body129.i.i ]
  resume { ptr, i32 } %common.resume.op.i.i

_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaNtNtBL_5error10ArrowErrorE6unwrapCs7p2uQeJxui2_9deltalake.exit.i.i: ; preds = %bb.a
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 184
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.an, ptr noundef nonnull readonly align 8 dereferenceable(64) %i.am, i64 64, i1 false), !alias.scope !12746, !noalias !12734
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am), !noalias !12734
  call void @llvm.lifetime.start.p0(ptr nonnull %i.al), !noalias !12734
  invoke void @_RNvXs_NtCs7cL0Iqqqcdm_12futures_core6streamINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtB4_6Streamp4ItemINtNtBK_6result6ResultNtNtCs8ulvy0Wg6Ot_12delta_kernel4scan12ScanMetadataNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorENtNtBK_6marker4SendEL_EEB1L_9poll_nextCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([96 x i8]) align 16 captures(address) dereferenceable(96) %i.al, ptr noalias noundef nonnull align 8 dereferenceable(16) %i.bf, ptr noalias noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.g unwind label %bb.f, !noalias !12747

.body129.i.i:                                     ; preds = %.thread.i.i, %bb.dc, %bb.ct, %bb.f
  %.pn110.i.i = phi { ptr, i32 } [ %.pn108174.i.i, %.thread.i.i ], [ %i.id, %bb.dc ], [ %i.bg, %bb.f ], [ %i.hz, %bb.ct ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(64) %i.an) #37
          to label %common.resume.i.i unwind label %bb.as, !noalias !12747

bb.f:                                             ; preds = %bb.cu, %bb.ca, %bb.l, %_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaNtNtBL_5error10ArrowErrorE6unwrapCs7p2uQeJxui2_9deltalake.exit.i.i
  %i.bg = landingpad { ptr, i32 }
          cleanup
  br label %.body129.i.i

bb.g:                                             ; preds = %_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaNtNtBL_5error10ArrowErrorE6unwrapCs7p2uQeJxui2_9deltalake.exit.i.i
  %i.bh = load i64, ptr %i.al, align 16, !range !922, !noalias !12734, !noundef !3
  switch i64 %i.bh, label %bb.j [
    i64 -9223372036854775709, label %bb.h
    i64 -9223372036854775710, label %bb.i
    i64 -9223372036854775711, label %bb.k
  ]

bb.h:                                             ; preds = %bb.g
  store i64 -9223372036854775709, ptr %0, align 16, !alias.scope !12747, !noalias !12748
  br label %bb.cc

bb.i:                                             ; preds = %bb.g
  store i64 -9223372036854775710, ptr %0, align 16, !alias.scope !12747, !noalias !12748
  br label %bb.cc

bb.j:                                             ; preds = %bb.g
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(96) %0, ptr noundef nonnull align 16 dereferenceable(96) %i.al, i64 96, i1 false), !noalias !12748
  br label %bb.cc

bb.k:                                             ; preds = %bb.g
  %i.bi = getelementptr inbounds nuw i8, ptr %i.al, i64 8 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.ak, ptr noundef nonnull align 8 dereferenceable(64) %i.bi, i64 64, i1 false), !noalias !12734
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj), !noalias !12734
  %i.bj = load ptr, ptr %i.as, align 8, !alias.scope !12736, !noalias !12737, !align !39, !noundef !3 ; 2 uses
  %.not87.i.i = icmp eq ptr %i.bj, null
  br i1 %.not87.i.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai), !noalias !12734
  invoke void @_RNvNtNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider4next4scan6replay20apply_file_selection(ptr noalias noundef nonnull sret([96 x i8]) align 16 captures(none) dereferenceable(96) %i.ai, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(64) %i.ak, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(216) %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.bj)
          to label %bb.n unwind label %bb.f, !noalias !12747

bb.m:                                             ; preds = %bb.k
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.aj, ptr noundef nonnull align 8 dereferenceable(64) %i.bi, i64 64, i1 false), !noalias !12734
  br label %bb.q

bb.n:                                             ; preds = %bb.l
  %i.bk = load i64, ptr %i.ai, align 16, !range !2168, !noalias !12734, !noundef !3
  %.not88.i.i = icmp eq i64 %i.bk, -9223372036854775711
  br i1 %.not88.i.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(96) %0, ptr noundef nonnull align 16 dereferenceable(96) %i.ai, i64 96, i1 false), !noalias !12748
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai), !noalias !12734
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecINtNtB4_6option6OptionINtNtBL_4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions10ExpressionEEEECs7p2uQeJxui2_9deltalake.exit.i.i

bb.p:                                             ; preds = %bb.n
  %i.bl = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.aj, ptr noundef nonnull align 8 dereferenceable(64) %i.bl, i64 64, i1 false), !noalias !12734
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai), !noalias !12734
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah), !noalias !12734
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag), !noalias !12734
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6133.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !12734
  invoke void @_RNvXs4_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.l, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(216) %1)
          to label %bb.v unwind label %.body.thread178.i.i, !noalias !12747

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecINtNtB4_6option6OptionINtNtBL_4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions10ExpressionEEEECs7p2uQeJxui2_9deltalake.exit.i.i: ; preds = %bb.cu, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj), !noalias !12734
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al), !noalias !12734
  call void @llvm.experimental.noalias.scope.decl(metadata !12749)
  call void @llvm.experimental.noalias.scope.decl(metadata !12752)
  call void @llvm.experimental.noalias.scope.decl(metadata !12755)
  call void @llvm.experimental.noalias.scope.decl(metadata !12758)
  %i.bm = load ptr, ptr %i.an, align 8, !alias.scope !12761, !noalias !12734, !nonnull !3, !noundef !3
  %i.bn = atomicrmw sub ptr %i.bm, i64 1 release, align 8, !noalias !12762
  %i.bo = icmp eq i64 %i.bn, 1
  br i1 %i.bo, label %bb.r, label %_RNvXs2_NtCs7cL0Iqqqcdm_12futures_core6streamINtNtNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider4next4scan6replay14ScanFileStreamINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtB5_6Streamp4ItemINtNtB2x_6result6ResultNtNtCs8ulvy0Wg6Ot_12delta_kernel4scan12ScanMetadataNtNtBT_6errors15DeltaTableErrorENtNtB2x_6marker4SendEL_EEENtB5_9TryStream13try_poll_nextCs7p2uQeJxui2_9deltalake.exit

bb.r:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecINtNtB4_6option6OptionINtNtBL_4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions10ExpressionEEEECs7p2uQeJxui2_9deltalake.exit.i.i
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcSIBx_NtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEE9drop_slowBP_(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.an) #35
          to label %_RNvXs2_NtCs7cL0Iqqqcdm_12futures_core6streamINtNtNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider4next4scan6replay14ScanFileStreamINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtB5_6Streamp4ItemINtNtB2x_6result6ResultNtNtCs8ulvy0Wg6Ot_12delta_kernel4scan12ScanMetadataNtNtBT_6errors15DeltaTableErrorENtNtB2x_6marker4SendEL_EEENtB5_9TryStream13try_poll_nextCs7p2uQeJxui2_9deltalake.exit unwind label %bb.s, !noalias !12747

bb.s:                                             ; preds = %bb.r
  %i.bp = landingpad { ptr, i32 }
          cleanup
  %i.bq = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  invoke void @_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringBP_EENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.bq)
          to label %common.resume.i.i unwind label %bb.t, !noalias !12747

bb.t:                                             ; preds = %bb.s
  %i.br = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #33, !noalias !12747
  unreachable

bb.u:                                             ; preds = %bb.cy
  br i1 %.not215.i.i, label %.thread.i.i, label %.body.thread.i.i

.body.thread178.i.i:                              ; preds = %bb.ae, %bb.ac, %bb.ab, %bb.y, %bb.q
  %lpad.thr_comm.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread.i.i

.body.i.i:                                        ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecbEECs7p2uQeJxui2_9deltalake.exit.i.i, %bb.bz
  %lpad.thr_comm.split-lp.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.thread.i.i

bb.v:                                             ; preds = %bb.q
  %i.bs = getelementptr inbounds nuw i8, ptr %1, i64 44 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %.sroa.0135.sroa.15.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !12763
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(17) %.sroa.0135.sroa.15.0..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(17) %i.bt, i64 17, i1 false), !noalias !12737
  %i.bu = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %1, i64 60 ; 2 uses
  %i.bw = load i32, ptr %i.bv, align 4, !alias.scope !12736, !noalias !12737, !noundef !3
  %i.bx = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr noundef nonnull align 8 dereferenceable(24) %i.l, i64 24, i1 false), !noalias !12734
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !12734
  %.sroa.6138.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 104
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6138.0..sroa_idx.i.i, i8 0, i64 16, i1 false), !noalias !12734
  %.sroa.8140.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 128
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.8140.0..sroa_idx.i.i, i8 0, i64 16, i1 false), !noalias !12734
  call void @llvm.experimental.noalias.scope.decl(metadata !12768)
  %i.by = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.bz = load ptr, ptr %i.by, align 8, !alias.scope !12768, !noalias !12769, !nonnull !3, !noundef !3
  %i.ca = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %i.cb = load i64, ptr %i.ca, align 8, !alias.scope !12768, !noalias !12769, !noundef !3
  %i.cc = getelementptr inbounds nuw i8, ptr %i.aj, i64 48
  %i.cd = load ptr, ptr %i.cc, align 8, !alias.scope !12768, !noalias !12769, !nonnull !3, !noundef !3
  %i.ce = getelementptr inbounds nuw i8, ptr %i.aj, i64 56
  %i.cf = load i64, ptr %i.ce, align 8, !alias.scope !12768, !noalias !12769, !noundef !3
  %i.cg = getelementptr inbounds nuw i8, ptr %i.e, i64 144
  store ptr @_RNvNtNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider4next4scan6replay15visit_scan_file, ptr %i.cg, align 8, !noalias !12763
  %i.ch = getelementptr inbounds nuw i8, ptr %i.e, i64 152
  store ptr %i.bz, ptr %i.ch, align 8, !noalias !12763
  %i.ci = getelementptr inbounds nuw i8, ptr %i.e, i64 160
  store i64 %i.cb, ptr %i.ci, align 8, !noalias !12763
  %i.cj = getelementptr inbounds nuw i8, ptr %i.e, i64 168
  store ptr %i.cd, ptr %i.cj, align 8, !noalias !12763
  %i.ck = getelementptr inbounds nuw i8, ptr %i.e, i64 176
  store i64 %i.cf, ptr %i.ck, align 8, !noalias !12763
  %.sroa.0135.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.cl = load <4 x i32>, ptr %i.bx, align 8, !alias.scope !12736, !noalias !12737
  store <4 x i32> %i.cl, ptr %.sroa.0135.sroa.4.0..sroa_idx.i.i, align 8, !noalias !12770
  %.sroa.0135.sroa.8.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  %i.cm = load <2 x i16>, ptr %i.bu, align 8, !alias.scope !12736, !noalias !12737
  store <2 x i16> %i.cm, ptr %.sroa.0135.sroa.8.0..sroa_idx.i.i, align 8, !noalias !12770
  %.sroa.0135.sroa.10.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 44
  %i.cn = load <4 x i32>, ptr %i.bs, align 4, !alias.scope !12736, !noalias !12737
  store <4 x i32> %i.cn, ptr %.sroa.0135.sroa.10.0..sroa_idx.i.i, align 4, !noalias !12770
  %.sroa.0135.sroa.14.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 60
  store i32 %i.bw, ptr %.sroa.0135.sroa.14.0..sroa_idx.i.i, align 4, !noalias !12770
  %.sroa.4136.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 88
  store i64 0, ptr %.sroa.4136.0..sroa_idx.i.i, align 8, !noalias !12770
  %.sroa.5137.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 96
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.5137.0..sroa_idx.i.i, align 8, !noalias !12770
  %.sroa.7139.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 120
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.7139.0..sroa_idx.i.i, align 8, !noalias !12770
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !12763
  %i.co = getelementptr inbounds nuw i8, ptr %i.aj, i64 24 ; 2 uses
  %i.cp = load ptr, ptr %i.co, align 8, !alias.scope !12768, !noalias !12769, !nonnull !3, !noundef !3
  %i.cq = getelementptr inbounds nuw i8, ptr %i.aj, i64 32 ; 2 uses
  %i.cr = load ptr, ptr %i.cq, align 8, !alias.scope !12768, !noalias !12769, !nonnull !3, !align !39, !noundef !3
  call void @llvm.experimental.noalias.scope.decl(metadata !12771)
  %i.cs = load atomic i32, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvXs1_NtNtCs8ulvy0Wg6Ot_12delta_kernel4scan5stateINtB7_15ScanFileVisitorpENtNtBb_11engine_data10RowVisitor31selected_column_names_and_types15NAMES_AND_TYPES, i64 48) acquire, align 8, !noalias !12774
  %i.ct = icmp eq i32 %i.cs, 0
  br i1 %i.ct, label %_RNvXs1_NtNtCs8ulvy0Wg6Ot_12delta_kernel4scan5stateINtB5_15ScanFileVisitorNtNtNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider4next4scan6replay11ScanContextENtNtB9_11engine_data10RowVisitor31selected_column_names_and_typesCs7p2uQeJxui2_9deltalake.exit.i.i.i.i, label %bb.w, !prof !46

bb.w:                                             ; preds = %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !12774
  store ptr @_RNvNvXs1_NtNtCs8ulvy0Wg6Ot_12delta_kernel4scan5stateINtB7_15ScanFileVisitorpENtNtBb_11engine_data10RowVisitor31selected_column_names_and_types15NAMES_AND_TYPES, ptr %i.c, align 8, !noalias !12774
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !12774
  store ptr %i.c, ptr %i.b, align 8, !noalias !12774
  invoke void @_RNvMs0_NtNtNtNtCs2pqxYH9ZEk8_3std3sys4sync4once5futexNtB5_4Once4call(ptr noundef nonnull align 4 getelementptr inbounds nuw (i8, ptr @_RNvNvXs1_NtNtCs8ulvy0Wg6Ot_12delta_kernel4scan5stateINtB7_15ScanFileVisitorpENtNtBb_11engine_data10RowVisitor31selected_column_names_and_types15NAMES_AND_TYPES, i64 48), i1 noundef zeroext true, ptr noundef nonnull %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) @9, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @8)
          to label %.noexc.i.i.i unwind label %bb.x, !noalias !12779

.noexc.i.i.i:                                     ; preds = %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !12774
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !12774
  br label %_RNvXs1_NtNtCs8ulvy0Wg6Ot_12delta_kernel4scan5stateINtB5_15ScanFileVisitorNtNtNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider4next4scan6replay11ScanContextENtNtB9_11engine_data10RowVisitor31selected_column_names_and_typesCs7p2uQeJxui2_9deltalake.exit.i.i.i.i

_RNvXs1_NtNtCs8ulvy0Wg6Ot_12delta_kernel4scan5stateINtB5_15ScanFileVisitorNtNtNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider4next4scan6replay11ScanContextENtNtB9_11engine_data10RowVisitor31selected_column_names_and_typesCs7p2uQeJxui2_9deltalake.exit.i.i.i.i: ; preds = %.noexc.i.i.i, %bb.v
  %i.cu = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvXs1_NtNtCs8ulvy0Wg6Ot_12delta_kernel4scan5stateINtB7_15ScanFileVisitorpENtNtBb_11engine_data10RowVisitor31selected_column_names_and_types15NAMES_AND_TYPES, i64 8), align 8, !noalias !12774, !nonnull !3, !noundef !3
  %i.cv = load i64, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvXs1_NtNtCs8ulvy0Wg6Ot_12delta_kernel4scan5stateINtB7_15ScanFileVisitorpENtNtBb_11engine_data10RowVisitor31selected_column_names_and_types15NAMES_AND_TYPES, i64 16), align 8, !noalias !12774, !noundef !3
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cr, i64 64
  %i.cx = load ptr, ptr %i.cw, align 8, !invariant.load !3, !alias.scope !12771, !noalias !12780, !nonnull !3
  invoke void %i.cx(ptr noalias noundef nonnull sret([96 x i8]) align 16 captures(address) dereferenceable(96) %i.d, ptr noundef nonnull %i.cp, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.cu, i64 noundef %i.cv, ptr noundef nonnull align 8 dereferenceable(184) %i.e, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) @457) #32
          to label %_RNvYINtNtNtCs8ulvy0Wg6Ot_12delta_kernel4scan5state15ScanFileVisitorNtNtNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider4next4scan6replay11ScanContextENtNtB9_11engine_data10RowVisitor13visit_rows_ofCs7p2uQeJxui2_9deltalake.exit.i.i.i unwind label %bb.x, !noalias !12779, !inline_history !12781

bb.x:                                             ; preds = %_RNvXs1_NtNtCs8ulvy0Wg6Ot_12delta_kernel4scan5stateINtB5_15ScanFileVisitorNtNtNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider4next4scan6replay11ScanContextENtNtB9_11engine_data10RowVisitor31selected_column_names_and_typesCs7p2uQeJxui2_9deltalake.exit.i.i.i.i, %bb.w
  %i.cy = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider4next4scan6replay11ScanContextECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(184) %i.e)
          to label %.body.thread.i.i unwind label %bb.z, !noalias !12779

_RNvYINtNtNtCs8ulvy0Wg6Ot_12delta_kernel4scan5state15ScanFileVisitorNtNtNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider4next4scan6replay11ScanContextENtNtB9_11engine_data10RowVisitor13visit_rows_ofCs7p2uQeJxui2_9deltalake.exit.i.i.i: ; preds = %_RNvXs1_NtNtCs8ulvy0Wg6Ot_12delta_kernel4scan5stateINtB5_15ScanFileVisitorNtNtNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider4next4scan6replay11ScanContextENtNtB9_11engine_data10RowVisitor31selected_column_names_and_typesCs7p2uQeJxui2_9deltalake.exit.i.i.i.i
  %i.cz = load i64, ptr %i.d, align 16, !range !2258, !noalias !12763, !noundef !3
  %.not.i.i.i = icmp eq i64 %i.cz, -9223372036854775743
  br i1 %.not.i.i.i, label %bb.aa, label %bb.y

bb.y:                                             ; preds = %_RNvYINtNtNtCs8ulvy0Wg6Ot_12delta_kernel4scan5state15ScanFileVisitorNtNtNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider4next4scan6replay11ScanContextENtNtB9_11engine_data10RowVisitor13visit_rows_ofCs7p2uQeJxui2_9deltalake.exit.i.i.i
  %.sroa.6133.16..sroa_idx134.i.i = getelementptr inbounds nuw i8, ptr %.sroa.6133.i.i, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %.sroa.6133.16..sroa_idx134.i.i, ptr noundef nonnull align 16 dereferenceable(96) %i.d, i64 96, i1 false), !noalias !12782
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !12763
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider4next4scan6replay11ScanContextECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(184) %i.e)
          to label %.thread181.i.i unwind label %.body.thread178.i.i, !noalias !12747

.thread181.i.i:                                   ; preds = %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !12763
  br label %bb.ab

bb.z:                                             ; preds = %bb.x
  %i.da = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #33, !noalias !12779
  unreachable

bb.aa:                                            ; preds = %_RNvYINtNtNtCs8ulvy0Wg6Ot_12delta_kernel4scan5state15ScanFileVisitorNtNtNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider4next4scan6replay11ScanContextENtNtB9_11engine_data10RowVisitor13visit_rows_ofCs7p2uQeJxui2_9deltalake.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !12763
  %.sroa.0132.0.copyload.i.i = load i64, ptr %i.e, align 8, !noalias !12782 ; 2 uses
  %.sroa.6133.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %.sroa.6133.i.i, ptr noundef nonnull align 8 dereferenceable(136) %.sroa.6133.0..sroa_idx.i.i, i64 136, i1 false), !noalias !12782
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !12763
  %i.db = icmp eq i64 %.sroa.0132.0.copyload.i.i, -9223372036854775808
  br i1 %i.db, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa, %.thread181.i.i
  %.sroa.6133.16..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.6133.i.i, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !12783
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(96) %i.a, ptr noundef nonnull align 8 dereferenceable(96) %.sroa.6133.16..sroa_idx.i.i, i64 96, i1 false), !noalias !12734
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !12734
  invoke void @_RNvXNtCs14kWLkQVSKO_14deltalake_core16delta_datafusionNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorINtNtCsbvkFyIu7lgC_4core7convert4FromNtNtB4_6errors15DeltaTableErrorE4from(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.k, ptr noalias noundef nonnull align 16 captures(address) dereferenceable(96) %i.a)
          to label %bb.da unwind label %.body.thread178.i.i, !noalias !12747

bb.ac:                                            ; preds = %bb.aa
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.6.i.i, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.6133.i.i, i64 40, i1 false), !noalias !12734
  %.sroa.6133.48..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.6133.i.i, i64 40
  %.sroa.8.0..sroa_idx3.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %.sroa.8.0..sroa_idx3.i.i, ptr noundef nonnull align 8 dereferenceable(96) %.sroa.6133.48..sroa_idx.i.i, i64 96, i1 false), !noalias !12734
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6133.i.i)
  store i64 %.sroa.0132.0.copyload.i.i, ptr %i.j, align 8, !noalias !12734
  %.sroa.6.0..sroa_idx2.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.6.0..sroa_idx2.i.i, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.6.i.i, i64 40, i1 false), !noalias !12734
  invoke void @_RNvMs2_NtNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider4next4scan6replayNtB5_11ScanContext8error_or(ptr noalias noundef nonnull sret([144 x i8]) align 8 captures(none) dereferenceable(144) %i.ag, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(144) %i.j)
          to label %bb.ad unwind label %.body.thread178.i.i, !noalias !12747

bb.ad:                                            ; preds = %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i.i)
  %i.dc = load i64, ptr %i.ag, align 8, !range !1996, !noalias !12734, !noundef !3
  %i.dd = icmp eq i64 %i.dc, -9223372036854775808
  br i1 %i.dd, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.da, %bb.ad
  %i.de = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.af, ptr noundef nonnull align 8 dereferenceable(40) %i.de, i64 40, i1 false), !noalias !12734
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae), !noalias !12734
  invoke void @_RNvXs_NtCs14kWLkQVSKO_14deltalake_core16delta_datafusionNtNtB6_6errors15DeltaTableErrorINtNtCsbvkFyIu7lgC_4core7convert4FromNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorE4from(ptr noalias noundef nonnull sret([96 x i8]) align 16 captures(none) dereferenceable(96) %i.ae, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(40) %i.af)
          to label %bb.db unwind label %.body.thread178.i.i, !noalias !12747

bb.af:                                            ; preds = %bb.ad
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %i.ah, ptr noundef nonnull align 8 dereferenceable(144) %i.ag, i64 144, i1 false), !noalias !12734
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag), !noalias !12734
  %i.df = getelementptr inbounds nuw i8, ptr %i.ah, i64 88 ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.ah, i64 96 ; 2 uses
  %i.dh = load ptr, ptr %i.dg, align 8, !noalias !12734, !nonnull !3, !noundef !3 ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.ah, i64 104 ; 2 uses
  %i.dj = load i64, ptr %i.di, align 8, !noalias !12734, !noundef !3 ; 2 uses
  %.idx.i.i = mul nuw nsw i64 %i.dj, 168
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dh, i64 %.idx.i.i
  %.not218.i.i = icmp eq i64 %i.dj, 0
  br i1 %.not218.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.af
  %i.dl = getelementptr inbounds nuw i8, ptr %1, i64 136
  %i.dm = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %.sroa.457.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %.sroa.554.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %.sroa.554.sroa.4.0..sroa.554.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ac, i64 24
  %.sroa.554.sroa.6.0..sroa.554.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ac, i64 32
  %.sroa.554.sroa.7.0..sroa.554.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ac, i64 40
  %.sroa.554.sroa.8.0..sroa.554.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ac, i64 44
  %i.dn = getelementptr inbounds nuw i8, ptr %i.ab, i64 44
  %i.do = getelementptr inbounds nuw i8, ptr %i.ab, i64 64
  %i.dp = getelementptr inbounds nuw i8, ptr %i.ab, i64 40
  %i.dq = getelementptr inbounds nuw i8, ptr %i.ab, i64 60
  %i.dr = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  %i.ds = getelementptr inbounds nuw i8, ptr %i.aa, i64 192
  %i.dt = getelementptr inbounds nuw i8, ptr %i.aa, i64 240
  %i.du = getelementptr inbounds nuw i8, ptr %i.aa, i64 248
  %i.dv = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %i.dw = getelementptr inbounds nuw i8, ptr %i.aa, i64 256
  %i.dx = getelementptr inbounds nuw i8, ptr %i.aa, i64 104
  %.sroa.4221.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.aa, i64 40
  %.sroa.8223.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.aa, i64 56
  %.sroa.10.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.aa, i64 60
  %.sroa.14.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.aa, i64 76
  %.sroa.15224.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.aa, i64 80
  br label %bb.ag

bb.ag:                                            ; preds = %bb.ai, %.lr.ph.i.i
  %.sroa.04.0219.i.i = phi ptr [ %i.dh, %.lr.ph.i.i ], [ %i.dy, %bb.ai ] ; 13 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %.sroa.04.0219.i.i, i64 168 ; 2 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %.sroa.04.0219.i.i, i64 104 ; 2 uses
  %i.ea = load i64, ptr %i.dz, align 8, !range !1996, !noalias !12747, !noundef !3
  %.not89.i.i = icmp eq i64 %i.ea, -9223372036854775808
  br i1 %.not89.i.i, label %bb.ai, label %bb.ah

._crit_edge.i.i:                                  ; preds = %bb.ai, %bb.af
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ah, i64 136
  %i.ec = load i64, ptr %i.eb, align 8, !noalias !12734, !noundef !3
  %i.ed = load i64, ptr %i.ao, align 8, !alias.scope !12736, !noalias !12737, !noundef !3
  %i.ee = add i64 %i.ed, %i.ec
  store i64 %i.ee, ptr %i.ao, align 8, !alias.scope !12736, !noalias !12737
  %i.ef = load ptr, ptr %i.co, align 8, !noalias !12734, !nonnull !3, !noundef !3
  %i.eg = load ptr, ptr %i.cq, align 8, !noalias !12734, !nonnull !3, !align !39, !noundef !3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !noalias !12734
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.z, ptr noundef nonnull align 8 dereferenceable(24) %i.aj, i64 24, i1 false), !noalias !12734
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y), !noalias !12734
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !noalias !12734
  invoke void @_RNvMs0_NtNtCs8ulvy0Wg6Ot_12delta_kernel6engine10arrow_dataNtB5_15ArrowEngineData20try_from_engine_data(ptr noalias noundef nonnull sret([96 x i8]) align 16 captures(none) dereferenceable(96) %i.x, ptr noundef nonnull %i.ef, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(104) %i.eg)
          to label %bb.ay unwind label %bb.cw, !noalias !12747

bb.ah:                                            ; preds = %bb.ag
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad), !noalias !12734
  %i.eh = load ptr, ptr %i.ap, align 8, !alias.scope !12736, !noalias !12737, !nonnull !3, !noundef !3
  %i.ei = atomicrmw add ptr %i.eh, i64 1 monotonic, align 8, !noalias !12747
  %i.ej = icmp slt i64 %i.ei, 0
  br i1 %i.ej, label %bb.ak, label %bb.aj

bb.ai:                                            ; preds = %bb.ar, %bb.ag
  %.not.i.i = icmp eq ptr %i.dy, %i.dk
  br i1 %.not.i.i, label %._crit_edge.i.i, label %bb.ag

bb.aj:                                            ; preds = %bb.ah
  %i.ek = load ptr, ptr %i.ap, align 8, !alias.scope !12736, !noalias !12737, !nonnull !3, !noundef !3 ; 3 uses
  %i.el = load ptr, ptr %i.dl, align 8, !alias.scope !12736, !noalias !12737, !nonnull !3, !align !39, !noundef !3 ; 2 uses
  store ptr %i.ek, ptr %i.ad, align 8, !noalias !12734
  store ptr %i.el, ptr %i.dm, align 8, !noalias !12734
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac), !noalias !12734
  %i.em = getelementptr inbounds nuw i8, ptr %.sroa.04.0219.i.i, i64 148
  %i.en = load i8, ptr %i.em, align 4, !range !111, !noalias !12747, !noundef !3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !12734
  invoke void @_RNvXs4_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.dz)
          to label %bb.am unwind label %bb.al, !noalias !12747

bb.ak:                                            ; preds = %bb.ah
  call void @llvm.trap()
  unreachable

bb.al:                                            ; preds = %bb.aj
  %i.eo = landingpad { ptr, i32 }
          cleanup
  br label %bb.av

bb.am:                                            ; preds = %bb.aj
  %i.ep = getelementptr inbounds nuw i8, ptr %.sroa.04.0219.i.i, i64 128
  %i.eq = getelementptr inbounds nuw i8, ptr %.sroa.04.0219.i.i, i64 144
  %i.er = load i32, ptr %i.eq, align 8, !noalias !12747, !noundef !3
  %i.es = getelementptr inbounds nuw i8, ptr %.sroa.04.0219.i.i, i64 136
  %i.et = load i64, ptr %i.es, align 8, !noalias !12747, !noundef !3
  %.sroa.056.0.copyload.i.i = load i64, ptr %i.i, align 8, !noalias !12734
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.554.0..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.457.0..sroa_idx.i.i, i64 16, i1 false), !noalias !12734
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !12734
  store i64 %.sroa.056.0.copyload.i.i, ptr %i.ac, align 8, !noalias !12734
  %i.eu = load <2 x i32>, ptr %i.ep, align 8, !noalias !12747
  store <2 x i32> %i.eu, ptr %.sroa.554.sroa.4.0..sroa.554.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !12734
  store i64 %i.et, ptr %.sroa.554.sroa.6.0..sroa.554.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !12734
  store i32 %i.er, ptr %.sroa.554.sroa.7.0..sroa.554.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !12734
  store i8 %i.en, ptr %.sroa.554.sroa.8.0..sroa.554.0..sroa_idx.sroa_idx.i.i, align 4, !noalias !12734
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab), !noalias !12734
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !12734
  %i.ev = getelementptr inbounds nuw i8, ptr %.sroa.04.0219.i.i, i64 16
  invoke void @_RNvXs4_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.h, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ev)
          to label %bb.ao unwind label %bb.an, !noalias !12747

bb.an:                                            ; preds = %bb.am
  %i.ew = landingpad { ptr, i32 }
          cleanup
  br label %bb.au

bb.ao:                                            ; preds = %bb.am
  %i.ex = getelementptr inbounds nuw i8, ptr %.sroa.04.0219.i.i, i64 60
  %i.ey = getelementptr inbounds nuw i8, ptr %.sroa.04.0219.i.i, i64 80
  %i.ez = getelementptr inbounds nuw i8, ptr %.sroa.04.0219.i.i, i64 56
end_hunk_5
