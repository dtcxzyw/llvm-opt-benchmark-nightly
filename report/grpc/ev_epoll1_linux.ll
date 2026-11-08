Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/grpc/original/ev_epoll1_linux?download=true
inline.NumInlined: 429
inline.NumDeleted: 175
begin_hunk_0_@_ZL12pollset_workP12grpc_pollsetPP19grpc_pollset_workerN9grpc_core9TimestampE:bb.a
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %i.v, ptr %i.w, align 8, !tbaa !56
  br label %bb.h

bb.h:                                             ; preds = %.noexc, %._crit_edge.i
  %i.x = phi ptr [ %.pre.i, %._crit_edge.i ], [ %i.v, %.noexc ] ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  invoke void @gpr_mu_unlock(ptr noundef nonnull %1)
          to label %.noexc38 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc38:                                         ; preds = %bb.h
  invoke void @gpr_mu_lock(ptr noundef %i.x)
          to label %.noexc39 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc39:                                         ; preds = %.noexc38
  invoke void @gpr_mu_lock(ptr noundef nonnull %1)
          to label %.noexc40 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc40:                                         ; preds = %.noexc39
  %i.z = load i8, ptr %i.k, align 1, !tbaa !60, !range !47, !noundef !48
  %i.aa = trunc nuw i8 %i.z to i1
  br i1 %i.aa, label %.lr.ph.i, label %.loopexit.i

.lr.ph.i:                                         ; preds = %.noexc40, %.noexc44
  %.07897.i = phi ptr [ %i.ac, %.noexc44 ], [ %i.x, %.noexc40 ] ; 7 uses
  %i.ab = load ptr, ptr %i.y, align 8, !tbaa !56
  %.not85.i = icmp eq ptr %.07897.i, %i.ab
  br i1 %.not85.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %.lr.ph.i
  invoke void @gpr_mu_unlock(ptr noundef %.07897.i)
          to label %.noexc41 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc41:                                         ; preds = %bb.i
  %i.ac = load ptr, ptr %i.y, align 8, !tbaa !56  ; 3 uses
  invoke void @gpr_mu_unlock(ptr noundef nonnull %1)
          to label %.noexc42 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc42:                                         ; preds = %.noexc41
  invoke void @gpr_mu_lock(ptr noundef %i.ac)
          to label %.noexc43 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc43:                                         ; preds = %.noexc42
  invoke void @gpr_mu_lock(ptr noundef nonnull %1)
          to label %.noexc44 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc44:                                         ; preds = %.noexc43
  %i.ad = load i8, ptr %i.k, align 1, !tbaa !60, !range !47, !noundef !48
  %i.ae = trunc nuw i8 %i.ad to i1
  br i1 %i.ae, label %.lr.ph.i, label %.loopexit.i

bb.j:                                             ; preds = %.lr.ph.i
  %i.af = load i32, ptr %15, align 8, !tbaa !68
  %i.ag = icmp eq i32 %i.af, 0
  br i1 %i.ag, label %bb.k, label %.loopexit.i

bb.k:                                             ; preds = %bb.j
  store i8 0, ptr %i.k, align 1, !tbaa !60
  %i.ah = getelementptr inbounds nuw i8, ptr %.07897.i, i64 8 ; 2 uses
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !33 ; 3 uses
  %i.aj = icmp eq ptr %i.ai, null
  br i1 %i.aj, label %bb.l, label %bb.n

bb.l:                                             ; preds = %bb.k
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 64
  store ptr %1, ptr %i.ak, align 8, !tbaa !73
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 56
  store ptr %1, ptr %i.al, align 8, !tbaa !72
  store ptr %1, ptr %i.ah, align 8, !tbaa !33
  %i.am = ptrtoint ptr %15 to i64
  %i.an = cmpxchg ptr @_ZL15g_active_poller, i64 0, i64 %i.am monotonic monotonic, align 8
  %i.ao = extractvalue { i64, i1 } %i.an, 1
  br i1 %i.ao, label %bb.m, label %.loopexit.i

