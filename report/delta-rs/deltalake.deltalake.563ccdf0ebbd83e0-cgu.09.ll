inline.NumInlined: 7581
inline.NumDeleted: 2927
begin_hunk_0_@_RNCNCNvMsl_Cs7p2uQeJxui2_9deltalakeNtB9_13RawDeltaTable16cleanup_metadata0s_0B9_:bb.a
  invoke void @_RNvNtCscTw95cGIolY_7tracing15___macro_support13___tracing_log(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.og, ptr noundef nonnull %i.ok, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.ol, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.t, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.bn)
          to label %bb.eg unwind label %bb.ef, !noalias !7254

bb.ef:                                            ; preds = %bb.ee
  %i.oz = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bi), !noalias !7250
  br label %bb.eh

bb.eg:                                            ; preds = %bb.ee
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !7250
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bi), !noalias !7250
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bk), !noalias !7250
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bl), !noalias !7250
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bm), !noalias !7250
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bn), !noalias !7250
  br label %bb.et

bb.eh:                                            ; preds = %bb.ef, %bb.ec
  %.pn32.pn.i.i = phi { ptr, i32 } [ %i.oz, %bb.ef ], [ %.pn30.i.i, %bb.ec ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bk), !noalias !7250
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bl), !noalias !7250
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bm), !noalias !7250
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bn), !noalias !7250
  br label %bb.iv

bb.ei:                                            ; preds = %bb.dr
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bu), !noalias !7250
  %i.pa = load ptr, ptr @_RNvNCNvNtNtCs14kWLkQVSKO_14deltalake_core8protocol11checkpoints24cleanup_expired_logs_for0s0_10___CALLSITE, align 8, !noalias !7250, !nonnull !4, !align !344, !noundef !4
  %i.pb = getelementptr inbounds nuw i8, ptr %i.pa, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bt), !noalias !7250
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bs), !noalias !7250
  call void @llvm.lifetime.start.p0(ptr nonnull %i.br), !noalias !7250
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bq), !noalias !7250
  %i.pc = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.pd = load i64, ptr %i.pc, align 8, !noalias !7250, !noundef !4
  invoke void @_RNvYNtNtNtCshmPyUV8PP35_6chrono6offset3utc3UtcNtB6_8TimeZone20timestamp_millis_optCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([28 x i8]) align 4 captures(none) dereferenceable(28) %i.bq, ptr noalias noundef nonnull readonly captures(address, read_provenance) inttoptr (i64 1 to ptr), i64 noundef %i.pd)
          to label %bb.ek unwind label %bb.ej, !noalias !7254

bb.ej:                                            ; preds = %bb.ei
  %i.pe = landingpad { ptr, i32 }
          cleanup
  br label %bb.el

bb.ek:                                            ; preds = %bb.ei
  invoke void @_RNvMs0_NtCshmPyUV8PP35_6chrono6offsetINtB5_11LocalResultINtNtB7_8datetime8DateTimeNtNtB5_3utc3UtcEE6unwrapCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([12 x i8]) align 4 captures(none) dereferenceable(12) %i.br, ptr noalias noundef nonnull readonly align 4 captures(none) dereferenceable(28) %i.bq, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @221)
          to label %bb.en unwind label %bb.em, !noalias !7254

bb.el:                                            ; preds = %bb.em, %bb.ej
  %.pn37.i.i = phi { ptr, i32 } [ %i.pf, %bb.em ], [ %i.pe, %bb.ej ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bq), !noalias !7250
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bu), !noalias !7250
  br label %bb.iw

bb.em:                                            ; preds = %bb.ek
  %i.pf = landingpad { ptr, i32 }
          cleanup
  br label %bb.el

bb.en:                                            ; preds = %bb.ek
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bq), !noalias !7250
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bp), !noalias !7250
  store ptr %i.br, ptr %i.bp, align 8, !noalias !7250
  %.sroa.5315.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  store ptr @_RNvXsz_NtCshmPyUV8PP35_6chrono8datetimeINtB5_8DateTimeNtNtNtB7_6offset3utc3UtcENtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmtCs7p2uQeJxui2_9deltalake, ptr %.sroa.5315.0..sroa_idx.i.i, align 8, !noalias !7250
  store ptr @222, ptr %i.bs, align 8, !noalias !7250
  %i.pg = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  store ptr %i.bp, ptr %i.pg, align 8, !noalias !7250
  store ptr %i.bs, ptr %i.bt, align 8, !noalias !7250
  %i.ph = getelementptr inbounds nuw i8, ptr %i.bt, i64 8
  store ptr @218, ptr %i.ph, align 8, !noalias !7250
  store i64 1, ptr %i.bu, align 8, !noalias !7250
  %.sroa.7312.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.bu, i64 8
  store ptr %i.bt, ptr %.sroa.7312.0..sroa_idx.i.i, align 8, !noalias !7250
  %.sroa.8313.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.bu, i64 16
  store i64 1, ptr %.sroa.8313.0..sroa_idx.i.i, align 8, !noalias !7250
  %.sroa.9.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.bu, i64 24
  store ptr %i.pb, ptr %.sroa.9.0..sroa_idx.i.i, align 8, !noalias !7250
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !7250
  %i.pi = load ptr, ptr @_RNvNCNvNtNtCs14kWLkQVSKO_14deltalake_core8protocol11checkpoints24cleanup_expired_logs_for0s0_10___CALLSITE, align 8, !noalias !7305, !nonnull !4, !align !344, !noundef !4
  invoke void @_RNvMNtCs2y6mmZ7bjoM_12tracing_core5eventNtB2_5Event8dispatch(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.pi, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.bu)
          to label %.noexc218.i.i unwind label %bb.er, !noalias !7254

.noexc218.i.i:                                    ; preds = %bb.en
  %i.pj = load atomic i8, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher6EXISTS monotonic, align 1, !noalias !7305
  %i.pk = icmp eq i8 %i.pj, 0
  br i1 %i.pk, label %bb.eo, label %bb.es

bb.eo:                                            ; preds = %.noexc218.i.i
  %i.pl = load atomic i64, ptr @_RNvCsaljjC7ZTCQu_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8, !noalias !7305 ; 2 uses
  %i.pm = icmp ult i64 %i.pl, 6
  call void @llvm.assume(i1 %i.pm)
  %i.pn = icmp samesign ugt i64 %i.pl, 3
  br i1 %i.pn, label %bb.ep, label %bb.es

bb.ep:                                            ; preds = %bb.eo
  %i.po = load ptr, ptr @_RNvNCNvNtNtCs14kWLkQVSKO_14deltalake_core8protocol11checkpoints24cleanup_expired_logs_for0s0_10___CALLSITE, align 8, !noalias !7305, !nonnull !4, !align !344, !noundef !4 ; 3 uses
  %i.pp = getelementptr inbounds nuw i8, ptr %i.po, i64 32
  %i.pq = load ptr, ptr %i.pp, align 8, !noalias !7254, !nonnull !4, !noundef !4
  %i.pr = getelementptr inbounds nuw i8, ptr %i.po, i64 40
  %i.ps = load i64, ptr %i.pr, align 8, !noalias !7254, !noundef !4
  store i64 4, ptr %i.p, align 8, !noalias !7305
  %.sroa.3.0..sroa_idx.i216.i.i = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store ptr %i.pq, ptr %.sroa.3.0..sroa_idx.i216.i.i, align 8, !noalias !7305
  %.sroa.5.0..sroa_idx.i217.i.i = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  store i64 %i.ps, ptr %.sroa.5.0..sroa_idx.i217.i.i, align 8, !noalias !7305
  %i.pt = invoke { ptr, ptr } @_RNvCsaljjC7ZTCQu_3log6logger()
          to label %.noexc219.i.i unwind label %bb.er, !noalias !7254 ; 2 uses

.noexc219.i.i:                                    ; preds = %bb.ep
  %i.pu = extractvalue { ptr, ptr } %i.pt, 0      ; 2 uses
  %i.pv = extractvalue { ptr, ptr } %i.pt, 1      ; 2 uses
  %i.pw = getelementptr inbounds nuw i8, ptr %i.pv, i64 24
  %i.px = load ptr, ptr %i.pw, align 8, !invariant.load !4, !noalias !7254, !nonnull !4
  %i.py = invoke noundef zeroext i1 %i.px(ptr noundef %i.pu, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.p) #42
          to label %.noexc220.i.i unwind label %bb.er, !noalias !7254, !inline_history !7308

.noexc220.i.i:                                    ; preds = %.noexc219.i.i
  br i1 %i.py, label %bb.eq, label %bb.es

bb.eq:                                            ; preds = %.noexc220.i.i
  invoke void @_RNvNtCscTw95cGIolY_7tracing15___macro_support13___tracing_log(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.po, ptr noundef nonnull %i.pu, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.pv, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.p, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.bu)
          to label %bb.es unwind label %bb.er, !noalias !7254

bb.er:                                            ; preds = %bb.eq, %.noexc219.i.i, %bb.ep, %bb.en
  %i.pz = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bu), !noalias !7250
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bp), !noalias !7250
  br label %bb.iw

bb.es:                                            ; preds = %bb.eq, %.noexc220.i.i, %bb.eo, %.noexc218.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !7250
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bu), !noalias !7250
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bp), !noalias !7250
  call void @llvm.lifetime.end.p0(ptr nonnull %i.br), !noalias !7250
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bs), !noalias !7250
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bt), !noalias !7250
  br label %bb.et

bb.et:                                            ; preds = %bb.es, %bb.eg, %bb.dy, %bb.dt, %bb.ds
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bh), !noalias !7250
  %i.qa = getelementptr i8, ptr %1, i64 136       ; 3 uses
  %.val167.i.i = load ptr, ptr %i.qa, align 8, !noalias !7250, !nonnull !4, !noundef !4 ; 2 uses
  %i.qb = getelementptr i8, ptr %1, i64 144       ; 3 uses
  %.val168.i.i = load i64, ptr %i.qb, align 8, !noalias !7250, !noundef !4 ; 2 uses
  %.idx.i.i = mul nuw nsw i64 %.val168.i.i, 96
  %i.qc = getelementptr inbounds nuw i8, ptr %.val167.i.i, i64 %.idx.i.i
  %i.qd = getelementptr inbounds nuw i8, ptr %1, i64 120 ; 2 uses
  %.sroa.5325.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.bh, i64 8 ; 2 uses
  store ptr %i.qc, ptr %.sroa.5325.0..sroa_idx.i.i, align 8, !alias.scope !7309, !noalias !7250
  %.sroa.6326.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.bh, i64 16 ; 4 uses
  store ptr %i.qd, ptr %.sroa.6326.0..sroa_idx.i.i, align 8, !alias.scope !7309, !noalias !7250
  call void @llvm.experimental.noalias.scope.decl(metadata !7313)
  call void @llvm.experimental.noalias.scope.decl(metadata !7316)
  call void @llvm.experimental.noalias.scope.decl(metadata !7319)
  call void @llvm.experimental.noalias.scope.decl(metadata !7322)
  call void @llvm.experimental.noalias.scope.decl(metadata !7325)
  call void @llvm.experimental.noalias.scope.decl(metadata !7328)
  call void @llvm.experimental.noalias.scope.decl(metadata !7331)
  call void @llvm.experimental.noalias.scope.decl(metadata !7334)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !7337
  store ptr %.sroa.6326.0..sroa_idx.i.i, ptr %i.n, align 8, !noalias !7337
  %i.qe = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store ptr %.sroa.6326.0..sroa_idx.i.i, ptr %i.qe, align 8, !noalias !7337
  %i.qf = getelementptr inbounds nuw i8, ptr %i.n, i64 16 ; 2 uses
  store ptr %.sroa.6326.0..sroa_idx.i.i, ptr %i.qf, align 8, !noalias !7337
  call void @llvm.experimental.noalias.scope.decl(metadata !7346)
  %i.qg = icmp eq i64 %.val168.i.i, 0
  br i1 %i.qg, label %.loopexit483.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i:                     ; preds = %bb.et
  %i.qh = getelementptr inbounds nuw i8, ptr %i.l, i64 40
  %i.qi = getelementptr inbounds nuw i8, ptr %i.l, i64 44
  %i.qj = getelementptr inbounds nuw i8, ptr %i.l, i64 48
  %i.qk = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %i.ql = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  %i.qm = getelementptr inbounds nuw i8, ptr %i.l, i64 64
  %i.qn = getelementptr inbounds nuw i8, ptr %i.l, i64 56
  %i.qo = getelementptr inbounds nuw i8, ptr %i.l, i64 16 ; 2 uses
  %i.qp = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  br label %bb.eu

