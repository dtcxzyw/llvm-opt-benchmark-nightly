Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/fmt/original/base-test?download=true
inline.NumInlined: 14280
inline.NumDeleted: 4340
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_ZN31buffer_test_append_partial_Test8TestBodyEv:bb.a
  %i.o = landingpad { ptr, i32 }
          catch ptr null
  %i.p = extractvalue { ptr, i32 } %i.o, 0
  call void @__clang_call_terminate(ptr %i.p) #31
  unreachable

bb.h:                                             ; preds = %bb.e
  unreachable

bb.i:                                             ; preds = %.noexc62
  %i.q = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 5 uses
  store i32 1, ptr %i.r, align 8, !tbaa !197
  %i.s = getelementptr inbounds nuw i8, ptr %i.j, i64 12 ; 2 uses
  store i32 1, ptr %i.s, align 4, !tbaa !199
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt15_Sp_counted_ptrIPiLN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.j, align 8, !tbaa !20
  %i.t = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  store ptr %i.i, ptr %i.t, align 8, !tbaa !200
  store ptr %i.j, ptr %i.q, align 8, !tbaa !202
  %i.u = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #33
          to label %.noexc29 unwind label %bb.ao  ; 4 uses

.noexc29:                                         ; preds = %bb.i
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN7testing8internal12ReturnActionIiE4ImplIiFmmEEE, i64 16), ptr %i.u, align 8, !tbaa !20, !noalias !287
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.w = load i32, ptr %i.i, align 4, !tbaa !93, !noalias !287 ; 2 uses
  store i32 %i.w, ptr %i.v, align 8, !tbaa !206, !noalias !287
  %i.x = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.y = sext i32 %i.w to i64
  store i64 %i.y, ptr %i.x, align 8, !tbaa !209, !noalias !287
  invoke void @_ZN7testing6ActionIFmmEEC2EPNS_15ActionInterfaceIS1_EE(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull %i.u)
          to label %_ZNK7testing8internal12ReturnActionIiEcvNS_6ActionIT_EEIFmmEEEv.exit unwind label %bb.ao

_ZNK7testing8internal12ReturnActionIiEcvNS_6ActionIT_EEIFmmEEEv.exit: ; preds = %.noexc29
  %i.z = invoke noundef nonnull align 8 dereferenceable(320) ptr @_ZN7testing8internal16TypedExpectationIFmmEE8WillOnceERKNS_6ActionIS2_EE(ptr noundef nonnull align 8 dereferenceable(320) %i.h, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %bb.j unwind label %bb.ap      ; 0 uses

bb.j:                                             ; preds = %_ZNK7testing8internal12ReturnActionIiEcvNS_6ActionIT_EEIFmmEEEv.exit
  %i.aa = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !115 ; 2 uses
  %.not.i.i = icmp eq ptr %i.ab, null
  br i1 %.not.i.i, label %_ZN7testing6ActionIFmmEED2Ev.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ac = invoke noundef zeroext i1 %i.ab(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %5, i32 noundef 3)
          to label %_ZN7testing6ActionIFmmEED2Ev.exit unwind label %bb.l ; 0 uses

bb.l:                                             ; preds = %bb.k
  %i.ad = landingpad { ptr, i32 }
          catch ptr null
  %i.ae = extractvalue { ptr, i32 } %i.ad, 0
  call void @__clang_call_terminate(ptr %i.ae) #31
  unreachable

_ZN7testing6ActionIFmmEED2Ev.exit:                ; preds = %bb.k, %bb.j
  %i.af = load atomic i64, ptr %i.r acquire, align 8 ; 2 uses
  %i.ag = icmp eq i64 %i.af, 4294967297
  %i.ah = trunc i64 %i.af to i32                  ; 2 uses
  br i1 %i.ag, label %bb.m, label %bb.n

bb.m:                                             ; preds = %_ZN7testing6ActionIFmmEED2Ev.exit
  store i32 0, ptr %i.r, align 8, !tbaa !197
  store i32 0, ptr %i.s, align 4, !tbaa !199
  %i.ai = load ptr, ptr %i.j, align 8, !tbaa !20
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  %i.ak = load ptr, ptr %i.aj, align 8
  call void %i.ak(ptr noundef nonnull align 8 dereferenceable(16) %i.j) #28, !inline_history !210
  %i.al = load ptr, ptr %i.j, align 8, !tbaa !20
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 24
  %i.an = load ptr, ptr %i.am, align 8
  call void %i.an(ptr noundef nonnull align 8 dereferenceable(16) %i.j) #28, !inline_history !210
  br label %_ZN7testing8internal12ReturnActionIiED2Ev.exit

bb.n:                                             ; preds = %_ZN7testing6ActionIFmmEED2Ev.exit
  %i.ao = load i8, ptr @__libc_single_threaded, align 1, !tbaa !10
  %.not.i.i.i.i32 = icmp eq i8 %i.ao, 0
  br i1 %.not.i.i.i.i32, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ap = add nsw i32 %i.ah, -1
  store i32 %i.ap, ptr %i.r, align 8, !tbaa !93
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.p:                                             ; preds = %bb.n
  %i.aq = atomicrmw volatile add ptr %i.r, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.p, %bb.o
  %.0.i.i.i.i.i = phi i32 [ %i.ah, %bb.o ], [ %i.aq, %bb.p ]
  %i.ar = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.ar, label %bb.q, label %_ZN7testing8internal12ReturnActionIiED2Ev.exit, !prof !211

bb.q:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.j) #28
  br label %_ZN7testing8internal12ReturnActionIiED2Ev.exit

