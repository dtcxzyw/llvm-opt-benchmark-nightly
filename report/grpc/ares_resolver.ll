Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/grpc/original/ares_resolver?download=true
inline.NumInlined: 2637
inline.NumDeleted: 1366
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_ZN17grpc_event_engine12experimental12AresResolver22OnHostbynameDoneLockedEPviiP7hostent:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #27
  br label %bb.ax

bb.at:                                            ; preds = %bb.as, %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi10EEERS2_RAT__Kc.exit129, %bb.ar, %bb.aq, %bb.ap, %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi50EEERS2_RAT__Kc.exit, %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi40EEERS2_RAT__Kc.exit128
  %i.dj = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4absl12lts_2025051212log_internal10LogMessageD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %15) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #27
  br label %bb.cr

bb.au:                                            ; preds = %bb.ac
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #27, !noalias !214
  %i.dk = load ptr, ptr %i.d, align 8, !tbaa !48, !noalias !214
  store ptr %i.dk, ptr %4, align 8, !tbaa !25, !noalias !214
  %i.dl = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr @_ZN4absl12lts_2025051219str_format_internal13FormatArgImpl8DispatchINS1_7VoidPtrEEEbNS2_4DataENS1_24FormatConversionSpecImplEPv, ptr %i.dl, align 8, !tbaa !144, !noalias !214
  %i.dm = getelementptr inbounds nuw i8, ptr %4, i64 16
  %.sroa.0.0.insert.ext.i.i.i.i = zext i32 %i.ce to i64
  %i.dn = inttoptr i64 %.sroa.0.0.insert.ext.i.i.i.i to ptr
  store ptr %i.dn, ptr %i.dm, align 8, !tbaa !25, !noalias !214
  %i.do = getelementptr inbounds nuw i8, ptr %4, i64 24
  store ptr @_ZN4absl12lts_2025051219str_format_internal13FormatArgImpl8DispatchIiEEbNS2_4DataENS1_24FormatConversionSpecImplEPv, ptr %i.do, align 8, !tbaa !144, !noalias !214
  call void @_ZN4absl12lts_2025051219str_format_internal10FormatPackB5cxx11ENS1_21UntypedFormatSpecImplENS0_4SpanIKNS1_13FormatArgImplEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %16, ptr nonnull @.str.47, i64 47, ptr nonnull %4, i64 2)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27, !noalias !214
  %i.dp = load ptr, ptr %16, align 8, !tbaa !19
  %i.dq = getelementptr inbounds nuw i8, ptr %16, i64 8
  %i.dr = load i64, ptr %i.dq, align 8, !tbaa !24
  invoke void @_ZN9grpc_core5CrashESt17basic_string_viewIcSt11char_traitsIcEENS_14SourceLocationE(i64 %i.dr, ptr %i.dp, ptr nonnull @.str.1, i32 712) #33
          to label %bb.av unwind label %bb.aw

bb.av:                                            ; preds = %bb.au
  unreachable

bb.aw:                                            ; preds = %bb.au
  %i.ds = landingpad { ptr, i32 }
          cleanup
  %i.dt = load ptr, ptr %16, align 8, !tbaa !19   ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 2 uses
  %i.dv = icmp eq ptr %i.dt, %i.du
  br i1 %i.dv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit139, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i137

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i137: ; preds = %bb.aw
  %i.dw = load i64, ptr %i.du, align 8, !tbaa !25
  %i.dx = add i64 %i.dw, 1
  call void @_ZdlPvm(ptr noundef %i.dt, i64 noundef %i.dx) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit139

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit139: ; preds = %bb.aw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i137
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #27
  br label %bb.cr

bb.ax:                                            ; preds = %.critedge108, %.critedge111
  %i.dy = add i64 %.067184, 1                     ; 2 uses
  %i.dz = load ptr, ptr %i.bi, align 8, !tbaa !198
  %i.ea = getelementptr inbounds nuw [8 x i8], ptr %i.dz, i64 %i.dy ; 2 uses
  %i.eb = load ptr, ptr %i.ea, align 8, !tbaa !40
  %.not87 = icmp eq ptr %i.eb, null
  br i1 %.not87, label %.loopexit176, label %bb.z, !llvm.loop !217

.loopexit176:                                     ; preds = %bb.ax, %.critedge105, %_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit120, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ec = load i32, ptr %i.k, align 4, !tbaa !194
  %i.ed = icmp eq i32 %i.ec, 0
  br i1 %i.ed, label %bb.ay, label %bb.cq

bb.ay:                                            ; preds = %.loopexit176
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #27
  %i.ee = load ptr, ptr %i.d, align 8, !tbaa !48
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 72
  %i.eg = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiSt7variantIJNS0_12AnyInvocableIFvNS0_8StatusOrISt6vectorIN17grpc_event_engine12experimental11EventEngine15ResolvedAddressESaISB_EEEEEEENS5_IFvNS6_IS7_INSA_11DNSResolver9SRVRecordESaISI_EEEEEEENS5_IFvNS6_IS7_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIST_EEEEEEEEEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiSZ_EEE7extractIiTnNSt9enable_ifIXntsr3std7is_sameIT_NS1A_8iteratorEEE5valueEiE4typeELi0EEENS1_11node_handleIS10_NS1_18hash_policy_traitsIS10_vEES19_vEERS17_(ptr dead_on_unwind nonnull writable sret(%"class.absl::lts_20250512::container_internal::node_handle") align 16 %17, ptr noundef nonnull align 8 dereferenceable(32) %i.ef, ptr noundef nonnull align 4 dereferenceable(4) %i.eg)
  %i.eh = getelementptr inbounds nuw i8, ptr %17, i64 1 ; 3 uses
  %i.ei = load i8, ptr %i.eh, align 1, !tbaa !218, !range !16, !noundef !17
  %i.ej = trunc nuw i8 %i.ei to i1
  br i1 %i.ej, label %bb.bd, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.ek = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.el = load ptr, ptr %i.ek, align 8, !tbaa !157 ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.el, null
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIN17grpc_event_engine12experimental11EventEngine15ResolvedAddressESaIS3_EED2Ev.exit.i, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.em = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.en = load ptr, ptr %i.em, align 8, !tbaa !154
  %i.eo = ptrtoint ptr %i.en to i64
  %i.ep = ptrtoint ptr %i.el to i64
  %i.eq = sub i64 %i.eo, %i.ep
  call void @_ZdlPvm(ptr noundef nonnull %i.el, i64 noundef %i.eq) #30
  br label %_ZNSt6vectorIN17grpc_event_engine12experimental11EventEngine15ResolvedAddressESaIS3_EED2Ev.exit.i