bb.eu:                                            ; preds = %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters10filter_map19filter_map_try_foldRINtNtBa_6result6ResultNtCsjyY8HP3IvQ6_12object_store10ObjectMetaNtB1D_5ErrorERB1B_uINtNtNtBa_3ops12control_flow11ControlFlowTxxEENCNCNvNtNtCs14kWLkQVSKO_14deltalake_core8protocol11checkpoints24cleanup_expired_logs_for00NCIB2_B2u_B3f_uB2A_NCB3m_s_0NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB3f_QNCB3m_s0_0E0E0E0Cs7p2uQeJxui2_9deltalake.exit.thread.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i
  %i.qq = phi ptr [ %.val167.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i ], [ %i.qr, %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters10filter_map19filter_map_try_foldRINtNtBa_6result6ResultNtCsjyY8HP3IvQ6_12object_store10ObjectMetaNtB1D_5ErrorERB1B_uINtNtNtBa_3ops12control_flow11ControlFlowTxxEENCNCNvNtNtCs14kWLkQVSKO_14deltalake_core8protocol11checkpoints24cleanup_expired_logs_for00NCIB2_B2u_B3f_uB2A_NCB3m_s_0NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB3f_QNCB3m_s0_0E0E0E0Cs7p2uQeJxui2_9deltalake.exit.thread.i.i.i.i.i.i.i.i.i.i.i ] ; 7 uses
  %i.qr = getelementptr inbounds nuw i8, ptr %i.qq, i64 96 ; 3 uses
  store ptr %i.qr, ptr %i.bh, align 8, !alias.scope !7349, !noalias !7352
  call void @llvm.experimental.noalias.scope.decl(metadata !7355)
  %i.qs = load i64, ptr %i.qq, align 8, !range !63, !alias.scope !7358, !noalias !7361, !noundef !4
  %i.qt = icmp eq i64 %i.qs, -9223372036854775808
  br i1 %i.qt, label %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters10filter_map19filter_map_try_foldRINtNtBa_6result6ResultNtCsjyY8HP3IvQ6_12object_store10ObjectMetaNtB1D_5ErrorERB1B_uINtNtNtBa_3ops12control_flow11ControlFlowTxxEENCNCNvNtNtCs14kWLkQVSKO_14deltalake_core8protocol11checkpoints24cleanup_expired_logs_for00NCIB2_B2u_B3f_uB2A_NCB3m_s_0NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB3f_QNCB3m_s0_0E0E0E0Cs7p2uQeJxui2_9deltalake.exit.thread.i.i.i.i.i.i.i.i.i.i.i, label %bb.ev

bb.ev:                                            ; preds = %bb.eu
  call void @llvm.experimental.noalias.scope.decl(metadata !7364)
  call void @llvm.experimental.noalias.scope.decl(metadata !7367)
  %i.qu = getelementptr inbounds nuw i8, ptr %i.qq, i64 8
  %i.qv = load ptr, ptr %i.qu, align 8, !alias.scope !7370, !noalias !7371, !nonnull !4, !noundef !4
  %i.qw = getelementptr inbounds nuw i8, ptr %i.qq, i64 16
  %i.qx = load i64, ptr %i.qw, align 8, !alias.scope !7370, !noalias !7371, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !7375
  %i.qy = load atomic i32, ptr getelementptr inbounds (i8, ptr @_RNvNtCs14kWLkQVSKO_14deltalake_core8logstore15DELTA_LOG_REGEX, i64 32) acquire, align 8, !noalias !7375
  %i.qz = icmp eq i32 %i.qy, 0
  br i1 %i.qz, label %_RINvMs0_NtNtCs2pqxYH9ZEk8_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockNtNtNtCsonPGffhQyS_5regex5regex6string5RegexE5force0ECs7p2uQeJxui2_9deltalake.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.ew, !prof !5

bb.ew:                                            ; preds = %bb.ev
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !7375
  store ptr @_RNvNtCs14kWLkQVSKO_14deltalake_core8logstore15DELTA_LOG_REGEX, ptr %i.k, align 8, !noalias !7375
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !7375
  store ptr %i.k, ptr %i.j, align 8, !noalias !7375
  invoke void @_RNvMs0_NtNtNtNtCs2pqxYH9ZEk8_3std3sys4sync4once5futexNtB5_4Once4call(ptr noundef nonnull align 4 getelementptr inbounds (i8, ptr @_RNvNtCs14kWLkQVSKO_14deltalake_core8logstore15DELTA_LOG_REGEX, i64 32), i1 noundef zeroext true, ptr noundef nonnull %i.j, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) @25, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @27)
          to label %.noexc222.i.i unwind label %.loopexit409.i.i, !noalias !7254

.noexc222.i.i:                                    ; preds = %bb.ew
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !7375
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !7375
  br label %_RINvMs0_NtNtCs2pqxYH9ZEk8_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockNtNtNtCsonPGffhQyS_5regex5regex6string5RegexE5force0ECs7p2uQeJxui2_9deltalake.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i

_RINvMs0_NtNtCs2pqxYH9ZEk8_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockNtNtNtCsonPGffhQyS_5regex5regex6string5RegexE5force0ECs7p2uQeJxui2_9deltalake.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.noexc222.i.i, %bb.ev
  invoke fastcc void @_RNvMs4_NtNtCsonPGffhQyS_5regex5regex6stringNtB5_5Regex11captures_at(ptr noalias noundef align 8 captures(none) dereferenceable(72) %i.m, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @_RNvNtCs14kWLkQVSKO_14deltalake_core8logstore15DELTA_LOG_REGEX, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.qv, i64 noundef %i.qx) #42
          to label %.noexc223.i.i unwind label %.loopexit409.i.i

.noexc223.i.i:                                    ; preds = %_RINvMs0_NtNtCs2pqxYH9ZEk8_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockNtNtNtCsonPGffhQyS_5regex5regex6string5RegexE5force0ECs7p2uQeJxui2_9deltalake.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.ra = load i64, ptr %i.m, align 8, !range !288, !noalias !7375, !noundef !4
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.ra, 2
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.loopexit.sink.split.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.ex

bb.ex:                                            ; preds = %.noexc223.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !7375
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.l, ptr noundef nonnull align 8 dereferenceable(72) %i.m, i64 72, i1 false), !noalias !7375
  call void @llvm.experimental.noalias.scope.decl(metadata !7376)
  call void @llvm.experimental.noalias.scope.decl(metadata !7379)
  %i.rb = load i32, ptr %i.qh, align 8, !range !7382, !alias.scope !7383, !noalias !7384, !noundef !4
  %i.rc = load i32, ptr %i.qi, align 4, !alias.scope !7383, !noalias !7384
  %i.rd = trunc nuw i32 %i.rb to i1
  br i1 %i.rd, label %bb.ey, label %_RNCNCNCNvNtNtCs14kWLkQVSKO_14deltalake_core8protocol11checkpoints24cleanup_expired_logs_for0s_00Cs7p2uQeJxui2_9deltalake.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i

bb.ey:                                            ; preds = %bb.ex
  %i.re = load ptr, ptr %i.qj, align 8, !alias.scope !7383, !noalias !7384, !nonnull !4, !noundef !4 ; 2 uses
  %i.rf = getelementptr inbounds nuw i8, ptr %i.re, i64 32
  %i.rg = load i64, ptr %i.rf, align 8, !noalias !7387, !noundef !4 ; 3 uses
  %i.rh = icmp ult i64 %i.rg, 1152921504606846976
  call void @llvm.assume(i1 %i.rh)
  %i.ri = icmp eq i64 %i.rg, 1
  br i1 %i.ri, label %bb.fa, label %bb.ez

bb.ez:                                            ; preds = %bb.ey
  %i.rj = zext i32 %i.rc to i64                   ; 2 uses
  %i.rk = icmp samesign ugt i64 %i.rg, %i.rj
  br i1 %i.rk, label %_RNvMs5_NtNtCslw7hBPHc6qc_14regex_automata4util8capturesNtB5_9GroupInfo4slot.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_RNCNCNCNvNtNtCs14kWLkQVSKO_14deltalake_core8protocol11checkpoints24cleanup_expired_logs_for0s_00Cs7p2uQeJxui2_9deltalake.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i

_RNvMs5_NtNtCslw7hBPHc6qc_14regex_automata4util8capturesNtB5_9GroupInfo4slot.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.ez
  %i.rl = getelementptr inbounds nuw i8, ptr %i.re, i64 24
  %i.rm = load ptr, ptr %i.rl, align 8, !noalias !7387, !nonnull !4, !noundef !4
  %i.rn = getelementptr inbounds nuw [8 x i8], ptr %i.rm, i64 %i.rj ; 2 uses
  %i.ro = getelementptr inbounds nuw i8, ptr %i.rn, i64 4
  %i.rp = load i32, ptr %i.ro, align 4, !noalias !7387, !noundef !4
  %i.rq = zext i32 %i.rp to i64
  %i.rr = load i32, ptr %i.rn, align 4, !noalias !7387, !noundef !4
  %i.rs = zext i32 %i.rr to i64                   ; 3 uses
  %i.rt = sub nsw i64 %i.rq, %i.rs
  %i.ru = icmp ugt i64 %i.rt, 1
  br i1 %i.ru, label %bb.fb, label %_RNCNCNCNvNtNtCs14kWLkQVSKO_14deltalake_core8protocol11checkpoints24cleanup_expired_logs_for0s_00Cs7p2uQeJxui2_9deltalake.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i

bb.fa:                                            ; preds = %bb.fb, %bb.ey
  %.sroa.038.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.rs, %bb.fb ], [ 2, %bb.ey ] ; 2 uses
  %.sroa.040.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.ry, %bb.fb ], [ 3, %bb.ey ] ; 2 uses
  %i.rv = load ptr, ptr %i.qk, align 8, !alias.scope !7383, !noalias !7384, !nonnull !4, !noundef !4 ; 2 uses
  %i.rw = load i64, ptr %i.ql, align 8, !alias.scope !7383, !noalias !7384, !noundef !4 ; 2 uses
  %i.rx = icmp ult i64 %.sroa.038.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %i.rw
  br i1 %i.rx, label %bb.fc, label %_RNCNCNCNvNtNtCs14kWLkQVSKO_14deltalake_core8protocol11checkpoints24cleanup_expired_logs_for0s_00Cs7p2uQeJxui2_9deltalake.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i

bb.fb:                                            ; preds = %_RNvMs5_NtNtCslw7hBPHc6qc_14regex_automata4util8capturesNtB5_9GroupInfo4slot.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.ry = add nuw nsw i64 %i.rs, 1
  br label %bb.fa

bb.fc:                                            ; preds = %bb.fa
  %i.rz = getelementptr inbounds nuw [8 x i8], ptr %i.rv, i64 %.sroa.038.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.sa = load i64, ptr %i.rz, align 8, !noalias !7387, !noundef !4 ; 5 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp ne i64 %i.sa, 0
  %i.sb = icmp ult i64 %.sroa.040.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %i.rw
  %or.cond.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = select i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i1 %i.sb, i1 false
  br i1 %or.cond.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.fd, label %_RNCNCNCNvNtNtCs14kWLkQVSKO_14deltalake_core8protocol11checkpoints24cleanup_expired_logs_for0s_00Cs7p2uQeJxui2_9deltalake.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i

bb.fd:                                            ; preds = %bb.fc
  %i.sc = getelementptr inbounds nuw [8 x i8], ptr %i.rv, i64 %.sroa.040.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.sd = load i64, ptr %i.sc, align 8, !noalias !7387, !noundef !4 ; 3 uses
  %.not44.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.sd, 0
  br i1 %.not44.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_RNCNCNCNvNtNtCs14kWLkQVSKO_14deltalake_core8protocol11checkpoints24cleanup_expired_logs_for0s_00Cs7p2uQeJxui2_9deltalake.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.fe

_RNCNCNCNvNtNtCs14kWLkQVSKO_14deltalake_core8protocol11checkpoints24cleanup_expired_logs_for0s_00Cs7p2uQeJxui2_9deltalake.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.fd, %bb.fc, %bb.fa, %_RNvMs5_NtNtCslw7hBPHc6qc_14regex_automata4util8capturesNtB5_9GroupInfo4slot.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.ez, %bb.ex
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCslw7hBPHc6qc_14regex_automata4util8captures8CapturesECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(40) %i.qo)
          to label %.noexc224.i.i unwind label %.loopexit409.i.i, !noalias !7254

.noexc224.i.i:                                    ; preds = %_RNCNCNCNvNtNtCs14kWLkQVSKO_14deltalake_core8protocol11checkpoints24cleanup_expired_logs_for0s_00Cs7p2uQeJxui2_9deltalake.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !7375
  br label %.loopexit.sink.split.i.i.i.i.i.i.i.i.i.i.i.i.i

bb.fe:                                            ; preds = %bb.fd
  %i.se = add i64 %i.sa, -1                       ; 7 uses
  %i.sf = add i64 %i.sd, -1                       ; 6 uses
  %i.sg = load i64, ptr %i.qm, align 8, !alias.scope !7376, !noalias !7388, !noundef !4 ; 5 uses
  %i.sh = load ptr, ptr %i.qn, align 8, !alias.scope !7376, !noalias !7388, !nonnull !4, !noundef !4 ; 6 uses
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCslw7hBPHc6qc_14regex_automata4util8captures8CapturesECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(40) %i.qo)
          to label %.noexc225.i.i unwind label %.loopexit409.i.i, !noalias !7254

.noexc225.i.i:                                    ; preds = %bb.fe
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !7375
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !7375
  %.not.i.i3.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp ugt i64 %i.se, %i.sf
  br i1 %.not.i.i3.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.gb, label %bb.ff

bb.ff:                                            ; preds = %.noexc225.i.i
  %i.si = icmp eq i64 %i.se, 0
  br i1 %i.si, label %bb.fh, label %bb.fg

bb.fg:                                            ; preds = %bb.ff
  %.not5.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp ult i64 %i.se, %i.sg
  br i1 %.not5.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.fj, label %bb.fi

bb.fh:                                            ; preds = %bb.fj, %bb.fi, %bb.ff
  %i.sj = icmp eq i64 %i.sf, 0
  br i1 %i.sj, label %bb.fn, label %bb.fk

bb.fi:                                            ; preds = %bb.fg
  %i.sk = icmp eq i64 %i.se, %i.sg
  br i1 %i.sk, label %bb.fh, label %bb.gb

bb.fj:                                            ; preds = %bb.fg
  %i.sl = getelementptr inbounds nuw i8, ptr %i.sh, i64 %i.se
  %i.sm = load i8, ptr %i.sl, align 1, !alias.scope !7389, !noalias !7392, !noundef !4
  %i.sn = icmp sgt i8 %i.sm, -65
  br i1 %i.sn, label %bb.fh, label %bb.gb

