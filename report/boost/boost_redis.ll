Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/boost/original/boost_redis?download=true
inline.NumInlined: 16494
inline.NumDeleted: 6231
loop-unroll.NumCompletelyUnrolled: 26
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 33
begin_hunk_0_@_ZN5boost5redis6detail10writer_fsm6resumeERNS1_16connection_stateENS_6system10error_codeEmNS_4asio17cancellation_typeE:bb.a
  store i64 %.sroa.0.0.copyload, ptr %i.do, align 8, !tbaa !13, !alias.scope !846
  br label %bb.ai

bb.t:                                             ; preds = %bb.a
  %i.dp = trunc i32 %5 to i1
  br i1 %i.dp, label %bb.u, label %bb.y

bb.u:                                             ; preds = %bb.t
  %i.dq = load i32, ptr %2, align 8, !tbaa !61
  %i.dr = icmp slt i32 %i.dq, 8
  br i1 %i.dr, label %_ZN5boost5redis6detail9log_debugIJA28_cEEEvRNS1_15buffered_loggerEDpRKT_.exit48, label %bb.v

bb.v:                                             ; preds = %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 27, ptr %6, align 8
  %i.ds = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr @.str.68, ptr %i.ds, align 8
  store i32 8, ptr %i.a, align 4, !tbaa !70
  %i.dt = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.du = load ptr, ptr %i.dt, align 8, !tbaa !71
  %.not.i.i.i.i46 = icmp eq ptr %i.du, null
  br i1 %.not.i.i.i.i46, label %bb.w, label %_ZNKSt8functionIFvN5boost5redis6logger5levelESt17basic_string_viewIcSt11char_traitsIcEEEEclES3_S7_.exit.i.i47

bb.w:                                             ; preds = %bb.v
  tail call void @_ZSt25__throw_bad_function_callv() #51
  unreachable

_ZNKSt8functionIFvN5boost5redis6logger5levelESt17basic_string_viewIcSt11char_traitsIcEEEEclES3_S7_.exit.i.i47: ; preds = %bb.v
  %i.dv = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.dw = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.dx = load ptr, ptr %i.dw, align 8, !tbaa !72
  call void %i.dx(ptr noundef nonnull align 8 dereferenceable(32) %i.dv, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 8 dereferenceable(16) %6), !inline_history !844
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_ZN5boost5redis6detail9log_debugIJA28_cEEEvRNS1_15buffered_loggerEDpRKT_.exit48

_ZN5boost5redis6detail9log_debugIJA28_cEEEvRNS1_15buffered_loggerEDpRKT_.exit48: ; preds = %bb.u, %_ZNKSt8functionIFvN5boost5redis6logger5levelESt17basic_string_viewIcSt11char_traitsIcEEEEclES3_S7_.exit.i.i47
  %i.dy = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN5boost6system6detail17system_cat_holderIvE8instanceE, i64 8), align 8, !tbaa !15, !noalias !849
  %i.dz = and i64 %i.dy, -2
  %switch.i.i.i.i49 = icmp eq i64 %i.dz, -5572340897628102704
  br i1 %switch.i.i.i.i49, label %_ZN5boost6system10error_codeC2INS_4asio5error12basic_errorsEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit52.thread, label %_ZN5boost6system10error_codeC2INS_4asio5error12basic_errorsEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit52

_ZN5boost6system10error_codeC2INS_4asio5error12basic_errorsEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit52: ; preds = %_ZN5boost5redis6detail9log_debugIJA28_cEEEvRNS1_15buffered_loggerEDpRKT_.exit48
  %i.ea = load ptr, ptr @_ZN5boost6system6detail17system_cat_holderIvE8instanceE, align 8, !tbaa !25, !noalias !849
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 48
  %i.ec = load ptr, ptr %i.eb, align 8, !noalias !849
  %i.ed = call noundef zeroext i1 %i.ec(ptr noundef nonnull align 8 dereferenceable(52) @_ZN5boost6system6detail17system_cat_holderIvE8instanceE, i32 noundef 125) #49, !noalias !849, !inline_history !189
  br i1 %i.ed, label %_ZN5boost6system10error_codeC2INS_4asio5error12basic_errorsEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit52.thread, label %bb.x

_ZN5boost6system10error_codeC2INS_4asio5error12basic_errorsEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit52.thread: ; preds = %_ZN5boost5redis6detail9log_debugIJA28_cEEEvRNS1_15buffered_loggerEDpRKT_.exit48, %_ZN5boost6system10error_codeC2INS_4asio5error12basic_errorsEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit52
  br label %bb.x

bb.x:                                             ; preds = %_ZN5boost6system10error_codeC2INS_4asio5error12basic_errorsEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit52, %_ZN5boost6system10error_codeC2INS_4asio5error12basic_errorsEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit52.thread
  %i.ee = phi i64 [ 3, %_ZN5boost6system10error_codeC2INS_4asio5error12basic_errorsEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit52.thread ], [ 2, %_ZN5boost6system10error_codeC2INS_4asio5error12basic_errorsEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit52 ]
  store i32 0, ptr %0, align 8, !tbaa !818
  %i.ef = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 125, ptr %i.ef, align 8
  %.sroa.479.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr @_ZN5boost6system6detail17system_cat_holderIvE8instanceE, ptr %.sroa.479.0..sroa_idx, align 8, !tbaa !12
  %.sroa.580.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.ee, ptr %.sroa.580.0..sroa_idx, align 8, !tbaa !13
  br label %bb.ai

bb.y:                                             ; preds = %bb.t
  %i.eg = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.eh = load i64, ptr %i.eg, align 8, !tbaa !74 ; 2 uses
  %i.ei = and i64 %i.eh, 1
  %.not.i.i53 = icmp eq i64 %i.ei, 0
  br i1 %.not.i.i53, label %_ZNK5boost6system10error_codecvbEv.exit55.thread95, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.ej = icmp ne i64 %i.eh, 1
  %i.ek = load i32, ptr %3, align 8
  %i.el = icmp ne i32 %i.ek, 0
  %or.cond104 = select i1 %i.ej, i1 true, i1 %i.el
  br i1 %or.cond104, label %_ZNK5boost6system10error_codecvbEv.exit55.thread, label %_ZNK5boost6system10error_codecvbEv.exit55.thread95, !llvm.loop !852

_ZNK5boost6system10error_codecvbEv.exit55.thread95: ; preds = %bb.z, %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #49
  %i.em = getelementptr inbounds nuw i8, ptr %2, i64 1160
  %i.en = ptrtoint ptr %2 to i64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !853)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !856)
  %i.eo = tail call noalias noundef nonnull dereferenceable(136) ptr @_Znwm(i64 noundef 136) #52 ; 15 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 8
  store i32 1, ptr %i.ep, align 8, !tbaa !136, !noalias !859
  %i.eq = getelementptr inbounds nuw i8, ptr %i.eo, i64 12
  store i32 1, ptr %i.eq, align 4, !tbaa !138, !noalias !859
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN5boost5redis6detail11multiplexer4elemESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.eo, align 8, !tbaa !25, !noalias !859
  %i.er = getelementptr inbounds nuw i8, ptr %i.eo, i64 24
  %i.es = getelementptr inbounds nuw i8, ptr %i.eo, i64 40
  store i64 %i.en, ptr %i.er, align 8, !noalias !859
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.eo, i64 32
  store i64 0, ptr %.sroa.2.0..sroa_idx, align 8, !noalias !859
  store ptr @_ZNSt17_Function_handlerIFvN5boost5redis11any_adapter11parse_eventERKNS1_5resp310basic_nodeISt17basic_string_viewIcSt11char_traitsIcEEEERNS0_6system10error_codeEEZNS1_6detail17make_ping_adapterERNSH_15buffered_loggerEEUlS3_SC_SF_E_E10_M_managerERSt9_Any_dataRKSM_St18_Manager_operation, ptr %i.es, align 8, !tbaa !71, !noalias !859
  %i.et = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %i.eo, i64 16 ; 2 uses
  store ptr %i.em, ptr %i.eu, align 8, !tbaa !161, !noalias !859
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eo, i64 48
  store ptr @_ZNSt17_Function_handlerIFvN5boost5redis11any_adapter11parse_eventERKNS1_5resp310basic_nodeISt17basic_string_viewIcSt11char_traitsIcEEEERNS0_6system10error_codeEEZNS1_6detail17make_ping_adapterERNSH_15buffered_loggerEEUlS3_SC_SF_E_E9_M_invokeERKSt9_Any_dataOS3_SC_SF_, ptr %i.ev, align 8, !tbaa !148, !noalias !859
  %i.ew = getelementptr inbounds nuw i8, ptr %i.eo, i64 88
  %i.ex = getelementptr inbounds nuw i8, ptr %2, i64 1208
  %i.ey = load i64, ptr %i.ex, align 8, !tbaa !374, !noalias !859
  store i64 %i.ey, ptr %i.ew, align 8, !tbaa !375, !noalias !859
  %i.ez = getelementptr inbounds nuw i8, ptr %i.eo, i64 96
  store i32 0, ptr %i.ez, align 8, !tbaa !179, !noalias !859
  %i.fa = getelementptr inbounds nuw i8, ptr %i.eo, i64 104
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.fa, i8 0, i64 32, i1 false), !noalias !859
  store ptr %i.eo, ptr %i.et, align 8, !tbaa !135, !alias.scope !859
  store ptr %i.eu, ptr %9, align 8, !tbaa !172, !alias.scope !859
  %i.fb = getelementptr inbounds nuw i8, ptr %i.eo, i64 56
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.fb, i8 0, i64 16, i1 false)
  %i.fc = getelementptr inbounds nuw i8, ptr %i.eo, i64 72
  store ptr @"_ZNSt17_Function_handlerIFvvEZN5boost5redis6detail10writer_fsm6resumeERNS3_16connection_stateENS1_6system10error_codeEmNS1_4asio17cancellation_typeEE3$_0E10_M_managerERSt9_Any_dataRKSD_St18_Manager_operation", ptr %i.fc, align 8, !tbaa !147
  %i.fd = getelementptr inbounds nuw i8, ptr %i.eo, i64 80
  store ptr @"_ZNSt17_Function_handlerIFvvEZN5boost5redis6detail10writer_fsm6resumeERNS3_16connection_stateENS1_6system10error_codeEmNS1_4asio17cancellation_typeEE3$_0E9_M_invokeERKSt9_Any_data", ptr %i.fd, align 8, !tbaa !147
  %i.fe = getelementptr inbounds nuw i8, ptr %2, i64 688
  invoke void @_ZN5boost5redis6detail11multiplexer3addERKSt10shared_ptrINS2_4elemEE(ptr noundef nonnull align 8 dereferenceable(352) %i.fe, ptr noundef nonnull align 8 dereferenceable(16) %9)
          to label %bb.aa unwind label %_ZN5boost5redis11any_adapterD2Ev.exit62

bb.aa:                                            ; preds = %_ZNK5boost6system10error_codecvbEv.exit55.thread95
  %i.ff = load ptr, ptr %i.et, align 8, !tbaa !135 ; 8 uses
  %.not.i.i58 = icmp eq ptr %i.ff, null
  br i1 %.not.i.i58, label %_ZNSt12__shared_ptrIN5boost5redis6detail11multiplexer4elemELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ff, i64 8 ; 4 uses
  %i.fh = load atomic i64, ptr %i.fg acquire, align 8 ; 2 uses
  %i.fi = icmp eq i64 %i.fh, 4294967297
  %i.fj = trunc i64 %i.fh to i32                  ; 2 uses
  br i1 %i.fi, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  store i32 0, ptr %i.fg, align 8, !tbaa !136
  %i.fk = getelementptr inbounds nuw i8, ptr %i.ff, i64 12
  store i32 0, ptr %i.fk, align 4, !tbaa !138
  %i.fl = load ptr, ptr %i.ff, align 8, !tbaa !25
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fl, i64 16
  %i.fn = load ptr, ptr %i.fm, align 8
  call void %i.fn(ptr noundef nonnull align 8 dereferenceable(16) %i.ff) #49, !inline_history !460
  %i.fo = load ptr, ptr %i.ff, align 8, !tbaa !25
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fo, i64 24
  %i.fq = load ptr, ptr %i.fp, align 8
  call void %i.fq(ptr noundef nonnull align 8 dereferenceable(16) %i.ff) #49, !inline_history !460
  br label %_ZNSt12__shared_ptrIN5boost5redis6detail11multiplexer4elemELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.ad:                                            ; preds = %bb.ab
  %i.fr = load i8, ptr @__libc_single_threaded, align 1, !tbaa !12
  %.not.i.i.i59 = icmp eq i8 %i.fr, 0
  br i1 %.not.i.i.i59, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.fs = add nsw i32 %i.fj, -1
  store i32 %i.fs, ptr %i.fg, align 8, !tbaa !140
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.af:                                            ; preds = %bb.ad
  %i.ft = atomicrmw volatile add ptr %i.fg, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.af, %bb.ae
  %.0.i.i.i.i60 = phi i32 [ %i.fj, %bb.ae ], [ %i.ft, %bb.af ]
  %i.fu = icmp eq i32 %.0.i.i.i.i60, 1
  br i1 %i.fu, label %bb.ag, label %_ZNSt12__shared_ptrIN5boost5redis6detail11multiplexer4elemELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !141

bb.ag:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ff) #49
  br label %_ZNSt12__shared_ptrIN5boost5redis6detail11multiplexer4elemELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5boost5redis6detail11multiplexer4elemELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.aa, %bb.ac, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #49
  br label %_ZNK5boost6system10error_codecvbEv.exit55.thread, !llvm.loop !852

_ZN5boost5redis11any_adapterD2Ev.exit62:          ; preds = %_ZNK5boost6system10error_codecvbEv.exit55.thread95
  %i.fv = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIN5boost5redis6detail11multiplexer4elemELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %9) #49
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #49
  resume { ptr, i32 } %i.fv

bb.ah:                                            ; preds = %bb.a
  %i.fw = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.fw, i8 0, i64 24, i1 false)
  store i32 0, ptr %0, align 8, !tbaa !818
  br label %bb.ai

bb.ai:                                            ; preds = %.thread91, %bb.ah, %bb.x, %bb.s, %.thread
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN5boost5redis5resp36to_intERmSt17basic_string_viewIcSt11char_traitsIcEERNS_6system10error_codeE(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(8) %0, i64 %1, ptr nofree readonly captures(address) %2, ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(24) %3) local_unnamed_addr #7 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 %1 ; 2 uses
  %.not36.i.i = icmp samesign eq i64 %1, 0
  br i1 %.not36.i.i, label %_ZNSt8__detail22__from_chars_pow2_baseILb1EmEEbRPKcS2_RT0_i.exit.thread.i, label %.lr.ph.i36.i

.lr.ph.i36.i:                                     ; preds = %bb.a, %.critedge.i37.i
  %.364.i = phi ptr [ %i.l, %.critedge.i37.i ], [ %2, %bb.a ] ; 3 uses
  %.9.i = phi i64 [ %.10.i, %.critedge.i37.i ], [ 0, %bb.a ] ; 4 uses
  %.02237.i.i = phi i32 [ %i.d, %.critedge.i37.i ], [ 64, %bb.a ]
  %i.b = load i8, ptr %.364.i, align 1, !tbaa !12
  %i.c = add i8 %i.b, -48                         ; 3 uses
  %.not30.i.i = icmp ult i8 %i.c, 10
  br i1 %.not30.i.i, label %bb.b, label %_ZNSt8__detail22__from_chars_pow2_baseILb1EmEEbRPKcS2_RT0_i.exit.i

bb.b:                                             ; preds = %.lr.ph.i36.i
  %i.d = add i32 %.02237.i.i, -4                  ; 2 uses
  %i.e = icmp sgt i32 %i.d, -1
  br i1 %i.e, label %bb.c, label %bb.d, !prof !336