_ZN7testing8internal12ReturnActionIiED2Ev.exit:   ; preds = %bb.m, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  %i.as = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing8internal11MatcherBaseImEE, i64 16), ptr %i.as, align 8, !tbaa !20
  %i.at = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !96 ; 2 uses
  %.not.i.i.i.i.i33 = icmp eq ptr %i.au, null
  br i1 %.not.i.i.i.i.i33, label %_ZN7testing8internal8MockSpecIFmmEED2Ev.exit, label %_ZNK7testing8internal11MatcherBaseImE8IsSharedEv.exit.i.i.i.i

_ZNK7testing8internal11MatcherBaseImE8IsSharedEv.exit.i.i.i.i: ; preds = %_ZN7testing8internal12ReturnActionIiED2Ev.exit
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 24
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !117
  %.not.i.i.i.i34 = icmp eq ptr %i.aw, null
  br i1 %.not.i.i.i.i34, label %_ZN7testing8internal8MockSpecIFmmEED2Ev.exit, label %bb.r

bb.r:                                             ; preds = %_ZNK7testing8internal11MatcherBaseImE8IsSharedEv.exit.i.i.i.i
  %i.ax = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !10
  %i.az = atomicrmw sub ptr %i.ay, i32 1 acq_rel, align 4
  %i.ba = icmp eq i32 %i.az, 1
  br i1 %i.ba, label %bb.s, label %_ZN7testing8internal8MockSpecIFmmEED2Ev.exit

bb.s:                                             ; preds = %bb.r
  %i.bb = load ptr, ptr %i.at, align 8, !tbaa !96
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 24
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !117
  %i.be = load ptr, ptr %i.ax, align 8, !tbaa !10
  invoke void %i.bd(ptr noundef %i.be)
          to label %_ZN7testing8internal8MockSpecIFmmEED2Ev.exit unwind label %bb.t, !inline_history !119

bb.t:                                             ; preds = %bb.s
  %i.bf = landingpad { ptr, i32 }
          catch ptr null
  %i.bg = extractvalue { ptr, i32 } %i.bf, 0
  call void @__clang_call_terminate(ptr %i.bg) #31, !inline_history !120
  unreachable