bb.fk:                                            ; preds = %bb.fh
  %.not6.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp ult i64 %i.sf, %i.sg
  br i1 %.not6.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.fm, label %bb.fl

bb.fl:                                            ; preds = %bb.fk
  %i.so = icmp eq i64 %i.sf, %i.sg
  br i1 %i.so, label %bb.fn, label %bb.gb

bb.fm:                                            ; preds = %bb.fk
  %i.sp = getelementptr inbounds nuw i8, ptr %i.sh, i64 %i.sf
  %i.sq = load i8, ptr %i.sp, align 1, !alias.scope !7389, !noalias !7392, !noundef !4
  %i.sr = icmp sgt i8 %i.sq, -65
  br i1 %i.sr, label %bb.fn, label %bb.gb

bb.fn:                                            ; preds = %bb.fm, %bb.fl, %bb.fh
  %i.ss = sub i64 %i.sd, %i.sa                    ; 5 uses
  %i.st = getelementptr inbounds nuw i8, ptr %i.sh, i64 %i.se ; 3 uses
  switch i64 %i.ss, label %thread-pre-split.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i [
    i64 0, label %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters10filter_map19filter_map_try_foldRINtNtBa_6result6ResultNtCsjyY8HP3IvQ6_12object_store10ObjectMetaNtB1D_5ErrorERB1B_uINtNtNtBa_3ops12control_flow11ControlFlowTxxEENCNCNvNtNtCs14kWLkQVSKO_14deltalake_core8protocol11checkpoints24cleanup_expired_logs_for00NCIB2_B2u_B3f_uB2A_NCB3m_s_0NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB3f_QNCB3m_s0_0E0E0E0Cs7p2uQeJxui2_9deltalake.exit.thread.i.i.i.i.i.i.i.i.i.i.i
    i64 1, label %bb.fo
  ]

bb.fo:                                            ; preds = %bb.fn
  %i.su = load i8, ptr %i.st, align 1, !alias.scope !7395, !noalias !7398, !noundef !4 ; 2 uses
  switch i8 %i.su, label %bb.fp [
    i8 43, label %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters10filter_map19filter_map_try_foldRINtNtBa_6result6ResultNtCsjyY8HP3IvQ6_12object_store10ObjectMetaNtB1D_5ErrorERB1B_uINtNtNtBa_3ops12control_flow11ControlFlowTxxEENCNCNvNtNtCs14kWLkQVSKO_14deltalake_core8protocol11checkpoints24cleanup_expired_logs_for00NCIB2_B2u_B3f_uB2A_NCB3m_s_0NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB3f_QNCB3m_s0_0E0E0E0Cs7p2uQeJxui2_9deltalake.exit.thread.i.i.i.i.i.i.i.i.i.i.i
    i8 45, label %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters10filter_map19filter_map_try_foldRINtNtBa_6result6ResultNtCsjyY8HP3IvQ6_12object_store10ObjectMetaNtB1D_5ErrorERB1B_uINtNtNtBa_3ops12control_flow11ControlFlowTxxEENCNCNvNtNtCs14kWLkQVSKO_14deltalake_core8protocol11checkpoints24cleanup_expired_logs_for00NCIB2_B2u_B3f_uB2A_NCB3m_s_0NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB3f_QNCB3m_s0_0E0E0E0Cs7p2uQeJxui2_9deltalake.exit.thread.i.i.i.i.i.i.i.i.i.i.i
  ]

thread-pre-split.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.fn
  %.pr.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load i8, ptr %i.st, align 1, !alias.scope !7395, !noalias !7398
  br label %bb.fp

bb.fp:                                            ; preds = %thread-pre-split.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.fo
  %i.sv = phi i8 [ %.pr.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %thread-pre-split.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.su, %bb.fo ]
  switch i8 %i.sv, label %bb.fw [
    i8 43, label %bb.fq
    i8 45, label %bb.fr
  ]

bb.fq:                                            ; preds = %bb.fp
  %i.sw = getelementptr inbounds nuw i8, ptr %i.sh, i64 %i.sa
  %i.sx = add nsw i64 %i.ss, -1
  br label %bb.fw

bb.fr:                                            ; preds = %bb.fp
  %i.sy = getelementptr inbounds nuw i8, ptr %i.sh, i64 %i.sa ; 2 uses
  %i.sz = add nsw i64 %i.ss, -1                   ; 3 uses
  %i.ta = icmp samesign ult i64 %i.ss, 17
  br i1 %i.ta, label %.preheader114.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

.preheader114.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i:    ; preds = %bb.fr
  %.not103137.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.sz, 0
  br i1 %.not103137.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.loopexit.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph141.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i:           ; preds = %bb.fr, %bb.fu
  %.sroa.0.1136.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.tb, %bb.fu ], [ %i.sy, %bb.fr ] ; 2 uses
  %.sroa.26.1135.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.tc, %bb.fu ], [ %i.sz, %bb.fr ]
  %.sroa.084.0134.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.tn, %bb.fu ], [ 0, %bb.fr ]
  %i.tb = getelementptr inbounds nuw i8, ptr %.sroa.0.1136.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 1
  %i.tc = add nsw i64 %.sroa.26.1135.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, -1 ; 2 uses
  %i.td = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %.sroa.084.0134.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 10) ; 2 uses
  %i.te = extractvalue { i64, i1 } %i.td, 0
  %i.tf = extractvalue { i64, i1 } %i.td, 1
  br i1 %i.tf, label %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters10filter_map19filter_map_try_foldRINtNtBa_6result6ResultNtCsjyY8HP3IvQ6_12object_store10ObjectMetaNtB1D_5ErrorERB1B_uINtNtNtBa_3ops12control_flow11ControlFlowTxxEENCNCNvNtNtCs14kWLkQVSKO_14deltalake_core8protocol11checkpoints24cleanup_expired_logs_for00NCIB2_B2u_B3f_uB2A_NCB3m_s_0NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB3f_QNCB3m_s0_0E0E0E0Cs7p2uQeJxui2_9deltalake.exit.thread.i.i.i.i.i.i.i.i.i.i.i, label %bb.fs, !prof !64

bb.fs:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.tg = load i8, ptr %.sroa.0.1136.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 1, !alias.scope !7395, !noalias !7398, !noundef !4
  %i.th = zext i8 %i.tg to i32
  %i.ti = add nsw i32 %i.th, -48                  ; 2 uses
  %i.tj = icmp ult i32 %i.ti, 10
  br i1 %i.tj, label %bb.ft, label %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters10filter_map19filter_map_try_foldRINtNtBa_6result6ResultNtCsjyY8HP3IvQ6_12object_store10ObjectMetaNtB1D_5ErrorERB1B_uINtNtNtBa_3ops12control_flow11ControlFlowTxxEENCNCNvNtNtCs14kWLkQVSKO_14deltalake_core8protocol11checkpoints24cleanup_expired_logs_for00NCIB2_B2u_B3f_uB2A_NCB3m_s_0NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB3f_QNCB3m_s0_0E0E0E0Cs7p2uQeJxui2_9deltalake.exit.thread.i.i.i.i.i.i.i.i.i.i.i

bb.ft:                                            ; preds = %bb.fs
  %i.tk = zext nneg i32 %i.ti to i64
  %i.tl = call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %i.te, i64 %i.tk) ; 2 uses
  %i.tm = extractvalue { i64, i1 } %i.tl, 1
end_hunk_0
begin_hunk_1_@_RNCNCNvMsl_Cs7p2uQeJxui2_9deltalakeNtB9_13RawDeltaTable9file_uriss_00B9_:bb.a
bb.j:                                             ; preds = %bb.f
  invoke void @_RNvNtNtCsbvkFyIu7lgC_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @125) #36
          to label %.noexc5 unwind label %.body

.noexc5:                                          ; preds = %bb.j
  unreachable

bb.k:                                             ; preds = %bb.m
  %i.ac = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !8177
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.ae = load i8, ptr %i.ad, align 8, !range !1884, !noalias !8177, !noundef !4
  %cond.i.i3 = icmp eq i8 %i.ae, 3
  br i1 %cond.i.i3, label %bb.l, label %.body.thread

bb.l:                                             ; preds = %bb.k
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 72
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream10try_stream11try_collect10TryCollectINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemINtNtB4_6result6ResultNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iterators15LogicalFileViewNtNtB49_6errors15DeltaTableErrorENtNtB4_6marker4SendEL_EEINtNtB2k_3vec3VecB41_EEECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(40) %i.af)
          to label %.body.thread unwind label %bb.y, !noalias !8181

bb.m:                                             ; preds = %bb.h, %bb.g
  %i.ag = phi ptr [ %i.u, %bb.h ], [ %i.t, %bb.g ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !8177
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 48
  invoke fastcc void @_RNCNvMs0_NtCs14kWLkQVSKO_14deltalake_core5tableNtB7_10DeltaTable23get_files_by_partitions0Cs7p2uQeJxui2_9deltalake(ptr noalias noundef align 16 captures(address) dereferenceable(96) %i.c, ptr noundef nonnull align 8 %i.ah, ptr noalias noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.n unwind label %bb.k, !noalias !8181

bb.n:                                             ; preds = %bb.m
  %i.ai = load i64, ptr %i.c, align 16, !range !6634, !noalias !8177, !noundef !4 ; 3 uses
  %i.aj = icmp eq i64 %i.ai, -9223372036854775710
  br i1 %i.aj, label %bb.aa, label %bb.o

bb.o:                                             ; preds = %bb.n
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.3.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.3.0..sroa_idx.i, i64 24, i1 false), !noalias !8177
  %.sroa.521.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %.sroa.521.i, ptr noundef nonnull align 16 dereferenceable(64) %.sroa.521.0..sroa_idx.i, i64 64, i1 false), !noalias !8177
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !8177
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.al = load i8, ptr %i.ak, align 8, !range !1884, !noalias !8177, !noundef !4
  %cond.i6.i = icmp eq i8 %i.al, 3
  br i1 %cond.i6.i, label %bb.p, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs0_NtCs14kWLkQVSKO_14deltalake_core5tableNtBO_10DeltaTable23get_files_by_partitions0ECs7p2uQeJxui2_9deltalake.exit8.i

bb.p:                                             ; preds = %bb.o
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 72
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream10try_stream11try_collect10TryCollectINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemINtNtB4_6result6ResultNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iterators15LogicalFileViewNtNtB49_6errors15DeltaTableErrorENtNtB4_6marker4SendEL_EEINtNtB2k_3vec3VecB41_EEECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(40) %i.am)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs0_NtCs14kWLkQVSKO_14deltalake_core5tableNtBO_10DeltaTable23get_files_by_partitions0ECs7p2uQeJxui2_9deltalake.exit8.i unwind label %bb.q, !noalias !8181

bb.q:                                             ; preds = %bb.p
  %i.an = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs0_NtCs14kWLkQVSKO_14deltalake_core5tableNtBO_10DeltaTable23get_files_by_partitions0ECs7p2uQeJxui2_9deltalake.exit8.i: ; preds = %bb.p, %bb.o
  %.not.i.i = icmp eq i64 %i.ai, -9223372036854775711 ; 2 uses
  br i1 %.not.i.i, label %bb.r, label %bb.z

bb.r:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs0_NtCs14kWLkQVSKO_14deltalake_core5tableNtBO_10DeltaTable23get_files_by_partitions0ECs7p2uQeJxui2_9deltalake.exit8.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.3.i, i64 24, i1 false), !noalias !8177
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !8177
  %i.ao = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.val.i = load ptr, ptr %i.ao, align 8, !noalias !8177, !nonnull !4, !noundef !4 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %.val5.i = load i64, ptr %i.ap, align 8, !noalias !8177, !noundef !4
  %i.aq = getelementptr inbounds nuw [24 x i8], ptr %.val.i, i64 %.val5.i
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.as = load ptr, ptr %i.ar, align 8, !noalias !8177, !nonnull !4, !align !344, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !8182
  store ptr %.val.i, ptr %i.a, align 8, !alias.scope !8189, !noalias !8193
  %.sroa.525.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.aq, ptr %.sroa.525.0..sroa_idx.i, align 8, !alias.scope !8189, !noalias !8193
  %.sroa.626.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.as, ptr %.sroa.626.0..sroa_idx.i, align 8, !alias.scope !8189, !noalias !8193
  invoke void @_RNvXNtNtCs6Po7BT7Nknu_5alloc3vec14spec_from_iterINtB4_3VecNtNtB6_6string6StringEINtB2_12SpecFromIterBU_INtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtNtB1M_5slice4iter4IterNtNtCsjyY8HP3IvQ6_12object_store4path4PathENCNCNvMs0_NtCs14kWLkQVSKO_14deltalake_core5tableNtB3J_10DeltaTable27get_file_uris_by_partitions00EE9from_iterCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.a)
          to label %bb.t unwind label %bb.s, !noalias !8181

bb.s:                                             ; preds = %bb.r
  %i.at = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !8177
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCsjyY8HP3IvQ6_12object_store4path4PathEECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(24) %i.d) #38
          to label %.body.thread unwind label %bb.y, !noalias !8181

bb.t:                                             ; preds = %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !8182
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.328.i, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false), !noalias !8177
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !8177
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCsjyY8HP3IvQ6_12object_store4path4PathENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %bb.v unwind label %bb.u, !noalias !8181

bb.u:                                             ; preds = %bb.t
  %i.au = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtCsjyY8HP3IvQ6_12object_store4path4PathENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %.body.thread unwind label %bb.w, !noalias !8181

bb.v:                                             ; preds = %bb.t
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtCsjyY8HP3IvQ6_12object_store4path4PathENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %bb.ac unwind label %bb.x, !noalias !8181

