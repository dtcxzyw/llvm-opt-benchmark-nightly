Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/boost/original/cancel?download=true
inline.NumInlined: 16814
inline.NumDeleted: 6568
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 13
begin_hunk_0_@_ZN5boost5beast9websocket19async_all_client_opclIRNS_4asio6detail11composed_opIS2_NS5_13composed_workIFvNS4_15any_io_executorEEEENS4_24cancellation_slot_binderIZNS1_11cancel_test7testAllERmbmEUlNS_6system10error_codeEE0_NS4_17cancellation_slotEEEJFvSF_EEEEEEvOT_SF_m:bb.a

_ZN5boost6system10error_codeC2INS_4asio5error12basic_errorsEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit60.thread: ; preds = %_ZN5boost6system10error_codeC2INS_4asio5error12basic_errorsEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit60, %_ZNK5boost6system10error_code5valueEv.exit._crit_edge
  %i.fp = icmp ne i64 %i.c, 1
  %i.fq = icmp eq i32 %i.fi, 107
  %or.cond168 = select i1 %i.fp, i1 %i.fq, i1 false
  br i1 %or.cond168, label %_ZNK5boost6system10error_code8categoryEv.exit.i67, label %_ZN5boost6systemeqERKNS0_10error_codeES3_.exit71.thread

_ZNK5boost6system10error_code8categoryEv.exit.i67: ; preds = %_ZN5boost6system10error_codeC2INS_4asio5error12basic_errorsEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit60.thread
  %cond = icmp eq i64 %i.c, 0
  %i.fr = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.fs = load ptr, ptr %i.fr, align 8
  %.0.i18.i68 = select i1 %cond, ptr @_ZN5boost6system6detail17system_cat_holderIvE8instanceE, ptr %i.fs ; 2 uses
  %i.ft = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN5boost6system6detail17system_cat_holderIvE8instanceE, i64 8), align 8, !tbaa !237 ; 2 uses
  %i.fu = icmp eq i64 %i.ft, 0
  %i.fv = icmp eq ptr %.0.i18.i68, @_ZN5boost6system6detail17system_cat_holderIvE8instanceE
  %i.fw = getelementptr inbounds nuw i8, ptr %.0.i18.i68, i64 8
  %i.fx = load i64, ptr %i.fw, align 8
  %i.fy = icmp eq i64 %i.fx, %i.ft
  %i.fz = select i1 %i.fu, i1 %i.fv, i1 %i.fy
  br i1 %i.fz, label %bb.an, label %_ZN5boost6systemeqERKNS0_10error_codeES3_.exit71.thread

bb.an:                                            ; preds = %_ZN5boost6systemeqERKNS0_10error_codeES3_.exit, %_ZNK5boost6system10error_code8categoryEv.exit.i50, %_ZNK5boost6system10error_code8categoryEv.exit, %_ZNK5boost6system10error_code8categoryEv.exit.i67, %_ZNK5boost6system10error_code8categoryEv.exit20.i
  %i.ga = load ptr, ptr @_ZZN5boost5beast9unit_test5suite12p_this_suiteEvE3pts, align 8, !tbaa !265 ; 3 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ga, i64 8
  %i.gc = load i8, ptr %i.gb, align 8, !tbaa !280, !range !258, !noundef !259
  %i.gd = trunc nuw i8 %i.gc to i1
  %i.ge = getelementptr inbounds nuw i8, ptr %i.ga, i64 9
  %i.gf = load i8, ptr %i.ge, align 1, !range !258
  %i.gg = trunc nuw i8 %i.gf to i1
  %or.cond.i.i72 = select i1 %i.gd, i1 %i.gg, i1 false
  br i1 %or.cond.i.i72, label %bb.ao, label %_ZN5boost5beast9unit_test5suite15propagate_abortEv.exit.i73

bb.ao:                                            ; preds = %bb.an
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #35
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5boost5beast9unit_test5suite15abort_exceptionE, i64 16), ptr %8, align 8, !tbaa !220
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #35
  store ptr @.str.44, ptr %9, align 8, !tbaa !360
  %i.gh = getelementptr inbounds nuw i8, ptr %9, i64 8
  store ptr @.str.46, ptr %i.gh, align 8, !tbaa !361
  %i.gi = getelementptr inbounds nuw i8, ptr %9, i64 16
  store i32 592, ptr %i.gi, align 8, !tbaa !362
  %i.gj = getelementptr inbounds nuw i8, ptr %9, i64 20
  store i32 48, ptr %i.gj, align 4, !tbaa !363
  invoke void @_ZN5boost15throw_exceptionINS_5beast9unit_test5suite15abort_exceptionEEEvRKT_RKNS_15source_locationE(ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef nonnull align 8 dereferenceable(24) %9) #37
          to label %bb.ap unwind label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  unreachable

bb.aq:                                            ; preds = %bb.ao
  %i.gk = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #35
  call void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %8) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #35
  br label %.body.thread

_ZN5boost5beast9unit_test5suite15propagate_abortEv.exit.i73: ; preds = %bb.an
  %i.gl = getelementptr inbounds nuw i8, ptr %i.ga, i64 16
  %i.gm = load ptr, ptr %i.gl, align 8, !tbaa !282
  invoke void @_ZN5boost5beast9unit_test6runner4passIvEEvv(ptr noundef nonnull align 8 dereferenceable(88) %i.gm)
          to label %.critedge unwind label %bb.au

_ZN5boost6systemeqERKNS0_10error_codeES3_.exit71.thread: ; preds = %_ZN5boost6system10error_codeC2INS_4asio5error12basic_errorsEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit60.thread, %_ZNK5boost6system10error_code8categoryEv.exit.i67
  %i.gn = load ptr, ptr @_ZZN5boost5beast9unit_test5suite12p_this_suiteEvE3pts, align 8, !tbaa !265
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #35
  invoke void @_ZNK5boost6system10error_code7messageB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %20, ptr noundef nonnull align 8 dereferenceable(24) %2)
          to label %bb.ar unwind label %bb.av

bb.ar:                                            ; preds = %_ZN5boost6systemeqERKNS0_10error_codeES3_.exit71.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #35
  invoke void @_ZN5boost5beast9unit_test6detail11make_reasonINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_RKT_PKci(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull align 8 dereferenceable(32) %20, ptr noundef nonnull @.str.25, i32 noundef 106)
          to label %.noexc195 unwind label %bb.aw

.noexc195:                                        ; preds = %bb.ar
  invoke void @_ZN5boost5beast9unit_test5suite4failIvEEvRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(808) %i.gn, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %bb.as unwind label %bb.at