_ZN7testing8internal8MockSpecIFmmEED2Ev.exit:     ; preds = %_ZN7testing8internal12ReturnActionIiED2Ev.exit, %_ZNK7testing8internal11MatcherBaseImE8IsSharedEv.exit.i.i.i.i, %bb.r, %bb.s
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing8internal11MatcherBaseImEE, i64 16), ptr %4, align 8, !tbaa !20
  %i.bh = load ptr, ptr %i.b, align 8, !tbaa !96  ; 2 uses
  %.not.i.i.i35 = icmp eq ptr %i.bh, null
  br i1 %.not.i.i.i35, label %bb.x, label %_ZNK7testing8internal11MatcherBaseImE8IsSharedEv.exit.i.i

_ZNK7testing8internal11MatcherBaseImE8IsSharedEv.exit.i.i: ; preds = %_ZN7testing8internal8MockSpecIFmmEED2Ev.exit
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 24
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !117
  %.not.i.i36 = icmp eq ptr %i.bj, null
  br i1 %.not.i.i36, label %bb.x, label %bb.u

bb.u:                                             ; preds = %_ZNK7testing8internal11MatcherBaseImE8IsSharedEv.exit.i.i
  %i.bk = load ptr, ptr %i.c, align 8, !tbaa !10
  %i.bl = atomicrmw sub ptr %i.bk, i32 1 acq_rel, align 4
  %i.bm = icmp eq i32 %i.bl, 1
  br i1 %i.bm, label %bb.v, label %bb.x

bb.v:                                             ; preds = %bb.u
  %i.bn = load ptr, ptr %i.b, align 8, !tbaa !96
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 24
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !117
  %i.bq = load ptr, ptr %i.c, align 8, !tbaa !10
  invoke void %i.bp(ptr noundef %i.bq)
          to label %bb.x unwind label %bb.w, !inline_history !119

bb.w:                                             ; preds = %bb.v
  %i.br = landingpad { ptr, i32 }
          catch ptr null
  %i.bs = extractvalue { ptr, i32 } %i.br, 0
  call void @__clang_call_terminate(ptr %i.bs) #31, !inline_history !120
  unreachable

bb.x:                                             ; preds = %bb.v, %bb.u, %_ZNK7testing8internal11MatcherBaseImE8IsSharedEv.exit.i.i, %_ZN7testing8internal8MockSpecIFmmEED2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #28
  %i.bt = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing7MatcherImEE, i64 16), ptr %8, align 8, !tbaa !20
  store ptr @_ZZN7testing8internal11MatcherBaseImE9GetVTableINS2_11ValuePolicyINS0_9EqMatcherImEELb1EEEEEPKNS2_6VTableEvE7kVTable, ptr %i.bt, align 8, !tbaa !96
  %i.bu = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 3 uses
  store i64 15, ptr %i.bu, align 8, !tbaa !10
  invoke void @_ZN7testing8internal25UntypedFunctionMockerBase13RegisterOwnerEPKv(ptr noundef nonnull align 8 dereferenceable(72) %i.d, ptr noundef nonnull align 8 dereferenceable(104) %1)
          to label %_ZN11mock_bufferIcE13gmock_do_growERKN7testing7MatcherImEE.exit47 unwind label %bb.au

_ZN11mock_bufferIcE13gmock_do_growERKN7testing7MatcherImEE.exit47: ; preds = %bb.x
  store ptr %i.d, ptr %7, align 8, !tbaa !100, !alias.scope !290
  %i.bv = getelementptr inbounds nuw i8, ptr %7, i64 16
  store ptr @_ZZN7testing8internal11MatcherBaseImE9GetVTableINS2_11ValuePolicyINS0_9EqMatcherImEELb1EEEEEPKNS2_6VTableEvE7kVTable, ptr %i.bv, align 8, !tbaa !96, !alias.scope !290
  %i.bw = getelementptr inbounds nuw i8, ptr %7, i64 24
  store i64 15, ptr %i.bw, align 8, !tbaa !10, !alias.scope !290
  %i.bx = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing7MatcherImEE, i64 16), ptr %i.bx, align 8, !tbaa !20, !alias.scope !295
  invoke void @_ZN7testing8internal18GetWithoutMatchersEv()
          to label %bb.y unwind label %bb.av