bb.w:                                             ; preds = %bb.u
  %i.av = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #39, !noalias !8181
  unreachable

.body.thread:                                     ; preds = %bb.s, %bb.u, %bb.x, %bb.q, %bb.l, %bb.k
  %.pn2.pn.i = phi { ptr, i32 } [ %i.au, %bb.u ], [ %i.at, %bb.s ], [ %i.aw, %bb.x ], [ %i.an, %bb.q ], [ %i.ac, %bb.k ], [ %i.ac, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !8177
  store i8 2, ptr %i.ag, align 8, !noalias !8177
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs0_NtCs14kWLkQVSKO_14deltalake_core5tableNtBO_10DeltaTable27get_file_uris_by_partitions0ECs7p2uQeJxui2_9deltalake.exit

bb.x:                                             ; preds = %bb.v
  %i.aw = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread

bb.y:                                             ; preds = %bb.s, %bb.l
  %i.ax = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #39, !noalias !8181
  unreachable

bb.z:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs0_NtCs14kWLkQVSKO_14deltalake_core5tableNtBO_10DeltaTable23get_files_by_partitions0ECs7p2uQeJxui2_9deltalake.exit8.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %.sroa.529.i, ptr noundef nonnull align 16 dereferenceable(64) %.sroa.521.i, i64 64, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.328.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.3.i, i64 24, i1 false), !noalias !8177
  br label %bb.ac

common.ret:                                       ; preds = %bb.af, %bb.aa
  %storemerge = phi i8 [ 1, %bb.af ], [ 3, %bb.aa ]
  store i8 %storemerge, ptr %i.g, align 8
  ret void

bb.aa:                                            ; preds = %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !8177
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !8177
  store i8 3, ptr %i.ag, align 8, !noalias !8177
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.328.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.3.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.521.i)
  store i64 2, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %common.ret

bb.ab:                                            ; preds = %bb.ad
  %i.ay = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs0_NtCs14kWLkQVSKO_14deltalake_core5tableNtBO_10DeltaTable27get_file_uris_by_partitions0ECs7p2uQeJxui2_9deltalake.exit

bb.ac:                                            ; preds = %bb.z, %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !8177
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.817, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.328.i, i64 24, i1 false)
  store i8 1, ptr %i.ag, align 8, !noalias !8177
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.328.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.3.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.521.i)
  br i1 %.not.i.i, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  store i64 %i.ai, ptr %i.f, align 16, !alias.scope !8194
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.3.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.817, i64 24, i1 false)
  %.sroa.520.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %.sroa.520.0..sroa_idx, ptr noundef nonnull align 16 dereferenceable(64) %.sroa.529.i, i64 64, i1 false)
  %i.az = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  invoke void @_RNvXs0_NtCs7p2uQeJxui2_9deltalake5errorNtNtCsgbCypRs12E4_4pyo33err5PyErrINtNtCsbvkFyIu7lgC_4core7convert4FromNtB5_11PythonErrorE4from(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(address) dereferenceable(56) %i.az, ptr noalias noundef nonnull readonly align 16 captures(none) dereferenceable(96) %i.f)
          to label %bb.af unwind label %bb.ab

bb.ae:                                            ; preds = %bb.ac
  %i.ba = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ba, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.817, i64 24, i1 false)
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad
  %.sink.i = phi i64 [ 0, %bb.ae ], [ 1, %bb.ad ]
  store i64 %.sink.i, ptr %i.e, align 8, !alias.scope !8198, !noalias !8201
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(64) %i.e, i64 64, i1 false)
  br label %common.ret

bb.ag:                                            ; preds = %bb.e
  %i.bb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #39
  unreachable
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc { i64, i64 } @_RNCNCNvNtNtCs14kWLkQVSKO_14deltalake_core8protocol11checkpoints24cleanup_expired_logs_for0s3_0Cs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(96) %0) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [72 x i8], align 8                ; 13 uses
  %i.d = alloca [72 x i8], align 8                ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !4, !noundef !4
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = load i64, ptr %i.g, align 8, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.i = load atomic i32, ptr getelementptr inbounds (i8, ptr @_RNvNtNtCs14kWLkQVSKO_14deltalake_core8protocol11checkpoints16CHECKPOINT_REGEX, i64 32) acquire, align 8
  %i.j = icmp eq i32 %i.i, 0
  br i1 %i.j, label %_RINvMs0_NtNtCs2pqxYH9ZEk8_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockNtNtNtCsonPGffhQyS_5regex5regex6string5RegexE5force0ECs7p2uQeJxui2_9deltalake.exit, label %bb.b, !prof !5

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr @_RNvNtNtCs14kWLkQVSKO_14deltalake_core8protocol11checkpoints16CHECKPOINT_REGEX, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.b, ptr %i.a, align 8
  call void @_RNvMs0_NtNtNtNtCs2pqxYH9ZEk8_3std3sys4sync4once5futexNtB5_4Once4call(ptr noundef nonnull align 4 getelementptr inbounds (i8, ptr @_RNvNtNtCs14kWLkQVSKO_14deltalake_core8protocol11checkpoints16CHECKPOINT_REGEX, i64 32), i1 noundef zeroext true, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) @25, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @27)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %_RINvMs0_NtNtCs2pqxYH9ZEk8_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockNtNtNtCsonPGffhQyS_5regex5regex6string5RegexE5force0ECs7p2uQeJxui2_9deltalake.exit

_RINvMs0_NtNtCs2pqxYH9ZEk8_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockNtNtNtCsonPGffhQyS_5regex5regex6string5RegexE5force0ECs7p2uQeJxui2_9deltalake.exit: ; preds = %bb.a, %bb.b
  call fastcc void @_RNvMs4_NtNtCsonPGffhQyS_5regex5regex6stringNtB5_5Regex11captures_at(ptr noalias noundef align 8 captures(none) dereferenceable(72) %i.d, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @_RNvNtNtCs14kWLkQVSKO_14deltalake_core8protocol11checkpoints16CHECKPOINT_REGEX, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.f, i64 noundef %i.h) #42
  %i.k = load i64, ptr %i.d, align 8, !range !288, !noundef !4
  %.not = icmp eq i64 %i.k, 2
  br i1 %.not, label %_RNCNCNCNvNtNtCs14kWLkQVSKO_14deltalake_core8protocol11checkpoints24cleanup_expired_logs_for0s3_0s_0Cs7p2uQeJxui2_9deltalake.exit.sink.split, label %bb.c

bb.c:                                             ; preds = %_RINvMs0_NtNtCs2pqxYH9ZEk8_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockNtNtNtCsonPGffhQyS_5regex5regex6string5RegexE5force0ECs7p2uQeJxui2_9deltalake.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.c, ptr noundef nonnull align 8 dereferenceable(72) %i.d, i64 72, i1 false)
  call void @llvm.experimental.noalias.scope.decl(metadata !8203)
  call void @llvm.experimental.noalias.scope.decl(metadata !8206)
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.m = load i32, ptr %i.l, align 8, !range !7382, !alias.scope !8209, !noalias !8210, !noundef !4
  %i.n = getelementptr inbounds nuw i8, ptr %i.c, i64 44
  %i.o = load i32, ptr %i.n, align 4, !alias.scope !8209, !noalias !8210
  %i.p = trunc nuw i32 %i.m to i1
  br i1 %i.p, label %bb.d, label %_RNCNCNCNvNtNtCs14kWLkQVSKO_14deltalake_core8protocol11checkpoints24cleanup_expired_logs_for0s3_00Cs7p2uQeJxui2_9deltalake.exit.thread

bb.d:                                             ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.r = load ptr, ptr %i.q, align 8, !alias.scope !8209, !noalias !8210, !nonnull !4, !noundef !4 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  %i.t = load i64, ptr %i.s, align 8, !noalias !8213, !noundef !4 ; 3 uses
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
  %i.z = load ptr, ptr %i.y, align 8, !noalias !8213, !nonnull !4, !noundef !4
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %i.w ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 4
  %i.ac = load i32, ptr %i.ab, align 4, !noalias !8213, !noundef !4
  %i.ad = zext i32 %i.ac to i64
  %i.ae = load i32, ptr %i.aa, align 4, !noalias !8213, !noundef !4
  %i.af = zext i32 %i.ae to i64                   ; 3 uses
  %i.ag = sub nsw i64 %i.ad, %i.af
  %i.ah = icmp ugt i64 %i.ag, 1
  br i1 %i.ah, label %bb.g, label %_RNCNCNCNvNtNtCs14kWLkQVSKO_14deltalake_core8protocol11checkpoints24cleanup_expired_logs_for0s3_00Cs7p2uQeJxui2_9deltalake.exit.thread

bb.f:                                             ; preds = %bb.g, %bb.d
  %.sroa.038.0.i.i = phi i64 [ %i.af, %bb.g ], [ 2, %bb.d ] ; 2 uses
  %.sroa.040.0.i.i = phi i64 [ %i.an, %bb.g ], [ 3, %bb.d ] ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.aj = load ptr, ptr %i.ai, align 8, !alias.scope !8209, !noalias !8210, !nonnull !4, !noundef !4 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.al = load i64, ptr %i.ak, align 8, !alias.scope !8209, !noalias !8210, !noundef !4 ; 2 uses
  %i.am = icmp ult i64 %.sroa.038.0.i.i, %i.al
  br i1 %i.am, label %bb.h, label %_RNCNCNCNvNtNtCs14kWLkQVSKO_14deltalake_core8protocol11checkpoints24cleanup_expired_logs_for0s3_00Cs7p2uQeJxui2_9deltalake.exit.thread

bb.g:                                             ; preds = %_RNvMs5_NtNtCslw7hBPHc6qc_14regex_automata4util8capturesNtB5_9GroupInfo4slot.exit.i.i
  %i.an = add nuw nsw i64 %i.af, 1
  br label %bb.f

bb.h:                                             ; preds = %bb.f
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %.sroa.038.0.i.i
  %i.ap = load i64, ptr %i.ao, align 8, !noalias !8213, !noundef !4 ; 5 uses
  %.not.i.i = icmp ne i64 %i.ap, 0
  %i.aq = icmp ult i64 %.sroa.040.0.i.i, %i.al
  %or.cond.i.i = select i1 %.not.i.i, i1 %i.aq, i1 false
  br i1 %or.cond.i.i, label %bb.i, label %_RNCNCNCNvNtNtCs14kWLkQVSKO_14deltalake_core8protocol11checkpoints24cleanup_expired_logs_for0s3_00Cs7p2uQeJxui2_9deltalake.exit.thread

bb.i:                                             ; preds = %bb.h
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %.sroa.040.0.i.i
  %i.as = load i64, ptr %i.ar, align 8, !noalias !8213, !noundef !4 ; 3 uses
  %.not44.i.i = icmp eq i64 %i.as, 0
  br i1 %.not44.i.i, label %_RNCNCNCNvNtNtCs14kWLkQVSKO_14deltalake_core8protocol11checkpoints24cleanup_expired_logs_for0s3_00Cs7p2uQeJxui2_9deltalake.exit.thread, label %bb.j

_RNCNCNCNvNtNtCs14kWLkQVSKO_14deltalake_core8protocol11checkpoints24cleanup_expired_logs_for0s3_00Cs7p2uQeJxui2_9deltalake.exit.thread: ; preds = %bb.i, %bb.h, %bb.f, %_RNvMs5_NtNtCslw7hBPHc6qc_14regex_automata4util8capturesNtB5_9GroupInfo4slot.exit.i.i, %bb.e, %bb.c
  %i.at = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  call fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCslw7hBPHc6qc_14regex_automata4util8captures8CapturesECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(40) %i.at), !noalias !8214
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %_RNCNCNCNvNtNtCs14kWLkQVSKO_14deltalake_core8protocol11checkpoints24cleanup_expired_logs_for0s3_0s_0Cs7p2uQeJxui2_9deltalake.exit.sink.split

bb.j:                                             ; preds = %bb.i
  %i.au = add i64 %i.ap, -1                       ; 7 uses
  %i.av = add i64 %i.as, -1                       ; 6 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  %i.ax = load i64, ptr %i.aw, align 8, !alias.scope !8203, !noalias !8214, !noundef !4 ; 5 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  %i.az = load ptr, ptr %i.ay, align 8, !alias.scope !8203, !noalias !8214, !nonnull !4, !noundef !4 ; 6 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  call fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCslw7hBPHc6qc_14regex_automata4util8captures8CapturesECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(40) %i.ba), !noalias !8214
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
  %i.bf = load i8, ptr %i.be, align 1, !alias.scope !8215, !noalias !8218, !noundef !4
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
  %i.bj = load i8, ptr %i.bi, align 1, !alias.scope !8215, !noalias !8218, !noundef !4
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
  %i.bn = load i8, ptr %i.bm, align 1, !alias.scope !8221, !noalias !8224, !noundef !4 ; 2 uses
  switch i8 %i.bn, label %bb.u [
    i8 43, label %_RNCNCNCNvNtNtCs14kWLkQVSKO_14deltalake_core8protocol11checkpoints24cleanup_expired_logs_for0s3_0s_0Cs7p2uQeJxui2_9deltalake.exit
    i8 45, label %_RNCNCNCNvNtNtCs14kWLkQVSKO_14deltalake_core8protocol11checkpoints24cleanup_expired_logs_for0s3_0s_0Cs7p2uQeJxui2_9deltalake.exit
  ]

