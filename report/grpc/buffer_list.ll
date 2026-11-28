Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/grpc/original/buffer_list?download=true
inline.NumInlined: 185
inline.NumDeleted: 105
begin_hunk_0_@_ZN9grpc_core16TracedBufferList11AddNewEntryEiiPv:bb.a
  %i.el = load i64, ptr %i.ek, align 8, !tbaa !9
  store i64 %i.el, ptr %i.da, align 8
  store i8 1, ptr %i.e, align 8
  %i.em = getelementptr inbounds nuw i8, ptr %i.a, i64 1176
  %i.en = load i64, ptr %i.em, align 8, !tbaa !9
  %i.eo = getelementptr inbounds nuw i8, ptr %i.a, i64 232
  store i64 %i.en, ptr %i.eo, align 8
  store i8 1, ptr %i.v, align 8
  %i.ep = getelementptr inbounds nuw i8, ptr %i.a, i64 1184
  %i.eq = load i64, ptr %i.ep, align 8, !tbaa !9
  %i.er = getelementptr inbounds nuw i8, ptr %i.a, i64 248
  store i64 %i.eq, ptr %i.er, align 8
  store i8 1, ptr %i.w, align 8
  %i.es = getelementptr inbounds nuw i8, ptr %i.a, i64 1192
  %i.et = load i64, ptr %i.es, align 8, !tbaa !9
  %i.eu = getelementptr inbounds nuw i8, ptr %i.a, i64 264
  store i64 %i.et, ptr %i.eu, align 8
  store i8 1, ptr %i.x, align 8
  %i.ev = icmp ugt i32 %i.db, 216
  br i1 %i.ev, label %bb.h, label %_ZN9grpc_core12_GLOBAL__N_126ExtractOptStatsFromTcpInfoEPNS_17ConnectionMetricsEPKNS_8tcp_infoE.exit

bb.h:                                             ; preds = %bb.g
  %i.ew = getelementptr inbounds nuw i8, ptr %i.a, i64 1208
  %i.ex = load i64, ptr %i.ew, align 8, !tbaa !9
  %i.ey = getelementptr inbounds nuw i8, ptr %i.a, i64 136
  store i64 %i.ex, ptr %i.ey, align 8
  store i8 1, ptr %i.m, align 8
  %i.ez = getelementptr inbounds nuw i8, ptr %i.a, i64 1216
  %i.fa = load i64, ptr %i.ez, align 8, !tbaa !9
  %i.fb = getelementptr inbounds nuw i8, ptr %i.a, i64 120
  store i64 %i.fa, ptr %i.fb, align 8
  store i8 1, ptr %i.l, align 8
  %i.fc = getelementptr inbounds nuw i8, ptr %i.a, i64 1224
  %i.fd = load i32, ptr %i.fc, align 8, !tbaa !45
  %i.fe = getelementptr inbounds nuw i8, ptr %i.a, i64 84
  %.sroa.0.0.insert.ext.i = zext i32 %i.fd to i64
  %.sroa.0.0.insert.insert.i = or disjoint i64 %.sroa.0.0.insert.ext.i, 4294967296
  store i64 %.sroa.0.0.insert.insert.i, ptr %i.fe, align 4
  br label %_ZN9grpc_core12_GLOBAL__N_126ExtractOptStatsFromTcpInfoEPNS_17ConnectionMetricsEPKNS_8tcp_infoE.exit

_ZN9grpc_core12_GLOBAL__N_126ExtractOptStatsFromTcpInfoEPNS_17ConnectionMetricsEPKNS_8tcp_infoE.exit: ; preds = %bb.h, %bb.g, %bb.b, %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull align 8 dereferenceable(16) %i.cj, i64 16, i1 false), !tbaa.struct !47
  tail call void @_ZN4absl12lts_202505125Mutex4LockEv(ptr noundef nonnull align 8 dereferenceable(8) %0)
  %i.ff = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.fg = load ptr, ptr %i.ff, align 8, !tbaa !52
  %.not = icmp eq ptr %i.fg, null
  %i.fh = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  br i1 %.not, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_ZN9grpc_core12_GLOBAL__N_126ExtractOptStatsFromTcpInfoEPNS_17ConnectionMetricsEPKNS_8tcp_infoE.exit
  store ptr %i.a, ptr %i.fh, align 8, !tbaa !53
  store ptr %i.a, ptr %i.ff, align 8, !tbaa !52
  br label %bb.k