bb.y:                                             ; preds = %_ZN11mock_bufferIcE13gmock_do_growERKN7testing7MatcherImEE.exit47
  %i.by = invoke noundef nonnull align 8 dereferenceable(320) ptr @_ZN7testing8internal8MockSpecIFmmEE18InternalExpectedAtEPKciS5_S5_(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull @.str.2, i32 noundef 245, ptr noundef nonnull @.str.74, ptr noundef nonnull @.str.93)
          to label %bb.z unwind label %bb.av

bb.z:                                             ; preds = %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #28
  %i.bz = ptrtoint ptr %1 to i64
  store i64 %i.bz, ptr %9, align 8
  %.sroa.0.i.i.i.i.i.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i64 0, ptr %.sroa.0.i.i.i.i.i.sroa.4.0..sroa_idx, align 8, !tbaa !10
  %i.ca = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 3 uses
  store ptr @"_ZNSt17_Function_handlerIFmmEZN31buffer_test_append_partial_Test8TestBodyEvE3$_0E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation", ptr %i.ca, align 8, !tbaa !114
  %i.cb = getelementptr inbounds nuw i8, ptr %9, i64 24
  store ptr @"_ZNSt17_Function_handlerIFmmEZN31buffer_test_append_partial_Test8TestBodyEvE3$_0E9_M_invokeERKSt9_Any_dataOm", ptr %i.cb, align 8, !tbaa !114
  %i.cc = invoke noundef nonnull align 8 dereferenceable(320) ptr @_ZN7testing8internal16TypedExpectationIFmmEE8WillOnceERKNS_6ActionIS2_EE(ptr noundef nonnull align 8 dereferenceable(320) %i.by, ptr noundef nonnull align 8 dereferenceable(32) %9)
          to label %bb.aa unwind label %bb.aw     ; 0 uses

bb.aa:                                            ; preds = %bb.z
  %i.cd = load ptr, ptr %i.ca, align 8, !tbaa !115 ; 2 uses
  %.not.i.i48 = icmp eq ptr %i.cd, null
  br i1 %.not.i.i48, label %_ZN7testing6ActionIFmmEED2Ev.exit49, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.ce = invoke noundef zeroext i1 %i.cd(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull align 8 dereferenceable(32) %9, i32 noundef 3)
          to label %_ZN7testing6ActionIFmmEED2Ev.exit49 unwind label %bb.ac ; 0 uses

bb.ac:                                            ; preds = %bb.ab
  %i.cf = landingpad { ptr, i32 }
          catch ptr null
  %i.cg = extractvalue { ptr, i32 } %i.cf, 0
  call void @__clang_call_terminate(ptr %i.cg) #31
  unreachable

_ZN7testing6ActionIFmmEED2Ev.exit49:              ; preds = %bb.aa, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #28
  %i.ch = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing8internal11MatcherBaseImEE, i64 16), ptr %i.ch, align 8, !tbaa !20
  %i.ci = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !96 ; 2 uses
  %.not.i.i.i.i.i50 = icmp eq ptr %i.cj, null
  br i1 %.not.i.i.i.i.i50, label %_ZN7testing8internal8MockSpecIFmmEED2Ev.exit53, label %_ZNK7testing8internal11MatcherBaseImE8IsSharedEv.exit.i.i.i.i51

_ZNK7testing8internal11MatcherBaseImE8IsSharedEv.exit.i.i.i.i51: ; preds = %_ZN7testing6ActionIFmmEED2Ev.exit49
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 24
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !117
  %.not.i.i.i.i52 = icmp eq ptr %i.cl, null
  br i1 %.not.i.i.i.i52, label %_ZN7testing8internal8MockSpecIFmmEED2Ev.exit53, label %bb.ad

bb.ad:                                            ; preds = %_ZNK7testing8internal11MatcherBaseImE8IsSharedEv.exit.i.i.i.i51
  %i.cm = getelementptr inbounds nuw i8, ptr %7, i64 24 ; 2 uses
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !10
  %i.co = atomicrmw sub ptr %i.cn, i32 1 acq_rel, align 4
  %i.cp = icmp eq i32 %i.co, 1
  br i1 %i.cp, label %bb.ae, label %_ZN7testing8internal8MockSpecIFmmEED2Ev.exit53