thread-pre-split.i.i:                             ; preds = %bb.s
  %.pr.i.i = load i8, ptr %i.bm, align 1, !alias.scope !8221, !noalias !8224
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
  br i1 %i.by, label %_RNCNCNCNvNtNtCs14kWLkQVSKO_14deltalake_core8protocol11checkpoints24cleanup_expired_logs_for0s3_0s_0Cs7p2uQeJxui2_9deltalake.exit, label %bb.x, !prof !64

bb.x:                                             ; preds = %.lr.ph.i.i
  %i.bz = load i8, ptr %.sroa.0.1136.i.i, align 1, !alias.scope !8221, !noalias !8224, !noundef !4
  %i.ca = zext i8 %i.bz to i32
  %i.cb = add nsw i32 %i.ca, -48                  ; 2 uses
  %i.cc = icmp ult i32 %i.cb, 10
  br i1 %i.cc, label %bb.y, label %_RNCNCNCNvNtNtCs14kWLkQVSKO_14deltalake_core8protocol11checkpoints24cleanup_expired_logs_for0s3_0s_0Cs7p2uQeJxui2_9deltalake.exit

bb.y:                                             ; preds = %bb.x
  %i.cd = zext nneg i32 %i.cb to i64
  %i.ce = call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %i.bx, i64 %i.cd) ; 2 uses
  %i.cf = extractvalue { i64, i1 } %i.ce, 1
  br i1 %i.cf, label %_RNCNCNCNvNtNtCs14kWLkQVSKO_14deltalake_core8protocol11checkpoints24cleanup_expired_logs_for0s3_0s_0Cs7p2uQeJxui2_9deltalake.exit, label %bb.z, !prof !64

bb.z:                                             ; preds = %bb.y
end_hunk_1
begin_hunk_2_@_RNvMsi_NtCs7p2uQeJxui2_9deltalake10filesystemNtB5_22DeltaFileSystemHandler23___pymethod_from_table__:bb.a
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.016.0.copyload, ptr %i.z, align 8
  store i64 1, ptr %0, align 8
  br label %bb.aw

bb.h:                                             ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.58)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  %i.aa = getelementptr inbounds nuw i8, ptr %i.o, i64 8 ; 2 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !noundef !4
  %.not22 = icmp eq ptr %i.ab, null
  %.25 = select i1 %.not22, ptr null, ptr %i.aa
  invoke void @_RINvNtNtCsgbCypRs12E4_4pyo35impl_16extract_argument25extract_optional_argumentINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringB29_EKb0_ECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.j, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(8) %.25, ptr noalias noundef nonnull %i.a, ptr noalias noundef nonnull readonly captures(address, read_provenance) @320, i64 noundef 7, ptr noundef nonnull @_RNvYNCNvMsi_NtCs7p2uQeJxui2_9deltalake10filesystemNtBa_22DeltaFileSystemHandler23___pymethod_from_table__0INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceuE9call_onceBc_)
          to label %bb.i unwind label %bb.e

bb.i:                                             ; preds = %bb.h
  %i.ac = load i64, ptr %i.j, align 8, !range !3, !noundef !4
  %i.ad = trunc nuw i64 %i.ac to i1
  %i.ae = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 2 uses
  br i1 %i.ad, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.58, ptr noundef nonnull align 8 dereferenceable(56) %i.ae, i64 56, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.af, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.58, i64 56, i1 false)
  store i64 1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.58)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringB1X_EEECs7p2uQeJxui2_9deltalake.exit

bb.k:                                             ; preds = %bb.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.58, ptr noundef nonnull align 8 dereferenceable(48) %i.ae, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.k, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.58, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.58)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.511)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  %i.ag = getelementptr inbounds nuw i8, ptr %i.o, i64 16 ; 2 uses
  %i.ah = load ptr, ptr %i.ag, align 8, !noundef !4
  %.not23 = icmp eq ptr %i.ah, null
  %.26 = select i1 %.not23, ptr null, ptr %i.ag
  invoke void @_RINvNtNtCsgbCypRs12E4_4pyo35impl_16extract_argument25extract_optional_argumentINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringxEKb0_ECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(8) %.26, ptr noalias noundef nonnull %i.a, ptr noalias noundef nonnull readonly captures(address, read_provenance) @321, i64 noundef 11, ptr noundef nonnull @_RNvYNCNvMsi_NtCs7p2uQeJxui2_9deltalake10filesystemNtBa_22DeltaFileSystemHandler23___pymethod_from_table__s_0INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceuE9call_onceBc_)
          to label %bb.l unwind label %bb.at

.body:                                            ; preds = %bb.aj
  %i.ai = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread

bb.l:                                             ; preds = %bb.k
  %i.aj = load i64, ptr %i.i, align 8, !range !3, !noundef !4
  %i.ak = trunc nuw i64 %i.aj to i1
  %i.al = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 2 uses
  br i1 %i.ak, label %bb.m, label %bb.o

bb.m:                                             ; preds = %bb.l
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.511, ptr noundef nonnull align 8 dereferenceable(56) %i.al, i64 56, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.am, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.511, i64 56, i1 false)
  store i64 1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.511)
  %i.an = load ptr, ptr %i.k, align 8, !alias.scope !10794, !noundef !4
  %i.ao = icmp eq ptr %i.an, null
  br i1 %i.ao, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringB1X_EEECs7p2uQeJxui2_9deltalake.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  invoke void @_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringBP_EENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.k)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringB1X_EEECs7p2uQeJxui2_9deltalake.exit unwind label %bb.e

bb.o:                                             ; preds = %bb.l
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.511, ptr noundef nonnull align 8 dereferenceable(48) %i.al, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.h, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.511, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.511)
  call void @llvm.experimental.noalias.scope.decl(metadata !10797)
  call void @llvm.experimental.noalias.scope.decl(metadata !10800)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !10802
  invoke void @_RNvMCs7p2uQeJxui2_9deltalakeNtB2_13RawDeltaTable12object_store(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(address) dereferenceable(64) %i.f, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(144) %.sroa.016.0.copyload)
          to label %bb.r unwind label %bb.q, !noalias !10805

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EECs7p2uQeJxui2_9deltalake.exit.i: ; preds = %bb.ag, %bb.af, %bb.v, %bb.u, %bb.q
  %.sroa.026.0.i = phi i1 [ true, %bb.q ], [ true, %bb.u ], [ true, %bb.v ], [ false, %bb.ag ], [ false, %bb.af ]
  %.pn.i = phi { ptr, i32 } [ %i.ar, %bb.q ], [ %i.aw, %bb.u ], [ %i.aw, %bb.v ], [ %i.bf, %bb.ag ], [ %i.bf, %bb.af ] ; 2 uses
  %i.ap = load ptr, ptr %i.h, align 8, !alias.scope !10806, !noalias !10809, !noundef !4
  %i.aq = icmp eq ptr %i.ap, null
  br i1 %i.aq, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringxEEECs7p2uQeJxui2_9deltalake.exit.i, label %bb.p

bb.p:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EECs7p2uQeJxui2_9deltalake.exit.i
  invoke void @_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringxEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.h)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringxEEECs7p2uQeJxui2_9deltalake.exit.i unwind label %bb.ae, !noalias !10810

bb.q:                                             ; preds = %bb.y, %bb.o
  %i.ar = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EECs7p2uQeJxui2_9deltalake.exit.i

bb.r:                                             ; preds = %bb.o
  %i.as = load i64, ptr %i.f, align 8, !range !3, !noalias !10802, !noundef !4
  %i.at = trunc nuw i64 %i.as to i1
  %i.au = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.sroa.030.0.copyload.i = load ptr, ptr %i.au, align 8, !noalias !10802 ; 5 uses
  %.sroa.531.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %.sroa.531.0.copyload.i = load ptr, ptr %.sroa.531.0..sroa_idx.i, align 8, !noalias !10802 ; 3 uses
  br i1 %i.at, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %.sroa.632.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.942, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.632.0..sroa_idx.i, i64 40, i1 false), !noalias !10811
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !10802
  br label %bb.ah

bb.t:                                             ; preds = %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !10802
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !10802
  store ptr %.sroa.030.0.copyload.i, ptr %i.e, align 8, !noalias !10802
  %i.av = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  store ptr %.sroa.531.0.copyload.i, ptr %i.av, align 8, !noalias !10802
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !10802
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.610.i.sroa.8)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !10802
  invoke void @_RINvMCs7p2uQeJxui2_9deltalakeNtB3_13RawDeltaTable10with_tableNtCseo6ZV82fEK1_3url3UrlNCNvMsg_NtB3_10filesystemNtB1t_22DeltaFileSystemHandler10from_table0EB3_(ptr noalias noundef nonnull sret([88 x i8]) align 8 captures(address) dereferenceable(88) %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(144) %.sroa.016.0.copyload)
          to label %bb.w unwind label %bb.u, !noalias !10805

bb.u:                                             ; preds = %bb.t
  %i.aw = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ax = atomicrmw sub ptr %.sroa.030.0.copyload.i, i64 1 release, align 8, !noalias !10812
  %i.ay = icmp eq i64 %i.ax, 1
  br i1 %i.ay, label %bb.v, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EECs7p2uQeJxui2_9deltalake.exit.i

bb.v:                                             ; preds = %bb.u
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_E9drop_slowBJ_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.e) #40
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EECs7p2uQeJxui2_9deltalake.exit.i unwind label %bb.ae, !noalias !10805

bb.w:                                             ; preds = %bb.t
  %i.az = load i64, ptr %i.c, align 8, !range !63, !noalias !10802, !noundef !4 ; 3 uses
  %i.ba = icmp eq i64 %i.az, -9223372036854775808
  %i.bb = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.610.i.sroa.0.0.copyload59 = load ptr, ptr %i.bb, align 8, !noalias !10802 ; 3 uses
  %.sroa.610.i.sroa.7.0..sroa_idx61 = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.sroa.610.i.sroa.7.0.copyload62 = load ptr, ptr %.sroa.610.i.sroa.7.0..sroa_idx61, align 8, !noalias !10802 ; 3 uses
  %.sroa.610.i.sroa.8.0..sroa_idx63 = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.610.i.sroa.8, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.610.i.sroa.8.0..sroa_idx63, i64 40, i1 false), !noalias !10802
  br i1 %i.ba, label %bb.x, label %bb.z

bb.x:                                             ; preds = %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !10802
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.942, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.610.i.sroa.8, i64 40, i1 false), !noalias !10811
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !10802
  %i.bc = atomicrmw sub ptr %.sroa.030.0.copyload.i, i64 1 release, align 8, !noalias !10817
  %i.bd = icmp eq i64 %i.bc, 1
  br i1 %i.bd, label %bb.y, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EECs7p2uQeJxui2_9deltalake.exit53.i

bb.y:                                             ; preds = %bb.x
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_E9drop_slowBJ_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.e) #40
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EECs7p2uQeJxui2_9deltalake.exit53.i unwind label %bb.q, !noalias !10805

bb.z:                                             ; preds = %bb.w
  %.sroa.638.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  %.sroa.514.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 64 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.514.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.638.0..sroa_idx.i, i64 24, i1 false), !noalias !10802
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !10802
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %.sroa.610.i.sroa.0.0.copyload59, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !10802
  %.sroa.610.i.sroa.7.0..sroa.4.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store ptr %.sroa.610.i.sroa.7.0.copyload62, ptr %.sroa.610.i.sroa.7.0..sroa.4.0..sroa_idx.i.sroa_idx, align 8, !noalias !10802
  %.sroa.610.i.sroa.8.0..sroa.4.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.610.i.sroa.8.0..sroa.4.0..sroa_idx.i.sroa_idx, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.610.i.sroa.8, i64 40, i1 false), !noalias !10802
  store i64 %i.az, ptr %i.d, align 8, !noalias !10802
  %.sroa.015.0.copyload.i = load ptr, ptr %i.k, align 8, !alias.scope !10797, !noalias !10822 ; 2 uses
  %.not.i = icmp eq ptr %.sroa.015.0.copyload.i, null
  br i1 %.not.i, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %.sroa.517.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %.sroa.517.sroa.5.0..sroa.517.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.k, i64 40
  %.sroa.517.sroa.5.0.copyload.i = load i64, ptr %.sroa.517.sroa.5.0..sroa.517.0..sroa_idx.sroa_idx.i, align 8, !alias.scope !10797, !noalias !10822
  %.sroa.517.sroa.4.0..sroa.517.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  %.sroa.517.sroa.4.0.copyload.i = load i64, ptr %.sroa.517.sroa.4.0..sroa.517.0..sroa_idx.sroa_idx.i, align 8, !alias.scope !10797, !noalias !10822
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.521.sroa.0.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.517.0..sroa_idx.i, i64 24, i1 false)
  br label %bb.an

bb.ab:                                            ; preds = %bb.z
  %i.be = invoke { i64, i64 } @_RINvMs2_NtNtCs2pqxYH9ZEk8_3std6thread5localINtB6_8LocalKeyINtNtCsbvkFyIu7lgC_4core4cell4CellTyyEEE4withNCNvMNtNtBa_4hash6randomNtB1I_11RandomState3new0B21_ECs7p2uQeJxui2_9deltalake(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) @8)
          to label %bb.ad unwind label %bb.ac, !noalias !10805 ; 2 uses

bb.ac:                                            ; preds = %bb.ab
  %i.bf = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCseo6ZV82fEK1_3url3UrlECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(88) %i.d) #38
          to label %bb.af unwind label %bb.ae, !noalias !10805

bb.ad:                                            ; preds = %bb.ab
  %i.bg = extractvalue { i64, i64 } %i.be, 0
  %i.bh = extractvalue { i64, i64 } %i.be, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.521.sroa.0.i, ptr noundef nonnull align 8 dereferenceable(24) getelementptr inbounds (i8, ptr @10, i64 8), i64 24, i1 false)
  %.pre.i = load ptr, ptr %i.e, align 8, !noalias !10802
  %.pre5.i = load ptr, ptr %i.av, align 8, !noalias !10802
  br label %bb.an

