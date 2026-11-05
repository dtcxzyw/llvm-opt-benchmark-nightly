Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/grpc/original/keepalive?download=true
inline.NumInlined: 584
inline.NumDeleted: 328
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN9grpc_core5http216KeepaliveManager22MaybeSendKeepAlivePingEv:bb.a
  %i.du = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.dv = load i8, ptr %i.dr, align 16, !tbaa !64
  store i8 %i.dv, ptr %i.du, align 16, !tbaa !64
  %i.dw = load i8, ptr %6, align 16, !tbaa !58, !range !46, !noundef !47 ; 2 uses
  %i.dx = trunc nuw i8 %i.dw to i1
  store i8 %i.dw, ptr %0, align 16, !tbaa !58
  %i.dy = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 5 uses
  br i1 %i.dx, label %bb.p, label %bb.s

bb.p:                                             ; preds = %bb.o
  %i.ea = load i8, ptr %i.dz, align 16, !tbaa !61, !range !46, !noundef !47 ; 2 uses
  %i.eb = trunc nuw i8 %i.ea to i1
  store i8 %i.ea, ptr %i.dy, align 16, !tbaa !61
  %i.ec = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %6, i64 32 ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  br i1 %i.eb, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.ef = getelementptr inbounds nuw i8, ptr %0, i64 160
  store i8 0, ptr %i.ef, align 16, !tbaa !54
  %i.eg = load i64, ptr %i.ed, align 16, !tbaa !40
  store i64 %i.eg, ptr %i.ec, align 16, !tbaa !40
  %i.eh = getelementptr inbounds nuw i8, ptr %6, i64 48
  %i.ei = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.ej = getelementptr inbounds nuw i8, ptr %6, i64 112
  %i.ek = load i8, ptr %i.ej, align 16, !tbaa !36
  store i8 %i.ek, ptr %i.ei, align 16, !tbaa !36
  %i.el = load i64, ptr %i.eh, align 16, !tbaa !12
  store i64 %i.el, ptr %i.ee, align 16, !tbaa !12
  %i.em = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.en = getelementptr inbounds nuw i8, ptr %6, i64 56 ; 2 uses
  %i.eo = load ptr, ptr %i.en, align 8, !tbaa !38
  store ptr null, ptr %i.en, align 8, !tbaa !38
  store ptr %i.eo, ptr %i.em, align 8, !tbaa !43
  %i.ep = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.eq = getelementptr inbounds nuw i8, ptr %6, i64 64
  %i.er = load i64, ptr %i.eq, align 16, !tbaa !40
  store i64 %i.er, ptr %i.ep, align 16, !tbaa !40
  %i.es = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.et = getelementptr inbounds nuw i8, ptr %6, i64 128
  %i.eu = getelementptr inbounds nuw i8, ptr %6, i64 144 ; 3 uses
  %i.ev = load ptr, ptr %i.eu, align 16, !tbaa !53
  call void %i.ev(i1 noundef zeroext false, ptr noundef nonnull align 16 dereferenceable(32) %i.et, ptr noundef nonnull align 16 dereferenceable(32) %i.es) #27, !inline_history !105
  %i.ew = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.ex = getelementptr inbounds nuw i8, ptr %6, i64 152
  %i.ey = load <2 x ptr>, ptr %i.eu, align 16, !tbaa !55
  store <2 x ptr> %i.ey, ptr %i.ew, align 16, !tbaa !55
  store ptr @_ZN4absl12lts_2025051222internal_any_invocable12EmptyManagerENS1_14FunctionToCallEPNS1_15TypeErasedStateES4_, ptr %i.eu, align 16, !tbaa !53
  store ptr null, ptr %i.ex, align 8, !tbaa !62
  br label %"_ZN9grpc_core14promise_detail6TrySeqINS_2IfIbZNS_5http216KeepaliveManager22MaybeSendKeepAlivePingEvE3$_0ZNS4_22MaybeSendKeepAlivePingEvE3$_1EEJZNS4_22MaybeSendKeepAlivePingEvE3$_2EEC2EOS9_.exit"