bb.m:                                             ; preds = %bb.l
  store i32 2, ptr %15, align 8, !tbaa !68
  store i32 805, ptr %i.f, align 4, !tbaa !69
  br label %.loopexit.i

bb.n:                                             ; preds = %bb.k
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  store ptr %i.ai, ptr %i.ap, align 8, !tbaa !72
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ai, i64 64
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !73 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 64
  store ptr %i.ar, ptr %i.as, align 8, !tbaa !73
  %i.at = getelementptr inbounds nuw i8, ptr %i.ar, i64 56
  store ptr %1, ptr %i.at, align 8, !tbaa !72
  %i.au = load ptr, ptr %i.ap, align 8, !tbaa !72
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 64
  store ptr %1, ptr %i.av, align 8, !tbaa !73
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %.noexc44, %bb.n, %bb.m, %bb.l, %bb.j, %.noexc40
  %.07896.i = phi ptr [ %.07897.i, %bb.n ], [ %.07897.i, %bb.j ], [ %i.x, %.noexc40 ], [ %.07897.i, %bb.l ], [ %.07897.i, %bb.m ], [ %i.ac, %.noexc44 ]
  br i1 %i.p, label %bb.r, label %bb.o

bb.o:                                             ; preds = %.loopexit.i
  %i.aw = load i8, ptr %i.n, align 8, !tbaa !57, !range !47, !noundef !48
  %i.ax = trunc nuw i8 %i.aw to i1
  br i1 %i.ax, label %.critedge90.i, label %bb.p, !prof !38

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #26
  invoke void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalC1EPKciS4_(ptr noundef nonnull align 8 dereferenceable(16) %13, ptr noundef nonnull @.str.3, i32 noundef 815, ptr noundef nonnull @.str.14) #27
          to label %.noexc45 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc45:                                         ; preds = %bb.p
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage5FlushEv(ptr noundef nonnull align 8 dereferenceable(16) %13)
          to label %_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit.i unwind label %bb.q

_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit.i: ; preds = %.noexc45
  call void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %13) #31
  unreachable

bb.q:                                             ; preds = %.noexc45
  %i.ay = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  call void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %13) #31
  unreachable

.critedge90.i:                                    ; preds = %bb.o
  store i8 0, ptr %i.n, align 8, !tbaa !57
  br label %bb.r

bb.r:                                             ; preds = %.critedge90.i, %.loopexit.i
  invoke void @gpr_mu_unlock(ptr noundef %.07896.i)
          to label %.noexc46 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc46:                                         ; preds = %bb.r, %bb.e
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 5 uses
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !58 ; 3 uses
  %i.bb = icmp eq ptr %i.ba, null
  br i1 %i.bb, label %bb.s, label %bb.t

bb.s:                                             ; preds = %.noexc46
  store ptr %15, ptr %i.az, align 8, !tbaa !58
  %i.bc = getelementptr inbounds nuw i8, ptr %15, i64 24
  store ptr %15, ptr %i.bc, align 8, !tbaa !107
  br label %_ZL13worker_insertP12grpc_pollsetP19grpc_pollset_worker.exit.i

bb.t:                                             ; preds = %.noexc46
  %i.bd = getelementptr inbounds nuw i8, ptr %15, i64 16
  store ptr %i.ba, ptr %i.bd, align 8, !tbaa !71
  %i.be = getelementptr inbounds nuw i8, ptr %i.ba, i64 24 ; 2 uses
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !107
  %i.bg = getelementptr inbounds nuw i8, ptr %15, i64 24 ; 2 uses
  store ptr %i.bf, ptr %i.bg, align 8, !tbaa !107
  store ptr %15, ptr %i.be, align 8, !tbaa !107
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !107
  br label %_ZL13worker_insertP12grpc_pollsetP19grpc_pollset_worker.exit.i