_ZNSt6vectorIN17grpc_event_engine12experimental11EventEngine15ResolvedAddressESaIS3_EED2Ev.exit.i: ; preds = %bb.ba, %bb.az
  %i.er = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.es = load i64, ptr %i.er, align 8, !tbaa !43 ; 2 uses
  %i.et = trunc i64 %i.es to i1
  br i1 %i.et, label %_ZN4absl12lts_202505126StatusD2Ev.exit.i, label %bb.bb

bb.bb:                                            ; preds = %_ZNSt6vectorIN17grpc_event_engine12experimental11EventEngine15ResolvedAddressESaIS3_EED2Ev.exit.i
  %i.eu = inttoptr i64 %i.es to ptr
  invoke void @_ZNK4absl12lts_2025051215status_internal9StatusRep5UnrefEv(ptr noundef nonnull align 8 dereferenceable(48) %i.eu)
          to label %_ZN4absl12lts_202505126StatusD2Ev.exit.i unwind label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.ev = landingpad { ptr, i32 }
          catch ptr null
  %i.ew = extractvalue { ptr, i32 } %i.ev, 0
  call void @__clang_call_terminate(ptr %i.ew) #31
  unreachable

_ZN4absl12lts_202505126StatusD2Ev.exit.i:         ; preds = %bb.bb, %_ZNSt6vectorIN17grpc_event_engine12experimental11EventEngine15ResolvedAddressESaIS3_EED2Ev.exit.i
  %i.ex = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ey = load ptr, ptr %i.ex, align 8, !tbaa !19 ; 2 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.fa = icmp eq ptr %i.ey, %i.ez
  br i1 %i.fa, label %_ZN17grpc_event_engine12experimental12_GLOBAL__N_116HostnameQueryArgD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %_ZN4absl12lts_202505126StatusD2Ev.exit.i
  %i.fb = load i64, ptr %i.ez, align 8, !tbaa !25
  %i.fc = add i64 %i.fb, 1
  call void @_ZdlPvm(ptr noundef %i.ey, i64 noundef %i.fc) #30
  br label %_ZN17grpc_event_engine12experimental12_GLOBAL__N_116HostnameQueryArgD2Ev.exit

_ZN17grpc_event_engine12experimental12_GLOBAL__N_116HostnameQueryArgD2Ev.exit: ; preds = %_ZN4absl12lts_202505126StatusD2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 88) #30
  br label %bb.cl

bb.bd:                                            ; preds = %bb.ay
  %i.fd = getelementptr inbounds nuw i8, ptr %17, i64 32 ; 3 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %17, i64 64 ; 2 uses
  %i.ff = load i8, ptr %i.fe, align 16, !tbaa !184
  %i.fg = icmp eq i8 %i.ff, 0
  br i1 %i.fg, label %_ZSt3getIN4absl12lts_2025051212AnyInvocableIFvNS1_8StatusOrISt6vectorIN17grpc_event_engine12experimental11EventEngine15ResolvedAddressESaIS8_EEEEEEEJSD_NS2_IFvNS3_IS4_INS7_11DNSResolver9SRVRecordESaISF_EEEEEEENS2_IFvNS3_IS4_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISQ_EEEEEEEEEOT_OSt7variantIJDpT0_EE.exit, label %bb.be, !prof !115

bb.be:                                            ; preds = %bb.bd
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #27
  invoke void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalC1EPKciS4_(ptr noundef nonnull align 8 dereferenceable(16) %18, ptr noundef nonnull @.str.1, i32 noundef 726, ptr noundef nonnull @.str.48) #28
          to label %bb.bf unwind label %bb.bg

bb.bf:                                            ; preds = %bb.be
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage5FlushEv(ptr noundef nonnull align 8 dereferenceable(16) %18)
          to label %_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit140 unwind label %bb.bh

_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit140: ; preds = %bb.bf
  call void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %18) #31
  unreachable

bb.bg:                                            ; preds = %bb.be
  %i.fh = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #27
  br label %bb.co

bb.bh:                                            ; preds = %bb.bf
  %i.fi = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  call void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %18) #31
  unreachable

_ZSt3getIN4absl12lts_2025051212AnyInvocableIFvNS1_8StatusOrISt6vectorIN17grpc_event_engine12experimental11EventEngine15ResolvedAddressESaIS8_EEEEEEEJSD_NS2_IFvNS3_IS4_INS7_11DNSResolver9SRVRecordESaISF_EEEEEEENS2_IFvNS3_IS4_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISQ_EEEEEEEEEOT_OSt7variantIJDpT0_EE.exit: ; preds = %bb.bd
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #27
  %i.fj = getelementptr inbounds nuw i8, ptr %17, i64 48 ; 4 uses
  %i.fk = load ptr, ptr %i.fj, align 16, !tbaa !126
  call void %i.fk(i1 noundef zeroext false, ptr noundef nonnull align 16 dereferenceable(32) %i.fd, ptr noundef nonnull align 16 dereferenceable(32) %19) #27, !inline_history !128
  %i.fl = getelementptr inbounds nuw i8, ptr %19, i64 16 ; 7 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %17, i64 56
  %i.fn = getelementptr inbounds nuw i8, ptr %19, i64 24 ; 2 uses
  %i.fo = load <2 x ptr>, ptr %i.fj, align 16, !tbaa !26
  %i.fp = load ptr, ptr %i.fj, align 16, !tbaa !126 ; 2 uses
  store <2 x ptr> %i.fo, ptr %i.fl, align 16, !tbaa !26
  store ptr @_ZN4absl12lts_2025051222internal_any_invocable12EmptyManagerENS1_14FunctionToCallEPNS1_15TypeErasedStateES4_, ptr %i.fj, align 16, !tbaa !126
  store ptr null, ptr %i.fm, align 8, !tbaa !129
  %i.fq = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 10 uses
  %i.fr = load ptr, ptr %i.fq, align 8, !tbaa !152
  %i.fs = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 7 uses
  %i.ft = load ptr, ptr %i.fs, align 8, !tbaa !152
  %i.fu = icmp eq ptr %i.fr, %i.ft
  br i1 %i.fu, label %bb.bi, label %bb.bj