bb.c:                                             ; preds = %bb.b
  %i.f = mul i64 %.9.i, 10
  %i.g = zext nneg i8 %i.c to i64
  %i.h = add i64 %i.f, %i.g
  br label %.critedge.i37.i

bb.d:                                             ; preds = %bb.b
  %4 = icmp ugt i64 %.9.i, 1844674407370955161
  br i1 %4, label %_ZNSt8__detail22__from_chars_pow2_baseILb1EmEEbRPKcS2_RT0_i.exit.thread.i, label %.split.i.i, !prof !860

.split.i.i:                                       ; preds = %bb.d
  %5 = mul nuw i64 %.9.i, 10                      ; 2 uses
  %i.i = zext nneg i8 %i.c to i64                 ; 2 uses
  %i.j = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %5, i64 %i.i)
  %i.k = extractvalue { i64, i1 } %i.j, 1
  %6 = add nuw i64 %5, %i.i
  br i1 %i.k, label %_ZNSt8__detail22__from_chars_pow2_baseILb1EmEEbRPKcS2_RT0_i.exit.thread.i, label %.critedge.i37.i, !prof !141

.critedge.i37.i:                                  ; preds = %.split.i.i, %bb.c
  %.10.i = phi i64 [ %i.h, %bb.c ], [ %6, %.split.i.i ] ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.364.i, i64 1 ; 2 uses
  %.not.i.i = icmp eq ptr %i.l, %i.a
  br i1 %.not.i.i, label %_ZNSt8__detail22__from_chars_pow2_baseILb1EmEEbRPKcS2_RT0_i.exit.i, label %.lr.ph.i36.i, !llvm.loop !861

_ZNSt8__detail22__from_chars_pow2_baseILb1EmEEbRPKcS2_RT0_i.exit.i: ; preds = %.critedge.i37.i, %.lr.ph.i36.i
  %.061.i = phi ptr [ %.364.i, %.lr.ph.i36.i ], [ %i.a, %.critedge.i37.i ]
  %.0.i = phi i64 [ %.9.i, %.lr.ph.i36.i ], [ %.10.i, %.critedge.i37.i ]
  %.not = icmp eq ptr %.061.i, %2
  br i1 %.not, label %_ZNSt8__detail22__from_chars_pow2_baseILb1EmEEbRPKcS2_RT0_i.exit.thread.i, label %_ZSt10from_charsImENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES2_IS6_sES2_IS6_iES2_IS6_lES2_IS6_xES2_IS6_nEEES1_IJS2_IS6_hES2_IS6_tES2_IS6_jES2_IS6_mES2_IS6_yES2_IS6_oEEES2_IcS6_EEE5valueESt17from_chars_resultE4typeEPKcSQ_RS4_i.exit, !prof !862

_ZSt10from_charsImENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES2_IS6_sES2_IS6_iES2_IS6_lES2_IS6_xES2_IS6_nEEES1_IJS2_IS6_hES2_IS6_tES2_IS6_jES2_IS6_mES2_IS6_yES2_IS6_oEEES2_IcS6_EEE5valueESt17from_chars_resultE4typeEPKcSQ_RS4_i.exit: ; preds = %_ZNSt8__detail22__from_chars_pow2_baseILb1EmEEbRPKcS2_RT0_i.exit.i
  store i64 %.0.i, ptr %0, align 8, !tbaa !13
  br label %bb.h

_ZNSt8__detail22__from_chars_pow2_baseILb1EmEEbRPKcS2_RT0_i.exit.thread.i: ; preds = %bb.d, %.split.i.i, %bb.a, %_ZNSt8__detail22__from_chars_pow2_baseILb1EmEEbRPKcS2_RT0_i.exit.i
  %i.m = load atomic i8, ptr @_ZGVZN5boost5redis6detail8categoryEvE8instance acquire, align 8, !noalias !863
  %i.n = icmp eq i8 %i.m, 0
  br i1 %i.n, label %bb.e, label %_ZN5boost5redis6detail8categoryEv.exit.i.i, !prof !35

bb.e:                                             ; preds = %_ZNSt8__detail22__from_chars_pow2_baseILb1EmEEbRPKcS2_RT0_i.exit.thread.i
  %i.o = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN5boost5redis6detail8categoryEvE8instance) #49, !noalias !863
  %.not.i.i.i = icmp eq i32 %i.o, 0
  br i1 %.not.i.i.i, label %_ZN5boost5redis6detail8categoryEv.exit.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN5boost5redis6detail8categoryEvE8instance) #49, !noalias !863
  br label %_ZN5boost5redis6detail8categoryEv.exit.i.i

_ZN5boost5redis6detail8categoryEv.exit.i.i:       ; preds = %bb.f, %bb.e, %_ZNSt8__detail22__from_chars_pow2_baseILb1EmEEbRPKcS2_RT0_i.exit.thread.i
  %i.p = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost5redis6detail8categoryEvE8instance, i64 8), align 8, !tbaa !15, !noalias !863
  %i.q = and i64 %i.p, -2
  %switch.i.i.i.i = icmp eq i64 %i.q, -5572340897628102704
  br i1 %switch.i.i.i.i, label %_ZN5boost6system10error_codeC2INS_5redis5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS5_EE5valuesr3std18is_error_code_enumIS5_EE5valueEvE4typeE.exit.thread, label %_ZN5boost6system10error_codeC2INS_5redis5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS5_EE5valuesr3std18is_error_code_enumIS5_EE5valueEvE4typeE.exit

_ZN5boost6system10error_codeC2INS_5redis5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS5_EE5valuesr3std18is_error_code_enumIS5_EE5valueEvE4typeE.exit: ; preds = %_ZN5boost5redis6detail8categoryEv.exit.i.i
  %i.r = load ptr, ptr @_ZZN5boost5redis6detail8categoryEvE8instance, align 8, !tbaa !25, !noalias !863
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 48
  %i.t = load ptr, ptr %i.s, align 8, !noalias !863
  %i.u = tail call noundef zeroext i1 %i.t(ptr noundef nonnull align 8 dereferenceable(52) @_ZZN5boost5redis6detail8categoryEvE8instance, i32 noundef 2) #49, !noalias !863, !inline_history !177
  br i1 %i.u, label %_ZN5boost6system10error_codeC2INS_5redis5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS5_EE5valuesr3std18is_error_code_enumIS5_EE5valueEvE4typeE.exit.thread, label %bb.g

_ZN5boost6system10error_codeC2INS_5redis5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS5_EE5valuesr3std18is_error_code_enumIS5_EE5valueEvE4typeE.exit.thread: ; preds = %_ZN5boost5redis6detail8categoryEv.exit.i.i, %_ZN5boost6system10error_codeC2INS_5redis5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS5_EE5valuesr3std18is_error_code_enumIS5_EE5valueEvE4typeE.exit
  br label %bb.g

bb.g:                                             ; preds = %_ZN5boost6system10error_codeC2INS_5redis5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS5_EE5valuesr3std18is_error_code_enumIS5_EE5valueEvE4typeE.exit, %_ZN5boost6system10error_codeC2INS_5redis5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS5_EE5valuesr3std18is_error_code_enumIS5_EE5valueEvE4typeE.exit.thread
  %i.v = phi i64 [ 3, %_ZN5boost6system10error_codeC2INS_5redis5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS5_EE5valuesr3std18is_error_code_enumIS5_EE5valueEvE4typeE.exit.thread ], [ 2, %_ZN5boost6system10error_codeC2INS_5redis5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS5_EE5valuesr3std18is_error_code_enumIS5_EE5valueEvE4typeE.exit ]
  store i64 2, ptr %3, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr @_ZZN5boost5redis6detail8categoryEvE8instance, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !12
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i64 %i.v, ptr %.sroa.6.0..sroa_idx, align 8, !tbaa !13
  br label %bb.h

bb.h:                                             ; preds = %_ZSt10from_charsImENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES2_IS6_sES2_IS6_iES2_IS6_lES2_IS6_xES2_IS6_nEEES1_IJS2_IS6_hES2_IS6_tES2_IS6_jES2_IS6_mES2_IS6_yES2_IS6_oEEES2_IcS6_EEE5valueESt17from_chars_resultE4typeEPKcSQ_RS4_i.exit, %bb.g
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define hidden void @_ZN5boost5redis5resp36parserC2Ev(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(80) initializes((0, 68), (72, 80)) %0) unnamed_addr #8 align 2 {
bb.a:
  store i64 0, ptr %0, align 8, !tbaa !302
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.a, ptr noundef nonnull align 8 dereferenceable(48) @_ZN5boost5redis5resp36parser13default_sizesE, i64 48, i1 false), !tbaa.struct !303
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 -1, ptr %i.b, align 8, !tbaa !304
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i32 17, ptr %i.c, align 8, !tbaa !305
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i64 0, ptr %i.d, align 8, !tbaa !301
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden noundef zeroext i1 @_ZNK5boost5redis5resp36parser4doneEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(80) %0) local_unnamed_addr #9 align 2 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !tbaa !302
  %i.b = icmp eq i64 %i.a, 0
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.d = load i32, ptr %i.c, align 8
  %i.e = icmp eq i32 %i.d, 17
  %or.cond = select i1 %i.b, i1 %i.e, i1 false
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.g = load i64, ptr %i.f, align 8, !tbaa !301
  %i.h = icmp ne i64 %i.g, 0
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.i = phi i1 [ %i.h, %bb.b ], [ false, %bb.a ]
  ret i1 %i.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define hidden void @_ZN5boost5redis5resp36parser11commit_elemEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(80) %0) local_unnamed_addr #20 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i64, ptr %0, align 8, !tbaa !302    ; 2 uses
  %i.c = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.b ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !13
  %i.e = add i64 %i.d, -1                         ; 2 uses
  store i64 %i.e, ptr %i.c, align 8, !tbaa !13
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %i.g = phi i64 [ %i.l, %.lr.ph ], [ %i.b, %bb.a ] ; 2 uses
  %i.h = add i64 %i.g, -1
  store i64 %i.h, ptr %0, align 8, !tbaa !302
  %i.i = getelementptr [8 x i8], ptr %0, i64 %i.g ; 2 uses
  %i.j = load i64, ptr %i.i, align 8, !tbaa !13
  %i.k = add i64 %i.j, -1
  store i64 %i.k, ptr %i.i, align 8, !tbaa !13
  %i.l = load i64, ptr %0, align 8, !tbaa !302    ; 2 uses
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.l
  %i.n = load i64, ptr %i.m, align 8, !tbaa !13
  %i.o = icmp eq i64 %i.n, 0
  br i1 %i.o, label %.lr.ph, label %._crit_edge, !llvm.loop !866

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN5boost5redis5resp36parser7consumeESt17basic_string_viewIcSt11char_traitsIcEERNS_6system10error_codeE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.std::optional.104") align 8 captures(none) %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(80) %1, i64 %2, ptr %3, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(24) %4) local_unnamed_addr #7 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"struct.boost::redis::resp3::basic_node", align 8 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 3 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !305  ; 2 uses
  %cond = icmp eq i32 %i.b, 17
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 3 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !301  ; 4 uses
  br i1 %cond, label %bb.b, label %._crit_edge

bb.b:                                             ; preds = %bb.a
  %.not.i.i = icmp ult i64 %i.d, %2
  br i1 %.not.i.i, label %bb.c, label %.thread

bb.c:                                             ; preds = %bb.b
  %i.e = sub nuw i64 %2, %i.d                     ; 2 uses
  %.not2531.i.i = icmp ult i64 %i.e, 2
  br i1 %.not2531.i.i, label %.thread, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 %2
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 %i.d ; 2 uses
  %i.h = ptrtoint ptr %i.f to i64
  br label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i

_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i:     ; preds = %bb.d, %.lr.ph.i.i
  %.033.i.i = phi i64 [ %i.e, %.lr.ph.i.i ], [ %i.p, %bb.d ]
  %.02032.i.i = phi ptr [ %i.g, %.lr.ph.i.i ], [ %i.n, %bb.d ]
  %.reass.reass.i.reass.reass.i = add i64 %.033.i.i, -1
  %i.i = tail call ptr @memchr(ptr noundef %.02032.i.i, i32 noundef 13, i64 noundef %.reass.reass.i.reass.reass.i) #49 ; 4 uses
  %.not26.i.i = icmp eq ptr %i.i, null
  br i1 %.not26.i.i, label %.thread, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i:   ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i
  %i.j = load i16, ptr %i.i, align 1
  %i.k = icmp ne i16 %i.j, 2573
  %i.l = zext i1 %i.k to i32
  %i.m = icmp eq i32 %i.l, 0
  br i1 %i.m, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findES2_m.exit, label %bb.d

bb.d:                                             ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i
  %i.n = getelementptr inbounds nuw i8, ptr %i.i, i64 1 ; 2 uses
  %i.o = ptrtoint ptr %i.n to i64
  %i.p = sub i64 %i.h, %i.o                       ; 2 uses
  %.not25.i.i = icmp ult i64 %i.p, 2
  br i1 %.not25.i.i, label %.thread, label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i, !llvm.loop !867

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findES2_m.exit: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i
  %i.q = ptrtoint ptr %i.i to i64
  %i.r = ptrtoint ptr %3 to i64
  %i.s = sub i64 %i.q, %i.r                       ; 3 uses
  %i.t = icmp eq i64 %i.s, -1
  br i1 %i.t, label %.thread, label %bb.e

.thread:                                          ; preds = %bb.d, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findES2_m.exit, %bb.b, %bb.c
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i8 0, ptr %i.u, align 8, !tbaa !317
  br label %bb.n

bb.e:                                             ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findES2_m.exit
  %i.v = load i8, ptr %i.g, align 1, !tbaa !12
  %i.w = tail call noundef i32 @_ZN5boost5redis5resp37to_typeEc(i8 noundef signext %i.v) #49
  %i.x = load i64, ptr %i.c, align 8, !tbaa !301  ; 2 uses
  %i.y = add i64 %i.x, 1                          ; 4 uses
  %i.z = icmp ugt i64 %i.y, %2
  br i1 %i.z, label %.invoke, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.aa = xor i64 %i.x, -1
  %i.ab = add i64 %i.s, %i.aa
  %i.ac = sub nuw i64 %2, %i.y
  %.sroa.speculated.i = tail call i64 @llvm.umin.i64(i64 %i.ac, i64 %i.ab)
  %i.ad = getelementptr inbounds nuw i8, ptr %3, i64 %i.y
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #49
  invoke void @_ZN5boost5redis5resp36parser12consume_implENS1_4typeESt17basic_string_viewIcSt11char_traitsIcEERNS_6system10error_codeE(ptr dead_on_unwind nonnull writable sret(%"struct.boost::redis::resp3::basic_node") align 8 %5, ptr noundef nonnull align 8 dereferenceable(80) %1, i32 noundef %i.w, i64 %.sroa.speculated.i, ptr %i.ad, ptr noundef nonnull align 8 dereferenceable(24) %4)
          to label %bb.g unwind label %bb.o

bb.g:                                             ; preds = %bb.f
  %i.ae = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !74 ; 2 uses
  %i.ag = and i64 %i.af, 1
  %.not.i.i17 = icmp eq i64 %i.ag, 0
  br i1 %.not.i.i17, label %_ZNK5boost6system10error_codecvbEv.exit.thread36, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ah = icmp eq i64 %i.af, 1
  br i1 %i.ah, label %_ZNK5boost6system10error_codecvbEv.exit, label %.thread39

_ZNK5boost6system10error_codecvbEv.exit:          ; preds = %bb.h
  %i.ai = load i32, ptr %4, align 8, !tbaa !180
  %.not = icmp eq i32 %i.ai, 0
  br i1 %.not, label %_ZNK5boost6system10error_codecvbEv.exit.thread36, label %.thread39

