Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/grpc/original/bdp_estimator?download=true
inline.NumInlined: 119
inline.NumDeleted: 67
begin_hunk_0_@_ZN9grpc_core12BdpEstimator12CompletePingEv:bb.a
  %i.ab = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN4absl12lts_2025051212log_internal10LogMessagelsESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(16) %2, i64 %.sroa.019.0.copyload, ptr %.sroa.220.0.copyload)
          to label %bb.e unwind label %bb.l       ; 2 uses

bb.e:                                             ; preds = %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi5EEERS2_RAT__Kc.exit
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage19CopyToEncodedBufferILNS2_10StringTypeE0EEEvSt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(16) %i.ab, i64 15, ptr nonnull @.str.2)
          to label %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi16EEERS2_RAT__Kc.exit unwind label %bb.l

_ZN4absl12lts_2025051212log_internal10LogMessagelsILi16EEERS2_RAT__Kc.exit: ; preds = %bb.e
  %i.ac = load i64, ptr %0, align 8, !tbaa !18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  store i64 %i.ac, ptr %i.g, align 8, !tbaa !20
  %i.ad = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN4absl12lts_2025051212log_internal10LogMessagelsIlEERS2_RKT_(ptr noundef nonnull align 8 dereferenceable(16) %i.ab, ptr noundef nonnull align 8 dereferenceable(8) %i.g)
          to label %bb.f unwind label %bb.l       ; 2 uses

bb.f:                                             ; preds = %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi16EEERS2_RAT__Kc.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage19CopyToEncodedBufferILNS2_10StringTypeE0EEEvSt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(16) %i.ad, i64 5, ptr nonnull @.str.3)
          to label %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi6EEERS2_RAT__Kc.exit unwind label %bb.l

_ZN4absl12lts_2025051212log_internal10LogMessagelsILi6EEERS2_RAT__Kc.exit: ; preds = %bb.f
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store i64 %i.af, ptr %i.f, align 8, !tbaa !20
  %i.ag = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN4absl12lts_2025051212log_internal10LogMessagelsIlEERS2_RKT_(ptr noundef nonnull align 8 dereferenceable(16) %i.ad, ptr noundef nonnull align 8 dereferenceable(8) %i.f)
          to label %bb.g unwind label %bb.l       ; 2 uses

bb.g:                                             ; preds = %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi6EEERS2_RAT__Kc.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage19CopyToEncodedBufferILNS2_10StringTypeE0EEEvSt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(16) %i.ag, i64 4, ptr nonnull @.str.4)
          to label %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi5EEERS2_RAT__Kc.exit63 unwind label %bb.l

_ZN4absl12lts_2025051212log_internal10LogMessagelsILi5EEERS2_RAT__Kc.exit63: ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store double %i.q, ptr %i.e, align 8, !tbaa !32
  %i.ah = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN4absl12lts_2025051212log_internal10LogMessagelsIdEERS2_RKT_(ptr noundef nonnull align 8 dereferenceable(16) %i.ag, ptr noundef nonnull align 8 dereferenceable(8) %i.e)
          to label %bb.h unwind label %bb.l       ; 2 uses

bb.h:                                             ; preds = %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi5EEERS2_RAT__Kc.exit63
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage19CopyToEncodedBufferILNS2_10StringTypeE0EEEvSt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(16) %i.ah, i64 4, ptr nonnull @.str.5)
          to label %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi5EEERS2_RAT__Kc.exit64 unwind label %bb.l

_ZN4absl12lts_2025051212log_internal10LogMessagelsILi5EEERS2_RAT__Kc.exit64: ; preds = %bb.h
  %i.ai = fdiv double %i.v, 1.250000e+05
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store double %i.ai, ptr %i.d, align 8, !tbaa !32
  %i.aj = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN4absl12lts_2025051212log_internal10LogMessagelsIdEERS2_RKT_(ptr noundef nonnull align 8 dereferenceable(16) %i.ah, ptr noundef nonnull align 8 dereferenceable(8) %i.d)
          to label %bb.i unwind label %bb.l       ; 2 uses

bb.i:                                             ; preds = %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi5EEERS2_RAT__Kc.exit64
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage19CopyToEncodedBufferILNS2_10StringTypeE0EEEvSt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(16) %i.aj, i64 11, ptr nonnull @.str.6)
          to label %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi12EEERS2_RAT__Kc.exit unwind label %bb.l