bb.r:                                             ; preds = %bb.p
  %i.ez = getelementptr inbounds nuw i8, ptr %6, i64 48 ; 3 uses
  %i.fa = load ptr, ptr %i.ez, align 16, !tbaa !53
  call void %i.fa(i1 noundef zeroext false, ptr noundef nonnull align 16 dereferenceable(32) %i.ed, ptr noundef nonnull align 16 dereferenceable(32) %i.ec) #27, !inline_history !106
  %i.fb = getelementptr inbounds nuw i8, ptr %6, i64 56
  %i.fc = load <2 x ptr>, ptr %i.ez, align 16, !tbaa !55
  store <2 x ptr> %i.fc, ptr %i.ee, align 16, !tbaa !55
  store ptr @_ZN4absl12lts_2025051222internal_any_invocable12EmptyManagerENS1_14FunctionToCallEPNS1_15TypeErasedStateES4_, ptr %i.ez, align 16, !tbaa !53
  store ptr null, ptr %i.fb, align 8, !tbaa !62
  br label %"_ZN9grpc_core14promise_detail6TrySeqINS_2IfIbZNS_5http216KeepaliveManager22MaybeSendKeepAlivePingEvE3$_0ZNS4_22MaybeSendKeepAlivePingEvE3$_1EEJZNS4_22MaybeSendKeepAlivePingEvE3$_2EEC2EOS9_.exit"

bb.s:                                             ; preds = %bb.o
  %i.fd = load i64, ptr %i.dz, align 16, !tbaa !49
  store i64 %i.fd, ptr %i.dy, align 16, !tbaa !49
  store i64 55, ptr %i.dz, align 16, !tbaa !49
  br label %"_ZN9grpc_core14promise_detail6TrySeqINS_2IfIbZNS_5http216KeepaliveManager22MaybeSendKeepAlivePingEvE3$_0ZNS4_22MaybeSendKeepAlivePingEvE3$_1EEJZNS4_22MaybeSendKeepAlivePingEvE3$_2EEC2EOS9_.exit"

"_ZN9grpc_core14promise_detail6TrySeqINS_2IfIbZNS_5http216KeepaliveManager22MaybeSendKeepAlivePingEvE3$_0ZNS4_22MaybeSendKeepAlivePingEvE3$_1EEJZNS4_22MaybeSendKeepAlivePingEvE3$_2EEC2EOS9_.exit": ; preds = %bb.q, %bb.r, %bb.s
  %i.fe = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.ff = load i64, ptr %i.dt, align 16, !tbaa !40
  store i64 %i.ff, ptr %i.fe, align 16, !tbaa !40
  %i.fg = load i8, ptr %i.dr, align 16, !tbaa !64
  switch i8 %i.fg, label %"_ZN9grpc_core14promise_detail6TrySeqINS_2IfIbZNS_5http216KeepaliveManager22MaybeSendKeepAlivePingEvE3$_0ZNS4_22MaybeSendKeepAlivePingEvE3$_1EEJZNS4_22MaybeSendKeepAlivePingEvE3$_2EED2Ev.exit" [
    i8 0, label %bb.t
    i8 1, label %bb.aa
  ]

bb.t:                                             ; preds = %"_ZN9grpc_core14promise_detail6TrySeqINS_2IfIbZNS_5http216KeepaliveManager22MaybeSendKeepAlivePingEvE3$_0ZNS4_22MaybeSendKeepAlivePingEvE3$_1EEJZNS4_22MaybeSendKeepAlivePingEvE3$_2EEC2EOS9_.exit"
  %i.fh = load i8, ptr %6, align 16, !tbaa !58, !range !46, !noundef !47
  %i.fi = trunc nuw i8 %i.fh to i1
  br i1 %i.fi, label %bb.u, label %bb.x