bb.ae:                                            ; preds = %bb.al, %bb.ag, %bb.ac, %bb.v, %bb.p
  %i.bi = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #39, !noalias !10823
  unreachable

bb.af:                                            ; preds = %bb.ac
  call void @llvm.experimental.noalias.scope.decl(metadata !10824)
  call void @llvm.experimental.noalias.scope.decl(metadata !10827)
  %i.bj = load ptr, ptr %i.e, align 8, !alias.scope !10830, !noalias !10802, !nonnull !4, !noundef !4
  %i.bk = atomicrmw sub ptr %i.bj, i64 1 release, align 8, !noalias !10831
  %i.bl = icmp eq i64 %i.bk, 1
  br i1 %i.bl, label %bb.ag, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EECs7p2uQeJxui2_9deltalake.exit.i

bb.ag:                                            ; preds = %bb.af
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_E9drop_slowBJ_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.e) #40
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EECs7p2uQeJxui2_9deltalake.exit.i unwind label %bb.ae, !noalias !10805

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EECs7p2uQeJxui2_9deltalake.exit53.i: ; preds = %bb.y, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !10802
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.610.i.sroa.8)
  br label %bb.ah

bb.ah:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EECs7p2uQeJxui2_9deltalake.exit53.i, %bb.s
  %.sroa.8.0 = phi ptr [ %.sroa.531.0.copyload.i, %bb.s ], [ %.sroa.610.i.sroa.7.0.copyload62, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EECs7p2uQeJxui2_9deltalake.exit53.i ]
  %.sroa.5.0 = phi ptr [ %.sroa.030.0.copyload.i, %bb.s ], [ %.sroa.610.i.sroa.0.0.copyload59, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EECs7p2uQeJxui2_9deltalake.exit53.i ]
  %i.bm = load ptr, ptr %i.h, align 8, !alias.scope !10832, !noalias !10809, !noundef !4
  %i.bn = icmp eq ptr %i.bm, null
  br i1 %i.bn, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringxEEECs7p2uQeJxui2_9deltalake.exit57.i, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  invoke void @_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringxEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.h)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringxEEECs7p2uQeJxui2_9deltalake.exit57.i unwind label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringxEEECs7p2uQeJxui2_9deltalake.exit.thread.i, !noalias !10810

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringxEEECs7p2uQeJxui2_9deltalake.exit.i: ; preds = %bb.p, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EECs7p2uQeJxui2_9deltalake.exit.i
  br i1 %.sroa.026.0.i, label %bb.ak, label %.body.thread

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringxEEECs7p2uQeJxui2_9deltalake.exit.thread.i: ; preds = %bb.ai
  %i.bo = landingpad { ptr, i32 }
          cleanup
  br label %bb.ak

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringxEEECs7p2uQeJxui2_9deltalake.exit57.i: ; preds = %bb.ai, %bb.ah
  %i.bp = load ptr, ptr %i.k, align 8, !alias.scope !10835, !noalias !10822, !noundef !4
  %i.bq = icmp eq ptr %i.bp, null
  br i1 %i.bq, label %bb.am, label %bb.aj

bb.aj:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringxEEECs7p2uQeJxui2_9deltalake.exit57.i
  invoke void @_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringBP_EENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.k)
          to label %bb.am unwind label %.body

bb.ak:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringxEEECs7p2uQeJxui2_9deltalake.exit.thread.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringxEEECs7p2uQeJxui2_9deltalake.exit.i
  %.pn494.i = phi { ptr, i32 } [ %i.bo, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringxEEECs7p2uQeJxui2_9deltalake.exit.thread.i ], [ %.pn.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringxEEECs7p2uQeJxui2_9deltalake.exit.i ] ; 2 uses
  %i.br = load ptr, ptr %i.k, align 8, !alias.scope !10838, !noalias !10822, !noundef !4
  %i.bs = icmp eq ptr %i.br, null
  br i1 %i.bs, label %.body.thread, label %bb.al

bb.al:                                            ; preds = %bb.ak
  invoke void @_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringBP_EENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.k)
          to label %.body.thread unwind label %bb.ae, !noalias !10823

bb.am:                                            ; preds = %bb.aj, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringxEEECs7p2uQeJxui2_9deltalake.exit57.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.1050.sroa.5, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.942, i64 40, i1 false)
  br label %bb.ao

bb.an:                                            ; preds = %bb.ad, %bb.aa
  %i.bt = phi ptr [ %.sroa.531.0.copyload.i, %bb.aa ], [ %.pre5.i, %bb.ad ]
  %i.bu = phi ptr [ %.sroa.030.0.copyload.i, %bb.aa ], [ %.pre.i, %bb.ad ]
  %.sroa.019.0.i = phi ptr [ %.sroa.015.0.copyload.i, %bb.aa ], [ @9, %bb.ad ]
  %.sroa.521.sroa.5.0.i = phi i64 [ %.sroa.517.sroa.4.0.copyload.i, %bb.aa ], [ %i.bg, %bb.ad ]
  %.sroa.521.sroa.6.0.i = phi i64 [ %.sroa.517.sroa.5.0.copyload.i, %bb.aa ], [ %i.bh, %bb.ad ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.942, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.610.i.sroa.8, i64 40, i1 false)
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.10.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.514.0..sroa_idx.i, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !10802
  %.sroa.16.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 152
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.16.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(48) %i.h, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !10802
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.610.i.sroa.8)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  store i64 %i.az, ptr %i.g, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr %.sroa.610.i.sroa.0.0.copyload59, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store ptr %.sroa.610.i.sroa.7.0.copyload62, ptr %.sroa.8.0..sroa_idx, align 8
  %.sroa.942.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.942.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.942, i64 40, i1 false)
  %.sroa.1045.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 88
  store ptr %.sroa.019.0.i, ptr %.sroa.1045.0..sroa_idx, align 8
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 96
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.11.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.521.sroa.0.i, i64 24, i1 false)
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 120
  store i64 %.sroa.521.sroa.5.0.i, ptr %.sroa.12.0..sroa_idx, align 8
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 128
  store i64 %.sroa.521.sroa.6.0.i, ptr %.sroa.13.0..sroa_idx, align 8
  %.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 136
  store ptr %i.bu, ptr %.sroa.14.0..sroa_idx, align 8
  %.sroa.15.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 144
  store ptr %i.bt, ptr %.sroa.15.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !10841
  invoke void @_RNvMNtCsgbCypRs12E4_4pyo312pyclass_initINtB2_18PyClassInitializerNtNtCs7p2uQeJxui2_9deltalake10filesystem22DeltaFileSystemHandlerE19create_class_objectB15_(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(address) dereferenceable(64) %i.b, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(200) %i.g)
          to label %.noexc29 unwind label %bb.e

.noexc29:                                         ; preds = %bb.an
  %i.bv = load i64, ptr %i.b, align 8, !range !3, !noalias !10841, !noundef !4
  %i.bw = trunc nuw i64 %i.bv to i1
  %i.bx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.547.8.copyload49 = load ptr, ptr %i.bx, align 8, !noalias !10845 ; 2 uses
  br i1 %i.bw, label %.thread78, label %bb.ap

.thread78:                                        ; preds = %.noexc29
  %.sroa.1050.8..sroa_idx52 = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.1050.sroa.0.0.copyload55 = load ptr, ptr %.sroa.1050.8..sroa_idx52, align 8, !noalias !10845
  %.sroa.1050.sroa.5.0..sroa.1050.8..sroa_idx52.sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.1050.sroa.5, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.1050.sroa.5.0..sroa.1050.8..sroa_idx52.sroa_idx, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !10841
  br label %bb.ao

bb.ao:                                            ; preds = %.thread78, %bb.am
  %.sroa.1050.sroa.0.0 = phi ptr [ %.sroa.8.0, %bb.am ], [ %.sroa.1050.sroa.0.0.copyload55, %.thread78 ]
  %.sroa.547.0 = phi ptr [ %.sroa.5.0, %bb.am ], [ %.sroa.547.8.copyload49, %.thread78 ]
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.547.0, ptr %i.by, align 8
  %.sroa.557.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.1050.sroa.0.0, ptr %.sroa.557.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.6.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.1050.sroa.5, i64 40, i1 false)
  br label %bb.aq

bb.ap:                                            ; preds = %.noexc29
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !10841
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.547.8.copyload49, ptr %i.bz, align 8
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.ao
  %storemerge = phi i64 [ 0, %bb.ap ], [ 1, %bb.ao ]
  store i64 %storemerge, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  %i.ca = load ptr, ptr %i.m, align 8, !alias.scope !10846, !noundef !4
  %i.cb = icmp eq ptr %i.ca, null
  br i1 %i.cb, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtCsgbCypRs12E4_4pyo37pyclass5guard12PyClassGuardNtCs7p2uQeJxui2_9deltalake13RawDeltaTableEEEB1W_.exit30, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  call void @_RNvXs4_NtNtCsgbCypRs12E4_4pyo37pyclass5guardINtB5_12PyClassGuardNtCs7p2uQeJxui2_9deltalake13RawDeltaTableENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropB12_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.m)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtCsgbCypRs12E4_4pyo37pyclass5guard12PyClassGuardNtCs7p2uQeJxui2_9deltalake13RawDeltaTableEEEB1W_.exit30

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtCsgbCypRs12E4_4pyo37pyclass5guard12PyClassGuardNtCs7p2uQeJxui2_9deltalake13RawDeltaTableEEEB1W_.exit30: ; preds = %bb.aq, %bb.ar
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  br label %bb.as

bb.as:                                            ; preds = %bb.b, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtCsgbCypRs12E4_4pyo37pyclass5guard12PyClassGuardNtCs7p2uQeJxui2_9deltalake13RawDeltaTableEEEB1W_.exit33, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtCsgbCypRs12E4_4pyo37pyclass5guard12PyClassGuardNtCs7p2uQeJxui2_9deltalake13RawDeltaTableEEEB1W_.exit30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  ret void

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringB1X_EEECs7p2uQeJxui2_9deltalake.exit: ; preds = %bb.m, %bb.n, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  br label %bb.aw

bb.at:                                            ; preds = %bb.k
  %i.cc = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cd = load ptr, ptr %i.k, align 8, !alias.scope !10849, !noundef !4
  %i.ce = icmp eq ptr %i.cd, null
  br i1 %i.ce, label %.body.thread, label %bb.au

bb.au:                                            ; preds = %bb.at
  invoke void @_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringBP_EENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.k)
          to label %.body.thread unwind label %bb.av

bb.av:                                            ; preds = %bb.au, %bb.d
  %i.cf = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #39
  unreachable

bb.aw:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringB1X_EEECs7p2uQeJxui2_9deltalake.exit, %bb.g
  %i.cg = load ptr, ptr %i.m, align 8, !alias.scope !10852, !noundef !4
  %i.ch = icmp eq ptr %i.cg, null
  br i1 %i.ch, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtCsgbCypRs12E4_4pyo37pyclass5guard12PyClassGuardNtCs7p2uQeJxui2_9deltalake13RawDeltaTableEEEB1W_.exit33, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  call void @_RNvXs4_NtNtCsgbCypRs12E4_4pyo37pyclass5guardINtB5_12PyClassGuardNtCs7p2uQeJxui2_9deltalake13RawDeltaTableENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropB12_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.m)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtCsgbCypRs12E4_4pyo37pyclass5guard12PyClassGuardNtCs7p2uQeJxui2_9deltalake13RawDeltaTableEEEB1W_.exit33

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtCsgbCypRs12E4_4pyo37pyclass5guard12PyClassGuardNtCs7p2uQeJxui2_9deltalake13RawDeltaTableEEEB1W_.exit33: ; preds = %bb.aw, %bb.ax
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  br label %bb.as

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtCsgbCypRs12E4_4pyo37pyclass5guard12PyClassGuardNtCs7p2uQeJxui2_9deltalake13RawDeltaTableEEEB1W_.exit: ; preds = %.body.thread, %bb.d
  resume { ptr, i32 } %.pn
}
end_hunk_2
begin_hunk_3_@_RNvNvNvXsh_NtCs7p2uQeJxui2_9deltalake10filesystemINtNtNtCsgbCypRs12E4_4pyo35impl_7pyclass20PyClassImplCollectorNtB9_22DeltaFileSystemHandlerEINtBO_9PyMethodsB1L_E10py_methods5ITEMSsc_10trampoline:bb.a
  %i.cb = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !11438
  invoke void @_RNvXs0_NtCs7p2uQeJxui2_9deltalake5errorNtNtCsgbCypRs12E4_4pyo33err5PyErrINtNtCsbvkFyIu7lgC_4core7convert4FromNtB5_11PythonErrorE4from(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(address) dereferenceable(56) %i.d, ptr noalias noundef nonnull readonly align 16 captures(none) dereferenceable(96) %i.cb)
          to label %bb.bh unwind label %bb.t, !noalias !11446