_ZN4absl12lts_2025051212log_internal10LogMessagelsILi12EEERS2_RAT__Kc.exit: ; preds = %bb.i
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.al = load double, ptr %i.ak, align 8, !tbaa !33
  %i.am = fdiv double %i.al, 1.250000e+05
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store double %i.am, ptr %i.c, align 8, !tbaa !32
  %i.an = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN4absl12lts_2025051212log_internal10LogMessagelsIdEERS2_RKT_(ptr noundef nonnull align 8 dereferenceable(16) %i.aj, ptr noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %bb.j unwind label %bb.l       ; 2 uses

bb.j:                                             ; preds = %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi12EEERS2_RAT__Kc.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage19CopyToEncodedBufferILNS2_10StringTypeE0EEEvSt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(16) %i.an, i64 3, ptr nonnull @.str.7)
          to label %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi4EEERS2_RAT__Kc.exit unwind label %bb.l

_ZN4absl12lts_2025051212log_internal10LogMessagelsILi4EEERS2_RAT__Kc.exit: ; preds = %bb.j
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage5FlushEv(ptr noundef nonnull align 8 dereferenceable(16) %i.an)
          to label %.critedge unwind label %bb.l

.critedge:                                        ; preds = %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi4EEERS2_RAT__Kc.exit
  call void @_ZN4absl12lts_2025051212log_internal10LogMessageD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %2) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #10
  br label %.critedge53

.critedge53:                                      ; preds = %bb.c, %.critedge
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 2 uses
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !34
  %.not.not = icmp eq i32 %i.ap, 2
  br i1 %.not.not, label %.critedge55, label %bb.k, !prof !35

bb.k:                                             ; preds = %.critedge53
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #10
  call void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalC1EPKciS4_(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull @.str, i32 noundef 55, ptr noundef nonnull @.str.8) #11
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage5FlushEv(ptr noundef nonnull align 8 dereferenceable(16) %3)
          to label %_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit67 unwind label %bb.m

_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit67: ; preds = %bb.k
  call void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #13
  unreachable

bb.l:                                             ; preds = %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi4EEERS2_RAT__Kc.exit, %bb.j, %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi12EEERS2_RAT__Kc.exit, %bb.i, %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi5EEERS2_RAT__Kc.exit64, %bb.h, %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi5EEERS2_RAT__Kc.exit63, %bb.g, %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi6EEERS2_RAT__Kc.exit, %bb.f, %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi16EEERS2_RAT__Kc.exit, %bb.e, %bb.d, %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi5EEERS2_RAT__Kc.exit
  %i.aq = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4absl12lts_2025051212log_internal10LogMessageD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %2) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #10
  br label %bb.ai

bb.m:                                             ; preds = %bb.k
  %i.ar = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  call void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #13
  unreachable

.critedge55:                                      ; preds = %.critedge53
  %i.as = load i64, ptr %0, align 8, !tbaa !18    ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.au = load i64, ptr %i.at, align 8, !tbaa !19
  %i.av = shl nsw i64 %i.au, 1                    ; 2 uses
  %i.aw = sdiv i64 %i.av, 3
  %i.ax = icmp sgt i64 %i.as, %i.aw
  br i1 %i.ax, label %bb.n, label %bb.t

bb.n:                                             ; preds = %.critedge55
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.az = load double, ptr %i.ay, align 8, !tbaa !33
  %i.ba = fcmp ogt double %i.v, %i.az
  br i1 %i.ba, label %bb.o, label %bb.t

bb.o:                                             ; preds = %bb.n
  %.sroa.speculated = call i64 @llvm.smax.i64(i64 %i.as, i64 %i.av)
  store i64 %.sroa.speculated, ptr %i.at, align 8, !tbaa !19
  store double %i.v, ptr %i.ay, align 8, !tbaa !33
  %i.bb = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN9grpc_core19bdp_estimator_traceE, i64 8) monotonic, align 8, !range !22, !noundef !23
  %i.bc = trunc nuw i8 %i.bb to i1
  br i1 %i.bc, label %bb.p, label %.critedge58, !prof !24

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #10
  call void @_ZN4absl12lts_2025051212log_internal10LogMessageC1EPKciNS2_7InfoTagE(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull @.str, i32 noundef 59) #11
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage19CopyToEncodedBufferILNS2_10StringTypeE0EEEvSt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(16) %4, i64 4, ptr nonnull @.str.1)
          to label %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi5EEERS2_RAT__Kc.exit68 unwind label %bb.s