bb.j:                                             ; preds = %_ZN9grpc_core12_GLOBAL__N_126ExtractOptStatsFromTcpInfoEPNS_17ConnectionMetricsEPKNS_8tcp_infoE.exit
  %i.fi = load ptr, ptr %i.fh, align 8, !tbaa !53
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fi, i64 16
  store ptr %i.a, ptr %i.fj, align 8, !tbaa !36
  store ptr %i.a, ptr %i.fh, align 8, !tbaa !53
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  invoke void @_ZN4absl12lts_202505125Mutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(8) %0)
          to label %_ZN4absl12lts_202505129MutexLockD2Ev.exit unwind label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.fk = landingpad { ptr, i32 }
          catch ptr null
  %i.fl = extractvalue { ptr, i32 } %i.fk, 0
  tail call void @__clang_call_terminate(ptr %i.fl) #17
  unreachable

_ZN4absl12lts_202505129MutexLockD2Ev.exit:        ; preds = %bb.k
  ret void
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #3

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #4

declare { i64, i64 } @gpr_now(i32 noundef) local_unnamed_addr #2

declare { i64, i64 } @gpr_inf_past(i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define void @_ZN9grpc_core16TracedBufferList16ProcessTimestampEP17sock_extended_errP7cmsghdrPNS_16scm_timestampingE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(address_is_null) %2, ptr nofree noundef readonly captures(none) %3) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.absl::lts_20250512::Status", align 8 ; 4 uses
  %5 = alloca %"class.absl::lts_20250512::Status", align 8 ; 7 uses
  tail call void @_ZN4absl12lts_202505125Mutex4LockEv(ptr noundef nonnull align 8 dereferenceable(8) %0)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 7 uses
  %.072 = load ptr, ptr %i.a, align 8, !tbaa !66  ; 2 uses
  %.not73 = icmp eq ptr %.072, null
  br i1 %.not73, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = getelementptr i8, ptr %3, i64 8          ; 3 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.l
  %.074 = phi ptr [ %.072, %.lr.ph ], [ %.0, %bb.l ] ; 21 uses
  %i.e = load i32, ptr %i.b, align 4, !tbaa !41
  %i.f = getelementptr inbounds nuw i8, ptr %.074, i64 24
  %i.g = load i32, ptr %i.f, align 8, !tbaa !37
  %.not49 = icmp ult i32 %i.e, %i.g
  br i1 %.not49, label %._crit_edge.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = load i32, ptr %i.c, align 4, !tbaa !68
  switch i32 %i.h, label %bb.k [
    i32 1, label %bb.d
    i32 0, label %bb.e
    i32 2, label %bb.f
  ]

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %.074, i64 280 ; 2 uses
  %.val = load i64, ptr %3, align 8, !tbaa !70
  %.val55 = load i64, ptr %i.d, align 8, !tbaa !71
  store i64 %.val, ptr %i.i, align 8, !tbaa !72
  %i.j = trunc i64 %.val55 to i32
  %i.k = getelementptr inbounds nuw i8, ptr %.074, i64 288
  store i32 %i.j, ptr %i.k, align 8, !tbaa !73
  %i.l = getelementptr inbounds nuw i8, ptr %.074, i64 292
  store i32 1, ptr %i.l, align 4, !tbaa !74
  %i.m = getelementptr inbounds nuw i8, ptr %.074, i64 296
  call fastcc void @_ZN9grpc_core12_GLOBAL__N_123ExtractOptStatsFromCmsgEPNS_17ConnectionMetricsEPK7cmsghdr(ptr noundef %i.m, ptr noundef %2)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.074, ptr noundef nonnull align 8 dereferenceable(16) %i.i, i64 16, i1 false), !tbaa.struct !47
  %i.n = getelementptr inbounds nuw i8, ptr %.074, i64 16
  br label %bb.l

bb.e:                                             ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %.074, i64 520 ; 2 uses
  %.val56 = load i64, ptr %3, align 8, !tbaa !70
  %.val57 = load i64, ptr %i.d, align 8, !tbaa !71
  store i64 %.val56, ptr %i.o, align 8, !tbaa !72
  %i.p = trunc i64 %.val57 to i32
  %i.q = getelementptr inbounds nuw i8, ptr %.074, i64 528
  store i32 %i.p, ptr %i.q, align 8, !tbaa !73
  %i.r = getelementptr inbounds nuw i8, ptr %.074, i64 532
  store i32 1, ptr %i.r, align 4, !tbaa !74
  %i.s = getelementptr inbounds nuw i8, ptr %.074, i64 536
  call fastcc void @_ZN9grpc_core12_GLOBAL__N_123ExtractOptStatsFromCmsgEPNS_17ConnectionMetricsEPK7cmsghdr(ptr noundef %i.s, ptr noundef %2)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.074, ptr noundef nonnull align 8 dereferenceable(16) %i.o, i64 16, i1 false), !tbaa.struct !47
  %i.t = getelementptr inbounds nuw i8, ptr %.074, i64 16
  br label %bb.l