_ZNK5boost6system10error_codecvbEv.exit.thread36: ; preds = %bb.g, %_ZNK5boost6system10error_codecvbEv.exit
  %i.aj = add i64 %i.s, 2                         ; 2 uses
  store i64 %i.aj, ptr %i.c, align 8, !tbaa !301
  %i.ak = load i32, ptr %i.a, align 8, !tbaa !305 ; 2 uses
  %.not41 = icmp eq i32 %i.ak, 17
  br i1 %.not41, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_ZNK5boost6system10error_codecvbEv.exit.thread36
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(40) %5, i64 40, i1 false), !tbaa.struct !343
  br label %.thread39

.thread39:                                        ; preds = %_ZNK5boost6system10error_codecvbEv.exit, %bb.h, %bb.i
  %.sink = phi i8 [ 1, %bb.i ], [ 0, %bb.h ], [ 0, %_ZNK5boost6system10error_codecvbEv.exit ]
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i8 %.sink, ptr %i.al, align 8, !tbaa !317
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #49
  br label %bb.n

bb.j:                                             ; preds = %_ZNK5boost6system10error_codecvbEv.exit.thread36
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #49
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.a, %bb.j
  %i.am = phi i32 [ %i.ak, %bb.j ], [ %i.b, %bb.a ]
  %i.an = phi i64 [ %i.aj, %bb.j ], [ %i.d, %bb.a ] ; 4 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !304 ; 2 uses
  %i.aq = add i64 %i.ap, 2                        ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  %i.as = sub i64 %2, %i.an                       ; 2 uses
  %i.at = icmp ult i64 %i.as, %i.aq
  br i1 %i.at, label %bb.k, label %bb.l

bb.k:                                             ; preds = %._crit_edge
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i8 0, ptr %i.au, align 8, !tbaa !317
  br label %bb.n

bb.l:                                             ; preds = %._crit_edge
  %i.av = icmp ugt i64 %i.an, %2
  br i1 %i.av, label %.invoke, label %bb.m

.invoke:                                          ; preds = %bb.l, %bb.e
  %i.aw = phi i64 [ %i.y, %bb.e ], [ %i.an, %bb.l ]
  invoke void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.221, ptr noundef nonnull @.str.220, i64 noundef %i.aw, i64 noundef %2) #51
          to label %.cont unwind label %bb.o

.cont:                                            ; preds = %.invoke
  unreachable

bb.m:                                             ; preds = %bb.l
  %.sroa.speculated.i18 = tail call i64 @llvm.umin.i64(i64 %i.as, i64 %i.ap)
  %i.ax = getelementptr inbounds nuw i8, ptr %3, i64 %i.an
  %i.ay = load i64, ptr %1, align 8, !tbaa !302   ; 3 uses
  store i32 17, ptr %i.a, align 8, !tbaa !305
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %i.az, i64 %i.ay ; 2 uses
  %i.bb = load i64, ptr %i.ba, align 8, !tbaa !13
  %i.bc = add i64 %i.bb, -1                       ; 2 uses
  store i64 %i.bc, ptr %i.ba, align 8, !tbaa !13
  %i.bd = icmp eq i64 %i.bc, 0
  br i1 %i.bd, label %.lr.ph.i, label %_ZN5boost5redis5resp36parser11commit_elemEv.exit

.lr.ph.i:                                         ; preds = %bb.m, %.lr.ph.i
  %i.be = phi i64 [ %i.bj, %.lr.ph.i ], [ %i.ay, %bb.m ] ; 2 uses
  %i.bf = add i64 %i.be, -1
  store i64 %i.bf, ptr %1, align 8, !tbaa !302
  %i.bg = getelementptr [8 x i8], ptr %1, i64 %i.be ; 2 uses
  %i.bh = load i64, ptr %i.bg, align 8, !tbaa !13
  %i.bi = add i64 %i.bh, -1
  store i64 %i.bi, ptr %i.bg, align 8, !tbaa !13
  %i.bj = load i64, ptr %1, align 8, !tbaa !302   ; 2 uses
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %i.az, i64 %i.bj
  %i.bl = load i64, ptr %i.bk, align 8, !tbaa !13
  %i.bm = icmp eq i64 %i.bl, 0
  br i1 %i.bm, label %.lr.ph.i, label %_ZN5boost5redis5resp36parser11commit_elemEv.exit, !llvm.loop !866

_ZN5boost5redis5resp36parser11commit_elemEv.exit: ; preds = %.lr.ph.i, %bb.m
  %i.bn = load i64, ptr %i.ar, align 8, !tbaa !301
  %i.bo = add i64 %i.bn, %i.aq
  store i64 %i.bo, ptr %i.ar, align 8, !tbaa !301
  store i32 %i.am, ptr %0, align 8, !tbaa !344
  %.sroa.424.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 1, ptr %.sroa.424.0..sroa_idx, align 8, !tbaa !13
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.ay, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !13
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.speculated.i18, ptr %.sroa.6.0..sroa_idx, align 8, !tbaa !13
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.ax, ptr %.sroa.7.0..sroa_idx, align 8, !tbaa !316
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i8 1, ptr %i.bp, align 8, !tbaa !317
  br label %bb.n

bb.n:                                             ; preds = %.thread39, %.thread, %bb.k, %_ZN5boost5redis5resp36parser11commit_elemEv.exit
  ret void

bb.o:                                             ; preds = %.invoke, %bb.f
  %i.bq = landingpad { ptr, i32 }
          catch ptr null
  %i.br = extractvalue { ptr, i32 } %i.bq, 0
  tail call void @__clang_call_terminate(ptr %i.br) #50
  unreachable
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN5boost5redis5resp36parser12consume_implENS1_4typeESt17basic_string_viewIcSt11char_traitsIcEERNS_6system10error_codeE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"struct.boost::redis::resp3::basic_node") align 8 captures(none) %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(80) %1, i32 noundef %2, i64 %3, ptr %4, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(24) %5) local_unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"class.boost::system::error_code", align 8 ; 4 uses
  switch i32 %2, label %bb.ay [
    i32 16, label %bb.b
    i32 12, label %bb.l
    i32 13, label %bb.l
    i32 14, label %bb.l
    i32 9, label %bb.w
    i32 8, label %bb.ad
    i32 10, label %bb.ad
    i32 7, label %bb.ad
    i32 6, label %bb.ai
    i32 5, label %bb.ai
    i32 11, label %bb.ai
    i32 1, label %bb.aj
    i32 2, label %bb.aj
    i32 0, label %bb.aj
    i32 4, label %bb.aj
    i32 3, label %bb.aj
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 %3 ; 2 uses
  %.not36.i.i.i = icmp samesign eq i64 %3, 0
  br i1 %.not36.i.i.i, label %_ZNSt8__detail22__from_chars_pow2_baseILb1EmEEbRPKcS2_RT0_i.exit.thread.i.i, label %.lr.ph.i36.i.i

.lr.ph.i36.i.i:                                   ; preds = %bb.b, %.critedge.i37.i.i
  %.364.i.i = phi ptr [ %i.m, %.critedge.i37.i.i ], [ %4, %bb.b ] ; 3 uses
  %.9.i.i = phi i64 [ %.10.i.i, %.critedge.i37.i.i ], [ 0, %bb.b ] ; 4 uses
  %.02237.i.i.i = phi i32 [ %i.e, %.critedge.i37.i.i ], [ 64, %bb.b ]
  %i.c = load i8, ptr %.364.i.i, align 1, !tbaa !12
  %i.d = add i8 %i.c, -48                         ; 3 uses
  %.not30.i.i.i = icmp ult i8 %i.d, 10
  br i1 %.not30.i.i.i, label %bb.c, label %_ZNSt8__detail22__from_chars_pow2_baseILb1EmEEbRPKcS2_RT0_i.exit.i.i

bb.c:                                             ; preds = %.lr.ph.i36.i.i
  %i.e = add i32 %.02237.i.i.i, -4                ; 2 uses
  %i.f = icmp sgt i32 %i.e, -1
  br i1 %i.f, label %bb.d, label %bb.e, !prof !336

bb.d:                                             ; preds = %bb.c
  %i.g = mul i64 %.9.i.i, 10
  %i.h = zext nneg i8 %i.d to i64
  %i.i = add i64 %i.g, %i.h
  br label %.critedge.i37.i.i

bb.e:                                             ; preds = %bb.c
  %7 = icmp ugt i64 %.9.i.i, 1844674407370955161
  br i1 %7, label %_ZNSt8__detail22__from_chars_pow2_baseILb1EmEEbRPKcS2_RT0_i.exit.thread.i.i, label %.split.i.i.i, !prof !860

.split.i.i.i:                                     ; preds = %bb.e
  %8 = mul nuw i64 %.9.i.i, 10                    ; 2 uses
  %i.j = zext nneg i8 %i.d to i64                 ; 2 uses
  %i.k = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %8, i64 %i.j)
  %i.l = extractvalue { i64, i1 } %i.k, 1
  %9 = add nuw i64 %8, %i.j
  br i1 %i.l, label %_ZNSt8__detail22__from_chars_pow2_baseILb1EmEEbRPKcS2_RT0_i.exit.thread.i.i, label %.critedge.i37.i.i, !prof !141

.critedge.i37.i.i:                                ; preds = %.split.i.i.i, %bb.d
  %.10.i.i = phi i64 [ %i.i, %bb.d ], [ %9, %.split.i.i.i ] ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.364.i.i, i64 1 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.m, %i.b
  br i1 %.not.i.i.i, label %_ZNSt8__detail22__from_chars_pow2_baseILb1EmEEbRPKcS2_RT0_i.exit.i.i, label %.lr.ph.i36.i.i, !llvm.loop !861

_ZNSt8__detail22__from_chars_pow2_baseILb1EmEEbRPKcS2_RT0_i.exit.i.i: ; preds = %.critedge.i37.i.i, %.lr.ph.i36.i.i
  %.061.i.i = phi ptr [ %.364.i.i, %.lr.ph.i36.i.i ], [ %i.b, %.critedge.i37.i.i ]
  %.0.i.i = phi i64 [ %.9.i.i, %.lr.ph.i36.i.i ], [ %.10.i.i, %.critedge.i37.i.i ]
  %.not.i = icmp eq ptr %.061.i.i, %4
  br i1 %.not.i, label %_ZNSt8__detail22__from_chars_pow2_baseILb1EmEEbRPKcS2_RT0_i.exit.thread.i.i, label %_ZSt10from_charsImENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES2_IS6_sES2_IS6_iES2_IS6_lES2_IS6_xES2_IS6_nEEES1_IJS2_IS6_hES2_IS6_tES2_IS6_jES2_IS6_mES2_IS6_yES2_IS6_oEEES2_IcS6_EEE5valueESt17from_chars_resultE4typeEPKcSQ_RS4_i.exit.i, !prof !862

_ZSt10from_charsImENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES2_IS6_sES2_IS6_iES2_IS6_lES2_IS6_xES2_IS6_nEEES1_IJS2_IS6_hES2_IS6_tES2_IS6_jES2_IS6_mES2_IS6_yES2_IS6_oEEES2_IcS6_EEE5valueESt17from_chars_resultE4typeEPKcSQ_RS4_i.exit.i: ; preds = %_ZNSt8__detail22__from_chars_pow2_baseILb1EmEEbRPKcS2_RT0_i.exit.i.i
  store i64 %.0.i.i, ptr %i.a, align 8, !tbaa !13
  %.phi.trans.insert187 = getelementptr inbounds nuw i8, ptr %5, i64 16
  %.pre188 = load i64, ptr %.phi.trans.insert187, align 8, !tbaa !74
  br label %_ZN5boost5redis5resp36to_intERmSt17basic_string_viewIcSt11char_traitsIcEERNS_6system10error_codeE.exit

_ZNSt8__detail22__from_chars_pow2_baseILb1EmEEbRPKcS2_RT0_i.exit.thread.i.i: ; preds = %.split.i.i.i, %bb.e, %_ZNSt8__detail22__from_chars_pow2_baseILb1EmEEbRPKcS2_RT0_i.exit.i.i, %bb.b
  %i.n = load atomic i8, ptr @_ZGVZN5boost5redis6detail8categoryEvE8instance acquire, align 8, !noalias !868
  %i.o = icmp eq i8 %i.n, 0
  br i1 %i.o, label %bb.f, label %_ZN5boost5redis6detail8categoryEv.exit.i.i.i, !prof !35

bb.f:                                             ; preds = %_ZNSt8__detail22__from_chars_pow2_baseILb1EmEEbRPKcS2_RT0_i.exit.thread.i.i
  %i.p = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN5boost5redis6detail8categoryEvE8instance) #49, !noalias !868
  %.not.i.i.i.i = icmp eq i32 %i.p, 0
  br i1 %.not.i.i.i.i, label %_ZN5boost5redis6detail8categoryEv.exit.i.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN5boost5redis6detail8categoryEvE8instance) #49, !noalias !868
  br label %_ZN5boost5redis6detail8categoryEv.exit.i.i.i

_ZN5boost5redis6detail8categoryEv.exit.i.i.i:     ; preds = %bb.g, %bb.f, %_ZNSt8__detail22__from_chars_pow2_baseILb1EmEEbRPKcS2_RT0_i.exit.thread.i.i
  %i.q = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost5redis6detail8categoryEvE8instance, i64 8), align 8, !tbaa !15, !noalias !868
  %i.r = and i64 %i.q, -2
  %switch.i.i.i.i.i = icmp eq i64 %i.r, -5572340897628102704
  br i1 %switch.i.i.i.i.i, label %_ZN5boost6system10error_codeC2INS_5redis5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS5_EE5valuesr3std18is_error_code_enumIS5_EE5valueEvE4typeE.exit.thread.i, label %_ZN5boost6system10error_codeC2INS_5redis5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS5_EE5valuesr3std18is_error_code_enumIS5_EE5valueEvE4typeE.exit.i

_ZN5boost6system10error_codeC2INS_5redis5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS5_EE5valuesr3std18is_error_code_enumIS5_EE5valueEvE4typeE.exit.i: ; preds = %_ZN5boost5redis6detail8categoryEv.exit.i.i.i
  %i.s = load ptr, ptr @_ZZN5boost5redis6detail8categoryEvE8instance, align 8, !tbaa !25, !noalias !868
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 48
  %i.u = load ptr, ptr %i.t, align 8, !noalias !868
  %i.v = tail call noundef zeroext i1 %i.u(ptr noundef nonnull align 8 dereferenceable(52) @_ZZN5boost5redis6detail8categoryEvE8instance, i32 noundef 2) #49, !noalias !868, !inline_history !871
  br i1 %i.v, label %_ZN5boost6system10error_codeC2INS_5redis5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS5_EE5valuesr3std18is_error_code_enumIS5_EE5valueEvE4typeE.exit.thread.i, label %bb.h

_ZN5boost6system10error_codeC2INS_5redis5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS5_EE5valuesr3std18is_error_code_enumIS5_EE5valueEvE4typeE.exit.thread.i: ; preds = %_ZN5boost6system10error_codeC2INS_5redis5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS5_EE5valuesr3std18is_error_code_enumIS5_EE5valueEvE4typeE.exit.i, %_ZN5boost5redis6detail8categoryEv.exit.i.i.i
  br label %bb.h