_ZN4absl12lts_2025051212log_internal10LogMessagelsILi5EEERS2_RAT__Kc.exit68: ; preds = %bb.p
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 56
  %.sroa.09.0.copyload = load i64, ptr %i.bd, align 8, !tbaa !20
  %.sroa.210.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 64
  %.sroa.210.0.copyload = load ptr, ptr %.sroa.210.0..sroa_idx, align 8, !tbaa !21
  %i.be = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN4absl12lts_2025051212log_internal10LogMessagelsESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(16) %4, i64 %.sroa.09.0.copyload, ptr %.sroa.210.0.copyload)
          to label %bb.q unwind label %bb.s       ; 2 uses

bb.q:                                             ; preds = %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi5EEERS2_RAT__Kc.exit68
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage19CopyToEncodedBufferILNS2_10StringTypeE0EEEvSt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(16) %i.be, i64 25, ptr nonnull @.str.9)
          to label %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi26EEERS2_RAT__Kc.exit unwind label %bb.s

_ZN4absl12lts_2025051212log_internal10LogMessagelsILi26EEERS2_RAT__Kc.exit: ; preds = %bb.q
  %i.bf = load i64, ptr %i.at, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 %i.bf, ptr %i.b, align 8, !tbaa !20
  %i.bg = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN4absl12lts_2025051212log_internal10LogMessagelsIlEERS2_RKT_(ptr noundef nonnull align 8 dereferenceable(16) %i.be, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %bb.r unwind label %bb.s

bb.r:                                             ; preds = %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi26EEERS2_RAT__Kc.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage5FlushEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bg)
          to label %.critedge57 unwind label %bb.s

.critedge57:                                      ; preds = %bb.r
  call void @_ZN4absl12lts_2025051212log_internal10LogMessageD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %4) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #10
  br label %.critedge58

.critedge58:                                      ; preds = %bb.o, %.critedge57
  %i.bh = load i64, ptr %i.w, align 8, !tbaa !36  ; 3 uses
  %.off = add i64 %i.bh, -9223372036854775807
  %switch = icmp ult i64 %.off, 2
  %i.bi = sdiv i64 %i.bh, 2
  %spec.select4.sink.i = select i1 %switch, i64 %i.bh, i64 %i.bi ; 2 uses
  store i64 %spec.select4.sink.i, ptr %i.w, align 8, !tbaa !20
  br label %bb.w

bb.s:                                             ; preds = %bb.r, %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi26EEERS2_RAT__Kc.exit, %bb.q, %bb.p, %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi5EEERS2_RAT__Kc.exit68
  %i.bj = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4absl12lts_2025051212log_internal10LogMessageD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %4) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #10
  br label %bb.ai

bb.t:                                             ; preds = %bb.n, %.critedge55
  %i.bk = load i64, ptr %i.w, align 8, !tbaa !36  ; 3 uses
  %i.bl = icmp slt i64 %i.bk, 10000
  br i1 %i.bl, label %bb.u, label %bb.w

bb.u:                                             ; preds = %bb.t
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.bn = load i32, ptr %i.bm, align 8, !tbaa !37 ; 2 uses
  %i.bo = add nsw i32 %i.bn, 1
  store i32 %i.bo, ptr %i.bm, align 8, !tbaa !37
  %i.bp = icmp sgt i32 %i.bn, 0
  br i1 %i.bp, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #10
  store i32 100, ptr %1, align 8, !tbaa !39
  %i.bq = getelementptr inbounds nuw i8, ptr %1, i64 4
  store i32 99, ptr %i.bq, align 4, !tbaa !40
  %.sroa.0.0.copyload.i.i.i.i.i = load i64, ptr %1, align 8 ; 2 uses
  %.sroa.0.0.extract.trunc.i.i.i.i = trunc i64 %.sroa.0.0.copyload.i.i.i.i.i to i32
  %.sroa.4.0.extract.shift.i.i.i.i = lshr i64 %.sroa.0.0.copyload.i.i.i.i.i, 32
  %.sroa.4.0.extract.trunc.i.i.i.i = trunc nuw i64 %.sroa.4.0.extract.shift.i.i.i.i to i32
  %i.br = call noundef i32 @_ZN4absl12lts_2025051224uniform_int_distributionIiE8GenerateIN9grpc_core12SharedBitGenEEEjRT_j(ptr noundef nonnull align 4 dereferenceable(8) %1, ptr noundef nonnull align 1 dereferenceable(1) %5, i32 noundef %.sroa.4.0.extract.trunc.i.i.i.i)
  %i.bs = add i32 %i.br, %.sroa.0.0.extract.trunc.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #10
  %i.bt = sext i32 %i.bs to i64
  %i.bu = load i64, ptr %i.w, align 8, !tbaa !36
  %i.bv = add nsw i64 %i.bu, %i.bt                ; 2 uses
  store i64 %i.bv, ptr %i.w, align 8, !tbaa !36
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #10
  br label %bb.w