bb.f:                                             ; preds = %bb.c
  %i.u = getelementptr inbounds nuw i8, ptr %.074, i64 40
  %i.v = getelementptr inbounds nuw i8, ptr %.074, i64 760
  %.val58 = load i64, ptr %3, align 8, !tbaa !70
  %.val59 = load i64, ptr %i.d, align 8, !tbaa !71
  store i64 %.val58, ptr %i.v, align 8, !tbaa !72
  %i.w = trunc i64 %.val59 to i32
  %i.x = getelementptr inbounds nuw i8, ptr %.074, i64 768
  store i32 %i.w, ptr %i.x, align 8, !tbaa !73
  %i.y = getelementptr inbounds nuw i8, ptr %.074, i64 772
  store i32 1, ptr %i.y, align 4, !tbaa !74
  %i.z = getelementptr inbounds nuw i8, ptr %.074, i64 776
  call fastcc void @_ZN9grpc_core12_GLOBAL__N_123ExtractOptStatsFromCmsgEPNS_17ConnectionMetricsEPK7cmsghdr(ptr noundef %i.z, ptr noundef %2)
  %i.aa = load ptr, ptr @_ZN9grpc_core12_GLOBAL__N_121g_timestamps_callbackE, align 8, !tbaa !54
  %i.ab = getelementptr inbounds nuw i8, ptr %.074, i64 32
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !38
  store i64 1, ptr %4, align 8, !tbaa !56, !alias.scope !75
  invoke void %i.aa(ptr noundef %i.ac, ptr noundef nonnull %i.u, ptr noundef nonnull align 8 %4)
          to label %bb.g unwind label %bb.j

bb.g:                                             ; preds = %bb.f
  %i.ad = load i64, ptr %4, align 8, !tbaa !56    ; 2 uses
  %i.ae = trunc i64 %i.ad to i1
  br i1 %i.ae, label %_ZN4absl12lts_202505126StatusD2Ev.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.af = inttoptr i64 %i.ad to ptr
  invoke void @_ZNK4absl12lts_2025051215status_internal9StatusRep5UnrefEv(ptr noundef nonnull align 8 dereferenceable(48) %i.af)
          to label %_ZN4absl12lts_202505126StatusD2Ev.exit unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ag = landingpad { ptr, i32 }
          catch ptr null
  %i.ah = extractvalue { ptr, i32 } %i.ag, 0
  call void @__clang_call_terminate(ptr %i.ah) #17
  unreachable

_ZN4absl12lts_202505126StatusD2Ev.exit:           ; preds = %bb.g, %bb.h
  %i.ai = getelementptr inbounds nuw i8, ptr %.074, i64 16
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !36
  store ptr %i.aj, ptr %i.a, align 8, !tbaa !52
  call void @_ZdlPvm(ptr noundef nonnull %.074, i64 noundef 1240) #18
  br label %bb.l

bb.j:                                             ; preds = %bb.f
  %i.ak = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split.sink.split

bb.k:                                             ; preds = %bb.c
  call void @abort() #17
  unreachable

bb.l:                                             ; preds = %bb.d, %bb.e, %_ZN4absl12lts_202505126StatusD2Ev.exit
  %.1.in = phi ptr [ %i.n, %bb.d ], [ %i.t, %bb.e ], [ %i.a, %_ZN4absl12lts_202505126StatusD2Ev.exit ]
  %.0 = load ptr, ptr %.1.in, align 8, !tbaa !66  ; 2 uses
  %.not = icmp eq ptr %.0, null
  br i1 %.not, label %._crit_edge.loopexit, label %bb.b, !llvm.loop !64