bb.u:                                             ; preds = %bb.t
  %i.fj = load i8, ptr %i.dz, align 16, !tbaa !61, !range !46, !noundef !47
  %i.fk = trunc nuw i8 %i.fj to i1
  %i.fl = getelementptr inbounds nuw i8, ptr %6, i64 32 ; 3 uses
  br i1 %i.fk, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  call fastcc void @"_ZN9grpc_core14promise_detail11PromiseLikeINS0_5AllOkIN4absl12lts_202505126StatusEJNS_4RaceIJZNS_5http216KeepaliveManager11WaitForDataEvEUlvE_NS0_6TrySeqINS_5SleepEJZNS8_23WaitForKeepAliveTimeoutEvE3$_0EEEEEENS4_12AnyInvocableIFNS_4PollIS5_EEvEEEEEEvED2Ev"(ptr noundef nonnull align 16 dead_on_return(144) dereferenceable(144) %i.fl) #27
  br label %"_ZN9grpc_core14promise_detail6TrySeqINS_2IfIbZNS_5http216KeepaliveManager22MaybeSendKeepAlivePingEvE3$_0ZNS4_22MaybeSendKeepAlivePingEvE3$_1EEJZNS4_22MaybeSendKeepAlivePingEvE3$_2EED2Ev.exit"

bb.w:                                             ; preds = %bb.u
  %i.fm = getelementptr inbounds nuw i8, ptr %6, i64 48
  %i.fn = load ptr, ptr %i.fm, align 16, !tbaa !53
  call void %i.fn(i1 noundef zeroext true, ptr noundef nonnull align 16 dereferenceable(32) %i.fl, ptr noundef nonnull align 16 dereferenceable(32) %i.fl) #27, !inline_history !107
  br label %"_ZN9grpc_core14promise_detail6TrySeqINS_2IfIbZNS_5http216KeepaliveManager22MaybeSendKeepAlivePingEvE3$_0ZNS4_22MaybeSendKeepAlivePingEvE3$_1EEJZNS4_22MaybeSendKeepAlivePingEvE3$_2EED2Ev.exit"

bb.x:                                             ; preds = %bb.t
  %i.fo = load i64, ptr %i.dz, align 16, !tbaa !49 ; 2 uses
  %i.fp = trunc i64 %i.fo to i1
  br i1 %i.fp, label %"_ZN9grpc_core14promise_detail6TrySeqINS_2IfIbZNS_5http216KeepaliveManager22MaybeSendKeepAlivePingEvE3$_0ZNS4_22MaybeSendKeepAlivePingEvE3$_1EEJZNS4_22MaybeSendKeepAlivePingEvE3$_2EED2Ev.exit", label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.fq = inttoptr i64 %i.fo to ptr
  invoke void @_ZNK4absl12lts_2025051215status_internal9StatusRep5UnrefEv(ptr noundef nonnull align 8 dereferenceable(48) %i.fq)
          to label %"_ZN9grpc_core14promise_detail6TrySeqINS_2IfIbZNS_5http216KeepaliveManager22MaybeSendKeepAlivePingEvE3$_0ZNS4_22MaybeSendKeepAlivePingEvE3$_1EEJZNS4_22MaybeSendKeepAlivePingEvE3$_2EED2Ev.exit" unwind label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.fr = landingpad { ptr, i32 }
          catch ptr null
  %i.fs = extractvalue { ptr, i32 } %i.fr, 0
  call void @__clang_call_terminate(ptr %i.fs) #28
  unreachable

bb.aa:                                            ; preds = %"_ZN9grpc_core14promise_detail6TrySeqINS_2IfIbZNS_5http216KeepaliveManager22MaybeSendKeepAlivePingEvE3$_0ZNS4_22MaybeSendKeepAlivePingEvE3$_1EEJZNS4_22MaybeSendKeepAlivePingEvE3$_2EEC2EOS9_.exit"
  %i.ft = load i64, ptr %6, align 16, !tbaa !49   ; 2 uses
  %i.fu = trunc i64 %i.ft to i1
  br i1 %i.fu, label %"_ZN9grpc_core14promise_detail6TrySeqINS_2IfIbZNS_5http216KeepaliveManager22MaybeSendKeepAlivePingEvE3$_0ZNS4_22MaybeSendKeepAlivePingEvE3$_1EEJZNS4_22MaybeSendKeepAlivePingEvE3$_2EED2Ev.exit", label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.fv = inttoptr i64 %i.ft to ptr
  invoke void @_ZNK4absl12lts_2025051215status_internal9StatusRep5UnrefEv(ptr noundef nonnull align 8 dereferenceable(48) %i.fv)
          to label %"_ZN9grpc_core14promise_detail6TrySeqINS_2IfIbZNS_5http216KeepaliveManager22MaybeSendKeepAlivePingEvE3$_0ZNS4_22MaybeSendKeepAlivePingEvE3$_1EEJZNS4_22MaybeSendKeepAlivePingEvE3$_2EED2Ev.exit" unwind label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.fw = landingpad { ptr, i32 }
          catch ptr null
  %i.fx = extractvalue { ptr, i32 } %i.fw, 0
  call void @__clang_call_terminate(ptr %i.fx) #28
  unreachable