bb.w:                                             ; preds = %bb.t, %bb.v, %bb.u, %.critedge58
  %.sroa.06.0.copyload = phi i64 [ %i.bk, %bb.t ], [ %i.bv, %bb.v ], [ %i.bk, %bb.u ], [ %spec.select4.sink.i, %.critedge58 ]
  %.not = icmp eq i64 %i.x, %.sroa.06.0.copyload
  br i1 %.not, label %.critedge61, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 0, ptr %i.bw, align 8, !tbaa !37
  %i.bx = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN9grpc_core19bdp_estimator_traceE, i64 8) monotonic, align 8, !range !22, !noundef !23
  %i.by = trunc nuw i8 %i.bx to i1
  br i1 %i.by, label %bb.y, label %.critedge61, !prof !24

bb.y:                                             ; preds = %bb.x
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #10
  call void @_ZN4absl12lts_2025051212log_internal10LogMessageC1EPKciNS2_7InfoTagE(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull @.str, i32 noundef 74) #11
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage19CopyToEncodedBufferILNS2_10StringTypeE0EEEvSt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(16) %6, i64 4, ptr nonnull @.str.1)
          to label %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi5EEERS2_RAT__Kc.exit71 unwind label %bb.ab

_ZN4absl12lts_2025051212log_internal10LogMessagelsILi5EEERS2_RAT__Kc.exit71: ; preds = %bb.y
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 56
  %.sroa.02.0.copyload = load i64, ptr %i.bz, align 8, !tbaa !20
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 64
  %.sroa.2.0.copyload = load ptr, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !21
  %i.ca = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN4absl12lts_2025051212log_internal10LogMessagelsESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(16) %6, i64 %.sroa.02.0.copyload, ptr %.sroa.2.0.copyload)
          to label %bb.z unwind label %bb.ab      ; 2 uses

bb.z:                                             ; preds = %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi5EEERS2_RAT__Kc.exit71
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage19CopyToEncodedBufferILNS2_10StringTypeE0EEEvSt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(16) %i.ca, i64 23, ptr nonnull @.str.10)
          to label %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi24EEERS2_RAT__Kc.exit unwind label %bb.ab

_ZN4absl12lts_2025051212log_internal10LogMessagelsILi24EEERS2_RAT__Kc.exit: ; preds = %bb.z
  %i.cb = load i64, ptr %i.w, align 8, !tbaa !36
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 %i.cb, ptr %i.a, align 8, !tbaa !20
  %i.cc = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN4absl12lts_2025051212log_internal10LogMessagelsIlEERS2_RKT_(ptr noundef nonnull align 8 dereferenceable(16) %i.ca, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %bb.aa unwind label %bb.ab     ; 2 uses

bb.aa:                                            ; preds = %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi24EEERS2_RAT__Kc.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage19CopyToEncodedBufferILNS2_10StringTypeE0EEEvSt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(16) %i.cc, i64 2, ptr nonnull @.str.11)
          to label %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi3EEERS2_RAT__Kc.exit unwind label %bb.ab

_ZN4absl12lts_2025051212log_internal10LogMessagelsILi3EEERS2_RAT__Kc.exit: ; preds = %bb.aa
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage5FlushEv(ptr noundef nonnull align 8 dereferenceable(16) %i.cc)
          to label %.critedge60 unwind label %bb.ab

.critedge60:                                      ; preds = %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi3EEERS2_RAT__Kc.exit
  call void @_ZN4absl12lts_2025051212log_internal10LogMessageD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %6) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #10
  br label %.critedge61

bb.ab:                                            ; preds = %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi3EEERS2_RAT__Kc.exit, %bb.aa, %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi24EEERS2_RAT__Kc.exit, %bb.z, %bb.y, %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi5EEERS2_RAT__Kc.exit71
  %i.cd = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4absl12lts_2025051212log_internal10LogMessageD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %6) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #10
  br label %bb.ai