bb.as:                                            ; preds = %.noexc195
  %i.go = load ptr, ptr %4, align 8, !tbaa !228   ; 2 uses
  %i.gp = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.gq = icmp eq ptr %i.go, %i.gp
  br i1 %i.gq, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i194, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i193

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i193: ; preds = %bb.as
  %i.gr = load i64, ptr %i.gp, align 8, !tbaa !229
  %i.gs = add i64 %i.gr, 1
  call void @_ZdlPvm(ptr noundef %i.go, i64 noundef %i.gs) #38
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i194

bb.at:                                            ; preds = %.noexc195
  %i.gt = landingpad { ptr, i32 }
          cleanup
  %i.gu = load ptr, ptr %4, align 8, !tbaa !228   ; 2 uses
  %i.gv = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.gw = icmp eq ptr %i.gu, %i.gv
  br i1 %i.gw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7.i191, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5.i190

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5.i190: ; preds = %bb.at
  %i.gx = load i64, ptr %i.gv, align 8, !tbaa !229
  %i.gy = add i64 %i.gx, 1
  call void @_ZdlPvm(ptr noundef %i.gu, i64 noundef %i.gy) #38
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7.i191

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7.i191: ; preds = %bb.at, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5.i190
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #35
  br label %.body196

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i194: ; preds = %bb.as, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i193
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #35
  %i.gz = load ptr, ptr %20, align 8, !tbaa !228  ; 2 uses
  %i.ha = getelementptr inbounds nuw i8, ptr %20, i64 16 ; 2 uses
  %i.hb = icmp eq ptr %i.gz, %i.ha
  br i1 %i.hb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i194
  %i.hc = load i64, ptr %i.ha, align 8, !tbaa !229
  %i.hd = add i64 %i.hc, 1
  call void @_ZdlPvm(ptr noundef %i.gz, i64 noundef %i.hd) #38
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i194, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #35
  br label %.critedge

.critedge:                                        ; preds = %_ZN5boost5beast9unit_test5suite15propagate_abortEv.exit.i73, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, i8 0, i64 24, i1 false)
  %i.he = getelementptr inbounds nuw i8, ptr %1, i64 104
  invoke void @_ZZN5boost5beast9websocket11cancel_test7testAllERmbmENKUlNS_6system10error_codeEE0_clES5_(ptr noundef nonnull align 8 dereferenceable(32) %i.he, ptr noundef nonnull byval(%"class.boost::system::error_code") align 8 %7)
          to label %_ZN5boost4asio6detail11composed_opINS_5beast9websocket19async_all_client_opENS1_13composed_workIFvNS0_15any_io_executorEEEENS0_24cancellation_slot_binderIZNS4_11cancel_test7testAllERmbmEUlNS_6system10error_codeEE0_NS0_17cancellation_slotEEEJFvSE_EEE8completeESE_.exit unwind label %.body

_ZN5boost4asio6detail11composed_opINS_5beast9websocket19async_all_client_opENS1_13composed_workIFvNS0_15any_io_executorEEEENS0_24cancellation_slot_binderIZNS4_11cancel_test7testAllERmbmEUlNS_6system10error_codeEE0_NS0_17cancellation_slotEEEJFvSE_EEE8completeESE_.exit: ; preds = %.critedge
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  br label %bb.ax

bb.au:                                            ; preds = %_ZN5boost5beast9unit_test5suite15propagate_abortEv.exit.i73
  %i.hf = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread

bb.av:                                            ; preds = %_ZN5boost6systemeqERKNS0_10error_codeES3_.exit71.thread
  %i.hg = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit81

bb.aw:                                            ; preds = %bb.ar
  %i.hh = landingpad { ptr, i32 }
          cleanup
  br label %.body196

.body196:                                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7.i191, %bb.aw
  %eh.lpad-body = phi { ptr, i32 } [ %i.hh, %bb.aw ], [ %i.gt, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7.i191 ] ; 2 uses
  %i.hi = load ptr, ptr %20, align 8, !tbaa !228  ; 2 uses
  %i.hj = getelementptr inbounds nuw i8, ptr %20, i64 16 ; 2 uses
  %i.hk = icmp eq ptr %i.hi, %i.hj
  br i1 %i.hk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit81, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i79

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i79: ; preds = %.body196
  %i.hl = load i64, ptr %i.hj, align 8, !tbaa !229
  %i.hm = add i64 %i.hl, 1
  call void @_ZdlPvm(ptr noundef %i.hi, i64 noundef %i.hm) #38
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit81

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit81: ; preds = %.body196, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i79, %bb.av
  %.pn = phi { ptr, i32 } [ %i.hg, %bb.av ], [ %eh.lpad-body, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i79 ], [ %eh.lpad-body, %.body196 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #35
  br label %.body.thread

bb.ax:                                            ; preds = %_ZNK5boost6system10error_codecvbEv.exit.thread143, %_ZN5boost4asio6detail11composed_opINS_5beast9websocket19async_all_client_opENS1_13composed_workIFvNS0_15any_io_executorEEEENS0_24cancellation_slot_binderIZNS4_11cancel_test7testAllERmbmEUlNS_6system10error_codeEE0_NS0_17cancellation_slotEEEJFvSE_EEE8completeESE_.exit
  store i32 -1, ptr %0, align 8, !tbaa !358
  br label %_ZN5boost4asio6detail13coroutine_refD2Ev.exit

.body:                                            ; preds = %_ZN5boost5beast9unit_test5suite15propagate_abortEv.exit.i, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread145, %.critedge
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread

.body.thread:                                     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit81, %bb.aq, %bb.au, %bb.t, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7.i, %bb.f, %.body
  %.pn29156 = phi { ptr, i32 } [ %lpad.thr_comm.split-lp, %.body ], [ %i.gk, %bb.aq ], [ %i.hf, %bb.au ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit81 ], [ %i.bx, %bb.t ], [ %i.cg, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7.i ], [ %i.t, %bb.f ]
  store i32 -1, ptr %0, align 8, !tbaa !358
  resume { ptr, i32 } %.pn29156

_ZN5boost4asio6detail13coroutine_refD2Ev.exit:    ; preds = %bb.x, %bb.p, %bb.l, %bb.h, %bb.c, %bb.ax, %_ZNK5boost6system10error_codecvbEv.exit.thread
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZZN5boost5beast9websocket11cancel_test7testAllERmbmENKUlNS_6system10error_codeEE0_clES5_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef byval(%"class.boost::system::error_code") align 8 %1) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.boost::system::error_code", align 8 ; 7 uses
  %3 = alloca %"class.boost::system::error_code", align 8 ; 3 uses
  %4 = alloca %"struct.boost::source_location", align 8 ; 7 uses
  %5 = alloca %"struct.boost::beast::unit_test::suite::abort_exception", align 8 ; 5 uses
  %6 = alloca %"struct.boost::source_location", align 8 ; 7 uses
  %7 = alloca %"class.boost::system::error_code", align 8 ; 6 uses
  %8 = alloca %"class.boost::system::error_code", align 8 ; 10 uses
  %9 = alloca %"class.boost::system::error_code", align 8 ; 6 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load i64, ptr %i.a, align 8, !tbaa !239  ; 7 uses
  %i.c = and i64 %i.b, 1
  %.not.i.i = icmp eq i64 %i.c, 0
  br i1 %.not.i.i, label %_ZNK5boost6system10error_codecvbEv.exit.thread128, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = icmp ne i64 %i.b, 1                      ; 5 uses
  %i.e = load i32, ptr %1, align 8                ; 8 uses
  %i.f = icmp ne i32 %i.e, 0
  %or.cond = select i1 %i.d, i1 true, i1 %i.f
  br i1 %or.cond, label %_ZNK5boost6system10error_codecvbEv.exit.thread, label %_ZNK5boost6system10error_codecvbEv.exit.thread128