bb.bi:                                            ; preds = %_ZSt3getIN4absl12lts_2025051212AnyInvocableIFvNS1_8StatusOrISt6vectorIN17grpc_event_engine12experimental11EventEngine15ResolvedAddressESaIS8_EEEEEEEJSD_NS2_IFvNS3_IS4_INS7_11DNSResolver9SRVRecordESaISF_EEEEEEENS2_IFvNS3_IS4_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISQ_EEEEEEEEEOT_OSt7variantIJDpT0_EE.exit
  %i.fv = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %i.fw = load i64, ptr %i.fv, align 8, !tbaa !43
  %i.fx = icmp eq i64 %i.fw, 1
  br i1 %i.fx, label %bb.bj, label %bb.bz

bb.bj:                                            ; preds = %bb.bi, %_ZSt3getIN4absl12lts_2025051212AnyInvocableIFvNS1_8StatusOrISt6vectorIN17grpc_event_engine12experimental11EventEngine15ResolvedAddressESaIS8_EEEEEEEJSD_NS2_IFvNS3_IS4_INS7_11DNSResolver9SRVRecordESaISF_EEEEEEENS2_IFvNS3_IS4_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISQ_EEEEEEEEEOT_OSt7variantIJDpT0_EE.exit
  %i.fy = load ptr, ptr %i.d, align 8, !tbaa !48
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fy, i64 136
  %i.ga = load ptr, ptr %i.fz, align 8, !tbaa !53 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #27
  call void %i.fp(i1 noundef zeroext false, ptr noundef nonnull align 16 dereferenceable(32) %19, ptr noundef nonnull align 16 dereferenceable(32) %21) #27, !inline_history !128
  %i.gb = getelementptr inbounds nuw i8, ptr %21, i64 16 ; 6 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %21, i64 24
  %i.gd = load <2 x ptr>, ptr %i.fl, align 16, !tbaa !26
  store <2 x ptr> %i.gd, ptr %i.gb, align 16, !tbaa !26
  store ptr @_ZN4absl12lts_2025051222internal_any_invocable12EmptyManagerENS1_14FunctionToCallEPNS1_15TypeErasedStateES4_, ptr %i.fl, align 16, !tbaa !126
  store ptr null, ptr %i.fn, align 8, !tbaa !129
  %i.ge = getelementptr inbounds nuw i8, ptr %21, i64 32 ; 7 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !220)
  %i.gf = load ptr, ptr %i.fs, align 8, !tbaa !202, !noalias !220
  %i.gg = load ptr, ptr %i.fq, align 8, !tbaa !157, !noalias !220
  %i.gh = ptrtoint ptr %i.gf to i64
  %i.gi = ptrtoint ptr %i.gg to i64
  %i.gj = sub i64 %i.gh, %i.gi
  %i.gk = sdiv exact i64 %i.gj, 132
  %i.gl = mul i64 %i.gk, 296
  %i.gm = invoke ptr @gpr_zalloc(i64 noundef %i.gl)
          to label %.noexc146 unwind label %.loopexit.split-lp ; 4 uses

.noexc146:                                        ; preds = %bb.bj
  %i.gn = load ptr, ptr %i.fs, align 8, !tbaa !202, !noalias !220
  %i.go = load ptr, ptr %i.fq, align 8, !tbaa !157, !noalias !220 ; 2 uses
  %.not.i142 = icmp eq ptr %i.gn, %i.go
  br i1 %.not.i142, label %._crit_edge.i, label %.lr.ph.i

._crit_edge.i:                                    ; preds = %.noexc150, %.noexc146
  %.lcssa37.i = phi i64 [ 0, %.noexc146 ], [ %i.hv, %.noexc150 ]
  invoke void @address_sorting_rfc_6724_sort(ptr noundef %i.gm, i64 noundef %.lcssa37.i)
          to label %.noexc147 unwind label %.loopexit.split-lp

.noexc147:                                        ; preds = %._crit_edge.i
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.ge, i8 0, i64 24, i1 false), !alias.scope !220
  %i.gp = load ptr, ptr %i.fs, align 8, !tbaa !202, !noalias !220 ; 2 uses
  %i.gq = load ptr, ptr %i.fq, align 8, !tbaa !157, !noalias !220 ; 2 uses
  %i.gr = ptrtoint ptr %i.gp to i64
  %i.gs = ptrtoint ptr %i.gq to i64
  %i.gt = sub i64 %i.gr, %i.gs                    ; 3 uses
  %i.gu = sdiv exact i64 %i.gt, 132
  %i.gv = icmp ugt i64 %i.gu, 69874030582233150
  br i1 %i.gv, label %bb.bk, label %bb.bl

bb.bk:                                            ; preds = %.noexc147
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.70) #33
          to label %.noexc.i unwind label %bb.bm, !noalias !220

.noexc.i:                                         ; preds = %bb.bk
  unreachable

bb.bl:                                            ; preds = %.noexc147
  %i.gw = getelementptr inbounds nuw i8, ptr %21, i64 48 ; 4 uses
  %.not57.i = icmp eq ptr %i.gp, %i.gq
  br i1 %.not57.i, label %._crit_edge41.i, label %_ZNSt12_Vector_baseIN17grpc_event_engine12experimental11EventEngine15ResolvedAddressESaIS3_EE11_M_allocateEm.exit.i.i

_ZNSt12_Vector_baseIN17grpc_event_engine12experimental11EventEngine15ResolvedAddressESaIS3_EE11_M_allocateEm.exit.i.i: ; preds = %bb.bl
  %i.gx = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.gt) #32
          to label %_ZNSt6vectorIN17grpc_event_engine12experimental11EventEngine15ResolvedAddressESaIS3_EE7reserveEm.exit.i unwind label %bb.bm, !noalias !220 ; 5 uses

_ZNSt6vectorIN17grpc_event_engine12experimental11EventEngine15ResolvedAddressESaIS3_EE7reserveEm.exit.i: ; preds = %_ZNSt12_Vector_baseIN17grpc_event_engine12experimental11EventEngine15ResolvedAddressESaIS3_EE11_M_allocateEm.exit.i.i
  %i.gy = getelementptr inbounds nuw i8, ptr %21, i64 40 ; 3 uses
  store ptr %i.gx, ptr %i.ge, align 16, !tbaa !157, !alias.scope !220
  store ptr %i.gx, ptr %i.gy, align 8, !tbaa !202, !alias.scope !220
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gx, i64 %i.gt ; 3 uses
  store ptr %i.gz, ptr %i.gw, align 16, !tbaa !154, !alias.scope !220
  %.pre.i144 = load ptr, ptr %i.fs, align 8, !tbaa !202, !noalias !220
  %.pre45.i = load ptr, ptr %i.fq, align 8, !tbaa !157, !noalias !220
  %i.ha = icmp eq ptr %.pre.i144, %.pre45.i
  br i1 %i.ha, label %._crit_edge41.i, label %.lr.ph40.i