bb.h:                                             ; preds = %_ZN5boost6system10error_codeC2INS_5redis5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS5_EE5valuesr3std18is_error_code_enumIS5_EE5valueEvE4typeE.exit.thread.i, %_ZN5boost6system10error_codeC2INS_5redis5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS5_EE5valuesr3std18is_error_code_enumIS5_EE5valueEvE4typeE.exit.i
  %i.w = phi i64 [ 3, %_ZN5boost6system10error_codeC2INS_5redis5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS5_EE5valuesr3std18is_error_code_enumIS5_EE5valueEvE4typeE.exit.thread.i ], [ 2, %_ZN5boost6system10error_codeC2INS_5redis5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS5_EE5valuesr3std18is_error_code_enumIS5_EE5valueEvE4typeE.exit.i ] ; 2 uses
  store i64 2, ptr %5, align 8
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr @_ZZN5boost5redis6detail8categoryEvE8instance, ptr %.sroa.5.0..sroa_idx.i, align 8, !tbaa !12
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i64 %i.w, ptr %.sroa.6.0..sroa_idx.i, align 8, !tbaa !13
  br label %_ZN5boost5redis5resp36to_intERmSt17basic_string_viewIcSt11char_traitsIcEERNS_6system10error_codeE.exit

_ZN5boost5redis5resp36to_intERmSt17basic_string_viewIcSt11char_traitsIcEERNS_6system10error_codeE.exit: ; preds = %_ZSt10from_charsImENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES2_IS6_sES2_IS6_iES2_IS6_lES2_IS6_xES2_IS6_nEEES1_IJS2_IS6_hES2_IS6_tES2_IS6_jES2_IS6_mES2_IS6_yES2_IS6_oEEES2_IcS6_EEE5valueESt17from_chars_resultE4typeEPKcSQ_RS4_i.exit.i, %bb.h
  %i.x = phi i64 [ %.pre188, %_ZSt10from_charsImENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES2_IS6_sES2_IS6_iES2_IS6_lES2_IS6_xES2_IS6_nEEES1_IJS2_IS6_hES2_IS6_tES2_IS6_jES2_IS6_mES2_IS6_yES2_IS6_oEEES2_IcS6_EEE5valueESt17from_chars_resultE4typeEPKcSQ_RS4_i.exit.i ], [ %i.w, %bb.h ] ; 2 uses
  %i.y = and i64 %i.x, 1
  %.not.i.i = icmp eq i64 %i.y, 0
  br i1 %.not.i.i, label %_ZNK5boost6system10error_codecvbEv.exit.thread165, label %bb.i

bb.i:                                             ; preds = %_ZN5boost5redis5resp36to_intERmSt17basic_string_viewIcSt11char_traitsIcEERNS_6system10error_codeE.exit
  %i.z = icmp eq i64 %i.x, 1
  br i1 %i.z, label %_ZNK5boost6system10error_codecvbEv.exit, label %_ZNK5boost6system10error_codecvbEv.exit.thread

_ZNK5boost6system10error_codecvbEv.exit:          ; preds = %bb.i
  %i.aa = load i32, ptr %5, align 8, !tbaa !180
  %.not178 = icmp eq i32 %i.aa, 0
  br i1 %.not178, label %_ZNK5boost6system10error_codecvbEv.exit.thread165, label %_ZNK5boost6system10error_codecvbEv.exit.thread

_ZNK5boost6system10error_codecvbEv.exit.thread:   ; preds = %bb.i, %_ZNK5boost6system10error_codecvbEv.exit
  store i32 17, ptr %0, align 8, !tbaa !310
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ab, i8 0, i64 32, i1 false)
  br label %.critedge

_ZNK5boost6system10error_codecvbEv.exit.thread165: ; preds = %_ZN5boost5redis5resp36to_intERmSt17basic_string_viewIcSt11char_traitsIcEERNS_6system10error_codeE.exit, %_ZNK5boost6system10error_codecvbEv.exit
  %i.ac = load i64, ptr %i.a, align 8, !tbaa !304
  %i.ad = icmp eq i64 %i.ac, 0
  br i1 %i.ad, label %bb.j, label %bb.k

bb.j:                                             ; preds = %_ZNK5boost6system10error_codecvbEv.exit.thread165
  %i.ae = load i64, ptr %1, align 8, !tbaa !302   ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %i.ae
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 64
  store i32 17, ptr %i.ah, align 8, !tbaa !305
  store i64 0, ptr %i.ag, align 8, !tbaa !13
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.j, %.lr.ph.i
  %i.ai = phi i64 [ %i.an, %.lr.ph.i ], [ %i.ae, %bb.j ] ; 2 uses
  %i.aj = add i64 %i.ai, -1
  store i64 %i.aj, ptr %1, align 8, !tbaa !302
  %i.ak = getelementptr [8 x i8], ptr %1, i64 %i.ai ; 2 uses
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !13
  %i.am = add i64 %i.al, -1
  store i64 %i.am, ptr %i.ak, align 8, !tbaa !13
  %i.an = load i64, ptr %1, align 8, !tbaa !302   ; 2 uses
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %i.an
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !13
  %i.aq = icmp eq i64 %i.ap, 0
  br i1 %i.aq, label %.lr.ph.i, label %_ZN5boost5redis5resp36parser11commit_elemEv.exit, !llvm.loop !866

bb.k:                                             ; preds = %_ZNK5boost6system10error_codecvbEv.exit.thread165
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 64
  store i32 16, ptr %i.ar, align 8, !tbaa !305
  br label %_ZN5boost5redis5resp36parser11commit_elemEv.exit

bb.l:                                             ; preds = %bb.a, %bb.a, %bb.a
  %.not.i33.not = icmp eq i64 %3, 0
  br i1 %.not.i33.not, label %bb.m, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE2atEm.exit

bb.m:                                             ; preds = %bb.l
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.224, i64 noundef 0, i64 noundef 0) #51
  unreachable

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE2atEm.exit: ; preds = %bb.l
  %i.as = load i8, ptr %4, align 1, !tbaa !12
  %i.at = icmp eq i8 %i.as, 63
  br i1 %i.at, label %bb.n, label %bb.o

bb.n:                                             ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE2atEm.exit
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.av = load i64, ptr %1, align 8, !tbaa !302
  %i.aw = add i64 %i.av, 1                        ; 2 uses
  store i64 %i.aw, ptr %1, align 8, !tbaa !302
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %i.aw
  store i64 -1, ptr %i.ax, align 8, !tbaa !13
  %i.ay = load i64, ptr %1, align 8, !tbaa !302
  br label %_ZN5boost5redis5resp36parser11commit_elemEv.exit

bb.o:                                             ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE2atEm.exit
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.ba = getelementptr inbounds nuw i8, ptr %4, i64 %3 ; 2 uses
  br label %.lr.ph.i36.i.i35

.lr.ph.i36.i.i35:                                 ; preds = %bb.o, %.critedge.i37.i.i54
  %.364.i.i36 = phi ptr [ %i.bl, %.critedge.i37.i.i54 ], [ %4, %bb.o ] ; 3 uses
  %.9.i.i37 = phi i64 [ %.10.i.i55, %.critedge.i37.i.i54 ], [ 0, %bb.o ] ; 4 uses
  %.02237.i.i.i38 = phi i32 [ %i.bd, %.critedge.i37.i.i54 ], [ 64, %bb.o ]
  %i.bb = load i8, ptr %.364.i.i36, align 1, !tbaa !12
  %i.bc = add i8 %i.bb, -48                       ; 3 uses
  %.not30.i.i.i39 = icmp ult i8 %i.bc, 10
  br i1 %.not30.i.i.i39, label %bb.p, label %_ZNSt8__detail22__from_chars_pow2_baseILb1EmEEbRPKcS2_RT0_i.exit.i.i40

bb.p:                                             ; preds = %.lr.ph.i36.i.i35
  %i.bd = add i32 %.02237.i.i.i38, -4             ; 2 uses
  %i.be = icmp sgt i32 %i.bd, -1
  br i1 %i.be, label %bb.q, label %bb.r, !prof !336

bb.q:                                             ; preds = %bb.p
  %i.bf = mul i64 %.9.i.i37, 10
  %i.bg = zext nneg i8 %i.bc to i64
  %i.bh = add i64 %i.bf, %i.bg
  br label %.critedge.i37.i.i54

bb.r:                                             ; preds = %bb.p
  %10 = icmp ugt i64 %.9.i.i37, 1844674407370955161
  br i1 %10, label %_ZNSt8__detail22__from_chars_pow2_baseILb1EmEEbRPKcS2_RT0_i.exit.thread.i.i45, label %.split.i.i.i53, !prof !860

.split.i.i.i53:                                   ; preds = %bb.r
  %11 = mul nuw i64 %.9.i.i37, 10                 ; 2 uses
  %i.bi = zext nneg i8 %i.bc to i64               ; 2 uses
  %i.bj = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %11, i64 %i.bi)
  %i.bk = extractvalue { i64, i1 } %i.bj, 1
  %12 = add nuw i64 %11, %i.bi
  br i1 %i.bk, label %_ZNSt8__detail22__from_chars_pow2_baseILb1EmEEbRPKcS2_RT0_i.exit.thread.i.i45, label %.critedge.i37.i.i54, !prof !141

.critedge.i37.i.i54:                              ; preds = %.split.i.i.i53, %bb.q
  %.10.i.i55 = phi i64 [ %i.bh, %bb.q ], [ %12, %.split.i.i.i53 ] ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %.364.i.i36, i64 1 ; 2 uses
  %.not.i.i.i56 = icmp eq ptr %i.bl, %i.ba
  br i1 %.not.i.i.i56, label %_ZNSt8__detail22__from_chars_pow2_baseILb1EmEEbRPKcS2_RT0_i.exit.i.i40, label %.lr.ph.i36.i.i35, !llvm.loop !861

_ZNSt8__detail22__from_chars_pow2_baseILb1EmEEbRPKcS2_RT0_i.exit.i.i40: ; preds = %.critedge.i37.i.i54, %.lr.ph.i36.i.i35
  %.061.i.i41 = phi ptr [ %.364.i.i36, %.lr.ph.i36.i.i35 ], [ %i.ba, %.critedge.i37.i.i54 ]
  %.0.i.i42 = phi i64 [ %.9.i.i37, %.lr.ph.i36.i.i35 ], [ %.10.i.i55, %.critedge.i37.i.i54 ]
  %.not.i43 = icmp eq ptr %.061.i.i41, %4
  br i1 %.not.i43, label %_ZNSt8__detail22__from_chars_pow2_baseILb1EmEEbRPKcS2_RT0_i.exit.thread.i.i45, label %_ZSt10from_charsImENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES2_IS6_sES2_IS6_iES2_IS6_lES2_IS6_xES2_IS6_nEEES1_IJS2_IS6_hES2_IS6_tES2_IS6_jES2_IS6_mES2_IS6_yES2_IS6_oEEES2_IcS6_EEE5valueESt17from_chars_resultE4typeEPKcSQ_RS4_i.exit.i44, !prof !862

_ZSt10from_charsImENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES2_IS6_sES2_IS6_iES2_IS6_lES2_IS6_xES2_IS6_nEEES1_IJS2_IS6_hES2_IS6_tES2_IS6_jES2_IS6_mES2_IS6_yES2_IS6_oEEES2_IcS6_EEE5valueESt17from_chars_resultE4typeEPKcSQ_RS4_i.exit.i44: ; preds = %_ZNSt8__detail22__from_chars_pow2_baseILb1EmEEbRPKcS2_RT0_i.exit.i.i40
  store i64 %.0.i.i42, ptr %i.az, align 8, !tbaa !13
  %.phi.trans.insert185 = getelementptr inbounds nuw i8, ptr %5, i64 16
  %.pre186 = load i64, ptr %.phi.trans.insert185, align 8, !tbaa !74
  br label %_ZN5boost5redis5resp36to_intERmSt17basic_string_viewIcSt11char_traitsIcEERNS_6system10error_codeE.exit57

_ZNSt8__detail22__from_chars_pow2_baseILb1EmEEbRPKcS2_RT0_i.exit.thread.i.i45: ; preds = %.split.i.i.i53, %bb.r, %_ZNSt8__detail22__from_chars_pow2_baseILb1EmEEbRPKcS2_RT0_i.exit.i.i40
  %i.bm = load atomic i8, ptr @_ZGVZN5boost5redis6detail8categoryEvE8instance acquire, align 8, !noalias !872
  %i.bn = icmp eq i8 %i.bm, 0
  br i1 %i.bn, label %bb.s, label %_ZN5boost5redis6detail8categoryEv.exit.i.i.i46, !prof !35

bb.s:                                             ; preds = %_ZNSt8__detail22__from_chars_pow2_baseILb1EmEEbRPKcS2_RT0_i.exit.thread.i.i45
  %i.bo = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN5boost5redis6detail8categoryEvE8instance) #49, !noalias !872
  %.not.i.i.i.i52 = icmp eq i32 %i.bo, 0
  br i1 %.not.i.i.i.i52, label %_ZN5boost5redis6detail8categoryEv.exit.i.i.i46, label %bb.t

bb.t:                                             ; preds = %bb.s
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN5boost5redis6detail8categoryEvE8instance) #49, !noalias !872
  br label %_ZN5boost5redis6detail8categoryEv.exit.i.i.i46

_ZN5boost5redis6detail8categoryEv.exit.i.i.i46:   ; preds = %bb.t, %bb.s, %_ZNSt8__detail22__from_chars_pow2_baseILb1EmEEbRPKcS2_RT0_i.exit.thread.i.i45
  %i.bp = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost5redis6detail8categoryEvE8instance, i64 8), align 8, !tbaa !15, !noalias !872
  %i.bq = and i64 %i.bp, -2
  %switch.i.i.i.i.i47 = icmp eq i64 %i.bq, -5572340897628102704
  br i1 %switch.i.i.i.i.i47, label %_ZN5boost6system10error_codeC2INS_5redis5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS5_EE5valuesr3std18is_error_code_enumIS5_EE5valueEvE4typeE.exit.thread.i51, label %_ZN5boost6system10error_codeC2INS_5redis5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS5_EE5valuesr3std18is_error_code_enumIS5_EE5valueEvE4typeE.exit.i48

_ZN5boost6system10error_codeC2INS_5redis5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS5_EE5valuesr3std18is_error_code_enumIS5_EE5valueEvE4typeE.exit.i48: ; preds = %_ZN5boost5redis6detail8categoryEv.exit.i.i.i46
  %i.br = load ptr, ptr @_ZZN5boost5redis6detail8categoryEvE8instance, align 8, !tbaa !25, !noalias !872
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 48
  %i.bt = load ptr, ptr %i.bs, align 8, !noalias !872
  %i.bu = tail call noundef zeroext i1 %i.bt(ptr noundef nonnull align 8 dereferenceable(52) @_ZZN5boost5redis6detail8categoryEvE8instance, i32 noundef 2) #49, !noalias !872, !inline_history !871
  br i1 %i.bu, label %_ZN5boost6system10error_codeC2INS_5redis5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS5_EE5valuesr3std18is_error_code_enumIS5_EE5valueEvE4typeE.exit.thread.i51, label %bb.u

_ZN5boost6system10error_codeC2INS_5redis5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS5_EE5valuesr3std18is_error_code_enumIS5_EE5valueEvE4typeE.exit.thread.i51: ; preds = %_ZN5boost6system10error_codeC2INS_5redis5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS5_EE5valuesr3std18is_error_code_enumIS5_EE5valueEvE4typeE.exit.i48, %_ZN5boost5redis6detail8categoryEv.exit.i.i.i46
  br label %bb.u