_ZNK5boost6system10error_codecvbEv.exit.thread:   ; preds = %bb.b
  %i.g = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN5boost6system6detail17system_cat_holderIvE8instanceE, i64 8), align 8, !tbaa !237, !noalias !5069 ; 2 uses
  %i.h = and i64 %i.g, -2
  %switch.i.i.i.i = icmp eq i64 %i.h, -5572340897628102704
  br i1 %switch.i.i.i.i, label %_ZN5boost6system10error_codeC2INS_4asio5error12basic_errorsEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit.thread, label %_ZN5boost6system10error_codeC2INS_4asio5error12basic_errorsEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit

_ZN5boost6system10error_codeC2INS_4asio5error12basic_errorsEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit: ; preds = %_ZNK5boost6system10error_codecvbEv.exit.thread
  %i.i = load ptr, ptr @_ZN5boost6system6detail17system_cat_holderIvE8instanceE, align 8, !tbaa !220, !noalias !5069
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 48
  %i.k = load ptr, ptr %i.j, align 8, !noalias !5069
  %i.l = tail call noundef zeroext i1 %i.k(ptr noundef nonnull align 8 dereferenceable(52) @_ZN5boost6system6detail17system_cat_holderIvE8instanceE, i32 noundef 125) #35, !noalias !5069, !inline_history !23 ; 0 uses
  %.pre157.pre = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN5boost6system6detail17system_cat_holderIvE8instanceE, i64 8), align 8, !tbaa !237
  br label %_ZN5boost6system10error_codeC2INS_4asio5error12basic_errorsEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit.thread

_ZN5boost6system10error_codeC2INS_4asio5error12basic_errorsEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit.thread: ; preds = %_ZN5boost6system10error_codeC2INS_4asio5error12basic_errorsEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit, %_ZNK5boost6system10error_codecvbEv.exit.thread
  %.pre = phi i64 [ %.pre157.pre, %_ZN5boost6system10error_codeC2INS_4asio5error12basic_errorsEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit ], [ %i.g, %_ZNK5boost6system10error_codecvbEv.exit.thread ] ; 3 uses
  %i.m = icmp eq i32 %i.e, 125
  %or.cond148 = select i1 %i.d, i1 %i.m, i1 false ; 2 uses
  br i1 %or.cond148, label %_ZNK5boost6system10error_code8categoryEv.exit.i, label %.critedge

_ZNK5boost6system10error_code8categoryEv.exit.i:  ; preds = %_ZN5boost6system10error_codeC2INS_4asio5error12basic_errorsEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit.thread
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.o = load ptr, ptr %i.n, align 8              ; 2 uses
  %i.p = icmp eq i64 %.pre, 0
  %i.q = icmp eq ptr %i.o, @_ZN5boost6system6detail17system_cat_holderIvE8instanceE
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.s = load i64, ptr %i.r, align 8
  %i.t = icmp eq i64 %i.s, %.pre
  %i.u = select i1 %i.p, i1 %i.q, i1 %i.t
  br i1 %i.u, label %bb.c, label %.critedge

bb.c:                                             ; preds = %_ZNK5boost6system10error_code8categoryEv.exit.i
  %i.v = load ptr, ptr %0, align 8, !tbaa !5070, !nonnull !259
  %i.w = load i8, ptr %i.v, align 1, !tbaa !316, !range !258, !noundef !259
  %i.x = trunc nuw i8 %i.w to i1
  br i1 %i.x, label %bb.d, label %.critedge2

bb.d:                                             ; preds = %bb.c
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !5071, !nonnull !259, !align !262
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !226
  %i.ab = icmp eq i64 %i.aa, -1
  br i1 %i.ab, label %.critedge2, label %.critedge

.critedge2:                                       ; preds = %bb.c, %bb.d
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !5072, !nonnull !259, !align !262 ; 2 uses
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !226
  %i.af = add i64 %i.ae, 1
  store i64 %i.af, ptr %i.ad, align 8, !tbaa !226
  br label %.critedge

.critedge:                                        ; preds = %_ZN5boost6system10error_codeC2INS_4asio5error12basic_errorsEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit.thread, %_ZNK5boost6system10error_code8categoryEv.exit.i, %.critedge2, %bb.d
  %i.ag = and i64 %.pre, -2
  %switch.i.i.i.i13 = icmp eq i64 %i.ag, -5572340897628102704
  br i1 %switch.i.i.i.i13, label %_ZN5boost6system10error_codeC2INS_4asio5error12basic_errorsEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit16.thread, label %_ZN5boost6system10error_codeC2INS_4asio5error12basic_errorsEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit16

_ZN5boost6system10error_codeC2INS_4asio5error12basic_errorsEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit16: ; preds = %.critedge
  %i.ah = load ptr, ptr @_ZN5boost6system6detail17system_cat_holderIvE8instanceE, align 8, !tbaa !220, !noalias !5073
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 48
  %i.aj = load ptr, ptr %i.ai, align 8, !noalias !5073
  %i.ak = tail call noundef zeroext i1 %i.aj(ptr noundef nonnull align 8 dereferenceable(52) @_ZN5boost6system6detail17system_cat_holderIvE8instanceE, i32 noundef 125) #35, !noalias !5073, !inline_history !23 ; 0 uses
  br label %_ZN5boost6system10error_codeC2INS_4asio5error12basic_errorsEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit16.thread

_ZN5boost6system10error_codeC2INS_4asio5error12basic_errorsEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit16.thread: ; preds = %_ZN5boost6system10error_codeC2INS_4asio5error12basic_errorsEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit16, %.critedge
  br i1 %or.cond148, label %_ZNK5boost6system10error_code8categoryEv.exit.i23, label %_ZN5boost6systemeqERKNS0_10error_codeES3_.exit27.thread