._crit_edge.loopexit:                             ; preds = %bb.b, %bb.l
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !52
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %i.al = phi ptr [ %.pre, %._crit_edge.loopexit ], [ null, %bb.a ] ; 2 uses
  %i.am = invoke { i64, i64 } @gpr_now(i32 noundef 1)
          to label %bb.m unwind label %.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.m:                                             ; preds = %._crit_edge
  %i.an = extractvalue { i64, i64 } %i.am, 0      ; 2 uses
  %i.ao = extractvalue { i64, i64 } %i.am, 1      ; 2 uses
  %.not507689 = icmp eq ptr %i.al, null
  br i1 %.not507689, label %.outer._crit_edge, label %.lr.ph78

.lr.ph78:                                         ; preds = %bb.m, %.outer
  %.2.ph91 = phi ptr [ %i.bk, %.outer ], [ %i.al, %bb.m ] ; 2 uses
  %.043.ph90 = phi ptr [ %.us-phi81, %.outer ], [ null, %bb.m ] ; 3 uses
  %.not52 = icmp eq ptr %.043.ph90, null
  %i.ap = getelementptr inbounds nuw i8, ptr %.043.ph90, i64 16 ; 2 uses
  br i1 %.not52, label %.lr.ph78.split.us, label %.lr.ph78.split

.lr.ph78.split.us:                                ; preds = %.lr.ph78, %_ZN4absl12lts_202505126StatusD2Ev.exit61.us
  %.277.us = phi ptr [ %.3.us, %_ZN4absl12lts_202505126StatusD2Ev.exit61.us ], [ %.2.ph91, %.lr.ph78 ] ; 7 uses
  %.sroa.0.0.copyload.i.us = load i64, ptr %.277.us, align 8, !tbaa !9
  %.sroa.2.0..sroa_idx.i.us = getelementptr inbounds nuw i8, ptr %.277.us, i64 8
  %.sroa.2.0.copyload.i.us = load i64, ptr %.sroa.2.0..sroa_idx.i.us, align 8
  %i.aq = invoke { i64, i64 } @gpr_time_sub(i64 %i.an, i64 %i.ao, i64 %.sroa.0.0.copyload.i.us, i64 %.sroa.2.0.copyload.i.us)
          to label %.noexc.us unwind label %.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc.us:                                        ; preds = %.lr.ph78.split.us
  %i.ar = extractvalue { i64, i64 } %i.aq, 0
  %i.as = extractvalue { i64, i64 } %i.aq, 1
  %i.at = invoke i32 @gpr_time_to_millis(i64 %i.ar, i64 %i.as)
          to label %bb.n unwind label %.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.n:                                             ; preds = %.noexc.us
  %i.au = icmp sgt i32 %i.at, 10000
  br i1 %i.au, label %bb.o, label %.outer

bb.o:                                             ; preds = %bb.n
  %i.av = load ptr, ptr @_ZN9grpc_core12_GLOBAL__N_121g_timestamps_callbackE, align 8, !tbaa !54
  %i.aw = getelementptr inbounds nuw i8, ptr %.277.us, i64 32
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !38
  invoke void @_ZN4absl12lts_2025051221DeadlineExceededErrorESt17basic_string_viewIcSt11char_traitsIcEE(ptr dead_on_unwind nonnull writable sret(%"class.absl::lts_20250512::Status") align 8 %5, i64 13, ptr nonnull @.str)
          to label %bb.p unwind label %.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.p:                                             ; preds = %bb.o
  %i.ay = getelementptr inbounds nuw i8, ptr %.277.us, i64 40
  invoke void %i.av(ptr noundef %i.ax, ptr noundef nonnull %i.ay, ptr noundef nonnull align 8 %5)
          to label %bb.q unwind label %.split83.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.q:                                             ; preds = %bb.p
  %i.az = load i64, ptr %5, align 8, !tbaa !56    ; 2 uses
  %i.ba = trunc i64 %i.az to i1
  br i1 %i.ba, label %_ZN4absl12lts_202505126StatusD2Ev.exit61.us, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bb = inttoptr i64 %i.az to ptr
  invoke void @_ZNK4absl12lts_2025051215status_internal9StatusRep5UnrefEv(ptr noundef nonnull align 8 dereferenceable(48) %i.bb)
          to label %_ZN4absl12lts_202505126StatusD2Ev.exit61.us unwind label %.split86.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZN4absl12lts_202505126StatusD2Ev.exit61.us:      ; preds = %bb.r, %bb.q
  %i.bc = getelementptr inbounds nuw i8, ptr %.277.us, i64 16
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !36
  store ptr %i.bd, ptr %i.a, align 8, !tbaa !52
  call void @_ZdlPvm(ptr noundef nonnull %.277.us, i64 noundef 1240) #18
  %.3.us = load ptr, ptr %i.a, align 8, !tbaa !66 ; 2 uses
  %.not50.us = icmp eq ptr %.3.us, null
  br i1 %.not50.us, label %.outer._crit_edge, label %.lr.ph78.split.us, !llvm.loop !65