_ZL13worker_insertP12grpc_pollsetP19grpc_pollset_worker.exit.i: ; preds = %bb.t, %bb.s
  %.sink16.i.i = phi ptr [ %i.bh, %bb.t ], [ %15, %bb.s ]
  %i.bi = getelementptr inbounds nuw i8, ptr %.sink16.i.i, i64 16
  store ptr %15, ptr %i.bi, align 8, !tbaa !71
  %i.bj = load i32, ptr %i.h, align 8, !tbaa !63
  %i.bk = add nsw i32 %i.bj, -1
  store i32 %i.bk, ptr %i.h, align 8, !tbaa !63
  %i.bl = load i32, ptr %15, align 8, !tbaa !68
  %i.bm = icmp eq i32 %i.bl, 0
  br i1 %i.bm, label %bb.u, label %_ZN9grpc_core7ExecCtx13InvalidateNowEv.exit.i

bb.u:                                             ; preds = %_ZL13worker_insertP12grpc_pollsetP19grpc_pollset_worker.exit.i
  %i.bn = load i8, ptr %i.b, align 8, !tbaa !59, !range !47, !noundef !48
  %i.bo = trunc nuw i8 %i.bn to i1
  br i1 %i.bo, label %_ZN9grpc_core7ExecCtx13InvalidateNowEv.exit.i, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bp = load atomic i64, ptr @_ZL15g_active_poller monotonic, align 8
  %i.bq = ptrtoint ptr %15 to i64
  %.not87.i = icmp eq i64 %i.bp, %i.bq
  br i1 %.not87.i, label %bb.w, label %.critedge92.i, !prof !37

bb.w:                                             ; preds = %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #26
  invoke void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalC1EPKciS4_(ptr noundef nonnull align 8 dereferenceable(16) %14, ptr noundef nonnull @.str.3, i32 noundef 824, ptr noundef nonnull @.str.15) #27
          to label %.noexc47 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc47:                                         ; preds = %bb.w
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage5FlushEv(ptr noundef nonnull align 8 dereferenceable(16) %14)
          to label %_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit93.i unwind label %bb.x

_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit93.i: ; preds = %.noexc47
  call void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %14) #31
  unreachable

bb.x:                                             ; preds = %.noexc47
  %i.br = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  call void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %14) #31
  unreachable

.critedge92.i:                                    ; preds = %bb.v
  store i8 1, ptr %i.e, align 8, !tbaa !70
  %i.bs = getelementptr inbounds nuw i8, ptr %15, i64 32 ; 2 uses
  invoke void @gpr_cv_init(ptr noundef nonnull %i.bs)
          to label %.noexc48 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc48:                                         ; preds = %.critedge92.i
  %i.bt = load i32, ptr %15, align 8, !tbaa !68
  %i.bu = icmp eq i32 %i.bt, 0
  br i1 %i.bu, label %.lr.ph98.i, label %.critedge.i

.lr.ph98.i:                                       ; preds = %.noexc48
  %20 = getelementptr inbounds nuw i8, ptr %1, i64 34
  br label %bb.y

bb.y:                                             ; preds = %bb.ac, %.lr.ph98.i
  %i.bv = load i8, ptr %20, align 2, !tbaa !61, !range !47, !noundef !48
  %i.bw = trunc nuw i8 %i.bv to i1
  br i1 %i.bw, label %.critedge.i, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.bx = invoke { i64, i64 } @_ZNK9grpc_core9Timestamp11as_timespecE14gpr_clock_type(ptr noundef nonnull align 8 dereferenceable(8) %12, i32 noundef 0)
          to label %.noexc49 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc49:                                         ; preds = %bb.z
  %i.by = extractvalue { i64, i64 } %i.bx, 0
  %i.bz = extractvalue { i64, i64 } %i.bx, 1
  %i.ca = invoke i32 @gpr_cv_wait(ptr noundef nonnull %i.bs, ptr noundef nonnull %1, i64 %i.by, i64 %i.bz)
          to label %.noexc50 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc50:                                         ; preds = %.noexc49
  %.not88.i = icmp eq i32 %i.ca, 0
  %.pre101.i = load i32, ptr %15, align 8, !tbaa !68
  %i.cb = icmp eq i32 %.pre101.i, 0               ; 2 uses
  br i1 %.not88.i, label %bb.ac, label %bb.aa