_ZNK5boost6system10error_code8categoryEv.exit.i23: ; preds = %_ZN5boost6system10error_codeC2INS_4asio5error12basic_errorsEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit16.thread
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.am = load ptr, ptr %i.al, align 8            ; 2 uses
  %i.an = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN5boost6system6detail17system_cat_holderIvE8instanceE, i64 8), align 8, !tbaa !237 ; 2 uses
  %i.ao = icmp eq i64 %i.an, 0
  %i.ap = icmp eq ptr %i.am, @_ZN5boost6system6detail17system_cat_holderIvE8instanceE
  %i.aq = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %i.ar = load i64, ptr %i.aq, align 8
  %i.as = icmp eq i64 %i.ar, %i.an
  %i.at = select i1 %i.ao, i1 %i.ap, i1 %i.as
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #35
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #35
  br i1 %i.at, label %.critedge10.critedge, label %bb.e

_ZN5boost6systemeqERKNS0_10error_codeES3_.exit27.thread: ; preds = %_ZN5boost6system10error_codeC2INS_4asio5error12basic_errorsEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit16.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #35
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #35
  br label %bb.e

bb.e:                                             ; preds = %_ZN5boost6systemeqERKNS0_10error_codeES3_.exit27.thread, %_ZNK5boost6system10error_code8categoryEv.exit.i23
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #35
  invoke void @_ZN5boost5beast9websocket15make_error_codeENS1_5errorE(ptr dead_on_unwind nonnull writable sret(%"class.boost::system::error_code") align 8 %7, i32 noundef 1)
          to label %_ZN5boost6system10error_codeC2INS_5beast9websocket5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.au = landingpad { ptr, i32 }
          catch ptr null
  %i.av = extractvalue { ptr, i32 } %i.au, 0
  call void @__clang_call_terminate(ptr %i.av) #36
  unreachable

_ZN5boost6system10error_codeC2INS_5beast9websocket5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit: ; preds = %bb.e
  %.sroa.0.0.copyload = load i32, ptr %7, align 8 ; 3 uses
  %.sroa.7111.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 8
  %.sroa.7111.0.copyload = load ptr, ptr %.sroa.7111.0..sroa_idx, align 8, !tbaa !229 ; 3 uses
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 16
  %.sroa.10.0.copyload = load i64, ptr %.sroa.10.0..sroa_idx, align 8, !tbaa !226 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #35
  %i.aw = icmp eq i64 %i.b, 1                     ; 3 uses
  %i.ax = icmp eq i64 %.sroa.10.0.copyload, 1     ; 3 uses
  %i.ay = xor i1 %i.ax, %i.aw
  br i1 %i.ay, label %_ZN5boost6systemeqERKNS0_10error_codeES3_.exit38.thread, label %bb.g

bb.g:                                             ; preds = %_ZN5boost6system10error_codeC2INS_5beast9websocket5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit
  %or.cond.i28 = and i1 %i.ax, %i.aw
  br i1 %or.cond.i28, label %_ZN5boost6systemeqERKNS0_10error_codeES3_.exit38, label %bb.h

bb.h:                                             ; preds = %bb.g
  br i1 %i.aw, label %bb.i, label %_ZNK5boost6system10error_code5valueEv.exit.i29

bb.i:                                             ; preds = %bb.h
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !242
  %i.bb = ptrtoint ptr %i.ba to i64
  %i.bc = urem i64 %i.bb, 2097143
  %i.bd = trunc nuw nsw i64 %i.bc to i32
  %i.be = mul nuw nsw i32 %i.bd, 1000
  %i.bf = add i32 %i.be, %i.e
  br label %_ZNK5boost6system10error_code5valueEv.exit.i29

_ZNK5boost6system10error_code5valueEv.exit.i29:   ; preds = %bb.i, %bb.h
  %.0.i.i30 = phi i32 [ %i.bf, %bb.i ], [ %i.e, %bb.h ]
  br i1 %i.ax, label %bb.j, label %_ZNK5boost6system10error_code5valueEv.exit17.i31

bb.j:                                             ; preds = %_ZNK5boost6system10error_code5valueEv.exit.i29
  %i.bg = ptrtoint ptr %.sroa.7111.0.copyload to i64
  %i.bh = urem i64 %i.bg, 2097143
  %i.bi = trunc nuw nsw i64 %i.bh to i32
  %i.bj = mul nuw nsw i32 %i.bi, 1000
  %i.bk = add i32 %i.bj, %.sroa.0.0.copyload
  br label %_ZNK5boost6system10error_code5valueEv.exit17.i31

_ZNK5boost6system10error_code5valueEv.exit17.i31: ; preds = %bb.j, %_ZNK5boost6system10error_code5valueEv.exit.i29
  %.0.i16.i32 = phi i32 [ %i.bk, %bb.j ], [ %.sroa.0.0.copyload, %_ZNK5boost6system10error_code5valueEv.exit.i29 ]
  %i.bl = icmp eq i32 %.0.i.i30, %.0.i16.i32
  br i1 %i.bl, label %_ZNK5boost6system10error_code8categoryEv.exit.i34, label %_ZN5boost6systemeqERKNS0_10error_codeES3_.exit38.thread

_ZNK5boost6system10error_code8categoryEv.exit.i34: ; preds = %_ZNK5boost6system10error_code5valueEv.exit17.i31
  %cond169 = icmp eq i64 %i.b, 1
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bn = load ptr, ptr %i.bm, align 8
  %.0.i18.i35 = select i1 %cond169, ptr @_ZN5boost6system6detail18interop_cat_holderIvE8instanceE, ptr %i.bn ; 2 uses
  switch i64 %.sroa.10.0.copyload, label %bb.l [
    i64 0, label %_ZNK5boost6system10error_code8categoryEv.exit20.i36
    i64 1, label %bb.k
  ]

bb.k:                                             ; preds = %_ZNK5boost6system10error_code8categoryEv.exit.i34
  br label %_ZNK5boost6system10error_code8categoryEv.exit20.i36

bb.l:                                             ; preds = %_ZNK5boost6system10error_code8categoryEv.exit.i34
  br label %_ZNK5boost6system10error_code8categoryEv.exit20.i36

_ZNK5boost6system10error_code8categoryEv.exit20.i36: ; preds = %bb.l, %bb.k, %_ZNK5boost6system10error_code8categoryEv.exit.i34
  %.0.i19.i37 = phi ptr [ %.sroa.7111.0.copyload, %bb.l ], [ @_ZN5boost6system6detail18interop_cat_holderIvE8instanceE, %bb.k ], [ @_ZN5boost6system6detail17system_cat_holderIvE8instanceE, %_ZNK5boost6system10error_code8categoryEv.exit.i34 ] ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %.0.i19.i37, i64 8
  %i.bp = load i64, ptr %i.bo, align 8, !tbaa !237 ; 2 uses
  %i.bq = icmp eq i64 %i.bp, 0
  %i.br = icmp eq ptr %.0.i18.i35, %.0.i19.i37
  %i.bs = getelementptr inbounds nuw i8, ptr %.0.i18.i35, i64 8
  %i.bt = load i64, ptr %i.bs, align 8
  %i.bu = icmp eq i64 %i.bt, %i.bp
  %i.bv = select i1 %i.bq, i1 %i.br, i1 %i.bu
  br i1 %i.bv, label %.critedge10.critedge, label %_ZN5boost6systemeqERKNS0_10error_codeES3_.exit38.thread