.lr.ph.i:                                         ; preds = %.noexc146, %.noexc150
  %i.hb = phi ptr [ %i.hr, %.noexc150 ], [ %i.go, %.noexc146 ]
  %.03138.i = phi i64 [ %i.hp, %.noexc150 ], [ 0, %.noexc146 ] ; 5 uses
  %i.hc = getelementptr inbounds nuw [132 x i8], ptr %i.hb, i64 %.03138.i ; 2 uses
  %i.hd = getelementptr inbounds nuw [296 x i8], ptr %i.gm, i64 %.03138.i ; 3 uses
  %i.he = getelementptr inbounds nuw i8, ptr %i.hd, i64 136
  store ptr %i.hc, ptr %i.he, align 8, !tbaa !223, !noalias !220
  %i.hf = invoke noundef ptr @_ZNK17grpc_event_engine12experimental11EventEngine15ResolvedAddress7addressEv(ptr noundef nonnull align 4 dereferenceable(132) %i.hc)
          to label %.noexc148 unwind label %.loopexit

.noexc148:                                        ; preds = %.lr.ph.i
  %i.hg = load ptr, ptr %i.fq, align 8, !tbaa !157, !noalias !220
  %i.hh = getelementptr inbounds nuw [132 x i8], ptr %i.hg, i64 %.03138.i
  %i.hi = invoke noundef i32 @_ZNK17grpc_event_engine12experimental11EventEngine15ResolvedAddress4sizeEv(ptr noundef nonnull align 4 dereferenceable(132) %i.hh)
          to label %.noexc149 unwind label %.loopexit

.noexc149:                                        ; preds = %.noexc148
  %i.hj = zext i32 %i.hi to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.hd, ptr align 2 %i.hf, i64 %i.hj, i1 false), !noalias !220
  %i.hk = load ptr, ptr %i.fq, align 8, !tbaa !157, !noalias !220
  %i.hl = getelementptr inbounds nuw [132 x i8], ptr %i.hk, i64 %.03138.i
  %i.hm = invoke noundef i32 @_ZNK17grpc_event_engine12experimental11EventEngine15ResolvedAddress4sizeEv(ptr noundef nonnull align 4 dereferenceable(132) %i.hl)
          to label %.noexc150 unwind label %.loopexit

.noexc150:                                        ; preds = %.noexc149
  %i.hn = zext i32 %i.hm to i64
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hd, i64 128
  store i64 %i.hn, ptr %i.ho, align 8, !tbaa !226, !noalias !220
  %i.hp = add nuw i64 %.03138.i, 1                ; 2 uses
  %i.hq = load ptr, ptr %i.fs, align 8, !tbaa !202, !noalias !220
  %i.hr = load ptr, ptr %i.fq, align 8, !tbaa !157, !noalias !220 ; 2 uses
  %i.hs = ptrtoint ptr %i.hq to i64
  %i.ht = ptrtoint ptr %i.hr to i64
  %i.hu = sub i64 %i.hs, %i.ht
  %i.hv = sdiv exact i64 %i.hu, 132               ; 2 uses
  %i.hw = icmp ult i64 %i.hp, %i.hv
  br i1 %i.hw, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !227

._crit_edge41.i:                                  ; preds = %_ZNSt6vectorIN17grpc_event_engine12experimental11EventEngine15ResolvedAddressESaIS3_EE12emplace_backIJRS3_EEES7_DpOT_.exit.i, %_ZNSt6vectorIN17grpc_event_engine12experimental11EventEngine15ResolvedAddressESaIS3_EE7reserveEm.exit.i, %bb.bl
  %i.hx = phi ptr [ null, %bb.bl ], [ %i.gz, %_ZNSt6vectorIN17grpc_event_engine12experimental11EventEngine15ResolvedAddressESaIS3_EE7reserveEm.exit.i ], [ %i.iy, %_ZNSt6vectorIN17grpc_event_engine12experimental11EventEngine15ResolvedAddressESaIS3_EE12emplace_backIJRS3_EEES7_DpOT_.exit.i ]
  invoke void @gpr_free(ptr noundef %i.gm)
          to label %_ZN17grpc_event_engine12experimental12_GLOBAL__N_113SortAddressesERKSt6vectorINS0_11EventEngine15ResolvedAddressESaIS4_EE.exit unwind label %bb.bm, !noalias !220

bb.bm:                                            ; preds = %._crit_edge41.i, %_ZNSt12_Vector_baseIN17grpc_event_engine12experimental11EventEngine15ResolvedAddressESaIS3_EE11_M_allocateEm.exit.i.i, %bb.bk
  %i.hy = phi ptr [ %i.hx, %._crit_edge41.i ], [ null, %_ZNSt12_Vector_baseIN17grpc_event_engine12experimental11EventEngine15ResolvedAddressESaIS3_EE11_M_allocateEm.exit.i.i ], [ null, %bb.bk ]
  %i.hz = landingpad { ptr, i32 }
          cleanup
  %.pre48.i = load ptr, ptr %i.ge, align 16, !tbaa !157, !alias.scope !220
  br label %bb.bq