.lr.ph78.split:                                   ; preds = %.lr.ph78, %_ZN4absl12lts_202505126StatusD2Ev.exit61
  %.277 = phi ptr [ %.3, %_ZN4absl12lts_202505126StatusD2Ev.exit61 ], [ %.2.ph91, %.lr.ph78 ] ; 7 uses
  %.sroa.0.0.copyload.i = load i64, ptr %.277, align 8, !tbaa !9
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.277, i64 8
  %.sroa.2.0.copyload.i = load i64, ptr %.sroa.2.0..sroa_idx.i, align 8
  %i.be = invoke { i64, i64 } @gpr_time_sub(i64 %i.an, i64 %i.ao, i64 %.sroa.0.0.copyload.i, i64 %.sroa.2.0.copyload.i)
          to label %.noexc unwind label %.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc:                                           ; preds = %.lr.ph78.split
  %i.bf = extractvalue { i64, i64 } %i.be, 0
  %i.bg = extractvalue { i64, i64 } %i.be, 1
  %i.bh = invoke i32 @gpr_time_to_millis(i64 %i.bf, i64 %i.bg)
          to label %bb.s unwind label %.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.s:                                             ; preds = %.noexc
  %i.bi = icmp sgt i32 %i.bh, 10000
  br i1 %i.bi, label %bb.t, label %.outer

.outer:                                           ; preds = %bb.s, %bb.n
  %.us-phi81 = phi ptr [ %.277.us, %bb.n ], [ %.277, %bb.s ] ; 3 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %.us-phi81, i64 16
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !36 ; 2 uses
  %.not5076 = icmp eq ptr %i.bk, null
  br i1 %.not5076, label %.outer._crit_edge, label %.lr.ph78, !llvm.loop !65

.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.lr.ph78.split.us, %.noexc.us, %bb.o, %.noexc, %.lr.ph78.split, %bb.t, %._crit_edge
  %lpad.loopexit.split-lp177 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split

bb.t:                                             ; preds = %bb.s
  %i.bl = load ptr, ptr @_ZN9grpc_core12_GLOBAL__N_121g_timestamps_callbackE, align 8, !tbaa !54
  %i.bm = getelementptr inbounds nuw i8, ptr %.277, i64 32
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !38
  invoke void @_ZN4absl12lts_2025051221DeadlineExceededErrorESt17basic_string_viewIcSt11char_traitsIcEE(ptr dead_on_unwind nonnull writable sret(%"class.absl::lts_20250512::Status") align 8 %5, i64 13, ptr nonnull @.str)
          to label %bb.u unwind label %.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.u:                                             ; preds = %bb.t
  %i.bo = getelementptr inbounds nuw i8, ptr %.277, i64 40
  invoke void %i.bl(ptr noundef %i.bn, ptr noundef nonnull %i.bo, ptr noundef nonnull align 8 %5)
          to label %bb.v unwind label %.split83.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.v:                                             ; preds = %bb.u
  %i.bp = load i64, ptr %5, align 8, !tbaa !56    ; 2 uses
  %i.bq = trunc i64 %i.bp to i1
  br i1 %i.bq, label %_ZN4absl12lts_202505126StatusD2Ev.exit61, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.br = inttoptr i64 %i.bp to ptr
  invoke void @_ZNK4absl12lts_2025051215status_internal9StatusRep5UnrefEv(ptr noundef nonnull align 8 dereferenceable(48) %i.br)
          to label %_ZN4absl12lts_202505126StatusD2Ev.exit61 unwind label %.split86.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.split86.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.r, %bb.w
  %lpad.loopexit.split-lp174 = landingpad { ptr, i32 }
          catch ptr null
  %i.bs = extractvalue { ptr, i32 } %lpad.loopexit.split-lp174, 0
  call void @__clang_call_terminate(ptr %i.bs) #17
  unreachable