_ZN5boost6systemeqERKNS0_10error_codeES3_.exit38: ; preds = %bb.g
  %i.bw = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !242
  %i.by = icmp eq ptr %i.bx, %.sroa.7111.0.copyload
  %i.bz = icmp eq i32 %i.e, %.sroa.0.0.copyload
  %i.ca = select i1 %i.by, i1 %i.bz, i1 false
  br i1 %i.ca, label %.critedge10.critedge, label %_ZN5boost6systemeqERKNS0_10error_codeES3_.exit38.thread

_ZN5boost6systemeqERKNS0_10error_codeES3_.exit38.thread: ; preds = %_ZNK5boost6system10error_code5valueEv.exit17.i31, %_ZN5boost6system10error_codeC2INS_5beast9websocket5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit, %_ZNK5boost6system10error_code8categoryEv.exit20.i36, %_ZN5boost6systemeqERKNS0_10error_codeES3_.exit38
  %i.cb = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN5boost6system6detail17system_cat_holderIvE8instanceE, i64 8), align 8, !tbaa !237, !noalias !5074 ; 2 uses
  %i.cc = and i64 %i.cb, -2
  %switch.i.i.i.i39 = icmp eq i64 %i.cc, -5572340897628102704
  br i1 %switch.i.i.i.i39, label %_ZN5boost6system10error_codeC2INS_4asio5error12basic_errorsEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit42.thread, label %_ZN5boost6system10error_codeC2INS_4asio5error12basic_errorsEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit42

_ZN5boost6system10error_codeC2INS_4asio5error12basic_errorsEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit42: ; preds = %_ZN5boost6systemeqERKNS0_10error_codeES3_.exit38.thread
  %i.cd = load ptr, ptr @_ZN5boost6system6detail17system_cat_holderIvE8instanceE, align 8, !tbaa !220, !noalias !5074
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 48
  %i.cf = load ptr, ptr %i.ce, align 8, !noalias !5074
  %i.cg = call noundef zeroext i1 %i.cf(ptr noundef nonnull align 8 dereferenceable(52) @_ZN5boost6system6detail17system_cat_holderIvE8instanceE, i32 noundef 32) #35, !noalias !5074, !inline_history !23 ; 0 uses
  %.pre158.pre = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN5boost6system6detail17system_cat_holderIvE8instanceE, i64 8), align 8, !tbaa !237
  br label %_ZN5boost6system10error_codeC2INS_4asio5error12basic_errorsEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit42.thread

_ZN5boost6system10error_codeC2INS_4asio5error12basic_errorsEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit42.thread: ; preds = %_ZN5boost6system10error_codeC2INS_4asio5error12basic_errorsEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit42, %_ZN5boost6systemeqERKNS0_10error_codeES3_.exit38.thread
  %.pre158 = phi i64 [ %.pre158.pre, %_ZN5boost6system10error_codeC2INS_4asio5error12basic_errorsEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit42 ], [ %i.cb, %_ZN5boost6systemeqERKNS0_10error_codeES3_.exit38.thread ] ; 4 uses
  %i.ch = icmp eq i32 %i.e, 32
  %or.cond152 = select i1 %i.d, i1 %i.ch, i1 false
  br i1 %or.cond152, label %_ZNK5boost6system10error_code8categoryEv.exit.i49, label %_ZN5boost6systemeqERKNS0_10error_codeES3_.exit53.thread

_ZNK5boost6system10error_code8categoryEv.exit.i49: ; preds = %_ZN5boost6system10error_codeC2INS_4asio5error12basic_errorsEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit42.thread
  %cond143 = icmp eq i64 %i.b, 0
  %i.ci = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.cj = load ptr, ptr %i.ci, align 8
  %.0.i18.i50 = select i1 %cond143, ptr @_ZN5boost6system6detail17system_cat_holderIvE8instanceE, ptr %i.cj ; 2 uses
  %i.ck = icmp eq i64 %.pre158, 0
  %i.cl = icmp eq ptr %.0.i18.i50, @_ZN5boost6system6detail17system_cat_holderIvE8instanceE
  %i.cm = getelementptr inbounds nuw i8, ptr %.0.i18.i50, i64 8
  %i.cn = load i64, ptr %i.cm, align 8
  %i.co = icmp eq i64 %i.cn, %.pre158
  %i.cp = select i1 %i.ck, i1 %i.cl, i1 %i.co
  br i1 %i.cp, label %.critedge10.critedge, label %_ZN5boost6systemeqERKNS0_10error_codeES3_.exit53.thread

_ZN5boost6systemeqERKNS0_10error_codeES3_.exit53.thread: ; preds = %_ZN5boost6system10error_codeC2INS_4asio5error12basic_errorsEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit42.thread, %_ZNK5boost6system10error_code8categoryEv.exit.i49
  %i.cq = and i64 %.pre158, -2
  %switch.i.i.i.i54 = icmp eq i64 %i.cq, -5572340897628102704
  br i1 %switch.i.i.i.i54, label %_ZN5boost6system10error_codeC2INS_4asio5error12basic_errorsEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit57.thread, label %_ZN5boost6system10error_codeC2INS_4asio5error12basic_errorsEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit57

_ZN5boost6system10error_codeC2INS_4asio5error12basic_errorsEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit57: ; preds = %_ZN5boost6systemeqERKNS0_10error_codeES3_.exit53.thread
  %i.cr = load ptr, ptr @_ZN5boost6system6detail17system_cat_holderIvE8instanceE, align 8, !tbaa !220, !noalias !5075
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 48
  %i.ct = load ptr, ptr %i.cs, align 8, !noalias !5075
  %i.cu = call noundef zeroext i1 %i.ct(ptr noundef nonnull align 8 dereferenceable(52) @_ZN5boost6system6detail17system_cat_holderIvE8instanceE, i32 noundef 104) #35, !noalias !5075, !inline_history !23 ; 0 uses
  %.pre159.pre = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN5boost6system6detail17system_cat_holderIvE8instanceE, i64 8), align 8, !tbaa !237
  br label %_ZN5boost6system10error_codeC2INS_4asio5error12basic_errorsEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit57.thread