bb.u:                                             ; preds = %_ZN5boost6system10error_codeC2INS_5redis5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS5_EE5valuesr3std18is_error_code_enumIS5_EE5valueEvE4typeE.exit.thread.i51, %_ZN5boost6system10error_codeC2INS_5redis5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS5_EE5valuesr3std18is_error_code_enumIS5_EE5valueEvE4typeE.exit.i48
  %i.bv = phi i64 [ 3, %_ZN5boost6system10error_codeC2INS_5redis5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS5_EE5valuesr3std18is_error_code_enumIS5_EE5valueEvE4typeE.exit.thread.i51 ], [ 2, %_ZN5boost6system10error_codeC2INS_5redis5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS5_EE5valuesr3std18is_error_code_enumIS5_EE5valueEvE4typeE.exit.i48 ] ; 2 uses
  store i64 2, ptr %5, align 8
  %.sroa.5.0..sroa_idx.i49 = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr @_ZZN5boost5redis6detail8categoryEvE8instance, ptr %.sroa.5.0..sroa_idx.i49, align 8, !tbaa !12
  %.sroa.6.0..sroa_idx.i50 = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i64 %i.bv, ptr %.sroa.6.0..sroa_idx.i50, align 8, !tbaa !13
  br label %_ZN5boost5redis5resp36to_intERmSt17basic_string_viewIcSt11char_traitsIcEERNS_6system10error_codeE.exit57

_ZN5boost5redis5resp36to_intERmSt17basic_string_viewIcSt11char_traitsIcEERNS_6system10error_codeE.exit57: ; preds = %_ZSt10from_charsImENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES2_IS6_sES2_IS6_iES2_IS6_lES2_IS6_xES2_IS6_nEEES1_IJS2_IS6_hES2_IS6_tES2_IS6_jES2_IS6_mES2_IS6_yES2_IS6_oEEES2_IcS6_EEE5valueESt17from_chars_resultE4typeEPKcSQ_RS4_i.exit.i44, %bb.u
  %i.bw = phi i64 [ %.pre186, %_ZSt10from_charsImENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES2_IS6_sES2_IS6_iES2_IS6_lES2_IS6_xES2_IS6_nEEES1_IJS2_IS6_hES2_IS6_tES2_IS6_jES2_IS6_mES2_IS6_yES2_IS6_oEEES2_IcS6_EEE5valueESt17from_chars_resultE4typeEPKcSQ_RS4_i.exit.i44 ], [ %i.bv, %bb.u ] ; 2 uses
  %i.bx = and i64 %i.bw, 1
  %.not.i.i58 = icmp eq i64 %i.bx, 0
  br i1 %.not.i.i58, label %_ZNK5boost6system10error_codecvbEv.exit60.thread168, label %bb.v

bb.v:                                             ; preds = %_ZN5boost5redis5resp36to_intERmSt17basic_string_viewIcSt11char_traitsIcEERNS_6system10error_codeE.exit57
  %i.by = icmp eq i64 %i.bw, 1
  br i1 %i.by, label %_ZNK5boost6system10error_codecvbEv.exit60, label %_ZNK5boost6system10error_codecvbEv.exit60.thread

_ZNK5boost6system10error_codecvbEv.exit60:        ; preds = %bb.v
  %i.bz = load i32, ptr %5, align 8, !tbaa !180
  %.not177 = icmp eq i32 %i.bz, 0
  br i1 %.not177, label %_ZNK5boost6system10error_codecvbEv.exit60.thread168, label %_ZNK5boost6system10error_codecvbEv.exit60.thread

_ZNK5boost6system10error_codecvbEv.exit60.thread: ; preds = %bb.v, %_ZNK5boost6system10error_codecvbEv.exit60
  store i32 17, ptr %0, align 8, !tbaa !310
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ca, i8 0, i64 32, i1 false)
  br label %.critedge

_ZNK5boost6system10error_codecvbEv.exit60.thread168: ; preds = %_ZN5boost5redis5resp36to_intERmSt17basic_string_viewIcSt11char_traitsIcEERNS_6system10error_codeE.exit57, %_ZNK5boost6system10error_codecvbEv.exit60
  %i.cb = getelementptr inbounds nuw i8, ptr %1, i64 64
  store i32 %2, ptr %i.cb, align 8, !tbaa !305
  br label %_ZN5boost5redis5resp36parser11commit_elemEv.exit

bb.w:                                             ; preds = %bb.a
  %i.cc = icmp eq i64 %3, 0
  br i1 %i.cc, label %bb.x, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE2atEm.exit64

bb.x:                                             ; preds = %bb.w
  %i.cd = load atomic i8, ptr @_ZGVZN5boost5redis6detail8categoryEvE8instance acquire, align 8, !noalias !875
  %i.ce = icmp eq i8 %i.cd, 0
  br i1 %i.ce, label %bb.y, label %_ZN5boost5redis6detail8categoryEv.exit.i.i, !prof !35

bb.y:                                             ; preds = %bb.x
  %i.cf = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN5boost5redis6detail8categoryEvE8instance) #49, !noalias !875
  %.not.i.i.i62 = icmp eq i32 %i.cf, 0
  br i1 %.not.i.i.i62, label %_ZN5boost5redis6detail8categoryEv.exit.i.i, label %bb.z

bb.z:                                             ; preds = %bb.y
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN5boost5redis6detail8categoryEvE8instance) #49, !noalias !875
  br label %_ZN5boost5redis6detail8categoryEv.exit.i.i

_ZN5boost5redis6detail8categoryEv.exit.i.i:       ; preds = %bb.z, %bb.y, %bb.x
  %i.cg = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost5redis6detail8categoryEvE8instance, i64 8), align 8, !tbaa !15, !noalias !875
  %i.ch = and i64 %i.cg, -2
  %switch.i.i.i.i = icmp eq i64 %i.ch, -5572340897628102704
  br i1 %switch.i.i.i.i, label %_ZN5boost6system10error_codeC2INS_5redis5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS5_EE5valuesr3std18is_error_code_enumIS5_EE5valueEvE4typeE.exit.thread, label %_ZN5boost6system10error_codeC2INS_5redis5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS5_EE5valuesr3std18is_error_code_enumIS5_EE5valueEvE4typeE.exit

_ZN5boost6system10error_codeC2INS_5redis5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS5_EE5valuesr3std18is_error_code_enumIS5_EE5valueEvE4typeE.exit: ; preds = %_ZN5boost5redis6detail8categoryEv.exit.i.i
  %i.ci = load ptr, ptr @_ZZN5boost5redis6detail8categoryEvE8instance, align 8, !tbaa !25, !noalias !875
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 48
  %i.ck = load ptr, ptr %i.cj, align 8, !noalias !875
  %i.cl = tail call noundef zeroext i1 %i.ck(ptr noundef nonnull align 8 dereferenceable(52) @_ZZN5boost5redis6detail8categoryEvE8instance, i32 noundef 5) #49, !noalias !875, !inline_history !177
  br i1 %i.cl, label %_ZN5boost6system10error_codeC2INS_5redis5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS5_EE5valuesr3std18is_error_code_enumIS5_EE5valueEvE4typeE.exit.thread, label %bb.aa

_ZN5boost6system10error_codeC2INS_5redis5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS5_EE5valuesr3std18is_error_code_enumIS5_EE5valueEvE4typeE.exit.thread: ; preds = %_ZN5boost5redis6detail8categoryEv.exit.i.i, %_ZN5boost6system10error_codeC2INS_5redis5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS5_EE5valuesr3std18is_error_code_enumIS5_EE5valueEvE4typeE.exit
  br label %bb.aa

bb.aa:                                            ; preds = %_ZN5boost6system10error_codeC2INS_5redis5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS5_EE5valuesr3std18is_error_code_enumIS5_EE5valueEvE4typeE.exit, %_ZN5boost6system10error_codeC2INS_5redis5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS5_EE5valuesr3std18is_error_code_enumIS5_EE5valueEvE4typeE.exit.thread
  %i.cm = phi i64 [ 3, %_ZN5boost6system10error_codeC2INS_5redis5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS5_EE5valuesr3std18is_error_code_enumIS5_EE5valueEvE4typeE.exit.thread ], [ 2, %_ZN5boost6system10error_codeC2INS_5redis5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS5_EE5valuesr3std18is_error_code_enumIS5_EE5valueEvE4typeE.exit ]
  store i64 5, ptr %5, align 8
  %.sroa.5134.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr @_ZZN5boost5redis6detail8categoryEvE8instance, ptr %.sroa.5134.0..sroa_idx, align 8, !tbaa !12
  %.sroa.6135.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i64 %i.cm, ptr %.sroa.6135.0..sroa_idx, align 8, !tbaa !13
  store i32 17, ptr %0, align 8, !tbaa !310
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.cn, i8 0, i64 32, i1 false)
  br label %.critedge

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE2atEm.exit64: ; preds = %bb.w
  %i.co = load i8, ptr %4, align 1, !tbaa !12
  switch i8 %i.co, label %bb.ab [
    i8 102, label %bb.ac
    i8 116, label %bb.ac
  ]

bb.ab:                                            ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE2atEm.exit64
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #49
  call void @_ZN5boost6system10error_codeC2INS_5redis5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS5_EE5valuesr3std18is_error_code_enumIS5_EE5valueEvE4typeE(ptr noundef nonnull align 8 dereferenceable(24) %6, i32 noundef 4, ptr noundef null) #49
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %6, i64 24, i1 false), !tbaa.struct !309
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #49
  store i32 17, ptr %0, align 8, !tbaa !310
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.cp, i8 0, i64 32, i1 false)
  br label %.critedge

bb.ac:                                            ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE2atEm.exit64, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE2atEm.exit64
  %i.cq = load i64, ptr %1, align 8, !tbaa !302   ; 4 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.cs = getelementptr inbounds nuw [8 x i8], ptr %i.cr, i64 %i.cq ; 2 uses
  %i.ct = load i64, ptr %i.cs, align 8, !tbaa !13
  %i.cu = add i64 %i.ct, -1                       ; 2 uses
  store i64 %i.cu, ptr %i.cs, align 8, !tbaa !13
  %i.cv = icmp eq i64 %i.cu, 0
  br i1 %i.cv, label %.lr.ph.i67, label %_ZN5boost5redis5resp36parser11commit_elemEv.exit

.lr.ph.i67:                                       ; preds = %bb.ac, %.lr.ph.i67
  %i.cw = phi i64 [ %i.db, %.lr.ph.i67 ], [ %i.cq, %bb.ac ] ; 2 uses
  %i.cx = add i64 %i.cw, -1
  store i64 %i.cx, ptr %1, align 8, !tbaa !302
  %i.cy = getelementptr [8 x i8], ptr %1, i64 %i.cw ; 2 uses
  %i.cz = load i64, ptr %i.cy, align 8, !tbaa !13
  %i.da = add i64 %i.cz, -1
  store i64 %i.da, ptr %i.cy, align 8, !tbaa !13
  %i.db = load i64, ptr %1, align 8, !tbaa !302   ; 2 uses
  %i.dc = getelementptr inbounds nuw [8 x i8], ptr %i.cr, i64 %i.db
  %i.dd = load i64, ptr %i.dc, align 8, !tbaa !13
  %i.de = icmp eq i64 %i.dd, 0
  br i1 %i.de, label %.lr.ph.i67, label %_ZN5boost5redis5resp36parser11commit_elemEv.exit, !llvm.loop !866

bb.ad:                                            ; preds = %bb.a, %bb.a, %bb.a
  %i.df = icmp eq i64 %3, 0
  br i1 %i.df, label %bb.ae, label %bb.ai

bb.ae:                                            ; preds = %bb.ad
  %i.dg = load atomic i8, ptr @_ZGVZN5boost5redis6detail8categoryEvE8instance acquire, align 8, !noalias !878
  %i.dh = icmp eq i8 %i.dg, 0
  br i1 %i.dh, label %bb.af, label %_ZN5boost5redis6detail8categoryEv.exit.i.i69, !prof !35

bb.af:                                            ; preds = %bb.ae
  %i.di = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN5boost5redis6detail8categoryEvE8instance) #49, !noalias !878
  %.not.i.i.i73 = icmp eq i32 %i.di, 0
  br i1 %.not.i.i.i73, label %_ZN5boost5redis6detail8categoryEv.exit.i.i69, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN5boost5redis6detail8categoryEvE8instance) #49, !noalias !878
  br label %_ZN5boost5redis6detail8categoryEv.exit.i.i69

_ZN5boost5redis6detail8categoryEv.exit.i.i69:     ; preds = %bb.ag, %bb.af, %bb.ae
  %i.dj = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost5redis6detail8categoryEvE8instance, i64 8), align 8, !tbaa !15, !noalias !878
  %i.dk = and i64 %i.dj, -2
  %switch.i.i.i.i70 = icmp eq i64 %i.dk, -5572340897628102704
  br i1 %switch.i.i.i.i70, label %_ZN5boost6system10error_codeC2INS_5redis5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS5_EE5valuesr3std18is_error_code_enumIS5_EE5valueEvE4typeE.exit74.thread, label %_ZN5boost6system10error_codeC2INS_5redis5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS5_EE5valuesr3std18is_error_code_enumIS5_EE5valueEvE4typeE.exit74

_ZN5boost6system10error_codeC2INS_5redis5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS5_EE5valuesr3std18is_error_code_enumIS5_EE5valueEvE4typeE.exit74: ; preds = %_ZN5boost5redis6detail8categoryEv.exit.i.i69
  %i.dl = load ptr, ptr @_ZZN5boost5redis6detail8categoryEvE8instance, align 8, !tbaa !25, !noalias !878
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 48
  %i.dn = load ptr, ptr %i.dm, align 8, !noalias !878
  %i.do = tail call noundef zeroext i1 %i.dn(ptr noundef nonnull align 8 dereferenceable(52) @_ZZN5boost5redis6detail8categoryEvE8instance, i32 noundef 5) #49, !noalias !878, !inline_history !177
  br i1 %i.do, label %_ZN5boost6system10error_codeC2INS_5redis5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS5_EE5valuesr3std18is_error_code_enumIS5_EE5valueEvE4typeE.exit74.thread, label %bb.ah

_ZN5boost6system10error_codeC2INS_5redis5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS5_EE5valuesr3std18is_error_code_enumIS5_EE5valueEvE4typeE.exit74.thread: ; preds = %_ZN5boost5redis6detail8categoryEv.exit.i.i69, %_ZN5boost6system10error_codeC2INS_5redis5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS5_EE5valuesr3std18is_error_code_enumIS5_EE5valueEvE4typeE.exit74
  br label %bb.ah

bb.ah:                                            ; preds = %_ZN5boost6system10error_codeC2INS_5redis5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS5_EE5valuesr3std18is_error_code_enumIS5_EE5valueEvE4typeE.exit74, %_ZN5boost6system10error_codeC2INS_5redis5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS5_EE5valuesr3std18is_error_code_enumIS5_EE5valueEvE4typeE.exit74.thread
  %i.dp = phi i64 [ 3, %_ZN5boost6system10error_codeC2INS_5redis5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS5_EE5valuesr3std18is_error_code_enumIS5_EE5valueEvE4typeE.exit74.thread ], [ 2, %_ZN5boost6system10error_codeC2INS_5redis5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS5_EE5valuesr3std18is_error_code_enumIS5_EE5valueEvE4typeE.exit74 ]
  store i64 5, ptr %5, align 8
  %.sroa.5131.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr @_ZZN5boost5redis6detail8categoryEvE8instance, ptr %.sroa.5131.0..sroa_idx, align 8, !tbaa !12
  %.sroa.6132.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i64 %i.dp, ptr %.sroa.6132.0..sroa_idx, align 8, !tbaa !13
  store i32 17, ptr %0, align 8, !tbaa !310
  %i.dq = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.dq, i8 0, i64 32, i1 false)
  br label %.critedge

bb.ai:                                            ; preds = %bb.ad, %bb.a, %bb.a, %bb.a
  %i.dr = load i64, ptr %1, align 8, !tbaa !302   ; 4 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.dt = getelementptr inbounds nuw [8 x i8], ptr %i.ds, i64 %i.dr ; 2 uses
  %i.du = load i64, ptr %i.dt, align 8, !tbaa !13
  %i.dv = add i64 %i.du, -1                       ; 2 uses
  store i64 %i.dv, ptr %i.dt, align 8, !tbaa !13
  %i.dw = icmp eq i64 %i.dv, 0
  br i1 %i.dw, label %.lr.ph.i75, label %_ZN5boost5redis5resp36parser11commit_elemEv.exit