bb.aa:                                            ; preds = %.noexc50
  br i1 %i.cb, label %bb.ab, label %.critedge.i

bb.ab:                                            ; preds = %bb.aa
  store i32 1, ptr %15, align 8, !tbaa !68
  store i32 838, ptr %i.f, align 4, !tbaa !69
  br label %.critedge.i

bb.ac:                                            ; preds = %.noexc50
  br i1 %i.cb, label %bb.y, label %.critedge.i, !llvm.loop !91

.critedge.i:                                      ; preds = %bb.ac, %bb.y, %bb.ab, %bb.aa, %.noexc48
  %.not.i.i.i = icmp eq ptr @_ZTHN9grpc_core7ExecCtx9exec_ctx_E, null
  br i1 %.not.i.i.i, label %_ZN9grpc_core7ExecCtx3GetEv.exit.i, label %bb.ad

bb.ad:                                            ; preds = %.critedge.i
  invoke void @_ZTHN9grpc_core7ExecCtx9exec_ctx_E()
          to label %_ZN9grpc_core7ExecCtx3GetEv.exit.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZN9grpc_core7ExecCtx3GetEv.exit.i:               ; preds = %bb.ad, %.critedge.i
  %i.cc = call noundef align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZN9grpc_core7ExecCtx9exec_ctx_E)
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !109 ; 3 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 80
  %i.cf = load i8, ptr %i.ce, align 8, !tbaa !111, !range !47, !noundef !48
  %i.cg = trunc nuw i8 %i.cf to i1
  br i1 %i.cg, label %bb.ae, label %_ZN9grpc_core7ExecCtx13InvalidateNowEv.exit.i

bb.ae:                                            ; preds = %_ZN9grpc_core7ExecCtx3GetEv.exit.i
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cd, i64 72
  store i8 0, ptr %i.ch, align 8, !tbaa !113
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cd, i64 56
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !117 ; 2 uses
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !119
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 8
  %i.cm = load ptr, ptr %i.cl, align 8
  invoke void %i.cm(ptr noundef nonnull align 8 dereferenceable(8) %i.cj)
          to label %_ZN9grpc_core7ExecCtx13InvalidateNowEv.exit.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !92

_ZN9grpc_core7ExecCtx13InvalidateNowEv.exit.i:    ; preds = %bb.ae, %_ZN9grpc_core7ExecCtx3GetEv.exit.i, %bb.u, %_ZL13worker_insertP12grpc_pollsetP19grpc_pollset_worker.exit.i
  %i.cn = load i8, ptr %i.b, align 8, !tbaa !59, !range !47, !noundef !48
  %i.co = trunc nuw i8 %i.cn to i1
  br i1 %i.co, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %_ZN9grpc_core7ExecCtx13InvalidateNowEv.exit.i
  store i8 0, ptr %i.b, align 8, !tbaa !59
  br label %.thread

bb.ag:                                            ; preds = %_ZN9grpc_core7ExecCtx13InvalidateNowEv.exit.i
  %i.cp = load i32, ptr %15, align 8, !tbaa !68
  %i.cq = icmp eq i32 %i.cp, 2
  br i1 %i.cq, label %bb.ah, label %.thread

.thread:                                          ; preds = %bb.af, %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %12)
  br label %bb.cd