_ZN5boost6system10error_codeC2INS_4asio5error12basic_errorsEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit57.thread: ; preds = %_ZN5boost6system10error_codeC2INS_4asio5error12basic_errorsEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit57, %_ZN5boost6systemeqERKNS0_10error_codeES3_.exit53.thread
  %.pre159 = phi i64 [ %.pre159.pre, %_ZN5boost6system10error_codeC2INS_4asio5error12basic_errorsEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit57 ], [ %.pre158, %_ZN5boost6systemeqERKNS0_10error_codeES3_.exit53.thread ] ; 4 uses
  %i.cv = icmp eq i32 %i.e, 104
  %or.cond154 = select i1 %i.d, i1 %i.cv, i1 false
  br i1 %or.cond154, label %_ZNK5boost6system10error_code8categoryEv.exit.i64, label %_ZN5boost6systemeqERKNS0_10error_codeES3_.exit68.thread

_ZNK5boost6system10error_code8categoryEv.exit.i64: ; preds = %_ZN5boost6system10error_codeC2INS_4asio5error12basic_errorsEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit57.thread
  %cond142 = icmp eq i64 %i.b, 0
  %i.cw = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.cx = load ptr, ptr %i.cw, align 8
  %.0.i18.i65 = select i1 %cond142, ptr @_ZN5boost6system6detail17system_cat_holderIvE8instanceE, ptr %i.cx ; 2 uses
  %i.cy = icmp eq i64 %.pre159, 0
  %i.cz = icmp eq ptr %.0.i18.i65, @_ZN5boost6system6detail17system_cat_holderIvE8instanceE
  %i.da = getelementptr inbounds nuw i8, ptr %.0.i18.i65, i64 8
  %i.db = load i64, ptr %i.da, align 8
  %i.dc = icmp eq i64 %i.db, %.pre159
  %i.dd = select i1 %i.cy, i1 %i.cz, i1 %i.dc
  br i1 %i.dd, label %.critedge10.critedge, label %_ZN5boost6systemeqERKNS0_10error_codeES3_.exit68.thread

_ZN5boost6systemeqERKNS0_10error_codeES3_.exit68.thread: ; preds = %_ZN5boost6system10error_codeC2INS_4asio5error12basic_errorsEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit57.thread, %_ZNK5boost6system10error_code8categoryEv.exit.i64
  %i.de = and i64 %.pre159, -2
  %switch.i.i.i.i69 = icmp eq i64 %i.de, -5572340897628102704
  br i1 %switch.i.i.i.i69, label %_ZN5boost6system10error_codeC2INS_4asio5error12basic_errorsEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit72.thread, label %_ZN5boost6system10error_codeC2INS_4asio5error12basic_errorsEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit72

_ZN5boost6system10error_codeC2INS_4asio5error12basic_errorsEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit72: ; preds = %_ZN5boost6systemeqERKNS0_10error_codeES3_.exit68.thread
  %i.df = load ptr, ptr @_ZN5boost6system6detail17system_cat_holderIvE8instanceE, align 8, !tbaa !220, !noalias !5076
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 48
  %i.dh = load ptr, ptr %i.dg, align 8, !noalias !5076
  %i.di = call noundef zeroext i1 %i.dh(ptr noundef nonnull align 8 dereferenceable(52) @_ZN5boost6system6detail17system_cat_holderIvE8instanceE, i32 noundef 107) #35, !noalias !5076, !inline_history !23 ; 0 uses
  %.pre160.pre = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN5boost6system6detail17system_cat_holderIvE8instanceE, i64 8), align 8, !tbaa !237
  br label %_ZN5boost6system10error_codeC2INS_4asio5error12basic_errorsEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit72.thread

_ZN5boost6system10error_codeC2INS_4asio5error12basic_errorsEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit72.thread: ; preds = %_ZN5boost6system10error_codeC2INS_4asio5error12basic_errorsEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit72, %_ZN5boost6systemeqERKNS0_10error_codeES3_.exit68.thread
  %.pre160 = phi i64 [ %.pre160.pre, %_ZN5boost6system10error_codeC2INS_4asio5error12basic_errorsEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit72 ], [ %.pre159, %_ZN5boost6systemeqERKNS0_10error_codeES3_.exit68.thread ] ; 3 uses
  %i.dj = icmp eq i32 %i.e, 107
  %or.cond156 = select i1 %i.d, i1 %i.dj, i1 false
  br i1 %or.cond156, label %_ZNK5boost6system10error_code8categoryEv.exit.i79, label %_ZN5boost6systemeqERKNS0_10error_codeES3_.exit83.thread

_ZNK5boost6system10error_code8categoryEv.exit.i79: ; preds = %_ZN5boost6system10error_codeC2INS_4asio5error12basic_errorsEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit72.thread
  %cond = icmp eq i64 %i.b, 0
  %i.dk = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.dl = load ptr, ptr %i.dk, align 8
  %.0.i18.i80 = select i1 %cond, ptr @_ZN5boost6system6detail17system_cat_holderIvE8instanceE, ptr %i.dl ; 2 uses
  %i.dm = icmp eq i64 %.pre160, 0
  %i.dn = icmp eq ptr %.0.i18.i80, @_ZN5boost6system6detail17system_cat_holderIvE8instanceE
  %i.do = getelementptr inbounds nuw i8, ptr %.0.i18.i80, i64 8
  %i.dp = load i64, ptr %i.do, align 8
  %i.dq = icmp eq i64 %i.dp, %.pre160
  %i.dr = select i1 %i.dm, i1 %i.dn, i1 %i.dq
  br i1 %i.dr, label %.critedge10.critedge, label %_ZN5boost6systemeqERKNS0_10error_codeES3_.exit83.thread

_ZN5boost6systemeqERKNS0_10error_codeES3_.exit83.thread: ; preds = %_ZN5boost6system10error_codeC2INS_4asio5error12basic_errorsEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit72.thread, %_ZNK5boost6system10error_code8categoryEv.exit.i79
  store i64 0, ptr %8, align 8
  %i.ds = and i64 %.pre160, -2
  %switch.i.i = icmp eq i64 %i.ds, -5572340897628102704
  br i1 %switch.i.i, label %_ZN5boost6system10error_codeC2EiRKNS0_14error_categoryE.exit.thread, label %_ZN5boost6system10error_codeC2EiRKNS0_14error_categoryE.exit

_ZN5boost6system10error_codeC2EiRKNS0_14error_categoryE.exit.thread: ; preds = %_ZN5boost6systemeqERKNS0_10error_codeES3_.exit83.thread
  %i.dt = getelementptr inbounds nuw i8, ptr %8, i64 16
  br label %bb.m