.lr.ph.i75:                                       ; preds = %bb.ai, %.lr.ph.i75
  %i.dx = phi i64 [ %i.ec, %.lr.ph.i75 ], [ %i.dr, %bb.ai ] ; 2 uses
  %i.dy = add i64 %i.dx, -1
  store i64 %i.dy, ptr %1, align 8, !tbaa !302
  %i.dz = getelementptr [8 x i8], ptr %1, i64 %i.dx ; 2 uses
  %i.ea = load i64, ptr %i.dz, align 8, !tbaa !13
  %i.eb = add i64 %i.ea, -1
  store i64 %i.eb, ptr %i.dz, align 8, !tbaa !13
  %i.ec = load i64, ptr %1, align 8, !tbaa !302   ; 2 uses
  %i.ed = getelementptr inbounds nuw [8 x i8], ptr %i.ds, i64 %i.ec
  %i.ee = load i64, ptr %i.ed, align 8, !tbaa !13
  %i.ef = icmp eq i64 %i.ee, 0
  br i1 %i.ef, label %.lr.ph.i75, label %_ZN5boost5redis5resp36parser11commit_elemEv.exit, !llvm.loop !866

bb.aj:                                            ; preds = %bb.a, %bb.a, %bb.a, %bb.a, %bb.a
  %i.eg = getelementptr inbounds nuw i8, ptr %4, i64 %3 ; 2 uses
  %.not36.i.i.i77 = icmp samesign eq i64 %3, 0
  br i1 %.not36.i.i.i77, label %_ZNSt8__detail22__from_chars_pow2_baseILb1EmEEbRPKcS2_RT0_i.exit.thread.i.i88, label %.lr.ph.i36.i.i78

.lr.ph.i36.i.i78:                                 ; preds = %bb.aj, %.critedge.i37.i.i97
  %.364.i.i79 = phi ptr [ %i.er, %.critedge.i37.i.i97 ], [ %4, %bb.aj ] ; 3 uses
  %.9.i.i80 = phi i64 [ %.10.i.i98, %.critedge.i37.i.i97 ], [ 0, %bb.aj ] ; 4 uses
  %.02237.i.i.i81 = phi i32 [ %i.ej, %.critedge.i37.i.i97 ], [ 64, %bb.aj ]
  %i.eh = load i8, ptr %.364.i.i79, align 1, !tbaa !12
  %i.ei = add i8 %i.eh, -48                       ; 3 uses
  %.not30.i.i.i82 = icmp ult i8 %i.ei, 10
  br i1 %.not30.i.i.i82, label %bb.ak, label %_ZNSt8__detail22__from_chars_pow2_baseILb1EmEEbRPKcS2_RT0_i.exit.i.i83

bb.ak:                                            ; preds = %.lr.ph.i36.i.i78
  %i.ej = add i32 %.02237.i.i.i81, -4             ; 2 uses
  %i.ek = icmp sgt i32 %i.ej, -1
  br i1 %i.ek, label %bb.al, label %bb.am, !prof !336

bb.al:                                            ; preds = %bb.ak
  %i.el = mul i64 %.9.i.i80, 10
  %i.em = zext nneg i8 %i.ei to i64
  %i.en = add i64 %i.el, %i.em
  br label %.critedge.i37.i.i97

bb.am:                                            ; preds = %bb.ak
  %13 = icmp ugt i64 %.9.i.i80, 1844674407370955161
  br i1 %13, label %_ZNSt8__detail22__from_chars_pow2_baseILb1EmEEbRPKcS2_RT0_i.exit.thread.i.i88, label %.split.i.i.i96, !prof !860

.split.i.i.i96:                                   ; preds = %bb.am
  %14 = mul nuw i64 %.9.i.i80, 10                 ; 2 uses
  %i.eo = zext nneg i8 %i.ei to i64               ; 2 uses
  %i.ep = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %14, i64 %i.eo)
  %i.eq = extractvalue { i64, i1 } %i.ep, 1
  %15 = add nuw i64 %14, %i.eo
  br i1 %i.eq, label %_ZNSt8__detail22__from_chars_pow2_baseILb1EmEEbRPKcS2_RT0_i.exit.thread.i.i88, label %.critedge.i37.i.i97, !prof !141

.critedge.i37.i.i97:                              ; preds = %.split.i.i.i96, %bb.al
  %.10.i.i98 = phi i64 [ %i.en, %bb.al ], [ %15, %.split.i.i.i96 ] ; 2 uses
  %i.er = getelementptr inbounds nuw i8, ptr %.364.i.i79, i64 1 ; 2 uses
  %.not.i.i.i99 = icmp eq ptr %i.er, %i.eg
  br i1 %.not.i.i.i99, label %_ZNSt8__detail22__from_chars_pow2_baseILb1EmEEbRPKcS2_RT0_i.exit.i.i83, label %.lr.ph.i36.i.i78, !llvm.loop !861

_ZNSt8__detail22__from_chars_pow2_baseILb1EmEEbRPKcS2_RT0_i.exit.i.i83: ; preds = %.critedge.i37.i.i97, %.lr.ph.i36.i.i78
  %.061.i.i84 = phi ptr [ %.364.i.i79, %.lr.ph.i36.i.i78 ], [ %i.eg, %.critedge.i37.i.i97 ]
  %.0.i.i85 = phi i64 [ %.9.i.i80, %.lr.ph.i36.i.i78 ], [ %.10.i.i98, %.critedge.i37.i.i97 ]
  %.not.i86 = icmp eq ptr %.061.i.i84, %4
  br i1 %.not.i86, label %_ZNSt8__detail22__from_chars_pow2_baseILb1EmEEbRPKcS2_RT0_i.exit.thread.i.i88, label %_ZNSt8__detail22__from_chars_pow2_baseILb1EmEEbRPKcS2_RT0_i.exit.i.i83._ZN5boost5redis5resp36to_intERmSt17basic_string_viewIcSt11char_traitsIcEERNS_6system10error_codeE.exit100_crit_edge, !prof !862

_ZNSt8__detail22__from_chars_pow2_baseILb1EmEEbRPKcS2_RT0_i.exit.i.i83._ZN5boost5redis5resp36to_intERmSt17basic_string_viewIcSt11char_traitsIcEERNS_6system10error_codeE.exit100_crit_edge: ; preds = %_ZNSt8__detail22__from_chars_pow2_baseILb1EmEEbRPKcS2_RT0_i.exit.i.i83
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %5, i64 16
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !74
  br label %_ZN5boost5redis5resp36to_intERmSt17basic_string_viewIcSt11char_traitsIcEERNS_6system10error_codeE.exit100

_ZNSt8__detail22__from_chars_pow2_baseILb1EmEEbRPKcS2_RT0_i.exit.thread.i.i88: ; preds = %.split.i.i.i96, %bb.am, %_ZNSt8__detail22__from_chars_pow2_baseILb1EmEEbRPKcS2_RT0_i.exit.i.i83, %bb.aj
  %i.es = load atomic i8, ptr @_ZGVZN5boost5redis6detail8categoryEvE8instance acquire, align 8, !noalias !881
  %i.et = icmp eq i8 %i.es, 0
  br i1 %i.et, label %bb.an, label %_ZN5boost5redis6detail8categoryEv.exit.i.i.i89, !prof !35

bb.an:                                            ; preds = %_ZNSt8__detail22__from_chars_pow2_baseILb1EmEEbRPKcS2_RT0_i.exit.thread.i.i88
  %i.eu = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN5boost5redis6detail8categoryEvE8instance) #49, !noalias !881
  %.not.i.i.i.i95 = icmp eq i32 %i.eu, 0
  br i1 %.not.i.i.i.i95, label %_ZN5boost5redis6detail8categoryEv.exit.i.i.i89, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN5boost5redis6detail8categoryEvE8instance) #49, !noalias !881
  br label %_ZN5boost5redis6detail8categoryEv.exit.i.i.i89

_ZN5boost5redis6detail8categoryEv.exit.i.i.i89:   ; preds = %bb.ao, %bb.an, %_ZNSt8__detail22__from_chars_pow2_baseILb1EmEEbRPKcS2_RT0_i.exit.thread.i.i88
  %i.ev = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost5redis6detail8categoryEvE8instance, i64 8), align 8, !tbaa !15, !noalias !881
  %i.ew = and i64 %i.ev, -2
  %switch.i.i.i.i.i90 = icmp eq i64 %i.ew, -5572340897628102704
  br i1 %switch.i.i.i.i.i90, label %_ZN5boost6system10error_codeC2INS_5redis5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS5_EE5valuesr3std18is_error_code_enumIS5_EE5valueEvE4typeE.exit.thread.i94, label %_ZN5boost6system10error_codeC2INS_5redis5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS5_EE5valuesr3std18is_error_code_enumIS5_EE5valueEvE4typeE.exit.i91

_ZN5boost6system10error_codeC2INS_5redis5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS5_EE5valuesr3std18is_error_code_enumIS5_EE5valueEvE4typeE.exit.i91: ; preds = %_ZN5boost5redis6detail8categoryEv.exit.i.i.i89
  %i.ex = load ptr, ptr @_ZZN5boost5redis6detail8categoryEvE8instance, align 8, !tbaa !25, !noalias !881
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ex, i64 48
  %i.ez = load ptr, ptr %i.ey, align 8, !noalias !881
  %i.fa = tail call noundef zeroext i1 %i.ez(ptr noundef nonnull align 8 dereferenceable(52) @_ZZN5boost5redis6detail8categoryEvE8instance, i32 noundef 2) #49, !noalias !881, !inline_history !871
  br i1 %i.fa, label %_ZN5boost6system10error_codeC2INS_5redis5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS5_EE5valuesr3std18is_error_code_enumIS5_EE5valueEvE4typeE.exit.thread.i94, label %bb.ap

_ZN5boost6system10error_codeC2INS_5redis5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS5_EE5valuesr3std18is_error_code_enumIS5_EE5valueEvE4typeE.exit.thread.i94: ; preds = %_ZN5boost6system10error_codeC2INS_5redis5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS5_EE5valuesr3std18is_error_code_enumIS5_EE5valueEvE4typeE.exit.i91, %_ZN5boost5redis6detail8categoryEv.exit.i.i.i89
  br label %bb.ap

bb.ap:                                            ; preds = %_ZN5boost6system10error_codeC2INS_5redis5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS5_EE5valuesr3std18is_error_code_enumIS5_EE5valueEvE4typeE.exit.thread.i94, %_ZN5boost6system10error_codeC2INS_5redis5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS5_EE5valuesr3std18is_error_code_enumIS5_EE5valueEvE4typeE.exit.i91
  %i.fb = phi i64 [ 3, %_ZN5boost6system10error_codeC2INS_5redis5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS5_EE5valuesr3std18is_error_code_enumIS5_EE5valueEvE4typeE.exit.thread.i94 ], [ 2, %_ZN5boost6system10error_codeC2INS_5redis5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS5_EE5valuesr3std18is_error_code_enumIS5_EE5valueEvE4typeE.exit.i91 ] ; 2 uses
  store i64 2, ptr %5, align 8
  %.sroa.5.0..sroa_idx.i92 = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr @_ZZN5boost5redis6detail8categoryEvE8instance, ptr %.sroa.5.0..sroa_idx.i92, align 8, !tbaa !12
  %.sroa.6.0..sroa_idx.i93 = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i64 %i.fb, ptr %.sroa.6.0..sroa_idx.i93, align 8, !tbaa !13
  br label %_ZN5boost5redis5resp36to_intERmSt17basic_string_viewIcSt11char_traitsIcEERNS_6system10error_codeE.exit100

_ZN5boost5redis5resp36to_intERmSt17basic_string_viewIcSt11char_traitsIcEERNS_6system10error_codeE.exit100: ; preds = %_ZNSt8__detail22__from_chars_pow2_baseILb1EmEEbRPKcS2_RT0_i.exit.i.i83._ZN5boost5redis5resp36to_intERmSt17basic_string_viewIcSt11char_traitsIcEERNS_6system10error_codeE.exit100_crit_edge, %bb.ap
  %i.fc = phi i64 [ %i.fb, %bb.ap ], [ %.pre, %_ZNSt8__detail22__from_chars_pow2_baseILb1EmEEbRPKcS2_RT0_i.exit.i.i83._ZN5boost5redis5resp36to_intERmSt17basic_string_viewIcSt11char_traitsIcEERNS_6system10error_codeE.exit100_crit_edge ] ; 2 uses
  %.0 = phi i64 [ -1, %bb.ap ], [ %.0.i.i85, %_ZNSt8__detail22__from_chars_pow2_baseILb1EmEEbRPKcS2_RT0_i.exit.i.i83._ZN5boost5redis5resp36to_intERmSt17basic_string_viewIcSt11char_traitsIcEERNS_6system10error_codeE.exit100_crit_edge ] ; 3 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.fe = and i64 %i.fc, 1
  %.not.i.i101 = icmp eq i64 %i.fe, 0
  br i1 %.not.i.i101, label %_ZNK5boost6system10error_codecvbEv.exit103.thread173, label %bb.aq

bb.aq:                                            ; preds = %_ZN5boost5redis5resp36to_intERmSt17basic_string_viewIcSt11char_traitsIcEERNS_6system10error_codeE.exit100
  %i.ff = icmp eq i64 %i.fc, 1
  br i1 %i.ff, label %_ZNK5boost6system10error_codecvbEv.exit103, label %_ZNK5boost6system10error_codecvbEv.exit103.thread

_ZNK5boost6system10error_codecvbEv.exit103:       ; preds = %bb.aq
  %i.fg = load i32, ptr %5, align 8, !tbaa !180
  %.not = icmp eq i32 %i.fg, 0
  br i1 %.not, label %_ZNK5boost6system10error_codecvbEv.exit103.thread173, label %_ZNK5boost6system10error_codecvbEv.exit103.thread

_ZNK5boost6system10error_codecvbEv.exit103.thread: ; preds = %bb.aq, %_ZNK5boost6system10error_codecvbEv.exit103
  store i32 17, ptr %0, align 8, !tbaa !310
  %i.fh = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.fh, i8 0, i64 32, i1 false)
  br label %.critedge

_ZNK5boost6system10error_codecvbEv.exit103.thread173: ; preds = %_ZN5boost5redis5resp36to_intERmSt17basic_string_viewIcSt11char_traitsIcEERNS_6system10error_codeE.exit100, %_ZNK5boost6system10error_codecvbEv.exit103
  %i.fi = load i64, ptr %1, align 8, !tbaa !302   ; 7 uses
  %i.fj = icmp eq i64 %.0, 0
  br i1 %i.fj, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %_ZNK5boost6system10error_codecvbEv.exit103.thread173
  %i.fk = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.fl = getelementptr inbounds nuw [8 x i8], ptr %i.fk, i64 %i.fi ; 2 uses
  %i.fm = load i64, ptr %i.fl, align 8, !tbaa !13
  %i.fn = add i64 %i.fm, -1                       ; 2 uses
  store i64 %i.fn, ptr %i.fl, align 8, !tbaa !13
  %i.fo = icmp eq i64 %i.fn, 0
  br i1 %i.fo, label %.lr.ph.i104, label %_ZN5boost5redis5resp36parser11commit_elemEv.exit