.lr.ph40.i:                                       ; preds = %_ZNSt6vectorIN17grpc_event_engine12experimental11EventEngine15ResolvedAddressESaIS3_EE7reserveEm.exit.i, %_ZNSt6vectorIN17grpc_event_engine12experimental11EventEngine15ResolvedAddressESaIS3_EE12emplace_backIJRS3_EEES7_DpOT_.exit.i
  %i.ia = phi ptr [ %i.ix, %_ZNSt6vectorIN17grpc_event_engine12experimental11EventEngine15ResolvedAddressESaIS3_EE12emplace_backIJRS3_EEES7_DpOT_.exit.i ], [ %i.gx, %_ZNSt6vectorIN17grpc_event_engine12experimental11EventEngine15ResolvedAddressESaIS3_EE7reserveEm.exit.i ] ; 7 uses
  %i.ib = phi ptr [ %i.iy, %_ZNSt6vectorIN17grpc_event_engine12experimental11EventEngine15ResolvedAddressESaIS3_EE12emplace_backIJRS3_EEES7_DpOT_.exit.i ], [ %i.gz, %_ZNSt6vectorIN17grpc_event_engine12experimental11EventEngine15ResolvedAddressESaIS3_EE7reserveEm.exit.i ] ; 7 uses
  %i.ic = phi ptr [ %i.iz, %_ZNSt6vectorIN17grpc_event_engine12experimental11EventEngine15ResolvedAddressESaIS3_EE12emplace_backIJRS3_EEES7_DpOT_.exit.i ], [ %i.gx, %_ZNSt6vectorIN17grpc_event_engine12experimental11EventEngine15ResolvedAddressESaIS3_EE7reserveEm.exit.i ] ; 3 uses
  %.039.i = phi i64 [ %i.ja, %_ZNSt6vectorIN17grpc_event_engine12experimental11EventEngine15ResolvedAddressESaIS3_EE12emplace_backIJRS3_EEES7_DpOT_.exit.i ], [ 0, %_ZNSt6vectorIN17grpc_event_engine12experimental11EventEngine15ResolvedAddressESaIS3_EE7reserveEm.exit.i ] ; 2 uses
  %i.id = getelementptr inbounds nuw [296 x i8], ptr %i.gm, i64 %.039.i
  %i.ie = getelementptr inbounds nuw i8, ptr %i.id, i64 136
  %i.if = load ptr, ptr %i.ie, align 8, !tbaa !223, !noalias !220 ; 2 uses
  %.not.i.i = icmp eq ptr %i.ic, %i.ib
  br i1 %.not.i.i, label %bb.bo, label %bb.bn

bb.bn:                                            ; preds = %.lr.ph40.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(132) %i.ic, ptr noundef nonnull align 4 dereferenceable(132) %i.if, i64 132, i1 false), !tbaa.struct !228, !noalias !220
  %i.ig = getelementptr inbounds nuw i8, ptr %i.ic, i64 132 ; 2 uses
  store ptr %i.ig, ptr %i.gy, align 8, !tbaa !202, !alias.scope !220
  br label %_ZNSt6vectorIN17grpc_event_engine12experimental11EventEngine15ResolvedAddressESaIS3_EE12emplace_backIJRS3_EEES7_DpOT_.exit.i

bb.bo:                                            ; preds = %.lr.ph40.i
  %i.ih = ptrtoint ptr %i.ib to i64
  %i.ii = ptrtoint ptr %i.ia to i64
  %i.ij = sub i64 %i.ih, %i.ii                    ; 4 uses
  %i.ik = icmp eq i64 %i.ij, 9223372036854775800
  br i1 %i.ik, label %bb.bp, label %_ZNKSt6vectorIN17grpc_event_engine12experimental11EventEngine15ResolvedAddressESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i

bb.bp:                                            ; preds = %bb.bo
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.71) #33
          to label %.noexc34.i unwind label %.loopexit.split-lp.i, !noalias !220

.noexc34.i:                                       ; preds = %bb.bp
  unreachable

_ZNKSt6vectorIN17grpc_event_engine12experimental11EventEngine15ResolvedAddressESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.bo
  %i.il = sdiv exact i64 %i.ij, 132               ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.il, i64 1)
  %i.im = add nsw i64 %.sroa.speculated.i.i.i.i, %i.il ; 2 uses
  %i.in = icmp ult i64 %i.im, %i.il
  %i.io = call i64 @llvm.umin.i64(i64 %i.im, i64 69874030582233150)
  %i.ip = select i1 %i.in, i64 69874030582233150, i64 %i.io ; 3 uses
  %.not.i.i.i.i145 = icmp ne i64 %i.ip, 0
  call void @llvm.assume(i1 %.not.i.i.i.i145)
  %i.iq = mul nuw nsw i64 %i.ip, 132
  %i.ir = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.iq) #32
          to label %.noexc35.i unwind label %.loopexit.i, !noalias !220 ; 6 uses

.noexc35.i:                                       ; preds = %_ZNKSt6vectorIN17grpc_event_engine12experimental11EventEngine15ResolvedAddressESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.is = getelementptr inbounds nuw i8, ptr %i.ir, i64 %i.ij
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(132) %i.is, ptr noundef nonnull align 4 dereferenceable(132) %i.if, i64 132, i1 false), !tbaa.struct !228, !noalias !220
  %.not10.i.i.i.i.i.i = icmp eq ptr %i.ia, %i.ib
  br i1 %.not10.i.i.i.i.i.i, label %_ZNSt6vectorIN17grpc_event_engine12experimental11EventEngine15ResolvedAddressESaIS3_EE17_M_realloc_insertIJRS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.noexc35.i, %.lr.ph.i.i.i.i.i.i
  %.012.i.i.i.i.i.i = phi ptr [ %i.iu, %.lr.ph.i.i.i.i.i.i ], [ %i.ir, %.noexc35.i ] ; 2 uses
  %.0911.i.i.i.i.i.i = phi ptr [ %i.it, %.lr.ph.i.i.i.i.i.i ], [ %i.ia, %.noexc35.i ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(132) %.012.i.i.i.i.i.i, ptr noundef nonnull align 4 dereferenceable(132) %.0911.i.i.i.i.i.i, i64 132, i1 false), !tbaa.struct !228, !alias.scope !229, !noalias !220
  %i.it = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i, i64 132 ; 2 uses
  %i.iu = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i, i64 132 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.it, %i.ib
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorIN17grpc_event_engine12experimental11EventEngine15ResolvedAddressESaIS3_EE17_M_realloc_insertIJRS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !233

_ZNSt6vectorIN17grpc_event_engine12experimental11EventEngine15ResolvedAddressESaIS3_EE17_M_realloc_insertIJRS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %.noexc35.i
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.ir, %.noexc35.i ], [ %i.iu, %.lr.ph.i.i.i.i.i.i ]
  %i.iv = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i, i64 132 ; 2 uses
  call void @_ZdlPvm(ptr noundef nonnull %i.ia, i64 noundef %i.ij) #30, !noalias !220
  store ptr %i.ir, ptr %i.ge, align 16, !tbaa !157, !alias.scope !220
  store ptr %i.iv, ptr %i.gy, align 8, !tbaa !202, !alias.scope !220
  %i.iw = getelementptr inbounds nuw [132 x i8], ptr %i.ir, i64 %i.ip ; 2 uses
  store ptr %i.iw, ptr %i.gw, align 16, !tbaa !154, !alias.scope !220
  br label %_ZNSt6vectorIN17grpc_event_engine12experimental11EventEngine15ResolvedAddressESaIS3_EE12emplace_backIJRS3_EEES7_DpOT_.exit.i