bb.ah:                                            ; preds = %bb.ag
  %i.cr = getelementptr inbounds nuw i8, ptr %1, i64 34
  %i.cs = load i8, ptr %i.cr, align 2, !tbaa !61, !range !47, !noundef !48
  %i.ct = trunc nuw i8 %i.cs to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %12)
  br i1 %i.ct, label %bb.cd, label %.critedge

.critedge:                                        ; preds = %bb.ah
  %i.cu = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZL24g_current_thread_pollset)
  store ptr %1, ptr %i.cu, align 8, !tbaa !75
  %i.cv = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZL23g_current_thread_worker) ; 2 uses
  store ptr %15, ptr %i.cv, align 8, !tbaa !74
  %i.cw = load i8, ptr %i.k, align 1, !tbaa !60, !range !47, !noundef !48
  %i.cx = trunc nuw i8 %i.cw to i1
  br i1 %i.cx, label %bb.ai, label %.critedge37, !prof !37

bb.ai:                                            ; preds = %.critedge
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #26
  invoke void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalC1EPKciS4_(ptr noundef nonnull align 8 dereferenceable(16) %17, ptr noundef nonnull @.str.3, i32 noundef 1012, ptr noundef nonnull @.str.13) #27
          to label %bb.aj unwind label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage5FlushEv(ptr noundef nonnull align 8 dereferenceable(16) %17)
          to label %_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit55 unwind label %bb.al

_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit55: ; preds = %bb.aj
  call void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %17) #31
  unreachable

bb.ak:                                            ; preds = %bb.ai
  %i.cy = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #26
  br label %.body

bb.al:                                            ; preds = %bb.aj
  %i.cz = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  call void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %17) #31
  unreachable

.critedge37:                                      ; preds = %.critedge
  invoke void @gpr_mu_unlock(ptr noundef nonnull %1)
          to label %bb.am unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.am:                                            ; preds = %.critedge37
  %i.da = load atomic i64, ptr getelementptr inbounds nuw (i8, ptr @_ZL11g_epoll_set, i64 1216) acquire, align 8
  %i.db = load atomic i64, ptr getelementptr inbounds nuw (i8, ptr @_ZL11g_epoll_set, i64 1208) acquire, align 8
  %i.dc = icmp eq i64 %i.da, %i.db
  br i1 %i.dc, label %bb.an, label %_ZN4absl12lts_202505126StatusD2Ev.exit

bb.an:                                            ; preds = %bb.am
  call void @llvm.experimental.noalias.scope.decl(metadata !120)
  call void @llvm.lifetime.start.p0(ptr nonnull %10)
  %i.dd = icmp eq i64 %.fr18.i.i, 9223372036854775807
  br i1 %i.dd, label %_ZL31poll_deadline_to_millis_timeoutN9grpc_core9TimestampE.exit.i, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %.not.i.i.i.i = icmp eq ptr @_ZTHN9grpc_core9Timestamp25thread_local_time_source_E, null
  br i1 %.not.i.i.i.i, label %_ZN9grpc_core9Timestamp3NowEv.exit.i.i, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  invoke void @_ZTHN9grpc_core9Timestamp25thread_local_time_source_E()
          to label %_ZN9grpc_core9Timestamp3NowEv.exit.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZN9grpc_core9Timestamp3NowEv.exit.i.i:           ; preds = %bb.ap, %bb.ao
  %i.de = call noundef align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZN9grpc_core9Timestamp25thread_local_time_source_E)
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !121, !noalias !120 ; 2 uses
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !119, !noalias !120
  %i.dh = load ptr, ptr %i.dg, align 8, !noalias !120
  %i.di = invoke i64 %i.dh(ptr noundef nonnull align 8 dereferenceable(8) %i.df)
          to label %.noexc62 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !95 ; 4 uses

.noexc62:                                         ; preds = %_ZN9grpc_core9Timestamp3NowEv.exit.i.i
  switch i64 %i.di, label %.thread.i.i.i [
    i64 -9223372036854775808, label %bb.aq
    i64 9223372036854775807, label %.thread15.i.i
  ]