.lr.ph.i104:                                      ; preds = %bb.ar, %.lr.ph.i104
  %i.fp = phi i64 [ %i.fu, %.lr.ph.i104 ], [ %i.fi, %bb.ar ] ; 2 uses
  %i.fq = add i64 %i.fp, -1
  store i64 %i.fq, ptr %1, align 8, !tbaa !302
  %i.fr = getelementptr [8 x i8], ptr %1, i64 %i.fp ; 2 uses
  %i.fs = load i64, ptr %i.fr, align 8, !tbaa !13
  %i.ft = add i64 %i.fs, -1
  store i64 %i.ft, ptr %i.fr, align 8, !tbaa !13
  %i.fu = load i64, ptr %1, align 8, !tbaa !302   ; 2 uses
  %i.fv = getelementptr inbounds nuw [8 x i8], ptr %i.fk, i64 %i.fu
  %i.fw = load i64, ptr %i.fv, align 8, !tbaa !13
  %i.fx = icmp eq i64 %i.fw, 0
  br i1 %i.fx, label %.lr.ph.i104, label %_ZN5boost5redis5resp36parser11commit_elemEv.exit, !llvm.loop !866

bb.as:                                            ; preds = %_ZNK5boost6system10error_codecvbEv.exit103.thread173
  %i.fy = icmp eq i64 %i.fi, 5
  br i1 %i.fy, label %bb.at, label %bb.ax

bb.at:                                            ; preds = %bb.as
  %i.fz = load atomic i8, ptr @_ZGVZN5boost5redis6detail8categoryEvE8instance acquire, align 8, !noalias !884
  %i.ga = icmp eq i8 %i.fz, 0
  br i1 %i.ga, label %bb.au, label %_ZN5boost5redis6detail8categoryEv.exit.i.i106, !prof !35

bb.au:                                            ; preds = %bb.at
  %i.gb = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN5boost5redis6detail8categoryEvE8instance) #49, !noalias !884
  %.not.i.i.i110 = icmp eq i32 %i.gb, 0
  br i1 %.not.i.i.i110, label %_ZN5boost5redis6detail8categoryEv.exit.i.i106, label %bb.av

bb.av:                                            ; preds = %bb.au
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN5boost5redis6detail8categoryEvE8instance) #49, !noalias !884
  br label %_ZN5boost5redis6detail8categoryEv.exit.i.i106

_ZN5boost5redis6detail8categoryEv.exit.i.i106:    ; preds = %bb.av, %bb.au, %bb.at
  %i.gc = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost5redis6detail8categoryEvE8instance, i64 8), align 8, !tbaa !15, !noalias !884
  %i.gd = and i64 %i.gc, -2
  %switch.i.i.i.i107 = icmp eq i64 %i.gd, -5572340897628102704
  br i1 %switch.i.i.i.i107, label %_ZN5boost6system10error_codeC2INS_5redis5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS5_EE5valuesr3std18is_error_code_enumIS5_EE5valueEvE4typeE.exit111.thread, label %_ZN5boost6system10error_codeC2INS_5redis5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS5_EE5valuesr3std18is_error_code_enumIS5_EE5valueEvE4typeE.exit111

_ZN5boost6system10error_codeC2INS_5redis5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS5_EE5valuesr3std18is_error_code_enumIS5_EE5valueEvE4typeE.exit111: ; preds = %_ZN5boost5redis6detail8categoryEv.exit.i.i106
  %i.ge = load ptr, ptr @_ZZN5boost5redis6detail8categoryEvE8instance, align 8, !tbaa !25, !noalias !884
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ge, i64 48
  %i.gg = load ptr, ptr %i.gf, align 8, !noalias !884
  %i.gh = tail call noundef zeroext i1 %i.gg(ptr noundef nonnull align 8 dereferenceable(52) @_ZZN5boost5redis6detail8categoryEvE8instance, i32 noundef 3) #49, !noalias !884, !inline_history !177
  br i1 %i.gh, label %_ZN5boost6system10error_codeC2INS_5redis5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS5_EE5valuesr3std18is_error_code_enumIS5_EE5valueEvE4typeE.exit111.thread, label %bb.aw

_ZN5boost6system10error_codeC2INS_5redis5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS5_EE5valuesr3std18is_error_code_enumIS5_EE5valueEvE4typeE.exit111.thread: ; preds = %_ZN5boost5redis6detail8categoryEv.exit.i.i106, %_ZN5boost6system10error_codeC2INS_5redis5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS5_EE5valuesr3std18is_error_code_enumIS5_EE5valueEvE4typeE.exit111
  br label %bb.aw

bb.aw:                                            ; preds = %_ZN5boost6system10error_codeC2INS_5redis5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS5_EE5valuesr3std18is_error_code_enumIS5_EE5valueEvE4typeE.exit111, %_ZN5boost6system10error_codeC2INS_5redis5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS5_EE5valuesr3std18is_error_code_enumIS5_EE5valueEvE4typeE.exit111.thread
  %i.gi = phi i64 [ 3, %_ZN5boost6system10error_codeC2INS_5redis5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS5_EE5valuesr3std18is_error_code_enumIS5_EE5valueEvE4typeE.exit111.thread ], [ 2, %_ZN5boost6system10error_codeC2INS_5redis5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS5_EE5valuesr3std18is_error_code_enumIS5_EE5valueEvE4typeE.exit111 ]
  store i64 3, ptr %5, align 8
  %.sroa.5122.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr @_ZZN5boost5redis6detail8categoryEvE8instance, ptr %.sroa.5122.0..sroa_idx, align 8, !tbaa !12
  store i64 %i.gi, ptr %i.fd, align 8, !tbaa !13
  store i32 17, ptr %0, align 8, !tbaa !310
  %i.gj = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.gj, i8 0, i64 32, i1 false)
  br label %.critedge

bb.ax:                                            ; preds = %bb.as
  %i.gk = add i64 %i.fi, 1                        ; 2 uses
  store i64 %i.gk, ptr %1, align 8, !tbaa !302
  %.off.i = add i32 %2, -3
  %switch.i = icmp ult i32 %.off.i, 2
  %i.gl = zext i1 %switch.i to i64
  %i.gm = shl i64 %.0, %i.gl
  %i.gn = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.go = getelementptr inbounds nuw [8 x i8], ptr %i.gn, i64 %i.gk
  store i64 %i.gm, ptr %i.go, align 8, !tbaa !13
  br label %_ZN5boost5redis5resp36parser11commit_elemEv.exit

bb.ay:                                            ; preds = %bb.a
  %i.gp = load atomic i8, ptr @_ZGVZN5boost5redis6detail8categoryEvE8instance acquire, align 8, !noalias !887
  %i.gq = icmp eq i8 %i.gp, 0
  br i1 %i.gq, label %bb.az, label %_ZN5boost5redis6detail8categoryEv.exit.i.i112, !prof !35

bb.az:                                            ; preds = %bb.ay
  %i.gr = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN5boost5redis6detail8categoryEvE8instance) #49, !noalias !887
  %.not.i.i.i116 = icmp eq i32 %i.gr, 0
  br i1 %.not.i.i.i116, label %_ZN5boost5redis6detail8categoryEv.exit.i.i112, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN5boost5redis6detail8categoryEvE8instance) #49, !noalias !887
  br label %_ZN5boost5redis6detail8categoryEv.exit.i.i112

_ZN5boost5redis6detail8categoryEv.exit.i.i112:    ; preds = %bb.ba, %bb.az, %bb.ay
  %i.gs = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost5redis6detail8categoryEvE8instance, i64 8), align 8, !tbaa !15, !noalias !887
  %i.gt = and i64 %i.gs, -2
  %switch.i.i.i.i113 = icmp eq i64 %i.gt, -5572340897628102704
  br i1 %switch.i.i.i.i113, label %_ZN5boost6system10error_codeC2INS_5redis5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS5_EE5valuesr3std18is_error_code_enumIS5_EE5valueEvE4typeE.exit117.thread, label %_ZN5boost6system10error_codeC2INS_5redis5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS5_EE5valuesr3std18is_error_code_enumIS5_EE5valueEvE4typeE.exit117

_ZN5boost6system10error_codeC2INS_5redis5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS5_EE5valuesr3std18is_error_code_enumIS5_EE5valueEvE4typeE.exit117: ; preds = %_ZN5boost5redis6detail8categoryEv.exit.i.i112
  %i.gu = load ptr, ptr @_ZZN5boost5redis6detail8categoryEvE8instance, align 8, !tbaa !25, !noalias !887
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gu, i64 48
  %i.gw = load ptr, ptr %i.gv, align 8, !noalias !887
  %i.gx = tail call noundef zeroext i1 %i.gw(ptr noundef nonnull align 8 dereferenceable(52) @_ZZN5boost5redis6detail8categoryEvE8instance, i32 noundef 1) #49, !noalias !887, !inline_history !177
  br i1 %i.gx, label %_ZN5boost6system10error_codeC2INS_5redis5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS5_EE5valuesr3std18is_error_code_enumIS5_EE5valueEvE4typeE.exit117.thread, label %bb.bb

_ZN5boost6system10error_codeC2INS_5redis5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS5_EE5valuesr3std18is_error_code_enumIS5_EE5valueEvE4typeE.exit117.thread: ; preds = %_ZN5boost5redis6detail8categoryEv.exit.i.i112, %_ZN5boost6system10error_codeC2INS_5redis5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS5_EE5valuesr3std18is_error_code_enumIS5_EE5valueEvE4typeE.exit117
  br label %bb.bb

bb.bb:                                            ; preds = %_ZN5boost6system10error_codeC2INS_5redis5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS5_EE5valuesr3std18is_error_code_enumIS5_EE5valueEvE4typeE.exit117, %_ZN5boost6system10error_codeC2INS_5redis5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS5_EE5valuesr3std18is_error_code_enumIS5_EE5valueEvE4typeE.exit117.thread
  %i.gy = phi i64 [ 3, %_ZN5boost6system10error_codeC2INS_5redis5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS5_EE5valuesr3std18is_error_code_enumIS5_EE5valueEvE4typeE.exit117.thread ], [ 2, %_ZN5boost6system10error_codeC2INS_5redis5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS5_EE5valuesr3std18is_error_code_enumIS5_EE5valueEvE4typeE.exit117 ]
  store i64 1, ptr %5, align 8
  %.sroa.5.0..sroa_idx119 = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr @_ZZN5boost5redis6detail8categoryEvE8instance, ptr %.sroa.5.0..sroa_idx119, align 8, !tbaa !12
  %.sroa.6120.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i64 %i.gy, ptr %.sroa.6120.0..sroa_idx, align 8, !tbaa !13
  store i32 17, ptr %0, align 8, !tbaa !310
end_hunk_0
begin_hunk_1_@_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE11equal_rangeERKS5_:bb.a
  %.fca.1.insert = insertvalue { ptr, ptr } %.fca.0.insert, ptr %.sroa.3.0, 1
  ret { ptr, ptr } %.fca.1.insert
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE12_M_erase_auxESt23_Rb_tree_const_iteratorIS5_ESD_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %1, ptr %2) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !718
  %i.c = icmp eq ptr %1, %i.b
  br i1 %i.c, label %bb.b, label %.critedge

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.e = icmp eq ptr %2, %i.d
  br i1 %i.e, label %bb.c, label %.critedge

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !717
  invoke void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE8_M_eraseEPSt13_Rb_tree_nodeIS5_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %i.g)
          to label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE5clearEv.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = landingpad { ptr, i32 }
          catch ptr null
  %i.i = extractvalue { ptr, i32 } %i.h, 0
  tail call void @__clang_call_terminate(ptr %i.i) #50
  unreachable

_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE5clearEv.exit: ; preds = %bb.c
  store ptr null, ptr %i.f, align 8, !tbaa !717
  store ptr %i.d, ptr %i.a, align 8, !tbaa !718
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.d, ptr %i.j, align 8, !tbaa !719
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 0, ptr %i.k, align 8, !tbaa !237
  br label %.loopexit

.critedge:                                        ; preds = %bb.a, %bb.b
  %.not8 = icmp eq ptr %1, %2
  br i1 %.not8, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.critedge
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE12_M_erase_auxESt23_Rb_tree_const_iteratorIS5_E.exit
  %.sroa.06.09 = phi ptr [ %1, %.lr.ph ], [ %i.n, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE12_M_erase_auxESt23_Rb_tree_const_iteratorIS5_E.exit ] ; 2 uses
  %i.n = tail call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef %.sroa.06.09) #55 ; 2 uses
  %i.o = tail call noundef nonnull ptr @_ZSt28_Rb_tree_rebalance_for_erasePSt18_Rb_tree_node_baseRS_(ptr noundef %.sroa.06.09, ptr noundef nonnull align 8 dereferenceable(32) %i.l) #49 ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 32
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !104  ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 48 ; 2 uses
  %i.s = icmp eq ptr %i.q, %i.r
  br i1 %i.s, label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE12_M_erase_auxESt23_Rb_tree_const_iteratorIS5_E.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.e
  %i.t = load i64, ptr %i.r, align 8, !tbaa !12
  %i.u = add i64 %i.t, 1
  tail call void @_ZdlPvm(ptr noundef %i.q, i64 noundef %i.u) #53
  br label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE12_M_erase_auxESt23_Rb_tree_const_iteratorIS5_E.exit

_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE12_M_erase_auxESt23_Rb_tree_const_iteratorIS5_E.exit: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.o, i64 noundef 64) #53
  %i.v = load i64, ptr %i.m, align 8, !tbaa !237
  %i.w = add i64 %i.v, -1
  store i64 %i.w, ptr %i.m, align 8, !tbaa !237
  %.not = icmp eq ptr %i.n, %2
  br i1 %.not, label %.loopexit, label %bb.e, !llvm.loop !6083

.loopexit:                                        ; preds = %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE12_M_erase_auxESt23_Rb_tree_const_iteratorIS5_E.exit, %.critedge, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE5clearEv.exit
  ret void
}

; Function Attrs: nounwind
declare noundef nonnull ptr @_ZSt28_Rb_tree_rebalance_for_erasePSt18_Rb_tree_node_baseRS_(ptr noundef, ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #13

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef) local_unnamed_addr #45

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost5redis6detail15format_log_argsIJA14_cmA16_cEEEvRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpRKT_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 1 dereferenceable(14) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 1 dereferenceable(16) %3) local_unnamed_addr #6 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #49 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !105
  %i.d = sub i64 4611686018427387903, %i.c
  %i.e = icmp ult i64 %i.d, %i.a
  br i1 %i.e, label %bb.b, label %_ZN5boost5redis6detail10log_traitsIA14_cE3logERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS8_E.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.120) #51
  unreachable

_ZN5boost5redis6detail10log_traitsIA14_cE3logERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS8_E.exit: ; preds = %bb.a
  %i.f = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %1, i64 noundef %i.a) ; 0 uses
  %i.g = load i64, ptr %2, align 8, !tbaa !13
  tail call void @_ZN5boost5redis6detail10log_traitsImE3logERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.g)
  %i.h = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %3) #49 ; 2 uses
  %i.i = load i64, ptr %i.b, align 8, !tbaa !105
  %i.j = sub i64 4611686018427387903, %i.i
  %i.k = icmp ult i64 %i.j, %i.h
  br i1 %i.k, label %bb.c, label %_ZN5boost5redis6detail10log_traitsIA16_cE3logERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS8_E.exit

bb.c:                                             ; preds = %_ZN5boost5redis6detail10log_traitsIA14_cE3logERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS8_E.exit
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.120) #51
  unreachable