_ZNSt6vectorIN17grpc_event_engine12experimental11EventEngine15ResolvedAddressESaIS3_EE12emplace_backIJRS3_EEES7_DpOT_.exit.i: ; preds = %_ZNSt6vectorIN17grpc_event_engine12experimental11EventEngine15ResolvedAddressESaIS3_EE17_M_realloc_insertIJRS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i, %bb.bn
  %i.ix = phi ptr [ %i.ir, %_ZNSt6vectorIN17grpc_event_engine12experimental11EventEngine15ResolvedAddressESaIS3_EE17_M_realloc_insertIJRS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i ], [ %i.ia, %bb.bn ]
  %i.iy = phi ptr [ %i.iw, %_ZNSt6vectorIN17grpc_event_engine12experimental11EventEngine15ResolvedAddressESaIS3_EE17_M_realloc_insertIJRS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i ], [ %i.ib, %bb.bn ] ; 2 uses
  %i.iz = phi ptr [ %i.iv, %_ZNSt6vectorIN17grpc_event_engine12experimental11EventEngine15ResolvedAddressESaIS3_EE17_M_realloc_insertIJRS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i ], [ %i.ig, %bb.bn ]
  %i.ja = add nuw i64 %.039.i, 1                  ; 2 uses
  %i.jb = load ptr, ptr %i.fs, align 8, !tbaa !202, !noalias !220
  %i.jc = load ptr, ptr %i.fq, align 8, !tbaa !157, !noalias !220
  %i.jd = ptrtoint ptr %i.jb to i64
  %i.je = ptrtoint ptr %i.jc to i64
  %i.jf = sub i64 %i.jd, %i.je
  %i.jg = sdiv exact i64 %i.jf, 132
  %i.jh = icmp ult i64 %i.ja, %i.jg
  br i1 %i.jh, label %.lr.ph40.i, label %._crit_edge41.i, !llvm.loop !234

.loopexit.i:                                      ; preds = %_ZNKSt6vectorIN17grpc_event_engine12experimental11EventEngine15ResolvedAddressESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.bq

.loopexit.split-lp.i:                             ; preds = %bb.bp
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.bq

bb.bq:                                            ; preds = %.loopexit.split-lp.i, %.loopexit.i, %bb.bm
  %i.ji = phi ptr [ %i.hy, %bb.bm ], [ %i.ib, %.loopexit.i ], [ %i.ib, %.loopexit.split-lp.i ]
  %i.jj = phi ptr [ %.pre48.i, %bb.bm ], [ %i.ia, %.loopexit.i ], [ %i.ia, %.loopexit.split-lp.i ] ; 3 uses
  %.pn.i = phi { ptr, i32 } [ %i.hz, %bb.bm ], [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ] ; 2 uses
  %.not.i.i.i36.i = icmp eq ptr %i.jj, null
  br i1 %.not.i.i.i36.i, label %.body, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.jk = ptrtoint ptr %i.ji to i64
  %i.jl = ptrtoint ptr %i.jj to i64
  %i.jm = sub i64 %i.jk, %i.jl
  call void @_ZdlPvm(ptr noundef nonnull %i.jj, i64 noundef %i.jm) #30, !noalias !220
  br label %.body

_ZN17grpc_event_engine12experimental12_GLOBAL__N_113SortAddressesERKSt6vectorINS0_11EventEngine15ResolvedAddressESaIS4_EE.exit: ; preds = %._crit_edge41.i
  %i.jn = invoke noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #32
          to label %bb.bs unwind label %bb.bv     ; 5 uses

bb.bs:                                            ; preds = %_ZN17grpc_event_engine12experimental12_GLOBAL__N_113SortAddressesERKSt6vectorINS0_11EventEngine15ResolvedAddressESaIS4_EE.exit
  %i.jo = load ptr, ptr %i.gb, align 16, !tbaa !126
  call void %i.jo(i1 noundef zeroext false, ptr noundef nonnull align 16 dereferenceable(56) %21, ptr noundef nonnull align 16 dereferenceable(56) %i.jn) #27, !inline_history !235
  %i.jp = getelementptr inbounds nuw i8, ptr %i.jn, i64 16
  %i.jq = load <2 x ptr>, ptr %i.gb, align 16, !tbaa !26
  store <2 x ptr> %i.jq, ptr %i.jp, align 16, !tbaa !26
  store ptr @_ZN4absl12lts_2025051222internal_any_invocable12EmptyManagerENS1_14FunctionToCallEPNS1_15TypeErasedStateES4_, ptr %i.gb, align 16, !tbaa !126
  store ptr null, ptr %i.gc, align 8, !tbaa !129
  %i.jr = getelementptr inbounds nuw i8, ptr %i.jn, i64 32
  %i.js = load <2 x ptr>, ptr %i.ge, align 16, !tbaa !152
  store <2 x ptr> %i.js, ptr %i.jr, align 16, !tbaa !152
  %i.jt = getelementptr inbounds nuw i8, ptr %i.jn, i64 48
  %i.ju = load ptr, ptr %i.gw, align 16, !tbaa !154
  store ptr %i.ju, ptr %i.jt, align 16, !tbaa !154
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.ge, i8 0, i64 24, i1 false)
  store ptr %i.jn, ptr %20, align 16, !tbaa !25
  %i.jv = getelementptr inbounds nuw i8, ptr %20, i64 16 ; 3 uses
  store ptr @"_ZN4absl12lts_2025051222internal_any_invocable23RemoteManagerNontrivialIZN17grpc_event_engine12experimental12AresResolver22OnHostbynameDoneLockedEPviiP7hostentE3$_0EEvNS1_14FunctionToCallEPNS1_15TypeErasedStateESC_", ptr %i.jv, align 16, !tbaa !131
  %i.jw = getelementptr inbounds nuw i8, ptr %20, i64 24
  store ptr @"_ZN4absl12lts_2025051222internal_any_invocable13RemoteInvokerILb0EvRZN17grpc_event_engine12experimental12AresResolver22OnHostbynameDoneLockedEPviiP7hostentE3$_0JEEET0_PNS1_15TypeErasedStateEDpNS1_18ForwardedParameterIT2_E4typeE", ptr %i.jw, align 8, !tbaa !133
  %i.jx = load ptr, ptr %i.ga, align 8, !tbaa !30
  %i.jy = getelementptr inbounds nuw i8, ptr %i.jx, i64 72
  %i.jz = load ptr, ptr %i.jy, align 8
  invoke void %i.jz(ptr noundef nonnull align 8 dereferenceable(24) %i.ga, ptr noundef nonnull align 16 %20)
          to label %bb.bt unwind label %bb.bw