_ZN5boost6system10error_codeC2EiRKNS0_14error_categoryE.exit: ; preds = %_ZN5boost6systemeqERKNS0_10error_codeES3_.exit83.thread
  %i.du = load ptr, ptr @_ZN5boost6system6detail17system_cat_holderIvE8instanceE, align 8, !tbaa !220
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 48
  %i.dw = load ptr, ptr %i.dv, align 8
  %i.dx = call noundef zeroext i1 %i.dw(ptr noundef nonnull align 8 dereferenceable(52) @_ZN5boost6system6detail17system_cat_holderIvE8instanceE, i32 noundef 10054) #35, !inline_history !24
  %i.dy = getelementptr inbounds nuw i8, ptr %8, i64 16
  %spec.select = select i1 %i.dx, i64 3, i64 2
  br label %bb.m

bb.m:                                             ; preds = %_ZN5boost6system10error_codeC2EiRKNS0_14error_categoryE.exit, %_ZN5boost6system10error_codeC2EiRKNS0_14error_categoryE.exit.thread
  %i.dz = phi ptr [ %i.dy, %_ZN5boost6system10error_codeC2EiRKNS0_14error_categoryE.exit ], [ %i.dt, %_ZN5boost6system10error_codeC2EiRKNS0_14error_categoryE.exit.thread ]
  %i.ea = phi i64 [ %spec.select, %_ZN5boost6system10error_codeC2EiRKNS0_14error_categoryE.exit ], [ 3, %_ZN5boost6system10error_codeC2EiRKNS0_14error_categoryE.exit.thread ]
  store i64 %i.ea, ptr %i.dz, align 8, !tbaa !239
  store i32 10054, ptr %8, align 8, !tbaa !229
  %i.eb = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr @_ZN5boost6system6detail17system_cat_holderIvE8instanceE, ptr %i.eb, align 8, !tbaa !229
  %i.ec = call noundef zeroext i1 @_ZN5boost6systemeqERKNS0_10error_codeES3_(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %8) #35
  br i1 %i.ec, label %.critedge10.critedge, label %bb.n

bb.n:                                             ; preds = %bb.m
  call void @_ZN5boost6system10error_codeC2INS_4asio5error11misc_errorsEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE(ptr noundef nonnull align 8 dereferenceable(24) %9, i32 noundef 2, ptr noundef null) #35
  %i.ed = call noundef zeroext i1 @_ZN5boost6systemeqERKNS0_10error_codeES3_(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %9) #35
  br i1 %i.ed, label %.critedge10.critedge, label %bb.r

.critedge10.critedge:                             ; preds = %_ZNK5boost6system10error_code8categoryEv.exit20.i36, %bb.n, %bb.m, %_ZNK5boost6system10error_code8categoryEv.exit.i79, %_ZNK5boost6system10error_code8categoryEv.exit.i64, %_ZNK5boost6system10error_code8categoryEv.exit.i49, %_ZN5boost6systemeqERKNS0_10error_codeES3_.exit38, %_ZNK5boost6system10error_code8categoryEv.exit.i23
  %i.ee = load ptr, ptr @_ZZN5boost5beast9unit_test5suite12p_this_suiteEvE3pts, align 8, !tbaa !265 ; 3 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 8
  %i.eg = load i8, ptr %i.ef, align 8, !tbaa !280, !range !258, !noundef !259
  %i.eh = trunc nuw i8 %i.eg to i1
  %i.ei = getelementptr inbounds nuw i8, ptr %i.ee, i64 9
  %i.ej = load i8, ptr %i.ei, align 1, !range !258
  %i.ek = trunc nuw i8 %i.ej to i1
  %or.cond.i.i = select i1 %i.eh, i1 %i.ek, i1 false
  br i1 %or.cond.i.i, label %bb.o, label %_ZN5boost5beast9unit_test5suite4passIvEEvv.exit

bb.o:                                             ; preds = %.critedge10.critedge
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #35
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5boost5beast9unit_test5suite15abort_exceptionE, i64 16), ptr %5, align 8, !tbaa !220
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #35
  store ptr @.str.44, ptr %6, align 8, !tbaa !360
  %i.el = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr @.str.46, ptr %i.el, align 8, !tbaa !361
  %i.em = getelementptr inbounds nuw i8, ptr %6, i64 16
  store i32 592, ptr %i.em, align 8, !tbaa !362
  %i.en = getelementptr inbounds nuw i8, ptr %6, i64 20
  store i32 48, ptr %i.en, align 4, !tbaa !363
  invoke void @_ZN5boost15throw_exceptionINS_5beast9unit_test5suite15abort_exceptionEEEvRKT_RKNS_15source_locationE(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(24) %6) #37
          to label %bb.p unwind label %bb.q

bb.p:                                             ; preds = %bb.o
  unreachable

common.resume:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit88, %bb.q
  %common.resume.op = phi { ptr, i32 } [ %i.eo, %bb.q ], [ %i.fn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit88 ]
  resume { ptr, i32 } %common.resume.op

bb.q:                                             ; preds = %bb.o
  %i.eo = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #35
  call void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %5) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #35
  br label %common.resume

_ZN5boost5beast9unit_test5suite4passIvEEvv.exit:  ; preds = %.critedge10.critedge
  %i.ep = getelementptr inbounds nuw i8, ptr %i.ee, i64 16
  %i.eq = load ptr, ptr %i.ep, align 8, !tbaa !282
  call void @_ZN5boost5beast9unit_test6runner4passIvEEvv(ptr noundef nonnull align 8 dereferenceable(88) %i.eq)
  br label %.critedge10

bb.r:                                             ; preds = %bb.n
  %i.er = load ptr, ptr @_ZZN5boost5beast9unit_test5suite12p_this_suiteEvE3pts, align 8, !tbaa !265
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #35
  call void @_ZNK5boost6system10error_code7messageB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %10, ptr noundef nonnull align 8 dereferenceable(24) %1)
  invoke void @_ZN5boost5beast9unit_test5suite4failINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKT_PKci(ptr noundef nonnull align 8 dereferenceable(808) %i.er, ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull @.str.25, i32 noundef 196)
          to label %bb.s unwind label %bb.u

bb.s:                                             ; preds = %bb.r
  %i.es = load ptr, ptr %10, align 8, !tbaa !228  ; 2 uses
  %i.et = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.eu = icmp eq ptr %i.es, %i.et
  br i1 %i.eu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.s
  %i.ev = load i64, ptr %i.et, align 8, !tbaa !229
  %i.ew = add i64 %i.ev, 1
  call void @_ZdlPvm(ptr noundef %i.es, i64 noundef %i.ew) #38
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.s, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #35
  br label %.critedge10