_ZN5boost5redis6detail10log_traitsIA16_cE3logERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS8_E.exit: ; preds = %_ZN5boost5redis6detail10log_traitsIA14_cE3logERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS8_E.exit
  %i.l = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %3, i64 noundef %i.h) ; 0 uses
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost5redis6detail3logIA35_cJNS_6system10error_codeEEEEvRNS1_15buffered_loggerENS0_6logger5levelERKT_DpRKT0_(ptr noundef nonnull align 8 dereferenceable(72) %0, i32 noundef %1, ptr noundef nonnull align 1 dereferenceable(35) %2, ptr noundef nonnull align 8 dereferenceable(24) %3) local_unnamed_addr #6 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = load i32, ptr %0, align 8, !tbaa !61
  %i.c = icmp slt i32 %i.b, %1
  br i1 %i.c, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  store i64 0, ptr %i.e, align 8, !tbaa !105
  %i.f = load ptr, ptr %i.d, align 8, !tbaa !104
  store i8 0, ptr %i.f, align 1, !tbaa !12
  %i.g = tail call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(35) %2) #49 ; 2 uses
  %i.h = load i64, ptr %i.e, align 8, !tbaa !105
  %i.i = sub i64 4611686018427387903, %i.h
  %i.j = icmp ult i64 %i.i, %i.g
  br i1 %i.j, label %bb.c, label %_ZN5boost5redis6detail15format_log_argsIJA35_cNS_6system10error_codeEEEEvRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpRKT_.exit

bb.c:                                             ; preds = %bb.b
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.120) #51
  unreachable

_ZN5boost5redis6detail15format_log_argsIJA35_cNS_6system10error_codeEEEEvRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpRKT_.exit: ; preds = %bb.b
  %i.k = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.d, ptr noundef nonnull align 1 dereferenceable(35) %2, i64 noundef %i.g) ; 0 uses
  tail call void @_ZN5boost5redis6detail10log_traitsINS_6system10error_codeEE3logERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES4_(ptr noundef nonnull align 8 dereferenceable(32) %i.d, ptr noundef nonnull byval(%"class.boost::system::error_code") align 8 %3)
  %i.l = load ptr, ptr %i.d, align 8, !tbaa !104
  %i.m = load i64, ptr %i.e, align 8, !tbaa !105
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 %i.m, ptr %4, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %i.l, ptr %i.n, align 8
  store i32 %1, ptr %i.a, align 4, !tbaa !70
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !71
  %.not.i.i = icmp eq ptr %i.p, null
  br i1 %.not.i.i, label %bb.d, label %_ZNKSt8functionIFvN5boost5redis6logger5levelESt17basic_string_viewIcSt11char_traitsIcEEEEclES3_S7_.exit

bb.d:                                             ; preds = %_ZN5boost5redis6detail15format_log_argsIJA35_cNS_6system10error_codeEEEEvRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpRKT_.exit
  tail call void @_ZSt25__throw_bad_function_callv() #51
  unreachable

_ZNKSt8functionIFvN5boost5redis6logger5levelESt17basic_string_viewIcSt11char_traitsIcEEEEclES3_S7_.exit: ; preds = %_ZN5boost5redis6detail15format_log_argsIJA35_cNS_6system10error_codeEEEEvRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpRKT_.exit
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !72
  call void %i.s(ptr noundef nonnull align 8 dereferenceable(32) %i.q, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 8 dereferenceable(16) %4), !inline_history !5768
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %_ZNKSt8functionIFvN5boost5redis6logger5levelESt17basic_string_viewIcSt11char_traitsIcEEEEclES3_S7_.exit
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal void @"_ZNSt17_Function_handlerIFvvEZN5boost5redis6detail10writer_fsm6resumeERNS3_16connection_stateENS1_6system10error_codeEmNS1_4asio17cancellation_typeEE3$_0E9_M_invokeERKSt9_Any_data"(ptr nofree nonnull readnone align 8 captures(none) %0) #21 align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define internal noundef zeroext i1 @"_ZNSt17_Function_handlerIFvvEZN5boost5redis6detail10writer_fsm6resumeERNS3_16connection_stateENS1_6system10error_codeEmNS1_4asio17cancellation_typeEE3$_0E10_M_managerERSt9_Any_dataRKSD_St18_Manager_operation"(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) #15 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  switch i32 %2, label %"_ZNSt14_Function_base13_Base_managerIZN5boost5redis6detail10writer_fsm6resumeERNS3_16connection_stateENS1_6system10error_codeEmNS1_4asio17cancellation_typeEE3$_0E10_M_managerERSt9_Any_dataRKSD_St18_Manager_operation.exit" [
    i32 0, label %"_ZNSt14_Function_base13_Base_managerIZN5boost5redis6detail10writer_fsm6resumeERNS3_16connection_stateENS1_6system10error_codeEmNS1_4asio17cancellation_typeEE3$_0E10_M_managerERSt9_Any_dataRKSD_St18_Manager_operation.exit.sink.split"
    i32 1, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a
  br label %"_ZNSt14_Function_base13_Base_managerIZN5boost5redis6detail10writer_fsm6resumeERNS3_16connection_stateENS1_6system10error_codeEmNS1_4asio17cancellation_typeEE3$_0E10_M_managerERSt9_Any_dataRKSD_St18_Manager_operation.exit.sink.split"

"_ZNSt14_Function_base13_Base_managerIZN5boost5redis6detail10writer_fsm6resumeERNS3_16connection_stateENS1_6system10error_codeEmNS1_4asio17cancellation_typeEE3$_0E10_M_managerERSt9_Any_dataRKSD_St18_Manager_operation.exit.sink.split": ; preds = %bb.a, %bb.b
  %.sink = phi ptr [ %1, %bb.b ], [ @"_ZTIZN5boost5redis6detail10writer_fsm6resumeERNS1_16connection_stateENS_6system10error_codeEmNS_4asio17cancellation_typeEE3$_0", %bb.a ]
  store ptr %.sink, ptr %0, align 8, !tbaa !147
  br label %"_ZNSt14_Function_base13_Base_managerIZN5boost5redis6detail10writer_fsm6resumeERNS3_16connection_stateENS1_6system10error_codeEmNS1_4asio17cancellation_typeEE3$_0E10_M_managerERSt9_Any_dataRKSD_St18_Manager_operation.exit"

"_ZNSt14_Function_base13_Base_managerIZN5boost5redis6detail10writer_fsm6resumeERNS3_16connection_stateENS1_6system10error_codeEmNS1_4asio17cancellation_typeEE3$_0E10_M_managerERSt9_Any_dataRKSD_St18_Manager_operation.exit": ; preds = %"_ZNSt14_Function_base13_Base_managerIZN5boost5redis6detail10writer_fsm6resumeERNS3_16connection_stateENS1_6system10error_codeEmNS1_4asio17cancellation_typeEE3$_0E10_M_managerERSt9_Any_dataRKSD_St18_Manager_operation.exit.sink.split", %bb.a
  ret i1 false
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #46

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #46

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #46

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #46

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #46

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #32

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.bswap.i16(i16) #46

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #47

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.uadd.sat.i64(i64, i64) #46

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #46

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #46

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #48

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #46

attributes #0 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { cold nofree noreturn }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind }
attributes #6 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress noreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { cold noreturn }
attributes #19 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #23 = { uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #24 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #25 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #26 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #27 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #28 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #29 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #30 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #31 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #32 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #33 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized,aligned") allocsize(1) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #34 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #35 = { mustprogress noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #36 = { nobuiltin nounwind allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #37 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #38 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #39 = { inlinehint uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #40 = { nofree "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #41 = { mustprogress nofree nounwind willreturn memory(read) }
attributes #42 = { inlinehint mustprogress noreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #43 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #44 = { cold mustprogress nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #45 = { mustprogress nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #46 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #47 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #48 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #49 = { nounwind }
attributes #50 = { noreturn nounwind }
attributes #51 = { noreturn }
attributes #52 = { builtin allocsize(0) }
attributes #53 = { builtin nounwind }
attributes #54 = { nounwind allocsize(0) }
attributes #55 = { nounwind willreturn memory(read) }
attributes #56 = { nounwind allocsize(1) }
attributes #57 = { builtin nounwind allocsize(0) }
attributes #58 = { nounwind willreturn memory(none) }
attributes #59 = { "function-inline-cost-multiplier"="2" }
attributes #60 = { cold nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!4 = !{!5, !6, i64 0}
!5 = !{!"__libc_errno", !6, i64 0}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C++ TBAA"}
!9 = !{!10, !10, i64 0}
!10 = !{!"p1 _ZTSN5boost6system14error_categoryE", !11, i64 0}
!11 = !{!"any pointer", !7, i64 0}
!12 = !{!7, !7, i64 0}
!13 = !{!14, !14, i64 0}
!14 = !{!"long", !7, i64 0}
!15 = !{!16, !17, i64 8}
!16 = !{!"_ZTSN5boost6system14error_categoryE", !17, i64 8, !7, i64 16, !18, i64 48}
!17 = !{!"long long", !7, i64 0}
!18 = !{!"_ZTSSt6atomicIjE", !19, i64 0}
!19 = !{!"_ZTSSt13__atomic_baseIjE", !6, i64 0}
!20 = !{!21, !23}
!21 = distinct !{!21, !22, !"_ZN5boost4asio5error15make_error_codeENS1_12basic_errorsE: argument 0"}
!22 = distinct !{!22, !"_ZN5boost4asio5error15make_error_codeENS1_12basic_errorsE"}
!23 = distinct !{!23, !24, !"_ZN5boost5redis6detail23translate_timeout_errorENS_6system10error_codeENS_4asio17cancellation_typeENS0_5errorE: argument 0"}
!24 = distinct !{!24, !"_ZN5boost5redis6detail23translate_timeout_errorENS_6system10error_codeENS_4asio17cancellation_typeENS0_5errorE"}
!25 = !{!26, !26, i64 0}
!26 = !{!"vtable pointer", !8, i64 0}
!27 = distinct !{null, null, null, null, null}
!28 = !{!29, !23}
!29 = distinct !{!29, !30, !"_ZN5boost4asio5error15make_error_codeENS1_12basic_errorsE: argument 0"}
!30 = distinct !{!30, !"_ZN5boost4asio5error15make_error_codeENS1_12basic_errorsE"}
!31 = !{!23}
!32 = !{!33, !23}
!33 = distinct !{!33, !34, !"_ZN5boost5redis15make_error_codeENS0_5errorE: argument 0"}
!34 = distinct !{!34, !"_ZN5boost5redis15make_error_codeENS0_5errorE"}
!35 = !{!"branch_weights", i32 1, i32 1048575}
!36 = distinct !{null, ptr @_ZN5boost6system10error_codeC2INS_5redis5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS5_EE5valuesr3std18is_error_code_enumIS5_EE5valueEvE4typeE, ptr @_ZN5boost5redis15make_error_codeENS0_5errorE, null, null}
!37 = !{!38, !39, i64 8}
!38 = !{!"_ZTSN5boost5redis6detail11connect_fsmE", !6, i64 0, !39, i64 8}
!39 = !{!"p1 _ZTSN5boost5redis6detail15buffered_loggerE", !11, i64 0}
!40 = !{!38, !6, i64 0}
!41 = !{!42, !43, i64 0}
!42 = !{!"_ZTSN5boost5redis6detail18redis_stream_stateE", !43, i64 0, !44, i64 4}
!43 = !{!"_ZTSN5boost5redis6detail14transport_typeE", !7, i64 0}
!44 = !{!"bool", !7, i64 0}
!45 = !{!46, !47, i64 0}
!46 = !{!"_ZTSN5boost5redis6detail14connect_actionE", !47, i64 0, !48, i64 8}
!47 = !{!"_ZTSN5boost5redis6detail19connect_action_typeE", !7, i64 0}
!48 = !{!"_ZTSN5boost6system10error_codeE", !7, i64 0, !14, i64 16}
!49 = !{!50, !52}
!50 = distinct !{!50, !51, !"_ZN5boost4asio5error15make_error_codeENS1_12basic_errorsE: argument 0"}
!51 = distinct !{!51, !"_ZN5boost4asio5error15make_error_codeENS1_12basic_errorsE"}
!52 = distinct !{!52, !53, !"_ZN5boost5redis6detail23translate_timeout_errorENS_6system10error_codeENS_4asio17cancellation_typeENS0_5errorE: argument 0"}
!53 = distinct !{!53, !"_ZN5boost5redis6detail23translate_timeout_errorENS_6system10error_codeENS_4asio17cancellation_typeENS0_5errorE"}
!54 = !{!55, !52}
!55 = distinct !{!55, !56, !"_ZN5boost4asio5error15make_error_codeENS1_12basic_errorsE: argument 0"}
!56 = distinct !{!56, !"_ZN5boost4asio5error15make_error_codeENS1_12basic_errorsE"}
!57 = !{!52}
!58 = !{!59, !52}
!59 = distinct !{!59, !60, !"_ZN5boost5redis15make_error_codeENS0_5errorE: argument 0"}
!60 = distinct !{!60, !"_ZN5boost5redis15make_error_codeENS0_5errorE"}
!61 = !{!62, !64, i64 0}
!62 = !{!"_ZTSN5boost5redis6detail15buffered_loggerE", !63, i64 0, !67, i64 40}
!63 = !{!"_ZTSN5boost5redis6loggerE", !64, i64 0, !65, i64 8}
!64 = !{!"_ZTSN5boost5redis6logger5levelE", !7, i64 0}
!65 = !{!"_ZTSSt8functionIFvN5boost5redis6logger5levelESt17basic_string_viewIcSt11char_traitsIcEEEE", !66, i64 0, !11, i64 24}
!66 = !{!"_ZTSSt14_Function_base", !7, i64 0, !11, i64 16}
!67 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !68, i64 0, !14, i64 8, !7, i64 16}
!68 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !69, i64 0}
!69 = !{!"p1 omnipotent char", !11, i64 0}
!70 = !{!64, !64, i64 0}
!71 = !{!66, !11, i64 16}
!72 = !{!65, !11, i64 24}
!73 = distinct !{null, null, null}
!74 = !{!48, !14, i64 16}
!75 = !{!42, !44, i64 4}
!76 = !{i8 0, i8 2}
!77 = !{}
!78 = !{!79, !81}
!79 = distinct !{!79, !80, !"_ZN5boost4asio5error15make_error_codeENS1_12basic_errorsE: argument 0"}
!80 = distinct !{!80, !"_ZN5boost4asio5error15make_error_codeENS1_12basic_errorsE"}
!81 = distinct !{!81, !82, !"_ZN5boost5redis6detail23translate_timeout_errorENS_6system10error_codeENS_4asio17cancellation_typeENS0_5errorE: argument 0"}
!82 = distinct !{!82, !"_ZN5boost5redis6detail23translate_timeout_errorENS_6system10error_codeENS_4asio17cancellation_typeENS0_5errorE"}
!83 = !{!84, !81}
!84 = distinct !{!84, !85, !"_ZN5boost4asio5error15make_error_codeENS1_12basic_errorsE: argument 0"}
!85 = distinct !{!85, !"_ZN5boost4asio5error15make_error_codeENS1_12basic_errorsE"}
!86 = !{!81}
!87 = !{!88, !81}
!88 = distinct !{!88, !89, !"_ZN5boost5redis15make_error_codeENS0_5errorE: argument 0"}
!89 = distinct !{!89, !"_ZN5boost5redis15make_error_codeENS0_5errorE"}
!90 = distinct !{null, null, null}
!91 = !{!92, !94}
!92 = distinct !{!92, !93, !"_ZN5boost4asio5error15make_error_codeENS1_12basic_errorsE: argument 0"}
!93 = distinct !{!93, !"_ZN5boost4asio5error15make_error_codeENS1_12basic_errorsE"}
!94 = distinct !{!94, !95, !"_ZN5boost5redis6detail23translate_timeout_errorENS_6system10error_codeENS_4asio17cancellation_typeENS0_5errorE: argument 0"}
!95 = distinct !{!95, !"_ZN5boost5redis6detail23translate_timeout_errorENS_6system10error_codeENS_4asio17cancellation_typeENS0_5errorE"}
end_hunk_1