_ZN4absl12lts_202505126StatusD2Ev.exit61:         ; preds = %bb.v, %bb.w
  %i.bt = getelementptr inbounds nuw i8, ptr %.277, i64 16
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !36
  store ptr %i.bu, ptr %i.ap, align 8, !tbaa !36
  call void @_ZdlPvm(ptr noundef nonnull %.277, i64 noundef 1240) #18
  %.3 = load ptr, ptr %i.ap, align 8, !tbaa !66   ; 2 uses
  %.not50 = icmp eq ptr %.3, null
  br i1 %.not50, label %.outer._crit_edge, label %.lr.ph78.split, !llvm.loop !65

.split83.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.p, %bb.u
  %lpad.loopexit.split-lp171 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split.sink.split

.outer._crit_edge:                                ; preds = %.outer, %_ZN4absl12lts_202505126StatusD2Ev.exit61, %_ZN4absl12lts_202505126StatusD2Ev.exit61.us, %bb.m
  %.043.ph.lcssa71 = phi ptr [ null, %_ZN4absl12lts_202505126StatusD2Ev.exit61.us ], [ null, %bb.m ], [ %.043.ph90, %_ZN4absl12lts_202505126StatusD2Ev.exit61 ], [ %.us-phi81, %.outer ]
  %i.bv = load ptr, ptr %i.a, align 8, !tbaa !52
  %i.bw = icmp eq ptr %i.bv, null
  %..043 = select i1 %i.bw, ptr null, ptr %.043.ph.lcssa71
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %..043, ptr %i.bx, align 8, !tbaa !53
  invoke void @_ZN4absl12lts_202505125Mutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(8) %0)
          to label %_ZN4absl12lts_202505129MutexLockD2Ev.exit unwind label %bb.x

bb.x:                                             ; preds = %.outer._crit_edge
  %i.by = landingpad { ptr, i32 }
          catch ptr null
  %i.bz = extractvalue { ptr, i32 } %i.by, 0
  call void @__clang_call_terminate(ptr %i.bz) #17
  unreachable

_ZN4absl12lts_202505129MutexLockD2Ev.exit:        ; preds = %.outer._crit_edge
  ret void

.loopexit.split.sink.split:                       ; preds = %bb.j, %.split83.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %.sink = phi ptr [ %5, %.split83.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %4, %bb.j ]
  %.pn53.ph = phi { ptr, i32 } [ %lpad.loopexit.split-lp171, %.split83.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %i.ak, %bb.j ]
  call void @_ZN4absl12lts_202505126StatusD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %.sink) #16
  br label %.loopexit.split

.loopexit.split:                                  ; preds = %.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.loopexit.split.sink.split
  %.pn53 = phi { ptr, i32 } [ %.pn53.ph, %.loopexit.split.sink.split ], [ %lpad.loopexit.split-lp177, %.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  invoke void @_ZN4absl12lts_202505125Mutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(8) %0)
          to label %_ZN4absl12lts_202505129MutexLockD2Ev.exit62 unwind label %bb.y

bb.y:                                             ; preds = %.loopexit.split
  %i.ca = landingpad { ptr, i32 }
          catch ptr null
  %i.cb = extractvalue { ptr, i32 } %i.ca, 0
  call void @__clang_call_terminate(ptr %i.cb) #17
  unreachable

_ZN4absl12lts_202505129MutexLockD2Ev.exit62:      ; preds = %.loopexit.split
  resume { ptr, i32 } %.pn53
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @_ZN9grpc_core12_GLOBAL__N_123ExtractOptStatsFromCmsgEPNS_17ConnectionMetricsEPK7cmsghdr(ptr nofree noundef nonnull captures(none) %0, ptr nofree noundef readonly captures(address_is_null) %1) unnamed_addr #5 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp eq ptr %1, null
  br i1 %i.a, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = load i64, ptr %1, align 8, !tbaa !9
  %i.d = add i64 %i.c, -16                        ; 2 uses
  %i.e = icmp sgt i64 %i.d, 0
  br i1 %i.e, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 64
  %.sroa.489.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 80
  %.sroa.4102.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 17 ; 2 uses
  %.sroa.4122.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 112
  %.sroa.4126.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 208
  %.sroa.4130.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 192
  %.sroa.4134.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 176
  %.sroa.4138.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 184
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.z
  %.0140 = phi i64 [ 0, %.lr.ph ], [ %i.ao, %bb.z ] ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.b, i64 %.0140 ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 4 ; 19 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.aa, i64 2
  %i.ad = load i16, ptr %i.ac, align 2, !tbaa !79
  switch i16 %i.ad, label %bb.z [
    i16 1, label %bb.d
    i16 2, label %bb.e
    i16 3, label %bb.f
    i16 6, label %bb.g
    i16 7, label %bb.h
    i16 12, label %bb.i
    i16 8, label %bb.k
    i16 10, label %bb.l
    i16 22, label %bb.m
    i16 11, label %bb.n
    i16 18, label %bb.o
    i16 4, label %bb.p
    i16 5, label %bb.r
    i16 16, label %bb.t
    i16 17, label %bb.u
    i16 19, label %bb.v
    i16 20, label %bb.w
    i16 9, label %bb.x
    i16 15, label %bb.y
  ]