"_ZN9grpc_core14promise_detail6TrySeqINS_2IfIbZNS_5http216KeepaliveManager22MaybeSendKeepAlivePingEvE3$_0ZNS4_22MaybeSendKeepAlivePingEvE3$_1EEJZNS4_22MaybeSendKeepAlivePingEvE3$_2EED2Ev.exit": ; preds = %"_ZN9grpc_core14promise_detail6TrySeqINS_2IfIbZNS_5http216KeepaliveManager22MaybeSendKeepAlivePingEvE3$_0ZNS4_22MaybeSendKeepAlivePingEvE3$_1EEJZNS4_22MaybeSendKeepAlivePingEvE3$_2EEC2EOS9_.exit", %bb.v, %bb.w, %bb.x, %bb.y, %bb.aa, %bb.ab
  %i.fy = load i8, ptr %7, align 16, !tbaa !58, !range !46, !noundef !47
  %i.fz = trunc nuw i8 %i.fy to i1
  %i.ga = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  br i1 %i.fz, label %bb.ad, label %bb.ag

bb.ad:                                            ; preds = %"_ZN9grpc_core14promise_detail6TrySeqINS_2IfIbZNS_5http216KeepaliveManager22MaybeSendKeepAlivePingEvE3$_0ZNS4_22MaybeSendKeepAlivePingEvE3$_1EEJZNS4_22MaybeSendKeepAlivePingEvE3$_2EED2Ev.exit"
  %i.gb = load i8, ptr %i.ga, align 16, !tbaa !61, !range !46, !noundef !47
  %i.gc = trunc nuw i8 %i.gb to i1
  %i.gd = getelementptr inbounds nuw i8, ptr %7, i64 32 ; 3 uses
  br i1 %i.gc, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  call fastcc void @"_ZN9grpc_core14promise_detail11PromiseLikeINS0_5AllOkIN4absl12lts_202505126StatusEJNS_4RaceIJZNS_5http216KeepaliveManager11WaitForDataEvEUlvE_NS0_6TrySeqINS_5SleepEJZNS8_23WaitForKeepAliveTimeoutEvE3$_0EEEEEENS4_12AnyInvocableIFNS_4PollIS5_EEvEEEEEEvED2Ev"(ptr noundef nonnull align 16 dead_on_return(144) dereferenceable(144) %i.gd) #27
  br label %"_ZN9grpc_core2IfIbZNS_5http216KeepaliveManager22MaybeSendKeepAlivePingEvE3$_0ZNS2_22MaybeSendKeepAlivePingEvE3$_1ED2Ev.exit11"

bb.af:                                            ; preds = %bb.ad
  %i.ge = getelementptr inbounds nuw i8, ptr %7, i64 48
  %i.gf = load ptr, ptr %i.ge, align 16, !tbaa !53
  call void %i.gf(i1 noundef zeroext true, ptr noundef nonnull align 16 dereferenceable(32) %i.gd, ptr noundef nonnull align 16 dereferenceable(32) %i.gd) #27, !inline_history !104
  br label %"_ZN9grpc_core2IfIbZNS_5http216KeepaliveManager22MaybeSendKeepAlivePingEvE3$_0ZNS2_22MaybeSendKeepAlivePingEvE3$_1ED2Ev.exit11"