bb.bt:                                            ; preds = %bb.bs
  %i.ka = load ptr, ptr %i.jv, align 16, !tbaa !131
  call void %i.ka(i1 noundef zeroext true, ptr noundef nonnull align 16 dereferenceable(32) %20, ptr noundef nonnull align 16 dereferenceable(32) %20) #27, !inline_history !134
  %i.kb = load ptr, ptr %i.ge, align 16, !tbaa !157 ; 3 uses
  %.not.i.i.i.i152 = icmp eq ptr %i.kb, null
  br i1 %.not.i.i.i.i152, label %"_ZZN17grpc_event_engine12experimental12AresResolver22OnHostbynameDoneLockedEPviiP7hostentEN3$_0D2Ev.exit", label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  %i.kc = load ptr, ptr %i.gw, align 16, !tbaa !154
  %i.kd = ptrtoint ptr %i.kc to i64
  %i.ke = ptrtoint ptr %i.kb to i64
  %i.kf = sub i64 %i.kd, %i.ke
  call void @_ZdlPvm(ptr noundef nonnull %i.kb, i64 noundef %i.kf) #30
  br label %"_ZZN17grpc_event_engine12experimental12AresResolver22OnHostbynameDoneLockedEPviiP7hostentEN3$_0D2Ev.exit"

"_ZZN17grpc_event_engine12experimental12AresResolver22OnHostbynameDoneLockedEPviiP7hostentEN3$_0D2Ev.exit": ; preds = %bb.bt, %bb.bu
  %i.kg = load ptr, ptr %i.gb, align 16, !tbaa !126
  call void %i.kg(i1 noundef zeroext true, ptr noundef nonnull align 16 dereferenceable(56) %21, ptr noundef nonnull align 16 dereferenceable(56) %21) #27, !inline_history !236
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #27
  br label %bb.ch