bb.ae:                                            ; preds = %bb.ad
  %i.cq = load ptr, ptr %i.ci, align 8, !tbaa !96
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 24
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !117
  %i.ct = load ptr, ptr %i.cm, align 8, !tbaa !10
  invoke void %i.cs(ptr noundef %i.ct)
          to label %_ZN7testing8internal8MockSpecIFmmEED2Ev.exit53 unwind label %bb.af, !inline_history !119

bb.af:                                            ; preds = %bb.ae
  %i.cu = landingpad { ptr, i32 }
          catch ptr null
  %i.cv = extractvalue { ptr, i32 } %i.cu, 0
  call void @__clang_call_terminate(ptr %i.cv) #31, !inline_history !120
  unreachable

_ZN7testing8internal8MockSpecIFmmEED2Ev.exit53:   ; preds = %_ZN7testing6ActionIFmmEED2Ev.exit49, %_ZNK7testing8internal11MatcherBaseImE8IsSharedEv.exit.i.i.i.i51, %bb.ad, %bb.ae
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing8internal11MatcherBaseImEE, i64 16), ptr %8, align 8, !tbaa !20
  %i.cw = load ptr, ptr %i.bt, align 8, !tbaa !96 ; 2 uses
  %.not.i.i.i54 = icmp eq ptr %i.cw, null
  br i1 %.not.i.i.i54, label %_ZN7testing8internal11MatcherBaseImED2Ev.exit57, label %_ZNK7testing8internal11MatcherBaseImE8IsSharedEv.exit.i.i55

_ZNK7testing8internal11MatcherBaseImE8IsSharedEv.exit.i.i55: ; preds = %_ZN7testing8internal8MockSpecIFmmEED2Ev.exit53
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 24
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !117
  %.not.i.i56 = icmp eq ptr %i.cy, null
  br i1 %.not.i.i56, label %_ZN7testing8internal11MatcherBaseImED2Ev.exit57, label %bb.ag

bb.ag:                                            ; preds = %_ZNK7testing8internal11MatcherBaseImE8IsSharedEv.exit.i.i55
  %i.cz = load ptr, ptr %i.bu, align 8, !tbaa !10
  %i.da = atomicrmw sub ptr %i.cz, i32 1 acq_rel, align 4
  %i.db = icmp eq i32 %i.da, 1
  br i1 %i.db, label %bb.ah, label %_ZN7testing8internal11MatcherBaseImED2Ev.exit57

bb.ah:                                            ; preds = %bb.ag
  %i.dc = load ptr, ptr %i.bt, align 8, !tbaa !96
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 24
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !117
  %i.df = load ptr, ptr %i.bu, align 8, !tbaa !10
  invoke void %i.de(ptr noundef %i.df)
          to label %_ZN7testing8internal11MatcherBaseImED2Ev.exit57 unwind label %bb.ai, !inline_history !119

bb.ai:                                            ; preds = %bb.ah
  %i.dg = landingpad { ptr, i32 }
          catch ptr null
  %i.dh = extractvalue { ptr, i32 } %i.dg, 0
  call void @__clang_call_terminate(ptr %i.dh) #31, !inline_history !120
  unreachable

_ZN7testing8internal11MatcherBaseImED2Ev.exit57:  ; preds = %_ZN7testing8internal8MockSpecIFmmEED2Ev.exit53, %_ZNK7testing8internal11MatcherBaseImE8IsSharedEv.exit.i.i55, %bb.ag, %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #28
  invoke void @_ZN3fmt3v126detail6bufferIcE6appendIcEEvPKT_S7_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.94, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str.94, i64 15))
          to label %bb.aj unwind label %bb.bb

bb.aj:                                            ; preds = %_ZN7testing8internal11MatcherBaseImED2Ev.exit57
  call void @_ZN7testing10InSequenceD1Ev(ptr noundef nonnull align 1 dead_on_return(1) dereferenceable(1) %2) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  call void @_ZN7testing8internal14FunctionMockerIFmmEED2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %i.d) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  ret void