bb.ag:                                            ; preds = %"_ZN9grpc_core14promise_detail6TrySeqINS_2IfIbZNS_5http216KeepaliveManager22MaybeSendKeepAlivePingEvE3$_0ZNS4_22MaybeSendKeepAlivePingEvE3$_1EEJZNS4_22MaybeSendKeepAlivePingEvE3$_2EED2Ev.exit"
  %i.gg = load i64, ptr %i.ga, align 16, !tbaa !49 ; 2 uses
  %i.gh = trunc i64 %i.gg to i1
  br i1 %i.gh, label %"_ZN9grpc_core2IfIbZNS_5http216KeepaliveManager22MaybeSendKeepAlivePingEvE3$_0ZNS2_22MaybeSendKeepAlivePingEvE3$_1ED2Ev.exit11", label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.gi = inttoptr i64 %i.gg to ptr
  invoke void @_ZNK4absl12lts_2025051215status_internal9StatusRep5UnrefEv(ptr noundef nonnull align 8 dereferenceable(48) %i.gi)
          to label %"_ZN9grpc_core2IfIbZNS_5http216KeepaliveManager22MaybeSendKeepAlivePingEvE3$_0ZNS2_22MaybeSendKeepAlivePingEvE3$_1ED2Ev.exit11" unwind label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.gj = landingpad { ptr, i32 }
          catch ptr null
  %i.gk = extractvalue { ptr, i32 } %i.gj, 0
  call void @__clang_call_terminate(ptr %i.gk) #28
  unreachable

"_ZN9grpc_core2IfIbZNS_5http216KeepaliveManager22MaybeSendKeepAlivePingEvE3$_0ZNS2_22MaybeSendKeepAlivePingEvE3$_1ED2Ev.exit11": ; preds = %bb.ah, %bb.ag, %bb.af, %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #27
  ret void

bb.aj:                                            ; preds = %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi41EEERS2_RAT__Kc.exit, %bb.c, %bb.b
  %i.gl = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4absl12lts_2025051212log_internal10LogMessageD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %5) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  resume { ptr, i32 } %i.gl
}

; Function Attrs: cold
declare void @_ZN4absl12lts_2025051212log_internal10LogMessageC1EPKciNS2_7InfoTagE(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, i32 noundef) unnamed_addr #6

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZN4absl12lts_2025051212log_internal10LogMessage13WithVerbosityEi(ptr noundef nonnull align 8 dereferenceable(16), i32 noundef) local_unnamed_addr #7

; Function Attrs: cold nounwind
declare void @_ZN4absl12lts_2025051212log_internal10LogMessageD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16)) unnamed_addr #8

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef zeroext i1 @_ZN9grpc_core5http216KeepaliveManager21IsKeepAliveLoopNeededEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %0) local_unnamed_addr #9 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i64, ptr %i.a, align 8, !tbaa !59
  %.not.i = icmp eq i64 %i.b, 9223372036854775807
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 26
  %i.d = load i8, ptr %i.c, align 2, !range !46
  %i.e = trunc nuw i8 %i.d to i1
  %or.cond.not = select i1 %.not.i, i1 true, i1 %i.e
  %1 = xor i1 %or.cond.not, true
  ret i1 %1
}

; Function Attrs: mustprogress uwtable
define void @_ZN9grpc_core5http216KeepaliveManager13KeepaliveLoopEv(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.absl::lts_20250512::AnyInvocable") align 16 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) local_unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.absl::lts_20250512::log_internal::LogMessage", align 8 ; 7 uses
  %i.a = load atomic i32, ptr getelementptr inbounds nuw (i8, ptr @"_ZZZN9grpc_core5http216KeepaliveManager13KeepaliveLoopEvENK3$_1clEvE4site", i64 8) monotonic, align 8 ; 2 uses
  %i.b = icmp slt i32 %i.a, 2
  br i1 %i.b, label %.critedge10, label %_ZN4absl12lts_2025051212log_internal8VLogSite9IsEnabledEi.exit, !prof !56

_ZN4absl12lts_2025051212log_internal8VLogSite9IsEnabledEi.exit: ; preds = %bb.a
  %i.c = tail call noundef zeroext i1 @_ZN4absl12lts_2025051212log_internal8VLogSite14SlowIsEnabled2Ei(ptr noundef nonnull align 8 dereferenceable(24) @"_ZZZN9grpc_core5http216KeepaliveManager13KeepaliveLoopEvENK3$_1clEvE4site", i32 noundef %i.a)
  br i1 %i.c, label %bb.b, label %.critedge10

bb.b:                                             ; preds = %_ZN4absl12lts_2025051212log_internal8VLogSite9IsEnabledEi.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #27
  call void @_ZN4absl12lts_2025051212log_internal10LogMessageC1EPKciNS2_7InfoTagE(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull @.str, i32 noundef 97) #29
  %i.d = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN4absl12lts_2025051212log_internal10LogMessage13WithVerbosityEi(ptr noundef nonnull align 8 dereferenceable(16) %2, i32 noundef 2)
          to label %bb.c unwind label %bb.d       ; 2 uses

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage19CopyToEncodedBufferILNS2_10StringTypeE0EEEvSt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(16) %i.d, i64 41, ptr nonnull @.str.2)
          to label %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi42EEERS2_RAT__Kc.exit unwind label %bb.d