.loopexit:                                        ; preds = %.lr.ph.i, %.noexc148, %.noexc149
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp:                               ; preds = %bb.bj, %._crit_edge.i
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %.loopexit, %.loopexit.split-lp, %bb.bq, %bb.br
  %eh.lpad-body = phi { ptr, i32 } [ %.pn.i, %bb.bq ], [ %.pn.i, %bb.br ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %i.kh = load ptr, ptr %i.gb, align 16, !tbaa !126
  call void %i.kh(i1 noundef zeroext true, ptr noundef nonnull align 16 dereferenceable(32) %21, ptr noundef nonnull align 16 dereferenceable(32) %21) #27, !inline_history !136
  br label %bb.by

bb.bv:                                            ; preds = %_ZN17grpc_event_engine12experimental12_GLOBAL__N_113SortAddressesERKSt6vectorINS0_11EventEngine15ResolvedAddressESaIS4_EE.exit
  %i.ki = landingpad { ptr, i32 }
          cleanup
  br label %bb.bx

bb.bw:                                            ; preds = %bb.bs
  %i.kj = landingpad { ptr, i32 }
          cleanup
  %i.kk = load ptr, ptr %i.jv, align 16, !tbaa !131
  call void %i.kk(i1 noundef zeroext true, ptr noundef nonnull align 16 dereferenceable(32) %20, ptr noundef nonnull align 16 dereferenceable(32) %20) #27, !inline_history !134
  br label %bb.bx

bb.bx:                                            ; preds = %bb.bw, %bb.bv
  %.pn95 = phi { ptr, i32 } [ %i.kj, %bb.bw ], [ %i.ki, %bb.bv ]
  call fastcc void @"_ZZN17grpc_event_engine12experimental12AresResolver22OnHostbynameDoneLockedEPviiP7hostentEN3$_0D2Ev"(ptr noundef nonnull align 16 dead_on_return(56) dereferenceable(56) %21) #27
  br label %bb.by

bb.by:                                            ; preds = %bb.bx, %.body
  %.pn95.pn = phi { ptr, i32 } [ %.pn95, %bb.bx ], [ %eh.lpad-body, %.body ]
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #27
  br label %bb.cn

bb.bz:                                            ; preds = %bb.bi
  %i.kl = load ptr, ptr %i.d, align 8, !tbaa !48
  %i.km = getelementptr inbounds nuw i8, ptr %i.kl, i64 136
  %i.kn = load ptr, ptr %i.km, align 8, !tbaa !53 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #27
  call void %i.fp(i1 noundef zeroext false, ptr noundef nonnull align 16 dereferenceable(32) %19, ptr noundef nonnull align 16 dereferenceable(32) %23) #27, !inline_history !128
  %i.ko = getelementptr inbounds nuw i8, ptr %23, i64 16 ; 5 uses
  %i.kp = load <2 x ptr>, ptr %i.fl, align 16, !tbaa !26
  store <2 x ptr> %i.kp, ptr %i.ko, align 16, !tbaa !26
  store ptr @_ZN4absl12lts_2025051222internal_any_invocable12EmptyManagerENS1_14FunctionToCallEPNS1_15TypeErasedStateES4_, ptr %i.fl, align 16, !tbaa !126
  store ptr null, ptr %i.fn, align 8, !tbaa !129
  %i.kq = getelementptr inbounds nuw i8, ptr %23, i64 32 ; 4 uses
  %i.kr = load i64, ptr %i.fv, align 8, !tbaa !43
  store i64 %i.kr, ptr %i.kq, align 16, !tbaa !43
  store i64 55, ptr %i.fv, align 8, !tbaa !43
  %i.ks = invoke noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #32
          to label %bb.ca unwind label %bb.ce     ; 4 uses

bb.ca:                                            ; preds = %bb.bz
  %i.kt = getelementptr inbounds nuw i8, ptr %23, i64 24
  %i.ku = load ptr, ptr %i.ko, align 16, !tbaa !126
  call void %i.ku(i1 noundef zeroext false, ptr noundef nonnull align 16 dereferenceable(40) %23, ptr noundef nonnull align 16 dereferenceable(40) %i.ks) #27, !inline_history !237
  %i.kv = getelementptr inbounds nuw i8, ptr %i.ks, i64 16
  %i.kw = load <2 x ptr>, ptr %i.ko, align 16, !tbaa !26
  store <2 x ptr> %i.kw, ptr %i.kv, align 16, !tbaa !26
  store ptr @_ZN4absl12lts_2025051222internal_any_invocable12EmptyManagerENS1_14FunctionToCallEPNS1_15TypeErasedStateES4_, ptr %i.ko, align 16, !tbaa !126
  store ptr null, ptr %i.kt, align 8, !tbaa !129
  %i.kx = getelementptr inbounds nuw i8, ptr %i.ks, i64 32
  %i.ky = load i64, ptr %i.kq, align 16, !tbaa !43
  store i64 %i.ky, ptr %i.kx, align 16, !tbaa !43
  store i64 55, ptr %i.kq, align 16, !tbaa !43
  store ptr %i.ks, ptr %22, align 16, !tbaa !25
  %i.kz = getelementptr inbounds nuw i8, ptr %22, i64 16 ; 3 uses
  store ptr @"_ZN4absl12lts_2025051222internal_any_invocable23RemoteManagerNontrivialIZN17grpc_event_engine12experimental12AresResolver22OnHostbynameDoneLockedEPviiP7hostentE3$_1EEvNS1_14FunctionToCallEPNS1_15TypeErasedStateESC_", ptr %i.kz, align 16, !tbaa !131
  %i.la = getelementptr inbounds nuw i8, ptr %22, i64 24
  store ptr @"_ZN4absl12lts_2025051222internal_any_invocable13RemoteInvokerILb0EvRZN17grpc_event_engine12experimental12AresResolver22OnHostbynameDoneLockedEPviiP7hostentE3$_1JEEET0_PNS1_15TypeErasedStateEDpNS1_18ForwardedParameterIT2_E4typeE", ptr %i.la, align 8, !tbaa !133
  %i.lb = load ptr, ptr %i.kn, align 8, !tbaa !30
  %i.lc = getelementptr inbounds nuw i8, ptr %i.lb, i64 72
  %i.ld = load ptr, ptr %i.lc, align 8
  invoke void %i.ld(ptr noundef nonnull align 8 dereferenceable(24) %i.kn, ptr noundef nonnull align 16 %22)
          to label %bb.cb unwind label %bb.cf

bb.cb:                                            ; preds = %bb.ca
  %i.le = load ptr, ptr %i.kz, align 16, !tbaa !131
  call void %i.le(i1 noundef zeroext true, ptr noundef nonnull align 16 dereferenceable(32) %22, ptr noundef nonnull align 16 dereferenceable(32) %22) #27, !inline_history !134
  %i.lf = load i64, ptr %i.kq, align 16, !tbaa !43 ; 2 uses
  %i.lg = trunc i64 %i.lf to i1
  br i1 %i.lg, label %"_ZZN17grpc_event_engine12experimental12AresResolver22OnHostbynameDoneLockedEPviiP7hostentEN3$_1D2Ev.exit", label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  %i.lh = inttoptr i64 %i.lf to ptr
  invoke void @_ZNK4absl12lts_2025051215status_internal9StatusRep5UnrefEv(ptr noundef nonnull align 8 dereferenceable(48) %i.lh)
          to label %"_ZZN17grpc_event_engine12experimental12AresResolver22OnHostbynameDoneLockedEPviiP7hostentEN3$_1D2Ev.exit" unwind label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  %i.li = landingpad { ptr, i32 }
          catch ptr null
  %i.lj = extractvalue { ptr, i32 } %i.li, 0
  call void @__clang_call_terminate(ptr %i.lj) #31
  unreachable

"_ZZN17grpc_event_engine12experimental12AresResolver22OnHostbynameDoneLockedEPviiP7hostentEN3$_1D2Ev.exit": ; preds = %bb.cb, %bb.cc
  %i.lk = load ptr, ptr %i.ko, align 16, !tbaa !126
  call void %i.lk(i1 noundef zeroext true, ptr noundef nonnull align 16 dereferenceable(40) %23, ptr noundef nonnull align 16 dereferenceable(40) %23) #27, !inline_history !238
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #27
  br label %bb.ch

bb.ce:                                            ; preds = %bb.bz
  %i.ll = landingpad { ptr, i32 }
          cleanup
  br label %bb.cg

bb.cf:                                            ; preds = %bb.ca
  %i.lm = landingpad { ptr, i32 }
          cleanup
  %i.ln = load ptr, ptr %i.kz, align 16, !tbaa !131
  call void %i.ln(i1 noundef zeroext true, ptr noundef nonnull align 16 dereferenceable(32) %22, ptr noundef nonnull align 16 dereferenceable(32) %22) #27, !inline_history !134
  br label %bb.cg

bb.cg:                                            ; preds = %bb.cf, %bb.ce
  %.pn93 = phi { ptr, i32 } [ %i.lm, %bb.cf ], [ %i.ll, %bb.ce ]
  call fastcc void @"_ZZN17grpc_event_engine12experimental12AresResolver22OnHostbynameDoneLockedEPviiP7hostentEN3$_1D2Ev"(ptr noundef nonnull align 16 dead_on_return(40) dereferenceable(40) %23) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #27
  br label %bb.cn

bb.ch:                                            ; preds = %"_ZZN17grpc_event_engine12experimental12AresResolver22OnHostbynameDoneLockedEPviiP7hostentEN3$_0D2Ev.exit", %"_ZZN17grpc_event_engine12experimental12AresResolver22OnHostbynameDoneLockedEPviiP7hostentEN3$_1D2Ev.exit"
  %i.lo = load ptr, ptr %i.fq, align 8, !tbaa !157 ; 3 uses
  %.not.i.i.i.i156 = icmp eq ptr %i.lo, null
  br i1 %.not.i.i.i.i156, label %_ZNSt6vectorIN17grpc_event_engine12experimental11EventEngine15ResolvedAddressESaIS3_EED2Ev.exit.i157, label %bb.ci

bb.ci:                                            ; preds = %bb.ch
  %i.lp = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.lq = load ptr, ptr %i.lp, align 8, !tbaa !154
  %i.lr = ptrtoint ptr %i.lq to i64
  %i.ls = ptrtoint ptr %i.lo to i64
  %i.lt = sub i64 %i.lr, %i.ls
  call void @_ZdlPvm(ptr noundef nonnull %i.lo, i64 noundef %i.lt) #30
  br label %_ZNSt6vectorIN17grpc_event_engine12experimental11EventEngine15ResolvedAddressESaIS3_EED2Ev.exit.i157

_ZNSt6vectorIN17grpc_event_engine12experimental11EventEngine15ResolvedAddressESaIS3_EED2Ev.exit.i157: ; preds = %bb.ci, %bb.ch
end_hunk_0