bb.d:                                             ; preds = %bb.c
  %.val57 = load i64, ptr %i.ab, align 2
  store i64 %.val57, ptr %i.z, align 8
  store i8 1, ptr %.sroa.4138.0..sroa_idx, align 8
  br label %bb.z

bb.e:                                             ; preds = %bb.c
  %.val56 = load i64, ptr %i.ab, align 2
  store i64 %.val56, ptr %i.y, align 8
  store i8 1, ptr %.sroa.4134.0..sroa_idx, align 8
  br label %bb.z

bb.f:                                             ; preds = %bb.c
  %.val55 = load i64, ptr %i.ab, align 2
  store i64 %.val55, ptr %i.x, align 8
  store i8 1, ptr %.sroa.4130.0..sroa_idx, align 8
  br label %bb.z

bb.g:                                             ; preds = %bb.c
  %.val54 = load i64, ptr %i.ab, align 2
  store i64 %.val54, ptr %i.w, align 8
  store i8 1, ptr %.sroa.4126.0..sroa_idx, align 8
  br label %bb.z

bb.h:                                             ; preds = %bb.c
  %.val53 = load i64, ptr %i.ab, align 2
  store i64 %.val53, ptr %0, align 8
  store i8 1, ptr %.sroa.4122.0..sroa_idx, align 8
  br label %bb.z

bb.i:                                             ; preds = %bb.c
  %.val59 = load i8, ptr %i.ab, align 2
  %i.ae = load i8, ptr %i.v, align 1, !tbaa !39, !range !42, !noundef !43
  %i.af = trunc nuw i8 %i.ae to i1
  br i1 %i.af, label %_ZNSt8optionalIbEaSIhEENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS0_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES3_ISt6__and_IJSt9is_scalarIbES4_IbNSt5decayIS7_E4typeEEEEESt16is_constructibleIbJS7_EESt13is_assignableIRbS7_EEERS0_E4typeEOS7_.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  store i8 1, ptr %i.v, align 1, !tbaa !39
  br label %_ZNSt8optionalIbEaSIhEENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS0_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES3_ISt6__and_IJSt9is_scalarIbES4_IbNSt5decayIS7_E4typeEEEEESt16is_constructibleIbJS7_EESt13is_assignableIRbS7_EEERS0_E4typeEOS7_.exit

_ZNSt8optionalIbEaSIhEENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS0_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES3_ISt6__and_IJSt9is_scalarIbES4_IbNSt5decayIS7_E4typeEEEEESt16is_constructibleIbJS7_EESt13is_assignableIRbS7_EEERS0_E4typeEOS7_.exit: ; preds = %bb.i, %bb.j
  %.sink.in.i = icmp ne i8 %.val59, 0
  %.sink.i = zext i1 %.sink.in.i to i8
  store i8 %.sink.i, ptr %i.u, align 1, !tbaa !44
  br label %bb.z

bb.k:                                             ; preds = %bb.c
  %.val67 = load i32, ptr %i.ab, align 2
  %.sroa.0116.0.insert.ext = zext i32 %.val67 to i64
  %.sroa.0116.0.insert.insert = or disjoint i64 %.sroa.0116.0.insert.ext, 4294967296
  store i64 %.sroa.0116.0.insert.insert, ptr %i.t, align 8
  br label %bb.z

bb.l:                                             ; preds = %bb.c
  %.val66 = load i32, ptr %i.ab, align 2
  %.sroa.0112.0.insert.ext = zext i32 %.val66 to i64
  %.sroa.0112.0.insert.insert = or disjoint i64 %.sroa.0112.0.insert.ext, 4294967296
  store i64 %.sroa.0112.0.insert.insert, ptr %i.s, align 8
  br label %bb.z