bb.aq:                                            ; preds = %.noexc62
  %.not12.i.i.i = icmp eq i64 %.fr18.i.i, -9223372036854775808
  br i1 %.not12.i.i.i, label %.thread15.i.i, label %_ZL31poll_deadline_to_millis_timeoutN9grpc_core9TimestampE.exit.i

.thread.i.i.i:                                    ; preds = %.noexc62
  %i.dj = sub nsw i64 0, %i.di                    ; 2 uses
  %i.dk = icmp eq i64 %i.di, -9223372036854775807
  br i1 %i.dk, label %_ZL31poll_deadline_to_millis_timeoutN9grpc_core9TimestampE.exit.i, label %bb.ar

bb.ar:                                            ; preds = %.thread.i.i.i
  %i.dl = icmp eq i64 %.fr18.i.i, -9223372036854775808
  br i1 %i.dl, label %.thread15.i.i, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.dm = icmp sgt i64 %.fr18.i.i, 0
  br i1 %i.dm, label %bb.at, label %bb.au

bb.at:                                            ; preds = %bb.as
  %i.dn = sub nuw nsw i64 9223372036854775807, %.fr18.i.i
  %i.do = icmp slt i64 %i.dn, %i.dj
  br i1 %i.do, label %_ZL31poll_deadline_to_millis_timeoutN9grpc_core9TimestampE.exit.i, label %_ZN9grpc_coremiENS_9TimestampES0_.exit.i.i

bb.au:                                            ; preds = %bb.as
  %i.dp = sub nsw i64 -9223372036854775808, %.fr18.i.i
  %i.dq = icmp sgt i64 %i.dp, %i.dj
  br i1 %i.dq, label %.thread15.i.i, label %_ZN9grpc_coremiENS_9TimestampES0_.exit.i.i

_ZN9grpc_coremiENS_9TimestampES0_.exit.i.i:       ; preds = %bb.au, %bb.at
  %i.dr = sub i64 %.fr18.i.i, %i.di               ; 3 uses
  %i.ds = icmp sgt i64 %i.dr, 2147483647
  br i1 %i.ds, label %_ZL31poll_deadline_to_millis_timeoutN9grpc_core9TimestampE.exit.i, label %bb.av

bb.av:                                            ; preds = %_ZN9grpc_coremiENS_9TimestampES0_.exit.i.i
  %i.dt = icmp slt i64 %i.dr, 0
  %i.du = trunc nuw nsw i64 %i.dr to i32
  br i1 %i.dt, label %.thread15.i.i, label %_ZL31poll_deadline_to_millis_timeoutN9grpc_core9TimestampE.exit.i

.thread15.i.i:                                    ; preds = %bb.av, %bb.au, %bb.ar, %bb.aq, %.noexc62
  br label %_ZL31poll_deadline_to_millis_timeoutN9grpc_core9TimestampE.exit.i

_ZL31poll_deadline_to_millis_timeoutN9grpc_core9TimestampE.exit.i: ; preds = %.thread15.i.i, %bb.av, %_ZN9grpc_coremiENS_9TimestampES0_.exit.i.i, %bb.at, %.thread.i.i.i, %bb.aq, %bb.an
  %.1.i.i = phi i32 [ -1, %bb.an ], [ %i.du, %bb.av ], [ 2147483647, %_ZN9grpc_coremiENS_9TimestampES0_.exit.i.i ], [ 0, %.thread15.i.i ], [ 2147483647, %bb.at ], [ 2147483647, %bb.aq ], [ 2147483647, %.thread.i.i.i ] ; 2 uses
  br label %bb.aw

bb.aw:                                            ; preds = %bb.ax, %_ZL31poll_deadline_to_millis_timeoutN9grpc_core9TimestampE.exit.i
end_hunk_0