.critedge10:                                      ; preds = %_ZN5boost5beast9unit_test5suite4passIvEEvv.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #35
  %i.ex = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ey = load ptr, ptr %i.ex, align 8, !tbaa !5077, !nonnull !259, !align !262
  %i.ez = load ptr, ptr %i.ey, align 8, !tbaa !324 ; 2 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 40
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #35
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 0, i64 24, i1 false)
  %i.fb = load ptr, ptr %i.fa, align 8, !tbaa !356
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fb, i64 48
  %i.fd = getelementptr inbounds nuw i8, ptr %i.ez, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #35
  call void @_ZN5boost4asio6detail28reactive_socket_service_base5closeERNS2_24base_implementation_typeERNS_6system10error_codeE(ptr dead_on_unwind nonnull writable sret(%"class.boost::system::error_code") align 8 %3, ptr noundef nonnull align 8 dereferenceable(33) %i.fc, ptr noundef nonnull align 8 dereferenceable(16) %i.fd, ptr noundef nonnull align 8 dereferenceable(24) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #35
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #35
  store ptr @.str.54, ptr %4, align 8, !tbaa !360
  %i.fe = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr @.str.60, ptr %i.fe, align 8, !tbaa !361
  %i.ff = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i32 514, ptr %i.ff, align 8, !tbaa !362
  %i.fg = getelementptr inbounds nuw i8, ptr %4, i64 20
  store i32 5, ptr %i.fg, align 4, !tbaa !363
  %i.fh = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.fi = load i64, ptr %i.fh, align 8, !tbaa !239 ; 2 uses
  %i.fj = and i64 %i.fi, 1
  %.not.i.i.i.i = icmp eq i64 %i.fj, 0
  br i1 %.not.i.i.i.i, label %_ZN5boost4asio12basic_socketINS0_2ip3tcpENS0_15any_io_executorEE5closeEv.exit, label %bb.t

bb.t:                                             ; preds = %.critedge10
  %i.fk = icmp ne i64 %i.fi, 1
  %i.fl = load i32, ptr %2, align 8
  %i.fm = icmp ne i32 %i.fl, 0
  %or.cond.i.i85 = select i1 %i.fk, i1 true, i1 %i.fm
  br i1 %or.cond.i.i85, label %_ZNK5boost6system10error_codecvbEv.exit.thread.i.i, label %_ZN5boost4asio12basic_socketINS0_2ip3tcpENS0_15any_io_executorEE5closeEv.exit

_ZNK5boost6system10error_codecvbEv.exit.thread.i.i: ; preds = %bb.t
  call void @_ZN5boost4asio6detail14do_throw_errorERKNS_6system10error_codeEPKcRKNS_15source_locationE(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull @.str.60, ptr noundef nonnull align 8 dereferenceable(24) %4)
  br label %_ZN5boost4asio12basic_socketINS0_2ip3tcpENS0_15any_io_executorEE5closeEv.exit

_ZN5boost4asio12basic_socketINS0_2ip3tcpENS0_15any_io_executorEE5closeEv.exit: ; preds = %.critedge10, %bb.t, %_ZNK5boost6system10error_codecvbEv.exit.thread.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #35
  br label %_ZNK5boost6system10error_codecvbEv.exit.thread128

bb.u:                                             ; preds = %bb.r
  %i.fn = landingpad { ptr, i32 }
          cleanup
  %i.fo = load ptr, ptr %10, align 8, !tbaa !228  ; 2 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.fq = icmp eq ptr %i.fo, %i.fp
  br i1 %i.fq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit88, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i86

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i86: ; preds = %bb.u
  %i.fr = load i64, ptr %i.fp, align 8, !tbaa !229
  %i.fs = add i64 %i.fr, 1
  call void @_ZdlPvm(ptr noundef %i.fo, i64 noundef %i.fs) #38
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit88

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit88: ; preds = %bb.u, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i86
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #35
  br label %common.resume

_ZNK5boost6system10error_codecvbEv.exit.thread128: ; preds = %bb.b, %bb.a, %_ZN5boost4asio12basic_socketINS0_2ip3tcpENS0_15any_io_executorEE5closeEv.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost4asio6detail20cancellation_handlerINS0_18cancellation_state4implIZNS_5beast9websocket19async_all_client_opclIRNS1_11composed_opIS7_NS1_13composed_workIFvNS0_15any_io_executorEEEENS0_24cancellation_slot_binderIZNS6_11cancel_test7testAllERmbmEUlNS_6system10error_codeEE0_NS0_17cancellation_slotEEEJFvSI_EEEEEEvOT_SI_mEUlNS0_17cancellation_typeEE_SS_EEE4callESR_(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %1) unnamed_addr #5 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %1, ptr %i.a, align 8, !tbaa !620
  %.not.i = icmp eq i32 %1, 0
  br i1 %.not.i, label %_ZN5boost4asio18cancellation_state4implIZNS_5beast9websocket19async_all_client_opclIRNS0_6detail11composed_opIS5_NS7_13composed_workIFvNS0_15any_io_executorEEEENS0_24cancellation_slot_binderIZNS4_11cancel_test7testAllERmbmEUlNS_6system10error_codeEE0_NS0_17cancellation_slotEEEJFvSH_EEEEEEvOT_SH_mEUlNS0_17cancellation_typeEE_SR_EclESQ_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !319  ; 3 uses
  %.not.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i, label %_ZN5boost4asio18cancellation_state4implIZNS_5beast9websocket19async_all_client_opclIRNS0_6detail11composed_opIS5_NS7_13composed_workIFvNS0_15any_io_executorEEEENS0_24cancellation_slot_binderIZNS4_11cancel_test7testAllERmbmEUlNS_6system10error_codeEE0_NS0_17cancellation_slotEEEJFvSH_EEEEEEvOT_SH_mEUlNS0_17cancellation_typeEE_SR_EclESQ_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !220
  %i.e = load ptr, ptr %i.d, align 8
  tail call void %i.e(ptr noundef nonnull align 8 dereferenceable(8) %i.c, i32 noundef %1), !inline_history !5078
  br label %_ZN5boost4asio18cancellation_state4implIZNS_5beast9websocket19async_all_client_opclIRNS0_6detail11composed_opIS5_NS7_13composed_workIFvNS0_15any_io_executorEEEENS0_24cancellation_slot_binderIZNS4_11cancel_test7testAllERmbmEUlNS_6system10error_codeEE0_NS0_17cancellation_slotEEEJFvSH_EEEEEEvOT_SH_mEUlNS0_17cancellation_typeEE_SR_EclESQ_.exit

_ZN5boost4asio18cancellation_state4implIZNS_5beast9websocket19async_all_client_opclIRNS0_6detail11composed_opIS5_NS7_13composed_workIFvNS0_15any_io_executorEEEENS0_24cancellation_slot_binderIZNS4_11cancel_test7testAllERmbmEUlNS_6system10error_codeEE0_NS0_17cancellation_slotEEEJFvSH_EEEEEEvOT_SH_mEUlNS0_17cancellation_typeEE_SR_EclESQ_.exit: ; preds = %bb.a, %bb.b, %bb.c
  ret void
}
end_hunk_0