_ZN4absl12lts_2025051212log_internal10LogMessagelsILi42EEERS2_RAT__Kc.exit: ; preds = %bb.c
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage5FlushEv(ptr noundef nonnull align 8 dereferenceable(16) %i.d)
          to label %.critedge unwind label %bb.d

.critedge:                                        ; preds = %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi42EEERS2_RAT__Kc.exit
  call void @_ZN4absl12lts_2025051212log_internal10LogMessageD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %2) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  br label %.critedge10

.critedge10:                                      ; preds = %bb.a, %_ZN4absl12lts_2025051212log_internal8VLogSite9IsEnabledEi.exit, %.critedge
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 26
  store i8 1, ptr %i.e, align 2, !tbaa !28
  %i.f = call noalias noundef nonnull dereferenceable(256) ptr @_Znwm(i64 noundef 256) #31 ; 3 uses
  %i.g = ptrtoint ptr %1 to i64
  store i64 %i.g, ptr %i.f, align 16, !tbaa !40
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 240
  store i8 0, ptr %i.h, align 16, !tbaa !68
  store ptr %i.f, ptr %0, align 16, !tbaa !54
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr @"_ZN4absl12lts_2025051222internal_any_invocable23RemoteManagerNontrivialIN9grpc_core4LoopIZNS3_5http216KeepaliveManager13KeepaliveLoopEvE3$_0Lb0EEEEEvNS1_14FunctionToCallEPNS1_15TypeErasedStateESB_", ptr %i.i, align 16, !tbaa !53
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr @"_ZN4absl12lts_2025051222internal_any_invocable13RemoteInvokerILb0EN9grpc_core4PollINS0_6StatusEEERNS3_4LoopIZNS3_5http216KeepaliveManager13KeepaliveLoopEvE3$_0Lb0EEEJEEET0_PNS1_15TypeErasedStateEDpNS1_18ForwardedParameterIT2_E4typeE", ptr %i.j, align 8, !tbaa !62
  ret void