bb.m:                                             ; preds = %bb.c
  %.val65 = load i32, ptr %i.ab, align 2
  %.sroa.0108.0.insert.ext = zext i32 %.val65 to i64
  %.sroa.0108.0.insert.insert = or disjoint i64 %.sroa.0108.0.insert.ext, 4294967296
  store i64 %.sroa.0108.0.insert.insert, ptr %i.r, align 8
  br label %bb.z

bb.n:                                             ; preds = %bb.c
  %.val58 = load i8, ptr %i.ab, align 2
  %.sroa.0105.0.insert.ext = zext i8 %.val58 to i16
  %.sroa.0105.0.insert.insert = or disjoint i16 %.sroa.0105.0.insert.ext, 256
  store i16 %.sroa.0105.0.insert.insert, ptr %i.q, align 8
  br label %bb.z

bb.o:                                             ; preds = %bb.c
  %.val52 = load i64, ptr %i.ab, align 2
  store i64 %.val52, ptr %i.p, align 8
  store i8 1, ptr %.sroa.4102.0..sroa_idx, align 8
  br label %bb.z

bb.p:                                             ; preds = %bb.c
  %.val51 = load i64, ptr %i.ab, align 2
  %i.ag = load i8, ptr %i.o, align 4, !tbaa !40, !range !42, !noundef !43
  %i.ah = trunc nuw i8 %i.ag to i1
  br i1 %i.ah, label %_ZNSt8optionalIjEaSImEENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS0_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES3_ISt6__and_IJSt9is_scalarIjES4_IjNSt5decayIS7_E4typeEEEEESt16is_constructibleIjJS7_EESt13is_assignableIRjS7_EEERS0_E4typeEOS7_.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  store i8 1, ptr %i.o, align 4, !tbaa !40
  br label %_ZNSt8optionalIjEaSImEENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS0_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES3_ISt6__and_IJSt9is_scalarIjES4_IjNSt5decayIS7_E4typeEEEEESt16is_constructibleIjJS7_EESt13is_assignableIRjS7_EEERS0_E4typeEOS7_.exit

_ZNSt8optionalIjEaSImEENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS0_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES3_ISt6__and_IJSt9is_scalarIjES4_IjNSt5decayIS7_E4typeEEEEESt16is_constructibleIjJS7_EESt13is_assignableIRjS7_EEERS0_E4typeEOS7_.exit: ; preds = %bb.p, %bb.q
  %.sink.i68 = trunc i64 %.val51 to i32
  store i32 %.sink.i68, ptr %i.n, align 4, !tbaa !45
  br label %bb.z

bb.r:                                             ; preds = %bb.c
  %.val50 = load i64, ptr %i.ab, align 2
  %i.ai = load i8, ptr %i.m, align 4, !tbaa !40, !range !42, !noundef !43
  %i.aj = trunc nuw i8 %i.ai to i1
  br i1 %i.aj, label %_ZNSt8optionalIjEaSImEENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS0_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES3_ISt6__and_IJSt9is_scalarIjES4_IjNSt5decayIS7_E4typeEEEEESt16is_constructibleIjJS7_EESt13is_assignableIRjS7_EEERS0_E4typeEOS7_.exit70, label %bb.s

bb.s:                                             ; preds = %bb.r
  store i8 1, ptr %i.m, align 4, !tbaa !40
  br label %_ZNSt8optionalIjEaSImEENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS0_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES3_ISt6__and_IJSt9is_scalarIjES4_IjNSt5decayIS7_E4typeEEEEESt16is_constructibleIjJS7_EESt13is_assignableIRjS7_EEERS0_E4typeEOS7_.exit70

_ZNSt8optionalIjEaSImEENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS0_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES3_ISt6__and_IJSt9is_scalarIjES4_IjNSt5decayIS7_E4typeEEEEESt16is_constructibleIjJS7_EESt13is_assignableIRjS7_EEERS0_E4typeEOS7_.exit70: ; preds = %bb.r, %bb.s
  %.sink.i69 = trunc i64 %.val50 to i32
  store i32 %.sink.i69, ptr %i.l, align 4, !tbaa !45
  br label %bb.z

bb.t:                                             ; preds = %bb.c
  %.val64 = load i32, ptr %i.ab, align 2
  %.sroa.095.0.insert.ext = zext i32 %.val64 to i64
  %.sroa.095.0.insert.insert = or disjoint i64 %.sroa.095.0.insert.ext, 4294967296
end_hunk_0