.critedge61:                                      ; preds = %.critedge60, %bb.x, %bb.w
  store i32 0, ptr %i.ao, align 4, !tbaa !34
  store i64 0, ptr %0, align 8, !tbaa !18
  %.not.i.i = icmp eq ptr @_ZTHN9grpc_core9Timestamp25thread_local_time_source_E, null
  br i1 %.not.i.i, label %_ZN9grpc_core9Timestamp3NowEv.exit, label %bb.ac

bb.ac:                                            ; preds = %.critedge61
  call void @_ZTHN9grpc_core9Timestamp25thread_local_time_source_E()
  br label %_ZN9grpc_core9Timestamp3NowEv.exit

_ZN9grpc_core9Timestamp3NowEv.exit:               ; preds = %.critedge61, %bb.ac
  %i.ce = call noundef align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZN9grpc_core9Timestamp25thread_local_time_source_E)
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !42 ; 2 uses
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !44
  %i.ch = load ptr, ptr %i.cg, align 8
  %i.ci = call i64 %i.ch(ptr noundef nonnull align 8 dereferenceable(8) %i.cf), !inline_history !31 ; 6 uses
  %.sroa.0.0.copyload = load i64, ptr %i.w, align 8, !tbaa !20 ; 5 uses
  %i.cj = icmp eq i64 %i.ci, 9223372036854775807
  %i.ck = icmp eq i64 %.sroa.0.0.copyload, 9223372036854775807
  %or.cond.i.i = or i1 %i.cj, %i.ck
  br i1 %or.cond.i.i, label %_ZN9grpc_coreplENS_9TimestampENS_8DurationE.exit, label %bb.ad

bb.ad:                                            ; preds = %_ZN9grpc_core9Timestamp3NowEv.exit
  %i.cl = icmp eq i64 %i.ci, -9223372036854775808
  %i.cm = icmp eq i64 %.sroa.0.0.copyload, -9223372036854775808
  %or.cond9.i.i = or i1 %i.cl, %i.cm
  br i1 %or.cond9.i.i, label %_ZN9grpc_coreplENS_9TimestampENS_8DurationE.exit, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.cn = icmp sgt i64 %i.ci, 0
  br i1 %i.cn, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.co = sub nuw nsw i64 9223372036854775807, %i.ci
  %i.cp = icmp sgt i64 %.sroa.0.0.copyload, %i.co
  br i1 %i.cp, label %_ZN9grpc_coreplENS_9TimestampENS_8DurationE.exit, label %bb.ah

bb.ag:                                            ; preds = %bb.ae
  %i.cq = sub nsw i64 -9223372036854775808, %i.ci
  %i.cr = icmp slt i64 %.sroa.0.0.copyload, %i.cq
  br i1 %i.cr, label %_ZN9grpc_coreplENS_9TimestampENS_8DurationE.exit, label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af
  %i.cs = add nsw i64 %.sroa.0.0.copyload, %i.ci
  br label %_ZN9grpc_coreplENS_9TimestampENS_8DurationE.exit

_ZN9grpc_coreplENS_9TimestampENS_8DurationE.exit: ; preds = %_ZN9grpc_core9Timestamp3NowEv.exit, %bb.ad, %bb.af, %bb.ag, %bb.ah
  %.0.i.i = phi i64 [ -9223372036854775808, %bb.ad ], [ 9223372036854775807, %_ZN9grpc_core9Timestamp3NowEv.exit ], [ -9223372036854775808, %bb.ag ], [ %i.cs, %bb.ah ], [ 9223372036854775807, %bb.af ]
  ret i64 %.0.i.i

bb.ai:                                            ; preds = %bb.ab, %bb.s, %bb.l
  %.pn = phi { ptr, i32 } [ %i.cd, %bb.ab ], [ %i.bj, %bb.s ], [ %i.aq, %bb.l ]
  resume { ptr, i32 } %.pn
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #3

declare { i64, i64 } @gpr_now(i32 noundef) local_unnamed_addr #1

declare { i64, i64 } @gpr_time_sub(i64, i64, i64, i64) local_unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #4

; Function Attrs: cold
declare void @_ZN4absl12lts_2025051212log_internal10LogMessageC1EPKciNS2_7InfoTagE(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, i32 noundef) unnamed_addr #5

declare i32 @__gxx_personality_v0(...)

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZN4absl12lts_2025051212log_internal10LogMessagelsESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(16), i64, ptr) local_unnamed_addr #1

; Function Attrs: cold nounwind
declare void @_ZN4absl12lts_2025051212log_internal10LogMessageD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16)) unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #3