bb.d:                                             ; preds = %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi42EEERS2_RAT__Kc.exit, %bb.c, %bb.b
  %i.k = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4absl12lts_2025051212log_internal10LogMessageD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %2) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  resume { ptr, i32 } %i.k
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define internal void @__cxx_global_var_init() #10 section ".text.startup" comdat($_ZN9grpc_core19NoDestructSingletonINS_14promise_detail10UnwakeableEE6value_E) {
bb.a:
  %i.a = load i8, ptr @_ZGVN9grpc_core19NoDestructSingletonINS_14promise_detail10UnwakeableEE6value_E, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i8 1, ptr @_ZGVN9grpc_core19NoDestructSingletonINS_14promise_detail10UnwakeableEE6value_E, align 8
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN9grpc_core14promise_detail10UnwakeableE, i64 16), ptr @_ZN9grpc_core19NoDestructSingletonINS_14promise_detail10UnwakeableEE6value_E, align 8, !tbaa !34
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: uwtable
define internal void @__cxx_global_var_init.3() #11 section ".text.startup" comdat($_ZN9grpc_core12arena_detail18ArenaContextTraitsIN17grpc_event_engine12experimental11EventEngineEE3id_E) {
bb.a:
  %i.a = load i8, ptr @_ZGVN9grpc_core12arena_detail18ArenaContextTraitsIN17grpc_event_engine12experimental11EventEngineEE3id_E, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i8 1, ptr @_ZGVN9grpc_core12arena_detail18ArenaContextTraitsIN17grpc_event_engine12experimental11EventEngineEE3id_E, align 8
  %i.c = tail call noundef zeroext i16 @_ZN9grpc_core12arena_detail22BaseArenaContextTraits6MakeIdEPFvPvE(ptr noundef nonnull @_ZN9grpc_core12arena_detail19DestroyArenaContextIN17grpc_event_engine12experimental11EventEngineEEEvPv)
  store i16 %i.c, ptr @_ZN9grpc_core12arena_detail18ArenaContextTraitsIN17grpc_event_engine12experimental11EventEngineEE3id_E, align 2, !tbaa !69
  %i.d = tail call ptr @llvm.invariant.start.p0(i64 2, ptr nonnull @_ZN9grpc_core12arena_detail18ArenaContextTraitsIN17grpc_event_engine12experimental11EventEngineEE3id_E) ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i16 @_ZN9grpc_core12arena_detail22BaseArenaContextTraits6MakeIdEPFvPvE(ptr noundef %0) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load atomic i8, ptr @_ZGVZN9grpc_core12arena_detail22BaseArenaContextTraits16RegisteredTraitsEvE17registered_traits acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %_ZN9grpc_core12arena_detail22BaseArenaContextTraits16RegisteredTraitsEv.exit, !prof !111

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN9grpc_core12arena_detail22BaseArenaContextTraits16RegisteredTraitsEvE17registered_traits) #27
  %.not.i = icmp eq i32 %i.c, 0
  br i1 %.not.i, label %_ZN9grpc_core12arena_detail22BaseArenaContextTraits16RegisteredTraitsEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) @_ZZN9grpc_core12arena_detail22BaseArenaContextTraits16RegisteredTraitsEvE17registered_traits, i8 0, i64 24, i1 false)
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN9grpc_core12arena_detail22BaseArenaContextTraits16RegisteredTraitsEvE17registered_traits) #27
  br label %_ZN9grpc_core12arena_detail22BaseArenaContextTraits16RegisteredTraitsEv.exit

_ZN9grpc_core12arena_detail22BaseArenaContextTraits16RegisteredTraitsEv.exit: ; preds = %bb.a, %bb.b, %bb.c
  %i.d = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN9grpc_core12arena_detail22BaseArenaContextTraits16RegisteredTraitsEvE17registered_traits, i64 8), align 8, !tbaa !114 ; 3 uses
  %i.e = load ptr, ptr @_ZZN9grpc_core12arena_detail22BaseArenaContextTraits16RegisteredTraitsEvE17registered_traits, align 8, !tbaa !115 ; 4 uses
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = ptrtoint ptr %i.e to i64                 ; 2 uses
  %i.h = sub i64 %i.f, %i.g                       ; 5 uses
  %i.i = ashr exact i64 %i.h, 3                   ; 4 uses
  %i.j = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN9grpc_core12arena_detail22BaseArenaContextTraits16RegisteredTraitsEvE17registered_traits, i64 16), align 8, !tbaa !116
  %.not.i2 = icmp eq ptr %i.d, %i.j
  br i1 %.not.i2, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_ZN9grpc_core12arena_detail22BaseArenaContextTraits16RegisteredTraitsEv.exit
  store ptr %0, ptr %i.d, align 8, !tbaa !55
  %i.k = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN9grpc_core12arena_detail22BaseArenaContextTraits16RegisteredTraitsEvE17registered_traits, i64 8), align 8, !tbaa !114
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store ptr %i.l, ptr getelementptr inbounds nuw (i8, ptr @_ZZN9grpc_core12arena_detail22BaseArenaContextTraits16RegisteredTraitsEvE17registered_traits, i64 8), align 8, !tbaa !114
  br label %_ZNSt6vectorIPFvPvESaIS2_EE9push_backERKS2_.exit