bb.x:                                             ; preds = %bb.v
  %.sroa.569.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.sroa.670.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 112
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %.sroa.4.0..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(104) %.sroa.569.0..sroa_idx.i.i, i64 104, i1 false), !noalias !11438
  store i64 %i.bz, ptr %i.o, align 8, !noalias !11438
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.o, i64 112
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(224) %.sroa.5.0..sroa_idx.i.i, ptr noundef nonnull align 16 dereferenceable(224) %.sroa.670.0..sroa_idx.i.i, i64 224, i1 false), !noalias !11438
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !11438
  %i.cc = load ptr, ptr %i.aa, align 8, !alias.scope !11434, !noalias !11447, !noundef !4
  %.not102.i.i = icmp eq ptr %i.cc, null
  br i1 %.not102.i.i, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !11438
  call void @llvm.experimental.noalias.scope.decl(metadata !11448), !noalias !11422
  call void @llvm.experimental.noalias.scope.decl(metadata !11451), !noalias !11422
  %i.cd = getelementptr inbounds nuw i8, ptr %i.aa, i64 32
  %i.ce = load <2 x i64>, ptr %i.cd, align 8, !alias.scope !11453, !noalias !11454
  invoke void @_RNvXsb_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringBP_EENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(48) %i.f, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.aa)
          to label %bb.ad unwind label %bb.bg, !noalias !11446

bb.z:                                             ; preds = %bb.x
  %i.cf = invoke { i64, i64 } @_RINvMs2_NtNtCs2pqxYH9ZEk8_3std6thread5localINtB6_8LocalKeyINtNtCsbvkFyIu7lgC_4core4cell4CellTyyEEE4withNCNvMNtNtBa_4hash6randomNtB1I_11RandomState3new0B21_ECs7p2uQeJxui2_9deltalake(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) @8)
          to label %bb.ab unwind label %bb.bg, !noalias !11446 ; 2 uses

bb.aa:                                            ; preds = %bb.ac
  %lpad.thr_comm.split-lp.i.i = landingpad { ptr, i32 }
          catch ptr null
          filter [0 x ptr] zeroinitializer
  br label %bb.bj

bb.ab:                                            ; preds = %bb.z
  %i.cg = extractvalue { i64, i64 } %i.cf, 0
  %i.ch = extractvalue { i64, i64 } %i.cf, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.m, ptr noundef nonnull align 8 dereferenceable(32) @10, i64 32, i1 false), !noalias !11438
  %.sroa.475.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  store i64 %i.cg, ptr %.sroa.475.0..sroa_idx.i.i, align 8, !noalias !11438
  %.sroa.576.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 40
  store i64 %i.ch, ptr %.sroa.576.0..sroa_idx.i.i, align 8, !noalias !11438
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ad, %bb.ab
  invoke void @_RNvMs0_NtNtCs14kWLkQVSKO_14deltalake_core5table7builderNtB5_17DeltaTableBuilder20with_storage_options(ptr noalias noundef nonnull sret([336 x i8]) align 8 captures(none) dereferenceable(336) %i.p, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(336) %i.o, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(48) %i.m)
          to label %bb.ae unwind label %bb.aa, !noalias !11446

bb.ad:                                            ; preds = %bb.y
  %i.ci = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  store <2 x i64> %i.ce, ptr %i.ci, align 8, !alias.scope !11448, !noalias !11455
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.m, ptr noundef nonnull align 8 dereferenceable(48) %i.f, i64 48, i1 false), !noalias !11438
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !11438
  br label %bb.ac

bb.ae:                                            ; preds = %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !11438
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !11438
  invoke void @_RNvMs0_NtNtCs14kWLkQVSKO_14deltalake_core5table7builderNtB5_17DeltaTableBuilder13build_storage(ptr noalias noundef nonnull sret([96 x i8]) align 16 captures(address) dereferenceable(96) %i.q, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(336) %i.p)
          to label %bb.ag unwind label %bb.af, !noalias !11446

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs14kWLkQVSKO_14deltalake_core8logstore8LogStoreEL_EECs7p2uQeJxui2_9deltalake.exit.i.i: ; preds = %bb.ak, %bb.aj, %bb.af
  %.pn106.i.i = phi { ptr, i32 } [ %i.cj, %bb.af ], [ %i.cz, %bb.ak ], [ %i.cz, %bb.aj ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs14kWLkQVSKO_14deltalake_core5table7builder17DeltaTableBuilderECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(336) %i.p) #38
          to label %bb.bj unwind label %bb.ax, !noalias !11446

bb.af:                                            ; preds = %bb.ah, %bb.ae
  %i.cj = landingpad { ptr, i32 }
          catch ptr null
          filter [0 x ptr] zeroinitializer
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs14kWLkQVSKO_14deltalake_core8logstore8LogStoreEL_EECs7p2uQeJxui2_9deltalake.exit.i.i

bb.ag:                                            ; preds = %bb.ae
  %i.ck = load i64, ptr %i.q, align 16, !range !6869, !noalias !11438, !noundef !4 ; 2 uses
  %.not103.i.i = icmp eq i64 %i.ck, -9223372036854775711
  %i.cl = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.cm = load ptr, ptr %i.cl, align 8, !noalias !11438 ; 5 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.co = load ptr, ptr %i.cn, align 16, !noalias !11438 ; 4 uses
  br i1 %.not103.i.i, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %.sroa.484.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %.sroa.440.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !11438
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.440.0..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.484.0..sroa_idx.i.i, i64 72, i1 false), !noalias !11438
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !11438
  store i64 %i.ck, ptr %i.c, align 16, !noalias !11438
  %.sroa.239.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.cm, ptr %.sroa.239.0..sroa_idx.i.i, align 8, !noalias !11438
  %.sroa.3.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store ptr %i.co, ptr %.sroa.3.0..sroa_idx.i.i, align 16, !noalias !11438
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !11438
  invoke void @_RNvXs0_NtCs7p2uQeJxui2_9deltalake5errorNtNtCsgbCypRs12E4_4pyo33err5PyErrINtNtCsbvkFyIu7lgC_4core7convert4FromNtB5_11PythonErrorE4from(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(address) dereferenceable(56) %i.b, ptr noalias noundef nonnull readonly align 16 captures(none) dereferenceable(96) %i.c)
          to label %bb.bc unwind label %bb.af, !noalias !11446

bb.ai:                                            ; preds = %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !11438
  store ptr %i.cm, ptr %i.r, align 8, !noalias !11438
  %i.cp = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store ptr %i.co, ptr %i.cp, align 8, !noalias !11438
  %i.cq = getelementptr inbounds nuw i8, ptr %i.co, i64 16
  %i.cr = load i64, ptr %i.cq, align 8, !range !605, !invariant.load !4, !noalias !11446
  %i.cs = add nsw i64 %i.cr, -1
  %i.ct = and i64 %i.cs, -16
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cm, i64 %i.ct
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !11438
  store i8 0, ptr %i.l, align 1, !noalias !11438
  %i.cw = getelementptr inbounds nuw i8, ptr %i.co, i64 112
  %i.cx = load ptr, ptr %i.cw, align 8, !invariant.load !4, !noalias !11446, !nonnull !4
  %i.cy = invoke { ptr, ptr } %i.cx(ptr noundef nonnull %i.cv, ptr noalias noundef nonnull align 1 captures(address) dereferenceable(17) %i.l)
          to label %bb.al unwind label %bb.aj, !noalias !11446 ; 2 uses

bb.aj:                                            ; preds = %bb.ai
  %i.cz = landingpad { ptr, i32 }
          catch ptr null
          filter [0 x ptr] zeroinitializer        ; 2 uses
  %i.da = atomicrmw sub ptr %i.cm, i64 1 release, align 8, !noalias !11456
  %i.db = icmp eq i64 %i.da, 1
  br i1 %i.db, label %bb.ak, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs14kWLkQVSKO_14deltalake_core8logstore8LogStoreEL_EECs7p2uQeJxui2_9deltalake.exit.i.i

bb.ak:                                            ; preds = %bb.aj
  fence acquire, !noalias !11422
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtNtCs14kWLkQVSKO_14deltalake_core8logstore8LogStoreEL_E9drop_slowBL_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.r) #40
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs14kWLkQVSKO_14deltalake_core8logstore8LogStoreEL_EECs7p2uQeJxui2_9deltalake.exit.i.i unwind label %bb.ax, !noalias !11446

bb.al:                                            ; preds = %bb.ai
  %i.dc = extractvalue { ptr, ptr } %i.cy, 0
  %i.dd = extractvalue { ptr, ptr } %i.cy, 1
  store ptr %i.dc, ptr %i.s, align 8, !noalias !11438
  %i.de = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 2 uses
  store ptr %i.dd, ptr %i.de, align 8, !noalias !11438
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !11438
  %i.df = atomicrmw sub ptr %i.cm, i64 1 release, align 8, !noalias !11461
  %i.dg = icmp eq i64 %i.df, 1
  br i1 %i.dg, label %bb.am, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs14kWLkQVSKO_14deltalake_core8logstore8LogStoreEL_EECs7p2uQeJxui2_9deltalake.exit119.i.i

bb.am:                                            ; preds = %bb.al
  fence acquire, !noalias !11422
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtNtCs14kWLkQVSKO_14deltalake_core8logstore8LogStoreEL_E9drop_slowBL_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.r) #40
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs14kWLkQVSKO_14deltalake_core8logstore8LogStoreEL_EECs7p2uQeJxui2_9deltalake.exit119.i.i unwind label %bb.an, !noalias !11446

bb.an:                                            ; preds = %bb.am
  %i.dh = landingpad { ptr, i32 }
          catch ptr null
          filter [0 x ptr] zeroinitializer
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs14kWLkQVSKO_14deltalake_core5table7builder17DeltaTableBuilderECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(336) %i.p) #38
          to label %bb.ba unwind label %bb.ax, !noalias !11446

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs14kWLkQVSKO_14deltalake_core8logstore8LogStoreEL_EECs7p2uQeJxui2_9deltalake.exit119.i.i: ; preds = %bb.am, %bb.al
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs14kWLkQVSKO_14deltalake_core5table7builder17DeltaTableBuilderECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(336) %i.p)
          to label %bb.ap unwind label %bb.ao, !noalias !11446

bb.ao:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs14kWLkQVSKO_14deltalake_core8logstore8LogStoreEL_EECs7p2uQeJxui2_9deltalake.exit119.i.i
  %i.di = landingpad { ptr, i32 }
          catch ptr null
          filter [0 x ptr] zeroinitializer
  br label %bb.ba

bb.ap:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs14kWLkQVSKO_14deltalake_core8logstore8LogStoreEL_EECs7p2uQeJxui2_9deltalake.exit119.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !11438
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !11438
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !11438
  %i.dj = load ptr, ptr %i.s, align 8, !noalias !11438, !nonnull !4, !noundef !4 ; 3 uses
  %i.dk = load ptr, ptr %i.de, align 8, !noalias !11438, !nonnull !4, !align !344, !noundef !4 ; 2 uses
  store ptr %i.dj, ptr %i.k, align 8, !noalias !11438
  %i.dl = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store ptr %i.dk, ptr %i.dl, align 8, !noalias !11438
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !11438
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.j, ptr noundef nonnull align 8 dereferenceable(88) %i.u, i64 88, i1 false), !noalias !11438
  %.sroa.045.0.copyload.i.i = load ptr, ptr %i.aa, align 8, !alias.scope !11434, !noalias !11447 ; 2 uses
  %.not104.i.i = icmp eq ptr %.sroa.045.0.copyload.i.i, null
  br i1 %.not104.i.i, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %.sroa.547.sroa.5.0..sroa.547.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.aa, i64 40
  %.sroa.547.sroa.5.0.copyload.i.i = load i64, ptr %.sroa.547.sroa.5.0..sroa.547.0..sroa_idx.sroa_idx.i.i, align 8, !alias.scope !11434, !noalias !11447
  %.sroa.547.sroa.4.0..sroa.547.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.aa, i64 32
  %.sroa.547.sroa.4.0.copyload.i.i = load i64, ptr %.sroa.547.sroa.4.0..sroa.547.0..sroa_idx.sroa_idx.i.i, align 8, !alias.scope !11434, !noalias !11447
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.551.sroa.0.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.55.i.sroa.7.0..sroa_idx60, i64 24, i1 false), !noalias !11425
  br label %bb.au

bb.ar:                                            ; preds = %bb.ap
  %i.dm = invoke { i64, i64 } @_RINvMs2_NtNtCs2pqxYH9ZEk8_3std6thread5localINtB6_8LocalKeyINtNtCsbvkFyIu7lgC_4core4cell4CellTyyEEE4withNCNvMNtNtBa_4hash6randomNtB1I_11RandomState3new0B21_ECs7p2uQeJxui2_9deltalake(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) @8)
          to label %bb.at unwind label %bb.as, !noalias !11446 ; 2 uses

bb.as:                                            ; preds = %bb.ar
  %i.dn = landingpad { ptr, i32 }
          catch ptr null
          filter [0 x ptr] zeroinitializer        ; 2 uses
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCseo6ZV82fEK1_3url3UrlECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(88) %i.j) #38
          to label %bb.ay unwind label %bb.ax, !noalias !11446