; Function Attrs: cold
declare void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalC1EPKciS4_(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, i32 noundef, ptr noundef) unnamed_addr #5

; Function Attrs: noreturn nounwind
declare void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16)) unnamed_addr #7

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZN4absl12lts_2025051212log_internal10LogMessagelsIlEERS2_RKT_(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #1

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZN4absl12lts_2025051212log_internal10LogMessagelsIdEERS2_RKT_(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #1

declare void @_ZN4absl12lts_2025051212log_internal10LogMessage19CopyToEncodedBufferILNS2_10StringTypeE0EEEvSt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(16), i64, ptr) local_unnamed_addr #1

declare void @_ZN4absl12lts_2025051212log_internal10LogMessage5FlushEv(ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #1

; Function Attrs: uwtable
define linkonce_odr noundef i32 @_ZN4absl12lts_2025051224uniform_int_distributionIiE8GenerateIN9grpc_core12SharedBitGenEEEjRT_j(ptr noundef nonnull align 4 dereferenceable(8) %0, ptr noundef nonnull align 1 dereferenceable(1) %1, i32 noundef %2) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %3 = alloca %"class.absl::lts_20250512::random_internal::FastUniformBits", align 1 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #10
  %.not.i.i.i.i = icmp eq ptr @_ZTHN9grpc_core12SharedBitGen8bit_gen_E, null
  br i1 %.not.i.i.i.i, label %_ZTWN9grpc_core12SharedBitGen8bit_gen_E.exit.i.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZTHN9grpc_core12SharedBitGen8bit_gen_E()
  br label %_ZTWN9grpc_core12SharedBitGen8bit_gen_E.exit.i.i.i

_ZTWN9grpc_core12SharedBitGen8bit_gen_E.exit.i.i.i: ; preds = %bb.b, %bb.a
  %i.a = tail call noundef align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZN9grpc_core12SharedBitGen8bit_gen_E) ; 5 uses
  %i.b = ptrtoint ptr %i.a to i64
  %i.c = and i64 %i.b, 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.c ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 264 ; 4 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !28
  %i.g = icmp ugt i64 %i.f, 31
  br i1 %i.g, label %bb.c, label %_ZN4absl12lts_2025051215random_internal15FastUniformBitsIjEclIN9grpc_core12SharedBitGenEEEjRT_.exit

bb.c:                                             ; preds = %_ZTWN9grpc_core12SharedBitGen8bit_gen_E.exit.i.i.i
  store i64 2, ptr %i.e, align 8, !tbaa !28
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 272
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 280
  %i.j = load i8, ptr %i.i, align 8, !tbaa !29, !range !22, !noundef !23
  %i.k = trunc nuw i8 %i.j to i1
  %i.l = load ptr, ptr %i.h, align 8, !tbaa !30   ; 2 uses
  br i1 %i.k, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN4absl12lts_2025051215random_internal11RandenHwAes8GenerateEPKvPv(ptr noundef %i.l, ptr noundef nonnull %i.d)
  br label %_ZN4absl12lts_2025051215random_internal15FastUniformBitsIjEclIN9grpc_core12SharedBitGenEEEjRT_.exit

bb.e:                                             ; preds = %bb.c
  tail call void @_ZN4absl12lts_2025051215random_internal10RandenSlow8GenerateEPKvPv(ptr noundef %i.l, ptr noundef nonnull %i.d)
  br label %_ZN4absl12lts_2025051215random_internal15FastUniformBitsIjEclIN9grpc_core12SharedBitGenEEEjRT_.exit

_ZN4absl12lts_2025051215random_internal15FastUniformBitsIjEclIN9grpc_core12SharedBitGenEEEjRT_.exit: ; preds = %_ZTWN9grpc_core12SharedBitGen8bit_gen_E.exit.i.i.i, %bb.d, %bb.e
  %i.m = load i64, ptr %i.e, align 8, !tbaa !28   ; 2 uses
  %i.n = add i64 %i.m, 1
  store i64 %i.n, ptr %i.e, align 8, !tbaa !28
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.m
  %i.p = load i64, ptr %i.o, align 8, !tbaa !20   ; 2 uses
  %i.q = add i32 %2, 1                            ; 4 uses
  %i.r = and i32 %i.q, %2
  %i.s = icmp eq i32 %i.r, 0
  br i1 %i.s, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZN4absl12lts_2025051215random_internal15FastUniformBitsIjEclIN9grpc_core12SharedBitGenEEEjRT_.exit
  %i.t = trunc i64 %i.p to i32
  %i.u = and i32 %2, %i.t
  br label %bb.i

bb.g:                                             ; preds = %_ZN4absl12lts_2025051215random_internal15FastUniformBitsIjEclIN9grpc_core12SharedBitGenEEEjRT_.exit
  %i.v = and i64 %i.p, 4294967295
  %i.w = zext i32 %i.q to i64                     ; 2 uses
  %i.x = mul nuw i64 %i.v, %i.w                   ; 3 uses
  %i.y = trunc i64 %i.x to i32                    ; 2 uses
  %i.z = icmp ugt i32 %i.q, %i.y
  br i1 %i.z, label %bb.h, label %.loopexit, !prof !24

bb.h:                                             ; preds = %bb.g
  %i.aa = xor i32 %2, -1
  %i.ab = urem i32 %i.aa, %i.q                    ; 2 uses
  %i.ac = icmp ugt i32 %i.ab, %i.y
  br i1 %i.ac, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.h, %.lr.ph
  %i.ad = call noundef i32 @_ZN4absl12lts_2025051215random_internal15FastUniformBitsIjEclIN9grpc_core12SharedBitGenEEEjRT_(ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 1 dereferenceable(1) %1)
  %i.ae = zext i32 %i.ad to i64
  %i.af = mul nuw i64 %i.ae, %i.w                 ; 2 uses
  %i.ag = trunc i64 %i.af to i32
  %i.ah = icmp ugt i32 %i.ab, %i.ag
  br i1 %i.ah, label %.lr.ph, label %.loopexit, !llvm.loop !45

.loopexit:                                        ; preds = %.lr.ph, %bb.h, %bb.g
  %.1 = phi i64 [ %i.x, %bb.g ], [ %i.x, %bb.h ], [ %i.af, %.lr.ph ]
  %i.ai = lshr i64 %.1, 32
  %i.aj = trunc nuw i64 %i.ai to i32
  br label %bb.i

bb.i:                                             ; preds = %.loopexit, %bb.f
  %.018 = phi i32 [ %i.u, %bb.f ], [ %i.aj, %.loopexit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #10
  ret i32 %.018
}

; Function Attrs: uwtable
define linkonce_odr noundef i32 @_ZN4absl12lts_2025051215random_internal15FastUniformBitsIjEclIN9grpc_core12SharedBitGenEEEjRT_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %.not.i.i.i = icmp eq ptr @_ZTHN9grpc_core12SharedBitGen8bit_gen_E, null
  br i1 %.not.i.i.i, label %_ZTWN9grpc_core12SharedBitGen8bit_gen_E.exit.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZTHN9grpc_core12SharedBitGen8bit_gen_E()
  br label %_ZTWN9grpc_core12SharedBitGen8bit_gen_E.exit.i.i

_ZTWN9grpc_core12SharedBitGen8bit_gen_E.exit.i.i: ; preds = %bb.b, %bb.a
  %i.a = tail call noundef align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZN9grpc_core12SharedBitGen8bit_gen_E) ; 5 uses
  %i.b = ptrtoint ptr %i.a to i64
  %i.c = and i64 %i.b, 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.c ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 264 ; 4 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !28
  %i.g = icmp ugt i64 %i.f, 31
  br i1 %i.g, label %bb.c, label %_ZN4absl12lts_2025051215random_internal15FastUniformBitsIjE8GenerateIN9grpc_core12SharedBitGenEEEjRT_NS1_17SimplifiedLoopTagE.exit