bb.ak:                                            ; preds = %bb.a
  %i.di = landingpad { ptr, i32 }
          cleanup
  br label %bb.bd

bb.al:                                            ; preds = %bb.b
  %i.dj = landingpad { ptr, i32 }
          cleanup
  br label %bb.at

bb.am:                                            ; preds = %bb.c, %_ZN11mock_bufferIcE13gmock_do_growERKN7testing7MatcherImEE.exit
  %i.dk = landingpad { ptr, i32 }
          cleanup
  br label %bb.as

bb.an:                                            ; preds = %bb.d
  %i.dl = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.ao:                                            ; preds = %.noexc29, %bb.i
  %i.dm = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing6ActionIFmmEED2Ev.exit59

bb.ap:                                            ; preds = %_ZNK7testing8internal12ReturnActionIiEcvNS_6ActionIT_EEIFmmEEEv.exit
  %i.dn = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !115 ; 2 uses
  %.not.i.i58 = icmp eq ptr %i.dp, null
  br i1 %.not.i.i58, label %_ZN7testing6ActionIFmmEED2Ev.exit59, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.dq = invoke noundef zeroext i1 %i.dp(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %5, i32 noundef 3)
          to label %_ZN7testing6ActionIFmmEED2Ev.exit59 unwind label %bb.ar ; 0 uses

bb.ar:                                            ; preds = %bb.aq
  %i.dr = landingpad { ptr, i32 }
          catch ptr null
  %i.ds = extractvalue { ptr, i32 } %i.dr, 0
  call void @__clang_call_terminate(ptr %i.ds) #31
  unreachable

_ZN7testing6ActionIFmmEED2Ev.exit59:              ; preds = %bb.aq, %bb.ap, %bb.ao
  %.pn = phi { ptr, i32 } [ %i.dm, %bb.ao ], [ %i.dn, %bb.ap ], [ %i.dn, %bb.aq ]
  call void @_ZN7testing8internal12ReturnActionIiED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %6) #28
  br label %.body

.body:                                            ; preds = %bb.an, %bb.f, %_ZN7testing6ActionIFmmEED2Ev.exit59
  %.pn.pn = phi { ptr, i32 } [ %.pn, %_ZN7testing6ActionIFmmEED2Ev.exit59 ], [ %i.dl, %bb.an ], [ %i.n, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  br label %bb.as

bb.as:                                            ; preds = %.body, %bb.am
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %.body ], [ %i.dk, %bb.am ]
  call void @_ZN7testing8internal8MockSpecIFmmEED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %3) #28
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %bb.al
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn, %bb.as ], [ %i.dj, %bb.al ]
  call void @_ZN7testing8internal11MatcherBaseImED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %4) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  br label %bb.bc

bb.au:                                            ; preds = %bb.x
  %i.dt = landingpad { ptr, i32 }
          cleanup
  br label %bb.ba

bb.av:                                            ; preds = %bb.y, %_ZN11mock_bufferIcE13gmock_do_growERKN7testing7MatcherImEE.exit47
  %i.du = landingpad { ptr, i32 }
          cleanup
  br label %bb.az

bb.aw:                                            ; preds = %bb.z
  %i.dv = landingpad { ptr, i32 }
          cleanup
  %i.dw = load ptr, ptr %i.ca, align 8, !tbaa !115 ; 2 uses
  %.not.i.i60 = icmp eq ptr %i.dw, null
  br i1 %.not.i.i60, label %_ZN7testing6ActionIFmmEED2Ev.exit61, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.dx = invoke noundef zeroext i1 %i.dw(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull align 8 dereferenceable(32) %9, i32 noundef 3)
          to label %_ZN7testing6ActionIFmmEED2Ev.exit61 unwind label %bb.ay ; 0 uses

bb.ay:                                            ; preds = %bb.ax
  %i.dy = landingpad { ptr, i32 }
          catch ptr null
  %i.dz = extractvalue { ptr, i32 } %i.dy, 0
  call void @__clang_call_terminate(ptr %i.dz) #31
end_hunk_0