bb.e:                                             ; preds = %_ZN9grpc_core12arena_detail22BaseArenaContextTraits16RegisteredTraitsEv.exit
  %i.m = icmp eq i64 %i.h, 9223372036854775800
  br i1 %i.m, label %bb.f, label %_ZNKSt6vectorIPFvPvESaIS2_EE12_M_check_lenEmPKc.exit.i.i

bb.f:                                             ; preds = %bb.e
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.4) #32
  unreachable

_ZNKSt6vectorIPFvPvESaIS2_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.e
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.i, i64 1)
  %i.n = add nsw i64 %.sroa.speculated.i.i.i, %i.i ; 2 uses
  %i.o = icmp ult i64 %i.n, %i.i
  %i.p = tail call i64 @llvm.umin.i64(i64 %i.n, i64 1152921504606846975)
  %i.q = select i1 %i.o, i64 1152921504606846975, i64 %i.p ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.q, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.r = shl nuw nsw i64 %i.q, 3
  %i.s = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.r) #31 ; 4 uses
  %i.t = getelementptr inbounds i8, ptr %i.s, i64 %i.h ; 2 uses
  store ptr %0, ptr %i.t, align 8, !tbaa !55
  %i.u = icmp sgt i64 %i.h, 0
  br i1 %i.u, label %bb.g, label %_ZNSt6vectorIPFvPvESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i

bb.g:                                             ; preds = %_ZNKSt6vectorIPFvPvESaIS2_EE12_M_check_lenEmPKc.exit.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.s, ptr align 8 %i.e, i64 %i.h, i1 false)
  br label %_ZNSt6vectorIPFvPvESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i

_ZNSt6vectorIPFvPvESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i: ; preds = %bb.g, %_ZNKSt6vectorIPFvPvESaIS2_EE12_M_check_lenEmPKc.exit.i.i
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %.not.i17.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIPFvPvESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorIPFvPvESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i
  %i.w = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN9grpc_core12arena_detail22BaseArenaContextTraits16RegisteredTraitsEvE17registered_traits, i64 16), align 8, !tbaa !116
  %i.x = ptrtoint ptr %i.w to i64
  %i.y = sub i64 %i.x, %i.g
  tail call void @_ZdlPvm(ptr noundef nonnull %i.e, i64 noundef %i.y) #33
  br label %_ZNSt6vectorIPFvPvESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i

_ZNSt6vectorIPFvPvESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i: ; preds = %bb.h, %_ZNSt6vectorIPFvPvESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i
  store ptr %i.s, ptr @_ZZN9grpc_core12arena_detail22BaseArenaContextTraits16RegisteredTraitsEvE17registered_traits, align 8, !tbaa !115
  store ptr %i.v, ptr getelementptr inbounds nuw (i8, ptr @_ZZN9grpc_core12arena_detail22BaseArenaContextTraits16RegisteredTraitsEvE17registered_traits, i64 8), align 8, !tbaa !114
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %i.q
  store ptr %i.z, ptr getelementptr inbounds nuw (i8, ptr @_ZZN9grpc_core12arena_detail22BaseArenaContextTraits16RegisteredTraitsEvE17registered_traits, i64 16), align 8, !tbaa !116
  br label %_ZNSt6vectorIPFvPvESaIS2_EE9push_backERKS2_.exit

_ZNSt6vectorIPFvPvESaIS2_EE9push_backERKS2_.exit: ; preds = %bb.d, %_ZNSt6vectorIPFvPvESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i
  %i.aa = trunc i64 %i.i to i16
  ret i16 %i.aa
}

; Function Attrs: alwaysinline mustprogress uwtable
define linkonce_odr void @_ZN9grpc_core12arena_detail19DestroyArenaContextIN17grpc_event_engine12experimental11EventEngineEEEvPv(ptr noundef %0) #12 comdat {
bb.a:
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare ptr @llvm.invariant.start.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #13 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #27 ; 0 uses
  tail call void @_ZSt9terminatev() #28
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #14

declare void @_ZN9grpc_core5SleepC2ENS_9TimestampE(ptr noundef nonnull align 8 dereferenceable(16), i64) unnamed_addr #7

end_hunk_0