bb.c:                                             ; preds = %_ZTWN9grpc_core12SharedBitGen8bit_gen_E.exit.i.i
  store i64 2, ptr %i.e, align 8, !tbaa !28
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 272
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 280
  %i.j = load i8, ptr %i.i, align 8, !tbaa !29, !range !22, !noundef !23
  %i.k = trunc nuw i8 %i.j to i1
  %i.l = load ptr, ptr %i.h, align 8, !tbaa !30   ; 2 uses
  br i1 %i.k, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN4absl12lts_2025051215random_internal11RandenHwAes8GenerateEPKvPv(ptr noundef %i.l, ptr noundef nonnull %i.d)
  br label %_ZN4absl12lts_2025051215random_internal15FastUniformBitsIjE8GenerateIN9grpc_core12SharedBitGenEEEjRT_NS1_17SimplifiedLoopTagE.exit

bb.e:                                             ; preds = %bb.c
  tail call void @_ZN4absl12lts_2025051215random_internal10RandenSlow8GenerateEPKvPv(ptr noundef %i.l, ptr noundef nonnull %i.d)
  br label %_ZN4absl12lts_2025051215random_internal15FastUniformBitsIjE8GenerateIN9grpc_core12SharedBitGenEEEjRT_NS1_17SimplifiedLoopTagE.exit