bb.at:                                            ; preds = %bb.ar
  %i.do = extractvalue { i64, i64 } %i.dm, 0
  %i.dp = extractvalue { i64, i64 } %i.dm, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.551.sroa.0.i.i, ptr noundef nonnull align 8 dereferenceable(24) getelementptr inbounds (i8, ptr @10, i64 8), i64 24, i1 false), !noalias !11425
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %bb.aq
  %.sroa.049.0.i.i = phi ptr [ %.sroa.045.0.copyload.i.i, %bb.aq ], [ @9, %bb.at ]
  %.sroa.551.sroa.5.0.i.i = phi i64 [ %.sroa.547.sroa.4.0.copyload.i.i, %bb.aq ], [ %i.do, %bb.at ]
  %.sroa.551.sroa.6.0.i.i = phi i64 [ %.sroa.547.sroa.5.0.copyload.i.i, %bb.aq ], [ %i.dp, %bb.at ]
  %.sroa.0.0.copyload35.i = load i64, ptr %i.j, align 8, !noalias !11466 ; 2 uses
  %.sroa.636.0..sroa_idx37.i = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %.sroa.636.i.sroa.0.0.copyload29 = load ptr, ptr %.sroa.636.0..sroa_idx37.i, align 8, !noalias !11466 ; 2 uses
  %.sroa.636.i.sroa.8.0..sroa.636.0..sroa_idx37.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %.sroa.636.i.sroa.8.0.copyload34 = load ptr, ptr %.sroa.636.i.sroa.8.0..sroa.636.0..sroa_idx37.i.sroa_idx, align 8, !noalias !11466 ; 2 uses
  %.sroa.636.i.sroa.9.0..sroa.636.0..sroa_idx37.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %.sroa.636.i.sroa.9.0.copyload40 = load ptr, ptr %.sroa.636.i.sroa.9.0..sroa.636.0..sroa_idx37.i.sroa_idx, align 8, !noalias !11466 ; 2 uses
  %.sroa.636.i.sroa.10.0..sroa.636.0..sroa_idx37.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.636.i.sroa.10, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.636.i.sroa.10.0..sroa.636.0..sroa_idx37.i.sroa_idx, i64 32, i1 false), !noalias !11466
  %.sroa.10.0..sroa_idx38.i = getelementptr inbounds nuw i8, ptr %i.j, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.10.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.10.0..sroa_idx38.i, i64 24, i1 false), !noalias !11466
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !11438
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.16.i, ptr noundef nonnull align 8 dereferenceable(48) %i.x, i64 48, i1 false), !alias.scope !11467, !noalias !11468
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !11438
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !11438
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !11438
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ac)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit128.i.i unwind label %bb.av, !noalias !11446

bb.av:                                            ; preds = %bb.au
  %i.dq = landingpad { ptr, i32 }
          catch ptr null
          filter [0 x ptr] zeroinitializer
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ac)
          to label %.body8 unwind label %bb.aw, !noalias !11446

bb.aw:                                            ; preds = %bb.av
  %i.dr = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #39, !noalias !11446
  unreachable

bb.ax:                                            ; preds = %bb.bq, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringB1X_EEECs7p2uQeJxui2_9deltalake.exit130.i.i, %bb.bj, %bb.bg, %bb.bb, %bb.az, %bb.as, %bb.an, %bb.ak, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs14kWLkQVSKO_14deltalake_core8logstore8LogStoreEL_EECs7p2uQeJxui2_9deltalake.exit.i.i, %bb.o
  %i.ds = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #39, !noalias !11445
  unreachable

bb.ay:                                            ; preds = %bb.as
  %i.dt = atomicrmw sub ptr %i.dj, i64 1 release, align 8, !noalias !11469
  %i.du = icmp eq i64 %i.dt, 1
  br i1 %i.du, label %bb.az, label %.body.i.i

bb.az:                                            ; preds = %bb.ay
  fence acquire, !noalias !11422
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_E9drop_slowBJ_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.k) #40
          to label %.body.i.i unwind label %bb.ax, !noalias !11446

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit128.i.i: ; preds = %bb.au
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ac)
          to label %.noexc5 unwind label %bb.bz

.noexc5:                                          ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit128.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !11425
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !11425
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !noalias !11425
  %i.dv = icmp eq i64 %.sroa.0.0.copyload35.i, -9223372036854775808
  br i1 %i.dv, label %bb.br, label %bb.bs

bb.ba:                                            ; preds = %bb.ao, %bb.an
  %.pn.ph.i.i = phi { ptr, i32 } [ %i.dh, %bb.an ], [ %i.di, %bb.ao ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !11474), !noalias !11422
  call void @llvm.experimental.noalias.scope.decl(metadata !11477), !noalias !11422
  %i.dw = load ptr, ptr %i.s, align 8, !alias.scope !11480, !noalias !11438, !nonnull !4, !noundef !4
  %i.dx = atomicrmw sub ptr %i.dw, i64 1 release, align 8, !noalias !11481
  %i.dy = icmp eq i64 %i.dx, 1
  br i1 %i.dy, label %bb.bb, label %bb.bj

bb.bb:                                            ; preds = %bb.ba
  fence acquire, !noalias !11422
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_E9drop_slowBJ_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.s) #40
          to label %bb.bj unwind label %bb.ax, !noalias !11446

bb.bc:                                            ; preds = %bb.ah
  %.sroa.636.i.sroa.0.0.copyload28 = load ptr, ptr %i.b, align 8, !noalias !11466
  %.sroa.636.i.sroa.8.0..sroa_idx32 = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.636.i.sroa.8.0.copyload33 = load ptr, ptr %.sroa.636.i.sroa.8.0..sroa_idx32, align 8, !noalias !11466
  %.sroa.636.i.sroa.9.0..sroa_idx38 = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.636.i.sroa.9.0.copyload39 = load ptr, ptr %.sroa.636.i.sroa.9.0..sroa_idx38, align 8, !noalias !11466
  %.sroa.636.i.sroa.10.0..sroa_idx44 = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.636.i.sroa.10, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.636.i.sroa.10.0..sroa_idx44, i64 32, i1 false), !noalias !11466
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !11438
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !11438
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs14kWLkQVSKO_14deltalake_core5table7builder17DeltaTableBuilderECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(336) %i.p)
          to label %bb.bd unwind label %bb.t, !noalias !11446

bb.bd:                                            ; preds = %bb.bh, %bb.bc
  %.sroa.636.i.sroa.9.2 = phi ptr [ %.sroa.636.i.sroa.9.0.copyload43, %bb.bh ], [ %.sroa.636.i.sroa.9.0.copyload39, %bb.bc ]
  %.sroa.636.i.sroa.8.2 = phi ptr [ %.sroa.636.i.sroa.8.0.copyload37, %bb.bh ], [ %.sroa.636.i.sroa.8.0.copyload33, %bb.bc ]
  %.sroa.636.i.sroa.0.2 = phi ptr [ %.sroa.636.i.sroa.0.0.copyload31, %bb.bh ], [ %.sroa.636.i.sroa.0.0.copyload28, %bb.bc ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !11438
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !11438
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !11438
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(88) %i.u)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit.i.i.i unwind label %bb.be, !noalias !11446

bb.be:                                            ; preds = %bb.bd
  %i.dz = landingpad { ptr, i32 }
          catch ptr null
          filter [0 x ptr] zeroinitializer
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(88) %i.u)
          to label %.body.i.i unwind label %bb.bf, !noalias !11446

bb.bf:                                            ; preds = %bb.be
  %i.ea = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #39, !noalias !11446
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit.i.i.i: ; preds = %bb.bd
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(88) %i.u)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCseo6ZV82fEK1_3url3UrlECs7p2uQeJxui2_9deltalake.exit.i.i unwind label %bb.p, !noalias !11446

bb.bg:                                            ; preds = %bb.z, %bb.y
  %lpad.thr_comm.i.i = landingpad { ptr, i32 }
          catch ptr null
          filter [0 x ptr] zeroinitializer
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs14kWLkQVSKO_14deltalake_core5table7builder17DeltaTableBuilderECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(336) %i.o) #38
          to label %bb.bj unwind label %bb.ax, !noalias !11446

bb.bh:                                            ; preds = %bb.w
  %.sroa.636.i.sroa.0.0.copyload31 = load ptr, ptr %i.d, align 8, !noalias !11466
  %.sroa.636.i.sroa.8.0..sroa_idx36 = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sroa.636.i.sroa.8.0.copyload37 = load ptr, ptr %.sroa.636.i.sroa.8.0..sroa_idx36, align 8, !noalias !11466
  %.sroa.636.i.sroa.9.0..sroa_idx42 = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %.sroa.636.i.sroa.9.0.copyload43 = load ptr, ptr %.sroa.636.i.sroa.9.0..sroa_idx42, align 8, !noalias !11466
  %.sroa.636.i.sroa.10.0..sroa_idx45 = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.636.i.sroa.10, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.636.i.sroa.10.0..sroa_idx45, i64 32, i1 false), !noalias !11466
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !11438
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !11438
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !11438
  br label %bb.bd

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCseo6ZV82fEK1_3url3UrlECs7p2uQeJxui2_9deltalake.exit.i.i: ; preds = %bb.bk, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit.i.i.i
  %.sroa.636.i.sroa.9.0 = phi ptr [ %.sroa.636.i.sroa.9.2, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit.i.i.i ], [ %.sroa.636.i.sroa.9.0.copyload, %bb.bk ]
  %.sroa.636.i.sroa.8.0 = phi ptr [ %.sroa.636.i.sroa.8.2, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit.i.i.i ], [ %.sroa.636.i.sroa.8.0.copyload, %bb.bk ]
  %.sroa.636.i.sroa.0.0 = phi ptr [ %.sroa.636.i.sroa.0.2, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit.i.i.i ], [ %.sroa.636.i.sroa.0.0.copyload, %bb.bk ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !11438
  %i.eb = load ptr, ptr %i.x, align 8, !alias.scope !11482, !noalias !11444, !noundef !4
  %i.ec = icmp eq ptr %i.eb, null
  br i1 %i.ec, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringxEEECs7p2uQeJxui2_9deltalake.exit125.i.i, label %bb.bi

bb.bi:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCseo6ZV82fEK1_3url3UrlECs7p2uQeJxui2_9deltalake.exit.i.i
  invoke void @_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringxEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.x)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringxEEECs7p2uQeJxui2_9deltalake.exit125.i.i unwind label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringxEEECs7p2uQeJxui2_9deltalake.exit.thread.i.i, !noalias !11445

bb.bj:                                            ; preds = %bb.bg, %bb.bb, %bb.ba, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs14kWLkQVSKO_14deltalake_core8logstore8LogStoreEL_EECs7p2uQeJxui2_9deltalake.exit.i.i, %bb.aa, %bb.t
  %.pn108.ph.i.i = phi { ptr, i32 } [ %lpad.thr_comm.split-lp.i.i, %bb.aa ], [ %lpad.thr_comm.i.i, %bb.bg ], [ %i.bk, %bb.t ], [ %.pn106.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs14kWLkQVSKO_14deltalake_core8logstore8LogStoreEL_EECs7p2uQeJxui2_9deltalake.exit.i.i ], [ %.pn.ph.i.i, %bb.bb ], [ %.pn.ph.i.i, %bb.ba ]
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCseo6ZV82fEK1_3url3UrlECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(88) %i.u) #38
          to label %.body.i.i unwind label %bb.ax, !noalias !11446

bb.bk:                                            ; preds = %bb.r
  %.sroa.636.i.sroa.0.0.copyload = load ptr, ptr %i.g, align 8, !noalias !11466
  %.sroa.636.i.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %.sroa.636.i.sroa.8.0.copyload = load ptr, ptr %.sroa.636.i.sroa.8.0..sroa_idx, align 8, !noalias !11466
  %.sroa.636.i.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %.sroa.636.i.sroa.9.0.copyload = load ptr, ptr %.sroa.636.i.sroa.9.0..sroa_idx, align 8, !noalias !11466
  %.sroa.636.i.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.636.i.sroa.10, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.636.i.sroa.10.0..sroa_idx, i64 32, i1 false), !noalias !11466
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !11438
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !11438
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i.i)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCseo6ZV82fEK1_3url3UrlECs7p2uQeJxui2_9deltalake.exit.i.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringxEEECs7p2uQeJxui2_9deltalake.exit.i.i: ; preds = %bb.o, %.body.i.i
  br i1 %.sroa.059.0.i.i, label %bb.bp, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringB1X_EEECs7p2uQeJxui2_9deltalake.exit130.i.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringxEEECs7p2uQeJxui2_9deltalake.exit.thread.i.i: ; preds = %bb.bi
  %i.ed = landingpad { ptr, i32 }
          catch ptr null
          filter [0 x ptr] zeroinitializer
  br label %bb.bp

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringxEEECs7p2uQeJxui2_9deltalake.exit125.i.i: ; preds = %bb.bi, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCseo6ZV82fEK1_3url3UrlECs7p2uQeJxui2_9deltalake.exit.i.i
  %i.ee = load ptr, ptr %i.aa, align 8, !alias.scope !11485, !noalias !11447, !noundef !4
  %i.ef = icmp eq ptr %i.ee, null
  br i1 %i.ef, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringB1X_EEECs7p2uQeJxui2_9deltalake.exit.i.i, label %bb.bl

bb.bl:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringxEEECs7p2uQeJxui2_9deltalake.exit125.i.i
  invoke void @_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringBP_EENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.aa)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringB1X_EEECs7p2uQeJxui2_9deltalake.exit.i.i unwind label %bb.bm, !noalias !11445

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringB1X_EEECs7p2uQeJxui2_9deltalake.exit130.i.i: ; preds = %bb.bq, %bb.bp, %bb.bm, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringxEEECs7p2uQeJxui2_9deltalake.exit.i.i
  %.pn114.i.i = phi { ptr, i32 } [ %i.eg, %bb.bm ], [ %.pn110.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringxEEECs7p2uQeJxui2_9deltalake.exit.i.i ], [ %.pn112148.i.i, %bb.bq ], [ %.pn112148.i.i, %bb.bp ]
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ac) #38
          to label %.body8 unwind label %bb.ax, !noalias !11445

bb.bm:                                            ; preds = %bb.bl
  %i.eg = landingpad { ptr, i32 }
          catch ptr null
          filter [0 x ptr] zeroinitializer
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringB1X_EEECs7p2uQeJxui2_9deltalake.exit130.i.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringB1X_EEECs7p2uQeJxui2_9deltalake.exit.i.i: ; preds = %bb.bl, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringxEEECs7p2uQeJxui2_9deltalake.exit125.i.i
end_hunk_3