_ZN4absl12lts_2025051215random_internal15FastUniformBitsIjE8GenerateIN9grpc_core12SharedBitGenEEEjRT_NS1_17SimplifiedLoopTagE.exit: ; preds = %_ZTWN9grpc_core12SharedBitGen8bit_gen_E.exit.i.i, %bb.d, %bb.e
  %i.m = load i64, ptr %i.e, align 8, !tbaa !28   ; 2 uses
  %i.n = add i64 %i.m, 1
  store i64 %i.n, ptr %i.e, align 8, !tbaa !28
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.m
  %i.p = load i64, ptr %i.o, align 8, !tbaa !20
  %i.q = trunc i64 %i.p to i32
  ret i32 %i.q
}

declare void @_ZN4absl12lts_2025051215random_internal11RandenHwAes8GenerateEPKvPv(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @_ZN4absl12lts_2025051215random_internal10RandenSlow8GenerateEPKvPv(ptr noundef, ptr noundef) local_unnamed_addr #1

declare extern_weak void @_ZTHN9grpc_core9Timestamp25thread_local_time_source_E() #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare nonnull ptr @llvm.threadlocal.address.p0(ptr nonnull) #8

declare extern_weak void @_ZTHN9grpc_core12SharedBitGen8bit_gen_E() #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #4

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { cold "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { cold nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #10 = { nounwind }
attributes #11 = { cold }
attributes #12 = { cold nounwind }
attributes #13 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!3 = !{!"Simple C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!"__libc_errno", !5, i64 0}
!7 = !{!6, !5, i64 0}
!8 = !{!"long", !4, i64 0}
!9 = !{!"_ZTS14gpr_clock_type", !4, i64 0}
!10 = !{!"_ZTS12gpr_timespec", !8, i64 0, !5, i64 8, !9, i64 12}
!11 = !{!"_ZTSN9grpc_core8DurationE", !8, i64 0}
!12 = !{!"_ZTSN9grpc_core12BdpEstimator9PingStateE", !4, i64 0}
!13 = !{!"double", !4, i64 0}
!14 = !{!"any pointer", !4, i64 0}
!15 = !{!"p1 omnipotent char", !14, i64 0}
!16 = !{!"_ZTSSt17basic_string_viewIcSt11char_traitsIcEE", !8, i64 0, !15, i64 8}
!17 = !{!"_ZTSN9grpc_core12BdpEstimatorE", !8, i64 0, !8, i64 8, !10, i64 16, !11, i64 32, !5, i64 40, !12, i64 44, !13, i64 48, !16, i64 56}
!18 = !{!17, !8, i64 0}
!19 = !{!17, !8, i64 8}
!20 = !{!8, !8, i64 0}
!21 = !{!15, !15, i64 0}
!22 = !{i8 0, i8 2}
!23 = !{}
!24 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!25 = !{!"bool", !4, i64 0}
!26 = !{!"_ZTSN4absl12lts_2025051215random_internal6RandenE", !14, i64 0, !25, i64 8}
!27 = !{!"_ZTSN4absl12lts_2025051215random_internal13randen_engineImEE", !4, i64 0, !8, i64 264, !26, i64 272}
!28 = !{!27, !8, i64 264}
!29 = !{!26, !25, i64 8}
!30 = !{!26, !14, i64 0}
!31 = distinct !{null}
!32 = !{!13, !13, i64 0}
!33 = !{!17, !13, i64 48}
!34 = !{!17, !12, i64 44}
!35 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!36 = !{!11, !8, i64 0}
!37 = !{!17, !5, i64 40}
!38 = !{!"_ZTSN4absl12lts_2025051224uniform_int_distributionIiE10param_typeE", !5, i64 0, !5, i64 4}
!39 = !{!38, !5, i64 0}
!40 = !{!38, !5, i64 4}
!41 = !{!"p1 _ZTSN9grpc_core9Timestamp6SourceE", !14, i64 0}
!42 = !{!41, !41, i64 0}
!43 = !{!"vtable pointer", !3, i64 0}
!44 = !{!43, !43, i64 0}
!45 = distinct !{!45, !46}
!46 = !{!"llvm.loop.mustprogress"}
end_hunk_0
